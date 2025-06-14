program JanuaCoreUnitTesting;
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
  Janua.Orm.Register,
  Janua.DunitX.Test in '..\..\..\src\januacore\Test\Janua.DunitX.Test.pas',
  Janua.Cloud.Types.Test in '..\..\..\src\januacore\Test\Janua.Cloud.Types.Test.pas',
  Janua.Core.Functions.Test in '..\..\..\src\januacore\Test\Janua.Core.Functions.Test.pas',
  Janua.Test.FireDac.dmVirtual in '..\..\..\src\januacore\Test\Janua.Test.FireDac.dmVirtual.pas' {dmFDacVirtualTest: TDataModule},
  Janua.Orm.Test.Impl in '..\..\..\src\januacore\Test\Janua.Orm.Test.Impl.pas',
  Janua.Orm.Test.Intf in '..\..\..\src\januacore\Test\Janua.Orm.Test.Intf.pas',
  Janua.Orm.Test in '..\..\..\src\januacore\Test\Janua.Orm.Test.pas',
  Janua.Cloud.Conf.Test in '..\..\..\src\januacore\Test\Janua.Cloud.Conf.Test.pas',
  Janua.Cloud.Test in '..\..\..\src\januacore\Test\Janua.Cloud.Test.pas',
  Janua.Carservice.Impl.Test in '..\..\..\src\januacore\Test\Janua.Carservice.Impl.Test.pas',
  Janua.Cloud.Impl.Test in '..\..\..\src\januacore\Test\Janua.Cloud.Impl.Test.pas',
  Janua.Test.Mail.Intf in '..\..\..\src\januacore\Test\Janua.Test.Mail.Intf.pas',
  Janua.Test.Mail.Impl in '..\..\..\src\januacore\Test\Janua.Test.Mail.Impl.pas',
  Janua.Cloud.Mail.Test in '..\..\..\src\januacore\Test\Janua.Cloud.Mail.Test.pas',
  Janua.Carservice.Orm.Test in '..\..\..\src\januacore\Test\Janua.Carservice.Orm.Test.pas',
  Janua.Html.Test in '..\..\..\src\januacore\Test\Janua.Html.Test.pas',
  Janua.Maps.Types.Test in '..\..\..\src\januacore\Test\Janua.Maps.Types.Test.pas',
  Janua.Html.Metro5.Test in '..\..\..\src\januacore\Test\Janua.Html.Metro5.Test.pas',
  Janua.Core.Conf.Test in '..\..\..\src\januacore\Test\Janua.Core.Conf.Test.pas',
  Janua.Core.Json.Test in '..\..\..\src\januacore\Test\Janua.Core.Json.Test.pas',
  Janua.Orm.Anagraph.Test in '..\..\..\src\januacore\Test\Janua.Orm.Anagraph.Test.pas',
  Janua.Orm.Carservice.Test in '..\..\..\src\januacore\Test\Janua.Orm.Carservice.Test.pas',
  Janua.Orm.Documents.Test in '..\..\..\src\januacore\Test\Janua.Orm.Documents.Test.pas',
  Janua.Http.Test in '..\..\..\src\januacore\Test\Janua.Http.Test.pas',
  Janua.Http.WebMock.Test in '..\..\..\src\januacore\Test\Janua.Http.WebMock.Test.pas',
  Janua.Rest.TestClasses in '..\..\..\src\januacore\Test\Janua.Rest.TestClasses.pas',
  Janua.Rest.UnitTest.Client in '..\..\..\src\januacore\Test\Janua.Rest.UnitTest.Client.pas',
  Janua.Http.Types.Test in '..\..\..\src\januacore\Test\Janua.Http.Types.Test.pas',
  Janua.Core.Types.Test in '..\..\..\src\januacore\Test\Janua.Core.Types.Test.pas',
  Janua.Test.Mocks in '..\..\..\src\januacore\Test\Janua.Test.Mocks.pas';

{ keep comment here to protect the following conditional from being removed by the IDE when adding a unit }
{$IFNDEF TESTINSIGHT}
var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;
{$ENDIF}
begin
  // Initialize Janua Framework for Testing.
  Janua.Orm.Register.TJanuaOrmFramework.Initialize;
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
    // Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);
    // Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;
{$IFNDEF CI}
    // We don't want this happening when running under CI.
    System.Write('Done.. press <Enter> key to quit.');
    System.Readln;
{$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
{$ENDIF}
end.
