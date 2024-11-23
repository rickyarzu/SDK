program GeneraliVisualCall;

uses
  Vcl.Forms,
  ufrmVCLGeneraliVisualCall in '..\..\..\src\VCL\Generali\ufrmVCLGeneraliVisualCall.pas' {frmVCLGeneraliVisualCall},
  Janua.Oracle.dmVisualCall in '..\..\..\src\januaoracle\datamodules\Janua.Oracle.dmVisualCall.pas' {dmOracleVisualCall: TDataModule},
  udlgGeneraliVisualCallScript in '..\..\..\src\VCL\Generali\udlgGeneraliVisualCallScript.pas' {dlgGeneraliVisualCallScript};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmVCLGeneraliVisualCall, frmVCLGeneraliVisualCall);
  Application.CreateForm(TdmOracleVisualCall, dmOracleVisualCall);
  Application.Run;
end.
