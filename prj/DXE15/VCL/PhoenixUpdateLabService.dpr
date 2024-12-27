program PhoenixUpdateLabService;

uses
  Vcl.SvcMgr,
  Janua.Phoenix.VCL.LabBackgroundService in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.LabBackgroundService.pas' {srvPhoenixVCLLabBackgroundService: TService},
  Janua.Phoenix.VCL.LabBackgroundThread in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.LabBackgroundThread.pas',
  Janua.Phoenix.dmIBLabSync in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBLabSync.pas' {dmPhoenixIBLab: TDataModule},
  Janua.Phoenix.dmIBModel in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBModel.pas' {dmPhoenixIBModel: TDataModule},
  uPhoenixBackgroundServiceConf in 'uPhoenixBackgroundServiceConf.pas',
  Globale in '..\..\..\..\Phoenix\Phoenix\SW\PhoenixMain\Globale.pas';

{$R *.RES}

begin
  // D:\GitHub\SDK\src\januaunidac\datamodules
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
  DIRECTORY_APPLICATION_DATA := 'C:\Phoenix\Config';
  SystemInformation.LoadIni;
  Application.CreateForm(TsrvPhoenixVCLLabBackgroundService, srvPhoenixVCLLabBackgroundService);
  Application.Run;

end.
