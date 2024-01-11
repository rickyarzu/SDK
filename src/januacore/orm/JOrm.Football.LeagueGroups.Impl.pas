unit JOrm.Football.LeagueGroups.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.LeagueGroups.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TLeagueGroups = class(TJanuaRecord, ILeagueGroups)
  private
    FLeagueGroupId: IJanuaField;
    FLeagueGroupIdIndex: Integer;
    FLeagueGroupName: IJanuaField;
    FLeagueGroupNameIndex: Integer;
    FLeagueGroupCode: IJanuaField;
    FLeagueGroupCodeIndex: Integer;
    FFlgrJguid: IJanuaField;
    FFlgrJguidIndex: Integer;
    FFlgrDeleted: IJanuaField;
    FFlgrDeletedIndex: Integer;
  private
    function GetLeagueGroupId: IJanuaField;
    procedure SetLeagueGroupId(const Value: IJanuaField);
    function GetLeagueGroupName: IJanuaField;
    procedure SetLeagueGroupName(const Value: IJanuaField);
    function GetLeagueGroupCode: IJanuaField;
    procedure SetLeagueGroupCode(const Value: IJanuaField);
    function GetFlgrJguid: IJanuaField;
    procedure SetFlgrJguid(const Value: IJanuaField);
    function GetFlgrDeleted: IJanuaField;
    procedure SetFlgrDeleted(const Value: IJanuaField);
  public
    constructor Create; override;
    property LeagueGroupId: IJanuaField read GetLeagueGroupId write SetLeagueGroupId;
    property LeagueGroupName: IJanuaField read GetLeagueGroupName write SetLeagueGroupName;
    property LeagueGroupCode: IJanuaField read GetLeagueGroupCode write SetLeagueGroupCode;
    property FlgrJguid: IJanuaField read GetFlgrJguid write SetFlgrJguid;
    property FlgrDeleted: IJanuaField read GetFlgrDeleted write SetFlgrDeleted;

  end;

  TLeagueGroupss = class(TJanuaRecordSet, IJanuaRecordSet, ILeagueGroupss)
  private
    function GetLeagueGroupId: IJanuaField;
    procedure SetLeagueGroupId(const Value: IJanuaField);
    function GetLeagueGroupName: IJanuaField;
    procedure SetLeagueGroupName(const Value: IJanuaField);
    function GetLeagueGroupCode: IJanuaField;
    procedure SetLeagueGroupCode(const Value: IJanuaField);
    function GetFlgrJguid: IJanuaField;
    procedure SetFlgrJguid(const Value: IJanuaField);
    function GetFlgrDeleted: IJanuaField;
    procedure SetFlgrDeleted(const Value: IJanuaField);
    function GetLeagueGroups: ILeagueGroups;
    procedure SetLeagueGroups(const Value: ILeagueGroups);
  public
    constructor Create; override;
    property LeagueGroupId: IJanuaField read GetLeagueGroupId write SetLeagueGroupId;
    property LeagueGroupName: IJanuaField read GetLeagueGroupName write SetLeagueGroupName;
    property LeagueGroupCode: IJanuaField read GetLeagueGroupCode write SetLeagueGroupCode;
    property FlgrJguid: IJanuaField read GetFlgrJguid write SetFlgrJguid;
    property FlgrDeleted: IJanuaField read GetFlgrDeleted write SetFlgrDeleted;
    property LeagueGroups: ILeagueGroups read GetLeagueGroups write SetLeagueGroups;
  end;

  TLeagueGroupsFactory = class
    class function CreateRecord(const aKey: string): ILeagueGroups; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ILeagueGroupss; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TLeagueGroups -------------------------------

{ TLeagueGroups }

constructor TLeagueGroups.Create;
begin
  inherited;
  self.FPrefix := 'flgp';
  SetEntity(TJanuaEntity.FtLeagueGroups);
  FLeagueGroupId := TJanuaOrmFactory.CreateSmallintField('league_group_id', 'league_group_id');
  FLeagueGroupIdIndex := AddField(FLeagueGroupId);
  FLeagueGroupName := TJanuaOrmFactory.CreateStringField('league_group_name', 'league_group_name');
  FLeagueGroupNameIndex := AddField(FLeagueGroupName);
  FLeagueGroupCode := TJanuaOrmFactory.CreateStringField('league_group_code', 'league_group_code');
  FLeagueGroupCodeIndex := AddField(FLeagueGroupCode);
  FFlgrJguid := TJanuaOrmFactory.CreateStringField('flgr_jguid', 'flgr_jguid');
  FFlgrJguidIndex := AddField(FFlgrJguid);
  FFlgrDeleted := TJanuaOrmFactory.CreateBoolField('flgr_deleted', 'flgr_deleted');
  FFlgrDeletedIndex := AddField(FFlgrDeleted);
