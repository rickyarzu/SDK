program CarServiceDMVCService;

uses
  Vcl.SvcMgr,
  System.SysUtils,
  MVCFramework,
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.Signal,
  Spring,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.Carservice.DMVC.JsonRPC in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.JsonRPC.pas',
  Janua.DMVC.WebBroker.WebModule in '..\..\..\src\januacore\dmvc\Janua.DMVC.WebBroker.WebModule.pas' {JanuaDMVCCustomWebModule: TWebModule},
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.System.Session.DMVC.Controller in '..\..\..\src\januacore\dmvc\Janua.System.Session.DMVC.Controller.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.Carservice.DMVC.Application in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.Application.pas',
  Janua.DMVC.UniDacApplication in '..\..\..\src\januacore\dmvc\Janua.DMVC.UniDacApplication.pas',
  Janua.CarService.Driver.in;

uses
  Vcl.SvcMgr,
  System.SysUtils,
  MVCFramework,
  MVCFramework.Logger,
  MVCFramework.Commons,
  MVCFramework.Signal,
  Spring,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.Carservice.DMVC.JsonRPC in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.JsonRPC.pas',
  Janua.DMVC.WebBroker.WebModule in '..\..\..\src\januacore\dmvc\Janua.DMVC.WebBroker.WebModule.pas' {JanuaDMVCCustomWebModule: TWebModule},
  Janua.System.DMVC.AuthCriteria in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.AuthCriteria.pas',
  Janua.System.DMVC.Session.Controller in '..\..\..\src\januacore\dmvc\Janua.System.DMVC.Session.Controller.pas',
  Janua.DMVC.Test.PrivateController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PrivateController.pas',
  Janua.DMVC.Test.PublicController in '..\..\..\src\januacore\dmvc\Test\Janua.DMVC.Test.PublicController.pas',
  Janua.Carservice.DMVC.Application in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.Application.pas',
  Janua.DMVC.UniDacApplication in '..\..\..\src\januacore\dmvc\Janua.DMVC.UniDacApplication.pas',
  Janua.CarService.Driver. in '..\..\..\src\januacore\dmvc\Janua.CarService.Driver..pas',
  Janua.DMVC.Controller.Template in '..\..\..\src\januacore\dmvc\Janua.DMVC.Controller.Template.pas',
  Carservice.DMVC.WindowsService in '..\..\..\src\januacore\dmvc\Carservice.DMVC.WindowsService.pas' {PickappAPIService: TService},
  Janua.Carservice.DMVC.CustomerConfWebModule in '..\..\..\src\januacore\dmvc\Janua.Carservice.DMVC.CustomerConfWebModule.pas' {CarServiceCustConfWebModule: TWebModule};

{$R *.RES}

begin
  (*
    Januaproject Installer (maybe Multihreaded is not so useful but here it is)
    Test Mode is false (service Runs not in Test mode)
    Every Service is linked to its port based on the Catalogue
  *)
  IsMultiThread := True;
  // Januaproject Settings
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaApplication.RestServerConf.Port := 9010; // port of the service listener can be overwrittn by file conf
  // le applicazioni locali Home is (usually januaproject\home\<app name> on Windows):
  TJanuaCarserviceDMVCServerApplication.ApplicationSetup('api.carservice.com');
  // DMVCFramework Specific Configuration
  // When MVCSerializeNulls = True empty nullables and nil are serialized as json null.
  // When MVCSerializeNulls = False empty nullables and nil are not serialized at all.
  MVCSerializeNulls := True;
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
  Application.CreateForm(TPickappApiService, PickappApiService);
  Application.Run;

end.
