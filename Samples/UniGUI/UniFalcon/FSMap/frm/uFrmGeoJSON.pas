unit uFrmGeoJSON;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniHTMLFrame, UniFSMap, uniSplitter,
  uniLabel, uniMemo, uniGUIBaseClasses, uniPanel, uniButton,
  uniBitBtn, UniFSButton;

type
  TfrmGeoJSON = class(TUniFrame)
    pnl1: TUniPanel;
    memLog: TUniMemo;
    lbl1: TUniLabel;
    splBottom: TUniSplitter;
    map: TUniFSMap;
    btnLoadGeoJSON: TUniFSButton;
    btnLoadGeoJson2: TUniFSButton;
    pnlMap: TUniPanel;
    btnMapTerrain: TUniFSButton;
    btnMapRoadmap: TUniFSButton;
    btnMapSatelite: TUniFSButton;
    btnMapHybrid: TUniFSButton;
    btnLoadJsonTurkya: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnLoadGeoJSONClick(Sender: TObject);
    procedure btnLoadGeoJson2Click(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnMapHybridClick(Sender: TObject);
    procedure btnMapSateliteClick(Sender: TObject);
    procedure btnMapRoadmapClick(Sender: TObject);
    procedure btnMapTerrainClick(Sender: TObject);
    procedure btnLoadJsonTurkyaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uDmImagens, ServerModule;

{$R *.dfm}

procedure TfrmGeoJSON.btnLoadGeoJson2Click(Sender: TObject);
begin
  map.SetZoom(4);
  map.SetCenter('39.740986355883564','-101.513671875');
  map.LoadGeoJson('json/gz_2010_us_040_00_500k.json', 'blue', 1);
end;

procedure TfrmGeoJSON.btnLoadGeoJSONClick(Sender: TObject);
begin
  map.SetZoom(4);
  map.SetCenter('39.740986355883564','-101.513671875');
  map.LoadGeoJson('json/gz_2010_us_outline_500k.json');
end;

procedure TfrmGeoJSON.btnLoadJsonTurkyaClick(Sender: TObject);
begin
  map.SetZoom(6);
  map.SetCenter('38.776417489933394','35.4553833435482');
  map.LoadGeoJson('json/turkey_cities.json','green', 1);
end;

procedure TfrmGeoJSON.btnMapHybridClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.HYBRID);
end;

procedure TfrmGeoJSON.btnMapRoadmapClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.ROADMAP);
end;

procedure TfrmGeoJSON.btnMapSateliteClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.SATELLITE);
end;

procedure TfrmGeoJSON.btnMapTerrainClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.TERRAIN);
end;

procedure TfrmGeoJSON.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  {Alguns exemplos dos eventos Ajax}
  if EventName = 'fs_map_click' then
    memLog.Lines.Add('Latitude: '+Params['lat'].Value+' - Longitude: '+Params['lng'].Value);
  if EventName = 'fs_map_dblclick' then
    memLog.Lines.Add('Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_marker_click' then
    memLog.Lines.Add('Click Marker - Lat: '+Params['lat'].Value+' - Click Marker - Lng: '+Params['lng'].Value);
end;

procedure TfrmGeoJSON.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmGeoJSON);

end.
