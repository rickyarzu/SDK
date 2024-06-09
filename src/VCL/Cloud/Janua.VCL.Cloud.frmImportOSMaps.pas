unit Janua.VCL.Cloud.frmImportOSMaps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Janua.core.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Janua.core.Functions, AdvMemo, Advmxml, Vcl.ComCtrls, Data.DB,
  MemDS, VirtualTable, Vcl.Grids, Vcl.DBGrids, CRGrid, Vcl.DBCtrls, DBAccess, Uni, Janua.Vcl.EnhCRDBGrid,
  UniProvider, PostgreSQLUniProvider, Janua.Unidac.Connection;

type
  TfrmVCLImportOSMaps = class(TForm)
    AdvXMLMemoStyler1: TAdvXMLMemoStyler;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Button1: TButton;
    VirtualTable1: TVirtualTable;
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    PageControl2: TPageControl;
    Tabella: TTabSheet;
    TabSheet3: TTabSheet;
    CRDBGrid1: TCRDBGrid;
    DBMemo1: TDBMemo;
    AdvMemo2: TAdvMemo;
    PgConnection1: TJanuaUniConnection;
    PgTable1: TUniTable;
    Button4: TButton;
    PgTable1id: TLargeintField;
    PgTable1name: TStringField;
    PgTable1visible: TBooleanField;
    PgTable1creation: TDateTimeField;
    PgTable1uid: TLargeintField;
    PgTable1lat: TFloatField;
    PgTable1lon: TFloatField;
    PgTable1distance: TFloatField;
    PgTable1mapgroup: TStringField;
    PgTable1address: TStringField;
    PgTable1description: TStringField;
    PgTable1brand: TStringField;
    PgTable1mapoperator: TStringField;
    PgTable1phone: TStringField;
    PgTable1website: TStringField;
    PgTable1email: TStringField;
    PgTable1fax: TStringField;
    PgTable1addressfull: TStringField;
    PgTable1addr_city: TStringField;
    PgTable1addr_number: TStringField;
    PgTable1addr_street: TStringField;
    PgTable1addr_postcode: TStringField;
    PgTable1tags: TWideStringField;
    PgTable1version: TSmallintField;
    PgTable1cuisine: TStringField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    PostgreSQLUniProvider1: TPostgreSQLUniProvider;
    PgTable1public_transport: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLImportOSMaps: TfrmVCLImportOSMaps;

const
  XMLString = '<?xml version="1.0" encoding="UTF-8"?>' +
    '<osm version="0.6" generator="CGImap 0.6.0 (28325 thorn-03.openstreetmap.org)" copyright="OpenStreetMap and contributors" attribution="http://www.openstreetmap.org/copyright" license="http://opendatacommons.org/licenses/odbl/1-0/">'
    + sLineBreak + ' <bounds minlat="44.3706000" minlon="9.0032000" maxlat="44.3985000" maxlon="9.0602000"/>' +
    sLineBreak +
    ' <node id="36316233" visible="true" version="4" changeset="7108142" timestamp="2011-01-27T21:49:38Z" user="mikelima" uid="12473" lat="44.3865436" lon="9.0186055">'
    + sLineBreak + '<tag k="highway" v="traffic_signals"/>' + sLineBreak + '</node>' + sLineBreak +
    '<node id="4006228696" visible="true" version="3" changeset="41553978" timestamp="2016-08-19T11:25:35Z" user="Alecs01" uid="1476146" lat="44.3816771" lon="9.0408117">'
    + sLineBreak + '<tag k="addr:city" v="Genova"/>' + sLineBreak + '<tag k="addr:housenumber" v="1"/>' + sLineBreak +
    '<tag k="addr:postcode" v="16167"/>' + sLineBreak + '<tag k="addr:street" v="Via Val Cismon"/>' + sLineBreak +
    '<tag k="email" v="info@hotelesperia.it"/>' + sLineBreak + '<tag k="fax" v="+39 010 3291006"/>' + sLineBreak +
    '<tag k="name" v="Hotel Esperia"/>' + sLineBreak + '<tag k="phone" v="+39 010 321777"/>' + sLineBreak +
    '<tag k="stars" v="3"/>' + sLineBreak + '<tag k="tourism" v="hotel"/>' + sLineBreak +
    '<tag k="website" v="http://www.hotelesperia.it/"/>' + sLineBreak + '</node>'
  // -----------------------------------------------------------------------------------------------------------------
    + sLineBreak +
    '<node id="227873650" visible="true" version="7" changeset="32423284" timestamp="2015-07-05T10:52:21Z" user="sabas88" uid="454589" lat="44.3930301" lon="9.0457300">'
    + sLineBreak + '<tag k="addr:full" v="Autostrada A12 GENOVA-SESTRI L., Km. 14+500, dir. Ovest"/>' + sLineBreak +
    '<tag k="amenity" v="fuel"/>' + sLineBreak + '<tag k="brand" v="Total Erg"/>' + sLineBreak +
    '<tag k="fuel:diesel" v="yes"/>' + sLineBreak + '<tag k="fuel:octane_95" v="yes"/>' + sLineBreak +
    '<tag k="name" v="Sant''Ilario Nord"/>' + sLineBreak + '<tag k="operator" v="Sant''Ilario Service sas"/>' +
    sLineBreak + '<tag k="ref:mise" v="3474"/>' + sLineBreak + '</node>'
  // -----------------------------------------------------------------------------------------------------------------
    + sLineBreak + '</osm>';

