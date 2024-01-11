unit udmPgFootballServer;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  // Devart
  Data.DB, Uni, MemDS, DBAccess,
  // Datasnap
  Datasnap.Provider, Datasnap.DBClient,
  udmJanuaPostgresModel,
  Janua.Football.Intf, Janua.Core.Functions, System.Math, Janua.Core.Classes,
  Janua.Core.Exceptions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Stan.StorageBin,
  UniProvider, PostgreSQLUniProvider;

type
  TdmPgFootballServer = class(TdmJanuaPostgresModel)
    qryChampionships: TUniQuery;
    qryChampionshipsleague_name: TWideStringField;
    qryChampionshipsseason_id: TIntegerField;
    qryChampionshipsseason_des: TWideStringField;
    qryChampionshipsseason_code: TWideStringField;
    qryChampionshipsdb_schema_id: TIntegerField;
    qryTeam: TUniQuery;
    qryTeamteam_id: TIntegerField;
    qryTeamclub_id: TSmallintField;
    qryTeamteam_name: TWideStringField;
    qryMatchTeams: TUniQuery;
    qryMatchTeamsteam_id: TIntegerField;
    qryMatchTeamsclub_id: TSmallintField;
    qryMatchTeamsteam_name: TWideStringField;
    qryMatchEvents: TUniQuery;
    qryMatchEventsmatch_id: TIntegerField;
    qryMatchEventsteam_id: TSmallintField;
    qryMatchEventsplayer_id: TIntegerField;
    qryMatchEventsevent_id: TSmallintField;
    qryMatchEventsminute: TIntegerField;
    qryMatchEventsvalue: TSmallintField;
    qryMatchEventsmatch_events_row_id: TLargeintField;
    qryMatchEventslkpTeamPlayer: TStringField;
    qryMatchEventslkpEventType: TStringField;
    qryMatchEventsnotes: TWideStringField;
    qryMatchEventsfavor_team_id: TIntegerField;
    qryMatchEventsteamplayer: TWideStringField;
    qryMatchEventsfamily_name: TWideStringField;
    qryChampRanking: TUniQuery;
    qryChampRankingteam_name: TWideStringField;
    qryChampRankingranking_id: TIntegerField;
    qryChampRankingseason_id: TSmallintField;
    qryChampRankingleague_id: TSmallintField;
    qryChampRankingteam_id: TIntegerField;
    qryChampRankingpos: TSmallintField;
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
    qryChampRankingpoints: TSmallintField;
    qryChampRankinggoal_diff: TSmallintField;
    qryMatches: TUniQuery;
    dsMatchTeams: TDataSource;
    qryLastSeason: TUniQuery;
    qryLastSeasonseason_id: TIntegerField;
    qryGolRanking: TUniQuery;
    qryGolRankingfamily_name: TWideStringField;
    qryGolRankingteam_name: TWideStringField;
    qryGolRankingleague_id: TSmallintField;
    qryGolRankingseason_id: TSmallintField;
    qryGolRankingteam_id: TSmallintField;
    qryGolRankingplayer_id: TIntegerField;
    qryLastMatch: TUniQuery;
    qryLastMatchlast_match: TSmallintField;
    qryMatchesmatch_id: TIntegerField;
    qryMatchesleague_id: TSmallintField;
    qryMatchesseason_id: TSmallintField;
    qryMatchesmatch_day_number: TSmallintField;
    qryMatchesmatch_date: TDateField;
    qryMatcheshome_team_id: TSmallintField;
    qryMatchesvisitors_team_id: TSmallintField;
    qryMatchesgoal_home: TSmallintField;
    qryMatchesgoal_visitor: TSmallintField;
    qryMatchespoints_home: TSmallintField;
    qryMatchespoints_visitors: TSmallintField;
    qryMatchesnotes: TWideMemoField;
    qryMatchesconfirmed: TBooleanField;
    qryMatchesdb_schema_id: TIntegerField;
    qryMatchesinsert_date: TDateTimeField;
    qryMatchesupdate_date: TDateTimeField;
    qryMatcheshome_notes: TWideStringField;
    qryMatchesvisitors_notes: TWideStringField;
    qryMatcheshome_team: TWideStringField;
    qryMatchesvisitors_team: TWideStringField;
    qryMatchTeamPlayers: TUniQuery;
    qryMatchTeamPlayersmatch_id: TIntegerField;
    qryMatchTeamPlayersplayer_id: TIntegerField;
    qryMatchTeamPlayersminutes: TSmallintField;
    qryMatchTeamPlayersvote: TFloatField;
    qryMatchTeamPlayersplayed: TBooleanField;
    qryMatchTeamPlayersteam_id: TSmallintField;
    qryMatchTeamPlayerspos: TSmallintField;
    qryMatchTeamPlayersfull_name: TWideStringField;
    qryMatchTeamPlayerssubst_id: TIntegerField;
    qryMatchTeamPlayersfamily_name: TWideStringField;
    qryMatchTeamPlayersfirst_name: TWideStringField;
    qryMatchTeamPlayersgoal: TSmallintField;
    qryMatchTeamPlayersowngoal: TSmallintField;
    qryMatchTeamPlayerslostgoal: TSmallintField;
    qryMatchTeamPlayersrole_id: TSmallintField;
    qryMatchTeamPlayerssince: TSmallintField;
    qryMatchTeamPlayersuntil: TSmallintField;
    qryMatchTeamPlayerssent_off: TSmallintField;
    qryMatchTeamPlayersinjuries: TSmallintField;
    qryMatchTeamPlayersrole_code: TWideStringField;
    qryMatchTeamPlayersrole_name: TWideStringField;
    qrySeasons: TUniQuery;
    qrySeasonsseason_id: TIntegerField;
    qrySeasonsseason_des: TWideStringField;
    qrySeasonsseason_code: TWideStringField;
    qrySeasonsdb_schema_id: TIntegerField;
    qryNextMatches: TUniQuery;
    IntegerField1: TIntegerField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    DateField1: TDateField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    SmallintField7: TSmallintField;
    SmallintField8: TSmallintField;
    SmallintField9: TSmallintField;
    WideMemoField1: TWideMemoField;
    BooleanField1: TBooleanField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TDateTimeField;
    SQLTimeStampField2: TDateTimeField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    qryChampionshipsleague_id: TSmallintField;
    qryMatchDay: TUniQuery;
    qryMatchDayseason_des: TWideStringField;
    qryMatchDayseason_code: TWideStringField;
    qryMatchDayleague_name: TWideStringField;
    qryMatchDayseason_id: TSmallintField;
    qryMatchDayleague_id: TSmallintField;
    qryMatchDaymatch_day_number: TSmallintField;
    qryMatchDayrest_team_id: TIntegerField;
    qryMatchDaydb_schema_id: TIntegerField;
    qryChampionship: TUniQuery;
    qryChampionshipleague_id: TSmallintField;
    qryChampionshipleague_name: TWideStringField;
    qryChampionshipseason_id: TIntegerField;
    qryChampionshipseason_des: TWideStringField;
    qryChampionshipseason_code: TWideStringField;
    qryChampionshipdb_schema_id: TIntegerField;
    qryChampionshippromoted: TSmallintField;
    qryChampionshipplayoff: TSmallintField;
    qryChampionshiprelegation: TSmallintField;
    qryChampionshipchampions: TSmallintField;
    qryChampionshipplayout: TSmallintField;
    qryChampionshipteams: TSmallintField;
    qryChampRankingscoring_average: TFloatField;
    qryMatchesrownum: TLargeintField;
    qryMatchesmatch_time: TDateTimeField;
    qryMatchesreferee_id: TIntegerField;
    qryMatchesreferee_second_id: TIntegerField;
    qryMatchesreferee_third_id: TIntegerField;
    qryMatchessuspended: TBooleanField;
    qryMatchespostponed: TBooleanField;
    qryMatchesforfeit: TBooleanField;
    qryMatchesremote_id: TIntegerField;
    qryMatchesfiled_id: TIntegerField;
    qryGolRankingrownum: TLargeintField;
    qryGolRankingfirst_name: TWideStringField;
    qryGolRankinggoals: TLargeintField;
    qryNextMatchesrownum: TLargeintField;
    qryNextMatchesmatch_time: TDateTimeField;
    qryNextMatchesreferee_id: TIntegerField;
    qryNextMatchesreferee_second_id: TIntegerField;
    qryNextMatchesreferee_third_id: TIntegerField;
    qryNextMatchessuspended: TBooleanField;
    qryNextMatchespostponed: TBooleanField;
    qryNextMatchesforfeit: TBooleanField;
    qryNextMatchesremote_id: TIntegerField;
    qryNextMatchesfiled_id: TIntegerField;
    qryNextMatchDay: TUniQuery;
    qryNextMatchDayseason_des: TWideStringField;
    qryNextMatchDayseason_code: TWideStringField;
    qryNextMatchDayleague_name: TWideStringField;
    qryNextMatchDayseason_id: TSmallintField;
    qryNextMatchDayleague_id: TSmallintField;
    qryNextMatchDaymatch_day_number: TSmallintField;
    qryNextMatchDayrest_team_id: TIntegerField;
    qryNextMatchDaydb_schema_id: TIntegerField;
    qryMatchDaymatch_day_date: TDateField;
    qryMatchDaymatch_day_played: TDateField;
    qryNextMatchDaymatch_day_date: TDateField;
    qryNextMatchDaymatch_day_played: TDateField;
    qryLkpEventTypes: TUniQuery;
    qryChampionshipspromoted: TSmallintField;
    qryChampionshipsplayoff: TSmallintField;
    qryChampionshipsrelegation: TSmallintField;
    qryChampionshipschampions: TSmallintField;
    qryChampionshipsplayout: TSmallintField;
    qryChampionshipsteams: TSmallintField;
    qryChampionshipsiso_country_code: TWideStringField;
    qryChampionshipsleague_position: TSmallintField;
    qryChampionshipsleague_code: TWideStringField;
    qryChampionshipsrelegationcss: TWideStringField;
    qryChampionshipsplayoutcss: TWideStringField;
    qryChampionshipschampionscss: TWideStringField;
    qryChampionshipsplayoffcss: TWideStringField;
    qryChampionshipspromotedcss: TWideStringField;
    qryChampionshipsremote_id: TSmallintField;
    qryMatchTeamPlayersanagraph_id: TIntegerField;
    qryMatchTeamPlayersbirth_date: TDateField;
    qryMatchTeamPlayersbirth_year: TSmallintField;
    qryMatchTeamPlayersbirth_place: TWideStringField;
    qryMatchTeamPlayersnotes: TWideMemoField;
    qryMatchTeamPlayersrole: TSmallintField;
    qryMatchTeamPlayersrow_name: TWideStringField;
    qryMatchDetail: TUniQuery;
    qryMatchDetailmatch_id: TIntegerField;
    qryMatchDetailleague_id: TSmallintField;
    qryMatchDetailseason_id: TSmallintField;
    qryMatchDetailmatch_day_number: TSmallintField;
    qryMatchDetailmatch_date: TDateField;
    qryMatchDetailhome_team_id: TSmallintField;
    qryMatchDetailvisitors_team_id: TSmallintField;
    qryMatchDetailgoal_home: TSmallintField;
    qryMatchDetailgoal_visitor: TSmallintField;
    qryMatchDetailpoints_home: TSmallintField;
    qryMatchDetailpoints_visitors: TSmallintField;
    qryMatchDetailnotes: TWideMemoField;
    qryMatchDetailconfirmed: TBooleanField;
    qryMatchDetaildb_schema_id: TIntegerField;
    qryMatchDetailinsert_date: TDateTimeField;
    qryMatchDetailupdate_date: TDateTimeField;
    qryMatchDetailhome_notes: TWideStringField;
    qryMatchDetailvisitors_notes: TWideStringField;
    qryMatchDetailfiled_id: TIntegerField;
    qryMatchDetailremote_id: TIntegerField;
    qryMatchDetailforfeit: TBooleanField;
    qryMatchDetailpostponed: TBooleanField;
    qryMatchDetailsuspended: TBooleanField;
    qryMatchDetailreferee_third_id: TIntegerField;
    qryMatchDetailreferee_second_id: TIntegerField;
    qryMatchDetailreferee_id: TIntegerField;
    qryMatchDetailmatch_time: TDateTimeField;
    qryMatchDetailhome_team: TWideStringField;
    qryMatchDetailvisitors_team: TWideStringField;
    dsMatchDetail: TDataSource;
    qryMatchHomePlayers: TUniQuery;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    SmallintField10: TSmallintField;
    FloatField1: TFloatField;
    BooleanField2: TBooleanField;
    SmallintField11: TSmallintField;
    SmallintField12: TSmallintField;
    WideStringField5: TWideStringField;
    IntegerField5: TIntegerField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    SmallintField13: TSmallintField;
    SmallintField14: TSmallintField;
    SmallintField15: TSmallintField;
    SmallintField16: TSmallintField;
    SmallintField17: TSmallintField;
    SmallintField18: TSmallintField;
    SmallintField19: TSmallintField;
    SmallintField20: TSmallintField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    IntegerField6: TIntegerField;
    DateField2: TDateField;
    SmallintField21: TSmallintField;
    WideStringField10: TWideStringField;
    WideMemoField2: TWideMemoField;
    SmallintField22: TSmallintField;
    WideStringField11: TWideStringField;
    qryMatchVisitorsPlayers: TUniQuery;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    SmallintField26: TSmallintField;
    FloatField2: TFloatField;
    BooleanField3: TBooleanField;
    SmallintField27: TSmallintField;
    SmallintField28: TSmallintField;
    WideStringField15: TWideStringField;
    IntegerField13: TIntegerField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    SmallintField29: TSmallintField;
    SmallintField30: TSmallintField;
    SmallintField31: TSmallintField;
    SmallintField32: TSmallintField;
    SmallintField33: TSmallintField;
    SmallintField34: TSmallintField;
    SmallintField35: TSmallintField;
    SmallintField36: TSmallintField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    IntegerField14: TIntegerField;
    DateField3: TDateField;
    SmallintField37: TSmallintField;
    WideStringField20: TWideStringField;
    WideMemoField3: TWideMemoField;
    SmallintField38: TSmallintField;
    WideStringField21: TWideStringField;
    qryMatchDetailEvents: TUniQuery;
    qryMatchDetailEventsmatch_id: TIntegerField;
    qryMatchDetailEventsteam_id: TSmallintField;
    qryMatchDetailEventsplayer_id: TIntegerField;
    qryMatchDetailEventsevent_id: TSmallintField;
    qryMatchDetailEventsminute: TIntegerField;
    qryMatchDetailEventsvalue: TSmallintField;
    qryMatchDetailEventsmatch_events_row_id: TLargeintField;
    qryMatchDetailEventsnotes: TWideStringField;
    qryMatchDetailEventsfavor_team_id: TIntegerField;
    qryMatchDetailEventsteamplayer: TWideStringField;
    qryMatchDetailEventsfamily_name: TWideStringField;
    qryMatchDetailEventsteam_name: TWideStringField;
    qryMatchDetailEventsanagraph_id: TIntegerField;
    qryMatchDetailEventsbirth_date: TDateField;
    qryMatchDetailEventsbirth_year: TSmallintField;
    qryMatchDetailEventsfirst_name: TWideStringField;
    qryMatchDetailEventsbirth_place: TWideStringField;
    qryMatchDetailEventsrole: TSmallintField;
    qryChampionshipiso_country_code: TWideStringField;
    qryChampionshipleague_position: TSmallintField;
    qryChampionshipleague_code: TWideStringField;
    qryChampionshiprelegationcss: TWideStringField;
    qryChampionshipplayoutcss: TWideStringField;
    qryChampionshipchampionscss: TWideStringField;
    qryChampionshipplayoffcss: TWideStringField;
    qryChampionshippromotedcss: TWideStringField;
    qryMatchesmatch_name: TStringField;
    qryCalendarMatches: TUniQuery;
    qryCalendarMatchesrownum: TLargeintField;
    qryCalendarMatchesmatch_id: TIntegerField;
    qryCalendarMatchesleague_id: TSmallintField;
    qryCalendarMatchesseason_id: TSmallintField;
    qryCalendarMatchesmatch_day_number: TSmallintField;
    qryCalendarMatchesmatch_date: TDateField;
    qryCalendarMatcheshome_team_id: TSmallintField;
    qryCalendarMatchesvisitors_team_id: TSmallintField;
    qryCalendarMatchesgoal_home: TSmallintField;
    qryCalendarMatchesgoal_visitor: TSmallintField;
    qryCalendarMatchespoints_home: TSmallintField;
    qryCalendarMatchespoints_visitors: TSmallintField;
    qryCalendarMatchesnotes: TWideMemoField;
    qryCalendarMatchesconfirmed: TBooleanField;
    qryCalendarMatchesdb_schema_id: TIntegerField;
    qryCalendarMatchesinsert_date: TDateTimeField;
    qryCalendarMatchesupdate_date: TDateTimeField;
    qryCalendarMatcheshome_notes: TWideStringField;
    qryCalendarMatchesvisitors_notes: TWideStringField;
    qryCalendarMatchesfiled_id: TIntegerField;
    qryCalendarMatchesremote_id: TIntegerField;
    qryCalendarMatchesforfeit: TBooleanField;
    qryCalendarMatchespostponed: TBooleanField;
    qryCalendarMatchessuspended: TBooleanField;
    qryCalendarMatchesreferee_third_id: TIntegerField;
    qryCalendarMatchesreferee_second_id: TIntegerField;
    qryCalendarMatchesreferee_id: TIntegerField;
    qryCalendarMatchesmatch_time: TDateTimeField;
    qryCalendarMatcheshome_team: TWideStringField;
    qryCalendarMatchesvisitors_team: TWideStringField;
    qryCalendarDay: TUniQuery;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    SmallintField23: TSmallintField;
    SmallintField24: TSmallintField;
    SmallintField25: TSmallintField;
    DateField4: TDateField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    DateField5: TDateField;
    dsCalendarDay: TUniDataSource;
    qryFirstSeasonLeague: TUniQuery;
    qryFirstSeasonLeagueleague_id: TSmallintField;
    qryFirstSeasonLeagueleague_name: TWideStringField;
    qryFirstSeasonLeagueiso_country_code: TWideStringField;
    qryFirstSeasonLeagueleague_position: TSmallintField;
    qryFirstSeasonLeagueleague_code: TWideStringField;
    qryFirstSeasonLeaguedb_schema_id: TSmallintField;
    qryFirstSeasonLeagueremote_id: TSmallintField;
    qryFirstSeasonLeaguepromotedcss: TWideStringField;
    qryFirstSeasonLeagueplayoffcss: TWideStringField;
    qryFirstSeasonLeaguechampionscss: TWideStringField;
    qryFirstSeasonLeagueplayoutcss: TWideStringField;
    qryFirstSeasonLeaguerelegationcss: TWideStringField;
    qryMatchDetailmatch_level: TSmallintField;
    qryMatchesmatch_level: TSmallintField;
    qryTeamPlayers: TUniQuery;
    dsChampionshipTeam: TDataSource;
    qryTeamtrainer_id: TIntegerField;
    qryTeamremote_id: TIntegerField;
    qryTeamdb_schema_id: TIntegerField;
    qryChampionshipTeam: TUniQuery;
    IntegerField9: TIntegerField;
    SmallintField39: TSmallintField;
    WideStringField22: TWideStringField;
    IntegerField10: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    qryChampionshipTeamranking_id: TIntegerField;
    qryChampionshipTeamseason_id: TSmallintField;
    qryChampionshipTeamleague_id: TSmallintField;
    qryChampionshipTeampos: TSmallintField;
    qryChampionshipTeamplayed_matches: TSmallintField;
    qryChampionshipTeamwon_matches: TSmallintField;
    qryChampionshipTeamlost_matches: TSmallintField;
    qryChampionshipTeamtied_matches: TSmallintField;
    qryChampionshipTeamhome_matches: TSmallintField;
    qryChampionshipTeamhome_won: TSmallintField;
    qryChampionshipTeamhome_lost: TSmallintField;
    qryChampionshipTeamhome_tied: TSmallintField;
    qryChampionshipTeamoutside_played: TSmallintField;
    qryChampionshipTeamoutside_won: TSmallintField;
    qryChampionshipTeamoutside_lost: TSmallintField;
    qryChampionshipTeamoutside_tied: TSmallintField;
    qryChampionshipTeamgoal_done: TSmallintField;
    qryChampionshipTeamgoal_lost: TSmallintField;
    qryChampionshipTeampoints: TSmallintField;
    qryChampionshipTeamgoal_diff: TSmallintField;
    dsChampionship: TUniDataSource;
    qryChampionshipTeamscoring_average: TFloatField;
    qryTeamMatches: TUniQuery;
    qryTeamMatchesrownum: TLargeintField;
    qryTeamMatchesmatch_id: TIntegerField;
    qryTeamMatchesleague_id: TSmallintField;
    qryTeamMatchesseason_id: TSmallintField;
    qryTeamMatchesmatch_day_number: TSmallintField;
    qryTeamMatchesmatch_date: TDateField;
    qryTeamMatcheshome_team_id: TSmallintField;
    qryTeamMatchesvisitors_team_id: TSmallintField;
    qryTeamMatchesgoal_home: TSmallintField;
    qryTeamMatchesgoal_visitor: TSmallintField;
    qryTeamMatchespoints_home: TSmallintField;
    qryTeamMatchespoints_visitors: TSmallintField;
    qryTeamMatchesnotes: TWideMemoField;
    qryTeamMatchesconfirmed: TBooleanField;
    qryTeamMatchesdb_schema_id: TIntegerField;
    qryTeamMatchesinsert_date: TDateTimeField;
    qryTeamMatchesupdate_date: TDateTimeField;
    qryTeamMatcheshome_notes: TWideStringField;
    qryTeamMatchesvisitors_notes: TWideStringField;
    qryTeamMatchesfiled_id: TIntegerField;
    qryTeamMatchesremote_id: TIntegerField;
    qryTeamMatchesforfeit: TBooleanField;
    qryTeamMatchespostponed: TBooleanField;
    qryTeamMatchessuspended: TBooleanField;
    qryTeamMatchesreferee_third_id: TIntegerField;
    qryTeamMatchesreferee_second_id: TIntegerField;
    qryTeamMatchesreferee_id: TIntegerField;
    qryTeamMatchesmatch_time: TDateTimeField;
    qryTeamMatcheshome_team: TWideStringField;
    qryTeamMatchesvisitors_team: TWideStringField;
    qryTeamMatchesmatch_level: TSmallintField;
    dsPlayer: TDataSource;
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
    dsTeam: TDataSource;
    qryPlayerCareer: TUniQuery;
    qryPlayer: TUniQuery;
    qryPlayeranagraph_id: TIntegerField;
    qryPlayerbirth_date: TDateField;
    qryPlayerbirth_year: TSmallintField;
    qryPlayerfirst_name: TWideStringField;
    qryPlayerfamily_name: TWideStringField;
    qryPlayerbirth_place: TWideStringField;
    qryPlayernotes: TWideMemoField;
    qryPlayerrole: TSmallintField;
    qryPlayerfull_name: TWideStringField;
    qryGolRankinggoal: TLargeintField;
    qryTeamPlayersteam_id: TSmallintField;
    qryTeamPlayersplayer_id: TIntegerField;
    qryTeamPlayersseason_id: TSmallintField;
    qryTeamPlayerssince: TDateField;
    qryTeamPlayersuntil: TDateField;
    qryTeamPlayersclub_origin_id: TIntegerField;
    qryTeamPlayersgoal: TSmallintField;
    qryTeamPlayersowngoal: TSmallintField;
    qryTeamPlayerslostgoal: TSmallintField;
    qryTeamPlayerssent_off: TSmallintField;
    qryTeamPlayersinjuries: TSmallintField;
    qryTeamPlayersminutes: TSmallintField;
    qryTeamPlayersmatches: TIntegerField;
    qryTeamPlayersgoals: TIntegerField;
    qryTeamPlayersvotes: TFloatField;
    qryTeamPlayersanagraph_id: TIntegerField;
    qryTeamPlayersbirth_date: TDateField;
    qryTeamPlayersbirth_year: TSmallintField;
    qryTeamPlayersfirst_name: TWideStringField;
    qryTeamPlayersfamily_name: TWideStringField;
    qryTeamPlayersbirth_place: TWideStringField;
    qryTeamPlayersnotes: TWideMemoField;
    qryTeamPlayersrole: TSmallintField;
    qryTeamPlayersleague_id: TIntegerField;
    qryChampionshipTeamteam_id_1: TIntegerField;
    qryTeamPlayersteam_name: TWideMemoField;
    qryMatchHomePlayersseason_id: TIntegerField;
    qryMatchHomePlayersleague_id: TIntegerField;
    qryMatchVisitorsPlayersseason_id: TIntegerField;
    qryMatchVisitorsPlayersleague_id: TIntegerField;
    qryMatchHomePlayersteam_name: TWideStringField;
    qryMatchVisitorsPlayersteam_name: TWideStringField;
    qryPlayerCareerdb_schema_id: TIntegerField;
    qryPlayerCareercareer_id: TIntegerField;
    qryPlayerCareermatches: TWideStringField;
    qryPlayerCareergoals: TWideStringField;
    qryPlayerCareerplayer_id: TIntegerField;
    qryPlayerCareernotes: TWideStringField;
    qryPlayerCareervotes: TFloatField;
    qryPlayerCareerminutes: TIntegerField;
    qryPlayerCareerimage_id: TLargeintField;
    qryPlayerCareerseason_id: TIntegerField;
    qryPlayerCareerseason_des: TWideStringField;
    qryPlayerCareerseason_code: TWideStringField;
    qryPlayerCareerdb_schema_id_1: TIntegerField;
    qryPlayerCareerteam_name: TWideStringField;
    qryPlayerCareerteam_id: TIntegerField;
    qryPlayerCareerleague_id: TSmallintField;
    qryPlayerCareerleague_name: TWideStringField;
    qryPlayerCareeriso_country_code: TWideStringField;
    qryPlayerCareerleague_position: TSmallintField;
    qryPlayerCareerleague_code: TWideStringField;
    qryPlayerCareerdb_schema_id_2: TSmallintField;
    qryPlayerCareerremote_id: TSmallintField;
    qryPlayerCareerpromotedcss: TWideStringField;
    qryPlayerCareerplayoffcss: TWideStringField;
    qryPlayerCareerchampionscss: TWideStringField;
    qryPlayerCareerplayoutcss: TWideStringField;
    qryPlayerCareerrelegationcss: TWideStringField;
    qryPlayerCareerall_players: TBooleanField;
    procedure cdsSeasonsAfterScroll(DataSet: TDataSet);
    procedure cdsChampionshipsAfterScroll(DataSet: TDataSet);
    procedure qryChampRankingCalcFields(DataSet: TDataSet);
    procedure qryMatchDetailAfterOpen(DataSet: TDataSet);
    procedure qryMatchDetailAfterClose(DataSet: TDataSet);
    procedure qryMatchesCalcFields(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure qryChampionshipTeamCalcFields(DataSet: TDataSet);
    procedure qryPlayerAfterOpen(DataSet: TDataSet);
  strict protected
    FFootballSettings: IFootballSettings;
  strict protected
    procedure SetFootballSettings(const Value: IFootballSettings);
  public
    property FootballSettings: IFootballSettings read FFootballSettings write SetFootballSettings;
  strict protected
    Fnextmatchescount: Integer;
    Fmatchescount: Integer;
    Frankingcount: Integer;
    FChampionshipsCount: Integer;
    FSeasonsCount: Integer;
    procedure Setmatchescount(const Value: Integer);
    procedure Setnextmatchescount(const Value: Integer);
    procedure Setrankingcount(const Value: Integer);
    procedure RefreshData;
    procedure SetChampionshipsCount(const Value: Integer);
    procedure SetSeasonsCount(const Value: Integer);
    function OpenLastSeason: Integer;
    function OpenFirstLeague: Integer;
    procedure CheckSeasonID;
    procedure CheckChampionshipID;
    procedure CheckMatchDay;
    { Private declarations }
  public
    { Football Functions and Procedure }
    procedure OpenChampionshipTeam; overload;
    procedure OpenChampionshipTeam(aSeasonID, aLeagueID, aTeam: Integer); overload;
    procedure OpenSeasons;
    procedure OpenChampionShips; overload;
    procedure OpenChampionShips(aSeasonID: Integer); overload;
    procedure OpenMatchDetail; overload;
    procedure OpenMatchDetail(aMatchID: Int64); overload;
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: Integer); overload;
    procedure OpenChampionship;
    procedure TestOpenChampionship;
    procedure OpenChampionshipSummary;
    procedure OpenGoalRanking;
    procedure OpenMatches; overload;
    procedure OpenMatches(aSeasonID, aLeagueID, aMatchNumber: Integer); overload;
    procedure OpenNextMatches;
    procedure OpenMatchTeam(aMatchID: Int64; aTeamID: Integer);
    procedure OpenRanking; overload;
    procedure OpenRanking(aSeasonID, aChampionshipID: Integer); overload;
    procedure OpenSeasonChampionship(aSeasonID, aChampionshipID: Integer);
    { Deprecated Functions and Procedure }
    function GetChampionshipDayName: string;
    function GetLastMatchDay: smallint;
    procedure OpenCDSGolRanking(aSeasonID, aLeague, aDay: Integer);
    procedure SetupSeason(aSeasonID: Integer; aLeagueID: smallint);
    procedure OpenDefaultSeason;
    procedure OpenDefaultSeasonChampionship;
    procedure SetNextMatchDay;
    procedure OpenCalendar;
    procedure OpenLiveScore;
    procedure OpenTeamPlayers(aTeamID, aSeasonID: Int16);
    procedure OpenPlayerCareer; overload;
    procedure OpenPlayerCareer(aID: Integer); overload;
  published
    { Public declarations }
    property SeasonsCount: Integer read FSeasonsCount write SetSeasonsCount;
    property ChampionshipsCount: Integer read FChampionshipsCount write SetChampionshipsCount;
    property rankingcount: Integer read Frankingcount write Setrankingcount;
    property matchescount: Integer read Fmatchescount write Setmatchescount;
    property nextmatchescount: Integer read Fnextmatchescount write Setnextmatchescount;

  end;

