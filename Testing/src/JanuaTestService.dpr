program JanuaTestService;

uses
  Vcl.SvcMgr,
  System.SysUtils,
  System.Classes,
  Janua.Core.Classes,
  Janua.Core.Types,
  Janua.Cloud.Files.Intf,
  Janua.Postgres.Cloud,
  Janua.Cloud.Files.Cache,
  Janua.Cloud.Images.Cache,
  uServiceTesting in 'uServiceTesting.pas' {frmServiceTesting: TService},
  uWebModulePostgresTest in 'uWebModulePostgresTest.pas' {WebModule1: TWebModule};

{$R *.RES}

var
  FServerConf: TJanuaServerRecordConf;

  FStorage: IJanuaCloudFileStorage;
  FImageStorage: IJanuaCloudFileStorage;

begin
  // Windows 2003 Server requires StartServiceCtrlDispatcher to be
  // called before CoRegisterClassObject, which can be called indirectly
  // by Application.Initialize. TServiceApplication.DelayInitialize allows
  // Application.Initialize to be called from TService.Main (after
  // StartServiceCtrlDispatcher has been called).
  //
  // Delayed initialization of the Application object may affect
  // events which then occur prior to initialization, such as
  // TService.OnCreate. It is only recommended if the ServiceApplication
  // registers a class object with OLE and is intended for use with
  // Windows 2003 Server.
  //
  // Application.DelayInitialize := True;
  //
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

  JanuaApplicationGlobalProfile.RestServer := 'http://localhost:8099';
  JanuaApplicationGlobalProfile.WebServer := 'http://localhost:8099';
  JanuaApplicationGlobalProfile.ListenPort := 8099;

  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  Application.CreateForm(TfrmServiceTesting, frmServiceTesting);
  Application.Run;
end.
