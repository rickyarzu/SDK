unit Janua.Maps.Types;

interface

uses System.Generics.Collections, Xml.xmldom, Data.DB;

type
  TOSMStringTag = record
    k: string;
    v: string;
  public
    Constructor Create(const aKey, aValue: string);
  end;

type
  TOSMAddressGroup = (osgUnknown, osgAmenity, osgPubliTransport, osgTourism, osgHigway, osgCraft, osgEmergency,
    osgHistoric, osgOffice, osgRailway, osgShop, osgLeisure, osgNotFound);

const
  OSMAddressGroups: array [TOSMAddressGroup] of string = ('unknown', 'amenity', 'public_transport', 'tourism',
    'highway', 'craft', 'emergency', 'historic', 'office', 'railway', 'shop', 'leisure', '');

type
  TOSMAddressType = (osmUnknown, osmFuel, osmTelephone, osmParking, osmPharmacy, osmPostOffice, osmAtm, osmCrossing,
    osmHotel, osmBar, osmCafe, osmCarWash, osmCinema, ssmDentist, osmDoctors, osmFastFood, osmIceCream, osmkindergarten,
    osmnursing_home, osmPolice, osmPub, osmRestaurant, osmSchool, osmToilets, osmVeterinary, osmBank, osmTaxi,
    osmCommunityCentre, osmDressMaker, osmAmbulanceStation, osmMemorial, osmEstateAgent, osmBusStop, osmRailwayStop,
    osmBakery, osmBabyGoods, osmbookmaker, butcher, car_repair, clothes, coffee, computer, confectionery, deli,
    dry_cleaning, electronics, florist, furniture, gardencentre, greengrocer, hairdresser, hardware, hearing_aids,
    jewelry, leather, mobile_phone, newsagent, optician, outdoor, paint, perfumery, pet, photo, scuba_diving, seafood,
    stationery, supermarket, tobacco, travel_agency, tyres, wine, information, museum, swimming_pool, osmNotFound);

const
  OSMAddressCodes: array [TOSMAddressType] of string = ('unknown', 'fuel', 'telephone', 'parking', 'pharmacy',
    'post_office', 'atm', 'crossing', 'hotel', 'bar', 'cafe', 'car_wash', 'cinema', 'dentist', 'doctors', 'fast_food',
    'ice_cream', 'kindergarten', 'nursing_home', 'police', 'pub', 'restaurant', 'school', 'toilets', 'veterinary',
    'bank', 'taxi', 'community_centre', 'dressmaker', 'ambulance_station', 'memorial', 'estate_agent', 'bus_stop',
    'stop', 'bakery', 'baby_goods', 'bookmaker', 'butcher', 'car_repair', 'clothes', 'coffee', 'computer',
    'confectionery', 'deli', 'dry_cleaning', 'electronics', 'florist', 'furniture', 'garden_centre', 'greengrocer',
    'hairdresser', 'hardware', 'hearing_aids', 'jewelry', 'leather', 'mobile_phone', 'newsagent', 'optician', 'outdoor',
    'paint', 'perfumery', 'pet', 'photo', 'scuba_diving', 'seafood', 'stationery', 'supermarket', 'tobacco',
    'travel_agency', 'tyres', 'wine', 'information', 'museum', 'swimming_pool', '');

  OSMAddressGroupTypes: array [TOSMAddressType] of TOSMAddressGroup = (osgUnknown, osgAmenity, osgAmenity, osgAmenity,
    osgAmenity, osgAmenity, osgAmenity, osgHigway, osgTourism, osgAmenity, osgAmenity, osgAmenity, osgAmenity,
    osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity,
    osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgCraft, osgEmergency, osgHistoric,
    osgOffice, osgPubliTransport, osgPubliTransport, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop,
    osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop,
    osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop,
    osgShop, osgShop, osgShop, osgShop, osgTourism, osgTourism, osgLeisure, osgNotFound);

  { la ricerca dei vari luoghi avviene con questo criterio:
    un 'loop' sulle chiavi presenti nel gruppo AddressGroup, se trovate vanno allora confrontate con i codici presenti
    in Codes. Alternativamente un Loop sui codici può permetterci una verifica diretta chiave-valore del tipo:
    shop= -- cartoleria
    public_transport=stop_position ->  train=yes
    vending=parking_tickets
    vending=junk_food
  }

