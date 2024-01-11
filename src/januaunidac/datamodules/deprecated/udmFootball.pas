unit udmFootball;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Janua.Core.System, Janua.Core.CustomControls,
{$IFDEF MSWINDOWS}
  MidasLib,
{$ENDIF}
  Datasnap.DBClient, MemDS, DBAccess, Uni, Data.DB, Janua.Core.Classes, Janua.Core.Football;

type
  TdmFootball = class(TDataModule)
    dspSeasons: TDataSetProvider;
    qryChampionships: TUniQuery;
    dsSeasons: TDataSource;
    qryChampionshipsseason_id: TSmallintField;
    qryChampionshipsleague_id: TSmallintField;
    qryChampionshipsleague_name: TWideStringField;
    dsChampionships: TDataSource;
    qrySeasons: TUniQuery;
    qryClubs: TUniQuery;
    qryTeams: TUniQuery;
    dsClubs: TDataSource;
    qryTeamsChampionships: TUniQuery;
    qryTeamsChampionshipsseason_id: TSmallintField;
    qryTeamsChampionshipsleague_id: TSmallintField;
    qryTeamsChampionshipsteam_id: TSmallintField;
    qryTeamsChampionshipsteam_name: TWideStringField;
    dsTeamChampionships: TDataSource;
    qryTeamsteam_id: TIntegerField;
    qryTeamsclub_id: TSmallintField;
    qryTeamsteam_name: TWideStringField;
    qryMatchDays: TUniQuery;
    qryMatches: TUniQuery;
    qryMatchDaysseason_id: TSmallintField;
    qryMatchDaysleague_id: TSmallintField;
    qryMatchDaysmatch_day_number: TSmallintField;
    dsMatchDays: TDataSource;
    dsMatches: TDataSource;
    lkpTeams: TClientDataSet;
    qryLkpTeams: TUniQuery;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    cdsLkpTeams: TDataSetProvider;
    lkpTeamsteam_id: TIntegerField;
    lkpTeamsclub_id: TSmallintField;
    lkpTeamsteam_name: TWideStringField;
    qryMatchesmatch_id: TIntegerField;
    qryMatchesleague_id: TSmallintField;
    qryMatchesseason_id: TSmallintField;
    qryMatchesmatch_day_number: TSmallintField;
    qryMatcheshome_team_id: TSmallintField;
    qryMatchesvisitors_team_id: TSmallintField;
    qryMatchesgoal_home: TSmallintField;
    qryMatchesgoal_visitor: TSmallintField;
    qryMatchespoints_home: TSmallintField;
    qryMatchespoints_visitors: TSmallintField;
    qryMatchesconfirmed: TBooleanField;
    qryMatcheslkpHomeTeam: TStringField;
    qryMatcheslkpVisitorTeam: TStringField;
    qryLkpEventTypes: TUniQuery;
    dspEventTypes: TDataSetProvider;
    cdsEventTypes: TClientDataSet;
    cdsEventTypesevent_id: TSmallintField;
    cdsEventTypesevent_des: TWideStringField;
    cdsEventTypesGoal: TBooleanField;
    cdsEventTypessubst: TBooleanField;
    cdsEventTypessave: TBooleanField;
    cdsEventTypesaccident: TBooleanField;
    qryMatchEvents: TUniQuery;
    qryMatchAllPlayers: TUniQuery;
    qryMatchEventsmatch_id: TIntegerField;
    qryMatchEventsteam_id: TSmallintField;
    qryMatchEventsplayer_id: TIntegerField;
    qryMatchEventsevent_id: TSmallintField;
    qryMatchEventsminute: TIntegerField;
    qryMatchEventsvalue: TSmallintField;
    qryMatchEventsmatch_events_row_id: TLargeintField;
    qryMatchTeams: TUniQuery;
    dsTeams: TDataSource;
    dsMatchTeams: TDataSource;
    dsMatchEvents: TDataSource;
    qryMatchTeamPlayers: TUniQuery;
    dsMatchTeamPlayers: TDataSource;
    qrySeasonsseason_id: TIntegerField;
    qrySeasonsseason_des: TWideStringField;
    qryTeamPlayers: TUniQuery;
    dsTeamPlayers: TDataSource;
    qryMatchEventslkpTeamPlayer: TStringField;
    PgConnection1: TJanuaUniConnection;
    qryMatchDaysmatch_day_date: TUniDateField;
    qryMatchDaysmatch_day_played: TUniDateField;
    qryMatchesmatch_date: TUniDateField;
    qryMatchesnotes: TWideMemoField;
    qryMatchTeamsteam_id: TIntegerField;
    qryMatchTeamsclub_id: TSmallintField;
    qryMatchTeamsteam_name: TWideStringField;
    qryTeamChampPlayers: TUniQuery;
    dsTeamChampPlayers: TDataSource;
    qryTeamChampPlayersfamily_name: TWideStringField;
    qryTeamChampPlayersfirst_name: TWideStringField;
    qryTeamChampPlayersteam_id: TSmallintField;
    qryTeamChampPlayersplayer_id: TIntegerField;
    qryTeamChampPlayersseason_id: TSmallintField;
    qryTeamChampPlayerssince: TUniDateField;
    qryTeamChampPlayersuntil: TUniDateField;
    qryChampRanking: TUniQuery;
    dsChampRanking: TDataSource;
    qryChampRankingranking_id: TIntegerField;
    qryChampRankingseason_id: TSmallintField;
    qryChampRankingleague_id: TSmallintField;
    qryChampRankingteam_id: TSmallintField;
    qryChampRankingplayed_matches: TSmallintField;
    qryChampRankingwon_matches: TSmallintField;
    qryChampRankinglost_matches: TSmallintField;
    qryChampRankingtied_matches: TSmallintField;
    qryChampRankinghome_matches: TSmallintField;
    qryChampRankinghome_won: TSmallintField;
    qryChampRankinghome_lost: TSmallintField;
    qryChampRankinghome_tied: TSmallintField;
    qryChampRankingoutside_played: TSmallintField;
    qryChampRankingoutside_won: TSmallintField;
    qryChampRankingoutside_lost: TSmallintField;
    qryChampRankingoutside_tied: TSmallintField;
    qryChampRankinggoal_done: TSmallintField;
    qryChampRankinggoal_lost: TSmallintField;
    qryChampRankinglkpTeamName: TStringField;
    qryLkpTeamsclub_name: TWideStringField;
    lkpTeamsclub_name: TWideStringField;
    qryChampRankingcalcPunti: TSmallintField;
    qryChampRankingcalcEnglish: TFloatField;
    qryChampRankingpos: TSmallintField;
    qryClubsclub_id: TIntegerField;
    qryClubsclub_name: TWideStringField;
    qryClubsFoundation_date: TUniDateField;
    qryClubssearch_name: TWideStringField;
    qryTeamPlayersfamily_name: TWideStringField;
    qryTeamPlayersfirst_name: TWideStringField;
    qryTeamPlayersteam_id: TSmallintField;
    qryTeamPlayersplayer_id: TIntegerField;
    qryTeamPlayersseason_id: TSmallintField;
    qryTeamPlayerssince: TUniDateField;
    qryTeamPlayersuntil: TUniDateField;
    qryTeamPlayerslkpPlayerName: TWideStringField;
    qrySeasonsseason_code: TWideStringField;
    qrySeasonsdb_schema_id: TIntegerField;
    qrySelectLeagues: TUniQuery;
    qrySelectLeaguesleague_id: TSmallintField;
    qrySelectLeaguesleague_name: TWideStringField;
    qrySelectLeaguesiso_country_code: TWideStringField;
    qrySelectLeaguesleague_position: TSmallintField;
    qryChampionshipsiso_country_code: TWideStringField;
    qryTeamsLastSeason: TUniQuery;
    qryTeamsLastSeasonseason_id: TSmallintField;
    qryTeamsLastSeasonleague_id: TSmallintField;
    qryTeamsLastSeasonteam_id: TSmallintField;
    qryTeamsLastSeasonteam_name: TWideStringField;
    qryCloneSeason: TUniQuery;
    qryTeamPlayersanagraph_id: TIntegerField;
    qryTeamPlayersbirth_date: TUniDateField;
    qryTeamPlayersbirth_year: TSmallintField;
    qryTeamPlayersbirth_place: TWideStringField;
    qryTeamPlayersnotes: TWideMemoField;
    qryTeamPlayersrole: TSmallintField;
    qryAllPlayers: TUniQuery;
    dsTeamLastSeason: TDataSource;
    qryTeamPlayersLast: TUniQuery;
    qryTeamsClubsLeagues: TUniQuery;
    qryAllPlayersanagraph_id: TIntegerField;
    qryAllPlayersbirth_date: TUniDateField;
    qryAllPlayersbirth_year: TSmallintField;
    qryAllPlayersfirst_name: TWideStringField;
    qryAllPlayersfamily_name: TWideStringField;
    qryAllPlayersbirth_place: TWideStringField;
    qryAllPlayersnotes: TWideMemoField;
    qryAllPlayersrole: TSmallintField;
    qryTeamPlayersLastfamily_name: TWideStringField;
    qryTeamPlayersLastfirst_name: TWideStringField;
    qryTeamPlayersLastteam_id: TSmallintField;
    qryTeamPlayersLastplayer_id: TIntegerField;
    qryTeamPlayersLastseason_id: TSmallintField;
    qryTeamPlayersLastsince: TUniDateField;
    qryTeamPlayersLastuntil: TUniDateField;
    qryTeamPlayersLastanagraph_id: TIntegerField;
    qryTeamPlayersLastbirth_date: TUniDateField;
    qryTeamPlayersLastbirth_year: TSmallintField;
    qryTeamPlayersLastbirth_place: TWideStringField;
    qryTeamPlayersLastnotes: TWideMemoField;
    qryTeamPlayersLastrole: TSmallintField;
    qryTeamsClubsLeaguesclub_id: TSmallintField;
    qryTeamsClubsLeaguesseason_id: TSmallintField;
    qryTeamsClubsLeaguesleague_id: TSmallintField;
    qryTeamsClubsLeaguesteam_id: TSmallintField;
    qryTeamsClubsLeaguesteam_name: TWideStringField;
    qryTeamsClubsLeaguesleague_name: TWideStringField;
    dsTeamsLeagues: TDataSource;
    dsTeamsPlayersLast: TDataSource;
    lkpRoles: TUniTable;
    lkpRolesrole_id: TSmallintField;
    lkpRolesrole_code: TWideStringField;
    lkpRolesrole_name: TWideStringField;
    qryTeamPlayerslkpRoleName: TStringField;
    qryAllPlayerslkpRoleName: TStringField;
    qryTeamPlayersLastStringField: TStringField;
    qryTeamRankings: TUniQuery;
    qryTeamRankingsseason_code: TWideStringField;
    qryTeamRankingsplayed_matches: TSmallintField;
    qryTeamRankingswon_matches: TSmallintField;
    qryTeamRankingslost_matches: TSmallintField;
    qryTeamRankingstied_matches: TSmallintField;
    qryTeamRankingshome_matches: TSmallintField;
    qryTeamRankingshome_won: TSmallintField;
    qryTeamRankingshome_lost: TSmallintField;
    qryTeamRankingshome_tied: TSmallintField;
    qryTeamRankingsoutside_played: TSmallintField;
    qryTeamRankingsoutside_won: TSmallintField;
    qryTeamRankingsoutside_lost: TSmallintField;
    qryTeamRankingsoutside_tied: TSmallintField;
    qryTeamRankingsgoal_done: TSmallintField;
    qryTeamRankingsgoal_lost: TSmallintField;
    qryTeamRankingscalcPunti: TSmallintField;
    qryTeamRankingscalcEnglish: TFloatField;
    qryTeamRankingspos: TSmallintField;
    dsTeamRankings: TDataSource;
    qryTeamRankingsteam_id: TIntegerField;
    qryTeamRankingsseason_id: TIntegerField;
    qryTeamRankingsleague_name: TWideStringField;
    qryPlayerHistory: TUniQuery;
    qryPlayerHistoryseason_code: TWideStringField;
    qryPlayerHistoryleague_name: TWideStringField;
    qryPlayerHistorypos: TSmallintField;
    qryPlayerHistoryteam_name: TWideStringField;
    dsPlayerHistory: TDataSource;
    qryAllTeamsNoSeason: TUniQuery;
    qryAllTeamsNoSeasonteam_id: TIntegerField;
    qryAllTeamsNoSeasonclub_id: TSmallintField;
    qryAllTeamsNoSeasonteam_name: TWideStringField;
    lkpTeamsChampionship: TUniQuery;
    lkpTeamsChampionshipseason_id: TSmallintField;
    lkpTeamsChampionshipleague_id: TSmallintField;
    lkpTeamsChampionshipteam_id: TSmallintField;
    lkpTeamsChampionshipteam_name: TWideStringField;
    qryClubPlayers: TUniQuery;
    StringField1: TStringField;
    dsClubPlayers: TDataSource;
    qryAllClubPlayers: TUniQuery;
    dsAllPlayers: TDataSource;
    qryAllClubPlayersteam_id: TSmallintField;
    qryAllClubPlayersplayer_id: TIntegerField;
    qryAllClubPlayersseason_id: TSmallintField;
    qryAllClubPlayerssince: TUniDateField;
    qryAllClubPlayersuntil: TUniDateField;
    qryAllClubPlayersanagraph_id: TIntegerField;
    qryAllClubPlayersbirth_date: TUniDateField;
    qryAllClubPlayersbirth_year: TSmallintField;
    qryAllClubPlayersfirst_name: TWideStringField;
    qryAllClubPlayersfamily_name: TWideStringField;
    qryAllClubPlayersbirth_place: TWideStringField;
    qryAllClubPlayersnotes: TWideMemoField;
    qryAllClubPlayersrole: TSmallintField;
    qryAllClubPlayersclub_id: TSmallintField;
    qryAllClubPlayersclub_name: TWideStringField;
    qryClubPlayersteam_id: TSmallintField;
    qryClubPlayersplayer_id: TIntegerField;
    qryClubPlayersseason_id: TSmallintField;
    qryClubPlayerssince: TUniDateField;
    qryClubPlayersuntil: TUniDateField;
    qryClubPlayersanagraph_id: TIntegerField;
    qryClubPlayersbirth_date: TUniDateField;
    qryClubPlayersbirth_year: TSmallintField;
    qryClubPlayersfirst_name: TWideStringField;
    qryClubPlayersfamily_name: TWideStringField;
    qryClubPlayersbirth_place: TWideStringField;
    qryClubPlayersnotes: TWideMemoField;
    qryClubPlayersrole: TSmallintField;
    qryClubPlayersclub_origin_id: TIntegerField;
    qryMatchTeamPlayersmatch_id: TIntegerField;
    qryMatchTeamPlayersplayer_id: TIntegerField;
    qryMatchTeamPlayersminutes: TSmallintField;
    qryMatchTeamPlayersvote: TFloatField;
    qryMatchTeamPlayersplayed: TBooleanField;
    qryMatchTeamPlayersteam_id: TSmallintField;
    qryMatchTeamPlayerspos: TSmallintField;
    qryMatchTeamAllPlayers: TUniQuery;
    StringField2: TStringField;
    qryMatchAllPlayersmatch_id: TIntegerField;
    qryMatchAllPlayersplayer_id: TIntegerField;
    qryMatchAllPlayersminutes: TSmallintField;
    qryMatchAllPlayersvote: TFloatField;
    qryMatchAllPlayersplayed: TBooleanField;
    qryMatchAllPlayersteam_id: TSmallintField;
    qryMatchAllPlayerspos: TSmallintField;
    qryMatchEventslkpEventType: TStringField;
    qryMatchTeamAllPlayersteam_id: TSmallintField;
    qryMatchTeamAllPlayersplayer_id: TIntegerField;
    qryMatchTeamAllPlayersseason_id: TSmallintField;
    qryMatchTeamAllPlayerssince: TUniDateField;
    qryMatchTeamAllPlayersuntil: TUniDateField;
    qryMatchTeamAllPlayersanagraph_id: TIntegerField;
    qryMatchTeamAllPlayersbirth_date: TUniDateField;
    qryMatchTeamAllPlayersbirth_year: TSmallintField;
    qryMatchTeamAllPlayersfirst_name: TWideStringField;
    qryMatchTeamAllPlayersfamily_name: TWideStringField;
    qryMatchTeamAllPlayersbirth_place: TWideStringField;
    qryMatchTeamAllPlayersnotes: TWideMemoField;
    qryMatchTeamAllPlayersrole: TSmallintField;
    qryMatchAllPlayersteam_name: TWideStringField;
    qryTeamPlayersLastclub_origin_id: TIntegerField;
    qryTeamPlayersLastfullname: TWideStringField;
    qryAllClubPlayersfullname: TWideStringField;
    qryClubPlayersfullname: TWideStringField;
    qryTeamChampPlayersanagraph_id: TIntegerField;
    qryTeamChampPlayersbirth_date: TUniDateField;
    qryTeamChampPlayersbirth_year: TSmallintField;
    qryTeamChampPlayersbirth_place: TWideStringField;
    qryTeamChampPlayersrole: TSmallintField;
    qryTeamChampPlayersnotes: TWideStringField;
    qryTeamPlayersclub_origin_id: TIntegerField;
    qryAllTeamPlayers: TUniQuery;
    qryAllTeamPlayersanagraph_id: TIntegerField;
    qryAllTeamPlayersbirth_date: TUniDateField;
    qryAllTeamPlayersbirth_year: TSmallintField;
    qryAllTeamPlayersfirst_name: TWideStringField;
    qryAllTeamPlayersfamily_name: TWideStringField;
    qryAllTeamPlayersbirth_place: TWideStringField;
    qryAllTeamPlayersnotes: TWideMemoField;
    qryAllTeamPlayersrole: TSmallintField;
    qryAllTeamPlayersfullname: TWideStringField;
    qryClubAllPlayers: TUniQuery;
    qryClubAllPlayersanagraph_id: TIntegerField;
    qryClubAllPlayersfamily_name: TWideStringField;
    qryClubAllPlayersfullname: TWideStringField;
    qryClubAllPlayersfirst_name: TWideStringField;
    qryClubAllPlayersrole: TSmallintField;
    qryClubAllPlayersnotes: TWideMemoField;
    qryTeamHistory: TUniQuery;
    qryTeamHistoryseason_des: TWideStringField;
    qryTeamHistoryseason_code: TWideStringField;
    qryTeamHistoryteam_id: TIntegerField;
    qryTeamHistoryseason_id: TSmallintField;
    qryTeamHistoryleague_id: TSmallintField;
    qryTeamHistoryleague_code: TWideStringField;
    qryTeamHistorypos: TWideStringField;
    qryTeamHistoryresult_id: TSmallintField;
    qryTeamHistoryrank_code: TWideStringField;
    dsTeamHistory: TDataSource;
    qryTeamChampPlayersfullname: TWideStringField;
    qryTeamChampPlayersclub_origin_id: TIntegerField;
    qrySelectHome: TUniQuery;
    qrySelectHomeseason_id: TSmallintField;
    qrySelectHomeleague_id: TSmallintField;
    qrySelectHometeam_id: TSmallintField;
    qrySelectHometeam_name: TWideStringField;
    qrySelectVisitors: TUniQuery;
    qrySelectVisitorsseason_id: TSmallintField;
    qrySelectVisitorsleague_id: TSmallintField;
    qrySelectVisitorsteam_id: TSmallintField;
    qrySelectVisitorsteam_name: TWideStringField;
    qryVerificaMatches: TUniQuery;
    qryVerificaMatchesmatch_id: TIntegerField;
    qryVerificaMatchesleague_id: TSmallintField;
    qryVerificaMatchesseason_id: TSmallintField;
    qryVerificaMatchesmatch_day_number: TSmallintField;
    qryVerificaMatchesmatch_date: TUniDateField;
    qryVerificaMatcheshome_team_id: TSmallintField;
    qryVerificaMatchesvisitors_team_id: TSmallintField;
    qryVerificaMatchesgoal_home: TSmallintField;
    qryVerificaMatchesgoal_visitor: TSmallintField;
    qryVerificaMatchespoints_home: TSmallintField;
    qryVerificaMatchespoints_visitors: TSmallintField;
    qryVerificaMatchesnotes: TWideMemoField;
    qryVerificaMatchesconfirmed: TBooleanField;
    dsMatchTeamAllPlayers: TDataSource;
    qryMatchTeamAllPlayersclub_origin_id: TIntegerField;
    qryAllPlayersfullname: TWideStringField;
    qryMatchAllPlayersfull_name: TWideStringField;
    qryMatchAllPlayerslkpplayername: TWideStringField;
    qryMatchTeamPlayersfull_name: TWideStringField;
    qryMatchTeamAllPlayersfullname: TWideStringField;
    qryTeamPlayersfullname: TWideStringField;
    qryMatchEventsnotes: TWideStringField;
    qryMatchEventsfavor_team_id: TIntegerField;
    qryMatchesdb_schema_id: TIntegerField;
    qryMatchesinsert_date: TUniTimeStampField;
    qryMatchesupdate_date: TUniTimeStampField;
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatchTeamPlayerssubst_id: TIntegerField;
    qryMatchTeamPlayersfamily_name: TWideStringField;
    qryMatchTeamPlayersfirst_name: TWideStringField;
    qryMatchEventsteamplayer: TWideStringField;
    qryMatchEventsfamily_name: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrySeasonsAfterScroll(DataSet: TDataSet);
    procedure qryMatchDaysAfterOpen(DataSet: TDataSet);
    procedure qryMatchTeamsAfterScroll(DataSet: TDataSet);
    procedure qryTeamsAfterScroll(DataSet: TDataSet);
    procedure qryTeamsChampionshipsAfterScroll(DataSet: TDataSet);
    procedure qryClubsCalcFields(DataSet: TDataSet);
    function ExportRank2Column: string;
    function ExportRank6Column: string;
    function ExportRank8Column: string;
    procedure qryTeamPlayersCalcFields(DataSet: TDataSet);
    procedure qrySeasonsNewRecord(DataSet: TDataSet);
    procedure qryTeamsLastSeasonBeforeOpen(DataSet: TDataSet);
    procedure qryClubsAfterOpen(DataSet: TDataSet);
    procedure PgConnection1BeforeConnect(Sender: TObject);
    procedure qryMatchEventsBeforePost(DataSet: TDataSet);
    procedure qryAllClubPlayersBeforeOpen(DataSet: TDataSet);
    procedure qryAllTeamPlayersBeforeOpen(DataSet: TDataSet);
    procedure qryTeamsAfterOpen(DataSet: TDataSet);
    procedure qryTeamChampPlayersNewRecord(DataSet: TDataSet);
    procedure qrySelectHomeBeforeOpen(DataSet: TDataSet);
    procedure qrySelectVisitorsBeforeOpen(DataSet: TDataSet);
    procedure qryMatchTeamPlayersNewRecord(DataSet: TDataSet);
    procedure qryMatchesAfterScroll(DataSet: TDataSet);
    procedure qryMatchTeamAllPlayersNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    FSeason_id, FTeam_id: integer;
    FJanuaServerSession: TJanuaServerSession;
    FLog: TStrings;
    FSelectedForm: TJanuaFooballForm;
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetLog(const Value: TStrings);
    procedure SetFSelectedForm(const Value: TJanuaFooballForm);

  public
    { Public declarations }
    procedure RefreshTeamClubPlayers(FSelectedForm: TJanuaFooballForm);
    procedure CopyTeamPlayers(FSelectedForm: TJanuaFooballForm);
    procedure CloseTeamClubPlayers;
    procedure CloneSeason(OldSeason, NewSeason: integer);
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession
      write SetJanuaServerSession;
    procedure MembershipPlayer;
    property Log: TStrings read FLog write SetLog;
    property SelectedForm: TJanuaFooballForm read FSelectedForm write SetFSelectedForm;
  end;

