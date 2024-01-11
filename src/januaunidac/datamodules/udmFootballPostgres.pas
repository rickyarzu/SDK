unit udmFootballPostgres;
interface
uses
  // System units ................................
  System.SysUtils, System.Variants, System.Classes,
  // DB Units
  Data.DB, Uni, MemDS, DBAccess,
  // Janua Core Functions
  Janua.Core.Classes, Janua.Core.System, Janua.Core.Cloud,
  // Janua Football Specific
  // Janua.Core.Football,
  // Datasnap ......................................................................
  Datasnap.DBClient, Datasnap.Provider,
  // Janua Postgres DataModules Functions
  Janua.Football.Types, Janua.Football.Intf,
  udmPgAnagraph, Janua.Postgres.Cloud, udmJanuaPostgresModel, Janua.Core.Exceptions,
  DAScript, UniScript, UniProvider, PostgreSQLUniProvider;
type
  TdmFootballPostgres = class(TdmJanuaPostgresModel)
    dspSeasons: TDataSetProvider;
    qryChampionships: TUniQuery;
    qryPlayerHistory: TUniQuery;
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
    qryClubssearch_name: TWideStringField;
    qryTeamPlayersfamily_name: TWideStringField;
    qryTeamPlayersfirst_name: TWideStringField;
    qryTeamPlayersteam_id: TSmallintField;
    qryTeamPlayersplayer_id: TIntegerField;
    qryTeamPlayersseason_id: TSmallintField;
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
    qryTeamPlayersbirth_year: TSmallintField;
    qryTeamPlayersbirth_place: TWideStringField;
    qryTeamPlayersnotes: TWideMemoField;
    qryTeamPlayersrole: TSmallintField;
    qryAllPlayers: TUniQuery;
    dsTeamLastSeason: TDataSource;
    qryTeamPlayersLast: TUniQuery;
    qryTeamsClubsLeagues: TUniQuery;
    qryAllPlayersanagraph_id: TIntegerField;
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
    qryTeamPlayersLastanagraph_id: TIntegerField;
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
    dsTeamsClubsLeagues: TDataSource;
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
    qryAllClubPlayersanagraph_id: TIntegerField;
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
    qryClubPlayersanagraph_id: TIntegerField;
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
    qryMatchTeamAllPlayersanagraph_id: TIntegerField;
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
    qryTeamChampPlayersbirth_year: TSmallintField;
    qryTeamChampPlayersbirth_place: TWideStringField;
    qryTeamChampPlayersrole: TSmallintField;
    qryTeamChampPlayersnotes: TWideStringField;
    qryTeamPlayersclub_origin_id: TIntegerField;
    qryAllTeamPlayers: TUniQuery;
    qryAllTeamPlayersanagraph_id: TIntegerField;
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
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatchTeamPlayerssubst_id: TIntegerField;
    qryMatchTeamPlayersfamily_name: TWideStringField;
    qryMatchTeamPlayersfirst_name: TWideStringField;
    qryMatchEventsteamplayer: TWideStringField;
    qryMatchEventsfamily_name: TWideStringField;
    qryTeamPlayerssince: TDateField;
    qryTeamPlayersuntil: TDateField;
    qryTeamPlayersbirth_date: TDateField;
    qryClubPlayerssince: TDateField;
    qryClubPlayersuntil: TDateField;
    qryClubPlayersbirth_date: TDateField;
    qryAllPlayersbirth_date: TDateField;
    qryClubsFoundation_date: TDateField;
    qryTeamPlayersLastsince: TDateField;
    qryTeamPlayersLastuntil: TDateField;
    qryTeamPlayersLastbirth_date: TDateField;
    qryTeamChampPlayersbirth_date: TDateField;
    qryTeamChampPlayerssince: TDateField;
    qryTeamChampPlayersuntil: TDateField;
    qryInsertCalendar: TUniSQL;
    qryMatchDaysmatch_day_date: TDateField;
    qryMatchDaysmatch_day_played: TDateField;
    qryMatchesmatch_date: TDateField;
    qryMatchesinsert_date: TDateTimeField;
    qryMatchesupdate_date: TDateTimeField;
    qryAllTeamPlayersbirth_date: TDateField;
    DataSource1: TDataSource;
    dsLkpRoles: TDataSource;
    qryAllClubPlayerssince: TDateField;
    qryAllClubPlayersuntil: TDateField;
    qryAllClubPlayersbirth_date: TDateField;
    qryMatchTeamAllPlayerssince: TDateField;
    qryMatchTeamAllPlayersuntil: TDateField;
    qryMatchTeamAllPlayersbirth_date: TDateField;
    qryVerificaMatchesmatch_date: TDateField;
    qryMatchesnotes: TWideStringField;
    qryChampRankingpoints: TSmallintField;
    qryTeamRankingsranking_id: TIntegerField;
    qryTeamRankingsleague_id: TSmallintField;
    qryTeamRankingspoints: TSmallintField;
    qryPlayerAlbum: TUniQuery;
    qryPlayerAlbumcareer_id: TIntegerField;
    qryPlayerAlbumseason_id: TSmallintField;
    qryPlayerAlbumseason_code: TWideStringField;
    qryPlayerAlbumteam_id: TIntegerField;
    qryPlayerAlbumleague_code: TWideStringField;
    qryPlayerAlbumleague_id: TIntegerField;
    qryPlayerAlbummatches: TWideStringField;
    qryPlayerAlbumgoals: TWideStringField;
    qryPlayerAlbumplayer_id: TIntegerField;
    qryPlayerAlbumnotes: TWideStringField;
    qryPlayerAlbumvotes: TFloatField;
    qryPlayerAlbumminutes: TIntegerField;
    dsPlayerAlbum: TDataSource;
    qryPlayerAlbumlkpTeam: TStringField;
    qryChampRankingcalcGoalDifference: TIntegerField;
    qryTeamsChampionshipsposition: TSmallintField;
    qryTeamsChampionshipspenalty: TSmallintField;
    qryGolRanking: TUniQuery;
    qryGolRankingteam_name: TWideStringField;
    qryGolRankingleague_id: TSmallintField;
    qryGolRankingseason_id: TSmallintField;
    qryGolRankingteam_id: TSmallintField;
    qryGolRankingplayer_id: TIntegerField;
    qryGolRankinggol: TLargeintField;
    qryGolRankingfamily_name: TWideStringField;
    dsGolRanking: TDataSource;
    qryMatchTeamPlayersgoal: TSmallintField;
    qryMatchTeamPlayersowngoal: TSmallintField;
    qryMatchTeamPlayerslostgoal: TSmallintField;
    qryMatchTeamPlayersrole_id: TSmallintField;
    qryClubSeasons: TUniQuery;
    qryMatchTeamPlayerssince: TSmallintField;
    qryMatchTeamPlayersuntil: TSmallintField;
    qryStatsPlayer: TUniQuery;
    qryStatsPlayerdb_schema_id: TIntegerField;
    qryStatsPlayerseason_des: TWideStringField;
    qryStatsPlayerseason_code: TWideStringField;
    qryStatsPlayerleague_name: TWideStringField;
    qryStatsPlayerteam_name: TWideStringField;
    qryStatsPlayerplayer_id: TIntegerField;
    qryStatsPlayerleague_id: TSmallintField;
    qryStatsPlayerseason_id: TSmallintField;
    qryStatsPlayerteam_id: TIntegerField;
    qryStatsPlayerplayed: TFloatField;
    qryStatsPlayerminutes: TFloatField;
    qryStatsPlayergoal: TFloatField;
    qryStatsPlayerowngoal: TFloatField;
    qryStatsPlayerlostgoal: TFloatField;
    qryLkpSeasons: TUniQuery;
    qryLkpSeasonsseason_id: TIntegerField;
    qryLkpSeasonsseason_des: TWideStringField;
    qryLkpSeasonsseason_code: TWideStringField;
    qryLkpSeasonsdb_schema_id: TIntegerField;
    qryPlayerAlbumlkpSeason: TStringField;
    qryMatchTeamPlayerssent_off: TSmallintField;
    qryMatchTeamPlayersinjuries: TSmallintField;
    qryMatchDaysrest_team_id: TIntegerField;
    qryMatchDayslkpRestTeam: TStringField;
    qrylkpClubs: TUniQuery;
    qrylkpClubsclub_id: TIntegerField;
    qrylkpClubsclub_name: TWideStringField;
    qrylkpClubsFoundation_date: TDateField;
    cdsLkpClubs: TClientDataSet;
    dspClubs: TDataSetProvider;
    cdsLkpClubsclub_id: TIntegerField;
    cdsLkpClubsclub_name: TWideStringField;
    cdsLkpClubsFoundation_date: TDateField;
    qryTeamPlayerslkpClubName: TStringField;
    qryTeamPlayersgoal: TSmallintField;
    qryTeamPlayersowngoal: TSmallintField;
    qryTeamPlayerslostgoal: TSmallintField;
    qryTeamPlayerssent_off: TSmallintField;
    qryTeamPlayersinjuries: TSmallintField;
    qryTeamPlayersminutes: TSmallintField;
    qryTeamPlayersmatches: TIntegerField;
    qryTeamPlayersgoals: TIntegerField;
    qryTeamPlayersvotes: TFloatField;
    qryTeamPlayerslkpOriginClubName: TStringField;
    qryTeamPlayerslkprolecode: TWideStringField;
    qryTeamChampPlayersgoal: TSmallintField;
    qryTeamChampPlayersowngoal: TSmallintField;
    qryTeamChampPlayerslostgoal: TSmallintField;
    qryTeamChampPlayerssent_off: TSmallintField;
    qryTeamChampPlayersinjuries: TSmallintField;
    qryTeamChampPlayersminutes: TSmallintField;
    qryTeamChampPlayersmatches: TIntegerField;
    qryTeamChampPlayersgoals: TIntegerField;
    qryTeamChampPlayersvotes: TFloatField;
    qryTeamChampPlayersrole_code: TWideStringField;
    qryTeamChampPlayerslkpClubName: TStringField;
    qryTeamChampPlayerslkpOriginClubName: TStringField;
    qryPlayerAlbumimage_id: TLargeintField;
    dsChampRankingView: TDataSource;
    qryChampRankingView: TUniQuery;
    qryChampRankingViewclub_name: TWideStringField;
    qryChampRankingViewleague_id: TSmallintField;
    qryChampRankingViewseason_id: TSmallintField;
    qryChampRankingViewplayed_home: TFloatField;
    qryChampRankingViewplayed_visitor: TFloatField;
    qryChampRankingViewgoal_win_home: TFloatField;
    qryChampRankingViewgoal_win_visitor: TFloatField;
    qryChampRankingViewgoal_lost_home: TFloatField;
    qryChampRankingViewgoal_lost_visitor: TFloatField;
    qryChampRankingViewpoints_home: TFloatField;
    qryChampRankingViewpoints_visitor: TFloatField;
    qryChampRankingViewpoints: TFloatField;
    qryChampRankingViewaverage_home: TFloatField;
    qryChampRankingViewaverage_visitor: TFloatField;
    qryChampRankingViewaverage: TFloatField;
    qryChampRankingViewgoal_win: TFloatField;
    qryChampRankingViewgoal_lost: TFloatField;
    qryChampRankingViewgoal_difference: TFloatField;
    qryChampRankingViewpos: TLargeintField;
    qryChampRankingViewwin_home: TFloatField;
    qryChampRankingViewlost_home: TFloatField;
    qryChampRankingViewpair_home: TFloatField;
    qryChampRankingViewwin_visitr: TFloatField;
    qryChampRankingViewlost_visitor: TFloatField;
    qryChampRankingViewpair_visitor: TFloatField;
    qryTeamsLastSeasonclub_name: TWideStringField;
    qryTeamsChampionshipsclub_name: TWideStringField;
    qryClubsanagraph_id: TIntegerField;
    qryFootballMarket: TUniQuery;
    qryFootballMarketseason_id: TSmallintField;
    qryFootballMarketteam_id: TIntegerField;
    qryFootballMarketplayer_id: TIntegerField;
    qryFootballMarketsince: TDateField;
    qryFootballMarketuntil: TDateField;
    qryFootballMarketclub_origin_id: TIntegerField;
    qryFootballMarketteam_name: TWideStringField;
    qryFootballMarketorigin_team: TWideStringField;
    qryFootballMarketfirst_name: TWideStringField;
    qryFootballMarketfamily_name: TWideStringField;
    qryFootballMarketmatches: TIntegerField;
    qryFootballMarketorigin_matches: TIntegerField;
    qryFootballMarketleague_code: TWideStringField;
    qryFootballMarketleague_name: TWideStringField;
    qryFootballMarketleague_code_1: TWideStringField;
    qryFootballMarketleague_name_1: TWideStringField;
    dsFootballMarket: TDataSource;
    qryChampionshipsleague_position: TSmallintField;
    qryChampionshipsleague_code: TWideStringField;
    qryChampionshipsdb_schema_id: TIntegerField;
    qryChampionshipspromoted: TSmallintField;
    qryChampionshipsplayoff: TSmallintField;
    qryChampionshipsrelegation: TSmallintField;
    qryChampionshipschampions: TSmallintField;
    qryChampionshipsplayout: TSmallintField;
    qryChampionshipsteams: TSmallintField;
    prcRanking: TUniStoredProc;
    qryMatchesmatch_time: TDateTimeField;
    qryMatchesreferee_id: TIntegerField;
    qryMatchesreferee_second_id: TIntegerField;
    qryMatchesreferee_third_id: TIntegerField;
    qryMatchessuspended: TBooleanField;
    qryMatchespostponed: TBooleanField;
    qryMatchesforfeit: TBooleanField;
    qryMatchesremote_id: TIntegerField;
    qryMatchesfiled_id: TIntegerField;
    qryLkpTeamstrainer_id: TIntegerField;
    qryLkpTeamsremote_id: TIntegerField;
    qryLkpTeamsdb_schema_id: TIntegerField;
    qryLkpTeamsimage: TBlobField;
    qryLkpTeamsclub_image: TBlobField;
    qryDynamicRanking: TUniQuery;
    qryDynamicRankingclub_name: TWideStringField;
    qryDynamicRankingleague_id: TSmallintField;
    qryDynamicRankingseason_id: TSmallintField;
    qryDynamicRankingteam_id: TIntegerField;
    qryDynamicRankinglast_match_day: TSmallintField;
    qryDynamicRankingplayed_home: TFloatField;
    qryDynamicRankingplayed_visitor: TFloatField;
    qryDynamicRankinggoal_win_home: TFloatField;
    qryDynamicRankinggoal_win_visitor: TFloatField;
    qryDynamicRankinggoal_lost_home: TFloatField;
    qryDynamicRankinggoal_lost_visitor: TFloatField;
    qryDynamicRankingpoints_home: TFloatField;
    qryDynamicRankingpoints_visitor: TFloatField;
    qryDynamicRankingpoints: TFloatField;
    qryDynamicRankingaverage_home: TFloatField;
    qryDynamicRankingaverage_visitor: TFloatField;
    qryDynamicRankingaverage: TFloatField;
    qryDynamicRankinggoal_win: TFloatField;
    qryDynamicRankinggoal_lost: TFloatField;
    qryDynamicRankinggoal_difference: TFloatField;
    qryDynamicRankinglost_home: TFloatField;
    qryDynamicRankingwin_home: TFloatField;
    qryDynamicRankingpair_home: TFloatField;
    qryDynamicRankinglost_visitor: TFloatField;
    qryDynamicRankingwin_visitor: TFloatField;
    qryDynamicRankingpair_visitor: TFloatField;
    qryDynamicRankinglost_matches: TFloatField;
    qryDynamicRankingwin_matches: TFloatField;
    qryDynamicRankingpair_matches: TFloatField;
    qryDynamicRankingplayed_matches: TFloatField;
    qryDynamicRankingpenalty: TSmallintField;
    qryDynamicRankingpos: TLargeintField;
    lkpMatchDaysFrom: TUniQuery;
    lkpMatchDaysTo: TUniQuery;
    lkpMatchDaysFrommatch_day_number: TSmallintField;
    lkpMatchDaysTomatch_day_number: TSmallintField;
    prcInheritPlayer: TUniStoredProc;
    qryLkpAllPlayers: TUniQuery;
    dsLkpAllPlayers: TDataSource;
    qryLkpAllPlayersanagraph_id: TIntegerField;
    qryLkpAllPlayersbirth_date: TDateField;
    qryLkpAllPlayersbirth_year: TSmallintField;
    qryLkpAllPlayersfirst_name: TWideStringField;
    qryLkpAllPlayersfamily_name: TWideStringField;
    qryLkpAllPlayersbirth_place: TWideStringField;
    qryLkpAllPlayersnotes: TWideMemoField;
    qryLkpAllPlayersrole: TSmallintField;
    qryLkpAllPlayersdb_schema_id: TIntegerField;
    qryLkpAllPlayersremote_id: TIntegerField;
    qryLkpAllPlayersheight: TSmallintField;
    qryLkpAllPlayersweight: TSmallintField;
    qryLkpAllPlayerspplr_jguid: TWideStringField;
    qryLkpAllPlayerspplr_deleted: TBooleanField;
    qryLkpAllPlayersfullname: TWideStringField;
    qryClubsstadium_id: TSmallintField;
    qryClubstown: TWideStringField;
    qryClubsvice_president: TWideStringField;
    qryClubsteam_manager: TWideStringField;
    qryClubsathletic_manager: TWideStringField;
    qryClubscolors: TWideStringField;
    qryClubswebsite: TWideStringField;
    qryClubsdb_schema_id: TIntegerField;
    qryClubsremote_id: TIntegerField;
    qryClubspresident: TWideStringField;
    qryClubsclub_image: TBlobField;
    qryClubsfclb_deleted: TBooleanField;
    qryClubsfclb_jguid: TWideStringField;
    PgScript1: TUniScript;
    prcPlayerTeamOrigin: TUniStoredProc;
    qryPlayerHistorycareer_id: TIntegerField;
    qryPlayerHistoryseason_id: TSmallintField;
    qryPlayerHistoryseason_code: TWideStringField;
    qryPlayerHistoryteam_id: TIntegerField;
    qryPlayerHistoryleague_code: TWideStringField;
    qryPlayerHistoryleague_id: TIntegerField;
    qryPlayerHistorymatches: TWideStringField;
    qryPlayerHistorygoals: TWideStringField;
    qryPlayerHistoryplayer_id: TIntegerField;
    qryPlayerHistorynotes: TWideStringField;
    qryPlayerHistoryvotes: TFloatField;
    qryPlayerHistoryminutes: TIntegerField;
    qryPlayerHistoryimage_id: TLargeintField;
    qryPlayerHistoryowngoal: TSmallintField;
    qryPlayerHistorylostgoal: TSmallintField;
    qryPlayerHistorysent_off: TSmallintField;
    qryPlayerHistoryinjuries: TSmallintField;
    qryPlayerHistorydb_schema_id: TIntegerField;
    qryPlayerHistoryfplc_deleted: TBooleanField;
    qryPlayerHistoryfplc_jguid: TWideStringField;
    qryPlayerHistoryseason_code_1: TWideStringField;
    qryPlayerHistoryleague_name: TWideStringField;
    qryPlayerHistoryteam_name: TWideStringField;
    qryPlayerHistorylkpSeason: TStringField;
    qryPlayerHistorylkpTeam: TStringField;
    qryLkpLeagues: TUniQuery;
    qryLkpLeaguesleague_id: TSmallintField;
    qryLkpLeaguesleague_name: TWideStringField;
    qryLkpLeaguesiso_country_code: TWideStringField;
    qryLkpLeaguesleague_position: TSmallintField;
    qryLkpLeaguesleague_code: TWideStringField;
    qryLkpLeaguesdb_schema_id: TIntegerField;
    qryLkpLeaguesremote_id: TSmallintField;
    qryLkpLeaguespromotedcss: TWideStringField;
    qryLkpLeaguesplayoffcss: TWideStringField;
    qryLkpLeagueschampionscss: TWideStringField;
    qryLkpLeaguesplayoutcss: TWideStringField;
    qryLkpLeaguesrelegationcss: TWideStringField;
    qryLkpLeaguesall_players: TBooleanField;
    qryLkpLeaguesflgs_deleted: TBooleanField;
    qryLkpLeaguesflgs_jguid: TWideStringField;
    qryPlayerHistorylkpLeague: TStringField;
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
    procedure qryMatchesBeforePost(DataSet: TDataSet);
    procedure qryChampRankingCalcFields(DataSet: TDataSet);
    procedure DSServerModuleDestroy(Sender: TObject);
    procedure qryClubsAfterScroll(DataSet: TDataSet);
    procedure qryClubsBeforeScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  strict protected
    FFootballSettings: IFootballSettings;
  strict protected
    procedure SetFootballSettings(const Value: IFootballSettings);
  public
    property FootballSettings: IFootballSettings read FFootballSettings write SetFootballSettings;
  private
    { Private declarations }
    FSelectedForm: TJanuaFooballForm;
    FJanuaServerCloud: TJanuaPostgresCloud;
    FJanuaDMAnagraph: TdmPgAnagraph;
    procedure SetFSelectedForm(const Value: TJanuaFooballForm);
    procedure SetJanuaServerCloud(const Value: TJanuaPostgresCloud);
    procedure SetJanuaDMAnagraph(const Value: TdmPgAnagraph);
    procedure SearchClubAnagraph;
    procedure SearchPlayerAnagraph;
    function GetSeasonID: SmallInt;
    procedure SetSeasonID(const Value: SmallInt);
  protected
    function SaveImagePlayerCareer(aFileName: string): int64;
  public
    { Public declarations }
    procedure UpdateRankings(const aFrom, aTo: integer);
    procedure SearchLkpPlayer(const aPlayerName: string);
    procedure Activate;
    procedure RefreshTeamClubPlayers(FSelectedForm: TJanuaFooballForm);
    procedure CopyTeamPlayers(FSelectedForm: TJanuaFooballForm);
    procedure CloseTeamClubPlayers;
    procedure CloneSeason(OldSeason, NewSeason: integer);
    procedure MembershipPlayer;
    property SelectedForm: TJanuaFooballForm read FSelectedForm write SetFSelectedForm;
    function CalculateMatch: boolean;
    property JanuaServerCloud: TJanuaPostgresCloud read FJanuaServerCloud write SetJanuaServerCloud;
    function getServerCloud: TJanuaPostgresCloud;
    procedure inheritPlayer(const pfrom, pto: integer);
    procedure SetupPlayerOriginTeamID(aSeason: SmallInt = 0);
  published
    property JanuaDMAnagraph: TdmPgAnagraph read FJanuaDMAnagraph write SetJanuaDMAnagraph;
    property SeasonID: SmallInt read GetSeasonID write SetSeasonID;
  end;
