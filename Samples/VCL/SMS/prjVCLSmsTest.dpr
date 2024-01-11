program prjVCLSmsTest;

uses
  Vcl.Forms,
  ufrmVCLSMSTest in 'ufrmVCLSMSTest.pas' {Form2},
  Janua.VCL.Cloud.TMS in '..\..\..\src\VCL\Cloud\Janua.VCL.Cloud.TMS.pas' {JanuaVCLCloudSMS: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TJanuaVCLCloudSMS, JanuaVCLCloudSMS);
  Application.Run;
end.
