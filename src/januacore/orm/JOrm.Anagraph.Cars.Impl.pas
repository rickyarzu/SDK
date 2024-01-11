unit JOrm.Anagraph.Cars.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Anagraph.Cars.Intf;

// ------------------------------------------ Impl object interface ----------------------------------
//
type
  TAnagraphCar = class(TJanuaRecord, IAnagraphCar)
  private
    FDbSchemaId: IJanuaField;
    FId: IJanuaField;
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
    FPos: IJanuaField;
    FMasterJguid: IJanuaField;
    FNumberPlate: IJanuaField;
    FModel: IJanuaField;
    FColor: IJanuaField;
  private
    function GetNumberPlate: IJanuaField;
    procedure SetNumberPlate(const Value: IJanuaField);
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);

    function GetMasterJguid: IJanuaField;
    procedure SetMasterJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
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
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Id: IJanuaField read GetId write SetId;
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
    property Color: IJanuaField read GetColor write SetColor;
    property NumberPlate: IJanuaField read GetNumberPlate write SetNumberPlate;
    property Model: IJanuaField read GetModel write SetModel;
  end;

  TAnagraphCares = class(TJanuaRecordSet, IJanuaRecordSet, IAnagraphCars)
  private

  protected
    function GetAnagraphCar: IAnagraphCar;
    procedure SetAnagraphCar(const Value: IAnagraphCar);

    function GetNumberPlate: IJanuaField;
    procedure SetNumberPlate(const Value: IJanuaField);
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);

    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
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
    function GetMapsJson: IJanuaField;
    procedure SetMapsJson(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Id: IJanuaField read GetId write SetId;
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
    property Color: IJanuaField read GetColor write SetColor;
    property NumberPlate: IJanuaField read GetNumberPlate write SetNumberPlate;
    property Model: IJanuaField read GetModel write SetModel;
    property AnagraphCar: IAnagraphCar read GetAnagraphCar write SetAnagraphCar;
  end;

implementation

// ------------------------------------------ Impl TAnagraphCar -------------------------------

{ TAnagraphCar }

constructor TAnagraphCar.Create;
begin
  inherited;
  FPrefix := 'anc';
  FPos := AddCreateField(TJanuaFieldType.jptSmallInt, 'pos', 'pos');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FUpdId := AddCreateField(TJanuaFieldType.jptLargeint, 'upd_id', 'upd_id');
  FInsId := AddCreateField(TJanuaFieldType.jptLargeint, 'ins_id', 'ins_id');
  FUserInsert := AddCreateField(TJanuaFieldType.jptString, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptString, 'user_update', 'user_update');
  FLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'local', 'local');
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FCountryCode := AddCreateField(TJanuaFieldType.jptString, 'country_code', 'country_code');
end;

function TAnagraphCar.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TAnagraphCar.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TAnagraphCar.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TAnagraphCar.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TAnagraphCar.GetPos: IJanuaField;
begin
  Result := FPos
end;

procedure TAnagraphCar.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

function TAnagraphCar.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TAnagraphCar.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TAnagraphCar.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TAnagraphCar.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TAnagraphCar.GetUpdId: IJanuaField;
begin
  Result := FUpdId;
end;

procedure TAnagraphCar.SetUpdId(const Value: IJanuaField);
begin
  FUpdId := Value;
end;

function TAnagraphCar.GetInsId: IJanuaField;
begin
  Result := FInsId;
end;

procedure TAnagraphCar.SetInsId(const Value: IJanuaField);
begin
  FInsId := Value;
end;

function TAnagraphCar.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TAnagraphCar.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TAnagraphCar.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TAnagraphCar.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TAnagraphCar.GetLocal: IJanuaField;
begin
  Result := FLocal;
end;

function TAnagraphCar.GetMasterJguid: IJanuaField;
begin
  Result := FMasterJguid
end;

function TAnagraphCar.GetModel: IJanuaField;
begin

end;

function TAnagraphCar.GetNumberPlate: IJanuaField;
begin

end;

procedure TAnagraphCar.SetLocal(const Value: IJanuaField);
begin
  FLocal := Value;
end;


procedure TAnagraphCar.SetMasterJguid(const Value: IJanuaField);
begin
  FMasterJguid := Value
end;

procedure TAnagraphCar.SetModel(const Value: IJanuaField);
begin

end;

procedure TAnagraphCar.SetNumberPlate(const Value: IJanuaField);
begin

end;

function TAnagraphCar.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TAnagraphCar.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TAnagraphCar.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TAnagraphCar.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TAnagraphCar.GetColor: IJanuaField;
begin

end;

function TAnagraphCar.GetCountryCode: IJanuaField;
begin
  Result := FCountryCode;
end;

procedure TAnagraphCar.SetColor(const Value: IJanuaField);
begin

end;