var
  dmFootball: TdmFootball;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TdmFootball.CloneSeason(OldSeason, NewSeason: integer);
begin
  // procedure che clona una stagione in un'altra stagione incluso squadre iscritte?

end;

procedure TdmFootball.CloseTeamClubPlayers;
begin
  qryAllTeamPlayers.Close;
  qryClubAllPlayers.Close;
end;

procedure TdmFootball.CopyTeamPlayers(FSelectedForm: TJanuaFooballForm);
begin
  case FSelectedForm of
    jffClubs:
      begin
        qryTeamChampPlayers.Append;
        qryTeamChampPlayersfamily_name.AsWideString := qryAllTeamPlayersfamily_name.AsWideString;
        qryTeamChampPlayersfirst_name.AsWideString := qryAllTeamPlayersfirst_name.AsWideString;
        qryTeamChampPlayersfullname.AsWideString := qryAllTeamPlayersfullname.AsWideString;
        qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
        qryTeamChampPlayersplayer_id.AsInteger := qryAllTeamPlayersanagraph_id.AsInteger;
        qryTeamChampPlayersseason_id.AsInteger := dmFootball.qrySeasonsseason_id.AsInteger;
        qryTeamChampPlayersrole.AsInteger := qryAllTeamPlayersrole.AsInteger;
        qryTeamChampPlayers.Post;
      end;
    jffChampionship:
      begin
        qryTeamChampPlayers.Append;
        qryTeamChampPlayersfamily_name.AsWideString := qryAllTeamPlayersfamily_name.AsWideString;
        qryTeamChampPlayersfirst_name.AsWideString := qryAllTeamPlayersfirst_name.AsWideString;
        qryTeamChampPlayersfullname.AsWideString := qryAllTeamPlayersfullname.AsWideString;
        qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
        qryTeamChampPlayersplayer_id.AsInteger := qryAllTeamPlayersanagraph_id.AsInteger;
        qryTeamChampPlayersseason_id.AsInteger := dmFootball.qrySeasonsseason_id.AsInteger;
        qryTeamChampPlayersrole.AsInteger := qryAllTeamPlayersrole.AsInteger;
        qryTeamChampPlayers.Post;
      end;
    jffMatch:
      begin
        qryTeamChampPlayers.Append;
        qryTeamChampPlayersfamily_name.AsWideString := qryAllTeamPlayersfamily_name.AsWideString;
        qryTeamChampPlayersfirst_name.AsWideString := qryAllTeamPlayersfirst_name.AsWideString;
        qryTeamChampPlayersfullname.AsWideString := qryAllTeamPlayersfullname.AsWideString;
        qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
        qryTeamChampPlayersplayer_id.AsInteger := qryAllTeamPlayersanagraph_id.AsInteger;
        qryTeamChampPlayersseason_id.AsInteger := dmFootball.qrySeasonsseason_id.AsInteger;
        qryTeamChampPlayersrole.AsInteger := qryAllTeamPlayersrole.AsInteger;
        qryTeamChampPlayers.Post;
      end;
  end;

