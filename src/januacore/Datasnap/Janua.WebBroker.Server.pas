unit Janua.WebBroker.Server;

interface

uses
  System.SysUtils,
  IPPeerServer,
  IPPeerAPI,
  IdHTTPWebBrokerBridge,
{$IFDEF WINDOWS}
  Web.WebReq,
  Web.WebBroker,
{$ENDIF}
  Janua.Core.Types,
  Janua.Core.WebServer;

type
  TJanuaWebBrokerServer = class(TJanuaWebServer)
  private
    FServer: TIdHTTPWebBrokerBridge;
    function BindPort(APort: Integer): Boolean;
    function CheckPort(APort: Integer): Integer;
    procedure SetServerPort(const AServer: TIdHTTPWebBrokerBridge; APort: Integer);
    procedure StartServer(const AServer: TIdHTTPWebBrokerBridge); overload;
    procedure StopServer(const AServer: TIdHTTPWebBrokerBridge); overload;
    procedure RunServer(APort: Integer);
  protected
    function GetIsActive: Boolean; override;
  public
    procedure StartServer; override;
    procedure StopServer; override;
    procedure WriteStatus; override;
  end;

implementation

uses Janua.WebBroker.ServerConst, Janua.Application.Framework;

{ TJanuaWebBrokerServer }

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
  Result := FServer.Active;
end;

procedure TJanuaWebBrokerServer.RunServer(APort: Integer);
var
  LServer: TIdHTTPWebBrokerBridge;
  LResponse: string;
begin
  if not Assigned(FServer) then
  begin
    LServer := TIdHTTPWebBrokerBridge.Create(nil);
    SetServerPort(FServer, GetPort);
    FServer := LServer;
  end
  else
    LServer := FServer;

  LServer.DefaultPort := APort;
  StartServer(LServer);
  Write(cArrow);
end;

procedure TJanuaWebBrokerServer.SetPort(const Value: Integer);
begin
  inherited;
  if Assigned(FServer) then
    SetServerPort(FServer, Value);
end;

procedure TJanuaWebBrokerServer.SetServerPort(const AServer: TIdHTTPWebBrokerBridge; APort: Integer);
begin
  if not AServer.Active then
  begin
    if CheckPort(APort) > 0 then
    begin
      AServer.DefaultPort := APort;
      if Assigned(LogProc) then
        LogProc('SetServerPort', Format(sPortSet, [APort]), self);
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

  if AppType = jatConsoleSrv then
    Write(cArrow);
end;

procedure TJanuaWebBrokerServer.StartServer;
begin
  if BindPort(self.Port) then
    RunServer(self.Port);
end;

procedure TJanuaWebBrokerServer.StopServer;
begin
  if Assigned(FServer) and FServer.Active then
  begin
    LogProc('StopServer', sStoppingServer, self);
    StopServer(FServer);
    FServer.Free;
    FServer := nil;
  end;
end;

procedure TJanuaWebBrokerServer.WriteStatus;
begin
  LogProc('Status', sIndyVersion + FServer.SessionList.Version, self);
  LogProc('Status', sActive + FServer.Active.ToString(TUseBoolStrs.True), self);
  LogProc('Status', sPort + FServer.DefaultPort.ToString, self);
  LogProc('Status', sSessionID + FServer.SessionIDCookieName, self);
end;

procedure TJanuaWebBrokerServer.StopServer(const AServer: TIdHTTPWebBrokerBridge);
begin
  AServer.Active := False;
  AServer.Bindings.Clear;
end;

end.
