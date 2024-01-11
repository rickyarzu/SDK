program TestGoogleVCL;

uses
  Vcl.Forms,
  Janua.VCL.Cloud.frmGoogleServicesConf in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.frmGoogleServicesConf.pas' {frmGoogleCloudTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGoogleCloudTest, frmGoogleCloudTest);
  Application.Run;
end.
