unit JOrm.Football.Matches.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, JOrm.Football.Matches.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TMatch = class(TJanuaRecord, IMatch)
  private
    FMatchId: IJanuaField;
    FMatchIdIndex: Integer;
    FLeagueId: IJanuaField;
    FLeagueIdIndex: Integer;
    FSeasonId: IJanuaField;
    FSeasonIdIndex: Integer;
    FMatchDayNumber: IJanuaField;
    FMatchDayNumberIndex: Integer;
    FMatchDate: IJanuaField;
    FMatchDateIndex: Integer;
    FHomeTeamId: IJanuaField;
    FHomeTeamIdIndex: Integer;
    FVisitorsTeamId: IJanuaField;
    FVisitorsTeamIdIndex: Integer;
    FGoalHome: IJanuaField;
    FGoalHomeIndex: Integer;
    FGoalVisitor: IJanuaField;
    FGoalVisitorIndex: Integer;
    FPointsHome: IJanuaField;
    FPointsHomeIndex: Integer;
    FPointsVisitors: IJanuaField;
    FPointsVisitorsIndex: Integer;
    FNotes: IJanuaField;
    FNotesIndex: Integer;
    FConfirmed: IJanuaField;
    FConfirmedIndex: Integer;
    FDbSchemaId: IJanuaField;
    FDbSchemaIdIndex: Integer;
    FInsertDate: IJanuaField;
    FInsertDateIndex: Integer;
    FUpdateDate: IJanuaField;
    FUpdateDateIndex: Integer;
    FHomeNotes: IJanuaField;
    FHomeNotesIndex: Integer;
    FVisitorsNotes: IJanuaField;
    FVisitorsNotesIndex: Integer;
    FMatchTime: IJanuaField;
    FMatchTimeIndex: Integer;
    FRefereeId: IJanuaField;
    FRefereeIdIndex: Integer;
    FRefereeSecondId: IJanuaField;
    FRefereeSecondIdIndex: Integer;
    FRefereeThirdId: IJanuaField;
    FRefereeThirdIdIndex: Integer;
    FSuspended: IJanuaField;
    FSuspendedIndex: Integer;
    FPostponed: IJanuaField;
    FPostponedIndex: Integer;
    FForfeit: IJanuaField;
    FForfeitIndex: Integer;
    FRemoteId: IJanuaField;
    FRemoteIdIndex: Integer;
    FFiledId: IJanuaField;
    FFiledIdIndex: Integer;
    // Campi Calcolati e Campi Read Only
    FHomeTeamLogo: IJanuaField;
    FHomeTeamLogoIndex: Integer;
    FVisitorsTeamLogo: IJanuaField;
    FVisitorsTeamLogoIndex: Integer;
    FHomeTeamName: IJanuaField;
    FHomeTeamNameIndex: Integer;
    FVisitorsTeamName: IJanuaField;
    FVisitorsTeamNameIndex: Integer;
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    function GetMatchDate: IJanuaField;
    procedure SetMatchDate(const Value: IJanuaField);
    function GetHomeTeamId: IJanuaField;
    procedure SetHomeTeamId(const Value: IJanuaField);
    function GetVisitorsTeamId: IJanuaField;
    procedure SetVisitorsTeamId(const Value: IJanuaField);
    function GetGoalHome: IJanuaField;
    procedure SetGoalHome(const Value: IJanuaField);
    function GetGoalVisitor: IJanuaField;
    procedure SetGoalVisitor(const Value: IJanuaField);
    function GetPointsHome: IJanuaField;
    procedure SetPointsHome(const Value: IJanuaField);
    function GetPointsVisitors: IJanuaField;
    procedure SetPointsVisitors(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetConfirmed: IJanuaField;
    procedure SetConfirmed(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetHomeNotes: IJanuaField;
    procedure SetHomeNotes(const Value: IJanuaField);
    function GetVisitorsNotes: IJanuaField;
    procedure SetVisitorsNotes(const Value: IJanuaField);
    function GetMatchTime: IJanuaField;
    procedure SetMatchTime(const Value: IJanuaField);
    function GetRefereeId: IJanuaField;
    procedure SetRefereeId(const Value: IJanuaField);
    function GetRefereeSecondId: IJanuaField;
    procedure SetRefereeSecondId(const Value: IJanuaField);
    function GetRefereeThirdId: IJanuaField;
    procedure SetRefereeThirdId(const Value: IJanuaField);
    function GetSuspended: IJanuaField;
    procedure SetSuspended(const Value: IJanuaField);
    function GetPostponed: IJanuaField;
    procedure SetPostponed(const Value: IJanuaField);
    function GetForfeit: IJanuaField;
    procedure SetForfeit(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetFiledId: IJanuaField;
    procedure SetFiledId(const Value: IJanuaField);
    // Campi Calcolati e Read Only
    function GetHomeTeamName: IJanuaField;
    procedure SetHomeTeamName(const Value: IJanuaField);
    function GetVisitorsTeamName: IJanuaField;
    procedure SetVisitorsTeamName(const Value: IJanuaField);
    function GetHomeTeamLogo: IJanuaField;
    procedure SetHomeTeamLogo(const Value: IJanuaField);
    function GetVisitorsTeamLogo: IJanuaField;
    procedure SetVisitorsTeamLogo(const Value: IJanuaField);
  public
    constructor Create; override;
    procedure CalcFields(Sender: TObject);
    property MatchId: IJanuaField read GetMatchId write SetMatchId; // 1
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId; // 2
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId; // 3
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber; // 4
    property MatchDate: IJanuaField read GetMatchDate write SetMatchDate;
    property HomeTeamId: IJanuaField read GetHomeTeamId write SetHomeTeamId;
    property VisitorsTeamId: IJanuaField read GetVisitorsTeamId write SetVisitorsTeamId;
    property GoalHome: IJanuaField read GetGoalHome write SetGoalHome;
    property GoalVisitor: IJanuaField read GetGoalVisitor write SetGoalVisitor;
    property PointsHome: IJanuaField read GetPointsHome write SetPointsHome;
    property PointsVisitors: IJanuaField read GetPointsVisitors write SetPointsVisitors;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property Confirmed: IJanuaField read GetConfirmed write SetConfirmed;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property HomeNotes: IJanuaField read GetHomeNotes write SetHomeNotes;
    property VisitorsNotes: IJanuaField read GetVisitorsNotes write SetVisitorsNotes;
    property MatchTime: IJanuaField read GetMatchTime write SetMatchTime;
    property RefereeId: IJanuaField read GetRefereeId write SetRefereeId;
    property RefereeSecondId: IJanuaField read GetRefereeSecondId write SetRefereeSecondId;
    property RefereeThirdId: IJanuaField read GetRefereeThirdId write SetRefereeThirdId;
    property Suspended: IJanuaField read GetSuspended write SetSuspended;
    property Postponed: IJanuaField read GetPostponed write SetPostponed;
    property Forfeit: IJanuaField read GetForfeit write SetForfeit;
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    property FiledId: IJanuaField read GetFiledId write SetFiledId;
    property HomeTeamName: IJanuaField read GetHomeTeamName write SetHomeTeamName;
    property VisitorsTeamName: IJanuaField read GetVisitorsTeamName write SetVisitorsTeamName;
    property HomeTeamLogo: IJanuaField read GetHomeTeamLogo write SetHomeTeamLogo;
    property VisitorsTeamLogo: IJanuaField read GetVisitorsTeamLogo write SetVisitorsTeamLogo;
  end;

  TMatches = class(TJanuaRecordSet, IJanuaRecordSet, IMatches)
  private
    function GetMatchId: IJanuaField;
    procedure SetMatchId(const Value: IJanuaField);
    function GetLeagueId: IJanuaField;
    procedure SetLeagueId(const Value: IJanuaField);
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    function GetMatchDayNumber: IJanuaField;
    procedure SetMatchDayNumber(const Value: IJanuaField);
    function GetMatchDate: IJanuaField;
    procedure SetMatchDate(const Value: IJanuaField);
    function GetHomeTeamId: IJanuaField;
    procedure SetHomeTeamId(const Value: IJanuaField);
    function GetVisitorsTeamId: IJanuaField;
    procedure SetVisitorsTeamId(const Value: IJanuaField);
    function GetGoalHome: IJanuaField;
    procedure SetGoalHome(const Value: IJanuaField);
    function GetGoalVisitor: IJanuaField;
    procedure SetGoalVisitor(const Value: IJanuaField);
    function GetPointsHome: IJanuaField;
    procedure SetPointsHome(const Value: IJanuaField);
    function GetPointsVisitors: IJanuaField;
    procedure SetPointsVisitors(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetConfirmed: IJanuaField;
    procedure SetConfirmed(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetHomeNotes: IJanuaField;
    procedure SetHomeNotes(const Value: IJanuaField);
    function GetVisitorsNotes: IJanuaField;
    procedure SetVisitorsNotes(const Value: IJanuaField);
    function GetMatchTime: IJanuaField;
    procedure SetMatchTime(const Value: IJanuaField);
    function GetRefereeId: IJanuaField;
    procedure SetRefereeId(const Value: IJanuaField);
    function GetRefereeSecondId: IJanuaField;
    procedure SetRefereeSecondId(const Value: IJanuaField);
    function GetRefereeThirdId: IJanuaField;
    procedure SetRefereeThirdId(const Value: IJanuaField);
    function GetSuspended: IJanuaField;
    procedure SetSuspended(const Value: IJanuaField);
    function GetPostponed: IJanuaField;
    procedure SetPostponed(const Value: IJanuaField);
    function GetForfeit: IJanuaField;
    procedure SetForfeit(const Value: IJanuaField);
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    function GetFiledId: IJanuaField;
    procedure SetFiledId(const Value: IJanuaField);
    function GetMatch: IMatch;
    procedure SetMatch(const Value: IMatch);
    function GetHomeTeamLogo: IJanuaField;
    function GetHomeTeamName: IJanuaField;
    function GetVisitorsTeamLogo: IJanuaField;
    function GetVisitorsTeamName: IJanuaField;
    procedure SetHomeTeamLogo(const Value: IJanuaField);
    procedure SetHomeTeamName(const Value: IJanuaField);
    procedure SetVisitorsTeamLogo(const Value: IJanuaField);
    procedure SetVisitorsTeamName(const Value: IJanuaField);
  public
    constructor Create; override;
    property MatchId: IJanuaField read GetMatchId write SetMatchId; // 0
    property LeagueId: IJanuaField read GetLeagueId write SetLeagueId; // 1
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId; // 2
    property MatchDayNumber: IJanuaField read GetMatchDayNumber write SetMatchDayNumber; // 3
    property MatchDate: IJanuaField read GetMatchDate write SetMatchDate; // 4
    property HomeTeamId: IJanuaField read GetHomeTeamId write SetHomeTeamId; // 5
    property VisitorsTeamId: IJanuaField read GetVisitorsTeamId write SetVisitorsTeamId; // 6
    property GoalHome: IJanuaField read GetGoalHome write SetGoalHome; // 7
    property GoalVisitor: IJanuaField read GetGoalVisitor write SetGoalVisitor; // 8
    property PointsHome: IJanuaField read GetPointsHome write SetPointsHome; // 9
    property PointsVisitors: IJanuaField read GetPointsVisitors write SetPointsVisitors; // 10
    property Notes: IJanuaField read GetNotes write SetNotes; // 11
    property Confirmed: IJanuaField read GetConfirmed write SetConfirmed; // 12
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId; // 13
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate; // 14
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate; // 15
    property HomeNotes: IJanuaField read GetHomeNotes write SetHomeNotes; // 16
    property VisitorsNotes: IJanuaField read GetVisitorsNotes write SetVisitorsNotes; // 17
    property MatchTime: IJanuaField read GetMatchTime write SetMatchTime; // 18
    property RefereeId: IJanuaField read GetRefereeId write SetRefereeId; // 19
    property RefereeSecondId: IJanuaField read GetRefereeSecondId write SetRefereeSecondId; // 20
    property RefereeThirdId: IJanuaField read GetRefereeThirdId write SetRefereeThirdId; // 21
    property Suspended: IJanuaField read GetSuspended write SetSuspended; // 22
    property Postponed: IJanuaField read GetPostponed write SetPostponed; // 23
    property Forfeit: IJanuaField read GetForfeit write SetForfeit; // 24
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId; // 25
    property FiledId: IJanuaField read GetFiledId write SetFiledId; // 26
    property Match: IMatch read GetMatch write SetMatch;
    property HomeTeamName: IJanuaField read GetHomeTeamName write SetHomeTeamName; // 27
    property VisitorsTeamName: IJanuaField read GetVisitorsTeamName write SetVisitorsTeamName; // 28
    property HomeTeamLogo: IJanuaField read GetHomeTeamLogo write SetHomeTeamLogo; // 29
    property VisitorsTeamLogo: IJanuaField read GetVisitorsTeamLogo write SetVisitorsTeamLogo; // 30
  end;

  TMatchFactory = class
    class function CreateRecord(aKey: string): IMatch; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IMatches; overload;
  end;

implementation

// ------------------------------------------ Impl TMatch -------------------------------

{ TMatch }

procedure TMatch.CalcFields(Sender: TObject);
begin
  FHomeTeamLogo.AsString := '<img src="/?page=image&file=' + FHomeTeamId.AsString + '.jpg  alt="' +
    FHomeTeamName.AsString + '"> ' + FHomeTeamName.AsString;

end;

constructor TMatch.Create;
begin
  inherited;
  self.FPrefix := 'fcld';
  FMatchId := TJanuaOrmFactory.CreateIntegerField('match_id', 'match_id');
  FMatchIdIndex := AddField(FMatchId);
  FLeagueId := TJanuaOrmFactory.CreateSmallintField('league_id', 'league_id');
  FLeagueIdIndex := AddField(FLeagueId);
  FSeasonId := TJanuaOrmFactory.CreateSmallintField('season_id', 'season_id');
  FSeasonIdIndex := AddField(FSeasonId);
  FMatchDayNumber := TJanuaOrmFactory.CreateSmallintField('match_day_number', 'match_day_number');
  FMatchDayNumberIndex := AddField(FMatchDayNumber);
  // Campo non Gestitomatch_date Type= ftDate
  FHomeTeamId := TJanuaOrmFactory.CreateSmallintField('home_team_id', 'home_team_id');
  FHomeTeamIdIndex := AddField(FHomeTeamId);
  FVisitorsTeamId := TJanuaOrmFactory.CreateSmallintField('visitors_team_id', 'visitors_team_id');
  FVisitorsTeamIdIndex := AddField(FVisitorsTeamId);
  FGoalHome := TJanuaOrmFactory.CreateSmallintField('goal_home', 'goal_home');
  FGoalHomeIndex := AddField(FGoalHome);
  FGoalVisitor := TJanuaOrmFactory.CreateSmallintField('goal_visitor', 'goal_visitor');
  FGoalVisitorIndex := AddField(FGoalVisitor);
  FPointsHome := TJanuaOrmFactory.CreateSmallintField('points_home', 'points_home');
  FPointsHomeIndex := AddField(FPointsHome);
  FPointsVisitors := TJanuaOrmFactory.CreateSmallintField('points_visitors', 'points_visitors');
  FPointsVisitorsIndex := AddField(FPointsVisitors);
  // Campo non Gestitonotes Type= ftWideMemo
  FConfirmed := TJanuaOrmFactory.CreateBoolField('confirmed', 'confirmed');
  FConfirmedIndex := AddField(FConfirmed);
  FDbSchemaId := TJanuaOrmFactory.CreateIntegerField('db_schema_id', 'db_schema_id');
  FDbSchemaIdIndex := AddField(FDbSchemaId);
  FInsertDate := TJanuaOrmFactory.CreateDateTimeField('insert_date', 'insert_date');
  FInsertDateIndex := AddField(FInsertDate);
  FUpdateDate := TJanuaOrmFactory.CreateDateTimeField('update_date', 'update_date');
  FUpdateDateIndex := AddField(FUpdateDate);
  FHomeNotes := TJanuaOrmFactory.CreateStringField('home_notes', 'home_notes');
  FHomeNotesIndex := AddField(FHomeNotes);
  FVisitorsNotes := TJanuaOrmFactory.CreateStringField('visitors_notes', 'visitors_notes');
  FVisitorsNotesIndex := AddField(FVisitorsNotes);
  FMatchTime := TJanuaOrmFactory.CreateDateTimeField('match_time', 'match_time');
  FMatchTimeIndex := AddField(FMatchTime);
  FRefereeId := TJanuaOrmFactory.CreateIntegerField('referee_id', 'referee_id');
  FRefereeIdIndex := AddField(FRefereeId);
  FRefereeSecondId := TJanuaOrmFactory.CreateIntegerField('referee_second_id', 'referee_second_id');
  FRefereeSecondIdIndex := AddField(FRefereeSecondId);
  FRefereeThirdId := TJanuaOrmFactory.CreateIntegerField('referee_third_id', 'referee_third_id');
  FRefereeThirdIdIndex := AddField(FRefereeThirdId);
  FSuspended := TJanuaOrmFactory.CreateBoolField('suspended', 'suspended');
  FSuspendedIndex := AddField(FSuspended);
  FPostponed := TJanuaOrmFactory.CreateBoolField('postponed', 'postponed');
  FPostponedIndex := AddField(FPostponed);
  FForfeit := TJanuaOrmFactory.CreateBoolField('forfeit', 'forfeit');
  FForfeitIndex := AddField(FForfeit);
  FRemoteId := TJanuaOrmFactory.CreateIntegerField('remote_id', 'remote_id');
  FRemoteIdIndex := AddField(FRemoteId);
  FFiledId := TJanuaOrmFactory.CreateIntegerField('filed_id', 'filed_id');
  FFiledIdIndex := AddField(FFiledId);
  // Campi Calcolati e Campi Read Only
  FHomeTeamName := TJanuaOrmFactory.CreateStringField('home_team', 'home_team');
  FHomeTeamNameIndex := AddField(FHomeTeamName);
  FVisitorsTeamName := TJanuaOrmFactory.CreateStringField('visitors_team', 'visitors_team');
  FVisitorsTeamNameIndex := AddField(FVisitorsTeamName);
  FHomeTeamLogo := TJanuaOrmFactory.CreateStringField('home_team_logo', 'home_team_logo');
  FHomeTeamLogo.Calculated := True;
  FHomeTeamLogoIndex := AddField(FHomeTeamLogo);
  FVisitorsTeamLogo := TJanuaOrmFactory.CreateStringField('visitors_team_logo', 'visitors_team_logo');
  FVisitorsTeamLogo.Calculated := True;
  FVisitorsTeamLogoIndex := AddField(FVisitorsTeamLogo);
end;

function TMatch.GetMatchId: IJanuaField;
begin
  Result := FMatchId;
end;

procedure TMatch.SetMatchId(const Value: IJanuaField);
begin
  FMatchId := Value;
end;

function TMatch.GetLeagueId: IJanuaField;
begin
  Result := FLeagueId;
end;

procedure TMatch.SetLeagueId(const Value: IJanuaField);
begin
  FLeagueId := Value;
end;

function TMatch.GetSeasonId: IJanuaField;
begin
  Result := FSeasonId;
end;

procedure TMatch.SetSeasonId(const Value: IJanuaField);
begin
  FSeasonId := Value;
end;

function TMatch.GetMatchDayNumber: IJanuaField;
begin
  Result := FMatchDayNumber;
end;

procedure TMatch.SetMatchDayNumber(const Value: IJanuaField);
begin
  FMatchDayNumber := Value;
end;

function TMatch.GetMatchDate: IJanuaField;
begin
  Result := FMatchDate;
end;

procedure TMatch.SetMatchDate(const Value: IJanuaField);
begin
  FMatchDate := Value;
end;

function TMatch.GetHomeTeamId: IJanuaField;
begin
  Result := FHomeTeamId;
end;

function TMatch.GetHomeTeamLogo: IJanuaField;
begin
  Result := self.FHomeTeamLogo
end;

function TMatch.GetHomeTeamName: IJanuaField;
begin
  Result := self.FHomeTeamName
end;

procedure TMatch.SetHomeTeamId(const Value: IJanuaField);
begin
  FHomeTeamId := Value;
end;

procedure TMatch.SetHomeTeamLogo(const Value: IJanuaField);
begin
  self.FHomeTeamLogo := Value
end;

procedure TMatch.SetHomeTeamName(const Value: IJanuaField);
begin
  self.FHomeTeamName := Value
end;

function TMatch.GetVisitorsTeamId: IJanuaField;
begin
  Result := FVisitorsTeamId;
end;

function TMatch.GetVisitorsTeamLogo: IJanuaField;
begin
  FVisitorsTeamLogo.AsString := '<img src="/?page=image&file=' + FVisitorsTeamId.AsString + '.jpg  alt="' +
    FVisitorsTeamName.AsString + '"> ' + FVisitorsTeamName.AsString;
  Result := self.FVisitorsTeamLogo
end;

function TMatch.GetVisitorsTeamName: IJanuaField;
begin
  Result := self.FVisitorsTeamName
end;

procedure TMatch.SetVisitorsTeamId(const Value: IJanuaField);
begin
  FVisitorsTeamId := Value;
end;

procedure TMatch.SetVisitorsTeamLogo(const Value: IJanuaField);
begin
  self.FVisitorsTeamLogo := Value
end;

procedure TMatch.SetVisitorsTeamName(const Value: IJanuaField);
begin
  self.FVisitorsTeamName := Value
end;

function TMatch.GetGoalHome: IJanuaField;
begin
  Result := FGoalHome;
end;

procedure TMatch.SetGoalHome(const Value: IJanuaField);
begin
  FGoalHome := Value;
end;

function TMatch.GetGoalVisitor: IJanuaField;
begin
  Result := FGoalVisitor;
end;

procedure TMatch.SetGoalVisitor(const Value: IJanuaField);
begin
  FGoalVisitor := Value;
end;

function TMatch.GetPointsHome: IJanuaField;
begin
  Result := FPointsHome;
end;

procedure TMatch.SetPointsHome(const Value: IJanuaField);
begin
  FPointsHome := Value;
end;

function TMatch.GetPointsVisitors: IJanuaField;
begin
  Result := FPointsVisitors;
end;

procedure TMatch.SetPointsVisitors(const Value: IJanuaField);
begin
  FPointsVisitors := Value;
end;

function TMatch.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TMatch.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TMatch.GetConfirmed: IJanuaField;
begin
  Result := FConfirmed;
end;

procedure TMatch.SetConfirmed(const Value: IJanuaField);
begin
  FConfirmed := Value;
end;

function TMatch.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TMatch.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TMatch.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TMatch.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TMatch.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TMatch.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TMatch.GetHomeNotes: IJanuaField;
begin
  Result := FHomeNotes;
end;

procedure TMatch.SetHomeNotes(const Value: IJanuaField);
begin
  FHomeNotes := Value;
end;

function TMatch.GetVisitorsNotes: IJanuaField;
begin
  Result := FVisitorsNotes;
end;

procedure TMatch.SetVisitorsNotes(const Value: IJanuaField);
begin
  FVisitorsNotes := Value;
end;

function TMatch.GetMatchTime: IJanuaField;
begin
  Result := FMatchTime;
end;

procedure TMatch.SetMatchTime(const Value: IJanuaField);
begin
  FMatchTime := Value;
end;

function TMatch.GetRefereeId: IJanuaField;
begin
  Result := FRefereeId;
end;

procedure TMatch.SetRefereeId(const Value: IJanuaField);
begin
  FRefereeId := Value;
end;

function TMatch.GetRefereeSecondId: IJanuaField;
begin
  Result := FRefereeSecondId;
end;

procedure TMatch.SetRefereeSecondId(const Value: IJanuaField);
begin
  FRefereeSecondId := Value;
end;

function TMatch.GetRefereeThirdId: IJanuaField;
begin
  Result := FRefereeThirdId;
end;

procedure TMatch.SetRefereeThirdId(const Value: IJanuaField);
begin
  FRefereeThirdId := Value;
end;

function TMatch.GetSuspended: IJanuaField;
begin
  Result := FSuspended;
end;

procedure TMatch.SetSuspended(const Value: IJanuaField);
begin
  FSuspended := Value;
end;

function TMatch.GetPostponed: IJanuaField;
begin
  Result := FPostponed;
end;

procedure TMatch.SetPostponed(const Value: IJanuaField);
begin
  FPostponed := Value;
end;

function TMatch.GetForfeit: IJanuaField;
begin
  Result := FForfeit;
end;

procedure TMatch.SetForfeit(const Value: IJanuaField);
begin
  FForfeit := Value;
end;

function TMatch.GetRemoteId: IJanuaField;
begin
  Result := FRemoteId;
end;

procedure TMatch.SetRemoteId(const Value: IJanuaField);
begin
  FRemoteId := Value;
end;

function TMatch.GetFiledId: IJanuaField;
begin
  Result := FFiledId;
end;

procedure TMatch.SetFiledId(const Value: IJanuaField);
begin
  FFiledId := Value;
end;

{ TMatches }
constructor TMatches.Create;
begin
  inherited;
  self.FRecord := TMatchFactory.CreateRecord('Match');
end;

function TMatches.GetMatchId: IJanuaField;
begin
  Result := self.Match.MatchId;
end;

procedure TMatches.SetMatchId(const Value: IJanuaField);
begin
  self.Match.MatchId := Value;
end;

function TMatches.GetLeagueId: IJanuaField;
begin
  Result := self.Match.LeagueId;
end;

procedure TMatches.SetLeagueId(const Value: IJanuaField);
begin
  self.Match.LeagueId := Value;
end;

function TMatches.GetSeasonId: IJanuaField;
begin
  Result := self.Match.SeasonId;
end;

procedure TMatches.SetSeasonId(const Value: IJanuaField);
begin
  self.Match.SeasonId := Value;
end;

function TMatches.GetMatchDayNumber: IJanuaField;
begin
  Result := self.Match.MatchDayNumber;
end;

procedure TMatches.SetMatchDayNumber(const Value: IJanuaField);
begin
  self.Match.MatchDayNumber := Value;
end;

function TMatches.GetMatchDate: IJanuaField;
begin
  Result := self.Match.MatchDate;
end;

procedure TMatches.SetMatchDate(const Value: IJanuaField);
begin
  self.Match.MatchDate := Value;
end;

function TMatches.GetHomeTeamId: IJanuaField;
begin
  Result := self.Match.HomeTeamId;
end;

function TMatches.GetHomeTeamLogo: IJanuaField;
begin
  Result := self.Match.HomeTeamLogo
end;

function TMatches.GetHomeTeamName: IJanuaField;
begin
  Result := self.Match.HomeTeamName
end;

procedure TMatches.SetHomeTeamId(const Value: IJanuaField);
begin
  self.Match.HomeTeamId := Value;
end;

procedure TMatches.SetHomeTeamLogo(const Value: IJanuaField);
begin
  self.Match.HomeTeamLogo := Value
end;

procedure TMatches.SetHomeTeamName(const Value: IJanuaField);
begin
  self.Match.HomeTeamName := Value
end;

function TMatches.GetVisitorsTeamId: IJanuaField;
begin
  Result := self.Match.VisitorsTeamId;
end;

function TMatches.GetVisitorsTeamLogo: IJanuaField;
begin
  Result := self.Match.VisitorsTeamLogo
end;

function TMatches.GetVisitorsTeamName: IJanuaField;
begin
  Result := self.Match.VisitorsTeamName
end;

procedure TMatches.SetVisitorsTeamId(const Value: IJanuaField);
begin
  self.Match.VisitorsTeamId := Value;
end;

procedure TMatches.SetVisitorsTeamLogo(const Value: IJanuaField);
begin
  self.Match.VisitorsTeamLogo := Value
end;

procedure TMatches.SetVisitorsTeamName(const Value: IJanuaField);
begin
  self.Match.VisitorsTeamName := Value
end;

function TMatches.GetGoalHome: IJanuaField;
begin
  Result := self.Match.GoalHome;
end;

procedure TMatches.SetGoalHome(const Value: IJanuaField);
begin
  self.Match.GoalHome := Value;
end;

function TMatches.GetGoalVisitor: IJanuaField;
begin
  Result := self.Match.GoalVisitor;
end;

procedure TMatches.SetGoalVisitor(const Value: IJanuaField);
begin
  self.Match.GoalVisitor := Value;
end;

function TMatches.GetPointsHome: IJanuaField;
begin
  Result := self.Match.PointsHome;
end;

procedure TMatches.SetPointsHome(const Value: IJanuaField);
begin
  self.Match.PointsHome := Value;
end;

function TMatches.GetPointsVisitors: IJanuaField;
begin
  Result := self.Match.PointsVisitors;
end;

procedure TMatches.SetPointsVisitors(const Value: IJanuaField);
begin
  self.Match.PointsVisitors := Value;
end;

function TMatches.GetNotes: IJanuaField;
begin
  Result := self.Match.Notes;
end;

procedure TMatches.SetNotes(const Value: IJanuaField);
begin
  self.Match.Notes := Value;
end;

function TMatches.GetConfirmed: IJanuaField;
begin
  Result := self.Match.Confirmed;
end;

procedure TMatches.SetConfirmed(const Value: IJanuaField);
begin
  self.Match.Confirmed := Value;
end;

function TMatches.GetDbSchemaId: IJanuaField;
begin
  Result := self.Match.DbSchemaId;
end;

procedure TMatches.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Match.DbSchemaId := Value;
end;

function TMatches.GetInsertDate: IJanuaField;
begin
  Result := self.Match.InsertDate;
end;

procedure TMatches.SetInsertDate(const Value: IJanuaField);
begin
  self.Match.InsertDate := Value;
end;

function TMatches.GetUpdateDate: IJanuaField;
begin
  Result := self.Match.UpdateDate;
end;

procedure TMatches.SetUpdateDate(const Value: IJanuaField);
begin
  self.Match.UpdateDate := Value;
end;

function TMatches.GetHomeNotes: IJanuaField;
begin
  Result := self.Match.HomeNotes;
end;

procedure TMatches.SetHomeNotes(const Value: IJanuaField);
begin
  self.Match.HomeNotes := Value;
end;

function TMatches.GetVisitorsNotes: IJanuaField;
begin
  Result := self.Match.VisitorsNotes;
end;

procedure TMatches.SetVisitorsNotes(const Value: IJanuaField);
begin
  self.Match.VisitorsNotes := Value;
end;

function TMatches.GetMatchTime: IJanuaField;
begin
  Result := self.Match.MatchTime;
end;

procedure TMatches.SetMatchTime(const Value: IJanuaField);
begin
  self.Match.MatchTime := Value;
end;

function TMatches.GetRefereeId: IJanuaField;
begin
  Result := self.Match.RefereeId;
end;

procedure TMatches.SetRefereeId(const Value: IJanuaField);
begin
  self.Match.RefereeId := Value;
end;

function TMatches.GetRefereeSecondId: IJanuaField;
begin
  Result := self.Match.RefereeSecondId;
end;

procedure TMatches.SetRefereeSecondId(const Value: IJanuaField);
begin
  self.Match.RefereeSecondId := Value;
end;

function TMatches.GetRefereeThirdId: IJanuaField;
begin
  Result := self.Match.RefereeThirdId;
end;

procedure TMatches.SetRefereeThirdId(const Value: IJanuaField);
begin
  self.Match.RefereeThirdId := Value;
end;

function TMatches.GetSuspended: IJanuaField;
begin
  Result := self.Match.Suspended;
end;

procedure TMatches.SetSuspended(const Value: IJanuaField);
begin
  self.Match.Suspended := Value;
end;

function TMatches.GetPostponed: IJanuaField;
begin
  Result := self.Match.Postponed;
end;

procedure TMatches.SetPostponed(const Value: IJanuaField);
begin
  self.Match.Postponed := Value;
end;

function TMatches.GetForfeit: IJanuaField;
begin
  Result := self.Match.Forfeit;
end;

procedure TMatches.SetForfeit(const Value: IJanuaField);
begin
  self.Match.Forfeit := Value;
end;

function TMatches.GetRemoteId: IJanuaField;
begin
  Result := self.Match.RemoteId;
end;

procedure TMatches.SetRemoteId(const Value: IJanuaField);
begin
  self.Match.RemoteId := Value;
end;

function TMatches.GetFiledId: IJanuaField;
begin
  Result := self.Match.FiledId;
end;

procedure TMatches.SetFiledId(const Value: IJanuaField);
begin
  self.Match.FiledId := Value;
end;

function TMatches.GetMatch: IMatch;
begin
  Result := self.FRecord as IMatch;
end;

procedure TMatches.SetMatch(const Value: IMatch);
begin
  self.FRecord := Value;
end;

{ TMatchFactory }

class function TMatchFactory.CreateRecord(aKey: string): IMatch;
begin
  Result := TMatch.Create;
end;

class function TMatchFactory.CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
  : IMatches;
begin
  Result := TMatches.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
