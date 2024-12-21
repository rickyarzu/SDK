unit Janua.Sports.PgChampionship;

interface

uses
  // System units ................................
  System.SysUtils, System.Variants, System.Classes,
  // DB Units
  Data.DB, Uni, MemDS, DBAccess, DAScript, UniScript, UniProvider, PostgreSQLUniProvider,
  // Datasnap.Provider
  Datasnap.DBClient, Datasnap.Provider,
  // Janua Core Functions
  Janua.Core.Classes, Janua.Core.System, Janua.Core.Cloud,
  // Janua Postgres DataModules Functions
  // Janua.Football.Types, Janua.Football.Intf,
  udmPgAnagraph, Janua.Postgres.Cloud, udmJanuaPostgresModel, Janua.Core.Exceptions,
  Janua.Unidac.Connection;

type
  TdmUniDacPgChampionships = class(TdmJanuaPostgresModel)
    qryChampionships: TUniQuery;
    qryPlayerHistory: TUniQuery;
    dsSeasons: TDataSource;
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
    qryTeamsclub_id: TSmallintField;
    qryTeamsteam_name: TWideStringField;
    qryMatchDays: TUniQuery;
    qryMatches: TUniQuery;
    qryMatchDaysseason_id: TSmallintField;
    qryMatchDaysleague_id: TSmallintField;
    qryMatchDaysmatch_day_number: TSmallintField;
    dsMatchDays: TDataSource;
    dsMatches: TDataSource;
    qryLkpTeams: TUniQuery;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
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
    qryLkpEventTypes: TUniQuery;
    qryMatchEvents: TUniQuery;
    qryMatchAllPlayers: TUniQuery;
    qryMatchEventsmatch_id: TIntegerField;
    qryMatchEventsteam_id: TSmallintField;
    qryMatchEventsplayer_id: TIntegerField;
    qryMatchEventsevent_id: TSmallintField;
    qryMatchEventsminute: TIntegerField;
    qryMatchEventsvalue: TSmallintField;
    qryMatchTeams: TUniQuery;
    dsTeams: TDataSource;
    dsMatchTeams: TDataSource;
    dsMatchEvents: TDataSource;
    qryMatchTeamPlayers: TUniQuery;
    dsMatchTeamPlayers: TDataSource;
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
    qryChampRankingseason_id: TSmallintField;
    qryChampRankingleague_id: TSmallintField;
    qryChampRankingteam_id: TSmallintField;
    qryChampRankinglkpTeamName: TStringField;
    qryLkpTeamsclub_name: TWideStringField;
    qryChampRankingcalcPunti: TSmallintField;
    qryChampRankingcalcEnglish: TFloatField;
    qryChampRankingpos: TSmallintField;
    qryTeamPlayersfamily_name: TWideStringField;
    qryTeamPlayersfirst_name: TWideStringField;
    qryTeamPlayersteam_id: TSmallintField;
    qryTeamPlayersplayer_id: TIntegerField;
    qryTeamPlayersseason_id: TSmallintField;
    qryTeamPlayerslkpPlayerName: TWideStringField;
    qrySelectLeagues: TUniQuery;
    qryTeamsLastSeason: TUniQuery;
    qryTeamsLastSeasonseason_id: TSmallintField;
    qryTeamsLastSeasonleague_id: TSmallintField;
    qryTeamsLastSeasonteam_id: TSmallintField;
    qryTeamsLastSeasonteam_name: TWideStringField;
    qryTeamPlayersanagraph_id: TIntegerField;
    qryTeamPlayersbirth_year: TSmallintField;
    qryTeamPlayersbirth_place: TWideStringField;
    qryTeamPlayersnotes: TWideMemoField;
    qryAllPlayers: TUniQuery;
    dsTeamLastSeason: TDataSource;
    qryTeamPlayersLast: TUniQuery;
    qryTeamsClubsLeagues: TUniQuery;
    qryTeamPlayersLastfamily_name: TWideStringField;
    qryTeamPlayersLastfirst_name: TWideStringField;
    qryTeamPlayersLastteam_id: TSmallintField;
    qryTeamPlayersLastplayer_id: TIntegerField;
    qryTeamPlayersLastseason_id: TSmallintField;
    qryTeamPlayersLastanagraph_id: TIntegerField;
    qryTeamPlayersLastbirth_year: TSmallintField;
    qryTeamPlayersLastbirth_place: TWideStringField;
    qryTeamPlayersLastnotes: TWideMemoField;
    qryTeamsClubsLeaguesclub_id: TSmallintField;
    qryTeamsClubsLeaguesseason_id: TSmallintField;
    qryTeamsClubsLeaguesleague_id: TSmallintField;
    qryTeamsClubsLeaguesteam_id: TSmallintField;
    qryTeamsClubsLeaguesteam_name: TWideStringField;
    qryTeamsClubsLeaguesleague_name: TWideStringField;
    dsTeamsClubsLeagues: TDataSource;
    dsTeamsPlayersLast: TDataSource;
    lkpRoles: TUniTable;
    qryTeamPlayerslkpRoleName: TStringField;
    qryAllPlayerslkpRoleName: TStringField;
    qryTeamPlayersLastStringField: TStringField;
    qryTeamRankings: TUniQuery;
    dsTeamRankings: TDataSource;
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
    qryAllClubPlayersclub_name: TWideStringField;
    qryMatchTeamAllPlayers: TUniQuery;
    StringField2: TStringField;
    qryMatchEventslkpEventType: TStringField;
    qryMatchTeamAllPlayersteam_id: TSmallintField;
    qryMatchTeamAllPlayersplayer_id: TIntegerField;
    qryMatchTeamAllPlayersseason_id: TSmallintField;
    qryMatchTeamAllPlayersanagraph_id: TIntegerField;
    qryMatchTeamAllPlayersbirth_year: TSmallintField;
    qryMatchTeamAllPlayersfirst_name: TWideStringField;
    qryMatchTeamAllPlayersfamily_name: TWideStringField;
    qryMatchTeamAllPlayersbirth_place: TWideStringField;
    qryTeamPlayersLastclub_origin_id: TIntegerField;
    qryTeamChampPlayersanagraph_id: TIntegerField;
    qryTeamChampPlayersbirth_year: TSmallintField;
    qryTeamChampPlayersbirth_place: TWideStringField;
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
    qryMatchEventsnotes: TWideStringField;
    qryMatchEventsfavor_team_id: TIntegerField;
    qryMatchesdb_schema_id: TIntegerField;
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatchEventsteamplayer: TWideStringField;
    qryMatchEventsfamily_name: TWideStringField;
    qryTeamPlayerssince: TDateField;
    qryTeamPlayersuntil: TDateField;
    qryTeamPlayersbirth_date: TDateField;
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
    qryClubSeasons: TUniQuery;
    qryLkpSeasons: TUniQuery;
    qryPlayerAlbumlkpSeason: TStringField;
    qryMatchDaysrest_team_id: TIntegerField;
    qryMatchDayslkpRestTeam: TStringField;
    qrylkpClubs: TUniQuery;
    qrylkpClubsclub_id: TIntegerField;
    qrylkpClubsclub_name: TWideStringField;
    qrylkpClubsFoundation_date: TDateField;
    qryTeamPlayerslkpClubName: TStringField;
    qryTeamPlayerssent_off: TSmallintField;
    qryTeamPlayersinjuries: TSmallintField;
    qryTeamPlayersminutes: TSmallintField;
    qryTeamPlayersmatches: TIntegerField;
    qryTeamPlayersvotes: TFloatField;
    qryTeamPlayerslkpOriginClubName: TStringField;
    qryTeamPlayerslkprolecode: TWideStringField;
    qryTeamChampPlayerssent_off: TSmallintField;
    qryTeamChampPlayersinjuries: TSmallintField;
    qryTeamChampPlayersminutes: TSmallintField;
    qryTeamChampPlayersmatches: TIntegerField;
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
    prcRanking: TUniStoredProc;
    qryMatchesmatch_time: TDateTimeField;
    qryMatchessuspended: TBooleanField;
    qryMatchespostponed: TBooleanField;
    qryMatchesforfeit: TBooleanField;
    qryMatchesremote_id: TIntegerField;
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
    lkpAllPlayers: TUniQuery;
    dsLkpAllPlayers: TDataSource;
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
    qryPlayerHistorylkpLeague: TStringField;
    qryLkpLeaguesid: TSmallintField;
    qryLkpLeaguesleague_name: TWideStringField;
    qryLkpLeaguesleague_code: TWideStringField;
    qryLkpLeaguesleague_position: TSmallintField;
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
    qryTeamChampPlayersid: TLargeintField;
    qryTeamChampPlayersscored: TSmallintField;
    qryTeamChampPlayersself_scored: TSmallintField;
    qryTeamChampPlayersconceded: TSmallintField;
    qryTeamChampPlayersscore: TIntegerField;
    qryTeamChampPlayersremote_id: TIntegerField;
    qryTeamChampPlayersdb_schema_id: TIntegerField;
    qryTeamChampPlayersjguid: TGuidField;
    qryTeamChampPlayersdeleted: TBooleanField;
    qryTeamChampPlayersinsert_date: TDateTimeField;
    qryTeamChampPlayersupdate_date: TDateTimeField;
    qryTeamChampPlayersuser_insert: TWideStringField;
    qryTeamChampPlayersuser_update: TWideStringField;
    qryTeamChampPlayersan_cellular: TWideStringField;
    qryTeamChampPlayersan_email: TWideStringField;
    qryTeamChampPlayersrole_name: TWideStringField;
    qryTeamChampPlayersheight: TSmallintField;
    qryTeamChampPlayersweight: TSmallintField;
    qryTeamChampPlayersrole_id: TSmallintField;
    qrySelectLeaguesleague_id: TSmallintField;
    qrySelectLeaguesid: TSmallintField;
    qrySelectLeaguesleague_name: TWideStringField;
    qrySelectLeaguescountry_id: TIntegerField;
    qrySelectLeaguesleague_position: TSmallintField;
    qrySelectLeaguesleague_code: TWideStringField;
    qrySelectLeaguesdb_schema_id: TIntegerField;
    qrySelectLeaguesremote_id: TSmallintField;
    qrySelectLeaguespromotedcss: TWideStringField;
    qrySelectLeaguesplayoffcss: TWideStringField;
    qrySelectLeagueschampionscss: TWideStringField;
    qrySelectLeaguesplayoutcss: TWideStringField;
    qrySelectLeaguesrelegationcss: TWideStringField;
    qrySelectLeaguesall_players: TBooleanField;
    qrySelectLeaguesjguid: TGuidField;
    qrySelectLeaguesdeleted: TBooleanField;
    qrySelectLeaguesinsert_date: TDateTimeField;
    qrySelectLeaguesupdate_date: TDateTimeField;
    qrySelectLeaguesuser_insert: TWideStringField;
    qrySelectLeaguesuser_update: TWideStringField;
    qryLkpSeasonsseason_id: TIntegerField;
    qryLkpSeasonsseason_des: TWideStringField;
    qryLkpSeasonsseason_code: TWideStringField;
    spCloneSeasons: TUniStoredProc;
    qryMatchDaysdb_schema_id: TIntegerField;
    qryMatchDaysjguid: TGuidField;
    qryMatchDaysdeleted: TBooleanField;
    qryMatchDaysinsert_date: TDateTimeField;
    qryMatchDaysupdate_date: TDateTimeField;
    qryMatchDaysuser_insert: TWideStringField;
    qryMatchDaysuser_update: TWideStringField;
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
    qryMatchAllPlayersid: TLargeintField;
    qryMatchAllPlayersmatch_id: TIntegerField;
    qryMatchAllPlayersplayer_id: TIntegerField;
    qryMatchAllPlayersminutes: TSmallintField;
    qryMatchAllPlayersvote: TFloatField;
    qryMatchAllPlayersplayed: TBooleanField;
    qryMatchAllPlayersteam_id: TSmallintField;
    qryMatchAllPlayerspos: TSmallintField;
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
    qryMatchAllPlayersdeleted: TBooleanField;
    qryMatchAllPlayersinsert_date: TDateTimeField;
    qryMatchAllPlayersupdate_date: TDateTimeField;
    qryMatchAllPlayersuser_insert: TWideStringField;
    qryMatchAllPlayersuser_update: TWideStringField;
    qryMatchAllPlayersnotes: TWideMemoField;
    qryMatchAllPlayersfirst_name: TWideStringField;
    qryMatchAllPlayersfamily_name: TWideStringField;
    qryMatchAllPlayersfull_name: TWideStringField;
    qryMatchAllPlayerslkpplayername: TWideStringField;
    qryChampRankingmatchday: TSmallintField;
    qryChampRankingpoints_home: TSmallintField;
    qryChampRankingpoints_outside: TSmallintField;
    qryChampRankingscored: TSmallintField;
    qryChampRankingscored_home: TSmallintField;
    qryChampRankingscored_outside: TSmallintField;
    qryChampRankingconceded: TSmallintField;
    qryChampRankingconceded_home: TSmallintField;
    qryChampRankingconceded_outside: TSmallintField;
    qryChampRankingaggregate_points: TSmallintField;
    qryChampRankingaggregate_group: TSmallintField;
    qryChampRankingrownum: TSmallintField;
    qryChampRankingdb_schema_id: TIntegerField;
    qryChampRankinggames_scored: TSmallintField;
    qryChampRankinggames_conceded: TSmallintField;
    qryChampRankingplayed: TSmallintField;
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
    qryMatchTeamsid: TIntegerField;
    qryMatchTeamstrainer_id: TIntegerField;
    qryMatchTeamsimage: TBlobField;
    qryMatchTeamsremote_id: TIntegerField;
    qryMatchTeamsdb_schema_id: TIntegerField;
    qryMatchTeamsjguid: TGuidField;
    qryMatchTeamsdeleted: TBooleanField;
    qryMatchTeamsinsert_date: TDateTimeField;
    qryMatchTeamsupdate_date: TDateTimeField;
    qryMatchTeamsuser_insert: TWideStringField;
    qryMatchTeamsuser_update: TWideStringField;
    qryChampRankingdelta: TSmallintField;
    qryChampRankingdelta_games: TSmallintField;
    qryChampRankingteam_name: TWideStringField;
    qryChampRankingclub_name: TWideStringField;
    qryMatchTeamPlayersid: TLargeintField;
    qryMatchTeamPlayersmatch_id: TIntegerField;
    qryMatchTeamPlayersplayer_id: TIntegerField;
    qryMatchTeamPlayersminutes: TSmallintField;
    qryMatchTeamPlayersvote: TFloatField;
    qryMatchTeamPlayersplayed: TBooleanField;
    qryMatchTeamPlayersteam_id: TSmallintField;
    qryMatchTeamPlayerspos: TSmallintField;
    qryMatchTeamPlayerssubst_id: TIntegerField;
    qryMatchTeamPlayersscore: TSmallintField;
    qryMatchTeamPlayersself_score: TSmallintField;
    qryMatchTeamPlayersconceded: TSmallintField;
    qryMatchTeamPlayerssince: TSmallintField;
    qryMatchTeamPlayersuntil: TSmallintField;
    qryMatchTeamPlayerssent_off: TSmallintField;
    qryMatchTeamPlayersinjuries: TSmallintField;
    qryMatchTeamPlayersdb_schema_id: TIntegerField;
    qryMatchTeamPlayersjguid: TGuidField;
    qryMatchTeamPlayersdeleted: TBooleanField;
    qryMatchTeamPlayersinsert_date: TDateTimeField;
    qryMatchTeamPlayersupdate_date: TDateTimeField;
    qryMatchTeamPlayersuser_insert: TWideStringField;
    qryMatchTeamPlayersuser_update: TWideStringField;
    qryMatchTeamPlayersfamily_name: TWideStringField;
    qryMatchTeamPlayersfirst_name: TWideStringField;
    qryMatchTeamPlayersfull_name: TWideStringField;
    qryMatchTeamPlayersrole_id: TSmallintField;
    qryClubAllPlayersfull_name: TWideMemoField;
    qryClubAllPlayersplayer_id: TLargeintField;
    qryClubsid: TIntegerField;
    qryClubsclub_name: TWideStringField;
    qryClubsfoundation_date: TDateField;
    qryClubspresident: TWideStringField;
    qryClubsstadium_id: TSmallintField;
    qryClubstown: TWideStringField;
    qryClubsvice_president: TWideStringField;
    qryClubsteam_manager: TWideStringField;
    qryClubsathletic_manager: TWideStringField;
    qryClubscolors: TWideStringField;
    qryClubswebsite: TWideStringField;
    qryClubsremote_id: TIntegerField;
    qryClubsanagraph_id: TIntegerField;
    qryClubsclub_image: TBlobField;
    qryClubsdb_schema_id: TIntegerField;
    qryClubsjguid: TGuidField;
    qryClubsdeleted: TBooleanField;
    qryClubsinsert_date: TDateTimeField;
    qryClubsupdate_date: TDateTimeField;
    qryClubsuser_insert: TWideStringField;
    qryClubsuser_update: TWideStringField;
    qryTeamsid: TIntegerField;
    qryTeamstrainer_id: TIntegerField;
    qryTeamsimage: TBlobField;
    qryTeamsremote_id: TIntegerField;
    qryTeamsdb_schema_id: TIntegerField;
    qryTeamsjguid: TGuidField;
    qryTeamsdeleted: TBooleanField;
    qryTeamsinsert_date: TDateTimeField;
    qryTeamsupdate_date: TDateTimeField;
    qryTeamsuser_insert: TWideStringField;
    qryTeamsuser_update: TWideStringField;
    qryTeamsclub_name: TWideStringField;
    qryTeamsclub_image: TBlobField;
    qryTeamPlayersid: TLargeintField;
    qryTeamPlayersscored: TSmallintField;
    qryTeamPlayersself_scored: TSmallintField;
    qryTeamPlayersconceded: TSmallintField;
    qryTeamPlayersscore: TIntegerField;
    qryTeamPlayersremote_id: TIntegerField;
    qryTeamPlayersdb_schema_id: TIntegerField;
    qryTeamPlayersjguid: TGuidField;
    qryTeamPlayersdeleted: TBooleanField;
    qryTeamPlayersinsert_date: TDateTimeField;
    qryTeamPlayersupdate_date: TDateTimeField;
    qryTeamPlayersuser_insert: TWideStringField;
    qryTeamPlayersuser_update: TWideStringField;
    qryTeamPlayersan_cellular: TWideStringField;
    qryTeamPlayersan_email: TWideStringField;
    qryTeamPlayersrole_name: TWideStringField;
    qryTeamPlayersrole_code: TWideStringField;
    qryTeamPlayersheight: TSmallintField;
    qryTeamPlayersweight: TSmallintField;
    qryTeamPlayersrole_id: TSmallintField;
    qryTeamPlayersteam_name: TWideStringField;
    qryTeamPlayersclub_id: TSmallintField;
    qryTeamPlayersfull_name: TWideMemoField;
    qryTeamPlayersLastid: TLargeintField;
    qryTeamPlayersLastscored: TSmallintField;
    qryTeamPlayersLastself_scored: TSmallintField;
    qryTeamPlayersLastconceded: TSmallintField;
    qryTeamPlayersLastsent_off: TSmallintField;
    qryTeamPlayersLastinjuries: TSmallintField;
    qryTeamPlayersLastminutes: TSmallintField;
    qryTeamPlayersLastmatches: TIntegerField;
    qryTeamPlayersLastscore: TIntegerField;
    qryTeamPlayersLastvotes: TFloatField;
    qryTeamPlayersLastremote_id: TIntegerField;
    qryTeamPlayersLastdb_schema_id: TIntegerField;
    qryTeamPlayersLastjguid: TGuidField;
    qryTeamPlayersLastdeleted: TBooleanField;
    qryTeamPlayersLastinsert_date: TDateTimeField;
    qryTeamPlayersLastupdate_date: TDateTimeField;
    qryTeamPlayersLastuser_insert: TWideStringField;
    qryTeamPlayersLastuser_update: TWideStringField;
    qryTeamPlayersLastan_cellular: TWideStringField;
    qryTeamPlayersLastan_email: TWideStringField;
    qryTeamPlayersLastrole_name: TWideStringField;
    qryTeamPlayersLastrole_code: TWideStringField;
    qryTeamPlayersLastheight: TSmallintField;
    qryTeamPlayersLastweight: TSmallintField;
    qryTeamPlayersLastrole_id: TSmallintField;
    qryTeamPlayersLastteam_name: TWideStringField;
    qryTeamPlayersLastclub_id: TSmallintField;
    qryTeamPlayersLastfull_name: TWideMemoField;
    qryTeamRankingsseason_code: TWideStringField;
    qryTeamRankingsseason_id: TIntegerField;
    qryTeamRankingsleague_id: TIntegerField;
    qryTeamRankingsmatchday: TSmallintField;
    qryTeamRankingspos: TSmallintField;
    qryTeamRankingsteam_id: TIntegerField;
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
    qryTeamRankingspoints: TSmallintField;
    qryTeamRankingspoints_home: TSmallintField;
    qryTeamRankingspoints_outside: TSmallintField;
    qryTeamRankingsscored: TSmallintField;
    qryTeamRankingsscored_home: TSmallintField;
    qryTeamRankingsscored_outside: TSmallintField;
    qryTeamRankingsconceded: TSmallintField;
    qryTeamRankingsconceded_home: TSmallintField;
    qryTeamRankingsconceded_outside: TSmallintField;
    qryTeamRankingsaggregate_points: TSmallintField;
    qryTeamRankingsaggregate_group: TSmallintField;
    qryTeamRankingsrownum: TSmallintField;
    qryTeamRankingsdb_schema_id: TIntegerField;
    qryTeamRankingsdelta: TSmallintField;
    qryTeamRankingsgames_scored: TSmallintField;
    qryTeamRankingsgames_conceded: TSmallintField;
    qryTeamRankingsdelta_games: TSmallintField;
    qryTeamRankingsteam_name: TWideStringField;
    qryTeamRankingsclub_name: TWideStringField;
    qryTeamRankingsplayed: TSmallintField;
    qryTeamRankingsleague_name: TWideStringField;
    lkpRolesid: TSmallintField;
    lkpRolesrole_code: TWideStringField;
    lkpRolesrole_name: TWideStringField;
    qryAllPlayersid: TIntegerField;
    qryAllPlayersrole_id: TSmallintField;
    qryAllPlayersheight: TSmallintField;
    qryAllPlayersweight: TSmallintField;
    qryAllPlayersremote_id: TIntegerField;
    qryAllPlayersdb_schema_id: TIntegerField;
    qryAllPlayersjguid: TGuidField;
    qryAllPlayersdeleted: TBooleanField;
    qryAllPlayersinsert_date: TDateTimeField;
    qryAllPlayersupdate_date: TDateTimeField;
    qryAllPlayersuser_insert: TWideStringField;
    qryAllPlayersuser_update: TWideStringField;
    qryAllPlayersan_cellular: TWideStringField;
    qryAllPlayersan_email: TWideStringField;
    qryAllPlayersan_group_id: TSmallintField;
    qryAllPlayersrole_name: TWideStringField;
    qryAllPlayersrole_code: TWideStringField;
    qryAllPlayersfull_name: TWideMemoField;
    qryAllPlayersanagraph_id: TIntegerField;
    qryAllPlayersbirth_year: TSmallintField;
    qryAllPlayersbirth_place: TWideStringField;
    qryAllPlayersnotes: TWideMemoField;
    qryAllPlayersfirst_name: TWideStringField;
    qryAllPlayersfamily_name: TWideStringField;
    qryAllPlayersbirth_date: TDateField;
    qryAllClubPlayersid: TLargeintField;
    qryAllClubPlayersclub_origin_id: TIntegerField;
    qryAllClubPlayersscored: TSmallintField;
    qryAllClubPlayersself_scored: TSmallintField;
    qryAllClubPlayersconceded: TSmallintField;
    qryAllClubPlayerssent_off: TSmallintField;
    qryAllClubPlayersinjuries: TSmallintField;
    qryAllClubPlayersminutes: TSmallintField;
    qryAllClubPlayersmatches: TIntegerField;
    qryAllClubPlayersscore: TIntegerField;
    qryAllClubPlayersvotes: TFloatField;
    qryAllClubPlayersremote_id: TIntegerField;
    qryAllClubPlayersdb_schema_id: TIntegerField;
    qryAllClubPlayersjguid: TGuidField;
    qryAllClubPlayersdeleted: TBooleanField;
    qryAllClubPlayersinsert_date: TDateTimeField;
    qryAllClubPlayersupdate_date: TDateTimeField;
    qryAllClubPlayersuser_insert: TWideStringField;
    qryAllClubPlayersuser_update: TWideStringField;
    qryAllClubPlayersan_cellular: TWideStringField;
    qryAllClubPlayersan_email: TWideStringField;
    qryAllClubPlayersrole_name: TWideStringField;
    qryAllClubPlayersrole_code: TWideStringField;
    qryAllClubPlayersheight: TSmallintField;
    qryAllClubPlayersweight: TSmallintField;
    qryAllClubPlayersrole_id: TSmallintField;
    qryAllClubPlayersteam_name: TWideStringField;
    qryAllClubPlayersfull_name: TWideMemoField;
    qryAllClubPlayersteam_id: TSmallintField;
    qryAllClubPlayersplayer_id: TIntegerField;
    qryAllClubPlayersseason_id: TSmallintField;
    qryAllClubPlayersanagraph_id: TIntegerField;
    qryAllClubPlayersfirst_name: TWideStringField;
    qryAllClubPlayersfamily_name: TWideStringField;
    qryAllClubPlayersbirth_year: TSmallintField;
    qryAllClubPlayersbirth_place: TWideStringField;
    qryAllClubPlayersnotes: TWideMemoField;
    qryAllClubPlayersclub_id: TSmallintField;
    qryClubssearch_name: TStringField;
    qrylkpClubsid: TIntegerField;
    qrylkpClubspresident: TWideStringField;
    qrylkpClubsstadium_id: TSmallintField;
    qrylkpClubstown: TWideStringField;
    qrylkpClubsvice_president: TWideStringField;
    qrylkpClubsteam_manager: TWideStringField;
    qrylkpClubsathletic_manager: TWideStringField;
    qrylkpClubscolors: TWideStringField;
    qrylkpClubswebsite: TWideStringField;
    qrylkpClubsremote_id: TIntegerField;
    qrylkpClubsanagraph_id: TIntegerField;
    qrylkpClubsclub_image: TBlobField;
    qrylkpClubsdb_schema_id: TIntegerField;
    qrylkpClubsjguid: TGuidField;
    qrylkpClubsdeleted: TBooleanField;
    qrylkpClubsinsert_date: TDateTimeField;
    qrylkpClubsupdate_date: TDateTimeField;
    qrylkpClubsuser_insert: TWideStringField;
    qrylkpClubsuser_update: TWideStringField;
    qryMatchTeamAllPlayersid: TLargeintField;
    qryMatchTeamAllPlayersscored: TSmallintField;
    qryMatchTeamAllPlayersself_scored: TSmallintField;
    qryMatchTeamAllPlayersconceded: TSmallintField;
    qryMatchTeamAllPlayerssent_off: TSmallintField;
    qryMatchTeamAllPlayersinjuries: TSmallintField;
    qryMatchTeamAllPlayersminutes: TSmallintField;
    qryMatchTeamAllPlayersmatches: TIntegerField;
    qryMatchTeamAllPlayersscore: TIntegerField;
    qryMatchTeamAllPlayersvotes: TFloatField;
    qryMatchTeamAllPlayersremote_id: TIntegerField;
    qryMatchTeamAllPlayersdb_schema_id: TIntegerField;
    qryMatchTeamAllPlayersjguid: TGuidField;
    qryMatchTeamAllPlayersdeleted: TBooleanField;
    qryMatchTeamAllPlayersinsert_date: TDateTimeField;
    qryMatchTeamAllPlayersupdate_date: TDateTimeField;
    qryMatchTeamAllPlayersuser_insert: TWideStringField;
    qryMatchTeamAllPlayersuser_update: TWideStringField;
    qryMatchTeamAllPlayersan_cellular: TWideStringField;
    qryMatchTeamAllPlayersan_email: TWideStringField;
    qryMatchTeamAllPlayersrole_name: TWideStringField;
    qryMatchTeamAllPlayersrole_code: TWideStringField;
    qryMatchTeamAllPlayersheight: TSmallintField;
    qryMatchTeamAllPlayersweight: TSmallintField;
    qryMatchTeamAllPlayersrole_id: TSmallintField;
    qryMatchTeamAllPlayersteam_name: TWideStringField;
    qryMatchTeamAllPlayersclub_id: TSmallintField;
    qryMatchTeamAllPlayersfull_name: TWideMemoField;
    qryMatchTeamAllPlayersclub_name: TWideStringField;
    qryMatchTeamAllPlayersnotes: TWideMemoField;
    qryTeamPlayersLastclub_name: TWideStringField;
    qryClubPlayersteam_id: TSmallintField;
    qryClubPlayersplayer_id: TIntegerField;
    qryClubPlayersseason_id: TSmallintField;
    qryClubPlayerssince: TDateField;
    qryClubPlayersuntil: TDateField;
    qryClubPlayersclub_origin_id: TIntegerField;
    qryClubPlayersgoal: TSmallintField;
    qryClubPlayersowngoal: TSmallintField;
    qryClubPlayerslostgoal: TSmallintField;
    qryClubPlayerssent_off: TSmallintField;
    qryClubPlayersinjuries: TSmallintField;
    qryClubPlayersminutes: TSmallintField;
    qryClubPlayersmatches: TIntegerField;
    qryClubPlayersgoals: TIntegerField;
    qryClubPlayersvotes: TFloatField;
    qryClubPlayersdb_schema_id: TIntegerField;
    qryClubPlayersftmp_jguid: TWideStringField;
    qryClubPlayersftmp_deleted: TBooleanField;
    qryClubPlayersanagraph_id: TIntegerField;
    qryClubPlayersbirth_date: TDateField;
    qryClubPlayersbirth_year: TSmallintField;
    qryClubPlayersfirst_name: TWideStringField;
    qryClubPlayersfamily_name: TWideStringField;
    qryClubPlayersbirth_place: TWideStringField;
    qryClubPlayersnotes: TWideMemoField;
    qryClubPlayersrole: TSmallintField;
    qryClubPlayersremote_id: TIntegerField;
    qryClubPlayersheight: TSmallintField;
    qryClubPlayersweight: TSmallintField;
    qryClubPlayersdb_schema_id_1: TIntegerField;
    qryClubPlayerspplr_jguid: TWideStringField;
    qryClubPlayerspplr_deleted: TBooleanField;
    qryClubPlayersfullname: TWideStringField;
    lkpAllPlayersid: TIntegerField;
    lkpAllPlayersanagraph_id: TIntegerField;
    lkpAllPlayersbirth_year: TSmallintField;
    lkpAllPlayersbirth_place: TWideStringField;
    lkpAllPlayersnotes: TWideMemoField;
    lkpAllPlayersrole_id: TSmallintField;
    lkpAllPlayersheight: TSmallintField;
    lkpAllPlayersweight: TSmallintField;
    lkpAllPlayersremote_id: TIntegerField;
    lkpAllPlayersdb_schema_id: TIntegerField;
    lkpAllPlayersjguid: TGuidField;
    lkpAllPlayersdeleted: TBooleanField;
    lkpAllPlayersinsert_date: TDateTimeField;
    lkpAllPlayersupdate_date: TDateTimeField;
    lkpAllPlayersuser_insert: TWideStringField;
    lkpAllPlayersuser_update: TWideStringField;
    lkpAllPlayersfirst_name: TWideStringField;
    lkpAllPlayersfamily_name: TWideStringField;
    lkpAllPlayersbirth_date: TDateField;
    lkpAllPlayersan_cellular: TWideStringField;
    lkpAllPlayersan_email: TWideStringField;
    lkpAllPlayersan_group_id: TSmallintField;
    lkpAllPlayersrole_name: TWideStringField;
    lkpAllPlayersrole_code: TWideStringField;
    lkpAllPlayersfull_name: TWideMemoField;
    qryNextVal: TUniQuery;
    qryNextValnextval: TLargeintField;
    qryMatchEventsmatch_events_row_id: TLargeintField;
    qryTeamsteam_id: TIntegerField;
    qryAllTeamPlayersdb_schema_id: TIntegerField;
    qryAllTeamPlayersremote_id: TIntegerField;
    qryAllTeamPlayersheight: TSmallintField;
    qryAllTeamPlayersweight: TSmallintField;
    qryAllTeamPlayerspplr_jguid: TWideStringField;
    qryAllTeamPlayerspplr_deleted: TBooleanField;
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
    procedure qryMatchDaysNewRecord(DataSet: TDataSet);
    procedure qrySelectLeaguesBeforePost(DataSet: TDataSet);
    procedure qryChampionshipsBeforePost(DataSet: TDataSet);
    {
      strict protected
      FFootballSettings: IFootballSettings;
      strict protected
      procedure SetFootballSettings(const Value: IFootballSettings);
      public
      property FootballSettings: IFootballSettings read FFootballSettings write SetFootballSettings;
      private
      FSelectedForm: TJanuaFooballForm;
    }
  public
    FJanuaServerCloud: TJanuaPostgresCloud;
    FJanuaDMAnagraph: TdmPgAnagraph;
    { procedure SetFSelectedForm(const Value: TJanuaFooballForm); }
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
    { procedure RefreshTeamClubPlayers(FSelectedForm: TJanuaFooballForm);
      procedure CopyTeamPlayers(FSelectedForm: TJanuaFooballForm); }
    procedure CloseTeamClubPlayers;
    procedure CloneSeason(OldSeason, NewSeason: integer);
    procedure MembershipPlayer;
    { property SelectedForm: TJanuaFooballForm read FSelectedForm write SetFSelectedForm; }
    function CalculateMatch: boolean;
    property JanuaServerCloud: TJanuaPostgresCloud read FJanuaServerCloud write SetJanuaServerCloud;
    function getServerCloud: TJanuaPostgresCloud;
    procedure inheritPlayer(const pfrom, pto: integer);
    procedure SetupPlayerOriginTeamID(aSeason: SmallInt = 0);
    property JanuaDMAnagraph: TdmPgAnagraph read FJanuaDMAnagraph write SetJanuaDMAnagraph;
    property SeasonID: SmallInt read GetSeasonID write SetSeasonID;
  end;

