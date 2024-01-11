unit JOrm.Anagraph.Identities.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl,JOrm.Anagraph.Identities.Intf;

//------------------------------------------ Impl object interface ----------------------------------

type
  TIdentities = class(TJanuaRecord, IIdentities)
  private
    FDb_schema_id: IJanuaField;
    FDb_schema_idIndex : Integer;
    FAnagraph_id: IJanuaField;
    FAnagraph_idIndex : Integer;
    FAn_group_id: IJanuaField;
    FAn_group_idIndex : Integer;
    FAn_agent_id: IJanuaField;
    FAn_agent_idIndex : Integer;
    FAn_agent_group_id: IJanuaField;
    FAn_agent_group_idIndex : Integer;
    FAn_credit_limit: IJanuaField;
    FAn_credit_limitIndex : Integer;
    FAn_credit_days: IJanuaField;
    FAn_credit_daysIndex : Integer;
    FAn_credit: IJanuaField;
    FAn_creditIndex : Integer;
    FAn_credit_notes: IJanuaField;
    FAn_credit_notesIndex : Integer;
    FAn_credit_used: IJanuaField;
    FAn_credit_usedIndex : Integer;
    FAn_overdue_credit: IJanuaField;
    FAn_overdue_creditIndex : Integer;
    FAdnt_jguid: IJanuaField;
    FAdnt_jguidIndex : Integer;
    FAdnt_deleted: IJanuaField;
    FAdnt_deletedIndex : Integer;
  private
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    function GetAn_agent_id: IJanuaField;
    procedure SetAn_agent_id(const Value: IJanuaField);
    function GetAn_agent_group_id: IJanuaField;
    procedure SetAn_agent_group_id(const Value: IJanuaField);
    function GetAn_credit_limit: IJanuaField;
    procedure SetAn_credit_limit(const Value: IJanuaField);
    function GetAn_credit_days: IJanuaField;
    procedure SetAn_credit_days(const Value: IJanuaField);
    function GetAn_credit: IJanuaField;
    procedure SetAn_credit(const Value: IJanuaField);
    function GetAn_credit_notes: IJanuaField;
    procedure SetAn_credit_notes(const Value: IJanuaField);
    function GetAn_credit_used: IJanuaField;
    procedure SetAn_credit_used(const Value: IJanuaField);
    function GetAn_overdue_credit: IJanuaField;
    procedure SetAn_overdue_credit(const Value: IJanuaField);
    function GetAdnt_jguid: IJanuaField;
    procedure SetAdnt_jguid(const Value: IJanuaField);
    function GetAdnt_deleted: IJanuaField;
    procedure SetAdnt_deleted(const Value: IJanuaField);
  public
    constructor Create; override;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    property An_agent_id: IJanuaField read GetAn_agent_id write SetAn_agent_id;
    property An_agent_group_id: IJanuaField read GetAn_agent_group_id write SetAn_agent_group_id;
    property An_credit_limit: IJanuaField read GetAn_credit_limit write SetAn_credit_limit;
    property An_credit_days: IJanuaField read GetAn_credit_days write SetAn_credit_days;
    property An_credit: IJanuaField read GetAn_credit write SetAn_credit;
    property An_credit_notes: IJanuaField read GetAn_credit_notes write SetAn_credit_notes;
    property An_credit_used: IJanuaField read GetAn_credit_used write SetAn_credit_used;
    property An_overdue_credit: IJanuaField read GetAn_overdue_credit write SetAn_overdue_credit;
    property Adnt_jguid: IJanuaField read GetAdnt_jguid write SetAdnt_jguid;
    property Adnt_deleted: IJanuaField read GetAdnt_deleted write SetAdnt_deleted;

  end;

  TIdentitiess = class(TJanuaRecordSet, IJanuaRecordSet, IIdentitiess)
  private
    function GetDb_schema_id: IJanuaField;
    procedure SetDb_schema_id(const Value: IJanuaField);
    function GetAnagraph_id: IJanuaField;
    procedure SetAnagraph_id(const Value: IJanuaField);
    function GetAn_group_id: IJanuaField;
    procedure SetAn_group_id(const Value: IJanuaField);
    function GetAn_agent_id: IJanuaField;
    procedure SetAn_agent_id(const Value: IJanuaField);
    function GetAn_agent_group_id: IJanuaField;
    procedure SetAn_agent_group_id(const Value: IJanuaField);
    function GetAn_credit_limit: IJanuaField;
    procedure SetAn_credit_limit(const Value: IJanuaField);
    function GetAn_credit_days: IJanuaField;
    procedure SetAn_credit_days(const Value: IJanuaField);
    function GetAn_credit: IJanuaField;
    procedure SetAn_credit(const Value: IJanuaField);
    function GetAn_credit_notes: IJanuaField;
    procedure SetAn_credit_notes(const Value: IJanuaField);
    function GetAn_credit_used: IJanuaField;
    procedure SetAn_credit_used(const Value: IJanuaField);
    function GetAn_overdue_credit: IJanuaField;
    procedure SetAn_overdue_credit(const Value: IJanuaField);
    function GetAdnt_jguid: IJanuaField;
    procedure SetAdnt_jguid(const Value: IJanuaField);
    function GetAdnt_deleted: IJanuaField;
    procedure SetAdnt_deleted(const Value: IJanuaField);
    function GetIdentities: IIdentities;
    procedure SetIdentities(const Value: IIdentities);
  public
    constructor Create; override;
    property Db_schema_id: IJanuaField read GetDb_schema_id write SetDb_schema_id;
    property Anagraph_id: IJanuaField read GetAnagraph_id write SetAnagraph_id;
    property An_group_id: IJanuaField read GetAn_group_id write SetAn_group_id;
    property An_agent_id: IJanuaField read GetAn_agent_id write SetAn_agent_id;
    property An_agent_group_id: IJanuaField read GetAn_agent_group_id write SetAn_agent_group_id;
    property An_credit_limit: IJanuaField read GetAn_credit_limit write SetAn_credit_limit;
    property An_credit_days: IJanuaField read GetAn_credit_days write SetAn_credit_days;
    property An_credit: IJanuaField read GetAn_credit write SetAn_credit;
    property An_credit_notes: IJanuaField read GetAn_credit_notes write SetAn_credit_notes;
    property An_credit_used: IJanuaField read GetAn_credit_used write SetAn_credit_used;
    property An_overdue_credit: IJanuaField read GetAn_overdue_credit write SetAn_overdue_credit;
    property Adnt_jguid: IJanuaField read GetAdnt_jguid write SetAdnt_jguid;
    property Adnt_deleted: IJanuaField read GetAdnt_deleted write SetAdnt_deleted;
    property Identities:IIdentities read GetIdentities write SetIdentities;
  end;

  TIdentitiesFactory = class
    class function CreateRecord(const aKey: string): IIdentities; overload;
    class function CreateRecordset((const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IIdentitiess; overload;
  end;

implementation

//------------------------------------------ Impl TIdentities -------------------------------

{TIdentities}

  constructor TIdentities.Create;
  begin
    inherited;
    self.FPrefix := 'adnt';
    FDb_schema_id:= TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'Db_schema_id');
    FDb_schema_idIndex := AddField(FDb_schema_id);
    FAnagraph_id:= TJanuaOrmFactory.CreateIntegerField('anagraph_id', 'Anagraph_id');
    FAnagraph_idIndex := AddField(FAnagraph_id);
    FAn_group_id:= TJanuaOrmFactory.CreateSmallintField('an_group_id', 'An_group_id');
    FAn_group_idIndex := AddField(FAn_group_id);
    FAn_agent_id:= TJanuaOrmFactory.CreateIntegerField('an_agent_id', 'An_agent_id');
    FAn_agent_idIndex := AddField(FAn_agent_id);
    FAn_agent_group_id:= TJanuaOrmFactory.CreateIntegerField('an_agent_group_id', 'An_agent_group_id');
    FAn_agent_group_idIndex := AddField(FAn_agent_group_id);
    FAn_credit_limit:= TJanuaOrmFactory.CreateDoubleField('an_credit_limit', 'An_credit_limit');
    FAn_credit_limitIndex := AddField(FAn_credit_limit);
    FAn_credit_days:= TJanuaOrmFactory.CreateSmallintField('an_credit_days', 'An_credit_days');
    FAn_credit_daysIndex := AddField(FAn_credit_days);
    FAn_credit:= TJanuaOrmFactory.CreateBoolField('an_credit', 'An_credit');
    FAn_creditIndex := AddField(FAn_credit);
    FAn_credit_notes:= TJanuaOrmFactory.CreateStringField('an_credit_notes', 'An_credit_notes');
    FAn_credit_notesIndex := AddField(FAn_credit_notes);
    FAn_credit_used:= TJanuaOrmFactory.CreateDoubleField('an_credit_used', 'An_credit_used');
    FAn_credit_usedIndex := AddField(FAn_credit_used);
    FAn_overdue_credit:= TJanuaOrmFactory.CreateDoubleField('an_overdue_credit', 'An_overdue_credit');
    FAn_overdue_creditIndex := AddField(FAn_overdue_credit);
    FAdnt_jguid:= TJanuaOrmFactory.CreateStringField('adnt_jguid', 'Adnt_jguid');
    FAdnt_jguidIndex := AddField(FAdnt_jguid);
    FAdnt_deleted:= TJanuaOrmFactory.CreateBoolField('adnt_deleted', 'Adnt_deleted');
    FAdnt_deletedIndex := AddField(FAdnt_deleted);
  end;

  function TIdentities.GetDb_schema_id: IJanuaField;
  begin
    Result := FDb_schema_id;
  end;

  procedure TIdentities.SetDb_schema_id(const Value: IJanuaField);
  begin
    FDb_schema_id := Value;
  end;

  function TIdentities.GetAnagraph_id: IJanuaField;
  begin
    Result := FAnagraph_id;
  end;

  procedure TIdentities.SetAnagraph_id(const Value: IJanuaField);
  begin
    FAnagraph_id := Value;
  end;

  function TIdentities.GetAn_group_id: IJanuaField;
  begin
    Result := FAn_group_id;
  end;

  procedure TIdentities.SetAn_group_id(const Value: IJanuaField);
  begin
    FAn_group_id := Value;
  end;

  function TIdentities.GetAn_agent_id: IJanuaField;
  begin
    Result := FAn_agent_id;
  end;

  procedure TIdentities.SetAn_agent_id(const Value: IJanuaField);
  begin
    FAn_agent_id := Value;
  end;

  function TIdentities.GetAn_agent_group_id: IJanuaField;
  begin
    Result := FAn_agent_group_id;
  end;

  procedure TIdentities.SetAn_agent_group_id(const Value: IJanuaField);
  begin
    FAn_agent_group_id := Value;
  end;

  function TIdentities.GetAn_credit_limit: IJanuaField;
  begin
    Result := FAn_credit_limit;
  end;

  procedure TIdentities.SetAn_credit_limit(const Value: IJanuaField);
  begin
    FAn_credit_limit := Value;
  end;

  function TIdentities.GetAn_credit_days: IJanuaField;
  begin
    Result := FAn_credit_days;
  end;

  procedure TIdentities.SetAn_credit_days(const Value: IJanuaField);
  begin
    FAn_credit_days := Value;
  end;

  function TIdentities.GetAn_credit: IJanuaField;
  begin
    Result := FAn_credit;
  end;

  procedure TIdentities.SetAn_credit(const Value: IJanuaField);
  begin
    FAn_credit := Value;
  end;

  function TIdentities.GetAn_credit_notes: IJanuaField;
  begin
    Result := FAn_credit_notes;
  end;

  procedure TIdentities.SetAn_credit_notes(const Value: IJanuaField);
  begin
    FAn_credit_notes := Value;
  end;

  function TIdentities.GetAn_credit_used: IJanuaField;
  begin
    Result := FAn_credit_used;
  end;

  procedure TIdentities.SetAn_credit_used(const Value: IJanuaField);
  begin
    FAn_credit_used := Value;
  end;

  function TIdentities.GetAn_overdue_credit: IJanuaField;
  begin
    Result := FAn_overdue_credit;
  end;

  procedure TIdentities.SetAn_overdue_credit(const Value: IJanuaField);
  begin
    FAn_overdue_credit := Value;
  end;

  function TIdentities.GetAdnt_jguid: IJanuaField;
  begin
    Result := FAdnt_jguid;
  end;

  procedure TIdentities.SetAdnt_jguid(const Value: IJanuaField);
  begin
    FAdnt_jguid := Value;
  end;

  function TIdentities.GetAdnt_deleted: IJanuaField;
  begin
    Result := FAdnt_deleted;
  end;

  procedure TIdentities.SetAdnt_deleted(const Value: IJanuaField);
  begin
    FAdnt_deleted := Value;
  end;

  { TIdentitiess }
  constructor TIdentitiess.Create;
  begin
    inherited;
    self.FRecord := Factory.CreateRecord('Identities');
  end;

  function TIdentitiess.GetDb_schema_id: IJanuaField;
  begin
    Result := self.Identities.Db_schema_id;
  end;

  procedure TIdentitiess.SetDb_schema_id(const Value: IJanuaField);
  begin
    self.Identities.Db_schema_id := Value;
  end;

  function TIdentitiess.GetAnagraph_id: IJanuaField;
  begin
    Result := self.Identities.Anagraph_id;
  end;

  procedure TIdentitiess.SetAnagraph_id(const Value: IJanuaField);
  begin
    self.Identities.Anagraph_id := Value;
  end;

  function TIdentitiess.GetAn_group_id: IJanuaField;
  begin
    Result := self.Identities.An_group_id;
  end;

  procedure TIdentitiess.SetAn_group_id(const Value: IJanuaField);
  begin
    self.Identities.An_group_id := Value;
  end;

  function TIdentitiess.GetAn_agent_id: IJanuaField;
  begin
    Result := self.Identities.An_agent_id;
  end;

  procedure TIdentitiess.SetAn_agent_id(const Value: IJanuaField);
  begin
    self.Identities.An_agent_id := Value;
  end;

  function TIdentitiess.GetAn_agent_group_id: IJanuaField;
  begin
    Result := self.Identities.An_agent_group_id;
  end;

  procedure TIdentitiess.SetAn_agent_group_id(const Value: IJanuaField);
  begin
    self.Identities.An_agent_group_id := Value;
  end;

  function TIdentitiess.GetAn_credit_limit: IJanuaField;
  begin
    Result := self.Identities.An_credit_limit;
  end;

  procedure TIdentitiess.SetAn_credit_limit(const Value: IJanuaField);
  begin
    self.Identities.An_credit_limit := Value;
  end;

  function TIdentitiess.GetAn_credit_days: IJanuaField;
  begin
    Result := self.Identities.An_credit_days;
  end;

  procedure TIdentitiess.SetAn_credit_days(const Value: IJanuaField);
  begin
    self.Identities.An_credit_days := Value;
  end;

  function TIdentitiess.GetAn_credit: IJanuaField;
  begin
    Result := self.Identities.An_credit;
  end;

  procedure TIdentitiess.SetAn_credit(const Value: IJanuaField);
  begin
    self.Identities.An_credit := Value;
  end;

  function TIdentitiess.GetAn_credit_notes: IJanuaField;
  begin
    Result := self.Identities.An_credit_notes;
  end;

  procedure TIdentitiess.SetAn_credit_notes(const Value: IJanuaField);
  begin
    self.Identities.An_credit_notes := Value;
  end;

  function TIdentitiess.GetAn_credit_used: IJanuaField;
  begin
    Result := self.Identities.An_credit_used;
  end;

  procedure TIdentitiess.SetAn_credit_used(const Value: IJanuaField);
  begin
    self.Identities.An_credit_used := Value;
  end;

  function TIdentitiess.GetAn_overdue_credit: IJanuaField;
  begin
    Result := self.Identities.An_overdue_credit;
  end;

  procedure TIdentitiess.SetAn_overdue_credit(const Value: IJanuaField);
  begin
    self.Identities.An_overdue_credit := Value;
  end;

  function TIdentitiess.GetAdnt_jguid: IJanuaField;
  begin
    Result := self.Identities.Adnt_jguid;
  end;

  procedure TIdentitiess.SetAdnt_jguid(const Value: IJanuaField);
  begin
    self.Identities.Adnt_jguid := Value;
  end;

  function TIdentitiess.GetAdnt_deleted: IJanuaField;
  begin
    Result := self.Identities.Adnt_deleted;
  end;

  procedure TIdentitiess.SetAdnt_deleted(const Value: IJanuaField);
  begin
    self.Identities.Adnt_deleted := Value;
  end;

  function TIdentitiess.GetIdentities: IIdentities;
  begin
    Result := self.FRecord as IIdentities;
  end;

  procedure TIdentitiess.SetIdentities(const Value: IIdentities);
  begin
    self.FRecord := Value;
  end;

  { TIdentitiesFactory }

  class function TIdentitiesFactory.CreateRecord(const aKey: string): IIdentities;
  begin
    Result := TIdentities.Create;
  end;

  class function TIdentitiesFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage):Identitiess;
  begin
    Result := TIdentitiess.Create(aName, aTableName);
  end;

end.