unit Janua.Core.Football;

interface

{$I JANUACORE.INC}

uses
  System.SysUtils, System.Classes,
  // Database
  Data.DB,
{$IFDEF MSWINDOWS}
  // Winapi.Windows,
{$ENDIF}
{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  System.Json, VirtualTable, MemDS, DBAccess,
  // Janua ............................................................
  Janua.Core.Classes, Janua.Core.System, Janua.Core.Cms, Janua.Core.Metronics, Janua.Football.Intf,
  Janua.Core.Servers, Janua.Core.Http, Janua.Core.Json, Janua.Core.Types, Janua.Football.Types;

type
  TRecordFootballSettings = Record
    FLeague_ID: smallint;
    FSeason_ID: smallint;
    FMatch_Day: smallint;
    FLastMatch_Day: smallint;
    FMatch_ID: int64;
    FTeam_id: integer;
    FPlayer_id: integer;
    FMatch_team: integer;
  End;

type
  TFootballSettings = class(TInterfacedObject, IFootballSettings)
  private
    Settings: TRecordFootballSettings;
  private
    function getLeague_ID: smallint;
    function getSeason_ID: smallint;
    function getMatch_Day: smallint;
    function getLastMatch_Day: smallint;
    function getMatch_ID: int64;
    function getTeam_id: integer;
    function getPlayer_id: integer;
    function getMatch_team: integer;
    // Setters
    procedure setMatch_ID(const Value: int64);
    procedure setPlayer_ID(const Value: integer);
    procedure setSeason_ID(const Value: smallint);
    procedure setLeague_ID(const Value: smallint);
    procedure SetTeam_ID(const Value: integer);
    procedure setMatch_day(const Value: smallint);
    procedure Setmatch_team(const Value: integer);
    procedure SetLastMatchDay(const Value: smallint);
  public
    constructor Create; overload;
  public
    // properties
    property match_id: int64 read getMatch_ID write setMatch_ID;
    property season_id: smallint read getSeason_ID write setSeason_ID;
    property league_id: smallint read getLeague_ID write setLeague_ID;
    property team_id: integer read getTeam_id write SetTeam_ID;
    property match_day: smallint read getMatch_Day write setMatch_day;
    property player_id: integer read getPlayer_id write setPlayer_ID;
    property match_team: integer read getMatch_team write Setmatch_team;
    property LastMatchDay: smallint read getLastMatch_Day write SetLastMatchDay;
  end;

type
  /// <summary>
  /// Classe base del 'server' football inteso come ServerController o meglio
  /// come Model dati del football verrrà poi implementato nei vari database
  /// come motore.
  /// </summary>
  TJanuaCustomServerFootball = class(TJanuaCustomDBServer)
  strict protected
    FFootballSettings: IFootballSettings;
  strict protected
    procedure SetFootballSettings(const Value: IFootballSettings);
  public
    property FootballSettings: IFootballSettings read FFootballSettings write SetFootballSettings;
  strict protected
    // Getters
    function getNextMatchDay: smallint;
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
    FTemplateLoaded: boolean;
    FGoalRankings: TJanuaGoalRankings;
    FRankings: TJanuaRankings;
    FMatches: TJanuaMatches;
    FJanuaCms: Janua.Core.Cms.TJanuaCustomServerCms;
    FNextMatches: TJanuaMatches;
    // html page Templates
    FHtmlHead: TStrings;
    // ranking Templates
    FTemplateRankingHead: TStrings;
    FTemplateRankingPage: TStrings;
    FTemplateRankingRow: TStrings;
    // Matches Templates
    FTemplateMatchesHead: TStrings;
    FTemplateMatchesPage: TStrings;
    FTemplateMatchesRow: TStrings;
    // Goal Ranking Pages:
    FTemplateGoalRankingHead: TStrings;
    FTemplateGoalRankingRow: TStrings;
    FGoalRankingLimit: smallint;
    FTemplateGoalRankingPage: TStrings;
    FTemplateName: string;
    FTemplateUpload: boolean;
    FSeasons: TJanuaFootballSeasons;
    FChampionships: TJanuaFootballChampionships;
    FSelectedSeason: TJanuaFootballSeason;
    FMatchDetail: TJanuaMatchDetail;
    FChampionship: TJanuaChampionship;
    FChampSummary: TJanuaChampionshipSummary;
    FCalendar: TJanuaFootballCalendar;
    FMatchDetails: TJanuaMatchDetails;
    FChampionshipTeam: TJanuaChampionshipTeam;
    FPlayer: TJanuaFootballPlayer;
    // Fplayer_id: integer;
    // Set properties
    procedure SetGoalRankingLimit(const Value: smallint);

    procedure SetTemplateName(const Value: string);
    procedure SetTemplateUpload(const Value: boolean);
    procedure SetLastMatchDay(const Value: smallint);
    // Set Janua Custom Json Datasets .................................................................
    procedure SetcdsMatches(const Value: TJanuaJsonDacDataset);
    procedure SetcdsSeasonLeagues(const Value: TJanuaJsonDacDataset);
    procedure SetcdsSeasons(const Value: TJanuaJsonDacDataset);
    procedure SetcdsNextMatches(const Value: TJanuaJsonDacDataset);
    procedure SetcdsMatchDay(const Value: TJanuaJsonDacDataset);
    procedure SetcdsNextMatchDay(const Value: TJanuaJsonDacDataset);
    procedure SetcdsChampTeam(const Value: TJanuaJsonDacDataset);
    procedure SetcdsChampTeamPlayers(const Value: TJanuaJsonDacDataset);
    procedure SetcdsCalendarMatchDay(const Value: TJanuaJsonDacDataset);
    procedure SetcdsCalendarMatches(const Value: TJanuaJsonDacDataset);
    procedure SetcdsMatchDetail(const Value: TJanuaJsonDacDataset);
    procedure SetcdsMatchDetailEvents(const Value: TJanuaJsonDacDataset);
    procedure SetcdsMatchDetailHome(const Value: TJanuaJsonDacDataset);
    procedure SetcdsMatchDetailVisitors(const Value: TJanuaJsonDacDataset);

    // Set Records .....................................................................................
    procedure SetGoalRankings(const Value: TJanuaGoalRankings);
    procedure SetMatches(const Value: TJanuaMatches);
    procedure SetRankings(const Value: TJanuaRankings);
    procedure SetNextMatches(const Value: TJanuaMatches);
    procedure SetChampionships(const Value: TJanuaFootballChampionships);
    procedure SetSeasons(const Value: TJanuaFootballSeasons);
    procedure SetSelectedSeason(const Value: TJanuaFootballSeason);
    procedure SetMatchDetail(const Value: TJanuaMatchDetail);
    procedure SetChampionship(const Value: TJanuaChampionship);
    procedure SetChampSummary(const Value: TJanuaChampionshipSummary);
    procedure SetCalendar(const Value: TJanuaFootballCalendar);
    procedure SetMatchDetails(const Value: TJanuaMatchDetails);
    procedure SetChampionshipTeam(const Value: TJanuaChampionshipTeam);
    // procedure SetIsPublic(const Value: boolean);

    // Set Classes
    procedure SetJanuaCms(const Value: Janua.Core.Cms.TJanuaCustomServerCms);

    // Set Strings ......................................................................................
    procedure SetHtmlHead(const Value: TStrings);
    procedure SetTemplateGoalRankingHead(const Value: TStrings);
    procedure SetTemplateGoalRankingRow(const Value: TStrings);
    procedure SetTemplateMatchesHead(const Value: TStrings);
    procedure SetTemplateMatchesRow(const Value: TStrings);
    procedure SetTemplateRankingHead(const Value: TStrings);
    procedure SetTemplateRankingRow(const Value: TStrings);
    procedure SetTemplateRankingPage(const Value: TStrings);
    procedure SetTemplateGoalRankingPage(const Value: TStrings);
    procedure SetTemplateMatchesPage(const Value: TStrings);
    procedure SetcdsChampTeamMatches(const Value: TJanuaJsonDacDataset);
    procedure SetcdsPlayer(const Value: TJanuaJsonDacDataset);
    procedure SetcdsPlayerCareer(const Value: TJanuaJsonDacDataset);
    procedure SetPlayer(const Value: TJanuaFootballPlayer);
    procedure setPlayer_ID(const Value: integer);
    function GetLastMatchDay: smallint;
    procedure SetcdsChampRanking(const Value: TJanuaJsonDacDataset);
    procedure SetcdsGolRanking(const Value: TJanuaJsonDacDataset);
    procedure SetcdsMatchEvents(const Value: TJanuaJsonDacDataset);
  protected
    // Selected Championship Ranking ............
    FcdsChampRanking: TJanuaJsonDacDataset;
    // Selected Champhionship Goal Ranking ......
    FcdsGolRanking: TJanuaJsonDacDataset;
    FcdsMatchEvents: TJanuaJsonDacDataset;
    // List of Championships ....................
    FcdsChampionships: TJanuaJsonDacDataset;
    // Selected Championship........
    FcdsChampionship: TJanuaJsonDacDataset;
    // List of Matches ............
    FcdsMatches: TJanuaJsonDacDataset;
    FcdsNextMatchDay: TJanuaJsonDacDataset;
    FcdsMatchDay: TJanuaJsonDacDataset;
    FcdsNextMatches: TJanuaJsonDacDataset;
    // List of Seasons-Leagues .................
    FcdsSeasons: TJanuaJsonDacDataset;
    FcdsSeasonLeagues: TJanuaJsonDacDataset;
    // Match Details .........................
    FcdsMatchDetailHome: TJanuaJsonDacDataset;
    FcdsMatchDetail: TJanuaJsonDacDataset;
    FcdsMatchDetailVisitors: TJanuaJsonDacDataset;
    FcdsMatchDetailEvents: TJanuaJsonDacDataset;
    // Championship Calendar .................
    FcdsCalendarMatchDay: TJanuaJsonDacDataset;
    FcdsCalendarMatches: TJanuaJsonDacDataset;
    // Championship Team .................
    FcdsChampTeam: TJanuaJsonDacDataset;
    FcdsChampTeamPlayers: TJanuaJsonDacDataset;
    FcdsChampTeamMatches: TJanuaJsonDacDataset;
    // Football Player and Career ........................
    FCdsPlayer: TJanuaJsonDacDataset; // Scheda attuale del giocatore (nome, cognome, fotografia ...)
    FCdsPlayerCareer: TJanuaJsonDacDataset;
    FCdsPlayerChampionship: TJanuaJsonDacDataset;
    // Selected Championship Team History ................
    // Team History ......................................

    procedure AssignDatasets; override;
    function InternalActivate: boolean; override;
    procedure SetActive(const Value: boolean); override;
    { football specific functions .... }
    procedure InternalOpenCalendar; Virtual; Abstract;
    procedure InternalOpenRanking; Virtual; Abstract;
    procedure InternalOpenMatches; Virtual; Abstract;
    procedure InternalOpenNextMatches; Virtual; Abstract;
    procedure InternalOpenGoalRanking; Virtual; Abstract;
    procedure InternalOpenNextMatch; Virtual; Abstract;
    procedure InternalOpenMatch; Virtual; Abstract;
    procedure InternalOpenTeamChampionship; Virtual; Abstract;
    // questa procedura recupera la rosa completa di un Team in un determinato campionato, ogni giocatore
    // avrà poi un link ad una sua pagina peronsonla.
    procedure InternalOpenLiveScore; Virtual; Abstract;
    // Apre la giornata di Campionato indicata (o l'ultima se non indicata cioè se matchday=0)
    // Nella giornata elenca tutte le partite in corso generando in automatico tutti i tabellini delle partite
    // richieste nel live score.
    procedure InternalOpenChampionship; Virtual; Abstract;
    // Apre la lista delle stagioni da inviare alla pagina web di Menu o ad un Client. Volendo la lista potrebbe
    // anche essere pre-caricata in Cache Memory ...............................................................
    procedure InternalOpenSeasonsList; Virtual; Abstract;
    // Apre la lista dei Campionati, questa lista viene controllata dalla Stagione selezionata (season_id)
    // se season_id è <= 0 allora il programma deve cercare l'ultima stagione di campionato attiva LastSeason;
    procedure InternalOpenChampionshipsList; Virtual; Abstract;
    // Apre la partita nel suo dettaglio, questo oggetto potrà essere impiegato per generare una pagina Web od inviato
    // verso una App per la visualizzazione del Match selezionato.
    procedure InternalOpenMatchDetail; Virtual; Abstract;
    // Apre la scheda giocatore completa con tutta la sua carriera ed i collegamenti alle pagine
    // della carriera del giocatore medesimo.
    procedure InternalOpenPlayerCareer; Virtual; Abstract;
    function getTemplateDir: string;
  public
    // funzioni principali del server ..................................................................................
    procedure OpenSeasonsList; virtual;
    procedure OpenChampionshipsList; Virtual;
    // GestLastSeasonID trova automaticamente l'ultima stagione per il Default della Home Page..........................
    function GetLastSeasonID: smallint; virtual; abstract;
    // funzione che cerca la prima Lega selezionata come Default
    function GetDefaultLeague: smallint; virtual; abstract;
    function SearchLastMatchNumber(aSeasonID, aLeagueID: smallint): smallint; virtual; abstract;
    function GetLastMatchNumber: smallint; virtual;
    function OpenDefaultSeason: boolean; virtual; abstract;
    function GetDefaults: boolean; virtual;
    function GetChampionshipsDataset(aSeason: integer): integer; virtual; abstract;
    procedure OpenRanking; overload; virtual;
    procedure OpenRanking(aSeasonID, aLeagueID: integer); overload; virtual; abstract;
    // The calendar is the list of all Football Matches and all Match Days in one League Season.
    procedure OpenCalendar; overload; virtual;
    procedure OpenCalendar(aSeasonID, aLeagueID: integer); overload; virtual;
    procedure OpenGoalRanking; virtual;
    procedure OpenMatches; virtual;
    procedure OpenNextMatches; virtual;
    procedure OpenChampionship; virtual;
    procedure OpenMatchDetail(aMatchID: int64); overload;
    procedure OpenMatchDetail; overload;
    procedure OpenMatchDetail(aSeasonID, aLeagueID, aMatchDay: smallint); overload;
    procedure OpenTeamChampionship; overload;
    procedure OpenTeamChampionship(aSeasonID, aLeagueID, aTeamID: smallint); overload;
    // Live Score ..................................................................
    procedure OpenLiveScore; overload;
    procedure OpenLiveScore(aSeasonID, aLeagueID, aMatchDay: smallint); overload;
    procedure OpenLiveScore(aSeasonID, aLeagueID: smallint); overload;
    procedure OpenPlayerCareer; overload;
    procedure OpenPlayerCareer(aPlayerID: integer); overload;
    // apre la carriera del calciatore xxx
    function OpenCareer(aPlayerID: integer): smallint; overload; virtual;
    function OpenCareer: smallint; overload; virtual;
    function GetChampionshipDayName: string; virtual; abstract;
    procedure OpenMatchTeam(aMatchID: int64; aTeamID: integer); virtual; abstract;
    function OpenSeason(aSeason: smallint): boolean; virtual; abstract;
    // 2017-10-10 Specifiche 2017-0022
    function MatchDaysList: string;
    function RankingHtmlTable: string;
    function RankingHtmlPage: string;
    function RankingsJson: string;
    function MatchesJson: string;
    function MatchesHtmlPage: string;
    function MatchesHtmlTable: string;
    function NextMatchesJson: string;
    function NextMatchesHtmlPage: string;
    function NextMatchesHtmlTable: string;
    function GoalRankginsHtmlTable: string;
    function GoalRankingHtmlPage: string;
    function GoalRankingJson: string;
    procedure LoadTemplate;
    procedure SaveTemplate;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  public
    property Calendar: TJanuaFootballCalendar read FCalendar write SetCalendar;
    property rankings: TJanuaRankings read FRankings write SetRankings;
    property matches: TJanuaMatches read FMatches write SetMatches;
    property goalrankings: TJanuaGoalRankings read FGoalRankings write SetGoalRankings;
    property NextMatches: TJanuaMatches read FNextMatches write SetNextMatches;
    property Championships: TJanuaFootballChampionships read FChampionships write SetChampionships;
    property Seasons: TJanuaFootballSeasons read FSeasons write SetSeasons;
    property SelectedSeason: TJanuaFootballSeason read FSelectedSeason write SetSelectedSeason;
    property MatchDetail: TJanuaMatchDetail read FMatchDetail write SetMatchDetail;
    // MatchDetails riepiloga la sintesi dei Match per creare il tabellino dei Live Score ....................
    property MatchDetails: TJanuaMatchDetails read FMatchDetails write SetMatchDetails;
    property Championship: TJanuaChampionship read FChampionship write SetChampionship;
    property ChampionshipTeam: TJanuaChampionshipTeam read FChampionshipTeam write SetChampionshipTeam;
    property ChampSummary: TJanuaChampionshipSummary read FChampSummary write SetChampSummary;
    property Player: TJanuaFootballPlayer read FPlayer write SetPlayer;
    { La scheda di un campionato è composta da diversi Elementi:
      Testata: TJanuaChampionship
      Classifica: TJanuaRankings
      Matches: TJanuaMatches
    }
  public // Parameters ................................................................................................
    property season_id: smallint read getSeason_ID write setSeason_ID default 0;
    property league_id: smallint read getLeague_ID write setLeague_ID default 0;
    property team_id: integer read getTeam_id write SetTeam_ID;
    property match_day: smallint read getMatch_Day write setMatch_day default 0;
    property match_id: int64 read getMatch_ID write setMatch_ID default 0;
    property player_id: integer read getPlayer_id write setPlayer_ID;
    property match_team: integer read getMatch_team write Setmatch_team;
    property LastMatchDay: smallint read GetLastMatchDay write SetLastMatchDay;
    property LastMatchNumber: smallint read GetLastMatchNumber;
  public // public Datatasets .........................................................................................
    property cdsChampionship: TJanuaJsonDacDataset read FcdsChampionship write FcdsChampionship;
    property cdsChampionships: TJanuaJsonDacDataset read FcdsChampionships write FcdsChampionships;
    property cdsMatchEvents: TJanuaJsonDacDataset read FcdsMatchEvents write SetcdsMatchEvents;
    property cdsGolRanking: TJanuaJsonDacDataset read FcdsGolRanking write SetcdsGolRanking;
    property cdsChampRanking: TJanuaJsonDacDataset read FcdsChampRanking write SetcdsChampRanking;
    property cdsSeasons: TJanuaJsonDacDataset read FcdsSeasons write SetcdsSeasons;
    property cdsMatches: TJanuaJsonDacDataset read FcdsMatches write SetcdsMatches;
    property cdsMatchDay: TJanuaJsonDacDataset read FcdsMatchDay write SetcdsMatchDay;
    property cdsNextMatchDay: TJanuaJsonDacDataset read FcdsNextMatchDay write SetcdsNextMatchDay;
    property cdsNextMatches: TJanuaJsonDacDataset read FcdsNextMatches write SetcdsNextMatches;
    property cdsSeasonLeagues: TJanuaJsonDacDataset read FcdsSeasonLeagues write SetcdsSeasonLeagues;
    property cdsCalendarMatchDay: TJanuaJsonDacDataset read FcdsCalendarMatchDay write SetcdsCalendarMatchDay;
    property cdsCalendarMatches: TJanuaJsonDacDataset read FcdsCalendarMatches write SetcdsCalendarMatches;
    property cdsMatchDetail: TJanuaJsonDacDataset read FcdsMatchDetail write SetcdsMatchDetail;
    property cdsMatchDetailEvents: TJanuaJsonDacDataset read FcdsMatchDetailEvents write SetcdsMatchDetailEvents;
    property cdsMatchDetailHome: TJanuaJsonDacDataset read FcdsMatchDetailHome write SetcdsMatchDetailHome;
    property cdsMatchDetailVisitors: TJanuaJsonDacDataset read FcdsMatchDetailVisitors write SetcdsMatchDetailVisitors;
    property cdsChampTeam: TJanuaJsonDacDataset read FcdsChampTeam write SetcdsChampTeam;
    property cdsChampTeamPlayers: TJanuaJsonDacDataset read FcdsChampTeamPlayers write SetcdsChampTeamPlayers;
    property cdsChampTeamMatches: TJanuaJsonDacDataset read FcdsChampTeamMatches write SetcdsChampTeamMatches;
    property cdsPlayer: TJanuaJsonDacDataset read FCdsPlayer write SetcdsPlayer;
    property cdsPlayerCareer: TJanuaJsonDacDataset read FCdsPlayerCareer write SetcdsPlayerCareer;
  published
    property HtmlHead: TStrings read FHtmlHead write SetHtmlHead;
    // base for template
    property TemplateName: string read FTemplateName write SetTemplateName;
    // Templates for Ranking Tables ......................................................
    property TemplateRankingHead: TStrings read FTemplateRankingHead write SetTemplateRankingHead;
    property TemplateRankingRow: TStrings read FTemplateRankingRow write SetTemplateRankingRow;
    property TemplateRankingPage: TStrings read FTemplateRankingPage write SetTemplateRankingPage;
    // Templates for Goal Ranking Tables ......................................................
    property TemplateGoalRankingHead: TStrings read FTemplateGoalRankingHead write SetTemplateGoalRankingHead;
    property TemplateGoalRankingRow: TStrings read FTemplateGoalRankingRow write SetTemplateGoalRankingRow;
    property TemplateGoalRankingPage: TStrings read FTemplateGoalRankingPage write SetTemplateGoalRankingPage;
    // Templates for Matches Tables ......................................................
    property TemplateMatchesPage: TStrings read FTemplateMatchesPage write SetTemplateMatchesPage;
    property TemplateMatchesHead: TStrings read FTemplateMatchesHead write SetTemplateMatchesHead;
    property TemplateMatchesRow: TStrings read FTemplateMatchesRow write SetTemplateMatchesRow;
    property JanuaCms: Janua.Core.Cms.TJanuaCustomServerCms read FJanuaCms write SetJanuaCms;
    property GoalRankingLimit: smallint read FGoalRankingLimit write SetGoalRankingLimit;
    property NextMatchDay: smallint read getNextMatchDay;
    property TemplateDir: string read getTemplateDir;
    property TemplateUpload: boolean read FTemplateUpload write SetTemplateUpload default False;
    property TemplateLoaded: boolean read FTemplateLoaded default False;

  end;

  TJanuaFootballRankingController = class(TJanuaCoreComponent)
  private
    FServerFootball: TJanuaCustomServerFootball;
    FdsNextMatches: TDataSource;
    FdsMatches: TDataSource;
    FdsSeasons: TDataSource;
    FdsChampionships: TDataSource;
    FdsGoalRanking: TDataSource;
    FdsRanking: TDataSource;
    procedure SetServerFootball(const Value: TJanuaCustomServerFootball);
    procedure SetdsGoalRanking(const Value: TDataSource);
    procedure SetdsLeagues(const Value: TDataSource);
    procedure SetdsMatches(const Value: TDataSource);
    procedure SetdsNextMatches(const Value: TDataSource);
    procedure SetdsRanking(const Value: TDataSource);
    procedure SetdsSeasons(const Value: TDataSource);
    procedure setSeason_ID(const Value: smallint);
    procedure setLeague_ID(const Value: smallint);
  protected
    function InternalActivate: boolean; override;
    procedure SetInternalDatasources; virtual;
    function getSeason_ID: smallint; virtual;
    function getLeague_ID: smallint; virtual;
  public
    procedure dsLeaguesDataChange(Sender: TObject; Field: TField);
    procedure dsSeasonsDataChange(Sender: TObject; Field: TField);
  published
    property ServerFootball: TJanuaCustomServerFootball read FServerFootball write SetServerFootball;
    property dsSeasons: TDataSource read FdsSeasons write SetdsSeasons;
    property dsLeagues: TDataSource read FdsChampionships write SetdsLeagues;
    property dsMatches: TDataSource read FdsMatches write SetdsMatches;
    property dsNextMatches: TDataSource read FdsNextMatches write SetdsNextMatches;
    property dsGoalRanking: TDataSource read FdsGoalRanking write SetdsGoalRanking;
    property dsRanking: TDataSource read FdsRanking write SetdsRanking;
    property ft_season_id: smallint read getSeason_ID write setSeason_ID;
    property ft_league_id: smallint read getLeague_ID write setLeague_ID;
  end;

  /// ******************************* inizio parte model View Controller del server Web *******************************

type
  TJanuaTemplateFootball = class(TJanuaTemplateRepository)
  private
    FJanuaServerFootball: TJanuaCustomServerFootball;
    procedure SetJanuaServerFootball(const Value: TJanuaCustomServerFootball);
  protected
    procedure TerminateTemplatePage(aIsFrame: boolean); override;
  public
    function PreparePage404: boolean; override;
    function PrepareHome(aUseFrame: boolean = False): boolean;
    function PrepareMatchDetail(aUseFrame: boolean = False): boolean;
    function PreparePlayerCareer(aUseFrame: boolean = False): boolean;
    function PrepareRanking(aUseFrame: boolean = False): boolean;
    function PrepareLiveScore(aUseFrame: boolean = False): boolean;
    function PreparePage(const aPage: string): boolean;
    procedure PreparePageLogin(aFrame: boolean = False); override;
    procedure ShowLogin; override;
    // function PreparePage501: boolean; override; // prepara la pagina 501;
    function PrepareChampionshipTeam(aUseFrame: boolean = False): boolean; // prepara la pagina Championship Team......
  public
    Constructor Create(AOwner: TComponent); override; // estende il costruttore della classe originale
  public
    procedure TerminatePageContent; override;
    procedure TerminateHome(aIsFrame: boolean = False);
    procedure TerminatePageLogin; override; // inherited from Parent ...............
    procedure TerminateLiveScore(aIsFrame: boolean = False);
    procedure TerminateMatchDetail(aIsFrame: boolean = False);
    procedure TerminatePlayerCareer(aIsFrame: boolean = False);
    procedure TerminateRanking(aIsFrame: boolean = False);
    procedure TerminateChampionshipTeam(aIsFrame: boolean = False);
  published
    property JanuaServerFootball: TJanuaCustomServerFootball read FJanuaServerFootball write SetJanuaServerFootball;
  end;

type
  TJanuaFootballWebController = class(TJanuaCustomWebController)
  strict private
    FUseFrame: boolean;
    FJanuaTemplateFootball: TJanuaTemplateFootball;
    FJanuaServerFootball: TJanuaCustomServerFootball;
    Notifications: TJanuaFootballNotifications; // array di notiifche all'utente puo essere connesso a srv push-stomp
    procedure SetJanuaServerFootball(const Value: TJanuaCustomServerFootball);
    procedure SetJanuaTemplateFootball(const Value: TJanuaTemplateFootball);
  protected
    procedure TerminateHome; override;
    procedure SetLoginPages; override;
    procedure PrepareLoginTemplate; override;
    procedure TemplateHead(aUseFrame: boolean = False); override;
  public
    procedure SelfCheck; override;
    // funzione di finalizzazione della prenotazione
    function ActionHomePage(aUseFrame: boolean = False): boolean; // Crea la Home Page.
    function ActionLogin(error: boolean = False; ErrorMessage: string = ''): boolean; override;
    function ActionDoRegister: boolean; override;
    function ActionLiveScore(aUseFrame: boolean): boolean;
    function ActionMatchDetails(aUseFrame: boolean): boolean;
    function ActionRanking(aUseFrame: boolean = False): boolean; // Crea la Home Page.
    function ActionChampionshipTeam(aUseFrame: boolean = False): boolean; // Crea Champ Team ....
    function ActionGoalRanking(aUseFrame: boolean = False): boolean; // Crea la Home Page.
    function ActionMatchDay(aUseFrame: boolean = False): boolean; // Crea la Home Page.
    function ActionPlayerCareer(aUseFrame: boolean = False): boolean; // Crea la Pagina della Carriera del giocatore
  published
    property JanuaServerFootball: TJanuaCustomServerFootball read FJanuaServerFootball write SetJanuaServerFootball;
    // Questo il codice HTML della lista degli Istituti
    property JanuaTemplateFootball: TJanuaTemplateFootball read FJanuaTemplateFootball write SetJanuaTemplateFootball;
  end;

{$IFDEF webbroker}

type
  TJanuaWebSessionFootball = class(TJanuaWebSession)
  private
    FJanuaFootballController: TJanuaFootballWebController;
    // procedure WebResponseController(Response: TWebResponse);  // moved to Parent Class....................
    procedure JsonResponseController(Response: TWebResponse); override;
    procedure SetJanuaFootballController(const Value: TJanuaFootballWebController);
  strict protected
    procedure WebResponse501(Response: TWebResponse); override;
    procedure WebResponse404(Response: TWebResponse); override;
    function CheckSession(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False; aCheckPayment: boolean = False): boolean; override;
  public
    function Messages: string; override;
  public
    procedure SetCookies(aValid: integer; var aResponse: TWebResponse; isJson: boolean = False); override;
    procedure GetSessionRequest(const aRequest: TWebRequest); override;
    procedure WritePage(var aResponse: TWebResponse); override;
  public
    // Actions List **********************************************************************************************
    procedure ActionDoLogOut(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      InternalCall: boolean = False);
    procedure ActionDoLoginFB(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aFrame: boolean = False);
    procedure ActionDoRegister(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aFrame: boolean = False);
    procedure ActionHomeDefault(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    procedure ActionLiveScore(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    procedure ActionMatchDetail(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    procedure ActionChampionshipTeam(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aUseFrame: boolean = False);
    procedure ActionRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    procedure ActionGoalRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    procedure ActionMatchDay(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    procedure ActionPlayerCareer(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = False);
    // ********************************************************** fine action list ************************************
  published
    property JanuaFootballController: TJanuaFootballWebController read FJanuaFootballController
      write SetJanuaFootballController;
  end;
{$ENDIF webbroker}

type
  TJanuaCustomFootballClient = class(TJanuaCustomSystemClient)
  strict protected
    FChampionships: TJanuaFootballChampionships;
    FSeasons: TJanuaFootballSeasons;
    // FMatchID: int64;
    FMatchDayNum: smallint;
    FChampSummary: TJanuaChampionshipSummary;
    // FTeamID: integer;
    // FRankings: TJanuaRankings;
    // FPlayerID: integer;
    FGoalRanking: TJanuaGoalRankings;
    FRanking: TJanuaRankings;
    FMatchDetails: TJanuaMatchDetail;
    FNextMatches: TJanuaMatches;
    FMatches: TJanuaMatches;
    // FChampionshipID: integer;
    // FseasonID: integer;
    FNotifications: TJanuaFootballNotifications;
  strict protected // properties from an Interfaced Object
    procedure SetMatchID(const Value: int64); virtual;
    procedure SetPlayerID(const Value: integer); virtual;
    procedure SetseasonID(const Value: integer); virtual;
    procedure SetTeamID(const Value: integer); virtual;
    procedure SetMatchDayNum(const Value: smallint); virtual;
    // Getters
    function getChampionshipID: integer; virtual;
    function getMatchID: int64; virtual;
    function getPlayerID: integer; virtual;
    function getseasonID: integer; virtual;
    function getTeamID: integer; virtual;
  private
    FCalendar: TJanuaFootballCalendar;
    procedure SetChampionships(const Value: TJanuaFootballChampionships);
    procedure SetSeasons(const Value: TJanuaFootballSeasons);
    procedure SetChampionshipID(const Value: integer);
    procedure SetChampSummary(const Value: TJanuaChampionshipSummary);
    procedure SetGoalRanking(const Value: TJanuaGoalRankings);
    procedure SetMatchDetails(const Value: TJanuaMatchDetail);
    procedure SetMatches(const Value: TJanuaMatches);
    procedure SetNextMatches(const Value: TJanuaMatches);
    procedure SetRanking(const Value: TJanuaRankings);
    procedure SetRankings(const Value: TJanuaRankings);
    procedure SetNotifications(const Value: TJanuaFootballNotifications);
    procedure SetCalendar(const Value: TJanuaFootballCalendar);
    // Implements a standard REST-JSON Client for Football REST Application Server......................................
  public
    // Server Method function getSeasonsList(aSessionKey: string): TJsonObject;
    function getSeasonsList: integer; virtual; abstract; // (aSessionKey: string)
    // Server Method function getChampionshipsList(aSessionKey: string; aSeasonID: integer = 0): TJsonObject;
    function getChampionshipsList: integer; virtual; abstract; // (aSessionKey:  aSeasonID: integer = 0);
    // Server function getChampionshipSummary(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getChampionshipSummary: boolean; virtual; abstract; // (aSessionKey aSeasonID, aChampionshipID)
    // Server function getRanking(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getRanking: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID: integer)
    // function getGoalRanking(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getGoalRanking: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID: integer)
    // Server function getMatchDay(aSessionKey: string; aSeasonID, aChampionshipID, aMatchDay: integer): TJsonObject;
    function getMatchDay: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID, aMatchDay: integer)
    // Server function getChampSummary(aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function getChampSummary: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID, aMatchDay)
    // Server function getMatchDetails(aSessionKey: string; aSeasonID, aChampionshipID, aMatchID: integer): TJsonObject;
    function getMatchDetails: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID, aMatchID)
    // Server function GetTeamChampionship(aSessionKey: string; aSeasonID, aChampionshipID, aTeamID: integer): TJsonObject;
    function GetTeamChampionship: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID, aTeamID)
    // Server Function getCalendar (aSessionKey: string; aSeasonID, aChampionshipID: integer): TJsonObject;
    function GetCalendar: boolean; virtual; abstract; // (aSessionKey: aSeasonID, aChampionshipID)
  public // parameters
    property MatchID: int64 read getMatchID write SetMatchID;
    property teamID: integer read getTeamID write SetTeamID;
    property playerID: integer read getPlayerID write SetPlayerID;
    // property rankings: TJanuaRankings read FRankings write SetRankings;
    property SeasonID: integer read getseasonID write SetseasonID;
    property ChampionshipID: integer read getChampionshipID write SetChampionshipID;
  public
    property Calendar: TJanuaFootballCalendar read FCalendar write SetCalendar;
    property Seasons: TJanuaFootballSeasons read FSeasons write SetSeasons;
    property Championships: TJanuaFootballChampionships read FChampionships write SetChampionships;
    property MatchDetails: TJanuaMatchDetail read FMatchDetails write SetMatchDetails;
    property ChampSummary: TJanuaChampionshipSummary read FChampSummary write SetChampSummary;
    property Ranking: TJanuaRankings read FRanking write SetRanking;
    property GoalRanking: TJanuaGoalRankings read FGoalRanking write SetGoalRanking;
    property matches: TJanuaMatches read FMatches write SetMatches;
    property NextMatches: TJanuaMatches read FNextMatches write SetNextMatches;
    property MatchDayNum: smallint read FMatchDayNum write SetMatchDayNum;
    property Notifications: TJanuaFootballNotifications read FNotifications write SetNotifications;
    // Tabellino (Summary) dell'incontro analizzato generlmente il parametro MatchID Int64 indice unico è sufficiente.
  end;

type
  TJanuaFootballgetChampSummaryThread = class(TThread)
  strict private
    FJanuaFootballClient: TJanuaCustomFootballClient;
    procedure SetJanuaFootballClient(const Value: TJanuaCustomFootballClient);
  protected
    procedure Execute;
  public
    property JanuaFootballClient: TJanuaCustomFootballClient read FJanuaFootballClient write SetJanuaFootballClient;
  end;

type
  // Questa Classe ha il compito di connettere le diverse Views (
  TJanuaCustomFootballController = class(TJanuaCoreComponent)
  private
    FJanuaFootballClient: TJanuaCustomFootballClient;
    procedure SetJanuaFootballClient(const Value: TJanuaCustomFootballClient);
  public
    procedure getChampSummary;
  public
    property JanuaFootballClient: TJanuaCustomFootballClient read FJanuaFootballClient write SetJanuaFootballClient;

  end;

var
  PublicFootballConf: Janua.Football.Intf.IFootballSettings;

implementation

uses Janua.Mime.Types, System.Math, Janua.Core.Functions, System.StrUtils, Spring;

{ TJanuaCustomServerFootball }

procedure TJanuaCustomServerFootball.AssignDatasets;
begin
  inherited;
  if not self.KeepAlive and not self.ActiveDatasets then
  begin
    self.ActiveDatasets := True;
  end;
end;

constructor TJanuaCustomServerFootball.Create(AOwner: TComponent);
begin
  inherited;

  self.FFootballSettings := TFootballSettings.Create;

  // html page Templates
  FHtmlHead := TStringList.Create;
  // ranking Templates
  FTemplateRankingHead := TStringList.Create;
  FTemplateRankingPage := TStringList.Create;
  FTemplateRankingRow := TStringList.Create;

  // Matches Templates
  FTemplateMatchesHead := TStringList.Create;
  FTemplateMatchesPage := TStringList.Create;
  FTemplateMatchesRow := TStringList.Create;

  // Goal Ranking Pages:
  FTemplateGoalRankingHead := TStringList.Create;
  FTemplateGoalRankingRow := TStringList.Create;
  FTemplateGoalRankingPage := TStringList.Create;

  FTemplateUpload := False;

  // TJanuaJsonDacDataset Creation ....................................................................
  self.FcdsChampionships := TJanuaJsonDacDataset.Create(self);
  FcdsChampionships.Name := 'cdsChampionships';
  self.FcdsMatchEvents := TJanuaJsonDacDataset.Create(self);
  FcdsMatchEvents.Name := 'cdsMatchEvents';
  self.FcdsGolRanking := TJanuaJsonDacDataset.Create(self);
  FcdsGolRanking.Name := 'cdsGolRanking';
  self.FcdsChampRanking := TJanuaJsonDacDataset.Create(self);
  FcdsChampRanking.Name := 'cdsChampRanking';
  self.FcdsMatches := TJanuaJsonDacDataset.Create(self);
  FcdsMatches.Name := 'cdsMatches';
  self.FcdsMatchDay := TJanuaJsonDacDataset.Create(self);
  FcdsMatchDay.Name := 'cdsMatchDay';
  FcdsNextMatchDay := TJanuaJsonDacDataset.Create(self);
  FcdsNextMatchDay.Name := 'cdsNextMatchDay';
  FcdsNextMatches := TJanuaJsonDacDataset.Create(self);
  FcdsNextMatches.Name := 'cdsNextMatches';
  self.FcdsChampionship := TJanuaJsonDacDataset.Create(self);
  FcdsChampionship.Name := 'cdsChampionship';
  FcdsMatchDetailHome := TJanuaJsonDacDataset.Create(self);
  FcdsMatchDetailHome.Name := 'cdsMatchDetailHome';
  FcdsMatchDetail := TJanuaJsonDacDataset.Create(self);
  FcdsMatchDetail.Name := 'cdsMatchDetail';
  FcdsMatchDetailVisitors := TJanuaJsonDacDataset.Create(self);
  FcdsMatchDetailVisitors.Name := 'cdsMatchDetailVisitors';
  FcdsMatchDetailEvents := TJanuaJsonDacDataset.Create(self);
  FcdsMatchDetailEvents.Name := 'cdsMatchDetailEvents';
  FcdsChampTeam := TJanuaJsonDacDataset.Create(self);
  self.FcdsChampTeam.Name := 'cdsChampTeam';
  FcdsChampTeamPlayers := TJanuaJsonDacDataset.Create(self);
  FcdsChampTeamPlayers.Name := 'cdsChampTeamPlayers';
  FcdsChampTeamMatches := TJanuaJsonDacDataset.Create(self);
  FcdsChampTeamMatches.Name := 'cdsChampMatches';
  FcdsSeasons := TJanuaJsonDacDataset.Create(self);
  FcdsSeasons.Name := 'cdsSeasons';
  FcdsSeasonLeagues := TJanuaJsonDacDataset.Create(self);
  FcdsSeasonLeagues.Name := 'cdsSeasonLeagues';
  FcdsCalendarMatchDay := TJanuaJsonDacDataset.Create(self);
  FcdsCalendarMatchDay.Name := 'cdsCalendarMatchDay';
  FcdsCalendarMatches := TJanuaJsonDacDataset.Create(self);
  FcdsCalendarMatches.Name := 'cdsCalendarMatches';
  self.FCdsPlayer := TJanuaJsonDacDataset.Create(self);
  FCdsPlayer.Name := 'cdsPlayer';
  self.FCdsPlayerCareer := TJanuaJsonDacDataset.Create(self);
  FCdsPlayerCareer.Name := 'cdsPlayerCareer';

end;

destructor TJanuaCustomServerFootball.Destroy;
begin
  FHtmlHead.Free;
  // ranking Templates
  FTemplateRankingHead.Free;
  FTemplateRankingPage.Free;
  FTemplateRankingRow.Free;

  // Matches Templates
  FTemplateMatchesHead.Free;
  FTemplateMatchesPage.Free;
  FTemplateMatchesRow.Free;

  // Goal Ranking Pages:
  FTemplateGoalRankingHead.Free;
  FTemplateGoalRankingRow.Free;
  FTemplateGoalRankingPage.Free;
  inherited;
end;

function TJanuaCustomServerFootball.GetDefaults: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');

  self.CreateDataModule;
  try

  finally

  end;
  { TODO : Implementare il campionato di Default }
  self.DestroyDataModule(not self.InTransaction);
end;

function TJanuaCustomServerFootball.GetLastMatchDay: smallint;
begin
  if not Assigned(self.FFootballSettings) then
    exit(0);
  Result := FFootballSettings.LastMatchDay;
end;

function TJanuaCustomServerFootball.GetLastMatchNumber: smallint;
begin
  if not isInitializing and notDesigning and self.FActive and Assigned(self.FFootballSettings) and (season_id > 0) and
    (league_id > 0) then
    Result := SearchLastMatchNumber(season_id, league_id)
  else
    Result := -1
end;

function TJanuaCustomServerFootball.getLeague_ID: smallint;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.league_id, 0);

end;

function TJanuaCustomServerFootball.getMatch_Day: smallint;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.match_day, 0);
end;