var
  dmFootballPostgres: TdmFootballPostgres;
implementation
uses System.Math, System.StrUtils, Janua.Uni.Framework;
{$R *.dfm}
function TdmFootballPostgres.CalculateMatch: boolean;
var
  GolHome, GolVisitors, i: integer;
  GoalKeepersHome, GoalKeepersVisitors: array of TJanuaFootballPlayer;
begin
  Result := True;
  GolHome := 0;
  GolVisitors := 0;
  qryMatchTeams.First;
  while not qryMatchTeams.Eof do
  begin
    if qryMatchTeamsteam_id.AsInteger = self.qryMatcheshome_team_id.AsInteger then
      self.WriteLog('Squadra in Casa: ' + self.qryMatchTeamsteam_name.AsWideString)
    else
      self.WriteLog('Squadra Ospite: ' + self.qryMatchTeamsteam_name.AsWideString);
    if qryMatchTeamPlayers.RecordCount = 0 then
    begin
      self.LastErrorMessage := 'Attenzione non inserita formazione del: ' +
        qryMatchTeamsteam_name.AsWideString;
      self.WriteLog('Attenzione non inserita formazione del: ' + qryMatchTeamsteam_name.AsWideString);
      // non eseguou una Exit altrimenti non riuscirei a calcoalare la serie 'A' .....................
      // Exit(False);
    end
    else
    begin
      qryMatchTeamPlayers.First;
      while not qryMatchTeamPlayers.Eof do
      begin
        self.WriteLog(self.qryMatchTeamPlayersfull_name.AsWideString);
        qryMatchTeamPlayers.Edit;
        if (qryMatchTeamPlayersminutes.AsInteger = 0) and (qryMatchTeamPlayersuntil.AsInteger = 0) then
        begin
          qryMatchTeamPlayersminutes.AsInteger := 90;
          qryMatchTeamPlayersuntil.AsInteger := 90;
        end;
        if self.qryMatchTeamPlayersminutes.AsInteger < 90 then
        begin
          if self.qryMatchTeamPlayerspos.AsInteger <= 11 then
            self.qryMatchTeamPlayersuntil.AsInteger := self.qryMatchTeamPlayersminutes.AsInteger
          else
            self.qryMatchTeamPlayerssince.AsInteger := 90 - self.qryMatchTeamPlayersminutes.AsInteger + 1
        end;
        qryMatchTeamPlayersgoal.AsInteger := 0;
        qryMatchTeamPlayersowngoal.AsInteger := 0;
        qryMatchTeamPlayerslostgoal.AsInteger := 0;
        qryMatchTeamPlayers.Post;
        // ****** controllo se sono portieri **********************************************************
        if qryMatchTeamPlayersrole_id.AsInteger = 1 then
        begin
          if qryMatchTeamsteam_id.AsInteger = self.qryMatcheshome_team_id.AsInteger then
          begin
            self.WriteLog('Portiere Casa');
            i := Length(GoalKeepersHome);
            SetLength(GoalKeepersHome, i + 1);
            GoalKeepersHome[i] := TJanuaFootballPlayer.Create(qryMatchesseason_id.AsInteger,
              qryMatchesleague_id.AsInteger, qryMatcheshome_team_id.AsInteger,
              qryMatchTeamPlayersplayer_id.AsInteger, qryMatchTeamPlayersrole_id.AsInteger,
              self.qryMatchTeamPlayerssince.AsInteger, self.qryMatchTeamPlayersuntil.AsInteger);
            GoalKeepersHome[i].UpdateFromDataset(qryMatchTeamPlayers);
            GoalKeepersHome[i].FullName := self.qryMatchTeamPlayersfull_name.AsWideString;
            self.WriteLog('Inserito portiere Casa: ' + GoalKeepersHome[i].FullName + ' dal: ' +
              GoalKeepersHome[i].SelectedCareer.playsince.ToString + ' al: ' + GoalKeepersHome[i]
              .SelectedCareer.playuntil.ToString);
          end
          else
          begin
            self.WriteLog('Portiere Trasferta');
            i := Length(GoalKeepersVisitors);
            SetLength(GoalKeepersVisitors, i + 1);
            GoalKeepersVisitors[i] := TJanuaFootballPlayer.Create(qryMatchesseason_id.AsInteger,
              qryMatchesleague_id.AsInteger, qryMatchesvisitors_team_id.AsInteger,
              qryMatchTeamPlayersplayer_id.AsInteger, qryMatchTeamPlayersrole_id.AsInteger,
              self.qryMatchTeamPlayerssince.AsInteger, self.qryMatchTeamPlayersuntil.AsInteger);
            GoalKeepersVisitors[i].UpdateFromDataset(qryMatchTeamPlayers, True);
            // GoalKeepersVisitors[i].FullName := self.qryMatchTeamPlayersfull_name.AsWideString;
            self.WriteLog('Inserito portiere Ospiti: ' + GoalKeepersVisitors[i].FullName + 'dal: ' +
              GoalKeepersVisitors[i].SelectedCareer.playsince.ToString + ' al: ' + GoalKeepersVisitors[i]
              .SelectedCareer.playuntil.ToString);
          end;
        end;
        // ****** controllo se sono portieri **********************************************************
        qryMatchTeamPlayers.Next;
        // ****** azzerati giocatori ....... **********************************************************
      end;
    end;
    self.WriteLog('********************************************************************');
    qryMatchTeams.Next;
  end;
  if self.qryMatchEvents.RecordCount > 0 then
  begin
    self.qryMatchEvents.First;
    while not self.qryMatchEvents.Eof do
    begin
      if qryMatchEventsevent_id.AsInteger in [1, 6] then
      begin
        if qryMatchEventsfavor_team_id.AsInteger = qryMatcheshome_team_id.AsInteger then
        begin
          Inc(GolHome);
          self.WriteLog('*** Gol Favore Casa al: ' + qryMatchEventsminute.AsWideString);
          for i := 0 to Length(GoalKeepersVisitors) - 1 do
          begin
            if (GoalKeepersVisitors[i].SelectedCareer.playsince <= self.qryMatchEventsminute.AsInteger) and
              ((GoalKeepersVisitors[i].SelectedCareer.playuntil >= self.qryMatchEventsminute.AsInteger) or
              (self.qryMatchEventsminute.AsInteger > 90) and
              (GoalKeepersVisitors[i].SelectedCareer.playuntil = 90)) then
            begin
              GoalKeepersVisitors[i].lostgoal := GoalKeepersVisitors[i].lostgoal + 1;
              self.WriteLog('*** Gol Subito da: ' + GoalKeepersVisitors[i].FullName);
            end
            else
              self.WriteLog('*** Gol Non subito da: ' + GoalKeepersVisitors[i].FullName);
          end;
          case qryMatchEventsevent_id.AsInteger of
            1:
              begin
                self.WriteLog('***AutoGol Favore Casa al: ' + qryMatchEventsminute.AsWideString);
                self.qryMatchTeams.Locate('team_id', self.qryMatcheshome_team_id.AsInteger, []);
                if qryMatchTeamPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
                begin
                  self.qryMatchTeamPlayers.Edit;
                  self.qryMatchTeamPlayersgoal.AsInteger := self.qryMatchTeamPlayersgoal.AsInteger + 1;
                  self.qryMatchTeamPlayers.Post;
                end;
              end;
            6:
              begin
                self.qryMatchTeams.Locate('team_id', self.qryMatchesvisitors_team_id.AsInteger, []);
                if qryMatchTeamPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
                begin
                  self.qryMatchTeamPlayers.Edit;
                  self.qryMatchTeamPlayersowngoal.AsInteger := self.qryMatchTeamPlayersowngoal.AsInteger + 1;
                  self.qryMatchTeamPlayers.Post;
                end;
              end;
          end;
        end
        else
        begin
          // gol a favore dei Fuori Casa ............................................................
          Inc(GolVisitors);
          {
            for i := 0 to Length(GoalKeepersHome) - 1 do
            begin
            if (GoalKeepersHome[i].playsince <= self.qryMatchEventsminute.AsInteger) and
            ((GoalKeepersHome[i].playuntil >= self.qryMatchEventsminute.AsInteger) or
            (self.qryMatchEventsminute.AsInteger > 90) and (GoalKeepersHome[i].playuntil = 90)) then
            begin
            GoalKeepersHome[i].lostgoal := GoalKeepersHome[i].lostgoal + 1;
            end;
            end;
          }
          self.WriteLog('*** Gol Favore Ospiti al: ' + qryMatchEventsminute.AsWideString);
          for i := 0 to Length(GoalKeepersHome) - 1 do
          begin
            if (GoalKeepersHome[i].SelectedCareer.playsince <= self.qryMatchEventsminute.AsInteger) and
              ((GoalKeepersHome[i].SelectedCareer.playuntil >= self.qryMatchEventsminute.AsInteger) or
              (self.qryMatchEventsminute.AsInteger > 90) and
              (GoalKeepersHome[i].SelectedCareer.playuntil = 90)) then
            begin
              GoalKeepersHome[i].lostgoal := GoalKeepersHome[i].lostgoal + 1;
              self.WriteLog('*** Gol Subito da: ' + GoalKeepersHome[i].GetFullName);
            end
            else
              self.WriteLog('*** Gol Non subito da: ' + GoalKeepersHome[i].GetFullName);
          end;
          case qryMatchEventsevent_id.AsInteger of
            1:
              begin
                self.qryMatchTeams.Locate('team_id', self.qryMatchesvisitors_team_id.AsInteger, []);
                if qryMatchTeamPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
                begin
                  self.qryMatchTeamPlayers.Edit;
                  self.qryMatchTeamPlayersgoal.AsInteger := self.qryMatchTeamPlayersgoal.AsInteger + 1;
                  self.qryMatchTeamPlayers.Post;
                end;
              end;
            6:
              begin
                self.qryMatchTeams.Locate('team_id', self.qryMatcheshome_team_id.AsInteger, []);
                if qryMatchTeamPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
                begin
                  self.qryMatchTeamPlayers.Edit;
                  self.qryMatchTeamPlayersowngoal.AsInteger := self.qryMatchTeamPlayersowngoal.AsInteger + 1;
                  self.qryMatchTeamPlayers.Post;
                end;
              end;
          end;
        end;
      end;
      self.qryMatchEvents.Next;
    end;
  end;
  if (GolVisitors = 0) and (self.qryMatchesgoal_visitor.AsInteger > 0) then
    GolVisitors := self.qryMatchesgoal_visitor.AsInteger;
  if GolVisitors > 0 then
  begin
    self.qryMatchTeams.Locate('team_id', self.qryMatcheshome_team_id.AsInteger, []);
    if (Length(GoalKeepersHome) > 0) then
    begin
      for i := Low(GoalKeepersHome) to High(GoalKeepersHome) do
      begin
        if qryMatchTeamPlayers.Locate('player_id', GoalKeepersHome[i].id, []) then
        begin
          self.qryMatchTeamPlayers.Edit;
          self.qryMatchTeamPlayerslostgoal.AsInteger := GoalKeepersHome[i].lostgoal;
          self.qryMatchTeamPlayers.Post;
        end;
      end;
    end;
  end;
  if (GolHome = 0) and (self.qryMatchesgoal_home.AsInteger > 0) then
    GolHome := self.qryMatchesgoal_home.AsInteger;
  if GolHome > 0 then
  begin
    self.qryMatchTeams.Locate('team_id', self.qryMatchesvisitors_team_id.AsInteger, []);
    for i := 0 to Length(GoalKeepersVisitors) - 1 do
    begin
      if qryMatchTeamPlayers.Locate('player_id', GoalKeepersVisitors[i].id, []) then
      begin
        self.qryMatchTeamPlayers.Edit;
        self.qryMatchTeamPlayerslostgoal.AsInteger := GoalKeepersVisitors[i].lostgoal;
        self.qryMatchTeamPlayers.Post;
      end;
    end;
  end;
  qryMatches.Edit;
  self.qryMatchesgoal_home.AsInteger := GolHome;
  self.qryMatchesgoal_visitor.AsInteger := GolVisitors;
  if GolHome = GolVisitors then
  begin
    self.qryMatchespoints_home.AsInteger := 1;
    self.qryMatchespoints_visitors.AsInteger := 1;
  end
  else if GolHome > GolVisitors then
  begin
    self.qryMatchespoints_home.AsInteger := 3;
    self.qryMatchespoints_visitors.AsInteger := 0;
  end
  else if GolHome < GolVisitors then
  begin
    self.qryMatchespoints_home.AsInteger := 0;
    self.qryMatchespoints_visitors.AsInteger := 3;
  end;
  qryMatches.Post;
