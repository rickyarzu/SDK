program PadelMobileFrontEndService;

uses
  SvcMgr,
  Janua.Application.Framework,
  Janua.TMS.SMS,
  Janua.Sports.UniGUIApplication,
  Janua.UniGUI.ServerModule,
  Janua.UniGUI.MainModule,
  Janua.Sports.PgModel in '..\..\..\src\januaunidac\datamodules\Janua.Sports.PgModel.pas' {dmJanuaPgSportsModel: TDataModule},
  Janua.Sports.PgMatches in '..\..\..\src\januaunidac\datamodules\Janua.Sports.PgMatches.pas' {dmJanuaPgSportsMatches: TDataModule},
  Janua.Sports.UniGUIFormMatches in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormMatches.pas' {frmUniGUISportMatches: TUniForm},
  Janua.Sports.UniGUIframePadelMatch in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIframePadelMatch.pas' {frameUniGUPadelMatch: TUniFrame},
  Janua.Sports.UniGUIFormPadelMatch in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormPadelMatch.pas' {frmUniGUIPadelMatch: TUniForm},
  Janua.Sports.UniGUIFormPadelMatchesMobile in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormPadelMatchesMobile.pas' {frmUniGUIPadelMatchesFrontEnd: TUniForm},
  Janua.Sports.PadelWordpressService in '..\..\..\src\UniGUI\Sports\Janua.Sports.PadelWordpressService.pas' {UniGuiPadelBackEndServiceModule: TUniGUIService};

{$R *.res}

begin

  if not Application.DelayInitialize or Application.Installing then
    Application.Initialize;
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaSportsUniGUIApplication.ApplicationSetup('mobile.padelccnect.com');
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8083);
  // TUniServerModule.Create(Application);
  AApplication.CreateForm(TUniGuiPadelBackEndServiceModule, UniGuiPadelBackEndServiceModule);
  / Unigui Padel Wordpress Service
  UniGuiPadelServiceModule.DisplayName := TJanuaApplication.GetServiceDescription
    ('Padel Wordpress Mobile Service Module');
  UniGuiPadelServiceModule.Name := TJanuaApplication.GetServiceName('PadelWordpressMobileServiceModule');
  // UniGuiPadelServiceModule.ServiceStartName := 'Administrator';
  Application.Run;

end.
