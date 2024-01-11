program JanuaVCLTest;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  Janua.Orm.Register,
  Janua.Uni.Framework,
  Janua.Application.Framework,
  Janua.Test.VCLApplication,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  uframeTest in '..\..\Testing\src\uframeTest.pas' {frameTest: TFrame},
  unitTestApplicationFramework in '..\..\Testing\src\unitTestApplicationFramework.pas',
  Janua.Classes.Test in '..\..\src\januacore\Test\Janua.Classes.Test.pas',
  Janua.Core.Functions.Test in '..\..\src\januacore\Test\Janua.Core.Functions.Test.pas',
  ufrmTest in '..\..\Testing\src\ufrmTest.pas' {frmTest},
  ufrmTest2 in '..\..\Testing\src\ufrmTest2.pas' {frmTest2},
  ufrmTest3 in '..\..\Testing\src\ufrmTest3.pas' {frmTest3},
  Janua.VCL.CoreComponents.Test in '..\..\src\VCL\Test\Janua.VCL.CoreComponents.Test.pas',
  Janua.VCL.ApplicationSetup.Test in '..\..\src\VCL\Test\Janua.VCL.ApplicationSetup.Test.pas',
  Janua.TMS.MVVMForms.Test in '..\..\src\TMS\Janua.TMS.MVVMForms.Test.pas',
  Janua.Orm.Test in '..\..\src\januacore\Test\Janua.Orm.Test.pas',
  Janua.VCL.Actions.Test in '..\..\src\VCL\Test\Janua.VCL.Actions.Test.pas';

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
begin
 {


 }
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
