unit Janua.Http.Intf;

{$I JANUACORE.INC}

interface

uses
{$IFDEF DELPHIXE} System.SysUtils{$IFDEF  WEBBROKER} , Web.HttpApp{$ENDIF}{$ENDIF}
{$IFDEF FPC} SysUtils {$ENDIF}, Janua.Server.Intf;

Type
  TWebAction = Record
    Name, PathInfo: string;
{$IF Defined(WEBBROKER)}
    Action: THTTPMethodEvent;
{$ENDIF}
    Active: boolean;
  public
{$IF Defined(WEBBROKER)}
    constructor Create(aName, aPathInfo: string; aAction: THTTPMethodEvent; aActive: boolean = False);
{$ENDIF}
  End;

type
  TJanuaHttpParam = record
    Key: string;
    Value: string;
  public
    function AsEncoded: string;
    function AsParamEncoded: string;
    constructor Create(aKey, aValue: string); overload;
    constructor Create(const aKey: string; aValue: TDateTime); overload;
    constructor Create(const aKey: string; aValue: Integer); overload;
    constructor Create(const aKey: string; aValue: Int64); overload;
    function AsString: string;
  end;

  // class function ParamsEncode(const ASrc: string): string;

  TJanuaHttpParamsArray = TArray<TJanuaHttpParam>;

  TJanuaHttpParams = record
    Items: TJanuaHttpParamsArray;
    ItemIndex: Integer;
  public
    procedure Clear;
    function Count: Integer;
    function AsEncoded: UTF8String;
    procedure Add(aParam: TJanuaHttpParam);
    function ParamByName(aName: string): TJanuaHttpParam;
    function AsString: string;
  end;

Type
  IWebController = interface(IInterface)
    ['{6D534A56-C61E-41A9-BEB3-4262031028D8}']
    function GetPage404(aException: Exception): string;
    function GetFrame404(aException: Exception): string;
  end;

type
  // Forward declaration
  IWebSession = interface;

  IWebManager = interface(IInterface)
    ['{F59D3AB5-A8C3-4A73-9F90-65EC04FDBDC4}']
{$IF Defined(WEBBROKER)}
    // AddAction.
    procedure AddWebAction(aAlias, aName, aPathInfo: string; aAction: THTTPMethodEvent; aDefault: boolean = False);
    // All'avvio della Applicazione va Eseguito Register Web Module.
    procedure RegisterWebModule(aModule: TWebModule);
    // Responder è l'action di Default e corrisponde a '/' del WebModule
    procedure Responder(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
{$ENDIF}
    // AddFactory
    procedure AddServer(const aServer: IJanuaServer);
    // FuncResponder per collaudo fuori da WebBroker
    function FuncResponder(aServer, aFunction, aParams: string): string;
    procedure AddSession(aSession: IWebSession);
  end;

  IWebSession = interface(IInterface)
    ['{3EFAB676-DD6C-4975-BB1B-082D8572AE45}']
{$IF Defined(WEBBROKER)}
    procedure RegisterWebModule(aModule: TWebModule);
{$ENDIF}
  end;

implementation

uses
{$IFDEF DELPHIXE} Spring, System.StrUtils, System.DateUtils, {$ENDIF}
{$IFDEF fpc} StrUtils, DateUtils, VarUtils, {$ENDIF}
  Janua.Application.Framework, Janua.Core.Functions;

{ TWebAction }
{$IF Defined(WEBBROKER)}

constructor TWebAction.Create(aName, aPathInfo: string; aAction: THTTPMethodEvent; aActive: boolean);
begin
  Guard.CheckTrue(Assigned(aAction), 'TWebAction.Create Action is nil');
  Guard.CheckNotNull(aName, 'TWebAction.Create aName is nil');
  Guard.CheckNotNull(aPathInfo, 'TWebAction.Create aPathInfo is nil');
  self.Name := aName;
  self.PathInfo := aPathInfo;
  self.Active := aActive;
  self.Action := aAction;
end;
{$ENDIF}
{ TJanuaHttpParam }

function TJanuaHttpParam.AsEncoded: string;
begin
  try
    result :=
{$IFDEF DELPHIXE}
{$IFDEF POSIX}
      Janua.Core.Functions.EncodeURIComponentIOS(Key)
{$ELSE}
      System.UTF8ToString(EncodeURIComponent(Key))
{$ENDIF}
{$ELSE}
      EncodeURIComponent(Key)
{$ENDIF}
      + '=' + AsParamEncoded
  except
    on e: Exception do
      raise Exception.Create('TJanuaHttpParam.AsEncoded' + e.Message);
  end;
end;

function TJanuaHttpParam.AsParamEncoded: string;
begin
  try
    result := {$IFDEF DELPHIXE}
{$IFDEF POSIX}
      Janua.Core.Functions.EncodeURIComponentIOS(Value)
{$ELSE}
      System.UTF8ToString(EncodeURIComponent(Value))
{$ENDIF}
{$ELSE}
      EncodeURIComponent(Value)
{$ENDIF}
  except
    on e: Exception do
      raise Exception.Create('TJanuaHttpParam.AsParamEncoded' + e.Message);
  end;
end;

function TJanuaHttpParam.AsString: string;
begin
  result := Key + '=' + Value
end;

constructor TJanuaHttpParam.Create(const aKey: string; aValue: Int64);
begin
  self.Key := aKey;
  self.Value := aValue.ToString;
end;

constructor TJanuaHttpParam.Create(aKey, aValue: string);
begin
  self.Key := aKey;
  self.Value := aValue;
end;

constructor TJanuaHttpParam.Create(const aKey: string; aValue: TDateTime);
begin
  self.Key := aKey;
  self.Value := DateToISO8601(aValue);
end;

constructor TJanuaHttpParam.Create(const aKey: string; aValue: Integer);
begin
  self.Key := aKey.ToLower;
  self.Value := aValue.ToString;
end;

{ TJanuaHttpParams }

procedure TJanuaHttpParams.Add(aParam: TJanuaHttpParam);
begin
  SetLength(self.Items, self.Count + 1);
  self.ItemIndex := Pred(self.Count);
  self.Items[ItemIndex] := aParam;
end;

function TJanuaHttpParams.AsEncoded: UTF8String;
var
  I: Integer;
begin
  try
    result := '';
    for I := 0 to Pred(Count) do
      result := result + System.UTF8Encode(IfThen(I = 0, '', '&') + Items[I].AsEncoded);
  except
    on e: Exception do
      raise Exception.Create('TJanuaHttpParam.AsEncoded ' + e.Message);
    (* raise Exception.Create('TJanuaHttpParams.AsEncoded: ' +
      {$IFDEF delphixe} System.UTF8ToString(result) {$ELSE} result {$ENDIF}
      + sLineBreak + e.Message); *)
  end;
end;

function TJanuaHttpParams.AsString: string;
var
  aParam: TJanuaHttpParam;
begin
  for aParam in self.Items do
    result := result + (IfThen(result = '', '', '; ') + aParam.AsString);
end;

procedure TJanuaHttpParams.Clear;
begin
  self.ItemIndex := 0;
  SetLength(self.Items, 0);
end;

function TJanuaHttpParams.Count: Integer;
begin
  result := Length(self.Items);
end;

function TJanuaHttpParams.ParamByName(aName: string): TJanuaHttpParam;
var
  aParam: TJanuaHttpParam;
begin
  for aParam in self.Items do
    if aParam.Key = aName.ToLower then
      Exit(aParam);
end;

end.
