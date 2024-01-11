library CarServiceApache;
uses
  {$IFDEF MSWINDOWS}
  Winapi.ActiveX,
  System.Win.ComObj,
  {$ENDIF }
  Janua.Application.Framework,
  Web.WebBroker,
  Web.ApacheApp,
  Web.HTTPD24Impl,
  uniGUIApache,
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.Carservice.UniGUI.UsersMainForm in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUI.UsersMainForm.pas' {frmUNIMainForm: TUniForm},
  Janua.CarService.UniGUI.dlgLoginRegister in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgLoginRegister.pas' {frmCarServiceUniGUILoginRegister: TUniLoginForm},
  Janua.Carservice.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.CarService.UniGUI.frameCarBooking in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBooking.pas' {frameCarServiceUniGUIBooking: TUniFrame},
  Janua.CarService.UniGUI.dlgBookingWizard in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.dlgBookingWizard.pas' {dlgUniGUIBookingWizard: TUniForm},
  Janua.CarService.UniGUI.frameCarBookingClient in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCarBookingClient.pas' {frameUniGuiCarBookingClient: TUniFrame},
  Janua.CarService.UniGUI.frameCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameCalendarSelect.pas' {frameUNICalendarSelect: TUniFrame};

{$R *.res}
// httpd.conf entries:
//
(*
 LoadModule webbroker_module modules/mod_webbroker.dll
 <Location /xyz>
    SetHandler mod_webbroker-handler
 </Location>
*)
//
// These entries assume that the output directory for this project is the apache/modules directory.
//
// httpd.conf entries should be different if the project is changed in these ways:
//   1. The TApacheModuleData variable name is changed.
//   2. The project is renamed.
//   3. The output directory is not the apache/modules directory.
//   4. The dynamic library extension depends on a platform. Use .dll on Windows and .so on Linux.
//
//    ?? che fine ha fatto? //??
// Declare exported variable so that Apache can access this module.
var
  GModuleData: TApacheModuleData;
exports
  GModuleData name 'carservicecustomer_module';
begin
{$IFDEF MSWINDOWS}
  CoInitFlags := COINIT_MULTITHREADED;
{$ENDIF}
  Web.ApacheApp.InitApplication(@GModuleData);
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  TJanuaApplication.AppName := ('app.carservice.com');
  Application.Initialize;
  TJanuaCarserviceUniGUIApplication.ApplicationSetup('app.carservice.com');
  Application.WebModuleClass := WebModuleClass;
  Application.Run;
end.
