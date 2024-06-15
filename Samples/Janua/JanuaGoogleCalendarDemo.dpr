program JanuaGoogleCalendarDemo;

uses
  VCL.Forms,
  Janua.Application.Framework,
  ufrmTMSAdvCalendarDemo in 'Cloud\ufrmTMSAdvCalendarDemo.pas' {frmTMSAdvCalendarDemo},
  Janua.TMSVCLDemos.VCLApplication in 'Janua.TMSVCLDemos.VCLApplication.pas';

{$R *.res}

begin
  TJanuaTmsDemosVCLApplication.ApplicationSetup('demo.tmssoftware.com');
  TJanuaApplication.StyleManager.Activate;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTMSAdvCalendarDemo, frmTMSAdvCalendarDemo);
  Application.Run;
end.
