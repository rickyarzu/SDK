unit uFrmGetPosition;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniCheckBox, uniSplitter, uniRadioGroup,
  uniButton, uniBitBtn, uniLabel, uniMemo, uniPanel, uniGUIBaseClasses,
  uniHTMLFrame, UniFSMap, UniFSButton;

type
  TfrmGetPosition = class(TUniFrame)
    map: TUniFSMap;
    pnl1: TUniPanel;
    memLog: TUniMemo;
    lbl1: TUniLabel;
    btnGetCurrentPosition: TUniFSButton;
    pnlMap: TUniPanel;
    btnMapTerrain: TUniFSButton;
    btnMapRoadmap: TUniFSButton;
    btnMapSatelite: TUniFSButton;
    btnMapHybrid: TUniFSButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnGetCurrentPositionClick(Sender: TObject);
    procedure btnMapHybridClick(Sender: TObject);
    procedure btnMapSateliteClick(Sender: TObject);
    procedure btnMapRoadmapClick(Sender: TObject);
    procedure btnMapTerrainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uDmImagens, ServerModule;

{$R *.dfm}

procedure TfrmGetPosition.btnGetCurrentPositionClick(Sender: TObject);
begin
  map.GetCurrentPosition;
end;

procedure TfrmGetPosition.btnMapHybridClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.HYBRID);
end;

procedure TfrmGetPosition.btnMapRoadmapClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.ROADMAP);
end;

procedure TfrmGetPosition.btnMapSateliteClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.SATELLITE);
end;

procedure TfrmGetPosition.btnMapTerrainClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.TERRAIN);
end;

procedure TfrmGetPosition.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  Marker: TMarker;
begin
  if EventName = 'fs_get_current_position' then
  begin
    if Params['status_geo'].Value = 'denied' then
      ShowMessage('Access coordinates permission denied');

    if Params['status_geo'].Value = 'enabled' then
    begin
      map.DeleteAllMarker;

      Marker := TMarker.Create;
      Marker.Lat := Params['lat'].Value;
      Marker.Lng := Params['lng'].Value;
      Marker.Animation := TMarkerAnimation.DROP;
      Marker.TitleHint := ' Accuracy: '+ Params['accuracy'].Value+' mt';
      map.AddMarker(Marker);

      map.SetCenter(Params['lat'].Value, Params['lng'].Value);
      map.SetZoom(14);
    end;
  end;

  {Alguns exemplos dos eventos Ajax}
  if EventName = 'fs_map_click' then
    memLog.Lines.Add('Click Map - Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_map_dblclick' then
    memLog.Lines.Add('DblClick Map - Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_marker_click' then
    memLog.Lines.Add('Click Marker - Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_get_current_position' then
    memLog.Lines.Add('Location - Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value+' Accuracy: '+ Params['accuracy'].Value+' mt');
end;

procedure TfrmGetPosition.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmGetPosition)

end.
