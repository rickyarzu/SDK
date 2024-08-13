unit Janua.WebBroker.Server;

interface

uses
  System.SysUtils,
  System.Classes,
  IPPeerServer,
  IPPeerAPI,
  IdHTTPWebBrokerBridge,
  IdCustomHTTPServer,
  Web.WebReq,
  Janua.Core.Types,
  Janua.Http.WebServer;

type
  TJanuaWebBrokerServer = class(TJanuaWebServer)
  strict protected
    class var FWebModuleClass: TComponentClass;
  private
    FServer: TIdHTTPWebBrokerBridge;
    FOnParseAuthentication: TIdHTTPParseAuthenticationEvent;
    function BindPort(APort: Integer): Boolean;
    function CheckPort(APort: Integer): Integer;
    procedure SetServerPort(const AServer: TIdHTTPWebBrokerBridge; APort: Integer);
    procedure StartServer(const AServer: TIdHTTPWebBrokerBridge); overload;
    procedure StopServer(const AServer: TIdHTTPWebBrokerBridge); overload;
    procedure RunServer(APort: Integer);
  protected
    function GetIsActive: Boolean; override;
    procedure AfterServerCreation; virtual;
    property OnParseAuthentication: TIdHTTPParseAuthenticationEvent read FOnParseAuthentication
      write FOnParseAuthentication;
  public
    procedure StartServer; override;
    procedure StopServer; override;
    procedure WriteStatus; override;
  public
    class property WebModuleClass: TComponentClass read FWebModuleClass write FWebModuleClass;
  end;

  TJanuaWebBrokerServerClass = class of TJanuaWebBrokerServer;

var
  JanuaWebBrokerServerClass: TJanuaWebBrokerServerClass = TJanuaWebBrokerServer;

implementation

uses Spring, Janua.WebBroker.ServerConst, Janua.Application.Framework;

{ TJanuaWebBrokerServer }

procedure TJanuaWebBrokerServer.AfterServerCreation;
begin
  { more info about MaxConnections
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_MaxConnections.html }
  FServer.MaxConnections := 0;
  { more info about ListenQueue
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_ListenQueue.html }
  FServer.ListenQueue := 200;
end;

function TJanuaWebBrokerServer.BindPort(APort: Integer): Boolean;
var
  LTestServer: IIPTestServer;
begin
  Result := True;
  try
    LTestServer := PeerFactory.CreatePeer('', IIPTestServer) as IIPTestServer;
    LTestServer.TestOpenPort(APort, nil);
  except
    Result := False;
  end;
end;

function TJanuaWebBrokerServer.CheckPort(APort: Integer): Integer;
begin
  if BindPort(APort) then
    Result := APort
  else
    Result := 0;
end;

function TJanuaWebBrokerServer.GetIsActive: Boolean;
begin
  Result := Assigned(FServer) and FServer.Active;
end;

procedure TJanuaWebBrokerServer.RunServer(APort: Integer);
var
  LServer: TIdHTTPWebBrokerBridge;
  LResponse: string;
begin
  IsMultiThread := True;
  // WebRequestHandler that is a singleton can handle an http call and pass it to an instance of WebModule
  // to do this it has to create a new webmodule for each call or session
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := FWebModuleClass;
  WebRequestHandlerProc.MaxConnections := 1024;

  if not Assigned(FServer) then
  begin
    LServer := TIdHTTPWebBrokerBridge.Create(nil);
    SetServerPort(LServer, GetPort);
    FServer := LServer;
    if Assigned(OnParseAuthentication) then
      FServer.OnParseAuthentication := OnParseAuthentication;
    AfterServerCreation;
  end
  else
    LServer := FServer;

  LServer.DefaultPort := APort;
  StartServer(LServer);
end;

procedure TJanuaWebBrokerServer.SetServerPort(const AServer: TIdHTTPWebBrokerBridge; APort: Integer);
begin
  Guard.CheckNotNull(AServer, 'SetServerPort AServer is null');
  if not AServer.Active then
  begin
    if CheckPort(APort) > 0 then
    begin
      AServer.DefaultPort := APort;
      if Assigned(LogProc) then
        LogProc('SetServerPort', Format(sPortSet, [APort.ToString]), self);
      WriteArrow;
    end
    else
    begin
      raise Exception.Create(Format(sPortInUse, [APort]));
    end;
  end;
end;

procedure TJanuaWebBrokerServer.StartServer(const AServer: TIdHTTPWebBrokerBridge);
begin
  if Assigned(AServer) and not AServer.Active then
  begin
    AServer.DefaultPort := TJanuaWebBrokerServer.GetPort;
    if CheckPort(AServer.DefaultPort) > 0 then
    begin
      LogProc('StartServer', Format(sStartingServer, [AServer.DefaultPort]), self);
      AServer.Active := True;
    end
    else
    begin
      LogProc('StartServer', Format(sPortInUse, [AServer.DefaultPort.ToString]), self);
    end;
  end
  else
    LogProc('StartServer', sServerRunning, self);

  WriteArrow;
end;

procedure TJanuaWebBrokerServer.StartServer;
begin
  if BindPort(Port) then
    RunServer(Port);
end;

procedure TJanuaWebBrokerServer.StopServer;
begin
  if Assigned(FServer) and FServer.Active then
  begin
    LogProc('StopServer', sStoppingServer, self);
    StopServer(FServer);
    FServer.Free;
    FServer := nil;
    WebRequestHandler.FreeModules;
  end;
  WriteArrow;
end;

procedure TJanuaWebBrokerServer.WriteStatus;
begin
  if Assigned(FServer) then
  begin
    LogProc('Status', sIndyVersion + FServer.SessionList.Version, self);
    LogProc('Status', sActive + FServer.Active.ToString(TUseBoolStrs.True), self);
    LogProc('Status', sPort + FServer.DefaultPort.ToString, self);
    LogProc('Status', sSessionID + FServer.SessionIDCookieName, self);
    WriteArrow;
  end
  else
  begin
    LogProc('Status', 'Server Status not available', self);
  end;
end;

procedure TJanuaWebBrokerServer.StopServer(const AServer: TIdHTTPWebBrokerBridge);
begin
  if Assigned(AServer) then
  begin
    AServer.Active := False;
    AServer.Bindings.Clear;
  end;
end;

end.