end;

procedure TdmFootball.DataModuleCreate(Sender: TObject);
begin
  FLog := TStringList.Create;

  try
    try
      self.PgConnection1.Connect;
    except
      raise;
    end;
    try
      self.qrySeasons.Open();
    except
      raise;
    end;
    // ShowMessage('Errore Connessione al qrySeasons');
    try
      self.qryChampionships.Open();
    except
      raise;
    end;
    // ShowMessage('Errore Connessione al qryChampionships');
    self.qryClubs.Open();
    self.qryTeams.Open();
    self.qryTeamPlayers.Open;
    self.qryTeamsChampionships.Open();
    self.qryMatchDays.Open();
    self.qryMatches.Open();
    self.cdsEventTypes.Open;
    self.qryMatchTeams.Open();
    self.qryMatchAllPlayers.Open();
    self.qryMatchEvents.Open;
    self.qryChampRanking.Open;
    self.lkpTeams.Open;
    self.qryTeamRankings.Open;
    self.lkpTeamsChampionship.Open;
    /// self.qryAllPlayers.Open;
    /// {non aprire per non sovracaricare il sistema}
    self.FSeason_id := 0;
    self.FTeam_id := 0;
  except
    on e: exception do
    begin
      // ShowMessage('Errore Evento on Create DataModule Football');
      // ShowMessage(e.Message);
      raise;
    end;
  end;
