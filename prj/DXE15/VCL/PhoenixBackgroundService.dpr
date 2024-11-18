program PhoenixBackgroundService;

uses
  Vcl.SvcMgr,
  Janua.Phoenix.VCL.BackgroundService in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundService.pas' {srvPhoenixVCLBackgroundService: TService},
  Janua.Phoenix.VCL.BackgroundThread in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundThread.pas',
  Janua.FDAC.Phoenix.Lab in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Lab.pas' {dmFDACPhoenixLab: TDataModule},
  Janua.FDAC.Phoenix.Model in '..\..\..\src\FireDAC\Janua.FDAC.Phoenix.Model.pas' {dmFDACPhoenixModel: TDataModule},
  uPhoenixBackgroundServiceConf in 'uPhoenixBackgroundServiceConf.pas',
  udmPgStorage in '..\..\..\src\januaunidac\datamodules\udmPgStorage.pas' {dmPgStorage: TDataModule},
  Janua.Phoenix.PgTwilioSync in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.PgTwilioSync.pas' {dmPgStorage1: TDataModule};

{$R *.RES}

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
  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  TPhoenixBackgroundServiceApp.ApplicationSetup('service.assoantincendio.com');
  Application.CreateForm(TsrvPhoenixVCLBackgroundService, srvPhoenixVCLBackgroundService);
  Application.CreateForm(TdmPgStorage, dmPgStorage);
  Application.CreateForm(TdmPgStorage1, dmPgStorage1);
  Application.Run;
end.
