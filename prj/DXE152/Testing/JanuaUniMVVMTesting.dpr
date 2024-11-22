program JanuaUniMVVMTesting;
{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  {$ENDIF }
  DUnitX.TestFramework,
  Janua.Application.Framework,
  Janua.Uni.Application,
  Janua.Uni.Framework,
  Janua.Test.Framework,
  Janua.REST.Client,
  Janua.UniDAC.Test.Application in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.Application.pas',
  Janua.Mock.Dialogs in '..\..\..\src\januacore\Mock\Janua.Mock.Dialogs.pas',
  Janua.Mock.Framework in '..\..\..\src\januacore\Mock\Janua.Mock.Framework.pas',
  Janua.Mock.Reports in '..\..\..\src\januacore\Mock\Janua.Mock.Reports.pas',
  Janua.Mocks.Helpers in '..\..\..\src\januacore\Mock\Janua.Mocks.Helpers.pas',
  Janua.UniDAC.Test.MVVM.Workflow in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Workflow.pas',
  Janua.UniDAC.Test.MVVM.Template in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Template.pas',
  Janua.UniDAC.Test.MVVM.Shipments in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Shipments.pas',
  Janua.UniDAC.Test.MVVM.WHReceipt in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.WHReceipt.pas',
  Janua.UniDAC.Test.MVVM.Invoices in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Invoices.pas',
  Janua.UniDAC.Test.MVVM.Test.LookupSearch in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Test.LookupSearch.pas',
  Janua.UniDAC.Test.MVVM.Documents in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Documents.pas',
  Janua.UniDAC.Test.MVVM.System in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.System.pas',
  Janua.UniDAC.Test.MVVM.CarService.Booking in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.CarService.Booking.pas',
  Janua.UniDAC.Test.MVVM.Carservice.Drivers in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Carservice.Drivers.pas',
  Janua.UniDAC.Test.MVVM.Anagraph in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.MVVM.Anagraph.pas';

var
  lString: string;
{$IFNDEF TESTINSIGHT}
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;
{$ENDIF}



begin
  TJanuaUniTestApplication.ApplicationSetup('test.mvvm.unidac.local');
  TJanuaApplication.DBSchemaID := 36;
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  TJanuaApplication.ServerPort := 5432;

{$IFDEF DEBUG}
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sConfFile := TJanuaCoreOS.ConfigFileName;
{$ENDIF}
  TJanuaMockReports.RegisterMockReports;
  TJanuaApplication.UserSessionVM.SilentLogin('test@ergomercator.com', 'ergotest');
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
{$ELSE}
  TDUnitX.Options.ExitBehavior := TDUnitXExitBehavior.Pause;

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
      logger := TDUnitXConsoleLogger.Create(TDUnitX.Options.ConsoleMode = TDunitXConsoleMode.Quiet);
      runner.AddLogger(logger);
    end;
    { // Generate an NUnit compatible XML File
      nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
      runner.AddLogger(nunitLogger); }
    // Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;
{$IFNDEF CI}
    // We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
{$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
{$ENDIF}

end.