var
  dmUniDacPgChampionships: TdmUniDacPgChampionships;

implementation

uses System.Math, System.StrUtils, Janua.Uni.Framework;
{$R *.dfm}

function TdmUniDacPgChampionships.CalculateMatch: boolean;
begin
  Result := True;
end;

procedure TdmUniDacPgChampionships.CloneSeason(OldSeason, NewSeason: integer);
begin
  // procedure che clona una stagione in un'altra stagione incluso squadre iscritte?
end;

procedure TdmUniDacPgChampionships.CloseTeamClubPlayers;
begin
  qryAllTeamPlayers.Close;
  qryClubAllPlayers.Close;
end;

procedure TdmUniDacPgChampionships.DataModuleCreate(Sender: TObject);
begin
  inherited;
  // inherited procedure
end;

procedure TdmUniDacPgChampionships.DSServerModuleDestroy(Sender: TObject);
begin
  inherited;
  if assigned(FJanuaServerCloud) then
  begin
    FJanuaServerCloud.Free;
  end;
end;

function TdmUniDacPgChampionships.ExportRank2Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin
    self.qryChampRanking.Next;
  end;
end;

function TdmUniDacPgChampionships.ExportRank6Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin
    self.qryChampRanking.Next;
  end;
end;

function TdmUniDacPgChampionships.ExportRank8Column: string;
begin
  self.qryChampRanking.First;
  while not self.qryChampRanking.Eof do
  begin
    self.qryChampRanking.Next;
  end;
