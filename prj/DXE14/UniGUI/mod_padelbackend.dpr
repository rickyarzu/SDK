library mod_padelbackend;

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
  Janua.Sports.UniGUIApplication,
  Janua.UniGUI.ServerModule,
  Janua.UniGUI.MainModule,
  Janua.Sports.PgModel in '..\..\..\src\januaunidac\datamodules\Janua.Sports.PgModel.pas' {dmJanuaPgSportsModel: TDataModule},
  Janua.Sports.PgMatches in '..\..\..\src\januaunidac\datamodules\Janua.Sports.PgMatches.pas' {dmJanuaPgSportsMatches: TDataModule},
  Janua.Sports.UniGUIFormMatches in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormMatches.pas' {frmUniGUISportMatches: TUniForm},
  Janua.Sports.UniGUIframePadelMatch in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIframePadelMatch.pas' {frameUniGUPadelMatch: TUniFrame},
  Janua.Sports.UniGUIFormPadelMatch in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormPadelMatch.pas' {frmUniGUIPadelMatch: TUniForm},
  Janua.Sports.UniGUIFormPadelMatchesMobile in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormPadelMatchesMobile.pas' {frmUniGUIPadelMatchesFrontEnd: TUniForm},
  Janua.Sports.Padel.UniGUI.LoginForm in '..\..\..\src\UniGUI\Sports\Janua.Sports.Padel.UniGUI.LoginForm.pas' {frmCarServiceUniGUILogin: TUniLoginForm};

{$R *.res}
// httpd.conf entries:
//
(*
  LoadModule padelbackend_module modules/mod_padelbackend.dll

  <Location /xyz>
  SetHandler mod_cscustomersmobile-handler
  </Location>
*)
//
// These entries assume that the output directory for this project is the apache/modules directory.
//
// httpd.conf entries should be different if the project is changed in these ways:
// 1. The TApacheModuleData variable name is changed.
// 2. The project is renamed.
// 3. The output directory is not the apache/modules directory.
// 4. The dynamic library extension depends on a platform. Use .dll on Windows and .so on Linux.
//

// Declare exported variable so that Apache can access this module.
var
  GModuleData: TApacheModuleData;

exports
  GModuleData name 'padelbackend_module';

begin
{$IFDEF MSWINDOWS}
  CoInitFlags := COINIT_MULTITHREADED;
{$ENDIF}
  Web.ApacheApp.InitApplication(@GModuleData, 'mod_padelbackend-handler');
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  TJanuaApplication.AppName := ('app.carservice.com');
  Application.Initialize;
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaSportsUniGUIApplication.ApplicationSetup('app.padelccnect.com');
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  TUniServerModule.Create(Application);
  Application.Run;

  (*

    {$IFDEF MSWINDOWS}
    CoInitFlags := COINIT_MULTITHREADED;
    {$ENDIF}
    Web.ApacheApp.InitApplication(@GModuleData);
    // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
    TJanuaApplication.AppName := ('app.carservice.com');
    Application.Initialize;
    TJanuaUniGUIApplication.ApplicationSetup;
    Application.WebModuleClass := WebModuleClass;
    Application.Run;
  *)
end.
