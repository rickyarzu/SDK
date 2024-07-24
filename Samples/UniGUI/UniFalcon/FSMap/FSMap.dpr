{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  FSMap;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  uFrmMarcadoresSimples in 'frm\uFrmMarcadoresSimples.pas' {frmMarcadoresSimples: TUniFrame},
  uFrmInfoWindow in 'frm\uFrmInfoWindow.pas' {frmInfoWindow: TUniFrame},
  uFrmDebug in 'frm\uFrmDebug.pas' {frmDebug: TUniForm},
  uFrmGeoJSON in 'frm\uFrmGeoJSON.pas' {frmGeoJSON: TUniFrame},
  uFrmPolygon in 'frm\uFrmPolygon.pas' {frmPolygon: TUniFrame},
  uFrmPolyline in 'frm\uFrmPolyline.pas' {frmPolyline: TUniFrame},
  uFrmSearch in 'frm\uFrmSearch.pas' {frmSearch: TUniFrame},
  uFrmDrawing in 'frm\uFrmDrawing.pas' {frmDrawing: TUniFrame},
  uFrmPolygonDesenharObter in 'frm\uFrmPolygonDesenharObter.pas' {frmPolygonDesenharObter: TUniFrame},
  uFrmGeocode in 'frm\uFrmGeocode.pas' {frmGeocode: TUniFrame},
  uFrmGetPosition in 'frm\uFrmGetPosition.pas' {frmGetPosition: TUniFrame},
  uDmImagens in 'dm\uDmImagens.pas' {dmImagens: TDataModule},
  uFrmMarcadoresComplexos in 'frm\uFrmMarcadoresComplexos.pas' {frmMarcadoresComplexos: TUniFrame},
  uFrmMarcadores in 'frm\uFrmMarcadores.pas' {frmMarcadores: TUniFrame},
  uFrmSearchBox in 'frm\uFrmSearchBox.pas' {frmSearchBox: TUniFrame},
  uFrmGetRoutes in 'frm\uFrmGetRoutes.pas' {frmGetRoutes: TUniFrame},
  uFrmMultiRoutes in 'frm\uFrmMultiRoutes.pas' {frmMultiRoutes: TUniFrame},
  uFrmRoutes in 'frm\uFrmRoutes.pas' {frmRoutes: TUniFrame},
  uFrmHeatMap in 'frm\uFrmHeatMap.pas' {frmHeatMap: TUniFrame},
  uFrmKrigingMap in 'frm\uFrmKrigingMap.pas' {frmKrigingMap: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
  ReportMemoryLeaksOnShutdown := True;
{$ifdef UNIGUI_VCL}
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