end;

function TdmUniDacPgChampionships.GetSeasonID: SmallInt;
begin
  Result := IfThen(self.qrySeasons.Active, qrySeasonsid.AsInteger, -1)
end;

function TdmUniDacPgChampionships.getServerCloud: TJanuaPostgresCloud;
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

procedure TdmUniDacPgChampionships.inheritPlayer(const pfrom, pto: integer);
begin
  // SELECT * FROM football.ft_player_inherit(:p_from_player, :p_to_player)
  prcInheritPlayer.ParamByName('p_from_player').AsInteger := pfrom;
  prcInheritPlayer.ParamByName('p_to_player').AsInteger := pto;
  prcInheritPlayer.ExecProc;
end;

procedure TdmUniDacPgChampionships.Activate;
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
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeams);

    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryClubs, dsClubs);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeams, dsTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeamPlayers, self.dsTeamPlayers);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeamsChampionships);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchDays);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatches);
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(cdsEventTypes);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchAllPlayers);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryMatchEvents);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryChampRanking);
    // TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeams);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryTeamRankings);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(lkpTeamsChampionship);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryPlayerHistory);
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(qryPlayerAlbum);
    /// self.qryAllPlayers.Open;
    /// {non aprire per non sovracaricare il sistema}
    TUniFramework.PgDatasetFunctions.OpenThreadedDataset(self.lkpAllPlayers, dsLkpAllPlayers);
  except
    on e: exception do
    begin
      // ShowMessage('Errore Evento on Create DataModule Football');
      // ShowMessage(e.Message);
      raise;
    end;
  end;
