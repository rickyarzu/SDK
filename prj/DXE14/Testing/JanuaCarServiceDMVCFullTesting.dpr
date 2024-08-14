program JanuaCarServiceDMVCFullTesting;
{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.REPLCommandsHandlerU,
  Web.ReqMulti,
  Web.WebReq,
  Web.WebBroker,
  IdContext,
  IdHTTPWebBrokerBridge,
  Janua.Application.Framework,
  Janua.Application.Intf,
  Janua.Core.Console,
  TestInsight.DUnitX,
  DUnitX.TestFramework,
  Janua.Mock.SMS,
  Janua.Mock.MailSender,
  Janua.UniDAC.Test.Carservice.Impl in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.Carservice.Impl.pas',
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.Test.FireDac.dmExportImport in '..\..\..\src\januacore\Test\Janua.Test.FireDac.dmExportImport.pas' {dmTestFireDACImportExport: TDataModule},
  Janua.DMVC.Test.Firedac in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.Firedac.pas',
  Janua.Uni.Test.PgExportImport in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.PgExportImport.pas' {dmPgTestExportImport: TDataModule},
  Janua.DMVC.Test.WebModule in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.WebModule.pas' {MyWebModule: TWebModule},
  Janua.REST.Client in '..\..\..\src\januacore\dmvc\Janua.REST.Client.pas',
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.DMVC.Controller.Template in '..\..\..\src\januacore\dmvc\Janua.DMVC.Controller.Template.pas',
  Janua.System.DMVC.Session.Controller in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.Session.Controller.pas',
  Janua.DMVC.UnitTest.DMVCFramework in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.UnitTest.DMVCFramework.pas',
  Janua.Rest.TestClasses in '..\..\..\src\januacore\Test\Janua.Rest.TestClasses.pas',
  Janua.REST.Test.LoginClient in '..\..\..\src\januacore\dmvc\Test\Janua.REST.Test.LoginClient.pas',
  Janua.UniDAC.Test.Application in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.Application.pas',
  Janua.Mock.Dialogs in '..\..\src\januacore\Mock\Janua.Mock.Dialogs.pas',
  Janua.Mock.Framework in '..\..\src\januacore\Mock\Janua.Mock.Framework.pas',
  Janua.Mock.Reports in '..\..\src\januacore\Mock\Janua.Mock.Reports.pas',
  Janua.Mocks.Helpers in '..\..\src\januacore\Mock\Janua.Mocks.Helpers.pas',
  Janua.Test.Model.Impl in '..\..\..\src\januacore\ViewModels\Janua.Test.Model.Impl.pas',
  Janua.Test.ViewModel.Impl in '..\..\..\src\januacore\ViewModels\Janua.Test.ViewModel.Impl.pas',
  Janua.Test.ViewModel.Intf in '..\..\..\src\januacore\ViewModels\Janua.Test.ViewModel.Intf.pas',
  Janua.DMVC.Srv.Framework in '..\..\..\src\januacore\dmvc\Janua.DMVC.Srv.Framework.pas',
  Janua.DMVC.UnitTest.TestViewModel in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.UnitTest.TestViewModel.pas',
  Janua.DMVC.UnitTest.SystemViewModel in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.UnitTest.SystemViewModel.pas',
  Janua.DMVC.UnitTest.Client in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.UnitTest.Client.pas',
  Janua.Test.FDac.dmRemoteDMCustomers in '..\..\..\src\januacore\Test\Janua.Test.FDac.dmRemoteDMCustomers.pas' {dmTestFDacRemoteCustomers: TDataModule},
  Janua.Carservice.Impl.Test in '..\..\..\src\januacore\Test\Janua.Carservice.Impl.Test.pas',
  Janua.Carservice.Orm.Test in '..\..\..\src\januacore\Test\Janua.Carservice.Orm.Test.pas',
  Janua.UniDAC.Test.PgBooking in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.PgBooking.pas',
  Janua.Uni.Test.Legacy.PgSystem in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.Legacy.PgSystem.pas',
  Janua.UniDAC.Test.MVVM.CarService.Booking in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.CarService.Booking.pas',
  Janua.UniDAC.Test.MVVM.Carservice.Drivers in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Carservice.Drivers.pas',
  Janua.Carservice.DMVC.Application in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.Application.pas',
  Janua.CarService.Driver.DMVCController in '..\..\..\src\januacore\dmvc\Janua.CarService.Driver.DMVCController.pas',
  Janua.DMVC.Carservice.Driver.UnitTest in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Carservice.Driver.UnitTest.pas',
  Janua.DMVC.System.Session.UnitTest in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.System.Session.UnitTest.pas';

{ keep comment here to protect the following conditional from being removed by the IDE when adding a unit }
var
  FServer: TIdHTTPWebBrokerBridge;
  FCustomHandler: TMVCCustomREPLCommandsHandler;
  FCmd: String;
  FLogin: TTestLoginClient;
  FLoggedIN: Boolean;

procedure StartHttpServer;
begin
  IsMultiThread := True;
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  WebRequestHandlerProc.MaxConnections := 1024;
  FCustomHandler :=
      function(const Value: String; const Server: TIdHTTPWebBrokerBridge; out Handled: Boolean): THandleCommandResult
    begin
      Handled := False;
      Result := THandleCommandResult.Unknown;
      // Write here your custom command for the REPL using the following form...
      // ***
      // Handled := False;
      // if (Value = 'apiversion') then
      // begin
      // REPLEmit('Print my API version number');
      // Result := THandleCommandResult.Continue;
      // Handled := True;
      // end
      // else if (Value = 'datetime') then
      // begin
      // REPLEmit(DateTimeToStr(Now));
      // Result := THandleCommandResult.Continue;
      // Handled := True;
      // end;
    end;
  FServer := TIdHTTPWebBrokerBridge.Create(nil);
  FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  FServer.DefaultPort := TJanuaApplication.RESTClientConf.Port;
  { more info about MaxConnections
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_MaxConnections.html }
  FServer.MaxConnections := 0;
  { more info about ListenQueue
    http://www.indyproject.org/docsite/html/frames.html?frmname=topic&frmfile=TIdCustomTCPServer_ListenQueue.html }
  FServer.ListenQueue := 200;
  { required if you use JWT middleware }
  FServer.OnParseAuthentication := TMVCParseAuthentication.OnParseAuthentication;
  FServer.Active := True;
end;

procedure StopHttpServer;
begin
  if Assigned(FServer) then
  begin
    FServer.Active := False;
    FServer.Free;
  end;
end;

function RestLogin: Boolean;
var
  lClient: TTestLoginClient;
begin
  try
    lClient := TTestLoginClient.Create;
    try
      Result := lClient.Login;
    finally
      lClient.Free;
    end;
  except
    on e: exception do
      raise exception.Create('RestLogin Error: ' + e.Message);
  end;
end;

begin
  TJanuaUniTestApplication.ApplicationSetup('test.mvvm.unidac.local');
  TJanuaApplication.DBSchemaID := 36;
{$IFDEF DEBUG}
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sConfFile := TJanuaCoreOS.ConfigFileName;
{$ENDIF}
  TJanuaMockReports.RegisterMockReports;
  TJanuaLogger.OutputLogger := TJanuaConsoleLogOutput.Create;
  try
    FLoggedIN := TJanuaApplication.UserSessionVM.SilentLogin('test@ergomercator.com', 'ergotest');
  except
    on e: exception do
      raise exception.Create('Error Connecting Server Address: ' +
        TJanuaApplication.ServerAddress + ', Port: ' + TJanuaApplication.ServerPort.ToString + ', Database: '
        + TJanuaApplication.ServerDatabaseName + sLineBreak + 'Error: ' + sLineBreak + e.Message);
  end;
  if FLoggedIN then
  begin
    // Januaproject Test Setup
    // 'test@ergomercator.com' ergotest
    TJanuaApplication.RESTClientConf.UserName := 'c.missana@tiscalinet.it';
    TJanuaApplication.RESTClientConf.Password := '@Miss4n4';
    TJanuaApplication.RESTClientConf.Server := 'http://127.0.0.1';
    TJanuaApplication.RESTClientConf.Port := 8081;
    StartHttpServer;
    if not RestLogin then
    begin
      StopHttpServer;
    end
    else
    begin
      TestInsight.DUnitX.RunRegisteredTests;
      StopHttpServer;
    end;
  end;

end.
