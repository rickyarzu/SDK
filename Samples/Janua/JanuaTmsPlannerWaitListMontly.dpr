program JanuaTmsPlannerWaitListMontly;

uses
  Forms,
  ufrmTmsPlannerWaitListMontly in 'TMS\ufrmTmsPlannerWaitListMontly.pas' {frmTmsDemosPlannerWaitListMontly};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTmsDemosPlannerWaitListMontly, frmTmsDemosPlannerWaitListMontly);
  Application.Run;
end.
