unit Jorm.Shipping.Vessels.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Shipping.Vessel.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomVessel = class(TJanuaRecord, ICustomVessel)
  private
    FVesselId: IJanuaField;
    FName: IJanuaField;
    FCode: IJanuaField;
    FNetTonnage: IJanuaField;
    FGrossTonnage: IJanuaField;
    FDeadweight: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FInsId: IJanuaField;
    FUpdId: IJanuaField;
    FUserInsertId: IJanuaField;
    FUserUpdateId: IJanuaField;
    FLocal: IJanuaField;
    FPassengerLimit: IJanuaField;
    FDbSchemaId: IJanuaField;
    FJguid: IJanuaField;
    FDeleted: IJanuaField;
    FNotes: IJanuaField;
    FCustomChar1: IJanuaField;
    FCustomChar2: IJanuaField;
    FCustomChar3: IJanuaField;
    FCustomInt1: IJanuaField;
    FCustomInt2: IJanuaField;
    FCustomInt3: IJanuaField;
    FAnagraphId: IJanuaField;
  private
    function GetVesselId: IJanuaField;
    procedure SetVesselId(const Value: IJanuaField);
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetNetTonnage: IJanuaField;
    procedure SetNetTonnage(const Value: IJanuaField);
    function GetGrossTonnage: IJanuaField;
    procedure SetGrossTonnage(const Value: IJanuaField);
    function GetDeadweight: IJanuaField;
    procedure SetDeadweight(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    function GetUserInsertId: IJanuaField;
    procedure SetUserInsertId(const Value: IJanuaField);
    function GetUserUpdateId: IJanuaField;
    procedure SetUserUpdateId(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetPassengerLimit: IJanuaField;
    procedure SetPassengerLimit(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetCustomChar1: IJanuaField;
    procedure SetCustomChar1(const Value: IJanuaField);
    function GetCustomChar2: IJanuaField;
    procedure SetCustomChar2(const Value: IJanuaField);
    function GetCustomChar3: IJanuaField;
    procedure SetCustomChar3(const Value: IJanuaField);
    function GetCustomInt1: IJanuaField;
    procedure SetCustomInt1(const Value: IJanuaField);
    function GetCustomInt2: IJanuaField;
    procedure SetCustomInt2(const Value: IJanuaField);
    function GetCustomInt3: IJanuaField;
    procedure SetCustomInt3(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
  public
    constructor Create; override;
    property VesselId: IJanuaField read GetVesselId write SetVesselId;
    property Name: IJanuaField read GetName write SetName;
    property Code: IJanuaField read GetCode write SetCode;
    property NetTonnage: IJanuaField read GetNetTonnage write SetNetTonnage;
    property GrossTonnage: IJanuaField read GetGrossTonnage write SetGrossTonnage;
    property Deadweight: IJanuaField read GetDeadweight write SetDeadweight;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property InsId: IJanuaField read GetInsId write SetInsId;
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    property UserInsertId: IJanuaField read GetUserInsertId write SetUserInsertId;
    property UserUpdateId: IJanuaField read GetUserUpdateId write SetUserUpdateId;
    property Local: IJanuaField read GetLocal write SetLocal;
    property PassengerLimit: IJanuaField read GetPassengerLimit write SetPassengerLimit;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property CustomChar1: IJanuaField read GetCustomChar1 write SetCustomChar1;
    property CustomChar2: IJanuaField read GetCustomChar2 write SetCustomChar2;
    property CustomChar3: IJanuaField read GetCustomChar3 write SetCustomChar3;
    property CustomInt1: IJanuaField read GetCustomInt1 write SetCustomInt1;
    property CustomInt2: IJanuaField read GetCustomInt2 write SetCustomInt2;
    property CustomInt3: IJanuaField read GetCustomInt3 write SetCustomInt3;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;

  end;

  TCustomVessels = class(TJanuaRecordSet, IJanuaRecordSet, ICustomVessels)
  private
    function GetVesselId: IJanuaField;
    procedure SetVesselId(const Value: IJanuaField);
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetNetTonnage: IJanuaField;
    procedure SetNetTonnage(const Value: IJanuaField);
    function GetGrossTonnage: IJanuaField;
    procedure SetGrossTonnage(const Value: IJanuaField);
    function GetDeadweight: IJanuaField;
    procedure SetDeadweight(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    function GetUserInsertId: IJanuaField;
    procedure SetUserInsertId(const Value: IJanuaField);
    function GetUserUpdateId: IJanuaField;
    procedure SetUserUpdateId(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetPassengerLimit: IJanuaField;
    procedure SetPassengerLimit(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetCustomChar1: IJanuaField;
    procedure SetCustomChar1(const Value: IJanuaField);
    function GetCustomChar2: IJanuaField;
    procedure SetCustomChar2(const Value: IJanuaField);
    function GetCustomChar3: IJanuaField;
    procedure SetCustomChar3(const Value: IJanuaField);
    function GetCustomInt1: IJanuaField;
    procedure SetCustomInt1(const Value: IJanuaField);
    function GetCustomInt2: IJanuaField;
    procedure SetCustomInt2(const Value: IJanuaField);
    function GetCustomInt3: IJanuaField;
    procedure SetCustomInt3(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetVessel: ICustomVessel;
    procedure SetVessel(const Value: ICustomVessel);
  public
    constructor Create; override;
    property VesselId: IJanuaField read GetVesselId write SetVesselId;
    property Name: IJanuaField read GetName write SetName;
    property Code: IJanuaField read GetCode write SetCode;
    property NetTonnage: IJanuaField read GetNetTonnage write SetNetTonnage;
    property GrossTonnage: IJanuaField read GetGrossTonnage write SetGrossTonnage;
    property Deadweight: IJanuaField read GetDeadweight write SetDeadweight;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property InsId: IJanuaField read GetInsId write SetInsId;
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    property UserInsertId: IJanuaField read GetUserInsertId write SetUserInsertId;
    property UserUpdateId: IJanuaField read GetUserUpdateId write SetUserUpdateId;
    property Local: IJanuaField read GetLocal write SetLocal;
    property PassengerLimit: IJanuaField read GetPassengerLimit write SetPassengerLimit;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property CustomChar1: IJanuaField read GetCustomChar1 write SetCustomChar1;
    property CustomChar2: IJanuaField read GetCustomChar2 write SetCustomChar2;
    property CustomChar3: IJanuaField read GetCustomChar3 write SetCustomChar3;
    property CustomInt1: IJanuaField read GetCustomInt1 write SetCustomInt1;
    property CustomInt2: IJanuaField read GetCustomInt2 write SetCustomInt2;
    property CustomInt3: IJanuaField read GetCustomInt3 write SetCustomInt3;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property Vessel: ICustomVessel read GetVessel write SetVessel;
  end;


implementation

// ------------------------------------------ Impl TVessel -------------------------------

{ TCustomVessel }

constructor TCustomVessel.Create;
begin
  inherited;
  FPrefix := 'shvs';
  FVesselId := AddCreateField(TJanuaFieldType.jptInteger, 'vessel_id', 'vessel_id');
  FName := AddCreateField(TJanuaFieldType.jptString, 'name', 'name');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FNetTonnage := AddCreateField(TJanuaFieldType.jptFloat, 'net_tonnage', 'net_tonnage');
  FGrossTonnage := AddCreateField(TJanuaFieldType.jptFloat, 'gross_tonnage', 'gross_tonnage');
  FDeadweight := AddCreateField(TJanuaFieldType.jptFloat, 'deadweight', 'deadweight');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDate, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDate, 'update_date', 'update_date');
  FInsId := AddCreateField(TJanuaFieldType.jptLargeint, 'ins_id', 'ins_id');
  FUpdId := AddCreateField(TJanuaFieldType.jptLargeint, 'upd_id', 'upd_id');
  FUserInsertId := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert_id', 'user_insert_id');
  FUserUpdateId := AddCreateField(TJanuaFieldType.jptInteger, 'user_update_id', 'user_update_id');
  FLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'local', 'local');
  FPassengerLimit := AddCreateField(TJanuaFieldType.jptSmallint, 'passenger_limit', 'passenger_limit');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FNotes := AddCreateField(TJanuaFieldType.jptString, 'notes', 'notes');
  FCustomChar1 := AddCreateField(TJanuaFieldType.jptString, 'custom_char_1', 'custom_char_1');
  FCustomChar2 := AddCreateField(TJanuaFieldType.jptString, 'custom_char_2', 'custom_char_2');
  FCustomChar3 := AddCreateField(TJanuaFieldType.jptString, 'custom_char_3', 'custom_char_3');
  FCustomInt1 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_1', 'custom_int_1');
  FCustomInt2 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_2', 'custom_int_2');
  FCustomInt3 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_3', 'custom_int_3');
  FAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
end;

function TCustomVessel.GetVesselId: IJanuaField;
begin
  Result := FVesselId;
end;

procedure TCustomVessel.SetVesselId(const Value: IJanuaField);
begin
  FVesselId := Value;
end;

function TCustomVessel.GetName: IJanuaField;
begin
  Result := FName;
end;

procedure TCustomVessel.SetName(const Value: IJanuaField);
begin
  FName := Value;
end;

function TCustomVessel.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomVessel.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomVessel.GetNetTonnage: IJanuaField;
begin
  Result := FNetTonnage;
end;

procedure TCustomVessel.SetNetTonnage(const Value: IJanuaField);
begin
  FNetTonnage := Value;
end;

function TCustomVessel.GetGrossTonnage: IJanuaField;
begin
  Result := FGrossTonnage;
end;

procedure TCustomVessel.SetGrossTonnage(const Value: IJanuaField);
begin
  FGrossTonnage := Value;
end;

function TCustomVessel.GetDeadweight: IJanuaField;
begin
  Result := FDeadweight;
end;

procedure TCustomVessel.SetDeadweight(const Value: IJanuaField);
begin
  FDeadweight := Value;
end;

function TCustomVessel.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomVessel.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomVessel.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomVessel.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomVessel.GetInsId: IJanuaField;
begin
  Result := FInsId;
end;

procedure TCustomVessel.SetInsId(const Value: IJanuaField);
begin
  FInsId := Value;
end;

function TCustomVessel.GetUpdId: IJanuaField;
begin
  Result := FUpdId;
end;

procedure TCustomVessel.SetUpdId(const Value: IJanuaField);
begin
  FUpdId := Value;
end;

function TCustomVessel.GetUserInsertId: IJanuaField;
begin
  Result := FUserInsertId;
end;

procedure TCustomVessel.SetUserInsertId(const Value: IJanuaField);
begin
  FUserInsertId := Value;
end;

function TCustomVessel.GetUserUpdateId: IJanuaField;
begin
  Result := FUserUpdateId;
end;

procedure TCustomVessel.SetUserUpdateId(const Value: IJanuaField);
begin
  FUserUpdateId := Value;
end;

function TCustomVessel.GetLocal: IJanuaField;
begin
  Result := FLocal;
end;

procedure TCustomVessel.SetLocal(const Value: IJanuaField);
begin
  FLocal := Value;
end;

function TCustomVessel.GetPassengerLimit: IJanuaField;
begin
  Result := FPassengerLimit;
end;

procedure TCustomVessel.SetPassengerLimit(const Value: IJanuaField);
begin
  FPassengerLimit := Value;
end;

function TCustomVessel.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomVessel.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomVessel.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomVessel.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomVessel.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomVessel.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TCustomVessel.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TCustomVessel.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TCustomVessel.GetCustomChar1: IJanuaField;
begin
  Result := FCustomChar1;
end;

procedure TCustomVessel.SetCustomChar1(const Value: IJanuaField);
begin
  FCustomChar1 := Value;
end;

function TCustomVessel.GetCustomChar2: IJanuaField;
begin
  Result := FCustomChar2;
end;

procedure TCustomVessel.SetCustomChar2(const Value: IJanuaField);
begin
  FCustomChar2 := Value;
end;

function TCustomVessel.GetCustomChar3: IJanuaField;
begin
  Result := FCustomChar3;
end;

procedure TCustomVessel.SetCustomChar3(const Value: IJanuaField);
begin
  FCustomChar3 := Value;
end;

function TCustomVessel.GetCustomInt1: IJanuaField;
begin
  Result := FCustomInt1;
end;

procedure TCustomVessel.SetCustomInt1(const Value: IJanuaField);
begin
  FCustomInt1 := Value;
end;

function TCustomVessel.GetCustomInt2: IJanuaField;
begin
  Result := FCustomInt2;
end;

procedure TCustomVessel.SetCustomInt2(const Value: IJanuaField);
begin
  FCustomInt2 := Value;
end;

function TCustomVessel.GetCustomInt3: IJanuaField;
begin
  Result := FCustomInt3;
end;

procedure TCustomVessel.SetCustomInt3(const Value: IJanuaField);
begin
  FCustomInt3 := Value;
end;

function TCustomVessel.GetAnagraphId: IJanuaField;
begin
  Result := FAnagraphId;
end;

procedure TCustomVessel.SetAnagraphId(const Value: IJanuaField);
begin
  FAnagraphId := Value;
end;

{ TCustomVessels }
constructor TCustomVessels.Create;
begin
  inherited;

end;

function TCustomVessels.GetVesselId: IJanuaField;
begin
  Result := self.Vessel.VesselId;
end;

procedure TCustomVessels.SetVesselId(const Value: IJanuaField);
begin
  self.Vessel.VesselId := Value;
end;

function TCustomVessels.GetName: IJanuaField;
begin
  Result := self.Vessel.Name;
end;

procedure TCustomVessels.SetName(const Value: IJanuaField);
begin
  self.Vessel.Name := Value;
end;

function TCustomVessels.GetCode: IJanuaField;
begin
  Result := self.Vessel.Code;
end;

procedure TCustomVessels.SetCode(const Value: IJanuaField);
begin
  self.Vessel.Code := Value;
end;

function TCustomVessels.GetNetTonnage: IJanuaField;
begin
  Result := self.Vessel.NetTonnage;
end;

procedure TCustomVessels.SetNetTonnage(const Value: IJanuaField);
begin
  self.Vessel.NetTonnage := Value;
end;

function TCustomVessels.GetGrossTonnage: IJanuaField;
begin
  Result := self.Vessel.GrossTonnage;
end;

procedure TCustomVessels.SetGrossTonnage(const Value: IJanuaField);
begin
  self.Vessel.GrossTonnage := Value;
end;

function TCustomVessels.GetDeadweight: IJanuaField;
begin
  Result := self.Vessel.Deadweight;
end;

procedure TCustomVessels.SetDeadweight(const Value: IJanuaField);
begin
  self.Vessel.Deadweight := Value;
end;

function TCustomVessels.GetInsertDate: IJanuaField;
begin
  Result := self.Vessel.InsertDate;
end;

procedure TCustomVessels.SetInsertDate(const Value: IJanuaField);
begin
  self.Vessel.InsertDate := Value;
end;

function TCustomVessels.GetUpdateDate: IJanuaField;
begin
  Result := self.Vessel.UpdateDate;
end;

procedure TCustomVessels.SetUpdateDate(const Value: IJanuaField);
begin
  self.Vessel.UpdateDate := Value;
end;

function TCustomVessels.GetInsId: IJanuaField;
begin
  Result := self.Vessel.InsId;
end;

procedure TCustomVessels.SetInsId(const Value: IJanuaField);
begin
  self.Vessel.InsId := Value;
end;

function TCustomVessels.GetUpdId: IJanuaField;
begin
  Result := self.Vessel.UpdId;
end;

procedure TCustomVessels.SetUpdId(const Value: IJanuaField);
begin
  self.Vessel.UpdId := Value;
end;

function TCustomVessels.GetUserInsertId: IJanuaField;
begin
  Result := self.Vessel.UserInsertId;
end;

procedure TCustomVessels.SetUserInsertId(const Value: IJanuaField);
begin
  self.Vessel.UserInsertId := Value;
end;

function TCustomVessels.GetUserUpdateId: IJanuaField;
begin
  Result := self.Vessel.UserUpdateId;
end;

procedure TCustomVessels.SetUserUpdateId(const Value: IJanuaField);
begin
  self.Vessel.UserUpdateId := Value;
end;

function TCustomVessels.GetLocal: IJanuaField;
begin
  Result := self.Vessel.Local;
end;

procedure TCustomVessels.SetLocal(const Value: IJanuaField);
begin
  self.Vessel.Local := Value;
end;

function TCustomVessels.GetPassengerLimit: IJanuaField;
begin
  Result := self.Vessel.PassengerLimit;
end;

procedure TCustomVessels.SetPassengerLimit(const Value: IJanuaField);
begin
  self.Vessel.PassengerLimit := Value;
end;

function TCustomVessels.GetDbSchemaId: IJanuaField;
begin
  Result := self.Vessel.DbSchemaId;
end;

procedure TCustomVessels.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Vessel.DbSchemaId := Value;
end;

function TCustomVessels.GetJguid: IJanuaField;
begin
  Result := self.Vessel.Jguid;
end;

procedure TCustomVessels.SetJguid(const Value: IJanuaField);
begin
  self.Vessel.Jguid := Value;
end;

function TCustomVessels.GetDeleted: IJanuaField;
begin
  Result := self.Vessel.Deleted;
end;

procedure TCustomVessels.SetDeleted(const Value: IJanuaField);
begin
  self.Vessel.Deleted := Value;
end;

function TCustomVessels.GetNotes: IJanuaField;
begin
  Result := self.Vessel.Notes;
end;

procedure TCustomVessels.SetNotes(const Value: IJanuaField);
begin
  self.Vessel.Notes := Value;
end;

function TCustomVessels.GetCustomChar1: IJanuaField;
begin
  Result := self.Vessel.CustomChar1;
end;

procedure TCustomVessels.SetCustomChar1(const Value: IJanuaField);
begin
  self.Vessel.CustomChar1 := Value;
end;

function TCustomVessels.GetCustomChar2: IJanuaField;
begin
  Result := self.Vessel.CustomChar2;
end;

procedure TCustomVessels.SetCustomChar2(const Value: IJanuaField);
begin
  self.Vessel.CustomChar2 := Value;
end;

function TCustomVessels.GetCustomChar3: IJanuaField;
begin
  Result := self.Vessel.CustomChar3;
end;

procedure TCustomVessels.SetCustomChar3(const Value: IJanuaField);
begin
  self.Vessel.CustomChar3 := Value;
end;

function TCustomVessels.GetCustomInt1: IJanuaField;
begin
  Result := self.Vessel.CustomInt1;
end;

procedure TCustomVessels.SetCustomInt1(const Value: IJanuaField);
begin
  self.Vessel.CustomInt1 := Value;
end;

function TCustomVessels.GetCustomInt2: IJanuaField;
begin
  Result := self.Vessel.CustomInt2;
end;

procedure TCustomVessels.SetCustomInt2(const Value: IJanuaField);
begin
  self.Vessel.CustomInt2 := Value;
end;

function TCustomVessels.GetCustomInt3: IJanuaField;
begin
  Result := self.Vessel.CustomInt3;
end;

procedure TCustomVessels.SetCustomInt3(const Value: IJanuaField);
begin
  self.Vessel.CustomInt3 := Value;
end;

function TCustomVessels.GetAnagraphId: IJanuaField;
begin
  Result := self.Vessel.AnagraphId;
end;

procedure TCustomVessels.SetAnagraphId(const Value: IJanuaField);
begin
  self.Vessel.AnagraphId := Value;
end;

function TCustomVessels.GetVessel: ICustomVessel;
begin
  Result := self.FRecord as ICustomVessel;
end;

procedure TCustomVessels.SetVessel(const Value: ICustomVessel);
begin
  self.FRecord := Value;
end;


end.
