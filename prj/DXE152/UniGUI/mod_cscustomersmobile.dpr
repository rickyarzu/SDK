library mod_cscustomersmobile;

uses
  {$IFDEF MSWINDOWS}
  Winapi.ActiveX,
  System.Win.ComObj,
  {$ENDIF }
  Web.WebBroker,
  Web.ApacheApp,
  Web.HTTPD24Impl,
  uniGUIApache,
  Janua.Application.Framework,
  Janua.UniGUI.Interposers,
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.CarService.UniGUI.frameTimeCalendarSelect in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.frameTimeCalendarSelect.pas' {frameTimeCalendarSelect: TUniFrame},
  Janua.Carservice.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.Carservice.PgCustomers in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgCustomers.pas' {dmPgCarServiceCustomers: TDataModule},
  Janua.UniGUI.mainFormCustConfirmation in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.mainFormCustConfirmation.pas' {MainCustConfForm: TUniForm};

{$R *.res}

// httpd.conf entries:
//
(*
 LoadModule webbroker_module modules/mod_webbroker.dll

 <Location /xyz>
    SetHandler mod_cscustomersmobile-handler
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

// Declare exported variable so that Apache can access this module.
var
  GModuleData: TApacheModuleData;
exports
  GModuleData name 'cscustomersmobile_module';

begin
{$IFDEF MSWINDOWS}
  CoInitFlags := COINIT_MULTITHREADED;
{$ENDIF}
  Web.ApacheApp.InitApplication(@GModuleData, 'mod_cscustomersmobile-handler');
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  {TJanuaApplication.TestMode := True; // If testing uncomment this}
  Application.Initialize;
  TJanuaUniGUIApplication.ApplicationSetup('app.carservice.com');
  Application.WebModuleClass := WebModuleClass;
  Application.CreateForm(TdmPgCarServiceCustomers, dmPgCarServiceCustomers);
  Application.Run;

end.
