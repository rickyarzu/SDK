unit UDemo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TMSFNCGeoCoding, FMX.TMSFNCCloudBase,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCMapsCommonTypes, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit,
  FMX.TMSFNCCustomControl, FMX.TMSFNCWebBrowser, FMX.TMSFNCMaps, FMX.TMSFNCGoogleMaps,
  FMX.ListBox;

const
  //https://www.wpgmaps.com/map-themes
  MAPSTYLEEXPRESS = '[' + LB +
    '{' + LB +
    '  "featureType": "water",' + LB +
    '  "elementType": "geometry",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "color": "#808080"' + LB +
    '    },' + LB +
    '    {' + LB +
    '      "lightness": -32' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "featureType": "landscape",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "color": "#808080"' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "featureType": "poi",' + LB +
    '  "elementType": "geometry",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "color": "#808080"' + LB +
    '    },' + LB +
    '    {' + LB +
    '      "lightness": -14' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "featureType": "administrative",' + LB +
    '  "elementType": "geometry.stroke",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "color": "#808080"' + LB +
    '    },' + LB +
    '    {' + LB +
    '      "lightness": 32' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "featureType": "road",' + LB +
    '  "elementType": "geometry.fill",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "color": "#e69b24"' + LB +
    '    },' + LB +
    '    {' + LB +
    '      "lightness": 11' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "featureType": "road",' + LB +
    '  "elementType": "geometry.stroke",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "color": "#ebbc63"' + LB +
    '    },' + LB +
    '    {' + LB +
    '      "lightness": 11' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "elementType": "labels.icon",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '       "hue": "#ff0000"' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "elementType": "labels.text.fill",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "saturation": -100' + LB +
    '    }' + LB +
    '  ]' + LB +
    '},' + LB +
    '{' + LB +
    '  "featureType": "transit",' + LB +
    '  "elementType": "geometry",' + LB +
    '  "stylers": [' + LB +
    '    {' + LB +
    '      "saturation": -100' + LB +
    '    }' + LB +
    '  ]' + LB +
    '}' + LB +
    ']';

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label7: TLabel;
    Label5: TLabel;
    MapAPIEdit: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button2: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TMSFNCGoogleMaps1: TTMSFNCGoogleMaps;
    cbStreetView: TCheckBox;
    cbMarkerLabel: TCheckBox;
    cbOverlayViewCoordinate: TCheckBox;
    Label6: TLabel;
    cbOverlayViewBounds: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    cbSymbolColor: TComboBox;
    btUpdate: TButton;
    cbSymbolType: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure MapAPIEditChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure TMSFNCGoogleMaps1MarkerDragEnd(Sender: TObject;
      AEventData: TTMSFNCMapsEventData);
    procedure cbStreetViewChange(Sender: TObject);
    procedure cbMarkerLabelChange(Sender: TObject);
    procedure TMSFNCGoogleMaps1MapInitialized(Sender: TObject);
    procedure cbOverlayViewCoordinateChange(Sender: TObject);
    procedure cbOverlayViewBoundsChange(Sender: TObject);
    procedure cbSymbolColorChange(Sender: TObject);
    procedure btUpdateClick(Sender: TObject);
    procedure cbSymbolTypeChange(Sender: TObject);
  private
    { Private declarations }
    procedure InitCountries;
    procedure CreateCountryWithMcDonalds(AName: string; ALongitude: Double; ALatitude: Double; AContinent: TTMSFNCGoogleMapsCluster; AMCDonalds: Integer);
  public
    { Public declarations }
    OverlayViewCoordinate: TTMSFNCGoogleMapsOverlayView;
    OverlayViewBounds: TTMSFNCGoogleMapsOverlayView;
    DefaultLatitude: Double;
    DefaultLongitude: Double;
    DefaultZoomLevel: Double;
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.MapAPIEditChange(Sender: TObject);
begin
  if MapAPIEdit.Text <> '' then
    TMSFNCGoogleMaps1.APIKey := MapAPIEdit.Text;
end;

procedure TForm2.TMSFNCGoogleMaps1MapInitialized(Sender: TObject);
var
  po: TTMSFNCGoogleMapsPolyline;
  ps: TTMSFNCGoogleMapsPolylineSymbol;
  ar: TTMSFNCMapsCoordinateRecArray;