end;

procedure TdmUniDacPgChampionships.SearchClubAnagraph;
begin
  if assigned(self.FJanuaDMAnagraph) then
  begin
    self.FJanuaDMAnagraph.SetAnagraphGroupByID(11);
    self.FJanuaDMAnagraph.SearchAnagraphByID(self.qryClubsanagraph_id.AsInteger);
  end;
end;

procedure TdmUniDacPgChampionships.SearchLkpPlayer(const aPlayerName: string);
  function GetSearchString: string;
  begin
    Result := 'FullName  like ' + QuotedStr(stringreplace(aPlayerName.ToLower.Trim, ' ', '%',
      [rfReplaceAll, rfIgnoreCase]))
  end;

begin
  lkpAllPlayers.Filtered := aPlayerName <> '';
  lkpAllPlayers.Filter := System.StrUtils.IfThen(lkpAllPlayers.Filtered, '', GetSearchString);
end;

procedure TdmUniDacPgChampionships.SearchPlayerAnagraph;
begin
  if assigned(self.FJanuaDMAnagraph) then
  begin
    self.FJanuaDMAnagraph.SetAnagraphGroupByID(11);
    self.FJanuaDMAnagraph.SearchAnagraphByID(self.qryClubsanagraph_id.AsInteger);
  end;
