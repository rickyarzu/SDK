unit JOrm.Anagraph.Branches.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Anagraph.Branches.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TBranches = class(TJanuaRecord, IBranches)
  private
    FDb_schema_id: IJanuaField;
    FDb_schema_idIndex: Integer;
    FAnagraph_id: IJanuaField;
    FAnagraph_idIndex: Integer;
    FAn_branch_id: IJanuaField;
    FAn_branch_idIndex: Integer;
    FAn_branch_name: IJanuaField;
    FAn_branch_nameIndex: Integer;
    FAn_branch_postal_code: IJanuaField;
    FAn_branch_postal_codeIndex: Integer;
    FAn_branch_town_name: IJanuaField;
    FAn_branch_town_nameIndex: Integer;
    FAn_branch_town_code: IJanuaField;
    FAn_branch_town_codeIndex: Integer;
    FAn_branch_address: IJanuaField;
    FAn_branch_addressIndex: Integer;
    FAn_insert_date: IJanuaField;
    FAn_insert_dateIndex: Integer;
    FAn_update_date: IJanuaField;
    FAn_update_dateIndex: Integer;
    FAn_upd_id: IJanuaField;
    FAn_upd_idIndex: Integer;
    FAn_ins_id: IJanuaField;
    FAn_ins_idIndex: Integer;
    FAn_user_insert: IJanuaField;
    FAn_user_insertIndex: Integer;
    FAn_user_update: IJanuaField;
    FAn_user_updateIndex: Integer;
    FAn_local: IJanuaField;
    FAn_localIndex: Integer;
    FAbrn_jguid: IJanuaField;
    FAbrn_jguidIndex: Integer;
    FAbrn_deleted: IJanuaField;
    FAbrn_deletedIndex: Integer;
  private
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    function GetAn_branch_id: IJanuaField;
    procedure SetAn_branch_id(const Value: IJanuaField);
    function GetAn_branch_name: IJanuaField;
    procedure SetAn_branch_name(const Value: IJanuaField);
    function GetAn_branch_postal_code: IJanuaField;
    procedure SetAn_branch_postal_code(const Value: IJanuaField);
    function GetAn_branch_town_name: IJanuaField;
    procedure SetAn_branch_town_name(const Value: IJanuaField);
    function GetAn_branch_town_code: IJanuaField;
    procedure SetAn_branch_town_code(const Value: IJanuaField);
    function GetAn_branch_address: IJanuaField;
    procedure SetAn_branch_address(const Value: IJanuaField);
    function GetAn_insert_date: IJanuaField;
    procedure SetAn_insert_date(const Value: IJanuaField);
    function GetAn_update_date: IJanuaField;
    procedure SetAn_update_date(const Value: IJanuaField);
    function GetAn_upd_id: IJanuaField;
    procedure SetAn_upd_id(const Value: IJanuaField);
    function GetAn_ins_id: IJanuaField;
    procedure SetAn_ins_id(const Value: IJanuaField);
    function GetAn_user_insert: IJanuaField;
    procedure SetAn_user_insert(const Value: IJanuaField);
    function GetAn_user_update: IJanuaField;
    procedure SetAn_user_update(const Value: IJanuaField);
    function GetAn_local: IJanuaField;
    procedure SetAn_local(const Value: IJanuaField);
    function GetAbrn_jguid: IJanuaField;
    procedure SetAbrn_jguid(const Value: IJanuaField);
    function GetAbrn_deleted: IJanuaField;
    procedure SetAbrn_deleted(const Value: IJanuaField);
  public
    constructor Create; override;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    property An_branch_id: IJanuaField read GetAn_branch_id write SetAn_branch_id;
    property An_branch_name: IJanuaField read GetAn_branch_name write SetAn_branch_name;
    property An_branch_postal_code: IJanuaField read GetAn_branch_postal_code write SetAn_branch_postal_code;
    property An_branch_town_name: IJanuaField read GetAn_branch_town_name write SetAn_branch_town_name;
    property An_branch_town_code: IJanuaField read GetAn_branch_town_code write SetAn_branch_town_code;
    property An_branch_address: IJanuaField read GetAn_branch_address write SetAn_branch_address;
    property An_insert_date: IJanuaField read GetAn_insert_date write SetAn_insert_date;
    property An_update_date: IJanuaField read GetAn_update_date write SetAn_update_date;
    property An_upd_id: IJanuaField read GetAn_upd_id write SetAn_upd_id;
    property An_ins_id: IJanuaField read GetAn_ins_id write SetAn_ins_id;
    property An_user_insert: IJanuaField read GetAn_user_insert write SetAn_user_insert;
    property An_user_update: IJanuaField read GetAn_user_update write SetAn_user_update;
    property An_local: IJanuaField read GetAn_local write SetAn_local;
    property Abrn_jguid: IJanuaField read GetAbrn_jguid write SetAbrn_jguid;
    property Abrn_deleted: IJanuaField read GetAbrn_deleted write SetAbrn_deleted;

  end;

  TBranchess = class(TJanuaRecordSet, IJanuaRecordSet, IBranchess)
  private
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    function GetAn_branch_id: IJanuaField;
    procedure SetAn_branch_id(const Value: IJanuaField);
    function GetAn_branch_name: IJanuaField;
    procedure SetAn_branch_name(const Value: IJanuaField);
    function GetAn_branch_postal_code: IJanuaField;
    procedure SetAn_branch_postal_code(const Value: IJanuaField);
    function GetAn_branch_town_name: IJanuaField;
    procedure SetAn_branch_town_name(const Value: IJanuaField);
    function GetAn_branch_town_code: IJanuaField;
    procedure SetAn_branch_town_code(const Value: IJanuaField);
    function GetAn_branch_address: IJanuaField;
    procedure SetAn_branch_address(const Value: IJanuaField);
    function GetAn_insert_date: IJanuaField;
    procedure SetAn_insert_date(const Value: IJanuaField);
    function GetAn_update_date: IJanuaField;
    procedure SetAn_update_date(const Value: IJanuaField);
    function GetAn_upd_id: IJanuaField;
    procedure SetAn_upd_id(const Value: IJanuaField);
    function GetAn_ins_id: IJanuaField;
    procedure SetAn_ins_id(const Value: IJanuaField);
    function GetAn_user_insert: IJanuaField;
    procedure SetAn_user_insert(const Value: IJanuaField);
    function GetAn_user_update: IJanuaField;
    procedure SetAn_user_update(const Value: IJanuaField);
    function GetAn_local: IJanuaField;
    procedure SetAn_local(const Value: IJanuaField);
    function GetAbrn_jguid: IJanuaField;
    procedure SetAbrn_jguid(const Value: IJanuaField);
    function GetAbrn_deleted: IJanuaField;
    procedure SetAbrn_deleted(const Value: IJanuaField);
    function GetBranches: IBranches;
    procedure SetBranches(const Value: IBranches);
  public
    constructor Create; override;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    property An_branch_id: IJanuaField read GetAn_branch_id write SetAn_branch_id;
    property An_branch_name: IJanuaField read GetAn_branch_name write SetAn_branch_name;
    property An_branch_postal_code: IJanuaField read GetAn_branch_postal_code write SetAn_branch_postal_code;
    property An_branch_town_name: IJanuaField read GetAn_branch_town_name write SetAn_branch_town_name;
    property An_branch_town_code: IJanuaField read GetAn_branch_town_code write SetAn_branch_town_code;
    property An_branch_address: IJanuaField read GetAn_branch_address write SetAn_branch_address;
    property An_insert_date: IJanuaField read GetAn_insert_date write SetAn_insert_date;
    property An_update_date: IJanuaField read GetAn_update_date write SetAn_update_date;
    property An_upd_id: IJanuaField read GetAn_upd_id write SetAn_upd_id;
    property An_ins_id: IJanuaField read GetAn_ins_id write SetAn_ins_id;
    property An_user_insert: IJanuaField read GetAn_user_insert write SetAn_user_insert;
    property An_user_update: IJanuaField read GetAn_user_update write SetAn_user_update;
    property An_local: IJanuaField read GetAn_local write SetAn_local;
    property Abrn_jguid: IJanuaField read GetAbrn_jguid write SetAbrn_jguid;
    property Abrn_deleted: IJanuaField read GetAbrn_deleted write SetAbrn_deleted;
    property Branches: IBranches read GetBranches write SetBranches;
  end;

  TBranchesFactory = class
    class function CreateRecord(const aKey: string): IBranches; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IBranchess;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TBranches -------------------------------

