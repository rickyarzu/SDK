{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FSGoogleChart;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uFrmGeoChart in 'frm\uFrmGeoChart.pas' {frmGeoChart: TUniFrame},
  uFrmPieChart in 'frm\uFrmPieChart.pas' {frmPieChart: TUniFrame},
  uFrmGauge in 'frm\uFrmGauge.pas' {frmGauge: TUniFrame},
  uFrmLineChart in 'frm\uFrmLineChart.pas' {frmLineChart: TUniFrame},
  uFrmAreaChart in 'frm\uFrmAreaChart.pas' {frmAreaChart: TUniFrame},
  uFrmBarChart in 'frm\uFrmBarChart.pas' {frmBarChart: TUniFrame},
  uFrmBubbleChart in 'frm\uFrmBubbleChart.pas' {frmBubbleChart: TUniFrame},
  uFrmLineChartValuesCurrency in 'frm\uFrmLineChartValuesCurrency.pas' {frmLineChartValuesCurrency: TUniFrame};

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