end;

procedure TdmUniDacPgChampionships.MembershipPlayer;
begin
end;

procedure TdmUniDacPgChampionships.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  // inherited from parent system ...................
end;

procedure TdmUniDacPgChampionships.qryAllClubPlayersBeforeOpen(DataSet: TDataSet);
begin
  qryAllClubPlayers.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
  qryAllClubPlayers.ParamByName('player_id').AsInteger := qryAllPlayersanagraph_id.AsInteger;
end;

procedure TdmUniDacPgChampionships.qryAllTeamPlayersBeforeOpen(DataSet: TDataSet);
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
end;

procedure TdmUniDacPgChampionships.qryChampionshipsBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryChampionshipsdb_schema_id.AsInteger := PgErgoConnection.SchemaID;
end;

procedure TdmUniDacPgChampionships.qryChampRankingCalcFields(DataSet: TDataSet);
begin
  inherited;
  {
    qryChampRankingcalcGoalDifference.AsInteger := qryChampRankinggoal_done.AsInteger -
    qryChampRankinggoal_lost.AsInteger;
  }
  qryChampRankingcalcEnglish.AsInteger :=
    (-3 * qryChampRankinghome_matches.AsInteger + qryChampRankinghome_won.AsInteger * 3 +
    qryChampRankinghome_tied.AsInteger);
  qryChampRankingcalcEnglish.AsInteger := qryChampRankingcalcEnglish.AsInteger +
    (-qryChampRankingoutside_played.AsInteger + qryChampRankingoutside_won.AsInteger * 3 +
    qryChampRankingoutside_tied.AsInteger);
