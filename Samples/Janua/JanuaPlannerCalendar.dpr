program JanuaPlannerCalendar;

uses
  Forms,
  ufrmTMSPlannerCalendar in 'TMS\ufrmTMSPlannerCalendar.pas' {frmTMSDemosPlannerCalendar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTMSDemosPlannerCalendar, frmTMSDemosPlannerCalendar);
  Application.Run;
end.