var
  dmPgFootballServer: TdmPgFootballServer;

implementation

{$R *.dfm}
{ TdmJanuaPostgresModel1 }

procedure TdmPgFootballServer.cdsChampionshipsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // self.Setleague_id(self.qryChampionshipsleague_id.AsInteger);
end;

procedure TdmPgFootballServer.cdsSeasonsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // self.Setseason_id(self.qrySeasonsseason_id.AsInteger);
  // if Assigned(dsLeagues.DataSet) then
  // if self.dsLeagues.DataSet.FieldByName('league_id').AsInteger <> self.getLeague_ID then
  // self.Setleague_id(self.dsLeagues.DataSet.FieldByName('league_id').AsInteger);
end;

procedure TdmPgFootballServer.CheckChampionshipID;
begin
  if FFootballSettings.league_id = 0 then
    FFootballSettings.league_id := self.OpenFirstLeague;
end;

procedure TdmPgFootballServer.CheckMatchDay;
begin
  if (FFootballSettings.match_day = 0) and (FFootballSettings.match_id = 0) then
    self.GetLastMatchDay
end;

procedure TdmPgFootballServer.CheckSeasonID;
begin
  if self.FFootballSettings.season_id = 0 then
    OpenLastSeason

end;

procedure TdmPgFootballServer.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  // this is the inherited Destroy procedure from the original Server.................................
end;

