unit uFrmGetRoutes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniHTMLFrame,
  UniFSMap, uniBasicGrid, uniDBGrid, uniLabel, uniButton, uniBitBtn, UniFSButton,
  Data.DB, Datasnap.DBClient, UniFSConfirm;

type
  TfrmGetRoutes = class(TUniFrame)
    map: TUniFSMap;
    pnl1: TUniPanel;
    btnRoute: TUniFSButton;
    pnlBottom: TUniPanel;
    lblObs: TUniLabel;
    lbl1: TUniLabel;
    lblDistance: TUniLabel;
    lbl2: TUniLabel;
    lblDuration: TUniLabel;
    dbg: TUniDBGrid;
    CDS: TClientDataSet;
    intgrfldCDSsequence: TIntegerField;
    strngfldCDSlat: TStringField;
    strngfldCDSlng: TStringField;
    DS: TDataSource;
    pnl2: TUniPanel;
    lbl3: TUniLabel;
    btnGenerateRoute: TUniFSButton;
    Confirm: TUniFSConfirm;
    procedure UniFrameCreate(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniFrameDestroy(Sender: TObject);
    procedure btnRouteClick(Sender: TObject);
    procedure dbgCellClick(Column: TUniDBGridColumn);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure btnGenerateRouteClick(Sender: TObject);
    procedure mapZeroResults(Sender: TObject);
  private
    { Private declarations }
    DirectionsRequest: TDirectionsRequest;
  public
    { Public declarations }
  end;

implementation

uses
  UniJsonDataObjects, ServerModule;

{$R *.dfm}

procedure TfrmGetRoutes.btnGenerateRouteClick(Sender: TObject);
var
  DirectionsRequest: TDirectionsRequest;
  WayPoints: TWayPoints;
begin
  map.DeleteAllDirections;
  map.DeleteAllMarker;

  DirectionsRequest := TDirectionsRequest.Create;
  CDS.DisableControls;
  try
    CDS.First;
    while not CDS.Eof do
    begin
      WayPoints := TWayPoints.Create;
      WayPoints.Lat := CDS.FieldByName('lat').AsString;
      WayPoints.Lng := CDS.FieldByName('lng').AsString;

      DirectionsRequest.ListWayPoints.Add(WayPoints);

      CDS.Next;
    end;

    map.Route(DirectionsRequest);
  finally
    CDS.EnableControls;
    FreeAndNil(DirectionsRequest);
  end;
end;

procedure TfrmGetRoutes.btnRouteClick(Sender: TObject);
begin
  DirectionsRequest.ListWayPoints.Clear;
  map.DeleteAllDirections;
  CDS.First;
  while not CDS.Eof do
    CDS.Delete;
end;

procedure TfrmGetRoutes.dbgCellClick(Column: TUniDBGridColumn);
var
  Mk: TMarkerWithLabel;
begin
  map.DeleteAllMarkerWithLabel;

  Mk := TMarkerWithLabel.Create;
  Mk.Lat := CDS.FieldByName('lat').AsString;
  Mk.Lng := CDS.FieldByName('lng').AsString;
  Mk.Animation := TMarkerAnimation.BOUNCE;
  Mk.IconUrl := 'http://maps.google.com/mapfiles/ms/micons/bus.png';

  map.AddMarkerWithLabel(Mk);
end;

procedure TfrmGetRoutes.DSDataChange(Sender: TObject; Field: TField);
begin
  btnGenerateRoute.Enabled := CDS.RecordCount >= 2;
end;

procedure TfrmGetRoutes.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  //WayPoints: TWayPoints;
  Mark: TMarker;

  vJSON: string;
  Obj: TJsonObject;
begin
  if EventName = 'fs_map_click' then
  begin
    Mark := TMarker.Create;
    Mark.Lat := Params['lat'].Value;
    Mark.Lng := Params['lng'].Value;

    CDS.AppendRecord([DirectionsRequest.ListWayPoints.Count, Params['lat'].Value, Params['lng'].Value]);

    map.AddMarker(Mark);
  end;

  if EventName = 'fs_directions_changed' then
  begin
    vJSON := Params.Values['directionsDisplay'];

    Obj := TJsonBaseObject.Parse(vJSON) as TJsonObject;
    try
      lblDistance.Text := Obj.S['distancetext'];
      lblDuration.Text := Obj.S['durationtext'];
    finally
      Obj.Free;
    end;
  end;
end;

procedure TfrmGetRoutes.mapZeroResults(Sender: TObject);
begin
  Confirm.Alert('Directions not avaliable','please make a new route!',
    'fas fa-route',TTypeColor.orange, TTheme.modern);
end;

procedure TfrmGetRoutes.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  CDS.CreateDataSet;

  DirectionsRequest := TDirectionsRequest.Create;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

procedure TfrmGetRoutes.UniFrameDestroy(Sender: TObject);
begin
  FreeAndNil(DirectionsRequest);
end;

initialization
  RegisterClass(TfrmGetRoutes);

end.
