unit uFrmRoutes;

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
  UniFSCombobox,
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
  UniFSButton,
  uniMultiItem,
  uniComboBox,
  uniBasicGrid,
  uniDBGrid,
  uniSplitter,
  uniLabel,
  Data.DB,
  Datasnap.DBClient;

type
  TfrmRoutes = class(TUniFrame)
    map: TUniFSMap;
    pnl1: TUniPanel;
    btnRoute: TUniFSButton;
    cmbOrigin: TUniFSComboBox;
    cmbDestination: TUniFSComboBox;
    pnlDirections: TUniPanel;
    dbgDirections: TUniDBGrid;
    spl1: TUniSplitter;
    lbl1: TUniLabel;
    lblDistance: TUniLabel;
    lbl2: TUniLabel;
    lblDuration: TUniLabel;
    CDS: TClientDataSet;
    intgrfldClientDataSet1aa: TIntegerField;
    CDSinstructions: TWideStringField;
    intgrfldClientDataSet1distance_value: TIntegerField;
    CDSdistance_text: TWideStringField;
    intgrfldClientDataSet1duration_value: TIntegerField;
    CDSduration_text: TWideStringField;
    fltfldClientDataSet1start_location_Ya: TWideStringField;
    fltfldClientDataSet1start_location_Za: TWideStringField;
    fltfldClientDataSet1end_location_Ya: TWideStringField;
    fltfldClientDataSet1end_location_Za: TWideStringField;
    mfldClientDataSet1enc_lat_lngs: TMemoField;
    DS: TDataSource;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnRouteClick(Sender: TObject);
    procedure mapAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure dbgDirectionsCellClick(Column: TUniDBGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmRoutes.btnRouteClick(Sender: TObject);
var
  DirectionsRequest: TDirectionsRequest;
begin
  map.DeleteAllDirections;

  DirectionsRequest := TDirectionsRequest.Create;
  try
    DirectionsRequest.Origin := cmbOrigin.Text;
    DirectionsRequest.Destination := cmbDestination.Text;
    DirectionsRequest.Travelodel := TTravelMode.DRIVING;
    DirectionsRequest.UnitSystem := TUnitSystem.METRIC;
    DirectionsRequest.ProvideRouteAlternatives := False;
    DirectionsRequest.AvoidHighways := False;
    DirectionsRequest.AvoidTolls := False;
    DirectionsRequest.Draggable := False;

    map.Route(DirectionsRequest);
  finally
    FreeAndNil(DirectionsRequest);
  end;
end;

procedure TfrmRoutes.dbgDirectionsCellClick(Column: TUniDBGridColumn);
var
  Mk: TMarkerWithLabel;
begin
  map.DeleteAllMarkerWithLabel;

  Mk := TMarkerWithLabel.Create;
  Mk.Lat := CDS.FieldByName('startlocation_lat').AsString;
  Mk.Lng := CDS.FieldByName('startlocation_lng').AsString;
  Mk.Animation := TMarkerAnimation.DROP;
  Mk.IconUrl := 'http://maps.google.com/mapfiles/ms/micons/bus.png';

  map.AddMarkerWithLabel(Mk);
end;

procedure TfrmRoutes.mapAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
  vJSON: string;
  vI: Integer;
  Obj: TJsonObject;
begin
  if EventName = 'fs_directions_changed' then
  begin
    vJSON := Params.Values['directionsDisplay'];

    Obj := TJsonBaseObject.Parse(vJSON) as TJsonObject;
    try
      lblDistance.Text := Obj.S['distancetext'];
      lblDuration.Text := Obj.S['durationtext'];

      CDS.DisableControls;
      try
        CDS.EmptyDataSet;

        for vI := 0 to Obj.A['steps'].Count - 1 do
        begin
          CDS.Append;
          CDS.FieldByName('sequence').AsInteger := vI + 1;

          CDS.FieldByName('enc_lat_lngs').AsString := Obj.A['steps'].Values[vI].S['enc_lat_lngs'];

          CDS.FieldByName('instructions').AsString := Obj.A['steps'].Values[vI].S['instructions'];
          CDS.FieldByName('distance_value').AsInteger := Obj.A['steps'].Values[vI].I['distancevalue'];
          CDS.FieldByName('distance_text').AsString := Obj.A['steps'].Values[vI].S['distancetext'];
          CDS.FieldByName('duration_value').AsInteger := Obj.A['steps'].Values[vI].I['durationvalue'];
          CDS.FieldByName('duration_text').AsString := Obj.A['steps'].Values[vI].S['durationtext'];

          CDS.FieldByName('startlocation_lat').AsString := Obj.A['steps'].Values[vI].O['startlocation'].S['lat'];
          CDS.FieldByName('startlocation_lng').AsString := Obj.A['steps'].Values[vI].O['startlocation'].S['lng'];
          CDS.FieldByName('endlocation_lat').AsString := Obj.A['steps'].Values[vI].O['endlocation'].S['lat'];
          CDS.FieldByName('endlocation_lng').AsString := Obj.A['steps'].Values[vI].O['endlocation'].S['lng'];

          CDS.Post;
        end;

      finally
        CDS.First;
        CDS.EnableControls;
      end;

    finally
      Obj.Free;
    end;
  end;
end;

procedure TfrmRoutes.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;
  CDS.CreateDataSet;

  cmbOrigin.ItemIndex := 0;
  cmbDestination.ItemIndex := 0;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmRoutes);

end.
