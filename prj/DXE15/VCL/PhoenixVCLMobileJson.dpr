program PhoenixVCLMobileJson;

uses
  Vcl.Forms,
  Phoenix.Json.Statini in '..\..\..\src\januacore\Phoenix.Json.Statini.pas',
  Janua.Phoenix.VCL.JsonAnalyzer in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.JsonAnalyzer.pas' {frmPhoenixVCLJsonAnalyzer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPhoenixVCLJsonAnalyzer, frmPhoenixVCLJsonAnalyzer);
  Application.Run;
end.
