unit JOrm.Football.TeamsChampionships.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.TeamsChampionships.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TTeamsChampionships = class(TJanuaRecord, ITeamsChampionships)
  private
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex: Integer;
    FPosition: IJanuaField;
    FPositionIndex: Integer;
    FPenalty: IJanuaField;
    FPenaltyIndex: Integer;
    FTeamName: IJanuaField;
    FTeamNameIndex: Integer;
    FClubName: IJanuaField;
    FClubNameIndex: Integer;
    FRemoteId: IJanuaField;
    FRemoteIdIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetPenalty: IJanuaField;
    procedure SetPenalty(const Value: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property Position: IJanuaField read GetPosition write SetPosition;
    property Penalty: IJanuaField read GetPenalty write SetPenalty;
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    property ClubName: IJanuaField read GetClubName write SetClubName;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;

  end;

  TTeamsChampionshipss = class(TJanuaRecordSet, IJanuaRecordSet, ITeamsChampionshipss)
  private
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetPenalty: IJanuaField;
    procedure SetPenalty(const Value: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    function GetClubName: IJanuaField;
    procedure SetClubName(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetTeamsChampionships: ITeamsChampionships;
    procedure SetTeamsChampionships(const Value: ITeamsChampionships);
  public
    constructor Create; override;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property Position: IJanuaField read GetPosition write SetPosition;
    property Penalty: IJanuaField read GetPenalty write SetPenalty;
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    property ClubName: IJanuaField read GetClubName write SetClubName;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property TeamsChampionships: ITeamsChampionships read GetTeamsChampionships write SetTeamsChampionships;
  end;

  TTeamsChampionshipsFactory = class
    class function CreateRecord(const aKey: string): ITeamsChampionships; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ITeamsChampionshipss; overload;
  end;

implementation

uses Janua.Orm.Types;

// ------------------------------------------ Impl TTeamsChampionships -------------------------------

{ TTeamsChampionships }

constructor TTeamsChampionships.Create;
begin
  inherited;
  self.FPrefix := 'ftmc';
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FTeamId := TJanuaOrmFactory.CreateSmallintField('team_id', 'team_id');
  FTeamIdIndex := AddField(FTeamId);
  FPosition := TJanuaOrmFactory.CreateSmallintField('position', 'position');
  FPositionIndex := AddField(FPosition);
  FPenalty := TJanuaOrmFactory.CreateSmallintField('penalty', 'penalty');
  FPenaltyIndex := AddField(FPenalty);
  FTeamName := TJanuaOrmFactory.CreateStringField('team_name', 'team_name');
  FTeamNameIndex := AddField(FTeamName);
  FClubName := TJanuaOrmFactory.CreateStringField('club_name', 'club_name');
  FClubNameIndex := AddField(FClubName);
  FRemoteId := TJanuaOrmFactory.CreateLargeIntField('remote_id', 'remote_id');
  FRemoteIdIndex := AddField(FRemoteId);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
end;

function TTeamsChampionships.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TTeamsChampionships.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TTeamsChampionships.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TTeamsChampionships.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TTeamsChampionships.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TTeamsChampionships.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

function TTeamsChampionships.GetPosition: IJanuaField;
begin
  Result := FPosition;
end;

procedure TTeamsChampionships.SetPosition(const Value: IJanuaField);
begin
  FPosition := Value;
end;

function TTeamsChampionships.GetPenalty: IJanuaField;
begin
  Result := FPenalty;
end;

procedure TTeamsChampionships.SetPenalty(const Value: IJanuaField);
begin
  FPenalty := Value;
end;

function TTeamsChampionships.GetTeamName: IJanuaField;
begin
  Result := FTeamName;
end;

procedure TTeamsChampionships.SetTeamName(const Value: IJanuaField);
begin
  FTeamName := Value;
end;

function TTeamsChampionships.GetClubName: IJanuaField;
begin
  Result := FClubName;
end;

procedure TTeamsChampionships.SetClubName(const Value: IJanuaField);
begin
  FClubName := Value;
end;

function TTeamsChampionships.GetRemoteId: IJanuaField;
begin
  Result := FRemoteId;
end;

procedure TTeamsChampionships.SetRemoteId(const Value: IJanuaField);
begin
  FRemoteId := Value;
end;

function TTeamsChampionships.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TTeamsChampionships.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TTeamsChampionshipss }
constructor TTeamsChampionshipss.Create;
begin
  inherited;
  self.FRecord := TTeamsChampionshipsFactory.CreateRecord('TeamsChampionships');
end;

function TTeamsChampionshipss.GetSeasonId: IJanuaField;
begin
  Result := self.TeamsChampionships.SeasonId;
end;

procedure TTeamsChampionshipss.SetSeasonId(const Value: IJanuaField);
begin
  self.TeamsChampionships.SeasonId := Value;
end;

function TTeamsChampionshipss.GetLeagueId: IJanuaField;
begin
  Result := self.TeamsChampionships.LeagueId;
end;

procedure TTeamsChampionshipss.SetLeagueId(const Value: IJanuaField);
begin
  self.TeamsChampionships.LeagueId := Value;
end;

function TTeamsChampionshipss.GetTeamId: IJanuaField;
begin
  Result := self.TeamsChampionships.TeamId;
end;

procedure TTeamsChampionshipss.SetTeamId(const Value: IJanuaField);
begin
  self.TeamsChampionships.TeamId := Value;
end;

function TTeamsChampionshipss.GetPosition: IJanuaField;
begin
  Result := self.TeamsChampionships.Position;
end;

procedure TTeamsChampionshipss.SetPosition(const Value: IJanuaField);
begin
  self.TeamsChampionships.Position := Value;
end;

function TTeamsChampionshipss.GetPenalty: IJanuaField;
begin
  Result := self.TeamsChampionships.Penalty;
end;

procedure TTeamsChampionshipss.SetPenalty(const Value: IJanuaField);
begin
  self.TeamsChampionships.Penalty := Value;
end;

function TTeamsChampionshipss.GetTeamName: IJanuaField;
begin
  Result := self.TeamsChampionships.TeamName;
end;

procedure TTeamsChampionshipss.SetTeamName(const Value: IJanuaField);
begin
  self.TeamsChampionships.TeamName := Value;
end;

function TTeamsChampionshipss.GetClubName: IJanuaField;
begin
  Result := self.TeamsChampionships.ClubName;
end;

procedure TTeamsChampionshipss.SetClubName(const Value: IJanuaField);
begin
  self.TeamsChampionships.ClubName := Value;
end;

function TTeamsChampionshipss.GetRemoteId: IJanuaField;
begin
  Result := self.TeamsChampionships.RemoteId;
end;

procedure TTeamsChampionshipss.SetRemoteId(const Value: IJanuaField);
begin
  self.TeamsChampionships.RemoteId := Value;
end;

function TTeamsChampionshipss.GetDbSchemaId: IJanuaField;
begin
  Result := self.TeamsChampionships.DbSchemaId;
end;

procedure TTeamsChampionshipss.SetDbSchemaId(const Value: IJanuaField);
begin
  self.TeamsChampionships.DbSchemaId := Value;
end;

function TTeamsChampionshipss.GetTeamsChampionships: ITeamsChampionships;
begin
  Result := self.FRecord as ITeamsChampionships;
end;

procedure TTeamsChampionshipss.SetTeamsChampionships(const Value: ITeamsChampionships);
begin
  self.FRecord := Value;
end;

{ TTeamsChampionshipsFactory }

class function TTeamsChampionshipsFactory.CreateRecord(const aKey: string): ITeamsChampionships;
begin
  Result := TTeamsChampionships.Create;
end;

class function TTeamsChampionshipsFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ITeamsChampionshipss;
begin
  Result := TTeamsChampionshipss.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
