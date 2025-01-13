program JanuaCalendarMulti;

uses
  Vcl.Forms,
  ufrmTmsPlannerMultiResource in 'ufrmTmsPlannerMultiResource.pas' {frmTmsDemosPlannerMultiResource};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmTmsDemosPlannerMultiResource, frmTmsDemosPlannerMultiResource);
  Application.Run;
end.