function TJanuaCustomServerFootball.getMatch_ID: int64;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.match_id, 0);
end;

function TJanuaCustomServerFootball.getMatch_team: integer;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.match_team, 0);
end;

function TJanuaCustomServerFootball.getNextMatchDay: smallint;
begin
  Result := self.match_day + 1;
end;

function TJanuaCustomServerFootball.getPlayer_id: integer;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.player_id, 0);

end;

function TJanuaCustomServerFootball.getSeason_ID: smallint;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.season_id, 0);
end;

function TJanuaCustomServerFootball.getTeam_id: integer;
begin
  Result := IfThen(Assigned(self.FFootballSettings), FFootballSettings.team_id, 0);
end;

function TJanuaCustomServerFootball.getTemplateDir: string;
begin
  // al momento la configurayione server è gestita unicamente per Windows e per Linux in quanto non è ancora stato portato
  // su piattaforma OSX o su altre piattaforme ..........................................................................
{$IFDEF WINDOWS}
  if not DirectoryExists('c:\januaproject\www\templates\') then
    CreateDir('c:\januaproject\www\templates\');
  Result := 'c:\januaproject\www\templates\' + self.FTemplateName + '\';
{$ELSE}
  if not DirectoryExists('./templates/') then
    CreateDir('./templates/');
  Result := './templates/' + self.FTemplateName + '\';
{$ENDIF}
  if not DirectoryExists(Result) then
    CreateDir(Result);

end;

function TJanuaCustomServerFootball.GoalRankginsHtmlTable: string;
begin
  Result := self.FGoalRankings.Transform(FTemplateGoalRankingHead.Text, FTemplateGoalRankingRow.Text);
end;

function TJanuaCustomServerFootball.GoalRankingHtmlPage: string;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');

  Result := self.FTemplateGoalRankingPage.Text;
  HtmlReplace(Result, 'html_header', self.HtmlHead.Text);
  HtmlReplace(Result, 'football_goalranking_table', self.GoalRankginsHtmlTable);
end;

function TJanuaCustomServerFootball.GoalRankingJson: string;
begin
  Result := self.goalrankings.AsJsonObject.ToJSON
end;

function TJanuaCustomServerFootball.InternalActivate: boolean;
begin
  inherited;
  try
    self.LoadTemplate;
  Except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomServerFootball.InternalActivate', e);
    end;
  end;
  Result := True;
end;

procedure TJanuaCustomServerFootball.LoadTemplate;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');

  if FTemplateUpload then
  begin
    self.FTemplateLoaded := True;
    if FileExists(getTemplateDir + 'TemplateRankingHead.html') then
    begin
      self.FTemplateRankingHead.LoadFromFile(getTemplateDir + 'TemplateRankingHead.html');
      self.FTemplateRankingPage.LoadFromFile(getTemplateDir + 'TemplateRankingPage.html');
      self.FTemplateRankingRow.LoadFromFile(getTemplateDir + 'TemplateRankingRow.html');

      self.FTemplateMatchesHead.LoadFromFile(getTemplateDir + 'TemplateMatchesHead.html');
      self.FTemplateMatchesPage.LoadFromFile(getTemplateDir + 'TemplateMatchesPage.html');
      self.FTemplateMatchesRow.LoadFromFile(getTemplateDir + 'TemplateMatchesRow.html');

      self.FTemplateGoalRankingHead.LoadFromFile(getTemplateDir + 'TemplateGoalRankingHead.html');
      self.FTemplateGoalRankingRow.LoadFromFile(getTemplateDir + 'TemplateGoalRankingRow.html');
      self.FTemplateGoalRankingPage.LoadFromFile(getTemplateDir + 'TemplateGoalRankingPage.html');

      self.FHtmlHead.LoadFromFile(getTemplateDir + 'HtmlHead.html');
    end
    else
      self.SaveTemplate;

  end;

  {
    self.memRankingTableHeader.Lines.LoadFromFile
    ('dilettantissimo\rankingtable.html');
    self.memRankingTableRows.Lines.LoadFromFile
    ('c:\januaproject\www\templates\dilettantissimo\rankingrows.html');
  }
end;

function TJanuaCustomServerFootball.MatchDaysList: string;
begin

end;

function TJanuaCustomServerFootball.MatchesHtmlPage: string;
begin
  Result := FTemplateMatchesPage.Text;
  HtmlReplace(Result, 'html_header', self.FHtmlHead.Text);
  HtmlReplace(Result, 'football_matches_table', self.MatchesHtmlTable);
end;

function TJanuaCustomServerFootball.MatchesHtmlTable: string;
begin
  Result := self.FMatches.Transform(self.FTemplateMatchesHead.Text, self.FTemplateMatchesRow.Text)
end;

function TJanuaCustomServerFootball.MatchesJson: string;
begin
  Result := self.FMatches.AsJsonObject.ToJSON;
end;

function TJanuaCustomServerFootball.NextMatchesHtmlPage: string;
begin
  Result := FTemplateMatchesPage.Text;
  HtmlReplace(Result, 'html_header', self.FHtmlHead.Text);
  HtmlReplace(Result, 'football_matches_table', self.NextMatchesHtmlTable);
end;

function TJanuaCustomServerFootball.NextMatchesHtmlTable: string;
begin
  Result := self.FNextMatches.Transform(self.FTemplateMatchesHead.Text, self.FTemplateMatchesRow.Text)
end;

function TJanuaCustomServerFootball.NextMatchesJson: string;
begin
  Result := self.FNextMatches.AsJsonObject.ToJSON;
end;

procedure TJanuaCustomServerFootball.OpenRanking;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');

  try
    aTransaction := self.InTransaction;
    try
      self.WriteLog('TJanuaCustomServerFootball.OpenRanking.CreateDataModule');
      self.CreateDataModule;
      self.StartTransaction;
      try
        self.WriteLog('TJanuaCustomServerFootball.OpenRanking.InternalOpenChampionship');
        self.InternalOpenChampionship;
        self.WriteLog('TJanuaCustomServerFootball.OpenRanking.InternalOpenRanking');
        self.InternalOpenRanking;
        self.WriteLog('TJanuaCustomServerFootball.OpenRanking.AssignDatasets');
        self.AssignDatasets;
        self.FRankings.SetFromDataset(self.cdsChampRanking.MemDataset, self.cdsChampionship.MemDataset);
      finally
        if not aTransaction then
          self.EndTransaction;
        self.DestroyDataModule(not self.InTransaction);
      end;
    except
      on e: exception do
      begin
        self.WriteError('TJanuaCustomServerFootball.OpenRanking', e);
      end;

    end;
  except
    on e: exception do
      self.WriteError('TJanuaCustomServerFootball.OpenRanking', e, True);
  end;
end;

function TJanuaCustomServerFootball.RankingHtmlPage: string;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');

  try
    Result := FTemplateRankingPage.Text;
    HtmlReplace(Result, 'html_header', self.FHtmlHead.Text);
    HtmlReplace(Result, 'football_ranking_table', self.RankingHtmlTable);
  except
    on e: exception do
      self.WriteError('TJanuaCustomServerFootball.RankingHtmlPage', e, True);
  end;
end;

function TJanuaCustomServerFootball.RankingHtmlTable: string;
begin
  // Result := self.FRankings.Transform(FTemplateRankingHead.Text, FTemplateRankingRow.Text);
  Result := FRankings.AsHtmlTable;
end;

function TJanuaCustomServerFootball.RankingsJson: string;
begin
  self.FRankings.SetFromDataset(self.FcdsChampRanking.MemDataset, self.FcdsChampionship.MemDataset);
  Result := self.FRankings.AsJsonObject.ToJSON;
end;

procedure TJanuaCustomServerFootball.SaveTemplate;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');

  if FTemplateLoaded then
  begin
    self.FTemplateRankingHead.SaveToFile(getTemplateDir + 'TemplateRankingHead.html');
    self.FTemplateRankingPage.SaveToFile(getTemplateDir + 'TemplateRankingPage.html');
    self.FTemplateRankingRow.SaveToFile(getTemplateDir + 'TemplateRankingRow.html');

    self.FTemplateMatchesHead.SaveToFile(getTemplateDir + 'TemplateMatchesHead.html');
    self.FTemplateMatchesPage.SaveToFile(getTemplateDir + 'TemplateMatchesPage.html');
    self.FTemplateMatchesRow.SaveToFile(getTemplateDir + 'TemplateMatchesRow.html');

    self.FTemplateGoalRankingHead.SaveToFile(getTemplateDir + 'TemplateGoalRankingHead.html');
    self.FTemplateGoalRankingRow.SaveToFile(getTemplateDir + 'TemplateGoalRankingRow.html');
    self.FTemplateGoalRankingPage.SaveToFile(getTemplateDir + 'TemplateGoalRankingPage.html');

    self.FHtmlHead.SaveToFile(getTemplateDir + 'HtmlHead.html');
  end;
end;

procedure TJanuaCustomServerFootball.SetActive(const Value: boolean);
begin
  inherited;

end;

procedure TJanuaCustomServerFootball.SetCalendar(const Value: TJanuaFootballCalendar);
begin
  FCalendar := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsCalendarMatchDay(const Value: TJanuaJsonDacDataset);
begin
  FcdsCalendarMatchDay := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsCalendarMatches(const Value: TJanuaJsonDacDataset);
begin
  FcdsCalendarMatches := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsChampRanking(const Value: TJanuaJsonDacDataset);
begin
  FcdsChampRanking := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsChampTeam(const Value: TJanuaJsonDacDataset);
begin
  FcdsChampTeam := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsChampTeamMatches(const Value: TJanuaJsonDacDataset);
begin
  FcdsChampTeamMatches := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsChampTeamPlayers(const Value: TJanuaJsonDacDataset);
begin
  FcdsChampTeamPlayers := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsGolRanking(const Value: TJanuaJsonDacDataset);
begin
  FcdsGolRanking := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatchDay(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatchDay := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatchDetail(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatchDetail := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatchDetailEvents(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatchDetailEvents := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatchDetailHome(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatchDetailHome := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatchDetailVisitors(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatchDetailVisitors := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatches(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatches := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsMatchEvents(const Value: TJanuaJsonDacDataset);
begin
  FcdsMatchEvents := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsNextMatchDay(const Value: TJanuaJsonDacDataset);
begin
  FcdsNextMatchDay := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsNextMatches(const Value: TJanuaJsonDacDataset);
begin
  FcdsNextMatches := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsPlayer(const Value: TJanuaJsonDacDataset);
begin
  FCdsPlayer := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsPlayerCareer(const Value: TJanuaJsonDacDataset);
begin
  FCdsPlayerCareer := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsSeasonLeagues(const Value: TJanuaJsonDacDataset);
begin
  FcdsSeasonLeagues := Value;
end;

procedure TJanuaCustomServerFootball.SetcdsSeasons(const Value: TJanuaJsonDacDataset);
begin
  FcdsSeasons := Value;
end;

procedure TJanuaCustomServerFootball.SetChampionship(const Value: TJanuaChampionship);
begin
  FChampionship := Value;
end;

procedure TJanuaCustomServerFootball.SetChampionships(const Value: TJanuaFootballChampionships);
begin
  FChampionships := Value;
end;

procedure TJanuaCustomServerFootball.SetChampionshipTeam(const Value: TJanuaChampionshipTeam);
begin
  FChampionshipTeam := Value;
end;

procedure TJanuaCustomServerFootball.SetChampSummary(const Value: TJanuaChampionshipSummary);
begin
  FChampSummary := Value;
end;

procedure TJanuaCustomServerFootball.SetFootballSettings(const Value: IFootballSettings);
begin
  FFootballSettings := Value;
end;

procedure TJanuaCustomServerFootball.SetGoalRankingLimit(const Value: smallint);
begin
  FGoalRankingLimit := Value;
end;

procedure TJanuaCustomServerFootball.SetGoalRankings(const Value: TJanuaGoalRankings);
begin
  FGoalRankings := Value;
end;

procedure TJanuaCustomServerFootball.SetHtmlHead(const Value: TStrings);
begin
  if Assigned(self.FHtmlHead) and Assigned(Value) then
    FHtmlHead.Assign(Value)
  else if Assigned(self.FHtmlHead) and not Assigned(Value) then
    self.FHtmlHead.Clear
  else
    self.FHtmlHead := Value;
end;

procedure TJanuaCustomServerFootball.SetJanuaCms(const Value: Janua.Core.Cms.TJanuaCustomServerCms);
begin
  FJanuaCms := Value;
end;

procedure TJanuaCustomServerFootball.SetLastMatchDay(const Value: smallint);
begin
  if Assigned(self.FFootballSettings) then
    self.FFootballSettings.LastMatchDay := Value;
end;

procedure TJanuaCustomServerFootball.setLeague_ID(const Value: smallint);
begin
  if Assigned(FFootballSettings) and (Value <> self.league_id) then
    FFootballSettings.league_id := Value;
end;

procedure TJanuaCustomServerFootball.SetMatchDetail(const Value: TJanuaMatchDetail);
begin
  FMatchDetail := Value;
end;

procedure TJanuaCustomServerFootball.SetMatchDetails(const Value: TJanuaMatchDetails);
begin
  FMatchDetails := Value;
end;

procedure TJanuaCustomServerFootball.SetMatches(const Value: TJanuaMatches);
begin
  FMatches := Value;
end;

procedure TJanuaCustomServerFootball.setMatch_day(const Value: smallint);
begin
  if Assigned(FFootballSettings) and (Value <> self.match_day) then
    FFootballSettings.match_day := Value
end;

procedure TJanuaCustomServerFootball.setMatch_ID(const Value: int64);
begin
  if Assigned(FFootballSettings) and (Value <> self.match_id) then
    FFootballSettings.match_id := Value

end;

procedure TJanuaCustomServerFootball.Setmatch_team(const Value: integer);
begin
  if Assigned(self.FFootballSettings) then
  begin
    if Value <> FFootballSettings.match_team then
      FFootballSettings.match_team := Value
  end;
end;

procedure TJanuaCustomServerFootball.SetNextMatches(const Value: TJanuaMatches);
begin
  FNextMatches := Value;
end;

procedure TJanuaCustomServerFootball.SetPlayer(const Value: TJanuaFootballPlayer);
begin
  FPlayer := Value;
end;

procedure TJanuaCustomServerFootball.setPlayer_ID(const Value: integer);
begin
  if Assigned(self.FFootballSettings) then
  begin
    if Value <> FFootballSettings.player_id then
      FFootballSettings.player_id := Value;
  end;
end;

procedure TJanuaCustomServerFootball.SetRankings(const Value: TJanuaRankings);
begin
  FRankings := Value;
end;

procedure TJanuaCustomServerFootball.SetSeasons(const Value: TJanuaFootballSeasons);
begin
  FSeasons := Value;
end;

procedure TJanuaCustomServerFootball.setSeason_ID(const Value: smallint);
begin
  if Assigned(self.FFootballSettings) then
  begin
    if Value <> self.season_id then
      FFootballSettings.season_id := Value;
  end;
end;

procedure TJanuaCustomServerFootball.SetSelectedSeason(const Value: TJanuaFootballSeason);
begin
  FSelectedSeason := Value;
end;

procedure TJanuaCustomServerFootball.SetTeam_ID(const Value: integer);
begin
  if Assigned(self.FFootballSettings) then
    FFootballSettings.team_id := Value;
end;

procedure TJanuaCustomServerFootball.SetTemplateGoalRankingHead(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateGoalRankingHead.Assign(Value)
  else
    FTemplateGoalRankingHead.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateGoalRankingPage(const Value: TStrings);
begin

  if Assigned(self.FTemplateGoalRankingPage) and Assigned(Value) then
    FTemplateGoalRankingPage.Assign(Value)
  else if Assigned(self.FTemplateGoalRankingPage) and not Assigned(Value) then
    self.FTemplateGoalRankingPage.Clear
  else
    self.FTemplateGoalRankingPage := Value;

end;

procedure TJanuaCustomServerFootball.SetTemplateGoalRankingRow(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateGoalRankingRow.Assign(Value)
  else
    FTemplateGoalRankingRow.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateMatchesHead(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateMatchesHead.Assign(Value)
  else
    FTemplateMatchesHead.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateMatchesPage(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateMatchesPage.Assign(Value)
  else
    FTemplateMatchesPage.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateMatchesRow(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateMatchesRow.Assign(Value)
  else
    FTemplateMatchesRow.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

procedure TJanuaCustomServerFootball.SetTemplateRankingHead(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateRankingHead.Assign(Value)
  else
    FTemplateRankingHead.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateRankingPage(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateRankingPage.Assign(Value)
  else
    FTemplateRankingPage.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateRankingRow(const Value: TStrings);
begin
  if Assigned(Value) then
    FTemplateRankingRow.Assign(Value)
  else
    FTemplateRankingRow.Clear;
end;

procedure TJanuaCustomServerFootball.SetTemplateUpload(const Value: boolean);
begin
  FTemplateUpload := Value;
end;

function TJanuaCustomServerFootball.OpenCareer(aPlayerID: integer): smallint;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');
end;

procedure TJanuaCustomServerFootball.OpenCalendar;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');
  aTransaction := self.InTransaction;
  self.CreateDataModule;
  try
    self.StartTransaction;
    self.InternalOpenCalendar;
    FCalendar.SetFromDataset(FcdsCalendarMatches.MemDataset, FcdsCalendarMatchDay.MemDataset,
      FcdsChampionship.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not InTransaction);
  end;
end;

procedure TJanuaCustomServerFootball.OpenCalendar(aSeasonID, aLeagueID: integer);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCalendar  IFootballSettings not set');
  self.season_id := aSeasonID;
  self.league_id := aLeagueID;
  self.OpenCalendar;
end;

function TJanuaCustomServerFootball.OpenCareer: smallint;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenCareer  IFootballSettings not set');
end;

procedure TJanuaCustomServerFootball.OpenChampionship;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenChampionship  IFootballSettings not set');
  aTransaction := self.InTransaction;
  self.CreateDataModule;
  try
    self.StartTransaction;
    self.InternalOpenChampionship;
    if not self.KeepAlive then
    begin
      Guard.CheckNotNull(cdsChampionship, 'OpenChampionship: cdsChampionship is null');
      Guard.CheckNotNull(cdsChampionship.MemDataset, 'OpenChampionship: cdsChampionship is null');
      self.FChampionship.SetFromDataset(self.cdsChampionship.MemDataset);
      Guard.CheckNotNull(cdsMatches.MemDataset, 'OpenChampionship: cdsMatches is null');
      Guard.CheckNotNull(cdsMatches.MemDataset, 'OpenChampionship: cdsMatchDay is null');
      self.FMatches.SetFromDataset(self.cdsMatches.MemDataset, self.cdsMatchDay.MemDataset,
        self.cdsChampionship.MemDataset);
      Guard.CheckNotNull(cdsChampRanking.MemDataset, 'OpenChampionship: cdsChampRanking is null');
      self.FRankings.SetFromDataset(self.cdsChampRanking.MemDataset, self.cdsChampionship.MemDataset);
      Guard.CheckNotNull(cdsGolRanking.MemDataset, 'OpenChampionship: cdsGolRanking is null');
      self.FGoalRankings.SetFromDataset(self.cdsGolRanking.MemDataset);
      Guard.CheckNotNull(cdsNextMatches.MemDataset, 'OpenChampionship: cdsNextMatches is null');
      self.FNextMatches.SetFromDataset(self.cdsNextMatches.MemDataset, self.cdsMatchDay.MemDataset,
        self.cdsChampionship.MemDataset);
    end;
    FChampSummary.Championship := self.FChampionship;
    FChampSummary.matches := self.FMatches;
    FChampSummary.GoalRanking := self.FGoalRankings;
    FChampSummary.Ranking := self.FRankings;
    FChampSummary.NextMatches := self.FNextMatches;
    FChampSummary.LastDayNum := self.match_day;
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction and not self.KeepAlive);
  end;
end;

procedure TJanuaCustomServerFootball.OpenChampionshipsList;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenChampionshipsList  IFootballSettings not set');
  aTransaction := self.InTransaction;
  self.CreateDataModule;
  try
    self.StartTransaction;
    if FFootballSettings.season_id = 0 then
      FFootballSettings.season_id := self.GetLastSeasonID;
    self.InternalOpenChampionshipsList;
    if not self.KeepAlive then
      self.FChampionships.SetFromDataset(self.FcdsChampionships.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction and not self.KeepAlive);
  end;
end;

procedure TJanuaCustomServerFootball.OpenGoalRanking;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenLiveScore  IFootballSettings not set');
  aTransaction := self.InTransaction;
  self.CreateDataModule;
  try
    // self.InternalOpenChampionship;
    self.InternalOpenGoalRanking;
    self.AssignDatasets;
    self.FGoalRankings.SetFromDataset(self.FcdsChampionship.MemDataset, FcdsGolRanking.MemDataset);
    self.FChampionship.SetFromDataset(self.cdsChampionship.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction and not self.KeepAlive);
  end;
end;

procedure TJanuaCustomServerFootball.OpenLiveScore;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenLiveScore  IFootballSettings not set');
  aTransaction := self.InTransaction;
  self.CreateDataModule;
  try
    // self.InternalOpenChampionship;
    self.InternalOpenLiveScore;
    self.AssignDatasets;
    FMatchDetails.SetFromDataset(cdsChampionship.MemDataset, cdsMatchDetail.MemDataset, cdsMatchDetailHome.MemDataset,
      cdsMatchDetailVisitors.MemDataset, cdsMatchDetailEvents.MemDataset);
    if FFootballSettings.match_id = 0 then
    begin
      self.FChampionship.SetFromDataset(cdsChampionship.MemDataset);
      self.FGoalRankings.SetFromDataset(self.cdsGolRanking.MemDataset);
      self.FRankings.SetFromDataset(self.cdsChampRanking.MemDataset, self.cdsChampionship.MemDataset);
    end;
  finally
    if not aTransaction then
      self.EndTransaction;

    self.DestroyDataModule(not self.InTransaction);
  end;
end;

procedure TJanuaCustomServerFootball.OpenLiveScore(aSeasonID, aLeagueID, aMatchDay: smallint);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenLiveScore  IFootballSettings not set');
  self.season_id := aSeasonID;
  self.league_id := aLeagueID;
  self.match_day := aMatchDay;
  self.OpenLiveScore;
end;

procedure TJanuaCustomServerFootball.OpenLiveScore(aSeasonID, aLeagueID: smallint);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenLiveScore  IFootballSettings not set');
  self.season_id := aSeasonID;
  self.league_id := aLeagueID;
  self.match_day := 0;
  self.OpenLiveScore;
end;

procedure TJanuaCustomServerFootball.OpenMatchDetail(aMatchID: int64);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenMatchDetail  IFootballSettings not set');
  self.match_id := aMatchID;
  self.OpenMatchDetail;
end;

procedure TJanuaCustomServerFootball.OpenMatchDetail;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenMatchDetail  IFootballSettings not set');

  aTransaction := self.InTransaction;
  self.StartTransaction;
  self.CreateDataModule;
  try
    self.InternalOpenMatchDetail;
    self.AssignDatasets;
    FMatchDetail.SetFromDataset(cdsChampionship.MemDataset, cdsMatchDetail.MemDataset, cdsMatchDetailHome.MemDataset,
      cdsMatchDetailVisitors.MemDataset, cdsMatchDetailEvents.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction);
  end;
end;

procedure TJanuaCustomServerFootball.OpenMatchDetail(aSeasonID, aLeagueID, aMatchDay: smallint);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenMatchDetail  IFootballSettings not set');

  self.match_id := 0;
  self.season_id := aSeasonID;
  self.league_id := aLeagueID;
  self.match_day := aMatchDay;
  self.OpenMatchDetail;
end;

procedure TJanuaCustomServerFootball.OpenMatches;
var
  aTransaction: boolean;
begin

  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenMatchDetail  IFootballSettings not set');

  aTransaction := self.InTransaction;
  self.StartTransaction;
  self.CreateDataModule;
  try
    self.InternalOpenMatches;
    self.FMatches.SetFromDataset(FcdsMatches.MemDataset, FcdsMatchDay.MemDataset, FcdsChampionship.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction);
  end;
end;

procedure TJanuaCustomServerFootball.OpenNextMatches;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenNextMatches  IFootballSettings not set');

  aTransaction := self.InTransaction;
  self.StartTransaction;
  self.CreateDataModule;
  try
    self.InternalOpenNextMatches;
    self.FNextMatches.isNextMatchDay := True;
    self.FNextMatches.SetFromDataset(FcdsNextMatches.MemDataset, cdsNextMatchDay.MemDataset,
      FcdsChampionship.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction);
  end;
end;

procedure TJanuaCustomServerFootball.OpenPlayerCareer;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenPlayerCareer  IFootballSettings not set');

  try
    aTransaction := self.InTransaction;
    self.CreateDataModule;
    try
      self.StartTransaction;
      self.InternalOpenPlayerCareer;
      self.AssignDatasets;
      self.FPlayer.SetFromDataset(self.cdsPlayer.MemDataset, self.cdsPlayerCareer.MemDataset);
    finally
      if not aTransaction then
        self.EndTransaction;
      self.DestroyDataModule(not self.InTransaction);
    end;
  except
    on e: exception do
      self.WriteError('TJanuaCustomServerFootball.RankingHtmlPage', e, True);
  end;
end;

procedure TJanuaCustomServerFootball.OpenPlayerCareer(aPlayerID: integer);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenPlayerCareer  IFootballSettings not set');

  self.player_id := aPlayerID;
  self.OpenPlayerCareer;
end;

procedure TJanuaCustomServerFootball.OpenSeasonsList;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenSeasonsList  IFootballSettings not set');

  try
    aTransaction := self.InTransaction;
    self.CreateDataModule;
    try
      self.StartTransaction;
      self.InternalOpenSeasonsList;
      self.AssignDatasets;
      self.FSeasons.SetFromDataset(self.cdsSeasons.MemDataset);
      self.FSeasons.SetSelected(self.season_id);
    finally
      if not aTransaction then
        self.EndTransaction;
      self.DestroyDataModule(not self.InTransaction);
    end;
  except
    on e: exception do
      self.WriteError('TJanuaCustomServerFootball.RankingHtmlPage', e, True);
  end;
end;

procedure TJanuaCustomServerFootball.OpenTeamChampionship;
var
  aTransaction: boolean;
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenTeamChampionship  IFootballSettings not set');

  aTransaction := self.InTransaction;
  self.StartTransaction;
  self.CreateDataModule;
  try
    InternalOpenTeamChampionship;
    self.AssignDatasets;
    FChampionshipTeam.SetFromDataset(FcdsChampTeam.MemDataset, FcdsChampTeamPlayers.MemDataset,
      FcdsChampTeamMatches.MemDataset);
    FChampionshipTeam.Championship.SetFromDataset(self.FcdsChampionship.MemDataset);
  finally
    if not aTransaction then
      self.EndTransaction;
    self.DestroyDataModule(not self.InTransaction);
  end;
end;

procedure TJanuaCustomServerFootball.OpenTeamChampionship(aSeasonID, aLeagueID, aTeamID: smallint);
begin
  if (csDesigning in ComponentState) then
    exit;
  Guard.CheckNotNull(FFootballSettings, 'TJanuaCustomServerFootball.OpenTeamChampionship  IFootballSettings not set');

  self.match_id := 0;
  self.season_id := aSeasonID;
  self.league_id := aLeagueID;
  self.team_id := aTeamID;
  self.OpenTeamChampionship;
end;

{ TJanuaFootballRankingController }

procedure TJanuaFootballRankingController.dsLeaguesDataChange(Sender: TObject; Field: TField);
begin

  // if Assigned(dsLeagues.DataSet) then
  // if self.dsLeagues.DataSet.FieldByName('league_id').AsInteger <> self.getLeague_ID then
  // self.Setleague_id(self.dsLeagues.DataSet.FieldByName('league_id').AsInteger);
end;

procedure TJanuaFootballRankingController.dsSeasonsDataChange(Sender: TObject; Field: TField);
begin
  // if Assigned(dsSeasons.DataSet) then
  // if self.dsSeasons.DataSet.FieldByName('season_id').AsInteger <> self.getSeason_ID then
  // self.Setseason_id(self.dsSeasons.DataSet.FieldByName('season_id').AsInteger);
end;

function TJanuaFootballRankingController.getLeague_ID: smallint;
begin
  Result := -1;
  if not self.isInitializing then
    try
      if Assigned(self.FServerFootball) then
      begin
        if self.FServerFootball.Active then
          Result := FServerFootball.league_id
        else
          Result := 0
      end
    except
      on e: exception do
      begin
        self.WriteLog('Errore: TJanuaFootballRankingController.getSeason_ID');
        Result := 0;
      end;
    end;

end;

function TJanuaFootballRankingController.getSeason_ID: smallint;
begin
  Result := -1;
  if not self.isInitializing then
    try
      if Assigned(FServerFootball) then
      begin
        if self.FServerFootball.Active then
          Result := FServerFootball.season_id
        else
          Result := 0
      end
    except
      on e: exception do
      begin
        self.WriteLog('Errore: TJanuaFootballRankingController.getSeason_ID');
        Result := 0;
      end;

    end;

end;

function TJanuaFootballRankingController.InternalActivate: boolean;
begin
  if not self.isInitializing then
    try
      if Result then
        Result := Assigned(self.FServerFootball);

      if Result then
        Result := self.FServerFootball.ActivateDatasets;

      if Result then
      begin
        SetInternalDatasources;
        self.FActive := FServerFootball.OpenDefaultSeason;
      end;

    except
      on e: exception do
      begin
        self.WriteError('TJanuaFootballRankingController.InternalActivate', e);
      end;
    end
  else
  begin
    Result := False;
    self.FActive := False;
  end;

end;

procedure TJanuaFootballRankingController.SetdsGoalRanking(const Value: TDataSource);
begin
  FdsGoalRanking := Value;
  if Assigned(Value) then
    SetInternalDatasources
end;

procedure TJanuaFootballRankingController.SetdsLeagues(const Value: TDataSource);
begin
  FdsChampionships := Value;
  if Assigned(FdsChampionships) then
  begin
    SetInternalDatasources;
    FdsChampionships.OnDataChange := self.dsLeaguesDataChange;
  end;
end;

procedure TJanuaFootballRankingController.SetdsMatches(const Value: TDataSource);
begin
  FdsMatches := Value;
  if Assigned(Value) then
    SetInternalDatasources
end;

procedure TJanuaFootballRankingController.SetdsNextMatches(const Value: TDataSource);
begin
  FdsNextMatches := Value;
  if Assigned(Value) then
    SetInternalDatasources
end;

procedure TJanuaFootballRankingController.SetdsRanking(const Value: TDataSource);
begin
  FdsRanking := Value;
  if Assigned(Value) then
    SetInternalDatasources
end;

procedure TJanuaFootballRankingController.SetdsSeasons(const Value: TDataSource);
begin
  FdsSeasons := Value;
  if Assigned(Value) then
  begin
    SetInternalDatasources;
    Value.OnDataChange := self.dsSeasonsDataChange;
  end;

end;

procedure TJanuaFootballRankingController.SetInternalDatasources;
begin

  if Assigned(FServerFootball) then
  begin

    if Assigned(FdsNextMatches) and Assigned(self.FServerFootball.cdsNextMatches.MemDataset) then
      self.FdsNextMatches.DataSet := self.FServerFootball.cdsNextMatches.MemDataset;

    if Assigned(FdsMatches) and Assigned(self.FServerFootball.cdsMatches.MemDataset) then
      self.FdsMatches.DataSet := self.FServerFootball.cdsMatches.MemDataset;

    if Assigned(self.FdsNextMatches) and Assigned(self.FServerFootball.cdsNextMatches.MemDataset) then
      self.FdsNextMatches.DataSet := self.FServerFootball.cdsNextMatches.MemDataset;

    if Assigned(self.FdsSeasons) and Assigned(self.FServerFootball.cdsSeasons.MemDataset) then
      self.FdsSeasons.DataSet := self.FServerFootball.cdsSeasons.MemDataset;

    if Assigned(self.FdsChampionships) and Assigned(self.FServerFootball.cdsChampionships.MemDataset) then
      self.FdsChampionships.DataSet := self.FServerFootball.cdsChampionships.MemDataset;

    if Assigned(self.FdsRanking) and Assigned(self.FServerFootball.cdsChampRanking.MemDataset) then
      self.FdsRanking.DataSet := self.FServerFootball.cdsChampRanking.MemDataset;

    if Assigned(self.FdsGoalRanking) and Assigned(self.FServerFootball.cdsGolRanking.MemDataset) then
      self.FdsGoalRanking.DataSet := self.FServerFootball.cdsGolRanking.MemDataset;
  end;

end;

procedure TJanuaFootballRankingController.setLeague_ID(const Value: smallint);
begin
  if Assigned(FServerFootball) and (Value <> self.FServerFootball.league_id) then
  begin
    self.FServerFootball.league_id := Value;
  end;
end;

procedure TJanuaFootballRankingController.setSeason_ID(const Value: smallint);
begin
  if Assigned(FServerFootball) and (Value <> self.FServerFootball.season_id) then
  begin
    self.FServerFootball.season_id := Value;
  end;
end;

procedure TJanuaFootballRankingController.SetServerFootball(const Value: TJanuaCustomServerFootball);
begin
  FServerFootball := Value;
end;

{ TJanuaTemplateFootball }

constructor TJanuaTemplateFootball.Create(AOwner: TComponent);
begin
  inherited;
  // 2017-23-10 - KB 2017-0026 - Sostituzioe Home page 'string' cone Home page Property ..............
  if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
    PageTemplateFile := 'dilettantissimopage1.html'
  else
    PageTemplateFile := 'sportmediapage.html';
end;

function TJanuaTemplateFootball.PrepareChampionshipTeam(aUseFrame: boolean = False): boolean;
begin
  if aUseFrame then
    PrepareTemplate(FNameSpace, 'framepage.html', 'framechampteam.html')
  else
    PrepareTemplate(FNameSpace, PageTemplateFile, 'bodychampteam.html');
end;

function TJanuaTemplateFootball.PrepareHome(aUseFrame: boolean = False): boolean;
begin
  // self.PrepareTemplate(self.FNameSpace, 'SearchPage.html', 'bodysearch.html');
  if aUseFrame then
    PrepareTemplate(FNameSpace, 'framepage.html', 'FrameFootballLastMatch.html')
  else
    PrepareTemplate(FNameSpace, PageTemplateFile, 'bodyfootball1.html');
  // PrepareTemplate('Dico33', 'HomePage.html', 'bodyhiteshi1.html');
end;

function TJanuaTemplateFootball.PrepareLiveScore(aUseFrame: boolean): boolean;
begin
  if aUseFrame then
    PrepareTemplate(FNameSpace, 'FramePage.html', 'FrameFootballLiveScore.html')
  else
    PrepareTemplate(FNameSpace, PageTemplateFile, 'bodyfootball1.html');
end;

function TJanuaTemplateFootball.PrepareMatchDetail(aUseFrame: boolean): boolean;
begin
  // .html

  if aUseFrame then
    PrepareTemplate(FNameSpace, 'FramePage.html', 'bodyfootball_matchdetail.html')
  else
  begin
    if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
      PrepareTemplate(FNameSpace, 'dilettantissimopage1.html', 'bodyfootball_matchdetail.html')
    else
      PrepareTemplate(FNameSpace, 'sportmediapage.html', 'bodyfootball_matchdetail.html');
  end;
end;

function TJanuaTemplateFootball.PreparePage(const aPage: string): boolean;
begin

end;

function TJanuaTemplateFootball.PreparePage404: boolean;
begin
  Result := inherited;
end;

procedure TJanuaTemplateFootball.PreparePageLogin(aFrame: boolean);
begin
  // Sovrascrive completamente la funzione base ..............................
  // inherited;
  // .html
  if aFrame then
  begin
    if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
      PrepareTemplate(FNameSpace, 'FramePage.html', 'bodydilettantissimologin.html')
    else
      PrepareTemplate(FNameSpace, 'FramePage.html', 'bodysportmedialogin.html');
  end
  else
  begin
    if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
      PrepareTemplate(FNameSpace, 'dilettantissimopage1.html', 'bodydilettantissimologin.html')
    else
      PrepareTemplate(FNameSpace, 'SportmediaPageLogin.html', 'bodysportmedialogin.html');
  end;
end;

function TJanuaTemplateFootball.PreparePlayerCareer(aUseFrame: boolean): boolean;
begin
  if aUseFrame then
    PrepareTemplate(FNameSpace, 'FramePage.html', 'bodyplayerframe.html')
  else
  begin
    if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
      PrepareTemplate(FNameSpace, 'dilettantissimopage1.html', 'bodyplayer_frame.html')
    else
      PrepareTemplate(FNameSpace, 'sportmediapage.html', 'bodyplayer.html');
  end;
end;

function TJanuaTemplateFootball.PrepareRanking(aUseFrame: boolean): boolean;
begin
  if aUseFrame then
    PrepareTemplate(FNameSpace, 'FramePage.html', 'bodyranking_frame.html')
  else
  begin
    if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
      PrepareTemplate(FNameSpace, 'dilettantissimopage1.html', 'bodyranking_frame.html')
    else
      PrepareTemplate(FNameSpace, 'sportmediapage.html', 'bodyranking.html');
  end;
end;

procedure TJanuaTemplateFootball.SetJanuaServerFootball(const Value: TJanuaCustomServerFootball);
begin

  FJanuaServerFootball := Value;
end;

procedure TJanuaTemplateFootball.ShowLogin;
begin
  inherited;

end;

procedure TJanuaTemplateFootball.TerminateChampionshipTeam(aIsFrame: boolean);
begin
  if Assigned(FJanuaServerFootball) then
  begin
    TerminateTemplatePage(aIsFrame);
    { bodychampteam.html }
    self.ReplaceTemplateString('league_name', FJanuaServerFootball.Championship.league_name);
    self.ReplaceTemplateString('football.teamname', FJanuaServerFootball.ChampionshipTeam.Name);
    self.ReplaceTemplateString('football.teamranking', FJanuaServerFootball.ChampionshipTeam.AsTableBig.AsHtml);
    self.ReplaceTemplateString('football.teampoints', FJanuaServerFootball.ChampionshipTeam.Ranking.goal_done.ToString);
    self.ReplaceTemplateString('football.season_des', FJanuaServerFootball.ChampionshipTeam.Championship.season_des);
    self.ReplaceTemplateString('football.teamchampionship', FJanuaServerFootball.ChampionshipTeam.AsMetroPortlet(10,
      False, aIsFrame));
    self.ReplaceTemplateString('football.teammatches', FJanuaServerFootball.ChampionshipTeam.matches.AsMetroPortlet
      (10, False));
  end;
  self.TerminatePageContent;
end;

procedure TJanuaTemplateFootball.TerminateHome(aIsFrame: boolean = False);
begin
  Assert(Assigned(FJanuaServerFootball), 'Error TJanuaTemplateFootball.TerminateHome FJanuaServerFootball = nil');
  TerminateTemplatePage(aIsFrame);
  if aIsFrame then
  begin
    // ReplaceTemplateString('football.matches', self.FJanuaServerFootball.matches.AsMetroPortlet(4, True, aIsFrame));
    ReplaceTemplateString('football.matches', self.FJanuaServerFootball.matches.AsMetroHtmlTable(4, aIsFrame));
    // ReplaceTemplateString('football.rankings', self.FJanuaServerFootball.rankings.AsMetroPortlet(4));
    ReplaceTemplateString('football.rankings', self.FJanuaServerFootball.rankings.AsShortTable);
    // ReplaceTemplateString('football.goalrankings', self.FJanuaServerFootball.goalrankings.AsMetroPortlet(4));
    ReplaceTemplateString('football.goalrankings', self.FJanuaServerFootball.goalrankings.AsShortTable(4, aIsFrame));
  end
  else
  begin
    self.ReplaceTemplateString('football.matches', self.FJanuaServerFootball.matches.AsMetroPortlet(4, False,
      aIsFrame));
    self.ReplaceTemplateString('football.rankings', self.FJanuaServerFootball.rankings.AsMetroPortlet(4, False,
      aIsFrame));
    self.ReplaceTemplateString('football.goalrankings', self.FJanuaServerFootball.goalrankings.AsMetroPortlet(4,
      aIsFrame));
  end;
  self.ReplaceTemplateString('league_name', FJanuaServerFootball.Championship.league_name);
  self.ReplaceTemplateString('match_day', FJanuaServerFootball.matches.match_day_number.ToString);
  self.ReplaceTemplateString('season_des', FJanuaServerFootball.Championship.season_des);

  self.TerminatePageContent
end;

procedure TJanuaTemplateFootball.TerminateLiveScore(aIsFrame: boolean = False);
var
  temp: string;
begin
  // la procedura Terminate Live Score richiama in parte le procedure Terminate Home Page ed in parte
  // aggiunge nuove sezioni .........................................................................
  if Assigned(FJanuaServerFootball) then
  begin
    TerminateTemplatePage(aIsFrame);

    temp := IfThen(FJanuaServerFootball.match_id <> 0, '', FJanuaServerFootball.matches.AsMetroPortlet(4, True,
      aIsFrame));
    ReplaceTemplateString('football.matches', temp);
    // ReplaceTemplateString('football.rankings', self.FJanuaServerFootball.rankings.AsMetroPortlet(4));

    // ReplaceTemplateString('football.goalrankings', self.FJanuaServerFootball.goalrankings.AsMetroPortlet(4));

    ReplaceTemplateString('league_name', FJanuaServerFootball.Championship.league_name);
    ReplaceTemplateString('match_day', FJanuaServerFootball.matches.match_day_number.ToString);
    ReplaceTemplateString('season_des', FJanuaServerFootball.Championship.season_des);

    temp := IfThen(FJanuaServerFootball.match_id <> 0, '', self.FJanuaServerFootball.rankings.AsShortTable);
    ReplaceTemplateString('football.rankings', temp);
    temp := IfThen(FJanuaServerFootball.match_id <> 0, '', FJanuaServerFootball.goalrankings.AsShortTable(4, aIsFrame));
    ReplaceTemplateString('football.goalrankings', temp);

    ReplaceTemplateString('football.livescore', FJanuaServerFootball.MatchDetails.AsLiveScore);

    self.TerminatePageContent;
  end;

end;

procedure TJanuaTemplateFootball.TerminateMatchDetail(aIsFrame: boolean);
begin
  // la procedura Terminate Match Details richiama in parte le procedure Terminate Home Page ed in parte
  // aggiunge nuove sezioni .........................................................................
  if Assigned(FJanuaServerFootball) then
  begin
    TerminateTemplatePage(aIsFrame);
    ReplaceTemplateString('football.home_team_name', self.FJanuaServerFootball.MatchDetail.hometeam.Name);
    ReplaceTemplateString('football.visitors_team_name', self.FJanuaServerFootball.MatchDetail.visitorsteam.Name);
    ReplaceTemplateString('football.match_goals', self.FJanuaServerFootball.MatchDetail.match.ShortResult);
    ReplaceTemplateString('league_name', FJanuaServerFootball.Championship.league_name);
    ReplaceTemplateString('match_day', FJanuaServerFootball.matches.match_day_number.ToString);
    ReplaceTemplateString('season_des', FJanuaServerFootball.Championship.season_des);
    ReplaceTemplateString('football.subtitles', FJanuaServerFootball.MatchDetail.AsLiveScore(True));
    ReplaceTemplateString('football.home_team', FJanuaServerFootball.MatchDetail.visitorsteam.AsMetroPortle);
    ReplaceTemplateString('football.visitors_team', FJanuaServerFootball.MatchDetail.hometeam.AsMetroPortle);
    self.TerminatePageContent;
  end;
end;

procedure TJanuaTemplateFootball.TerminateTemplatePage(aIsFrame: boolean);
begin
  // $football.seasons$
  inherited;
  if not aIsFrame then
  begin
    self.ReplaceTemplateString('football.seasons', self.FJanuaServerFootball.Seasons.AsHtml(False));
    self.ReplaceTemplateString('football.championships', self.FJanuaServerFootball.Championships.AsHtml(True));
  end;
end;

procedure TJanuaTemplateFootball.TerminatePageContent;
begin
  inherited;
  if Assigned(FJanuaServerFootball) then
  begin
    if self.FJanuaServerFootball.isPublic then
    begin
      self.ReplaceTemplateString('login', 'login');
      // http://www.dico33.com/$actioninbox$    /health/dashboard
      self.ReplaceTemplateString('actioninbox', 'login');
      self.ReplaceTemplateString('loginlabel', 'Accedi');
      self.ReplaceTemplateString('firstname', 'Area Utente');
      self.ReplaceTemplateString('siteurl', self.UrlSite);
      // this is the url of the site itself.

    end
    else
    begin
      self.ReplaceTemplateString('login', 'dologout');
      self.ReplaceTemplateString('actioninbox', 'health/dashboard');
      self.ReplaceTemplateString('loginlabel', 'Esci');
      self.ReplaceTemplateString('firstname', self.FJanuaServerFootball.Userprofile.FirstName);
      self.ReplaceTemplateString('siteurl', self.UrlSite); // this is the url of the site itself.
    end;
  end;
end;

procedure TJanuaTemplateFootball.TerminatePageLogin;
begin
  inherited;
  {
    <form class="login-form" action="$confirm$" method="post">
    $logintitle$
  }
  self.ReplaceTemplateString('logintitle', 'Da oggi occorre iscriversi per accedere ad Alamanacco on Line. ' +
    ' Inserisci nome utente e password o registrati per accedere ad Almanacco del Calcio Ligure (la registrazione è gratuita)');
  // url dologin è l'url di 'passaggio che permette di eseguire una login ...................
  self.ReplaceTemplateString('confirm', '/?page=dologin');
  // logintitle il motto della Login del sito di Dico33.
  // self.ReplaceTemplateString('logintitle');
  // actionregister
  self.ReplaceTemplateString('actionregister', '/?page=doregister');
  self.ReplaceTemplateString('actionforget', '/?page=forgetpassword');
  // https://www.facebook.com/
end;

procedure TJanuaTemplateFootball.TerminatePlayerCareer(aIsFrame: boolean);
begin
  self.TerminatePageContent;
  TerminateTemplatePage(aIsFrame);
  with FJanuaServerFootball do
  begin
    ReplaceTemplateString('football.playername', Player.FullName);
    ReplaceTemplateString('football.playerbirthdate', IfThen(Player.BirthDate > 0, FormatDateTime('dd/mm/yyyy',
      Player.BirthDate), Player.BirthYear.ToString));
    ReplaceTemplateString('football.player_career', Player.AsMetroPortlet());
  end;
end;

procedure TJanuaTemplateFootball.TerminateRanking(aIsFrame: boolean);
begin
  self.TerminatePageContent;
  TerminateTemplatePage(aIsFrame);
  with FJanuaServerFootball do
  begin
    ReplaceTemplateString('football.ranking', FJanuaServerFootball.RankingHtmlTable);
  end;
end;

{ TJanuaFootballWebController }

function TJanuaFootballWebController.ActionChampionshipTeam(aUseFrame: boolean): boolean;
begin
  // gli attori sono:
  // FJanuaServerFootball = Server connesso al Databse con programma del Football
  // FJanuaServerFootball = una volta avviato se i parametri non sono avviati deve partire con dati di Default.
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  if not self.Userprofile.User.Payment then
    Result := ActionPaymentForm(aUseFrame)
  else
    try
      self.FUseFrame := aUseFrame;
      self.FJanuaTemplateFootball.PrepareChampionshipTeam(aUseFrame);
      TemplateHead;
      FJanuaServerFootball.OpenTeamChampionship;
      // Imposto la variabile FChampionshipTeam.
      {
        Name: string;
        Players: array of TJanuaFootballPlayer;
        goal: smallint; points: smallint;
        Season: TJanuaFootballSeasons;  Championship: TJanuaChampionship
      }
      self.FJanuaTemplateFootball.TerminateChampionshipTeam(aUseFrame);
      self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
      self.FFromPage := TJanuaWebPage.jwpHome;
      self.FToPage := TJanuaWebPage.jwpHome;
      self.WebResponse.Assign(FJanuaTemplateFootball.Template);
      Result := True;
    except
      on e: exception do
      begin
        self.WriteLog('TJanuaFootballWebController.ActionChampionshipTeam ' + e.Message);
        self.LastErrorMessage := 'TJanuaFootballWebController.ActionChampionshipTeam ' + e.Message;
        self.Action501(aUseFrame);
        Result := True;
      end;
    end;
end;

function TJanuaFootballWebController.ActionDoRegister: boolean;
begin
  Result := inherited;
  if Result then
  begin
    self.FToPage := TJanuaWebPage.jwpHome;
    GoToPage(Result);
  end;
end;

function TJanuaFootballWebController.ActionGoalRanking(aUseFrame: boolean): boolean;
begin
  Result := False;
end;

function TJanuaFootballWebController.ActionHomePage(aUseFrame: boolean = False): boolean;
begin
  // gli attori sono:
  // FJanuaServerFootball = Server connesso al Databse con programma del Football
  // FJanuaServerFootball = una volta avviato se i parametri non sono avviati deve partire con dati di Default.
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  self.FUseFrame := aUseFrame;
  self.FJanuaTemplateFootball.PrepareHome(aUseFrame);
  TemplateHead;
  FJanuaServerFootball.OpenChampionship;
  self.FJanuaTemplateFootball.TerminateHome(aUseFrame);
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  self.FFromPage := TJanuaWebPage.jwpHome;
  self.FToPage := TJanuaWebPage.jwpHome;
  self.WebResponse.Assign(FJanuaTemplateFootball.Template);
  Result := True;
end;

function TJanuaFootballWebController.ActionLiveScore(aUseFrame: boolean): boolean;
begin
  // gli attori sono:
  // FJanuaServerFootball = Server connesso al Databse con programma del Football
  // FJanuaServerFootball = una volta avviato se i parametri non sono avviati deve partire con dati di Default.
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  self.FUseFrame := aUseFrame;
  self.FJanuaTemplateFootball.PrepareLiveScore(aUseFrame);
  TemplateHead;
  FJanuaServerFootball.OpenLiveScore;
  self.FJanuaTemplateFootball.TerminateLiveScore;
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  self.FFromPage := TJanuaWebPage.jwpHome;
  self.FToPage := TJanuaWebPage.jwpHome;
  self.WebResponse.Assign(FJanuaTemplateFootball.Template);
  Result := True;
end;

procedure TJanuaFootballWebController.TemplateHead(aUseFrame: boolean = False);
var
  aDropDownMenu: Janua.Core.Metronics.TJanuaMetroUserDropDownMenu;
begin
  if self.AppUrl = 'dilettantissimo.ergomercator.com' then
  begin
    FJanuaTemplateFootball.PageAuthor := 'Dilettantissimo TV';
    FJanuaTemplateFootball.PageTitle := 'Tutto il calcio Ligure in TV';
    FJanuaTemplateFootball.PageDescription :=
      'Dilettantissimo TV Risultati Live e classifiche del calcio dilettanti in Liguria';
  end
  else
  begin
    FJanuaTemplateFootball.PageAuthor := 'Sportmedia Edizioni Srl';
    FJanuaTemplateFootball.PageTitle := 'Almanacco on line dello sport';
    FJanuaTemplateFootball.PageDescription :=
      'Settimana sport risultati e classifiche del calcio dilettanti in Liguria';
  end;

  if (self.SessionKey = '') and Assigned(self.FJanuaServerFootball) then
    self.FJanuaServerFootball.StartPublicWebSession
  else if (self.SessionKey <> '') and Assigned(self.FJanuaServerFootball) then
    self.FJanuaServerFootball.CheckSessionKey(self.SessionKey);
  if not self.FUseFrame then
  begin
    FJanuaServerFootball.OpenSeasonsList;
    FJanuaServerFootball.OpenChampionshipsList;
  end;
  aDropDownMenu.Create(self.Userprofile);
  aDropDownMenu.LoginUrl := '?page=login';
  aDropDownMenu.NotificationsUrl := '?page=notifications';
  aDropDownMenu.DashBoardUrl := '?page=dashboard';
  aDropDownMenu.LogOutUrl := '?page=dologout';
  aDropDownMenu.LockScreen := False;
  aDropDownMenu.LockScreenUrl := '?page=lockscreen';
  if self.isPublic then
    aDropDownMenu.LoginText := 'Login'
  else
    aDropDownMenu.LoginText := self.Userprofile.FirstName;
  FJanuaTemplateFootball.UserDropDownMenu := aDropDownMenu;

end;

function TJanuaFootballWebController.ActionLogin(error: boolean; ErrorMessage: string): boolean;
begin
  FJanuaTemplateFootball.PageType := TJanuaPageType.jptLoginFootball;
  // Eredita la procedura ma deve impostare il tipo di Pagina a jwpLoginFootball
  Result := inherited;
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  // Action Login non imposta le Variabili Page From e Page To perchè settate esternamente
  (*
    self.FJanuaTemplateFootball.PreparePageLogin;
    TemplateHead;

    if (self.SessionKey = '') and Assigned(self.FJanuaServerFootball) then
    self.FJanuaServerFootball.StartPublicWebSession
    else if (self.SessionKey <> '') and Assigned(self.FJanuaServerFootball) then
    self.FJanuaServerFootball.CheckSessionKey(self.SessionKey);
    // all'avvio della pagina di Login non vi sono errori di Login quindi viene presentato il display = none
    // se fosse presente un errore allora sarebbe display = block

    if error then
    self.FJanuaTemplateFootball.ReplaceTemplateString('displayerrorlogin', '')
    else
    self.FJanuaTemplateFootball.ReplaceTemplateString('displayerrorlogin', 'display-hide');
    {
    self.FJanuaTemplateFootball.ReplaceTemplateString('displayerrorlogin', 'block')
    else
    self.FJanuaTemplateFootball.ReplaceTemplateString('displayerrorlogin', 'none');
    }

    // il testo di default della box di messaggio è quello che viene usato dal componente ajax di test.
    if error then
    self.FJanuaTemplateFootball.ReplaceTemplateString('displayerrorloginmessage', ErrorMessage)
    else
    self.FJanuaTemplateFootball.ReplaceTemplateString('displayerrorloginmessage', 'Inserire nome utente e password.');
    // da creare la action Forget Password che verifica i dati dell'utente e gli invia un link di recupero password .....

    self.FJanuaTemplateFootball.TerminatePageLogin;
    self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    self.WebResponse.Assign(FJanuaTemplateFootball.Template);
    Result := True;
  *)
end;

function TJanuaFootballWebController.ActionMatchDay(aUseFrame: boolean): boolean;
begin

end;

function TJanuaFootballWebController.ActionMatchDetails(aUseFrame: boolean): boolean;
begin
  // gli attori sono:
  // FJanuaServerFootball = Server connesso al Databse con programma del Football
  // FJanuaServerFootball = una volta avviato se i parametri non sono avviati deve partire con dati di Default.
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  if not self.Userprofile.User.Payment then
    Result := ActionPaymentForm(aUseFrame)
  else
  begin
    self.FUseFrame := aUseFrame;
    self.FJanuaTemplateFootball.PrepareMatchDetail(aUseFrame);
    // verificare che prenda Match ID dalla Web Session .........................................................
    TemplateHead;
    FJanuaServerFootball.OpenMatchDetail;
    self.FJanuaTemplateFootball.TerminateMatchDetail(aUseFrame);
    self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    self.FFromPage := TJanuaWebPage.jwpMatchDetails;
    self.FToPage := TJanuaWebPage.jwpMatchDetails;
    self.WebResponse.Assign(FJanuaTemplateFootball.Template);
    Result := True;
  end;
end;

function TJanuaFootballWebController.ActionPlayerCareer(aUseFrame: boolean): boolean;
begin
  // gli attori sono:
  // FJanuaServerFootball = Server connesso al Databse con programma del Football
  // FJanuaServerFootball = una volta avviato se i parametri non sono avviati deve partire con dati di Default.
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  if not self.Userprofile.User.Payment then
    Result := ActionPaymentForm(aUseFrame)
  else
  begin
    self.FUseFrame := aUseFrame;
    self.FJanuaTemplateFootball.PreparePlayerCareer(aUseFrame);
    // verificare che prenda Match ID dalla Web Session .........................................................
    TemplateHead;
    FJanuaServerFootball.OpenPlayerCareer(FJanuaServerFootball.player_id);
    self.FJanuaTemplateFootball.TerminatePlayerCareer(aUseFrame);
    self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    self.FFromPage := TJanuaWebPage.jwpPlayerCareer;
    self.FToPage := TJanuaWebPage.jwpPlayerCareer;
    self.WebResponse.Assign(FJanuaTemplateFootball.Template);
    Result := True;
  end;
end;

function TJanuaFootballWebController.ActionRanking(aUseFrame: boolean): boolean;
begin
  // gli attori sono:
  // FJanuaServerFootball = Server connesso al Databse con programma del Football
  // FJanuaServerFootball = una volta avviato se i parametri non sono avviati deve partire con dati di Default.
  // la creazione della home page da parte del controller è in effetti abbastanza 'triviale'.
  self.FUseFrame := aUseFrame;
  self.FJanuaTemplateFootball.PrepareRanking;
  // verificare che prenda Match ID dalla Web Session .........................................................
  TemplateHead;
  FJanuaServerFootball.OpenRanking;
  self.FJanuaTemplateFootball.TerminateRanking(aUseFrame);
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  self.FFromPage := TJanuaWebPage.jwpPlayerCareer;
  self.FToPage := TJanuaWebPage.jwpPlayerCareer;
  self.WebResponse.Assign(FJanuaTemplateFootball.Template);
  Result := True;
end;

procedure TJanuaFootballWebController.PrepareLoginTemplate;
begin
  inherited;

end;

procedure TJanuaFootballWebController.SelfCheck;
begin
  inherited;
  if not Assigned(self.FJanuaTemplateFootball) then
    raise exception.Create('TJanuaFootballWebController.SelfCheck FJanuaTemplateFootball not Set');
  if not Assigned(self.FJanuaServerFootball) then
    raise exception.Create('TJanuaFootballWebController.SelfCheck FJanuaServerFootball not Set');
end;

procedure TJanuaFootballWebController.SetJanuaServerFootball(const Value: TJanuaCustomServerFootball);
begin
  FJanuaServerFootball := Value;
  self.FJanuaCustomServer := FJanuaServerFootball;
end;

procedure TJanuaFootballWebController.SetJanuaTemplateFootball(const Value: TJanuaTemplateFootball);
begin
  FJanuaTemplateFootball := Value;
  self.FJanuaRepository := FJanuaTemplateFootball;
end;

procedure TJanuaFootballWebController.SetLoginPages;
begin
  inherited;
end;

procedure TJanuaFootballWebController.TerminateHome;
begin
  inherited;
end;

{ TJanuaWebSessionFootball }

{$IFDEF webbroker}

procedure TJanuaWebSessionFootball.ActionDoLoginFB(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aFrame: boolean = False);
begin
  InternalCreateController;
  try
    self.GetSessionRequest(Request);
    self.FJanuaFootballController.FacebookCode := Janua.Core.Functions.HttpGetParamValue(Request, 'code');
    self.WriteLog('TJanuaWebSessionFootball.ActionDoLoginFB code: ' + FJanuaFootballController.FacebookCode);
    // self.FJanuaFootballController.FacebookTokenUrl := Janua.Core.Functions.HttpGetParamValue(Request, 'fbtoken');
    if self.FJanuaFootballController.ActionDoLoginFacebook then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      self.FJanuaFootballController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionDoLogOut(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; InternalCall: boolean);
begin
  InternalCreateController;
  try
    // ma la procedura GetSessionRequest durante un DoLogOut ha un senso ...? o è una perdita di tempo?
    self.GetSessionRequest(Request);
    if self.FJanuaFootballController.ActionDoLogOut then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      self.FJanuaFootballController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionDoRegister(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aFrame: boolean = False);
var
  aUserProfile: TJanuaRecordUserProfile;
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    GetSessionRequest(Request);
    aUserProfile.LoadFromHttpParams(Request);
    // FJanuaFootballController.SessionKey := '';
    FJanuaFootballController.Userprofile := aUserProfile;
    if self.FJanuaFootballController.ActionDoRegister then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      self.FJanuaFootballController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionLiveScore(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
      self.ResponseController(Request, Response, Handled, FJanuaFootballController.ActionLiveScore, aUseFrame);
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
      self.ResponseController(Request, Response, Handled, FJanuaFootballController.ActionRanking, aUseFrame);
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionGoalRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
      self.ResponseController(Request, Response, Handled, FJanuaFootballController.ActionGoalRanking, aUseFrame);
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionPlayerCareer(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
      self.ResponseController(Request, Response, Handled, FJanuaFootballController.ActionPlayerCareer, aUseFrame);
  finally
    InternalDestroyController;
  end;

end;

procedure TJanuaWebSessionFootball.ActionMatchDay(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
      self.ResponseController(Request, Response, Handled, FJanuaFootballController.ActionMatchDay, aUseFrame);
  finally
    InternalDestroyController;
  end;

end;

procedure TJanuaWebSessionFootball.ActionHomeDefault(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
    begin
      if self.FJanuaFootballController.ActionHomePage(aUseFrame) then
      begin
        WebResponseController(Response);
        Handled := True;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........

      end;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.ActionChampionshipTeam(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
    begin
      if self.FJanuaFootballController.ActionChampionshipTeam(aUseFrame) then
      begin
        WebResponseController(Response);
        Handled := True;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      end;
    end;
  finally
    InternalDestroyController;
  end;

end;

procedure TJanuaWebSessionFootball.ActionMatchDetail(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False);
begin
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
    begin
      if self.FJanuaFootballController.ActionMatchDetails(aUseFrame) then
      begin
        WebResponseController(Response);
        Handled := True;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      end;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSessionFootball.GetSessionRequest(const aRequest: TWebRequest);
var
  sCookie, sFrom, sTo, sUrl, temp: string;
  // sTest: array [0 .. 20] of string;
  // lTest: TStrings;
  iTest: TJanuaWebPage;
  // s: ansistring;
begin
  {
    parametri base ceh compongono la ricerca dela pagina web sono
    season_id impostato anche come cookie   generalmente mantenuto a livello cookie all'ultima stagione
    league_id impostato anche come cookie   impostabile dall'utente tramite una GET
    match_day parametro opzionale generalmente gestito tramite una 'get'
  }
  inherited;
  self.StartSession;
  // Start Session ha creato il Controller del Football a questo punto verifico che siano impostati
  // parametri di sessione.........................................................................

  FJanuaFootballController.JanuaServerFootball.season_id := HttpGetParamInteger(aRequest, 'season_id');
  FJanuaFootballController.JanuaServerFootball.league_id := HttpGetParamInteger(aRequest, 'league_id');
  FJanuaFootballController.JanuaServerFootball.match_id := HttpGetParamLargeInt(aRequest, 'match_id');
  FJanuaFootballController.JanuaServerFootball.team_id := HttpGetParamLargeInt(aRequest, 'team_id');
  FJanuaFootballController.JanuaServerFootball.player_id := HttpGetParamInteger(aRequest, 'player_id');
  temp := HttpGetQueryValue(aRequest, 'match_day');
  FJanuaFootballController.JanuaServerFootball.match_day := StrToIntDef(temp, 0);
  // FJanuaFootballController.JanuaServerFootball.match_day := HttpGetParamLargeInt(aRequest, 'match_day');
  if HttpGetParamValue(aRequest, 'token') = 'facebook' then
  begin
    FJanuaFootballController.FacebookTokenUrl := aRequest.Query;
    FJanuaFootballController.FacebookToken := HttpGetParamValue(aRequest, 'code');
  end;
  // lTest := TStringList.Create;
  {
    sTest[1] := aRequest.PathInfo;
    sTest[2] := aRequest.RawPathInfo;
    sTest[3] := aRequest.Query;
    sTest[4] := aRequest.RawPathInfo;
    sTest[5] := aRequest.QueryFields.Text;
    sTest[6] := aRequest.ScriptName;
    sTest[7] := aRequest.Content;
    sTest[8] := aRequest.ContentFields.Text;
    sTest[9] := aRequest.Title;
    sTest[11] := aRequest.RemoteAddr;
    sTest[12] := aRequest.RemoteHost;
    sTest[13] := aRequest.ContentFields.Text;
    sTest[14] := aRequest.Referer;
    aRequest.ReadTotalContent;
    s := StringOf(aRequest.RawContent);
  }

  // sTest4 := aRequest.RawContent;
  {
    if (not(pos('access_token=', FJanuaFootballController.FacebookTokenUrl) > 0)) and
    (pos('access_token=', self.SessionUrl) > 0) then
    FJanuaFootballController.FacebookTokenUrl := self.SessionUrl;
  }
  if aRequest.CookieFields.Count > 0 then
  begin
    sTo := aRequest.CookieFields.Values['to_page'];

    if sTo = '' then
      self.FJanuaFootballController.ToPage := TJanuaWebPage.jwpNone
    else
    begin
      for iTest := Low(TJanuaWebPage) to High(TJanuaWebPage) do
        if sTo.ToLower = sJanuaWebPageUrl[iTest].ToLower then
          self.FJanuaFootballController.ToPage := iTest;
    end;

    sFrom := aRequest.CookieFields.Values['from_page'];

    if sFrom = '' then
      self.FJanuaFootballController.FromPage := TJanuaWebPage.jwpNone
    else
    begin
      for iTest := Low(TJanuaWebPage) to High(TJanuaWebPage) do
        if sFrom.ToLower = sJanuaWebPageUrl[iTest].ToLower then
          self.FJanuaFootballController.FromPage := iTest;
    end;

    // analisi delle partire inizio con il Match Day
    // Temporaneamente nel caso della Home Page non dovrei tenere Conto dei parametri Match Day non corretti
    // FJanuaFootballController.JanuaServerFootball.match_day := 0;
    // FJanuaFootballController.JanuaServerFootball.match_day := HttpGetParamInteger(aRequest, 'match_day');

    {

      if FJanuaFootballController.JanuaServerFootball.match_day = 0 then
      begin
      sCookie := aRequest.CookieFields.Values['match_day'];
      if (sCookie <> '') and IsNumeric(sCookie) then
      FJanuaFootballController.JanuaServerFootball.match_day := sCookie.ToInt64;
      end;

    }
    { TODO : Gestire a seconda delle pagine chiamate un differente insieme di parametri da controllare }
    // proseguo con il Match team
    FJanuaFootballController.JanuaServerFootball.match_team := 0;
    FJanuaFootballController.JanuaServerFootball.match_team := HttpGetParamInteger(aRequest, 'match_team');

    if FJanuaFootballController.JanuaServerFootball.match_team = 0 then
    begin
      sCookie := aRequest.CookieFields.Values['match_team'];
      if (sCookie <> '') and IsNumeric(sCookie) then
        FJanuaFootballController.JanuaServerFootball.match_team := sCookie.ToInt64;
    end;

    // Match ID
    FJanuaFootballController.JanuaServerFootball.match_id := 0;
    FJanuaFootballController.JanuaServerFootball.match_id := HttpGetParamInteger(aRequest, 'match_id');
    // non gestisco il match_id usando i cookies
    {
      if FJanuaFootballController.JanuaServerFootball.match_id = 0 then
      begin
      sCookie := aRequest.CookieFields.Values['match_id'];
      if (sCookie <> '') and IsNumeric(sCookie) then
      FJanuaFootballController.JanuaServerFootball.match_id := sCookie.ToInt64;
      end;
    }
  end;

end;

procedure TJanuaWebSessionFootball.JsonResponseController(Response: TWebResponse);
begin
  inherited;
end;

function TJanuaWebSessionFootball.Messages: string;
begin
  Result := inherited;
  if self.TestMode then
    with self.FJanuaFootballController.JanuaServerFootball do
    begin
      Result := Result + '<p>' + 'season_id = ' + FJanuaFootballController.JanuaServerFootball.season_id.ToString +
        ' - league_id = ' + FJanuaFootballController.JanuaServerFootball.league_id.ToString + '</p>';

      // Result := Result + '<p> Activity log: </p>' + '<p> ' + 'BookingID: ' + bookingID.ToString + ' SearchID: ' +
      // bookingID.ToString + ' Item_ID: ' + SearchItemID.ToString + '</p>';
    end;
end;

procedure TJanuaWebSessionFootball.SetCookies(aValid: integer; var aResponse: TWebResponse; isJson: boolean);
var
  sFrom, sTo, sCookie: string;
begin
  inherited;
  sCookie := self.FJanuaFootballController.JanuaServerFootball.season_id.ToString;
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'season_id', sCookie);
  sCookie := self.FJanuaFootballController.JanuaServerFootball.league_id.ToString;
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'league_id', sCookie);
  // imposto sia session_id che session_key
  sCookie := self.FJanuaFootballController.SessionKey;
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'session_key', sCookie);
  Janua.Core.Functions.AddCookie(aResponse, aValid, 'session_id', sCookie);
  // Match Day  // per il momento il 'cookie' match_day non lo attivo per evitare di 'bloccare'
  // cambi di campionato su un dato 'fisso'
  { sCookie := FJanuaFootballController.JanuaServerFootball.match_day.ToString;
    AddCookie(aResponse, aValid, 'match_day', sCookie);
  }
  // Match ID  - Medesimo ragionamento del Match_day questi dati verranno gestiti da URL precisi.
  {
    sCookie := FJanuaFootballController.JanuaServerFootball.match_id.ToString;
    AddCookie(aResponse, aValid, 'match_id', sCookie);
  }

  if not isJson then
  begin
    sFrom := sJanuaWebPageUrl[FJanuaFootballController.FromPage];
    AddCookie(aResponse, aValid, 'from_page', sFrom);
    sTo := sJanuaWebPageUrl[FJanuaFootballController.ToPage];
    AddCookie(aResponse, aValid, 'to_page', sTo);
  end;

end;

procedure TJanuaWebSessionFootball.SetJanuaFootballController(const Value: TJanuaFootballWebController);
begin
  FJanuaFootballController := Value;
  FJanuaController := Value;
end;

procedure TJanuaWebSessionFootball.WebResponse404(Response: TWebResponse);
begin
  inherited;
end;

procedure TJanuaWebSessionFootball.WebResponse501(Response: TWebResponse);
begin
  inherited;
end;

function TJanuaWebSessionFootball.CheckSession(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = False; aCheckPayment: boolean = False): boolean;
begin
  Result := inherited;
end;

procedure TJanuaWebSessionFootball.WritePage(var aResponse: TWebResponse);
begin
  inherited;
  // per ora uso le url con delle GET ?page=confirm
  with FJanuaFootballController.JanuaServerFootball do
  begin
    aResponse.Content := StringReplace(aResponse.Content, '$actionsearch$', self.FRoot + '/search' + '?sid=' +
      SessionKey, [rfReplaceAll, rfIgnoreCase]);

    aResponse.Content := StringReplace(aResponse.Content, '$confirm$', self.FRoot + '/?page=dologin' + '?sid=' +
      SessionKey, [rfReplaceAll, rfIgnoreCase]);

    aResponse.Content := StringReplace(aResponse.Content, '$actionbooking$', self.FRoot + '/booking' + '?sid=' +
      SessionKey, [rfReplaceAll, rfIgnoreCase]);

    self.SetCookies(7, aResponse);
    aResponse.Content := StringReplace(aResponse.Content, '$messages$', self.Messages, [rfReplaceAll]);
  end;
end;

{$ENDIF webbroker}
{ TJanuaCustomFootballClient }

function TJanuaCustomFootballClient.getChampionshipID: integer;
begin

end;

function TJanuaCustomFootballClient.getMatchID: int64;
begin

end;

function TJanuaCustomFootballClient.getPlayerID: integer;
begin
  Result := -1
end;

function TJanuaCustomFootballClient.getseasonID: integer;
begin
  Result := -1
end;

function TJanuaCustomFootballClient.getTeamID: integer;
begin
  Result := -1
end;

procedure TJanuaCustomFootballClient.SetCalendar(const Value: TJanuaFootballCalendar);
begin
  FCalendar := Value;
end;

procedure TJanuaCustomFootballClient.SetChampionshipID(const Value: integer);
begin

end;

procedure TJanuaCustomFootballClient.SetChampionships(const Value: TJanuaFootballChampionships);
begin
  FChampionships := Value;
end;

procedure TJanuaCustomFootballClient.SetChampSummary(const Value: TJanuaChampionshipSummary);
begin
  FChampSummary := Value;
end;

procedure TJanuaCustomFootballClient.SetGoalRanking(const Value: TJanuaGoalRankings);
begin
  FGoalRanking := Value;
end;

procedure TJanuaCustomFootballClient.SetMatchDayNum(const Value: smallint);
begin
  FMatchDayNum := Value;
end;

procedure TJanuaCustomFootballClient.SetMatchDetails(const Value: TJanuaMatchDetail);
begin
  FMatchDetails := Value;
end;

procedure TJanuaCustomFootballClient.SetMatches(const Value: TJanuaMatches);
begin
  FMatches := Value;
end;

procedure TJanuaCustomFootballClient.SetMatchID(const Value: int64);
begin

end;

procedure TJanuaCustomFootballClient.SetNextMatches(const Value: TJanuaMatches);
begin
  FNextMatches := Value;
end;

procedure TJanuaCustomFootballClient.SetNotifications(const Value: TJanuaFootballNotifications);
begin
  FNotifications := Value;
end;

procedure TJanuaCustomFootballClient.SetPlayerID(const Value: integer);
begin

end;

procedure TJanuaCustomFootballClient.SetRanking(const Value: TJanuaRankings);
begin
  FRanking := Value;
end;

procedure TJanuaCustomFootballClient.SetRankings(const Value: TJanuaRankings);
begin
  // FRankings := Value;
end;

procedure TJanuaCustomFootballClient.SetseasonID(const Value: integer);
begin

end;

procedure TJanuaCustomFootballClient.SetSeasons(const Value: TJanuaFootballSeasons);
begin
  FSeasons := Value;
end;

procedure TJanuaCustomFootballClient.SetTeamID(const Value: integer);
begin

end;

{ TJanuaCustomFootballController }

procedure TJanuaCustomFootballController.getChampSummary;
var
  aThread: TJanuaFootballgetChampSummaryThread;
begin
  aThread := TJanuaFootballgetChampSummaryThread.Create(True);
  aThread.JanuaFootballClient := self.FJanuaFootballClient;
  {
    sThread.SearchDataset := self.FSearchDataset;
    sThread.HealthMethodsClient := self.FHealthMethodsClient;
    sThread.ListView := self.FListView;
    sThread.SearchString := FSearchString;
    sThread.Session := self.FJanuaServerSession;
    sThread.FreeOnTerminate := True;
    sThread.Resume;
  }
end;

procedure TJanuaCustomFootballController.SetJanuaFootballClient(const Value: TJanuaCustomFootballClient);
begin
  FJanuaFootballClient := Value;
end;

{ TJanuaFootballgetChampSummaryThread }

procedure TJanuaFootballgetChampSummaryThread.Execute;
begin
  { TODO : Implement multi-threaded managemento to open Resources }
end;

procedure TJanuaFootballgetChampSummaryThread.SetJanuaFootballClient(const Value: TJanuaCustomFootballClient);
begin
  FJanuaFootballClient := Value;
end;

{ TFootballSettings }

constructor TFootballSettings.Create;
begin
  Settings.FLeague_ID := 0;
  Settings.FSeason_ID := 0;
  Settings.FMatch_Day := 0;
  Settings.FLastMatch_Day := 0;
  Settings.FMatch_ID := 0;
  Settings.FTeam_id := 0;
  Settings.FPlayer_id := 0;
  Settings.FMatch_team := 0;
end;

function TFootballSettings.getLastMatch_Day: smallint;
begin
  Result := Settings.FLastMatch_Day
end;

function TFootballSettings.getLeague_ID: smallint;
begin
  Result := Settings.FLeague_ID
end;

function TFootballSettings.getMatch_Day: smallint;
begin
  Result := Settings.FMatch_Day
end;

function TFootballSettings.getMatch_ID: int64;
begin
  Result := Settings.FMatch_ID
end;

function TFootballSettings.getMatch_team: integer;
begin
  Result := Settings.FMatch_team
end;

function TFootballSettings.getPlayer_id: integer;
begin
  Result := Settings.FPlayer_id
end;

function TFootballSettings.getSeason_ID: smallint;
begin
  Result := Settings.FSeason_ID
end;

function TFootballSettings.getTeam_id: integer;
begin
  Result := Settings.FTeam_id
end;

procedure TFootballSettings.SetLastMatchDay(const Value: smallint);
begin
  Settings.FLastMatch_Day := Value
end;

procedure TFootballSettings.setLeague_ID(const Value: smallint);
begin
  Settings.FLeague_ID := Value
end;

procedure TFootballSettings.setMatch_day(const Value: smallint);
begin
  Settings.FMatch_Day := Value
end;

procedure TFootballSettings.setMatch_ID(const Value: int64);
begin
  Settings.FMatch_ID := Value
end;

procedure TFootballSettings.Setmatch_team(const Value: integer);
begin
  Settings.FMatch_team := Value
end;

procedure TFootballSettings.setPlayer_ID(const Value: integer);
begin
  Settings.FPlayer_id := Value
end;

procedure TFootballSettings.setSeason_ID(const Value: smallint);
begin
  Settings.FSeason_ID := Value
end;

procedure TFootballSettings.SetTeam_ID(const Value: integer);
begin
  Settings.FTeam_id := Value
end;

initialization

PublicFootballConf := TFootballSettings.Create;

finalization

PublicFootballConf := nil;

end.
