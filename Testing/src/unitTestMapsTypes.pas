unit unitTestMapsTypes;

interface

uses
  DUnitX.TestFramework, Janua.Maps.Types, Janua.Maps.Intf;

type

  [TestFixture]
  TTestJanuaMapsTypesObject = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [TestCase('Fuel', 'fuel,fuel')]
    [TestCase('Unknown', 'unknown,notlisted')]
    procedure TestOSMAddressCode(const expected, number: string);
    [TestCase('Fuel', 'fuel,amenity,fuel')]
    [TestCase('Unknown', 'unknown,unknown,unknown')]
    procedure TestOSMAddressNode(const expected, key, value: string);
    [TestCase('Hotel', '1,tourism,hotel')]
    [TestCase('Unknown', '1,unknown,unknown')]
    procedure TestOSMXMLParseCount(const expected: integer; key, value: string);
    [TestCase('A', '2')]
    procedure TestOSMXMLParse(const expected: integer);
    [TestCase('Hotel', 'tourism,hotel')]
    [TestCase('Unknown', 'unknown,unknown')]
    procedure TestFindTypes(const group, address: string);
  end;

implementation

uses System.SysUtils, Janua.Application.Framework, Janua.Core.Maps;

const
  XMLString = '<?xml version="1.0" encoding="UTF-8"?>' +
    '<osm version="0.6" generator="CGImap 0.6.0 (28325 thorn-03.openstreetmap.org)" copyright="OpenStreetMap and contributors" attribution="http://www.openstreetmap.org/copyright" license="http://opendatacommons.org/licenses/odbl/1-0/">'
    + sLineBreak + ' <bounds minlat="44.3706000" minlon="9.0032000" maxlat="44.3985000" maxlon="9.0602000"/>'
    + sLineBreak +
    ' <node id="36316233" visible="true" version="4" changeset="7108142" timestamp="2011-01-27T21:49:38Z" user="mikelima" uid="12473" lat="44.3865436" lon="9.0186055">'
    + sLineBreak + '<tag k="highway" v="traffic_signals"/>' + sLineBreak + '</node>' + sLineBreak +
    '<node id="4006228696" visible="true" version="3" changeset="41553978" timestamp="2016-08-19T11:25:35Z" user="Alecs01" uid="1476146" lat="44.3816771" lon="9.0408117">'
    + sLineBreak + '<tag k="addr:city" v="Genova"/>' + sLineBreak + '<tag k="addr:housenumber" v="1"/>' +
    sLineBreak + '<tag k="addr:postcode" v="16167"/>' + sLineBreak +
    '<tag k="addr:street" v="Via Val Cismon"/>' + sLineBreak + '<tag k="email" v="info@hotelesperia.it"/>' +
    sLineBreak + '<tag k="fax" v="+39 010 3291006"/>' + sLineBreak + '<tag k="name" v="Hotel Esperia"/>' +
    sLineBreak + '<tag k="phone" v="+39 010 321777"/>' + sLineBreak + '<tag k="stars" v="3"/>' + sLineBreak +
    '<tag k="tourism" v="hotel"/>' + sLineBreak + '<tag k="website" v="http://www.hotelesperia.it/"/>' +
    sLineBreak + '</node>' + sLineBreak + '</osm>';

procedure TTestJanuaMapsTypesObject.Setup;
begin
end;

procedure TTestJanuaMapsTypesObject.TearDown;
begin
  try

  except
    on E: Exception do
      RaiseException('TearDown', E, Self);

  end;
end;

procedure TTestJanuaMapsTypesObject.TestFindTypes(const group, address: string);
begin
  // function FindType(aGroup, aAddressType: string): TOSMLocationType;
  Assert.IsTrue(FindType(group, address) <> TOSMLocationType.osmNotFound);
end;

procedure TTestJanuaMapsTypesObject.TestOSMAddressCode(const expected, number: string);
var
  aLocation: TOSMLocation;
begin
  aLocation := TOSMLocation.Create(number);
  DUnitX.TestFramework.Assert.AreEqual(expected, aLocation.OSMCode);
end;

procedure TTestJanuaMapsTypesObject.TestOSMAddressNode(const expected, key, value: string);
var
  aNode: TOSMNode;
begin
  aNode.AddTags(key, value);
  aNode.SetupLocation;
  DUnitX.TestFramework.Assert.AreEqual(expected, aNode.Location.OSMCode);
end;

procedure TTestJanuaMapsTypesObject.TestOSMXMLParse(const expected: integer);
var
  aParser: IOSMXmlParser;
begin
  aParser := TOSMXmlParser.Create;
  aParser.XMLDocument := XMLString;
  Assert.AreEqual(expected, aParser.ParseDocument);

end;

procedure TTestJanuaMapsTypesObject.TestOSMXMLParseCount(const expected: integer; key, value: string);
// TOSMXmlParser = class(TInterfacedObject, IOSMXmlParser)
var
  aParser: IOSMXmlParser;
  i: integer;
  temp: TOSMNodeArray;
begin
  aParser := TOSMXmlParser.Create;
  aParser.XMLDocument := XMLString;
  aParser.ParseDocument;
  temp := aParser.FindNodes(key, value);
  Assert.AreEqual(expected, integer(Length(temp)));
end;

initialization

TDUnitX.RegisterTestFixture(TTestJanuaMapsTypesObject);

end.
