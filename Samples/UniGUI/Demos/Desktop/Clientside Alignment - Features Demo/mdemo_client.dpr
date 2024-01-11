{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module'

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  mdemo_client;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  ShowSource in 'ShowSource.pas' {SourceForm: TUniForm},
  chartdemo in 'units\chartdemo.pas' {UniChartDemo: TUniFrame},
  chartarea in 'units\chartarea.pas' {UniChartArea: TUniFrame},
  fishfactlayout in 'units\fishfactlayout.pas' {UniFishFactLayout: TUniFrame},
  maplayout in 'units\maplayout.pas' {UniMapLayout: TUniFrame},
  tablememo in 'units\tablememo.pas' {UniTableMemo: TUniFrame},
  umain in 'units\umain.pas' {FrameMain: TUniFrame};

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
