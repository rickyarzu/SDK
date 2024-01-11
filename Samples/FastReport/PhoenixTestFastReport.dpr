program PhoenixTestFastReport;

uses
  Vcl.Forms,
  ufrmPhoenixTestReportWin in 'ufrmPhoenixTestReportWin.pas' {frmPhoenixVCLTestReport};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPhoenixVCLTestReport, frmPhoenixVCLTestReport);
  Application.Run;
end.