end;

function TdmFootball.ExportRank2Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin

    self.qryChampRanking.Next;
  end;
end;

function TdmFootball.ExportRank6Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin

    self.qryChampRanking.Next;
  end;
end;

function TdmFootball.ExportRank8Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin

    self.qryChampRanking.Next;
  end;
end;

procedure TdmFootball.MembershipPlayer;
begin

end;

procedure TdmFootball.PgConnection1BeforeConnect(Sender: TObject);
begin
  if FJanuaServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FJanuaServerSession.CustomServerUrl;
    self.PgConnection1.Port := FJanuaServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FJanuaServerSession.CustomServerSchema;
  end;
end;

procedure TdmFootball.qryAllClubPlayersBeforeOpen(DataSet: TDataSet);
begin
  qryAllClubPlayers.ParamByName('season_id').AsInteger := qrySeasonsseason_id.AsInteger;
  qryAllClubPlayers.ParamByName('player_id').AsInteger := qryAllPlayersanagraph_id.AsInteger;
end;

procedure TdmFootball.qryAllTeamPlayersBeforeOpen(DataSet: TDataSet);
begin
  { SELECT
    t.*, p.*,
    p.family_name || ' ' || p.first_name || ' - '
    || public.nvl(notes, text('n.a.'))
    as fullname
    FROM
    football.ft_teams_players t
    , football.ft_players p
    where
    t.team_id = :team_id
    and
    t.season_id = (:season_id)
    and
    p.anagraph_id = t.player_id
    and
    (
    not exists (select 1 from  football.ft_teams_players z
    where  z.team_id = :team_id and z.season_id = :season_id and z.player_id = t.player_id)
    or :check_team = 'N'
    )
    order by family_name, first_name }

  case self.FSelectedForm of

    jffClubs:
      begin

      end;

    jffChampionship:
      begin

      end;

    jffMatch:
      begin

      end;
  end;

