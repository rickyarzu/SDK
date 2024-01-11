unit Janua.Football.Server.Intf;

interface

uses
  Janua.Orm.Intf, Janua.Core.DB.Intf, Janua.Server.Intf, Janua.Football.Intf, Janua.Football.Types,
  // Orm
  JOrm.Football.Matches.Intf, JOrm.Football.MatchDetails.Intf,
  JOrm.Football.RankingTable.Intf, JOrm.Football.Championship.Intf,
  JOrm.Football.GoalRanking.Intf, JOrm.Football.Leagues.Intf, JOrm.Football.MatchDay.Intf,
  JOrm.Football.Season.Intf, JOrm.Football.PlayerCareer.Intf;

type
  /// <summary> Template for Football Storage Recorset Sources. Used for local/remote storage </summary>
  IJanuaFootballStorage = interface(IJanuaStorage)
    ['{E5D6DEBF-9A96-4A53-AF03-006539483745}']
    // Dynamic Rankings *************************************************************************
    function GetjdsDynamicRanking: IJanuaDBDataset;
    function GetjdsLookupMatchDays: IJanuaDBDataset;
    procedure SetjdsDynamicRanking(Value: IJanuaDBDataset);
    procedure SetjdsLookupMatchDays(Value: IJanuaDBDataset);
    // Getter and Setters ..........................................................
    function Getnextmatchescount: integer;
    function Getmatchescount: integer;
    function Getrankingcount: integer;
    function GetChampionshipsCount: integer;
    function GetSeasonsCount: integer;
    function GetFootballSettings: IFootballSettings;
    procedure SetFootballSettings(const Value: IFootballSettings);
    procedure SetChampionshipsCount(const Value: integer);
    procedure Setmatchescount(const Value: integer);
    procedure Setnextmatchescount(const Value: integer);
    procedure Setrankingcount(const Value: integer);
    procedure SetSeasonsCount(const Value: integer);
    // public procedures
    procedure RefreshData;
    function OpenLastSeason: integer;
    function OpenFirstLeague: integer;
    procedure CheckSeasonID;
    procedure CheckChampionshipID;
    procedure CheckMatchDay;
    procedure OpenChampionshipTeam;
    procedure OpenSeasons;
    procedure OpenChampionShips;
    procedure OpenMatchDetail;
    procedure OpenChampionship;
    procedure TestOpenChampionship;
    procedure OpenChampionshipSummary;
    procedure OpenGoalRanking;
    /// <summary>
    /// This procedures Opens and Retrieve Matches and Match Day from Local Storage
    /// It also checks and (eventually) loads the championship from the Server.
    /// </summary>
    procedure OpenMatches;
    /// <summary> Opens Next match day matches (usually the next matches to be played in championship) </summary>
    procedure OpenNextMatches;
    /// <summary> Opens a team's players list (home or visitor) for a match identified by ID </summary>
    /// <param name="aMatchID"> Unique ID for the match for a local DB </summary>
    /// <param name="aTeamID"> Unique ID for the team playing the match </summary>
    procedure OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
    /// <summary> Opens Team's ranking according to Season and League properties </summary>
    procedure OpenRanking;
    /// <summary> Opens championship definition table  </summary>
    /// <param name="aSeasonID"> Unique ID for the match for a local DB </summary>
    /// <param name="aChampionshipID"> Unique ID for the team playing the match </summary>
    procedure OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
    { Deprecated Functions and Procedure }
    function GetChampionshipDayName: string;
    function GetLastMatchDay: smallint;
    procedure SetupSeason(aSeasonID: integer; aLeagueID: smallint);
    procedure OpenDefaultSeason;
    procedure OpenDefaultSeasonChampionship;
    procedure SetNextMatchDay;
    procedure OpenLiveScore;
    procedure OpenTeamPlayers;
    procedure OpenPlayerCareer;
    procedure OpenSeasonsList;
    procedure OpenCalendar;
    function OpenSeason(aSeason: smallint): Boolean;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
    function GetLastSeasonID: smallint;
    function GetChampionshipsDataset(aSeason: integer): integer;
    // Dynamic Ranking
    function OpenDynamicRanking: integer;
    function OpenDynamicGoalRanking: integer;
    function OpenMatchDayLists: integer;
    function GetjdsDynamicGoalRanking: IJanuaDBDataset;
    procedure SetjdsDynamicGoalRanking(Value: IJanuaDBDataset);
    // properties
    property SeasonsCount: integer read GetSeasonsCount write SetSeasonsCount;
    property ChampionshipsCount: integer read GetChampionshipsCount write SetChampionshipsCount;
    property rankingcount: integer read Getrankingcount write Setrankingcount;
    property matchescount: integer read Getmatchescount write Setmatchescount;
    property FootballSettings: IFootballSettings read GetFootballSettings write SetFootballSettings;
    property nextmatchescount: integer read Getnextmatchescount write Setnextmatchescount;
    // Storage
    function GetGoalRankingsStorage: IJanuaRecordSetStorage;
    function GetLeaguesStorage: IJanuaRecordSetStorage;
    function GetChampionhsipStorage: IJanuaRecordSetStorage;
    function GetDynamicGoalRankingStorage: IJanuaRecordSetStorage;
    function GetDynamicRankingStorage: IJanuaRecordSetStorage;
    function GetRankingTableStorage: IJanuaRecordSetStorage;
    function GetMatchDetailsStorage: IJanuaRecordSetStorage;
    function GetNextMatchesStorage: IJanuaRecordSetStorage;
    function GetMatchesStorage: IJanuaRecordSetStorage;
    function GetNextMatchDayStorage: IJanuaRecordSetStorage;
    function GetMatchDayStorage: IJanuaRecordSetStorage;
    function GetMatchDaysNumbersStorage: IJanuaRecordSetStorage;
    function GetSeasonsStorage: IJanuaRecordSetStorage;
    function GetChampionhsipsStorage: IJanuaRecordSetStorage;
    procedure SetChampionhsipsStorage(const Value: IJanuaRecordSetStorage);
    procedure SetChampionhsipStorage(const Value: IJanuaRecordSetStorage);
    procedure SetDynamicGoalRankingStorage(const Value: IJanuaRecordSetStorage);
    procedure SetDynamicRankingStorage(const Value: IJanuaRecordSetStorage);
    procedure SetGoalRankingsStorage(const Value: IJanuaRecordSetStorage);
    procedure SetLeaguesStorage(const Value: IJanuaRecordSetStorage);
    procedure SetMatchDaysNumbersStorage(const Value: IJanuaRecordSetStorage);
    procedure SetMatchDayStorage(const Value: IJanuaRecordSetStorage);
    procedure SetMatchDetailsStorage(const Value: IJanuaRecordSetStorage);
    procedure SetMatchesStorage(const Value: IJanuaRecordSetStorage);
    procedure SetNextMatchDayStorage(const Value: IJanuaRecordSetStorage);
    procedure SetNextMatchesStorage(const Value: IJanuaRecordSetStorage);
    procedure SetRankingTableStorage(const Value: IJanuaRecordSetStorage);
    procedure SetSeasonsStorage(const Value: IJanuaRecordSetStorage);
    property MatchesStorage: IJanuaRecordSetStorage read GetMatchesStorage write SetMatchesStorage;
    // Questa è una classe di Database.
    property MatchDetailsStorage: IJanuaRecordSetStorage read GetMatchDetailsStorage write SetMatchDetailsStorage;
    // Questa è una classe di Database.
    property MatchDayStorage: IJanuaRecordSetStorage read GetMatchDayStorage write SetMatchDayStorage;
    property NextMatchesStorage: IJanuaRecordSetStorage read GetNextMatchesStorage write SetNextMatchesStorage;
    property NextMatchDayStorage: IJanuaRecordSetStorage read GetNextMatchDayStorage write SetNextMatchDayStorage;
    property RankingTableStorage: IJanuaRecordSetStorage read GetRankingTableStorage write SetRankingTableStorage;
    property ChampionhsipsStorage: IJanuaRecordSetStorage read GetChampionhsipsStorage write SetChampionhsipsStorage;
    property ChampionhsipStorage: IJanuaRecordSetStorage read GetChampionhsipStorage write SetChampionhsipStorage;
    property SeasonsStorage: IJanuaRecordSetStorage read GetSeasonsStorage write SetSeasonsStorage;
    property GoalRankingsStorage: IJanuaRecordSetStorage read GetGoalRankingsStorage write SetGoalRankingsStorage;
    // Dynamic Ranking
    property DynamicRankingStorage: IJanuaRecordSetStorage read GetDynamicRankingStorage write SetDynamicRankingStorage;
    property MatchDaysNumbersStorage: IJanuaRecordSetStorage read GetMatchDaysNumbersStorage
      write SetMatchDaysNumbersStorage;
    property LeaguesStorage: IJanuaRecordSetStorage read GetLeaguesStorage write SetLeaguesStorage;
    property DynamicGoalRankingStorage: IJanuaRecordSetStorage read GetDynamicGoalRankingStorage
      write SetDynamicGoalRankingStorage;
    // Player Career
    function GetPlayerCareersStorage: IJanuaRecordSetStorage;
    procedure SetPlayerCareersStorage(const Value: IJanuaRecordSetStorage);
    property PlayerCareersStorage: IJanuaRecordSetStorage read GetPlayerCareersStorage write SetPlayerCareersStorage;
    // SelectedSeasonStorage
    function GetSelectedSeasonStorage: IJanuaRecordSetStorage;
    procedure SetSelectedSeasonStorage(const Value: IJanuaRecordSetStorage);
    property SelectedSeasonStorage: IJanuaRecordSetStorage read GetSelectedSeasonStorage write SetSelectedSeasonStorage;
    // Football Day Storage
    procedure SetCalendarDayStorage(const Value: IJanuaRecordSetStorage);
    function GetCalendarDayStorage: IJanuaRecordSetStorage;
    property CalendarDayStorage: IJanuaRecordSetStorage read GetCalendarDayStorage write SetCalendarDayStorage;
  end;

