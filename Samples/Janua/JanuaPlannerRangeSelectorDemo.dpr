program JanuaPlannerRangeSelectorDemo;

uses
  Forms,
  ufrmTMSPlannerRangeSelector in 'TMS\ufrmTMSPlannerRangeSelector.pas' {Form92};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm92, Form92);
  Application.Run;
end.
