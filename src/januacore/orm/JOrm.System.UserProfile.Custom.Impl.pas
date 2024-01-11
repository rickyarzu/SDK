unit JOrm.System.UserProfile.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.System.UserProfile.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomUserProfile = class(TJanuaRecord, ICustomUserProfile)
  private
    FDb_user_id: IJanuaField;
    FDb_user_idIndex: Integer;
    FCountry_id: Integer;
    FRegion_id: Integer;
    FDistrict_id: Integer;
    FTown_id: Integer;
    FFirst_name: Integer;
    FLast_name: Integer;
    FAddress_street: Integer;
    FAddress_number: Integer;
    FAddress_postal_code: Integer;
    FPhone: Integer;
    FCellular_phone: Integer;
    FWork_phone: Integer;
    FFax_number: Integer;
    FGender_code: Integer;
    FBirth_date: Integer;
    FBirth_country_id: Integer;
    FBirth_region_id: Integer;
    FBirth_district_id: Integer;
    FBirth_town_id: Integer;
    FPublic_email: Integer;
    FTitle: Integer;
    FSearch_name: Integer;
    FReverse_search: Integer;
    FAddress_full: Integer;
    FLatitude: Integer;
    FLongitude: Integer;
    FFiscal_code: Integer;
    FSmssent: Integer;
    FSmsconfirmed: Integer;
    FSmsdate: Integer;
    FSmschecknumber: Integer;
    FAddress_town: Integer;
    FFacebook_json: Integer;
    FAddress_state_province: Integer;
    FAnagraphID: IJanuaField;
  protected
    function GetAnagraphID: IJanuaField;
    procedure SetAnagraphID(const Value: IJanuaField);
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    function GetCountry_id: IJanuaField;
    procedure SetCountry_id(const Value: IJanuaField);
    function GetRegion_id: IJanuaField;
    procedure SetRegion_id(const Value: IJanuaField);
    function GetDistrict_id: IJanuaField;
    procedure SetDistrict_id(const Value: IJanuaField);
    function GetTown_id: IJanuaField;
    procedure SetTown_id(const Value: IJanuaField);
    function GetFirst_name: IJanuaField;
    procedure SetFirst_name(const Value: IJanuaField);
    function GetLast_name: IJanuaField;
    procedure SetLast_name(const Value: IJanuaField);
    function GetAddress_street: IJanuaField;
    procedure SetAddress_street(const Value: IJanuaField);
    function GetAddress_number: IJanuaField;
    procedure SetAddress_number(const Value: IJanuaField);
    function GetAddress_postal_code: IJanuaField;
    procedure SetAddress_postal_code(const Value: IJanuaField);
    function GetPhone: IJanuaField;
    procedure SetPhone(const Value: IJanuaField);
    function GetCellular_phone: IJanuaField;
    procedure SetCellular_phone(const Value: IJanuaField);
    function GetWork_phone: IJanuaField;
    procedure SetWork_phone(const Value: IJanuaField);
    function GetFax_number: IJanuaField;
    procedure SetFax_number(const Value: IJanuaField);
    function GetGender_code: IJanuaField;
    procedure SetGender_code(const Value: IJanuaField);
    function GetBirth_date: IJanuaField;
    procedure SetBirth_date(const Value: IJanuaField);
    function GetBirth_country_id: IJanuaField;
    procedure SetBirth_country_id(const Value: IJanuaField);
    function GetBirth_region_id: IJanuaField;
    procedure SetBirth_region_id(const Value: IJanuaField);
    function GetBirth_district_id: IJanuaField;
    procedure SetBirth_district_id(const Value: IJanuaField);
    function GetBirth_town_id: IJanuaField;
    procedure SetBirth_town_id(const Value: IJanuaField);
    function GetPublic_email: IJanuaField;
    procedure SetPublic_email(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetSearch_name: IJanuaField;
    procedure SetSearch_name(const Value: IJanuaField);
    function GetReverse_search: IJanuaField;
    procedure SetReverse_search(const Value: IJanuaField);
    function GetAddress_full: IJanuaField;
    procedure SetAddress_full(const Value: IJanuaField);
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    function GetFiscal_code: IJanuaField;
    procedure SetFiscal_code(const Value: IJanuaField);
    function GetSmssent: IJanuaField;
    procedure SetSmssent(const Value: IJanuaField);
    function GetSmsconfirmed: IJanuaField;
    procedure SetSmsconfirmed(const Value: IJanuaField);
    function GetSmsdate: IJanuaField;
    procedure SetSmsdate(const Value: IJanuaField);
    function GetSmschecknumber: IJanuaField;
    procedure SetSmschecknumber(const Value: IJanuaField);
    function GetAddress_town: IJanuaField;
    procedure SetAddress_town(const Value: IJanuaField);
    function GetFacebook_json: IJanuaField;
    procedure SetFacebook_json(const Value: IJanuaField);
    function GetAddress_state_province: IJanuaField;
    procedure SetAddress_state_province(const Value: IJanuaField);
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    property Country_id: IJanuaField read GetCountry_id write SetCountry_id;
    property Region_id: IJanuaField read GetRegion_id write SetRegion_id;
    property District_id: IJanuaField read GetDistrict_id write SetDistrict_id;
    property Town_id: IJanuaField read GetTown_id write SetTown_id;
    property First_name: IJanuaField read GetFirst_name write SetFirst_name;
    property Last_name: IJanuaField read GetLast_name write SetLast_name;
    property Address_street: IJanuaField read GetAddress_street write SetAddress_street;
    property Address_number: IJanuaField read GetAddress_number write SetAddress_number;
    property Address_postal_code: IJanuaField read GetAddress_postal_code write SetAddress_postal_code;
    property Phone: IJanuaField read GetPhone write SetPhone;
    property Cellular_phone: IJanuaField read GetCellular_phone write SetCellular_phone;
    property Work_phone: IJanuaField read GetWork_phone write SetWork_phone;
    property Fax_number: IJanuaField read GetFax_number write SetFax_number;
    property Gender_code: IJanuaField read GetGender_code write SetGender_code;
    property Birth_date: IJanuaField read GetBirth_date write SetBirth_date;
    property Birth_country_id: IJanuaField read GetBirth_country_id write SetBirth_country_id;
    property Birth_region_id: IJanuaField read GetBirth_region_id write SetBirth_region_id;
    property Birth_district_id: IJanuaField read GetBirth_district_id write SetBirth_district_id;
    property Birth_town_id: IJanuaField read GetBirth_town_id write SetBirth_town_id;
    property Public_email: IJanuaField read GetPublic_email write SetPublic_email;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Search_name: IJanuaField read GetSearch_name write SetSearch_name;
    property Reverse_search: IJanuaField read GetReverse_search write SetReverse_search;
    property Address_full: IJanuaField read GetAddress_full write SetAddress_full;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    property Fiscal_code: IJanuaField read GetFiscal_code write SetFiscal_code;
    property Smssent: IJanuaField read GetSmssent write SetSmssent;
    property Smsconfirmed: IJanuaField read GetSmsconfirmed write SetSmsconfirmed;
    property Smsdate: IJanuaField read GetSmsdate write SetSmsdate;
    property Smschecknumber: IJanuaField read GetSmschecknumber write SetSmschecknumber;
    property Address_town: IJanuaField read GetAddress_town write SetAddress_town;
    property Facebook_json: IJanuaField read GetFacebook_json write SetFacebook_json;
    property Address_state_province: IJanuaField read GetAddress_state_province
      write SetAddress_state_province;
  end;

  TCustomUserProfiles = class(TJanuaRecordSet, IJanuaRecordSet, ICustomUserProfiles)
  private
    function GetDb_user_id: IJanuaField;
    procedure SetDb_user_id(const Value: IJanuaField);
    function GetCountry_id: IJanuaField;
    procedure SetCountry_id(const Value: IJanuaField);
    function GetRegion_id: IJanuaField;
    procedure SetRegion_id(const Value: IJanuaField);
    function GetDistrict_id: IJanuaField;
    procedure SetDistrict_id(const Value: IJanuaField);
    function GetTown_id: IJanuaField;
    procedure SetTown_id(const Value: IJanuaField);
    function GetFirst_name: IJanuaField;
    procedure SetFirst_name(const Value: IJanuaField);
    function GetLast_name: IJanuaField;
    procedure SetLast_name(const Value: IJanuaField);
    function GetAddress_street: IJanuaField;
    procedure SetAddress_street(const Value: IJanuaField);
    function GetAddress_number: IJanuaField;
    procedure SetAddress_number(const Value: IJanuaField);
    function GetAddress_postal_code: IJanuaField;
    procedure SetAddress_postal_code(const Value: IJanuaField);
    function GetPhone: IJanuaField;
    procedure SetPhone(const Value: IJanuaField);
    function GetCellular_phone: IJanuaField;
    procedure SetCellular_phone(const Value: IJanuaField);
    function GetWork_phone: IJanuaField;
    procedure SetWork_phone(const Value: IJanuaField);
    function GetFax_number: IJanuaField;
    procedure SetFax_number(const Value: IJanuaField);
    function GetGender_code: IJanuaField;
    procedure SetGender_code(const Value: IJanuaField);
    function GetBirth_date: IJanuaField;
    procedure SetBirth_date(const Value: IJanuaField);
    function GetBirth_country_id: IJanuaField;
    procedure SetBirth_country_id(const Value: IJanuaField);
    function GetBirth_region_id: IJanuaField;
    procedure SetBirth_region_id(const Value: IJanuaField);
    function GetBirth_district_id: IJanuaField;
    procedure SetBirth_district_id(const Value: IJanuaField);
    function GetBirth_town_id: IJanuaField;
    procedure SetBirth_town_id(const Value: IJanuaField);
    function GetPublic_email: IJanuaField;
    procedure SetPublic_email(const Value: IJanuaField);
    function GetTitle: IJanuaField;
    procedure SetTitle(const Value: IJanuaField);
    function GetSearch_name: IJanuaField;
    procedure SetSearch_name(const Value: IJanuaField);
    function GetReverse_search: IJanuaField;
    procedure SetReverse_search(const Value: IJanuaField);
    function GetAddress_full: IJanuaField;
    procedure SetAddress_full(const Value: IJanuaField);
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    function GetFiscal_code: IJanuaField;
    procedure SetFiscal_code(const Value: IJanuaField);
    function GetSmssent: IJanuaField;
    procedure SetSmssent(const Value: IJanuaField);
    function GetSmsconfirmed: IJanuaField;
    procedure SetSmsconfirmed(const Value: IJanuaField);
    function GetSmsdate: IJanuaField;
    procedure SetSmsdate(const Value: IJanuaField);
    function GetSmschecknumber: IJanuaField;
    procedure SetSmschecknumber(const Value: IJanuaField);
    function GetAddress_town: IJanuaField;
    procedure SetAddress_town(const Value: IJanuaField);
    function GetFacebook_json: IJanuaField;
    procedure SetFacebook_json(const Value: IJanuaField);
    function GetAddress_state_province: IJanuaField;
    procedure SetAddress_state_province(const Value: IJanuaField);
    function GetCustomUserProfile: ICustomUserProfile;
    procedure SetCustomUserProfile(const Value: ICustomUserProfile);
    function GetAnagraphID: IJanuaField;
    procedure SetAnagraphID(const Value: IJanuaField);
  protected

  public
    constructor Create; override;
    property Db_user_id: IJanuaField read GetDb_user_id write SetDb_user_id;
    property Country_id: IJanuaField read GetCountry_id write SetCountry_id;
    property Region_id: IJanuaField read GetRegion_id write SetRegion_id;
    property District_id: IJanuaField read GetDistrict_id write SetDistrict_id;
    property Town_id: IJanuaField read GetTown_id write SetTown_id;
    property First_name: IJanuaField read GetFirst_name write SetFirst_name;
    property Last_name: IJanuaField read GetLast_name write SetLast_name;
    property Address_street: IJanuaField read GetAddress_street write SetAddress_street;
    property Address_number: IJanuaField read GetAddress_number write SetAddress_number;
    property Address_postal_code: IJanuaField read GetAddress_postal_code write SetAddress_postal_code;
    property Phone: IJanuaField read GetPhone write SetPhone;
    property Cellular_phone: IJanuaField read GetCellular_phone write SetCellular_phone;
    property Work_phone: IJanuaField read GetWork_phone write SetWork_phone;
    property Fax_number: IJanuaField read GetFax_number write SetFax_number;
    property Gender_code: IJanuaField read GetGender_code write SetGender_code;
    property Birth_date: IJanuaField read GetBirth_date write SetBirth_date;
    property Birth_country_id: IJanuaField read GetBirth_country_id write SetBirth_country_id;
    property Birth_region_id: IJanuaField read GetBirth_region_id write SetBirth_region_id;
    property Birth_district_id: IJanuaField read GetBirth_district_id write SetBirth_district_id;
    property Birth_town_id: IJanuaField read GetBirth_town_id write SetBirth_town_id;
    property Public_email: IJanuaField read GetPublic_email write SetPublic_email;
    property Title: IJanuaField read GetTitle write SetTitle;
    property Search_name: IJanuaField read GetSearch_name write SetSearch_name;
    property Reverse_search: IJanuaField read GetReverse_search write SetReverse_search;
    property Address_full: IJanuaField read GetAddress_full write SetAddress_full;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    property Fiscal_code: IJanuaField read GetFiscal_code write SetFiscal_code;
    property Smssent: IJanuaField read GetSmssent write SetSmssent;
    property Smsconfirmed: IJanuaField read GetSmsconfirmed write SetSmsconfirmed;
    property Smsdate: IJanuaField read GetSmsdate write SetSmsdate;
    property Smschecknumber: IJanuaField read GetSmschecknumber write SetSmschecknumber;
    property Address_town: IJanuaField read GetAddress_town write SetAddress_town;
    property Facebook_json: IJanuaField read GetFacebook_json write SetFacebook_json;
    property Address_state_province: IJanuaField read GetAddress_state_province
      write SetAddress_state_province;
    property CustomUserProfile: ICustomUserProfile read GetCustomUserProfile write SetCustomUserProfile;
    property AnagraphID: IJanuaField read GetAnagraphID write SetAnagraphID;
  end;

implementation

uses Janua.Core.Types, Janua.Orm.Types, System.SysUtils;

// ------------------------------------------ Impl TCustomUserProfile -------------------------------

{ TCustomUserProfile }

procedure TCustomUserProfile.AfterConstruction;
begin
  inherited;

end;

constructor TCustomUserProfile.Create;
begin
  inherited;
  FDb_user_id := TJanuaOrmFactory.CreateIntegerField('db_user_id', 'Db_user_id');
  FDb_user_idIndex := AddField(FDb_user_id);
  FAnagraphID := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
  FCountry_id := AddField(TJanuaOrmFactory.CreateSmallintField('country_id', 'Country_id'));
  FRegion_id := AddField(TJanuaOrmFactory.CreateSmallintField('region_id', 'Region_id'));
  FDistrict_id := AddField(TJanuaOrmFactory.CreateSmallintField('district_id', 'District_id'));
  FTown_id := AddField(TJanuaOrmFactory.CreateIntegerField('town_id', 'Town_id'));
  FFirst_name := AddField(TJanuaOrmFactory.CreateStringField('first_name', 'First_name'));
  FLast_name := AddField(TJanuaOrmFactory.CreateStringField('last_name', 'Last_name'));
  FAddress_street := AddField(TJanuaOrmFactory.CreateStringField('address_street', 'Address_street'));
  FAddress_number := AddField(TJanuaOrmFactory.CreateStringField('address_number', 'Address_number'));
  FAddress_postal_code := AddField(TJanuaOrmFactory.CreateStringField('address_postal_code',
    'Address_postal_code'));
  FPhone := AddField(TJanuaOrmFactory.CreateStringField('phone', 'Phone'));
  FCellular_phone := AddField(TJanuaOrmFactory.CreateStringField('cellular_phone', 'Cellular_phone'));
  FWork_phone := AddField(TJanuaOrmFactory.CreateStringField('work_phone', 'Work_phone'));
  FFax_number := AddField(TJanuaOrmFactory.CreateStringField('fax_number', 'Fax_number'));
  FGender_code := AddField(TJanuaOrmFactory.CreateStringField('gender_code', 'Gender_code'));
  // Campo non GestitoBirth_date Type= ftDate
  FBirth_country_id := AddField(TJanuaOrmFactory.CreateSmallintField('birth_country_id', 'Birth_country_id'));
  FBirth_region_id := AddField(TJanuaOrmFactory.CreateSmallintField('birth_region_id', 'Birth_region_id'));
  FBirth_district_id := AddField(TJanuaOrmFactory.CreateSmallintField('birth_district_id',
    'Birth_district_id'));
  FBirth_town_id := AddField(TJanuaOrmFactory.CreateIntegerField('birth_town_id', 'Birth_town_id'));
  FPublic_email := AddField(TJanuaOrmFactory.CreateStringField('public_email', 'Public_email'));
  FTitle := AddField(TJanuaOrmFactory.CreateStringField('title', 'Title'));
  FSearch_name := AddField(TJanuaOrmFactory.CreateStringField('search_name', 'Search_name'));
  FReverse_search := AddField(TJanuaOrmFactory.CreateStringField('reverse_search', 'Reverse_search'));
  FAddress_full := AddField(TJanuaOrmFactory.CreateStringField('address_full', 'Address_full'));
  FLatitude := AddField(TJanuaOrmFactory.CreateDoubleField('latitude', 'Latitude'));
  FLongitude := AddField(TJanuaOrmFactory.CreateDoubleField('longitude', 'Longitude'));
  FFiscal_code := AddField(TJanuaOrmFactory.CreateStringField('fiscal_code', 'Fiscal_code'));
  FSmssent := AddField(TJanuaOrmFactory.CreateBoolField('smssent', 'Smssent'));
  FSmsconfirmed := AddField(TJanuaOrmFactory.CreateBoolField('smsconfirmed', 'Smsconfirmed'));
  // Campo non GestitoSmsdate Type= ftTimeStamp
  FSmschecknumber := AddField(TJanuaOrmFactory.CreateStringField('smschecknumber', 'Smschecknumber'));
  FAddress_town := AddField(TJanuaOrmFactory.CreateStringField('address_town', 'Address_town'));
  // Campo non GestitoFacebook_json Type= ftWideMemo
  FAddress_state_province := AddField(TJanuaOrmFactory.CreateStringField('address_state_province',
    'Address_state_province'));
end;

function TCustomUserProfile.GetDb_user_id: IJanuaField;
begin
  Result := FDb_user_id;
end;

procedure TCustomUserProfile.SetDb_user_id(const Value: IJanuaField);
begin
  FDb_user_id := Value;
end;

function TCustomUserProfile.GetCountry_id: IJanuaField;
begin
  Result := self.Fields[FCountry_id];
end;

procedure TCustomUserProfile.SetCountry_id(const Value: IJanuaField);
begin
  self.Fields[FCountry_id] := Value;
end;

function TCustomUserProfile.GetRegion_id: IJanuaField;
begin
  Result := self.Fields[FRegion_id];
end;

procedure TCustomUserProfile.SetRegion_id(const Value: IJanuaField);
begin
  self.Fields[FRegion_id] := Value;
end;

function TCustomUserProfile.GetDistrict_id: IJanuaField;
begin
  Result := self.Fields[FDistrict_id];
end;

procedure TCustomUserProfile.SetDistrict_id(const Value: IJanuaField);
begin
  self.Fields[FDistrict_id] := Value;
end;

function TCustomUserProfile.GetTown_id: IJanuaField;
begin
  Result := self.Fields[FTown_id];
end;

procedure TCustomUserProfile.SetTown_id(const Value: IJanuaField);
begin
  self.Fields[FTown_id] := Value;
end;

function TCustomUserProfile.GetFirst_name: IJanuaField;
begin
  Result := self.Fields[FFirst_name];
end;

procedure TCustomUserProfile.SetFirst_name(const Value: IJanuaField);
begin
  self.Fields[FFirst_name] := Value;
end;

function TCustomUserProfile.GetLast_name: IJanuaField;
begin
  Result := self.Fields[FLast_name];
end;

procedure TCustomUserProfile.SetLast_name(const Value: IJanuaField);
begin
  self.Fields[FLast_name] := Value;
end;

function TCustomUserProfile.GetAddress_street: IJanuaField;
begin
  Result := self.Fields[FAddress_street];
end;

procedure TCustomUserProfile.SetAddress_street(const Value: IJanuaField);
begin
  self.Fields[FAddress_street] := Value;
end;

function TCustomUserProfile.GetAddress_number: IJanuaField;
begin
  Result := self.Fields[FAddress_number];
end;

procedure TCustomUserProfile.SetAddress_number(const Value: IJanuaField);
begin
  self.Fields[FAddress_number] := Value;
end;

function TCustomUserProfile.GetAddress_postal_code: IJanuaField;
begin
  Result := self.Fields[FAddress_postal_code];
end;

procedure TCustomUserProfile.SetAddress_postal_code(const Value: IJanuaField);
begin
  self.Fields[FAddress_postal_code] := Value;
end;

function TCustomUserProfile.GetPhone: IJanuaField;
begin
  Result := self.Fields[FPhone];
end;

procedure TCustomUserProfile.SetPhone(const Value: IJanuaField);
begin
  self.Fields[FPhone] := Value;
end;

function TCustomUserProfile.GetCellular_phone: IJanuaField;
begin
  Result := self.Fields[FCellular_phone];
end;

procedure TCustomUserProfile.SetCellular_phone(const Value: IJanuaField);
begin
  self.Fields[FCellular_phone] := Value;
end;

function TCustomUserProfile.GetWork_phone: IJanuaField;
begin
  Result := self.Fields[FWork_phone];
end;

procedure TCustomUserProfile.SetWork_phone(const Value: IJanuaField);
begin
  self.Fields[FWork_phone] := Value;
end;

function TCustomUserProfile.GetFax_number: IJanuaField;
begin
  Result := self.Fields[FFax_number];
end;

procedure TCustomUserProfile.SetFax_number(const Value: IJanuaField);
begin
  self.Fields[FFax_number] := Value;
end;

function TCustomUserProfile.GetGender_code: IJanuaField;
begin
  Result := self.Fields[FGender_code];
end;

procedure TCustomUserProfile.SetGender_code(const Value: IJanuaField);
begin
  self.Fields[FGender_code] := Value;
end;

function TCustomUserProfile.GetBirth_date: IJanuaField;
begin
  Result := self.Fields[FBirth_date];
end;

procedure TCustomUserProfile.SetBirth_date(const Value: IJanuaField);
begin
  self.Fields[FBirth_date] := Value;
end;

function TCustomUserProfile.GetBirth_country_id: IJanuaField;
begin
  Result := self.Fields[FBirth_country_id];
end;

procedure TCustomUserProfile.SetBirth_country_id(const Value: IJanuaField);
begin
  self.Fields[FBirth_country_id] := Value;
end;

function TCustomUserProfile.GetBirth_region_id: IJanuaField;
begin
  Result := self.Fields[FBirth_region_id];
end;

procedure TCustomUserProfile.SetBirth_region_id(const Value: IJanuaField);
begin
  self.Fields[FBirth_region_id] := Value;
end;

function TCustomUserProfile.GetBirth_district_id: IJanuaField;
begin
  Result := self.Fields[FBirth_district_id];
end;

procedure TCustomUserProfile.SetBirth_district_id(const Value: IJanuaField);
begin
  self.Fields[FBirth_district_id] := Value;
end;

function TCustomUserProfile.GetBirth_town_id: IJanuaField;
begin
  Result := self.Fields[FBirth_town_id];
end;

procedure TCustomUserProfile.SetBirth_town_id(const Value: IJanuaField);
begin
  self.Fields[FBirth_town_id] := Value;
end;

function TCustomUserProfile.GetPublic_email: IJanuaField;
begin
  Result := self.Fields[FPublic_email];
end;

procedure TCustomUserProfile.SetPublic_email(const Value: IJanuaField);
begin
  self.Fields[FPublic_email] := Value;
end;

function TCustomUserProfile.GetTitle: IJanuaField;
begin
  Result := self.Fields[FTitle];
end;

procedure TCustomUserProfile.SetTitle(const Value: IJanuaField);
begin
  self.Fields[FTitle] := Value;
end;

function TCustomUserProfile.GetSearch_name: IJanuaField;
begin
  Result := self.Fields[FSearch_name];
end;

procedure TCustomUserProfile.SetSearch_name(const Value: IJanuaField);
begin
  self.Fields[FSearch_name] := Value;
end;

function TCustomUserProfile.GetReverse_search: IJanuaField;
begin
  Result := self.Fields[FReverse_search];
end;

procedure TCustomUserProfile.SetReverse_search(const Value: IJanuaField);
begin
  self.Fields[FReverse_search] := Value;
end;

function TCustomUserProfile.GetAddress_full: IJanuaField;
begin
  Result := self.Fields[FAddress_full];
end;

procedure TCustomUserProfile.SetAddress_full(const Value: IJanuaField);
begin
  self.Fields[FAddress_full] := Value;
end;

function TCustomUserProfile.GetLatitude: IJanuaField;
begin
  Result := self.Fields[FLatitude];
end;

procedure TCustomUserProfile.SetLatitude(const Value: IJanuaField);
begin
  self.Fields[FLatitude] := Value;
end;

function TCustomUserProfile.GetLongitude: IJanuaField;
begin
  Result := self.Fields[FLongitude];
end;

procedure TCustomUserProfile.SetLongitude(const Value: IJanuaField);
begin
  self.Fields[FLongitude] := Value;
end;

function TCustomUserProfile.GetFiscal_code: IJanuaField;
begin
  Result := self.Fields[FFiscal_code];
end;

procedure TCustomUserProfile.SetFiscal_code(const Value: IJanuaField);
begin
  self.Fields[FFiscal_code] := Value;
end;

function TCustomUserProfile.GetSmssent: IJanuaField;
begin
  Result := self.Fields[FSmssent];
end;

procedure TCustomUserProfile.SetSmssent(const Value: IJanuaField);
begin
  self.Fields[FSmssent] := Value;
end;

function TCustomUserProfile.GetSmsconfirmed: IJanuaField;
begin
  Result := self.Fields[FSmsconfirmed];
end;

procedure TCustomUserProfile.SetSmsconfirmed(const Value: IJanuaField);
begin
  self.Fields[FSmsconfirmed] := Value;
end;

function TCustomUserProfile.GetSmsdate: IJanuaField;
begin
  Result := self.Fields[FSmsdate];
end;

procedure TCustomUserProfile.SetSmsdate(const Value: IJanuaField);
begin
  self.Fields[FSmsdate] := Value;
end;

function TCustomUserProfile.GetSmschecknumber: IJanuaField;
begin
  Result := self.Fields[FSmschecknumber];
end;

procedure TCustomUserProfile.SetSmschecknumber(const Value: IJanuaField);
begin
  self.Fields[FSmschecknumber] := Value;
end;

function TCustomUserProfile.GetAddress_town: IJanuaField;
begin
  Result := self.Fields[FAddress_town];
end;

function TCustomUserProfile.GetAnagraphID: IJanuaField;
begin
  Result := FAnagraphID
end;

procedure TCustomUserProfile.SetAddress_town(const Value: IJanuaField);
begin
  self.Fields[FAddress_town] := Value;
end;

procedure TCustomUserProfile.SetAnagraphID(const Value: IJanuaField);
begin
  FAnagraphID := Value
end;

function TCustomUserProfile.GetFacebook_json: IJanuaField;
begin
  Result := self.Fields[FFacebook_json];
end;

procedure TCustomUserProfile.SetFacebook_json(const Value: IJanuaField);
begin
  self.Fields[FFacebook_json] := Value;
end;

function TCustomUserProfile.GetAddress_state_province: IJanuaField;
begin
  Result := self.Fields[FAddress_state_province];
end;

procedure TCustomUserProfile.SetAddress_state_province(const Value: IJanuaField);
begin
  self.Fields[FAddress_state_province] := Value;
end;

{ TCustomUserProfiles }
constructor TCustomUserProfiles.Create;
begin
  inherited;

end;

function TCustomUserProfiles.GetDb_user_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Db_user_id;
end;

procedure TCustomUserProfiles.SetDb_user_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Db_user_id := Value;
end;

function TCustomUserProfiles.GetCountry_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Country_id;
end;

procedure TCustomUserProfiles.SetCountry_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Country_id := Value;
end;

function TCustomUserProfiles.GetRegion_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Region_id;
end;

procedure TCustomUserProfiles.SetRegion_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Region_id := Value;
end;

function TCustomUserProfiles.GetDistrict_id: IJanuaField;
begin
  Result := self.CustomUserProfile.District_id;
end;

procedure TCustomUserProfiles.SetDistrict_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.District_id := Value;
end;

function TCustomUserProfiles.GetTown_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Town_id;
end;

procedure TCustomUserProfiles.SetTown_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Town_id := Value;
end;

function TCustomUserProfiles.GetFirst_name: IJanuaField;
begin
  Result := self.CustomUserProfile.First_name;
end;

procedure TCustomUserProfiles.SetFirst_name(const Value: IJanuaField);
begin
  self.CustomUserProfile.First_name := Value;
end;

function TCustomUserProfiles.GetLast_name: IJanuaField;
begin
  Result := self.CustomUserProfile.Last_name;
end;

procedure TCustomUserProfiles.SetLast_name(const Value: IJanuaField);
begin
  self.CustomUserProfile.Last_name := Value;
end;

function TCustomUserProfiles.GetAddress_street: IJanuaField;
begin
  Result := self.CustomUserProfile.Address_street;
end;

procedure TCustomUserProfiles.SetAddress_street(const Value: IJanuaField);
begin
  self.CustomUserProfile.Address_street := Value;
end;

function TCustomUserProfiles.GetAddress_number: IJanuaField;
begin
  Result := self.CustomUserProfile.Address_number;
end;

procedure TCustomUserProfiles.SetAddress_number(const Value: IJanuaField);
begin
  self.CustomUserProfile.Address_number := Value;
end;

function TCustomUserProfiles.GetAddress_postal_code: IJanuaField;
begin
  Result := self.CustomUserProfile.Address_postal_code;
end;

procedure TCustomUserProfiles.SetAddress_postal_code(const Value: IJanuaField);
begin
  self.CustomUserProfile.Address_postal_code := Value;
end;

function TCustomUserProfiles.GetPhone: IJanuaField;
begin
  Result := self.CustomUserProfile.Phone;
end;

procedure TCustomUserProfiles.SetPhone(const Value: IJanuaField);
begin
  self.CustomUserProfile.Phone := Value;
end;

function TCustomUserProfiles.GetCellular_phone: IJanuaField;
begin
  Result := self.CustomUserProfile.Cellular_phone;
end;

procedure TCustomUserProfiles.SetCellular_phone(const Value: IJanuaField);
begin
  self.CustomUserProfile.Cellular_phone := Value;
end;

function TCustomUserProfiles.GetWork_phone: IJanuaField;
begin
  Result := self.CustomUserProfile.Work_phone;
end;

procedure TCustomUserProfiles.SetWork_phone(const Value: IJanuaField);
begin
  self.CustomUserProfile.Work_phone := Value;
end;

function TCustomUserProfiles.GetFax_number: IJanuaField;
begin
  Result := self.CustomUserProfile.Fax_number;
end;

procedure TCustomUserProfiles.SetFax_number(const Value: IJanuaField);
begin
  self.CustomUserProfile.Fax_number := Value;
end;

function TCustomUserProfiles.GetGender_code: IJanuaField;
begin
  Result := self.CustomUserProfile.Gender_code;
end;

procedure TCustomUserProfiles.SetGender_code(const Value: IJanuaField);
begin
  self.CustomUserProfile.Gender_code := Value;
end;

function TCustomUserProfiles.GetBirth_date: IJanuaField;
begin
  Result := self.CustomUserProfile.Birth_date;
end;

procedure TCustomUserProfiles.SetBirth_date(const Value: IJanuaField);
begin
  self.CustomUserProfile.Birth_date := Value;
end;

function TCustomUserProfiles.GetBirth_country_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Birth_country_id;
end;

procedure TCustomUserProfiles.SetBirth_country_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Birth_country_id := Value;
end;

function TCustomUserProfiles.GetBirth_region_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Birth_region_id;
end;

procedure TCustomUserProfiles.SetBirth_region_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Birth_region_id := Value;
end;

function TCustomUserProfiles.GetBirth_district_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Birth_district_id;
end;

procedure TCustomUserProfiles.SetBirth_district_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Birth_district_id := Value;
end;

function TCustomUserProfiles.GetBirth_town_id: IJanuaField;
begin
  Result := self.CustomUserProfile.Birth_town_id;
end;

procedure TCustomUserProfiles.SetBirth_town_id(const Value: IJanuaField);
begin
  self.CustomUserProfile.Birth_town_id := Value;
end;

function TCustomUserProfiles.GetPublic_email: IJanuaField;
begin
  Result := self.CustomUserProfile.Public_email;
end;

procedure TCustomUserProfiles.SetPublic_email(const Value: IJanuaField);
begin
  self.CustomUserProfile.Public_email := Value;
end;

function TCustomUserProfiles.GetTitle: IJanuaField;
begin
  Result := self.CustomUserProfile.Title;
end;

procedure TCustomUserProfiles.SetTitle(const Value: IJanuaField);
begin
  self.CustomUserProfile.Title := Value;
end;

function TCustomUserProfiles.GetSearch_name: IJanuaField;
begin
  Result := self.CustomUserProfile.Search_name;
end;

procedure TCustomUserProfiles.SetSearch_name(const Value: IJanuaField);
begin
  self.CustomUserProfile.Search_name := Value;
end;

function TCustomUserProfiles.GetReverse_search: IJanuaField;
begin
  Result := self.CustomUserProfile.Reverse_search;
end;

procedure TCustomUserProfiles.SetReverse_search(const Value: IJanuaField);
begin
  self.CustomUserProfile.Reverse_search := Value;
end;

function TCustomUserProfiles.GetAddress_full: IJanuaField;
begin
  Result := self.CustomUserProfile.Address_full;
end;

procedure TCustomUserProfiles.SetAddress_full(const Value: IJanuaField);
begin
  self.CustomUserProfile.Address_full := Value;
end;

function TCustomUserProfiles.GetLatitude: IJanuaField;
begin
  Result := self.CustomUserProfile.Latitude;
end;

procedure TCustomUserProfiles.SetLatitude(const Value: IJanuaField);
begin
  self.CustomUserProfile.Latitude := Value;
end;

function TCustomUserProfiles.GetLongitude: IJanuaField;
begin
  Result := self.CustomUserProfile.Longitude;
end;

procedure TCustomUserProfiles.SetLongitude(const Value: IJanuaField);
begin
  self.CustomUserProfile.Longitude := Value;
end;

function TCustomUserProfiles.GetFiscal_code: IJanuaField;
begin
  Result := self.CustomUserProfile.Fiscal_code;
end;

procedure TCustomUserProfiles.SetFiscal_code(const Value: IJanuaField);
begin
  self.CustomUserProfile.Fiscal_code := Value;
end;

function TCustomUserProfiles.GetSmssent: IJanuaField;
begin
  Result := self.CustomUserProfile.Smssent;
end;

procedure TCustomUserProfiles.SetSmssent(const Value: IJanuaField);
begin
  self.CustomUserProfile.Smssent := Value;
end;

function TCustomUserProfiles.GetSmsconfirmed: IJanuaField;
begin
  Result := self.CustomUserProfile.Smsconfirmed;
end;

procedure TCustomUserProfiles.SetSmsconfirmed(const Value: IJanuaField);
begin
  self.CustomUserProfile.Smsconfirmed := Value;
end;

function TCustomUserProfiles.GetSmsdate: IJanuaField;
begin
  Result := self.CustomUserProfile.Smsdate;
end;

procedure TCustomUserProfiles.SetSmsdate(const Value: IJanuaField);
begin
  self.CustomUserProfile.Smsdate := Value;
end;

function TCustomUserProfiles.GetSmschecknumber: IJanuaField;
begin
  Result := self.CustomUserProfile.Smschecknumber;
end;

procedure TCustomUserProfiles.SetSmschecknumber(const Value: IJanuaField);
begin
  self.CustomUserProfile.Smschecknumber := Value;
end;

function TCustomUserProfiles.GetAddress_town: IJanuaField;
begin
  Result := self.CustomUserProfile.Address_town;
end;

function TCustomUserProfiles.GetAnagraphID: IJanuaField;
begin
  Result := CustomUserProfile.AnagraphID;
end;

procedure TCustomUserProfiles.SetAddress_town(const Value: IJanuaField);
begin
  self.CustomUserProfile.Address_town := Value;
end;

procedure TCustomUserProfiles.SetAnagraphID(const Value: IJanuaField);
begin
  CustomUserProfile.AnagraphID := Value
end;

function TCustomUserProfiles.GetFacebook_json: IJanuaField;
begin
  Result := self.CustomUserProfile.Facebook_json;
end;

procedure TCustomUserProfiles.SetFacebook_json(const Value: IJanuaField);
begin
  self.CustomUserProfile.Facebook_json := Value;
end;

function TCustomUserProfiles.GetAddress_state_province: IJanuaField;
begin
  Result := self.CustomUserProfile.Address_state_province;
end;

procedure TCustomUserProfiles.SetAddress_state_province(const Value: IJanuaField);
begin
  self.CustomUserProfile.Address_state_province := Value;
end;

function TCustomUserProfiles.GetCustomUserProfile: ICustomUserProfile;
begin
  Result := self.FRecord as ICustomUserProfile;
end;

procedure TCustomUserProfiles.SetCustomUserProfile(const Value: ICustomUserProfile);
begin
  self.FRecord := Value;
end;

end.
