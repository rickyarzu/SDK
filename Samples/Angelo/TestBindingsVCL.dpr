program TestBindingsVCL;

uses
  Vcl.Forms,
  ufrmVCLTestBindings in 'ufrmVCLTestBindings.pas' {frmVCLTestBindings},
  uBindingEngine in 'uBindingEngine.pas',
  uBindingEngineRTL in 'uBindingEngineRTL.pas',
  uVCLBindingInterposers in 'uVCLBindingInterposers.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  uBindingEngine.TBindApplication.BindEngineClass := uBindingEngineRTL.BindingEngineRTL;
  uBindingEngine.TBindApplication.BindRecordClass := uBindingEngineRTL.BindRecordRTL;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLTestBindings, frmVCLTestBindings);
  Application.Run;
end.
