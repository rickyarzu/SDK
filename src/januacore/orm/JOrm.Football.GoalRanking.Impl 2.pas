unit JOrm.Football.GoalRanking.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.GoalRanking.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TGoalRanking = class(TJanuaRecord, IGoalRanking)
  private
    FRownum: IJanuaField;
    FRownumIndex: Integer;
    FFirstName: IJanuaField;
    FFirstNameIndex: Integer;
    FFamilyName: IJanuaField;
    FFamilyNameIndex: Integer;
    FTeamName: IJanuaField;
    FTeamNameIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex: Integer;
    FPlayerId: IJanuaField;
    FPlayerIdIndex: Integer;
    FGoals: IJanuaField;
    FGoalsIndex: Integer;
    FGoal: IJanuaField;
    FGoalIndex: Integer;
    FFullName: IJanuaField;
  private
    function GetRownum: IJanuaField;
    procedure SetRownum(const Value: IJanuaField);
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const Value: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
  public
    constructor Create; override;
    property Rownum: IJanuaField read GetRownum write SetRownum;
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property Goals: IJanuaField read GetGoals write SetGoals;
    property Goal: IJanuaField read GetGoal write SetGoal;
  end;

  TGoalRankingTable = class(TJanuaRecordSet, IJanuaRecordSet, IGoalRankingTable)
  private
    function GetRownum: IJanuaField;
    procedure SetRownum(const Value: IJanuaField);
    function GetFirstName: IJanuaField;
    procedure SetFirstName(const Value: IJanuaField);
    function GetFamilyName: IJanuaField;
    procedure SetFamilyName(const Value: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPlayerId: IJanuaField;
    procedure SetPlayerId(const Value: IJanuaField);
    function GetGoals: IJanuaField;
    procedure SetGoals(const Value: IJanuaField);
    function GetGoal: IJanuaField;
    procedure SetGoal(const Value: IJanuaField);
    function GetGoalRanking: IGoalRanking;
    procedure SetGoalRanking(const Value: IGoalRanking);
  public
    constructor Create; override;
    property Rownum: IJanuaField read GetRownum write SetRownum;
    property FirstName: IJanuaField read GetFirstName write SetFirstName;
    property FamilyName: IJanuaField read GetFamilyName write SetFamilyName;
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property PlayerId: IJanuaField read GetPlayerId write SetPlayerId;
    property Goals: IJanuaField read GetGoals write SetGoals;
    property Goal: IJanuaField read GetGoal write SetGoal;
    property GoalRanking: IGoalRanking read GetGoalRanking write SetGoalRanking;
  end;

  TGoalRankingFactory = class
    class function CreateRecord(const aKey: string): IGoalRanking; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IGoalRankingTable; overload;
  end;

implementation

// ------------------------------------------ Impl TGoalRanking -------------------------------

{ TGoalRanking }

constructor TGoalRanking.Create;
begin
  inherited;
  self.FPrefix := 'ftgr';
  FRownum := TJanuaOrmFactory.CreateLargeIntField('rownum', 'rownum');
  FRownumIndex := AddField(FRownum);
  FFirstName := TJanuaOrmFactory.CreateStringField('first_name', 'first_name');
  FFirstNameIndex := AddField(FFirstName);
  FFamilyName := TJanuaOrmFactory.CreateStringField('family_name', 'family_name');
  FFamilyNameIndex := AddField(FFamilyName);
  FTeamName := TJanuaOrmFactory.CreateStringField('team_name', 'team_name');
  FTeamNameIndex := AddField(FTeamName);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FTeamId := TJanuaOrmFactory.CreateSmallintField('team_id', 'team_id');
  FTeamIdIndex := AddField(FTeamId);
  FPlayerId := TJanuaOrmFactory.CreateIntegerField('player_id', 'player_id');
  FPlayerIdIndex := AddField(FPlayerId);
  FGoals := TJanuaOrmFactory.CreateLargeIntField('goals', 'goals');
  FGoalsIndex := AddField(FGoals);
  FGoal := TJanuaOrmFactory.CreateLargeIntField('goal', 'goal');
  FGoalIndex := AddField(FGoal);
end;

function TGoalRanking.GetRownum: IJanuaField;
begin
  Result := FRownum;
end;

procedure TGoalRanking.SetRownum(const Value: IJanuaField);
begin
  FRownum := Value;
end;

function TGoalRanking.GetFirstName: IJanuaField;
begin
  Result := FFirstName;
end;

procedure TGoalRanking.SetFirstName(const Value: IJanuaField);
begin
  FFirstName := Value;
end;

procedure TGoalRanking.SetFullName(const Value: IJanuaField);
begin
  FFullName := Value;
end;

function TGoalRanking.GetFamilyName: IJanuaField;
begin
  Result := FFamilyName;
end;

procedure TGoalRanking.SetFamilyName(const Value: IJanuaField);
begin
  FFamilyName := Value;
end;

function TGoalRanking.GetTeamName: IJanuaField;
begin
  Result := FTeamName;
end;

procedure TGoalRanking.SetTeamName(const Value: IJanuaField);
begin
  FTeamName := Value;
end;

function TGoalRanking.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TGoalRanking.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TGoalRanking.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TGoalRanking.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TGoalRanking.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

procedure TGoalRanking.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

function TGoalRanking.GetPlayerId: IJanuaField;
begin
  Result := FPlayerId;
end;

procedure TGoalRanking.SetPlayerId(const Value: IJanuaField);
begin
  FPlayerId := Value;
end;

function TGoalRanking.GetGoals: IJanuaField;
begin
  Result := FGoals;
end;

procedure TGoalRanking.SetGoals(const Value: IJanuaField);
begin
  FGoals := Value;
end;

function TGoalRanking.GetGoal: IJanuaField;
begin
  Result := FGoal;
end;

procedure TGoalRanking.SetGoal(const Value: IJanuaField);
begin
  FGoal := Value;
end;

{ TGoalRankingTable }
constructor TGoalRankingTable.Create;
begin
  inherited;
  self.FRecord := TGoalRankingFactory.CreateRecord('GoalRanking');
end;

function TGoalRankingTable.GetRownum: IJanuaField;
begin
  Result := self.GoalRanking.Rownum;
end;

procedure TGoalRankingTable.SetRownum(const Value: IJanuaField);
begin
  self.GoalRanking.Rownum := Value;
end;

function TGoalRankingTable.GetFirstName: IJanuaField;
begin
  Result := self.GoalRanking.FirstName;
end;

procedure TGoalRankingTable.SetFirstName(const Value: IJanuaField);
begin
  self.GoalRanking.FirstName := Value;
end;

function TGoalRankingTable.GetFamilyName: IJanuaField;
begin
  Result := self.GoalRanking.FamilyName;
end;

procedure TGoalRankingTable.SetFamilyName(const Value: IJanuaField);
begin
  self.GoalRanking.FamilyName := Value;
end;

function TGoalRankingTable.GetTeamName: IJanuaField;
begin
  Result := self.GoalRanking.TeamName;
end;

procedure TGoalRankingTable.SetTeamName(const Value: IJanuaField);
begin
  self.GoalRanking.TeamName := Value;
end;

function TGoalRankingTable.GetLeagueId: IJanuaField;
begin
  Result := self.GoalRanking.LeagueId;
end;

procedure TGoalRankingTable.SetLeagueId(const Value: IJanuaField);
begin
  self.GoalRanking.LeagueId := Value;
end;

function TGoalRankingTable.GetSeasonId: IJanuaField;
begin
  Result := self.GoalRanking.SeasonId;
end;

procedure TGoalRankingTable.SetSeasonId(const Value: IJanuaField);
begin
  self.GoalRanking.SeasonId := Value;
end;

function TGoalRankingTable.GetTeamId: IJanuaField;
begin
  Result := self.GoalRanking.TeamId;
end;

procedure TGoalRankingTable.SetTeamId(const Value: IJanuaField);
begin
  self.GoalRanking.TeamId := Value;
end;

function TGoalRankingTable.GetPlayerId: IJanuaField;
begin
  Result := self.GoalRanking.PlayerId;
end;

procedure TGoalRankingTable.SetPlayerId(const Value: IJanuaField);
begin
  self.GoalRanking.PlayerId := Value;
end;

function TGoalRankingTable.GetGoals: IJanuaField;
begin
  Result := self.GoalRanking.Goals;
end;

procedure TGoalRankingTable.SetGoals(const Value: IJanuaField);
begin
  self.GoalRanking.Goals := Value;
end;

function TGoalRankingTable.GetGoal: IJanuaField;
begin
  Result := self.GoalRanking.Goal;
end;

procedure TGoalRankingTable.SetGoal(const Value: IJanuaField);
begin
  self.GoalRanking.Goal := Value;
end;

function TGoalRankingTable.GetGoalRanking: IGoalRanking;
begin
  Result := self.FRecord as IGoalRanking;
end;

procedure TGoalRankingTable.SetGoalRanking(const Value: IGoalRanking);
begin
  self.FRecord := Value;
end;

{ TGoalRankingFactory }

class function TGoalRankingFactory.CreateRecord(const aKey: string): IGoalRanking;
begin
  Result := TGoalRanking.Create;
end;

class function TGoalRankingFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
  : IGoalRankingTable;
begin
  Result := TGoalRankingTable.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