end;

function TLeagueGroups.GetLeagueGroupId: IJanuaField;
begin
  Result := FLeagueGroupId;
end;

procedure TLeagueGroups.SetLeagueGroupId(const Value: IJanuaField);
begin
  FLeagueGroupId := Value;
end;

function TLeagueGroups.GetLeagueGroupName: IJanuaField;
begin
  Result := FLeagueGroupName;
end;

procedure TLeagueGroups.SetLeagueGroupName(const Value: IJanuaField);
begin
  FLeagueGroupName := Value;
end;

function TLeagueGroups.GetLeagueGroupCode: IJanuaField;
begin
  Result := FLeagueGroupCode;
end;

procedure TLeagueGroups.SetLeagueGroupCode(const Value: IJanuaField);
begin
  FLeagueGroupCode := Value;
end;

function TLeagueGroups.GetFlgrJguid: IJanuaField;
begin
  Result := FFlgrJguid;
end;

procedure TLeagueGroups.SetFlgrJguid(const Value: IJanuaField);
begin
  FFlgrJguid := Value;
end;

function TLeagueGroups.GetFlgrDeleted: IJanuaField;
begin
  Result := FFlgrDeleted;
end;

procedure TLeagueGroups.SetFlgrDeleted(const Value: IJanuaField);
begin
  FFlgrDeleted := Value;
end;

{ TLeagueGroupss }
constructor TLeagueGroupss.Create;
begin
  inherited;
  self.FRecord := TLeagueGroupsFactory.CreateRecord('LeagueGroups');
end;

function TLeagueGroupss.GetLeagueGroupId: IJanuaField;
begin
  Result := self.LeagueGroups.LeagueGroupId;
end;

procedure TLeagueGroupss.SetLeagueGroupId(const Value: IJanuaField);
begin
  self.LeagueGroups.LeagueGroupId := Value;
end;

function TLeagueGroupss.GetLeagueGroupName: IJanuaField;
begin
  Result := self.LeagueGroups.LeagueGroupName;
end;

procedure TLeagueGroupss.SetLeagueGroupName(const Value: IJanuaField);
begin
  self.LeagueGroups.LeagueGroupName := Value;
end;

function TLeagueGroupss.GetLeagueGroupCode: IJanuaField;
begin
  Result := self.LeagueGroups.LeagueGroupCode;
end;

procedure TLeagueGroupss.SetLeagueGroupCode(const Value: IJanuaField);
begin
  self.LeagueGroups.LeagueGroupCode := Value;
end;

function TLeagueGroupss.GetFlgrJguid: IJanuaField;
begin
  Result := self.LeagueGroups.FlgrJguid;
end;

procedure TLeagueGroupss.SetFlgrJguid(const Value: IJanuaField);
begin
  self.LeagueGroups.FlgrJguid := Value;
end;

function TLeagueGroupss.GetFlgrDeleted: IJanuaField;
begin
  Result := self.LeagueGroups.FlgrDeleted;
end;

procedure TLeagueGroupss.SetFlgrDeleted(const Value: IJanuaField);
begin
  self.LeagueGroups.FlgrDeleted := Value;
end;

function TLeagueGroupss.GetLeagueGroups: ILeagueGroups;
begin
  Result := self.FRecord as ILeagueGroups;
end;

procedure TLeagueGroupss.SetLeagueGroups(const Value: ILeagueGroups);
begin
  self.FRecord := Value;
end;

{ TLeagueGroupsFactory }

class function TLeagueGroupsFactory.CreateRecord(const aKey: string): ILeagueGroups;
begin
  Result := TLeagueGroups.Create;
end;

class function TLeagueGroupsFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ILeagueGroupss;
begin
  Result := TLeagueGroupss.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
