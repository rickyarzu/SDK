unit Janua.Core.Entities;

interface

{$I JANUACORE.INC}

uses System.Json, System.Classes,
{$IF Defined(WEBBROKER)}
  Web.HTTPApp,
{$ENDIF WEBBROKER}
  Janua.Core.Types, Data.DB;

type
  TJanuaRole = record
    ID: smallint;
    Name: string;
    index: smallint;
    Level: TJanuaRoleLevel;
  end;

  TArrayRoles = array of TJanuaRole;

  TJanuaUser = record
  private
    FKey: string;
    Frole_name: string;
    FSocialID: string;
    FIsoLanguageCode: string;
    FEmail: string;
    FRoles: TArrayRoles;
    FisPublic: Boolean;
    FSelectedRole: TJanuaRole;
    FEmailDate: TDateTime;
    FAvatarImageID: Int64;
    FPayment: Boolean;
    FPaymentExpiration: TDate;
    FEmailSent: Boolean;
    FSocialType: string;
    FRPassword: string;
    FID: Int64;
    FIsoCultureCode: string;
    Frole_id: smallint;
    FAvatarImageUrl: string;
    FPassword: string;
    FEmailConfirmed: Boolean;
    FSocialTypeID: smallint;
    FUsername: string;
    function GetJsonObject: TJsonObject;
    procedure SetAvatarImageUrl(const Value: string);
    procedure SetAvatarImageID(const Value: Int64);
    procedure SetEmail(const Value: string);
    procedure SetEmailConfirmed(const Value: Boolean);
    procedure SetEmailDate(const Value: TDateTime);
    procedure SetEmailSent(const Value: Boolean);
    procedure SetID(const Value: Int64);
    procedure SetIsoCultureCode(const Value: string);
    procedure SetIsoLanguageCode(const Value: string);
    procedure SetisPublic(const Value: Boolean);
    procedure SetKey(const Value: string);
    procedure SetPassword(const Value: string);
    procedure SetPayment(const Value: Boolean);
    procedure SetPaymentExpiration(const Value: TDate);
    procedure Setrole_id(const Value: smallint);
    procedure Setrole_name(const Value: string);
    procedure SetRoles(const Value: TArrayRoles);
    procedure SetRPassword(const Value: string);
    procedure SetSelectedRole(const Value: TJanuaRole);
    procedure SetSocialID(const Value: string);
    procedure SetSocialType(const Value: string);
    procedure SetSocialTypeID(const Value: smallint);
    procedure SetUsername(const Value: string);
  public
    procedure Clear;
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    function ToString: string;
    function AsRawHtml: string;
    function getRoleByName(aName: string): Boolean;
    function GetRolebyIndex(aIndex: Integer): Boolean;
    function GetRoleByID(aID: Integer): Boolean;
    procedure SetRoleByID(aID: smallint);
    function ToJSON: string;
{$IFDEF WEBBROKER}
    procedure LoadFromHttpParams(aRequest: TWebRequest);
{$ENDIF}
    procedure LoadFromDataset(dsUser: TDataset);
    procedure SaveToDataset(dsUser: TDataset);
    function AsHtml(aTemplate: string): string;
  public
    property AsSJSONObJect: TJsonObject read GetJsonObject write LoadFromJsonObject;
    property Username: string read FUsername write SetUsername;
    property SocialID: string read FSocialID write SetSocialID;
    property SocialTypeID: smallint read FSocialTypeID write SetSocialTypeID;
    property SocialType: string read FSocialType write SetSocialType;
    property Email: string read FEmail write SetEmail;
    property EmailSent: Boolean read FEmailSent write SetEmailSent;
    property EmailDate: TDateTime read FEmailDate write SetEmailDate;
    property EmailConfirmed: Boolean read FEmailConfirmed write SetEmailConfirmed;
    property Password: string read FPassword write SetPassword;
    property RPassword: string read FRPassword write SetRPassword;
    property Key: string read FKey write SetKey;
    property ID: Int64 read FID write SetID;
    property role_id: smallint read Frole_id write Setrole_id;
    property role_name: string read Frole_name write Setrole_name;
    property SelectedRole: TJanuaRole read FSelectedRole write SetSelectedRole;
    property Roles: TArrayRoles read FRoles write SetRoles;
    property IsoLanguageCode: string read FIsoLanguageCode write SetIsoLanguageCode;
    property IsoCultureCode: string read FIsoCultureCode write SetIsoCultureCode;
    property AvatarImageID: Int64 read FAvatarImageID write SetAvatarImageID;
    property AvatarImageUrl: string read FAvatarImageUrl write SetAvatarImageUrl;
    property isPublic: Boolean read FisPublic write SetisPublic;
    property Payment: Boolean read FPayment write SetPayment;
    property PaymentExpiration: TDate read FPaymentExpiration write SetPaymentExpiration;
  end;

type
  TOrganization = record
    ID: Integer;
    index: Integer;
    Name: string;
    Code: string;
  public
    procedure Reset;
    function ToString: string;
    function Compare(a: TOrganization): Boolean;
  end;

type
  /// <summary> TISOCountry is the record with all properties of a country as defined by ISO Standards </summary>
  TISOCountry = record
    /// <summary>/ The unique contry ID as in ErgoMercator Database </summary>
    ID: smallint;
    Name: string;
    Code: string;
    Code2: string;
    index: Integer;
    indent: string;
  public
    function ToString(full: Boolean = true): string;
    function Compare(a: TISOCountry): Boolean;
    procedure Reset;

    /// <summary>
    /// Converts the ISOCountry record in its Json Type
    /// </summary>
    /// <returns>
    /// The Json Object representingh record as structure and data
    /// </returns>
    function AsJsonObject: TJsonObject;
  end;

type
  TISORegion = record
    ID: smallint;
    index: Integer;
    Name: string;
    Code: string;
    indent: string;
  public
    function ToString: string;
    function AsJsonObject: TJsonObject;
    function Compare(a: TISORegion): Boolean;
    procedure Reset;
  end;

type
  TTown = record
    ID: smallint;
    index: Integer;
    Code: string;
    isocode: string;
    postalcode: string;
    Name: string;
    indent: string;
  public
    function ToString(full: Boolean = true): string;
    function Compare(a: TTown): Boolean;
    procedure Reset;
    function AsJsonObject: TJsonObject;
  end;

type
  TISODistrict = record
    ID: smallint;
    index: Integer;
    Code: string;
    Name: string;
    LocalCode: string;
    NumberPlate: string;
    indent: string;
  public
    function ToString(full: Boolean = true): string;
    function AsJsonObject: TJsonObject;
    function Compare(a: TISODistrict): Boolean;
    procedure Reset;
  end;

type
  TDistrict = record
    District: TISODistrict;
    Towns: array of TTown;
    SelectedTown: TTown;
    indent: string;
  public
    function ToString(full: Boolean = true): string;
    function GetTownbyID(aID: Integer): Boolean;
    function GetTownByName(aName: String): Boolean;
    function ListTown: TStringList;
    function GetTownByIndex(aIndex: Integer): Boolean;
    procedure Reset;
    function Compare(a: TDistrict): Boolean;
    function AsJsonObject: TJsonObject;
  end;

type
  TRegion = record
    Region: TISORegion;
    Organizations: array of TOrganization;
    SelectedOrganization: TOrganization;
    Districts: array of TDistrict;
    SelectedDistrict: TDistrict;
    Cound: Integer;
    indent: string;
    lastMessage: string;
    function Compare(a: TRegion): Boolean;
  public
    function ToString(full: Boolean = true): String;
    function GetDistrictbyID(aID: Integer): Boolean;
    function GetDistrictByName(aName: String): Boolean;
    function ListDistricts: TStringList;
    function GetDistrictByIndex(aIndex: Integer): Boolean;
    procedure Reset;
  end;

type
  TCountry = record
    Country: TISOCountry;
    SelectedRegion: TRegion;
    Regions: array of TRegion;
    Organizations: array of TOrganization;
    indent: string;
  public
    function ToString(full: Boolean = true): string;
    function GetRegionByName(aName: string): Boolean;
    function GetRegionByID(aID: Integer): Boolean;
    function ListRegions: TStringList;
    function GetRegionbyIndex(aIndex: Integer): Boolean;
  end;

type
  TRecordCountrySearch = record
    Countries: Array of TCountry;
    SelectedCountry: TCountry;
    procedure SetSelectedCountry(const Value: TCountry);
  public
    function CountryByID(ID: Integer): Boolean;
    function CountryByName(Name: string): Boolean;
    procedure AddCountry(aCountry: TCountry);
  end;

