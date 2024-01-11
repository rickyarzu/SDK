program JanuaCoreUnitTesting;

{$I januacore.inc}
{$DEFINE TESTINSIGHT}
{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  System.Classes,
  {$IFDEF WEBBROKER}
  Web.WebReq,
  {$ENDIF }
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  Janua.Core.Types,
  Janua.ViewModels.Framework,
  Janua.Orm.Register,
  Janua.Uni.Framework,
  unitTestCoreTypes in '..\..\src\unitTestCoreTypes.pas',
  unitTestMapsTypes in '..\..\src\unitTestMapsTypes.pas',
  Janua.Orm.Test in '..\..\..\src\januacore\Test\Janua.Orm.Test.pas',
  unitTestConf in '..\..\src\unitTestConf.pas',
  unitTestHtmlMetro5 in '..\..\src\unitTestHtmlMetro5.pas',
  unitTestMetro5 in '..\..\src\unitTestMetro5.pas',
  unitTestCoreHtml in '..\..\src\unitTestCoreHtml.pas',
  uWebBrokerTest in '..\..\src\uWebBrokerTest.pas' {Critico},
  Janua.Test.Football in '..\..\..\src\januacore\Test\Janua.Test.Football.pas',
  unitTestFootball in '..\..\src\unitTestFootball.pas',
  unitTestDilettantissimo in '..\..\src\unitTestDilettantissimo.pas',
  Janua.Cms.Test in '..\..\..\src\januacore\Test\Janua.Cms.Test.pas',
  ServerMethodsCoreTest in '..\..\src\ServerMethodsCoreTest.pas',
  unitTestLND in '..\..\src\unitTestLND.pas',
  unitTestLNDFactory in '..\..\src\unitTestLNDFactory.pas',
  Janua.Core.Functions.Test in '..\..\..\src\januacore\Test\Janua.Core.Functions.Test.pas',
  uWebModuleCoreTest in '..\..\src\uWebModuleCoreTest.pas' {WebModuleCoreTest: TWebModule},
  unitTestCloud in '..\..\src\unitTestCloud.pas',
  unitTestCoreSystem in '..\..\src\unitTestCoreSystem.pas',
  Janua.System.Test in '..\..\..\src\januacore\Test\Janua.System.Test.pas',
  Janua.Test.ServerVirtual.Impl in '..\..\src\Janua.Test.ServerVirtual.Impl.pas',
  ufrmTest in '..\..\src\ufrmTest.pas',
  ufrmTest2 in '..\..\src\ufrmTest2.pas',
  ufrmTest3 in '..\..\src\ufrmTest3.pas',
  unitTestAnagraficaViewModel in '..\..\src\unitTestAnagraficaViewModel.pas',
  unitTestJanuaApplication in '..\..\src\unitTestJanuaApplication.pas',
  ufrmTestContainer in '..\..\src\ufrmTestContainer.pas' {frmTestContainer},
  Janua.Classes.Test in '..\..\..\src\januacore\Test\Janua.Classes.Test.pas',
  uframeTest in '..\..\src\uframeTest.pas' {frameTest: TFrame},
  Janua.Mock.Container in '..\..\..\src\januacore\Test\Janua.Mock.Container.pas',
  Janua.VCL.ApplicationSetup.Test in '..\..\..\src\VCL\Test\Janua.VCL.ApplicationSetup.Test.pas',
  Janua.VCL.Actions.Test in '..\..\..\src\VCL\Test\Janua.VCL.Actions.Test.pas',
  unitTestDocumentsViewModel in '..\..\src\unitTestDocumentsViewModel.pas',
  unitTestViewModel in '..\..\src\unitTestViewModel.pas',
  unitViewModelTest in '..\..\src\unitViewModelTest.pas',
  Janua.Test.VCLApplication in '..\..\src\VCL\Test\Janua.Test.VCLApplication.pas',
  Janua.Test.VCL.frameBindTestOrm in '..\..\src\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame},
  ufrmBindTestOrm in '..\..\src\ufrmBindTestOrm.pas' {frmBindTestOrm},
  ufrmTestDetailFrames in '..\..\src\ufrmTestDetailFrames.pas' {frmTestDetailFrames},
  unitTestTmsAppBar in '..\..\src\unitTestTmsAppBar.pas';

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;

begin
  // Inizializzo la Registrazione del Framework Orm
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
  // inizializzo Firedac (temporaneamente per l'avvio di Testing)
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  // Registra Applicazione
  TJanuaTestVCLApplication.ApplicationSetup;

{$IFDEF webbroker}
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleCoreClass;
{$ENDIF webbroker}
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    // Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    // Create the test runner
    runner := TDUnitX.CreateRunner;
    // Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    // tell the runner how we will log things
    // Log to the console window
    logger := TDUnitXConsoleLogger.Create(True);
    runner.AddLogger(logger);
    // Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    runner.FailsOnNoAsserts := False; // When true, Assertions must be made during tests;

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

end.