{ TBranches }

constructor TBranches.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.AnagraphBranches);
  self.FPrefix := 'abrn';
  FDb_schema_id := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'Db_schema_id');
  FDb_schema_idIndex := AddField(FDb_schema_id);
  FAnagraph_id := TJanuaOrmFactory.CreateIntegerField('anagraph_id', 'Anagraph_id');
  FAnagraph_idIndex := AddField(FAnagraph_id);
  FAn_branch_id := TJanuaOrmFactory.CreateIntegerField('an_branch_id', 'An_branch_id');
  FAn_branch_idIndex := AddField(FAn_branch_id);
  FAn_branch_name := TJanuaOrmFactory.CreateStringField('an_branch_name', 'An_branch_name');
  FAn_branch_nameIndex := AddField(FAn_branch_name);
  FAn_branch_postal_code := TJanuaOrmFactory.CreateStringField('an_branch_postal_code', 'An_branch_postal_code');
  FAn_branch_postal_codeIndex := AddField(FAn_branch_postal_code);
  FAn_branch_town_name := TJanuaOrmFactory.CreateStringField('an_branch_town_name', 'An_branch_town_name');
  FAn_branch_town_nameIndex := AddField(FAn_branch_town_name);
  FAn_branch_town_code := TJanuaOrmFactory.CreateStringField('an_branch_town_code', 'An_branch_town_code');
  FAn_branch_town_codeIndex := AddField(FAn_branch_town_code);
  FAn_branch_address := TJanuaOrmFactory.CreateStringField('an_branch_address', 'An_branch_address');
  FAn_branch_addressIndex := AddField(FAn_branch_address);
  FAn_insert_date := TJanuaOrmFactory.CreateDateTimeField('an_insert_date', 'An_insert_date');
  FAn_insert_dateIndex := AddField(FAn_insert_date);
  FAn_update_date := TJanuaOrmFactory.CreateDateTimeField('an_update_date', 'An_update_date');
  FAn_update_dateIndex := AddField(FAn_update_date);
  FAn_upd_id := TJanuaOrmFactory.CreateLargeIntField('an_upd_id', 'An_upd_id');
  FAn_upd_idIndex := AddField(FAn_upd_id);
  FAn_ins_id := TJanuaOrmFactory.CreateLargeIntField('an_ins_id', 'An_ins_id');
  FAn_ins_idIndex := AddField(FAn_ins_id);
  FAn_user_insert := TJanuaOrmFactory.CreateStringField('an_user_insert', 'An_user_insert');
  FAn_user_insertIndex := AddField(FAn_user_insert);
  FAn_user_update := TJanuaOrmFactory.CreateStringField('an_user_update', 'An_user_update');
  FAn_user_updateIndex := AddField(FAn_user_update);
  FAn_local := TJanuaOrmFactory.CreateBoolField('an_local', 'An_local');
  FAn_localIndex := AddField(FAn_local);
  FAbrn_jguid := TJanuaOrmFactory.CreateStringField('abrn_jguid', 'Abrn_jguid');
  FAbrn_jguidIndex := AddField(FAbrn_jguid);
  FAbrn_deleted := TJanuaOrmFactory.CreateBoolField('abrn_deleted', 'Abrn_deleted');
  FAbrn_deletedIndex := AddField(FAbrn_deleted);