procedure TAnagraphCar.SetCountryCode(const Value: IJanuaField);
begin
  FCountryCode := Value;
end;


{ TAnagraphCares }

constructor TAnagraphCares.Create;
begin
  inherited;
end;

function TAnagraphCares.GetDbSchemaId: IJanuaField;
begin
  Result := self.GetAnagraphCar.DbSchemaId;
end;

procedure TAnagraphCares.SetDbSchemaId(const Value: IJanuaField);
begin
  self.GetAnagraphCar.DbSchemaId := Value;
end;

function TAnagraphCares.GetId: IJanuaField;
begin
  Result := self.GetAnagraphCar.Id;
end;

procedure TAnagraphCares.SetId(const Value: IJanuaField);
begin
  self.GetAnagraphCar.Id := Value;
end;

function TAnagraphCares.GetPos: IJanuaField;
begin
  Result := self.GetAnagraphCar.Pos
end;


procedure TAnagraphCares.SetPos(const Value: IJanuaField);
begin
  GetAnagraphCar.Pos := Value
end;

function TAnagraphCares.GetInsertDate: IJanuaField;
begin
  Result := self.GetAnagraphCar.InsertDate;
end;

procedure TAnagraphCares.SetInsertDate(const Value: IJanuaField);
begin
  self.GetAnagraphCar.InsertDate := Value;
end;

function TAnagraphCares.GetUpdateDate: IJanuaField;
begin
  Result := self.GetAnagraphCar.UpdateDate;
end;

procedure TAnagraphCares.SetUpdateDate(const Value: IJanuaField);
begin
  self.GetAnagraphCar.UpdateDate := Value;
end;

function TAnagraphCares.GetUpdId: IJanuaField;
begin
  Result := self.GetAnagraphCar.UpdId;
end;

procedure TAnagraphCares.SetUpdId(const Value: IJanuaField);
begin
  self.GetAnagraphCar.UpdId := Value;
end;

function TAnagraphCares.GetInsId: IJanuaField;
begin
  Result := self.GetAnagraphCar.InsId;
end;

procedure TAnagraphCares.SetInsId(const Value: IJanuaField);
begin
  self.GetAnagraphCar.InsId := Value;
end;

function TAnagraphCares.GetUserInsert: IJanuaField;
begin
  Result := self.GetAnagraphCar.UserInsert;
end;

procedure TAnagraphCares.SetUserInsert(const Value: IJanuaField);
begin
  self.GetAnagraphCar.UserInsert := Value;
end;

function TAnagraphCares.GetUserUpdate: IJanuaField;
begin
  Result := self.GetAnagraphCar.UserUpdate;
end;

procedure TAnagraphCares.SetUserUpdate(const Value: IJanuaField);
begin
  self.GetAnagraphCar.UserUpdate := Value;
end;

function TAnagraphCares.GetLocal: IJanuaField;
begin
  Result := self.GetAnagraphCar.Local;
end;

function TAnagraphCares.GetMapsJson: IJanuaField;
begin

end;

function TAnagraphCares.GetModel: IJanuaField;
begin

end;

function TAnagraphCares.GetNumberPlate: IJanuaField;
begin

end;

procedure TAnagraphCares.SetLocal(const Value: IJanuaField);
begin
  self.GetAnagraphCar.Local := Value;
end;

procedure TAnagraphCares.SetMapsJson(const Value: IJanuaField);
begin

end;

procedure TAnagraphCares.SetModel(const Value: IJanuaField);
begin

end;

procedure TAnagraphCares.SetNumberPlate(const Value: IJanuaField);
begin

end;

function TAnagraphCares.GetDeleted: IJanuaField;
begin
  Result := self.GetAnagraphCar.Deleted;
end;

procedure TAnagraphCares.SetDeleted(const Value: IJanuaField);
begin
  self.GetAnagraphCar.Deleted := Value;
end;

function TAnagraphCares.GetJguid: IJanuaField;
begin
  Result := self.GetAnagraphCar.Jguid;
end;

procedure TAnagraphCares.SetJguid(const Value: IJanuaField);
begin
  self.GetAnagraphCar.Jguid := Value;
end;

function TAnagraphCares.GetAnagraphCar: IAnagraphCar;
begin
  Result := self.FRecord as IAnagraphCar;
end;

function TAnagraphCares.GetColor: IJanuaField;
begin

end;

function TAnagraphCares.GetCountryCode: IJanuaField;
begin
  Result := self.GetAnagraphCar.CountryCode;
end;

procedure TAnagraphCares.SetAnagraphCar(const Value: IAnagraphCar);
begin

end;

procedure TAnagraphCares.SetColor(const Value: IJanuaField);
begin

end;

procedure TAnagraphCares.SetCountryCode(const Value: IJanuaField);
begin
  self.GetAnagraphCar.CountryCode := Value;
end;

end.
