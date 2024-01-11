//Google Maps = Miscellaneous
unit MiscellaneousGoogleMaps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniHTMLFrame, unimHTMLFrame,
  uniGUIBaseClasses, uniGUImJSForm, unimSegmentedButton, uniToolBar,
  unimToolbar, uniTimer, unimTimer, uniTrackBar, unimSlider, uniMultiItem,
  unimSelect, DB, DBClient;

type
  TUniMiscellaneousGoogleMaps = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimHTMLFrame1: TUnimHTMLFrame;
    UnimSelect1: TUnimSelect;
    UnimToolBar1: TUnimToolBar;
    UnimToolButton2: TUnimToolButton;
    UnimToolButton1: TUnimToolButton;
    UnimSegmentedButton1: TUnimSegmentedButton;
    UnimSlider1: TUnimSlider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1City: TStringField;
    ClientDataSet1Longitude: TFloatField;
    ClientDataSet1latitude: TFloatField;
    UnimTimer1: TUnimTimer;
    procedure UniFrameCreate(Sender: TObject);
    procedure UnimTimer1Timer(Sender: TObject);
    procedure UnimHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UnimSelect1Change(Sender: TObject);
  private
    FInited : Boolean;
    procedure Center(City: string);
    procedure SetCoord(Lat, Long : Real);
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



{ TUniHTMLFramemForm }

procedure TUniMiscellaneousGoogleMaps.Center(City: string);
begin
    if ClientDataSet1.Locate('City', City, [loCaseInsensitive]) then
    SetCoord(ClientDataSet1.FieldByName('Latitude').AsFloat, ClientDataSet1.FieldByName('Longitude').AsFloat);
end;

procedure TUniMiscellaneousGoogleMaps.SetCoord(Lat, Long: Real);
begin
  UniSession.AddJS('var gm=googleMap;if (typeof gm=="object") {gm.setCenter(new google.maps.LatLng('+
                      StringReplace(Format('%2.4f', [Lat]), ',', '.', [rfReplaceAll])+','+
                      StringReplace(Format('%2.4f', [Long]), ',', '.', [rfReplaceAll])+
                    ')); gm.setZoom(8);}');
end;

procedure TUniMiscellaneousGoogleMaps.UniFrameCreate(Sender: TObject);
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
  end;

  UnimSelect1.Items.Clear;
  ClientDataSet1.First;
  while not ClientDataSet1.Eof do
  begin
    UnimSelect1.Items.Add(ClientDataSet1.FieldByName('City').AsString);
    ClientDataSet1.Next;
  end;


end;

procedure TUniMiscellaneousGoogleMaps.UnimHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
 if SameText(EventName, 'loaded') then
  begin
    if not FInited then
    begin
      FInited:=True;
      Center('Ankara');
      UnimTimer1.Enabled := True;  // make sure first city is centered after browser is fully resized and ready (needed on Safari)
      UnimSelect1.Text := 'Ankara';
    end;
  end;
end;

procedure TUniMiscellaneousGoogleMaps.UnimSelect1Change(Sender: TObject);
var
  S : string;
begin
  S := UnimSelect1.Text;
  if ClientDataSet1.Locate('City', S, [loCaseInsensitive]) then
    SetCoord(ClientDataSet1.FieldByName('Latitude').AsFloat, ClientDataSet1.FieldByName('Longitude').AsFloat);
end;

procedure TUniMiscellaneousGoogleMaps.UnimTimer1Timer(Sender: TObject);
begin
  Center('Ankara');
end;

initialization
  RegisterClass(TUniMiscellaneousGoogleMaps);

end.
