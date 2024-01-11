program JanuaMVVMTestingXE12;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
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
  ufrmTest in '..\src\ufrmTest.pas',
  ufrmTest2 in '..\src\ufrmTest2.pas',
  ufrmTest3 in '..\src\ufrmTest3.pas',
  unitTestMapsTypes in '..\src\unitTestMapsTypes.pas',
  Janua.Orm.Test in '..\..\src\januacore\Test\Janua.Orm.Test.pas',
  unitTestSystemMVVM in '..\src\unitTestSystemMVVM.pas',
  Janua.Test.FireDac.dmVirtual in '..\..\src\januacore\datamodule\Janua.Test.FireDac.dmVirtual.pas' {dmVirtualTest: TDataModule},
  Janua.Test.VCLApplication in '..\..\src\VCL\Test\Janua.Test.VCLApplication.pas',
  Janua.Classes.Test in '..\..\src\januacore\Test\Janua.Classes.Test.pas',
  Janua.Core.Functions.Test in '..\..\src\januacore\Test\Janua.Core.Functions.Test.pas',
  unitTestJanuaApplication in '..\src\unitTestJanuaApplication.pas',
  uframeTest in '..\src\uframeTest.pas' {frameTest: TFrame},
  unitTestCoreTypes in '..\src\unitTestCoreTypes.pas',
  Janua.VCL.Actions.Test in '..\..\src\VCL\Test\Janua.VCL.Actions.Test.pas',
  unitTestViewModel in '..\src\unitTestViewModel.pas',
  unitTestAnagraficaViewModel in '..\src\unitTestAnagraficaViewModel.pas',
  Janua.System.Test in '..\..\src\januacore\Test\Janua.System.Test.pas',
  ufrmBindTestOrm in '..\src\ufrmBindTestOrm.pas' {frmBindTestOrm},
  uframeJanuaVCLViewModelDetail in '..\..\src\VCL\Forms\uframeJanuaVCLViewModelDetail.pas' {frameJanuaVCLViewModelDetail: TFrame},
  ufrmTestDetailFrames in '..\src\ufrmTestDetailFrames.pas' {frmTestDetailFrames},
  Janua.Test.DUnitx in '..\src\Janua.Test.DUnitx.pas',
  unitTestMetro5 in '..\src\unitTestMetro5.pas',
  unitTestCoreHtml in '..\src\unitTestCoreHtml.pas',
  unitTestTmsAppBar in '..\src\unitTestTmsAppBar.pas',
  Janua.VCL.ApplicationSetup.Test in '..\..\src\VCL\Test\Janua.VCL.ApplicationSetup.Test.pas',
  ufrmTestContainer in '..\src\ufrmTestContainer.pas' {frmTestContainer},
  uWebBrokerTest in '..\src\uWebBrokerTest.pas',
  unitTestMVVMSearchModel in '..\src\unitTestMVVMSearchModel.pas',
  unitTestDocumentsViewModel in '..\src\unitTestDocumentsViewModel.pas',
  unitTestAnagraphSearchViewModel in '..\src\unitTestAnagraphSearchViewModel.pas',
  Janua.Test.VCL.frameBindTestOrm in '..\..\src\VCL\Test\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame};

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
  //
begin
  // Inizializzo la Registrazione del Framework Orm
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
  // inizializzo Firedac (temporaneamente per l'avvio di Testing)
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  // Registra Applicazione
  TJanuaTestVCLApplication.ApplicationSetup;

{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //tell the runner how we will log things
    //Log to the console window
    logger := TDUnitXConsoleLogger.Create(true);
    runner.AddLogger(logger);
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    runner.FailsOnNoAsserts := False; //When true, Assertions must be made during tests;

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
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