type
  TRecordLocation = record
    CountryRecord: TCountry;
    Country: TISOCountry;
    Region: TISORegion;
    District: TISODistrict;
    Town: TTown;
  private
    function GetJsonObject: TJsonObject;
  public
    procedure LoadFromJsonObject(aObject: TJsonObject);
    procedure ResetTown;
    procedure ResetDistrict;
    procedure ResetRegion;
    function ToString: string;
    function SetCountry(aCountry: TCountry): Boolean;
    function SetRegionName(aName: string): Boolean;
    function SetRegionID(aID: Integer): Boolean;
    function SetDistrictName(aName: string): Boolean;
    function SetDistrictID(aID: Integer): Boolean;
    function SetTownName(aName: string): Boolean;
    function SetTownID(aID: Integer): Boolean;
    function AsHtml(aTemplate: string): string;
  public
    property AsJsonObject: TJsonObject read GetJsonObject write LoadFromJsonObject;
  end;

type
  TJanuaRecordAddress = record
    Location: TRecordLocation;
    PlaceName: string;
    AddressFull: string;
    Address: string;
    Number: string;
    postalcode: string;
    Town: string;
    StateProvince: string;
    StateProvinceName: string;
    Region: string;
    Phone: string;
    CellularPhone: string;
    SMSSent: Boolean;
    SMSDate: TDateTime;
    SMSConfirmed: Boolean;
    SMSCheckNumber: string;
    WorkPhone: string;
    FaxNumber: string;
    AddressMail: string;
    indent: string;
    Latitude: Extended; // standard from address
    Longitude: Extended; // standard from address
    Distance: Double;
  private
    function GetLongAddress: string;
    function getISOCountryCode: string;
    procedure setISOCounrtryCode(aCode: string);
    function GetJsonObject: TJsonObject;
    procedure SetLongAddress(const Value: string);
    function GetCountryName: string;
    procedure SetCountryName(const Value: string);
    function GetCountryCode: string;
    procedure SetCountryCode(const Value: string);
  public
    procedure Clear;
    constructor Create(indent: string);
    function ToString: string;
    function AsHtml(aTemplate: string): string;
    procedure LoadFromAnagraphDataset(aDataset: TDataset);
    procedure SaveToAnagraphDataset(aDataset: TDataset);
{$IFDEF WEBBROKER}
    procedure LoadFromHttpParams(aRequest: TWebRequest);
    procedure LoadFromPersonHttpParams(aRequest: TWebRequest);
{$ENDIF}
    procedure LoadFromJsonObject(aJson: TJsonObject);
  public
    property ISOCountryCode: string read getISOCountryCode write setISOCounrtryCode;
    property AsJsonObject: TJsonObject read GetJsonObject write LoadFromJsonObject;
    property LongAddress: string read GetLongAddress write SetLongAddress;
    property CountryName: string read GetCountryName write SetCountryName;
    property CountryCode: string read GetCountryCode write SetCountryCode;
  end;

type
  TJanuaRecordUserProfile = record
    FUser: TJanuaUser;
    Title: string;
    FirstName: string;
    SecondName: string;
    LastName: string;
    Gender: TJanuaGender;
    BirthDate: TDate;
    PublicEmail: string;
    Address: TJanuaRecordAddress;
    BirthLocation: TRecordLocation;
    FiscalCode: string;
    FacebookJSON: string;
    CellPhone: string;
  private
    function GetJsonObject: TJsonObject;
    procedure SetUser(const Value: TJanuaUser);
  public
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    constructor Create(aGender: string);
    function ToString: string;
    function AsJson: string;
    function FullName: string;
    function AsHtml(aTemplate: string): string;
    function AsRawHtml: string;
    procedure SaveToDataset(dsUser, dsProfile: TDataset);
    procedure LoadFromDataset(dsUser, dsProfile: TDataset);
{$IFDEF WEBBROKER}
    procedure LoadFromHttpParams(aRequest: TWebRequest);
{$ENDIF}
    procedure Clear;
  public
    property AsJsonObject: TJsonObject read GetJsonObject write LoadFromJsonObject;
    // procedura interna al record per il salvataggio su di un Dataset ...........................
    property User: TJanuaUser read FUser write SetUser;
  end;

implementation

uses
  Janua.Core.Functions, Janua.Core.Json, System.Math, System.SysUtils, System.StrUtils;

{ TTown }

function TTown.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'Name', Name);
  Janua.Core.Json.JsonPair(Result, 'Code', Code);
  {
    Result.AddPair(TJsonPair.Create('id', TJSONNumber.Create(self.ID)));
    Result.AddPair(TJsonPair.Create('Name', TJSONString.Create(self.Name)));
    Result.AddPair(TJsonPair.Create('Code', TJSONString.Create(self.Code)));
  }
end;

function TTown.Compare(a: TTown): Boolean;
begin
  Result := (ID = a.ID) and (Name = a.Name) and (Code = a.Code);
end;

procedure TTown.Reset;
begin
  ID := 0; // smallint;
  index := 0; // integer;
  Code := ''; // string;
  Name := ''; // string;
  isocode := ''; // string;
end;

function TTown.ToString(full: Boolean = true): string;

begin
  Result := self.indent + 'id: ' + inttostr(self.ID) + sLineBreak + self.indent + 'code: ' + self.Code +
    sLineBreak + self.indent + 'name: ' + self.Name + sLineBreak + self.indent + 'index: ' + self.
    index.ToString + sLineBreak;
end;

{ TRegion }

function TRegion.Compare(a: TRegion): Boolean;
begin
  Result := self.Region.Compare(a.Region) and self.SelectedDistrict.Compare(a.SelectedDistrict) and
    self.SelectedOrganization.Compare(a.SelectedOrganization)
end;

function TRegion.GetDistrictbyID(aID: Integer): Boolean;
var
  aRegion: TDistrict;
begin
  Result := false;
  if aID = 0 then
    exit(false);
  // non eseguo la procedura se ricevo id = 0
  self.lastMessage := 'Ricerca distretto: ' + aID.ToString;
  for aRegion in self.Districts do
    if aRegion.District.ID = aID then
    begin
      Result := true;
      self.SelectedDistrict := aRegion;
      self.lastMessage := 'Trovato distretto: ' + aRegion.District.Name;
      exit;
    end;
end;

function TRegion.GetDistrictByIndex(aIndex: Integer): Boolean;
var
  aRegion: TDistrict;
begin
  Result := false;
  for aRegion in self.Districts do
    if aRegion.District.index = aIndex then
    begin
      Result := true;
      self.SelectedDistrict := aRegion;
      exit;
    end;
end;

function TRegion.GetDistrictByName(aName: string): Boolean;
var
  aRegion: TDistrict;
begin
  Result := false;
  if aName = '' then
    exit(false);
  // non eseguo la ricerca se viene passato un nome nullo ....
  self.lastMessage := 'Ricerca distretto: ' + aName;
  for aRegion in self.Districts do
    if UpperCase(Trim(aRegion.District.Name)) = UpperCase(Trim(aName)) then
    begin
      Result := true;
      self.SelectedDistrict := aRegion;
      self.lastMessage := 'Trovato distretto: ' + aRegion.District.Name;
      exit;
    end;
end;

function TRegion.ListDistricts: TStringList;
var
  i: Integer;
  aRegion: TDistrict;
begin
  Result := TStringList.Create;
  if Length(self.Districts) > 0 then
  begin
    for aRegion in self.Districts do
      Result.Add(aRegion.District.Name);
    Result.Sort;
    for i := 0 to SizeOf(Districts) - 1 do
      Districts[i].District.index := Result.IndexOf(Districts[i].District.Name);
  end
  else
  begin
    Result.Text := '';
  end;
end;

procedure TRegion.Reset;
begin
  self.Region.Reset;
  SetLength(self.Districts, 0);
end;

function TRegion.ToString(full: Boolean = true): String;
var
  i: Integer;
begin
  Result := self.Region.ToString + sLineBreak;

  if full then
    for i := 0 to Length(self.Districts) - 1 do
    begin
      self.Districts[i].indent := self.indent + '   ';
      Result := Result + sLineBreak + self.Districts[i].ToString;
    end;
end;

{ TDistrict }

function TDistrict.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
end;

function TDistrict.Compare(a: TDistrict): Boolean;
begin
  Result := District.Compare(a.District)
end;

function TDistrict.GetTownbyID(aID: Integer): Boolean;
var
  aRegion: TTown;
begin
  Result := false;
  if aID = 0 then
    exit(false);
  for aRegion in self.Towns do
    if aRegion.ID = aID then
    begin
      Result := true;
      self.SelectedTown := aRegion;
      exit;
    end;
end;

function TDistrict.GetTownByIndex(aIndex: Integer): Boolean;
var
  aRegion: TTown;
