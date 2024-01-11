program JanuaDevIDEUniGUI;

uses
  Forms,
  Janua.Application.Framework,
  Janua.UniGUI.ServerModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  Janua.UniGUI.MainModule in '..\..\..\src\UniGUI\Common\Janua.UniGUI.MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Janua.CarService.UniGUI.LoginForm in '..\..\..\src\UniGUI\CarService\Janua.CarService.UniGUI.LoginForm.pas' {frmCarServiceUniGUILogin: TUniLoginForm},
  Janua.Carservice.UniGUIApplication in '..\..\..\src\UniGUI\CarService\Janua.Carservice.UniGUIApplication.pas',
  Janua.UniGUI.BackofficeMainForm in '..\..\..\src\UniGUI\CarService\Janua.UniGUI.BackofficeMainForm.pas' {frmUniGUIMainBackoffice: TUniForm},
  Janua.REST.Client in '..\..\..\src\januacore\dmvc\Janua.REST.Client.pas';

{$R *.res}

begin
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  TJanuaApplication.TestMode := True; // Set this or unset this to enable Test Database connection
  TJanuaCarServiceUniGUIApplication.ApplicationSetup('app.carservice.com');
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
