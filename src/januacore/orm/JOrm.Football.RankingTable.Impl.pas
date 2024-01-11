unit JOrm.Football.RankingTable.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.RankingTable.Intf, Janua.Football.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TRankingRow = class(TJanuaRecord, IRankingRow)
  private
    FRankingId: IJanuaField;
    FFieldIndex: Integer;
    FSeasonId: IJanuaField;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FTeamId: IJanuaField;
    FTeamIdIndex: Integer;
    FPos: IJanuaField;
    FPosIndex: Integer;
    FPlayedMatches: IJanuaField;
    FPlayedMatchesIndex: Integer;
    FWonMatches: IJanuaField;
    FWonMatchesIndex: Integer;
    FLostMatches: IJanuaField;
    FLostMatchesIndex: Integer;
    FTiedMatches: IJanuaField;
    FTiedMatchesIndex: Integer;
    FHomeMatches: IJanuaField;
    FHomeMatchesIndex: Integer;
    FHomeWon: IJanuaField;
    FHomeWonIndex: Integer;
    FHomeLost: IJanuaField;
    FHomeLostIndex: Integer;
    FHomeTied: IJanuaField;
    FHomeTiedIndex: Integer;
    FOutsidePlayed: IJanuaField;
    FOutsidePlayedIndex: Integer;
    FOutsideWon: IJanuaField;
    FOutsideWonIndex: Integer;
    FOutsideLost: IJanuaField;
    FOutsideLostIndex: Integer;
    FOutsideTied: IJanuaField;
    FGoalDone: IJanuaField;
    FGoalLost: IJanuaField;
    FPoints: IJanuaField;
    FDbSchemaId: IJanuaField;
    FTeamName: IJanuaField;
    FTeamNameLogo: IJanuaField;
  private
    function GetRankingId: IJanuaField;
    procedure SetRankingId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetPlayedMatches: IJanuaField;
    procedure SetPlayedMatches(const Value: IJanuaField);
    function GetWonMatches: IJanuaField;
    procedure SetWonMatches(const Value: IJanuaField);
    function GetLostMatches: IJanuaField;
    procedure SetLostMatches(const Value: IJanuaField);
    function GetTiedMatches: IJanuaField;
    procedure SetTiedMatches(const Value: IJanuaField);
    function GetHomeMatches: IJanuaField;
    procedure SetHomeMatches(const Value: IJanuaField);
    function GetHomeWon: IJanuaField;
    procedure SetHomeWon(const Value: IJanuaField);
    function GetHomeLost: IJanuaField;
    procedure SetHomeLost(const Value: IJanuaField);
    function GetHomeTied: IJanuaField;
    procedure SetHomeTied(const Value: IJanuaField);
    function GetOutsidePlayed: IJanuaField;
    procedure SetOutsidePlayed(const Value: IJanuaField);
    function GetOutsideWon: IJanuaField;
    procedure SetOutsideWon(const Value: IJanuaField);
    function GetOutsideLost: IJanuaField;
    procedure SetOutsideLost(const Value: IJanuaField);
    function GetOutsideTied: IJanuaField;
    procedure SetOutsideTied(const Value: IJanuaField);
    function GetGoalDone: IJanuaField;
    procedure SetGoalDone(const Value: IJanuaField);
    function GetGoalLost: IJanuaField;
    procedure SetGoalLost(const Value: IJanuaField);
    function GetPoints: IJanuaField;
    procedure SetPoints(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
    function GetTeamNameLogo: IJanuaField;
    procedure SetTeamNameLogo(const Value: IJanuaField);
  public
    constructor Create; override;
    procedure CalcFields(Sender: TObject);
    property RankingId: IJanuaField read GetRankingId write SetRankingId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property Pos: IJanuaField read GetPos write SetPos;
    property PlayedMatches: IJanuaField read GetPlayedMatches write SetPlayedMatches;
    property WonMatches: IJanuaField read GetWonMatches write SetWonMatches;
    property LostMatches: IJanuaField read GetLostMatches write SetLostMatches;
    property TiedMatches: IJanuaField read GetTiedMatches write SetTiedMatches;
    property HomeMatches: IJanuaField read GetHomeMatches write SetHomeMatches;
    property HomeWon: IJanuaField read GetHomeWon write SetHomeWon;
    property HomeLost: IJanuaField read GetHomeLost write SetHomeLost;
    property HomeTied: IJanuaField read GetHomeTied write SetHomeTied;
    property OutsidePlayed: IJanuaField read GetOutsidePlayed write SetOutsidePlayed;
    property OutsideWon: IJanuaField read GetOutsideWon write SetOutsideWon;
    property OutsideLost: IJanuaField read GetOutsideLost write SetOutsideLost;
    property OutsideTied: IJanuaField read GetOutsideTied write SetOutsideTied;
    property GoalDone: IJanuaField read GetGoalDone write SetGoalDone;
    property GoalLost: IJanuaField read GetGoalLost write SetGoalLost;
    property Points: IJanuaField read GetPoints write SetPoints;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    // Calc Fields
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
    // ......................................................................
    property TeamNameLogo: IJanuaField read GetTeamNameLogo write SetTeamNameLogo;
  end;

  TRankingTable = class(TJanuaRecordSet, IJanuaRecordSet, IRankingTable)
  private
    function GetRankingId: IJanuaField;
    procedure SetRankingId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetTeamId: IJanuaField;
    procedure SetTeamId(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetPlayedMatches: IJanuaField;
    procedure SetPlayedMatches(const Value: IJanuaField);
    function GetWonMatches: IJanuaField;
    procedure SetWonMatches(const Value: IJanuaField);
    function GetLostMatches: IJanuaField;
    procedure SetLostMatches(const Value: IJanuaField);
    function GetTiedMatches: IJanuaField;
    procedure SetTiedMatches(const Value: IJanuaField);
    function GetHomeMatches: IJanuaField;
    procedure SetHomeMatches(const Value: IJanuaField);
    function GetHomeWon: IJanuaField;
    procedure SetHomeWon(const Value: IJanuaField);
    function GetHomeLost: IJanuaField;
    procedure SetHomeLost(const Value: IJanuaField);
    function GetHomeTied: IJanuaField;
    procedure SetHomeTied(const Value: IJanuaField);
    function GetOutsidePlayed: IJanuaField;
    procedure SetOutsidePlayed(const Value: IJanuaField);
    function GetOutsideWon: IJanuaField;
    procedure SetOutsideWon(const Value: IJanuaField);
    function GetOutsideLost: IJanuaField;
    procedure SetOutsideLost(const Value: IJanuaField);
    function GetOutsideTied: IJanuaField;
    procedure SetOutsideTied(const Value: IJanuaField);
    function GetGoalDone: IJanuaField;
    procedure SetGoalDone(const Value: IJanuaField);
    function GetGoalLost: IJanuaField;
    procedure SetGoalLost(const Value: IJanuaField);
    function GetPoints: IJanuaField;
    procedure SetPoints(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetRankingRow: IRankingRow;
    procedure SetRankingRow(const Value: IRankingRow);
    function GetTeamName: IJanuaField;
    procedure SetTeamName(const Value: IJanuaField);
  public
    constructor Create; override;
    property RankingId: IJanuaField read GetRankingId write SetRankingId;
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId;
    property TeamId: IJanuaField read GetTeamId write SetTeamId;
    property Pos: IJanuaField read GetPos write SetPos;
    property PlayedMatches: IJanuaField read GetPlayedMatches write SetPlayedMatches;
    property WonMatches: IJanuaField read GetWonMatches write SetWonMatches;
    property LostMatches: IJanuaField read GetLostMatches write SetLostMatches;
    property TiedMatches: IJanuaField read GetTiedMatches write SetTiedMatches;
    property HomeMatches: IJanuaField read GetHomeMatches write SetHomeMatches;
    property HomeWon: IJanuaField read GetHomeWon write SetHomeWon;
    property HomeLost: IJanuaField read GetHomeLost write SetHomeLost;
    property HomeTied: IJanuaField read GetHomeTied write SetHomeTied;
    property OutsidePlayed: IJanuaField read GetOutsidePlayed write SetOutsidePlayed;
    property OutsideWon: IJanuaField read GetOutsideWon write SetOutsideWon;
    property OutsideLost: IJanuaField read GetOutsideLost write SetOutsideLost;
    property OutsideTied: IJanuaField read GetOutsideTied write SetOutsideTied;
    property GoalDone: IJanuaField read GetGoalDone write SetGoalDone;
    property GoalLost: IJanuaField read GetGoalLost write SetGoalLost;
    property Points: IJanuaField read GetPoints write SetPoints;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property RankingRow: IRankingRow read GetRankingRow write SetRankingRow;
    // Calc Fields
    property TeamName: IJanuaField read GetTeamName write SetTeamName;
  end;

  TRankingRowFactory = class
    class function CreateRecord(const aKey: string): IRankingRow; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IRankingTable; overload;
  end;

implementation

uses Janua.Orm.Types, Janua.Football.Impl;

// ------------------------------------------ Impl TRankingRow -------------------------------

{ TRankingRow }

procedure TRankingRow.CalcFields(Sender: TObject);
begin
  self.FTeamNameLogo.AsString := TFooballFactory.GenerateTeamLogo(FTeamName.AsString, FTeamId.AsInteger);
  (* '<img src="/?page=image&file=' + FTeamId.AsString + '.jpg"  alt="' + FTeamName.AsString
    + '" style="width:32px; height:32px"> ' + FTeamName.AsString; *)
end;

constructor TRankingRow.Create;
begin
  inherited;
  self.FPrefix := 'frkt';
  SetEntity(TJanuaEntity.FtRankingTable);
  FRankingId := TJanuaOrmFactory.CreateIntegerField('ranking_id', 'ranking_id');
  FFieldIndex := AddField(FRankingId);
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FFieldIndex := AddField(FSeasonId);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FTeamId := TJanuaOrmFactory.CreateIntegerField('team_id', 'team_id');
  FTeamIdIndex := AddField(FTeamId);
  FPos := TJanuaOrmFactory.CreateSmallintField('pos', 'pos');
  FPosIndex := AddField(FPos);
  FPlayedMatches := TJanuaOrmFactory.CreateSmallintField('played_matches', 'played_matches');
  FPlayedMatchesIndex := AddField(FPlayedMatches);
  FWonMatches := TJanuaOrmFactory.CreateSmallintField('won_matches', 'won_matches');
  FWonMatchesIndex := AddField(FWonMatches);
  FLostMatches := TJanuaOrmFactory.CreateSmallintField('lost_matches', 'lost_matches');
  FLostMatchesIndex := AddField(FLostMatches);
  FTiedMatches := TJanuaOrmFactory.CreateSmallintField('tied_matches', 'tied_matches');
  FTiedMatchesIndex := AddField(FTiedMatches);
  FHomeMatches := TJanuaOrmFactory.CreateSmallintField('home_matches', 'home_matches');
  FHomeMatchesIndex := AddField(FHomeMatches);
  FHomeWon := TJanuaOrmFactory.CreateSmallintField('home_won', 'home_won');
  FHomeWonIndex := AddField(FHomeWon);
  FHomeLost := TJanuaOrmFactory.CreateSmallintField('home_lost', 'home_lost');
  FHomeLostIndex := AddField(FHomeLost);
  FHomeTied := TJanuaOrmFactory.CreateSmallintField('home_tied', 'home_tied');
  FHomeTiedIndex := AddField(FHomeTied);
  FOutsidePlayed := TJanuaOrmFactory.CreateSmallintField('outside_played', 'outside_played');
  FOutsidePlayedIndex := AddField(FOutsidePlayed);
  FOutsideWon := TJanuaOrmFactory.CreateSmallintField('outside_won', 'outside_won');
  FOutsideWonIndex := AddField(FOutsideWon);
  FOutsideLost := TJanuaOrmFactory.CreateSmallintField('outside_lost', 'outside_lost');
  FOutsideLostIndex := AddField(FOutsideLost);
  FOutsideTied := TJanuaOrmFactory.CreateSmallintField('outside_tied', 'outside_tied');
  FFieldIndex := AddField(FOutsideTied);
  FGoalDone := TJanuaOrmFactory.CreateSmallintField('goal_done', 'goal_done');
  FFieldIndex := AddField(FGoalDone);
  FGoalLost := TJanuaOrmFactory.CreateSmallintField('goal_lost', 'goal_lost');
  FFieldIndex := AddField(FGoalLost);
  FPoints := TJanuaOrmFactory.CreateSmallintField('points', 'points');
  FFieldIndex := AddField(FPoints);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FFieldIndex := AddField(FDbSchemaId);
  // Read Only Field
  FTeamName := TJanuaOrmFactory.CreateStringField('team_name', 'team_name');
  FFieldIndex := AddField(FTeamName);
  // Calc Fields
  FTeamNameLogo := TJanuaOrmFactory.CreateStringField('team_name_logo', 'team_name_logo');
  FFieldIndex := AddField(FTeamNameLogo);
  self.OnCalcFields := self.CalcFields;
  self.FOnChangeActive := True;
end;

function TRankingRow.GetRankingId: IJanuaField;
begin
  Result := FRankingId;
end;

procedure TRankingRow.SetRankingId(const Value: IJanuaField);
begin
  FRankingId := Value;
end;

function TRankingRow.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TRankingRow.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TRankingRow.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TRankingRow.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TRankingRow.GetTeamId: IJanuaField;
begin
  Result := FTeamId;
end;

function TRankingRow.GetTeamName: IJanuaField;
begin
  Result := self.FTeamName
end;

function TRankingRow.GetTeamNameLogo: IJanuaField;
begin
  Result := self.FTeamNameLogo
end;

procedure TRankingRow.SetTeamId(const Value: IJanuaField);
begin
  FTeamId := Value;
end;

procedure TRankingRow.SetTeamName(const Value: IJanuaField);
begin
  self.FTeamName := Value
end;

procedure TRankingRow.SetTeamNameLogo(const Value: IJanuaField);
begin
  FTeamNameLogo := Value;
end;

function TRankingRow.GetPos: IJanuaField;
begin
  Result := FPos;
end;

procedure TRankingRow.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

function TRankingRow.GetPlayedMatches: IJanuaField;
begin
  Result := FPlayedMatches;
end;

procedure TRankingRow.SetPlayedMatches(const Value: IJanuaField);
begin
  FPlayedMatches := Value;
end;

function TRankingRow.GetWonMatches: IJanuaField;
begin
  Result := FWonMatches;
end;

procedure TRankingRow.SetWonMatches(const Value: IJanuaField);
begin
  FWonMatches := Value;
end;

function TRankingRow.GetLostMatches: IJanuaField;
begin
  Result := FLostMatches;
end;

procedure TRankingRow.SetLostMatches(const Value: IJanuaField);
begin
  FLostMatches := Value;
end;

function TRankingRow.GetTiedMatches: IJanuaField;
begin
  Result := FTiedMatches;
end;

procedure TRankingRow.SetTiedMatches(const Value: IJanuaField);
begin
  FTiedMatches := Value;
end;

function TRankingRow.GetHomeMatches: IJanuaField;
begin
  Result := FHomeMatches;
end;

procedure TRankingRow.SetHomeMatches(const Value: IJanuaField);
begin
  FHomeMatches := Value;
end;

function TRankingRow.GetHomeWon: IJanuaField;
begin
  Result := FHomeWon;
end;

procedure TRankingRow.SetHomeWon(const Value: IJanuaField);
begin
  FHomeWon := Value;
end;

function TRankingRow.GetHomeLost: IJanuaField;
begin
  Result := FHomeLost;
end;

procedure TRankingRow.SetHomeLost(const Value: IJanuaField);
begin
  FHomeLost := Value;
end;

function TRankingRow.GetHomeTied: IJanuaField;
begin
  Result := FHomeTied;
end;

procedure TRankingRow.SetHomeTied(const Value: IJanuaField);
begin
  FHomeTied := Value;
end;

function TRankingRow.GetOutsidePlayed: IJanuaField;
begin
  Result := FOutsidePlayed;
end;

procedure TRankingRow.SetOutsidePlayed(const Value: IJanuaField);
begin
  FOutsidePlayed := Value;
end;

function TRankingRow.GetOutsideWon: IJanuaField;
begin
  Result := FOutsideWon;
end;

procedure TRankingRow.SetOutsideWon(const Value: IJanuaField);
begin
  FOutsideWon := Value;
end;

function TRankingRow.GetOutsideLost: IJanuaField;
begin
  Result := FOutsideLost;
end;

procedure TRankingRow.SetOutsideLost(const Value: IJanuaField);
begin
  FOutsideLost := Value;
end;

function TRankingRow.GetOutsideTied: IJanuaField;
begin
  Result := FOutsideTied;
end;

procedure TRankingRow.SetOutsideTied(const Value: IJanuaField);
begin
  FOutsideTied := Value;
end;

function TRankingRow.GetGoalDone: IJanuaField;
begin
  Result := FGoalDone;
end;

procedure TRankingRow.SetGoalDone(const Value: IJanuaField);
begin
  FGoalDone := Value;
end;

function TRankingRow.GetGoalLost: IJanuaField;
begin
  Result := FGoalLost;
end;

procedure TRankingRow.SetGoalLost(const Value: IJanuaField);
begin
  FGoalLost := Value;
end;

function TRankingRow.GetPoints: IJanuaField;
begin
  Result := FPoints;
end;

procedure TRankingRow.SetPoints(const Value: IJanuaField);
begin
  FPoints := Value;
end;

function TRankingRow.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TRankingRow.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TRankingTable }
constructor TRankingTable.Create;
begin
  inherited;
  self.FRecord := TRankingRowFactory.CreateRecord('RankingRow');
end;

function TRankingTable.GetRankingId: IJanuaField;
begin
  Result := self.RankingRow.RankingId;
end;

procedure TRankingTable.SetRankingId(const Value: IJanuaField);
begin
  self.RankingRow.RankingId := Value;
end;

function TRankingTable.GetSeasonId: IJanuaField;
begin
  Result := self.RankingRow.SeasonId;
end;

procedure TRankingTable.SetSeasonId(const Value: IJanuaField);
begin
  self.RankingRow.SeasonId := Value;
end;

function TRankingTable.GetLeagueId: IJanuaField;
begin
  Result := self.RankingRow.LeagueId;
end;

procedure TRankingTable.SetLeagueId(const Value: IJanuaField);
begin
  self.RankingRow.LeagueId := Value;
end;

function TRankingTable.GetTeamId: IJanuaField;
begin
  Result := self.RankingRow.TeamId;
end;

function TRankingTable.GetTeamName: IJanuaField;
begin
  Result := self.RankingRow.TeamName
end;

procedure TRankingTable.SetTeamId(const Value: IJanuaField);
begin
  self.RankingRow.TeamId := Value;
end;

procedure TRankingTable.SetTeamName(const Value: IJanuaField);
begin
  self.RankingRow.TeamName := Value;
end;

function TRankingTable.GetPos: IJanuaField;
begin
  Result := self.RankingRow.Pos;
end;

procedure TRankingTable.SetPos(const Value: IJanuaField);
begin
  self.RankingRow.Pos := Value;
end;

function TRankingTable.GetPlayedMatches: IJanuaField;
begin
  Result := self.RankingRow.PlayedMatches;
end;

procedure TRankingTable.SetPlayedMatches(const Value: IJanuaField);
begin
  self.RankingRow.PlayedMatches := Value;
end;

function TRankingTable.GetWonMatches: IJanuaField;
begin
  Result := self.RankingRow.WonMatches;
end;

procedure TRankingTable.SetWonMatches(const Value: IJanuaField);
begin
  self.RankingRow.WonMatches := Value;
end;

function TRankingTable.GetLostMatches: IJanuaField;
begin
  Result := self.RankingRow.LostMatches;
end;

procedure TRankingTable.SetLostMatches(const Value: IJanuaField);
begin
  self.RankingRow.LostMatches := Value;
end;

function TRankingTable.GetTiedMatches: IJanuaField;
begin
  Result := self.RankingRow.TiedMatches;
end;

procedure TRankingTable.SetTiedMatches(const Value: IJanuaField);
begin
  self.RankingRow.TiedMatches := Value;
end;

function TRankingTable.GetHomeMatches: IJanuaField;
begin
  Result := self.RankingRow.HomeMatches;
end;

procedure TRankingTable.SetHomeMatches(const Value: IJanuaField);
begin
  self.RankingRow.HomeMatches := Value;
end;

function TRankingTable.GetHomeWon: IJanuaField;
begin
  Result := self.RankingRow.HomeWon;
end;

procedure TRankingTable.SetHomeWon(const Value: IJanuaField);
begin
  self.RankingRow.HomeWon := Value;
end;

function TRankingTable.GetHomeLost: IJanuaField;
begin
  Result := self.RankingRow.HomeLost;
end;

procedure TRankingTable.SetHomeLost(const Value: IJanuaField);
begin
  self.RankingRow.HomeLost := Value;
end;

function TRankingTable.GetHomeTied: IJanuaField;
begin
  Result := self.RankingRow.HomeTied;
end;

procedure TRankingTable.SetHomeTied(const Value: IJanuaField);
begin
  self.RankingRow.HomeTied := Value;
end;

function TRankingTable.GetOutsidePlayed: IJanuaField;
begin
  Result := self.RankingRow.OutsidePlayed;
end;

procedure TRankingTable.SetOutsidePlayed(const Value: IJanuaField);
begin
  self.RankingRow.OutsidePlayed := Value;
end;

function TRankingTable.GetOutsideWon: IJanuaField;
begin
  Result := self.RankingRow.OutsideWon;
end;

procedure TRankingTable.SetOutsideWon(const Value: IJanuaField);
begin
  self.RankingRow.OutsideWon := Value;
end;

function TRankingTable.GetOutsideLost: IJanuaField;
begin
  Result := self.RankingRow.OutsideLost;
end;

procedure TRankingTable.SetOutsideLost(const Value: IJanuaField);
begin
  self.RankingRow.OutsideLost := Value;
end;

function TRankingTable.GetOutsideTied: IJanuaField;
begin
  Result := self.RankingRow.OutsideTied;
end;

procedure TRankingTable.SetOutsideTied(const Value: IJanuaField);
begin
  self.RankingRow.OutsideTied := Value;
end;

function TRankingTable.GetGoalDone: IJanuaField;
begin
  Result := self.RankingRow.GoalDone;
end;

procedure TRankingTable.SetGoalDone(const Value: IJanuaField);
begin
  self.RankingRow.GoalDone := Value;
end;

function TRankingTable.GetGoalLost: IJanuaField;
begin
  Result := self.RankingRow.GoalLost;
end;

procedure TRankingTable.SetGoalLost(const Value: IJanuaField);
begin
  self.RankingRow.GoalLost := Value;
end;

function TRankingTable.GetPoints: IJanuaField;
begin
  Result := self.RankingRow.Points;
end;

procedure TRankingTable.SetPoints(const Value: IJanuaField);
begin
  self.RankingRow.Points := Value;
end;

function TRankingTable.GetDbSchemaId: IJanuaField;
begin
  Result := self.RankingRow.DbSchemaId;
end;

procedure TRankingTable.SetDbSchemaId(const Value: IJanuaField);
begin
  self.RankingRow.DbSchemaId := Value;
end;

function TRankingTable.GetRankingRow: IRankingRow;
begin
  Result := self.FRecord as IRankingRow;
end;

procedure TRankingTable.SetRankingRow(const Value: IRankingRow);
begin
  self.FRecord := Value;
end;

{ TRankingRowFactory }

class function TRankingRowFactory.CreateRecord(const aKey: string): IRankingRow;
begin
  Result := TRankingRow.Create;
end;

class function TRankingRowFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IRankingTable;
begin
  Result := TRankingTable.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
