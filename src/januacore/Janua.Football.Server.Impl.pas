unit Janua.Football.Server.Impl;

interface

uses
  // System ....................................................................................

  // Janua
  Janua.Orm.Intf, Janua.Server.Intf, Janua.Orm.Impl, Janua.Server.Impl, Janua.Football.Intf,
  Janua.Core.DB.Impl, Janua.Core.Types, Janua.Football.Server.Intf, Janua.Core.DB.Intf,
  // Orm ......................................................................................
  JOrm.Football.Matches.Intf, JOrm.Football.RankingTable.Intf, JOrm.Football.Championship.Intf,
  JOrm.Football.Leagues.Intf, JOrm.Football.GoalRanking.Intf, JOrm.Football.MatchDay.Intf,
  JOrm.Football.MatchDetails.Intf, JOrm.Football.Season.Intf, JOrm.Football.PlayerCareer.Intf;

type
  TJanuaCustomFootballStorage = class(TJanuaStorage, IJanuaStorage)
  protected
    FjdsChampionships: IJanuaDBDataset;
    FjdsChampionship: IJanuaDBDataset;
    // Classifica Dinamica, serve un Dataset di Lookup da leggere e quindi uno con la classifica
    FjdsDynamicRanking: IJanuaDBDataset;
    FjdsLookupMatchDays: IJanuaDBDataset;
    // Gestione del Match Detail della diretta-live
    // albero
    // - Match Day (non strettamente necesario per descrivere la giornata).
    // -- Match Details (Root)
    // ---- Events (leaf)
    // ----- Home Team
    // ----- Visitors Team
    FjdsMatchDetail: IJanuaDBDataset; // -- Match Details (Root)
    FjdsMatchDetailEvents: IJanuaDBDataset; // ---- Events (leaf)
    FjdsMatchDetailHomePlayers: IJanuaDBDataset; // ----- Home Team
    FjdsMatchDetailVisitorPlayers: IJanuaDBDataset; // ----- Visitors Team
    // ----------------------------------------------------------------------------------------
    FjdsSeasonLeagues: IJanuaDBDataset;
    FjdsMatches: IJanuaDBDataset;
    FjdsNextMatchDay: IJanuaDBDataset;
    FjdsPlayer: IJanuaDBDataset;
    FjdsMatchDay: IJanuaDBDataset;
    FjdsChampTeamPlayers: IJanuaDBDataset;
    FjdsMatchEvents: IJanuaDBDataset;
    FjdsSeasons: IJanuaDBDataset;
    FjdsSelectedSeason: IJanuaDBDataset;
    FjdsChampRanking: IJanuaDBDataset;
    FjdsChampTeamMatches: IJanuaDBDataset;
    FjdsGolRanking: IJanuaDBDataset;
    FjdsChampTeam: IJanuaDBDataset;
    // Calendar Days and Matches
    FjdsCalendarMatches: IJanuaDBDataset;
    FjdsCalendarMatchDay: IJanuaDBDataset;
    // Career
    FjdsPlayerCareer: IJanuaDBDataset;
    FjdsNextMatches: IJanuaDBDataset;
    FjdsDynamicGoalRanking: IJanuaDBDataset;
    FjdsPlayerCareers: IJanuaDBDataset;
  protected
    // Dynamic Rankings *************************************************************************
    function GetjdsDynamicRanking: IJanuaDBDataset;
    function GetjdsLookupMatchDays: IJanuaDBDataset;
    procedure SetjdsDynamicRanking(Value: IJanuaDBDataset);
    procedure SetjdsLookupMatchDays(Value: IJanuaDBDataset);
    // ******************************************************************************************
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
    function GetjdsDynamicGoalRanking: IJanuaDBDataset;
    procedure SetjdsDynamicGoalRanking(Value: IJanuaDBDataset);
    function GetjdsPlayerCareers: IJanuaDBDataset;
    procedure SetjdsPlayerCareers(Value: IJanuaDBDataset);
  strict private
    FGoalRankingsStorage: IJanuaRecordSetStorage;
    FLeaguesStorage: IJanuaRecordSetStorage;
    FChampionhsipStorage: IJanuaRecordSetStorage;
    FDynamicGoalRankingStorage: IJanuaRecordSetStorage;
    FDynamicRankingStorage: IJanuaRecordSetStorage;
    FRankingTableStorage: IJanuaRecordSetStorage;
    FMatchDetailsStorage: IJanuaRecordSetStorage;
    FNextMatchesStorage: IJanuaRecordSetStorage;
    FMatchesStorage: IJanuaRecordSetStorage;
    FNextMatchDayStorage: IJanuaRecordSetStorage;
    FMatchDayStorage: IJanuaRecordSetStorage;
    FMatchDaysNumbersStorage: IJanuaRecordSetStorage;
    FSeasonsStorage: IJanuaRecordSetStorage;
    FChampionhsipsStorage: IJanuaRecordSetStorage;
    FPlayerCareersStorage: IJanuaRecordSetStorage;
    FSelectedSeasonStorage: IJanuaRecordSetStorage;
    // Calendar Days-Matches-Storage
    FCalendaDayStorage: IJanuaRecordSetStorage;
  private
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
    function GetPlayerCareersStorage: IJanuaRecordSetStorage;
    procedure SetPlayerCareersStorage(const Value: IJanuaRecordSetStorage);
    function GetSelectedSeasonStorage: IJanuaRecordSetStorage;
    procedure SetSelectedSeasonStorage(const Value: IJanuaRecordSetStorage);
    procedure SetCalendarDayStorage(const Value: IJanuaRecordSetStorage);
    function GetCalendarDayStorage: IJanuaRecordSetStorage;
  protected // DB Datasets .................................................................
    function GetjdsSelectedSeason: IJanuaDBDataset;
    procedure SetjdsSelectedSeason(Value: IJanuaDBDataset);
  protected
    Fnextmatchescount: integer;
    Fmatchescount: integer;
    Frankingcount: integer;
    FChampionshipsCount: integer;
    FSeasonsCount: integer;
    FFootballSettings: IFootballSettings;
    function Getnextmatchescount: integer;
    function Getmatchescount: integer;
    function Getrankingcount: integer;
    function GetChampionshipsCount: integer;
    function GetSeasonsCount: integer;
    function GetFootballSettings: IFootballSettings;
    procedure SetChampionshipsCount(const Value: integer);
    procedure SetFootballSettings(const Value: IFootballSettings);
    // procedure SetLastErrorMessage(const Value: string);
    procedure Setmatchescount(const Value: integer);
    procedure Setnextmatchescount(const Value: integer);
    procedure Setrankingcount(const Value: integer);
    procedure SetSeasonsCount(const Value: integer);
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;
  public
    constructor Create(aFootballSettings: IFootballSettings); overload;
  public
    property SeasonsCount: integer read GetSeasonsCount write SetSeasonsCount;
    property ChampionshipsCount: integer read GetChampionshipsCount write SetChampionshipsCount;
    property rankingcount: integer read Getrankingcount write Setrankingcount;
    property matchescount: integer read Getmatchescount write Setmatchescount;
    property nextmatchescount: integer read Getnextmatchescount write Setnextmatchescount;
    // this procedure opens an user profile to read it or to store it ...........................
    // property LastErrorMessage: string read GetLastErrorMessage write SetLastErrorMessage;
    // Limit and offset parameters to be used by queries if needed
    property FootballSettings: IFootballSettings read GetFootballSettings write SetFootballSettings;
    // Dataset Properties .......................................................................
    property jdsChampionship: IJanuaDBDataset read GetjdsChampionship write SetjdsChampionship;
    property jdsChampionships: IJanuaDBDataset read GetjdsChampionships write SetjdsChampionships;
    property jdsMatchEvents: IJanuaDBDataset read GetjdsMatchEvents write SetjdsMatchEvents;
    property jdsGolRanking: IJanuaDBDataset read GetjdsGolRanking write SetjdsGolRanking;
    property jdsChampRanking: IJanuaDBDataset read GetjdsChampRanking write SetjdsChampRanking;
    property jdsSeasons: IJanuaDBDataset read GetjdsSeasons write SetjdsSeasons;
    property jdsSelectedSeason: IJanuaDBDataset read GetjdsSelectedSeason write SetjdsSelectedSeason;
    property jdsMatches: IJanuaDBDataset read GetjdsMatches write SetjdsMatches;
    property jdsMatchDay: IJanuaDBDataset read GetjdsMatchDay write SetjdsMatchDay;
    property jdsNextMatchDay: IJanuaDBDataset read GetjdsNextMatchDay write SetjdsNextMatchDay;
    property jdsNextMatches: IJanuaDBDataset read GetjdsNextMatches write SetjdsNextMatches;
    property jdsSeasonLeagues: IJanuaDBDataset read GetjdsSeasonLeagues write SetjdsSeasonLeagues;
    property jdsCalendarMatchDay: IJanuaDBDataset read GetjdsCalendarMatchDay write SetjdsCalendarMatchDay;
    property jdsCalendarMatches: IJanuaDBDataset read GetjdsCalendarMatches write SetjdsCalendarMatches;
    property jdsMatchDetail: IJanuaDBDataset read GetjdsMatchDetail write SetjdsMatchDetail;
    property jdsMatchDetailEvents: IJanuaDBDataset read GetjdsMatchDetailEvents write SetjdsMatchDetailEvents;
    property jdsMatchDetailHomePlayers: IJanuaDBDataset read GetjdsMatchDetailHome write SetjdsMatchDetailHome;
    property jdsMatchDetailVisitorPlayers: IJanuaDBDataset read GetjdsMatchDetailVisitors
      write SetjdsMatchDetailVisitors;
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
    property CalendarDayStorage: IJanuaRecordSetStorage read GetCalendarDayStorage write SetCalendarDayStorage;
  end;

  (*
    type
    TJanuaFootballDSStorage = class(TJanuaDatasetStorage, IJanuaRecordSetStorage)
    strict protected
    // Il data-store che poi rappresenta il datamodule (quindi oracle, postgres, interbase) nella sua
    // implementazione ? completamente identificato dalla interfaccia IJanuaFootballStorage che si
    // prende carico di tutti i dataset (da esporre) e di tutte le funzioni utili ...................
    // L'unica funzione da Implementare ? il 'ponte' tra lo storage e il RecordSet : InternalAssignDatasets
    FFootballStorage: IJanuaFootballStorage;
    protected

    public
    constructor Create(aStorage: IJanuaFootballStorage); overload; virtual;
    end;


    type
    /// <summary>
    /// The most complex strucutre in the football Storage Tree, is composed by 4 JDataSets
    /// Match Detail(s) the Root object and its components
    /// Events of the match
    /// Home Players
    /// Visitors Players
    /// </summary>
  *)

  TJanuaServerFootball = class(TJanuaServer, IJanuaServerFootball, IJanuaServer)
  strict private
    FLocalStorage: IJanuaFootballStorage;
    FRemoteStorage: IJanuaFootballStorage;
  protected
    FLocalMatchesStorage: IJanuaRecordSetStorage; // Questa ? una classe di Database.
    FRemoteMatchesStorage: IJanuaRecordSetStorage; // remote ? usualmente una classe REST Storage
    FLocalMatchDetailsStorage: IJanuaRecordSetStorage; // Questa ? una classe di Database.
    FRemoteMatchDetailsStorage: IJanuaRecordSetStorage; // Questa ? una classe di Database.
    FMatchesLocalStorage: IJanuaRecordSetStorage;
    FMatchesRemoteStorage: IJanuaRecordSetStorage;
    FMatchDayLocalStorage: IJanuaRecordSetStorage;
    FMatchDayRemoteStorage: IJanuaRecordSetStorage;
    FSelectedSeasonLocalStorage: IJanuaRecordSetStorage;
    FSelectedSeasonRemoteStorage: IJanuaRecordSetStorage;
    FNextMatchesLocaltorage: IJanuaRecordSetStorage;
    FNextMatchesRemoteStorage: IJanuaRecordSetStorage;
    FNextMatchDayLocalStorage: IJanuaRecordSetStorage;
    FNextMatchDayRemoteStorage: IJanuaRecordSetStorage;
    // FCalendarMatchesLocalStorage: IJanuaRecordSetStorage;
    // FCalendarMatchesRemoteStorage: IJanuaRecordSetStorage;
    FRankingTableLocalStorage: IJanuaRecordSetStorage;
    FRankingTableRemoteStorage: IJanuaRecordSetStorage;
    FChampionhsipsLocalStorage: IJanuaRecordSetStorage;
    FChampionhsipsRemoteStorage: IJanuaRecordSetStorage;
    FChampionhsipLocalStorage: IJanuaRecordSetStorage;
    FChampionhsipRemoteStorage: IJanuaRecordSetStorage;
    FSeasonsLocalStorage: IJanuaRecordSetStorage;
    FSeasonsRemoteStorage: IJanuaRecordSetStorage;
    FGoalRankingsLocalStorage: IJanuaRecordSetStorage;
    FGoalRankingsRemoteStorage: IJanuaRecordSetStorage;
    // Dynamic Ranking
    FDynamicRankingLocalStorage: IJanuaRecordSetStorage;
    FMatchDaysNumbersLocalStorage: IJanuaRecordSetStorage;
    FDynamicRankingRemoteStorage: IJanuaRecordSetStorage;
    FMatchDaysNumbersRemoteStorage: IJanuaRecordSetStorage;
    FLeaguesLocalStorage: IJanuaRecordSetStorage;
    FLeaguesRemoteStorage: IJanuaRecordSetStorage;
    FDynamicGoalRankingLocalStorage: IJanuaRecordSetStorage;
    FDynamicGoalRankingRemoteStorage: IJanuaRecordSetStorage;
    FPlayerCareersLocalStorage: IJanuaRecordSetStorage;
    FPlayerCareersRemoteStorage: IJanuaRecordSetStorage;
    // Calendar
    FCalendarMatcDaysLocalStorage: IJanuaRecordSetStorage;
    FCalendarMatcDaysRemoteStorage: IJanuaRecordSetStorage;
  private
    FFootballSettings: IFootballSettings;
    FMatchDetails: IMatchDetails;
    FSeasons: ISeasons;
    FChampionships: IChampionships;
    FChampionship: IChampionship;
    // FCalendarMatches: IMatches;
    FGoalRanking: IGoalRankingTable;
    FRankingTable: IRankingTable;
    FNextMatches: IMatches;
    FNextMatchDay: IMatchDays;
    FMatchDay: IMatchDays;
    FSelectedSeason: ISeasons;
    // Dynamic Ranking
    FDynamicRanking: IRankingTable;
    FMatchDayLists: IMatchDayNumbers;
    FLeagues: ILeagues;
    FDynamicGoalRanking: IGoalRankingTable;
    FPlayerCareers: IPlayerCareers;
    // Calendar Match Days
    FMatchCalendarDays: IMatchCalendarDays;
  protected
    function getLeague_ID: smallint; virtual;
    function getSeason_ID: smallint; virtual;
    function getMatch_Day: smallint; virtual;
    function getMatch_ID: int64; virtual;
    function getMatch_team: integer;
    function getPlayer_id: integer;
    function getTeam_id: integer;
    // Setters
    procedure setLeague_ID(const Value: smallint);
    procedure setMatch_day(const Value: smallint);
    procedure setMatch_ID(const Value: int64);
    procedure Setmatch_team(const Value: integer);
    procedure setSeason_ID(const Value: smallint);
    procedure SetTeam_ID(const Value: integer);
  private
    function GetCache: IJanuaServerFootballCache;
    function GetLocalMatchesStorage: IJanuaRecordSetStorage;
    function GetMatches: IMatches;
    function GetRemoteMatchesStorage: IJanuaRecordSetStorage;
    procedure SetCache(const Value: IJanuaServerFootballCache);
    procedure SetLocalMatchesStorage(const Value: IJanuaRecordSetStorage);
    procedure SetMatches(const Value: IMatches);
    procedure SetRemoteMatchesStorage(const Value: IJanuaRecordSetStorage);
    procedure SetSettings(const Value: IFootballSettings);
    function GetSettings: IFootballSettings;
  strict protected
    function GetPlayerCareers: IPlayerCareers;
    procedure SetPlayerCareers(const Value: IPlayerCareers);
    function GetMatchDetails: IMatchDetails;
    procedure SetMatchDetails(const Value: IMatchDetails);
    function GetSeasons: ISeasons;
    function GetSelectedSeason: ISeasons;
    function GetChampionships: IChampionships;
    function GetChampionship: IChampionship;
    // function GetCalendarMatches: IMatches;
    function GetGoalRanking: IGoalRankingTable;
    function GetRankingTable: IRankingTable;
    function GetNextMatches: IMatches;
    function GetNextMatchDay: IMatchDays;
    function GetMatchDay: IMatchDays;
    procedure SetSeasons(const Value: ISeasons);
    // procedure SetCalendarMatches(const Value: IMatches);
    procedure SetChampionship(const Value: IChampionship);
    procedure SetChampionships(const Value: IChampionships);
    procedure SetGoalRanking(const Value: IGoalRankingTable);
    procedure SetMatchDay(const Value: IMatchDays);
    procedure SetNextMatches(const Value: IMatches);
    procedure SetRankingTable(const Value: IRankingTable);
    procedure SetSelectedSeason(const Value: ISeasons);
    procedure SetNextMatchDay(const Value: IMatchDays);
    function GetLeagues: ILeagues;
    procedure SetLeagues(const Value: ILeagues);
    // Dynamic Rankings
    function GetDynamicRanking: IRankingTable;
    function GetMatchDaysList: IMatchDayNumbers;
    procedure SetDynamicRanking(const Value: IRankingTable);
    procedure SetMatchDaysList(const Value: IMatchDayNumbers);
    function GetDynamicGoalRanking: IGoalRankingTable;
    procedure SetDynamicGoalRanking(const Value: IGoalRankingTable);
    function GetJanuaFootballStorage: IJanuaFootballStorage;
    procedure SetJanuaFootballStorage(const Value: IJanuaFootballStorage);
    // Calendar Matches
    procedure SetMatchCalendarDays(const Value: IMatchCalendarDays);
    function GetMatchCalendarDays: IMatchCalendarDays;
    // property LocalFootballStorage: IJanuaFootballStorage read GetJanuaFootballStorage  write SetJanuaFootballStorage;
  public // procedures
    property MatchCalendarDays: IMatchCalendarDays read GetMatchCalendarDays write SetMatchCalendarDays;
    procedure RefreshData;
    procedure OpenChampionshipsList;
    function OpenLastSeason: integer;
    function OpenFirstLeague: integer;
    procedure CheckSeasonID;
    procedure CheckChampionshipID;
    procedure CheckMatchDay;
    procedure OpenChampionshipTeam; overload;
    procedure OpenChampionshipTeam(const aSeasonID, aLeagueID, aTeam: integer); overload;
    procedure OpenSeasons;
    procedure OpenChampionShips; overload;
    procedure OpenChampionShips(aSeasonID: integer); overload;
    procedure OpenMatchDetail; overload;
    procedure OpenMatchDetail(aMatchID: int64); overload;
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: integer); overload;
    procedure OpenChampionship;
    procedure TestOpenChampionship;
    procedure OpenChampionshipSummary;
    procedure OpenGoalRanking; overload;
    procedure OpenGoalRanking(aSeasonID, aLeague, aDay: integer); overload;
    /// <summary>
    /// This procedures Opens and Retrieve Matches and Match Day from Local Storage
    /// It also checks and (eventually) loads the championship from the Server.
    /// </summary>
    procedure OpenMatches; overload;
    procedure OpenMatches(aSeasonID, aLeagueID, aMatchNumber: integer); overload;
    procedure OpenNextMatches;
    procedure OpenMatchTeam(aMatchID: int64; aTeamID: integer);
    procedure OpenRanking; overload;
    procedure OpenRanking(aSeasonID, aChampionshipID: integer); overload;
    procedure OpenSeasonChampionship; overload;
    procedure OpenSeasonChampionship(aSeasonID, aChampionshipID: integer); overload;
    { Deprecated Functions and Procedure }
    function GetChampionshipDayName: string;
    function GetLastMatchDay: smallint;
    procedure SetupSeason(aSeasonID: integer; aLeagueID: smallint);
    function OpenDefaultSeason: boolean;
    procedure OpenDefaultSeasonChampionship;
    procedure OpenCalendar; overload;
    procedure OpenCalendar(aSeasonID, aLeagueID: Word); overload;
    procedure OpenTeamPlayers(aTeamID, aSeasonID: Int16); overload;
    procedure OpenTeamPlayers; overload;
    procedure OpenPlayerCareer; overload;
    procedure OpenPlayerCareer(aID: integer); overload;
    procedure OpenSeasonsList;
    // altre funzioni dal server
    function GetLastSeasonID: smallint;
    // funzione che cerca la prima Lega selezionata come Default
    function GetDefaultLeague: smallint;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
    function GetLastMatchNumber: smallint;
    function GetDefaults: boolean;
    function GetChampionshipsDataset(aSeason: integer): integer;
    // The calendar is the list of all Football Matches and all Match Days in one League Season.
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchDay: smallint); overload;
    procedure OpenTeamChampionship; overload;
    procedure OpenTeamChampionship(aSeasonID, aLeagueID, aTeamID: smallint); overload;
    // Live Score ..................................................................
    function OpenLiveScore: integer; overload;
    function OpenLiveScore(aSeasonID, aLeagueID, aMatchDay: smallint): integer; overload;
    function OpenLiveScore(aSeasonID, aLeagueID: smallint): integer; overload;
    function OpenLiveScore(aMatchID: int64): integer; overload;
    // apre la carriera del calciatore xxx
    function OpenCareer(aPlayerID: integer): smallint; overload;
    function OpenCareer: smallint; overload;
    function OpenSeason: boolean; overload;
    function OpenSeason(aSeason: smallint): boolean; overload;
    function GetNextDayNumber: smallint;
    function OpenDynamic: integer;
    function OpenDynamicGoalRanking: integer;
  public
    // Dependency injection procedure for LocalStorate and Remote Storage
    constructor Create(const aServerType: TJanuaServerType = jstDBServer); override;
    constructor Create(const aLocalStorage, aRemoteStorage: IJanuaFootballStorage; aSettings: IFootballSettings;
      aServerType: TJanuaServerType = jstDBServer); overload;
  protected
    FMatches: IMatches;
    FCache: IJanuaServerFootballCache;
    FUseCache: boolean;
  public
    property Cache: IJanuaServerFootballCache read GetCache write SetCache;
    property Settings: IFootballSettings read GetSettings write SetSettings;
    // Matches .............................................................................
    // Propriet? da Implementare .........................................................................
    // property SelectedSeason: TJanuaFootballSeason read FSelectedSeason write SetSelectedSeason;
    // property MatchDetail: TJanuaMatchDetail read FMatchDetail write SetMatchDetail;
    // property ChampionshipTeam: TJanuaChampionshipTeam read FChampionshipTeam write SetChampionshipTeam;
    // property ChampSummary: TJanuaChampionshipSummary read FChampSummary write SetChampSummary;
    // property Player: TJanuaFootballPlayer read FPlayer write SetPlayer;

    function OpenDynamicRanking: integer; overload;
    function OpenMatchDayLists: integer; overload;
    function OpenDynamicRanking(aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: smallint): integer; overload;
    function OpenMatchDayLists(aSeasonID, aLeagueID: smallint): integer; overload;
  public
    // -----------------------------------------------------------------------------------------------------------------
    // ---------------- all the REST-Json functions --------------------------------------------------------------------
    function CreateFootballParams: IJanuaParams;
    function RestGetSeasons(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetleagues(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetMatchDetails(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetChampionships(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetChampionship(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetRankingTable(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetGoalRanking(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetNexMatches(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetMatchDay(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetNextMatchDay(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetCalendarMatchDays(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetSelectedSeason(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetMatchDaysList(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetDynamicRanking(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetLeaguesaParams(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestGetDynamicGoalRanking(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetLiveScore(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetPlayerCareers(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
    function RestGetMatches(const aParams: IJanuaParams): IJanuaFuncResult; // Tested
  end;

type
  TJanuaServerFootballFactory = class(TInterfacedObject, IJanuaServerFootballFactory)
  public
    function GetServerFootball: IJanuaServerFootball; overload;
    function GetServerFootball(const aLocalStorage, aRemoteStorage: IJanuaFootballStorage)
      : IJanuaServerFootball; overload;
    function GetFootballStorage: IJanuaFootballStorage; virtual; abstract;
  end;

type
  TJanuaFootballFactory = class
  public
    /// <summary>
    /// This procedure creates a list of standard params for football REST remote functions
    /// </summary>
    class function CreateFootballParams: IJanuaParams; overload;
    /// <summary>
    /// This procedure creates a list of standard params setting them with server's default
    /// based on server settings.
    /// </summary>
    /// <param name="aSettings">
    /// Used to set the default values to the settings of the calle (usually the server class).
    /// </param>
    class function CreateFootballParams(aSettings: IFootballSettings): IJanuaParams; overload;
    /// <summary>
    /// This procedure translates a set of RESTParams to football Settings.
    /// </summary>
    /// <param name="aSettings">
    /// var Params is used to set the seetings accordingly to the input received by REST Server
    /// </param>
    /// <param name="aInput">
    /// Set of Params received by the caller function or procedure that need to be translated
    /// </param>
    class procedure TranslateParams(const aInput: IJanuaParams; var aSettings: IFootballSettings);
  end;

implementation

uses
  Janua.Application.Framework,
  System.SysUtils, System.Math, System.StrUtils, Spring, Janua.Core.Functions, Janua.Football.Impl,
  // Orm
  JOrm.Football.Season.Impl, JOrm.Football.Leagues.Impl, Janua.Orm.Types, JOrm.Football.PlayerCareer.Impl,
  JOrm.Football.Matches.Impl, JOrm.Football.RankingTable.Impl, JOrm.Football.Championship.Impl,
  JOrm.Football.GoalRanking.Impl, JOrm.Football.MatchDay.Impl, JOrm.Football.MatchDetails.Impl;

constructor TJanuaCustomFootballStorage.Create(aFootballSettings: IFootballSettings);
begin
  Create;
  Guard.CheckNotNull(aFootballSettings, 'TJanuaCustomFootballStorage.Create aFootballSettings nil');
  FFootballSettings := aFootballSettings;
end;

function TJanuaCustomFootballStorage.GetCalendarDayStorage: IJanuaRecordSetStorage;
begin
  Result := self.FCalendaDayStorage
end;

function TJanuaCustomFootballStorage.GetChampionhsipsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FChampionhsipsStorage
end;

function TJanuaCustomFootballStorage.GetChampionhsipStorage: IJanuaRecordSetStorage;
begin
  Result := self.FChampionhsipStorage
end;

function TJanuaCustomFootballStorage.GetChampionshipsCount: integer;
begin
  Result := self.FChampionshipsCount
end;

function TJanuaCustomFootballStorage.GetDynamicGoalRankingStorage: IJanuaRecordSetStorage;
begin
  Result := self.FDynamicGoalRankingStorage
end;

function TJanuaCustomFootballStorage.GetDynamicRankingStorage: IJanuaRecordSetStorage;
begin
  Result := self.FDynamicRankingStorage
end;

function TJanuaCustomFootballStorage.GetFootballSettings: IFootballSettings;
begin
  Result := self.FFootballSettings
end;

function TJanuaCustomFootballStorage.GetGoalRankingsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FGoalRankingsStorage
end;

function TJanuaCustomFootballStorage.GetjdsCalendarMatchDay: IJanuaDBDataset;
begin
  Result := self.FjdsCalendarMatchDay
end;

function TJanuaCustomFootballStorage.GetjdsCalendarMatches: IJanuaDBDataset;
begin
  Result := self.FjdsCalendarMatches
end;

function TJanuaCustomFootballStorage.GetjdsChampionship: IJanuaDBDataset;
begin
  Result := self.FjdsChampionship
end;

function TJanuaCustomFootballStorage.GetjdsChampionships: IJanuaDBDataset;
begin
  Result := self.FjdsChampionships
end;

function TJanuaCustomFootballStorage.GetjdsChampRanking: IJanuaDBDataset;
begin
  Result := self.FjdsChampRanking
end;

function TJanuaCustomFootballStorage.GetjdsChampTeam: IJanuaDBDataset;
begin
  Result := self.FjdsChampTeam
end;

function TJanuaCustomFootballStorage.GetjdsChampTeamMatches: IJanuaDBDataset;
begin
  Result := self.FjdsChampTeamMatches
end;

function TJanuaCustomFootballStorage.GetjdsChampTeamPlayers: IJanuaDBDataset;
begin
  Result := self.FjdsChampTeamPlayers
end;

function TJanuaCustomFootballStorage.GetjdsDynamicGoalRanking: IJanuaDBDataset;
begin
  Result := FjdsDynamicGoalRanking
end;

function TJanuaCustomFootballStorage.GetjdsDynamicRanking: IJanuaDBDataset;
begin
  Result := self.FjdsDynamicRanking
end;

function TJanuaCustomFootballStorage.GetjdsGolRanking: IJanuaDBDataset;
begin
  Result := self.FjdsGolRanking
end;

function TJanuaCustomFootballStorage.GetjdsLookupMatchDays: IJanuaDBDataset;
begin
  Result := self.FjdsLookupMatchDays
end;

function TJanuaCustomFootballStorage.GetjdsMatchDay: IJanuaDBDataset;
begin
  Result := self.FjdsMatchDay
end;

function TJanuaCustomFootballStorage.GetjdsMatchDetail: IJanuaDBDataset;
begin
  Result := self.FjdsMatchDetail
end;

function TJanuaCustomFootballStorage.GetjdsMatchDetailEvents: IJanuaDBDataset;
begin
  Result := self.FjdsMatchDetailEvents
end;

function TJanuaCustomFootballStorage.GetjdsMatchDetailHome: IJanuaDBDataset;
begin
  Result := self.FjdsMatchDetailHomePlayers
end;

function TJanuaCustomFootballStorage.GetjdsMatchDetailVisitors: IJanuaDBDataset;
begin
  Result := self.FjdsMatchDetailVisitorPlayers
end;

function TJanuaCustomFootballStorage.GetjdsMatches: IJanuaDBDataset;
begin
  Result := self.FjdsMatches
end;

function TJanuaCustomFootballStorage.GetjdsMatchEvents: IJanuaDBDataset;
begin
  Result := self.FjdsMatchEvents
end;

function TJanuaCustomFootballStorage.GetjdsNextMatchDay: IJanuaDBDataset;
begin
  Result := self.FjdsNextMatchDay
end;

function TJanuaCustomFootballStorage.GetjdsNextMatches: IJanuaDBDataset;
begin
  Result := self.FjdsNextMatches
end;

function TJanuaCustomFootballStorage.GetjdsPlayer: IJanuaDBDataset;
begin
  Result := self.FjdsPlayer
end;

function TJanuaCustomFootballStorage.GetjdsPlayerCareer: IJanuaDBDataset;
begin
  Result := self.FjdsPlayerCareer
end;

function TJanuaCustomFootballStorage.GetjdsPlayerCareers: IJanuaDBDataset;
begin
  Result := self.FjdsPlayerCareers
end;

function TJanuaCustomFootballStorage.GetjdsSeasonLeagues: IJanuaDBDataset;
begin
  Result := self.FjdsSeasonLeagues
end;

function TJanuaCustomFootballStorage.GetjdsSeasons: IJanuaDBDataset;
begin
  Result := self.FjdsSeasons
end;

function TJanuaCustomFootballStorage.GetjdsSelectedSeason: IJanuaDBDataset;
begin
  Result := self.FjdsSelectedSeason
end;

function TJanuaCustomFootballStorage.GetLeaguesStorage: IJanuaRecordSetStorage;
begin
  Result := self.FLeaguesStorage
end;

function TJanuaCustomFootballStorage.GetMatchDaysNumbersStorage: IJanuaRecordSetStorage;
begin
  Result := self.FMatchDaysNumbersStorage
end;

function TJanuaCustomFootballStorage.GetMatchDayStorage: IJanuaRecordSetStorage;
begin
  Result := self.FMatchDayStorage
end;

function TJanuaCustomFootballStorage.GetMatchDetailsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FMatchDetailsStorage
end;

function TJanuaCustomFootballStorage.Getmatchescount: integer;
begin
  Result := self.Fmatchescount
end;

function TJanuaCustomFootballStorage.GetMatchesStorage: IJanuaRecordSetStorage;
begin
  Result := self.FMatchesStorage
end;

function TJanuaCustomFootballStorage.GetNextMatchDayStorage: IJanuaRecordSetStorage;
begin
  Result := self.FNextMatchDayStorage
end;

function TJanuaCustomFootballStorage.Getnextmatchescount: integer;
begin
  Result := self.Fnextmatchescount
end;

function TJanuaCustomFootballStorage.GetNextMatchesStorage: IJanuaRecordSetStorage;
begin
  Result := self.FNextMatchesStorage
end;

function TJanuaCustomFootballStorage.GetPlayerCareersStorage: IJanuaRecordSetStorage;
begin
  Result := self.FPlayerCareersStorage
end;

function TJanuaCustomFootballStorage.Getrankingcount: integer;
begin
  Result := self.Frankingcount
end;

function TJanuaCustomFootballStorage.GetRankingTableStorage: IJanuaRecordSetStorage;
begin
  Result := self.FRankingTableStorage
end;

function TJanuaCustomFootballStorage.GetSeasonsCount: integer;
begin
  Result := self.FSeasonsCount
end;

function TJanuaCustomFootballStorage.GetSeasonsStorage: IJanuaRecordSetStorage;
begin
  Result := self.FSeasonsStorage
end;

function TJanuaCustomFootballStorage.GetSelectedSeasonStorage: IJanuaRecordSetStorage;
begin
  Result := self.FSelectedSeasonStorage
end;

procedure TJanuaCustomFootballStorage.SetChampionhsipsStorage(const Value: IJanuaRecordSetStorage);
begin
  FChampionhsipsStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetChampionhsipStorage(const Value: IJanuaRecordSetStorage);
begin
  FChampionhsipStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetChampionshipsCount(const Value: integer);
begin
  FChampionshipsCount := Value;
end;

procedure TJanuaCustomFootballStorage.SetDynamicGoalRankingStorage(const Value: IJanuaRecordSetStorage);
begin
  FDynamicGoalRankingStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetDynamicRankingStorage(const Value: IJanuaRecordSetStorage);
begin
  FDynamicRankingStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetAfterCreateDataset;
begin
  inherited;
  FAfterCreateDataset := procedure
    begin
      try
        // Goal Ranking Dinamico
        FDynamicGoalRankingStorage := TJanuaCustomDatasetStorage.Create('dyngoalranking',
          IGoalRankingTable { TGoalRankingTable } , [jdsDynamicGoalRanking]);
        // Goal Ranking non dinamico
        FGoalRankingsStorage := TJanuaCustomDatasetStorage.Create('goalranking',
          IGoalRankingTable { TGoalRankingTable } , [jdsGolRanking]);
        // 'rankingtable', TRankingTable,   jdsChampRanking
        FRankingTableStorage := TJanuaCustomDatasetStorage.Create('rankingtable', IRankingTable { TRankingTable } ,
          [jdsChampRanking]);
        FDynamicRankingStorage := TJanuaCustomDatasetStorage.Create('dynamicranking', IRankingTable { TRankingTable } ,
          [jdsDynamicRanking]);
        FChampionhsipsStorage := TJanuaCustomDatasetStorage.Create('championships', IChampionships { TChampionships } ,
          [jdsChampionships]);
        FChampionhsipStorage := TJanuaCustomDatasetStorage.Create('championship', IChampionships { TChampionships } ,
          [jdsChampionship]);
        FNextMatchesStorage := TJanuaCustomDatasetStorage.Create('nextmatches', IMatches { TMatches } ,
          [jdsNextMatches]);
        self.FMatchDayStorage := TJanuaCustomDatasetStorage.Create('matchday', IMatchDays { TMatchDays } ,
          [jdsMatchDay]);
        // 'nextmatchday', TMatchDays, jdsNextMatchDay
        FNextMatchDayStorage := TJanuaCustomDatasetStorage.Create('nextmatchday', IMatchDays { TMatchDays } ,
          [jdsNextMatchDay]);
        // 'matchdetails', TMatchDetails, [jdsMatchDetail, jdsMatchDetailVisitorPlayers, jdsMatchDetailHomePlayers, jdsMatchDetailEvents]
        // FMatchDetailStorage
        FMatchDetailsStorage := TJanuaCustomDatasetStorage.Create('matchdetails', IMatchDetails { TMatchDetails } ,
          [jdsMatchDetail, jdsMatchDetailEvents, jdsMatchDetailHomePlayers, jdsMatchDetailVisitorPlayers]);
        // 'seasons', TSeasons, jdsSeasons
        self.FSeasonsStorage := TJanuaCustomDatasetStorage.Create('seasons', ISeasons { TSeasons } , [jdsSeasons]);
        // 'goalrankings', TGoalRankingTable, jdsGolRanking
        Guard.CheckNotNull(jdsGolRanking, 'jdsGolRanking is nil');
        self.FGoalRankingsStorage := TJanuaCustomDatasetStorage.Create('goalrankings',
          IGoalRankingTable { TGoalRankingTable } , [jdsGolRanking]);
        // 'matchnumber', TMatchDayNumbers, jdsLookupMatchDays
        Guard.CheckNotNull(jdsLookupMatchDays, 'jdsLookupMatchDays is nil');
        self.FMatchDaysNumbersStorage := TJanuaCustomDatasetStorage.Create('matchnumber',
          IMatchDayNumbers { TMatchDayNumbers } , [jdsLookupMatchDays]);
        // 'leagues', TLeagues , jdsSeasonLeagues
        self.FLeaguesStorage := TJanuaCustomDatasetStorage.Create('leagues', ILeagues { TLeagues } ,
          [jdsSeasonLeagues]);
        Guard.CheckNotNull(jdsMatches, 'jdsMatches is nil');
        self.FMatchesStorage := TJanuaCustomDatasetStorage.Create('matches', IMatches { TMatches } , [jdsMatches]);
        Guard.CheckNotNull(jdsPlayerCareers, 'jdsPlayerCareers is nil');
        FPlayerCareersStorage := TJanuaCustomDatasetStorage.Create('playercareers', IPlayerCareers { TPlayerCareers } ,
          [jdsPlayerCareers]);
        Guard.CheckNotNull(jdsSelectedSeason, 'jdsSelectedSeason is nil');
        FSelectedSeasonStorage := TJanuaCustomDatasetStorage.Create('selectedseason', ISeasons { TSeasons } ,
          [jdsSelectedSeason]);
        /// Calendar Match Days
        /// This Storage contains Two different Dataste. Claendar Day (Master) and Calendar Matches (Detail)
        Guard.CheckNotNull(FjdsCalendarMatchDay, 'FjdsCalendarMatchDay is nil');
        Guard.CheckNotNull(FjdsCalendarMatches, 'FjdsCalendarMatches is nil');
        FCalendaDayStorage := TJanuaCustomDatasetStorage.Create('calendardays',
          IMatchCalendarDays { TMatchCalendarDays } , [FjdsCalendarMatchDay, FjdsCalendarMatches]);
      except
        on e: exception do
        begin
          raise exception.Create(self.ClassName + '.AfterCreateDataset: ' + e.Message);
        end;
      end;
    end;
end;

procedure TJanuaCustomFootballStorage.SetAfterDestroyDataset;
begin
  inherited;

end;

procedure TJanuaCustomFootballStorage.SetCalendarDayStorage(const Value: IJanuaRecordSetStorage);
begin
  FCalendaDayStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetFootballSettings(const Value: IFootballSettings);
begin
  FFootballSettings := Value;
end;

procedure TJanuaCustomFootballStorage.SetGoalRankingsStorage(const Value: IJanuaRecordSetStorage);
begin
  FGoalRankingsStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetInternalAssignDatasets;
begin
  inherited;

end;

procedure TJanuaCustomFootballStorage.SetInternalCreateDataset;
begin
  inherited;

end;

procedure TJanuaCustomFootballStorage.SetInternalCreateDBDataSets;
begin
  inherited;

end;

procedure TJanuaCustomFootballStorage.SetInternalDestroyDataset;
begin
  inherited;

end;

procedure TJanuaCustomFootballStorage.SetjdsCalendarMatchDay(Value: IJanuaDBDataset);
begin
  FjdsCalendarMatchDay := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsCalendarMatches(Value: IJanuaDBDataset);
begin
  FjdsCalendarMatches := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsChampionship(Value: IJanuaDBDataset);
begin
  self.FjdsChampionship := Value
end;

procedure TJanuaCustomFootballStorage.SetjdsChampionships(Value: IJanuaDBDataset);
begin
  self.FjdsChampionships := Value
end;

procedure TJanuaCustomFootballStorage.SetjdsChampRanking(Value: IJanuaDBDataset);
begin
  FjdsChampRanking := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsChampTeam(Value: IJanuaDBDataset);
begin
  FjdsChampTeam := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsChampTeamMatches(Value: IJanuaDBDataset);
begin
  FjdsChampTeamMatches := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsChampTeamPlayers(Value: IJanuaDBDataset);
begin
  FjdsChampTeamPlayers := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsDynamicGoalRanking(Value: IJanuaDBDataset);
begin
  FjdsDynamicGoalRanking := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsDynamicRanking(Value: IJanuaDBDataset);
begin
  FjdsDynamicRanking := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsGolRanking(Value: IJanuaDBDataset);
begin
  FjdsGolRanking := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsLookupMatchDays(Value: IJanuaDBDataset);
begin
  FjdsLookupMatchDays := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatchDay(Value: IJanuaDBDataset);
begin
  FjdsMatchDay := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatchDetail(Value: IJanuaDBDataset);
begin
  FjdsMatchDetail := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatchDetailEvents(Value: IJanuaDBDataset);
begin
  FjdsMatchDetailEvents := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatchDetailHome(Value: IJanuaDBDataset);
begin
  FjdsMatchDetailHomePlayers := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatchDetailVisitors(Value: IJanuaDBDataset);
begin
  FjdsMatchDetailVisitorPlayers := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatches(Value: IJanuaDBDataset);
begin
  FjdsMatches := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsMatchEvents(Value: IJanuaDBDataset);
begin
  FjdsMatchEvents := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsNextMatchDay(Value: IJanuaDBDataset);
begin
  FjdsNextMatchDay := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsNextMatches(Value: IJanuaDBDataset);
begin
  FjdsNextMatches := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsPlayer(Value: IJanuaDBDataset);
begin
  FjdsPlayer := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsPlayerCareer(Value: IJanuaDBDataset);
begin
  FjdsPlayerCareer := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsPlayerCareers(Value: IJanuaDBDataset);
begin
  self.FjdsPlayerCareers := Value
end;

procedure TJanuaCustomFootballStorage.SetjdsSeasonLeagues(Value: IJanuaDBDataset);
begin
  FjdsSeasonLeagues := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsSeasons(Value: IJanuaDBDataset);
begin
  FjdsSeasons := Value;
end;

procedure TJanuaCustomFootballStorage.SetjdsSelectedSeason(Value: IJanuaDBDataset);
begin
  FjdsSelectedSeason := Value;
end;

procedure TJanuaCustomFootballStorage.SetLeaguesStorage(const Value: IJanuaRecordSetStorage);
begin
  FLeaguesStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetMatchDaysNumbersStorage(const Value: IJanuaRecordSetStorage);
begin
  FMatchDaysNumbersStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetMatchDayStorage(const Value: IJanuaRecordSetStorage);
begin
  FMatchDayStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetMatchDetailsStorage(const Value: IJanuaRecordSetStorage);
begin
  FMatchDetailsStorage := Value;
end;

procedure TJanuaCustomFootballStorage.Setmatchescount(const Value: integer);
begin
  Fmatchescount := Value;
end;

procedure TJanuaCustomFootballStorage.SetMatchesStorage(const Value: IJanuaRecordSetStorage);
begin
  FMatchesStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetNextMatchDayStorage(const Value: IJanuaRecordSetStorage);
begin
  FNextMatchDayStorage := Value;
end;

procedure TJanuaCustomFootballStorage.Setnextmatchescount(const Value: integer);
begin
  Fnextmatchescount := Value;
end;

procedure TJanuaCustomFootballStorage.SetNextMatchesStorage(const Value: IJanuaRecordSetStorage);
begin
  FNextMatchesStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetPlayerCareersStorage(const Value: IJanuaRecordSetStorage);
begin
  FPlayerCareersStorage := Value
end;

procedure TJanuaCustomFootballStorage.Setrankingcount(const Value: integer);
begin
  Frankingcount := Value;
end;

procedure TJanuaCustomFootballStorage.SetRankingTableStorage(const Value: IJanuaRecordSetStorage);
begin
  FRankingTableStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetSeasonsCount(const Value: integer);
begin
  FSeasonsCount := Value;
end;

procedure TJanuaCustomFootballStorage.SetSeasonsStorage(const Value: IJanuaRecordSetStorage);
begin
  FSeasonsStorage := Value;
end;

procedure TJanuaCustomFootballStorage.SetSelectedSeasonStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FSelectedSeasonStorage := Value
end;

{ TJanuaFootballDSStorage }

{ TJanuaFootballDSStorage }

(*
  constructor TJanuaFootballDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  // Imposto lo Storage Descendant (che 'conosco' personalmente'
  self.FFootballStorage := aStorage;
  // Imposto lo Storage per l'ancestor
  self.FStorage := aStorage;
  end;
*)

{ TJanuaFootballMatchesDSStorage }

(*
  constructor TJanuaFootballMatchesDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  // RecordSetModel .............................................
  self.Create(TMatchFactory.CreateRecordset('matches', nil, nil));
  end;

  procedure TJanuaFootballMatchesDSStorage.InternalAssignDatasets;
  begin
  inherited;
  // Imposto lo Store Dataset
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsMatches, 'TJanuaFootballMatchesDSStorage.Create aStorage.jdsMatches nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsMatches;
  end;
*)

{ TJanuaServerFootball }

procedure TJanuaServerFootball.CheckChampionshipID;
begin

end;

procedure TJanuaServerFootball.CheckMatchDay;
begin

end;

procedure TJanuaServerFootball.CheckSeasonID;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.CheckSeasonID;
    // FMatches.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.CheckSeasonID;
    // FMatches.LoadFromRemoteStorage;
  end;
end;

constructor TJanuaServerFootball.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  try
    inherited;
    self.FName := 'football';
  except
    on e: exception do
      RaiseException('Create(aServerType: TJanuaServerType)', e, self);
  end;
end;

constructor TJanuaServerFootball.Create(const aLocalStorage, aRemoteStorage: IJanuaFootballStorage;
  aSettings: IFootballSettings; aServerType: TJanuaServerType = jstDBServer);
begin
  try
    self.WriteLocalLog('create', 'Create(' + TEnumConvertor<TJanuaServerType>.ToString(aServerType) + ')');
    Create(aServerType);
    Guard.CheckNotNull(aSettings, 'TJanuaServerFootball.Create aSettings is nil');
    if not Assigned(aLocalStorage) and not Assigned(aRemoteStorage) then
      raise exception.Create('TJanuaServerFootball.Create aLocalStorage, aRemoteStorage are both Null');

    WriteLocalLog('create', 'Assign LocalStorage and RemoteStorage');
    if Assigned(aLocalStorage) then
      Create(aLocalStorage)
    else
      Create(aRemoteStorage);

    FRemoteStorage := aRemoteStorage;
    FLocalStorage := aLocalStorage;
    FFootballSettings := aSettings;

    if Assigned(FLocalStorage) then
    begin
      WriteLocalLog('create', 'FLocalStorage.CreateDataset Start');
      FLocalStorage.KeepAlive := True;
      FLocalStorage.CreateDataset;
      WriteLocalLog('create', 'FLocalStorage.CreateDataset End');

      WriteLocalLog('create', 'CheckNotNull Storage Start');
      Guard.CheckNotNull(FLocalStorage.LeaguesStorage, self.ClassName + '.Create LocalStorage.LeaguesStorage is nil');
      FLeaguesLocalStorage := FLocalStorage.LeaguesStorage; // ---------------------------------- FLeagues
      Guard.CheckNotNull(FLocalStorage.MatchesStorage, self.ClassName + '.Create LocalStorage.MatchesStorage is nil');
      FLocalMatchesStorage := FLocalStorage.MatchesStorage; // ---------------------------------- FMatches
      Guard.CheckNotNull(FLocalStorage.MatchDetailsStorage,
        ClassName + '.Create LocalStorage.MatchDetailsStorage is nil');
      FLocalMatchDetailsStorage := FLocalStorage.MatchDetailsStorage; // ---------- FMatchDetails LiveScore
      Guard.CheckNotNull(FLocalStorage.SeasonsStorage, self.ClassName + '.Create LocalStorage.SeasonsStorage is nil');
      FSeasonsLocalStorage := FLocalStorage.SeasonsStorage; // ---------------------------------- FSeasons
      Guard.CheckNotNull(FLocalStorage.ChampionhsipsStorage,
        ClassName + '.Create LocalStorage.ChampionhsipsStorage is nil');
      FChampionhsipsLocalStorage := FLocalStorage.ChampionhsipsStorage; // ---------------- FChampionships
      Guard.CheckNotNull(FLocalStorage.ChampionhsipStorage,
        ClassName + '.Create LocalStorage.ChampionhsipStorage is nil');
      FChampionhsipLocalStorage := FLocalStorage.ChampionhsipStorage; // ------------------- FChampionship
      Guard.CheckNotNull(FLocalStorage.GoalRankingsStorage,
        ClassName + '.Create LocalStorage.GoalRankingsStorage is nil');
      FGoalRankingsLocalStorage := FLocalStorage.GoalRankingsStorage; // -------------------- FGoalRanking
      Guard.CheckNotNull(FLocalStorage.RankingTableStorage,
        ClassName + '.Create LocalStorage.RankingTableStorage is nil');
      FRankingTableLocalStorage := FLocalStorage.RankingTableStorage;
      Guard.CheckNotNull(FLocalStorage.DynamicRankingStorage,
        ClassName + '.Create LocalStorage.DynamicRankingStorage is nil');
      FDynamicRankingLocalStorage := FLocalStorage.DynamicRankingStorage;
      Guard.CheckNotNull(FLocalStorage.MatchDaysNumbersStorage,
        ClassName + '.Create LocalStorage.MatchDaysNumbersStorage is nil');
      FMatchDaysNumbersLocalStorage := FLocalStorage.MatchDaysNumbersStorage;
      Guard.CheckNotNull(FLocalStorage.NextMatchesStorage,
        ClassName + '.Create LocalStorage.NextMatchesStorage is nil');
      FNextMatchesLocaltorage := FLocalStorage.NextMatchesStorage;
      Guard.CheckNotNull(FLocalStorage.NextMatchDayStorage,
        ClassName + '.Create LocalStorage.NextMatchDayStorage is nil');
      FNextMatchDayLocalStorage := FLocalStorage.NextMatchDayStorage;
      Guard.CheckNotNull(FLocalStorage.MatchDayStorage, ClassName + '.Create LocalStorage.MatchDayStorage is nil');
      FMatchDayLocalStorage := FLocalStorage.MatchDayStorage;
      Guard.CheckNotNull(FLocalStorage.DynamicGoalRankingStorage,
        ClassName + '.Create LocalStorage.DynamicGoalRankingStorage is nil');
      FDynamicGoalRankingLocalStorage := FLocalStorage.DynamicGoalRankingStorage;
      Guard.CheckNotNull(FLocalStorage.PlayerCareersStorage,
        ClassName + '.Create LocalStorage.PlayerCareersStorage is nil');
      FPlayerCareersLocalStorage := FLocalStorage.PlayerCareersStorage;
      Guard.CheckNotNull(FLocalStorage.SelectedSeasonStorage,
        ClassName + '.Create LocalStorage.SelectedSeasonStorage is nil');
      FSelectedSeasonLocalStorage := FLocalStorage.SelectedSeasonStorage;
      // FCalendarMatchesLocalStorage := FLocalStorage.CalendarDayStorage; // ---------- FCalendarMatches
      Guard.CheckNotNull(FLocalStorage.CalendarDayStorage,
        ClassName + '.Create LocalStorage.CalendarMatchesStorage is nil');
      FCalendarMatcDaysLocalStorage := FLocalStorage.CalendarDayStorage;
    end;

    if Assigned(FRemoteStorage) then
    begin
      WriteLocalLog('create', 'FRemoteStorage.CreateDataset');
      FRemoteStorage.KeepAlive := True;
      FRemoteStorage.CreateDataset;
      FLeaguesRemoteStorage := FRemoteStorage.LeaguesStorage; // ---------------------------------- FLeagues
      FRemoteMatchesStorage := FRemoteStorage.MatchesStorage; // ---------------------------------- FMatches
      FRemoteMatchDetailsStorage := FRemoteStorage.MatchDetailsStorage; // --------- FMatchDetails LiveScore
      FSeasonsRemoteStorage := FRemoteStorage.SeasonsStorage; // ---------------------------------- FSeasons
      FChampionhsipsRemoteStorage := FRemoteStorage.ChampionhsipsStorage; // ---------------- FChampionships
      FChampionhsipRemoteStorage := FRemoteStorage.ChampionhsipStorage; // -------------------- FChampionship
      FCalendarMatcDaysRemoteStorage := FRemoteStorage.CalendarDayStorage; // Calendar Day Matches
      // FCalendarMatchesRemoteStorage := FRemoteStorage.CalendarDayStorage; // ---------- FCalendarMatches
      FGoalRankingsRemoteStorage := FRemoteStorage.GoalRankingsStorage; // -------------------- FGoalRanking
      FRankingTableRemoteStorage := FRemoteStorage.RankingTableStorage;
      FDynamicRankingRemoteStorage := FRemoteStorage.DynamicRankingStorage;
      FMatchDaysNumbersRemoteStorage := FRemoteStorage.MatchDaysNumbersStorage;
      FNextMatchesRemoteStorage := FRemoteStorage.NextMatchesStorage;
      FNextMatchDayRemoteStorage := FRemoteStorage.NextMatchDayStorage;
      FMatchDayRemoteStorage := FRemoteStorage.MatchDayStorage;
      FDynamicGoalRankingRemoteStorage := FRemoteStorage.DynamicGoalRankingStorage;
      FPlayerCareersRemoteStorage := FRemoteStorage.PlayerCareersStorage;
    end;
    WriteLocalLog('create', 'TPlayerCareerFactory.CreateRecordset');
    // ---------------------------------- FPlayerCareers ----------------------------------------------
    FPlayerCareers := TPlayerCareerFactory.CreateRecordset('playercareers', FPlayerCareersLocalStorage,
      FPlayerCareersRemoteStorage);
    AddRecordSet(FPlayerCareers); // Important
    WriteLocalLog('create', 'TLeaguesFactory.CreateRecordset');
    // ---------------------------------- FLeagues ----------------------------------------------
    FLeagues := TLeaguesFactory.CreateRecordset('leagues', FLeaguesLocalStorage, FLeaguesRemoteStorage);
    AddRecordSet(FLeagues); // Important
    WriteLocalLog('create', 'TLeaguesFactory.CreateRecordset');
    // ---------------------------------- FMatches ----------------------------------------------
    FMatches := TMatchFactory.CreateRecordset('matches', FLocalMatchesStorage, FRemoteMatchesStorage) as IMatches;
    AddRecordSet(self.FMatches);
    WriteLocalLog('create', 'TMatchFactory.CreateRecordset');
    // ---------------------------------- FMatchDetails LiveScore ----------------------------------
    FMatchDetails := TMatchDetailsFactory.CreateRecordset('matchedetails', FLocalMatchDetailsStorage,
      FRemoteMatchDetailsStorage) as IMatchDetails;
    AddRecordSet(self.FMatchDetails);
    // ---------------------------------- FSeasons ----------------------------------------------
    FSeasons := TSeasonFactory.CreateRecordset('matches', FSeasonsLocalStorage, FSeasonsRemoteStorage) as ISeasons;
    AddRecordSet(FSeasons);
    // ---------------------------------- FChampionships ----------------------------------------------
    FChampionships := TChampionshipFactory.CreateRecordset('championships', FChampionhsipsLocalStorage,
      FChampionhsipsRemoteStorage);
    AddRecordSet(self.FChampionships);
    // ---------------------------------- FChampionship ----------------------------------------------
    // Constructor Create(const aName: string; aDataset: IJanuaDBDataset); overload;
    FChampionship := TChampionship.Create('championship', (FLocalStorage as IJanuaDBFootballStorage).jdsChampionship);
    // AddRecordSet(self.FChampionship);
    // ---------------------------------- FCalendarMatchDays ----------------------------------------------
    FMatchCalendarDays := TMatchCalendarDayFactory.CreateRecordset('calendardays', FCalendarMatcDaysLocalStorage,
      FCalendarMatcDaysLocalStorage);
    AddRecordSet(self.FMatchCalendarDays);
    // ---------------------------------- FGoalRanking ----------------------------------------------
    FGoalRanking := TGoalRankingFactory.CreateRecordset('matches', FGoalRankingsLocalStorage,
      FGoalRankingsRemoteStorage) as IGoalRankingTable;
    AddRecordSet(self.FGoalRanking);
    // ---------------------------------- FRankingTable ----------------------------------------------
    FRankingTable := TRankingRowFactory.CreateRecordset('rankingtable', FRankingTableLocalStorage,
      FRankingTableRemoteStorage) as IRankingTable;
    AddRecordSet(self.FRankingTable);
    // ---------------------------------- FDynamicRanking ----------------------------------------------
    FDynamicRanking := TRankingRowFactory.CreateRecordset('dynranking', FDynamicRankingLocalStorage,
      FDynamicRankingRemoteStorage) as IRankingTable;
    AddRecordSet(self.FDynamicRanking);
    // ---------------------------------- FDynamicRanking ----------------------------------------------
    FMatchDayLists := TMatchDayNumberFactory.CreateRecordset('matchdayslist', FMatchDaysNumbersLocalStorage,
      FMatchDaysNumbersRemoteStorage) as IMatchDayNumbers;
    AddRecordSet(self.FMatchDayLists);
    // ---------------------------------- FNextMatches ----------------------------------------------
    FNextMatches := TMatchFactory.CreateRecordset('matches', FNextMatchesLocaltorage, FNextMatchesRemoteStorage)
      as IMatches;
    AddRecordSet(self.FNextMatches);
    // ---------------------------------- FNextMatchDay ----------------------------------------------
    // FNextMatchDay := TMatchDay.Create('nextmatchday');
    FNextMatchDay := TMatchDayFactory.CreateRecordset('nextmatchday', FNextMatchDayLocalStorage,
      FNextMatchDayRemoteStorage) as IMatchDays;
    AddRecordSet(self.FNextMatchDay);
    // ---------------------------------- FMatchDay ----------------------------------------------
    // FMatchDay := TMatchDay.Create('matchday');
    FMatchDay := TMatchDayFactory.CreateRecordset('matchday', FMatchDayLocalStorage, FMatchDayRemoteStorage)
      as IMatchDays;
    AddRecordSet(self.FMatchDay);
    // AddRecordSet(self.FMatchDay);
    // ---------------------------------- FSelectedSeason ----------------------------------------------
    // FSelectedSeason := TSeason.Create('selectedseason');
    FSelectedSeason := TSeasonFactory.CreateRecordset('selectedseason', FSelectedSeasonLocalStorage,
      FSelectedSeasonRemoteStorage);
    // ---------------------------------- FMatchDay ----------------------------------------------
    FDynamicGoalRanking := TGoalRankingFactory.CreateRecordset('dyngoalranking', FDynamicGoalRankingLocalStorage,
      FDynamicGoalRankingRemoteStorage);
    AddRecordSet(self.FDynamicGoalRanking);
    // ---------------------------------- FMatchDay ----------------------------------------------
    FMatchDetails := TMatchDetailsFactory.CreateRecordset('matchdetails', FLocalMatchDetailsStorage,
      FRemoteMatchDetailsStorage);
    AddRecordSet(FMatchDetails);

    self.AddFunction('matchdetails', RestGetMatchDetails);
    self.AddFunction('seasons', RestGetSeasons);
    self.AddFunction('championships', RestGetChampionships);
    self.AddFunction('championship', RestGetChampionship);
    self.AddFunction('ranking', RestGetRankingTable);
    self.AddFunction('goalranking', RestGetGoalRanking);
    self.AddFunction('nextmatches', RestGetNexMatches);
    self.AddFunction('matchday', RestGetMatchDay);
    self.AddFunction('nextmatchday', RestGetNextMatchDay);
    self.AddFunction('calendarmatches', RestGetCalendarMatchDays);
    self.AddFunction('selectedseason', RestGetSelectedSeason);
    self.AddFunction('matchdaylist', RestGetMatchDaysList);
    self.AddFunction('dynranking', RestGetDynamicRanking);
    self.AddFunction('leaguesparams', RestGetLeaguesaParams);
    self.AddFunction('dyngoalranking', RestGetDynamicGoalRanking);
    self.AddFunction('playercareers', RestGetPlayerCareers);
    self.AddFunction('livescore', self.RestGetLiveScore);
  except
    on e: exception do
      CreateException('Create Create(aLocalStorage, aRemoteStorage, aSettings', e.Message, self, self.logString);
  end;
end;

function TJanuaServerFootball.CreateFootballParams: IJanuaParams;
begin
  Result := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
end;

function TJanuaServerFootball.GetCache: IJanuaServerFootballCache;
begin
  Result := self.FCache
end;

{
  function TJanuaServerFootball.GetCalendarMatches: IMatches;
  begin
  Result := self.FCalendarMatches
  end;
}

function TJanuaServerFootball.GetChampionship: IChampionship;
begin
  Result := self.FChampionship
end;

function TJanuaServerFootball.GetChampionshipDayName: string;
begin
  Result := IfThen(Assigned(FLocalStorage), FLocalStorage.GetChampionshipDayName,
    FRemoteStorage.GetChampionshipDayName);
end;

function TJanuaServerFootball.GetChampionships: IChampionships;
begin
  Result := self.FChampionships
end;

function TJanuaServerFootball.GetChampionshipsDataset(aSeason: integer): integer;
begin
  Result := 4;
end;

function TJanuaServerFootball.GetDefaultLeague: smallint;
begin
  Result := 4;
end;

function TJanuaServerFootball.GetDefaults: boolean;
begin
  Result := True;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');
  self.FLocalStorage.CreateDataset;
  try

  finally

  end;
end;

function TJanuaServerFootball.GetDynamicGoalRanking: IGoalRankingTable;
begin
  Result := self.FDynamicGoalRanking
end;

function TJanuaServerFootball.GetDynamicRanking: IRankingTable;
begin
  Result := self.FDynamicRanking
end;

function TJanuaServerFootball.GetGoalRanking: IGoalRankingTable;
begin
  Result := self.FGoalRanking
end;

function TJanuaServerFootball.GetJanuaFootballStorage: IJanuaFootballStorage;
begin
  Result := self.FLocalStorage
end;

function TJanuaServerFootball.GetLastMatchDay: smallint;
begin
  try
    Guard.CheckTrue(Assigned(self.FFootballSettings), 'FFootballSettings not set');
    Result := FFootballSettings.LastMatchDay;
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.GetLastMatchDay ' + e.Message);
  end;
end;

function TJanuaServerFootball.GetLastMatchNumber: smallint;
begin
  if Assigned(self.FFootballSettings) and (getSeason_ID > 0) and (getLeague_ID > 0) then
    Result := SearchLastMatchNumber(getSeason_ID, getLeague_ID)
  else
    Result := -1
end;

function TJanuaServerFootball.GetLastSeasonID: smallint;
begin
  try
    Guard.CheckTrue(Assigned(FLocalStorage) or Assigned(FRemoteStorage), ' Storage Selected');
    if Assigned(FLocalStorage) then
      Result := FLocalStorage.GetLastSeasonID
    else
      Result := FRemoteStorage.GetLastSeasonID
  except
    on e: exception do
      raise exception.Create(self.ClassName + 'GetLastSeasonID ' + e.Message);
  end;
end;

function TJanuaServerFootball.GetLeagues: ILeagues;
begin
  Result := self.FLeagues
end;

function TJanuaServerFootball.getLeague_ID: smallint;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.league_id, 0);
end;

function TJanuaServerFootball.GetLocalMatchesStorage: IJanuaRecordSetStorage;
begin
  Result := FLocalMatchesStorage
end;

function TJanuaServerFootball.GetMatchCalendarDays: IMatchCalendarDays;
begin
  Guard.CheckNotNull(FMatchCalendarDays, self.ClassName + '.FMatchCalendarDays is nil');
  Result := self.FMatchCalendarDays
end;

function TJanuaServerFootball.GetMatchDay: IMatchDays;
begin
  Result := self.FMatchDay
end;

function TJanuaServerFootball.GetMatchDaysList: IMatchDayNumbers;
begin
  Result := self.FMatchDayLists
end;

function TJanuaServerFootball.GetMatchDetails: IMatchDetails;
begin
  Result := self.FMatchDetails
end;

function TJanuaServerFootball.GetMatches: IMatches;
begin
  Result := FMatches
end;

function TJanuaServerFootball.getMatch_Day: smallint;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.match_day, 0);
end;

function TJanuaServerFootball.getMatch_ID: int64;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.match_id, 0);
end;

function TJanuaServerFootball.getMatch_team: integer;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.match_team, 0);
end;

function TJanuaServerFootball.GetNextDayNumber: smallint;
begin
  Result := getMatch_Day + 1;
end;

function TJanuaServerFootball.GetNextMatchDay: IMatchDays;
begin
  Result := self.FNextMatchDay
end;

function TJanuaServerFootball.GetNextMatches: IMatches;
begin
  Result := self.FNextMatches
end;

function TJanuaServerFootball.GetPlayerCareers: IPlayerCareers;
begin
  Result := self.FPlayerCareers;
end;

function TJanuaServerFootball.getPlayer_id: integer;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.player_id, 0);
end;

function TJanuaServerFootball.GetRankingTable: IRankingTable;
begin
  Result := self.FRankingTable
end;

function TJanuaServerFootball.GetRemoteMatchesStorage: IJanuaRecordSetStorage;
begin
  Result := FRemoteMatchesStorage
end;

function TJanuaServerFootball.GetSeasons: ISeasons;
begin
  Result := self.FSeasons
end;

function TJanuaServerFootball.getSeason_ID: smallint;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.season_id, 0);
end;

function TJanuaServerFootball.GetSelectedSeason: ISeasons;
begin
  Result := self.FSelectedSeason;
end;

function TJanuaServerFootball.GetSettings: IFootballSettings;
begin
  Result := self.FFootballSettings
end;

function TJanuaServerFootball.getTeam_id: integer;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.team_id, 0);
end;

procedure TJanuaServerFootball.OpenCalendar;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenCalendar;
    // FMatchDays ? il calendario delle giornate .............
    // Calendar Matches ? disabilitato in quanto ora ? una propriet? di Calendar Days.
    FMatchCalendarDays.LoadFromLocalStorage
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenCalendar;
    FMatchCalendarDays.LoadFromRemoteStorage;
  end;
end;

procedure TJanuaServerFootball.OpenCalendar(aSeasonID, aLeagueID: Word);
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.FFootballSettings.league_id := aLeagueID;
  self.OpenCalendar
end;

procedure TJanuaServerFootball.OpenChampionship;
begin
  try
    if Assigned(self.FLocalStorage) then
    begin
      FLocalStorage.CreateDataset;
      self.FLocalStorage.OpenChampionship;
      // Non necessario FChampionship ? creato con il DataSetStorage di OpenChampionships
      self.FChampionship.LoadFromLocalStorage;
      // self.FChampionship.DirectLoadFromDataset(FLocalStorage.jdsChampionship.Dataset);
    end
    else
    begin
      FRemoteStorage.CreateDataset;
      self.FRemoteStorage.OpenChampionship;
      FMatches.LoadFromRemoteStorage;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenChampionship: ' + sLineBreak + e.Message);
  end;
end;

procedure TJanuaServerFootball.OpenChampionShips;
begin
  try
    if Assigned(self.FLocalStorage) then
    begin
      FLocalStorage.CreateDataset;
      self.FLocalStorage.OpenChampionShips;
      FChampionships.LoadFromLocalStorage;
      self.FLeagues.LoadFromLocalStorage;
    end
    else
    begin
      FRemoteStorage.CreateDataset;
      self.FRemoteStorage.OpenChampionShips;
      FChampionships.LoadFromRemoteStorage;
      FLeagues.LoadFromRemoteStorage;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenChampionShips: ' + sLineBreak + e.Message);
  end;
end;

procedure TJanuaServerFootball.OpenChampionShips(aSeasonID: integer);
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.OpenChampionShips;
end;

procedure TJanuaServerFootball.OpenChampionshipsList;
begin
  OpenChampionShips
end;

procedure TJanuaServerFootball.OpenChampionshipSummary;
begin
  self.CheckSeasonID;
  self.CheckChampionshipID;
  self.OpenChampionship;
  self.OpenRanking;
  self.OpenGoalRanking;
  self.OpenMatches;
  self.OpenNextMatches;
end;

procedure TJanuaServerFootball.OpenChampionshipTeam(const aSeasonID, aLeagueID, aTeam: integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aLeagueID;
  FFootballSettings.team_id := aTeam;
  self.OpenChampionshipTeam;
end;

procedure TJanuaServerFootball.OpenChampionshipTeam;
begin
  if Assigned(self.FLocalStorage) then
    FLocalStorage.OpenChampionshipTeam
  else
    self.FRemoteStorage.OpenChampionshipTeam
end;

function TJanuaServerFootball.OpenDefaultSeason: boolean;
begin
  Result := True
end;

procedure TJanuaServerFootball.OpenDefaultSeasonChampionship;
begin
  raise exception.Create('Open Default Championship not implemented yet');
end;

function TJanuaServerFootball.OpenDynamic: integer;
begin
  Result := -1;
  try
    OpenDynamicRanking;
    with FFootballSettings do
    begin
      if ((match_day = 0) and (match_day_to > 0)) or (match_day_to < match_day) then
        match_day := match_day_to;
      // implementare ricerca last_match_day if 0.
    end;
    // open Matches Ok ? legata all'ultima giornata giocata.
    self.OpenMatches;
    // Dyn Gol Ranking
    self.OpenGoalRanking;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenDynamic: ' + sLineBreak + e.Message);
  end;

end;

function TJanuaServerFootball.OpenDynamicGoalRanking: integer;
begin
  Result := -1;
  Guard.CheckNotNull(self.FDynamicGoalRanking, self.ClassName + '.OpenDynamicRanking FDynamicRanking  nil');
  Guard.CheckNotNull(FMatchDayLists, self.ClassName + '.OpenDynamicRanking FDynamicRanking  nil');
  Guard.CheckNotNull(Settings, self.ClassName + '.OpenDynamicRanking Settings  nil');
  try
    Result := self.FLocalStorage.OpenDynamicGoalRanking;
    if Result > 0 then
      self.FDynamicGoalRanking.LoadFromLocalStorage
    else
      self.FDynamicGoalRanking.Clear;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenDynamicGoalRanking: ' + sLineBreak + e.Message);
  end;
end;

function TJanuaServerFootball.OpenDynamicRanking(aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: smallint): integer;
begin
  Guard.CheckNotNull(FDynamicRanking, self.ClassName + '.OpenDynamicRanking FDynamicRanking  nil');
  Guard.CheckNotNull(FMatchDayLists, self.ClassName + '.OpenDynamicRanking FDynamicRanking  nil');
  Guard.CheckNotNull(Settings, self.ClassName + '.OpenDynamicRanking Settings  nil');
  try
    self.Settings.season_id := aSeasonID;
    self.Settings.league_id := aLeagueID;
    self.Settings.match_day_from := aMatchDayFrom;
    self.Settings.match_day_to := aMatchDayTo;
    Result := self.OpenDynamicRanking;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenDynamicRanking: ' + sLineBreak + e.Message);
  end;
end;

function TJanuaServerFootball.OpenDynamicRanking: integer;
begin
  Result := -1;
  Guard.CheckNotNull(FDynamicRanking, self.ClassName + '.OpenDynamicRanking FDynamicRanking  nil');
  try
    if Assigned(self.FLocalStorage) then
    begin
      FLocalStorage.CreateDataset;
      self.FLocalStorage.OpenDynamicRanking;
      self.OpenMatchDayLists;
      self.OpenChampionshipsList;
      // Occorre aprire il giusto oggetto la Dynamic Ranking Table
      self.FDynamicRanking.LoadFromLocalStorage;
      Result := FDynamicRanking.RecordCount;
    end
    else
    begin
      FRemoteStorage.CreateDataset;
      self.FRemoteStorage.OpenDynamicRanking;
      self.OpenMatchDayLists;
      self.OpenChampionshipsList;
      self.FDynamicRanking.LoadFromRemoteStorage;
      Result := FDynamicRanking.RecordCount;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenDynamicRanking: ' + sLineBreak + e.Message);
  end;
end;

function TJanuaServerFootball.OpenFirstLeague: integer;
begin
  Result := 1
end;

procedure TJanuaServerFootball.OpenGoalRanking;
begin
  try
    if Assigned(self.FLocalStorage) then
    begin
      FLocalStorage.CreateDataset;
      self.FLocalStorage.OpenGoalRanking;
      self.FGoalRanking.LoadFromLocalStorage;
    end
    else if Assigned(FRemoteStorage) then
    begin
      FRemoteStorage.CreateDataset;
      self.FRemoteStorage.OpenGoalRanking;
      self.FGoalRanking.LoadFromRemoteStorage;
    end
    else
      raise exception.Create('Storage is not Set');
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenGoalRanking: ' + sLineBreak + e.Message);
  end;
end;

procedure TJanuaServerFootball.OpenGoalRanking(aSeasonID, aLeague, aDay: integer);
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.FFootballSettings.league_id := aLeague;
  self.FFootballSettings.match_day := aDay;
  OpenGoalRanking
end;

function TJanuaServerFootball.OpenLastSeason: integer;
begin
  Result := 0;
  self.OpenSeasonsList;
  if self.FSeasons.RecordCount > 0 then
  begin
    FSeasons.First;
    while not FSeasons.Eof do
    begin
      Result := IfThen(Result < FSeasons.SeasonId.AsInteger, FSeasons.SeasonId.AsInteger, Result);
    end;
  end;
end;

function TJanuaServerFootball.OpenLiveScore(aMatchID: int64): integer;
begin
  self.FFootballSettings.season_id := 0;
  self.FFootballSettings.league_id := 0;
  self.FFootballSettings.match_day := 0;
  self.FFootballSettings.match_id := aMatchID;
  Result := self.OpenLiveScore
end;

function TJanuaServerFootball.OpenLiveScore(aSeasonID, aLeagueID, aMatchDay: smallint): integer;
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.FFootballSettings.league_id := aLeagueID;
  self.FFootballSettings.match_day := aMatchDay;
  self.FFootballSettings.match_id := 0;
  Result := self.OpenLiveScore
end;

function TJanuaServerFootball.OpenLiveScore(aSeasonID, aLeagueID: smallint): integer;
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.FFootballSettings.league_id := aLeagueID;
  self.FFootballSettings.match_day := 0;
  self.FFootballSettings.match_id := 0;
  Result := self.OpenLiveScore
end;

function TJanuaServerFootball.OpenLiveScore: integer;
begin
  try
    if Assigned(self.FLocalStorage) then
    begin
      FLocalStorage.CreateDataset;
{$IFDEF JANUA_TEST}
      TJanuaLogger.LogRecord('OpenLiveScore', 'FLocalStorage.CreateDataset', self);
{$ENDIF}
      self.FLocalStorage.OpenLiveScore;
{$IFDEF JANUA_TEST}
      TJanuaLogger.LogRecord('OpenLiveScore', 'FLocalStorage.OpenLiveScore', self);
{$ENDIF}
      self.FMatchDay.LoadFromLocalStorage;
{$IFDEF JANUA_TEST}
      TJanuaLogger.LogRecord('OpenLiveScore', 'FMatchDay.LoadFromLocalStorage', self);
{$ENDIF}
{$IFDEF JANUA_TEST}
      TJanuaLogger.LogRecord('OpenLiveScore', 'FMatchDetails.LoadFromLocalStorage.Start', self);
{$ENDIF}
      FMatchDetails.LoadFromLocalStorage;
{$IFDEF JANUA_TEST}
      TJanuaLogger.LogRecord('OpenLiveScore', 'FMatchDetails.LoadFromLocalStorage.End', self);
{$ENDIF}
    end
    else if Assigned(self.FRemoteStorage) then
    begin
      FRemoteStorage.CreateDataset;
      self.FRemoteStorage.OpenMatchDetail;
      FMatchDetails.LoadFromRemoteStorage;
    end
    else
      raise exception.Create('Storage is not Set');

    Result := self.FMatchDetails.RecordCount;
  except
    on e: exception do
      raise exception.Create('TJanuaServerFootball.OpenLiveScore: ' + sLineBreak + e.Message);
  end;;
end;

procedure TJanuaServerFootball.OpenMatchDetail;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenMatchDetail;
    self.FMatchDetails.LoadFromLocalStorage;
  end
  else if Assigned(self.FRemoteStorage) then
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenMatchDetail;
    FMatchDetails.LoadFromRemoteStorage;
  end
  else
    raise exception.Create('Storage is not Set');
end;

procedure TJanuaServerFootball.OpenMatchDetail(aSeasonID, aLeagueID, aMatchNumber: integer);
begin
  FFootballSettings.match_id := 0;
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aLeagueID;
  FFootballSettings.match_day := aMatchNumber;
  self.OpenMatchDetail;
end;

procedure TJanuaServerFootball.OpenMatchDetail(aMatchID: int64);
begin
  FFootballSettings.match_id := aMatchID;
  self.OpenMatchDetail;
end;

procedure TJanuaServerFootball.OpenMatches(aSeasonID, aLeagueID, aMatchNumber: integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aLeagueID;
  FFootballSettings.match_day := aMatchNumber;
  self.OpenMatches;
end;

procedure TJanuaServerFootball.OpenMatches;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.OpenChampionship;
    self.FLocalStorage.OpenMatches;
    FMatches.LoadFromLocalStorage;
    FMatchDay.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenMatches;
    FMatches.LoadFromRemoteStorage;
    FMatchDay.LoadFromRemoteStorage;
  end;

end;

procedure TJanuaServerFootball.OpenMatchTeam(aMatchID: int64; aTeamID: integer);
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenMatchTeam(aMatchID, aTeamID);
    self.FLocalStorage.OpenMatches;
    FMatches.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenMatches;
    FMatches.LoadFromRemoteStorage;
  end;

end;

procedure TJanuaServerFootball.OpenNextMatches;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenNextMatches;
    self.FNextMatches.LoadFromLocalStorage;
    FNextMatchDay.LoadFromLocalStorage;
    // self.FNextMatchDay.DirectLoadFromDataset(FLocalStorage.jdsNextMatchDay.Dataset);
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenNextMatches;
    self.FNextMatches.LoadFromRemoteStorage;
  end;

end;

procedure TJanuaServerFootball.OpenPlayerCareer;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenPlayerCareer;
    self.FPlayerCareers.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenPlayerCareer;
    FPlayerCareers.LoadFromRemoteStorage;
  end;
end;

procedure TJanuaServerFootball.OpenPlayerCareer(aID: integer);
begin
  FFootballSettings.player_id := aID;
  self.OpenPlayerCareer;
end;

procedure TJanuaServerFootball.OpenRanking;
var
  LTest: integer;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    FLocalStorage.OpenRanking;
    FRankingTable.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.OpenRanking;
    FRankingTable.LoadFromLocalStorage;
  end;
  LTest := FRankingTable.RecordCount
end;

procedure TJanuaServerFootball.OpenRanking(aSeasonID, aChampionshipID: integer);
begin
  FFootballSettings.season_id := aSeasonID;
  FFootballSettings.league_id := aChampionshipID;
  self.OpenRanking;
end;

function TJanuaServerFootball.OpenSeason(aSeason: smallint): boolean;
begin
  // Open Season Procedure 'should' open both the Season and the Season-Championships
  // List. It Can be Useful to analyze the list.
  self.Settings.season_id := aSeason;
  Result := OpenSeason;

end;

procedure TJanuaServerFootball.OpenSeasonChampionship;
begin
  self.OpenChampionship;
end;

function TJanuaServerFootball.OpenSeason: boolean;
var
  LDataset: IJanuaDBDataset;
  LDatasets: TArray<IJanuaDBDataset>;
begin
  Result := False;
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    // Apre 1 record della stagione
    // FLocalStorage.OpenChampionShips;
    Result := FLocalStorage.OpenSeason(Settings.season_id);
    // A Questo punto Occorrerebbe caricare la Stagione .. occorrerebbe caricare la Stagione compreso
    // L'elenco dei campionati iscritti nella stagione medesima.
    LDataset := (FLocalStorage as IJanuaDBFootballStorage).jdsSelectedSeason;
    FSelectedSeason.LoadFromDataset(LDataset, LDatasets);
    // Apre i Campionati della Stagione
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    Result := FLocalStorage.OpenSeason(Settings.season_id);
    FRankingTable.LoadFromLocalStorage;
  end;
end;

procedure TJanuaServerFootball.OpenSeasonChampionship(aSeasonID, aChampionshipID: integer);
begin
  self.Settings.season_id := aSeasonID;
  self.Settings.league_id := aChampionshipID;
  self.OpenSeasonChampionship;
end;

procedure TJanuaServerFootball.OpenSeasons;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    FLocalStorage.OpenSeasons;
    self.FSeasons.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.OpenRanking;
    FRankingTable.LoadFromRemoteStorage;
  end;
end;

procedure TJanuaServerFootball.OpenSeasonsList;
begin
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenSeasonsList  IFootballSettings not set');
  try
    FLocalStorage.CreateDataset;
    FLocalStorage.OpenSeasonsList;
    FSeasons.LoadFromLocalStorage;
    // self.FSeasons.SetSelected(FFootballSettings.season_id);
  except
    on e: exception do
      raise exception.Create('TJanuaCustomServerFootball.RankingHtmlPage' + e.Message);
  end;
end;

procedure TJanuaServerFootball.OpenTeamChampionship(aSeasonID, aLeagueID, aTeamID: smallint);
begin
  self.FFootballSettings.season_id := aSeasonID;
  self.FFootballSettings.league_id := aLeagueID;
  self.FFootballSettings.team_id := aTeamID;
end;

procedure TJanuaServerFootball.OpenTeamPlayers;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    FLocalStorage.OpenTeamPlayers;
    self.FMatches.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.OpenChampionshipTeam;
    FRankingTable.LoadFromRemoteStorage;
  end;
end;

procedure TJanuaServerFootball.OpenTeamChampionship;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    FLocalStorage.OpenChampionshipTeam;
    self.FSeasons.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.OpenChampionshipTeam;
    FRankingTable.LoadFromRemoteStorage;
  end;
end;

procedure TJanuaServerFootball.OpenTeamPlayers(aTeamID, aSeasonID: Int16);
begin
  self.FFootballSettings.team_id := aTeamID;
  self.FFootballSettings.season_id := aSeasonID;
  self.OpenTeamPlayers;
end;

procedure TJanuaServerFootball.RefreshData;
begin
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    FLocalStorage.RefreshData;
    self.FSeasons.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    FRemoteStorage.RefreshData;
    FRankingTable.LoadFromRemoteStorage;
  end;
end;

// RestGetMatchCalendarDays
function TJanuaServerFootball.RestGetCalendarMatchDays(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetCalendarMatches aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenCalendar;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetMatchCalendarDays);
end;

function TJanuaServerFootball.RestGetChampionship(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetChampionship aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenChampionship;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.Records.Add(self.GetChampionship);
end;

function TJanuaServerFootball.RestGetChampionships(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetChampionships aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenChampionShips;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetChampionships);
end;

function TJanuaServerFootball.RestGetDynamicGoalRanking(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetDynamicGoalRanking aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenDynamicGoalRanking;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.Count := Result.RecResult.RecordSets.Add(self.GetDynamicGoalRanking);
end;

function TJanuaServerFootball.RestGetDynamicRanking(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetSeasons aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenDynamicRanking;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetDynamicRanking);
end;

function TJanuaServerFootball.RestGetGoalRanking(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetSeasons aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenGoalRanking;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetGoalRanking);
end;

function TJanuaServerFootball.RestGetleagues(const aParams: IJanuaParams): IJanuaFuncResult;
begin

end;

function TJanuaServerFootball.RestGetLeaguesaParams(const aParams: IJanuaParams): IJanuaFuncResult;
begin

end;

function TJanuaServerFootball.RestGetLiveScore(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetSeasons aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenLiveScore;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetMatchDetails);
end;

function TJanuaServerFootball.RestGetMatchDay(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetSeasons aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenMatches;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  // Ritorno come risultato sia le partite (Matches) che la Giornata. Questo rende la funzione
  // un duplicato della proedura RestGetMatches.
  Result.RecResult.RecordSets.Add(self.GetMatchDay);
  Result.RecResult.RecordSets.Add(self.GetMatches);
end;

function TJanuaServerFootball.RestGetMatchDaysList(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetSeasons aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenMatchDayLists;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetMatchDaysList);
end;

function TJanuaServerFootball.RestGetMatchDetails(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetArguments RestGetArguments is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenLiveScore;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetMatchDetails);
end;

function TJanuaServerFootball.RestGetMatches(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetArguments RestGetArguments is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  self.OpenMatches;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetMatches);
end;

function TJanuaServerFootball.RestGetSeasons(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetSeasons aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenSeasons;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetSeasons);
end;

function TJanuaServerFootball.RestGetNexMatches(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Result := RestGetNextMatchDay(aParams)
end;

function TJanuaServerFootball.RestGetNextMatchDay(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetNextMatchDay aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenNextMatches;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetNextMatchDay);
  Result.RecResult.RecordSets.Add(self.GetNextMatches);
end;

function TJanuaServerFootball.RestGetPlayerCareers(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetPlayerCareer aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenPlayerCareer;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetPlayerCareers);
end;

function TJanuaServerFootball.RestGetRankingTable(const aParams: IJanuaParams): IJanuaFuncResult;
var
  LTest: integer;
begin
  Result := TJanuaFuncResult.Create;
  try
    Guard.CheckNotNull(aParams, ClassName + '.RestGetRankingTable aParams is nil');
    // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
    TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
    // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
    self.OpenRanking;
    LTest := self.FRankingTable.RecordCount;
    Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
    Result.RecResult.RecordSets.Add(self.GetRankingTable);
  except
    on e: exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := e.Message;
    end;

  end;
end;

function TJanuaServerFootball.RestGetSelectedSeason(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Guard.CheckNotNull(aParams, ClassName + '.RestGetRankingTable aParams is nil');
  // Questa funzione traduce i parametri REST ed imposta la variabile FootballSettings
  TJanuaFootballFactory.TranslateParams(aParams, self.FFootballSettings);
  // Esegue OpenMatchDetail ma dovrebbe eseguire OpenLiveScore
  self.OpenSeason;
  Result := TJanuaFuncResult.Create;
  Result.Params := TJanuaFootballFactory.CreateFootballParams(self.FFootballSettings);
  Result.RecResult.RecordSets.Add(self.GetSelectedSeason);
end;

function TJanuaServerFootball.SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint;
begin
  Result := 30;
end;

procedure TJanuaServerFootball.SetCache(const Value: IJanuaServerFootballCache);
begin
  self.FCache := Value;
  FUseCache := Assigned(Value);
end;

procedure TJanuaServerFootball.SetChampionship(const Value: IChampionship);
begin
  FChampionship := Value;
end;

procedure TJanuaServerFootball.SetChampionships(const Value: IChampionships);
begin
  FChampionships := Value;
end;

procedure TJanuaServerFootball.SetDynamicGoalRanking(const Value: IGoalRankingTable);
begin
  FDynamicGoalRanking := Value;
end;

procedure TJanuaServerFootball.SetDynamicRanking(const Value: IRankingTable);
begin
  self.FDynamicRanking := Value;
end;

procedure TJanuaServerFootball.SetGoalRanking(const Value: IGoalRankingTable);
begin
  FGoalRanking := Value;
end;

procedure TJanuaServerFootball.SetJanuaFootballStorage(const Value: IJanuaFootballStorage);
begin
  self.FLocalStorage := Value;
end;

procedure TJanuaServerFootball.SetLeagues(const Value: ILeagues);
begin
  self.FLeagues := Value
end;

procedure TJanuaServerFootball.setLeague_ID(const Value: smallint);
begin

end;

procedure TJanuaServerFootball.SetLocalMatchesStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FLocalMatchesStorage := Value
end;

procedure TJanuaServerFootball.SetMatchCalendarDays(const Value: IMatchCalendarDays);
begin
  FMatchCalendarDays := Value;
end;

procedure TJanuaServerFootball.SetMatchDay(const Value: IMatchDays);
begin
  FMatchDay := Value;
end;

procedure TJanuaServerFootball.SetMatchDaysList(const Value: IMatchDayNumbers);
begin

end;

procedure TJanuaServerFootball.SetMatchDetails(const Value: IMatchDetails);
begin
  FMatchDetails := Value;
end;

procedure TJanuaServerFootball.SetMatches(const Value: IMatches);
begin
  self.FMatches := Value;
end;

procedure TJanuaServerFootball.setMatch_day(const Value: smallint);
begin

end;

procedure TJanuaServerFootball.setMatch_ID(const Value: int64);
begin

end;

procedure TJanuaServerFootball.Setmatch_team(const Value: integer);
begin

end;

procedure TJanuaServerFootball.SetNextMatchDay;
begin

end;

procedure TJanuaServerFootball.SetNextMatches(const Value: IMatches);
begin
  FNextMatches := Value;
end;

procedure TJanuaServerFootball.SetPlayerCareers(const Value: IPlayerCareers);
begin

end;

procedure TJanuaServerFootball.SetRankingTable(const Value: IRankingTable);
begin
  FRankingTable := Value;
end;

procedure TJanuaServerFootball.SetRemoteMatchesStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FRemoteMatchesStorage := Value
end;

procedure TJanuaServerFootball.SetSeasons(const Value: ISeasons);
begin
  FSeasons := Value;
end;

procedure TJanuaServerFootball.setSeason_ID(const Value: smallint);
begin

end;

procedure TJanuaServerFootball.SetSelectedSeason(const Value: ISeasons);
begin
  FSelectedSeason := Value;
end;

procedure TJanuaServerFootball.SetSettings(const Value: IFootballSettings);
begin
  FFootballSettings := Value;
end;

procedure TJanuaServerFootball.SetTeam_ID(const Value: integer);
begin

end;

procedure TJanuaServerFootball.SetupSeason(aSeasonID: integer; aLeagueID: smallint);
begin

end;

procedure TJanuaServerFootball.TestOpenChampionship;
begin

end;

function TJanuaServerFootball.OpenCareer: smallint;
begin
  Guard.CheckNotNull(self.FPlayerCareers, self.ClassName + '.OpenCareer FPlayerCareers  nil');
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenPlayerCareer;
    // Occorre aprire il giusto oggetto la Dynamic Ranking Table
    self.FPlayerCareers.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenPlayerCareer;
    self.FPlayerCareers.LoadFromRemoteStorage;
  end;
  Result := FPlayerCareers.RecordCount;
end;

function TJanuaServerFootball.OpenCareer(aPlayerID: integer): smallint;
begin
  self.Settings.player_id := aPlayerID;
  Result := -1;
  { TODO -cIndy : TJanuaServerFootball.OpenCareer(aPlayerID: integer) }
end;

function TJanuaServerFootball.OpenMatchDayLists(aSeasonID, aLeagueID: smallint): integer;
begin
  Guard.CheckNotNull(FMatchDayLists, self.ClassName + '.OpenMatchDayLists FMatchDayLists  nil');
  Guard.CheckNotNull(Settings, self.ClassName + '.OpenMatchDayLists Settings  nil');
  self.Settings.season_id := aSeasonID;
  self.Settings.league_id := aLeagueID;
  Result := self.OpenMatchDayLists;
end;

function TJanuaServerFootball.OpenMatchDayLists: integer;
begin
  Guard.CheckNotNull(FMatchDayLists, self.ClassName + '.OpenMatchDayLists FMatchDayLists  nil');
  if Assigned(self.FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    self.FLocalStorage.OpenMatchDayLists;
    // Occorre aprire il giusto oggetto la Dynamic Ranking Table
    self.FMatchDayLists.LoadFromLocalStorage;
  end
  else
  begin
    FRemoteStorage.CreateDataset;
    self.FRemoteStorage.OpenMatchDayLists;
    self.FMatchDayLists.LoadFromRemoteStorage;
  end;
  Result := FMatchDayLists.RecordCount;
end;

procedure TJanuaServerFootball.OpenMatchDetail(aSeasonID, aLeagueID, aMatchDay: smallint);
begin

end;

{ TJanuaFootballRankingTableDSStorage }

(*
  constructor TJanuaFootballRankingTableDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  Create(TRankingRowFactory.CreateRecordset(, nil, nil));
  end;

  procedure TJanuaFootballRankingTableDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsChampRanking,
  'TJanuaFootballRankingTableDSStorage.Create jdsChampRanking nil');
  RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsChampRanking;
  end;
*)

{ TJanuaFootballDynamicRankingDSStorage }

(*
  constructor TJanuaFootballDynamicRankingDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  Create(TRankingRowFactory.CreateRecordset('dynamicranking', nil, nil));
  end;

  procedure TJanuaFootballDynamicRankingDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsDynamicRanking,
  'TJanuaFootballRankingTableDSStorage.Create jdsChampRanking nil');
  RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsDynamicRanking;
  end;
*)

{ TJanuaFootballChampionshipsDSStorage }

(*
  constructor TJanuaFootballChampionshipsDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  Create(TChampionshipFactory.CreateRecordset('championships', nil, nil));
  end;

  procedure TJanuaFootballChampionshipsDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsChampionships, 'TJanuaFootballChampionshipsDSStorage.Create jdsChampionships');
  RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsChampionships;
  end;
*)

{ TJanuaFootballChampionshipDSStorage }

(*
  constructor TJanuaFootballChampionshipDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  Create(TRankingRowFactory.CreateRecordset('championship', nil, nil));
  end;

  procedure TJanuaFootballChampionshipDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsChampionship,
  'TJanuaFootballChampionshipDSStorage.Create jdsChampionship nil');
  RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsChampionship;
  end;
*)

{ TJanuaFootballNextMatchesDSStorage }

(*
  constructor TJanuaFootballNextMatchesDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TMatchFactory.CreateRecordset('nextmatch', nil, nil));
  end;

  procedure TJanuaFootballNextMatchesDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsNextMatches, 'TJanuaFootballMatchesDSStorage.Create aStorage.jdsMatches nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsNextMatches;
  end;
*)

{ TJanuaFootballMatchDayDSStorage }

(*
  constructor TJanuaFootballMatchDayDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TMatchDayFactory.CreateRecordset('matchday', nil, nil));
  end;

  procedure TJanuaFootballMatchDayDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsMatchDay, 'TJanuaFootballMatchDayDSStorage.Create aStorage.jdsMatchDay nil');
  RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsMatchDay;
  end;
*)

{ TJanuaFootballNextMatchDayDSStorage }

(*
  constructor TJanuaFootballNextMatchDayDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TMatchDayFactory.CreateRecordset('nextmatchday', nil, nil));
  end;

  procedure TJanuaFootballNextMatchDayDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsNextMatchDay,
  'TJanuaFootballNextMatchDayDSStorage.Create aStorage.jdsNextMatchDay nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsNextMatchDay;
  end;
*)

{ TJanuaFootballCalendarMatchesDSStorage }

(*
  constructor TJanuaFootballCalendarMatchesDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TMatchFactory.CreateRecordset('calendarmatches', nil, nil));
  end;

  procedure TJanuaFootballCalendarMatchesDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsCalendarMatches,
  'TJanuaFootballCalendarMatchesDSStorage.Create aStorage.jdsCalendarMatches nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsCalendarMatches;
  end;
*)

{ TJanuaFootballMatchDetailDSStorage }
(*
  constructor TJanuaFootballMatchDetailDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  // RecordSetModel .............................................
  Create(TMatchDetailsFactory.CreateRecordset('matchdetails', nil, nil));
  end;

  procedure TJanuaFootballMatchDetailDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;

  Guard.CheckNotNull(FFootballStorage.jdsMatchDetail,
  'TJanuaFootballMatchDetailDSStorage.Create aStorage.jdsMatchDetail nil');
  Guard.CheckNotNull(FFootballStorage.jdsMatchDetailVisitorPlayers,
  'TJanuaFootballMatchDetailDSStorage.Create aStorage.jdsMatchDetailVisitorPlayers nil');
  Guard.CheckNotNull(FFootballStorage.jdsMatchDetailHomePlayers,
  'TJanuaFootballMatchDetailDSStorage.Create aStorage.jdsMatchDetailHomePlayers nil');
  Guard.CheckNotNull(FFootballStorage.jdsMatchDetailVisitorPlayers,
  'TJanuaFootballMatchDetailDSStorage.Create aStorage.jdsMatchDetailVisitorPlayers nil');

  RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsMatchDetail;
  // self.FDetailRecordset := (RecordSet as IMatchDetails);
  (RecordSet as IMatchDetails).StoreDataset := FFootballStorage.jdsMatchDetail;
  (RecordSet as IMatchDetails).VisitorsPlayers.StoreDataset := FFootballStorage.jdsMatchDetailVisitorPlayers;
  (RecordSet as IMatchDetails).HomePlayers.StoreDataset := FFootballStorage.jdsMatchDetailHomePlayers;
  (RecordSet as IMatchDetails).Events.StoreDataset := FFootballStorage.jdsMatchDetailEvents;

  Guard.CheckTrue(RecordSet.CurrentRecord.RecordSetCount = 3,
  'TJanuaFootballMatchDetailDSStorage RecordSetCount <> 3: ' +
  RecordSet.CurrentRecord.RecordSetCount.ToString);

  end;
*)

{ TJanuaFootballSeasonsDSStorage }

(*
  constructor TJanuaFootballSeasonsDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TSeasonFactory.CreateRecordset('seasons', nil, nil));
  end;

  procedure TJanuaFootballSeasonsDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsSeasons, ClassName + '.Create aStorage.jdsSeasons nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsSeasons;
  end;
*)

{ TJanuaGoalRankingDSStorage }

(*
  constructor TJanuaGoalRankingDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TGoalRankingFactory.CreateRecordset('goalrankings', nil, nil));
  end;

  procedure TJanuaGoalRankingDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsGolRanking, ClassName + '.Create aStorage.jdsSeasons nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsGolRanking;
  end;
*)

{ TJanuaFootballMatchDayNumberDSStorage }

(*
  constructor TJanuaFootballMatchDayNumberDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  self.Create(TMatchDayNumberFactory.CreateRecordset('matchnumber', nil, nil));
  end;

  procedure TJanuaFootballMatchDayNumberDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsLookupMatchDays, ClassName + '.Create aStorage.jdsLookupMatchDays nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsLookupMatchDays;
  end;
*)

{ TJanuaFootballLeaguesDSStorage }

(*
  constructor TJanuaFootballLeaguesDSStorage.Create(aStorage: IJanuaFootballStorage);
  begin
  inherited;
  // il RecordSet ? di tipo ILeagues
  self.Create(TLeaguesFactory.CreateRecordset('leagues', nil, nil));
  end;

  procedure TJanuaFootballLeaguesDSStorage.InternalAssignDatasets;
  begin
  inherited;
  FFootballStorage.CreateDataset;
  Guard.CheckNotNull(FFootballStorage.jdsSeasonLeagues, ClassName + '.Create aStorage.jdsLookupMatchDays nil');
  self.RecordSet.CurrentRecord.StoreDataset := FFootballStorage.jdsSeasonLeagues;
  end;
*)

{ TJanuaServerFootballFactory }

function TJanuaServerFootballFactory.GetServerFootball: IJanuaServerFootball;
var
  aStorage: IJanuaFootballStorage;
begin
  aStorage := self.GetFootballStorage;
  Result := TJanuaServerFootball.Create(aStorage, nil, aStorage.FootballSettings);
end;

function TJanuaServerFootballFactory.GetServerFootball(const aLocalStorage, aRemoteStorage: IJanuaFootballStorage)
  : IJanuaServerFootball;
begin
  Result := TJanuaServerFootball.Create(aLocalStorage, aRemoteStorage, TFootballSettings.Create);
end;

{ TJanuaFootballFactory }

class function TJanuaFootballFactory.CreateFootballParams: IJanuaParams;
begin
  Result := TJanuaParams.Create;
  Result.AddParam('match_id', TJanuaFieldType.jptLargeInt, TValue(0));
  Result.AddParam('season_id', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('league_id', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('team_id', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('match_day', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('player_id', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('match_team', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('day_from', TJanuaFieldType.jptInteger, TValue(0));
  Result.AddParam('day_to', TJanuaFieldType.jptInteger, TValue(0));
end;

class function TJanuaFootballFactory.CreateFootballParams(aSettings: IFootballSettings): IJanuaParams;
begin
  Result := CreateFootballParams;
  Result.ParamByName('match_id').AsLargeInt := aSettings.match_id;
  Result.ParamByName('season_id').AsInteger := aSettings.season_id;
  Result.ParamByName('league_id').AsInteger := aSettings.league_id;
  Result.ParamByName('team_id').AsInteger := aSettings.team_id;
  Result.ParamByName('match_day').AsInteger := aSettings.match_day;
  Result.ParamByName('player_id').AsInteger := aSettings.player_id;
  Result.ParamByName('match_team').AsInteger := aSettings.match_team;
  Result.ParamByName('day_from').AsInteger := aSettings.match_day_from;
  Result.ParamByName('day_to').AsInteger := aSettings.match_day_to;
end;

class procedure TJanuaFootballFactory.TranslateParams(const aInput: IJanuaParams; var aSettings: IFootballSettings);
begin
  aSettings.match_id := aInput.ParamByName('match_id').AsLargeInt;
  aSettings.season_id := aInput.ParamByName('season_id').AsInteger;
  aSettings.league_id := aInput.ParamByName('league_id').AsInteger;
  aSettings.team_id := aInput.ParamByName('team_id').AsInteger;
  aSettings.match_day := aInput.ParamByName('match_day').AsInteger;
  aSettings.player_id := aInput.ParamByName('player_id').AsInteger;
  aSettings.match_team := aInput.ParamByName('match_team').AsInteger;
  aSettings.match_day_from := aInput.ParamByName('day_from').AsInteger;
  aSettings.match_day_to := aInput.ParamByName('day_to').AsInteger;
end;

end.
