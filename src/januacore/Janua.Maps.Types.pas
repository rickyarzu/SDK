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
  TOSMLocationGroup = (osgUnknown, osgAmenity, osgPubliTransport, osgTourism, osgHigway, osgCraft,
    osgEmergency, osgHistoric, osgOffice, osgRailway, osgShop, osgLeisure, osmSubway, osgNotFound);

const
  OSMLocationGroups: array [TOSMLocationGroup] of string = ('unknown', 'amenity', 'public_transport',
    'tourism', 'highway', 'craft', 'emergency', 'historic', 'office', 'railway', 'shop', 'leisure',
    'subway', '');

type
  TOSMLocationType = (osmUnknown, osmFuel, osmTelephone, osmParking, osmPharmacy, osmPostOffice, osmAtm,
    osmCrossing, osmHotel, osmBar, osmCafe, osmCarWash, osmCinema, osmDentist, osmDoctors, osmFastFood,
    osmIceCream, osmkindergarten, osmnursing_home, osmPolice, osmPub, osmRestaurant, osmSchool, osmToilets,
    osmVeterinary, osmBank, osmTaxi, osmCommunityCentre, osmDressMaker, osmAmbulanceStation, osmMemorial,
    osmEstateAgent, osmBusStop, osmRailwayStop, osmBakery, osmBabyGoods, osmbookmaker, osmButcher,
    osmCarRepair, clothes, coffee, osmComputer, confectionery, deli, dry_cleaning, electronics, florist,
    furniture, gardencentre, greengrocer, hairdresser, hardware, hearing_aids, jewelry, leather, mobile_phone,
    newsagent, optician, outdoor, paint, perfumery, pet, photo, scuba_diving, seafood, stationery,
    osmSupermarket, osmTobacco, travel_agency, tyres, wine, information, museum, swimming_pool, osmPostBox,
    osmNotFound);

const
  // Every kind of Location (Address)
  OSMLocationCodes: array [TOSMLocationType] of string = ('unknown' { osmUnknown } , 'fuel' { osmFuel } ,
    'telephone' { osmTelephone } , 'parking' { osmTelephone } , 'pharmacy' { osmPharmacy } , 'post_office',
    'atm' { osmAtm } , 'crossing' { osmCrossing } , 'hotel' { osmHotel } , 'bar' { osmBar } ,
    'cafe' { osmCafe } , 'car_wash' { osmCarWash } , 'cinema' { osmCinema } , 'dentist' { osmDentist } ,
    'doctors', 'fast_food', 'ice_cream', 'kindergarten', 'nursing_home', 'police', 'pub', 'restaurant',
    'school', 'toilets', 'veterinary', 'bank', 'taxi', 'community_centre', 'dressmaker', 'ambulance_station',
    'memorial', 'estate_agent', 'bus_stop', 'stop', 'bakery', 'baby_goods', 'bookmaker', 'butcher',
    'car_repair', 'clothes', 'coffee', 'computer', 'confectionery', 'deli', 'dry_cleaning', 'electronics',
    'florist', 'furniture', 'garden_centre', 'greengrocer', 'hairdresser', 'hardware', 'hearing_aids',
    'jewelry', 'leather', 'mobile_phone', 'newsagent', 'optician', 'outdoor', 'paint', 'perfumery', 'pet',
    'photo', 'scuba_diving', 'seafood', 'stationery', 'supermarket', 'tobacco', 'travel_agency', 'tyres',
    'wine', 'information', 'museum', 'swimming_pool', 'post_box', '');

  OSMAddressGroupTypes: array [TOSMLocationType] of TOSMLocationGroup = (osgUnknown, osgAmenity, osgAmenity,
    osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgHigway, osgTourism, osgAmenity, osgAmenity, osgAmenity,
    osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity,
    osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgAmenity, osgCraft,
    osgEmergency, osgHistoric, osgOffice, osgPubliTransport, osgPubliTransport, osgShop, osgShop, osgShop,
    osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop,
    osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop,
    osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop, osgShop,
    osgShop, osgTourism, osgTourism, osgLeisure, osgAmenity { post_box } , osgNotFound);

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
    city: string;
    housenumber: string;
    postcode: string;
    street: string;
    addressfull: string;
  end;

  TOSMShop = record
    { <tag k="brand" v="EuroSpin"/>
      <tag k="brand:wikidata" v="Q1374674"/>
      <tag k="ref:vatin" v="IT02074330990"/>
      <tag k="wheelchair" v="yes"/> }
    shop: string;
    payment_visa: boolean;
    payment_mastercard: boolean;
    payment_cash: boolean;
    payment_amex: boolean;
    opening_hours: string;
    wheelchair: boolean;
    VAT: string;
  end;

  TOSMFuel = record
    { <tag k="amenity" v="fuel"/>
      <tag k="automated" v="yes"/>
      <tag k="brand" v="Tamoil"/>
      <tag k="fuel:diesel" v="yes"/>
      <tag k="fuel:octane_95" v="yes"/>
      <tag k="fuel_service" v="full"/>
      <tag k="amenity" v="fuel"/>
      <tag k="brand" v="Agip Eni"/>
      <tag k="operator" v="Due Esse S.R.L."/>
      <tag k="ref:mise" v="35223"/> }
    shop: TOSMShop;
    LocalOperator: string;
    HasAutomated: boolean;
    HasDiesel: boolean;
    HasOctane95: boolean;
    HasService: boolean;
    HasLpg: boolean;
  end;

  TOSMTransport = record
    { <tag k="name" v="Principe"/>
      <tag k="operator" v="AMT"/>
      <tag k="public_transport" v="station"/>
      <tag k="railway" v="station"/>
      <tag k="station" v="subway"/>
      <tag k="subway" v="yes"/>
      <tag k="wheelchair" v="yes"/>
      <tag k="wikidata" v="Q3921992"/>
      <tag k="wikipedia" v="it:Principe (metropolitana di Genova)"/> }
    toperator: string;
    railway_type: string;
    station_type: string;
    isSubway: boolean;
  end;

