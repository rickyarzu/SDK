program VCL_JanuaprojectSparkle_Server;
uses
  Vcl.Forms,
  JanuaprojectSparkle in 'JanuaprojectSparkle.pas',
  frmJanuaprojectSparkleMain in 'frmJanuaprojectSparkleMain.pas' {fmServer};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TfmServer, fmServer);
  pplication.Run;
end.