begin
  DefaultZoomLevel := TMSFNCGoogleMaps1.Options.DefaultZoomLevel;
  DefaultLatitude := TMSFNCGoogleMaps1.Options.DefaultLatitude;
  DefaultLongitude := TMSFNCGoogleMaps1.Options.DefaultLongitude;

  TMSFNCGoogleMaps1.BeginUpdate;

  if not Assigned(TMSFNCGoogleMaps1.Markers[0].OverlayView) then
    TMSFNCGoogleMaps1.Markers[0].AddOverlayView('This <b>OverlayView</b> is connected a Marker');

  OverlayViewCoordinate := TMSFNCGoogleMaps1.AddOverlayView;
  OverlayViewCoordinate.Mode := omCoordinate;
  OverlayViewCoordinate.Coordinate.Latitude := TMSFNCGoogleMaps1.Options.DefaultLatitude;
  OverlayViewCoordinate.Coordinate.Longitude := TMSFNCGoogleMaps1.Options.DefaultLongitude;
  OverlayViewCoordinate.CoordinatePosition := cpCenterCenter;
  OverlayViewCoordinate.Width := 220;
  OverlayViewCoordinate.Visible := False;

  OverlayViewCoordinate.Text := '' +
      '<h3 id="firstHeading" class="firstHeading">OverlayView sample</h1>'+
      '<div id="bodyContent">'+
      '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
      'sandstone rock formation in the southern part of the '+
      'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) '+
      'south west of the nearest large town, Alice Springs; 450&#160;km '+
      '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major '+
      'features of the Uluru - Kata Tjuta National Park. Uluru is '+
      'sacred to the Pitjantjatjara and Yankunytjatjara, the '+
      'Aboriginal people of the area. It has many springs, waterholes, '+
      'rock caves and ancient paintings. Uluru is listed as a World '+
      'Heritage Site.</p>'+
      '<img src="https://www.tripsavvy.com/thmb/XHi4Ec428VJFk_bsvNtv6fx5-bE=/2000x1500/filters:fill(auto,1)/GettyImages-675746097-5a8b94a427364afc89f054f71ceda86f.jpg" width="200"></img>' +
      '<p>Attribution: Uluru, <a target="_blank" href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">'+
      'https://en.wikipedia.org/w/index.php?title=Uluru</a> '+
      '(last visited June 22, 2009).</p>'+
      '</div>';

  OverlayViewBounds := TMSFNCGoogleMaps1.AddOverlayView;
  OverlayViewBounds.Text := '<img src="https://developers.google.com/maps/documentation/javascript/examples/full/images/talkeetna.png" style="position:absolute;width:100%;height:100%;">';
  OverlayViewBounds.Bounds.NorthEast.Latitude := 62.400471;
  OverlayViewBounds.Bounds.NorthEast.Longitude := -150.005608;
  OverlayViewBounds.Bounds.SouthWest.Latitude := 62.281819;
  OverlayViewBounds.Bounds.SouthWest.Longitude := -150.287132;

  OverlayViewBounds.Mode := omBounds;
  OverlayViewBounds.Padding := 0;
  OverlayViewBounds.BackgroundColor := gcNull;
  OverlayViewBounds.BorderColor := gcNull;
  OverlayViewBounds.Visible := False;

  SetLength(ar, 2);
  ar[0].Latitude := 47.6062095;
  ar[0].Longitude := -122.3320708;
  ar[1].Latitude := 48.856614;
  ar[1].Longitude := 2.3522219;
  po := TMSFNCGoogleMaps1.AddPolyline(ar);
  ps := po.Symbols.Add;
  ps.RepeatSymbol := 25;
  ps.Offset := 25;

  TMSFNCGoogleMaps1.EndUpdate;
end;

procedure TForm2.TMSFNCGoogleMaps1MarkerDragEnd(Sender: TObject;
  AEventData: TTMSFNCMapsEventData);
begin
  AEventData.Marker.Latitude := AEventData.Coordinate.Latitude;
  AEventData.Marker.Longitude := AEventData.Coordinate.Longitude;
  Label3.Text := AEventData.Marker.Latitude.ToString + '; ' + AEventData.Marker.Longitude.ToString;
end;