end;
procedure TdmFootballPostgres.CloneSeason(OldSeason, NewSeason: integer);
begin
  // procedure che clona una stagione in un'altra stagione incluso squadre iscritte?
end;
procedure TdmFootballPostgres.CloseTeamClubPlayers;
begin
  qryAllTeamPlayers.Close;
  qryClubAllPlayers.Close;
end;
procedure TdmFootballPostgres.CopyTeamPlayers(FSelectedForm: TJanuaFooballForm);
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
        qryTeamChampPlayersseason_id.AsInteger := self.qrySeasonsseason_id.AsInteger;
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
        qryTeamChampPlayersseason_id.AsInteger := self.qrySeasonsseason_id.AsInteger;
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
        qryTeamChampPlayersseason_id.AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryTeamChampPlayersrole.AsInteger := qryAllTeamPlayersrole.AsInteger;
        qryTeamChampPlayers.Post;
      end;
  end;
end;
procedure TdmFootballPostgres.DataModuleCreate(Sender: TObject);
begin
  inherited;
  // inherited procedure
end;
procedure TdmFootballPostgres.DSServerModuleDestroy(Sender: TObject);
begin
  inherited;
  if assigned(FJanuaServerCloud) then
  begin
    FJanuaServerCloud.Free;
  end;