end;

procedure TdmFootball.qryClubsAfterOpen(DataSet: TDataSet);
begin
  self.qryTeams.Open;
  qryTeamsClubsLeagues.Open;
  self.qryTeamsLastSeason.Open;
  self.qryTeamPlayers.Open;
  self.qryTeamPlayersLast.Open;
end;

procedure TdmFootball.qryClubsCalcFields(DataSet: TDataSet);
begin
  qryClubssearch_name.Value := UpperCase(qryClubsclub_name.AsWideString);
end;

procedure TdmFootball.qryMatchDaysAfterOpen(DataSet: TDataSet);
begin
  self.qryMatches.Open;
end;

procedure TdmFootball.qryMatchesAfterScroll(DataSet: TDataSet);
begin
  self.qryMatchAllPlayers.ParamByName('match_id').AsInteger := self.qryMatchesmatch_id.AsInteger;
  self.qryMatchAllPlayers.Close;
  self.qryMatchAllPlayers.Open;
end;

procedure TdmFootball.qryMatchEventsBeforePost(DataSet: TDataSet);
begin
  if (self.qryMatchEventsplayer_id.AsInteger > 0) then
    if self.qryMatchAllPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
    begin
      self.qryMatchEventsteam_id.AsInteger := self.qryMatchAllPlayersteam_id.AsInteger;
    end;
