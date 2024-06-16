program JanuaTmPlannerMultiResource;

uses
  Forms,
  ufrmTmsPlannerMultiResource in 'TMS\ufrmTmsPlannerMultiResource.pas' {frmTmsDemosPlannerMultiResource};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmTmsDemosPlannerMultiResource, frmTmsDemosPlannerMultiResource);
  Application.Run;
end.