end;
function TdmFootballPostgres.ExportRank2Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin
    self.qryChampRanking.Next;
  end;
end;
function TdmFootballPostgres.ExportRank6Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin
    self.qryChampRanking.Next;
  end;
end;
function TdmFootballPostgres.ExportRank8Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin
    self.qryChampRanking.Next;
  end;
end;
function TdmFootballPostgres.GetSeasonID: SmallInt;
begin
  Result := IfThen(self.qrySeasons.Active, qrySeasonsseason_id.AsInteger, -1)
end;
function TdmFootballPostgres.getServerCloud: TJanuaPostgresCloud;
begin
  if not assigned(FJanuaServerCloud) then
  begin
    FJanuaServerCloud.Create(nil);
    FJanuaServerCloud.JanuaServerSession := self.ServerSession;
    if not FJanuaServerCloud.Active then
      FJanuaServerCloud.Activate;
  end;
  Result := FJanuaServerCloud;
end;
procedure TdmFootballPostgres.inheritPlayer(const pfrom, pto: integer);
begin
  // SELECT * FROM football.ft_player_inherit(:p_from_player, :p_to_player)
  prcInheritPlayer.ParamByName('p_from_player').AsInteger := pfrom;
  prcInheritPlayer.ParamByName('p_to_player').AsInteger := pto;
  prcInheritPlayer.ExecProc;