procedure TForm2.btUpdateClick(Sender: TObject);
begin
  if MapAPIEdit.Text <> '' then
    TMSFNCGoogleMaps1.APIKey := MapAPIEdit.Text;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  InitCountries;
end;

procedure TForm2.cbMarkerLabelChange(Sender: TObject);
begin
  TMSFNCGoogleMaps1.BeginUpdate;
  if TMSFNCGoogleMaps1.Markers.Count > 0 then
  begin
    if Assigned(TMSFNCGoogleMaps1.Markers[0].OverlayView) then
    begin
      TMSFNCGoogleMaps1.Markers[0].OverlayView.Visible := cbMarkerLabel.IsChecked;
    end;
  end;
  TMSFNCGoogleMaps1.EndUpdate;
end;

procedure TForm2.cbOverlayViewBoundsChange(Sender: TObject);
begin
  OverlayViewBounds.Visible := cbOverlayViewBounds.IsChecked;
  if OverlayViewBounds.Visible then
  begin
    TMSFNCGoogleMaps1.ZoomToBounds(OverlayViewBounds.Bounds.ToRec);
  end
  else
  begin
    TMSFNCGoogleMaps1.SetZoomLevel(DefaultZoomLevel);
    TMSFNCGoogleMaps1.SetCenterCoordinate(DefaultLatitude, DefaultLongitude);
  end;
end;

procedure TForm2.cbOverlayViewCoordinateChange(Sender: TObject);
begin
  OverlayViewCoordinate.Visible := cbOverlayViewCoordinate.IsChecked;
end;

procedure TForm2.cbStreetViewChange(Sender: TObject);
begin
  TMSFNCGoogleMaps1.Options.StreetView.Enabled := cbStreetView.IsChecked;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    0: TMSFNCGoogleMaps1.Options.MapStyle := '';
    1: TMSFNCGoogleMaps1.Options.MapStyle := MAPSTYLENIGHT;
    2: TMSFNCGoogleMaps1.Options.MapStyle := MAPSTYLEEXPRESS;
  end;
end;

procedure TForm2.cbSymbolColorChange(Sender: TObject);
begin
  if (TMSFNCGoogleMaps1.Polylines.Count > 0) and (TMSFNCGoogleMaps1.Polylines[0].Symbols.Count > 0) then
  begin
    case cbSymbolColor.ItemIndex of
      0: TMSFNCGoogleMaps1.Polylines[0].Symbols[0].StrokeColor := gcBlack;
      1: TMSFNCGoogleMaps1.Polylines[0].Symbols[0].StrokeColor := gcBlue;
      2: TMSFNCGoogleMaps1.Polylines[0].Symbols[0].StrokeColor := gcRed;
    end;
  end;
end;

procedure TForm2.cbSymbolTypeChange(Sender: TObject);
begin
  if (TMSFNCGoogleMaps1.Polylines.Count > 0) and (TMSFNCGoogleMaps1.Polylines[0].Symbols.Count > 0) then
  begin
    case cbSymbolType.ItemIndex of
      0: TMSFNCGoogleMaps1.Polylines[0].Symbols[0].Path := spForwardOpenArrow;
      1: TMSFNCGoogleMaps1.Polylines[0].Symbols[0].Path := spForwardClosedArrow;
      2: TMSFNCGoogleMaps1.Polylines[0].Symbols[0].Path := spCircle;
    end;
  end;
end;

procedure TForm2.CreateCountryWithMcDonalds(AName: string; ALongitude,
  ALatitude: Double; AContinent: TTMSFNCGoogleMapsCluster; AMCDonalds: Integer);
var
  m: TTMSFNCGoogleMapsMarker;
begin
  m := TMSFNCGoogleMaps1.Markers.Add;
  m.Longitude := ALongitude;
  m.Latitude := ALatitude;
  m.Title := AName + ': ' + AMCDonalds.ToString;
  m.Cluster := AContinent;

  AContinent.Markers.Add(m);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if MapAPIEdit.Text <> '' then
    TMSFNCGoogleMaps1.APIKey := MapAPIEdit.Text;

  Label3.Text := TMSFNCGoogleMaps1.Markers[0].Latitude.ToString + '; ' + TMSFNCGoogleMaps1.Markers[0].Longitude.ToString;
end;