begin
  Result := false;
  if aIndex = -1 then
    exit(false);

  for aRegion in self.Towns do
    if aRegion.index = aIndex then
    begin
      Result := true;
      self.SelectedTown := aRegion;
      exit;
    end;
end;

function TDistrict.GetTownByName(aName: String): Boolean;
var
  aRegion: TTown;
begin
  Result := false;
  if aName = '' then
    exit(false);
  for aRegion in self.Towns do
    if UpperCase(aRegion.Name) = UpperCase(aName) then
    begin
      Result := true;
      self.SelectedTown := aRegion;
      exit;
    end;
end;

function TDistrict.ListTown: TStringList;
var
  i: Integer;
  aRegion: TTown;
begin
  Result := TStringList.Create;

  for aRegion in self.Towns do
    Result.Add(aRegion.Name);
  Result.Sort;
  for i := 0 to SizeOf(Towns) - 1 do
    Towns[i].index := Result.IndexOf(Towns[i].Name);

end;

procedure TDistrict.Reset;
begin
  self.District.Reset;
  SetLength(self.Towns, 0);
  self.SelectedTown.Reset;
end;

function TDistrict.ToString(full: Boolean = true): string;
var
  i: Integer;
begin
  Result := self.District.ToString(full) + sLineBreak;
  if full and (Length(self.Towns) > 0) then
    for i := 0 to Length(self.Towns) - 1 do
    begin
      self.Towns[i].indent := self.indent + '   ';
      Result := Result + sLineBreak + self.Towns[i].ToString;
    end;

end;

{ TCountry }

function TCountry.GetRegionByID(aID: Integer): Boolean;
var
  aRegion: TRegion;
begin
  Result := false;
  for aRegion in self.Regions do
    if aRegion.Region.ID = aID then
    begin
      Result := true;
      self.SelectedRegion := aRegion;
      exit;
    end;
end;

function TCountry.GetRegionbyIndex(aIndex: Integer): Boolean;
var
  aRegion: TRegion;
begin
  Result := false;
  for aRegion in self.Regions do
    if aRegion.Region.index = aIndex then
    begin
      Result := true;
      self.SelectedRegion := aRegion;
      exit;
    end;
end;

function TCountry.GetRegionByName(aName: string): Boolean;
var
  aRegion: TRegion;
begin
  Result := false;
  for aRegion in self.Regions do
    if UpperCase(aRegion.Region.Name) = UpperCase(aName) then
    begin
      Result := true;
      self.SelectedRegion := aRegion;
      exit;
    end;
end;

function TCountry.ListRegions: TStringList;
var
  i: Integer;
  aRegion: TRegion;
begin
  Result := TStringList.Create;
  if Length(self.Regions) > 0 then
  begin
    for aRegion in self.Regions do
      Result.Add(aRegion.Region.Name);
    Result.Sort;
    for i := 0 to SizeOf(Regions) - 1 do
      Regions[i].Region.index := Result.IndexOf(Regions[i].Region.Name);
  end
end;

function TCountry.ToString(full: Boolean = true): string;
var
  i: Integer;
begin
  Result := self.Country.ToString(false);

  if full then
    for i := 0 to Length(self.Regions) - 1 do
    begin
      self.Regions[i].indent := self.indent + '   ';
      Result := Result + sLineBreak + self.Regions[i].ToString;
    end;
end;

{ TISOCountry }

function TISOCountry.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'Name', Name);
  Janua.Core.Json.JsonPair(Result, 'Code', Code);
  Janua.Core.Json.JsonPair(Result, 'Code2', Code2);
  {
    Result.AddPair(TJsonPair.Create('id', TJSONNumber.Create(self.ID)));
    Result.AddPair(TJsonPair.Create('Name', TJSONString.Create(self.Name)));
    Result.AddPair(TJsonPair.Create('Code', TJSONString.Create(self.Code)));
    Result.AddPair(TJsonPair.Create('Code2', TJSONString.Create(self.Code2)));
    ID: smallint;
    Name: string;
    Code: string;
    Code2: string; }
end;

function TISOCountry.Compare(a: TISOCountry): Boolean;
begin
  Result := (ID = a.ID) and (Name = a.Name) and (Code = a.Code) and (Code2 = a.Code2)
end;

procedure TISOCountry.Reset;
begin
  ID := 0; // smallint;
  index := 0; // integer;
  Code := ''; // string;
  Name := ''; // string;
end;

function TISOCountry.ToString(full: Boolean): string;
begin
  Result := self.indent + 'id: ' + inttostr(self.ID) + sLineBreak + self.indent + 'code: ' + self.Code +
    sLineBreak + self.indent + 'name: ' + self.Name + sLineBreak + self.indent + 'index: ' + self.
    index.ToString + sLineBreak;
end;

{ TRecordCountrySearch }

procedure TRecordCountrySearch.AddCountry(aCountry: TCountry);
begin
  if not self.CountryByID(aCountry.Country.ID) then
  begin
    SetLength(self.Countries, Length(self.Countries) + 1);
    self.Countries[Length(self.Countries) - 1] := aCountry;
    self.SelectedCountry := aCountry;
  end;
end;

function TRecordCountrySearch.CountryByID(ID: Integer): Boolean;
var
  aCountry: TCountry;
begin
  Result := false;
  if (Length(self.Countries) = 0) or (ID = 0) then
    exit(false)
  else
    for aCountry in self.Countries do
      if aCountry.Country.ID = ID then
      begin
        Result := true;
        self.SelectedCountry := aCountry;
      end;
end;

function TRecordCountrySearch.CountryByName(Name: string): Boolean;
var
  aCountry: TCountry;
begin
  Result := false;
  if (Length(self.Countries) = 0) or (Name = '') then
    exit(false)
  else
    for aCountry in self.Countries do
      if UpperCase(aCountry.Country.Name) = Name then
      begin
        Result := true;
        self.SelectedCountry := aCountry;
        exit;
      end;
end;

procedure TRecordCountrySearch.SetSelectedCountry(const Value: TCountry);
begin
  SelectedCountry := Value;
end;

{ TRecordLocation }

