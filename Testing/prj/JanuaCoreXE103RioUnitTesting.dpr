program JanuaCoreXE103RioUnitTesting;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}{$STRONGLINKTYPES ON}

uses
  System.SysUtils,
  System.Classes,
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
{$ENDIF }
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  DUnitX.TestFramework,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Cloud.Files.Intf,
  Janua.Virtual.Cloud,
  Janua.Cloud.Files.Cache,
  Janua.Cloud.Images.Cache,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  unitTestCoreTypes in '..\src\unitTestCoreTypes.pas',
  udmTestFunctionsDataset in '..\src\udmTestFunctionsDataset.pas' {dmTestFunctionsDataset: TDataModule} ,
  unitTestMapsTypes in '..\src\unitTestMapsTypes.pas',
  unitTestCoreClasses in '..\src\unitTestCoreClasses.pas',
  unitTestOrm in '..\src\unitTestOrm.pas',
  Janua.Orm.Test.Intf in '..\src\Janua.Orm.Test.Intf.pas',
  Janua.Orm.Test.Impl in '..\src\Janua.Orm.Test.Impl.pas',
  unitTestConf in '..\src\unitTestConf.pas',
  unitTestHtmlMetro5 in '..\src\unitTestHtmlMetro5.pas',
  unitTestMetro5 in '..\src\unitTestMetro5.pas',
  Janua.Cloud.Images.Impl in '..\..\src\januacore\Janua.Cloud.Images.Impl.pas',
  Janua.Cloud.Images.Intf in '..\..\src\januacore\Janua.Cloud.Images.Intf.pas',
  Janua.Cloud.Files.Impl in '..\..\src\januacore\Janua.Cloud.Files.Impl.pas',
  uWebModuleCoreTest in '..\src\uWebModuleCoreTest.pas' {WebModule1: TWebModule} ,
  unitTestCoreHtml in '..\src\unitTestCoreHtml.pas',
  uWebBrokerTest in '..\src\uWebBrokerTest.pas' {Critico} ,
  Janua.Test.Football in '..\..\src\januacore\Test\Janua.Test.Football.pas',
  unitTestFootball in '..\src\unitTestFootball.pas',
  udmVirtualFootballServer
    in '..\..\src\januacore\datamodule\udmVirtualFootballServer.pas' {dmVirtualFootballServer: TDataModule} ,
  unitTestDilettantissimo in '..\src\unitTestDilettantissimo.pas',
  unitTestCms in '..\src\unitTestCms.pas',
  udmVirtualCmsServer
    in '..\..\src\januacore\datamodule\udmVirtualCmsServer.pas' {dmVirtualCmsServer: TDataModule} ,
  ServerMethodsCoreTest in '..\src\ServerMethodsCoreTest.pas',
  unitTestLND in '..\src\unitTestLND.pas',
  unitTestLNDFactory in '..\src\unitTestLNDFactory.pas',
  unitTestCoreFunctions in '..\src\unitTestCoreFunctions.pas',
  unitTestSystem in '..\src\unitTestSystem.pas',
  ufrmTest in '..\src\ufrmTest.pas' {Form6} ,
  Janua.Legacy.Classes in '..\..\src\januacore\Janua.Legacy.Classes.pas';

var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger: ITestLogger;

  FStorage: IJanuaCloudFileStorage;
  FImageStorage: IJanuaCloudFileStorage;

begin

  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  // Crea i 'cloud' di appoggio alle procedure Cloud

  // Cloud Files Cache Initialization ..................................................
  FStorage := TJanuaVirtualCloudStorage.Create;
  TJanuaCloudFileCache.Initialize(FStorage);
  TJanuaCloudFileCache.SetupResources;
  // Cloud Images Cache Initialization ..................................................
  FImageStorage := TJanuaVirtualCloudStorage.Create;
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
