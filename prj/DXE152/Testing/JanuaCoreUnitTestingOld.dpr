program JanuaCoreUnitTestingOld;

{$I januacore.inc}
{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  System.Classes,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  {$IFDEF WEBBROKER}
  Web.WebReq,
  {$ENDIF }
  unitTestCoreTypes in '..\..\..\Testing\src\unitTestCoreTypes.pas',
  unitTestMapsTypes in '..\..\..\Testing\src\unitTestMapsTypes.pas',
  unitTestCoreClasses in '..\..\..\Testing\src\unitTestCoreClasses.pas',
  unitTestOrm in '..\..\..\Testing\src\unitTestOrm.pas',
  unitTestConf in '..\..\..\Testing\src\unitTestConf.pas',
  unitTestHtmlMetro5 in '..\..\..\Testing\src\unitTestHtmlMetro5.pas',
  unitTestMetro5 in '..\..\..\Testing\src\unitTestMetro5.pas',
  unitTestCoreHtml in '..\..\..\Testing\src\unitTestCoreHtml.pas',
  uWebBrokerTest in '..\..\..\Testing\src\uWebBrokerTest.pas' {Critico},
  Janua.Test.Football in '..\..\..\src\januacore\Test\Janua.Test.Football.pas',
  unitTestFootball in '..\..\..\Testing\src\unitTestFootball.pas',
  unitTestDilettantissimo in '..\..\..\Testing\src\unitTestDilettantissimo.pas',
  unitTestCms in '..\..\..\Testing\src\unitTestCms.pas',
  ServerMethodsCoreTest in '..\..\..\Testing\src\ServerMethodsCoreTest.pas',
  unitTestLND in '..\..\..\Testing\src\unitTestLND.pas',
  unitTestLNDFactory in '..\..\..\Testing\src\unitTestLNDFactory.pas',
  unitTestCoreFunctions in '..\..\..\Testing\src\unitTestCoreFunctions.pas',
  uWebModuleCoreTest in '..\..\..\Testing\src\uWebModuleCoreTest.pas' {WebModuleCoreTest: TWebModule},
  unitTestCloud in '..\..\..\Testing\src\unitTestCloud.pas',
  unitTestCoreSystem in '..\..\..\Testing\src\unitTestCoreSystem.pas',
  uTestSystem in '..\..\..\Testing\src\Common\uTestSystem.pas',
  Janua.Test.ServerVirtual.Impl in '..\..\..\Testing\src\Janua.Test.ServerVirtual.Impl.pas';

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;

begin

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
