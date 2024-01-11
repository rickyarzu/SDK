program MobytVCLSample;

uses
  Vcl.Forms,
  ufrmVCLMobyt in 'ufrmVCLMobyt.pas' {frmVCLMobyt},
  Janua.REST.Mobyt in '..\..\..\src\januacore\Janua.REST.Mobyt.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLMobyt, frmVCLMobyt);
  Application.Run;
end.
