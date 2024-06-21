program JanuaTmsDBPlannerRecurrencyDemo;

uses
  VCL.Forms,
  uTmsDBPlannerRecurrencyDemo in 'TMS\uTmsDBPlannerRecurrencyDemo.pas' {frmTMSDemosDBPlannerRecurrencyDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTMSDemosDBPlannerRecurrencyDemo, frmTMSDemosDBPlannerRecurrencyDemo);
  Application.Run;
end.