type
  TOSMLocation = record
  private
    FOSMType: TOSMLocationType;
  private
    FStringValue: string;
    function GetOSMCode: string;
    function GETOSMType: TOSMLocationType;
    procedure SetOSMCode(const Value: string);
    procedure SetOSMType(const Value: TOSMLocationType);
    procedure SetStringValue(const Value: string);
    function GetOsmGroup: string;
  public
    property OSMType: TOSMLocationType read GETOSMType write SetOSMType;
    property OSMCode: string read GetOSMCode write SetOSMCode;
    property StringValue: string read FStringValue write SetStringValue;
    property OSMGroup: string read GetOsmGroup;
  public
    constructor Create(aOSMCode: string); overload;
    constructor Create(aOSMType: TOSMLocationType); overload;
  end;

type
  TOSMTagsArray = TArray<TOSMLocation>;
  TOSMStringTags = TArray<TOSMStringTag>;

procedure DeleteTag(var A: TOSMTagsArray; const Index: Cardinal);

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
    LocalOperator: string;
    Location: TOSMLocation;
    Tags: TOSMStringTags;
    IsShop: boolean;
    shop: TOSMShop;
    IsFuel: boolean;
    Fuel: TOSMFuel;
    Address: TOSMAddress;
    Transport: TOSMTransport;
    jguid: TGUID;
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

function FindType(aGroup, aAddressType: string): TOSMLocationType;
function FindGroup(aGroup: string): TOSMLocationGroup;

implementation

uses Janua.Core.Types, Janua.Core.Functions, System.SysUtils;

procedure DeleteTag(var A: TOSMTagsArray; const Index: Cardinal);
var
  ALength: Cardinal;
  i: Cardinal;
begin
  ALength := Length(A);
  Assert(ALength > 0);
  Assert(Index < ALength);
  for i := Index + 1 to ALength - 1 do
    A[i - 1] := A[i];
  SetLength(A, ALength - 1);
end;

function FindGroup(aGroup: string): TOSMLocationGroup;
begin
  for Result := Low(TOSMLocationGroup) to High(TOSMLocationGroup) do
    if OSMLocationGroups[Result] = aGroup then
      Exit;

  Result := TOSMLocationGroup.osgNotFound;
end;

function FindType(aGroup, aAddressType: string): TOSMLocationType;
var
  OSMAddressGroup: TOSMLocationGroup;
begin
  OSMAddressGroup := FindGroup(aGroup);
  if OSMAddressGroup <> TOSMLocationGroup.osgNotFound then
    for Result := Low(TOSMLocationType) to High(TOSMLocationType) do
      if (OSMAddressGroupTypes[Result] = OSMAddressGroup) and (OSMLocationCodes[Result] = aAddressType) then
        Exit();
  Result := TOSMLocationType.osmNotFound;
end;

{ OSMTag }

constructor TOSMLocation.Create(aOSMCode: string);
begin
  self := Default (TOSMLocation);
  self.FOSMType := TOSMLocationType.osmUnknown;
  self.SetOSMCode(aOSMCode);
end;

constructor TOSMLocation.Create(aOSMType: TOSMLocationType);
begin
  self.FOSMType := aOSMType;
end;

function TOSMLocation.GetOSMCode: string;
begin
  Result := OSMLocationCodes[FOSMType]
end;

function TOSMLocation.GetOsmGroup: string;
begin
  Result := OSMLocationGroups[OSMAddressGroupTypes[self.FOSMType]]
end;

function TOSMLocation.GETOSMType: TOSMLocationType;
begin
  Result := self.FOSMType
end;

procedure TOSMLocation.SetOSMCode(const Value: string);
var
  aOSMType: TOSMLocationType;
