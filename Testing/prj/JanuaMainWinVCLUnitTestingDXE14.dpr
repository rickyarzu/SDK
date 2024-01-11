program JanuaMainWinVCLUnitTestingDXE14;

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
  Vcl.Forms,
  Janua.ViewModels.Framework,
  Janua.Bindings.Impl,
  Janua.Mock.Container in '..\src\Janua.Mock.Container.pas',
  Janua.Orm.Test.Impl in '..\src\Janua.Orm.Test.Impl.pas',
  Janua.Orm.Test.Intf in '..\src\Janua.Orm.Test.Intf.pas',
  Janua.Test.Server.Impl in '..\src\Janua.Test.Server.Impl.pas',
  Janua.Test.Server.Intf in '..\src\Janua.Test.Server.Intf.pas',
  Janua.Test.ServerVirtual.Impl in '..\src\Janua.Test.ServerVirtual.Impl.pas',
  ufrmTest in '..\src\ufrmTest.pas' {frmTest},
  uframeTest in '..\src\uframeTest.pas' {frameTest: TFrame},
  ufrmTestContainer in '..\src\ufrmTestContainer.pas' {frmTestContainer},
  ufrmTest2 in '..\src\ufrmTest2.pas' {frmTest2},
  ufrmTest3 in '..\src\ufrmTest3.pas' {frmTest3},
  uApplicationSetup in '..\src\uApplicationSetup.pas',
  uTestSidney in '..\src\uTestSidney.pas',
  unitTestCoreFunctions in '..\src\unitTestCoreFunctions.pas',
  unitTestCoreClasses in '..\src\unitTestCoreClasses.pas',
  unitTestCoreHtml in '..\src\unitTestCoreHtml.pas',
  unitTestHtmlMetro5 in '..\src\unitTestHtmlMetro5.pas',
  unitTestJanuaApplication in '..\src\unitTestJanuaApplication.pas',
  unitTestTmsAppBar in '..\src\unitTestTmsAppBar.pas',
  unitTestStyleManager in '..\src\unitTestStyleManager.pas',
  unitTestOrm in '..\src\unitTestOrm.pas',
  unitTestCoreTypes in '..\src\unitTestCoreTypes.pas',
  unitTestTMLogistic in '..\src\unitTestTMLogistic.pas',
  unitTestAnagraficaViewModel in '..\src\unitTestAnagraficaViewModel.pas',
  unitTestDocumentsViewModel in '..\src\unitTestDocumentsViewModel.pas',
  Janua.Test.VCLApplication in '..\..\src\VCL\Test\Janua.Test.VCLApplication.pas',
  unitTestMVVMFilters in '..\src\unitTestMVVMFilters.pas',
  Janua.Test.VCL.frmTestFilters in '..\..\Samples\VCL\ViewModel\Janua.Test.VCL.frmTestFilters.pas' {frmVCLTestFilters},
  unitTestActions in '..\src\unitTestActions.pas',
  unitTestMVVMForms in '..\src\unitTestMVVMForms.pas',
  unitTestMVVMSearchModel in '..\src\unitTestMVVMSearchModel.pas',
  ufrmGridsTestings in '..\..\Samples\VCL\GridsTesting\ufrmGridsTestings.pas' {frmVCLTestGrids},
  unitTestAWBViewModel in '..\src\unitTestAWBViewModel.pas',
  unitTestWorkflowViewModel in '..\src\unitTestWorkflowViewModel.pas',
  unitTestShipmentsViewModel in '..\src\unitTestShipmentsViewModel.pas';

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;

begin
{  if TJanuaApplication.ErrorLog.count > 0 then
    ShowMessage(TJanuaApplication.ErrorLog.Text);}

  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaTestVCLApplication.ApplicationSetup;

{$IFDEF DEBUG}
  //System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  TJanuaTestVCLApplication.ApplicationTearDown;
  Application.Terminate;
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
    // Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);

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
  {
    unitTestApplicationFramework in '..\src\unitTestApplicationFramework.pas',
    unitTestBindingOrms in '..\src\unitTestBindingOrms.pas',
    unitTestCloud in '..\src\unitTestCloud.pas',
    unitTestConf in '..\src\unitTestConf.pas',
    unitTestWHReceipts in '..\src\unitTestWHReceipts.pas',
  }

end.
