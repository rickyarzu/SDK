program LNDWebBrokerConsoleRestServer;
{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  System.Types,
  IPPeerServer,
  IPPeerAPI,
  IdHTTPWebBrokerBridge,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Core.Functions,
  Web.WebReq,
  Web.WebBroker,
  ServerConstLnd in '..\..\..\..\Projects\WebBroker\prj\LND\ServerConstLnd.pas',
  uDMLndSession in '..\..\..\..\Projects\WebBroker\prj\LND\uDMLndSession.pas' {dmLndSession: TDataModule},
  LNDWebModuleFactory in '..\..\..\..\Projects\WebBroker\prj\LND\LNDWebModuleFactory.pas' {WebModuleFactory: TWebModule},
  LNDConf in '..\..\..\src\januacore\custom\LNDConf.pas';

{$R *.res}

var
  i: integer;

function BindPort(Aport: integer): Boolean;
var
  LTestServer: IIPTestServer;
begin
  Result := True;
  try
    LTestServer := PeerFactory.CreatePeer('', IIPTestServer) as IIPTestServer;
    LTestServer.TestOpenPort(Aport, nil);
  except
    Result := False;
  end;
end;

function CheckPort(Aport: integer): integer;
begin
  if BindPort(Aport) then
    Result := Aport
  else
    Result := 0;
end;

procedure SetPort(const Aserver: TIdHTTPWebBrokerBridge; Aport: String);
begin
  if not(Aserver.Active) then
  begin
    Aport := Aport.Replace(cCommandSetPort, '').Trim;
    if CheckPort(Aport.ToInteger) > 0 then
    begin
      Aserver.DefaultPort := Aport.ToInteger;
      Writeln(Format(sPortSet, [Aport]));
    end
    else
      Writeln(Format(sPortInUse, [Aport]));
  end
  else
    Writeln(sServerRunning);
  Write(cArrow);
end;

procedure StartServer(const Aserver: TIdHTTPWebBrokerBridge);
begin
  if not(Aserver.Active) then
  begin
    if CheckPort(Aserver.DefaultPort) > 0 then
    begin
      Writeln(Format(sStartingServer, [Aserver.DefaultPort]));
      Aserver.Bindings.Clear;
      Aserver.Active := True;
      Writeln('**');
      Writeln('** ' + JanuaApplicationGlobalProfile.AppName + ' ' + JanuaApplicationGlobalProfile.Release);
      Writeln('** Database: ' + JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName);
      Writeln('** DB Server: ' + JanuaApplicationGlobalProfile.JanuaServerConf.Address);
      if Janua.Core.Functions.Ping(JanuaApplicationGlobalProfile.JanuaServerConf.Address) then
        Writeln('** DB Server: ***** ping is OK *********')
      else
        Writeln('** DB Server: ***** server is DOWN *********');

      Writeln('**');
      Writeln('uDMLNDSession.InitializeCloud');
      uDMLndSession.InitializeCloud;
    end
    else
      Writeln(Format(sPortInUse, [Aserver.DefaultPort.ToString]));
  end
  else
    Writeln(sServerRunning);
  Write(cArrow);
end;

procedure StopServer(const Aserver: TIdHTTPWebBrokerBridge);
begin
  if Aserver.Active then
  begin
    Writeln(sStoppingServer);
    Aserver.Active := False;
    Aserver.Bindings.Clear;
    Writeln(sServerStopped);
  end
  else
    Writeln(sServerNotRunning);
  Write(cArrow);
end;

procedure WriteCommands;
begin
  Writeln(sCommands);
  Write(cArrow);
end;

procedure WriteStatus(const Aserver: TIdHTTPWebBrokerBridge);
begin
  Writeln(sIndyVersion + Aserver.SessionList.Version);
  Writeln(sActive + Aserver.Active.ToString(TUseBoolStrs.True));
  Writeln(sPort + Aserver.DefaultPort.ToString);
  Writeln(sSessionID + Aserver.SessionIDCookieName);
  Writeln('');
  Writeln(JanuaApplicationGlobalProfile.GetConfiguration);
  Write(cArrow);
end;

procedure RunServer(Aport: integer);
var
  LServer: TIdHTTPWebBrokerBridge;
  LResponse: string;
begin
  WriteCommands;
  LServer := TIdHTTPWebBrokerBridge.Create(nil);
  try
    LServer.DefaultPort := Aport;
    while True do
    begin
      Readln(LResponse);
      LResponse := LowerCase(LResponse);
      if LResponse.StartsWith(cCommandSetPort) then
        SetPort(LServer, LResponse)
      else if sametext(LResponse, cCommandStart) then
        StartServer(LServer)
      else if sametext(LResponse, cCommandStatus) then
        WriteStatus(LServer)
      else if sametext(LResponse, cCommandStop) then
        StopServer(LServer)
      else if sametext(LResponse, cCommandHelp) then
        WriteCommands
      else if sametext(LResponse, cCommandExit) then
        if LServer.Active then
        begin
          StopServer(LServer);
          break
        end
        else
          break
      else
      begin
        Writeln(sInvalidCommand);
        Write(cArrow);
      end;
    end;
  finally
    LServer.Free;
  end;
end;

begin
  try
    if WebRequestHandler <> nil then
      WebRequestHandler.WebModuleClass := WebModuleClass;

    // Application.WebModuleClass := WebModuleClass;
    // Application.MaxConnections := 1000;

    // WebRequestHandler.WebModuleClass := WebModuleClass;
    WebRequestHandler.MaxConnections := 1000;

    JanuaApplicationGlobalProfile.ApplicationType := TJanuaApplicationType.jatConsoleSrv;

    RunServer(JanuaApplicationGlobalProfile.ListenPort);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end

end.
