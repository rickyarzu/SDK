unit Janua.Http.WebServer;

interface

{$I JANUACORE.INC}

uses System.SysUtils, Janua.Core.Types;

Type
  TJanuaWebServer = class
  public
    constructor Create; overload;
    /// <summary> Create Class imposta la class Var FPort. Variabile 'unica' in tutta l'applicazione </summary>
    class Constructor CreateClass;
  private
    class var FPort: Integer;
  private
    FLogProc: TMessageLogProc;
  protected
    /// <summary> GetIsActive va impostata nella classe figlia in quanto connessa al WebServer sottostante </summary>
    function GetIsActive: Boolean; virtual;
    /// <summary> scrive una freccia o un prompt per la gestione del Server a mezzo 'console' </summary>
    procedure WriteArrow;
    procedure SetIsActive(const Value: Boolean); virtual; abstract;
    procedure SetLogProc(const Value: TMessageLogProc);
    procedure InternalLogProc(aProcName: string; aLogMessage: string; aObject: TObject);
    // Class Functions
    class function GetPort: Integer; overload; static;
    class procedure SetPort(const Value: Integer); static;
  public
    class function GetPort(aDefault: Integer): Integer; overload;
    procedure StartServer; overload; virtual; abstract;
    procedure StopServer; overload; virtual; abstract;
    procedure WriteStatus; virtual; abstract;
  public
    property IsActive: Boolean read GetIsActive write SetIsActive;
    property LogProc: TMessageLogProc read FLogProc write SetLogProc;
    class property Port: Integer read GetPort write SetPort;
  end;

  TJanuaWebServerClass = class of TJanuaWebServer;

implementation

uses Janua.Application.Framework;

{ TJanuaWebServer }

constructor TJanuaWebServer.Create;
begin
  FLogProc := InternalLogProc;
end;

class constructor TJanuaWebServer.CreateClass;
begin
  FPort := 0;
end;

function TJanuaWebServer.GetIsActive: Boolean;
begin
  Result := False;
end;

class function TJanuaWebServer.GetPort(aDefault: Integer): Integer;
begin
  if FPort = 0 then
    FPort := TJanuacoreOS.ReadParam('WebBroker', 'Port', aDefault);
  Result := FPort;
  var
  lLogMessage := 'Default port: ' + IntToStr(FPort);
  if TJanuaApplication.ApplicationType in [jatConsoleSrv] then
    Writeln(lLogMessage);
  TJanuaLogger.LogMessage('GetPort', lLogMessage, nil);
end;

class function TJanuaWebServer.GetPort: Integer;
begin
  if FPort = 0 then
    FPort := TJanuacoreOS.ReadParam('WebBroker', 'Port', 8084);
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

class procedure TJanuaWebServer.SetPort(const Value: Integer);
begin
  if FPort <> Value then
  begin
    FPort := Value;
    TJanuacoreOS.WriteParam('WebBroker', 'Port', Value);
  end;
end;

procedure TJanuaWebServer.WriteArrow;
begin
  if TJanuaApplication.ApplicationType in [jatConsoleSrv] then
    Write(cArrow);
end;

end.