type
  IJanuaDBFootballStorage = interface(IJanuaFootballStorage)
    ['{8F351AE4-2614-4428-89D8-D6CD687120BD}']
    // Datasets....................................................................................
    procedure SetjdsChampionship(Value: IJanuaDBDataset);
    procedure SetjdsChampionships(Value: IJanuaDBDataset);
    function GetjdsSeasonLeagues: IJanuaDBDataset;
    function GetjdsMatches: IJanuaDBDataset;
    function GetjdsNextMatchDay: IJanuaDBDataset;
    function GetjdsPlayer: IJanuaDBDataset;
    function GetjdsMatchDetail: IJanuaDBDataset;
    function GetjdsMatchDay: IJanuaDBDataset;
    function GetjdsChampTeamPlayers: IJanuaDBDataset;
    function GetjdsMatchEvents: IJanuaDBDataset;
    function GetjdsMatchDetailVisitors: IJanuaDBDataset;
    function GetjdsSeasons: IJanuaDBDataset;
    function GetjdsChampRanking: IJanuaDBDataset;
    function GetjdsChampionships: IJanuaDBDataset;
    function GetjdsChampTeamMatches: IJanuaDBDataset;
    function GetjdsGolRanking: IJanuaDBDataset;
    function GetjdsChampTeam: IJanuaDBDataset;
    function GetjdsMatchDetailEvents: IJanuaDBDataset;
    function GetjdsChampionship: IJanuaDBDataset;
    function GetjdsCalendarMatches: IJanuaDBDataset;
    function GetjdsCalendarMatchDay: IJanuaDBDataset;
    function GetjdsMatchDetailHome: IJanuaDBDataset;
    function GetjdsPlayerCareer: IJanuaDBDataset;
    function GetjdsNextMatches: IJanuaDBDataset;
    function GetjdsPlayerCareers: IJanuaDBDataset;
    // Setters
    procedure SetjdsCalendarMatchDay(Value: IJanuaDBDataset);
    procedure SetjdsCalendarMatches(Value: IJanuaDBDataset);
    procedure SetjdsChampRanking(Value: IJanuaDBDataset);
    procedure SetjdsChampTeam(Value: IJanuaDBDataset);
    procedure SetjdsChampTeamMatches(Value: IJanuaDBDataset);
    procedure SetjdsChampTeamPlayers(Value: IJanuaDBDataset);
    procedure SetjdsGolRanking(Value: IJanuaDBDataset);
    procedure SetjdsMatchDay(Value: IJanuaDBDataset);
    procedure SetjdsMatchDetail(Value: IJanuaDBDataset);
    procedure SetjdsMatchDetailEvents(Value: IJanuaDBDataset);
    procedure SetjdsMatchDetailHome(Value: IJanuaDBDataset);
    procedure SetjdsMatchDetailVisitors(Value: IJanuaDBDataset);
    procedure SetjdsMatches(Value: IJanuaDBDataset);
    procedure SetjdsMatchEvents(Value: IJanuaDBDataset);
    procedure SetjdsNextMatchDay(Value: IJanuaDBDataset);
    procedure SetjdsNextMatches(Value: IJanuaDBDataset);
    procedure SetjdsPlayer(Value: IJanuaDBDataset);
    procedure SetjdsPlayerCareer(Value: IJanuaDBDataset);
    procedure SetjdsSeasonLeagues(Value: IJanuaDBDataset);
    procedure SetjdsSeasons(Value: IJanuaDBDataset);
    procedure SetjdsPlayerCareers(Value: IJanuaDBDataset);
    function GetjdsSelectedSeason: IJanuaDBDataset;
    procedure SetjdsSelectedSeason(Value: IJanuaDBDataset);
    // properties
    // Match Detail
    property jdsMatchDetail: IJanuaDBDataset read GetjdsMatchDetail write SetjdsMatchDetail;
    property jdsMatchDetailEvents: IJanuaDBDataset read GetjdsMatchDetailEvents write SetjdsMatchDetailEvents;
    property jdsMatchDetailHomePlayers: IJanuaDBDataset read GetjdsMatchDetailHome write SetjdsMatchDetailHome;
    property jdsMatchDetailVisitorPlayers: IJanuaDBDataset read GetjdsMatchDetailVisitors
      write SetjdsMatchDetailVisitors;
    property jdsMatchEvents: IJanuaDBDataset read GetjdsMatchEvents write SetjdsMatchEvents;
    // Championships
    property jdsChampionship: IJanuaDBDataset read GetjdsChampionship write SetjdsChampionship;
    property jdsChampionships: IJanuaDBDataset read GetjdsChampionships write SetjdsChampionships;
    property jdsGolRanking: IJanuaDBDataset read GetjdsGolRanking write SetjdsGolRanking;
    property jdsChampRanking: IJanuaDBDataset read GetjdsChampRanking write SetjdsChampRanking;
    property jdsSeasons: IJanuaDBDataset read GetjdsSeasons write SetjdsSeasons;
    property jdsMatches: IJanuaDBDataset read GetjdsMatches write SetjdsMatches;
    property jdsMatchDay: IJanuaDBDataset read GetjdsMatchDay write SetjdsMatchDay;
    property jdsNextMatchDay: IJanuaDBDataset read GetjdsNextMatchDay write SetjdsNextMatchDay;
    property jdsNextMatches: IJanuaDBDataset read GetjdsNextMatches write SetjdsNextMatches;
    property jdsSeasonLeagues: IJanuaDBDataset read GetjdsSeasonLeagues write SetjdsSeasonLeagues;
    property jdsCalendarMatchDay: IJanuaDBDataset read GetjdsCalendarMatchDay write SetjdsCalendarMatchDay;
    property jdsCalendarMatches: IJanuaDBDataset read GetjdsCalendarMatches write SetjdsCalendarMatches;
    property jdsChampTeam: IJanuaDBDataset read GetjdsChampTeam write SetjdsChampTeam;
    property jdsChampTeamPlayers: IJanuaDBDataset read GetjdsChampTeamPlayers write SetjdsChampTeamPlayers;
    property jdsChampTeamMatches: IJanuaDBDataset read GetjdsChampTeamMatches write SetjdsChampTeamMatches;
    property jdsPlayer: IJanuaDBDataset read GetjdsPlayer write SetjdsPlayer;
    property jdsPlayerCareer: IJanuaDBDataset read GetjdsPlayerCareer write SetjdsPlayerCareer;
    // Dynamic Rankings *****************************************************************************
    property jdsDynamicRanking: IJanuaDBDataset read GetjdsDynamicRanking write SetjdsDynamicRanking;
    property jdsLookupMatchDays: IJanuaDBDataset read GetjdsLookupMatchDays write SetjdsLookupMatchDays;
    property jdsDynamicGoalRanking: IJanuaDBDataset read GetjdsDynamicGoalRanking write SetjdsDynamicGoalRanking;
    property jdsPlayerCareers: IJanuaDBDataset read GetjdsPlayerCareers write SetjdsPlayerCareers;
    property jdsSelectedSeason: IJanuaDBDataset read GetjdsSelectedSeason write SetjdsSelectedSeason;
  end;

  IJanuaServerFootball = interface;

  IJanuaServerFootballCache = interface
    ['{37FF609D-94B6-4F03-805D-E63715995563}']
    {
      function GetMainArguments: IMainArguments;
      procedure SetMainArguments(const Value: IMainArguments);
      property MainArguments: IMainArguments read GetMainArguments write SetMainArguments;
      procedure StoreArticles(aMasterGUID: TGUID; aArticles: IArticles);
      function GetArticles(aMasterGUID: TGUID; aLimit: integer = 20): IArticles;
      procedure StoreArticle(aMasterGUID: TGUID; aArticle: IArticle);
      function GetArticle(aID: Int64; out aArticle: IArticle): Boolean; overload;
      function GetArticle(aGUID: TGUID; out aArticle: IArticle): Boolean; overload;
    }
    function GetServerFootball: IJanuaServerFootball;
    procedure setServerFootball(const Value: IJanuaServerFootball);
    property ServerFootball: IJanuaServerFootball read GetServerFootball write setServerFootball;
    procedure LoadCache;
  end;

  IJanuaServerFootball = interface(IJanuaServer)
    ['{813B14BE-BC0B-4F86-B48A-6210797A0873}']
    procedure OpenSeasonsList;
    procedure OpenChampionshipsList;
    // GestLastSeasonID trova automaticamente l'ultima stagione per il Default della Home Page..........................
    function GetLastSeasonID: smallint;
    // funzione che cerca la prima Lega selezionata come Default
    function GetDefaultLeague: smallint;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
    function GetLastMatchNumber: smallint;
    function OpenDefaultSeason: Boolean;
    function GetDefaults: Boolean;
    function GetChampionshipsDataset(aSeason: integer): integer;
    procedure OpenRanking; overload;
    procedure OpenRanking(aSeasonID, aLeagueID: integer); overload;
    // The calendar is the list of all Football Matches and all Match Days in one League Season.
    procedure OpenChampionshipSummary;
    procedure OpenCalendar; overload;
    procedure OpenCalendar(aSeasonID, aLeagueID: Word); overload;
    procedure OpenGoalRanking;
    procedure OpenMatches;
    procedure OpenNextMatches;
    procedure OpenChampionship;
    procedure OpenMatchDetail(aMatchID: Int64); overload;
    procedure OpenMatchDetail; overload;
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchDay: smallint); overload;
    procedure OpenTeamChampionship; overload;
    procedure OpenTeamChampionship(aSeasonID, aLeagueID, aTeamID: smallint); overload;
    // Live Score ..................................................................
    function OpenLiveScore: integer; overload;
    function OpenLiveScore(aSeasonID, aLeagueID, aMatchDay: smallint): integer; overload;
    function OpenLiveScore(aSeasonID, aLeagueID: smallint): integer; overload;
    // Career   apre la carriera del calciatore xxx
    procedure OpenPlayerCareer; overload;
    procedure OpenPlayerCareer(aPlayerID: integer); overload;
    function OpenCareer(aPlayerID: integer): smallint; overload;
    function OpenCareer: smallint; overload;
    function GetChampionshipDayName: string;
    procedure OpenMatchTeam(aMatchID: Int64; aTeamID: integer);
    function OpenSeason(aSeason: smallint): Boolean;
    //
    function OpenDynamicRanking: integer; overload;
    function OpenMatchDayLists: integer; overload;
    function OpenDynamicRanking(aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: smallint): integer; overload;
    function OpenMatchDayLists(aSeasonID, aLeagueID: smallint): integer; overload;
    // procedure da Core
    // properties .........................................................................................
    function GetMatches: IMatches;
    procedure SetMatches(const Value: IMatches);
    property Matches: IMatches read GetMatches write SetMatches;
    function GetCache: IJanuaServerFootballCache;
    procedure SetCache(const Value: IJanuaServerFootballCache);
    property Cache: IJanuaServerFootballCache read GetCache write SetCache;
    procedure SetSettings(const Value: IFootballSettings);
    function GetSettings: IFootballSettings;
    property Settings: IFootballSettings read GetSettings write SetSettings;
    function GetMatchDetails: IMatchDetails;
    procedure SetMatchDetails(const Value: IMatchDetails);
    property MatchDetails: IMatchDetails read GetMatchDetails write SetMatchDetails;

    function GetLeagues: ILeagues;
    procedure SetLeagues(const Value: ILeagues);
    property Leagues: ILeagues read GetLeagues write SetLeagues;
    // Player Career ......................................................................................
    function GetPlayerCareers: IPlayerCareers;
    procedure SetPlayerCareers(const Value: IPlayerCareers);
    property PlayerCareers: IPlayerCareers read GetPlayerCareers write SetPlayerCareers;

    function GetSeasons: ISeasons;
    function GetSelectedSeason: ISeasons;
    function GetChampionships: IChampionships;
    function GetChampionship: IChampionship;
    function GetGoalRanking: IGoalRankingTable;
    function GetRankingTable: IRankingTable;
    function GetNextMatches: IMatches;
    function GetNextMatchDay: IMatchDays;
    function GetMatchDay: IMatchDays;
    procedure SetSeasons(const Value: ISeasons);
    procedure SetChampionship(const Value: IChampionship);
    procedure SetChampionships(const Value: IChampionships);
    procedure SetGoalRanking(const Value: IGoalRankingTable);
    procedure SetMatchDay(const Value: IMatchDays);
    procedure SetNextMatches(const Value: IMatches);
    procedure SetRankingTable(const Value: IRankingTable);
    procedure SetSelectedSeason(const Value: ISeasons);
    procedure SetNextMatchDay(const Value: IMatchDays);
    property Seasons: ISeasons read GetSeasons write SetSeasons;
    property Championships: IChampionships read GetChampionships write SetChampionships;
    property Championship: IChampionship read GetChampionship write SetChampionship;
    property RankingTable: IRankingTable read GetRankingTable write SetRankingTable;
    property GoalRanking: IGoalRankingTable read GetGoalRanking write SetGoalRanking;
    property NextMatches: IMatches read GetNextMatches write SetNextMatches;
    property MatchDay: IMatchDays read GetMatchDay write SetMatchDay;
    property NextMatchDay: IMatchDays read GetNextMatchDay write SetNextMatchDay;
    property SelectedSeason: ISeasons read GetSelectedSeason write SetSelectedSeason;
    // Dynamic Rankings
    function GetDynamicRanking: IRankingTable;
    procedure SetDynamicRanking(const Value: IRankingTable);
    function GetMatchDaysList: IMatchDayNumbers;
    procedure SetMatchDaysList(const Value: IMatchDayNumbers);
    property MatchDaysList: IMatchDayNumbers read GetMatchDaysList write SetMatchDaysList;
    property DynamicRanking: IRankingTable read GetDynamicRanking write SetDynamicRanking;
    function GetDynamicGoalRanking: IGoalRankingTable;
    procedure SetDynamicGoalRanking(const Value: IGoalRankingTable);
    property DynamicGoalRanking: IGoalRankingTable read GetDynamicGoalRanking write SetDynamicGoalRanking;
    function OpenDynamic: integer;
    function OpenDynamicGoalRanking: integer;
    // Match Calendar Days
    procedure SetMatchCalendarDays(const Value: IMatchCalendarDays);
    function GetMatchCalendarDays: IMatchCalendarDays;
    property MatchCalendarDays: IMatchCalendarDays read GetMatchCalendarDays write SetMatchCalendarDays;
    // settings .........................................................................................
    function getLeague_ID: smallint;
    function getSeason_ID: smallint;
    function getMatch_Day: smallint;
    function getMatch_ID: Int64;
    function getMatch_team: integer;
    function getPlayer_id: integer;
    function getTeam_id: integer;
    // Setters
    procedure setLeague_ID(const Value: smallint);
    procedure setMatch_day(const Value: smallint);
    procedure setMatch_ID(const Value: Int64);
    procedure Setmatch_team(const Value: integer);
    procedure setSeason_ID(const Value: smallint);
    procedure SetTeam_ID(const Value: integer);
    // -----------------------------------------------------------------------------------------------------------------
    // ---------------- all the REST-Json functions --------------------------------------------------------------------
    function CreateFootballParams: IJanuaParams;
    function RestGetSeasons(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetleagues(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetMatchDetails(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetChampionships(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetChampionship(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetRankingTable(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetGoalRanking(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetNexMatches(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetMatchDay(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetNextMatchDay(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetCalendarMatchDays(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetSelectedSeason(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetMatchDaysList(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetDynamicRanking(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetLeaguesaParams(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetDynamicGoalRanking(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetLiveScore(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetPlayerCareers(const aParams: IJanuaParams): IJanuaFuncResult;

    // property Storage
    function GetJanuaFootballStorage: IJanuaFootballStorage;
    procedure SetJanuaFootballStorage(const Value: IJanuaFootballStorage);
    property LocalFootballStorage: IJanuaFootballStorage read GetJanuaFootballStorage write SetJanuaFootballStorage;
  end;

  IJanuaServerFootballFactory = interface(IInterface)
    ['{A5E00196-0AE8-4D2D-87B3-4160A1AA8850}']
    function GetServerFootball: IJanuaServerFootball; overload;
    function GetServerFootball(const aLocalStorage, aRemoteStorage: IJanuaFootballStorage)
      : IJanuaServerFootball; overload;
    function GetFootballStorage: IJanuaFootballStorage;
  end;

implementation

end.