end;

procedure TdmUniDacPgChampionships.qryClubsAfterOpen(DataSet: TDataSet);
begin
  ServerFunctions.OpenDataset(qryTeams);
  ServerFunctions.OpenDataset(qryTeamsClubsLeagues);
  ServerFunctions.OpenDataset(qryTeamsLastSeason);
  ServerFunctions.OpenDataset(qryTeamPlayers);
  ServerFunctions.OpenDataset(qryTeamPlayersLast);
end;

procedure TdmUniDacPgChampionships.qryClubsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  SearchClubAnagraph;
end;

procedure TdmUniDacPgChampionships.qryClubsBeforeScroll(DataSet: TDataSet);
begin
  inherited;
  if FJanuaDMAnagraph.qryAnagraphs.State in [dsInsert, dsEdit] then
    FJanuaDMAnagraph.qryAnagraphs.Post;
  if FJanuaDMAnagraph.qrySubAnagraphs.State in [dsInsert, dsEdit] then
    FJanuaDMAnagraph.qrySubAnagraphs.Post;
end;

procedure TdmUniDacPgChampionships.qryClubsCalcFields(DataSet: TDataSet);
begin
  if qryClubssearch_name.Value <> UpperCase(qryClubsclub_name.AsWideString) then
    qryClubssearch_name.Value := UpperCase(qryClubsclub_name.AsWideString);
