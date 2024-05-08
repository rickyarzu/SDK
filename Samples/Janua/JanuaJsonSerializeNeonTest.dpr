program JanuaJsonSerializeNeonTest;

uses
  Vcl.Forms,
  ufrmNeonTest in 'ufrmNeonTest.pas' {frmVCLJanuaNeonTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLJanuaNeonTest, frmVCLJanuaNeonTest);
  Application.Run;
end.