type
  TOSMAddress = record
    {
      <tag k="addr:city" v="Genova"/>
      <tag k="addr:housenumber" v="1"/>
      <tag k="addr:postcode" v="16167"/>
      <tag k="addr:street" v="Via Val Cismon"/>
    }
    city: string;
    housenumber: string;
    postcode: string;
    street: string;
    addressfull: string;
  end;

type
  TOSMLocation = record
  private
    FOSMType: TOSMAddressType;
  private
    FStringValue: string;
    function GetOSMCode: string;
    function GETOSMType: TOSMAddressType;
    procedure SetOSMCode(const Value: string);
    procedure SetOSMType(const Value: TOSMAddressType);
    procedure SetStringValue(const Value: string);
    function GetOsmGroup: string;
  public
    property OSMType: TOSMAddressType read GETOSMType write SetOSMType;
    property OSMCode: string read GetOSMCode write SetOSMCode;
    property StringValue: string read FStringValue write SetStringValue;
    property OSMGroup: string read GetOsmGroup;
  public
    constructor Create(aOSMCode: string); overload;
    constructor Create(aOSMType: TOSMAddressType); overload;
  end;

type
  TOSMTagsArray = TArray<TOSMLocation>;
  TOSMStringTags = TArray<TOSMStringTag>;

type
  TOSMNode = record
    id: Int64;
    visible: boolean;
    version: smallint;
    timestamp: TDateTime;
    user: string;
    uid: Int64;
    lat: Double;
    lon: Double;
    distance: Double;
    addressfull: string;
    name: string;
    description: string;
    email: string;
    phone: string;
    website: string;
    fax: string;
    brand: string;
    cuisine: string;
    Localoperator: string;
    Location: TOSMLocation;
    Tags: TOSMStringTags;
    Address: TOSMAddress;
  public
    procedure AddTags(aTag: TOSMStringTag); overload;
    procedure AddTags(aKey, aValue: string); overload;
    procedure SetupLocation;
    constructor Create(aID: Int64); overload;
    constructor Create(aNodes: IDOMNode; aID: Int64); overload;
    procedure SaveToDataset(aDataset: TDataset);
  end;

type
  TOSMNodeArray = TArray<TOSMNode>;

function FindType(aGroup, aAddressType: string): TOSMAddressType;
function FindGroup(aGroup: string): TOSMAddressGroup;

implementation

uses Janua.Core.Types, Janua.Core.Functions, System.SysUtils;

function FindGroup(aGroup: string): TOSMAddressGroup;
begin
  for Result := Low(TOSMAddressGroup) to High(TOSMAddressGroup) do
    if OSMAddressGroups[Result] = aGroup then
      Exit;

  Result := TOSMAddressGroup.osgUnknown;
end;

function FindType(aGroup, aAddressType: string): TOSMAddressType;
var
  OSMAddressGroup: TOSMAddressGroup;
begin
  OSMAddressGroup := FindGroup(aGroup);
  if OSMAddressGroup <> TOSMAddressGroup.osgNotFound then
    for Result := Low(TOSMAddressType) to High(TOSMAddressType) do
      if (OSMAddressGroupTypes[Result] = OSMAddressGroup) and (OSMAddressCodes[Result] = aAddressType) then
        Exit();
  Result := TOSMAddressType.osmNotFound;
end;

{ OSMTag }

