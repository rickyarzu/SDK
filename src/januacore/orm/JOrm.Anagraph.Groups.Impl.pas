unit JOrm.Anagraph.Groups.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl,JOrm.Anagraph.Groups.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TGroups = class(TJanuaRecord, IGroups)
  private
    FDb_schema_id: IJanuaField;
    FDb_schema_idIndex : Integer;
    FAn_group_id: IJanuaField;
    FAn_group_idIndex : Integer;
    FGroup_des: IJanuaField;
    FGroup_desIndex : Integer;
    FContact_group: IJanuaField;
    FContact_groupIndex : Integer;
    FSub_group: IJanuaField;
    FSub_groupIndex : Integer;
    FSub_group_des: IJanuaField;
    FSub_group_desIndex : Integer;
    FSettings: IJanuaField;
    FSettingsIndex : Integer;
    FPosition: IJanuaField;
    FPositionIndex : Integer;
    FAccounting: IJanuaField;
    FAccountingIndex : Integer;
    FCod_account: IJanuaField;
    FCod_accountIndex : Integer;
    FLocal: IJanuaField;
    FLocalIndex : Integer;
    FGroup_cod: IJanuaField;
    FGroup_codIndex : Integer;
    FLedger_cod: IJanuaField;
    FLedger_codIndex : Integer;
    FSubledger_cod: IJanuaField;
    FSubledger_codIndex : Integer;
    FGrouping: IJanuaField;
    FGroupingIndex : Integer;
    FDescription: IJanuaField;
    FDescriptionIndex : Integer;
    FMaster_group_id: IJanuaField;
    FMaster_group_idIndex : Integer;
    FAngr_jguid: IJanuaField;
    FAngr_jguidIndex : Integer;
    FAngr_deleted: IJanuaField;
    FAngr_deletedIndex : Integer;
  private
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    function GetGroup_des: IJanuaField;
    procedure SetGroup_des(const Value: IJanuaField);
    function GetContact_group: IJanuaField;
    procedure SetContact_group(const Value: IJanuaField);
    function GetSub_group: IJanuaField;
    procedure SetSub_group(const Value: IJanuaField);
    function GetSub_group_des: IJanuaField;
    procedure SetSub_group_des(const Value: IJanuaField);
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    function GetCod_account: IJanuaField;
    procedure SetCod_account(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetGroup_cod: IJanuaField;
    procedure SetGroup_cod(const Value: IJanuaField);
    function GetLedger_cod: IJanuaField;
    procedure SetLedger_cod(const Value: IJanuaField);
    function GetSubledger_cod: IJanuaField;
    procedure SetSubledger_cod(const Value: IJanuaField);
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetMaster_group_id: IJanuaField;
    procedure SetMaster_group_id(const Value: IJanuaField);
    function GetAngr_jguid: IJanuaField;
    procedure SetAngr_jguid(const Value: IJanuaField);
    function GetAngr_deleted: IJanuaField;
    procedure SetAngr_deleted(const Value: IJanuaField);
  public
    constructor Create; override;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    property Group_des: IJanuaField read GetGroup_des write SetGroup_des;
    property Contact_group: IJanuaField read GetContact_group write SetContact_group;
    property Sub_group: IJanuaField read GetSub_group write SetSub_group;
    property Sub_group_des: IJanuaField read GetSub_group_des write SetSub_group_des;
    property Settings: IJanuaField read GetSettings write SetSettings;
    property Position: IJanuaField read GetPosition write SetPosition;
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    property Cod_account: IJanuaField read GetCod_account write SetCod_account;
    property Local: IJanuaField read GetLocal write SetLocal;
    property Group_cod: IJanuaField read GetGroup_cod write SetGroup_cod;
    property Ledger_cod: IJanuaField read GetLedger_cod write SetLedger_cod;
    property Subledger_cod: IJanuaField read GetSubledger_cod write SetSubledger_cod;
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Master_group_id: IJanuaField read GetMaster_group_id write SetMaster_group_id;
    property Angr_jguid: IJanuaField read GetAngr_jguid write SetAngr_jguid;
    property Angr_deleted: IJanuaField read GetAngr_deleted write SetAngr_deleted;

  end;

  TGroupss = class(TJanuaRecordSet, IJanuaRecordSet, IGroupss)
  private
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    function GetGroup_des: IJanuaField;
    procedure SetGroup_des(const Value: IJanuaField);
    function GetContact_group: IJanuaField;
    procedure SetContact_group(const Value: IJanuaField);
    function GetSub_group: IJanuaField;
    procedure SetSub_group(const Value: IJanuaField);
    function GetSub_group_des: IJanuaField;
    procedure SetSub_group_des(const Value: IJanuaField);
    function GetSettings: IJanuaField;
    procedure SetSettings(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetAccounting: IJanuaField;
    procedure SetAccounting(const Value: IJanuaField);
    function GetCod_account: IJanuaField;
    procedure SetCod_account(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetGroup_cod: IJanuaField;
    procedure SetGroup_cod(const Value: IJanuaField);
    function GetLedger_cod: IJanuaField;
    procedure SetLedger_cod(const Value: IJanuaField);
    function GetSubledger_cod: IJanuaField;
    procedure SetSubledger_cod(const Value: IJanuaField);
    function GetGrouping: IJanuaField;
    procedure SetGrouping(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetMaster_group_id: IJanuaField;
    procedure SetMaster_group_id(const Value: IJanuaField);
    function GetAngr_jguid: IJanuaField;
    procedure SetAngr_jguid(const Value: IJanuaField);
    function GetAngr_deleted: IJanuaField;
    procedure SetAngr_deleted(const Value: IJanuaField);
    function GetGroups: IGroups;
    procedure SetGroups(const Value: IGroups);
  public
    constructor Create; override;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    property Group_des: IJanuaField read GetGroup_des write SetGroup_des;
    property Contact_group: IJanuaField read GetContact_group write SetContact_group;
    property Sub_group: IJanuaField read GetSub_group write SetSub_group;
    property Sub_group_des: IJanuaField read GetSub_group_des write SetSub_group_des;
    property Settings: IJanuaField read GetSettings write SetSettings;
    property Position: IJanuaField read GetPosition write SetPosition;
    property Accounting: IJanuaField read GetAccounting write SetAccounting;
    property Cod_account: IJanuaField read GetCod_account write SetCod_account;
    property Local: IJanuaField read GetLocal write SetLocal;
    property Group_cod: IJanuaField read GetGroup_cod write SetGroup_cod;
    property Ledger_cod: IJanuaField read GetLedger_cod write SetLedger_cod;
    property Subledger_cod: IJanuaField read GetSubledger_cod write SetSubledger_cod;
    property Grouping: IJanuaField read GetGrouping write SetGrouping;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Master_group_id: IJanuaField read GetMaster_group_id write SetMaster_group_id;
    property Angr_jguid: IJanuaField read GetAngr_jguid write SetAngr_jguid;
    property Angr_deleted: IJanuaField read GetAngr_deleted write SetAngr_deleted;
    property Groups:IGroups read GetGroups write SetGroups;
  end;

  TGroupsFactory = class
    class function CreateRecord(const aKey: string): IGroups; overload;
    class function CreateRecordset((const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IGroupss; overload;
  end;

implementation

//------------------------------------------ Impl TGroups -------------------------------

{TGroups}

  constructor TGroups.Create;
  begin
    inherited;
    self.FPrefix := 'angr';
    FDb_schema_id:= TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'Db_schema_id');
    FDb_schema_idIndex := AddField(FDb_schema_id);
    FAn_group_id:= TJanuaOrmFactory.CreateSmallintField('an_group_id', 'An_group_id');
    FAn_group_idIndex := AddField(FAn_group_id);
    FGroup_des:= TJanuaOrmFactory.CreateStringField('group_des', 'Group_des');
    FGroup_desIndex := AddField(FGroup_des);
    FContact_group:= TJanuaOrmFactory.CreateSmallintField('contact_group', 'Contact_group');
    FContact_groupIndex := AddField(FContact_group);
    FSub_group:= TJanuaOrmFactory.CreateSmallintField('sub_group', 'Sub_group');
    FSub_groupIndex := AddField(FSub_group);
    FSub_group_des:= TJanuaOrmFactory.CreateStringField('sub_group_des', 'Sub_group_des');
    FSub_group_desIndex := AddField(FSub_group_des);
    FSettings:= TJanuaOrmFactory.CreateStringField('settings', 'Settings');
    FSettingsIndex := AddField(FSettings);
    FPosition:= TJanuaOrmFactory.CreateSmallintField('position', 'Position');
    FPositionIndex := AddField(FPosition);
    FAccounting:= TJanuaOrmFactory.CreateBoolField('accounting', 'Accounting');
    FAccountingIndex := AddField(FAccounting);
    FCod_account:= TJanuaOrmFactory.CreateStringField('cod_account', 'Cod_account');
    FCod_accountIndex := AddField(FCod_account);
    FLocal:= TJanuaOrmFactory.CreateBoolField('local', 'Local');
    FLocalIndex := AddField(FLocal);
    FGroup_cod:= TJanuaOrmFactory.CreateStringField('group_cod', 'Group_cod');
    FGroup_codIndex := AddField(FGroup_cod);
    FLedger_cod:= TJanuaOrmFactory.CreateStringField('ledger_cod', 'Ledger_cod');
    FLedger_codIndex := AddField(FLedger_cod);
    FSubledger_cod:= TJanuaOrmFactory.CreateStringField('subledger_cod', 'Subledger_cod');
    FSubledger_codIndex := AddField(FSubledger_cod);
    FGrouping:= TJanuaOrmFactory.CreateStringField('grouping', 'Grouping');
    FGroupingIndex := AddField(FGrouping);
    FDescription:= TJanuaOrmFactory.CreateStringField('description', 'Description');
    FDescriptionIndex := AddField(FDescription);
    FMaster_group_id:= TJanuaOrmFactory.CreateIntegerField('master_group_id', 'Master_group_id');
    FMaster_group_idIndex := AddField(FMaster_group_id);
    FAngr_jguid:= TJanuaOrmFactory.CreateStringField('angr_jguid', 'Angr_jguid');
    FAngr_jguidIndex := AddField(FAngr_jguid);
    FAngr_deleted:= TJanuaOrmFactory.CreateBoolField('angr_deleted', 'Angr_deleted');
    FAngr_deletedIndex := AddField(FAngr_deleted);
  end;

  function TGroups.GetDb_schema_id: IJanuaField;
  begin
    Result := FDb_schema_id;
  end;

  procedure TGroups.SetDb_schema_id(const Value: IJanuaField);
  begin
    FDb_schema_id := Value;
  end;

  function TGroups.GetAn_group_id: IJanuaField;
  begin
    Result := FAn_group_id;
  end;

  procedure TGroups.SetAn_group_id(const Value: IJanuaField);
  begin
    FAn_group_id := Value;
  end;

  function TGroups.GetGroup_des: IJanuaField;
  begin
    Result := FGroup_des;
  end;

  procedure TGroups.SetGroup_des(const Value: IJanuaField);
  begin
    FGroup_des := Value;
  end;

  function TGroups.GetContact_group: IJanuaField;
  begin
    Result := FContact_group;
  end;

  procedure TGroups.SetContact_group(const Value: IJanuaField);
  begin
    FContact_group := Value;
  end;

  function TGroups.GetSub_group: IJanuaField;
  begin
    Result := FSub_group;
  end;

  procedure TGroups.SetSub_group(const Value: IJanuaField);
  begin
    FSub_group := Value;
  end;

  function TGroups.GetSub_group_des: IJanuaField;
  begin
    Result := FSub_group_des;
  end;

  procedure TGroups.SetSub_group_des(const Value: IJanuaField);
  begin
    FSub_group_des := Value;
  end;

  function TGroups.GetSettings: IJanuaField;
  begin
    Result := FSettings;
  end;

  procedure TGroups.SetSettings(const Value: IJanuaField);
  begin
    FSettings := Value;
  end;

  function TGroups.GetPosition: IJanuaField;
  begin
    Result := FPosition;
  end;

  procedure TGroups.SetPosition(const Value: IJanuaField);
  begin
    FPosition := Value;
  end;

  function TGroups.GetAccounting: IJanuaField;
  begin
    Result := FAccounting;
  end;

  procedure TGroups.SetAccounting(const Value: IJanuaField);
  begin
    FAccounting := Value;
  end;

  function TGroups.GetCod_account: IJanuaField;
  begin
    Result := FCod_account;
  end;

  procedure TGroups.SetCod_account(const Value: IJanuaField);
  begin
    FCod_account := Value;
  end;

  function TGroups.GetLocal: IJanuaField;
  begin
    Result := FLocal;
  end;

  procedure TGroups.SetLocal(const Value: IJanuaField);
  begin
    FLocal := Value;
  end;

  function TGroups.GetGroup_cod: IJanuaField;
  begin
    Result := FGroup_cod;
  end;

  procedure TGroups.SetGroup_cod(const Value: IJanuaField);
  begin
    FGroup_cod := Value;
  end;

  function TGroups.GetLedger_cod: IJanuaField;
  begin
    Result := FLedger_cod;
  end;

  procedure TGroups.SetLedger_cod(const Value: IJanuaField);
  begin
    FLedger_cod := Value;
  end;

  function TGroups.GetSubledger_cod: IJanuaField;
  begin
    Result := FSubledger_cod;
  end;

  procedure TGroups.SetSubledger_cod(const Value: IJanuaField);
  begin
    FSubledger_cod := Value;
  end;

  function TGroups.GetGrouping: IJanuaField;
  begin
    Result := FGrouping;
  end;

  procedure TGroups.SetGrouping(const Value: IJanuaField);
  begin
    FGrouping := Value;
  end;

  function TGroups.GetDescription: IJanuaField;
  begin
    Result := FDescription;
  end;

  procedure TGroups.SetDescription(const Value: IJanuaField);
  begin
    FDescription := Value;
  end;

  function TGroups.GetMaster_group_id: IJanuaField;
  begin
    Result := FMaster_group_id;
  end;

  procedure TGroups.SetMaster_group_id(const Value: IJanuaField);
  begin
    FMaster_group_id := Value;
  end;

  function TGroups.GetAngr_jguid: IJanuaField;
  begin
    Result := FAngr_jguid;
  end;

  procedure TGroups.SetAngr_jguid(const Value: IJanuaField);
  begin
    FAngr_jguid := Value;
  end;

  function TGroups.GetAngr_deleted: IJanuaField;
  begin
    Result := FAngr_deleted;
  end;

  procedure TGroups.SetAngr_deleted(const Value: IJanuaField);
  begin
    FAngr_deleted := Value;
  end;

  { TGroupss }
  constructor TGroupss.Create;
  begin
    inherited;
    self.FRecord := Factory.CreateRecord('Groups');
  end;

  function TGroupss.GetDb_schema_id: IJanuaField;
  begin
    Result := self.Groups.Db_schema_id;
  end;

  procedure TGroupss.SetDb_schema_id(const Value: IJanuaField);
  begin
    self.Groups.Db_schema_id := Value;
  end;

  function TGroupss.GetAn_group_id: IJanuaField;
  begin
    Result := self.Groups.An_group_id;
  end;

  procedure TGroupss.SetAn_group_id(const Value: IJanuaField);
  begin
    self.Groups.An_group_id := Value;
  end;

  function TGroupss.GetGroup_des: IJanuaField;
  begin
    Result := self.Groups.Group_des;
  end;

  procedure TGroupss.SetGroup_des(const Value: IJanuaField);
  begin
    self.Groups.Group_des := Value;
  end;

  function TGroupss.GetContact_group: IJanuaField;
  begin
    Result := self.Groups.Contact_group;
  end;

  procedure TGroupss.SetContact_group(const Value: IJanuaField);
  begin
    self.Groups.Contact_group := Value;
  end;

  function TGroupss.GetSub_group: IJanuaField;
  begin
    Result := self.Groups.Sub_group;
  end;

  procedure TGroupss.SetSub_group(const Value: IJanuaField);
  begin
    self.Groups.Sub_group := Value;
  end;

  function TGroupss.GetSub_group_des: IJanuaField;
  begin
    Result := self.Groups.Sub_group_des;
  end;

  procedure TGroupss.SetSub_group_des(const Value: IJanuaField);
  begin
    self.Groups.Sub_group_des := Value;
  end;

  function TGroupss.GetSettings: IJanuaField;
  begin
    Result := self.Groups.Settings;
  end;

  procedure TGroupss.SetSettings(const Value: IJanuaField);
  begin
    self.Groups.Settings := Value;
  end;

  function TGroupss.GetPosition: IJanuaField;
  begin
    Result := self.Groups.Position;
  end;

  procedure TGroupss.SetPosition(const Value: IJanuaField);
  begin
    self.Groups.Position := Value;
  end;

  function TGroupss.GetAccounting: IJanuaField;
  begin
    Result := self.Groups.Accounting;
  end;

  procedure TGroupss.SetAccounting(const Value: IJanuaField);
  begin
    self.Groups.Accounting := Value;
  end;

  function TGroupss.GetCod_account: IJanuaField;
  begin
    Result := self.Groups.Cod_account;
  end;

  procedure TGroupss.SetCod_account(const Value: IJanuaField);
  begin
    self.Groups.Cod_account := Value;
  end;

  function TGroupss.GetLocal: IJanuaField;
  begin
    Result := self.Groups.Local;
  end;

  procedure TGroupss.SetLocal(const Value: IJanuaField);
  begin
    self.Groups.Local := Value;
  end;

  function TGroupss.GetGroup_cod: IJanuaField;
  begin
    Result := self.Groups.Group_cod;
  end;

  procedure TGroupss.SetGroup_cod(const Value: IJanuaField);
  begin
    self.Groups.Group_cod := Value;
  end;

  function TGroupss.GetLedger_cod: IJanuaField;
  begin
    Result := self.Groups.Ledger_cod;
  end;

  procedure TGroupss.SetLedger_cod(const Value: IJanuaField);
  begin
    self.Groups.Ledger_cod := Value;
  end;

  function TGroupss.GetSubledger_cod: IJanuaField;
  begin
    Result := self.Groups.Subledger_cod;
  end;

  procedure TGroupss.SetSubledger_cod(const Value: IJanuaField);
  begin
    self.Groups.Subledger_cod := Value;
  end;

  function TGroupss.GetGrouping: IJanuaField;
  begin
    Result := self.Groups.Grouping;
  end;

  procedure TGroupss.SetGrouping(const Value: IJanuaField);
  begin
    self.Groups.Grouping := Value;
  end;

  function TGroupss.GetDescription: IJanuaField;
  begin
    Result := self.Groups.Description;
  end;

  procedure TGroupss.SetDescription(const Value: IJanuaField);
  begin
    self.Groups.Description := Value;
  end;

  function TGroupss.GetMaster_group_id: IJanuaField;
  begin
    Result := self.Groups.Master_group_id;
  end;

  procedure TGroupss.SetMaster_group_id(const Value: IJanuaField);
  begin
    self.Groups.Master_group_id := Value;
  end;

  function TGroupss.GetAngr_jguid: IJanuaField;
  begin
    Result := self.Groups.Angr_jguid;
  end;

  procedure TGroupss.SetAngr_jguid(const Value: IJanuaField);
  begin
    self.Groups.Angr_jguid := Value;
  end;

  function TGroupss.GetAngr_deleted: IJanuaField;
  begin
    Result := self.Groups.Angr_deleted;
  end;

  procedure TGroupss.SetAngr_deleted(const Value: IJanuaField);
  begin
    self.Groups.Angr_deleted := Value;
  end;

  function TGroupss.GetGroups: IGroups;
  begin
    Result := self.FRecord as IGroups;
  end;

  procedure TGroupss.SetGroups(const Value: IGroups);
  begin
    self.FRecord := Value;
  end;

  { TGroupsFactory }

  class function TGroupsFactory.CreateRecord(const aKey: string): IGroups;
  begin
    Result := TGroups.Create;
  end;

  class function TGroupsFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):Groupss;
  begin
    Result := TGroupss.Create(aName, aTableName);
  end;

end.