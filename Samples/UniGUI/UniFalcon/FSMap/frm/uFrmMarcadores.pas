unit uFrmMarcadores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, Data.DB, uniButton, uniBitBtn, UniFSButton,
  uniBasicGrid, uniDBGrid, uniPanel, uniGUIBaseClasses, uniHTMLFrame, UniFSMap,
  Datasnap.DBClient;

type
  TfrmMarcadores = class(TUniFrame)
    CDS: TClientDataSet;
    strngfldCDSLat: TStringField;
    map: TUniFSMap;
    pnlControle: TUniPanel;
    dbgPolygon: TUniDBGrid;
    pnl1: TUniPanel;
    btnCriaMarcadores: TUniFSButton;
    intgrfldCDSid: TIntegerField;
    strngfldCDSLongitude: TStringField;
    DS: TDataSource;
    strngfldCDSNome: TStringField;
    dtfldCDSCriacao: TDateField;
    procedure UniFrameCreate(Sender: TObject);
    procedure btnCriaMarcadoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  ServerModule;

{$R *.dfm}

procedure TfrmMarcadores.btnCriaMarcadoresClick(Sender: TObject);
var
  Marker: TMarkerWithLabel;
begin
  map.DeleteAllMarkerWithLabel;

  CDS.First;
  while not CDS.Eof do
  begin
    Marker := TMarkerWithLabel.Create;
    Marker.Id := CDS.FieldByName('id').AsString;
    Marker.Lat := CDS.FieldByName('Latitude').AsString;
    Marker.Lng := CDS.FieldByName('Longitude').AsString;
    Marker.Animation := TMarkerAnimation.DROP;
    Marker.IconUrl := 'http://maps.google.com/mapfiles/ms/micons/police.png';// Opcional
    Marker.InfoWindow :=
      '''' +
      '<b>Nome</b>: '+CDS.FieldByName('Nome').AsString+' </br> '+
      '<b>Criação</b>: '+CDS.FieldByName('Criacao').AsString+' '+
      '''';
    map.AddMarkerWithLabel(Marker);

    CDS.Next;
  end;

  map.SetFitBoundsAll;
end;

procedure TfrmMarcadores.UniFrameCreate(Sender: TObject);
begin
  Self.Align := alClient;

  CDS.CreateDataSet;
  CDS.AppendRecord([11866,'Bruno Oliveira',StrToDate('18/07/2019'),'-19.9850748','-44.0553052']);
  CDS.AppendRecord([11869,'Bruno Oliveira',StrToDate('18/07/2019'),'-19.8848709','-44.0418228']);
  CDS.AppendRecord([11870,'Bruno Oliveira',StrToDate('19/07/2019'),'-19.8848721','-44.0418186']);
  CDS.AppendRecord([11873,'Bruno Oliveira',StrToDate('19/07/2019'),'-19.9787809','-44.0791771']);
  CDS.AppendRecord([11885,'Altair da Costa',StrToDate('19/07/2019'),'-19.9793513','-44.0788596']);
  CDS.AppendRecord([11900,'Altair da Costa',StrToDate('19/07/2019'),'-19.9056663','-44.0001509']);
  CDS.AppendRecord([11904,'Altair da Costa',StrToDate('19/07/2019'),'-19.9056560','-44.0001308']);
  CDS.AppendRecord([11918,'Altair da Costa',StrToDate('20/07/2019'),'-19.9849159','-44.0587335']);
  CDS.AppendRecord([11932,'Fulano da Silva',StrToDate('22/07/2019'),'-19.9056697','-44.0001495']);
  CDS.AppendRecord([11933,'Fulano da Silva',StrToDate('22/07/2019'),'-19.9795479','-44.0787537']);
  CDS.AppendRecord([11942,'Fulano da Silva',StrToDate('22/07/2019'),'-19.9851098','-44.0553296']);
  CDS.AppendRecord([11943,'Fulano da Silva',StrToDate('22/07/2019'),'-19.8848521','-44.0418209']);
  CDS.AppendRecord([11950,'Jose de Abreu',StrToDate('22/07/2019'),'-19.97991','-44.0785671']);
  CDS.AppendRecord([11954,'Jose de Abreu',StrToDate('23/07/2019'),'-19.979639','-44.0786816']);
  CDS.AppendRecord([11959,'Jose de Abreue',StrToDate('19/07/2019'),'-19.8854507','-44.01715189']);
  CDS.AppendRecord([11975,'Jose de Abreu',StrToDate('23/07/2019'),'-20.0129886','-44.0928597']);
  CDS.AppendRecord([11983,'Fabiano da Silva Sauro',StrToDate('23/07/2019'),'-19.9056636','-44.0001037']);
  CDS.AppendRecord([12001,'Fabiano da Silva Sauro',StrToDate('24/07/2019'),'-19.9055996','-43.9999485']);
  CDS.AppendRecord([12015,'Fabiano da Silva Sauro',StrToDate('24/07/2019'),'-19.7905738','-43.9728448']);
  CDS.AppendRecord([12016,'Fabiano da Silva Sauro',StrToDate('25/07/2019'),'-19.7906108','-43.9728585']);
  CDS.AppendRecord([12020,'Cleber dos Santos',StrToDate('25/07/2019'),'-19.6473203','-43.9055293']);
  CDS.AppendRecord([12021,'Cleber dos Santos',StrToDate('23/07/2019'),'-19.9751501','-44.0477894']);
  CDS.AppendRecord([12024,'Cleber dos Santos',StrToDate('25/07/2019'),'-19.821231','-43.9968965']);
  CDS.AppendRecord([12028,'Jonathan Rorigues',StrToDate('25/07/2019'),'-19.9607604','-44.0464571']);
  CDS.AppendRecord([12029,'Jonathan Rorigues',StrToDate('25/07/2019'),'-19.9607561','-44.0464459']);
  CDS.AppendRecord([12051,'Fabiano da Silva Sauro',StrToDate('25/07/2019'),'-19.4864739','-44.1366525']);
  CDS.Open;

  map.APIKeys := UniServerModule.APIKeys;
  map.InitMap;
