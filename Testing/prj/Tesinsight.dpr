program Tesinsight;

{$APPTYPE CONSOLE}
{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
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
  unitTestOrm in '..\src\unitTestOrm.pas',
  unitTestSystemMVVM in '..\src\unitTestSystemMVVM.pas',
  Janua.Test.FireDac.dmVirtual in '..\..\src\januacore\datamodule\Janua.Test.FireDac.dmVirtual.pas' {dmVirtualTest: TDataModule},
  Janua.Test.VCLApplication in '..\..\src\VCL\Test\Janua.Test.VCLApplication.pas',
  unitTestCoreClasses in '..\src\unitTestCoreClasses.pas',
  unitTestCoreFunctions in '..\src\unitTestCoreFunctions.pas',
  unitTestJanuaApplication in '..\src\unitTestJanuaApplication.pas',
  uframeTest in '..\src\uframeTest.pas' {frameTest: TFrame},
  unitTestCoreTypes in '..\src\unitTestCoreTypes.pas',
  unitTestActions in '..\src\unitTestActions.pas',
  unitTestAnagraficaViewModel in '..\src\unitTestAnagraficaViewModel.pas',
  uTestSystem in '..\src\Common\uTestSystem.pas',
  Janua.Test.VCL.frameBindTestOrm in '..\src\Janua.Test.VCL.frameBindTestOrm.pas' {frameBindTestOrm: TFrame};

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
  //   unitTestViewModel in '..\src\unitTestViewModel.pas',
begin
  // Inizializzo la Registrazione del Framework Orm
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
  // inizializzo Firedac (temporaneamente per l'avvio di Testing)
  Janua.Uni.Framework.TJanuaUniPgApplication.RegisterDataModules;
  // Registra Applicazione
  TJanuaTestVCLApplication.ApplicationSetup;
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
