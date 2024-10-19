program JanuaRestDMVCTestIDEXE15;

uses
  Vcl.Forms,
  ufrmJanuaVCLTestRestDMVCIDE in '..\..\..\src\ufrmJanuaVCLTestRestDMVCIDE.dpr' {frmJanuaVCLTestRestDMVCID};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmJanuaVCLTestRestDMVCID, frmJanuaVCLTestRestDMVCID);
  Application.Run;
end.