end;

initialization
  RegisterClass(TfrmMarcadores);

{ Marker Icons

POI.png
POI.shadow.png
arts.png
arts.shadow.png
bar.png
bar.shadow.png
blue-dot.png
blue-pushpin.png
blue.png
bus.png
bus.shadow.png
cabs.png
cabs.shadow.png
camera.png
camera.shadow.png
campfire.png
campfire.shadow.png
campground.png
campground.shadow.png
caution.png
caution.shadow.png
coffeehouse.png
coffeehouse.shadow.png
convienancestore.png
convienancestore.shadow.png
cycling.png
cycling.shadow.png
dollar.png
dollar.shadow.png
drinking_water.png
drinking_water.shadow.png
earthquake.png
earthquake.shadow.png
electronics.png
electronics.shadow.png
euro.png
euro.shadow.png
fallingrocks.png
fallingrocks.shadow.png
ferry.png
ferry.shadow.png
firedept.png
firedept.shadow.png
fishing.png
fishing.shadow.png
flag.png
flag.shadow.png
gas.png
gas.shadow.png
golfer.png
golfer.shadow.png
green-dot.png
green.png
grn-pushpin.png
grocerystore.png
grocerystore.shadow.png
groecerystore.png
groecerystore.shadow.png
helicopter.png
helicopter.shadow.png
hiker.png
hiker.shadow.png
homegardenbusiness.png
homegardenbusiness.shadow.png
horsebackriding.png
horsebackriding.shadow.png
hospitals.png
hospitals.shadow.png
hotsprings.png
hotsprings.shadow.png
info.png
info.shadow.png
info_circle.png
info_circle.shadow.png
landmarks-jp.png
landmarks-jp.shadow.png
lightblue.png
lodging.png
lodging.shadow.png
ltblu-pushpin.png
ltblue-dot.png
man.png
man.shadow.png
marina.png
marina.shadow.png
mechanic.png
mechanic.shadow.png
motorcycling.png
motorcycling.shadow.png
movies.png
movies.shadow.png
msmarker.shadow.png
orange-dot.png
orange.png
parkinglot.png
parkinglot.shadow.png
partly_cloudy.png
partly_cloudy.shadow.png
pharmacy-us.png
pharmacy-us.shadow.png
phone.png
phone.shadow.png
picnic.png
picnic.shadow.png
pink-dot.png
pink-pushpin.png
pink.png
plane.png
plane.shadow.png
police.png
police.shadow.png
postoffice-jp.png
postoffice-jp.shadow.png
postoffice-us.png
postoffice-us.shadow.png
purple-dot.png
purple-pushpin.png
purple.png
pushpin_shadow.png
question.png
question.shadow.png
rail.png
rail.shadow.png
rainy.png
rainy.shadow.png
rangerstation.png
rangerstation.shadow.png
realestate.png
realestate.shadow.png
recycle.png
recycle.shadow.png
red-dot.png
red-pushpin.png
red.png
restaurant.png
restaurant.shadow.png
sailing.png
sailing.shadow.png
salon.png
salon.shadow.png
shopping.png
shopping.shadow.png
ski.png
ski.shadow.png
snack_bar.png
snack_bar.shadow.png
snowflake_simple.png
snowflake_simple.shadow.png
sportvenue.png
sportvenue.shadow.png
subway.png
subway.shadow.png
sunny.png
sunny.shadow.png
swimming.png
swimming.shadow.png
toilets.png
toilets.shadow.png
trail.png
trail.shadow.png
tram.png
tram.shadow.png
tree.png
tree.shadow.png
truck.png
truck.shadow.png
volcano.png
volcano.shadow.png
water.png
water.shadow.png
waterfalls.png
waterfalls.shadow.png
webcam.png
webcam.shadow.png
wheel_chair_accessible.png
wheel_chair_accessible.shadow.png
woman.png
woman.shadow.png
yellow-dot.png
yellow.png
yen.png
yen.shadow.png
ylw-pushpin.png
}

end.
