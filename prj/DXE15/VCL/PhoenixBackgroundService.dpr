program PhoenixBackgroundService;

uses
  Vcl.SvcMgr,
  Janua.Phoenix.VCL.BackgroundService in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.BackgroundService.pas' {srvPhoenixVCLBackgroundService: TService},
  Janua.Phoenix.VCL.TWilioBackgroundThread in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.TWilioBackgroundThread.pas',
  uPhoenixBackgroundServiceConf in 'uPhoenixBackgroundServiceConf.pas',
  udmFbStorage in '..\..\..\src\januaunidac\datamodules\udmFbStorage.pas' {dmFbStorage: TDataModule},
  Phoenix.Twiliio.dmFbWhatsApp in '..\..\..\src\januaunidac\datamodules\Phoenix.Twiliio.dmFbWhatsApp.pas' {dmFbTwilioWhatsApp: TDataModule};

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
  Application.Run;
end.
