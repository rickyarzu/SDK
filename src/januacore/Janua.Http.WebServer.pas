unit Janua.Http.WebServer;

interface

{$I JANUACORE.INC}

uses System.SysUtils, Janua.Core.Types;

Type
  TJanuaWebServer = class
  public
    constructor Create; overload; virtual;
    constructor Create(aPort: Integer); overload;
  private
    FLogProc: TMessageLogProc;
    FServerName: string;
    FPort: Integer;
    procedure SetServerName(const Value: string);
  protected
    /// <summary> GetIsActive va impostata nella classe figlia in quanto connessa al WebServer sottostante </summary>
    function GetIsActive: Boolean; virtual;
    /// <summary> scrive una freccia o un prompt per la gestione del Server a mezzo 'console' </summary>
    procedure WriteArrow;
    procedure SetIsActive(const Value: Boolean); virtual; abstract;
    procedure SetLogProc(const Value: TMessageLogProc);
    procedure InternalLogProc(aProcName: string; aLogMessage: string; aObject: TObject);
    // Class Functions
    function GetPort: Integer; overload;
    procedure SetPort(const Value: Integer);
  public
    function GetPort(aDefault: Integer): Integer; overload;
    procedure StartServer; overload; virtual; abstract;
    procedure StopServer; overload; virtual; abstract;
    procedure WriteStatus; virtual; abstract;
  public
    property IsActive: Boolean read GetIsActive write SetIsActive;
    property LogProc: TMessageLogProc read FLogProc write SetLogProc;
    property Port: Integer read GetPort write SetPort;
    property ServerName: string read FServerName write SetServerName;
  end;

  TJanuaWebServerClass = class of TJanuaWebServer;

implementation

uses Janua.Application.Framework;

{ TJanuaWebServer }

constructor TJanuaWebServer.Create;
begin
  FLogProc := InternalLogProc;
  FPort := -1;
  FServerName := 'WebBroker';
end;

constructor TJanuaWebServer.Create(aPort: Integer);
begin
  Create;
  if aPort > 0 then
    SetPort(aPort);
end;

function TJanuaWebServer.GetIsActive: Boolean;
begin
  Result := False;
end;

function TJanuaWebServer.GetPort(aDefault: Integer): Integer;
begin
  if FPort = -1 then
    FPort := TJanuacoreOS.ReadParam(FServerName, 'Port', aDefault);
  Result := FPort;
  var
  lLogMessage := 'Default port: ' + FPort.ToString;
  if TJanuaApplication.ApplicationType in [jatConsoleSrv] then
    Writeln(lLogMessage);
  InternalLogProc('GetPort', lLogMessage, nil);
end;

function TJanuaWebServer.GetPort: Integer;
begin
  if FPort = -1 then
    FPort := TJanuacoreOS.ReadParam(FServerName, 'Port', FPort);
  Result := FPort;
end;

procedure TJanuaWebServer.InternalLogProc(aProcName, aLogMessage: string; aObject: TObject);
begin
  if TJanuaApplication.ApplicationType in [jatConsoleSrv] then
    Writeln(aLogMessage);
  TJanuaLogger.LogMessage(aProcName, aLogMessage, aObject);
end;

procedure TJanuaWebServer.SetLogProc(const Value: TMessageLogProc);
begin
  FLogProc := Value;
end;

procedure TJanuaWebServer.SetPort(const Value: Integer);
begin
  if FPort <> Value then
  begin
    FPort := Value;
    if not FServerName.IsEmpty then
      TJanuacoreOS.WriteParam(FServerName, 'Port', FPort);
  end;
end;

procedure TJanuaWebServer.SetServerName(const Value: string);
begin
  if FServerName <> Value then
  begin
    FServerName := Value;
    if not FServerName.IsEmpty then
      FPort := TJanuacoreOS.ReadParam(FServerName, 'Port', FPort);
  end;
end;

procedure TJanuaWebServer.WriteArrow;
begin
  if TJanuaApplication.ApplicationType in [jatConsoleSrv] then
    Write(cArrow);
end;

end.
