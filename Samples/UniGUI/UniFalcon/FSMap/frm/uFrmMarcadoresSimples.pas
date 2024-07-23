unit uFrmMarcadoresSimples;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSMap, uniTimer, uniMemo, uniEdit, uniLabel, uniRadioGroup, uniCheckBox,
  uniButton, uniBitBtn, uniSplitter, UniFSButton, uniMap;

type
  TfrmMarcadoresSimples = class(TUniFrame)
    pnl1: TUniPanel;
    memLog: TUniMemo;
    edtLabelContent: TUniEdit;
    lbl1: TUniLabel;
    chkDraggAble: TUniCheckBox;
    map: TUniFSMap;
    btnLimparMarcadores: TUniFSButton;
    grpTypeMap: TUniRadioGroup;
    grpAnimation: TUniRadioGroup;
    splBottom: TUniSplitter;
    pnlMap: TUniPanel;
    btnMapTerrain: TUniFSButton;
    btnMapRoadmap: TUniFSButton;
    btnMapSatelite: TUniFSButton;
    btnMapHybrid: TUniFSButton;
    lbl3: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnLimparMarcadoresClick(Sender: TObject);
    procedure grpTypeMapClick(Sender: TObject);
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

procedure TfrmMarcadoresSimples.btnLimparMarcadoresClick(Sender: TObject);
begin
  map.DeleteAllMarker;
end;

procedure TfrmMarcadoresSimples.btnMapHybridClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.HYBRID);
end;

procedure TfrmMarcadoresSimples.btnMapRoadmapClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.ROADMAP);
end;

procedure TfrmMarcadoresSimples.btnMapSateliteClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.SATELLITE);
end;

procedure TfrmMarcadoresSimples.btnMapTerrainClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.TERRAIN);
end;

procedure TfrmMarcadoresSimples.grpTypeMapClick(Sender: TObject);
begin
  map.MapType := TMapTypeId(grpTypeMap.ItemIndex);
end;

procedure TfrmMarcadoresSimples.mapAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
var
  Mark: TMarker;
begin
  {Alguns exemplos dos eventos Ajax}
  if EventName = 'fs_map_click' then
    memLog.Lines.Add('Latitude: '+Params['lat'].Value+' - Longitude: '+Params['lng'].Value);
  if EventName = 'fs_map_dblclick' then
    memLog.Lines.Add('Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_marker_click' then
    memLog.Lines.Add('Click Marker - Lat: '+Params['lat'].Value+' - Click Marker - Lng: '+Params['lng'].Value);
  if EventName = 'fs_marker_dragend' then
    memLog.Lines.Add('Marker Dragend - Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);

  if EventName = 'fs_map_click' then
  begin
    Mark := TMarker.Create; //Não precisa se preocupar em liberar os objetos, o FSMap cuida disso ;)
    Mark.Lat := Params['lat'].Value;
    Mark.Lng := Params['lng'].Value;
    Mark.Labl := edtLabelContent.Text;
    Mark.Animation := TMarkerAnimation(grpAnimation.ItemIndex);
    Mark.Draggable := chkDraggAble.Checked;
    map.AddMarker(Mark);
  end;
end;

procedure TfrmMarcadoresSimples.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmMarcadoresSimples);

end.
