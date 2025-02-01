program JanuaVCLTestCloudFlare;

uses
  Vcl.Forms,
  Janua.VCL.Demos.CloudFlare.Files in 'VCL\Janua.VCL.Demos.CloudFlare.Files.pas' {frmVCLDemoCloudflareFiels};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLDemoCloudflareFiels, frmVCLDemoCloudflareFiels);
  Application.Run;
end.
