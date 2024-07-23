{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FSMapm;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  uFrmMarcadoresSimples in 'frm\uFrmMarcadoresSimples.pas' {frmMarcadoresSimples: TUnimForm},
  ufrmPolygon in 'frm\ufrmPolygon.pas' {frmPolygon: TUnimForm},
  uFrmCurrentPosition in 'frm\uFrmCurrentPosition.pas' {frmCurrentPosition: TUnimForm},
  uFrmSearchBox in 'frm\uFrmSearchBox.pas' {frmSearchBox: TUnimForm},
  uFrmRoute in 'frm\uFrmRoute.pas' {frmRoute: TUnimForm};

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
