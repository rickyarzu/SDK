unit JOrm.Anagraph.Branch.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Anagraph.Branch.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomBranch = class(TJanuaRecord, ICustomBranch)
  private
    FDbSchemaId: IJanuaField;
    FAnagraphId: IJanuaField;
    FAnBranchId: IJanuaField;
    FAnBranchName: IJanuaField;
    FAnBranchPostalCode: IJanuaField;
    FAnBranchTownName: IJanuaField;
    FAnBranchTownCode: IJanuaField;
    FAnBranchAddress: IJanuaField;
    FAnInsertDate: IJanuaField;
    FAnUpdateDate: IJanuaField;
    FAnUpdId: IJanuaField;
    FAnInsId: IJanuaField;
    FAnUserInsert: IJanuaField;
    FAnUserUpdate: IJanuaField;
    FAnLocal: IJanuaField;
    FJguid: IJanuaField;
    FAnBranchPhone: IJanuaField;
    FAnBranchStateProvince: IJanuaField;
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetAnBranchId: IJanuaField;
    procedure SetAnBranchId(const Value: IJanuaField);
    function GetAnBranchName: IJanuaField;
    procedure SetAnBranchName(const Value: IJanuaField);
    function GetAnBranchPostalCode: IJanuaField;
    procedure SetAnBranchPostalCode(const Value: IJanuaField);
    function GetAnBranchTownName: IJanuaField;
    procedure SetAnBranchTownName(const Value: IJanuaField);
    function GetAnBranchTownCode: IJanuaField;
    procedure SetAnBranchTownCode(const Value: IJanuaField);
    function GetAnBranchAddress: IJanuaField;
    procedure SetAnBranchAddress(const Value: IJanuaField);
    function GetAnInsertDate: IJanuaField;
    procedure SetAnInsertDate(const Value: IJanuaField);
    function GetAnUpdateDate: IJanuaField;
    procedure SetAnUpdateDate(const Value: IJanuaField);
    function GetAnUpdId: IJanuaField;
    procedure SetAnUpdId(const Value: IJanuaField);
    function GetAnInsId: IJanuaField;
    procedure SetAnInsId(const Value: IJanuaField);
    function GetAnUserInsert: IJanuaField;
    procedure SetAnUserInsert(const Value: IJanuaField);
    function GetAnUserUpdate: IJanuaField;
    procedure SetAnUserUpdate(const Value: IJanuaField);
    function GetAnLocal: IJanuaField;
    procedure SetAnLocal(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetAnBranchPhone: IJanuaField;
    procedure SetAnBranchPhone(const Value: IJanuaField);
    function GetAnBranchStateProvince: IJanuaField;
    procedure SetAnBranchStateProvince(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property AnBranchId: IJanuaField read GetAnBranchId write SetAnBranchId;
    property AnBranchName: IJanuaField read GetAnBranchName write SetAnBranchName;
    property AnBranchPostalCode: IJanuaField read GetAnBranchPostalCode write SetAnBranchPostalCode;
    property AnBranchTownName: IJanuaField read GetAnBranchTownName write SetAnBranchTownName;
    property AnBranchTownCode: IJanuaField read GetAnBranchTownCode write SetAnBranchTownCode;
    property AnBranchAddress: IJanuaField read GetAnBranchAddress write SetAnBranchAddress;
    property AnInsertDate: IJanuaField read GetAnInsertDate write SetAnInsertDate;
    property AnUpdateDate: IJanuaField read GetAnUpdateDate write SetAnUpdateDate;
    property AnUpdId: IJanuaField read GetAnUpdId write SetAnUpdId;
    property AnInsId: IJanuaField read GetAnInsId write SetAnInsId;
    property AnUserInsert: IJanuaField read GetAnUserInsert write SetAnUserInsert;
    property AnUserUpdate: IJanuaField read GetAnUserUpdate write SetAnUserUpdate;
    property AnLocal: IJanuaField read GetAnLocal write SetAnLocal;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property AnBranchPhone: IJanuaField read GetAnBranchPhone write SetAnBranchPhone;
    property AnBranchStateProvince: IJanuaField read GetAnBranchStateProvince write SetAnBranchStateProvince;

  end;

  TCustomBranches = class(TJanuaRecordSet, IJanuaRecordSet, ICustomBranches)
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetAnBranchId: IJanuaField;
    procedure SetAnBranchId(const Value: IJanuaField);
    function GetAnBranchName: IJanuaField;
    procedure SetAnBranchName(const Value: IJanuaField);
    function GetAnBranchPostalCode: IJanuaField;
    procedure SetAnBranchPostalCode(const Value: IJanuaField);
    function GetAnBranchTownName: IJanuaField;
    procedure SetAnBranchTownName(const Value: IJanuaField);
    function GetAnBranchTownCode: IJanuaField;
    procedure SetAnBranchTownCode(const Value: IJanuaField);
    function GetAnBranchAddress: IJanuaField;
    procedure SetAnBranchAddress(const Value: IJanuaField);
    function GetAnInsertDate: IJanuaField;
    procedure SetAnInsertDate(const Value: IJanuaField);
    function GetAnUpdateDate: IJanuaField;
    procedure SetAnUpdateDate(const Value: IJanuaField);
    function GetAnUpdId: IJanuaField;
    procedure SetAnUpdId(const Value: IJanuaField);
    function GetAnInsId: IJanuaField;
    procedure SetAnInsId(const Value: IJanuaField);
    function GetAnUserInsert: IJanuaField;
    procedure SetAnUserInsert(const Value: IJanuaField);
    function GetAnUserUpdate: IJanuaField;
    procedure SetAnUserUpdate(const Value: IJanuaField);
    function GetAnLocal: IJanuaField;
    procedure SetAnLocal(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetAnBranchPhone: IJanuaField;
    procedure SetAnBranchPhone(const Value: IJanuaField);
    function GetAnBranchStateProvince: IJanuaField;
    procedure SetAnBranchStateProvince(const Value: IJanuaField);
    function GetCustomBranch: ICustomBranch;
    procedure SetCustomBranch(const Value: ICustomBranch);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property AnBranchId: IJanuaField read GetAnBranchId write SetAnBranchId;
    property AnBranchName: IJanuaField read GetAnBranchName write SetAnBranchName;
    property AnBranchPostalCode: IJanuaField read GetAnBranchPostalCode write SetAnBranchPostalCode;
    property AnBranchTownName: IJanuaField read GetAnBranchTownName write SetAnBranchTownName;
    property AnBranchTownCode: IJanuaField read GetAnBranchTownCode write SetAnBranchTownCode;
    property AnBranchAddress: IJanuaField read GetAnBranchAddress write SetAnBranchAddress;
    property AnInsertDate: IJanuaField read GetAnInsertDate write SetAnInsertDate;
    property AnUpdateDate: IJanuaField read GetAnUpdateDate write SetAnUpdateDate;
    property AnUpdId: IJanuaField read GetAnUpdId write SetAnUpdId;
    property AnInsId: IJanuaField read GetAnInsId write SetAnInsId;
    property AnUserInsert: IJanuaField read GetAnUserInsert write SetAnUserInsert;
    property AnUserUpdate: IJanuaField read GetAnUserUpdate write SetAnUserUpdate;
    property AnLocal: IJanuaField read GetAnLocal write SetAnLocal;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property AnBranchPhone: IJanuaField read GetAnBranchPhone write SetAnBranchPhone;
    property AnBranchStateProvince: IJanuaField read GetAnBranchStateProvince write SetAnBranchStateProvince;
    property Branch: ICustomBranch read GetCustomBranch write SetCustomBranch;
  end;

  TBranchFactory = class
    class function CreateRecord(const aKey: string): ICustomBranch; overload;
    class function CreateRecordset(const aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ICustomBranches; overload;
  end;

implementation

// ------------------------------------------ Impl TBranch -------------------------------

{ TCustomBranch }

constructor TCustomBranch.Create;
begin
  inherited;
  FPrefix := 'abrn';
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
  FAnBranchId := AddCreateField(TJanuaFieldType.jptInteger, 'an_branch_id', 'an_branch_id');
  FAnBranchName := AddCreateField(TJanuaFieldType.jptString, 'an_branch_name', 'an_branch_name');
  FAnBranchPostalCode := AddCreateField(TJanuaFieldType.jptString, 'an_branch_postal_code',
    'an_branch_postal_code');
  FAnBranchTownName := AddCreateField(TJanuaFieldType.jptString, 'an_branch_town_name',
    'an_branch_town_name');
  FAnBranchTownCode := AddCreateField(TJanuaFieldType.jptString, 'an_branch_town_code',
    'an_branch_town_code');
  FAnBranchAddress := AddCreateField(TJanuaFieldType.jptString, 'an_branch_address', 'an_branch_address');
  FAnInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'an_insert_date', 'an_insert_date');
  FAnUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'an_update_date', 'an_update_date');
  FAnUpdId := AddCreateField(TJanuaFieldType.jptLargeint, 'an_upd_id', 'an_upd_id');
  FAnInsId := AddCreateField(TJanuaFieldType.jptLargeint, 'an_ins_id', 'an_ins_id');
  FAnUserInsert := AddCreateField(TJanuaFieldType.jptString, 'an_user_insert', 'an_user_insert');
  FAnUserUpdate := AddCreateField(TJanuaFieldType.jptString, 'an_user_update', 'an_user_update');
  FAnLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'an_local', 'an_local');
  FAnBranchPhone := AddCreateField(TJanuaFieldType.jptString, 'an_branch_phone', 'an_branch_phone');
  FAnBranchStateProvince := AddCreateField(TJanuaFieldType.jptString, 'an_branch_state_province',
    'an_branch_state_province');
end;

function TCustomBranch.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomBranch.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomBranch.GetAnagraphId: IJanuaField;
begin
  Result := FAnagraphId;
end;

procedure TCustomBranch.SetAnagraphId(const Value: IJanuaField);
begin
  FAnagraphId := Value;
end;

function TCustomBranch.GetAnBranchId: IJanuaField;
begin
  Result := FAnBranchId;
end;

procedure TCustomBranch.SetAnBranchId(const Value: IJanuaField);
begin
  FAnBranchId := Value;
end;

function TCustomBranch.GetAnBranchName: IJanuaField;
begin
  Result := FAnBranchName;
end;

procedure TCustomBranch.SetAnBranchName(const Value: IJanuaField);
begin
  FAnBranchName := Value;
end;

function TCustomBranch.GetAnBranchPostalCode: IJanuaField;
begin
  Result := FAnBranchPostalCode;
end;

procedure TCustomBranch.SetAnBranchPostalCode(const Value: IJanuaField);
begin
  FAnBranchPostalCode := Value;
end;

function TCustomBranch.GetAnBranchTownName: IJanuaField;
begin
  Result := FAnBranchTownName;
end;

procedure TCustomBranch.SetAnBranchTownName(const Value: IJanuaField);
begin
  FAnBranchTownName := Value;
end;

function TCustomBranch.GetAnBranchTownCode: IJanuaField;
begin
  Result := FAnBranchTownCode;
end;

procedure TCustomBranch.SetAnBranchTownCode(const Value: IJanuaField);
begin
  FAnBranchTownCode := Value;
end;

function TCustomBranch.GetAnBranchAddress: IJanuaField;
begin
  Result := FAnBranchAddress;
end;

procedure TCustomBranch.SetAnBranchAddress(const Value: IJanuaField);
begin
  FAnBranchAddress := Value;
end;

function TCustomBranch.GetAnInsertDate: IJanuaField;
begin
  Result := FAnInsertDate;
end;

procedure TCustomBranch.SetAnInsertDate(const Value: IJanuaField);
begin
  FAnInsertDate := Value;
end;

function TCustomBranch.GetAnUpdateDate: IJanuaField;
begin
  Result := FAnUpdateDate;
end;

procedure TCustomBranch.SetAnUpdateDate(const Value: IJanuaField);
begin
  FAnUpdateDate := Value;
end;

function TCustomBranch.GetAnUpdId: IJanuaField;
begin
  Result := FAnUpdId;
end;

procedure TCustomBranch.SetAnUpdId(const Value: IJanuaField);
begin
  FAnUpdId := Value;
end;

function TCustomBranch.GetAnInsId: IJanuaField;
begin
  Result := FAnInsId;
end;

procedure TCustomBranch.SetAnInsId(const Value: IJanuaField);
begin
  FAnInsId := Value;
end;

function TCustomBranch.GetAnUserInsert: IJanuaField;
begin
  Result := FAnUserInsert;
end;

procedure TCustomBranch.SetAnUserInsert(const Value: IJanuaField);
begin
  FAnUserInsert := Value;
end;

function TCustomBranch.GetAnUserUpdate: IJanuaField;
begin
  Result := FAnUserUpdate;
end;

procedure TCustomBranch.SetAnUserUpdate(const Value: IJanuaField);
begin
  FAnUserUpdate := Value;
end;

function TCustomBranch.GetAnLocal: IJanuaField;
begin
  Result := FAnLocal;
end;

procedure TCustomBranch.SetAnLocal(const Value: IJanuaField);
begin
  FAnLocal := Value;
end;

function TCustomBranch.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomBranch.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomBranch.GetAnBranchPhone: IJanuaField;
begin
  Result := FAnBranchPhone;
end;

procedure TCustomBranch.SetAnBranchPhone(const Value: IJanuaField);
begin
  FAnBranchPhone := Value;
end;

function TCustomBranch.GetAnBranchStateProvince: IJanuaField;
begin
  Result := FAnBranchStateProvince;
end;

procedure TCustomBranch.SetAnBranchStateProvince(const Value: IJanuaField);
begin
  FAnBranchStateProvince := Value;
end;

{ TCustomBranches }
constructor TCustomBranches.Create;
begin
  inherited;
  self.FRecord := TBranchFactory.CreateRecord('Branch');
end;

function TCustomBranches.GetDbSchemaId: IJanuaField;
begin
  Result := self.Branch.DbSchemaId;
end;

procedure TCustomBranches.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Branch.DbSchemaId := Value;
end;

function TCustomBranches.GetAnagraphId: IJanuaField;
begin
  Result := self.Branch.AnagraphId;
end;

procedure TCustomBranches.SetAnagraphId(const Value: IJanuaField);
begin
  self.Branch.AnagraphId := Value;
end;

function TCustomBranches.GetAnBranchId: IJanuaField;
begin
  Result := self.Branch.AnBranchId;
end;

procedure TCustomBranches.SetAnBranchId(const Value: IJanuaField);
begin
  self.Branch.AnBranchId := Value;
end;

function TCustomBranches.GetAnBranchName: IJanuaField;
begin
  Result := self.Branch.AnBranchName;
end;

procedure TCustomBranches.SetAnBranchName(const Value: IJanuaField);
begin
  self.Branch.AnBranchName := Value;
end;

function TCustomBranches.GetAnBranchPostalCode: IJanuaField;
begin
  Result := self.Branch.AnBranchPostalCode;
end;

procedure TCustomBranches.SetAnBranchPostalCode(const Value: IJanuaField);
begin
  self.Branch.AnBranchPostalCode := Value;
end;

function TCustomBranches.GetAnBranchTownName: IJanuaField;
begin
  Result := self.Branch.AnBranchTownName;
end;

procedure TCustomBranches.SetAnBranchTownName(const Value: IJanuaField);
begin
  self.Branch.AnBranchTownName := Value;
end;

function TCustomBranches.GetAnBranchTownCode: IJanuaField;
begin
  Result := self.Branch.AnBranchTownCode;
end;

procedure TCustomBranches.SetAnBranchTownCode(const Value: IJanuaField);
begin
  self.Branch.AnBranchTownCode := Value;
end;

function TCustomBranches.GetAnBranchAddress: IJanuaField;
begin
  Result := self.Branch.AnBranchAddress;
end;

procedure TCustomBranches.SetAnBranchAddress(const Value: IJanuaField);
begin
  self.Branch.AnBranchAddress := Value;
end;

function TCustomBranches.GetAnInsertDate: IJanuaField;
begin
  Result := self.Branch.AnInsertDate;
end;

procedure TCustomBranches.SetAnInsertDate(const Value: IJanuaField);
begin
  self.Branch.AnInsertDate := Value;
end;

function TCustomBranches.GetAnUpdateDate: IJanuaField;
begin
  Result := self.Branch.AnUpdateDate;
end;

procedure TCustomBranches.SetAnUpdateDate(const Value: IJanuaField);
begin
  self.Branch.AnUpdateDate := Value;
end;

function TCustomBranches.GetAnUpdId: IJanuaField;
begin
  Result := self.Branch.AnUpdId;
end;

procedure TCustomBranches.SetAnUpdId(const Value: IJanuaField);
begin
  self.Branch.AnUpdId := Value;
end;

function TCustomBranches.GetAnInsId: IJanuaField;
begin
  Result := self.Branch.AnInsId;
end;

procedure TCustomBranches.SetAnInsId(const Value: IJanuaField);
begin
  self.Branch.AnInsId := Value;
end;

function TCustomBranches.GetAnUserInsert: IJanuaField;
begin
  Result := self.Branch.AnUserInsert;
end;

procedure TCustomBranches.SetAnUserInsert(const Value: IJanuaField);
begin
  self.Branch.AnUserInsert := Value;
end;

function TCustomBranches.GetAnUserUpdate: IJanuaField;
begin
  Result := self.Branch.AnUserUpdate;
end;

procedure TCustomBranches.SetAnUserUpdate(const Value: IJanuaField);
begin
  self.Branch.AnUserUpdate := Value;
end;

function TCustomBranches.GetAnLocal: IJanuaField;
begin
  Result := self.Branch.AnLocal;
end;

procedure TCustomBranches.SetAnLocal(const Value: IJanuaField);
begin
  self.Branch.AnLocal := Value;
end;

function TCustomBranches.GetJguid: IJanuaField;
begin
  Result := self.Branch.Jguid;
end;

procedure TCustomBranches.SetJguid(const Value: IJanuaField);
begin
  self.Branch.Jguid := Value;
end;

function TCustomBranches.GetAnBranchPhone: IJanuaField;
begin
  Result := self.Branch.AnBranchPhone;
end;

procedure TCustomBranches.SetAnBranchPhone(const Value: IJanuaField);
begin
  self.Branch.AnBranchPhone := Value;
end;

function TCustomBranches.GetAnBranchStateProvince: IJanuaField;
begin
  Result := self.Branch.AnBranchStateProvince;
end;

procedure TCustomBranches.SetAnBranchStateProvince(const Value: IJanuaField);
begin
  self.Branch.AnBranchStateProvince := Value;
end;

function TCustomBranches.GetCustomBranch: ICustomBranch;
begin
  Result := self.FRecord as ICustomBranch;
end;

procedure TCustomBranches.SetCustomBranch(const Value: ICustomBranch);
begin
  self.FRecord := Value;
end;

{ TBranchFactory }

class function TBranchFactory.CreateRecord(const aKey: string): ICustomBranch;
begin
  Result := TCustomBranch.Create;
end;

class function TBranchFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ICustomBranches;
begin
  Result := TCustomBranches.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
