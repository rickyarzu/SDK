program CarServiceWebBrokerCustConfService;

uses
  Vcl.SvcMgr,
  Janua.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.WebBroker.UniDACApplication.pas',
  Janua.Carservice.WebBroker.UniDACApplication in '..\..\..\src\januacore\Datasnap\Janua.Carservice.WebBroker.UniDACApplication.pas',
  Janua.CarService.CustConfWebBrokerService in '..\..\..\src\januacore\Datasnap\Janua.CarService.CustConfWebBrokerService.pas' {Service3: TService};

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
  Application.CreateForm(TService3, Service3);
  Application.Run;
end.
