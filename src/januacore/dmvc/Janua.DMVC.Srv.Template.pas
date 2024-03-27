unit Janua.DMVC.Srv.Template;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants, System.Generics.Collections,
  // Spring
  Spring, Spring.Collections,
  // DB Libraries
  FireDAC.Comp.Client, Data.DB,
  // DMVC Framework
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons,
  // Januaproject Interfaces
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf,
  Janua.Bindings.Intf, Janua.ViewModels.Intf, Janua.Core.DB.Intf, JOrm.System.Settings.Intf,
  // Janua.Libraries
  Janua.Core.Commons, Janua.Core.Classes, Janua.Core.DB.Impl, Janua.Core.Types, Janua.Core.DB.Types,
  Janua.Http.Types;

type
  TCustomMVVMSrvController = class(TMVCController)
  public
    class constructor Create;
    class destructor Destroy;
    /// <summary> This will be the customizable authentication function for the Framework server Application
    /// should be customized for an enforcement
    /// compatible with the standard TFunc<TWebContext, TList<String>, string, boolean> </summary>
    class function Authenticate(AContext: TWebContext; AUserRoles: TList<String>; aActionName: string)
      : boolean; virtual;
  public
    procedure Setup; Virtual; Abstract;
  private
    class var FWriteProcs: TList<String>;
    class var FReadProcs: TList<String>;
    class var FWriteRoles: TList<String>;
    class var FReadRoles: TList<String>;
  protected
    function GenerateMessage(const aCode, aMessage: string): string;
    class procedure AddReadWriteRole(const aRole: string);
    /// <summary> adds a role to be granted for read </summary>
    class procedure AddReadRole(const aRole: string);
    /// <summary>Grants Read grants Read based on the input of the Roles from the dmvc auth criteria</summary>
    class function GrantRead(const aRole: TList<String>): boolean;
    class function GrantWrite(const aRole: TList<String>): boolean;
    /// <summary>Adds a Proc to Write protected procedures List to be checked with Authenticate</summary>
    class procedure AddWriteProc(const aProc: string);
    /// <summary></summary>
    class procedure AddReadProc(const aProc: string);
  end;

  // [MVCPath('/')]
  TJanuaCustomDMVCSrvController = class(TCustomMVVMSrvController)
  public
    class constructor CreateController;
    class function Authenticate(AContext: TWebContext; AUserRoles: TList<String>; aActionName: string)
      : boolean; override;
  protected
    class var FModelClass: TJanuaCoreInterfacedObjectClass;
    class function TryGetInterface(const IID: TGUID; const aValues: TValueArray; out Intf;
      const aRaise: boolean = True): boolean;
  private
    FModel: IJanuaServerDBModel;
    function GetModel: IJanuaServerDBModel;
  strict protected
    procedure SetModel(const Value: IJanuaServerDBModel);
  protected
    property Model: IJanuaServerDBModel read GetModel write SetModel;
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index; virtual;

    [MVCPath('/liveness')]
    [MVCHTTPMethod([httpGET])]
    /// <summary> Liveness works like a ping to check if the Service is 'alive and running' </summary>
    procedure Liveness;

    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/dataset/($aFormat)/($aParams)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetDataset(const aFormat, aParams: string); overload; virtual;

    [MVCPath('/record/($aGUID)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetRecord(const aGUID: string); virtual;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateRecord; virtual;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateRecord; virtual;

    [MVCPath('/record')]
    [MVCHTTPMethod([httpHEAD])]
    procedure DescRecord; virtual;

  end;

implementation

uses System.JSON.Writers, Janua.Orm.Impl, Janua.Application.Framework;

{ TCustomController }

class function TJanuaCustomDMVCSrvController.Authenticate(AContext: TWebContext; AUserRoles: TList<String>;
  aActionName: string): boolean;
begin
  Result := inherited;
end;

class constructor TJanuaCustomDMVCSrvController.CreateController;
begin
  FModelClass := nil;
end;

procedure TJanuaCustomDMVCSrvController.CreateRecord;
begin
  Model.AppendRecord;
  Model.InternalRecord.asJson := Context.Request.Body;
  Model.PostRecord;
  Model.RefreshRecord;
  Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
  Context.Response.StatusCode := HTTP_STATUS.OK;
  Render(FModel.InternalRecord.asJson);
end;

procedure TJanuaCustomDMVCSrvController.DescRecord;
begin
  Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
  Context.Response.StatusCode := HTTP_STATUS.OK;
  Render(FModel.InternalRecord.AsMetaData.ToJSON);
end;

procedure TJanuaCustomDMVCSrvController.GetDataset(const aFormat, aParams: string);
begin
  Context.Response.ContentType := TJanuaRestDBContext.StrMimeFormat[aFormat];
  Context.Response.StatusCode := HTTP_STATUS.OK;
  // Here as Json should only transfer Values and not fields
  Render(Model.RestGetDataset(aFormat, aParams));
end;

function TJanuaCustomDMVCSrvController.GetModel: IJanuaServerDBModel;
begin
  if not Assigned(FModel) then
    Setup;
  Result := FModel;
end;

procedure TJanuaCustomDMVCSrvController.GetRecord(const aGUID: string);
begin
  var
  aResponse := Model.RestGetRecord(aGUID);
  if aResponse <> '' then
  begin
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(aResponse);
  end
  else
  begin
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.NotFound;
    Render(GenerateMessage('Record not Found', 'J001'));
  end;
end;

procedure TJanuaCustomDMVCSrvController.Index;
begin
  { we are going to produce simple text.
    let's inform the client about the format
    of the body response format }
  ContentType := TMVCMediaType.TEXT_PLAIN;
  { Render a simple string }
  Render('It Works!')
end;

procedure TJanuaCustomDMVCSrvController.Liveness;
begin
  { we are going to produce simple text.
    let's inform the client about the format
    of the body response format }
  ContentType := TMVCMediaType.TEXT_PLAIN;
  { Render a simple string }
  if Assigned(Model) then
    Render('It Works!')
  else
    raise Exception.Create('Model initialization Failed');
end;

procedure TJanuaCustomDMVCSrvController.SetModel(const Value: IJanuaServerDBModel);
begin
  FModel := Value;
end;

class function TJanuaCustomDMVCSrvController.TryGetInterface(const IID: TGUID; const aValues: TValueArray;
  out Intf; const aRaise: boolean): boolean;
var
  lObject: TInterfacedObject;
begin
  Result := Assigned(FModelClass) or TJanuaApplicationFactory.GetInterfacedObjectClass(IID, FModelClass);

  if Result then
  begin
    if Length(aValues) = 0 then
      lObject := FModelClass.Create
    else
      lObject := FModelClass.Create(aValues);
    Result := Supports(lObject, IID, Intf);
    if not Result and aRaise then
      raise Exception.Create('Object ' + lObject.ClassName + ' does not support ' + GetInterfaceName(IID));
  end
  else if aRaise then
    raise Exception.Create('Object Interface not found: ' + GetInterfaceName(IID));

end;

procedure TJanuaCustomDMVCSrvController.UpdateRecord;
var
  lRecord: IJanuaRecord;
begin
  lRecord := TJanuaOrmFactory.CreateRecord('tmp', Context.Request.Body);
  if Model.SearchByGUID(lRecord.GUID) then
  begin

  end;

end;

{ TCustomMVVMSrvController }

class procedure TCustomMVVMSrvController.AddReadProc(const aProc: string);
begin
  FReadProcs.Add(aProc)
end;

class procedure TCustomMVVMSrvController.AddReadRole(const aRole: string);
begin
  FReadRoles.Add('admin');
end;

class procedure TCustomMVVMSrvController.AddReadWriteRole(const aRole: string);
begin
  FWriteRoles.Add(aRole);
end;

class procedure TCustomMVVMSrvController.AddWriteProc(const aProc: string);
begin
  FWriteProcs.Add(aProc)
end;

class function TCustomMVVMSrvController.Authenticate(AContext: TWebContext; AUserRoles: TList<String>;
  aActionName: string): boolean;
begin
  Result := (FWriteProcs.Contains(aActionName) and GrantWrite(AUserRoles)) or
    (FReadProcs.Contains(aActionName) and GrantRead(AUserRoles))
end;

class constructor TCustomMVVMSrvController.Create;
begin
  FWriteProcs := TList<String>.Create;
  FReadProcs := TList<String>.Create;
  FWriteRoles := TList<String>.Create;
  FReadRoles := TList<String>.Create;

  FWriteRoles.Add('admin');
  FReadRoles.Add('admin');
  FReadRoles.Add('user');

end;

class destructor TCustomMVVMSrvController.Destroy;
begin
  FWriteProcs.Free;
  FReadProcs.Free;
  FWriteRoles.Free;
  FReadRoles.Free;
end;

function TCustomMVVMSrvController.GenerateMessage(const aCode, aMessage: string): string;
var
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
begin
  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  try
    Writer.WriteStartObject;
    Writer.WritePropertyName('Result');
    Writer.WriteStartObject;
    Writer.WritePropertyName('Message');
    Writer.WriteValue(aMessage);
    Writer.WritePropertyName('Code');
    Writer.WriteValue(aCode);
    Writer.WriteEndObject;
    Writer.WriteEndObject;
  finally
    Writer.Free;
    Writer := nil;
  end;
end;

class function TCustomMVVMSrvController.GrantRead(const aRole: TList<String>): boolean;
var
  lRole: string;
begin
  Result := False;

  for lRole in aRole do
    Result := Result or FReadRoles.Contains(lRole.ToLower);

end;

class function TCustomMVVMSrvController.GrantWrite(const aRole: TList<String>): boolean;
var
  lRole: string;
begin
  Result := False;

  for lRole in aRole do
    Result := Result or FWriteRoles.Contains(lRole.ToLower);

end;

end.
