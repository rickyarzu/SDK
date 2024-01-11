unit uPgApplicationSetup;

interface

uses Janua.Application.Framework, Janua.Postgres.Cloud, Janua.Core.Types, Janua.Cloud.Files.Intf,
  Janua.Postgres.Impl;

var
  FServerConf: TJanuaServerRecordConf;

  FStorage: IJanuaCloudFileStorage;
  FImageStorage: IJanuaCloudFileStorage;

  FMemStorage: IJanuaCloudFileStorage;
  FMemImageStorage: IJanuaCloudFileStorage;

procedure PgApplicationSetup;

implementation

uses System.SysUtils, IdHTTPWebBrokerBridge, uWebModulePostgresTest,  Janua.Cloud.Files.Cache,
  Web.WebReq, uWebBrokerTest,  System.Classes, Janua.Cloud.Images.Cache;

procedure PgApplicationSetup;
begin
  FServerConf.Port := 5432;
  FServerConf.DatabaseName := 'test';
  FServerConf.Password := '3rg0m3rc4t0r';
  FServerConf.Username := 'ergo';
  FServerConf.Address := 'local.januaservers.com';
  // FServerConf.Address := 'pg.januaservers.com';
  FServerConf.Schema := 'public';
  FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;

  if not DirectoryExists('C:\Januaproject\Test') then
    CreateDir('C:\Januaproject\Test');

  if not DirectoryExists('C:\Januaproject\Test\Logs') then
    CreateDir('C:\Januaproject\Test\Logs');

  if not DirectoryExists('C:\Januaproject\Test\temp') then
    CreateDir('C:\Januaproject\Test\temp');

  TJanuaApplication.JanuaServerConf := FServerConf;
  // dmCmsLNDConf.JanuaConf1.JanuaServerConf.SetRecordConf(FServerConf);
  TJanuaApplication.DBSchemaID := 32;
  TJanuaApplication.DBUserID := 13;
  TJanuaApplication.ListenPort := 8099;
  TJanuaApplication.RestServer := 'http://localhost:' + TJanuaApplication.ListenPort.ToString;
  TJanuaApplication.WebServer := 'http://localhost:' + TJanuaApplication.ListenPort.ToString;
  TJanuaApplication.LogFileRoot := FormatDateTime('yyymmddnn', Now());
  TJanuaApplication.LogFileDir := 'C:\Januaproject\Test\Logs';

  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  // Crea i 'cloud' di appoggio alle procedure Cloud

  // Cloud Files Cache Initialization ..................................................
  FStorage := TJanuaPgCloudStorage.Create;
  TJanuaCloudFileCache.Initialize(FStorage);
  TJanuaCloudFileCache.SetupResources;

  // Cloud Images Cache Initialization ..................................................
  FImageStorage := TJanuaPgCloudStorage.Create;
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.Initialize(FImageStorage);
  Janua.Cloud.Images.Cache.TJanuaCloudImagesCache.SetupResources;
  // ..............................................................................

  // infine avvio il web Server
  uWebBrokerTest.Setup;

end;

end.
