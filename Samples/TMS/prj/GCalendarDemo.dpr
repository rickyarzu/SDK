program GCalendarDemo;

uses
  Forms,
  Janua.Application.Framework,
  ufrmTMSAdvCalendarDemo in '..\src\ufrmTMSAdvCalendarDemo.pas' {frmTMSAdvCalendarDemo},
  Janua.TMSDemos.VCLApplication in 'Janua.TMSDemos.VCLApplication.pas';

{$R *.res}

begin
  TJanuaApplication.AppName := ('demo.tmssoftware.com');
  TJanuaTmsDemosVCLApplication.ApplicationSetup('demo.tmssoftware.com');
  TJanuaApplication.StyleManager.Activate;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTMSAdvCalendarDemo, frmTMSAdvCalendarDemo);
  Application.Run;
end.
