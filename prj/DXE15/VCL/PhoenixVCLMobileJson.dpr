program PhoenixVCLMobileJson;

uses
  Vcl.Forms,
  Phoenix.Json.Statini in '..\..\..\src\januacore\Phoenix.Json.Statini.pas',
  Janua.Phoenix.VCL.frmJsonAnalyzer in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.frmJsonAnalyzer.pas' {frmPhoenixVCLJsonAnalyzer},
  Z.Json.Statini.Legacy in '..\..\..\src\januacore\Z.Json.Statini.Legacy.pas',
  Janua.Phoenix.FbJsonReport in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.FbJsonReport.pas' {dmFbPhoenixJsonReport: TDataModule},
  Janua.Phoenix.dmIBModel in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBModel.pas' {dmPhoenixIBModel: TDataModule},
  Janua.Phoenix.dmIBReportPlanner in '..\..\..\src\januaunidac\datamodules\Janua.Phoenix.dmIBReportPlanner.pas' {dmPhoenixIBPlanner: TDataModule},
  Janua.Phoenix.Globale in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.Globale.pas',
  Janua.Phoenix.VCL.rpStatino in '..\..\..\src\VCL\Phoenix\Janua.Phoenix.VCL.rpStatino.pas' {frmRpStatino},
  QrStampaStatino in '..\..\..\..\Phoenix\Phoenix\SW\PhoenixMain\QrStampaStatino.pas' {QR_STAMPA_STATINO: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPhoenixVCLJsonAnalyzer, frmPhoenixVCLJsonAnalyzer);
  Application.Run;
end.

