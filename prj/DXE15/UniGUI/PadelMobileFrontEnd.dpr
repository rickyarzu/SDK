program PadelMobileFrontEnd;

uses
  Forms,
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
  Janua.Sports.UniGUIFormPadelMatchesMobile in '..\..\..\src\UniGUI\Sports\Janua.Sports.UniGUIFormPadelMatchesMobile.pas' {frmUniGUIPadelMatchesFrontEnd: TUniForm};

{$R *.res}

begin
  // precedo di un Attimo l'Application Setup a livello di App per 'attivare' il file Conf.
  TJanuaApplication.TestMode := False; // Set this or unset this to enable Test Database connection
  TJanuaApplication.AppName := 'mobile.padelccnect.com';
  TJanuaSportsUniGUIApplication.ApplicationSetup('mobile.padelccnect.com');
  TJanuacoreOS.WriteParam('UniGUI', 'Port', 8083);
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;

end.
