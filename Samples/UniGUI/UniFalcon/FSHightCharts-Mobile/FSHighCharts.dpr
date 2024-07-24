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
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uFrmHCPie in 'frm\uFrmHCPie.pas' {frmHCPie: TUnimForm},
  uFrmHCBar in 'frm\uFrmHCBar.pas' {frmHCBar: TUnimForm},
  uFrmHCBar2 in 'frm\uFrmHCBar2.pas' {frmHCBar2: TUnimForm},
  uFrmHCLine in 'frm\uFrmHCLine.pas' {frmHCLine: TUnimForm};

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
