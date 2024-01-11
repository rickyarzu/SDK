program prjVCLSampleAnagraphDXE13;

uses
  Vcl.Forms,
  uSampleVCLFrmAnagraphMVVM in 'uSampleVCLFrmAnagraphMVVM.pas' {SampleVCLFrmAnagraphMVVM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TForm3, Form3);
  pplication.Run;
end.
