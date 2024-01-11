program LNDWebBrokerRESTService;

uses
  Vcl.SvcMgr,
  uLNDService in '..\..\..\..\Projects\WebBroker\prj\LND\uLNDService.pas' {ServiceLND: TService},
  LNDWebModuleFactory in '..\..\..\..\Projects\WebBroker\prj\LND\LNDWebModuleFactory.pas' {WebModuleFactory: TWebModule},
  uDMLndSession in '..\..\..\..\Projects\WebBroker\prj\LND\uDMLndSession.pas' {dmLndSession: TDataModule},
  LNDConf in '..\..\..\..\Projects\Common\LNDConf.pas';

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

  // Application.DelayInitialize := True;

  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  Application.CreateForm(TServiceLND, ServiceLND);
  Application.Run;

end.
