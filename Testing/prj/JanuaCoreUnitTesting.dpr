program JanuaCoreUnitTesting;

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
  uWebBrokerTest in '..\src\uWebBrokerTest.pas' {Critico} ,
  Janua.Test.Football in '..\..\src\januacore\Test\Janua.Test.Football.pas',
  unitTestFootball in '..\src\unitTestFootball.pas',
  unitTestDilettantissimo in '..\src\unitTestDilettantissimo.pas',
  unitTestCms in '..\src\unitTestCms.pas',
  ServerMethodsCoreTest in '..\src\ServerMethodsCoreTest.pas',
  unitTestLND in '..\src\unitTestLND.pas',
  unitTestLNDFactory in '..\src\unitTestLNDFactory.pas',
  unitTestCoreFunctions in '..\src\unitTestCoreFunctions.pas',
  uWebModuleCoreTest in '..\src\uWebModuleCoreTest.pas' {WebModuleCoreTest: TWebModule} ,
  unitTestCloud in '..\src\unitTestCloud.pas',
  unitTestCoreSystem in '..\src\unitTestCoreSystem.pas', uTestSystem in '..\src\Common\uTestSystem.pas',
  Janua.Test.Server.Intf in '..\src\Janua.Test.Server.Intf.pas',
  Janua.Test.Server.Impl in '..\src\Janua.Test.Server.Impl.pas',
  Janua.Test.ServerVirtual.Impl in '..\src\Janua.Test.ServerVirtual.Impl.pas';

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
