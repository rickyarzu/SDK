program prjVCLSampleAnagraph;

uses
  Vcl.Forms,
  uSampleVCLFrmAnagraphMVVM in 'uSampleVCLFrmAnagraphMVVM.pas' {SampleVCLFrmAnagraphMVVM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSampleVCLFrmAnagraphMVVM, SampleVCLFrmAnagraphMVVM);
  Application.Run;
end.
