program TeestOracleConnection;

uses
  Vcl.Forms,
  Janua.VCL.frmTestOracle in '..\..\..\src\VCL\Oracle\Janua.VCL.frmTestOracle.pas' {frmVCLTestOracle};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Test Oracle Connection';
  Application.CreateForm(TfrmVCLTestOracle, frmVCLTestOracle);
  Application.Run;
end.
