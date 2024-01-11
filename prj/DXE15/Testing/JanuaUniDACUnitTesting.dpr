program JanuaUniDACUnitTesting;
{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  Janua.Application.Framework,
  Janua.Carservice.impl,
  Janua.Mock.SMS,
  Janua.Mock.MailSender,
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
{$ELSE}
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
{$ENDIF }
  DUnitX.TestFramework,
  Janua.Uni.Application in '..\..\..\src\januaunidac\Janua.Uni.Application.pas',
  Janua.Mock.Reports in '..\..\..\src\januacore\Mock\Janua.Mock.Reports.pas',
  Janua.Carservice.PgBooking
    in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgBooking.pas' {dmPgCarServiceBookingStorage: TDataModule} ,
  Janua.Mock.Dialogs in '..\..\..\src\januacore\Mock\Janua.Mock.Dialogs.pas',
  Janua.Mocks.Helpers in '..\..\..\src\januacore\Mock\Janua.Mocks.Helpers.pas',
  Janua.Mock.Framework in '..\..\..\src\januacore\Mock\Janua.Mock.Framework.pas',
  Janua.UniDAC.Test.Carservice.impl in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.Carservice.Impl.pas',
  Janua.UniDAC.Test.PgBooking in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.PgBooking.pas',
  Janua.UniDAC.Test.Application in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.Application.pas',
  Janua.UniDAC.Cloud.Conf.Test in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Cloud.Conf.Test.pas',
  Janua.UniDAC.TestCommons in '..\..\..\src\januaunidac\Test\Janua.UniDAC.TestCommons.pas',
  Janua.Uni.Test.Legacy.PgSystem in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.Legacy.PgSystem.pas',
  Janua.UniDAC.Test.CloudConf in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.CloudConf.pas',
  Janua.UniDAC.Test.dmTestDatasets
    in '..\..\..\src\januaunidac\Test\Janua.UniDAC.Test.dmTestDatasets.pas' {dmUniPgTestDatasets: TDataModule} ,
  Janua.Carservice.dmPgDrivers
    in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.dmPgDrivers.pas' {dmPgCarServiceBookingDrivers: TDataModule};

{$IFNDEF TESTINSIGHT}

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;
{$ENDIF}

begin
  TDUnitX.Options.ExitBehavior := TDUnitXExitBehavior.Pause;
  TJanuaApplication.CustomServer := True;
  TJanuaUniTestApplication.ApplicationSetup('test.unidac.local');
  TJanuaApplication.DBSchemaID := 36;
{$IFDEF DEBUG}
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sConfFile := TJanuaCoreOS.ConfigFileName;
{$ENDIF}
  TJanuaMockReports.RegisterMockReports;
  try
    TJanuaApplication.UserSessionVM.SilentLogin('test@ergomercator.com', 'ergotest');
  except
    on e: exception do
    begin
      Writeln(e.Message);
      Writeln('ServerConf: ' + sConfFile);
      Writeln('Server Address: ' + TJanuaApplication.ServerAddress + ', Port: ' +
        TJanuaApplication.ServerPort.ToString + ', Database: ' + TJanuaApplication.ServerDatabaseName);
      System.Readln;
    end;
  end;
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
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
{$ENDIF}
  except
    on e: exception do
    begin
      System.Writeln(e.ClassName, ': ', e.Message);
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
  end;
{$ENDIF}

  (*
    Janua.Test.ViewModel.Documents in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.Documents.pas',
    Janua.Uni.Test.Legacy.PgSystem in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.Legacy.PgSystem.pas',
    Janua.Test.ViewModel.System in '..\..\..\src\januacore\Test\Janua.Test.ViewModel.System.pas',
    Janua.Uni.Test.Anagraph.ViewModel in '..\..\..\src\januaunidac\Test\Janua.Uni.Test.Anagraph.ViewModel.pas',
  *)
end.
