//AllFeatures: Maps,Basic Demo,icon-gmap-panel
unit UniMap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses, Math,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniHTMLFrame,  Menus, uniMainMenu, uniEdit, uniButton, uniMemo,
  uniCheckBox, uniPageControl, uniBitBtn, uniColorButton, uniBasicGrid,
  uniDBGrid, DB, DBClient, uniMap;

type
  TMainForm = class(TUniForm)
    UniPopupMenu1: TUniPopupMenu;
    a1: TUniMenuItem;
    UniPanel2: TUniPanel;
    UniMap1: TUniMap;
    UniMemo1: TUniMemo;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniPanel1: TUniPanel;
    UniButton1: TUniButton;
    UniNumberEdit1: TUniNumberEdit;
    UniFormattedNumberEdit1: TUniFormattedNumberEdit;
    UniFormattedNumberEdit2: TUniFormattedNumberEdit;
    UniButton2: TUniButton;
    UniNumberEdit2: TUniNumberEdit;
    UniButton3: TUniButton;
    UniButton4: TUniButton;
    UniNumberEdit3: TUniNumberEdit;
    UniFormattedNumberEdit3: TUniFormattedNumberEdit;
    UniFormattedNumberEdit4: TUniFormattedNumberEdit;
    UniButton5: TUniButton;
    UniButton6: TUniButton;
    UniTabSheet2: TUniTabSheet;
    UniFormattedNumberEdit5: TUniFormattedNumberEdit;
    UniFormattedNumberEdit6: TUniFormattedNumberEdit;
    UniEdit1: TUniEdit;
    UniButton7: TUniButton;
    UniCheckBox2: TUniCheckBox;
    UniNumberEdit4: TUniNumberEdit;
    UniTabSheet3: TUniTabSheet;
    UniColorButton1: TUniColorButton;
    UniNumberEdit5: TUniNumberEdit;
    UniNumberEdit6: TUniNumberEdit;
    UniColorButton2: TUniColorButton;
    UniNumberEdit7: TUniNumberEdit;
    UniButton8: TUniButton;
    UniEdit2: TUniEdit;
    UniEdit3: TUniEdit;
    UniNumberEdit8: TUniNumberEdit;
    UniButton9: TUniButton;
    UniButton10: TUniButton;
    UniButton11: TUniButton;
    UniButton12: TUniButton;
    UniButton13: TUniButton;
    UniButton14: TUniButton;
    UniButton15: TUniButton;
    UniButton16: TUniButton;
    UniButton17: TUniButton;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1City: TStringField;
    ClientDataSet1Longitude: TFloatField;
    ClientDataSet1latitude: TFloatField;
    DataSource1: TDataSource;
    UniDBGrid1: TUniDBGrid;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
    procedure UniButton4Click(Sender: TObject);
    procedure UniMap1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniButton5Click(Sender: TObject);
    procedure UniButton6Click(Sender: TObject);
    procedure UniButton7Click(Sender: TObject);
    procedure UniMap1MapRightClick(Sender: TObject; const Lat, Lng: Double;
      const Zoom, X, Y, Id: Integer);
    procedure UniMap1MarkerClick(Sender: TObject; const Lat, Lng: Double;
      const Zoom, X, Y, Id: Integer);
    procedure UniMap1MapClick(Sender: TObject; const Lat, Lng: Double;
      const Zoom, X, Y, Id: Integer);
    procedure UniMap1LocationFound(Sender: TObject; const Lat, Lng, Accuracy,
      Altitude, AltitudeAccuracy, Heading, Speed: Double; timestamp: TDateTime);
    procedure a1Click(Sender: TObject);
    procedure UniMap1MapLayers8CustomLayerUrl(Sender: TObject;
      var TileLayerUrl: string);
    procedure UniButton8Click(Sender: TObject);
    procedure UniColorButton1Select(Sender: TObject; Color: TColor);
    procedure UniColorButton2Select(Sender: TObject; Color: TColor);
    procedure UniMap1VectorClick(Sender: TObject; const Lat, Lng: Double;
      const Zoom, X, Y, Id: Integer);
    procedure UniButton9Click(Sender: TObject);
    procedure UniButton11Click(Sender: TObject);
    procedure UniButton12Click(Sender: TObject);
    procedure UniButton10Click(Sender: TObject);
    procedure UniButton13Click(Sender: TObject);
    procedure UniButton14Click(Sender: TObject);
    procedure UniButton16Click(Sender: TObject);
    procedure UniButton15Click(Sender: TObject);
    procedure UniButton17Click(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniFormCreate(Sender: TObject);
  private
    LastLat, LastLng: Double;
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.a1Click(Sender: TObject);
begin
  with UniMap1.Markers.Add do
  begin
    Latitude:= LastLat;
    Longitude:= LastLng;
    Icon.iconUrl:= UniEdit1.Text;
    Popup.content:='<b>You Added a Marker Here</b>';
    DefaultIcon:=True;
    AddToMap;
    OpenPopup;
  end;
end;

procedure TMainForm.UniButton10Click(Sender: TObject);
begin
  with UniMap1.Vectors.Add do
  begin
    AddPoint(18.739046, 80.505755);
    AddPoint(15.892787, 77.236081);
    VectorType:=mvRectangle;
    Popup.content:='a rectangle';
    with Options do
    begin
      color:= UniColorButton1.Color;
      fillColor:= UniColorButton2.Color;
      weight:= Trunc(UniNumberEdit5.Value);
      opacity:= UniNumberEdit6.Value;
      fillOpacity:= UniNumberEdit7.Value;
      radius:= Trunc(UniNumberEdit8.Value);
    end;
    AddToMap;
    FitBounds;
    OpenPopup;
  end;
end;

procedure TMainForm.UniButton11Click(Sender: TObject);
begin
  with UniMap1.Vectors.Add do
  begin
    AddPoint(40.72, -74.00);
    VectorType:=mvCircle;
    Popup.content:='New York';
    with Options do
    begin
      color:= UniColorButton1.Color;
      fillColor:= UniColorButton2.Color;
      weight:= Trunc(UniNumberEdit5.Value);
      opacity:= UniNumberEdit6.Value;
      fillOpacity:= UniNumberEdit7.Value;
      radius:= Trunc(UniNumberEdit8.Value);
    end;
    AddToMap;
    FitBounds;
    OpenPopup;
  end;
end;

procedure TMainForm.UniButton12Click(Sender: TObject);
begin
  with UniMap1.Vectors.Add do
  begin
    AddPoint(37.786542, -122.386022);
    VectorType:=mvCircleMarker;
    Popup.content:='a circlemarker';
    with Options do
    begin
      color:= UniColorButton1.Color;
      fillColor:= UniColorButton2.Color;
      weight:= Trunc(UniNumberEdit5.Value);
      opacity:= UniNumberEdit6.Value;
      fillOpacity:= UniNumberEdit7.Value;
      radius:= Trunc(UniNumberEdit8.Value);
    end;
    AddToMap;
    FitBounds;
    OpenPopup;
  end;
end;

procedure TMainForm.UniButton13Click(Sender: TObject);
begin
  UniMap1.ClearAllPolylines;
end;

procedure TMainForm.UniButton14Click(Sender: TObject);
begin
  UniMap1.ClearAllPolygons;
end;

procedure TMainForm.UniButton15Click(Sender: TObject);
begin
  UniMap1.ClearAllCircles;
end;

procedure TMainForm.UniButton16Click(Sender: TObject);
begin
  UniMap1.ClearAllRectangles;
end;

procedure TMainForm.UniButton17Click(Sender: TObject);
begin
  UniMap1.ClearAllCircleMarkers;
end;

procedure TMainForm.UniButton1Click(Sender: TObject);
begin
  UniMap1.SetZoom(Trunc(UniNumberEdit1.Value));
end;

procedure TMainForm.UniButton2Click(Sender: TObject);
begin
  UniMap1.SetView(UniFormattedNumberEdit1.Value, UniFormattedNumberEdit2.Value);
end;

procedure TMainForm.UniButton3Click(Sender: TObject);
begin
  UniMap1.ZoomIn(Trunc(UniNumberEdit2.Value));
end;

procedure TMainForm.UniButton4Click(Sender: TObject);
begin
  UniMap1.ZoomOut(Trunc(UniNumberEdit3.Value));
end;

procedure TMainForm.UniButton5Click(Sender: TObject);
begin
  UniMap1.FlyTo(UniFormattedNumberEdit3.Value, UniFormattedNumberEdit4.Value, 8);
end;

procedure TMainForm.UniButton6Click(Sender: TObject);
begin
  UniMap1.StopLocate;
  UniMap1.Locate(False, True,10000,True);
end;

procedure TMainForm.UniButton7Click(Sender: TObject);
begin
  with UniMap1.Markers.Add do
  begin
    id:= Trunc(UniNumberEdit4.Value);
    Latitude:= UniFormattedNumberEdit5.Value;
    Longitude:= UniFormattedNumberEdit6.Value;
    Icon.iconUrl:= UniEdit1.Text;
    Draggable:= UniCheckBox2.Checked;
    AddToMap;
    PanToMarker(8);
  end;
end;

procedure TMainForm.UniButton8Click(Sender: TObject);
begin
  with UniMap1.Vectors.Add do
  begin
    AddPoint(51.51032167, -0.187084072);
    AddPoint(51.51019814, -0.187030437);
    AddPoint(51.51013137, -0.187845822);
    AddPoint(51.50457546, -0.185415744);
    AddPoint(51.50476244, -0.181875224);
    AddPoint(51.50457546, -0.179622177);
    AddPoint(51.50409462, -0.175459380);
    AddPoint(51.50368057, -0.174365042);
    AddPoint(51.50299938, -0.174729820);
    AddPoint(51.50213117, -0.174686903);
    AddPoint(51.50199760, -0.177412030);
    AddPoint(51.50179725, -0.180373197);
    AddPoint(51.50143660, -0.180351735);
    VectorType:=mvPolyline;
    Popup.content:='a polyline';
    with Options do
    begin
      color:= UniColorButton1.Color;
      fillColor:= UniColorButton2.Color;
      weight:= Trunc(UniNumberEdit5.Value);
      opacity:= UniNumberEdit6.Value;
      fillOpacity:= UniNumberEdit7.Value;
      radius:= Trunc(UniNumberEdit8.Value);
    end;
    AddToMap;
    FitBounds;
    OpenPopup;
  end;
end;

procedure TMainForm.UniButton9Click(Sender: TObject);
begin
  with UniMap1.Vectors.Add do
  begin
    AddPoint(38.770547, -90.168056);
    AddPoint(38.753816, -90.177326);
    AddPoint(38.747390, -90.183849);
    AddPoint(38.731456, -90.206337);
    AddPoint(38.719805, -90.212002);
    AddPoint(38.706142, -90.210629);
    AddPoint(38.692879, -90.202217);
    AddPoint(38.680150, -90.189857);
    AddPoint(38.665139, -90.182991);
    AddPoint(38.646774, -90.179729);
    AddPoint(38.630818, -90.179214);
    AddPoint(38.615663, -90.183849);
    AddPoint(38.601713, -90.190201);
    AddPoint(38.587759, -90.204620);
    AddPoint(38.577427, -90.219212);
    AddPoint(38.564140, -90.232258);
    AddPoint(38.545615, -90.248566);
    AddPoint(38.531650, -90.257664);
    AddPoint(38.538901, -90.270023);
    AddPoint(38.548702, -90.273113);
    AddPoint(38.561053, -90.294399);
    AddPoint(38.574072, -90.309334);
    AddPoint(38.596346, -90.320320);
    AddPoint(38.614054, -90.314827);
    AddPoint(38.632159, -90.304527);
    AddPoint(38.651198, -90.302296);
    AddPoint(38.664067, -90.293713);
    AddPoint(38.683768, -90.278263);
    AddPoint(38.700650, -90.265388);
    AddPoint(38.717662, -90.253887);
    AddPoint(38.722349, -90.238266);
    AddPoint(38.729715, -90.221272);
    AddPoint(38.742302, -90.203934);
    AddPoint(38.754886, -90.191746);
    AddPoint(38.764792, -90.184021);
    AddPoint(38.771350, -90.183334);
    VectorType:=mvPolygon;
    Popup.content:='City of St. Louis';
    with Options do
    begin
      color:= UniColorButton1.Color;
      fillColor:= UniColorButton2.Color;
      weight:= Trunc(UniNumberEdit5.Value);
      opacity:= UniNumberEdit6.Value;
      fillOpacity:= UniNumberEdit7.Value;
      radius:= Trunc(UniNumberEdit8.Value);
    end;
    AddToMap;
    FitBounds;
    OpenPopup;
  end;
end;

procedure TMainForm.UniColorButton1Select(Sender: TObject; Color: TColor);
begin
  UniEdit2.Color:= Color;
end;

procedure TMainForm.UniColorButton2Select(Sender: TObject; Color: TColor);
begin
  UniEdit3.Color:=Color;
end;

procedure TMainForm.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  UniMap1.SetView(ClientDataSet1latitude.AsFloat, ClientDataSet1Longitude.AsFloat, 8);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  with ClientDataSet1 do
  begin
    Append;
    FieldByName('City').AsString:='Newyork';
    FieldByName('Latitude').AsFloat:=41.0513;
    FieldByName('Longitude').AsFloat:=-74.6365;
    Post;
    Append;
    FieldByName('City').AsString:='Paris';
    FieldByName('Latitude').AsFloat:=48.8566;
    FieldByName('Longitude').AsFloat:=2.3522 ;
    Post;
    Append;
    FieldByName('City').AsString:='Berlin';
    FieldByName('Latitude').AsFloat:=52.5234;
    FieldByName('Longitude').AsFloat:=13.4114;
    Post;
    Append;
    FieldByName('City').AsString:='Tokyo';
    FieldByName('Latitude').AsFloat:=35.6895;
    FieldByName('Longitude').AsFloat:=139.6917;
    Post;
    Append;
    FieldByName('City').AsString:='Ankara';
    FieldByName('Latitude').AsFloat:=39.9333;
    FieldByName('Longitude').AsFloat:=32.8667;
    Post;
    Append;
    FieldByName('City').AsString:='Istanbul';
    FieldByName('Latitude').AsFloat:=41.0053;
    FieldByName('Longitude').AsFloat:=28.9770;
    Post;
    Append;
    FieldByName('City').AsString:='Oslo';
    FieldByName('Latitude').AsFloat:=59.9139;
    FieldByName('Longitude').AsFloat:=10.7522;
    Post;
    Append;
    FieldByName('City').AsString:='London';
    FieldByName('Latitude').AsFloat:=51.5002;
    FieldByName('Longitude').AsFloat:=-0.1262;
    Post;
    Append;
    FieldByName('City').AsString:='Tehran';
    FieldByName('Latitude').AsFloat:=35.6781;
    FieldByName('Longitude').AsFloat:=51.4764;
    Post;
    Append;
    FieldByName('City').AsString:='Beijing';
    FieldByName('Latitude').AsFloat:=39.9042;
    FieldByName('Longitude').AsFloat:=116.4074;
    Post;
    Append;
    FieldByName('City').AsString:='Copenhagen';
    FieldByName('Latitude').AsFloat:=55.6934;
    FieldByName('Longitude').AsFloat:=12.5830;
    Post;
    Append;
    FieldByName('City').AsString:='Calgary';
    FieldByName('Latitude').AsFloat:=51.0450;
    FieldByName('Longitude').AsFloat:=-114.0572;
    Post;
    Append;
    FieldByName('City').AsString:='Baghdad';
    FieldByName('Latitude').AsFloat:=33.3157;
    FieldByName('Longitude').AsFloat:=44.3922;
    Post;
    Append;
    FieldByName('City').AsString:='Bangkok';
    FieldByName('Latitude').AsFloat:=13.7234;
    FieldByName('Longitude').AsFloat:=100.4762;
    Post;
    Append;
    FieldByName('City').AsString:='Moscow';
    FieldByName('Latitude').AsFloat:=55.7558;
    FieldByName('Longitude').AsFloat:=37.6176 ;
    Post;
    Append;
    FieldByName('City').AsString:='Stockholm';
    FieldByName('Latitude').AsFloat:=59.3328;
    FieldByName('Longitude').AsFloat:=18.0645;
    Post;

    Append;
    FieldByName('City').AsString:='Rome';
    FieldByName('Latitude').AsFloat:=41.8905;
    FieldByName('Longitude').AsFloat:=12.4942;
    Post;

    Append;
    FieldByName('City').AsString:='Madrid';
    FieldByName('Latitude').AsFloat:=40.4167;
    FieldByName('Longitude').AsFloat:=-3.7003;
    Post;

    Append;
    FieldByName('City').AsString:='Asunción';
    FieldByName('Latitude').AsFloat:=-25.2822;
    FieldByName('Longitude').AsFloat:=-57.6351;
    Post;

    Append;
    FieldByName('City').AsString:='São Paulo';
    FieldByName('Latitude').AsFloat:=-23.5489;
    FieldByName('Longitude').AsFloat:=-46.6388;
    Post;

    Append;
    FieldByName('City').AsString:='Buenos Aires';
    FieldByName('Latitude').AsFloat:=-34.6084;
    FieldByName('Longitude').AsFloat:=-58.3732;
    Post;

    Append;
    FieldByName('City').AsString:='Cape Town';
    FieldByName('Latitude').AsFloat:=-33.9249;
    FieldByName('Longitude').AsFloat:=18.4241;
    Post;

    First;
  end;
end;

procedure TMainForm.UniMap1AjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
begin
  UniMemo1.Lines.Add('---------------------------');
  UniMemo1.Lines.Add(EventName);
  UniMemo1.Lines.Add(Params.Text);
end;

procedure TMainForm.UniMap1LocationFound(Sender: TObject; const Lat, Lng,
  Accuracy, Altitude, AltitudeAccuracy, Heading, Speed: Double;
  timestamp: TDateTime);
begin
  with UniMap1.Markers.Add do
  begin
    Latitude:= Lat;
    Longitude:= Lng;
    Icon.iconUrl:= 'files/images/man.png';
    Icon.iconSize:=Point(48, 48);
    Icon.popupAnchor:=Point(1, -15);
    Popup.content:='<b>Your Location</b><br><b>TimeStamp :</b> '+DateTimeToStr(timestamp)+'<br><b>Accuracy :</b> '+FloatToStr(Accuracy);
    AddToMap;
    OpenPopup;
  end;
end;

procedure TMainForm.UniMap1MapClick(Sender: TObject; const Lat, Lng: Double;
  const Zoom, X, Y, Id: Integer);
begin
//
end;

procedure TMainForm.UniMap1MapLayers8CustomLayerUrl(Sender: TObject;
  var TileLayerUrl: string);
begin
  TileLayerUrl:='http://{s}.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png';
end;

procedure TMainForm.UniMap1MapRightClick(Sender: TObject; const Lat,
  Lng: Double; const Zoom, X, Y, Id: Integer);
begin
  LastLat:=Lat;
  LastLng:=Lng;
  UniPopupMenu1.Popup(x,y,sender);
end;

procedure TMainForm.UniMap1MarkerClick(Sender: TObject; const Lat, Lng: Double;
  const Zoom, X, Y, Id: Integer);
begin
//
end;

procedure TMainForm.UniMap1VectorClick(Sender: TObject; const Lat, Lng: Double;
  const Zoom, X, Y, Id: Integer);
begin
//
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