procedure TForm2.InitCountries;
var
  eu, asia, na, sa, oc, af: TTMSFNCGoogleMapsCluster;
  long,lat: Double;
  title,url: string;
  m: TTMSFNCGoogleMapsMarker;
begin
  TMSFNCGoogleMaps1.BeginUpdate;

  lat := TMSFNCGoogleMaps1.Markers[0].Latitude;
  long := TMSFNCGoogleMaps1.Markers[0].Longitude;
  title := TMSFNCGoogleMaps1.Markers[0].Title;
  url := TMSFNCGoogleMaps1.Markers[0].IconURL;

  TMSFNCGoogleMaps1.Markers.Clear;

  m := TMSFNCGoogleMaps1.Markers.Add;
  m.Longitude := long;
  m.Latitude := lat;
  m.IconURL := url;
  m.Title := title;
  m.Draggable := True;

  TMSFNCGoogleMaps1.Clusters.Clear;

  eu := TMSFNCGoogleMaps1.Clusters.Add;
  eu.Title := 'Europe';
  af := TMSFNCGoogleMaps1.Clusters.Add;
  af.Title := 'Africa';
  asia := TMSFNCGoogleMaps1.Clusters.Add;
  asia.Title := 'Asia';
  na := TMSFNCGoogleMaps1.Clusters.Add;
  na.Title := 'North-America';
  sa := TMSFNCGoogleMaps1.Clusters.Add;
  sa.Title := 'South-America';
  oc := TMSFNCGoogleMaps1.Clusters.Add;
  oc.Title := 'Oceania';

  CreateCountryWithMcDonalds('American Samoa', -170.132217, -14.270972, oc, 2);
  CreateCountryWithMcDonalds('Andorra', 1.521801, 42.506285, eu, 5);
  CreateCountryWithMcDonalds('Argentina', -63.616672, -38.416097, sa, 222);
  CreateCountryWithMcDonalds('Aruba', -69.968338, 12.52111, eu, 4);
  CreateCountryWithMcDonalds('Australia', 133.775136, -25.274398, oc, 970 );
  CreateCountryWithMcDonalds('Austria', 14.550072, 47.516231, eu, 195);
  CreateCountryWithMcDonalds('Azerbaijan', 47.576927, 40.143105, asia, 15);
  CreateCountryWithMcDonalds('Bahamas', -77.39628, 25.03428, na, 3);
  CreateCountryWithMcDonalds('Bahrain', 50.5577, 26.0667, asia, 23);;
  CreateCountryWithMcDonalds('Belarus', 27.953389, 53.709807, eu, 15);
  CreateCountryWithMcDonalds('Belgium', 4.469936, 50.503887, eu, 85);
  CreateCountryWithMcDonalds('Bosnia and Herzegovina', 17.679076, 43.915886, eu, 4);
  CreateCountryWithMcDonalds('Brazil', -51.92528, -14.235004, sa, 1000);
  CreateCountryWithMcDonalds('Brunei Darussalam', 114.727669, 4.535277, asia, 3);
  CreateCountryWithMcDonalds('Bulgaria', 25.48583, 42.733883, eu, 35);
  CreateCountryWithMcDonalds('Canada', -106.346771, 56.130366, na, 1450);
  CreateCountryWithMcDonalds('Chile', -71.542969, -35.675147, sa, 77);
  CreateCountryWithMcDonalds('China', 104.195397, 35.86166, asia, 2700);
  CreateCountryWithMcDonalds('Colombia', -74.297333, 4.570868, sa, 81);
  CreateCountryWithMcDonalds('Costa Rica', -83.753428, 9.748917, na, 54);
  CreateCountryWithMcDonalds('Croatia', 15.2000001, 45.1, eu, 35);
  CreateCountryWithMcDonalds('Cuba', -77.781167, 21.521757, na, 1);
  CreateCountryWithMcDonalds('Cyprus', 33.429859, 35.126413, eu, 18);
  CreateCountryWithMcDonalds('Czech Republic', 15.472962, 49.817492, eu, 101);
  CreateCountryWithMcDonalds('Denmark', 9.501785, 56.26392, eu, 89);
  CreateCountryWithMcDonalds('Dominican Republic', -70.162651, 18.735693, na, 31);
  CreateCountryWithMcDonalds('Ecuador', -78.183406, -1.831239, sa, 30);
  CreateCountryWithMcDonalds('Egypt', 30.802498, 26.820553, af, 114);
  CreateCountryWithMcDonalds('El Salvador', -88.89653, 13.794185, na, 19);
  CreateCountryWithMcDonalds('Estonia', 25.0136071, 58.595272, eu, 10);
  CreateCountryWithMcDonalds('Fiji', 178.065032, -17.713371, oc, 4);
  CreateCountryWithMcDonalds('Finland', 17.0935381, 64.6329775, eu, 65);
  CreateCountryWithMcDonalds('France', 2.213749, 46.227638, eu, 1419);
  CreateCountryWithMcDonalds('Georgia', 44.8267208, 41.7164744, eu, 16);
  CreateCountryWithMcDonalds('Germany', 10.451526, 51.165691, eu, 1472);
  CreateCountryWithMcDonalds('Gibraltar', -5.353585, 36.140751, eu, 1);
  CreateCountryWithMcDonalds('Greece', 21.824312, 39.074208, eu, 25);
  CreateCountryWithMcDonalds('Guam', 144.793731, 13.444304, na, 6);
  CreateCountryWithMcDonalds('Guatemala', -90.230759, 15.783471, na, 95);
  CreateCountryWithMcDonalds('Honduras', -86.241905, 15.199999, na, 10);
  CreateCountryWithMcDonalds('Hong Kong, SAR China', 114.1693611, 22.3193039, asia, 237);
  CreateCountryWithMcDonalds('Hungary', 19.5033041, 47.162494, eu, 92);
  CreateCountryWithMcDonalds('India', 78.96288, 20.593684, asia, 400);
  CreateCountryWithMcDonalds('Indonesia', 113.921327, -0.789275, asia, 224);
  CreateCountryWithMcDonalds('Iraq', 43.679291, 33.223191, asia, 1);
  CreateCountryWithMcDonalds('Ireland', -7.6920536, 53.1423672, eu, 89);
  CreateCountryWithMcDonalds('Isle of Man', -4.548056, 54.236107, eu, 1);
  CreateCountryWithMcDonalds('Israel', 34.851612, 31.046051, asia, 185);
  CreateCountryWithMcDonalds('Italy', 12.56738, 41.87194, eu, 598);
  CreateCountryWithMcDonalds('Japan', 138.252924, 36.204824, asia, 2975 );
  CreateCountryWithMcDonalds('Jordan', 36.238414, 30.585164, asia, 31);
  CreateCountryWithMcDonalds('Kazakhstan', 66.923684, 48.019573, eu, 16);
  CreateCountryWithMcDonalds('Kuwait', 47.481766, 29.31166, asia, 77);
  CreateCountryWithMcDonalds('Latvia', 24.603189, 56.879635, eu, 13);
  CreateCountryWithMcDonalds('Lebanon', 35.862285, 33.854721, asia, 23);
  CreateCountryWithMcDonalds('Liechtenstein', 9.555373, 47.166, eu, 1);
  CreateCountryWithMcDonalds('Lithuania', 23.881275, 55.169438, eu, 16);
  CreateCountryWithMcDonalds('Luxembourg', 6.129583, 49.815273, eu, 10);
  CreateCountryWithMcDonalds('Macao, SAR China', 113.543873, 22.198745, asia, 27);
  CreateCountryWithMcDonalds('Malaysia', 101.975766, 4.210484, asia, 282);
  CreateCountryWithMcDonalds('Malta', 14.375416, 35.937496, eu, 9);
  CreateCountryWithMcDonalds('Martinique', -61.024174, 14.641528, eu, 9);
  CreateCountryWithMcDonalds('Mauritius', 57.552152, -20.348404, af, 8);
  CreateCountryWithMcDonalds('Mexico', -102.552784, 23.634501, na, 402);
  CreateCountryWithMcDonalds('Moldova', 28.369885, 47.411631, eu, 5);
  CreateCountryWithMcDonalds('Monaco', 7.4246158, 43.7384176, eu, 2);
  CreateCountryWithMcDonalds('Morocco', -7.09262, 31.791702, af, 52);
  CreateCountryWithMcDonalds('Netherlands', 5.291266, 52.132633, eu, 254);
  CreateCountryWithMcDonalds('New Zealand', 174.885971, -40.900557, oc, 166);
  CreateCountryWithMcDonalds('Nicaragua', -85.207229, 12.865416, na, 6);
  CreateCountryWithMcDonalds('Northern Mariana Islands', 145.6739, 15.0979, na, 2);
  CreateCountryWithMcDonalds('Norway', 8.468946, 60.472024, eu, 71);
  CreateCountryWithMcDonalds('Oman', 55.975413, 21.4735329, asia, 24);
  CreateCountryWithMcDonalds('Pakistan', 69.345116, 30.375321, asia, 71);
  CreateCountryWithMcDonalds('Panama', -80.782127, 8.537981, na, 57);
  CreateCountryWithMcDonalds('Paraguay', -58.443832, -23.442503, sa, 19);
  CreateCountryWithMcDonalds('Peru', -75.015152, -9.189967, sa, 40);
  CreateCountryWithMcDonalds('Philippines', 121.774017, 12.879721, asia, 668);
  CreateCountryWithMcDonalds('Poland', 19.145136, 51.919438, eu, 445);
  CreateCountryWithMcDonalds('Portugal', -8.224454, 39.399872, eu, 175);
  CreateCountryWithMcDonalds('Puerto Rico', -66.590149, 18.220833, na, 108);
  CreateCountryWithMcDonalds('Qatar', 51.183884, 25.354826, asia, 46);
  CreateCountryWithMcDonalds('Romania', 24.96676, 45.943161, eu, 84);
  CreateCountryWithMcDonalds('Russian Federation', 105.318756, 61.52401, asia, 755);
  CreateCountryWithMcDonalds('Samoa', -172.104629, -13.759029, oc, 1);
  CreateCountryWithMcDonalds('Saudi Arabia', 45.079162, 23.885942, asia, 304);
  CreateCountryWithMcDonalds('Serbia', 21.005859, 44.016521, eu, 30);
  CreateCountryWithMcDonalds('Singapore', 103.819836, 1.352083, asia, 136);
  CreateCountryWithMcDonalds('Slovakia', 19.3228694, 48.5164958, eu, 30);
  CreateCountryWithMcDonalds('Slovenia', 14.995463, 46.151241, eu, 20);
  CreateCountryWithMcDonalds('South Africa', 22.937506, -30.559482, af, 275);
  CreateCountryWithMcDonalds('South Korea', 127.7319027, 35.9078214, asia, 447);
  CreateCountryWithMcDonalds('Spain', -3.74922, 40.463667, eu, 520);
  CreateCountryWithMcDonalds('Sri Lanka', 80.771797, 7.873054, asia, 7);
  CreateCountryWithMcDonalds('Suriname', -56.027783, 3.919305, sa, 2);
  CreateCountryWithMcDonalds('Sweden', 18.643501, 60.128161, eu, 191);
  CreateCountryWithMcDonalds('Switzerland', 8.227512, 46.818188, eu, 167);
  CreateCountryWithMcDonalds('Taiwan, Republic of China', 120.960515, 23.69781, asia, 413);
  CreateCountryWithMcDonalds('Thailand', 100.992541, 15.870032, asia, 240);
  CreateCountryWithMcDonalds('Trinidad and Tobago', -61.222503, 10.691803, sa, 6);
  CreateCountryWithMcDonalds('Turkey', 35.243322, 38.963745, asia, 253);
  CreateCountryWithMcDonalds('Ukraine', 31.1655799, 48.379433, eu, 93);
  CreateCountryWithMcDonalds('United Arab Emirates', 53.847818, 23.424076, asia, 172);
  CreateCountryWithMcDonalds('United Kingdom', -3.435973, 55.378051, eu, 1274);
  CreateCountryWithMcDonalds('United States of America', -95.712891, 37.09024, na, 14146 );
  CreateCountryWithMcDonalds('Uruguay', -55.765835, -32.522779, sa, 21);
  CreateCountryWithMcDonalds('Venezuela (Bolivarian Republic)', -66.58973, 6.42375, sa, 133);
  CreateCountryWithMcDonalds('Viet Nam', 108.277199, 14.058324, asia, 22);

  TMSFNCGoogleMaps1.EndUpdate;
end;

end.