begin
  if Value = OSMLocationCodes[FOSMType] then
    Exit;
  if TEnumConvertor<TOSMLocationType>.TryFromStringArray(Value, OSMLocationCodes, aOSMType) then
    FOSMType := aOSMType
  else
    FOSMType := TOSMLocationType.osmUnknown;
end;

procedure TOSMLocation.SetOSMType(const Value: TOSMLocationType);
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
  aType: TOSMLocationType;
  aTest: TOSMLocationGroup;

  procedure SetLocation;
  begin
    // (a patto che il Tag Appartiene ad un Gruppo di  Location cioè
    // 'amenity', 'public_transport', 'tourism',
    // 'highway', 'craft', 'emergency', 'historic', 'office', 'railway', 'shop', 'leisure'
    if (FindGroup(aTag.k) <> TOSMLocationGroup.osgNotFound) then
    begin
      aType := FindType(aTag.k, aTag.v);
      if aType = TOSMLocationType.osmNotFound then
        aType := TOSMLocationType.osmUnknown;
      Location.Create(aType);
      Location.StringValue := aTag.k + '=' + aTag.v;

    end;
  end;

  function SetTag: boolean;
  begin
    Result := True;
    if aTag.k = 'addr:city' then
      Address.city := aTag.v
    else if aTag.k = 'addr:housenumber' then
      Address.housenumber := aTag.v
    else if aTag.k = 'addr:postcode' then
      Address.postcode := aTag.v
    else if aTag.k = 'addr:street' then
      Address.street := aTag.v
    else if aTag.k = 'operator' then
      Transport.toperator := aTag.v
    else if aTag.k = 'email' then
      email := aTag.v
      // contact:phone
    else if aTag.k = 'contact:phone' then
      phone := aTag.v
      // phone
    else if aTag.k = 'phone' then
      phone := aTag.v
      // stars
      // website
    else if aTag.k = 'website' then
      website := aTag.v
      // name
    else if aTag.k = 'name' then
      name := aTag.v
    else if aTag.k = 'description' then
      description := aTag.v
    else if aTag.k = 'cuisine' then
      cuisine := aTag.v
    else if aTag.k = 'brand' then
      brand := aTag.v
    else if aTag.k = 'operator' then
      LocalOperator := aTag.v
      // addr:full
    else if aTag.k = 'addr:full' then
      addressfull := aTag.v
    else
      Result := False;
  end;

begin
  SetLength(Tags, Length(Tags) + 1);
  Tags[Length(Tags) - 1] := aTag;
  // Se il Tag esaminato sopra non è un TAG di Attributo potrebbe essere un TAG di Location
  // in questo caso valorizzo il Record Interno di Location se il Tag Location non fosse già valorizzato
  if not SetTag and (Location.FOSMType in [TOSMLocationType.osmUnknown, TOSMLocationType.osmNotFound]) then
    SetLocation;

end;

procedure TOSMNode.AddTags(aKey, aValue: string);
begin
  self.AddTags(TOSMStringTag.Create(aKey, aValue));
end;

constructor TOSMNode.Create(aNodes: IDOMNode; aID: Int64);
var
  i: integer;
begin
  Create(aID);
  user := aNodes.attributes.getNamedItem('user').nodeValue;
  version := StrToInt(aNodes.attributes.getNamedItem('version').nodeValue);
  lat := Janua.Core.Functions.XMLDouble(aNodes.attributes.getNamedItem('lat').nodeValue);
  lon := Janua.Core.Functions.XMLDouble(aNodes.attributes.getNamedItem('lon').nodeValue);
  visible := Janua.Core.Functions.XMLBool(aNodes.attributes.getNamedItem('visible').nodeValue);
  timestamp := Janua.Core.Functions.XMLDateTime(aNodes.attributes.getNamedItem('timestamp').nodeValue);
  uid := StrToInt64(aNodes.attributes.getNamedItem('uid').nodeValue);
  for i := 0 to aNodes.childNodes.Length - 1 do
    AddTags(aNodes.childNodes.item[i].attributes.getNamedItem('k').nodeValue,
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
  aDataset.FieldByName('operator').AsWideString := self.LocalOperator;
  tmp := TJanuaStringBuilder.Create;

  for aTag in self.Tags do
    tmp.AppendLine(aTag.k + '=' + aTag.v);
  aDataset.FieldByName('tags').AsWideString := tmp.ToString;

end;

procedure TOSMNode.SetupLocation;
var
  aTag: TOSMStringTag;
  aType: TOSMLocationType;
begin
  for aTag in self.Tags do
    for aType := Low(TOSMLocationType) to High(TOSMLocationType) do
      if (aTag.k = OSMLocationGroups[OSMAddressGroupTypes[aType]]) and (aTag.v = OSMLocationCodes[aType]) then
        self.Location.Create(aType);

end;

{ TOSMStringTag }

constructor TOSMStringTag.Create(const aKey, aValue: string);
begin
  self.k := aKey;
  self.v := aValue;
end;

end.
