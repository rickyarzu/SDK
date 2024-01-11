  program JanuaCoreUnitTestingXE13;

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
  Janua.Test.Framework,
  Janua.Test.CoreApplication,
  Janua.Mock.Firedac.Framework,
  unitTestCoreTypes in '..\src\unitTestCoreTypes.pas',
  unitTestMapsTypes in '..\src\unitTestMapsTypes.pas',
  unitTestCoreClasses in '..\src\unitTestCoreClasses.pas',
  unitTestOrm in '..\src\unitTestOrm.pas',
  Janua.Orm.Test.Intf in '..\src\Janua.Orm.Test.Intf.pas',
  Janua.Orm.Test.Impl in '..\src\Janua.Orm.Test.Impl.pas',
  unitTestConf in '..\src\unitTestConf.pas',
  unitTestHtmlMetro5 in '..\src\unitTestHtmlMetro5.pas',
  unitTestMetro5 in '..\src\unitTestMetro5.pas',
  unitTestCoreHtml in '..\src\unitTestCoreHtml.pas',
  unitTestCoreFunctions in '..\src\unitTestCoreFunctions.pas',
  Janua.Test.Server.Intf in '..\src\Janua.Test.Server.Intf.pas',
  Janua.Test.Server.Impl in '..\src\Janua.Test.Server.Impl.pas',
  unitTestAWBViewModel in '..\src\unitTestAWBViewModel.pas',
  unitTestSystemMVVM in '..\src\unitTestSystemMVVM.pas',
  unitTestDocumentsViewModel in '..\src\unitTestDocumentsViewModel.pas';

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;

begin
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  // Inizializzazione TAilor Made Logistic Application
  // Viene impostato l'albero delle finestre ed il menu principale
  TJanuaMockFiredacApplication.RegisterClasses;
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
  TJanuaTestApplication.Initialize;
{$IFDEF DEBUG}
  //System.ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
{  TJanuaTestVCLApplication.ApplicationTearDown;  Application.Terminate;}
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

end.
