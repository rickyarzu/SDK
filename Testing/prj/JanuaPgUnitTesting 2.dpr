program JanuaPgUnitTesting;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}

uses
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  System.SysUtils,
  System.Classes,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Cloud.Files.Intf,
  Janua.Postgres.Cloud,
  Janua.Cloud.Files.Cache,
  Janua.Cloud.Images.Cache,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  unitTestPgCloud in '..\src\unitTestPgCloud.pas',
  unitTestPgCms in '..\src\unitTestPgCms.pas',
  unitTestPgFootball in '..\src\unitTestPgFootball.pas',
  udmPgStorage in '..\..\src\januaunidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule};

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;
  FServerConf: TJanuaServerRecordConf;

  FStorage: IJanuaCloudFileStorage;
  FImageStorage: IJanuaCloudFileStorage;

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  // Crea i 'cloud' di appoggio alle procedure Cloud

  FServerConf.Port := 5432;
  FServerConf.DatabaseName := 'test';
  FServerConf.Password := '3rg0m3rc4t0r';
  FServerConf.Username := 'ergo';
  FServerConf.Address := 'local.januaservers.com';
  // FServerConf.Address := 'pg.januaservers.com';
  FServerConf.Schema := 'cms';
  FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  JanuaApplicationGlobalProfile.JanuaServerConf := FServerConf;
  // dmCmsLNDConf.JanuaConf1.JanuaServerConf.SetRecordConf(FServerConf);
  JanuaApplicationGlobalProfile.DBSchemaID := 32;
  JanuaApplicationGlobalProfile.DBUserID := 13;



  // Cloud Files Cache Initialization ..................................................
  FStorage := TJanuaPgCloudStorage.Create;
  TJanuaCloudFileCache.Initialize(FStorage);
  TJanuaCloudFileCache.SetupResources;
  // Cloud Images Cache Initialization ..................................................
  FImageStorage := TJanuaPgCloudStorage.Create;
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(FImageStorage);
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
  // ..............................................................................


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
      runner.UseRTTI := true;
      // tell the runner how we will log things
      // Log to the console window
      logger := TDUnitXConsoleLogger.Create(true);
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