constructor TOSMLocation.Create(aOSMCode: string);
begin
  self := Default (TOSMLocation);
  self.FOSMType := TOSMAddressType.osmUnknown;
  self.SetOSMCode(aOSMCode);
end;

constructor TOSMLocation.Create(aOSMType: TOSMAddressType);
begin
  self.FOSMType := aOSMType;
end;

function TOSMLocation.GetOSMCode: string;
begin
  Result := OSMAddressCodes[FOSMType]
end;

function TOSMLocation.GetOsmGroup: string;
begin
  Result := OSMAddressGroups[OSMAddressGroupTypes[self.FOSMType]]
end;

function TOSMLocation.GETOSMType: TOSMAddressType;
begin
  Result := self.FOSMType
end;

procedure TOSMLocation.SetOSMCode(const Value: string);
var
  aOSMType: TOSMAddressType;
begin
  if Value = OSMAddressCodes[FOSMType] then
    Exit;
  if TEnumConvertor<TOSMAddressType>.TryFromStringArray(Value, OSMAddressCodes, aOSMType) then
    self.FOSMType := aOSMType
  else
    self.FOSMType := TOSMAddressType.osmUnknown;

end;

procedure TOSMLocation.SetOSMType(const Value: TOSMAddressType);
begin
  self.FOSMType := Value;
end;

procedure TOSMLocation.SetStringValue(const Value: string);
begin
  FStringValue := Value;
end;

{ OSMNode }

procedure TOSMNode.AddTags(aTag: TOSMStringTag);
var
  aType: TOSMAddressType;
  aTest: TOSMAddressGroup;
begin
  SetLength(Tags, Length(Tags) + 1);
  Tags[Length(Tags) - 1] := aTag;
  {
    <tag k="addr:city" v="Genova"/>
    <tag k="addr:housenumber" v="1"/>
    <tag k="addr:postcode" v="16167"/>
    <tag k="addr:street" v="Via Val Cismon"/>
  }
  if aTag.k = 'addr:city' then
    self.Address.city := aTag.v
  else if aTag.k = 'addr:housenumber' then
    self.Address.housenumber := aTag.v
  else if aTag.k = 'addr:postcode' then
    self.Address.postcode := aTag.v
  else if aTag.k = 'addr:street' then
    self.Address.street := aTag.v
  else if aTag.k = 'email' then
    self.email := aTag.v
    // contact:phone
  else if aTag.k = 'contact:phone' then
    self.phone := aTag.v
    // phone
  else if aTag.k = 'phone' then
    self.phone := aTag.v
    // stars
    // website
  else if aTag.k = 'website' then
    self.website := aTag.v
    // name
  else if aTag.k = 'name' then
    self.name := aTag.v
  else if aTag.k = 'description' then
    self.description := aTag.v
  else if aTag.k = 'cuisine' then
    self.cuisine := aTag.v
  else if aTag.k = 'brand' then
    self.brand := aTag.v
  else if aTag.k = 'operator' then
    self.Localoperator := aTag.v
    // addr:full
  else if aTag.k = 'addr:full' then
    self.addressfull := aTag.v
  else if (Location.FOSMType = TOSMAddressType.osmUnknown) and (FindGroup(aTag.k) <> TOSMAddressGroup.osgNotFound) then
  begin
    aType := FindType(aTag.k, aTag.v);
    if aType = TOSMAddressType.osmNotFound then
      aType := TOSMAddressType.osmUnknown;
    self.Location.Create(aType);
    self.Location.StringValue := aTag.k + '=' + aTag.v;
  end;
end;

procedure TOSMNode.AddTags(aKey, aValue: string);
begin
  self.AddTags(TOSMStringTag.Create(aKey, aValue));
end;

constructor TOSMNode.Create(aNodes: IDOMNode; aID: Int64);
var
  i: integer;
