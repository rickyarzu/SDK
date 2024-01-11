unit JOrm.Logistic.Locations.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.Locations.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomLogisticLocation = class(TJanuaRecord, ICustomLogisticLocation)
  private
    FId: IJanuaField;
    FJguid: IJanuaField;
    FDbSchemaId: IJanuaField;
    FDeleted: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FUserInsert: IJanuaField;
    FUserUpdate: IJanuaField;
    FCode: IJanuaField;
    FName: IJanuaField;
    FStateProvince: IJanuaField;
    FCountry: IJanuaField;
    FAreaCode: IJanuaField;
    FFlgairport: IJanuaField;
    FIsoCode: IJanuaField;
    FIataCode: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    function GetCountry: IJanuaField;
    procedure SetCountry(const Value: IJanuaField);
    function GetAreaCode: IJanuaField;
    procedure SetAreaCode(const Value: IJanuaField);
    function GetFlgairport: IJanuaField;
    procedure SetFlgairport(const Value: IJanuaField);
    function GetIsoCode: IJanuaField;
    procedure SetIsoCode(const Value: IJanuaField);
    function GetIataCode: IJanuaField;
    procedure SetIataCode(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Code: IJanuaField read GetCode write SetCode;
    property Name: IJanuaField read GetName write SetName;
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    property Country: IJanuaField read GetCountry write SetCountry;
    property AreaCode: IJanuaField read GetAreaCode write SetAreaCode;
    property Flgairport: IJanuaField read GetFlgairport write SetFlgairport;
    property IsoCode: IJanuaField read GetIsoCode write SetIsoCode;
    property IataCode: IJanuaField read GetIataCode write SetIataCode;

  end;

  TCustomLogisticLocations = class(TJanuaRecordSet, IJanuaRecordSet, ICustomLogisticLocations)
  strict private
    function GetLogisticLocation: ICustomLogisticLocation;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    function GetCountry: IJanuaField;
    procedure SetCountry(const Value: IJanuaField);
    function GetAreaCode: IJanuaField;
    procedure SetAreaCode(const Value: IJanuaField);
    function GetFlgairport: IJanuaField;
    procedure SetFlgairport(const Value: IJanuaField);
    function GetIsoCode: IJanuaField;
    procedure SetIsoCode(const Value: IJanuaField);
    function GetIataCode: IJanuaField;
    procedure SetIataCode(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Code: IJanuaField read GetCode write SetCode;
    property Name: IJanuaField read GetName write SetName;
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    property Country: IJanuaField read GetCountry write SetCountry;
    property AreaCode: IJanuaField read GetAreaCode write SetAreaCode;
    property Flgairport: IJanuaField read GetFlgairport write SetFlgairport;
    property IsoCode: IJanuaField read GetIsoCode write SetIsoCode;
    property IataCode: IJanuaField read GetIataCode write SetIataCode;
  end;

  TLogisticLocationFactory = class
    class function CreateRecord(const aKey: string): ICustomLogisticLocation; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ICustomLogisticLocations; overload;
  end;

implementation

// ------------------------------------------ Impl TLogisticLocation -------------------------------

{ TCustomLogisticLocation }

constructor TCustomLogisticLocation.Create;
begin
  inherited;
  FPrefix := 'llct';
  FId := AddCreateField(TJanuaFieldType.jptInteger, 'id', 'id');
  // Campo non Gestitojguid Type= ftGuid
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FUserInsert := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptInteger, 'user_update', 'user_update');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FName := AddCreateField(TJanuaFieldType.jptString, 'name', 'name');
  FStateProvince := AddCreateField(TJanuaFieldType.jptString, 'state_province', 'state_province');
  FCountry := AddCreateField(TJanuaFieldType.jptString, 'country', 'country');
  FAreaCode := AddCreateField(TJanuaFieldType.jptString, 'area_code', 'area_code');
  FFlgairport := AddCreateField(TJanuaFieldType.jptBoolean, 'flgairport', 'flgairport');
  FIsoCode := AddCreateField(TJanuaFieldType.jptString, 'iso_code', 'iso_code');
  FIataCode := AddCreateField(TJanuaFieldType.jptString, 'iata_code', 'iata_code');
end;

function TCustomLogisticLocation.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomLogisticLocation.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomLogisticLocation.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomLogisticLocation.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomLogisticLocation.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomLogisticLocation.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomLogisticLocation.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomLogisticLocation.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TCustomLogisticLocation.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomLogisticLocation.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomLogisticLocation.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomLogisticLocation.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomLogisticLocation.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomLogisticLocation.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomLogisticLocation.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TCustomLogisticLocation.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TCustomLogisticLocation.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomLogisticLocation.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomLogisticLocation.GetName: IJanuaField;
begin
  Result := FName;
end;

procedure TCustomLogisticLocation.SetName(const Value: IJanuaField);
begin
  FName := Value;
end;

function TCustomLogisticLocation.GetStateProvince: IJanuaField;
begin
  Result := FStateProvince;
end;

procedure TCustomLogisticLocation.SetStateProvince(const Value: IJanuaField);
begin
  FStateProvince := Value;
end;

function TCustomLogisticLocation.GetCountry: IJanuaField;
begin
  Result := FCountry;
end;

procedure TCustomLogisticLocation.SetCountry(const Value: IJanuaField);
begin
  FCountry := Value;
end;

function TCustomLogisticLocation.GetAreaCode: IJanuaField;
begin
  Result := FAreaCode;
end;

procedure TCustomLogisticLocation.SetAreaCode(const Value: IJanuaField);
begin
  FAreaCode := Value;
end;

function TCustomLogisticLocation.GetFlgairport: IJanuaField;
begin
  Result := FFlgairport;
end;

procedure TCustomLogisticLocation.SetFlgairport(const Value: IJanuaField);
begin
  FFlgairport := Value;
end;

function TCustomLogisticLocation.GetIsoCode: IJanuaField;
begin
  Result := FIsoCode;
end;

procedure TCustomLogisticLocation.SetIsoCode(const Value: IJanuaField);
begin
  FIsoCode := Value;
end;

function TCustomLogisticLocation.GetIataCode: IJanuaField;
begin
  Result := FIataCode;
end;

procedure TCustomLogisticLocation.SetIataCode(const Value: IJanuaField);
begin
  FIataCode := Value;
end;

{ TCustomLogisticLocations }
constructor TCustomLogisticLocations.Create;
begin
  inherited;
  self.FRecord := TLogisticLocationFactory.CreateRecord('LogisticLocation');
end;

function TCustomLogisticLocations.GetId: IJanuaField;
begin
  Result := GetLogisticLocation.Id;
end;

procedure TCustomLogisticLocations.SetId(const Value: IJanuaField);
begin
  GetLogisticLocation.Id := Value;
end;

function TCustomLogisticLocations.GetJguid: IJanuaField;
begin
  Result := GetLogisticLocation.Jguid;
end;

procedure TCustomLogisticLocations.SetJguid(const Value: IJanuaField);
begin
  GetLogisticLocation.Jguid := Value;
end;

function TCustomLogisticLocations.GetDbSchemaId: IJanuaField;
begin
  Result := GetLogisticLocation.DbSchemaId;
end;

procedure TCustomLogisticLocations.SetDbSchemaId(const Value: IJanuaField);
begin
  GetLogisticLocation.DbSchemaId := Value;
end;

function TCustomLogisticLocations.GetDeleted: IJanuaField;
begin
  Result := GetLogisticLocation.Deleted;
end;

procedure TCustomLogisticLocations.SetDeleted(const Value: IJanuaField);
begin
  GetLogisticLocation.Deleted := Value;
end;

function TCustomLogisticLocations.GetInsertDate: IJanuaField;
begin
  Result := GetLogisticLocation.InsertDate;
end;

procedure TCustomLogisticLocations.SetInsertDate(const Value: IJanuaField);
begin
  GetLogisticLocation.InsertDate := Value;
end;

function TCustomLogisticLocations.GetUpdateDate: IJanuaField;
begin
  Result := GetLogisticLocation.UpdateDate;
end;

procedure TCustomLogisticLocations.SetUpdateDate(const Value: IJanuaField);
begin
  GetLogisticLocation.UpdateDate := Value;
end;

function TCustomLogisticLocations.GetUserInsert: IJanuaField;
begin
  Result := GetLogisticLocation.UserInsert;
end;

procedure TCustomLogisticLocations.SetUserInsert(const Value: IJanuaField);
begin
  GetLogisticLocation.UserInsert := Value;
end;

function TCustomLogisticLocations.GetUserUpdate: IJanuaField;
begin
  Result := GetLogisticLocation.UserUpdate;
end;

procedure TCustomLogisticLocations.SetUserUpdate(const Value: IJanuaField);
begin
  GetLogisticLocation.UserUpdate := Value;
end;

function TCustomLogisticLocations.GetCode: IJanuaField;
begin
  Result := GetLogisticLocation.Code;
end;

procedure TCustomLogisticLocations.SetCode(const Value: IJanuaField);
begin
  GetLogisticLocation.Code := Value;
end;

function TCustomLogisticLocations.GetName: IJanuaField;
begin
  Result := GetLogisticLocation.Name;
end;

procedure TCustomLogisticLocations.SetName(const Value: IJanuaField);
begin
  GetLogisticLocation.Name := Value;
end;

function TCustomLogisticLocations.GetStateProvince: IJanuaField;
begin
  Result := GetLogisticLocation.StateProvince;
end;

procedure TCustomLogisticLocations.SetStateProvince(const Value: IJanuaField);
begin
  GetLogisticLocation.StateProvince := Value;
end;

function TCustomLogisticLocations.GetCountry: IJanuaField;
begin
  Result := GetLogisticLocation.Country;
end;

procedure TCustomLogisticLocations.SetCountry(const Value: IJanuaField);
begin
  GetLogisticLocation.Country := Value;
end;

function TCustomLogisticLocations.GetAreaCode: IJanuaField;
begin
  Result := GetLogisticLocation.AreaCode;
end;

procedure TCustomLogisticLocations.SetAreaCode(const Value: IJanuaField);
begin
  GetLogisticLocation.AreaCode := Value;
end;

function TCustomLogisticLocations.GetFlgairport: IJanuaField;
begin
  Result := GetLogisticLocation.Flgairport;
end;

procedure TCustomLogisticLocations.SetFlgairport(const Value: IJanuaField);
begin
  GetLogisticLocation.Flgairport := Value;
end;

function TCustomLogisticLocations.GetIsoCode: IJanuaField;
begin
  Result := GetLogisticLocation.IsoCode;
end;

procedure TCustomLogisticLocations.SetIsoCode(const Value: IJanuaField);
begin
  GetLogisticLocation.IsoCode := Value;
end;

function TCustomLogisticLocations.GetIataCode: IJanuaField;
begin
  Result := GetLogisticLocation.IataCode;
end;

procedure TCustomLogisticLocations.SetIataCode(const Value: IJanuaField);
begin
  GetLogisticLocation.IataCode := Value;
end;

function TCustomLogisticLocations.GetLogisticLocation: ICustomLogisticLocation;
begin
  Result := self.FRecord as ICustomLogisticLocation;
end;

{ TLogisticLocationFactory }

class function TLogisticLocationFactory.CreateRecord(const aKey: string): ICustomLogisticLocation;
begin
  Result := TCustomLogisticLocation.Create;
end;

class function TLogisticLocationFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ICustomLogisticLocations;
begin
  Result := TCustomLogisticLocations.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