end;

function TBranches.GetDb_schema_id: IJanuaField;
begin
  Result := FDb_schema_id;
end;

procedure TBranches.SetDb_schema_id(const Value: IJanuaField);
begin
  FDb_schema_id := Value;
end;

function TBranches.GetAnagraph_id: IJanuaField;
begin
  Result := FAnagraph_id;
end;

procedure TBranches.SetAnagraph_id(const Value: IJanuaField);
begin
  FAnagraph_id := Value;
end;

function TBranches.GetAn_branch_id: IJanuaField;
begin
  Result := FAn_branch_id;
end;

procedure TBranches.SetAn_branch_id(const Value: IJanuaField);
begin
  FAn_branch_id := Value;
end;

function TBranches.GetAn_branch_name: IJanuaField;
begin
  Result := FAn_branch_name;
end;

procedure TBranches.SetAn_branch_name(const Value: IJanuaField);
begin
  FAn_branch_name := Value;
end;

function TBranches.GetAn_branch_postal_code: IJanuaField;
begin
  Result := FAn_branch_postal_code;
end;

procedure TBranches.SetAn_branch_postal_code(const Value: IJanuaField);
begin
  FAn_branch_postal_code := Value;
end;

function TBranches.GetAn_branch_town_name: IJanuaField;
begin
  Result := FAn_branch_town_name;
