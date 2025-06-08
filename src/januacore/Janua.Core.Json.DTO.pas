unit Janua.Core.Json.DTO;

interface

uses System.Sysutils, System.JSONConsts, System.Rtti, System.DateUtils, System.Classes, System.Json,
  // Reflection Json Classes
  Rest.Json, System.Generics.Collections, Rest.JsonReflect,
  // DTO
  Pkg.Json.DTO,
  // Janua
  Janua.Core.Classes, Janua.Core.Types, Janua.Bindings.Intf;

type

  TJanuaJsonDTO = class(TJsonDTO, IJanuaBindable)
    // ************************************** Log Management ***************************************
  protected
    FLogProc: TMessageLogProc;
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc); virtual;
    procedure LogError(const aProcName, aError: string);
  public
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    // ************************************* Bindings Procedures ***********************************
  private
    FOwnerInterface: IInterface;
  protected
    { IInterface }
    function _AddRef: Integer; stdcall;
    function _Release: Integer; stdcall;
  public
    function QueryInterface(const IID: TGUID; out Obj): HResult; virtual; stdcall;
    // ************************************* Bindings Procedures ***********************************
  strict protected
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  public
    property BindManager: IJanuaBindManager read GetBindManager;
  public
    procedure ClearBindings;
    procedure NotifiyAllProperties;
    procedure Notify(const AProperty: string);
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    // *********************************************************************************************
  protected
    function GetSelf: TObject;
  public
    property AsObject: TObject read GetSelf;
    constructor Create; override;
  end;

implementation

uses Janua.Application.Framework, Janua.Core.Commons;

{ TJanuaJsonDTO }

procedure TJanuaJsonDTO.Bind(const AProperty: string; const ABindToObject: TObject;
  const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    if Assigned(FBindManager) then
      FBindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      Raise Exception.Create(ClassName + '.Bind Error:' + E.Message);
  end;
end;

procedure TJanuaJsonDTO.ClearBindings;
begin
  if Assigned(FBindManager) then
    FBindManager.ClearBindings
end;

constructor TJanuaJsonDTO.Create;
begin
  inherited;
  FBindManager := TJanuaBindManager.Create(self);
end;

function TJanuaJsonDTO.GetBindManager: IJanuaBindManager;
begin
  Result := FBindManager
end;

function TJanuaJsonDTO.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc
end;

function TJanuaJsonDTO.GetSelf: TObject;
begin
  Result := self
end;

procedure TJanuaJsonDTO.LogError(const aProcName, aError: string);
begin
  if Assigned(FLogProc) then
    FLogProc(aProcName, aError, self)
  else
    TJanuaLogger.LogError(aProcName, aError, self)
end;

procedure TJanuaJsonDTO.NotifiyAllProperties;
begin
  FBindManager.NotifyAll
end;

procedure TJanuaJsonDTO.Notify(const AProperty: string);
begin
  FBindManager.Notify(AProperty);
end;

function TJanuaJsonDTO.QueryInterface(const IID: TGUID; out Obj): HResult;
begin
  if GetInterface(IID, Obj) then
    Result := S_OK
  else
    Result := E_NOINTERFACE;
end;

procedure TJanuaJsonDTO.SetLogProc(const Value: TMessageLogProc);
begin
  FLogProc := Value;
end;

function TJanuaJsonDTO._AddRef: Integer;
begin
  Result := -1; // This is not an interfaced Object
end;

function TJanuaJsonDTO._Release: Integer;
begin
  Result := -1; // This is not an interfaced Object
end;

end.
