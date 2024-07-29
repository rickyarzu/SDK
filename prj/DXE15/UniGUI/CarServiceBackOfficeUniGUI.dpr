program CarServiceBackOfficeUniGUI;

uses
  Forms,
  Spring,
  Janua.TMS.SMS,
  Janua.Application.Framework,
  Janua.Carservice.PgBooking in '..\..\..\src\januaunidac\datamodules\Janua.Carservice.PgBooking.pas' {dmPgCarServiceBookingList: TDataModule},
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.CarService.UniGUI.LoginForm in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.LoginForm.pas' {frmCarServiceUniGUILogin: TUniLoginForm},
  Janua.Carservice.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.BackofficeMainFormSample in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.BackofficeMainFormSample.pas' {frmUniGUIMainBackofficeSample: TUniForm},
  Janua.UniGUI.BackofficeMainForm in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.BackofficeMainForm.pas' {frmUniGUICarServiceBackOfficeMain: TUniForm};

{$R *.res}

begin
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('backoffice.pikapp.it');
  // le applicazioni locali UniGUI hanno come nome applicativo e come home directory:
  // Parametro per la porta di Ascolto del server di UniGUI
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8083);
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sConfFile := TJanuacoreOS.ConfigFileName;
  // Verifico quale sia la location del Config File per aggiustarlo eventualmente
  var
  sServer := TJanuaApplication.ServerAddress;
  // se il server non è configurato va messo a posto il file

  Guard.CheckFalse(sConfFile = '', 'sConfFile not set');
  Guard.CheckFalse(sServer = '', 'sServer not set');
{$ENDIF}
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
