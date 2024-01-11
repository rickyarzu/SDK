// Google Maps = Miscellaneous
unit MiscellaneousGoogleMaps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, DB, DBClient, uniLabel,
  uniBasicGrid, uniDBGrid, uniSpeedButton, uniSpinEdit, uniTrackBar, uniButton,
  uniBitBtn, uniPanel, uniGUIBaseClasses, uniHTMLFrame, uniTimer,
  uniSegmentedButton;

type
  TUniMiscellaneousGoogleMaps = class(TUniFrame)
    UniHTMLFrame1: TUniHTMLFrame;
    UniPanel1: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniTrackBar1: TUniTrackBar;
    UniSpinEdit1: TUniSpinEdit;
    UniDBGrid1: TUniDBGrid;
    UniLabel1: TUniLabel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1City: TStringField;
    ClientDataSet1Longitude: TFloatField;
    ClientDataSet1latitude: TFloatField;
    DataSource1: TDataSource;
    UniTimer1: TUniTimer;
    UniSegmentedButton1: TUniSegmentedButton;
    procedure UniFrameCreate(Sender: TObject);
    procedure ClientDataSet1AfterScroll(DataSet: TDataSet);
    procedure UniHTMLFrame1AjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure UniTimer1Timer(Sender: TObject);
  private
    { Private declarations }
    FFirst, DataCreated : Boolean;
    procedure SetCoord(Lat, Long : Real);
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TUniMiscellaneousGoogleMaps.UniFrameCreate(Sender: TObject);
begin
  FFirst := True;
  with ClientDataSet1 do
  begin
    Append;
    FieldByName('City').AsString:='Ankara';
    FieldByName('Latitude').AsFloat:=39.9333;
    FieldByName('Longitude').AsFloat:=32.8667;
    Post;
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

    DataCreated := True;
  end;
end;

procedure TUniMiscellaneousGoogleMaps.UniHTMLFrame1AjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
  if EventName='mapClick' then
  begin
    UniLabel1.Caption:='Latitude: '+Params.Values['lat']+',  Longitude: '+Params.Values['lng'];
  end;
end;

procedure TUniMiscellaneousGoogleMaps.UniTimer1Timer(Sender: TObject);
begin
  if FFirst then
  begin
    ClientDataSet1.First;
    FFirst := False;
  end;
end;

procedure TUniMiscellaneousGoogleMaps.ClientDataSet1AfterScroll(DataSet: TDataSet);
begin
  if DataCreated then
    SetCoord(DataSet.FieldByName('Latitude').AsFloat, DataSet.FieldByName('Longitude').AsFloat);
end;

procedure TUniMiscellaneousGoogleMaps.SetCoord(Lat, Long : Real);
begin
  if WebMode then
    UniSession.AddJS('var gm=googleMap;if (typeof gm=="object") {gm.setCenter(new google.maps.LatLng('+
                        StringReplace(Format('%2.4f', [Lat]), ',', '.', [rfReplaceAll])+','+
                        StringReplace(Format('%2.4f', [Long]), ',', '.', [rfReplaceAll])+
                      ')); gm.setZoom(8);}');
end;

initialization
  RegisterClass(TUniMiscellaneousGoogleMaps);

end.
