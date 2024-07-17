program RestRequestSamplesXE14;
uses
  Vcl.Forms,
  Janua.VCL.RestClient in '..\..\..\..\..\src\VCL\Cloud\Janua.VCL.RestClient.pas' {frmVCLRestClient};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLRestClient, frmVCLRestClient);
  Application.Run;
end.