end;

procedure TdmFootball.qryMatchTeamAllPlayersNewRecord(DataSet: TDataSet);
begin
  qryMatchTeamAllPlayersteam_id.AsInteger := qryMatchTeamsteam_id.AsInteger;
  qryMatchTeamAllPlayersseason_id.AsInteger := dmFootball.qrySeasonsseason_id.AsInteger;
end;

procedure TdmFootball.qryMatchTeamPlayersNewRecord(DataSet: TDataSet);
begin
  qryMatchTeamPlayersmatch_id.AsInteger := self.qryMatchesmatch_id.AsInteger;
  qryMatchTeamPlayersplayer_id.AsInteger := self.qryMatchTeamAllPlayersplayer_id.AsInteger;
  qryMatchTeamPlayersteam_id.AsInteger := self.qryMatchTeamsteam_id.AsInteger;
  qryMatchTeamPlayerspos.AsInteger := qryMatchTeamPlayers.RecordCount + 1;
  qryMatchTeamPlayersfull_name.AsWideString := qryMatchTeamAllPlayersfullname.AsWideString;
end;

procedure TdmFootball.qryMatchTeamsAfterScroll(DataSet: TDataSet);
begin
  try
    if (qryMatchTeamPlayers.ParamByName('match_id').AsInteger <> qryMatchesmatch_id.AsInteger) or
      (qryMatchTeamPlayers.ParamByName('team_id').AsInteger <> qryMatchTeamsteam_id.AsInteger) then
    begin
      self.qryMatchTeamPlayers.ParamByName('match_id').AsInteger :=
        self.qryMatchesmatch_id.AsInteger;
      self.qryMatchTeamPlayers.ParamByName('team_id').AsInteger :=
        self.qryMatchTeamsteam_id.AsInteger;
      if not self.qryMatchTeamPlayers.Active then
        self.qryMatchTeamPlayers.Open
      else
      begin
        self.qryMatchTeamPlayers.Close;
        self.qryMatchTeamPlayers.Open;
      end;
    end;

    if (qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger <> qryMatchesseason_id.AsInteger)
      or (qryMatchTeamAllPlayers.ParamByName('team_id').AsInteger <> qryMatchTeamsteam_id.AsInteger)
    then
    begin
      self.qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger :=
        self.qryMatchesseason_id.AsInteger;
      self.qryMatchTeamAllPlayers.ParamByName('team_id').AsInteger :=
        self.qryMatchTeamsteam_id.AsInteger;
      if not self.qryMatchTeamAllPlayers.Active then
        self.qryMatchTeamAllPlayers.Open
      else
      begin
        self.qryMatchTeamAllPlayers.Close;
        self.qryMatchTeamAllPlayers.Open;
      end;
    end;

  except
    on e: exception do
      // self.JanuaDialog.JShowError('Errore TdmFootball.qryMatchTeamsAfterScroll', e.Message, '');
  end;