implementation

{$R *.dfm}

uses Janua.Maps.Types, Janua.core.Maps, Janua.Maps.Intf;

procedure TfrmVCLImportOSMaps.Button1Click(Sender: TObject);
var
  // vTest: boolean;
  // vTest: TOSMLocationType;
  aParser: IOSMXmlParser;
  aNode: TOSMNode;
begin
  if OpenDialog1.Execute then
  begin
    // self.AdvMemo1.Lines.LoadFromFile(OpenDialog1.FileName);
    aParser := TOSMXmlParser.Create;
    aParser.LoadDocumentFromFile(OpenDialog1.FileName);
    // aParser.XMLDocument := AdvMemo1.Lines.Text;
    aParser.ParseDocument;
    self.VirtualTable1.Open;
    for aNode in aParser.OSMNodeArray do
    begin
      VirtualTable1.Append;
      aNode.SaveToDataset(VirtualTable1);
      VirtualTable1.Post;
    end;
    // Assert.AreEqual(expected, aParser.ParseDocument);
    // aParser.FindNodes('unknown', 'unknwon');
    // vTest := Janua.Core.Functions.ExistFieldByName(dmTestFunctionsDataset.VirtualTable1, 'StringField');
    // vTest := Janua.Maps.Types.FindType('amenity', 'fuel');
  end;
end;

procedure TfrmVCLImportOSMaps.Button2Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    self.VirtualTable1.SaveToFile(SaveDialog1.FileName);
end;

procedure TfrmVCLImportOSMaps.Button3Click(Sender: TObject);
begin
  if self.OpenDialog1.Execute then
    self.VirtualTable1.LoadFromFile(self.OpenDialog1.FileName);
  VirtualTable1.Active := True;
end;

procedure TfrmVCLImportOSMaps.Button4Click(Sender: TObject);
begin
  self.VirtualTable1.First;
  while not self.VirtualTable1.Eof do
  begin
    if not self.PgTable1.Locate('id', VirtualTable1.FieldByName('id').AsLargeInt, []) then
    begin
      PgTable1.Insert;
      PgTable1.Edit;
      PgTable1.FieldByName('id').AsLargeInt := VirtualTable1.FieldByName('id').AsLargeInt;
      PgTable1.FieldByName('visible').AsBoolean := VirtualTable1.FieldByName('visible').AsBoolean;
      PgTable1.FieldByName('name').AsWideString := VirtualTable1.FieldByName('name').AsWideString;
      PgTable1.FieldByName('version').Value := VirtualTable1.FieldByName('version').Value;
      PgTable1.FieldByName('creation').Value := VirtualTable1.FieldByName('timestamp').Value;
      PgTable1.FieldByName('uid').Value := VirtualTable1.FieldByName('uid').Value;
      PgTable1.FieldByName('lat').Value := VirtualTable1.FieldByName('lat').Value;
      PgTable1.FieldByName('lon').Value := VirtualTable1.FieldByName('lon').Value;
      PgTable1.FieldByName('distance').Value := VirtualTable1.FieldByName('distance').Value;
      PgTable1.FieldByName('mapgroup').Value := VirtualTable1.FieldByName('group').Value;
      PgTable1.FieldByName('address').Value := VirtualTable1.FieldByName('address').Value;
      PgTable1.FieldByName('description').Value := VirtualTable1.FieldByName('description').Value;
      PgTable1.FieldByName('brand').Value := VirtualTable1.FieldByName('brand').Value;
      PgTable1.FieldByName('mapoperator').Value := VirtualTable1.FieldByName('operator').Value;
      PgTable1.FieldByName('phone').Value := VirtualTable1.FieldByName('phone').Value;
      PgTable1.FieldByName('website').Value := VirtualTable1.FieldByName('website').Value;
      PgTable1.FieldByName('email').Value := VirtualTable1.FieldByName('email').Value;
      PgTable1.FieldByName('fax').Value := VirtualTable1.FieldByName('fax').Value;
      PgTable1.FieldByName('addressfull').Value := VirtualTable1.FieldByName('addressfull').Value;
      PgTable1.FieldByName('addr_city').Value := VirtualTable1.FieldByName('city').Value;
      PgTable1.FieldByName('addr_number').Value := VirtualTable1.FieldByName('number').Value;
      PgTable1.FieldByName('addr_street').Value := VirtualTable1.FieldByName('street').Value;
      PgTable1.FieldByName('addr_postcode').Value := VirtualTable1.FieldByName('postcode').Value;
      PgTable1.FieldByName('cuisine').Value := VirtualTable1.FieldByName('cuisine').Value;
      PgTable1.FieldByName('public_transport').Value := VirtualTable1.FieldByName('public_transport').Value;
      PgTable1.FieldByName('station_type').Value := VirtualTable1.FieldByName('station_type').Value;
      PgTable1.Post;
    end;

    VirtualTable1.Next;
  end;
end;

end.
