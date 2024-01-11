unit Janua.Sports.PgModel;

interface

uses
  // System units ................................
  System.SysUtils, System.Variants, System.Classes,
  // DB Units
  Data.DB, Uni, MemDS, DBAccess, DAScript, UniScript, UniProvider, PostgreSQLUniProvider,
  // Janua Core Functions
  Janua.Core.Classes, Janua.Core.System, Janua.Core.Cloud,
  // Janua Postgres DataModules Functions
  // Janua.Football.Types, Janua.Football.Intf,
  udmPgAnagraph, Janua.Postgres.Cloud, udmJanuaPostgresModel, Janua.Core.Exceptions,
  Janua.Unidac.Connection;

type
  TdmJanuaPgSportsModel = class(TdmJanuaPostgresModel)
    dsTeamChampionships: TDataSource;
    qryTeamsChampionships: TUniQuery;
    qryTeamsChampionshipsseason_id: TSmallintField;
    qryTeamsChampionshipsleague_id: TSmallintField;
    qryTeamsChampionshipsteam_id: TSmallintField;
    qryTeamsChampionshipsteam_name: TWideStringField;
    qryTeamsChampionshipsposition: TSmallintField;
    qryTeamsChampionshipspenalty: TSmallintField;
    qryTeamsChampionshipsclub_name: TWideStringField;
    dsChampionships: TDataSource;
    qryChampionships: TUniQuery;
    qryChampionshipsseason_id: TSmallintField;
    qryChampionshipsleague_id: TSmallintField;
    qryChampionshipspromoted: TSmallintField;
    qryChampionshipsplayoff: TSmallintField;
    qryChampionshipsrelegation: TSmallintField;
    qryChampionshipschampions: TSmallintField;
    qryChampionshipsplayout: TSmallintField;
    qryChampionshipsteams: TSmallintField;
    qryChampionshipsdb_schema_id: TIntegerField;
    qryChampionshipsjguid: TGuidField;
    qryChampionshipsdeleted: TBooleanField;
    qryChampionshipsinsert_date: TDateTimeField;
    qryChampionshipsupdate_date: TDateTimeField;
    qryChampionshipsuser_insert: TWideStringField;
    qryChampionshipsuser_update: TWideStringField;
    qryChampionshipsid: TIntegerField;
    qryChampionshipsleague_name: TWideStringField;
    qryChampionshipsleague_position: TSmallintField;
    qryChampionshipsleague_code: TWideStringField;
    dsSeasons: TDataSource;
    qrySeasons: TUniQuery;
    qrySeasonsid: TIntegerField;
    qrySeasonsseason_des: TWideStringField;
    qrySeasonsseason_code: TWideStringField;
    qrySeasonsdb_schema_id: TIntegerField;
    qrySeasonsorder_number: TSmallintField;
    qrySeasonsremote_id: TSmallintField;
    qrySeasonsjguid: TGuidField;
    qrySeasonsdeleted: TBooleanField;
    qrySeasonsinsert_date: TDateTimeField;
    qrySeasonsupdate_date: TDateTimeField;
    qrySeasonsuser_insert: TWideStringField;
    qrySeasonsuser_update: TWideStringField;
    qrySeasonsseason_id: TIntegerField;
    qryLkpSeasons: TUniQuery;
    qryLkpSeasonsseason_id: TIntegerField;
    qryLkpSeasonsseason_des: TWideStringField;
    qryLkpSeasonsseason_code: TWideStringField;
    qryMatchDays: TUniQuery;
    qryMatchDaysseason_id: TSmallintField;
    qryMatchDaysleague_id: TSmallintField;
    qryMatchDaysmatch_day_number: TSmallintField;
    qryMatchDaysmatch_day_date: TDateField;
    qryMatchDaysmatch_day_played: TDateField;
    qryMatchDaysrest_team_id: TIntegerField;
    qryMatchDayslkpRestTeam: TStringField;
    qryMatchDaysdb_schema_id: TIntegerField;
    qryMatchDaysjguid: TGuidField;
    qryMatchDaysdeleted: TBooleanField;
    qryMatchDaysinsert_date: TDateTimeField;
    qryMatchDaysupdate_date: TDateTimeField;
    qryMatchDaysuser_insert: TWideStringField;
    qryMatchDaysuser_update: TWideStringField;
    qryMatches: TUniQuery;
    qryMatchesmatch_id: TIntegerField;
    qryMatchesleague_id: TSmallintField;
    qryMatchesseason_id: TSmallintField;
    qryMatchesmatch_day_number: TSmallintField;
    qryMatcheshome_team_id: TSmallintField;
    qryMatchesvisitors_team_id: TSmallintField;
    qryMatchespoints_home: TSmallintField;
    qryMatchespoints_visitors: TSmallintField;
    qryMatchesconfirmed: TBooleanField;
    qryMatcheslkpHomeTeam: TStringField;
    qryMatcheslkpVisitorTeam: TStringField;
    qryMatchesdb_schema_id: TIntegerField;
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatchesmatch_date: TDateField;
    qryMatchesinsert_date: TDateTimeField;
    qryMatchesupdate_date: TDateTimeField;
    qryMatchesnotes: TWideStringField;
    qryMatchesmatch_time: TDateTimeField;
    qryMatchessuspended: TBooleanField;
    qryMatchespostponed: TBooleanField;
    qryMatchesforfeit: TBooleanField;
    qryMatchesremote_id: TIntegerField;
    qryMatchesid: TIntegerField;
    qryMatchesscore_home: TSmallintField;
    qryMatchesscore_visitor: TSmallintField;
    qryMatchesfield_id: TIntegerField;
    qryMatchesarticle_url: TWideStringField;
    qryMatchesvideo_url: TWideStringField;
    qryMatchesjguid: TGuidField;
    qryMatchesdeleted: TBooleanField;
    qryMatchesuser_insert: TWideStringField;
    qryMatchesuser_update: TWideStringField;
    qryMatcheshome_team_name: TWideStringField;
    qryMatchesvisitors_team_name: TWideStringField;
    dsMatchDays: TDataSource;
    dsMatches: TDataSource;
    qryMatchEvents: TUniQuery;
    qryMatchEventsmatch_id: TIntegerField;
    qryMatchEventsteam_id: TSmallintField;
    qryMatchEventsplayer_id: TIntegerField;
    qryMatchEventsevent_id: TSmallintField;
    qryMatchEventsminute: TIntegerField;
    qryMatchEventsvalue: TSmallintField;
    qryMatchEventslkpTeamPlayer: TStringField;
    qryMatchEventslkpEventType: TStringField;
    qryMatchEventsnotes: TWideStringField;
    qryMatchEventsfavor_team_id: TIntegerField;
    qryMatchEventsteamplayer: TWideStringField;
    qryMatchEventsfamily_name: TWideStringField;
    qryMatchEventsid: TLargeintField;
    qryMatchEventsgame_set: TWideStringField;
    qryMatchEventsdb_schema_id: TIntegerField;
    qryMatchEventsjguid: TGuidField;
    qryMatchEventsdeleted: TBooleanField;
    qryMatchEventsinsert_date: TDateTimeField;
    qryMatchEventsupdate_date: TDateTimeField;
    qryMatchEventsuser_insert: TWideStringField;
    qryMatchEventsuser_update: TWideStringField;
    qryMatchEventsteam_name: TWideStringField;
    qryMatchAllPlayers: TUniQuery;
    qryMatchAllPlayersid: TLargeintField;
    qryMatchAllPlayersmatch_id: TIntegerField;
    qryMatchAllPlayersplayer_id: TIntegerField;
    qryMatchAllPlayersminutes: TSmallintField;
    qryMatchAllPlayersvote: TFloatField;
    qryMatchAllPlayersplayed: TBooleanField;
    qryMatchAllPlayersteam_id: TSmallintField;
    qryMatchAllPlayerspos: TSmallintField;
    qryMatchAllPlayersfull_name: TWideStringField;
    qryMatchAllPlayerslkpplayername: TWideStringField;
    qryMatchAllPlayerssubst_id: TIntegerField;
    qryMatchAllPlayersscore: TSmallintField;
    qryMatchAllPlayersself_score: TSmallintField;
    qryMatchAllPlayersconceded: TSmallintField;
    qryMatchAllPlayerssince: TSmallintField;
    qryMatchAllPlayersuntil: TSmallintField;
    qryMatchAllPlayerssent_off: TSmallintField;
    qryMatchAllPlayersinjuries: TSmallintField;
    qryMatchAllPlayersdb_schema_id: TIntegerField;
    qryMatchAllPlayersjguid: TGuidField;
    qryMatchAllPlayersnotes: TWideMemoField;
    dsMatchEvents: TDataSource;
    lkpTeamsChampionship: TUniQuery;
    lkpTeamsChampionshipseason_id: TSmallintField;
    lkpTeamsChampionshipleague_id: TSmallintField;
    lkpTeamsChampionshipteam_id: TSmallintField;
    lkpTeamsChampionshipteam_name: TWideStringField;
    qrySelectTeam: TUniQuery;
    qrySelectTeamseason_id: TSmallintField;
    qrySelectTeamleague_id: TSmallintField;
    qrySelectTeamteam_id: TSmallintField;
    qrySelectTeamteam_name: TWideStringField;
    qryHomePlayers: TUniQuery;
    qryVisitorsPlayers: TUniQuery;
    qryHomePlayersid: TLargeintField;
    qryHomePlayersmatch_id: TIntegerField;
    qryHomePlayersplayer_id: TIntegerField;
    qryHomePlayersminutes: TSmallintField;
    qryHomePlayersvote: TFloatField;
    qryHomePlayersplayed: TBooleanField;
    qryHomePlayersteam_id: TSmallintField;
    qryHomePlayerspos: TSmallintField;
    qryHomePlayerssubst_id: TIntegerField;
    qryHomePlayersscore: TSmallintField;
    qryHomePlayersself_score: TSmallintField;
    qryHomePlayersconceded: TSmallintField;
    qryHomePlayerssince: TSmallintField;
    qryHomePlayersuntil: TSmallintField;
    qryHomePlayerssent_off: TSmallintField;
    qryHomePlayersinjuries: TSmallintField;
    qryHomePlayersdb_schema_id: TIntegerField;
    qryHomePlayersjguid: TGuidField;
    qryHomePlayersdeleted: TBooleanField;
    qryHomePlayersinsert_date: TDateTimeField;
    qryHomePlayersupdate_date: TDateTimeField;
    qryHomePlayersuser_insert: TWideStringField;
    qryHomePlayersuser_update: TWideStringField;
    qryHomePlayersnotes: TWideMemoField;
    qryHomePlayersfull_name: TWideStringField;
    qryHomePlayerslkpplayername: TWideStringField;
    qryVisitorsPlayersid: TLargeintField;
    qryVisitorsPlayersmatch_id: TIntegerField;
    qryVisitorsPlayersplayer_id: TIntegerField;
    qryVisitorsPlayersminutes: TSmallintField;
    qryVisitorsPlayersvote: TFloatField;
    qryVisitorsPlayersplayed: TBooleanField;
    qryVisitorsPlayersteam_id: TSmallintField;
    qryVisitorsPlayerspos: TSmallintField;
    qryVisitorsPlayerssubst_id: TIntegerField;
    qryVisitorsPlayersscore: TSmallintField;
    qryVisitorsPlayersself_score: TSmallintField;
    qryVisitorsPlayersconceded: TSmallintField;
    qryVisitorsPlayerssince: TSmallintField;
    qryVisitorsPlayersuntil: TSmallintField;
    qryVisitorsPlayerssent_off: TSmallintField;
    qryVisitorsPlayersinjuries: TSmallintField;
    qryVisitorsPlayersdb_schema_id: TIntegerField;
    qryVisitorsPlayersjguid: TGuidField;
    qryVisitorsPlayersdeleted: TBooleanField;
    qryVisitorsPlayersinsert_date: TDateTimeField;
    qryVisitorsPlayersupdate_date: TDateTimeField;
    qryVisitorsPlayersuser_insert: TWideStringField;
    qryVisitorsPlayersuser_update: TWideStringField;
    qryVisitorsPlayersnotes: TWideMemoField;
    qryVisitorsPlayersfull_name: TWideStringField;
    qryVisitorsPlayerslkpplayername: TWideStringField;
    qryMatchDayRanking: TUniQuery;
    qryMatchDayRankingseason_id: TIntegerField;
    qryMatchDayRankingleague_id: TIntegerField;
    qryMatchDayRankingmatchday: TSmallintField;
    qryMatchDayRankingpos: TSmallintField;
    qryMatchDayRankingteam_id: TIntegerField;
    qryMatchDayRankingwon_matches: TSmallintField;
    qryMatchDayRankinglost_matches: TSmallintField;
    qryMatchDayRankingtied_matches: TSmallintField;
    qryMatchDayRankinghome_matches: TSmallintField;
    qryMatchDayRankinghome_won: TSmallintField;
    qryMatchDayRankinghome_lost: TSmallintField;
    qryMatchDayRankinghome_tied: TSmallintField;
    qryMatchDayRankingoutside_played: TSmallintField;
    qryMatchDayRankingoutside_won: TSmallintField;
    qryMatchDayRankingoutside_lost: TSmallintField;
    qryMatchDayRankingoutside_tied: TSmallintField;
    qryMatchDayRankingpoints: TSmallintField;
    qryMatchDayRankingpoints_home: TSmallintField;
    qryMatchDayRankingpoints_outside: TSmallintField;
    qryMatchDayRankingscored: TSmallintField;
    qryMatchDayRankingscored_home: TSmallintField;
    qryMatchDayRankingscored_outside: TSmallintField;
    qryMatchDayRankingconceded: TSmallintField;
    qryMatchDayRankingconceded_home: TSmallintField;
    qryMatchDayRankingconceded_outside: TSmallintField;
    qryMatchDayRankingaggregate_points: TSmallintField;
    qryMatchDayRankingaggregate_group: TSmallintField;
    qryMatchDayRankingrownum: TSmallintField;
    qryMatchDayRankingdb_schema_id: TIntegerField;
    qryMatchDayRankingteam_name: TWideStringField;
    qryMatchDayRankingclub_name: TWideStringField;
    qryMatchDayRankingdelta: TSmallintField;
    spGenerateDayRanking: TUniStoredProc;
    qryGetLastMatchDay: TUniQuery;
    qryGetLastMatchDayget_last_match_day: TSmallintField;
    lkpHomePlayers: TUniQuery;
    lkpVisitorsPlayers: TUniQuery;
    lkpHomePlayersplayer_id: TIntegerField;
    lkpHomePlayersjguid: TGuidField;
    lkpHomePlayersfirst_name: TWideStringField;
    lkpHomePlayersfamily_name: TWideStringField;
    lkpHomePlayersrole_name: TWideStringField;
    lkpVisitorsPlayersplayer_id: TIntegerField;
    lkpVisitorsPlayersjguid: TGuidField;
    lkpVisitorsPlayersfirst_name: TWideStringField;
    lkpVisitorsPlayersfamily_name: TWideStringField;
    lkpVisitorsPlayersrole_name: TWideStringField;
    qrySets: TUniQuery;
    qrySetsid: TLargeintField;
    qrySetsmatch_id: TIntegerField;
    qrySetsscore_home: TSmallintField;
    qrySetsscore_visitors: TSmallintField;
    qrySetsremote_id: TLargeintField;
    qrySetsdb_schema_id: TIntegerField;
    qrySetsjguid: TGuidField;
    qrySetsdeleted: TBooleanField;
    qrySetsinsert_date: TDateTimeField;
    qrySetsupdate_date: TDateTimeField;
    qrySetsuser_insert: TWideStringField;
    qrySetsuser_update: TWideStringField;
    lkpHomePlayersfull_name: TWideStringField;
    lkpVisitorsPlayersfull_name: TWideStringField;
    qrySetsnumber: TSmallintField;
    qryMatchDayRankingdelta_games: TSmallintField;
    qryMatchDayRankinggames_scored: TSmallintField;
    qryMatchDayRankinggames_conceded: TSmallintField;
    qryMatchDayRankingplayed: TSmallintField;
    qryMatchesgames_sets: TWideStringField;
    spAddMatchDay1: TUniStoredProc;
    procedure qrySeasonsNewRecord(DataSet: TDataSet);
    procedure qrySeasonsAfterOpen(DataSet: TDataSet);
    procedure qryHomePlayersNewRecord(DataSet: TDataSet);
    procedure qrySetsNewRecord(DataSet: TDataSet);
    procedure qryMatchesAfterOpen(DataSet: TDataSet);
    procedure dsMatchesDataChange(Sender: TObject; Field: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryMatchesNewRecord(DataSet: TDataSet);
    procedure qryVisitorsPlayersNewRecord(DataSet: TDataSet);
    procedure qryMatchesAfterScroll(DataSet: TDataSet);
    procedure qrySetsBeforePost(DataSet: TDataSet);
    procedure qryHomePlayersBeforePost(DataSet: TDataSet);
    procedure qryVisitorsPlayersBeforePost(DataSet: TDataSet);
  private
    FLastMatchDay: SmallInt;
    FHomeTeamID: Integer;
    FVisitorsTeamID: Integer;
    FEditing: Boolean;
    FMatchID: Int64;
    FLeagueID: Integer;
    FSeasonID: Integer;
    FChampionshipName: string;
    procedure SetLastMatchDay(const Value: SmallInt);
    procedure SetHomeTeamID(const Value: Integer);
    procedure SetVisitorsTeamID(const Value: Integer);
    procedure SetEditing(const Value: Boolean);
    procedure SetMatchID(const Value: Int64);
    procedure SetLeagueID(const Value: Integer);
    procedure SetSeasonID(const Value: Integer);
    procedure SetChampionshipName(const Value: string);
    function GetChampionshipName: string;
    { Private declarations }
  public
    { Public declarations }
    procedure OpenMatchDay(const aDay: SmallInt);
    procedure OpenSeason;
    procedure OpenLastMatchDay;
    procedure PostMatches;
    procedure AddMatchDay;
    procedure RefreshRanking;
    procedure GenerateDayRanking(const aDay: SmallInt);
    property MatchID: Int64 read FMatchID write SetMatchID;
    property LastMatchDay: SmallInt read FLastMatchDay write SetLastMatchDay;
    property HomeTeamID: Integer read FHomeTeamID write SetHomeTeamID;
    property VisitorsTeamID: Integer read FVisitorsTeamID write SetVisitorsTeamID;
    property Editing: Boolean read FEditing write SetEditing;
    property SeasonID: Integer read FSeasonID write SetSeasonID;
    property LeagueID: Integer read FLeagueID write SetLeagueID;
    property ChampionshipName: string read GetChampionshipName;
  end;

var
  dmJanuaPgSportsModel: TdmJanuaPgSportsModel;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TdmJanuaPgSportsModel.AddMatchDay;
begin
  { Adds a Match day using a Stored Procedure:
    SELECT sports.add_match_day(:p_season_id, :p_league_id) }
  spAddMatchDay1.ParamByName('p_season_id').AsInteger := qryChampionshipsseason_id.AsInteger;
  spAddMatchDay1.ParamByName('p_league_id').AsInteger := qryChampionshipsleague_id.AsInteger;
  spAddMatchDay1.ExecProc;
  qryMatchDays.Close;
  qryMatchDays.Open;
end;

procedure TdmJanuaPgSportsModel.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FEditing := False;
end;

procedure TdmJanuaPgSportsModel.dsMatchesDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (Field = qryMatcheshome_team_id) and (FHomeTeamID <> qryMatcheshome_team_id.AsInteger) then
  begin
    FHomeTeamID := qryMatcheshome_team_id.AsInteger;
    FVisitorsTeamID := qryMatchesvisitors_team_id.AsInteger;
    if FEditing then
    begin
      qryHomePlayers.Open;
      qryVisitorsPlayers.Open;
    end;
  end;
end;

procedure TdmJanuaPgSportsModel.GenerateDayRanking(const aDay: SmallInt);
begin
  OpenSeason;
  qryMatchDays.Locate('match_day_number', VarArrayOf([aDay]), []);
  {
    p_day smallint,
    p_league_id smallint DEFAULT 0,
    p_season_id smallint DEFAULT 0
  }
  spGenerateDayRanking.ParamByName('p_day').AsSmallInt := aDay;
  spGenerateDayRanking.ParamByName('p_season_id').AsSmallInt := qryChampionshipsseason_id.AsInteger;
  spGenerateDayRanking.ParamByName('p_league_id').AsSmallInt := qryChampionshipsleague_id.AsInteger;
  spGenerateDayRanking.ExecProc;
{$IFDEF DEBUG} var
  vtest := spGenerateDayRanking.ParamByName('Result').AsSmallInt {$ENDIF}
end;

function TdmJanuaPgSportsModel.GetChampionshipName: string;
begin
  Result := qryChampionshipsleague_name.AsString;
end;

procedure TdmJanuaPgSportsModel.OpenLastMatchDay;
begin
  OpenSeason;
  qryGetLastMatchDay.Params[0].AsSmallInt := qryChampionshipsseason_id.AsInteger;
  qryGetLastMatchDay.Params[1].AsSmallInt := qryChampionshipsleague_id.AsInteger;
  qryGetLastMatchDay.Open;
  FLastMatchDay := qryGetLastMatchDayget_last_match_day.AsInteger;
  qryGetLastMatchDay.Close;
  OpenMatchDay(FLastMatchDay);
end;

procedure TdmJanuaPgSportsModel.OpenMatchDay(const aDay: SmallInt);
begin
  OpenSeason;
  qryMatchDays.Locate('match_day_number', VarArrayOf([aDay]), []);

  qryMatches.Open;
  qryMatchDayRanking.Open;
end;

procedure TdmJanuaPgSportsModel.OpenSeason;
begin
  if not qrySeasons.Active then
  begin
    qrySeasons.Open;
    qryChampionships.Open;
    qryMatchDays.Open;
  end;
end;

procedure TdmJanuaPgSportsModel.PostMatches;
var
  lBoolRefresh: Boolean;
begin
  lBoolRefresh := False;
  if qryMatches.State = dsInsert then
  begin
    PostDataset(qryMatches);
    qryMatches.RefreshRecord;
    FMatchID := qryMatchesid.AsLargeInt;
    lBoolRefresh := True;
  end
  else if qryMatches.Modified then
    PostDataset(qryMatches);

  lBoolRefresh := lBoolRefresh or (FHomeTeamID <> qryMatcheshome_team_id.AsInteger) or
    (FVisitorsTeamID <> qryMatchesvisitors_team_id.AsInteger);

  if lBoolRefresh then
  begin
    lkpHomePlayers.Close;
    lkpVisitorsPlayers.Close;
    qryHomePlayers.Close;
    qryVisitorsPlayers.Close;
    qrySets.Close;

    lkpHomePlayers.Open;
    lkpVisitorsPlayers.Open;
    qryHomePlayers.Open;
    qryVisitorsPlayers.Open;
    qrySets.Open;
  end;
end;

procedure TdmJanuaPgSportsModel.qryHomePlayersBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryHomePlayersmatch_id.AsInteger := qryMatchesid.AsInteger;
  qryHomePlayersteam_id.AsInteger := qryMatcheshome_team_id.AsInteger;
end;

procedure TdmJanuaPgSportsModel.qryHomePlayersNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryHomePlayersjguid.AsGuid := TGUID.NewGuid;
end;

procedure TdmJanuaPgSportsModel.qryMatchesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryHomePlayers.Open;
  qryVisitorsPlayers.Open;
end;

procedure TdmJanuaPgSportsModel.qryMatchesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FMatchID := qryMatchesid.AsLargeInt;
end;

procedure TdmJanuaPgSportsModel.qryMatchesNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryMatchesleague_id.AsInteger := qryMatchDaysleague_id.AsInteger;
  qryMatchesseason_id.AsInteger := qryMatchDaysleague_id.AsInteger;
  qryMatchespoints_home.AsInteger := 0;
  qryMatchespoints_visitors.AsInteger := 0;
  qryMatchesmatch_day_number.Value := qryMatchDaysmatch_day_number.Value;
  qryMatchesjguid.AsGuid := TGUID.NewGuid;
end;

procedure TdmJanuaPgSportsModel.qrySeasonsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryChampionships.Open;
end;

procedure TdmJanuaPgSportsModel.qrySeasonsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySeasonsdb_schema_id.Value := 0;
  qrySeasonsjguid.AsGuid := TGUID.NewGuid;
end;

procedure TdmJanuaPgSportsModel.qrySetsBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrySetsmatch_id.AsInteger := qryMatchesid.AsInteger;
end;

procedure TdmJanuaPgSportsModel.qrySetsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qrySetsdb_schema_id.Value := 0;
  qrySetsjguid.AsGuid := TGUID.NewGuid;
  qrySetsdeleted.AsBoolean := False;
  qrySetsid.AsInteger := 0;
end;

procedure TdmJanuaPgSportsModel.qryVisitorsPlayersBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryVisitorsPlayersmatch_id.AsInteger := qryMatchesid.AsInteger;
  qryVisitorsPlayersteam_id.AsInteger := qryMatchesvisitors_team_id.AsInteger;
end;

procedure TdmJanuaPgSportsModel.qryVisitorsPlayersNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryVisitorsPlayersjguid.AsGuid := TGUID.NewGuid;
end;

procedure TdmJanuaPgSportsModel.RefreshRanking;
begin
  GenerateDayRanking(qryMatchDaysmatch_day_number.AsInteger);
  qryMatchDayRanking.Close;
  qryMatchDayRanking.Open;
end;

procedure TdmJanuaPgSportsModel.SetChampionshipName(const Value: string);
begin
  FChampionshipName := Value;
end;

procedure TdmJanuaPgSportsModel.SetEditing(const Value: Boolean);
{$IFDEF  DEBUG}
var
  i, j, k, l, m: Integer;
{$ENDIF}
begin
  if FEditing <> Value then
  begin
    FEditing := Value;
    FHomeTeamID := qryMatcheshome_team_id.AsInteger;
    FVisitorsTeamID := qryMatchesvisitors_team_id.AsInteger;
    if FEditing then
    begin
      qrySets.Open;
      lkpVisitorsPlayers.Open;
      lkpHomePlayers.Open;
      qryHomePlayers.Open;
      qryVisitorsPlayers.Open;
{$IFDEF  DEBUG}
      i := lkpVisitorsPlayers.RecordCount;
      j := lkpHomePlayers.RecordCount;
      k := qryHomePlayers.RecordCount;
      l := qryVisitorsPlayers.RecordCount;
      m := qrySets.RecordCount;
{$ENDIF}
    end
    else
    begin
      qrySets.Open;
      lkpVisitorsPlayers.Close;
      lkpHomePlayers.Close;
      qryHomePlayers.Close;
      qryVisitorsPlayers.Close;
    end;
  end;
end;

procedure TdmJanuaPgSportsModel.SetHomeTeamID(const Value: Integer);
begin
  FHomeTeamID := Value;
end;

procedure TdmJanuaPgSportsModel.SetLastMatchDay(const Value: SmallInt);
begin
  FLastMatchDay := Value;
end;

procedure TdmJanuaPgSportsModel.SetLeagueID(const Value: Integer);
begin
  { SELECT C.*
    FROM
    sports.championships_view C
    WHERE C.season_id = :season_id
    AND (c.league_id = :league_id or :league_id = 0) }
  FLeagueID := Value;
  qryChampionships.Close;
  qryChampionships.ParamByName('season_id').AsInteger := FSeasonID;
  qryChampionships.ParamByName('league_id').AsInteger := FLeagueID;
  qryChampionships.Open;
end;

procedure TdmJanuaPgSportsModel.SetMatchID(const Value: Int64);
begin
  FMatchID := Value;
end;

procedure TdmJanuaPgSportsModel.SetSeasonID(const Value: Integer);
begin
  { select v.id as season_id,  v.*
    from sports.seasons_view v
    where v.id = :season_id or :season_id = 0
    order by id desc }
  FSeasonID := Value;
  qrySeasons.Close;
  qrySeasons.ParamByName('season_id').AsInteger := FSeasonID;
  qrySeasons.Open;
end;

procedure TdmJanuaPgSportsModel.SetVisitorsTeamID(const Value: Integer);
begin
  FVisitorsTeamID := Value;
end;

end.
