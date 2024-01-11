program JanuaLegacyUniMVVMTesting;
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
  Janua.Test.ViewModel.System in '..\..\src\januacore\Test\Janua.Test.ViewModel.System.pas',
  Janua.Test.ViewModel.Documents in '..\..\src\januacore\Test\Janua.Test.ViewModel.Documents.pas',
  unitTestWorkflowViewModel in '..\src\unitTestWorkflowViewModel.pas',
  Janua.Test.ViewModel.MVVMSearch in '..\..\src\januacore\Test\Janua.Test.ViewModel.MVVMSearch.pas',
  unitTestMVVMUniDAC in '..\src\unitTestMVVMUniDAC.pas',
  unitTestShipmentsViewModel in '..\src\unitTestShipmentsViewModel.pas',
  unitTestWHReceipts in '..\src\unitTestWHReceipts.pas',
  unitTestMVVInvoices in '..\src\unitTestMVVInvoices.pas',
  unitTestLookupSearchDatasets in '..\src\unitTestLookupSearchDatasets.pas',
  Janua.Mock.Dialogs in '..\..\src\januacore\Mock\Janua.Mock.Dialogs.pas',
  Janua.Mock.Framework in '..\..\src\januacore\Mock\Janua.Mock.Framework.pas',
  Janua.Mock.Reports in '..\..\src\januacore\Mock\Janua.Mock.Reports.pas',
  Janua.Mocks.Helpers in '..\..\src\januacore\Mock\Janua.Mocks.Helpers.pas';

var
  lString: string;
{$IFNDEF TESTINSIGHT}
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;
{$ENDIF}

begin
  TJanuaTestApplication.Initialize;
  TJanuaUniApplication.ApplicationSetup('testmvvm.januaproject.it');
  TJanuaMockReports.RegisterMockReports;
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
{$ELSE}
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