end;

procedure TBranches.SetAn_branch_town_name(const Value: IJanuaField);
begin
  FAn_branch_town_name := Value;
end;

function TBranches.GetAn_branch_town_code: IJanuaField;
begin
  Result := FAn_branch_town_code;
end;

procedure TBranches.SetAn_branch_town_code(const Value: IJanuaField);
begin
  FAn_branch_town_code := Value;
end;

function TBranches.GetAn_branch_address: IJanuaField;
begin
  Result := FAn_branch_address;
end;

procedure TBranches.SetAn_branch_address(const Value: IJanuaField);
begin
  FAn_branch_address := Value;
end;

function TBranches.GetAn_insert_date: IJanuaField;
begin
  Result := FAn_insert_date;
end;

procedure TBranches.SetAn_insert_date(const Value: IJanuaField);
begin
  FAn_insert_date := Value;
end;

function TBranches.GetAn_update_date: IJanuaField;
begin
  Result := FAn_update_date;
end;

procedure TBranches.SetAn_update_date(const Value: IJanuaField);
begin
  FAn_update_date := Value;
end;

function TBranches.GetAn_upd_id: IJanuaField;
begin
  Result := FAn_upd_id;
end;

procedure TBranches.SetAn_upd_id(const Value: IJanuaField);
begin
  FAn_upd_id := Value;
end;

function TBranches.GetAn_ins_id: IJanuaField;
begin
  Result := FAn_ins_id;
end;

procedure TBranches.SetAn_ins_id(const Value: IJanuaField);
begin
  FAn_ins_id := Value;
end;

function TBranches.GetAn_user_insert: IJanuaField;
begin
  Result := FAn_user_insert;
end;

procedure TBranches.SetAn_user_insert(const Value: IJanuaField);
begin
  FAn_user_insert := Value;
end;

function TBranches.GetAn_user_update: IJanuaField;
begin
  Result := FAn_user_update;
end;

procedure TBranches.SetAn_user_update(const Value: IJanuaField);
begin
  FAn_user_update := Value;
end;

function TBranches.GetAn_local: IJanuaField;
begin
  Result := FAn_local;
end;

procedure TBranches.SetAn_local(const Value: IJanuaField);
begin
  FAn_local := Value;
end;

function TBranches.GetAbrn_jguid: IJanuaField;
begin
  Result := FAbrn_jguid;
end;

procedure TBranches.SetAbrn_jguid(const Value: IJanuaField);
begin
  FAbrn_jguid := Value;
end;

function TBranches.GetAbrn_deleted: IJanuaField;
begin
  Result := FAbrn_deleted;
end;

procedure TBranches.SetAbrn_deleted(const Value: IJanuaField);
begin
  FAbrn_deleted := Value;
end;

{ TBranchess }
constructor TBranchess.Create;
begin
  inherited;
  self.FRecord := TBranchesFactory.CreateRecord('Branches');
end;

function TBranchess.GetDb_schema_id: IJanuaField;
begin
  Result := self.Branches.Db_schema_id;
end;

procedure TBranchess.SetDb_schema_id(const Value: IJanuaField);
begin
  self.Branches.Db_schema_id := Value;
end;

function TBranchess.GetAnagraph_id: IJanuaField;
begin
  Result := self.Branches.Anagraph_id;
end;

procedure TBranchess.SetAnagraph_id(const Value: IJanuaField);
begin
  self.Branches.Anagraph_id := Value;
end;

function TBranchess.GetAn_branch_id: IJanuaField;
begin
  Result := self.Branches.An_branch_id;
end;

procedure TBranchess.SetAn_branch_id(const Value: IJanuaField);
begin
  self.Branches.An_branch_id := Value;
end;