end;
procedure TdmFootballPostgres.Activate;
begin
  try
    try
      self.PgErgoConnection.Connect;
    except
      raise;
    end;
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qrySeasons, dsSeasons);
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryChampionships);
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeams);
    // self.ServerFunctions.OpenDataset(qrySeasons);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpMatchDaysFrom);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpMatchDaysTo);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qrySeasons, dsSeasons);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryChampionships, self.dsChampionships);
    // self.ServerFunctions.OpenDataset(qryChampionships);
    // ShowMessage('Errore Connessione al qrySeasons');
    // ShowMessage('Errore Connessione al qryChampionships');
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(cdsLkpClubs);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(cdsLkpClubs);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryClubs, self.dsClubs);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeams, self.dsTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeamPlayers, self.dsTeamPlayers);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeamsChampionships);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchDays);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatches);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(cdsEventTypes);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchAllPlayers);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchEvents);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryChampRanking);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeamRankings);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeamsChampionship);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryPlayerHistory);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryPlayerAlbum);
    /// self.qryAllPlayers.Open;
    /// {non aprire per non sovracaricare il sistema}
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(self.qryLkpAllPlayers, dsLkpAllPlayers);
  except
    on e: exception do
    begin
      // ShowMessage('Errore Evento on Create DataModule Football');
      // ShowMessage(e.Message);
      raise;
    end;
  end;
