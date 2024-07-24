unit uFrmPolygon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniPanel, uniHTMLFrame, UniFSMap, UnimFSMap, Data.DB,
  Datasnap.DBClient, uniButton, uniBitBtn, unimBitBtn;

type
  TfrmPolygon = class(TUnimForm)
    map: TUnimFSMap;
    CDSPolygon: TClientDataSet;
    btnCriarPolygon: TUnimBitBtn;
    procedure UnimFormCreate(Sender: TObject);
    procedure btnCriarPolygonClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
    function GetInfoWindow(IdPolygon: Integer): string;
  public
    { Public declarations }
  end;

function frmPolygon: TfrmPolygon;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function frmPolygon: TfrmPolygon;
begin
  Result := TfrmPolygon(UniMainModule.GetFormInstance(TfrmPolygon));
end;

procedure TfrmPolygon.btnCriarPolygonClick(Sender: TObject);
var
  Polygon: TPolygon;
begin
  map.DeleteAllPolygon;

  CDSPolygon.First;
  while not CDSPolygon.Eof do
  begin
    Polygon := TPolygon.Create;
    Polygon.Paths := CDSPolygon.FieldByName('Paths').AsString;
    Polygon.StrokeColor := CDSPolygon.FieldByName('Color').AsString;
    Polygon.strokeOpacity := '0.8';
    Polygon.strokeWeight := 2;
    Polygon.fillColor := CDSPolygon.FieldByName('Color').AsString;
    Polygon.fillOpacity := '0.35';
    Polygon.InfoWindow := GetInfoWindow(CDSPolygon.FieldByName('IdPolygon').AsInteger);
    map.AddPolygon(Polygon);

    CDSPolygon.Next;
  end;

  map.SetFitBoundsPolygon;
end;

function TfrmPolygon.GetInfoWindow(IdPolygon: Integer): string;
begin
  Result :=
  '''' +

  '<div>' +
    '<p>Polygon with InfoWindow Powered by UniGui</p>' +
    '<p>Polygon '+IdPolygon.ToString+' '+
    '<div>' +
      '<div>About</div>' +
      '<p>www.falconsistemas.com.br</p>'+
    '</div>' +
  '</div>'+

  '''';
end;

procedure TfrmPolygon.LoadData;
begin
  with CDSPolygon do
  begin
    Close;
    FieldDefs.Clear;
    FieldDefs.Add('IdPolygon', ftInteger);
    FieldDefs.Add('Paths', ftString,1000);
    FieldDefs.Add('Color', ftString, 50);

    CreateDataSet;
    AppendRecord([1, '{lat: 37.42348, lng: -122.08673},{lat: 37.42498, lng: -122.086344},{lat: 37.425798, lng: -122.086859},'+
                     '{lat: 37.426837, lng: -122.086966},{lat: 37.427348, lng: -122.086966},{lat: 37.427774, lng: -122.086859},'+
                     '{lat: 37.428337, lng: -122.086794},{lat: 37.428712, lng: -122.08688},{lat: 37.428524, lng: -122.078018},'+
                     '{lat: 37.423344, lng: -122.077932},{lat: 37.423276, lng: -122.080593},{lat: 37.423139, lng: -122.083426},'+
                     '{lat: 37.423344, lng: -122.0854},{lat: 37.42348, lng: -122.08673} ',
                     '#426AE1']);

    AppendRecord([2, '{lat: 37.423378, lng: -122.077975} , {lat: 37.42331, lng: -122.080529} , {lat: 37.423191, lng: -122.082717} , '+
                     '{lat: 37.423395, lng: -122.085786} , {lat: 37.42348, lng: -122.086902} , {lat: 37.423855, lng: -122.089562} , '+
                     '{lat: 37.423855, lng: -122.090034} , {lat: 37.422526, lng: -122.089562} , {lat: 37.421265, lng: -122.088404} , '+
                     '{lat: 37.420992, lng: -122.08673} , {lat: 37.420549, lng: -122.079606} , {lat: 37.420481, lng: -122.077889} ',
                     '#1C9957']);

    AppendRecord([3, '{lat: 37.428695, lng: -122.086773} , {lat: 37.43033, lng: -122.086773} , {lat: 37.432051, lng: -122.08658} , '+
                     '{lat: 37.43321, lng: -122.086558} , {lat: 37.4343, lng: -122.086022} , {lat: 37.435152, lng: -122.085378} , '+
                     '{lat: 37.43488, lng: -122.084241} , {lat: 37.436107, lng: -122.072504} , {lat: 37.436021, lng: -122.071774} , '+
                     '{lat: 37.43534, lng: -122.071431} , {lat: 37.431148, lng: -122.069972} , {lat: 37.430569, lng: -122.069306} , '+
                     '{lat: 37.429768, lng: -122.069199} , {lat: 37.428422, lng: -122.069306}  ',
                     '#FAB92A']);

    AppendRecord([4, '{lat: 37.42849, lng: -122.07819} , {lat: 37.42849, lng: -122.068491} , {lat: 37.424026, lng: -122.068491} , '+
                     '{lat: 37.413664, lng: -122.068577} , {lat: 37.409233, lng: -122.069263} , {lat: 37.40873, lng: -122.069081} , '+
                     '{lat: 37.408858, lng: -122.069736} , {lat: 37.409224, lng: -122.070154} , {lat: 37.409735, lng: -122.070851} , '+
                     '{lat: 37.41075, lng: -122.074016} , {lat: 37.411235, lng: -122.075336} , {lat: 37.411687, lng: -122.076677} , '+
                     '{lat: 37.412079, lng: -122.077975} , {lat: 37.420481, lng: -122.077889} ',
                     '#D95D55']);
  end;
end;

procedure TfrmPolygon.UnimFormCreate(Sender: TObject);
begin
  LoadData;

  map.InitMap;
end;

initialization
  RegisterClass(TfrmPolygon);

end.