function TBranchess.GetAn_branch_name: IJanuaField;
begin
  Result := self.Branches.An_branch_name;
end;

procedure TBranchess.SetAn_branch_name(const Value: IJanuaField);
begin
  self.Branches.An_branch_name := Value;
end;

function TBranchess.GetAn_branch_postal_code: IJanuaField;
begin
  Result := self.Branches.An_branch_postal_code;
end;

procedure TBranchess.SetAn_branch_postal_code(const Value: IJanuaField);
begin
  self.Branches.An_branch_postal_code := Value;
end;

function TBranchess.GetAn_branch_town_name: IJanuaField;
begin
  Result := self.Branches.An_branch_town_name;
end;

procedure TBranchess.SetAn_branch_town_name(const Value: IJanuaField);
begin
  self.Branches.An_branch_town_name := Value;
end;

function TBranchess.GetAn_branch_town_code: IJanuaField;
begin
  Result := self.Branches.An_branch_town_code;
end;

procedure TBranchess.SetAn_branch_town_code(const Value: IJanuaField);
begin
  self.Branches.An_branch_town_code := Value;
end;

function TBranchess.GetAn_branch_address: IJanuaField;
begin
  Result := self.Branches.An_branch_address;
end;

procedure TBranchess.SetAn_branch_address(const Value: IJanuaField);
begin
  self.Branches.An_branch_address := Value;
end;

function TBranchess.GetAn_insert_date: IJanuaField;
begin
  Result := self.Branches.An_insert_date;
end;

procedure TBranchess.SetAn_insert_date(const Value: IJanuaField);
begin
  self.Branches.An_insert_date := Value;
end;

function TBranchess.GetAn_update_date: IJanuaField;
begin
  Result := self.Branches.An_update_date;
end;

procedure TBranchess.SetAn_update_date(const Value: IJanuaField);
begin
  self.Branches.An_update_date := Value;
end;

function TBranchess.GetAn_upd_id: IJanuaField;
begin
  Result := self.Branches.An_upd_id;
end;

procedure TBranchess.SetAn_upd_id(const Value: IJanuaField);
begin
  self.Branches.An_upd_id := Value;
end;

function TBranchess.GetAn_ins_id: IJanuaField;
begin
  Result := self.Branches.An_ins_id;
end;

procedure TBranchess.SetAn_ins_id(const Value: IJanuaField);
begin
  self.Branches.An_ins_id := Value;
end;

function TBranchess.GetAn_user_insert: IJanuaField;
begin
  Result := self.Branches.An_user_insert;
end;

procedure TBranchess.SetAn_user_insert(const Value: IJanuaField);
begin
  self.Branches.An_user_insert := Value;
end;

function TBranchess.GetAn_user_update: IJanuaField;
begin
  Result := self.Branches.An_user_update;
end;

procedure TBranchess.SetAn_user_update(const Value: IJanuaField);
begin
  self.Branches.An_user_update := Value;
end;

function TBranchess.GetAn_local: IJanuaField;
begin
  Result := self.Branches.An_local;
end;

procedure TBranchess.SetAn_local(const Value: IJanuaField);
begin
  self.Branches.An_local := Value;
end;

function TBranchess.GetAbrn_jguid: IJanuaField;
begin
  Result := self.Branches.Abrn_jguid;
end;

procedure TBranchess.SetAbrn_jguid(const Value: IJanuaField);
begin
  self.Branches.Abrn_jguid := Value;
end;

function TBranchess.GetAbrn_deleted: IJanuaField;
begin
  Result := self.Branches.Abrn_deleted;
end;

procedure TBranchess.SetAbrn_deleted(const Value: IJanuaField);
begin
  self.Branches.Abrn_deleted := Value;
end;

function TBranchess.GetBranches: IBranches;
begin
  Result := self.FRecord as IBranches;
end;

procedure TBranchess.SetBranches(const Value: IBranches);
begin
  self.FRecord := Value;
end;

{ TBranchesFactory }

class function TBranchesFactory.CreateRecord(const aKey: string): IBranches;
begin
  Result := TBranches.Create;
end;

class function TBranchesFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IBranchess;
begin
  Result := TBranchess.Create(aName, aLocalStorage, aRemoteStorage);
end;

// const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage

end.