end;
procedure TdmFootballPostgres.SearchClubAnagraph;
begin
  if assigned(self.FJanuaDMAnagraph) then
  begin
    self.FJanuaDMAnagraph.SetAnagraphGroupByID(11);
    self.FJanuaDMAnagraph.SearchAnagraphByID(self.qryClubsanagraph_id.AsInteger);
  end;
end;
procedure TdmFootballPostgres.SearchLkpPlayer(const aPlayerName: string);
  function GetSearchString: string;
  begin
    Result := 'FullName  like ' + QuotedStr(stringreplace(aPlayerName.ToLower.Trim, ' ', '%',
      [rfReplaceAll, rfIgnoreCase]))
  end;
begin
  qryLkpAllPlayers.Filtered := aPlayerName <> '';
  qryLkpAllPlayers.Filter := System.StrUtils.IfThen(qryLkpAllPlayers.Filtered, '', GetSearchString);
end;
procedure TdmFootballPostgres.SearchPlayerAnagraph;
begin
  if assigned(self.FJanuaDMAnagraph) then
  begin
    self.FJanuaDMAnagraph.SetAnagraphGroupByID(11);
    self.FJanuaDMAnagraph.SearchAnagraphByID(self.qryClubsanagraph_id.AsInteger);
  end;
end;
procedure TdmFootballPostgres.MembershipPlayer;
begin
end;
procedure TdmFootballPostgres.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  // inherited from parent system ...................
end;
procedure TdmFootballPostgres.qryAllClubPlayersBeforeOpen(DataSet: TDataSet);
begin
  qryAllClubPlayers.ParamByName('season_id').AsInteger := qrySeasonsseason_id.AsInteger;
  qryAllClubPlayers.ParamByName('player_id').AsInteger := qryAllPlayersanagraph_id.AsInteger;
end;
procedure TdmFootballPostgres.qryAllTeamPlayersBeforeOpen(DataSet: TDataSet);
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
procedure TdmFootballPostgres.qryChampRankingCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryChampRankingcalcGoalDifference.AsInteger := qryChampRankinggoal_done.AsInteger -
    qryChampRankinggoal_lost.AsInteger;
  qryChampRankingcalcEnglish.AsInteger :=
    (-3 * qryChampRankinghome_matches.AsInteger + qryChampRankinghome_won.AsInteger * 3 +
    qryChampRankinghome_tied.AsInteger);
  qryChampRankingcalcEnglish.AsInteger := qryChampRankingcalcEnglish.AsInteger +
    (-qryChampRankingoutside_played.AsInteger + qryChampRankingoutside_won.AsInteger * 3 +
    qryChampRankingoutside_tied.AsInteger);
end;
procedure TdmFootballPostgres.qryClubsAfterOpen(DataSet: TDataSet);
begin
  self.ServerFunctions.OpenDataset(qryTeams);
  self.ServerFunctions.OpenDataset(qryTeamsClubsLeagues);
  self.ServerFunctions.OpenDataset(qryTeamsLastSeason);
  self.ServerFunctions.OpenDataset(qryTeamPlayers);
  self.ServerFunctions.OpenDataset(qryTeamPlayersLast);
end;
procedure TdmFootballPostgres.qryClubsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SearchClubAnagraph;
end;
procedure TdmFootballPostgres.qryClubsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if FJanuaDMAnagraph.qryAnagraphs.State in [dsInsert, dsEdit] then
    FJanuaDMAnagraph.qryAnagraphs.Post;
  if FJanuaDMAnagraph.qrySubAnagraphs.State in [dsInsert, dsEdit] then
    FJanuaDMAnagraph.qrySubAnagraphs.Post;
end;
procedure TdmFootballPostgres.qryClubsCalcFields(DataSet: TDataSet);
begin
  if qryClubssearch_name.Value <> UpperCase(qryClubsclub_name.AsWideString) then
    qryClubssearch_name.Value := UpperCase(qryClubsclub_name.AsWideString);
