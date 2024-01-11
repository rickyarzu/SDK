unit JOrm.Anagraph.Address.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Anagraph.Address.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TAddress = class(TJanuaRecord, IAddress)
  private
    FDbSchemaId: IJanuaField;
    FId: IJanuaField;
    FAddressName: IJanuaField;
    FPostalCode: IJanuaField;
    FStateProvince: IJanuaField;
    FTownName: IJanuaField;
    FTownCode: IJanuaField;
    FAddress: IJanuaField;
    FAddressNumber: IJanuaField;
    FPhone: IJanuaField;
    FFullAddress: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FUpdId: IJanuaField;
    FInsId: IJanuaField;
    FUserInsert: IJanuaField;
    FUserUpdate: IJanuaField;
    FLocal: IJanuaField;
    FDeleted: IJanuaField;
    FJguid: IJanuaField;
    FCountryCode: IJanuaField;
    FEmail: IJanuaField;
    FLatitude: IJanuaField;
    FLongitude: IJanuaField;
    FMapsJson: IJanuaField;
    FPos: IJanuaField;
    FMasterJguid: IJanuaField;
  private
    function GetMasterJguid: IJanuaField;
    procedure SetMasterJguid(const Value: IJanuaField);
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetAddressName: IJanuaField;
    procedure SetAddressName(const Value: IJanuaField);
    function GetPostalCode: IJanuaField;
    procedure SetPostalCode(const Value: IJanuaField);
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    function GetTownName: IJanuaField;
    procedure SetTownName(const Value: IJanuaField);
    function GetTownCode: IJanuaField;
    procedure SetTownCode(const Value: IJanuaField);
    function GetAddress: IJanuaField;
    procedure SetAddress(const Value: IJanuaField);
    function GetAddressNumber: IJanuaField;
    procedure SetAddressNumber(const Value: IJanuaField);
    function GetPhone: IJanuaField;
    procedure SetPhone(const Value: IJanuaField);
    function GetFullAddress: IJanuaField;
    procedure SetFullAddress(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCountryCode: IJanuaField;
    procedure SetCountryCode(const Value: IJanuaField);
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    function GetMapsJson: IJanuaField;
    procedure SetMapsJson(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Id: IJanuaField read GetId write SetId;
    property AddressName: IJanuaField read GetAddressName write SetAddressName;
    property PostalCode: IJanuaField read GetPostalCode write SetPostalCode;
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    property TownName: IJanuaField read GetTownName write SetTownName;
    property TownCode: IJanuaField read GetTownCode write SetTownCode;
    property Address: IJanuaField read GetAddress write SetAddress;
    property AddressNumber: IJanuaField read GetAddressNumber write SetAddressNumber;
    property Phone: IJanuaField read GetPhone write SetPhone;
    property FullAddress: IJanuaField read GetFullAddress write SetFullAddress;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    property InsId: IJanuaField read GetInsId write SetInsId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Local: IJanuaField read GetLocal write SetLocal;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CountryCode: IJanuaField read GetCountryCode write SetCountryCode;
    property Email: IJanuaField read GetEmail write SetEmail;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
  end;

  TAddresses = class(TJanuaRecordSet, IJanuaRecordSet, IAddresses)
  protected
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetAddressName: IJanuaField;
    procedure SetAddressName(const Value: IJanuaField);
    function GetPostalCode: IJanuaField;
    procedure SetPostalCode(const Value: IJanuaField);
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    function GetTownName: IJanuaField;
    procedure SetTownName(const Value: IJanuaField);
    function GetTownCode: IJanuaField;
    procedure SetTownCode(const Value: IJanuaField);
    function GetAddress: IJanuaField;
    procedure SetAddress(const Value: IJanuaField);
    function GetAddressNumber: IJanuaField;
    procedure SetAddressNumber(const Value: IJanuaField);
    function GetPhone: IJanuaField;
    procedure SetPhone(const Value: IJanuaField);
    function GetFullAddress: IJanuaField;
    procedure SetFullAddress(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCountryCode: IJanuaField;
    procedure SetCountryCode(const Value: IJanuaField);
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    function GetRecordAddress: IAddress;
    procedure SetRecordAddress(const Value: IAddress);
    function GetMapsJson: IJanuaField;
    procedure SetMapsJson(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
  public
    constructor Create; override;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Id: IJanuaField read GetId write SetId;
    property AddressName: IJanuaField read GetAddressName write SetAddressName;
    property PostalCode: IJanuaField read GetPostalCode write SetPostalCode;
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    property TownName: IJanuaField read GetTownName write SetTownName;
    property TownCode: IJanuaField read GetTownCode write SetTownCode;
    property Address: IJanuaField read GetAddress write SetAddress;
    property AddressNumber: IJanuaField read GetAddressNumber write SetAddressNumber;
    property Phone: IJanuaField read GetPhone write SetPhone;
    property FullAddress: IJanuaField read GetFullAddress write SetFullAddress;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    property InsId: IJanuaField read GetInsId write SetInsId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Local: IJanuaField read GetLocal write SetLocal;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CountryCode: IJanuaField read GetCountryCode write SetCountryCode;
    property Email: IJanuaField read GetEmail write SetEmail;
    property RecordAddress: IAddress read GetRecordAddress write SetRecordAddress;
  end;

implementation

// ------------------------------------------ Impl TAddress -------------------------------

{ TAddress }

constructor TAddress.Create;
begin
  inherited;
  FPrefix := 'ndd';
  FPos := AddCreateField(TJanuaFieldType.jptSmallInt, 'pos', 'pos');
  FMapsJson := AddCreateField(TJanuaFieldType.jptText, 'map_json', 'map_json');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FAddressName := AddCreateField(TJanuaFieldType.jptString, 'address_name', 'address_name');
  FPostalCode := AddCreateField(TJanuaFieldType.jptString, 'postal_code', 'postal_code');
  FStateProvince := AddCreateField(TJanuaFieldType.jptString, 'state_province', 'state_province');
  FTownName := AddCreateField(TJanuaFieldType.jptString, 'town_name', 'town_name');
  FTownCode := AddCreateField(TJanuaFieldType.jptString, 'town_code', 'town_code');
  FAddress := AddCreateField(TJanuaFieldType.jptString, 'address', 'address');
  FAddressNumber := AddCreateField(TJanuaFieldType.jptString, 'address_number', 'address_number');
  FPhone := AddCreateField(TJanuaFieldType.jptString, 'phone', 'phone');
  FFullAddress := AddCreateField(TJanuaFieldType.jptString, 'full_address', 'full_address');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FUpdId := AddCreateField(TJanuaFieldType.jptLargeint, 'upd_id', 'upd_id');
  FInsId := AddCreateField(TJanuaFieldType.jptLargeint, 'ins_id', 'ins_id');
  FUserInsert := AddCreateField(TJanuaFieldType.jptString, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptString, 'user_update', 'user_update');
  FLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'local', 'local');
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FCountryCode := AddCreateField(TJanuaFieldType.jptString, 'country_code', 'country_code');
  FEmail := AddCreateField(TJanuaFieldType.jptString, 'email', 'email');
  FLatitude := AddCreateField(TJanuaFieldType.jptFloat, 'latitude', 'latitude');
  FLongitude := AddCreateField(TJanuaFieldType.jptFloat, 'longitude', 'longitude');
end;

function TAddress.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TAddress.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TAddress.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TAddress.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TAddress.GetAddressName: IJanuaField;
begin
  Result := FAddressName;
end;

procedure TAddress.SetAddressName(const Value: IJanuaField);
begin
  FAddressName := Value;
end;

function TAddress.GetPos: IJanuaField;
begin
  Result := FPos
end;

function TAddress.GetPostalCode: IJanuaField;
begin
  Result := FPostalCode;
end;

procedure TAddress.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

procedure TAddress.SetPostalCode(const Value: IJanuaField);
begin
  FPostalCode := Value;
end;

function TAddress.GetStateProvince: IJanuaField;
begin
  Result := FStateProvince;
end;

procedure TAddress.SetStateProvince(const Value: IJanuaField);
begin
  FStateProvince := Value;
end;

function TAddress.GetTownName: IJanuaField;
begin
  Result := FTownName;
end;

procedure TAddress.SetTownName(const Value: IJanuaField);
begin
  FTownName := Value;
end;

function TAddress.GetTownCode: IJanuaField;
begin
  Result := FTownCode;
end;

procedure TAddress.SetTownCode(const Value: IJanuaField);
begin
  FTownCode := Value;
end;

function TAddress.GetAddress: IJanuaField;
begin
  Result := FAddress;
end;

procedure TAddress.SetAddress(const Value: IJanuaField);
begin
  FAddress := Value;
end;

function TAddress.GetAddressNumber: IJanuaField;
begin
  Result := FAddressNumber;
end;

procedure TAddress.SetAddressNumber(const Value: IJanuaField);
begin
  FAddressNumber := Value;
end;

function TAddress.GetPhone: IJanuaField;
begin
  Result := FPhone;
end;

procedure TAddress.SetPhone(const Value: IJanuaField);
begin
  FPhone := Value;
end;

function TAddress.GetFullAddress: IJanuaField;
begin
  Result := FFullAddress;
end;

procedure TAddress.SetFullAddress(const Value: IJanuaField);
begin
  FFullAddress := Value;
end;

function TAddress.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TAddress.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TAddress.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TAddress.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TAddress.GetUpdId: IJanuaField;
begin
  Result := FUpdId;
end;

procedure TAddress.SetUpdId(const Value: IJanuaField);
begin
  FUpdId := Value;
end;

function TAddress.GetInsId: IJanuaField;
begin
  Result := FInsId;
end;

procedure TAddress.SetInsId(const Value: IJanuaField);
begin
  FInsId := Value;
end;

function TAddress.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TAddress.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TAddress.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TAddress.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TAddress.GetLatitude: IJanuaField;
begin
  Result := FLatitude
end;

function TAddress.GetLocal: IJanuaField;
begin
  Result := FLocal;
end;

function TAddress.GetLongitude: IJanuaField;
begin
  Result := FLongitude
end;

function TAddress.GetMapsJson: IJanuaField;
begin
  Result := FMapsJson
end;

function TAddress.GetMasterJguid: IJanuaField;
begin
  Result := FMasterJguid
end;

procedure TAddress.SetLatitude(const Value: IJanuaField);
begin
  FLatitude := Value;
end;

procedure TAddress.SetLocal(const Value: IJanuaField);
begin
  FLocal := Value;
end;

procedure TAddress.SetLongitude(const Value: IJanuaField);
begin
  FLongitude := Value;
end;

procedure TAddress.SetMapsJson(const Value: IJanuaField);
begin
  FMapsJson := Value;
end;

procedure TAddress.SetMasterJguid(const Value: IJanuaField);
begin
   FMasterJguid := Value
end;

function TAddress.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TAddress.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TAddress.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TAddress.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TAddress.GetCountryCode: IJanuaField;
begin
  Result := FCountryCode;
end;

procedure TAddress.SetCountryCode(const Value: IJanuaField);
begin
  FCountryCode := Value;
end;

function TAddress.GetEmail: IJanuaField;
begin
  Result := FEmail;
end;

procedure TAddress.SetEmail(const Value: IJanuaField);
begin
  FEmail := Value;
end;

{
  function TAddress.GetAnagraphId: IJanuaField;
  begin
  Result := FAnagraphId;
  end;

  procedure TAddress.SetAnagraphId(const Value: IJanuaField);
  begin
  FAnagraphId := Value;
  end;
}

{ TAddresses }

constructor TAddresses.Create;
begin
  inherited;
end;

function TAddresses.GetDbSchemaId: IJanuaField;
begin
  Result := self.RecordAddress.DbSchemaId;
end;

procedure TAddresses.SetDbSchemaId(const Value: IJanuaField);
begin
  self.RecordAddress.DbSchemaId := Value;
end;

function TAddresses.GetId: IJanuaField;
begin
  Result := self.RecordAddress.Id;
end;

procedure TAddresses.SetId(const Value: IJanuaField);
begin
  self.RecordAddress.Id := Value;
end;

function TAddresses.GetAddressName: IJanuaField;
begin
  Result := self.RecordAddress.AddressName;
end;

procedure TAddresses.SetAddressName(const Value: IJanuaField);
begin
  self.RecordAddress.AddressName := Value;
end;

function TAddresses.GetPos: IJanuaField;
begin
  Result := self.RecordAddress.Pos
end;

function TAddresses.GetPostalCode: IJanuaField;
begin
  Result := self.RecordAddress.PostalCode;
end;

procedure TAddresses.SetPos(const Value: IJanuaField);
begin
  RecordAddress.Pos := Value
end;

procedure TAddresses.SetPostalCode(const Value: IJanuaField);
begin
  self.RecordAddress.PostalCode := Value;
end;

function TAddresses.GetStateProvince: IJanuaField;
begin
  Result := self.RecordAddress.StateProvince;
end;

procedure TAddresses.SetStateProvince(const Value: IJanuaField);
begin
  self.RecordAddress.StateProvince := Value;
end;

function TAddresses.GetTownName: IJanuaField;
begin
  Result := self.RecordAddress.TownName;
end;

procedure TAddresses.SetTownName(const Value: IJanuaField);
begin
  self.RecordAddress.TownName := Value;
end;

function TAddresses.GetTownCode: IJanuaField;
begin
  Result := self.RecordAddress.TownCode;
end;

procedure TAddresses.SetTownCode(const Value: IJanuaField);
begin
  self.RecordAddress.TownCode := Value;
end;

function TAddresses.GetAddress: IJanuaField;
begin
  Result := self.RecordAddress.Address;
end;

procedure TAddresses.SetAddress(const Value: IJanuaField);
begin
  self.RecordAddress.Address := Value;
end;

function TAddresses.GetAddressNumber: IJanuaField;
begin
  Result := self.RecordAddress.AddressNumber;
end;

procedure TAddresses.SetAddressNumber(const Value: IJanuaField);
begin
  self.RecordAddress.AddressNumber := Value;
end;

function TAddresses.GetPhone: IJanuaField;
begin
  Result := self.RecordAddress.Phone;
end;

procedure TAddresses.SetPhone(const Value: IJanuaField);
begin
  self.RecordAddress.Phone := Value;
end;

function TAddresses.GetFullAddress: IJanuaField;
begin
  Result := self.RecordAddress.FullAddress;
end;

procedure TAddresses.SetFullAddress(const Value: IJanuaField);
begin
  self.RecordAddress.FullAddress := Value;
end;

function TAddresses.GetInsertDate: IJanuaField;
begin
  Result := self.RecordAddress.InsertDate;
end;

procedure TAddresses.SetInsertDate(const Value: IJanuaField);
begin
  self.RecordAddress.InsertDate := Value;
end;

function TAddresses.GetUpdateDate: IJanuaField;
begin
  Result := self.RecordAddress.UpdateDate;
end;

procedure TAddresses.SetUpdateDate(const Value: IJanuaField);
begin
  self.RecordAddress.UpdateDate := Value;
end;

function TAddresses.GetUpdId: IJanuaField;
begin
  Result := self.RecordAddress.UpdId;
end;

procedure TAddresses.SetUpdId(const Value: IJanuaField);
begin
  self.RecordAddress.UpdId := Value;
end;

function TAddresses.GetInsId: IJanuaField;
begin
  Result := self.RecordAddress.InsId;
end;

procedure TAddresses.SetInsId(const Value: IJanuaField);
begin
  self.RecordAddress.InsId := Value;
end;

function TAddresses.GetUserInsert: IJanuaField;
begin
  Result := self.RecordAddress.UserInsert;
end;

procedure TAddresses.SetUserInsert(const Value: IJanuaField);
begin
  self.RecordAddress.UserInsert := Value;
end;

function TAddresses.GetUserUpdate: IJanuaField;
begin
  Result := self.RecordAddress.UserUpdate;
end;

procedure TAddresses.SetUserUpdate(const Value: IJanuaField);
begin
  self.RecordAddress.UserUpdate := Value;
end;

function TAddresses.GetLatitude: IJanuaField;
begin
  Result := RecordAddress.Latitude
end;

function TAddresses.GetLocal: IJanuaField;
begin
  Result := self.RecordAddress.Local;
end;

function TAddresses.GetLongitude: IJanuaField;
begin
  Result := RecordAddress.Longitude
end;

function TAddresses.GetMapsJson: IJanuaField;
begin
  Result := RecordAddress.MapsJson
end;

procedure TAddresses.SetLatitude(const Value: IJanuaField);
begin
  RecordAddress.Latitude := Value;
end;

procedure TAddresses.SetLocal(const Value: IJanuaField);
begin
  self.RecordAddress.Local := Value;
end;

procedure TAddresses.SetLongitude(const Value: IJanuaField);
begin
  RecordAddress.Longitude := Value
end;

procedure TAddresses.SetMapsJson(const Value: IJanuaField);
begin
  RecordAddress.MapsJson := Value
end;

function TAddresses.GetDeleted: IJanuaField;
begin
  Result := self.RecordAddress.Deleted;
end;

procedure TAddresses.SetDeleted(const Value: IJanuaField);
begin
  self.RecordAddress.Deleted := Value;
end;

function TAddresses.GetJguid: IJanuaField;
begin
  Result := self.RecordAddress.Jguid;
end;

procedure TAddresses.SetJguid(const Value: IJanuaField);
begin
  self.RecordAddress.Jguid := Value;
end;

function TAddresses.GetCountryCode: IJanuaField;
begin
  Result := self.RecordAddress.CountryCode;
end;

procedure TAddresses.SetCountryCode(const Value: IJanuaField);
begin
  self.RecordAddress.CountryCode := Value;
end;

function TAddresses.GetEmail: IJanuaField;
begin
  Result := self.RecordAddress.Email;
end;

procedure TAddresses.SetEmail(const Value: IJanuaField);
begin
  self.RecordAddress.Email := Value;
end;

function TAddresses.GetRecordAddress: IAddress;
begin
  Result := self.FRecord as IAddress;
end;

procedure TAddresses.SetRecordAddress(const Value: IAddress);
begin
  self.FRecord := Value;
end;

end.