begin
  self.Create(aID);
  self.user := aNodes.attributes.getNamedItem('user').nodeValue;
  self.version := StrToInt(aNodes.attributes.getNamedItem('version').nodeValue);
  self.lat := Janua.Core.Functions.XMLDouble(aNodes.attributes.getNamedItem('lat').nodeValue);
  self.lon := Janua.Core.Functions.XMLDouble(aNodes.attributes.getNamedItem('lon').nodeValue);
  self.visible := Janua.Core.Functions.XMLBool(aNodes.attributes.getNamedItem('visible').nodeValue);
  self.timestamp := Janua.Core.Functions.XMLDateTime(aNodes.attributes.getNamedItem('timestamp').nodeValue);
  self.uid := StrToInt64(aNodes.attributes.getNamedItem('uid').nodeValue);
  for i := 0 to aNodes.childNodes.Length - 1 do
    self.AddTags(aNodes.childNodes.item[i].attributes.getNamedItem('k').nodeValue,
      aNodes.childNodes.item[i].attributes.getNamedItem('v').nodeValue);
end;

constructor TOSMNode.Create(aID: Int64);
begin
  self := Default (TOSMNode);
  self.id := aID;
end;

procedure TOSMNode.SaveToDataset(aDataset: TDataset);
var
  aTag: TOSMStringTag;
  tmp: IStringBuilder;
begin
  aDataset.FieldByName('id').AsLargeInt := self.id;
  aDataset.FieldByName('visible').AsBoolean := self.visible;
  aDataset.FieldByName('version').AsInteger := self.version;
  aDataset.FieldByName('timestamp').AsDateTime := self.timestamp;
  aDataset.FieldByName('uid').AsLargeInt := self.uid;
  aDataset.FieldByName('lat').AsFloat := self.lat;
  aDataset.FieldByName('lon').AsFloat := self.lon;
  aDataset.FieldByName('distance').AsFloat := DistanceBetweenLonLat(self.lat, self.lon, 44.381909, 9.045251);
  aDataset.FieldByName('group').AsWideString := self.Location.OSMGroup;
  aDataset.FieldByName('address').AsWideString := self.Location.OSMCode;
  aDataset.FieldByName('value').AsWideString := self.Location.StringValue;
  aDataset.FieldByName('Description').AsWideString := self.description;
  aDataset.FieldByName('Cuisine').AsWideString := self.cuisine;
  aDataset.FieldByName('Name').AsWideString := self.name;
  aDataset.FieldByName('phone').AsWideString := self.phone;
  aDataset.FieldByName('website').AsWideString := self.website;
  aDataset.FieldByName('fax').AsWideString := self.fax;
  aDataset.FieldByName('city').AsWideString := self.Address.city;
  aDataset.FieldByName('number').AsWideString := self.Address.housenumber;
  aDataset.FieldByName('postcode').AsWideString := self.Address.postcode;
  aDataset.FieldByName('street').AsWideString := self.Address.street;
  aDataset.FieldByName('AddressFull').AsWideString := self.addressfull;
  aDataset.FieldByName('brand').AsWideString := self.brand;
  aDataset.FieldByName('operator').AsWideString := self.Localoperator;
  tmp := TJanuaStringBuilder.Create;

  for aTag in self.Tags do
    tmp.AppendLine(aTag.k + '=' + aTag.v);
  aDataset.FieldByName('tags').AsWideString := tmp.ToString;

end;

procedure TOSMNode.SetupLocation;
var
  aTag: TOSMStringTag;
  aType: TOSMAddressType;
begin
  for aTag in self.Tags do
    for aType := Low(TOSMAddressType) to High(TOSMAddressType) do
      if (aTag.k = OSMAddressGroups[OSMAddressGroupTypes[aType]]) and (aTag.v = OSMAddressCodes[aType]) then
        self.Location.Create(aType);

end;

{ TOSMStringTag }

constructor TOSMStringTag.Create(const aKey, aValue: string);
begin
  self.k := aKey;
  self.v := aValue;
end;

end.