end;

procedure TdmUniDacPgChampionships.qryMatchDaysAfterOpen(DataSet: TDataSet);
begin
  ServerFunctions.OpenDataset(qryMatches);
end;

procedure TdmUniDacPgChampionships.qryMatchDaysNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryMatchDaysjguid.AsGUID := TGUID.NewGuid;
end;

procedure TdmUniDacPgChampionships.qryMatchesAfterScroll(DataSet: TDataSet);
begin
  qryMatchAllPlayers.ParamByName('match_id').AsInteger := self.qryMatchesmatch_id.AsInteger;
  qryMatchAllPlayers.Close;
  ServerFunctions.OpenDataset(qryMatchAllPlayers);
end;

procedure TdmUniDacPgChampionships.qryMatchesBeforePost(DataSet: TDataSet);
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
  if not qryMatchesscore_visitor.IsNull and not qryMatchesscore_home.IsNull then
  begin
    if qryMatchesscore_visitor.AsInteger > qryMatchesscore_home.AsInteger then
    begin
      qryMatchespoints_home.AsInteger := 0;
      qryMatchespoints_visitors.AsInteger := 3;
    end
    else if qryMatchesscore_visitor.AsInteger < qryMatchesscore_home.AsInteger then
    begin
      qryMatchespoints_home.AsInteger := 3;
      qryMatchespoints_visitors.AsInteger := 0;
    end
    else if qryMatchesscore_visitor.AsInteger = qryMatchesscore_home.AsInteger then
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

procedure TdmUniDacPgChampionships.qryMatchEventsBeforePost(DataSet: TDataSet);
begin
  if (self.qryMatchEventsplayer_id.AsInteger > 0) then
    if self.qryMatchAllPlayers.Locate('player_id', qryMatchEventsplayer_id.AsInteger, []) then
    begin
      self.qryMatchEventsteam_id.AsInteger := self.qryMatchAllPlayersteam_id.AsInteger;
    end;
end;

procedure TdmUniDacPgChampionships.qryMatchTeamAllPlayersNewRecord(DataSet: TDataSet);
begin
  qryMatchTeamAllPlayersteam_id.AsInteger := qryMatchTeamsteam_id.AsInteger;
  qryMatchTeamAllPlayersseason_id.AsInteger := self.qrySeasonsid.AsInteger;
end;

procedure TdmUniDacPgChampionships.qryMatchTeamPlayersNewRecord(DataSet: TDataSet);
begin
  qryMatchTeamPlayersmatch_id.AsInteger := self.qryMatchesmatch_id.AsInteger;
  qryMatchTeamPlayersplayer_id.AsInteger := self.qryMatchTeamAllPlayersplayer_id.AsInteger;
  qryMatchTeamPlayersteam_id.AsInteger := self.qryMatchTeamsteam_id.AsInteger;
  qryMatchTeamPlayerspos.AsInteger := qryMatchTeamPlayers.RecordCount + 1;
  qryMatchTeamPlayerssince.AsInteger := 1;
  qryMatchTeamPlayersuntil.AsInteger := 90;
  qryMatchTeamPlayersminutes.AsInteger := 90;
  qryMatchTeamPlayersscore.AsInteger := 0;
  qryMatchTeamPlayersself_score.AsInteger := 0;
  qryMatchTeamPlayersconceded.AsInteger := 0;
  qryMatchTeamPlayersfull_name.AsWideString := qryMatchTeamAllPlayersfull_name.AsWideString;
end;

procedure TdmUniDacPgChampionships.qryMatchTeamsAfterScroll(DataSet: TDataSet);
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

procedure TdmUniDacPgChampionships.qrySeasonsAfterScroll(DataSet: TDataSet);
begin
  try
    // qryMatchAllPlayers.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
    qryMatchTeamAllPlayers.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
    qryTeamsClubsLeagues.Close;
    qryTeamsClubsLeagues.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
    ServerFunctions.OpenDataset(qryTeamsClubsLeagues);
    qryClubPlayers.Close;
    qryClubPlayers.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
    ServerFunctions.OpenDataset(qryClubPlayers);
    // qryAllClubPlayers
    qryAllClubPlayers.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
    ServerFunctions.OpenDataset(qryAllClubPlayers);
    qryChampionships.Close;
    qryChampionships.ParamByName('season_id').AsInteger := qrySeasonsid.AsInteger;
    ServerFunctions.OpenDataset(qryChampionships);
  except
    on e: exception do
      raise;
    // JanuaDialog.JShowError('Errore TdmFootball.qrySeasonsAfterScroll', e.Message, '');
  end;
