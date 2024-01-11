  program JanuaVCLUnitTesting;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  VCL.Forms,
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  udmCMSViewModel in '..\..\..\src\VCL\Cms\udmCMSViewModel.pas' {dmCMSViewModel: TDataModule},
  udmPgStorage in '..\..\src\januaunidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule},
  unitTestCmsVM in '..\src\unitTestCmsVM.pas',
  udmJanuaPostgresModel in '..\..\src\januaunidac\datamodules\udmJanuaPostgresModel.pas',
  udmJanuaCoreStorage in '..\..\src\januacore\datamodule\udmJanuaCoreStorage.pas' {dmJanuaCoreStorage: TDataModule},
  udmJanuaCoreServer in '..\..\src\januacore\udmJanuaCoreServer.pas' {dmJanuaCoreServer: TDataModule},
  udmPgCmsStorage in '..\..\src\januaunidac\datamodules\udmPgCmsStorage.pas' {dmPgCmsStorage: TDataModule},
  udmPgAdsStorage in '..\..\src\januaunidac\datamodules\udmPgAdsStorage.pas' {dmPgAdsStorage: TDataModule},
  udmPgCloudStorage in '..\..\src\januaunidac\datamodules\udmPgCloudStorage.pas' {dmPgCloudStorage: TDataModule};

var
  runner : ITestRunner;
  results : IRunResults;
  logger : ITestLogger;
  nunitLogger : ITestLogger;
begin
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
  exit;
{$ENDIF}
  try
    Application.CreateForm(TdmPgCloudStorage, dmPgCloudStorage);
    Application.CreateForm(TdmPgCmsStorage, dmPgCmsStorage);
    Application.CreateForm(TdmPgAdsStorage, dmPgAdsStorage);
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
