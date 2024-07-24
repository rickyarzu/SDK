program CarServiceDMVCustomerConfirmation;
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
  Spring,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.Carservice.DMVC.CustomerConfWebModule in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.CustomerConfWebModule.pas' {CarServiceCustConfWebModule: TWebModule},
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.System.DMVC.Srv in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.Srv.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.Carservice.DMVC.Application in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.Application.pas',
  Janua.DMVC.UniDacApplication in '..\..\..\src\januacore\dmvc\Janua.DMVC.UniDacApplication.pas',
  Janua.DMVC.Srv.Template in '..\..\..\src\januacore\dmvc\Janua.DMVC.Srv.Template.pas',
  Janua.CarService.DMVC.www.CustConf in '..\..\..\src\januacore\dmvc\Janua.CarService.DMVC.www.CustConf.pas',
  Janua.DMVC.CustomWebModule in '..\..\..\src\januacore\dmvc\Janua.DMVC.CustomWebModule.pas' {JanuaDMVCCustomWebModule: TWebModule};

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
    Writeln('Listening on port ', APort);
    Write('CTRL+C to shutdown the server');
    WaitForTerminationSignal;
    EnterInShutdownState;
    LServer.Active := False;
  finally
    LServer.Free;
  end;
end;

begin
  try
    ReportMemoryLeaksOnShutdown := True;
    IsMultiThread := True;
    // Januaproject Settings
    TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
    TJanuaApplication.RestServerConf.Port := 9012;
    // le applicazioni locali UniGUI hanno come Home:
    TJanuaCarserviceDMVCServerApplication.ApplicationSetup('custconf.pikapp.it');
{$IFDEF DEBUG}
    ReportMemoryLeaksOnShutdown := True;
    // Verifico quale sia la location del Config File per aggiustarlo eventualmente
    var
    sConfFile := TJanuacoreOS.ConfigFileName;
    // Verifico quale sia la location del Config File per aggiustarlo eventualmente
    var
    sServer := TJanuaApplication.ServerAddress;
    Guard.CheckFalse(sConfFile = '', 'sConfFile not set');
    Guard.CheckFalse(sServer = '', 'sServer not set ' + sConfFile);

    var
    sHtDocsDir := TJanuacoreOS.GetAppWebFilesPath;
{$ENDIF}
    // DMVCFramework Specific Configuration
    // When MVCSerializeNulls = True empty nullables and nil are serialized as json null.
    // When MVCSerializeNulls = False empty nullables and nil are not serialized at all.
    MVCSerializeNulls := True;
    if WebRequestHandler <> nil then
      WebRequestHandler.WebModuleClass := CarServiceWebModuleClass;
    WebRequestHandlerProc.MaxConnections := 1024;
    // Janua Application Rest Server Conf.Port is set on Config File or on Startup
    RunServer(TJanuaApplication.RestServerConf.Port);
  except
    on E: Exception do
    begin
      Writeln(E.ClassName, ': ', E.Message);
      Readln;
    end;
  end;
end.
