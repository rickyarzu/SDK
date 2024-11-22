program JanuaMVVMCoreTesting;

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
  Janua.Test.Framework,
  Janua.REST.Client,
  Janua.Mock.Firedac.Framework,
  Janua.Mock.Dialogs in '..\..\..\src\januacore\Mock\Janua.Mock.Dialogs.pas',
  Janua.Mock.Framework in '..\..\..\src\januacore\Mock\Janua.Mock.Framework.pas',
  Janua.Mock.Reports in '..\..\..\src\januacore\Mock\Janua.Mock.Reports.pas',
  Janua.Mocks.Helpers in '..\..\..\src\januacore\Mock\Janua.Mocks.Helpers.pas',
  Janua.Test.ViewModel.System in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.System.pas',
  Janua.Test.FireDac.dmVirtual in '..\..\..\src\januacore\Test\Janua.Test.FireDac.dmVirtual.pas' {dmVirtualTest: TDataModule},
  Janua.Test.Core.ViewModel in '..\..\..\src\januacore\Test\Janua.Test.Core.ViewModel.pas',
  Janua.Test.ViewModel.Anagraph in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.Anagraph.pas',
  Janua.System.Test in '..\..\..\src\januacore\Test\Janua.System.Test.pas',
  Janua.Test.DUnitx in '..\..\..\src\januacore\Test\Janua.Test.DUnitx.pas',
  Janua.Test.ViewModel.MVVMSearch in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.MVVMSearch.pas',
  Janua.Test.ViewModel.AnagraphSearch in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.AnagraphSearch.pas',
  Janua.Test.ViewModel.Documents in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.Documents.pas';

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
  Janua.Mock.FireDac.Framework.TJanuaMockFiredacApplication.RegisterFireDacDataModules;
  Janua.Mock.FireDac.Framework.TJanuaMockFiredacApplication.RegisterClasses;
  // Registra Applicazione
  TJanuaMockFiredacApplication.RegisterClasses;

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