end;
procedure TdmFootballPostgres.qryMatchDaysAfterOpen(DataSet: TDataSet);
begin
  self.ServerFunctions.OpenDataset(qryMatches);
end;
procedure TdmFootballPostgres.qryMatchesAfterScroll(DataSet: TDataSet);
begin
  self.qryMatchAllPlayers.ParamByName('match_id').AsInteger := self.qryMatchesmatch_id.AsInteger;
  self.qryMatchAllPlayers.Close;
  self.ServerFunctions.OpenDataset(qryMatchAllPlayers);
end;
procedure TdmFootballPostgres.qryMatchesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryMatchesforfeit.IsNull then
    qryMatchesforfeit.Value := False;
  if qryMatchesconfirmed.IsNull then
    qryMatchesconfirmed.Value := False;
  if qryMatchessuspended.IsNull then
    qryMatchessuspended.Value := False;
  // qryMatchespostponed
  if qryMatchespostponed.IsNull then
    qryMatchespostponed.Value := False;
  if not qryMatchesgoal_visitor.IsNull and not qryMatchesgoal_home.IsNull then
  begin
    if qryMatchesgoal_visitor.AsInteger > qryMatchesgoal_home.AsInteger then
    begin
      qryMatchespoints_home.AsInteger := 0;
      qryMatchespoints_visitors.AsInteger := 3;
    end
    else if qryMatchesgoal_visitor.AsInteger < qryMatchesgoal_home.AsInteger then
    begin
      qryMatchespoints_home.AsInteger := 3;
      qryMatchespoints_visitors.AsInteger := 0;
    end
    else if qryMatchesgoal_visitor.AsInteger = qryMatchesgoal_home.AsInteger then
    begin
      qryMatchespoints_home.AsInteger := 1;
      qryMatchespoints_visitors.AsInteger := 1;
    end;
  end
  else
  begin
    qryMatchespoints_home.Clear;
    qryMatchespoints_visitors.Clear;
  end;
end;
procedure TdmFootballPostgres.qryMatchEventsBeforePost(DataSet: TDataSet);
begin
  if (self.qryMatchEventsplayer_id.AsInteger > 0) then
    if self.qryMatchAllPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
    begin
      self.qryMatchEventsteam_id.AsInteger := self.qryMatchAllPlayersteam_id.AsInteger;
    end;
end;
procedure TdmFootballPostgres.qryMatchTeamAllPlayersNewRecord(DataSet: TDataSet);
begin
  qryMatchTeamAllPlayersteam_id.AsInteger := qryMatchTeamsteam_id.AsInteger;
  qryMatchTeamAllPlayersseason_id.AsInteger := self.qrySeasonsseason_id.AsInteger;
end;
procedure TdmFootballPostgres.qryMatchTeamPlayersNewRecord(DataSet: TDataSet);
begin
  qryMatchTeamPlayersmatch_id.AsInteger := self.qryMatchesmatch_id.AsInteger;
  qryMatchTeamPlayersplayer_id.AsInteger := self.qryMatchTeamAllPlayersplayer_id.AsInteger;
  qryMatchTeamPlayersteam_id.AsInteger := self.qryMatchTeamsteam_id.AsInteger;
  qryMatchTeamPlayerspos.AsInteger := qryMatchTeamPlayers.RecordCount + 1;
  qryMatchTeamPlayerssince.AsInteger := 1;
  qryMatchTeamPlayersuntil.AsInteger := 90;
  qryMatchTeamPlayersminutes.AsInteger := 90;
  qryMatchTeamPlayersgoal.AsInteger := 0;
  qryMatchTeamPlayersowngoal.AsInteger := 0;
  qryMatchTeamPlayerslostgoal.AsInteger := 0;
  qryMatchTeamPlayersfull_name.AsWideString := qryMatchTeamAllPlayersfullname.AsWideString;
end;
procedure TdmFootballPostgres.qryMatchTeamsAfterScroll(DataSet: TDataSet);
begin
  try
    if (qryMatchTeamPlayers.ParamByName('match_id').AsInteger <> qryMatchesmatch_id.AsInteger) or
      (qryMatchTeamPlayers.ParamByName('team_id').AsInteger <> qryMatchTeamsteam_id.AsInteger) then
    begin
      self.qryMatchTeamPlayers.ParamByName('match_id').AsInteger := self.qryMatchesmatch_id.AsInteger;
      self.qryMatchTeamPlayers.ParamByName('team_id').AsInteger := self.qryMatchTeamsteam_id.AsInteger;
      if not self.qryMatchTeamPlayers.Active then
        self.ServerFunctions.OpenDataset(qryMatchTeamPlayers)
      else
      begin
        self.qryMatchTeamPlayers.Close;
        self.ServerFunctions.OpenDataset(qryMatchTeamPlayers);
      end;
    end;
    if (qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger <> qryMatchesseason_id.AsInteger) or
      (qryMatchTeamAllPlayers.ParamByName('team_id').AsInteger <> qryMatchTeamsteam_id.AsInteger) then
    begin
      self.qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger := self.qryMatchesseason_id.AsInteger;
      self.qryMatchTeamAllPlayers.ParamByName('team_id').AsInteger := self.qryMatchTeamsteam_id.AsInteger;
      if not self.qryMatchTeamAllPlayers.Active then
        self.ServerFunctions.OpenDataset(qryMatchTeamAllPlayers)
      else
      begin
        self.qryMatchTeamAllPlayers.Close;
        self.ServerFunctions.OpenDataset(qryMatchTeamAllPlayers);
      end;
    end;
  except
    on e: exception do
      // self.JanuaDialog.JShowError('Errore TdmFootball.qryMatchTeamsAfterScroll', e.Message, '');
  end;
end;
procedure TdmFootballPostgres.qrySeasonsAfterScroll(DataSet: TDataSet);
begin
  try
    // self.qryMatchAllPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.qryTeamsClubsLeagues.Close;
    self.qryTeamsClubsLeagues.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.ServerFunctions.OpenDataset(qryTeamsClubsLeagues);
    self.qryClubPlayers.Close;
    self.qryClubPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.ServerFunctions.OpenDataset(qryClubPlayers);
    // qryAllClubPlayers
    self.qryAllClubPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
  except
    on e: exception do
      raise;
    // self.JanuaDialog.JShowError('Errore TdmFootball.qrySeasonsAfterScroll', e.Message, '');
  end;
end;
procedure TdmFootballPostgres.qrySeasonsNewRecord(DataSet: TDataSet);
begin
  qrySeasonsdb_schema_id.Value := 0;
end;
procedure TdmFootballPostgres.qrySelectHomeBeforeOpen(DataSet: TDataSet);
begin
  qrySelectHome.ParamByName('match_day_number').AsInteger := self.qryMatchDaysmatch_day_number.AsInteger;
end;
procedure TdmFootballPostgres.qrySelectVisitorsBeforeOpen(DataSet: TDataSet);
begin
  qrySelectVisitors.ParamByName('match_day_number').AsInteger := self.qryMatchDaysmatch_day_number.AsInteger;
end;
procedure TdmFootballPostgres.qryTeamChampPlayersNewRecord(DataSet: TDataSet);
begin
  qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
  qryTeamChampPlayersseason_id.AsInteger := qryTeamsChampionshipsseason_id.AsInteger;