end;

procedure TdmFootball.qrySeasonsAfterScroll(DataSet: TDataSet);
begin
  try
    // self.qryMatchAllPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger :=
      self.qrySeasonsseason_id.AsInteger;
    self.qryTeamsClubsLeagues.Close;
    self.qryTeamsClubsLeagues.ParamByName('season_id').AsInteger :=
      self.qrySeasonsseason_id.AsInteger;
    self.qryTeamsClubsLeagues.Open;

    self.qryClubPlayers.Close;
    self.qryClubPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.qryClubPlayers.Open;

    // qryAllClubPlayers
    self.qryAllClubPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
  except
    on e: exception do
      raise;
    // self.JanuaDialog.JShowError('Errore TdmFootball.qrySeasonsAfterScroll', e.Message, '');
  end;
end;

procedure TdmFootball.qrySeasonsNewRecord(DataSet: TDataSet);
begin
  qrySeasonsdb_schema_id.Value := 0;
end;

procedure TdmFootball.qrySelectHomeBeforeOpen(DataSet: TDataSet);
begin
  qrySelectHome.ParamByName('match_day_number').AsInteger :=
    self.qryMatchDaysmatch_day_number.AsInteger;
end;

procedure TdmFootball.qrySelectVisitorsBeforeOpen(DataSet: TDataSet);
begin
  qrySelectVisitors.ParamByName('match_day_number').AsInteger :=
    self.qryMatchDaysmatch_day_number.AsInteger;
end;

procedure TdmFootball.qryTeamChampPlayersNewRecord(DataSet: TDataSet);
begin
  qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
  qryTeamChampPlayersseason_id.AsInteger := qryTeamsChampionshipsseason_id.AsInteger;
end;

