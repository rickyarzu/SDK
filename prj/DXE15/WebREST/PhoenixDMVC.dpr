program PhoenixDMVC;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  MVCFramework,
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.Signal,
  Web.ReqMulti,
  Web.WebReq,
  Web.WebBroker,
  IdContext,
  IdHTTPWebBrokerBridge,
  Janua.Phoenix.DMVC in '..\..\..\src\januacore\dmvc\Janua.Phoenix.DMVC.pas',
  Janua.DMVC.WebModulePhoenix in '..\..\..\src\januawebrest\Janua.DMVC.WebModulePhoenix.pas' {wmPhoenixDMVC: TWebModule},
  Janua.FDAC.Phoenix.Reports in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Reports.pas' {dmFDACPhoenixReports: TDataModule},
  udmPhoenixReportsCaches in '..\..\..\..\Phoenix\Phoenix\SW\PhoenixMain\udmPhoenixReportsCaches.pas' {dmPhoenixReportsCaches: TDataModule};

{$R *.res}


procedure RunServer(APort: Integer);
var
  LServer: TIdHTTPWebBrokerBridge;
begin
  Writeln('** DMVCFramework Server ** build ' + DMVCFRAMEWORK_VERSION);
  LServer := TIdHTTPWebBrokerBridge.Create(nil);
  try
    LServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
    LServer.DefaultPort := APort;
    LServer.KeepAlive := True;

    { more info about MaxConnections
      http://ww2.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=index.html }
    LServer.MaxConnections := 0;

    { more info about ListenQueue
      http://ww2.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=index.html }
    LServer.ListenQueue := 200;

    LServer.Active := True;
    WriteLn('Listening on port ', APort);
    Write('CTRL+C to shutdown the server');
    WaitForTerminationSignal;
    EnterInShutdownState;
    LServer.Active := False;
  finally
    LServer.Free;
  end;
end;

begin
  ReportMemoryLeaksOnShutdown := True;
  IsMultiThread := True;
  // DMVCFramework Specific Configuration
  // When MVCSerializeNulls = True empty nullables and nil are serialized as json null.
  // When MVCSerializeNulls = False empty nullables and nil are not serialized at all.
  MVCSerializeNulls := True;
  try
    if WebRequestHandler <> nil then
      WebRequestHandler.WebModuleClass := WebModuleClass;
    WebRequestHandlerProc.MaxConnections := 1024;
    RunServer(9513);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