function TdmPgFootballServer.GetChampionshipDayName: string;
begin
  OpenChampionship;
  Result := 'Marcatori ' + qryChampionshipsleague_name.AsWideString + ' ' +
    qryChampionshipsseason_des.AsWideString;
end;

function TdmPgFootballServer.GetLastMatchDay: smallint;
begin
  if (qryLastMatch.ParamByName('season_id').Value <> self.FFootballSettings.season_id) or
    (qryLastMatch.ParamByName('league_id').Value <> FFootballSettings.league_id) or
    (FFootballSettings.match_day = 0) then
  begin
    qryLastMatch.Close;
    self.qryLastMatch.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    self.qryLastMatch.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    ServerFunctions.OpenDataset(qryLastMatch);
    FFootballSettings.match_day := IfThen(qryLastMatchlast_match.AsInteger = 0, 1,
      qryLastMatchlast_match.AsInteger);
    self.qryLastMatch.Close;
  end;
  Result := FFootballSettings.match_day;
end;

procedure TdmPgFootballServer.OpenGoalRanking;
begin
  self.OpenChampionship;
  if (GetParamByName('season_id', qryGolRanking).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', qryGolRanking).Value <> FFootballSettings.league_id) or
    (not self.qryGolRanking.Active) then
  begin
    qryGolRanking.Close;
    GetParamByName('season_id', qryGolRanking).Value := FFootballSettings.season_id;
    GetParamByName('league_id', qryGolRanking).Value := FFootballSettings.league_id;
    ServerFunctions.OpenDataset(qryGolRanking);
    qryGolRanking.First;
  end;
end;

procedure TdmPgFootballServer.OpenMatches;
begin
  /// 2016-09-18 aggiunta la tabella Match Day per avere l'intestazione del
  /// match day sulla tabella risultati e classifiche....................
  OpenChampionship;
  if (GetParamByName('season_id', qryMatchDay).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', qryMatchDay).Value <> FFootballSettings.league_id) or
    (GetParamByName('match_day_number', qryMatchDay).Value <> FFootballSettings.match_day) or
    (not qryMatchDay.Active) then
  begin
    qryMatchDay.Close;
    GetParamByName('season_id', qryMatchDay).Value := FFootballSettings.season_id;
    GetParamByName('league_id', qryMatchDay).Value := FFootballSettings.league_id;
    GetParamByName('match_day_number', qryMatchDay).Value := FFootballSettings.match_day;
    ServerFunctions.OpenDataset(qryMatchDay);
  end;

  if (GetParamByName('season_id', qryMatches).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', qryMatches).Value <> FFootballSettings.league_id) or
    (GetParamByName('match_day_number', qryMatches).Value <> FFootballSettings.match_day) or
    (not qryMatches.Active) then
  begin
    qryMatches.Close;
    GetParamByName('season_id', qryMatches).Value := FFootballSettings.season_id;
    GetParamByName('league_id', qryMatches).Value := FFootballSettings.league_id;
    GetParamByName('match_day_number', qryMatches).Value := FFootballSettings.match_day;
    ServerFunctions.OpenDataset(qryMatches);
  end;

  self.Fmatchescount := self.qryMatches.RecordCount;
end;

procedure TdmPgFootballServer.OpenMatchDetail;
begin
  self.OpenChampionship;
  if FFootballSettings.match_id > 0 then
  begin
    self.qryMatchDetail.ParamByName('match_day_number').AsInteger := 0;
    self.qryMatchDetail.ParamByName('league_id').AsInteger := 0;
    self.qryMatchDetail.ParamByName('season_id').AsInteger := 0;
    self.qryMatchDetail.ParamByName('match_id').AsLargeInt := FFootballSettings.match_id
  end
  else
  begin
    {
      match_day_number = :match_day_number
      and c.league_id = :league_id
      and c.season_id = :season_id
      and :match_id = 0
    }
    self.qryMatchDetail.ParamByName('match_id').AsLargeInt := 0;
    self.qryMatchDetail.ParamByName('match_day_number').AsInteger := FFootballSettings.match_day;
    self.qryMatchDetail.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    self.qryMatchDetail.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  end;
  ServerFunctions.OpenDataset(qryMatchDetail);
  if self.qryChampionship.RecordCount = 0 then
  begin
    FFootballSettings.season_id := qryMatchDetailseason_id.AsInteger;
    FFootballSettings.league_id := qryMatchDetailleague_id.AsInteger;
    FFootballSettings.match_day := qryMatchDetailmatch_day_number.AsInteger;
    self.OpenChampionship;
  end;
end;

procedure TdmPgFootballServer.OpenMatchDetail(aMatchID: Int64);
begin
  FFootballSettings.match_id := aMatchID;
  self.OpenMatchDetail;
end;

procedure TdmPgFootballServer.OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: Integer);
begin
  FFootballSettings.match_id := 0;
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aLeagueID;
  FFootballSettings.match_day := aMatchNumber;
  self.OpenMatchDetail;
end;

procedure TdmPgFootballServer.OpenMatches(aSeasonID, aLeagueID, aMatchNumber: Integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aLeagueID;
  FFootballSettings.match_day := aMatchNumber;
  self.OpenMatches;
end;

procedure TdmPgFootballServer.OpenMatchTeam(aMatchID: Int64; aTeamID: Integer);
begin
  FFootballSettings.match_id := aMatchID;
  FFootballSettings.match_team := aTeamID;
  GetParamByName('team_id', qryTeam).Value := aTeamID;
  ServerFunctions.OpenDataset(qryTeam);

  self.qryMatchTeamPlayers.Close;
  GetParamByName('team_id', qryMatchTeamPlayers).Value := aTeamID;
  GetParamByName('match_id', qryMatchTeamPlayers).Value := aMatchID;
  ServerFunctions.OpenDataset(qryMatchTeamPlayers);
end;

procedure TdmPgFootballServer.OpenNextMatches;
begin
  if self.FFootballSettings.match_day = 0 then
    self.GetLastMatchDay;

  if (GetParamByName('season_id', qryNextMatches).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', qryNextMatches).Value <> FFootballSettings.league_id) or
    (GetParamByName('match_day_number', qryNextMatches).Value <> FFootballSettings.match_day + 1) then
  begin
    qryNextMatches.Close();
    GetParamByName('season_id', qryNextMatches).Value := FFootballSettings.season_id;
    GetParamByName('league_id', qryNextMatches).Value := FFootballSettings.league_id;
    GetParamByName('match_day_number', qryNextMatches).Value := FFootballSettings.match_day + 1;
    ServerFunctions.OpenDataset(qryNextMatches);
  end;

  if (GetParamByName('season_id', qryNextMatchDay).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', qryNextMatchDay).Value <> FFootballSettings.league_id) or
    (GetParamByName('match_day_number', qryNextMatchDay).Value <> FFootballSettings.match_day + 1) or
    (not qryNextMatchDay.Active) then
  begin
    qryNextMatchDay.Close;
    GetParamByName('season_id', qryNextMatchDay).Value := FFootballSettings.season_id;
    GetParamByName('league_id', qryNextMatchDay).Value := FFootballSettings.league_id;
    GetParamByName('match_day_number', qryNextMatchDay).Value := FFootballSettings.match_day + 1;
    ServerFunctions.OpenDataset(qryNextMatchDay);
  end;

  self.Fnextmatchescount := qryNextMatches.RecordCount;

end;

procedure TdmPgFootballServer.OpenPlayerCareer;
begin
  self.qryPlayer.Close;
  self.qryPlayer.ParamByName('player_id').AsInteger := FFootballSettings.player_id;
  self.qryPlayer.Open;
end;

procedure TdmPgFootballServer.OpenPlayerCareer(aID: Integer);
begin
  FFootballSettings.player_id := aID;
  self.OpenPlayerCareer;
end;

procedure TdmPgFootballServer.OpenRanking(aSeasonID, aChampionshipID: Integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aChampionshipID;
  self.OpenRanking;
end;

procedure TdmPgFootballServer.OpenRanking;
begin
  if (GetParamByName('season_id', qryChampRanking).Value <> FFootballSettings.season_id) or
    (GetParamByName('league_id', qryChampRanking).Value <> FFootballSettings.league_id) then
  begin
    qryChampRanking.Close();

    GetParamByName('season_id', qryChampRanking).AsInteger := FFootballSettings.season_id;
    GetParamByName('league_id', qryChampRanking).AsInteger := FFootballSettings.league_id;

    ServerFunctions.OpenDataset(qryChampRanking);
  end;

  self.rankingcount := qryChampRanking.RecordCount;
end;

procedure TdmPgFootballServer.OpenSeasonChampionship(aSeasonID, aChampionshipID: Integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aChampionshipID;
  RefreshData;
end;

procedure TdmPgFootballServer.OpenSeasons;
begin
  if not self.qrySeasons.Prepared then
    self.qrySeasons.Prepare;
  ServerFunctions.OpenDataset(qrySeasons);
  self.FSeasonsCount := self.qrySeasons.RecordCount;
end;

procedure TdmPgFootballServer.OpenTeamPlayers(aTeamID, aSeasonID: Int16);
begin
  self.qryTeamPlayers.Close;
  self.qryTeamPlayers.ParamByName('season_id').AsSmallInt := aSeasonID;
  self.qryTeamPlayers.ParamByName('team_id').AsSmallInt := aSeasonID;
  qryTeamPlayers.Open;
end;

procedure TdmPgFootballServer.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  // inherited before connect session ............................................................
end;

procedure TdmPgFootballServer.qryChampionshipTeamCalcFields(DataSet: TDataSet);
begin
  qryChampionshipTeamscoring_average.AsInteger :=
    (-3 * qryChampionshipTeamhome_matches.AsInteger + qryChampionshipTeamhome_won.AsInteger * 3 +
    qryChampionshipTeamhome_tied.AsInteger);

  qryChampionshipTeamscoring_average.AsInteger := qryChampionshipTeamscoring_average.AsInteger +
    (-qryChampionshipTeamoutside_played.AsInteger + qryChampionshipTeamoutside_won.AsInteger * 3 +
    qryChampionshipTeamoutside_tied.AsInteger);

end;

procedure TdmPgFootballServer.qryChampRankingCalcFields(DataSet: TDataSet);
begin
  qryChampRankingscoring_average.AsInteger :=
    (-3 * qryChampRankinghome_matches.AsInteger + qryChampRankinghome_won.AsInteger * 3 +
    qryChampRankinghome_tied.AsInteger);

  qryChampRankingscoring_average.AsInteger := qryChampRankingscoring_average.AsInteger +
    (-qryChampRankingoutside_played.AsInteger + qryChampRankingoutside_won.AsInteger * 3 +
    qryChampRankingoutside_tied.AsInteger);
end;

procedure TdmPgFootballServer.qryMatchDetailAfterClose(DataSet: TDataSet);
begin
  inherited;
  self.qryMatchDetailEvents.Close;
  self.qryMatchHomePlayers.Close;
  self.qryMatchVisitorsPlayers.Close;
end;

procedure TdmPgFootballServer.qryMatchDetailAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ServerFunctions.OpenDataset(qryMatchDetailEvents);
  ServerFunctions.OpenDataset(qryMatchHomePlayers);
  ServerFunctions.OpenDataset(qryMatchVisitorsPlayers);

end;

procedure TdmPgFootballServer.qryMatchesCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryMatchesmatch_name.AsWideString := qryMatcheshome_team.AsWideString + ' - ' +
    qryMatchesvisitors_team.AsWideString;
end;

procedure TdmPgFootballServer.qryPlayerAfterOpen(DataSet: TDataSet);
begin
  inherited;
  self.qryPlayerCareer.Close;
  self.qryPlayerCareer.ParamByName('anagraph_id').AsInteger := self.qryPlayeranagraph_id.AsInteger;
  self.qryPlayerCareer.Open;
end;

procedure TdmPgFootballServer.SetChampionshipsCount(const Value: Integer);
begin
  FChampionshipsCount := Value;
end;

procedure TdmPgFootballServer.SetFootballSettings(const Value: IFootballSettings);
begin
  self.FFootballSettings := Value
end;

procedure TdmPgFootballServer.Setmatchescount(const Value: Integer);
begin
  Fmatchescount := Value;
end;

procedure TdmPgFootballServer.SetNextMatchDay;
begin

end;

procedure TdmPgFootballServer.Setnextmatchescount(const Value: Integer);
begin
  Fnextmatchescount := Value;
end;

procedure TdmPgFootballServer.Setrankingcount(const Value: Integer);
begin
  Frankingcount := Value;
end;

procedure TdmPgFootballServer.SetSeasonsCount(const Value: Integer);
begin
  FSeasonsCount := Value;
end;

procedure TdmPgFootballServer.SetupSeason(aSeasonID: Integer; aLeagueID: smallint);
begin
  OpenCDSGolRanking(FFootballSettings.season_id, FFootballSettings.league_id, FFootballSettings.match_id);
end;

procedure TdmPgFootballServer.TestOpenChampionship;
begin
  if (qryChampionship.ParamByName('season_id').AsInteger <> FFootballSettings.season_id) or
    (qryChampionship.ParamByName('league_id').AsInteger <> FFootballSettings.league_id) or
    not self.qryChampionship.Active then
  begin
    qryChampionship.Close;
    qryChampionship.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    qryChampionship.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    ServerFunctions.OpenDataset(qryChampionship);
  end;
end;

procedure TdmPgFootballServer.OpenCalendar;
begin
  self.OpenChampionship;

  if (qryCalendarDay.ParamByName('season_id').AsInteger <> FFootballSettings.season_id) or
    (qryCalendarDay.ParamByName('league_id').AsInteger <> FFootballSettings.league_id) or
    not self.qryCalendarDay.Active then
  begin
    qryCalendarDay.Close;
    qryCalendarDay.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    qryCalendarDay.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    ServerFunctions.OpenDataset(qryCalendarDay);
  end;

  qryCalendarMatches.Open;
end;

function TdmPgFootballServer.OpenLastSeason: Integer;
begin
  self.qryLastSeason.Close;
  ServerFunctions.OpenDataset(qryLastSeason);
  self.FFootballSettings.season_id := qryLastSeasonseason_id.AsInteger;
  Result := FFootballSettings.season_id;
end;

procedure TdmPgFootballServer.OpenLiveScore;
begin
  { match_day_number = :match_day_number
    and c.league_id = :league_id
    and c.season_id = :season_id
    and :match_id = 0
  }
  // Iniyia sempre con la funzione OpenChampionship.
  if FFootballSettings.match_id = 0 then
  begin
    self.OpenChampionship;
    self.OpenRanking;
    self.OpenGoalRanking;
    if (FFootballSettings.match_day = 0) then
      GetLastMatchDay;
  end;

  begin
    self.qryMatchDetail.Close;
    self.qryMatchDetail.ParamByName('match_id').AsInteger := 0;
    self.qryMatchDetail.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
    self.qryMatchDetail.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
    self.qryMatchDetail.ParamByName('match_day_number').AsInteger := FFootballSettings.match_day;
    self.qryMatchDetail.ParamByName('match_id').AsInteger := FFootballSettings.match_id;
    qryMatchDetail.Open;
  end;
end;

procedure TdmPgFootballServer.OpenCDSGolRanking(aSeasonID, aLeague, aDay: Integer);
begin
  if (self.qryGolRanking.Params[0].AsInteger <> aSeasonID) or
    (self.qryGolRanking.Params[1].AsInteger <> aLeague) then
    self.qryGolRanking.Close;
  if not self.qryGolRanking.Active then
  begin
    self.qryGolRanking.Params[0].AsInteger := aSeasonID;
    self.qryGolRanking.Params[10].AsInteger := aLeague;
    ServerFunctions.OpenDataset(qryGolRanking);
  end;
end;

procedure TdmPgFootballServer.OpenChampionShips;
begin
  if (GetParamByName('season_id', qryChampionships).AsInteger <> FFootballSettings.season_id) or
    not qryChampionships.Active then
  begin
    qryChampionships.Close;
    GetParamByName('season_id', qryChampionships).AsInteger := FFootballSettings.season_id;
    ServerFunctions.OpenDataset(qryChampionships);
    qryChampionships.First;
    self.FChampionshipsCount := self.qryChampionships.RecordCount;
  end;

  // Al momento aprendo la lista dei campionati non apro in partenza il BillBoard della giornata di Default del primo
  // Campionato in lista, semmai si demanda questa procedura ad una seconda chiamata ad esempio per la generazione
  // della pagina web di 'benvenuto' sul sito web principale.

  {
    if league_id > 0 then
    qryChampionships.Locate('league_id', league_id, [])
    else
    self.Setleague_id(self.qryChampionshipsleague_id.AsInteger);

    if self.Fmatch_day = 0 then
    self.Fmatch_day := GetLastMatchDay;

    self.OpenRanking;
    self.OpenGoalRanking;
    self.OpenMatches;
    self.OpenNextMatches;
  }
end;

procedure TdmPgFootballServer.OpenChampionship;
begin
  self.CheckSeasonID;
  self.CheckChampionshipID;

  TestOpenChampionship;

  if self.qryChampionship.RecordCount = 0 then
  begin
    OpenLastSeason;
    OpenFirstLeague;
    TestOpenChampionship;
  end;

  // Al momento aprendo la lista dei campionati non apro in partenza il BillBoard della giornata di Default del primo
  // Campionato in lista, semmai si demanda questa procedura ad una seconda chiamata ad esempio per la generazione
  // della pagina web di 'benvenuto' sul sito web principale.
  {
    if league_id > 0 then
    qryChampionships.Locate('league_id', league_id, [])
    else
    self.Setleague_id(self.qryChampionshipsleague_id.AsInteger);
  }

  self.CheckMatchDay;

end;

procedure TdmPgFootballServer.OpenChampionShips(aSeasonID: Integer);
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.OpenChampionShips;
end;

procedure TdmPgFootballServer.OpenChampionshipSummary;
begin
  self.CheckSeasonID;
  self.CheckChampionshipID;
  self.OpenChampionship;
  self.OpenRanking;
  self.OpenGoalRanking;
  self.OpenMatches;
  self.OpenNextMatches;
end;

procedure TdmPgFootballServer.OpenChampionshipTeam;
begin
  {
    SELECT t.team_name,  r.*, goal_done - goal_lost as goal_diff
    FROM football.ft_ranking_table r, football.ft_teams t
    WHERE
    season_id = :season_id and league_id = :league_id
    and
    t.team_id = :team_id
  }

  self.OpenChampionship;
  self.OpenSeasonChampionship(FFootballSettings.season_id, FFootballSettings.league_id);
  self.qryChampionshipTeam.ParamByName('team_id').AsInteger := FFootballSettings.team_id;
  self.qryChampionshipTeam.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  self.qryChampionshipTeam.ParamByName('league_id').AsInteger := FFootballSettings.league_id;
  ServerFunctions.OpenDataset(qryChampionshipTeam);
  ServerFunctions.OpenDataset(qryTeamPlayers);
  ServerFunctions.OpenDataset(qryTeamMatches);
end;

procedure TdmPgFootballServer.OpenChampionshipTeam(aSeasonID, aLeagueID, aTeam: Integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aLeagueID;
  FFootballSettings.team_id := aTeam;
  self.OpenChampionshipTeam;
end;

procedure TdmPgFootballServer.RefreshData;
begin
  if (self.FFootballSettings.league_id <> 0) and (FFootballSettings.season_id <> 0) then
  begin
    if FFootballSettings.match_day = 0 then
      self.GetLastMatchDay;

    self.OpenGoalRanking;
    self.OpenRanking;
    if (FFootballSettings.match_day <> 0) then
    begin
      self.OpenMatches;
      self.OpenNextMatches;
    end;
  end;

end;

procedure TdmPgFootballServer.OpenDefaultSeason;
begin
  if not self.qrySeasons.Active then
    ServerFunctions.OpenDataset(qrySeasons);
  self.qrySeasons.First;

  if FFootballSettings.season_id > 0 then
    self.qrySeasons.Locate('season_id', FFootballSettings.season_id, [])
  else
    FFootballSettings.season_id := self.qrySeasonsseason_id.AsInteger;
end;

procedure TdmPgFootballServer.OpenDefaultSeasonChampionship;
begin
  self.OpenDefaultSeason;
  self.OpenChampionShips;

end;

function TdmPgFootballServer.OpenFirstLeague: Integer;
begin
  qryFirstSeasonLeague.Close;
  qryFirstSeasonLeague.ParamByName('season_id').AsInteger := FFootballSettings.season_id;
  qryFirstSeasonLeague.Open;
  Result := self.qryFirstSeasonLeagueleague_id.AsInteger;
  FFootballSettings.league_id := Result;
  qryFirstSeasonLeague.Close;
end;

end.
