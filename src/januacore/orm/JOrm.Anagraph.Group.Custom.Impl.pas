unit JOrm.Anagraph.Group.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Anagraph.Group.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomAnagGroup = class(TJanuaRecord, IAnagGroup)
  private
    FDbSchemaId: IJanuaField;
    FAnGroupId: IJanuaField;
    FGroupDes: IJanuaField;
    FContactGroup: IJanuaField;
    FSubGroup: IJanuaField;
    FSubGroupDes: IJanuaField;
    FSettings: IJanuaField;
    FPosition: IJanuaField;
    FAccounting: IJanuaField;
    FCodAccount: IJanuaField;
    FLocal: IJanuaField;
    FGroupCod: IJanuaField;
    FLedgerCod: IJanuaField;
    FSubledgerCod: IJanuaField;
    FGrouping: IJanuaField;
    FDescription: IJanuaField;
    FIconId: IJanuaField;
    FJguid: IJanuaField;
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    function GetGroupDes: IJanuaField;
    procedure SetGroupDes(const Value: IJanuaField);
    function GetContactGroup: IJanuaField;
    procedure SetContactGroup(const Value: IJanuaField);
    function GetSubGroup: IJanuaField;
    procedure SetSubGroup(const Value: IJanuaField);
    function GetSubGroupDes: IJanuaField;
    procedure SetSubGroupDes(const Value: IJanuaField);
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    function GetCodAccount: IJanuaField;
    procedure SetCodAccount(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetGroupCod: IJanuaField;
    procedure SetGroupCod(const Value: IJanuaField);
    function GetLedgerCod: IJanuaField;
    procedure SetLedgerCod(const Value: IJanuaField);
    function GetSubledgerCod: IJanuaField;
    procedure SetSubledgerCod(const Value: IJanuaField);
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetIconId: IJanuaField;
    procedure SetIconId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    property GroupDes: IJanuaField read GetGroupDes write SetGroupDes;
    property ContactGroup: IJanuaField read GetContactGroup write SetContactGroup;
    property SubGroup: IJanuaField read GetSubGroup write SetSubGroup;
    property SubGroupDes: IJanuaField read GetSubGroupDes write SetSubGroupDes;
    property Settings: IJanuaField read GetSettings write SetSettings;
    property Position: IJanuaField read GetPosition write SetPosition;
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    property CodAccount: IJanuaField read GetCodAccount write SetCodAccount;
    property Local: IJanuaField read GetLocal write SetLocal;
    property GroupCod: IJanuaField read GetGroupCod write SetGroupCod;
    property LedgerCod: IJanuaField read GetLedgerCod write SetLedgerCod;
    property SubledgerCod: IJanuaField read GetSubledgerCod write SetSubledgerCod;
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    property Description: IJanuaField read GetDescription write SetDescription;
    property IconId: IJanuaField read GetIconId write SetIconId;
    property Jguid: IJanuaField read GetJguid write SetJguid;

  end;

  TCustomAnagGroups = class(TJanuaRecordSet, IJanuaRecordSet, IAnagGroups)
  private
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    function GetGroupDes: IJanuaField;
    procedure SetGroupDes(const Value: IJanuaField);
    function GetContactGroup: IJanuaField;
    procedure SetContactGroup(const Value: IJanuaField);
    function GetSubGroup: IJanuaField;
    procedure SetSubGroup(const Value: IJanuaField);
    function GetSubGroupDes: IJanuaField;
    procedure SetSubGroupDes(const Value: IJanuaField);
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    function GetCodAccount: IJanuaField;
    procedure SetCodAccount(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetGroupCod: IJanuaField;
    procedure SetGroupCod(const Value: IJanuaField);
    function GetLedgerCod: IJanuaField;
    procedure SetLedgerCod(const Value: IJanuaField);
    function GetSubledgerCod: IJanuaField;
    procedure SetSubledgerCod(const Value: IJanuaField);
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetIconId: IJanuaField;
    procedure SetIconId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetAnagGroup: IAnagGroup;
    procedure SetAnagGroup(const Value: IAnagGroup);
  public
    constructor Create; override;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    property GroupDes: IJanuaField read GetGroupDes write SetGroupDes;
    property ContactGroup: IJanuaField read GetContactGroup write SetContactGroup;
    property SubGroup: IJanuaField read GetSubGroup write SetSubGroup;
    property SubGroupDes: IJanuaField read GetSubGroupDes write SetSubGroupDes;
    property Settings: IJanuaField read GetSettings write SetSettings;
    property Position: IJanuaField read GetPosition write SetPosition;
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    property CodAccount: IJanuaField read GetCodAccount write SetCodAccount;
    property Local: IJanuaField read GetLocal write SetLocal;
    property GroupCod: IJanuaField read GetGroupCod write SetGroupCod;
    property LedgerCod: IJanuaField read GetLedgerCod write SetLedgerCod;
    property SubledgerCod: IJanuaField read GetSubledgerCod write SetSubledgerCod;
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    property Description: IJanuaField read GetDescription write SetDescription;
    property IconId: IJanuaField read GetIconId write SetIconId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property AnagGroup: IAnagGroup read GetAnagGroup write SetAnagGroup;
  end;

implementation

// ------------------------------------------ Impl TAnagGroup -------------------------------

{ TCustomAnagGroup }

constructor TCustomAnagGroup.Create;
begin
  inherited;
  FPrefix := 'angr';
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FAnGroupId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_group_id', 'an_group_id');
  FGroupDes := AddCreateField(TJanuaFieldType.jptString, 'group_des', 'group_des');
  FContactGroup := AddCreateField(TJanuaFieldType.jptSmallint, 'contact_group', 'contact_group');
  FSubGroup := AddCreateField(TJanuaFieldType.jptSmallint, 'sub_group', 'sub_group');
  FSubGroupDes := AddCreateField(TJanuaFieldType.jptString, 'sub_group_des', 'sub_group_des');
  FSettings := AddCreateField(TJanuaFieldType.jptString, 'settings', 'settings');
  FPosition := AddCreateField(TJanuaFieldType.jptSmallint, 'position', 'position');
  FAccounting := AddCreateField(TJanuaFieldType.jptBoolean, 'accounting', 'accounting');
  FCodAccount := AddCreateField(TJanuaFieldType.jptString, 'cod_account', 'cod_account');
  FLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'local', 'local');
  FGroupCod := AddCreateField(TJanuaFieldType.jptString, 'group_cod', 'group_cod');
  FLedgerCod := AddCreateField(TJanuaFieldType.jptString, 'ledger_cod', 'ledger_cod');
  FSubledgerCod := AddCreateField(TJanuaFieldType.jptString, 'subledger_cod', 'subledger_cod');
  FGrouping := AddCreateField(TJanuaFieldType.jptString, 'grouping', 'grouping');
  FDescription := AddCreateField(TJanuaFieldType.jptString, 'description', 'description');
  FIconId := AddCreateField(TJanuaFieldType.jptSmallint, 'icon_id', 'icon_id');
  // Campo non Gestitojguid Type= ftGuid
end;

function TCustomAnagGroup.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomAnagGroup.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomAnagGroup.GetAnGroupId: IJanuaField;
begin
  Result := FAnGroupId;
end;

procedure TCustomAnagGroup.SetAnGroupId(const Value: IJanuaField);
begin
  FAnGroupId := Value;
end;

function TCustomAnagGroup.GetGroupDes: IJanuaField;
begin
  Result := FGroupDes;
end;

procedure TCustomAnagGroup.SetGroupDes(const Value: IJanuaField);
begin
  FGroupDes := Value;
end;

function TCustomAnagGroup.GetContactGroup: IJanuaField;
begin
  Result := FContactGroup;
end;

procedure TCustomAnagGroup.SetContactGroup(const Value: IJanuaField);
begin
  FContactGroup := Value;
end;

function TCustomAnagGroup.GetSubGroup: IJanuaField;
begin
  Result := FSubGroup;
end;

procedure TCustomAnagGroup.SetSubGroup(const Value: IJanuaField);
begin
  FSubGroup := Value;
end;

function TCustomAnagGroup.GetSubGroupDes: IJanuaField;
begin
  Result := FSubGroupDes;
end;

procedure TCustomAnagGroup.SetSubGroupDes(const Value: IJanuaField);
begin
  FSubGroupDes := Value;
end;

function TCustomAnagGroup.GetSettings: IJanuaField;
begin
  Result := FSettings;
end;

procedure TCustomAnagGroup.SetSettings(const Value: IJanuaField);
begin
  FSettings := Value;
end;

function TCustomAnagGroup.GetPosition: IJanuaField;
begin
  Result := FPosition;
end;

procedure TCustomAnagGroup.SetPosition(const Value: IJanuaField);
begin
  FPosition := Value;
end;

function TCustomAnagGroup.GetAccounting: IJanuaField;
begin
  Result := FAccounting;
end;

procedure TCustomAnagGroup.SetAccounting(const Value: IJanuaField);
begin
  FAccounting := Value;
end;

function TCustomAnagGroup.GetCodAccount: IJanuaField;
begin
  Result := FCodAccount;
end;

procedure TCustomAnagGroup.SetCodAccount(const Value: IJanuaField);
begin
  FCodAccount := Value;
end;

function TCustomAnagGroup.GetLocal: IJanuaField;
begin
  Result := FLocal;
end;

procedure TCustomAnagGroup.SetLocal(const Value: IJanuaField);
begin
  FLocal := Value;
end;

function TCustomAnagGroup.GetGroupCod: IJanuaField;
begin
  Result := FGroupCod;
end;

procedure TCustomAnagGroup.SetGroupCod(const Value: IJanuaField);
begin
  FGroupCod := Value;
end;

function TCustomAnagGroup.GetLedgerCod: IJanuaField;
begin
  Result := FLedgerCod;
end;

procedure TCustomAnagGroup.SetLedgerCod(const Value: IJanuaField);
begin
  FLedgerCod := Value;
end;

function TCustomAnagGroup.GetSubledgerCod: IJanuaField;
begin
  Result := FSubledgerCod;
end;

procedure TCustomAnagGroup.SetSubledgerCod(const Value: IJanuaField);
begin
  FSubledgerCod := Value;
end;

function TCustomAnagGroup.GetGrouping: IJanuaField;
begin
  Result := FGrouping;
end;

procedure TCustomAnagGroup.SetGrouping(const Value: IJanuaField);
begin
  FGrouping := Value;
end;

function TCustomAnagGroup.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomAnagGroup.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomAnagGroup.GetIconId: IJanuaField;
begin
  Result := FIconId;
end;

procedure TCustomAnagGroup.SetIconId(const Value: IJanuaField);
begin
  FIconId := Value;
end;

function TCustomAnagGroup.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomAnagGroup.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

{ TCustomAnagGroups }
constructor TCustomAnagGroups.Create;
begin
  inherited;

end;

function TCustomAnagGroups.GetDbSchemaId: IJanuaField;
begin
  Result := self.AnagGroup.DbSchemaId;
end;

procedure TCustomAnagGroups.SetDbSchemaId(const Value: IJanuaField);
begin
  self.AnagGroup.DbSchemaId := Value;
end;

function TCustomAnagGroups.GetAnGroupId: IJanuaField;
begin
  Result := self.AnagGroup.AnGroupId;
end;

procedure TCustomAnagGroups.SetAnGroupId(const Value: IJanuaField);
begin
  self.AnagGroup.AnGroupId := Value;
end;

function TCustomAnagGroups.GetGroupDes: IJanuaField;
begin
  Result := self.AnagGroup.GroupDes;
end;

procedure TCustomAnagGroups.SetGroupDes(const Value: IJanuaField);
begin
  self.AnagGroup.GroupDes := Value;
end;

function TCustomAnagGroups.GetContactGroup: IJanuaField;
begin
  Result := self.AnagGroup.ContactGroup;
end;

procedure TCustomAnagGroups.SetContactGroup(const Value: IJanuaField);
begin
  self.AnagGroup.ContactGroup := Value;
end;

function TCustomAnagGroups.GetSubGroup: IJanuaField;
begin
  Result := self.AnagGroup.SubGroup;
end;

procedure TCustomAnagGroups.SetSubGroup(const Value: IJanuaField);
begin
  self.AnagGroup.SubGroup := Value;
end;

function TCustomAnagGroups.GetSubGroupDes: IJanuaField;
begin
  Result := self.AnagGroup.SubGroupDes;
end;

procedure TCustomAnagGroups.SetSubGroupDes(const Value: IJanuaField);
begin
  self.AnagGroup.SubGroupDes := Value;
end;

function TCustomAnagGroups.GetSettings: IJanuaField;
begin
  Result := self.AnagGroup.Settings;
end;

procedure TCustomAnagGroups.SetSettings(const Value: IJanuaField);
begin
  self.AnagGroup.Settings := Value;
end;

function TCustomAnagGroups.GetPosition: IJanuaField;
begin
  Result := self.AnagGroup.Position;
end;

procedure TCustomAnagGroups.SetPosition(const Value: IJanuaField);
begin
  self.AnagGroup.Position := Value;
end;

function TCustomAnagGroups.GetAccounting: IJanuaField;
begin
  Result := self.AnagGroup.Accounting;
end;

procedure TCustomAnagGroups.SetAccounting(const Value: IJanuaField);
begin
  self.AnagGroup.Accounting := Value;
end;

function TCustomAnagGroups.GetCodAccount: IJanuaField;
begin
  Result := self.AnagGroup.CodAccount;
end;

procedure TCustomAnagGroups.SetCodAccount(const Value: IJanuaField);
begin
  self.AnagGroup.CodAccount := Value;
end;

function TCustomAnagGroups.GetLocal: IJanuaField;
begin
  Result := self.AnagGroup.Local;
end;

procedure TCustomAnagGroups.SetLocal(const Value: IJanuaField);
begin
  self.AnagGroup.Local := Value;
end;

function TCustomAnagGroups.GetGroupCod: IJanuaField;
begin
  Result := self.AnagGroup.GroupCod;
end;

procedure TCustomAnagGroups.SetGroupCod(const Value: IJanuaField);
begin
  self.AnagGroup.GroupCod := Value;
end;

function TCustomAnagGroups.GetLedgerCod: IJanuaField;
begin
  Result := self.AnagGroup.LedgerCod;
end;

procedure TCustomAnagGroups.SetLedgerCod(const Value: IJanuaField);
begin
  self.AnagGroup.LedgerCod := Value;
end;

function TCustomAnagGroups.GetSubledgerCod: IJanuaField;
begin
  Result := self.AnagGroup.SubledgerCod;
end;

procedure TCustomAnagGroups.SetSubledgerCod(const Value: IJanuaField);
begin
  self.AnagGroup.SubledgerCod := Value;
end;

function TCustomAnagGroups.GetGrouping: IJanuaField;
begin
  Result := self.AnagGroup.Grouping;
end;

procedure TCustomAnagGroups.SetGrouping(const Value: IJanuaField);
begin
  self.AnagGroup.Grouping := Value;
end;

function TCustomAnagGroups.GetDescription: IJanuaField;
begin
  Result := self.AnagGroup.Description;
end;

procedure TCustomAnagGroups.SetDescription(const Value: IJanuaField);
begin
  self.AnagGroup.Description := Value;
end;

function TCustomAnagGroups.GetIconId: IJanuaField;
begin
  Result := self.AnagGroup.IconId;
end;

procedure TCustomAnagGroups.SetIconId(const Value: IJanuaField);
begin
  self.AnagGroup.IconId := Value;
end;

function TCustomAnagGroups.GetJguid: IJanuaField;
begin
  Result := self.AnagGroup.Jguid;
end;

procedure TCustomAnagGroups.SetJguid(const Value: IJanuaField);
begin
  self.AnagGroup.Jguid := Value;
end;

function TCustomAnagGroups.GetAnagGroup: IAnagGroup;
begin
  Result := self.FRecord as IAnagGroup;
end;

procedure TCustomAnagGroups.SetAnagGroup(const Value: IAnagGroup);
begin
  self.FRecord := Value;
end;

end.
