program RestRequestSamplesXE14;
uses
  Vcl.Forms,
  Janua.VCL.frameRestClient in '..\..\..\..\..\src\VCL\Cloud\Janua.VCL.frameRestClient.pas' {frameVCLJanuaRestClient};

{$R *.res}
begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TframeVCLJanuaRestClient, frameVCLJanuaRestClient);
  Application.Run;
end.
