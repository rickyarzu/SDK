program JanuaDMVCUnitTesting;
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
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  {$ENDIF }
  DUnitX.TestFramework,
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.Test.FDac.dmRemoteDMCustomers in '..\..\..\src\januacore\Test\Janua.Test.FDac.dmRemoteDMCustomers.pas' {dmTestFDacRemoteCustomers: TDataModule},
  Janua.Test.FireDac.dmExportImport in '..\..\..\src\januacore\Test\Janua.Test.FireDac.dmExportImport.pas' {dmTestFireDACImportExport: TDataModule},
  Janua.DMVC.Test.Firedac in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.Firedac.pas',
  Janua.Uni.Test.PgExportImport in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.PgExportImport.pas' {dmPgTestExportImport: TDataModule},
  Janua.DMVC.Test.WebModule in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.WebModule.pas' {MyWebModule: TWebModule},
  Janua.REST.Client in '..\..\..\src\januacore\dmvc\Janua.REST.Client.pas',
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.DMVC.Srv.Template in '..\..\..\src\januacore\dmvc\Janua.DMVC.Srv.Template.pas',
  Janua.System.DMVC.Srv in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.Srv.pas',
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
  Janua.DMVC.UnitTest.Client in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.UnitTest.Client.pas';

{ keep comment here to protect the following conditional from being removed by the IDE when adding a unit }
var
  FServer: TIdHTTPWebBrokerBridge;
  FCustomHandler: TMVCCustomREPLCommandsHandler;
  FCmd: String;
  FLogin: TTestLoginClient;
{$IFNDEF TESTINSIGHT}
  runner: ITestRunner;
  results: IRunResults;
  Logger: ITestLogger;
  nunitLogger: ITestLogger;
  FConsoleLogger: IJanuaApplicationLogOutput;
{$ENDIF}
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
      System.Writeln(lClient.LastMessage);
    finally
      lClient.Free;
    end;
  except
    on e: exception do
    begin
      System.Writeln(e.Message);
      Result := False;
    end;
  end;
end;
begin
  try
    TJanuaUniTestApplication.ApplicationSetup('test.mvvm.unidac.local');
    TJanuaApplication.DBSchemaID := 36;
{$IFDEF DEBUG}
    // Verifico quale sia la location del Config File per aggiustarlo eventualmente
    var
    sConfFile := TJanuaCoreOS.ConfigFileName;
{$ENDIF}
    TJanuaMockReports.RegisterMockReports;
    if not TJanuaApplication.UserSessionVM.SilentLogin('test@ergomercator.com', 'ergotest') then
    begin
      System.Write('Error Login.. press <Enter> key to quit.');
      System.Readln;
    end
    else
    begin
      // Januaproject Test Setup
      TJanuaApplication.RESTClientConf.UserName := 'test@ergomercator.com';
      TJanuaApplication.RESTClientConf.Password := 'ergotest';
      TJanuaApplication.RESTClientConf.Port := 8081;
      StartHttpServer;
      if not RestLogin then
      begin
        System.Writeln('Error REST Login.. press <Enter> key to quit.');
        System.Readln;
        StopHttpServer;
      end
      else
      begin
{$IFDEF TESTINSIGHT}
        TestInsight.DUnitX.RunRegisteredTests;
{$ELSE}
        FConsoleLogger := TJanuaConsoleLogOutput.Create;
        TJanuaLogger.OutputLogger := FConsoleLogger;
        try
          // Check command line options, will exit if invalid
          TDUnitX.CheckCommandLine;
          // Create the test runner
          runner := TDUnitX.CreateRunner;
          // Tell the runner to use RTTI to find Fixtures
          runner.UseRTTI := True;
          // When true, Assertions must be made during tests;
          runner.FailsOnNoAsserts := False;
          // tell the runner how we will log things
          // Log to the console window if desired
          if TDUnitX.Options.ConsoleMode <> TDunitXConsoleMode.Off then
          begin
            Logger := TDUnitXConsoleLogger.Create(TDUnitX.Options.ConsoleMode = TDunitXConsoleMode.Quiet);
            runner.AddLogger(Logger);
          end;
          // Generate an NUnit compatible XML File
          nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
          runner.AddLogger(nunitLogger);
          // Run tests
          results := runner.Execute;
          if not results.AllPassed then
            System.ExitCode := EXIT_ERRORS;
{$IFNDEF CI}
          // We don't want this happening when running under CI.
          System.Write('Done.. press <Enter> key to quit.');
          System.Readln;
{$ENDIF}
        finally
          StopHttpServer;
        end;
      end;
    end;
  except
    on e: exception do
      System.Writeln(e.ClassName, ': ', e.Message);
  end;
{$ENDIF}
end.