procedure TdmFootball.qryTeamPlayersCalcFields(DataSet: TDataSet);
begin
  qryTeamPlayerslkpPlayerName.Value := qryTeamPlayersfamily_name.AsWideString + ' ' +
    qryTeamPlayersfirst_name.AsWideString + ' ' + qryTeamPlayersnotes.AsString;
end;

procedure TdmFootball.qryTeamsAfterOpen(DataSet: TDataSet);
begin
  self.qryTeamHistory.Open;
end;

procedure TdmFootball.qryTeamsAfterScroll(DataSet: TDataSet);
begin
  try
    self.qryTeamPlayers.Close;
    self.qryTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.qryTeamPlayers.ParamByName('team_id').AsInteger := self.qryTeamsteam_id.AsInteger;
    self.qryTeamPlayers.Open;

    if (qryTeamPlayersLast.ParamByName('season_id').AsInteger <> qrySeasonsseason_id.AsInteger - 1)
      or (qryTeamPlayersLast.ParamByName('team_id').AsInteger <> qryTeamsteam_id.AsInteger) then
    begin
      self.qryTeamPlayersLast.ParamByName('season_id').AsInteger :=
        self.qrySeasonsseason_id.AsInteger - 1;
      self.qryTeamPlayersLast.ParamByName('team_id').AsInteger := self.qryTeamsteam_id.AsInteger;
      if not self.qryTeamPlayersLast.Active then
        self.qryTeamPlayersLast.Open
      else
      begin
        self.qryTeamPlayersLast.Close;
        self.qryTeamPlayersLast.Open;
      end;
    end;
  except
    on e: exception do
      // self.JanuaDialog.JShowError('Errore TdmFootball.qryTeamsAfterScroll', e.Message, '');
      raise;
  end;
end;

procedure TdmFootball.qryTeamsChampionshipsAfterScroll(DataSet: TDataSet);
begin
  try
    if (qryTeamChampPlayers.ParamByName('season_id').AsInteger <> qrySeasonsseason_id.AsInteger) or
      (qryTeamChampPlayers.ParamByName('team_id').AsInteger <>
      qryTeamsChampionshipsteam_id.AsInteger) then
    begin
      self.qryTeamChampPlayers.ParamByName('season_id').AsInteger :=
        self.qrySeasonsseason_id.AsInteger;
      self.qryTeamChampPlayers.ParamByName('team_id').AsInteger :=
        self.qryTeamsChampionshipsteam_id.AsInteger;
      if not self.qryTeamChampPlayers.Active then
        self.qryTeamChampPlayers.Open
      else
      begin
        self.qryTeamChampPlayers.Close;
        self.qryTeamChampPlayers.Open;
      end;
    end;
  except
    on e: exception do
      // self.JanuaDialog.JShowError('Errore TdmFootball.qryTeamsChampionshipsAfterScroll',
      // e.Message, '');
      raise;

  end;
end;

procedure TdmFootball.qryTeamsLastSeasonBeforeOpen(DataSet: TDataSet);
begin
  try
    qryTeamsLastSeason.ParamByName('season_id').AsInteger := qryChampionshipsseason_id.AsInteger;
    qryTeamsLastSeason.ParamByName('league_id').AsInteger := qryChampionshipsleague_id.AsInteger;
  except
    on e: exception do
      raise;
    // self.JanuaDialog.JShowError('Errore TdmFootball.qryTeamsLastSeasonBeforeOpen', e.Message, '');
  end;
end;

procedure TdmFootball.RefreshTeamClubPlayers(FSelectedForm: TJanuaFooballForm);
begin

  case FSelectedForm of
    jffClubs:
      begin
        qryAllTeamPlayers.Close;
        qryAllTeamPlayers.ParamByName('search_season_id').AsInteger :=
          self.qrySeasonsseason_id.AsInteger - 1;
        qryAllTeamPlayers.ParamByName('team_id').AsInteger :=
          self.qryTeamsChampionshipsteam_id.AsInteger;
        qryAllTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryAllTeamPlayers.ParamByName('check_team').AsString := 'Y';
        qryAllTeamPlayers.Open;
      end;
    jffChampionship:
      begin
        qryAllTeamPlayers.Close;
        qryAllTeamPlayers.ParamByName('search_season_id').AsInteger :=
          self.qrySeasonsseason_id.AsInteger - 1;
        qryAllTeamPlayers.ParamByName('team_id').AsInteger :=
          self.qryTeamsChampionshipsteam_id.AsInteger;
        qryAllTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryAllTeamPlayers.ParamByName('check_team').AsString := 'Y';
        qryAllTeamPlayers.Open;

        qryClubAllPlayers.Close;
        qryClubAllPlayers.ParamByName('team_id').AsInteger :=
          self.qryTeamsChampionshipsteam_id.AsInteger;
        qryClubAllPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryClubAllPlayers.ParamByName('check_team').AsString := 'Y';
        qryClubAllPlayers.Open;

      end;
    jffMatch:
      begin
      end;
  end;

end;

procedure TdmFootball.SetFSelectedForm(const Value: TJanuaFooballForm);
begin
  FSelectedForm := Value;
end;

procedure TdmFootball.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
  if FJanuaServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FJanuaServerSession.CustomServerUrl;
    self.PgConnection1.Port := FJanuaServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FJanuaServerSession.CustomServerSchema;
  end;
end;

procedure TdmFootball.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

end.