end;
procedure TdmFootballPostgres.qryTeamPlayersCalcFields(DataSet: TDataSet);
begin
  qryTeamPlayerslkpPlayerName.Value := qryTeamPlayersfamily_name.AsWideString + ' ' +
    qryTeamPlayersfirst_name.AsWideString + ' ' + qryTeamPlayersnotes.AsString;
end;
procedure TdmFootballPostgres.qryTeamsAfterOpen(DataSet: TDataSet);
begin
  self.ServerFunctions.OpenDataset(qryTeamHistory);
end;
procedure TdmFootballPostgres.qryTeamsAfterScroll(DataSet: TDataSet);
begin
  try
    self.qryTeamPlayers.Close;
    self.qryTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
    self.qryTeamPlayers.ParamByName('team_id').AsInteger := self.qryTeamsteam_id.AsInteger;
    self.ServerFunctions.OpenDataset(qryTeamPlayers);
    if (qryTeamPlayersLast.ParamByName('season_id').AsInteger <> qrySeasonsseason_id.AsInteger - 1) or
      (qryTeamPlayersLast.ParamByName('team_id').AsInteger <> qryTeamsteam_id.AsInteger) then
    begin
      self.qryTeamPlayersLast.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger - 1;
      self.qryTeamPlayersLast.ParamByName('team_id').AsInteger := self.qryTeamsteam_id.AsInteger;
      if not self.qryTeamPlayersLast.Active then
        self.ServerFunctions.OpenDataset(qryTeamPlayersLast)
      else
      begin
        self.qryTeamPlayersLast.Close;
        self.ServerFunctions.OpenDataset(qryTeamPlayersLast);
      end;
    end;
  except
    on e: exception do
      // self.JanuaDialog.JShowError('Errore TdmFootball.qryTeamsAfterScroll', e.Message, '');
      raise;
  end;
end;
procedure TdmFootballPostgres.qryTeamsChampionshipsAfterScroll(DataSet: TDataSet);
begin
  try
    if (qryTeamChampPlayers.ParamByName('season_id').AsInteger <> qrySeasonsseason_id.AsInteger) or
      (qryTeamChampPlayers.ParamByName('team_id').AsInteger <> qryTeamsChampionshipsteam_id.AsInteger) then
    begin
      self.qryTeamChampPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
      self.qryTeamChampPlayers.ParamByName('team_id').AsInteger :=
        self.qryTeamsChampionshipsteam_id.AsInteger;
      if not self.qryTeamChampPlayers.Active then
        self.ServerFunctions.OpenDataset(qryTeamChampPlayers)
      else
      begin
        self.qryTeamChampPlayers.Close;
        self.ServerFunctions.OpenDataset(qryTeamChampPlayers);
      end;
    end;
  except
    on e: exception do
      // self.JanuaDialog.JShowError('Errore TdmFootball.qryTeamsChampionshipsAfterScroll',
      // e.Message, '');
      raise;
  end;
end;
procedure TdmFootballPostgres.qryTeamsLastSeasonBeforeOpen(DataSet: TDataSet);
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
procedure TdmFootballPostgres.RefreshTeamClubPlayers(FSelectedForm: TJanuaFooballForm);
begin
  case FSelectedForm of
    jffClubs:
      begin
        qryAllTeamPlayers.Close;
        qryAllTeamPlayers.ParamByName('search_season_id').AsInteger := self.qrySeasonsseason_id.AsInteger - 1;
        qryAllTeamPlayers.ParamByName('team_id').AsInteger := self.qryTeamsChampionshipsteam_id.AsInteger;
        qryAllTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryAllTeamPlayers.ParamByName('check_team').AsString := 'Y';
        self.ServerFunctions.OpenDataset(qryAllTeamPlayers);
      end;
    jffChampionship:
      begin
        qryAllTeamPlayers.Close;
        qryAllTeamPlayers.ParamByName('search_season_id').AsInteger := self.qrySeasonsseason_id.AsInteger - 1;
        qryAllTeamPlayers.ParamByName('team_id').AsInteger := self.qryTeamsChampionshipsteam_id.AsInteger;
        qryAllTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryAllTeamPlayers.ParamByName('check_team').AsString := 'Y';
        self.ServerFunctions.OpenDataset(qryAllTeamPlayers);
        qryClubAllPlayers.Close;
        qryClubAllPlayers.ParamByName('team_id').AsInteger := self.qryTeamsChampionshipsteam_id.AsInteger;
        qryClubAllPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
        qryClubAllPlayers.ParamByName('check_team').AsString := 'Y';
        self.ServerFunctions.OpenDataset(qryClubAllPlayers);
      end;
    jffMatch:
      begin
      end;
  end;
end;
function TdmFootballPostgres.SaveImagePlayerCareer(aFileName: string): int64;
begin
  Result := self.getServerCloud.LoadDBBlobFromFile(aFileName);
  self.qryPlayerAlbum.Edit;
  self.qryPlayerAlbum.FieldByName('an_image_id').AsInteger := Result;
  self.qryPlayerAlbum.Post;
end;
procedure TdmFootballPostgres.SetFootballSettings(const Value: IFootballSettings);
begin
  self.FFootballSettings := Value;
end;
procedure TdmFootballPostgres.SetFSelectedForm(const Value: TJanuaFooballForm);
begin
  FSelectedForm := Value;
end;
procedure TdmFootballPostgres.SetJanuaDMAnagraph(const Value: TdmPgAnagraph);
begin
  FJanuaDMAnagraph := (Value);
  if assigned(self.FJanuaDMAnagraph) then
    self.SearchClubAnagraph;
end;
procedure TdmFootballPostgres.SetJanuaServerCloud(const Value: TJanuaPostgresCloud);
begin
  FJanuaServerCloud := Value;
end;
procedure TdmFootballPostgres.SetSeasonID(const Value: SmallInt);
begin
  if self.qrySeasons.Active then
    qrySeasons.Locate('season_id', Value, []);
end;
procedure TdmFootballPostgres.SetupPlayerOriginTeamID(aSeason: SmallInt);
begin
  aSeason := IfThen(aSeason = 0, self.SeasonID, aSeason);
  // SELECT football.ft_player_origin(:p_season)
  prcPlayerTeamOrigin.ParamByName('p_season').AsInteger := aSeason;
  prcPlayerTeamOrigin.Execute;
end;
procedure TdmFootballPostgres.UpdateRankings(const aFrom, aTo: integer);
begin
  self.dsChampRanking.DataSet.Close;
  // che fine ha fatto la procedura di Calcolo del Ranking ????.........................
  self.prcRanking.ParamByName('p_season_id').AsInteger := self.qrySeasonsseason_id.AsInteger;
  self.prcRanking.ParamByName('p_league_id').AsInteger := self.qryChampionshipsleague_id.AsInteger;
  self.prcRanking.ExecProc;
  self.OpenDataset(self.dsChampRanking.DataSet);
  self.qryTeamRankings.Close;
  OpenDataset(self.qryTeamRankings);
  self.qryDynamicRanking.Close;
  self.qryDynamicRanking.ParamByName('from').AsInteger := aFrom;
  self.qryDynamicRanking.ParamByName('to').AsInteger := aTo;
  OpenDataset(self.qryDynamicRanking); // .Open;
end;
end.
