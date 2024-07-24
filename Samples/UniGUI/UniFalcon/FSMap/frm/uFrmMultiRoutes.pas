unit uFrmMultiRoutes;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  UniFSMap,
  UniFSButton,
  UniJsonDataObjects,
  uniGUITypes,
  uniGUIAbstractClasses,
  uniGUIClasses,
  uniGUIFrame,
  uniGUIBaseClasses,
  uniPanel,
  uniHTMLFrame,
  uniButton,
  uniBitBtn,
  uniBasicGrid,
  uniDBGrid,
  uniLabel,
  Data.DB,
  Datasnap.DBClient;

type
  TfrmMultiRoutes = class(TUniFrame)
    map: TUniFSMap;
    pnl1: TUniPanel;
    btnRoute: TUniFSButton;
    pnlBottom: TUniPanel;
    dbg: TUniDBGrid;
    lblObs: TUniLabel;
    CDS: TClientDataSet;
    DS: TDataSource;
    intgrfldCDSsequence: TIntegerField;
    strngfldCDSlat: TStringField;
    strngfldCDSlng: TStringField;
    lbl1: TUniLabel;
    lblDistance: TUniLabel;
    lbl2: TUniLabel;
    lblDuration: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnRouteClick(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure dbgCellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmMultiRoutes.btnRouteClick(Sender: TObject);
var
  DirectionsRequest: TDirectionsRequest;
  WayPoints: TWayPoints;
begin
  map.DeleteAllDirections;

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

procedure TfrmMultiRoutes.dbgCellClick(Column: TUniDBGridColumn);
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

procedure TfrmMultiRoutes.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  vJSON: string;
  Obj: TJsonObject;
begin
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

procedure TfrmMultiRoutes.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  CDS.CreateDataSet;
  CDS.AppendRecord([1,'37.434067805409434','-122.20584882019044']);
  CDS.AppendRecord([2,'37.43975846013502','-122.1979523968506']);
  CDS.AppendRecord([3,'37.44558496958017','-122.19619286773683']);
  CDS.AppendRecord([4,'37.44759518042615','-122.1878672909546']);
  CDS.AppendRecord([5,'37.444460590807054','-122.18250287292481']);
  CDS.AppendRecord([6,'37.43737320843341','-122.1882106137085']);
  CDS.AppendRecord([7,'37.42895607002348','-122.19619286773683']);
  CDS.Open;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmMultiRoutes);

end.
