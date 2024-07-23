unit uFrmPolyline;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniHTMLFrame, UniFSMap, uniCheckBox, uniSplitter,
  uniRadioGroup, uniButton, uniBitBtn, uniLabel, uniMemo, uniGUIBaseClasses,
  uniPanel, Data.DB, Datasnap.DBClient, UniFSButton;

type
  TfrmPolyline = class(TUniFrame)
    pnl1: TUniPanel;
    memLog: TUniMemo;
    lbl1: TUniLabel;
    btnVisualizar: TUniFSButton;
    splBottom: TUniSplitter;
    chkPolylineEditable: TUniCheckBox;
    map: TUniFSMap;
    CDSPolyline: TClientDataSet;
    chkGeodesic: TUniCheckBox;
    pnlMap: TUniPanel;
    btnMapTerrain: TUniFSButton;
    btnMapRoadmap: TUniFSButton;
    btnMapSatelite: TUniFSButton;
    btnMapHybrid: TUniFSButton;
    procedure btnVisualizarClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnMapHybridClick(Sender: TObject);
    procedure btnMapSateliteClick(Sender: TObject);
    procedure btnMapRoadmapClick(Sender: TObject);
    procedure btnMapTerrainClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

implementation

uses
  uDmImagens, ServerModule;

{$R *.dfm}

{ TfrmPolyline }

procedure TfrmPolyline.btnMapHybridClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.HYBRID);
end;

procedure TfrmPolyline.btnMapRoadmapClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.ROADMAP);
end;

procedure TfrmPolyline.btnMapSateliteClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.SATELLITE);
end;

procedure TfrmPolyline.btnMapTerrainClick(Sender: TObject);
begin
  map.SetMapTypeId(TMapTypeId.TERRAIN);
end;

procedure TfrmPolyline.btnVisualizarClick(Sender: TObject);
var
  Polyline: TPolyline;
begin
  map.DeleteAllPolyline;

  CDSPolyline.First;
  while not CDSPolyline.Eof do
  begin
    Polyline := TPolyline.Create;
    Polyline.Paths := CDSPolyline.FieldByName('Paths').AsString;
    Polyline.StrokeColor := 'green';
    Polyline.strokeOpacity := '1.0';
    Polyline.strokeWeight := 3;
    Polyline.Editable := chkPolylineEditable.Checked;
    Polyline.Geodesic := chkGeodesic.Checked;
    map.AddPolyline(Polyline);

    CDSPolyline.Next;
  end;

  map.SetCenter('37.66778803970386','-122.2994613647461');
  map.SetZoom(12);
end;

procedure TfrmPolyline.LoadData;
begin
  with CDSPolyline do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('Paths', ftString,1000);

    CreateDataSet;
    AppendRecord(['{lat: 37.644685, lng: -122.364693} , {lat: 37.691428, lng: -122.364006} , {lat: 37.691428, lng: -122.341003} , {lat: 37.691428, lng: -122.363663} , {lat: 37.667516, lng: -122.364006} , {lat: 37.667788, lng: -122.341347}, ']);
    AppendRecord(['{lat: 37.644549, lng: -122.340317} , {lat: 37.691699, lng: -122.329159} , {lat: 37.643733, lng: -122.317829} , {lat: 37.667788, lng: -122.323494} , {lat: 37.667924, lng: -122.334824}, ']);
    AppendRecord(['{lat: 37.691835, lng: -122.310448} , {lat: 37.644005, lng: -122.310104} , {lat: 37.644141, lng: -122.294312}, ']);
    AppendRecord(['{lat: 37.691699, lng: -122.271481} , {lat: 37.691699, lng: -122.286415} , {lat: 37.643869, lng: -122.286415} , {lat: 37.643869, lng: -122.273026}, ']);
    AppendRecord(['{lat: 37.643733, lng: -122.266159} , {lat: 37.692107, lng: -122.266674} , {lat: 37.692243, lng: -122.250538} , {lat: 37.643733, lng: -122.250538} , {lat: 37.643733, lng: -122.266159}, ']);
    AppendRecord(['{lat: 37.643733, lng: -122.241955} , {lat: 37.692243, lng: -122.241611} , {lat: 37.643461, lng: -122.228394} , {lat: 37.69265, lng: -122.228394}, ']);
  end;
end;

procedure TfrmPolyline.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  {Alguns exemplos dos eventos Ajax}
  if EventName = 'fs_map_click' then
    memLog.Lines.Add('Latitude: '+Params['lat'].Value+' - Longitude: '+Params['lng'].Value);
  if EventName = 'fs_map_dblclick' then
    memLog.Lines.Add('Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_polyline_rightclick' then
    memLog.Lines.Add('Polyline Right Lat: '+Params['lat'].Value+' - Lng: '+Params['lng'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
  if EventName = 'fs_map_zoom_changed' then
    memLog.Lines.Add('Zoom Change: '+Params['zoom'].Value);
end;

procedure TfrmPolyline.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  LoadData;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmPolyline)

end.
