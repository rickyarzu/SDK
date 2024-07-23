{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FSHighCharts;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uFrmHCColumnWithNegative in 'frm\uFrmHCColumnWithNegative.pas' {frmHCColumnWithNegative: TUniFrame},
  uFrmHCPieChart in 'frm\uFrmHCPieChart.pas' {frmHCPieChart: TUniFrame},
  uFrmHCLineChart in 'frm\uFrmHCLineChart.pas' {frmHCLineChart: TUniFrame},
  uFrmHCAreaChart in 'frm\uFrmHCAreaChart.pas' {frmHCAreaChart: TUniFrame},
  uFrmHCBarChartCustom in 'frm\uFrmHCBarChartCustom.pas' {frmHCBarChartCustom: TUniFrame},
  uFrmHCBubbleChart in 'frm\uFrmHCBubbleChart.pas' {frmHCBubbleChart: TUniFrame},
  uFrmHCBarChart in 'frm\uFrmHCBarChart.pas' {frmHCBarChart: TUniFrame},
  uFrmHCFunnelChart in 'frm\uFrmHCFunnelChart.pas' {FrmHCFunnelChart: TUniFrame},
  uFrmHCCombineCharts in 'frm\uFrmHCCombineCharts.pas' {frmHCCombineCharts: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