function TRecordLocation.AsHtml(aTemplate: string): string;
begin
  { CountryRecord: TCountry;
    Country: TISOCountry;
    Region: TISORegion;
    District: TISODistrict;
    Town: TTown;
  }

  Result := StringReplace(Result, '$countrycode$', self.Country.Code, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$districtcode$', self.District.Code, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$townname$', self.Town.Name, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$districtname$', self.District.Name, [rfReplaceAll, rfIgnoreCase]);
end;

function TRecordLocation.GetJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
{$IFNDEF FPC}
  Janua.Core.Json.JsonPair(Result, 'country', self.Country.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'region', self.Region.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'district', self.District.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'town', self.Town.AsJsonObject);
{$ENDIF}
end;

procedure TRecordLocation.LoadFromJsonObject(aObject: TJsonObject);
begin
  // procedura non implementata del tutto...............
  { TODO : Implementare la procedura di Localizzazione NUTS se mai servisse }
  if Assigned(aObject) then
  begin

  end;
end;

procedure TRecordLocation.ResetDistrict;
begin
  self.District.Reset;
  self.CountryRecord.SelectedRegion.SelectedDistrict.Reset;
  self.ResetTown;
end;

procedure TRecordLocation.ResetRegion;
begin
  self.Region.Reset;
  self.CountryRecord.SelectedRegion.Reset;
end;

procedure TRecordLocation.ResetTown;
begin
  self.Town.Reset;
end;

function TRecordLocation.SetCountry(aCountry: TCountry): Boolean;
begin
  if aCountry.Country.ID = self.Country.ID then
  begin
    Result := true;
    CountryRecord := aCountry;
    self.Country := CountryRecord.Country;
    if CountryRecord.GetRegionByID(self.Region.ID) then
      self.Region := CountryRecord.SelectedRegion.Region;
    if CountryRecord.SelectedRegion.GetDistrictbyID(self.District.ID) then
      self.District := CountryRecord.SelectedRegion.SelectedDistrict.District;
    if CountryRecord.SelectedRegion.SelectedDistrict.GetTownbyID(self.Town.ID) then
      self.Town := CountryRecord.SelectedRegion.SelectedDistrict.SelectedTown;
  end
  else
  begin
    Result := false;
  end;
end;

function TRecordLocation.SetDistrictID(aID: Integer): Boolean;
begin
  Result := self.District.ID <> aID;
  if not Result then
  begin
    Result := self.CountryRecord.SelectedRegion.GetDistrictbyID(aID);
    if Result then
    begin
      self.District := self.CountryRecord.SelectedRegion.SelectedDistrict.District;
      if (self.Town.ID = 0) or not self.CountryRecord.SelectedRegion.SelectedDistrict.GetTownbyID(self.Town.ID)
      then
        self.ResetTown;
    end;
  end;

  if not Result then
    self.ResetDistrict;

end;

function TRecordLocation.SetDistrictName(aName: string): Boolean;
begin
  Result := self.District.Name = aName;

  if not Result then
  begin
    Result := self.CountryRecord.SelectedRegion.GetDistrictByName(aName);
    if Result then
    begin
      self.District := self.CountryRecord.SelectedRegion.SelectedDistrict.District;
      if (self.Town.ID = 0) or not self.CountryRecord.SelectedRegion.SelectedDistrict.GetTownbyID(self.Town.ID)
      then
        self.ResetTown;
    end;
  end;

  if not Result then
    self.ResetDistrict;
end;

function TRecordLocation.SetRegionID(aID: Integer): Boolean;
begin
  Result := self.Region.ID = aID;
  if not Result then
  begin
    Result := self.CountryRecord.GetRegionByID(aID);
    if Result then
    begin
      self.Region := self.CountryRecord.SelectedRegion.Region;
      if not self.CountryRecord.SelectedRegion.GetDistrictbyID(self.Town.ID) then
        self.ResetDistrict;
    end;
  end;
  if not Result then
    self.ResetRegion;
end;

function TRecordLocation.SetRegionName(aName: string): Boolean;
begin
  Result := self.Region.Name = aName;

  if not Result then
  begin
    Result := self.CountryRecord.GetRegionByName(aName);
    if Result then
    begin
      self.Region := self.CountryRecord.SelectedRegion.Region;
      if (District.ID = 0) or not CountryRecord.SelectedRegion.GetDistrictbyID(District.ID) then
        self.ResetDistrict;
    end;
  end;

  if not Result then
    self.ResetRegion;
end;

function TRecordLocation.SetTownID(aID: Integer): Boolean;
begin
  Result := self.Town.ID = aID;
  if not Result then
  begin
    Result := self.CountryRecord.SelectedRegion.SelectedDistrict.GetTownbyID(aID);
    if Result then
    begin
      Town := CountryRecord.SelectedRegion.SelectedDistrict.SelectedTown;
    end;
  end;

  if not Result then
    ResetTown;
end;

function TRecordLocation.SetTownName(aName: string): Boolean;
begin
  Result := Town.Name = aName;
  if not Result then
  begin
    Result := CountryRecord.SelectedRegion.SelectedDistrict.GetTownByName(aName);
    if Result then
    begin
      Town := CountryRecord.SelectedRegion.SelectedDistrict.SelectedTown;
    end;
  end;

  if not Result then
    ResetTown;

end;

function TRecordLocation.ToString: string;
begin
  Result := 'Country:' + sLineBreak + Country.ToString(false) + sLineBreak + 'Region:' + sLineBreak +
    Region.ToString() + sLineBreak + 'Town:' + sLineBreak + Town.ToString(false) + sLineBreak + 'District:' +
    sLineBreak + District.ToString(false)
end;

{ TRecordAddress }

function TJanuaRecordAddress.AsHtml(aTemplate: string): string;
begin
  Result := StringReplace(aTemplate, '$AddressFull$', self.AddressFull, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Address$', self.Address, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Number$', self.Number, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$postalcode$', self.postalcode, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Phone$', self.Phone, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$CellularPhone$', self.CellularPhone, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$WorkPhone$', self.WorkPhone, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$FaxNumber$', self.FaxNumber, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$AddressMail$', self.AddressMail, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Town$', self.Town, [rfReplaceAll, rfIgnoreCase]);
  Result := self.Location.AsHtml(aTemplate);
end;

procedure TJanuaRecordAddress.Clear;
begin
  Latitude := 0;
  Longitude := 0;
  AddressFull := '';
  Address := '';
  Number := '';
  postalcode := '';
  Town := '';
  StateProvince := '';
  Phone := '';
  CellularPhone := '';
  SMSSent := false;
  SMSDate := 0.0;
  SMSConfirmed := false;
  SMSCheckNumber := '';
  WorkPhone := '';
  FaxNumber := '';
  AddressMail := '';
  indent := '';
end;

constructor TJanuaRecordAddress.Create(indent: string);
begin
  indent := indent;
  Clear;
end;

function TJanuaRecordAddress.GetCountryCode: string;
begin
  Result := Location.Country.Code2;
end;

function TJanuaRecordAddress.GetCountryName: string;
begin
  Result := Location.Country.Name;
end;

function TJanuaRecordAddress.getISOCountryCode: string;
begin
  Result := self.Location.CountryRecord.Country.Code
end;

function TJanuaRecordAddress.GetJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  // full address, its location is processed by Google address location identifiers
  Janua.Core.Json.JsonPair(Result, 'placename', self.PlaceName);
  Janua.Core.Json.JsonPair(Result, 'full_address', self.AddressFull);
  Janua.Core.Json.JsonPair(Result, 'latitude', self.Latitude);
  Janua.Core.Json.JsonPair(Result, 'longitude', self.Longitude);
  Janua.Core.Json.JsonPair(Result, 'address', self.Address);
  Janua.Core.Json.JsonPair(Result, 'number', self.Number);
  Janua.Core.Json.JsonPair(Result, 'postalcode', self.postalcode);
  Janua.Core.Json.JsonPair(Result, 'phone', self.Phone);
  Janua.Core.Json.JsonPair(Result, 'cellularphone', self.CellularPhone);
  Janua.Core.Json.JsonPair(Result, 'workphone', self.WorkPhone);
  Janua.Core.Json.JsonPair(Result, 'faxnumber', self.FaxNumber);
  Janua.Core.Json.JsonPair(Result, 'addressmail', self.AddressMail);
  Janua.Core.Json.JsonPair(Result, 'smssent', self.SMSSent);
  Janua.Core.Json.JsonPair(Result, 'smsdate', self.SMSDate);
  Janua.Core.Json.JsonPair(Result, 'smsconfirmed', self.SMSConfirmed);
  Janua.Core.Json.JsonPair(Result, 'smscheckNumber', self.SMSCheckNumber);
  Janua.Core.Json.JsonPair(Result, 'location', self.Location.AsJsonObject);
end;

function TJanuaRecordAddress.GetLongAddress: string;
begin
  Result := self.AddressFull
end;

procedure TJanuaRecordAddress.LoadFromAnagraphDataset(aDataset: TDataset);
begin
{$IFNDEF FPC}
  GetFieldValue(self.AddressFull, aDataset, 'full_address');
  GetFieldValue(self.Address, aDataset, 'an_address');
  GetFieldValue(self.Number, aDataset, 'an_address_number');
  GetFieldValue(self.Town, aDataset, 'an_town');
  GetFieldValue(self.postalcode, aDataset, 'an_postal_code');
  self.ISOCountryCode := GetFieldAsString(aDataset, 'an_iso_country_code');
  GetFieldValue(self.StateProvince, aDataset, 'an_state_province');
  GetFieldValue(self.Phone, aDataset, 'an_phone');
  GetFieldValue(self.WorkPhone, aDataset, 'an_phone2');
  GetFieldValue(self.FaxNumber, aDataset, 'an_fax');
  GetFieldValue(self.CellularPhone, aDataset, 'an_cellular');
  GetFieldValue(self.Latitude, aDataset, 'latitude');
  GetFieldValue(self.Longitude, aDataset, 'longitude');
  GetFieldValue(self.Distance, aDataset, 'distance');
{$ENDIF FPC}
end;

procedure TJanuaRecordAddress.LoadFromJsonObject(aJson: TJsonObject);
begin
  self.Clear;
  if Assigned(aJson) then
  begin
    Location.AsJsonObject := Janua.Core.Json.JsonObject('location', aJson);
    // Janua.Core.Json.JsonValue(Result, , self.Location.AsJsonObject);
    // full address, its location is processed by Google address location identifiers
    Janua.Core.Json.JsonValue(aJson, 'full_address', self.AddressFull);
    Janua.Core.Json.JsonValue(aJson, 'latitude', self.Latitude);
    Janua.Core.Json.JsonValue(aJson, 'longitude', self.Longitude);
    Janua.Core.Json.JsonValue(aJson, 'address', self.Address);
    Janua.Core.Json.JsonValue(aJson, 'number', self.Number);
    Janua.Core.Json.JsonValue(aJson, 'postalcode', self.postalcode);
    Janua.Core.Json.JsonValue(aJson, 'phone', self.Phone);
    Janua.Core.Json.JsonValue(aJson, 'cellularphone', self.CellularPhone);
    Janua.Core.Json.JsonValue(aJson, 'workphone', self.WorkPhone);
    Janua.Core.Json.JsonValue(aJson, 'faxnumber', self.FaxNumber);
    Janua.Core.Json.JsonValue(aJson, 'addressmail', self.AddressMail);
    Janua.Core.Json.JsonValue(aJson, 'smssent', self.SMSSent);
    Janua.Core.Json.JsonValue(aJson, 'smsdate', self.SMSDate);
    Janua.Core.Json.JsonValue(aJson, 'smsconfirmed', self.SMSConfirmed);
    Janua.Core.Json.JsonValue(aJson, 'smschecknumber', self.SMSCheckNumber);
  end;
end;

procedure TJanuaRecordAddress.SaveToAnagraphDataset(aDataset: TDataset);
begin
  aDataset.Edit;
  SetFieldValue(AddressFull, aDataset, 'full_address');
  SetFieldValue(Address, aDataset, 'an_address');
  SetFieldValue(Number, aDataset, 'an_address_number');
  SetFieldValue(Town, aDataset, 'an_town');
  SetFieldValue(postalcode, aDataset, 'an_postal_code');
  SetFieldValue(ISOCountryCode, aDataset, 'an_iso_country_code');
  SetFieldValue(StateProvince, aDataset, 'an_state_province');
  SetFieldValue(Phone, aDataset, 'an_phone');
  SetFieldValue(WorkPhone, aDataset, 'an_phone2');
  SetFieldValue(FaxNumber, aDataset, 'an_fax');
  SetFieldValue(CellularPhone, aDataset, 'an_cellular');
  SetFieldValue(Latitude, aDataset, 'latitude');
  SetFieldValue(Longitude, aDataset, 'longitude');
  SetFieldValue(Distance, aDataset, 'distance');

end;

procedure TJanuaRecordAddress.SetCountryCode(const Value: string);
begin
  Location.Country.Code2 := Value;
end;

procedure TJanuaRecordAddress.SetCountryName(const Value: string);
begin
  Location.Country.Name := Value;
end;

{$IFDEF WEBBROKER}

procedure TJanuaRecordAddress.LoadFromPersonHttpParams(aRequest: TWebRequest);
begin
  Address := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_address');
  Town := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_town');
  postalcode := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_postalcode');
  StateProvince := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_stateprovince');

  Phone := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_phone');
  WorkPhone := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_work_phone');
  self.FaxNumber := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_fax');
  CellularPhone := Janua.Core.Functions.HttpGetParamValue(aRequest, 'person_cellular');
end;

procedure TJanuaRecordAddress.LoadFromHttpParams(aRequest: TWebRequest);
begin
  if HttpGetParamValue(aRequest, 'postal_code') <> '' then
    self.postalcode := HttpGetParamValue(aRequest, 'postalcode');
  if HttpGetParamValue(aRequest, 'cellularphone') <> '' then
    self.CellularPhone := HttpGetParamValue(aRequest, 'cellularphone');
  if HttpGetParamValue(aRequest, 'address') <> '' then
    Address := Janua.Core.Functions.HttpGetParamValue(aRequest, 'address');
  if HttpGetParamValue(aRequest, 'address_number') <> '' then
    Number := Janua.Core.Functions.HttpGetParamValue(aRequest, 'address_number');
  if HttpGetParamValue(aRequest, 'town') <> '' then
    Town := Janua.Core.Functions.HttpGetParamValue(aRequest, 'town');
  if HttpGetParamValue(aRequest, 'postal_code') <> '' then
    postalcode := Janua.Core.Functions.HttpGetParamValue(aRequest, 'postal_code');
  if HttpGetParamValue(aRequest, 'iso_country_code') <> '' then
    ISOCountryCode := Janua.Core.Functions.HttpGetParamValue(aRequest, 'iso_country_code');
  if HttpGetParamValue(aRequest, 'state_province') <> '' then
    StateProvince := Janua.Core.Functions.HttpGetParamValue(aRequest, 'state_province');
  if HttpGetParamValue(aRequest, 'phone') <> '' then
    Phone := Janua.Core.Functions.HttpGetParamValue(aRequest, 'phone');
  if HttpGetParamValue(aRequest, 'work_phone') <> '' then
    WorkPhone := Janua.Core.Functions.HttpGetParamValue(aRequest, 'work_phone');
  if HttpGetParamValue(aRequest, 'fax') <> '' then
    self.FaxNumber := Janua.Core.Functions.HttpGetParamValue(aRequest, 'fax');
end;
{$ENDIF}

procedure TJanuaRecordAddress.setISOCounrtryCode(aCode: string);
begin
  Location.CountryRecord.Country.Code := aCode;
end;

procedure TJanuaRecordAddress.SetLongAddress(const Value: string);
begin
  AddressFull := Value;
end;

function TJanuaRecordAddress.ToString: string;
begin
  if self.indent = '' then
    self.indent := '   ';
  Result := self.indent + 'location: ' + Location.ToString + self.indent + 'Address: ' + Address + self.indent
    + 'Number: ' + Number + self.indent + 'postalcode: ' + postalcode + self.indent + 'Phone: ' + Phone +
    self.indent + 'CellularPhone: ' + CellularPhone + self.indent + 'WorkPhone: ' + WorkPhone + self.indent +
    'FaxNumber: ' + FaxNumber + self.indent + 'AddressMail: ' + AddressMail;
end;

{ TISODistrict }

function TISODistrict.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  JsonPair(Result, 'id', ID);
  JsonPair(Result, 'Name', Name);
  JsonPair(Result, 'Code', Code);
end;

function TISODistrict.Compare(a: TISODistrict): Boolean;
begin
  Result := (ID = a.ID) and (Name = a.Name) and (Code = a.Code);
end;

procedure TISODistrict.Reset;
begin
  ID := 0; // smallint;
  index := 0; // integer;
  Code := ''; // string;
  Name := ''; // string;
  LocalCode := ''; // string;
  NumberPlate := ''; // string;
end;

function TISODistrict.ToString(full: Boolean): string;
begin
  if self.indent = '' then
    self.indent := '  ';
  Result := self.indent + 'id: ' + inttostr(self.ID) + sLineBreak + self.indent + 'code: ' + self.Code +
    sLineBreak + self.indent + 'name: ' + self.Name + sLineBreak + self.indent + 'index: ' + self.
    index.ToString;
end;

{ TISORegion }

function TISORegion.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', ID);
  Janua.Core.Json.JsonPair(Result, 'Name', Name);
  Janua.Core.Json.JsonPair(Result, 'Code', Code);
  {
    Result.AddPair(TJsonPair.Create('id', TJSONNumber.Create(self.ID)));
    Result.AddPair(TJsonPair.Create('Name', TJSONString.Create(self.Name)));
    Result.AddPair(TJsonPair.Create('Code', TJSONString.Create(self.Code)));
    ID: smallint;
    Name: string;
    Code: string;
    Code2: string; }
end;

function TISORegion.Compare(a: TISORegion): Boolean;
begin
  Result := (ID = a.ID) and (Name = a.Name) and (Code = a.Code);

end;

procedure TISORegion.Reset;
begin
  ID := 0; // smallint;
  index := 0; // integer;
  Code := ''; // string;
  Name := ''; // string;
end;

function TISORegion.ToString: string;
begin
  if self.indent = '' then
    self.indent := '   ';
  Result := self.indent + 'id: ' + inttostr(ID) + sLineBreak + self.indent + 'code: ' + Code + sLineBreak +
    self.indent + 'name: ' + Name + sLineBreak + self.indent + 'index: ' + index.ToString;
end;

{ TOrganization }

function TOrganization.Compare(a: TOrganization): Boolean;
begin
  Result := (ID = a.ID) and (Name = a.Name) and (Code = a.Code);
end;

procedure TOrganization.Reset;
begin
  ID := 0; // smallint;
  index := 0; // integer;
  Code := ''; // string;
  Name := ''; // string;
end;

function TOrganization.ToString: string;
begin
  Result := 'ID:' + ID.ToString() + 'index: ' + index.ToString() + 'Name: ' + Name + 'Code:' + Code;
end;

{ TJanuaUser }

function TJanuaUser.AsHtml(aTemplate: string): string;
begin
  Result := StringReplace(aTemplate, '$Username$', self.Username, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Email$', self.Email, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Password$', self.Password, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$Key$', self.Key, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$id$', self.ID.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$role_name$', self.role_name, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$role_id$', self.role_id.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$SocialID$', self.SocialID, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$SocialType$', self.SocialType, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$AvatarImageID$', self.AvatarImageID.ToString,
    [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$AvatarImageUrl$', self.AvatarImageUrl, [rfReplaceAll, rfIgnoreCase]);
end;

function TJanuaUser.AsRawHtml: string;
var
  aList: TStrings;
begin
  aList := TStringList.Create;
  try
    aList.Add('<p> Username: ' + self.Username + '<p>');
    aList.Add('<p> Email: ' + self.Email + '<p>');
    aList.Add('<p> Key: ' + Key + '<p>');
    aList.Add('<p> id: ' + self.ID.ToString + '<p>');
    aList.Add('<p> AvatarImage_URL: ' + self.AvatarImageUrl + '<p>');
  finally
    aList.Free;
  end;

end;

procedure TJanuaUser.Clear;
begin
  Username := '';
  SocialID := '';
  SocialTypeID := 0;
  SocialType := '';
  Email := '';
  EmailSent := false;
  EmailDate := 0.0;
  EmailConfirmed := false;
  Password := '';
  RPassword := '';
  Key := '';
  ID := 0;
  role_id := 0;
  role_name := '';
  IsoLanguageCode := 'it';
  IsoCultureCode := 'it_it';
  AvatarImageID := 0;
  AvatarImageUrl := '';
  isPublic := false;
end;

function TJanuaUser.GetJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'username', self.Username);
  Janua.Core.Json.JsonPair(Result, 'email', self.Email);
  Janua.Core.Json.JsonPair(Result, 'password', self.Password);
  Janua.Core.Json.JsonPair(Result, 'key', self.Key);
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'role_id', self.role_id);
  Janua.Core.Json.JsonPair(Result, 'role_name', self.role_name);
  Janua.Core.Json.JsonPair(Result, 'social_id', self.SocialID);
  Janua.Core.Json.JsonPair(Result, 'social_network', self.SocialType);
  Janua.Core.Json.JsonPair(Result, 'avatarimage_id', self.AvatarImageID);
  Janua.Core.Json.JsonPair(Result, 'avatarimage_url', self.AvatarImageUrl);
  Janua.Core.Json.JsonPair(Result, 'ispublic', self.isPublic);
  Janua.Core.Json.JsonPair(Result, 'payment', self.Payment);
  Janua.Core.Json.JsonPair(Result, 'payment_expiration_date', self.PaymentExpiration);
end;

function TJanuaUser.GetRoleByID(aID: Integer): Boolean;
var
  aRegion: TJanuaRole;
begin
  Result := false;
  for aRegion in self.Roles do
    if aRegion.ID = aID then
    begin
      Result := true;
      self.SelectedRole := aRegion;
      exit;
    end;
end;

function TJanuaUser.GetRolebyIndex(aIndex: Integer): Boolean;
var
  aRegion: TJanuaRole;
begin
  Result := false;
  for aRegion in self.Roles do
    if aRegion.index = aIndex then
    begin
      Result := true;
      self.SelectedRole := aRegion;
      exit;
    end;
end;

function TJanuaUser.getRoleByName(aName: string): Boolean;
var
  aRegion: TJanuaRole;
begin
  Result := false;
  for aRegion in self.Roles do
    if UpperCase(aRegion.Name) = UpperCase(aName) then
    begin
      Result := true;
      self.SelectedRole := aRegion;
      exit;
    end;
end;

procedure TJanuaUser.LoadFromDataset(dsUser: TDataset);
begin
  if Assigned(dsUser) and (dsUser.Active) and (dsUser.RecordCount = 1) then
  begin
    self.role_id := dsUser.FieldByName('default_role_id').AsInteger;
    self.Key := dsUser.FieldByName('verify_token').AsString;
    self.ID := dsUser.FieldByName('db_user_id').AsInteger;
    self.Email := dsUser.FieldByName('email').AsString;
    self.Username := dsUser.FieldByName('username').AsString;
    self.AvatarImageUrl := dsUser.FieldByName('image_url').AsString;
    // gli utenti Public hanno la proprietà Public impostata a true, gli utenti Public sono creati
    // automaticamente dal sistema con nome utente = <schema.name>+nobody e mail = nobody@schema.url
    self.isPublic := dsUser.FieldByName('ispublic').AsBoolean;

    EmailSent := dsUser.FieldByName('emailsent').AsBoolean;
    EmailDate := dsUser.FieldByName('emaildate').AsDateTime;
    EmailConfirmed := dsUser.FieldByName('emailconfirmed').AsBoolean;

    Janua.Core.Functions.GetFieldValue(self.FPayment, dsUser, 'payment', false);
    Janua.Core.Functions.GetFieldValue(self.FPaymentExpiration, dsUser, 'payment_expiration_date', false);

    // facebook-871436576288123
    if Pos('facebook', self.Username) > 0 then
    begin
      self.SocialID := StringReplace(self.Username, 'facebook-', '', [rfReplaceAll]);
      self.SocialType := 'Facebook';
    end;
  end;
end;

procedure TJanuaUser.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonValue(aJsonObject, 'username', self.FUsername);
  Janua.Core.Json.JsonValue(aJsonObject, 'email', self.FEmail);
  Janua.Core.Json.JsonValue(aJsonObject, 'password', self.FPassword);
  Janua.Core.Json.JsonValue(aJsonObject, 'key', self.FKey);
  Janua.Core.Json.JsonValue(aJsonObject, 'id', self.FID);
  Janua.Core.Json.JsonValue(aJsonObject, 'role_id', self.Frole_id);
  Janua.Core.Json.JsonValue(aJsonObject, 'role_name', self.Frole_name);
  Janua.Core.Json.JsonValue(aJsonObject, 'social_id', self.FSocialID);
  Janua.Core.Json.JsonValue(aJsonObject, 'social_network', self.FSocialType);
  Janua.Core.Json.JsonValue(aJsonObject, 'avatarimage_id', self.FAvatarImageID);
  Janua.Core.Json.JsonValue(aJsonObject, 'avatarimage_url', self.FAvatarImageUrl);
  Janua.Core.Json.JsonValue(aJsonObject, 'ispublic', self.FisPublic);
  Janua.Core.Json.JsonValue(aJsonObject, 'payment_expiration_date', self.FPaymentExpiration);
  Janua.Core.Json.JsonValue(aJsonObject, 'payment', self.FPayment);
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaUser.LoadFromHttpParams(aRequest: TWebRequest);
begin
  // First Part is the User  .........................................................
  if HttpGetParamValue(aRequest, 'email') <> '' then
    self.Email := HttpGetParamValue(aRequest, 'email');
  // se la password è inserita in login è password  se form di registrazione è
  // register password................................................................
  if HttpGetParamValue(aRequest, 'password') <> '' then
    self.Password := HttpGetParamValue(aRequest, 'password')
  else if HttpGetParamValue(aRequest, 'register_password') <> '' then
    self.Password := HttpGetParamValue(aRequest, 'password');

  if HttpGetParamValue(aRequest, 'rpassword') <> '' then
    self.RPassword := HttpGetParamValue(aRequest, 'rpassword');
  if HttpGetParamValue(aRequest, 'iso_lang_code') <> '' then
    self.IsoLanguageCode := HttpGetParamValue(aRequest, 'iso_lang_code');
  if HttpGetParamValue(aRequest, 'iso_culture_code') <> '' then
    self.IsoCultureCode := HttpGetParamValue(aRequest, 'iso_culture_code');
  if HttpGetParamValue(aRequest, 'username') <> '' then
    self.Username := HttpGetParamValue(aRequest, 'username');
end;
{$ENDIF Defined(WEBBROKER)}

procedure TJanuaUser.SaveToDataset(dsUser: TDataset);
begin
  if Assigned(dsUser) and dsUser.Active then
  begin
    dsUser.Edit;
    dsUser.FieldByName('email').AsString := self.Email;
    dsUser.FieldByName('iso_language_code').AsString := self.IsoLanguageCode;
    dsUser.FieldByName('iso_culture_code').AsString := self.IsoCultureCode;
    dsUser.FieldByName('image_url').AsString := self.AvatarImageUrl;
    dsUser.FieldByName('emailsent').AsBoolean := self.EmailSent;
    dsUser.FieldByName('emailconfirmed').AsBoolean := self.EmailConfirmed;
    dsUser.FieldByName('emaildate').AsDateTime := self.EmailDate;
    dsUser.Post;
  end;
end;

procedure TJanuaUser.SetAvatarImageID(const Value: Int64);
begin
  FAvatarImageID := Value;
end;

procedure TJanuaUser.SetAvatarImageUrl(const Value: string);
begin
  FAvatarImageUrl := Value;
end;

procedure TJanuaUser.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TJanuaUser.SetEmailConfirmed(const Value: Boolean);
begin
  FEmailConfirmed := Value;
end;

procedure TJanuaUser.SetEmailDate(const Value: TDateTime);
begin
  FEmailDate := Value;
end;

procedure TJanuaUser.SetEmailSent(const Value: Boolean);
begin
  FEmailSent := Value;
end;

procedure TJanuaUser.SetID(const Value: Int64);
begin
  FID := Value;
end;

procedure TJanuaUser.SetIsoCultureCode(const Value: string);
begin
  FIsoCultureCode := Value;
end;

procedure TJanuaUser.SetIsoLanguageCode(const Value: string);
begin
  FIsoLanguageCode := Value;
end;

procedure TJanuaUser.SetisPublic(const Value: Boolean);
begin
  FisPublic := Value;
end;

procedure TJanuaUser.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TJanuaUser.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaUser.SetPayment(const Value: Boolean);
begin
  FPayment := Value;
end;

procedure TJanuaUser.SetPaymentExpiration(const Value: TDate);
begin
  FPaymentExpiration := Value;
end;

procedure TJanuaUser.SetRoleByID(aID: smallint);
begin
  if self.GetRoleByID(aID) then
  begin
    self.role_id := self.SelectedRole.ID;
    self.role_name := self.SelectedRole.Name;
  end;
end;

procedure TJanuaUser.SetRoles(const Value: TArrayRoles);
begin
  FRoles := Value;
end;

procedure TJanuaUser.Setrole_id(const Value: smallint);
begin
  Frole_id := Value;
end;

procedure TJanuaUser.Setrole_name(const Value: string);
begin
  Frole_name := Value;
end;

procedure TJanuaUser.SetRPassword(const Value: string);
begin
  FRPassword := Value;
end;

procedure TJanuaUser.SetSelectedRole(const Value: TJanuaRole);
begin
  FSelectedRole := Value;
end;

procedure TJanuaUser.SetSocialID(const Value: string);
begin
  FSocialID := Value;
end;

procedure TJanuaUser.SetSocialType(const Value: string);
begin
  FSocialType := Value;
end;

procedure TJanuaUser.SetSocialTypeID(const Value: smallint);
begin
  FSocialTypeID := Value;
end;

procedure TJanuaUser.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

function TJanuaUser.ToJSON: string;
var
  Temp: TJsonObject;
begin
  Temp := self.AsSJSONObJect;
  Result := Temp.ToString;
  Temp.Free;
end;

function TJanuaUser.ToString: string;
begin
  Result := 'Username =  ' + Username + ', Email: ' + Email + ', Password: ' + Password + ', Key: ' + Key +
    ', id: ' + ID.ToString;

end;

{ TJanuaRecordUserProfile }

function TJanuaRecordUserProfile.AsHtml(aTemplate: string): string;
begin
  Result := StringReplace(aTemplate, '$FirstName$', self.FirstName, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$LastName$', self.LastName, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$GenderCode$', self.Gender.GenderCode, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$BirthDate$', FormatDateTime('dd/mm/yyyy', BirthDate),
    [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$PublicEmail$', self.PublicEmail, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$FiscalCode$', self.FiscalCode, [rfReplaceAll, rfIgnoreCase]);
  Result := self.User.AsHtml(Result);
  Result := self.Address.AsHtml(Result);
end;

function TJanuaRecordUserProfile.AsJson: string;
begin
  Result := Janua.Core.Json.ToJsonPrettyFree(AsJsonObject);
end;

function TJanuaRecordUserProfile.AsRawHtml: string;
var
  aList: TStrings;
begin
  aList := TStringList.Create;
  try
    aList.Add('<p> FirstName: ' + self.FirstName + '<p>');
    aList.Add('<p> LastName: ' + self.LastName + '<p>');
    aList.Add('<p> Gender: ' + self.Gender.GenderName + '<p>');
    aList.Add('<p> Address: ' + self.Address.ToString + '<p>');
    aList.Add('<p> FiscalCode: ' + self.FiscalCode + '<p>');
    aList.Add(self.User.AsRawHtml);
  finally
    aList.Free;
  end;
end;

procedure TJanuaRecordUserProfile.Clear;
begin
  self.BirthLocation.Country.ID := 0;
  self.BirthLocation.Region.ID := 0;
  self.BirthLocation.District.ID := 0;
  self.BirthLocation.Town.ID := 0;
  self.Address.Location.Country.ID := 0;
  self.Address.Location.Region.ID := 0;
  self.Address.Location.District.ID := 0;
  self.Address.Location.Town.ID := 0;
  self.Gender.GenderType := TJanuaGenderType.NotSet;

  self.User.Clear;
end;

constructor TJanuaRecordUserProfile.Create(aGender: string);
begin
  self.Gender := TJanuaGender.Create(aGender);
  self.Address.Create('   ');
end;

function TJanuaRecordUserProfile.FullName: string;
begin
  if self.SecondName > '' then
    Result := FirstName + ' ' + SecondName + ' ' + LastName
  else
    Result := FirstName + ' ' + LastName;
end;

function TJanuaRecordUserProfile.GetJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'user', self.User.AsSJSONObJect);
  Janua.Core.Json.JsonPair(Result, 'firstname', FirstName);
  Janua.Core.Json.JsonPair(Result, 'gendercode', self.Gender.GenderCode);
  Janua.Core.Json.JsonPair(Result, 'lastname', self.LastName);
  Janua.Core.Json.JsonPair(Result, 'birthdate', self.BirthDate);
  Janua.Core.Json.JsonPair(Result, 'publicemail', self.PublicEmail);
  Janua.Core.Json.JsonPair(Result, 'fiscalcode', self.FiscalCode);
  Janua.Core.Json.JsonPair(Result, 'address', self.Address.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'birthlocation', self.BirthLocation.AsJsonObject);
end;

procedure TJanuaRecordUserProfile.LoadFromDataset(dsUser, dsProfile: TDataset);
begin
  self.User.LoadFromDataset(dsUser);

  if Assigned(dsProfile) and (dsProfile.Active) and (dsProfile.RecordCount = 1) then
  begin
    self.FirstName := dsProfile.FieldByName('first_name').AsString;
    self.LastName := dsProfile.FieldByName('last_name').AsString;
    self.Title := dsProfile.FieldByName('title').AsString;
    self.FiscalCode := dsProfile.FieldByName('fiscal_code').AsString;

    self.Gender.GenderCode := dsProfile.FieldByName('gender_code').AsString;

    self.BirthDate := dsProfile.FieldByName('birth_date').AsDateTime;
    self.PublicEmail := dsProfile.FieldByName('public_email').AsString;

    // ************ Birth Location ***************************************************************
    if dsProfile.FieldByName('birth_country_id').AsInteger > 0 then
    begin
      self.BirthLocation.Country.ID := dsProfile.FieldByName('birth_country_id').AsInteger;
      self.BirthLocation.Region.ID := dsProfile.FieldByName('birth_region_id').AsInteger;
      self.BirthLocation.District.ID := dsProfile.FieldByName('birth_district_id').AsInteger;
      self.BirthLocation.Town.ID := dsProfile.FieldByName('birth_town_id').AsInteger;
    end;

    // ************ Address **********************************************************************
    self.Address.AddressFull := dsProfile.FieldByName('address_full').AsString;
    self.Address.Latitude := dsProfile.FieldByName('latitude').AsFloat;
    self.Address.Longitude := dsProfile.FieldByName('longitude').AsFloat;
    self.Address.Address := dsProfile.FieldByName('address_street').AsString;
    self.Address.Town := dsProfile.FieldByName('address_town').AsString;
    self.Address.Number := dsProfile.FieldByName('address_number').AsString;
    self.Address.postalcode := dsProfile.FieldByName('address_postal_code').AsString;
    self.Address.StateProvince := dsProfile.FieldByName('address_state_province').AsString;
    self.Address.Phone := dsProfile.FieldByName('phone').AsString;
    self.Address.CellularPhone := dsProfile.FieldByName('cellular_phone').AsString;
    self.Address.WorkPhone := dsProfile.FieldByName('work_phone').AsString;
    self.Address.FaxNumber := dsProfile.FieldByName('fax_number').AsString;
    self.Address.AddressMail := dsProfile.FieldByName('public_email').AsString;

    // ************ Indirizzo Location ***********************************************************
    if dsProfile.FieldByName('country_id').AsInteger > 0 then
    begin
      self.Address.Location.Country.ID := dsProfile.FieldByName('country_id').AsInteger;
      self.Address.Location.Region.ID := dsProfile.FieldByName('region_id').AsInteger;
      self.Address.Location.District.ID := dsProfile.FieldByName('district_id').AsInteger;
      self.Address.Location.Town.ID := dsProfile.FieldByName('town_id').AsInteger;
    end
    else
    begin
      self.Address.Location.Country.ID := 0;
      self.Address.Location.Region.ID := 0;
      self.Address.Location.District.ID := 0;
      self.Address.Location.Town.ID := 0;
    end;
  end;
end;

procedure TJanuaRecordUserProfile.LoadFromJsonObject(aJsonObject: TJsonObject);
var
  tmp: string;
begin
  self.User.AsSJSONObJect := Janua.Core.Json.JsonObject('user', aJsonObject);
  self.Address.AsJsonObject := Janua.Core.Json.JsonObject('address', aJsonObject);
  BirthLocation.AsJsonObject := Janua.Core.Json.JsonObject('birthlocation', aJsonObject);
  Janua.Core.Json.JsonValue(aJsonObject, 'firstname', FirstName);
  Janua.Core.Json.JsonValue(aJsonObject, 'lastname', self.LastName);
  Janua.Core.Json.JsonValue(aJsonObject, 'gendercode', tmp);
  self.Gender.GenderCode := tmp;
  Janua.Core.Json.JsonValue(aJsonObject, 'birthdate', self.BirthDate);
  Janua.Core.Json.JsonValue(aJsonObject, 'publicemail', self.PublicEmail);
  Janua.Core.Json.JsonValue(aJsonObject, 'fiscalcode', self.FiscalCode);
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaRecordUserProfile.LoadFromHttpParams(aRequest: TWebRequest);
begin
  // Eseguo il Clear prima del caricamento dai parametri solo se si tratta di un nuovo profilo utente e quello
  // di sessione non è attivo, oppure se non si tratta di un profilo di sessione dell'utente Public.
  if (self.User.ID = 0) or (self.User.isPublic) then
    self.Clear;
  self.User.LoadFromHttpParams(aRequest);

  if HttpGetParamValue(aRequest, 'title') <> '' then
    self.Title := HttpGetParamValue(aRequest, 'title');
  if HttpGetParamValue(aRequest, 'first_name') <> '' then
    self.FirstName := HttpGetParamValue(aRequest, 'first_name');
  if HttpGetParamValue(aRequest, 'last_name') <> '' then
    self.LastName := HttpGetParamValue(aRequest, 'last_name');
  self.Gender.GenderCode := HttpGetParamValue(aRequest, 'gender');
  if HttpGetParamValue(aRequest, 'birth_date') <> '' then
    self.BirthDate := HttpParseDate(HttpGetParamValue(aRequest, 'birth_date'));
  { TODO : Testare funzione di conversione data yyyy-mm-dd in delphi }
  if HttpGetParamValue(aRequest, 'public_email') <> '' then
    self.PublicEmail := HttpGetParamValue(aRequest, 'public_email');
  if HttpGetParamValue(aRequest, 'fiscalcode') <> '' then
    self.FiscalCode := HttpGetParamValue(aRequest, 'fiscalcode');

  self.Address.LoadFromHttpParams(aRequest);

  if HttpGetParamValue(aRequest, 'full_address') <> '' then
    self.Address.AddressFull := HttpGetParamValue(aRequest, 'full_address');
  if HttpGetParamValue(aRequest, 'town') <> '' then
    self.Address.Location.Town.Name := HttpGetParamValue(aRequest, 'town');
  if HttpGetParamValue(aRequest, 'address') <> '' then
    self.Address.Address := HttpGetParamValue(aRequest, 'address');
  if HttpGetParamValue(aRequest, 'state_province') <> '' then
    self.Address.Location.District.Code := HttpGetParamValue(aRequest, 'state_province');

  if (HttpGetParamValue(aRequest, 'lat') <> '') // and IsNumeric(HttpGetParamValue(aRequest, 'lat'))
  then
    self.Address.Latitude := HttpParseNumber(HttpGetParamValue(aRequest, 'lat'));

  if (HttpGetParamValue(aRequest, 'lng') <> '') // and IsNumeric(HttpGetParamValue(aRequest, 'lng'))
  then
    self.Address.Longitude := HttpParseNumber(HttpGetParamValue(aRequest, 'lng'));

  if HttpGetParamValue(aRequest, 'avatar_img_url') <> '' then
    self.User.AvatarImageUrl := HttpGetParamValue(aRequest, 'avatar_img_url');

end;
{$ENDIF Defined(WEBBROKER)}

procedure TJanuaRecordUserProfile.SaveToDataset(dsUser, dsProfile: TDataset);
begin
  // active, email, db_user_id, password, username, isactive, verify_token, verified,
  // default_schema_id, ispublic, internal_key, default_role_id, search_name, reverse_search,
  // insert_date, country_id, main_profile_type_id, main_profile_id, image_id, image_url
  // iso_language_code, iso_culture_code

  if Assigned(dsUser) and (dsUser.RecordCount > 0) then
    self.User.SaveToDataset(dsUser);

  if Assigned(dsProfile) and (dsProfile.Active) then
  begin
    if dsProfile.RecordCount = 0 then
      dsProfile.Append;
    dsProfile.Edit;
    dsProfile.FieldByName('db_user_id').AsInteger := self.User.ID;
    dsProfile.FieldByName('title').AsString := self.Title;
    dsProfile.FieldByName('first_name').AsString := self.FirstName;
    dsProfile.FieldByName('last_name').AsString := self.LastName;
    dsProfile.FieldByName('facebook_json').AsString := self.FacebookJSON;

    if (self.Gender.GenderCode = 'M') or (self.Gender.GenderCode = 'S') then
      dsProfile.FieldByName('gender_code').AsString := self.Gender.GenderCode
    else
      dsProfile.FieldByName('gender_code').AsString := 'M';

    dsProfile.FieldByName('birth_date').AsDateTime := self.BirthDate;
    dsProfile.FieldByName('public_email').AsString := self.PublicEmail;
    dsProfile.FieldByName('fiscal_code').AsString := self.FiscalCode;

    // ************ Birth Location ******************************************************************
    if self.BirthLocation.Country.ID > 0 then
    begin
      dsProfile.FieldByName('birth_country_id').AsInteger := self.BirthLocation.Country.ID;
      dsProfile.FieldByName('birth_region_id').AsInteger := self.BirthLocation.Region.ID;
      dsProfile.FieldByName('birth_district_id').AsInteger := self.BirthLocation.District.ID;
      dsProfile.FieldByName('birth_town_id').AsInteger := self.BirthLocation.Town.ID;
    end;
    // ************ Indirizzo ***********************************************************************
    dsProfile.FieldByName('address_street').AsString := self.Address.Address;
    dsProfile.FieldByName('address_town').AsString := self.Address.Town;
    dsProfile.FieldByName('address_number').AsString := self.Address.Number;
    dsProfile.FieldByName('address_postal_code').AsString := self.Address.postalcode;
    dsProfile.FieldByName('address_state_province').AsString := self.Address.StateProvince;
    dsProfile.FieldByName('phone').AsString := self.Address.Phone;
    dsProfile.FieldByName('cellular_phone').AsString := self.Address.CellularPhone;
    dsProfile.FieldByName('work_phone').AsString := self.Address.WorkPhone;
    dsProfile.FieldByName('fax_number').AsString := self.Address.FaxNumber;
    dsProfile.FieldByName('address_full').AsString := self.Address.AddressFull;
    dsProfile.FieldByName('latitude').AsFloat := self.Address.Latitude;
    dsProfile.FieldByName('longitude').AsFloat := self.Address.Longitude;

    dsProfile.FieldByName('smssent').AsBoolean := self.Address.SMSSent;
    dsProfile.FieldByName('smsconfirmed').AsBoolean := self.Address.SMSConfirmed;
    dsProfile.FieldByName('smsdate').AsDateTime := self.Address.SMSDate;
    dsProfile.FieldByName('smschecknumber').AsWideString := self.Address.SMSCheckNumber;
    // ************ Indirizzo Location **************************************************************
    if self.Address.Location.Country.ID > 0 then
    begin
      dsProfile.FieldByName('country_id').AsInteger := self.Address.Location.Country.ID;
      dsProfile.FieldByName('region_id').AsInteger := self.Address.Location.Region.ID;
      dsProfile.FieldByName('district_id').AsInteger := self.Address.Location.District.ID;
      dsProfile.FieldByName('town_id').AsInteger := self.Address.Location.Town.ID;
    end;
    if dsProfile.State in [dsInsert, dsEdit] then
      dsProfile.Post;
  end;
end;

procedure TJanuaRecordUserProfile.SetUser(const Value: TJanuaUser);
begin
  FUser := Value;
end;

function TJanuaRecordUserProfile.ToString: string;
begin
  Result := 'Username ' + User.Username + sLineBreak + 'Email ' + User.Email + sLineBreak + 'Password ' +
    User.Password + sLineBreak + 'Key ' + User.Key + sLineBreak + 'ID ' + User.ID.ToString + sLineBreak +
    'Role ' + User.role_name + sLineBreak + 'FirstName ' + FirstName + sLineBreak + 'LastName ' + LastName +
    sLineBreak + 'BirthDate ' + DateToStr(BirthDate) + sLineBreak + 'BirthLocation ' + sLineBreak +
    BirthLocation.ToString + sLineBreak + 'Address: ' + sLineBreak + Address.ToString;

end;

end.