end;

procedure TdmUniDacPgChampionships.qrySeasonsNewRecord(DataSet: TDataSet);
begin
  qrySeasonsdb_schema_id.Value := 0;
  qrySeasonsjguid.AsGUID := TGUID.NewGuid;
end;

procedure TdmUniDacPgChampionships.qrySelectHomeBeforeOpen(DataSet: TDataSet);
begin
  qrySelectHome.ParamByName('match_day_number').AsInteger := self.qryMatchDaysmatch_day_number.AsInteger;
end;

procedure TdmUniDacPgChampionships.qrySelectLeaguesBeforePost(DataSet: TDataSet);
begin
  inherited;
  qryNextVal.Close;
  qryNextVal.Params[0].AsString := 'sports.leagues_seq';
  qryNextVal.Open;
  self.qrySelectLeaguesid.AsInteger := qryNextValnextval.AsInteger;

  if qrySelectLeaguescountry_id.IsNull then
    qrySelectLeaguescountry_id.AsInteger := 1;

  qrySelectLeaguesdb_schema_id.AsInteger := PgErgoConnection.SchemaID;

end;

procedure TdmUniDacPgChampionships.qrySelectVisitorsBeforeOpen(DataSet: TDataSet);
begin
  qrySelectVisitors.ParamByName('match_day_number').AsInteger := self.qryMatchDaysmatch_day_number.AsInteger;
end;

procedure TdmUniDacPgChampionships.qryTeamChampPlayersNewRecord(DataSet: TDataSet);
begin
  qryTeamChampPlayersjguid.AsGUID := TGUID.NewGuid;
  qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
  qryTeamChampPlayersseason_id.AsInteger := qryTeamsChampionshipsseason_id.AsInteger;
end;

procedure TdmUniDacPgChampionships.qryTeamPlayersCalcFields(DataSet: TDataSet);
begin
  qryTeamPlayerslkpPlayerName.Value := qryTeamPlayersfamily_name.AsWideString + ' ' +
    qryTeamPlayersfirst_name.AsWideString + ' ' + qryTeamPlayersnotes.AsString;
end;

procedure TdmUniDacPgChampionships.qryTeamsAfterOpen(DataSet: TDataSet);
begin
  self.ServerFunctions.OpenDataset(qryTeamHistory);
end;

procedure TdmUniDacPgChampionships.qryTeamsAfterScroll(DataSet: TDataSet);
begin
  try
    self.qryTeamPlayers.Close;
    self.qryTeamPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsid.AsInteger;
    self.qryTeamPlayers.ParamByName('team_id').AsInteger := self.qryTeamsid.AsInteger;
    self.ServerFunctions.OpenDataset(qryTeamPlayers);
    if (qryTeamPlayersLast.ParamByName('season_id').AsInteger <> qrySeasonsid.AsInteger - 1) or
      (qryTeamPlayersLast.ParamByName('team_id').AsInteger <> qryTeamsid.AsInteger) then
    begin
      self.qryTeamPlayersLast.ParamByName('season_id').AsInteger := self.qrySeasonsid.AsInteger - 1;
      self.qryTeamPlayersLast.ParamByName('team_id').AsInteger := self.qryTeamsid.AsInteger;
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

procedure TdmUniDacPgChampionships.qryTeamsChampionshipsAfterScroll(DataSet: TDataSet);
begin
  try
    if (qryTeamChampPlayers.ParamByName('season_id').AsInteger <> qrySeasonsid.AsInteger) or
      (qryTeamChampPlayers.ParamByName('team_id').AsInteger <> qryTeamsChampionshipsteam_id.AsInteger) then
    begin
      self.qryTeamChampPlayers.ParamByName('season_id').AsInteger := self.qrySeasonsid.AsInteger;
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

procedure TdmUniDacPgChampionships.qryTeamsLastSeasonBeforeOpen(DataSet: TDataSet);
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

function TdmUniDacPgChampionships.SaveImagePlayerCareer(aFileName: string): int64;
begin
  Result := self.getServerCloud.LoadDBBlobFromFile(aFileName);
  self.qryPlayerAlbum.Edit;
  self.qryPlayerAlbum.FieldByName('an_image_id').AsInteger := Result;
  self.qryPlayerAlbum.Post;
end;

procedure TdmUniDacPgChampionships.SetJanuaDMAnagraph(const Value: TdmPgAnagraph);
begin
  FJanuaDMAnagraph := (Value);
  if assigned(self.FJanuaDMAnagraph) then
    self.SearchClubAnagraph;
end;

procedure TdmUniDacPgChampionships.SetJanuaServerCloud(const Value: TJanuaPostgresCloud);
begin
  FJanuaServerCloud := Value;
end;

procedure TdmUniDacPgChampionships.SetSeasonID(const Value: SmallInt);
begin
  if self.qrySeasons.Active then
    qrySeasons.Locate('season_id', Value, []);
end;

procedure TdmUniDacPgChampionships.SetupPlayerOriginTeamID(aSeason: SmallInt);
begin
  aSeason := IfThen(aSeason = 0, self.SeasonID, aSeason);
  // SELECT football.ft_player_origin(:p_season)
  prcPlayerTeamOrigin.ParamByName('p_season').AsInteger := aSeason;
  prcPlayerTeamOrigin.Execute;
end;

procedure TdmUniDacPgChampionships.UpdateRankings(const aFrom, aTo: integer);
begin
  self.dsChampRanking.DataSet.Close;
  // che fine ha fatto la procedura di Calcolo del Ranking ????.........................
  prcRanking.ParamByName('p_season_id').AsInteger := self.qrySeasonsid.AsInteger;
  prcRanking.ParamByName('p_league_id').AsInteger := self.qryChampionshipsleague_id.AsInteger;
  prcRanking.ExecProc;
  OpenDataset(self.dsChampRanking.DataSet);
  qryTeamRankings.Close;
  OpenDataset(self.qryTeamRankings);
  qryDynamicRanking.Close;
  qryDynamicRanking.ParamByName('from').AsInteger := aFrom;
  qryDynamicRanking.ParamByName('to').AsInteger := aTo;
  OpenDataset(qryDynamicRanking); // .Open;
end;

end.
