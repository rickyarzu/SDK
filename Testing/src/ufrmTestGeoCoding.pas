unit ufrmTestGeoCoding;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UWebGMapsCommon, UWebGMaps, AdvMemo, advmjson,
  Janua.Core.Classes, Janua.Core.Cloud, Data.DB, DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.Mask,
  Vcl.DBCtrls, UWebGMapsGeocoding;

type
  TForm8 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    WebGMaps1: TWebGMaps;
    JanuaStreetMap1: TJanuaStreetMap;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    PgConnection1: TJanuaUniConnection;
    PgQuery1: TUniQuery;
    CRDBGrid1: TCRDBGrid;
    PgDataSource1: TUniDataSource;
    PgQuery1anagraph_id: TIntegerField;
    PgQuery1address: TWideStringField;
    PgQuery1latitude: TFloatField;
    PgQuery1longitude: TFloatField;
    PgQuery1an_last_name: TStringField;
    DBEdit1: TDBEdit;
    PgQuery1bigaddress: TWideStringField;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fLatitude: Double;
    fLongitude: Double;
    FName: string;
    FAddress: string;
    FPostalCode: string;
    FTown: String;

  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  PgQuery1.Open;

  self.JanuaStreetMap1.Address := self.Edit1.Text;
  if self.JanuaStreetMap1.GetCoordinates then
  begin
    FName := self.Edit1.Text;
    fLatitude := JanuaStreetMap1.Coordinates.Latitude;
    fLongitude := JanuaStreetMap1.Coordinates.Longitude;
  end;

  if self.WebGMaps1.Launch then
  begin
    WebGMaps1.Markers.Clear;
    WebGMaps1.MapOptions.DefaultLatitude := self.fLatitude;
    WebGMaps1.MapOptions.DefaultLongitude := self.fLongitude;
    WebGMaps1.Markers.Add(fLatitude, fLongitude, FName, '', false, true, false, false, true, 0);
    WebGMaps1.MapPanTo(fLatitude, fLongitude);
  end;

  self.PgQuery1.First;
  while not self.PgQuery1.Eof do
  begin

    self.JanuaStreetMap1.Address := self.PgQuery1address.AsWideString;
    if self.PgQuery1latitude.AsFloat = 0 then
      if self.JanuaStreetMap1.GetCoordinates then
      begin
        FName := PgQuery1.FieldByName('an_last_name').AsWideString;
        fLatitude := JanuaStreetMap1.Coordinates.Latitude;
        fLongitude := JanuaStreetMap1.Coordinates.Longitude;

        self.PgQuery1.Edit;
        self.PgQuery1latitude.AsFloat := fLatitude;
        self.PgQuery1longitude.AsFloat := fLongitude;
        self.PgQuery1.Post;
      end
      else
      begin
        self.WebGMapsGeocoding1.Address := self.PgQuery1address.AsWideString;
        self.WebGMapsGeocoding1.LaunchGeocoding;
        if WebGMapsGeocoding1.ResultLatitude > 0 then
        begin
          self.PgQuery1.Edit;
          self.PgQuery1latitude.AsFloat := WebGMapsGeocoding1.ResultLatitude;
          self.PgQuery1longitude.AsFloat := WebGMapsGeocoding1.ResultLongitude;
          self.PgQuery1.Post;
        end;
      end;
    FName := self.PgQuery1an_last_name.AsWideString + ' ' + self.PgQuery1address.AsWideString;

    if PgQuery1longitude.AsFloat > 0 then
      WebGMaps1.Markers.Add(PgQuery1latitude.AsFloat, PgQuery1longitude.AsFloat, FName, '', false, true, false,
        false, true, 0);
    self.PgQuery1.Next
  end;

  self.JanuaStreetMap1.Address := self.Edit1.Text;
  self.JanuaStreetMap1.GetCoordinates;
    FName := self.Edit1.Text;
    fLatitude := JanuaStreetMap1.Coordinates.Latitude;
    fLongitude := JanuaStreetMap1.Coordinates.Longitude;

    WebGMaps1.MapOptions.DefaultLatitude := self.fLatitude;
  WebGMaps1.MapOptions.DefaultLongitude := self.fLongitude;
  WebGMaps1.Markers.Add(fLatitude, fLongitude, FName, '', false, true, false, false, true, 0);
  WebGMaps1.MapPanTo(fLatitude, fLongitude);

  WebGMaps1.MapOptions.DefaultLatitude := self.fLatitude;
  WebGMaps1.MapOptions.DefaultLongitude := self.fLongitude;
  WebGMaps1.Markers.Add(fLatitude, fLongitude, FName, '', false, true, false, false, true, 0);
  WebGMaps1.MapPanTo(fLatitude, fLongitude);

end;

end.
