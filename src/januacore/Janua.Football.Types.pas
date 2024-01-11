unit Janua.football.Types;

interface

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
  System.Json,
  // JanuaProject
  Janua.Core.Types, Janua.Core.Metronics, FireDAC.Comp.Client;

type
  TJanuaFootballCustom = (jfcSportmedia, jfcDilettantissimo);

const
  JanuaFootballCustom: array [TJanuaFootballCustom] of string = ('almanacco.settimanasport.com',
    'dilettantissimo.ergomercator.com');

type
  TJanuaFooballForm = (jffClubs, jffChampionship, jffMatch);

type
  TJanuaFootballRole = (jfrNone, jfrGoalKeeper, jfrDefender, jfrMidfielder, jfrStriker);

const
  JanuaFootballRole: array [TJanuaFootballRole] of string = ('n.d.', 'portiere', 'difensore', 'centrocampista',
    'attaccante');

  JanuaFootballRoleID: array [TJanuaFootballRole] of Byte = (0, 1, 2, 3, 4);

type
  TChampionship = record
    aSeason: Word;
    aChampionship: Word;
  end;

  TChampionshipDay = record
    aSeason: Word;
    aChampionship: Word;
    aMatchDay: Word;
  end;

type
  TJanuaFootballTeam = Record
    ID: integer;
    Name: string;
    SeasonID: integer;
    LeagueID: integer;
  public
    function AsMetroLink(AsButton: boolean = True): TJanuaMetroLink;
    function AsHtmlLink(AsButton: boolean = True): string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    procedure SetFromDataset(dsTeam: TDataset);
  end;

type
  TJanuaFootballRoleRecord = record
  strict private
    FRole: TJanuaFootballRole;
    procedure SetRole(const Value: TJanuaFootballRole);
    procedure setID(const Value: Byte);
    procedure setName(const Value: string);
  private
    function getID: Byte;
    function getName: string;
  public
    property ID: Byte read getID write setID;
    property Role: TJanuaFootballRole read FRole write SetRole;
    property Name: string read getName write setName;
  end;

  TJanuaFootballSeason = record
    ID: integer;
    index: integer;
    description: string;
    code: string;
    IsSelected: boolean;
  public
    function AsHtml: string;
    function AsRow: TJanuaMetroListRow;
    procedure SetDefault;
    procedure SetFromDataset(dsSeasons: TDataset);
    function AsJsonObject: TJsonObject;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    function Transform(aTemplate: string): string;
    procedure SaveToDataset(dsSeasons: TDataset);
  end;

  TJanuaFootballSeasons = record
    items: array of TJanuaFootballSeason;
  private
    FItemIndex: integer;
    function getSelectedSeason: TJanuaFootballSeason;
    procedure SetItemIndex(const Value: integer);
    procedure SetSelectedSeason(const Value: TJanuaFootballSeason);
  public
    function SearchByID(aID: integer): boolean;
    function SearchByCode(aCode: string): boolean;
    function SearchByName(aName: string): boolean;
    function SearchByPos(aPos: integer): boolean;
    procedure SetSelected(aID: integer);
    function Count: integer;
    procedure Clear;
    function AsHtml(aOpened: boolean = False): string;
    function AsList(aOpened: boolean = False): TJanuaMetroList;
    procedure SetDefault;
    procedure SetFromDataset(dsSeasons: TDataset);
    function GetAsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    function Transform(aTemplate: string): string;
    procedure Add(aSeason: TJanuaFootballSeason); overload;
    procedure Add(aObject: TJsonObject); overload;
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure SaveToDataset(aDataset: TDataset);
  public
    property SelectedSeason: TJanuaFootballSeason read getSelectedSeason write SetSelectedSeason;
    property ItemIndex: integer read FItemIndex write SetItemIndex;
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetFromJson;
  end;

type
  TJanuaFootballPlayerCareer = record
    season_id: integer;
    season_des: string;
    league_id: integer;
    league_name: string;
    team_id: integer;
    team_name: string;
    Team: TJanuaFootballTeam;
    player_id: integer;
    index: integer;
    goal: integer;
    owngoal: integer;
    Injuries: integer;
    lostgoal: integer;
    SentOff: integer;
    Role: integer;
    minutes: integer;
    matches: integer;
    playsince: integer;
    playuntil: integer;
  public
    // Class Static Functions ......................................................
    class function AsMetroTableHeader(aColumns: integer = 7): TJanuaMetroTableRow; static;
  public
    procedure Clear;
    Constructor Create(SeasonID, LeagueID, teamID, playerID: integer; aRole: integer; aSince: integer = 1;
      aUntil: integer = 90);
    procedure SetFromDataset(dsCareer: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJson: string;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    // function AsMetroPortlet(L: integer = 0): string;
    function AsMetroTableRow: TJanuaMetroTableRow;
    // function AsHtmlTable: string;
  end;

  TJanuaFootballPlayer = record
    ID: int64;
    index: Int16;
    FullName: string;
    FirstName: string;
    LastName: string;
    BirthDate: TDate;
    BirthYear: integer;
    IsSetCareer: boolean;
    ItemIndex: integer;
    RoleRecord: TJanuaFootballRoleRecord;
    TeamName: string;
    RowName: string;
    SelectedCareer: TJanuaFootballPlayerCareer;
    Career: array of TJanuaFootballPlayerCareer;
  public
    // Class Static Functions ......................................................
    class function AsMetroTableHeader(aColumns: integer = 7): TJanuaMetroTableRow; static;
  public
    Constructor Create(SeasonID, LeagueID, teamID, playerID: integer; aRole: integer; aSince: integer = 1;
      aUntil: integer = 90);
    function Count: integer;
    procedure SetFromDataset(dsPlayer: TDataset; IsMatch: boolean = True; IncludeCareer: boolean = True); overload;
    procedure SetFromDataset(dsPlayer, dsCareer: TDataset); overload;
    procedure UpdateFromDataset(dsPlayer: TDataset; IsMatch: boolean = True; IncludeCareer: boolean = True);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string);
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    procedure Clear;
    function AsHtmlTable(aColumns: integer = 7): string;
    function AsMetroPortlet(L: integer = 0; aColumns: integer = 7): string;
    function AsMetroTableRow(aColumns: integer = 7; aIsFrame: boolean = False): TJanuaMetroTableRow;
    procedure AddCareer(aDataset: TDataset);
    function GetFullNameAsLink: TJanuaMetroLink;
    function Transform(aTemplate: string): string;
  private
    procedure setGoal(const Value: integer);
    procedure setLostGoal(const Value: integer);
    procedure setMinutes(const Value: integer);
    procedure setOwnGoal(const Value: integer);
    procedure setPlaySince(const Value: integer);
    procedure setPlayUntil(const Value: integer);
    procedure SetRole(const Value: integer);
    function GetFullNameAsHtml: string;
  public
    function GetFullName: string;
    property goal: integer read SelectedCareer.goal write setGoal;
    property owngoal: integer read SelectedCareer.owngoal write setOwnGoal;
    property lostgoal: integer read SelectedCareer.lostgoal write setLostGoal;
    property Role: integer read SelectedCareer.Role write SetRole;
    property minutes: integer read SelectedCareer.minutes write setMinutes;
    property playsince: integer read SelectedCareer.playsince write setPlaySince;
    property playuntil: integer read SelectedCareer.playuntil write setPlayUntil;
    property FullNameAsLink: TJanuaMetroLink read GetFullNameAsLink;
    property FullNameAsHtml: string read GetFullNameAsHtml;
  end;

type
  TJanuaRankingColors = record
    promochampioncss: string;
    promochampion: smallint;
    playoffcss: string;
    playoff: smallint;
    championleaguecss: string;
    championleague: smallint;
    playoutcss: string;
    playout: smallint;
    relegationcss: string;
    relegation: smallint;
    standardcss: string;
    teams: smallint;
  public
    procedure SetDefault;
    function css(aPos: smallint): string;
    procedure SetFromDataset(dsChampionship: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure SetFromJson(aJson: string); overload;
  end;

  TJanuaChampionship = record
    index: integer;
    season_id: integer;
    league_id: integer;
    season_des: string;
    league_name: string;
    season_code: string;
    league_position: integer;
    league_code: string;
    rankingcolors: TJanuaRankingColors;
    Promoted: smallint;
    playoff: smallint;
    relegation: smallint;
    Champions: smallint;
    playout: smallint;
    teams: smallint;
    LastMatchDay: smallint;
    Selected: boolean;
    // Tell us if this championship is now Selected on Screen (we use the select (id) procedure.
  public
    procedure SetDefault;
    procedure SetFromDataset(dsChampionship: TDataset);
    procedure SaveToDataset(dsChampionship: TDataset);
    function GetAsJsonObject: TJsonObject;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    function Transform(aTemplate: string): string;
    function AsRow: TJanuaMetroListRow;
    function AsDaysList: TJanuaMetroList;
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetFromJson;
  end;

  TJanuaRanking = record
    ranking_id: integer;
    season_id: smallint;
    league_id: smallint;
    team_id: smallint;
    pos: smallint;
    team_name: string;
    points: integer;
    goal_done: integer;
    goal_lost: smallint;
    goal_difference: smallint;
    played_matches: smallint;
    won_matches: smallint;
    lost_matches: smallint;
    tied_matches: smallint;
    home_matches: smallint;
    home_won: smallint;
    home_lost: smallint;
    home_tied: smallint;
    outside_played: smallint;
    outside_won: smallint;
    outside_lost: smallint;
    outside_tied: smallint;
    scoring_average: smallint;
  public
    function Transform(aTemplate: string; const aChampionship: TJanuaChampionship): string;
    procedure SetFromDataset(dsRanking: TDataset);
    procedure SaveToDataset(dsRanking: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetDefault;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    // As Row indica una riga di una List ..............................................................................
    function AsListRow: TJanuaMetroListRow;
    // Table Header
    function AsFullTableRow: TJanuaMetroTableRow;

    // As Table Row indica una riga di una Metro Table Row..............................................................
    function AsTableRow(aIsFrame: boolean = False): TJanuaMetroTableRow;
    function AsShortTableRow(aIsFrame: boolean = False): TJanuaMetroTableRow;
    // As Table Row indica una riga di una Metro Table Row in questo caso Classifica Completa ..........................
    function AsTableBigRow(isTeam: boolean = False): TJanuaMetroTableRow;
    function AsbBigHtmlTable: string;
  public
    class function AsTableBigHeaderTop(isTeam: boolean = False): TJanuaMetroTableRow; static;
    class function AsTableBigHeader(isTeam: boolean = False): TJanuaMetroTableRow; static;
    class function AsShortTableHeader: TJanuaMetroTableRow; static;
    class function AsTableHeader: TJanuaMetroTableRow; static;
  end;

type
  TJanuaMatchesType = (jmtMatchesDay, jmtMatchesNextDay, jmtMatchesTeam);

type
  TJanuaMatchState = (msNotPlayed, msPlayed, msLive);

type
  TJanuaMatchStateDef = record

  end;

type
  TJanuaMatch = record
    match_id: int64;
    season_id: smallint;
    league_id: smallint;
    rownum: integer;
    isNextMatch: boolean;
    match_date: TDate;
    match_datetime: TDateTime;
    home_team: string;
    home_team_id: integer;
    visitors_team: string;
    visitors_team_id: integer;
    goal_home: smallint;
    goal_visitors: smallint;
    confirmed: boolean;
    notes: string;
    postponed: boolean;
    suspended: boolean;
    home_notes: string;
    visitors_notes: string;
    DayNumber: integer;
    level: smallint;
    MatchType: TJanuaMatchesType;
  private
    IsSet: boolean;
  public
    constructor Create(aMatchType: TJanuaMatchesType; aChampionship: TJanuaChampionship);
  public
    function DateTimeString: string;
    function Match_Name(const aShowGoals: boolean = False): string;
    function ShortResult: string;
    function Transform(aTemplate: string): string;
    procedure SetFromDataset(dsMatch: TDataset);
    function AsJsonObject: TJsonObject;
    procedure SetDefault;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure SetFromJson(aJson: string); overload;
    procedure SaveToDataset(dsMatch: TDataset);
    procedure CreateDataset(aDataset: TFdMemTable);
    // ******************************** Metronic Html Procedures *******************************************************
    // As Row indica una riga di una List ..............................................................................
    function AsListRow: TJanuaMetroListRow;
    // Table Header
    function AsTableHeader(L: smallint = 0): TJanuaMetroTableRow;
    // As Table Row indica una riga di una Metro Table Row..............................................................
    function AsTableRow(L: smallint = 0; aIsFrame: boolean = False): TJanuaMetroTableRow;
    // As Table Row indica una riga di una Metro Table Row in questo caso Classifica Completa ..........................
    function AsTableBigHeader: TJanuaMetroTableRow;
    function AsTableBigRow: TJanuaMetroTableRow;
    function AsLiveScore(bTitle: boolean = True): string;
  end;

type
  TJanuaMatches = record
    isNextMatchDay: boolean;
    Championship: TJanuaChampionship;
    match_day_number: smallint;
    matches: array of TJanuaMatch;
    ItemIndex: integer;
    Custom: TJanuaFootballCustom;
    MatchType: TJanuaMatchesType;
    MetroIcon: TMetroIcon;
  public
    constructor Create(aIcon: TMetroIcon; aMatchType: TJanuaMatchesType);
  public
    function Transform(aTemplate, aTemplateRow: string): string;
    function AsLiveScore: string;
    function AsMetroLiveScore: string;
    function AsHtmlTable(I: integer = 0; aIsFrame: boolean = False): string;
    function AsMetroHtmlTable(L: integer = 0; aIsFrame: boolean = False): string;
    function AsMetroPortlet(L: integer = 0; bPortlet: boolean = True; aIsFrame: boolean = False): string;
    procedure SetFromDataset(dsMatches, dsMatchDay, dsChampionship: TDataset); overload;
    procedure SetFromDataset(dsMatches: TDataset); overload;
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure Add(aObject: TJsonObject); overload;
    procedure Add(aItem: TJanuaMatch); overload;
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure PopulateDataset(aDataset: TFdMemTable);
    function Count: integer;
    procedure Clear;
  end;

  TJanuaChampionshipTeam = record
    team_id: integer;
    ID: integer;
    Name: string;
    Players: array of TJanuaFootballPlayer;
    ItemIndex: integer;
    notes: string;
    goal: integer;
    points: integer;
    Season: TJanuaFootballSeasons;
    Championship: TJanuaChampionship;
    Ranking: TJanuaRanking;
    matches: TJanuaMatches;
  public
    procedure Clear;
    constructor Create(aSeason: TJanuaFootballSeasons; aChampionship: TJanuaChampionship);
    function Count: integer;
    procedure AddPlayer(aPlayer: TJanuaFootballPlayer); overload;
    procedure AddPlayer(aJsonObject: TJsonObject); overload;
    procedure AddPlayer(dsPlayer: TDataset); overload;
    procedure SetDefault;
    function Transform(aTemplate, aTemplateRow: string): string;
    function AsHtmlTable(aIsFrame: boolean = False): string;
    function AsMetroPortlet(L: integer; aPortletContainer: boolean = True; aIsFrame: boolean = False): string;
    procedure SetFromDataset(dsTeam, dsTeamPlayers, dsMatches: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    function AsMetroTable(aIsFrame: boolean = False): TJanuaMetroTable;
    function FindByID(aID: int64): boolean; // trova un giocatore ..........................
    procedure Add(aPlayer: TJanuaFootballPlayer); overload;
    procedure Add(aJson: TJsonObject); overload;
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure SaveToDataset(aDataset: TDataset);
    procedure CreateTeamDataset(aDataset: TFdMemTable);
    procedure PopulateTeamDataset(aDataset: TDataset);
    function SelectedPlayer: TJanuaFootballPlayer;
    function AsTableBig(isTeam: boolean = False): TJanuaMetroTable;
  end;

  TJanuaFootballChampionships = record
    items: array of TJanuaChampionship;
    ItemIndex: integer;
  public
    procedure SetSelected(aID: integer);
    function Count: integer;
    procedure Clear;
    function AsHtml(aOpened: boolean = False): string;
    function AsHtmlList(aOpened: boolean = False): TJanuaMetroList;
    procedure SetDefault;
    procedure SetFromDataset(dsChampionships: TDataset);
    function AsJsonObject: TJsonObject;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    function Transform(aTemplate: string): string;
    procedure Add(aChampionship: TJanuaChampionship); overload;
    procedure Add(aJsonObject: TJsonObject); overload;
    function AsJsonPretty: string;
    procedure CreateDataset(aDataset: TFdMemTable);

  end;

type
  TJanuaRankings = record
    rankings: array of TJanuaRanking;
    Championship: TJanuaChampionship;
    match_day: integer;
    ItemIndex: integer;
  private
    FIsTeam: boolean;
    procedure SetIsTeam(const Value: boolean);
  public
    function Title: string;
    function Count: integer;
    function Transform(aTemplate, aRowTemplate: string): string;
    procedure SetFromDataset(dsRanking, dsChampionship: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetDefault;
    function AsHtmlTable(aIsFrame: boolean = False): string;
    function AsBigTable(aIndent: integer): string;
    function AsShortTable: string;
    function AsMetroPortlet(L: integer = 0; bPortlet: boolean = True; aIsFrame: boolean = False): string;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure Add(aJsonObject: TJsonObject); overload;
    procedure Add(aRanking: TJanuaRanking); overload;
    function SelectedItem: TJanuaRanking;
    procedure CreateDataset(aDataset: TFdMemTable);
    property isTeam: boolean read FIsTeam write SetIsTeam;
  end;

type
  TJanuaFootballCalendar = record
    Championship: TJanuaChampionship;
    items: array of TJanuaMatches;
    ItemIndex: integer;
  public
    function Transform(aTemplate, aTemplateRow: string): string;
    function AsHtmlTable: string;
    function AsMetroPortlets: string;
    procedure SetFromDataset(dsMatches, dsMatchDay, dsChampionship: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure Add(aObject: TJsonObject); overload;
    procedure Add(aItem: TJanuaMatches); overload;
    procedure CreateDataset(aMaster, aDetail: TFdMemTable);
    procedure PopulateDataset(aMaster, aDetail: TFdMemTable);
    function Count: integer;
    procedure Clear;
  end;

type
  TJanuaGoalRanking = record
    rownum: int64;
    Player: TJanuaFootballPlayer;
  public
    function Transform(aTemplate: string): string;
    procedure SetFromDataset(dsGoalRanking: TDataset);
    function AsJsonObject: TJsonObject;
    procedure SetFromJson(aObject: TJsonObject); overload;
    procedure SetFromJson(aJson: string); overload;
    // ******************************** Metronic Html Procedures *******************************************************
    // As Row indica una riga di una List ..............................................................................
    function AsListRow: TJanuaMetroListRow;
    // Table Header
    function AsTableHeader: TJanuaMetroTableRow;
    function AsMetro5TableHeader: TJanuaMetroTableRow;
    function AsShortTableHeader: TJanuaMetroTableRow;
    // As Table Row indica una riga di una Metro Table Row..............................................................
    function AsTableRow: TJanuaMetroTableRow;
    function AsShortTableRow: TJanuaMetroTableRow;
    // As Table Row indica una riga di una Metro Table Row in questo caso Classifica Completa ..........................
    function AsTableBigHeader: TJanuaMetroTableRow;
    function AsTableBigRow: TJanuaMetroTableRow;
    function AsMetro5TableRow: TJanuaMetroTableRow;
  end;

type
  TJanuaGoalRankings = record
    Championship: TJanuaChampionship;
    goalrankings: array of TJanuaGoalRanking;
    ItemIndex: integer;
  public
    constructor Create(aChampionship: TJanuaChampionship);
    function Transform(aTemplate, aTemplateRows: string): string;
    procedure SetFromDataset(dsGoalRanking: TDataset); overload;
    procedure SetFromDataset(dsChampionship, dsGoalRanking: TDataset); overload;
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure Clear;
    function Count: integer;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure Add(aItem: TJanuaGoalRanking); overload;
    procedure Add(aObject: TJsonObject); overload;
    // Metro Html Framework ...........................................................................................
    function AsMetroPortlet(L: integer = 0; aIsFrame: boolean = False): string;
    function AsHtmlTable(L: integer = 0; aIsFrame: boolean = False): string;
    function AsShortTable(L: integer = 0; aIsFrame: boolean = False): string;
    function AsHtmlMetro5Table(L: integer; aIsFrame: boolean; aLimit: integer = 0): string;
  end;

type
  TJanuaChampionshipSummary = record
    { This record is the Detailed Summary of the Championship given a precise MatchDay it contains allthe elements
      Matches of the Day, Ranking, Goal Ranking and Next Matches to play
    }
    Championship: TJanuaChampionship;
    LastDayNum: smallint;
    // ultima giornata giocata (vale 1 se non si ? ancora giocato o giornata selezionata).
    matches: TJanuaMatches;
    GoalRanking: TJanuaGoalRankings; // Classifica Marcatori
    Ranking: TJanuaRankings; // Classifica squadre
    NextMatches: TJanuaMatches; // prossime partite da disputare (se non siamo gi? all'ultima).
  public
    procedure SetFromDataset(dsMatches, dsMatchDay, dsChampionship, dsRankings, dsGoalRankings: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure SetFromJson(aJson: string); overload;
    procedure SetFromJson(aJson: TJsonObject); overload;
    procedure Clear;
    function AsHtmlTable(L: integer = 0): string;
  end;

  {
    vote real,
    played boolean,
    team_id smallint NOT NULL,
    pos smallint,
    subst_id integer,
  }

  TJanuaMatchPlayer = record
    Player: TJanuaFootballPlayer;
    index: integer;
    team_id: integer;
    match_id: int64;
    pos: smallint; // posizione del giocatore in formazione
    vote: Double; // Media dei voti dati al giocatore............
    minutes: smallint; // minuti giocati dal giocatore nel match.
    goal: smallint; // gol fatti
    owngoal: smallint; // autogol fatti
    lostgoal: smallint; // gol subiti
    playsince: smallint; // presente dal minuto ... default 0
    playuntil: smallint; // fino al minuto (90 di solito e meno se sostituito).
    sent_off: smallint; // Minuto in cui il giocatore ? stato espulso
    Injuries: smallint; // Minuto in cui il giocatore si ? infortunato e, presumibilmente, sostituito
    substitute: string; // nome del giocatore subentrato
    substitute_id: integer; // id unico del giocatore sosituto utile per eventuali ricerche .......
    RowName: string; // Row Name (riassunot dle nome del giocatore);
  public
    // Class Static Functions ......................................................
    class function AsMetroTableHeader(aColumns: integer = 7): TJanuaMetroTableRow; static;
  public
    procedure Clear;
    procedure SetDefault;
    function Transform(aTemplate, aTemplateRow: string): string;
    function AsHtmlTable: string;
    function AsMetroPortlet(L: integer = 0): string;
    function AsMetroTableRow: TJanuaMetroTableRow;
    // Dataset Procedures  .....................................................................................
    procedure SetFromDataset(dsMatchPlayers: TDataset);
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure SaveToDataset(aDataset: TDataset);
    // Json Marshall-UnMarshall Procedures .....................................................................
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
  end;

type
  TJanuaMatchTeamType = (jmtHome, jmtVisitors);

  TJanuaMatchTeam = record
    match_id: integer;
    IsType: TJanuaMatchTeamType;
    ID: integer;
    Name: string;
    Players: array of TJanuaMatchPlayer;
    ItemIndex: integer;
    goal: smallint;
    points: smallint;
    notes: string;
  private
    procedure SetSubstitute;
  public
    procedure Clear;
    constructor Create(aType: TJanuaMatchTeamType);
    function Count: integer;
    procedure AddPlayer(aPlayer: TJanuaMatchPlayer); overload;
    procedure AddPlayer(aJsonObject: TJsonObject); overload;
    procedure AddPlayer(dsPlayer: TDataset); overload;
    procedure SetDefault;
    function Transform(aTemplate, aTemplateRow: string): string;
    function AsHtmlTable: string;
    function AsMetroPortle(L: integer = 0): string;
    procedure SetFromDataset(dsMatch, dsMatchTeamPlayers: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    function AsMetroTable: TJanuaMetroTable;
    function FindByID(aID: int64): boolean;
    procedure Add(aPlayer: TJanuaMatchPlayer); overload;
    procedure Add(aJson: TJsonObject); overload;
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure SaveToDataset(aDataset: TDataset);
    procedure CreateTeamDataset(aDataset: TFdMemTable);
    procedure PopulateTeamDataset(aDataset: TDataset);
    function SelectedPlayer: TJanuaMatchPlayer;
    function AsLiveScore(bLongTeam: boolean = False): string;
  end;

type
  TJanuaMatchEventType = (jmtNone, jmtGoal, jmtPenalty, jmtAccident, jmtSave, jmtSubstituion, jmtOwnGoal, jmtExpulsion);

const
  JanuaMatchEventIDs: array [TJanuaMatchEventType] of smallint = (0, 1, 2, 3, 4, 5, 6, 7);

const
  JanuaMatchEventDefinitions: array [TJanuaMatchEventType] of string = ('', 'Gol', 'Rigore', 'Infortunio', 'Parata',
    'SostituZione', 'Autogol', 'Espulsione');

function GetEventTypeByID(aID: smallint): TJanuaMatchEventType;
function GetEventTypeByDef(aDef: string): TJanuaMatchEventType;

type
  TJanuaMatchEventDef = record
    EventType: TJanuaMatchEventType;
  private
    function getID: integer;
    function getDef: string;
    procedure setDef(const Value: string);
    procedure setID(const Value: integer);
  public
    constructor Create(aID: integer);
    property ID: integer read getID write setID;
    property Definition: string read getDef write setDef;
  end;

type
  TJanuaMatchEvent = record
    match_id: int64;
    team_id: integer;
    player_id: integer;
    Event: TJanuaMatchEventDef;
    minute: smallint;
    Value: smallint;
    row_id: int64;
    notes: string;
    favor_team_id: integer;
    teamplayer: string;
    family_name: string;
  public
    procedure Clear;
    procedure LookupPlayer(aHomeTeam, aVisitorsTeam: TJanuaMatchTeam);
    procedure LookupTeam(aHomeTeam, aVisitorTeam: TJanuaMatchTeam);
    function Transform(aTemplate, aTemplateRow: string): string;
    procedure SetFromDataset(dsMatchEvents: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    function AsMetroTableRow: TJanuaMetroTableRow;
    procedure CreateDataset(aDataset: TFdMemTable);
    procedure SaveToDataset(dsMatchEvents: TDataset);
    function ShortDescription: string;
  strict private
    FTeam: TJanuaMatchTeam;
    FPlayer: TJanuaMatchPlayer;
    procedure SetTeam(const Value: TJanuaMatchTeam);
    procedure SetPlayer(const Value: TJanuaMatchPlayer);
  public
    property Team: TJanuaMatchTeam read FTeam write SetTeam;
    property Player: TJanuaMatchPlayer read FPlayer write SetPlayer;
  end;

  TJanuaMatchEvents = record
    items: array of TJanuaMatchEvent;
    ItemIndex: integer;
  private
    function VisitorsGoals: string;
  public
    function goals(aTeamID: integer): string;
    function OtherEvents: string;
    function Count: integer;
    procedure Add(aEvent: TJanuaMatchEvent); overload;
    procedure Add(aObject: TJsonObject); overload;
    procedure Add(aDatasetRecord: TDataset); overload;
    procedure Clear;
    function Transform(aTemplate, aTemplateRow: string): string;
    function AsHtmlTable: string;
    procedure SetFromDataset(dsMatchEvents: TDataset);
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    procedure PopulateDataset(aDataset: TFdMemTable);
  end;

type
  TJanuaMatchDetail = record
    ID: int64; // unique id of the Match used to check data retrieved.
    DayNumber: smallint; // The day number of the match played
    Championship: TJanuaChampionship;
    match: TJanuaMatch;
    hometeam: TJanuaMatchTeam;
    visitorsteam: TJanuaMatchTeam;
    events: TJanuaMatchEvents;
  public
    procedure Clear;
    function AsLiveScore(bShort: boolean = False; bLongTeam: boolean = False): string;
    function Transform(aTemplate, aTemplateRow: string): string;
    procedure SetFromDataset(dsChampionship, dsMatchDeail, dsHomeTeam, dsVisitorsTeam, dsEvents: TDataset);
    procedure SetFromJson(aJsonObject: TJsonObject); overload;
    procedure SetFromJson(aJson: string); overload;
    function AsJsonObject: TJsonObject;
    function AsJsonPretty: string;
    procedure LoadFromJson(aJson: string); overload;
    procedure LoadFromJson(aJson: TJsonObject); overload;
    procedure PopulateDatasets(dsMatchDetail, dsHomeTeam, dsVisitorsTeam, dsEvents: TFdMemTable);
  end;

type
  TJanuaMatchDetails = record
    items: array of TJanuaMatchDetail;
    ItemIndex: integer;
  public
    function AsLiveScore(bLongTeam: boolean = False): string;
    procedure Clear;
    function Count: integer;
    procedure SetFromDataset(dsChampionship, dsMatchDeail, dsHomeTeam, dsVisitorsTeam, dsEvents: TDataset);
    procedure Add(aItem: TJanuaMatchDetail);
  end;

type
  TJanuaFootballNotificationType = (jhnReceived, jhnChoice, jhnCancel, jhnMeeting);

const
  JanuaHealthNotificationNumber: array [0 .. 3] of TJanuaFootballNotificationType = (jhnReceived, jhnChoice, jhnCancel,
    jhnMeeting);

  JanuaHealthNotificationType: array [jhnReceived .. jhnMeeting] of integer = (0, 1, 2, 3);

type
  TJanuaFootballNotification = record
    ID: int64;
    type_id: smallint;
    Title: string;
    notification: string;
    bookingID: int64;
    UserID: integer;
    date: TDateTime;
    read: boolean;
    level: smallint;
    solved: boolean;
  private
    FNotificationType: TJanuaFootballNotificationType;
    function getId64: string;
    procedure setId64(const Value: string);
    function GetNotificationID: integer;
    procedure SetNotificationType(const Value: TJanuaFootballNotificationType);
    function GetAsJsonObject: TJsonObject;
  public
    procedure LoadFromJsonObject(const Value: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
    procedure SaveToDataset(aDataset: TDataset);
  public
    property id64: string read getId64 write setId64;
    property NotificationType: TJanuaFootballNotificationType read FNotificationType write SetNotificationType;
    property TypeID: integer read GetNotificationID;
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
  end;

type
  TJanuaFootballNotifications = record
    items: array of TJanuaFootballNotification;
  private
    FSelectedItem: TJanuaFootballNotification;
    FTemplate: string;
    function GetCount: integer;
    function GetAsJsonObject: TJsonObject;
    function AddItem: integer;
    function GetUnread: integer;
    procedure SetSelectedItem(const Value: TJanuaFootballNotification);
  public
    procedure Add(aObject: TJsonObject); overload;
    procedure Add(aDataset: TDataset); overload;
    procedure LoadFromJsonObject(const Value: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
    procedure SaveToDataset(aDataset: TDataset);
    procedure Clear;
    function FindItemByID(aID: int64): boolean;
    function AsHtml(aTemplate: string): string; overload;
    function AsHtml: string; overload;
  public
    property Unread: integer read GetUnread;
    property Count: integer read GetCount;
    property AsJsonObject: TJsonObject read GetAsJsonObject write LoadFromJsonObject;
    property SelectedItem: TJanuaFootballNotification read FSelectedItem write SetSelectedItem;
  end;

implementation

uses System.Math, System.StrUtils, Spring, Janua.Core.Functions, Janua.Core.Json;

function GetEventTypeByID(aID: smallint): TJanuaMatchEventType;
var
  I: TJanuaMatchEventType;
begin
  for I := Low(TJanuaMatchEventType) to High(TJanuaMatchEventType) do
    if JanuaMatchEventIDs[I] = aID then
      Exit(I);
  Exit(jmtNone); // Not found - return whatever default value here
end;

function GetEventTypeByDef(aDef: string): TJanuaMatchEventType;
var
  I: TJanuaMatchEventType;
begin
  for I := Low(TJanuaMatchEventType) to High(TJanuaMatchEventType) do
    if JanuaMatchEventDefinitions[I].ToLower = aDef.ToLower then
      Exit(I);
  Exit(jmtNone); // Not found - return whatever default value here
end;

/// ********************************************************************************************************************
{ TJanuaFootballPlayer }

procedure TJanuaFootballPlayer.AddCareer(aDataset: TDataset);
begin
  SetLength(self.Career, self.Count + 1);
  self.ItemIndex := Pred(self.Count);
  self.Career[ItemIndex].SetFromDataset(aDataset);
  self.Career[ItemIndex].index := ItemIndex;
  self.SelectedCareer := self.Career[ItemIndex];
end;

function TJanuaFootballPlayer.AsHtmlTable(aColumns: integer): string;
var
  aTable: TJanuaMetroTable;
  aHeader, aRow: TJanuaMetroTableRow;
  aCareer: TJanuaFootballPlayerCareer;
begin
  aTable.Create(True);
  aTable.Striped := True;
  aTable.Header := TJanuaFootballPlayerCareer.AsMetroTableHeader(aColumns);
  for aCareer in self.Career do
    aTable.Add(aCareer.AsMetroTableRow);
  Result := aTable.AsHtml;
end;

function TJanuaFootballPlayer.AsJsonObject: TJsonObject;
var
  ArrCareer: TJsonArray;
  aCareer: TJanuaFootballPlayerCareer;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'firstname', self.FirstName);
  Janua.Core.Json.JsonPair(Result, 'lastname', self.LastName);
  Janua.Core.Json.JsonPair(Result, 'birthdate', self.BirthDate);
  Janua.Core.Json.JsonPair(Result, 'BirthYear', self.BirthYear);
  Janua.Core.Json.JsonPair(Result, 'IsSetCareer', self.IsSetCareer);
  Janua.Core.Json.JsonPair(Result, 'actualcareer', self.SelectedCareer.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);
  if self.Count > 0 then
  begin
    ArrCareer := TJsonArray.Create;
    for aCareer in self.Career do
      ArrCareer.AddElement(aCareer.AsJsonObject);
    Result.AddPair('matches', ArrCareer);
    Janua.Core.Json.JsonPair(Result, 'career', ArrCareer);
  end;
end;

function TJanuaFootballPlayer.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject)
end;

function TJanuaFootballPlayer.AsMetroPortlet(L, aColumns: integer): string;
begin
  Result := MetroPortletHeader(TMetroIcon.jmiUser, FullName + DateToStr(BirthDate), MetroHtmlTable(self.AsHtmlTable, 1),
    TMetronicColor.jmcGreen, L, True, True, False)
end;

class function TJanuaFootballPlayer.AsMetroTableHeader(aColumns: integer): TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('Giocatore');
  Result.AddValue('Data di Nascita');
  Result.AddValue('Ruolo');
  Result.AddValue('gol');
  Result.AddValue('Min.');
end;

function TJanuaFootballPlayer.AsMetroTableRow(aColumns: integer = 7; aIsFrame: boolean = False): TJanuaMetroTableRow;
begin
  { FullName: string;
    FirstName: string;
    LastName: string;
    BirthDate: TDate;
    BirthYear: integer;
    IsSetCareer: boolean;
    ItemIndex: integer;
    RowName: string;
    SelectedCareer: TJanuaFootballPlayerCareer;
  }

  Result.Create(False);
  if aIsFrame then
    Result.AddValue(IfThen(FullName <> '', FullName, self.FirstName + ' ' + self.LastName))
  else
    Result.AddValue(self.FullNameAsHtml);

  Result.AddValue(IfThen(BirthDate > 0.0, DateToStr(BirthDate), IfThen(BirthYear > 0, BirthYear.ToString, 'n.d.')));
  Result.AddValue(self.RoleRecord.getName);
  Result.AddValue(self.goal.ToString);
  Result.AddValue(self.SelectedCareer.minutes);
end;

procedure TJanuaFootballPlayer.Clear;
begin
  self := Default (TJanuaFootballPlayer);
  self.ID := 0;
  SetLength(self.Career, 0);
  self.SelectedCareer.Clear;
end;

function TJanuaFootballPlayer.Count: integer;
begin
  Result := Length(self.Career);
end;

constructor TJanuaFootballPlayer.Create(SeasonID, LeagueID, teamID, playerID, aRole, aSince, aUntil: integer);
begin
  self := Default (TJanuaFootballPlayer);
  self.SelectedCareer.Create(SeasonID, LeagueID, teamID, playerID, aRole, aSince, aUntil);
  self.ID := playerID;
end;

function TJanuaFootballPlayer.GetFullName: string;
begin
  Result := self.FirstName + ' ' + self.LastName + ' ' + FormatDateTime('dd/mm/yy', self.BirthDate);
end;

function TJanuaFootballPlayer.GetFullNameAsHtml: string;
begin
  Result := self.GetFullNameAsLink.AsHtml;
end;

function TJanuaFootballPlayer.GetFullNameAsLink: TJanuaMetroLink;
begin
  Result := Default (TJanuaMetroLink);
  Result.Clear;
  // './matchdetail?match_id='
  Result.BaseUrl := '?page=player&player_id=' + self.ID.ToString;
  Result.Color.MetroColor := TMetronicColor.jmcBlueMadison;
  Result.Font.Color.MetroColor := TMetronicColor.jmcWhite;
  Result.Icon.IconType := TMetroIcon.jmiUser;
  Result.IsButton := True;
  Result.ButtonStyle := TBootstrapButtonStyle.jbbNone;
  Result.Text := self.FullName;
end;

procedure TJanuaFootballPlayer.UpdateFromDataset(dsPlayer: TDataset; IsMatch: boolean = True;
  IncludeCareer: boolean = True);
begin
  self.ID := GetFieldAsInteger(dsPlayer, 'player_id');
  if self.ID = 0 then
    self.ID := GetFieldAsInteger(dsPlayer, 'anagraph_id');
  self.SelectedCareer.playsince := Janua.Core.Functions.GetFieldAsInteger(dsPlayer, 'since');
  self.SelectedCareer.playuntil := Janua.Core.Functions.GetFieldAsInteger(dsPlayer, 'until');
  self.FullName := Janua.Core.Functions.GetFieldAsString(dsPlayer, 'full_name');
  self.FirstName := Janua.Core.Functions.GetFieldAsString(dsPlayer, 'first_name');
  self.LastName := Janua.Core.Functions.GetFieldAsString(dsPlayer, 'family_name');
  if self.FullName = '' then
    self.FullName := self.LastName + ' ' + self.FirstName;
  self.BirthDate := Janua.Core.Functions.GetFieldAsDate(dsPlayer, 'birth_date');
  self.BirthYear := Janua.Core.Functions.GetFieldAsInteger(dsPlayer, 'birth_year');
  self.RowName := IfThen(IncludeCareer, Janua.Core.Functions.GetFieldAsString(dsPlayer, 'row_name'), '');
  self.ItemIndex := 0;
  self.IsSetCareer := False;
  // se non ? la scheda di un match carico i dati della carriera del giocatore per la 'rosa'
  // questi dati servono per le rose in campionato ed eventualmente per l'almanacco della stagione.
  if not IsMatch then
  begin
    RoleRecord.ID := Janua.Core.Functions.GetFieldAsInteger(dsPlayer, 'role');
    if IncludeCareer then
      self.SelectedCareer.SetFromDataset(dsPlayer);
  end
  else
  begin
    RoleRecord.ID := Janua.Core.Functions.GetFieldAsInteger(dsPlayer, 'role_id');
    self.SelectedCareer.SetFromDataset(dsPlayer);
  end;
end;

procedure TJanuaFootballPlayer.LoadFromJson(aJson: string);
begin
  self.LoadFromJsonObject(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaFootballPlayer.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonValue(aJsonObject, 'id', self.ID);
  Janua.Core.Json.JsonValue(aJsonObject, 'firstname', self.FirstName);
  Janua.Core.Json.JsonValue(aJsonObject, 'lastname', self.LastName);
  Janua.Core.Json.JsonValue(aJsonObject, 'birthdate', self.BirthDate);
  Janua.Core.Json.JsonValue(aJsonObject, 'BirthYear', self.BirthYear);
  Janua.Core.Json.JsonValue(aJsonObject, 'IsSetCareer', self.IsSetCareer);
end;

procedure TJanuaFootballPlayer.SetFromDataset(dsPlayer: TDataset; IsMatch: boolean = True;
  IncludeCareer: boolean = True);
begin
  {
    id: int64;
    FullName: string;
    FirstName: string;
    LastName: string;
    BirthDate: TDate;
    BirthYear: integer;
    IsSetCareer: boolean;
    ItemIndex: integer;
    RowName: string;
    MatchCareer: TJanuaFootballPlayerCareer;
  }
  self.Clear;
  UpdateFromDataset(dsPlayer, IsMatch, IncludeCareer);
end;

procedure TJanuaFootballPlayer.SetFromDataset(dsPlayer, dsCareer: TDataset);
begin
  self.SetFromDataset(dsPlayer, False, False);
  if dsCareer.RecordCount > 0 then
  begin
    dsCareer.First;
    self.SelectedCareer.SetFromDataset(dsCareer);
    while not dsCareer.Eof do
    begin
      self.AddCareer(dsCareer);
      dsCareer.Next;
    end;
  end;
end;

procedure TJanuaFootballPlayer.setGoal(const Value: integer);
begin
  self.SelectedCareer.goal := Value;
end;

procedure TJanuaFootballPlayer.setLostGoal(const Value: integer);
begin
  self.SelectedCareer.lostgoal := Value;
end;

procedure TJanuaFootballPlayer.setMinutes(const Value: integer);
begin
  self.SelectedCareer.minutes := Value;
end;

procedure TJanuaFootballPlayer.setOwnGoal(const Value: integer);
begin
  self.SelectedCareer.owngoal := Value;
end;

procedure TJanuaFootballPlayer.setPlaySince(const Value: integer);
begin
  self.SelectedCareer.playsince := Value;
end;

procedure TJanuaFootballPlayer.setPlayUntil(const Value: integer);
begin
  self.SelectedCareer.playuntil := Value
end;

procedure TJanuaFootballPlayer.SetRole(const Value: integer);
begin
  self.SelectedCareer.Role := Value;
end;

function TJanuaFootballPlayer.Transform(aTemplate: string): string;
begin
  HtmlReplace(Result, 'player_id', self.ID);
  HtmlReplace(Result, 'team_name', self.SelectedCareer.team_name);
  HtmlReplace(Result, 'first_name', self.FirstName);
  HtmlReplace(Result, 'family_name', self.LastName);
  HtmlReplace(Result, 'goals', self.SelectedCareer.goal);
end;

// *********************************************************************************************************************

{ TJanuaRanking }

function TJanuaRanking.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject);
end;

function TJanuaRanking.AsListRow: TJanuaMetroListRow;
begin

end;

class function TJanuaRanking.AsShortTableHeader: TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('#');
  Result.AddValue('Formazione');
  Result.AddValue('Punti');
end;

function TJanuaRanking.AsShortTableRow(aIsFrame: boolean = False): TJanuaMetroTableRow;
begin
  Result.Create(False);
  Result.AddValue(pos);
  Result.AddValue(team_name);
  Result.AddValue(points);
end;

class function TJanuaRanking.AsTableBigHeader(isTeam: boolean = False): TJanuaMetroTableRow;
begin
  {
    ranking_id: integer;
    season_id: smallint;
    league_id: smallint;
    team_id: string;
    pos: smallint;
    team_name: string;
    points: integer;
    goal_done: integer;
    goal_lost: smallint;
    goal_difference: smallint;
    played_matches: smallint;
    won_matches: smallint;
    lost_matches: smallint;
    tied_matches: smallint;
    home_matches: smallint;
    home_won: smallint;
    home_lost: smallint;
    home_tied: smallint;
    outside_played: smallint;
    outside_won: smallint;
    outside_lost: smallint;
    outside_tied: smallint;
    scoring_average: smallint;
  }
  Result.Create(True);
  Result.AddValue('pos'); // 1
  if not isTeam then
    Result.AddValue('Squadra'); // 2
  // Teams --------->
  Result.AddValue('Pt.'); // 1
  Result.AddValue('G'); // 2
  Result.AddValue('V'); // 3
  Result.AddValue('N'); // 4
  Result.AddValue('P'); // 5
  Result.AddValue('GF'); // 6
  Result.AddValue('GS'); // 7
  // Home --------->
  // Result.AddValue('Pt.'); //1
  Result.AddValue('G'); // 2
  Result.AddValue('V'); // 3
  Result.AddValue('N'); // 4
  Result.AddValue('P'); // 5
  // Result.AddValue('GF');  //6
  // Result.AddValue('GS');  //7
  // Away --------->
  // Result.AddValue('Pt.'); //1
  Result.AddValue('G'); // 2
  Result.AddValue('V'); // 3
  Result.AddValue('N'); // 4
  Result.AddValue('P'); // 5
  // Result.AddValue('GF');  //6
  // Result.AddValue('GS');  //7
end;

class function TJanuaRanking.AsTableBigHeaderTop(isTeam: boolean): TJanuaMetroTableRow;
begin
  Result.Create(True);
  {
    <tr>
    <th rowspan="2" colspan="2" class="team header">SQUADRA</th>
    <th class="border_left header" colspan="9">TOTALE</th>
    <th class="border_left header" colspan="9">CASA</th>
    <th class="border_left header" colspan="9" style="display:table-cell">TRASFERTA</th>
    </tr>
  }
  Result.AddValue('Squadra', IfThen(isTeam, 0, 2), 0, 'sortTable(0)');
  Result.AddValue('Totale', 7, 0, '');
  Result.AddValue('Casa', 4, 0, '');
  Result.AddValue('Fuori', 4, 0, '');
end;

function TJanuaRanking.AsTableBigRow(isTeam: boolean = False): TJanuaMetroTableRow;
var
  img: string;
begin
  { pos: smallint;
    team_name: string;
    points: integer;
    goal_done: integer;
    goal_lost: smallint;
    goal_difference: smallint;
    played_matches: smallint;
    won_matches: smallint;
    lost_matches: smallint;
    tied_matches: smallint;
    home_matches: smallint;
    home_won: smallint;
    home_lost: smallint;
    home_tied: smallint;
    outside_played: smallint;
    outside_won: smallint;
    outside_lost: smallint;
    outside_tied: smallint;
    scoring_average: smallint; }

  img := 'http://cdn.ergomercator.com/dilettantissimo/teams/32/';
  img := '<img src="' + img + self.team_id.ToString + '.jpg' + '" alt="">';

  Result.Create(False);
  Result.AddValue(pos); // 0:1
  if not isTeam then
    Result.AddValue(img + team_name); // 0:2
  Result.AddValue(points); // 1
  Result.AddValue(played_matches); // 2
  Result.AddValue(won_matches); // 3
  Result.AddValue(tied_matches); // 4
  Result.AddValue(lost_matches); // 5
  Result.AddValue(goal_done); // 6
  Result.AddValue(goal_lost); // 7
  // Result.AddValue(points);  // 1
  Result.AddValue(home_matches); // 2
  Result.AddValue(home_won); // 3
  Result.AddValue(home_lost); // 4
  Result.AddValue(home_tied); // 5
  // Result.AddValue(goal_done);      // 6
  // Result.AddValue(goal_lost);      // 7

  // Result.AddValue(points);  // 1
  Result.AddValue(outside_played); // 2
  Result.AddValue(outside_won); // 3
  Result.AddValue(outside_tied); // 4
  Result.AddValue(outside_lost); // 5
  // Result.AddValue(goal_done); // 6
  // Result.AddValue(goal_lost); // 7
end;

class function TJanuaRanking.AsTableHeader: TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('pos');
  Result.AddValue('Squadra');
  Result.AddValue('Pt.');
  Result.AddValue('G');
  Result.AddValue('V');
  Result.AddValue('N');
  Result.AddValue('P');
  Result.AddValue('GF');
  Result.AddValue('GS');
end;

function TJanuaRanking.AsTableRow(aIsFrame: boolean = False): TJanuaMetroTableRow;
var
  img: string;
begin
  { pos: smallint;
    team_name: string;
    points: integer;
    goal_done: integer;
    goal_lost: smallint;
    goal_difference: smallint;
    played_matches: smallint;
    won_matches: smallint;
    lost_matches: smallint;
    tied_matches: smallint;
    home_matches: smallint;
    home_won: smallint;
    home_lost: smallint;
    home_tied: smallint;
    outside_played: smallint;
    outside_won: smallint;
    outside_lost: smallint;
    outside_tied: smallint;
    scoring_average: smallint; }

  img := 'http://cdn.ergomercator.com/dilettantissimo/teams/32/';
  img := '<img src="' + img + self.team_id.ToString + '.jpg' + '" alt="">';
  Result.Create(False);
  Result.AddValue(pos);
  // su frame non riporto (per ora) un link al sito web di riferimento per la pagina del Team
  if aIsFrame then
    Result.AddValue(img + ' ' + team_name)
  else
    Result.AddLink(img + ' ' + team_name, '?page=champteam&team_id=' + team_id.ToString + '&season_id=' +
      season_id.ToString + '&league_id=' + league_id.ToString);
  Result.AddValue(points);
  Result.AddValue(played_matches);
  Result.AddValue(won_matches);
  Result.AddValue(tied_matches);
  Result.AddValue(lost_matches);
  Result.AddValue(goal_done);
  Result.AddValue(goal_lost);
end;

procedure TJanuaRanking.SaveToDataset(dsRanking: TDataset);
begin
  dsRanking.Edit;
  Janua.Core.Functions.SetFieldValue(team_name, dsRanking, 'team_name', False);
  Janua.Core.Functions.SetFieldValue(team_id, dsRanking, 'team_id', False);
  Janua.Core.Functions.SetFieldValue(points, dsRanking, 'points', False);
  Janua.Core.Functions.SetFieldValue(goal_done, dsRanking, 'goal_done', False);
  Janua.Core.Functions.SetFieldValue(goal_lost, dsRanking, 'goal_lost', False);
  Janua.Core.Functions.SetFieldValue(goal_difference, dsRanking, 'goal_difference', False);
  Janua.Core.Functions.SetFieldValue(ranking_id, dsRanking, 'ranking_id', False);
  Janua.Core.Functions.SetFieldValue(season_id, dsRanking, 'season_id', False);
  Janua.Core.Functions.SetFieldValue(league_id, dsRanking, 'league_id', False);
  Janua.Core.Functions.SetFieldValue(played_matches, dsRanking, 'played_matches', False);
  Janua.Core.Functions.SetFieldValue(won_matches, dsRanking, 'won_matches', False);
  Janua.Core.Functions.SetFieldValue(lost_matches, dsRanking, 'lost_matches', False);
  Janua.Core.Functions.SetFieldValue(tied_matches, dsRanking, 'tied_matches', False);
  Janua.Core.Functions.SetFieldValue(home_matches, dsRanking, 'home_matches', False);
  Janua.Core.Functions.SetFieldValue(home_won, dsRanking, 'home_won', False);
  Janua.Core.Functions.SetFieldValue(home_lost, dsRanking, 'home_lost', False);
  Janua.Core.Functions.SetFieldValue(pos, dsRanking, 'pos', False);
  dsRanking.Post;
end;

procedure TJanuaRanking.SetDefault;
begin
  // champid := 0;
  team_name := '';
  team_id := 0;
  points := 0;
  goal_done := 0;
  goal_lost := 0;
  goal_difference := 0;
  ranking_id := 0;
  season_id := 0;
  league_id := 0;
  played_matches := 0;
  won_matches := 0;
  lost_matches := 0;
  tied_matches := 0;
  home_matches := 0;
  home_won := 0;
  home_lost := 0;
  home_tied := 0;
  outside_played := 0;
  outside_won := 0;
  outside_lost := 0;
  outside_tied := 0;
  scoring_average := 0;
  pos := 0;
end;

procedure TJanuaRanking.SetFromDataset(dsRanking: TDataset);
begin
  with dsRanking do
  begin
    league_id := FieldByName('league_id').AsInteger;
    team_name := FieldByName('team_name').AsWideString;
    team_id := FieldByName('team_id').AsInteger;
    points := FieldByName('points').AsInteger;
    goal_done := FieldByName('goal_done').AsInteger;
    goal_lost := FieldByName('goal_lost').AsInteger;
    goal_difference := FieldByName('goal_diff').AsInteger;
    ranking_id := FieldByName('ranking_id').AsInteger;
    season_id := FieldByName('season_id').AsInteger;
    league_id := FieldByName('league_id').AsInteger;
    played_matches := FieldByName('played_matches').AsInteger;
    won_matches := FieldByName('won_matches').AsInteger;
    lost_matches := FieldByName('lost_matches').AsInteger;
    tied_matches := FieldByName('tied_matches').AsInteger;
    home_matches := FieldByName('home_matches').AsInteger;
    home_won := FieldByName('home_won').AsInteger;
    home_lost := FieldByName('home_lost').AsInteger;
    home_tied := FieldByName('home_tied').AsInteger;
    outside_played := FieldByName('outside_played').AsInteger;
    outside_won := FieldByName('outside_won').AsInteger;
    outside_lost := FieldByName('outside_lost').AsInteger;
    outside_tied := FieldByName('outside_tied').AsInteger;
    pos := FieldByName('pos').AsInteger;
    Janua.Core.Functions.GetFieldValue(scoring_average, dsRanking, 'scoring_average');
  end;
end;

procedure TJanuaRanking.SetFromJson(aJson: TJsonObject);
begin
  self.SetDefault;
  Janua.Core.Json.JsonValue(aJson, 'ranking_id', ranking_id);
  Janua.Core.Json.JsonValue(aJson, 'season_id', season_id);
  Janua.Core.Json.JsonValue(aJson, 'league_id', league_id);
  Janua.Core.Json.JsonValue(aJson, 'team_id', team_id);
  Janua.Core.Json.JsonValue(aJson, 'pos', pos);
  Janua.Core.Json.JsonValue(aJson, 'team_name', team_name);
  Janua.Core.Json.JsonValue(aJson, 'points', points);
  Janua.Core.Json.JsonValue(aJson, 'goal_done', goal_done);
  Janua.Core.Json.JsonValue(aJson, 'goal_lost', goal_lost);
  Janua.Core.Json.JsonValue(aJson, 'goal_difference', goal_difference);
  Janua.Core.Json.JsonValue(aJson, 'played_matches', played_matches);
  Janua.Core.Json.JsonValue(aJson, 'won_matches', won_matches);
  Janua.Core.Json.JsonValue(aJson, 'lost_matches', lost_matches);
  Janua.Core.Json.JsonValue(aJson, 'tied_matches', tied_matches);
  Janua.Core.Json.JsonValue(aJson, 'home_matches', home_matches);
  Janua.Core.Json.JsonValue(aJson, 'home_won', home_won);
  Janua.Core.Json.JsonValue(aJson, 'home_lost', home_lost);
  Janua.Core.Json.JsonValue(aJson, 'home_tied', home_tied);
  Janua.Core.Json.JsonValue(aJson, 'outside_played', outside_played);
  Janua.Core.Json.JsonValue(aJson, 'outside_won', outside_won);
  Janua.Core.Json.JsonValue(aJson, 'outside_lost', outside_lost);
  Janua.Core.Json.JsonValue(aJson, 'outside_tied', outside_tied);
  Janua.Core.Json.JsonValue(aJson, 'scoring_average', scoring_average);
end;

procedure TJanuaRanking.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaRanking.AsbBigHtmlTable: string;
begin
  Result := '';
end;

function TJanuaRanking.AsFullTableRow: TJanuaMetroTableRow;
begin

end;

function TJanuaRanking.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  // Result.AddPair(TJSONPair.Create('Username', TJSONString.Create(self.Username)));
  // Result.AddPair(TJSONPair.Create('id', TJSONNumber.Create(self.id)));
  with Result do
  begin
    AddPair(TJSONPair.Create('league_id', TJSONNumber.Create(self.league_id)));
    AddPair(TJSONPair.Create('team_name', TJSONString.Create(self.team_name)));
    AddPair(TJSONPair.Create('team_id', TJSONNumber.Create(self.team_id)));
    AddPair(TJSONPair.Create('points', TJSONNumber.Create(self.points)));
    AddPair(TJSONPair.Create('goal_done', TJSONNumber.Create(self.goal_done)));
    AddPair(TJSONPair.Create('goal_lost', TJSONNumber.Create(self.goal_lost)));
    AddPair(TJSONPair.Create('goal_difference', TJSONNumber.Create(self.goal_difference)));
    AddPair(TJSONPair.Create('ranking_id', TJSONNumber.Create(self.ranking_id)));
    AddPair(TJSONPair.Create('season_id', TJSONNumber.Create(self.season_id)));
    AddPair(TJSONPair.Create('league_id', TJSONNumber.Create(self.league_id)));
    AddPair(TJSONPair.Create('played_matches', TJSONNumber.Create(self.played_matches)));
    AddPair(TJSONPair.Create('won_matches', TJSONNumber.Create(self.won_matches)));
    AddPair(TJSONPair.Create('lost_matches', TJSONNumber.Create(self.lost_matches)));
    AddPair(TJSONPair.Create('tied_matches', TJSONNumber.Create(self.tied_matches)));
    AddPair(TJSONPair.Create('home_matches', TJSONNumber.Create(self.home_matches)));
    AddPair(TJSONPair.Create('home_won', TJSONNumber.Create(self.home_won)));
    AddPair(TJSONPair.Create('home_lost', TJSONNumber.Create(self.home_lost)));
    AddPair(TJSONPair.Create('home_tied', TJSONNumber.Create(self.home_tied)));
    AddPair(TJSONPair.Create('outside_played', TJSONNumber.Create(self.outside_played)));
    AddPair(TJSONPair.Create('outside_won', TJSONNumber.Create(self.outside_won)));
    AddPair(TJSONPair.Create('outside_lost', TJSONNumber.Create(self.outside_lost)));
    AddPair(TJSONPair.Create('outside_tied', TJSONNumber.Create(self.outside_tied)));
    AddPair(TJSONPair.Create('scoring_average', TJSONNumber.Create(self.scoring_average)));
    AddPair(TJSONPair.Create('pos', TJSONNumber.Create(self.pos)));
  end;

end;

function TJanuaRanking.Transform(aTemplate: string; const aChampionship: TJanuaChampionship): string;
begin
  Result := aTemplate;
  Result := StringReplace(Result, '$row_class$', aChampionship.rankingcolors.css(pos), [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$league_id$', self.league_id.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$team_name$', self.team_name, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$team_id$', self.league_id.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$points$', self.points.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$goal_done$', self.goal_done.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$goal_lost$', self.goal_lost.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$goal_difference$', self.goal_difference.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$season_id$', self.season_id.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$league_id$', self.league_id.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$played_matches$', self.played_matches.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$won_matches$', self.won_matches.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$lost_matches$', self.lost_matches.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$tied_matches$', self.tied_matches.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$home_matches$', self.home_matches.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$home_won$', self.home_won.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$home_lost$', self.home_lost.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$home_tied$', self.home_tied.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$outside_played$', self.outside_played.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$outside_won$', self.outside_won.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$outside_lost$', self.outside_lost.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$outside_tied$', self.outside_tied.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$outside_played$', self.outside_played.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$scoring_average$', self.scoring_average.ToString, [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '$pos$', self.pos.ToString, [rfReplaceAll, rfIgnoreCase]);
end;

{ TJanuaMatches }

procedure TJanuaMatches.Add(aObject: TJsonObject);
var
  aItem: TJanuaMatch;
begin
  if Assigned(aObject) then
    aItem.SetFromJson(aObject);
  self.Add(aItem);
end;

procedure TJanuaMatches.Add(aItem: TJanuaMatch);
begin
  self.ItemIndex := self.Count;
  SetLength(self.matches, Succ(self.Count));
  self.matches[self.ItemIndex] := aItem;
end;

function TJanuaMatches.AsHtmlTable(I: integer = 0; aIsFrame: boolean = False): string;
var
  aMatch: TJanuaMatch;
  aList: TStringList;
begin
  aList := TStringList.Create;
  try
    aList.Add(Indent(2, I) + '<table class="table table-bordered table-hover">');
    aList.Add(Indent(2, I) + '  <thead>');
    aList.Add(Indent(2, I) + '    <tr>');
    aList.Add(Indent(2, I) + '      <th> # </th>');
    aList.Add(Indent(2, I) + '      <th> Casa </th>');
    aList.Add(Indent(2, I) + '      <th> Ospiti </th>');
    aList.Add(Indent(2, I) + '      <th> Ris. </th>');
    aList.Add(Indent(2, I) + '    </tr>');
    aList.Add(Indent(2, I) + '</thead>');
    aList.Add(Indent(2, I) + '<tbody>');
    for aMatch in self.matches do
    begin
      aList.Add(Indent(2, I) + '  <tr>');
      aList.Add(Indent(2, I) + '    <td>');
      aList.Add(Indent(2, I) + '     ' + aMatch.home_team);
      aList.Add(Indent(2, I) + '    </td>');
      aList.Add(Indent(2, I) + '    <td>');
      aList.Add(Indent(2, I) + '     ' + aMatch.visitors_team);
      aList.Add(Indent(2, I) + '    </td>');
      aList.Add(Indent(2, I) + '    <td>');
      aList.Add(Indent(2, I) + '     ' + aMatch.goal_home.ToString + ' - ' + aMatch.goal_visitors.ToString);
      aList.Add(Indent(2, I) + '    </td>');
      aList.Add(Indent(2, I) + '  </tr>');
    end;
    aList.Add(Indent(2, I) + '</tbody>');
    aList.Add(Indent(2, I) + '</table>');
    Result := aList.Text;

  finally
    begin
      aList.DisposeOf;
      aList := nil;
    end;
  end;
end;

function TJanuaMatches.AsJsonObject: TJsonObject;
var
  aMatches: TJsonArray;
  aMatch: TJanuaMatch;
begin
  Result := TJsonObject.Create;
  Result.AddPair('match_day_number', TJSONNumber.Create(self.match_day_number));
  Result.AddPair('count', TJSONNumber.Create(self.Count));
  Result.AddPair('championship', self.Championship.AsJsonObject);
  aMatches := TJsonArray.Create;
  for aMatch in self.matches do
    aMatches.AddElement(aMatch.AsJsonObject);
  Result.AddPair('matches', aMatches);

end;

function TJanuaMatches.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaMatches.AsLiveScore: string;
var
  aMatch: TJanuaMatch;
  aList: TStrings;
begin
  aList := TStringList.Create;
  try
    for aMatch in self.matches do
    begin
      aList.Add(aMatch.AsLiveScore)
    end;
  finally
    aList.Free;
  end;
end;

function TJanuaMatches.AsMetroHtmlTable(L: integer = 0; aIsFrame: boolean = False): string;
var
  aTable: TJanuaMetroTable;
  aHeader, aRow: TJanuaMetroTableRow;
  aCell: TJanuaMetroTableCell;
  aMatch: TJanuaMatch;
begin
  aTable.Create(True);
  aTable.Striped := aIsFrame;
  aTable.Bordered := aIsFrame;
  aTable.Header := aMatch.AsTableHeader(L);
  for aMatch in self.matches do
    aTable.Add(aMatch.AsTableRow(L, aIsFrame));
  Result := aTable.AsHtml;
end;

function TJanuaMatches.AsMetroLiveScore: string;
var
  aMatch: TJanuaMatch;
begin

end;

function TJanuaMatches.AsMetroPortlet(L: integer = 0; bPortlet: boolean = True; aIsFrame: boolean = False): string;
var
  aColor: TMetronicColor;
  aIcon: TMetroIcon;
  sGiornata: string;
begin
  if aIsFrame then
    aColor := TMetronicColor.jmcBlueMadison
  else
    aColor := TMetronicColor.jmcRedThunderbird;

  if aIsFrame then
    aIcon := TMetroIcon.jmiNone
  else
    aIcon := self.MetroIcon;

  if aIsFrame then
    sGiornata := '^ giornata'
  else
    sGiornata := 'a giornata';

  Result := '';
  if self.Count > 0 then
    case self.MatchType of
      jmtMatchesDay:
        Result := MetroPortletHeader(self.MetroIcon, Championship.league_name + ' ' + match_day_number.ToString +
          'a giornata', MetroHtmlTable(AsMetroHtmlTable(L, aIsFrame), L + 1), aColor, L, False, True, bPortlet);
      jmtMatchesNextDay:
        Result := MetroPortletHeader(self.MetroIcon, Championship.league_name + ' ' + match_day_number.ToString +
          'a giornata', MetroHtmlTable(AsMetroHtmlTable(L, aIsFrame), L + 1), aColor, L, False, True, bPortlet);
      jmtMatchesTeam:
        Result := MetroPortletHeader(self.MetroIcon, Championship.league_name + ' ' + Championship.season_des +
          'calendario partite', MetroHtmlTable(AsMetroHtmlTable(L, aIsFrame), L + 1), aColor, L, False, True, bPortlet);
    end;

end;

procedure TJanuaMatches.Clear;
begin
  self := Default (TJanuaMatches);
  self.Championship.SetDefault;
  SetLength(self.matches, 0);
  self.match_day_number := 0;
  self.MetroIcon := TMetroIcon.jmlSocialDribble;
  Custom := TJanuaFootballCustom.jfcSportmedia;
  MatchType := TJanuaMatchesType.jmtMatchesDay;
end;

function TJanuaMatches.Count: integer;
begin
  Result := Length(self.matches);
end;

constructor TJanuaMatches.Create(aIcon: TMetroIcon; aMatchType: TJanuaMatchesType);
begin
  self.MetroIcon := aIcon;
  self.MatchType := aMatchType;
end;

procedure TJanuaMatches.CreateDataset(aDataset: TFdMemTable);
var
  aMatch: TJanuaMatch;
begin
  aMatch.CreateDataset(aDataset);
end;

procedure TJanuaMatches.PopulateDataset(aDataset: TFdMemTable);
var
  I: integer;
begin
  if Assigned(aDataset) and not(aDataset.Active) and not(aDataset.FieldCount > 0) then
  begin
    self.CreateDataset(aDataset);
  end;
  aDataset.Close;
  aDataset.Open;
  for I := Low(self.matches) to High(self.matches) do
  begin
    aDataset.Append;
    self.matches[I].SaveToDataset(aDataset);
  end
end;

procedure TJanuaMatches.SetFromDataset(dsMatches, dsMatchDay, dsChampionship: TDataset);
begin
  self.Clear;
  self.match_day_number := dsMatchDay.FieldByName('match_day_number').AsInteger;
  self.Championship.SetFromDataset(dsChampionship);
  SetFromDataset(dsMatches);
end;

procedure TJanuaMatches.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatches.SetFromDataset(dsMatches: TDataset);
var
  I: integer;
begin
  if Assigned(dsMatches) and (dsMatches.Active) and (dsMatches.RecordCount > 0) then
  begin
    dsMatches.First;
    I := 0;
    SetLength(self.matches, dsMatches.RecordCount);
    while not dsMatches.Eof do
    begin
      self.matches[I] := TJanuaMatch.Create(self.MatchType, self.Championship);
      self.matches[I].SetFromDataset(dsMatches);
      self.matches[I].isNextMatch := self.isNextMatchDay;
      dsMatches.Next;
      Inc(I);
    end;
  end;
end;

procedure TJanuaMatches.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }

  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('championship', aJson));
  Janua.Core.Json.JsonValue(aJson, 'match_day_number', self.match_day_number);
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('matches');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

function TJanuaMatches.Transform(aTemplate, aTemplateRow: string): string;
var
  aMatch: TJanuaMatch;
  aMatches: TStrings;
begin
  Result := self.Championship.Transform(aTemplate);
  HtmlReplace(aTemplate, 'title', 'Risultati ' + self.Championship.league_name + ' - ' + self.Championship.season_des +
    ' ' + self.match_day_number.ToString + 'a Giornata');
  HtmlReplace(Result, 'match_day_number', self.match_day_number);

  aMatches := TStringList.Create;
  try
    for aMatch in self.matches do
      aMatches.Add(aMatch.Transform(aTemplateRow));

    HtmlReplace(Result, 'football_matches_rows', aMatches.Text);
  finally
    aMatches.Free;
  end;

end;

{ TJanuaRankings }

procedure TJanuaRankings.Add(aJsonObject: TJsonObject);
var
  aRanking: TJanuaRanking;
begin
  aRanking.SetFromJson(aJsonObject);
  self.Add(aRanking);
end;

procedure TJanuaRankings.Add(aRanking: TJanuaRanking);
begin
  self.ItemIndex := self.Count;
  SetLength(self.rankings, Succ(self.ItemIndex));
  self.rankings[self.ItemIndex] := aRanking;
end;

function TJanuaRankings.AsBigTable(aIndent: integer): string;
var
  aTable: TJanuaMetroTable;
  aHeader, aRow: TJanuaMetroTableRow;
  aCell: TJanuaMetroTableCell;
  aRanking: TJanuaRanking;
begin
  aTable.Create(True);
  aTable.level := aIndent;
  aTable.Striped := True;
  aTable.Bordered := True;
  aTable.Header := (TJanuaRanking.AsTableBigHeaderTop(False));
  aTable.AddHeader(TJanuaRanking.AsTableBigHeader(False));
  for aRanking in self.rankings do
  begin
    aRow := aRanking.AsTableBigRow(self.isTeam);

    if aRanking.pos <= self.Championship.Promoted then
      aRow.SimpleCss := Championship.rankingcolors.promochampioncss
    else if (aRanking.pos > Championship.Promoted) and
      (aRanking.pos <= self.Championship.Promoted + self.Championship.playoff) then
      aRow.SimpleCss := Championship.rankingcolors.playoffcss
    else if (aRanking.pos >= self.Championship.teams - self.Championship.relegation + 1) then
      aRow.SimpleCss := Championship.rankingcolors.relegationcss
      // esempio 16 (1 retro e 4 playout) posizioni
      // a) 16 - 1 + 1 = 16 => pos >= 16 O.k.   -- promossa
      // b) (16 - (1 + 4)) + 1 =    12 <= pos < 16  -- playout
      // c) 1 < pos <= 5 --- (quattro squadre ai playoff
      // d) 16 = pos -- retrocessa
    else if (aRanking.pos < Championship.teams - Championship.relegation + 1) and
      (aRanking.pos >= Championship.teams - Championship.playout - Championship.relegation + 1) then
      aRow.SimpleCss := Championship.rankingcolors.playoutcss;

    aTable.Add(aRow);
  end;
  aTable.HasHeader := True;

  Result := aTable.AsHtml;
end;

function TJanuaRankings.AsHtmlTable(aIsFrame: boolean = False): string;
var
  aTable: TJanuaMetroTable;
  aHeader, aRow: TJanuaMetroTableRow;
  aCell: TJanuaMetroTableCell;
  aRanking: TJanuaRanking;
begin
  aTable.Create(True);
  aTable.Striped := aIsFrame;
  aTable.Bordered := aIsFrame;
  aTable.Header := aRanking.AsTableHeader;
  for aRanking in self.rankings do
    aTable.Add(aRanking.AsTableRow(aIsFrame));
  Result := aTable.AsHtml;
end;

function TJanuaRankings.AsJsonObject: TJsonObject;
var
  aRecord: TJanuaRanking;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  aArray := TJsonArray.Create;

  Result.AddPair('championship', self.Championship.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);

  for aRecord in self.rankings do
    aArray.AddElement(aRecord.AsJsonObject);

  Result.AddPair('rankings', aArray);

end;

function TJanuaRankings.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaRankings.AsMetroPortlet(L: integer = 0; bPortlet: boolean = True; aIsFrame: boolean = False): string;
begin
  Result := MetroPortletHeader(TMetroIcon.jmlSocialDribble, 'Classifica', MetroHtmlTable(self.AsHtmlTable(aIsFrame), 1),
    TMetronicColor.jmcGreen, L, True, True, bPortlet)
end;

function TJanuaRankings.AsShortTable: string;
var
  aTable: TJanuaMetroTable;
  aHeader, aRow: TJanuaMetroTableRow;
  aCell: TJanuaMetroTableCell;
  aRanking: TJanuaRanking;
begin
  aTable.Create(True);
  aTable.Striped := True;
  aTable.Bordered := True;
  aTable.Hover := True;
  aTable.Header := aRanking.AsShortTableHeader;
  for aRanking in self.rankings do
    aTable.Add(aRanking.AsShortTableRow);
  Result := aTable.AsHtml;
end;

function TJanuaRankings.Count: integer;
begin
  Result := Length(self.rankings);
end;

procedure TJanuaRankings.CreateDataset(aDataset: TFdMemTable);
var
  I: integer;
begin

  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('season_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('league_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('ranking_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('team_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('pos', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('team_name', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('points', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('goal_done', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('goal_lost', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('goal_difference', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('played_matches', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('won_matches', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('lost_matches', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('tied_matches', TFieldType.ftSmallint, 0, True);
  aDataset.Open;

  for I := Low(self.rankings) to High(self.rankings) do
  begin
    aDataset.Append;
    self.rankings[I].SaveToDataset(aDataset);
  end;

end;

function TJanuaRankings.SelectedItem: TJanuaRanking;
begin
  if self.ItemIndex >= 0 then
    Result := self.rankings[self.ItemIndex]
  else
  begin
    self.ItemIndex := 0;
    Result := rankings[0];
  end;
end;

procedure TJanuaRankings.SetDefault;
begin
  SetLength(self.rankings, 0);
  self.Championship.SetDefault;
  self.match_day := 0;
end;

procedure TJanuaRankings.SetFromDataset(dsRanking, dsChampionship: TDataset);
var
  I: integer;
begin
  if Assigned(dsChampionship) and (dsChampionship.Active) and (dsChampionship.RecordCount > 0) then
  begin
    self.Championship.SetFromDataset(dsChampionship);
  end;

  SetLength(self.rankings, 0);
  if Assigned(dsRanking) and dsRanking.Active and (dsRanking.RecordCount > 0) then
  begin
    dsRanking.Last;
    SetLength(self.rankings, dsRanking.RecordCount);
    dsRanking.First;
    I := 0;
    while not dsRanking.Eof do
    begin
      self.rankings[I].SetFromDataset(dsRanking);
      Inc(I);
      dsRanking.Next;
    end;
  end;
end;

procedure TJanuaRankings.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaRankings.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
  j: integer;
begin
  self.SetDefault;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }

  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('championship', aJson));
  j := 0;
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('rankings');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        Inc(j); // test variable .........
        self.Add(aObject);
      end;
  end;

end;

procedure TJanuaRankings.SetIsTeam(const Value: boolean);
begin
  FIsTeam := Value;
end;

function TJanuaRankings.Title: string;
begin
  Result := self.Championship.league_name + ' stagione ' + self.Championship.season_des + ' ' + self.match_day.ToString
    + 'a giornata';
end;

function TJanuaRankings.Transform(aTemplate, aRowTemplate: string): string;
var
  aRecord: TJanuaRanking;
  aRankings: TStrings;
begin
  Result := aTemplate;
  Result := self.Championship.Transform(Result);
  aRankings := TStringList.Create;
  try
    for aRecord in self.rankings do
      aRankings.Add(aRecord.Transform(aRowTemplate, self.Championship));

    Result := StringReplace(Result, '$football_ranking_rows$', aRankings.Text, [rfReplaceAll, rfIgnoreCase]);
  finally
    aRankings.Free;
  end;
end;

{ TJanuaMatch }

function TJanuaMatch.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'rownum', rownum);
  Janua.Core.Json.JsonPair(Result, 'match_id', match_id);
  Janua.Core.Json.JsonPair(Result, 'match_date', match_date);
  Janua.Core.Json.JsonPair(Result, 'home_team', home_team);
  Janua.Core.Json.JsonPair(Result, 'visitors_team', self.visitors_team);
  Janua.Core.Json.JsonPair(Result, 'goal_home', self.goal_home);
  Janua.Core.Json.JsonPair(Result, 'goal_visitor', self.goal_visitors);
  Janua.Core.Json.JsonPair(Result, 'confirmed', self.confirmed);
  Janua.Core.Json.JsonPair(Result, 'notes', self.notes);
  Janua.Core.Json.JsonPair(Result, 'postponed', self.postponed);
  Janua.Core.Json.JsonPair(Result, 'ShortResult', self.ShortResult);
  Janua.Core.Json.JsonPair(Result, 'home_notes', self.home_notes);
  Janua.Core.Json.JsonPair(Result, 'visitors_notes', self.visitors_notes);
  Janua.Core.Json.JsonPair(Result, 'match_day_number', self.DayNumber);
  Janua.Core.Json.JsonPair(Result, 'level', self.level);
end;

function TJanuaMatch.AsListRow: TJanuaMetroListRow;
begin

end;

function TJanuaMatch.AsLiveScore(bTitle: boolean): string;
var
  aList: IStringBuilder;
begin
  aList := TJanuaStringBuilder.Create;

  if bTitle then
  begin
    aList.AppendLine('<h2>');
    aList.AppendLine(Tag('span', self.home_team + ' - ' + self.visitors_team, '#ff0000'));
    aList.Append(Tag('span', self.goal_home.ToString + ' - ' + self.goal_visitors.ToString, ''));
    aList.AppendLine('</h2>');
  end;

  Result := aList.ToString;

end;

function TJanuaMatch.AsTableBigHeader: TJanuaMetroTableRow;
begin

end;

function TJanuaMatch.AsTableBigRow: TJanuaMetroTableRow;
begin

end;

function TJanuaMatch.AsTableHeader(L: smallint = 0): TJanuaMetroTableRow;
begin
  Result.Create(True);
  // Result.AddValue('#');
  Result.AddValue('Casa');
  Result.AddValue('Ospiti');
  Result.AddValue('Ris.');
  Result.AddValue('Note');
end;

function TJanuaMatch.AsTableRow(L: smallint = 0; aIsFrame: boolean = False): TJanuaMetroTableRow;
var
  aMetroLink: TJanuaMetroLink;
  img: string;
begin
  { // The simple Idea is to open a Div portlet splitted into odds and pairs at first I can make the Odd columns
    // then I can add the pairs columns ... but on smartphones this should sound 'odd' because mathes should not
    // be displayed in the correct way I should, Instead, split my calendar in first round second round
    // literally Andata and Ritorno in ca classical girone all'Italiana.
    aList := TStringList.Create;
    try
    aList.Add(Indent(3, I + 1) + '<tr>');
    aList.Add(Indent(3, I + 2) + '<td>' + self.rownum.ToString + '  </td>');
    aList.Add(Indent(3, I + 2) + '<td>' + self.home_team + '</td>');
    aList.Add(Indent(3, I + 2) + '<td>' + self.visitors_team + '</td>');
    aList.Add(Indent(3, I + 2) + '<td>' + self.ShortResult + '</td>');
    if self.postponed then
    begin
    aList.Add(Indent(3, I) + '  <td>');
    aList.Add(Indent(3, I) + '     ' + '<span class="label label-sm label-danger"> Posticipata </span>');
    aList.Add(Indent(3, I) + '  </td>');
    end;
    aList.Add(Indent(3, I + 1) + '</tr>');
    finally
    aList.Free;
    end;
  }
  Result.Create(False);
  // Result.AddValue(self.DayNumber);
  img := 'http://cdn.ergomercator.com/dilettantissimo/teams/32/';
  img := '<img src="' + img + self.home_team_id.ToString + '.jpg' + '" alt="">';
  Result.AddValue(img + ' ' + self.home_team);
  img := 'http://cdn.ergomercator.com/dilettantissimo/teams/32/';
  img := '<img src="' + img + self.visitors_team_id.ToString + '.jpg' + '" alt="">';
  Result.AddValue(img + ' ' + self.visitors_team);
  Result.AddValue(self.ShortResult);
  Result.AddValue('<a style="color:#fff;" class="m-badge  m-badge--info m-badge--wide">Tab</a>');
  if not aIsFrame then
  begin
    if self.postponed then
    begin
      Result.AddValue('     <span class="label label-sm label-danger"> Posticipata </span>');
    end
    else
    begin
      {
        // imposto direttamente il match id 'liscio' come parametro della query di ricerca
        aMetroLink.Clear;
        // './matchdetail?match_id='
        aMetroLink.BaseUrl := '?page=detail&match_id=' + self.match_id.ToString;
        aMetroLink.Color.MetroColor := TMetronicColor.jmcBlue;
        aMetroLink.Font.Color.MetroColor := TMetronicColor.jmcWhite;
        aMetroLink.Icon.IconType := TMetroIcon.jmiList;
        aMetroLink.IsButton := True;
        aMetroLink.ButtonStyle := TBootstrapButtonStyle.jbbNone;
        aMetroLink.Text := ' Vedi';
        Result.AddValue(aMetroLink.AsHtml);
      }
    end;
  end;
end;

constructor TJanuaMatch.Create(aMatchType: TJanuaMatchesType; aChampionship: TJanuaChampionship);
begin
  self.IsSet := False;
  self.SetDefault;
  self.MatchType := aMatchType;
  self.season_id := aChampionship.season_id;
  self.league_id := aChampionship.league_id;
  self.IsSet := True;
end;

procedure TJanuaMatch.CreateDataset(aDataset: TFdMemTable);
begin
  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('match_id', TFieldType.ftLargeint, 0, True);
  aDataset.FieldDefs.Add('rownum', TFieldType.ftInteger, 0, False);
  aDataset.FieldDefs.Add('match_day_number', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('isNextMatch', TFieldType.ftBoolean, 0, False);
  aDataset.FieldDefs.Add('match_date', TFieldType.ftDate, 0, False);
  aDataset.FieldDefs.Add('match_time', TFieldType.ftDateTime, 0, False);
  aDataset.FieldDefs.Add('home_team', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('visitors_team', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('match_name', TFieldType.ftWideString, 256, True);
  aDataset.FieldDefs.Add('goal_home', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('goal_visitor', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('confirmed', TFieldType.ftBoolean, 0, False);
  aDataset.FieldDefs.Add('notes', TFieldType.ftWideString, 2048, False);
  aDataset.FieldDefs.Add('postponed', TFieldType.ftBoolean, 0, False);
  aDataset.FieldDefs.Add('suspended', TFieldType.ftBoolean, 0, False);
  aDataset.FieldDefs.Add('home_notes', TFieldType.ftWideString, 2048, False);
  aDataset.FieldDefs.Add('visitors_notes', TFieldType.ftWideString, 2048, False);
  aDataset.FieldDefs.Add('match_level', TFieldType.ftSmallint, 0, True);
  // Janua.Core.Functions.SetFieldValue(DayNumber, dsMatch, 'match_day_number');
  aDataset.Open;
end;

function TJanuaMatch.DateTimeString: string;
begin
  Result := FormatDateTime('dd/mm/yy hh:nn', match_datetime);
end;

function TJanuaMatch.Match_Name(const aShowGoals: boolean = False): string;
begin
  Result := IfThen(aShowGoals, home_team + ' ' + goal_home.ToString + ' - ' + goal_visitors.ToString + visitors_team,
    home_team + ' - ' + visitors_team);
end;

procedure TJanuaMatch.SaveToDataset(dsMatch: TDataset);
begin
  dsMatch.Edit;
  Janua.Core.Functions.SetFieldValue(Match_Name, dsMatch, 'match_name');
  Janua.Core.Functions.SetFieldValue(rownum, dsMatch, 'rownum');
  Janua.Core.Functions.SetFieldValue(match_id, dsMatch, 'match_id', True);
  Janua.Core.Functions.SetFieldValue(match_date, dsMatch, 'match_date');
  Janua.Core.Functions.SetFieldValue(match_datetime, dsMatch, 'match_time');
  Janua.Core.Functions.SetFieldValue(home_team, dsMatch, 'home_team', True);
  Janua.Core.Functions.SetFieldValue(visitors_team, dsMatch, 'visitors_team', True);
  Janua.Core.Functions.SetFieldValue(goal_home, dsMatch, 'goal_home', True);
  Janua.Core.Functions.SetFieldValue(goal_visitors, dsMatch, 'goal_visitor', True);
  Janua.Core.Functions.SetFieldValue(notes, dsMatch, 'notes');
  Janua.Core.Functions.SetFieldValue(postponed, dsMatch, 'postponed');
  Janua.Core.Functions.SetFieldValue(confirmed, dsMatch, 'confirmed');
  Janua.Core.Functions.SetFieldValue(home_notes, dsMatch, 'home_notes');
  Janua.Core.Functions.SetFieldValue(visitors_notes, dsMatch, 'visitors_notes');
  Janua.Core.Functions.SetFieldValue(DayNumber, dsMatch, 'match_day_number');
  Janua.Core.Functions.SetFieldValue(self.level, dsMatch, 'match_level');
  dsMatch.Post;
end;

procedure TJanuaMatch.SetDefault;
begin
  if not self.IsSet then
  begin
    rownum := 0;
    match_id := 0;
    match_date := Now();
    home_team := '';
    visitors_team := '';
    goal_home := 0;
    goal_visitors := 0;
    confirmed := False;
    notes := '';
    postponed := False;
    self.IsSet := False;
  end;
end;

procedure TJanuaMatch.SetFromDataset(dsMatch: TDataset);
begin
  SetDefault;
  Janua.Core.Functions.GetFieldValue(rownum, dsMatch, 'rownum');
  Janua.Core.Functions.GetFieldValue(match_id, dsMatch, 'match_id', True);
  Janua.Core.Functions.GetFieldValue(match_date, dsMatch, 'match_date');
  Janua.Core.Functions.GetFieldValue(home_team, dsMatch, 'home_team', True);
  Janua.Core.Functions.GetFieldValue(visitors_team, dsMatch, 'visitors_team', True);
  Janua.Core.Functions.GetFieldValue(goal_home, dsMatch, 'goal_home', True);
  Janua.Core.Functions.GetFieldValue(goal_visitors, dsMatch, 'goal_visitor', True);
  Janua.Core.Functions.GetFieldValue(notes, dsMatch, 'notes');
  Janua.Core.Functions.GetFieldValue(postponed, dsMatch, 'postponed');
  Janua.Core.Functions.GetFieldValue(confirmed, dsMatch, 'confirmed');
  Janua.Core.Functions.GetFieldValue(home_notes, dsMatch, 'home_notes');
  Janua.Core.Functions.GetFieldValue(visitors_notes, dsMatch, 'visitors_notes');
  Janua.Core.Functions.GetFieldValue(DayNumber, dsMatch, 'match_day_number');
  Janua.Core.Functions.GetFieldValue(self.level, dsMatch, 'match_level');
  Janua.Core.Functions.GetFieldValue(self.match_datetime, dsMatch, 'match_time');
  Janua.Core.Functions.GetFieldValue(self.home_team_id, dsMatch, 'home_team_id');
  Janua.Core.Functions.GetFieldValue(self.visitors_team_id, dsMatch, 'visitors_team_id');
end;

procedure TJanuaMatch.SetFromJson(aJson: TJsonObject);
begin
  if aJson = nil then
    raise exception.Create('TJanuaMatch.SetFromJson Erro Json Object is nil');

  Janua.Core.Json.JsonValue(aJson, 'rownum', rownum);
  Janua.Core.Json.JsonValue(aJson, 'match_id', match_id);
  Janua.Core.Json.JsonValue(aJson, 'match_date', match_date);
  Janua.Core.Json.JsonValue(aJson, 'match_datetime', match_datetime);
  Janua.Core.Json.JsonValue(aJson, 'home_team', home_team);
  Janua.Core.Json.JsonValue(aJson, 'visitors_team', self.visitors_team);
  Janua.Core.Json.JsonValue(aJson, 'goal_home', self.goal_home);
  Janua.Core.Json.JsonValue(aJson, 'goal_visitor', self.goal_visitors);
  Janua.Core.Json.JsonValue(aJson, 'confirmed', self.confirmed);
  Janua.Core.Json.JsonValue(aJson, 'notes', self.notes);
  Janua.Core.Json.JsonValue(aJson, 'postponed', self.postponed);
  Janua.Core.Json.JsonValue(aJson, 'home_notes', self.home_notes);
  Janua.Core.Json.JsonValue(aJson, 'visitors_notes', self.visitors_notes);
  Janua.Core.Json.JsonValue(aJson, 'match_day_number', self.DayNumber);
  Janua.Core.Json.JsonValue(aJson, 'level', self.level);
  // Janua.Core.Json.JsonValue(aJson, 'ShortResult', self.ShortResult);

end;

procedure TJanuaMatch.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaMatch.ShortResult: string;
begin
  Result := IntToStr(self.goal_home) + ' - ' + IntToStr(self.goal_visitors);
end;

function TJanuaMatch.Transform(aTemplate: string): string;
var
  aClass: string;
begin
  Result := aTemplate;

  if Odd(rownum) then
    aClass := ''
  else
    aClass := 'alt';

  HtmlReplace(Result, 'class', aClass);
  HtmlReplace(Result, 'rownum', self.rownum);
  HtmlReplace(Result, 'match_id', self.match_id);
  HtmlReplace(Result, 'match_date', self.match_date);
  HtmlReplace(Result, 'home_team', self.home_team);
  HtmlReplace(Result, 'visitors_team', self.visitors_team);

  if isNextMatch then
  begin
    HtmlReplace(Result, 'goal_home', '');
    HtmlReplace(Result, 'goal_visitor', '');
  end
  else
  begin
    HtmlReplace(Result, 'goal_home', self.goal_home);
    HtmlReplace(Result, 'goal_visitor', self.goal_visitors);
  end;
end;

{ TJanuaChampionship }

function TJanuaChampionship.AsDaysList: TJanuaMetroList;
begin
  Result.Create(0, 0, TMetroListType.mlPagination);

end;

function TJanuaChampionship.GetAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'season_id', season_id);
  Janua.Core.Json.JsonPair(Result, 'league_id', league_id);
  Janua.Core.Json.JsonPair(Result, 'season_des', season_des);
  Janua.Core.Json.JsonPair(Result, 'season_code', season_code);
  Janua.Core.Json.JsonPair(Result, 'league_name', league_name);
  Janua.Core.Json.JsonPair(Result, 'league_position', league_position);
  Janua.Core.Json.JsonPair(Result, 'league_code', league_code);
  Janua.Core.Json.JsonPair(Result, 'ranking_colors', rankingcolors.AsJsonObject);
end;

function TJanuaChampionship.AsRow: TJanuaMetroListRow;
begin
  Result.FI := 3;
  Result.FL := 2;
  Result.Title := self.league_name;
  Result.Url := '$siteurl$/?season_id=' + self.season_id.ToString + '&league_id=' + self.league_id.ToString;
  Result.Icon.IconType := TMetroIcon.jmiNone;
  Result.Opened := self.Selected;
end;

procedure TJanuaChampionship.SaveToDataset(dsChampionship: TDataset);
begin
  dsChampionship.Edit;
  Janua.Core.Functions.SetFieldValue(season_id, dsChampionship, 'season_id');
  Janua.Core.Functions.SetFieldValue(league_id, dsChampionship, 'league_id');
  Janua.Core.Functions.SetFieldValue(season_des, dsChampionship, 'season_des');
  Janua.Core.Functions.SetFieldValue(league_name, dsChampionship, 'league_name');
  Janua.Core.Functions.SetFieldValue(season_code, dsChampionship, 'season_code');
  Janua.Core.Functions.SetFieldValue(league_position, dsChampionship, 'league_position');
  Janua.Core.Functions.SetFieldValue(league_code, dsChampionship, 'league_code');
  Janua.Core.Functions.SetFieldValue(Promoted, dsChampionship, 'Promoted');
  Janua.Core.Functions.SetFieldValue(playoff, dsChampionship, 'Playoff');
  Janua.Core.Functions.SetFieldValue(relegation, dsChampionship, 'Relegation');
  Janua.Core.Functions.SetFieldValue(Champions, dsChampionship, 'Champions');
  Janua.Core.Functions.SetFieldValue(playout, dsChampionship, 'Playout');
  Janua.Core.Functions.SetFieldValue(teams, dsChampionship, 'Teams');
  //
  dsChampionship.Post;
end;

procedure TJanuaChampionship.SetDefault;
begin
  self.rankingcolors.SetDefault;
  self.season_id := 0;
  self.league_id := 0;
  self.season_des := '';
  self.league_name := '';
  self.season_code := '';
  self.league_code := '';
  self.league_position := 0;
end;

procedure TJanuaChampionship.SetFromDataset(dsChampionship: TDataset);
begin
  SetDefault;
  Janua.Core.Functions.GetFieldValue(season_id, dsChampionship, 'season_id');
  Janua.Core.Functions.GetFieldValue(league_id, dsChampionship, 'league_id');
  Janua.Core.Functions.GetFieldValue(season_des, dsChampionship, 'season_des');
  Janua.Core.Functions.GetFieldValue(league_name, dsChampionship, 'league_name');
  Janua.Core.Functions.GetFieldValue(season_code, dsChampionship, 'season_code');
  Janua.Core.Functions.GetFieldValue(league_position, dsChampionship, 'league_position');
  Janua.Core.Functions.GetFieldValue(league_code, dsChampionship, 'league_code');
  Janua.Core.Functions.GetFieldValue(Promoted, dsChampionship, 'Promoted');
  Janua.Core.Functions.GetFieldValue(playoff, dsChampionship, 'Playoff');
  Janua.Core.Functions.GetFieldValue(relegation, dsChampionship, 'Relegation');
  Janua.Core.Functions.GetFieldValue(Champions, dsChampionship, 'Champions');
  Janua.Core.Functions.GetFieldValue(playout, dsChampionship, 'Playout');
  Janua.Core.Functions.GetFieldValue(teams, dsChampionship, 'Teams');
  self.rankingcolors.SetFromDataset(dsChampionship);
end;

procedure TJanuaChampionship.SetFromJson(aJson: string);
var
  aJsonObject: TJsonObject;
begin
  aJsonObject := TJsonObject.Create;
  if aJsonObject.Parse(BytesOf(aJson), 0) > 0 then
    self.SetFromJson(aJsonObject);
end;

procedure TJanuaChampionship.SetFromJson(aJson: TJsonObject);
begin
  Janua.Core.Json.JsonValue(aJson, 'season_id', season_id);
  Janua.Core.Json.JsonValue(aJson, 'league_id', league_id);
  Janua.Core.Json.JsonValue(aJson, 'season_des', season_des);
  Janua.Core.Json.JsonValue(aJson, 'season_code', season_code);
  Janua.Core.Json.JsonValue(aJson, 'league_name', league_name);
  Janua.Core.Json.JsonValue(aJson, 'league_position', league_position);
  Janua.Core.Json.JsonValue(aJson, 'league_code', league_code);
  self.rankingcolors.SetFromJson(Janua.Core.Json.JsonObject('ranking_colors', aJson));
end;

function TJanuaChampionship.Transform(aTemplate: string): string;
begin
  Result := aTemplate;
  Janua.Core.Functions.HtmlReplace(Result, 'season_id', self.season_id);
  Janua.Core.Functions.HtmlReplace(Result, 'league_id', self.league_id);
  Janua.Core.Functions.HtmlReplace(Result, 'season_des', self.season_des);
  Janua.Core.Functions.HtmlReplace(Result, 'league_name', self.league_name);
  Janua.Core.Functions.HtmlReplace(Result, 'season_code', self.season_code);
end;

{ TJanuaGoalRanking }

function TJanuaGoalRanking.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'rownum', self.rownum);
  Janua.Core.Json.JsonPair(Result, 'player', self.Player.AsJsonObject);
end;

function TJanuaGoalRanking.AsListRow: TJanuaMetroListRow;
begin

end;

function TJanuaGoalRanking.AsMetro5TableHeader: TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('#');
  Result.AddValue('Giocatore');
  Result.AddValue('Gol');
end;

function TJanuaGoalRanking.AsMetro5TableRow: TJanuaMetroTableRow;
begin
  //
  // Apex
  //
  Result.Create(False);
  Result.AddValue(self.rownum);
  Result.AddValue('<span class="m-widget11__title">' + Player.FullName + '</span>' + '<span class="m-widget11__sub">' +
    Player.SelectedCareer.team_name + '</span>');
  // Result.AddValue(self.family_name + ' ' + self.first_name);
  Result.AddValue(self.Player.SelectedCareer.goal);
end;

function TJanuaGoalRanking.AsShortTableHeader: TJanuaMetroTableRow;
begin
  Result.Create(True);
  // Result.AddValue('#');
  Result.AddValue('Giocatore');
  Result.AddValue('Gol');
end;

function TJanuaGoalRanking.AsShortTableRow: TJanuaMetroTableRow;
begin
  Result.Create(False);
  // Result.AddValue(self.rownum);
  Result.AddValue(self.Player.LastName + ' ' + self.Player.FirstName + ' (' +
    self.Player.SelectedCareer.team_name + ')');
  // Result.AddValue(self.team_name);
  Result.AddValue(self.Player.goal);
end;

function TJanuaGoalRanking.AsTableBigHeader: TJanuaMetroTableRow;
begin

end;

function TJanuaGoalRanking.AsTableBigRow: TJanuaMetroTableRow;
begin

end;

function TJanuaGoalRanking.AsTableHeader: TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('Pos');
  Result.AddValue('Giocatore');
  Result.AddValue('Squadra');
  Result.AddValue('Gol');
end;

function TJanuaGoalRanking.AsTableRow: TJanuaMetroTableRow;
begin
  {
    rownum: int64;
    team_name: string;
    player_id: integer;
    first_name: string;
    family_name: string;
    goals: integer;
  }
  Result.Create(False);
  Result.AddValue(self.rownum);
  Result.AddValue(self.Player.GetFullNameAsHtml);
  // Result.AddValue(self.family_name + ' ' + self.first_name);
  Result.AddValue(self.Player.SelectedCareer.team_name);
  Result.AddValue(self.Player.SelectedCareer.goal);

end;

procedure TJanuaGoalRanking.SetFromDataset(dsGoalRanking: TDataset);
begin
  self.rownum := dsGoalRanking.FieldByName('rownum').AsLargeInt;
  self.Player.SetFromDataset(dsGoalRanking, False, True);
end;

procedure TJanuaGoalRanking.SetFromJson(aObject: TJsonObject);
begin
  Janua.Core.Json.JsonValue(aObject, 'rownum', self.rownum);
  self.Player.LoadFromJsonObject(aObject);
  {
    Janua.Core.Json.JsonValue(aObject, 'team_name', self.team_name);
    Janua.Core.Json.JsonValue(aObject, 'player_id', self.player_id);
    Janua.Core.Json.JsonValue(aObject, 'first_name', self.first_name);
    Janua.Core.Json.JsonValue(aObject, 'family_name', self.family_name);
    Janua.Core.Json.JsonValue(aObject, 'goals', self.goals);
  }
end;

procedure TJanuaGoalRanking.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaGoalRanking.Transform(aTemplate: string): string;
var
  aClass: String;
begin
  Result := aTemplate;
  if Odd(self.rownum) then
    aClass := 'odd'
  else
    aClass := 'even';

  HtmlReplace(Result, 'class', aClass);
  Result := self.Player.Transform(Result);
end;

{ TJanuaGoalRankings }

procedure TJanuaGoalRankings.Add(aItem: TJanuaGoalRanking);
begin
  self.ItemIndex := self.Count;
  SetLength(self.goalrankings, Succ(self.Count));
  self.goalrankings[ItemIndex] := aItem;
end;

procedure TJanuaGoalRankings.Add(aObject: TJsonObject);
var
  aItem: TJanuaGoalRanking;
begin
  aItem.SetFromJson(aObject);
  self.Add(aItem);
end;

function TJanuaGoalRankings.AsHtmlMetro5Table(L: integer; aIsFrame: boolean; aLimit: integer = 0): string;
var
  aTable: TJanuaMetroTable;
  aHeader, aRow: TJanuaMetroTableRow;
  // aCell: TJanuaMetroTableCell;
  aRanking: TJanuaGoalRanking;
  I: integer;
begin
  aTable.Create(True);
  aTable.Hover := True;
  aTable.Bordered := aIsFrame;
  aTable.Striped := aIsFrame;
  aTable.Header := aRanking.AsMetro5TableHeader;

  for I := 0 to IfThen(aLimit = 0, self.Count - 1, Min(Pred(self.Count), aLimit)) do
  begin
    aTable.Add(self.goalrankings[I].AsMetro5TableRow);
  end;
  Result := aTable.AsHtml;

end;

function TJanuaGoalRankings.AsHtmlTable(L: integer = 0; aIsFrame: boolean = False): string;
var
  aTable: TJanuaMetroTable;
  // aHeader, aRow: TJanuaMetroTableRow;
  // aCell: TJanuaMetroTableCell;
  aRanking: TJanuaGoalRanking;
begin
  aTable.Create(True);
  aTable.Hover := True;
  aTable.Bordered := aIsFrame;
  aTable.Striped := aIsFrame;
  aTable.Header := aRanking.AsTableHeader;
  for aRanking in self.goalrankings do
    aTable.Add(aRanking.AsTableRow);
  Result := aTable.AsHtml;
end;

function TJanuaGoalRankings.AsJsonObject: TJsonObject;
var
  aGoalRanking: TJanuaGoalRanking;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Result.AddPair('championship', self.Championship.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);
  aArray := TJsonArray.Create;
  for aGoalRanking in self.goalrankings do
    aArray.AddElement(aGoalRanking.AsJsonObject);
  Result.AddPair('goalrankings', aArray);
end;

procedure TJanuaGoalRankings.SetFromDataset(dsGoalRanking: TDataset);
var
  I: integer;
begin
  SetLength(self.goalrankings, 0);
  if Assigned(dsGoalRanking) and (dsGoalRanking.Active) and (dsGoalRanking.RecordCount > 0) then
  begin
    dsGoalRanking.First;
    I := 0;
    SetLength(self.goalrankings, dsGoalRanking.RecordCount);
    while not dsGoalRanking.Eof do
    begin
      self.goalrankings[I].SetFromDataset(dsGoalRanking);
      dsGoalRanking.Next;
      Inc(I);
    end;
  end;

end;

function TJanuaGoalRankings.AsJsonPretty: string;
var
  lJson: TJsonObject;
begin
  lJson := AsJsonObject;
  try
    Result := Janua.Core.Json.JsonPretty(lJson.ToJSON)
  finally
    lJson.Free;
  end;
end;

function TJanuaGoalRankings.AsMetroPortlet(L: integer = 0; aIsFrame: boolean = False): string;
begin
  Result := MetroPortletHeader(TMetroIcon.jmlSocialDribble, 'Classifica Marcatori', MetroHtmlTable(self.AsHtmlTable, L),
    TMetronicColor.jmcBlue, L)
end;

function TJanuaGoalRankings.AsShortTable(L: integer = 0; aIsFrame: boolean = False): string;
var
  aTable: TJanuaMetroTable;
  // aHeader, aRow: TJanuaMetroTableRow;
  // aCell: TJanuaMetroTableCell;
  aRanking: TJanuaGoalRanking;
begin
  aTable.Create(True);
  aTable.Bordered := True;
  aTable.Striped := True;
  aTable.Header := aRanking.AsShortTableHeader;
  for aRanking in self.goalrankings do
    aTable.Add(aRanking.AsShortTableRow);
  Result := aTable.AsHtml;
end;

procedure TJanuaGoalRankings.Clear;
begin
  self.Championship.SetDefault;
  SetLength(self.goalrankings, 0);
end;

function TJanuaGoalRankings.Count: integer;
begin
  Result := Length(self.goalrankings);
end;

constructor TJanuaGoalRankings.Create(aChampionship: TJanuaChampionship);
begin
  self.Clear;
  self.Championship := aChampionship;
end;

procedure TJanuaGoalRankings.SetFromDataset(dsChampionship, dsGoalRanking: TDataset);
begin
  self.Championship.SetFromDataset(dsChampionship);
  self.SetFromDataset(dsGoalRanking);
end;

procedure TJanuaGoalRankings.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaGoalRankings.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }

  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('championship', aJson));
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('goalrankings');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

function TJanuaGoalRankings.Transform(aTemplate, aTemplateRows: string): string;
var
  aGoalRanking: TJanuaGoalRanking;
  aArray: TStrings;
begin
  Result := self.Championship.Transform(aTemplate);
  aArray := TStringList.Create;
  try
    for aGoalRanking in self.goalrankings do
      aArray.Add(aGoalRanking.Transform(aTemplateRows));

    HtmlReplace(Result, 'football_goalranking_rows', aArray.Text);
  finally
    aArray.Free;
  end;

end;

{ TJanuaRankingColors }

function TJanuaRankingColors.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'promochampioncss', self.promochampioncss);
  Janua.Core.Json.JsonPair(Result, 'promochampion', self.promochampion);
  Janua.Core.Json.JsonPair(Result, 'playoffcss', self.playoffcss);
  Janua.Core.Json.JsonPair(Result, 'playoff', self.playoff);
  Janua.Core.Json.JsonPair(Result, 'championleaguecss', self.championleaguecss);
  Janua.Core.Json.JsonPair(Result, 'championleague', self.championleague);
  Janua.Core.Json.JsonPair(Result, 'playoutcss', self.playoutcss);
  Janua.Core.Json.JsonPair(Result, 'playout', self.playout);
  Janua.Core.Json.JsonPair(Result, 'relegationcss', self.relegationcss);
  Janua.Core.Json.JsonPair(Result, 'relegation', self.relegation);
  Janua.Core.Json.JsonPair(Result, 'standardcss', self.standardcss);
  Janua.Core.Json.JsonPair(Result, 'teams', self.teams);

end;

function TJanuaRankingColors.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

procedure TJanuaRankingColors.SetDefault;
begin
  self.promochampioncss := 'promotion';
  self.championleaguecss := 'playout';
  self.playoffcss := 'playoff';
  self.relegationcss := 'retrocession';
  self.playoutcss := 'playout';
  self.promochampion := 1;
  self.playoff := 0;
  self.championleague := 0;
  self.playout := 0;
  self.teams := 0;
end;

function TJanuaRankingColors.css(aPos: smallint): string;
var
  aStandardBegin, aStandardEnd, aRelegation, aPlayout, aChampions, aPlayoff: smallint;
begin
  aPlayoff := 0;

  if self.relegation > 0 then
    aRelegation := self.teams - self.relegation
  else
    aRelegation := 0;

  if self.playout > 0 then
    aPlayout := self.teams - self.relegation - self.playout
  else
    aPlayout := 0;

  if self.championleague > 0 then
    aChampions := self.promochampion + self.championleague
  else
    aChampions := 0;

  if self.playoff > 0 then
    aPlayoff := self.championleague + self.playoff + self.promochampion
  else
    self.playoff := 0;

  if (aPlayoff > 0) then
    aStandardBegin := aPlayoff + 1
  else if (aChampions > 0) then
    aStandardBegin := aChampions + 1
  else if (self.promochampion > 0) then
    aStandardBegin := promochampion + 1
  else
    aStandardBegin := 1;

  if aPlayout > 0 then
    aStandardEnd := aPlayout - 1
  else if aRelegation > 0 then
    aStandardEnd := aRelegation - 1
  else
    aStandardEnd := teams;

  if (self.promochampion > 0) and (aPos <= self.promochampion) then
    Result := self.promochampioncss
  else if (aChampions <> 0) and (aPos > self.promochampion) and (aPos <= aChampions) then
    Result := self.championleaguecss
  else if (aPlayoff > 0) and (aChampions > 0) and (aPos > aChampions) and (aPos <= aPlayoff) then
    Result := self.playoffcss
  else if (aPlayoff > 0) and (aChampions = 0) and (aPos > promochampion) and (aPos <= aPlayoff) then
    Result := self.playoffcss
  else if (aPos >= aStandardBegin) and (aPos <= aStandardEnd) then
    Result := self.standardcss
  else if (aPlayout <> 0) and (aPos >= aPlayout) and (aPos <= aPlayout + self.playout - 1) then
    Result := self.playoutcss
  else if (aRelegation <> 0) and (aPos >= aRelegation) then
    Result := self.relegationcss

end;

procedure TJanuaRankingColors.SetFromDataset(dsChampionship: TDataset);
begin
  { season_id smallint NOT NULL, -- Unique id for season id
    league_id smallint NOT NULL, -- The unique id of the league in this championship
    db_schema_id integer,
    promoted smallint,
    playoff smallint,
    relegation smallint,
    champions smallint,
    playout smallint,
    teams smallint NOT NULL DEFAULT 0, }

  self.SetDefault;
  self.promochampion := dsChampionship.FieldByName('promoted').AsInteger;
  self.playoff := dsChampionship.FieldByName('playoff').AsInteger;
  self.relegation := dsChampionship.FieldByName('relegation').AsInteger;
  self.championleague := dsChampionship.FieldByName('champions').AsInteger;
  self.playout := dsChampionship.FieldByName('playout').AsInteger;
  self.teams := dsChampionship.FieldByName('teams').AsInteger;

end;

procedure TJanuaRankingColors.SetFromJson(aJson: TJsonObject);
begin
  self.SetDefault;
  Janua.Core.Json.JsonValue(aJson, 'promochampioncss', self.promochampioncss);
  Janua.Core.Json.JsonValue(aJson, 'promochampion', self.promochampion);
  Janua.Core.Json.JsonValue(aJson, 'playoffcss', self.playoffcss);
  Janua.Core.Json.JsonValue(aJson, 'playoff', self.playoff);
  Janua.Core.Json.JsonValue(aJson, 'championleaguecss', self.championleaguecss);
  Janua.Core.Json.JsonValue(aJson, 'championleague', self.championleague);
  Janua.Core.Json.JsonValue(aJson, 'playoutcss', self.playoutcss);
  Janua.Core.Json.JsonValue(aJson, 'playout', self.playout);
  Janua.Core.Json.JsonValue(aJson, 'relegationcss', self.relegationcss);
  Janua.Core.Json.JsonValue(aJson, 'relegation', self.relegation);
  Janua.Core.Json.JsonValue(aJson, 'standardcss', self.standardcss);
  Janua.Core.Json.JsonValue(aJson, 'teams', self.teams);
end;

procedure TJanuaRankingColors.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

{ TJanuaFootballSeasons }

function TJanuaFootballSeasons.GetAsJsonObject: TJsonObject;
var
  aJsonArray: TJsonArray;
  aSeason: TJanuaFootballSeason;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);
  aJsonArray := TJsonArray.Create;
  for aSeason in self.items do
    aJsonArray.AddElement(aSeason.AsJsonObject);
  Result.AddPair('seasons', aJsonArray)
end;

function TJanuaFootballSeasons.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaFootballSeasons.AsList(aOpened: boolean): TJanuaMetroList;
var
  aItem: TJanuaFootballSeason;
begin
  Result := TJanuaMetroList.Create(3, 1);
  Result.ListType := TMetroListType.mlSidebarNav;
  Result.Title := 'Stagioni';
  Result.Icon.IconType := TMetroIcon.jmiCalendar;
  // se la lista ? aperta do per scontato che sia anche quella che ? selezionata ..................................
  Result.Opened := aOpened;
  Result.Selected := aOpened;

  for aItem in self.items do
    Result.Add(aItem.AsRow);

end;

procedure TJanuaFootballSeasons.Add(aSeason: TJanuaFootballSeason);
begin
  SetLength(self.items, self.Count + 1);
  self.ItemIndex := Pred(self.Count);
  self.items[ItemIndex] := aSeason;
  aSeason.index := ItemIndex;
  self.SelectedSeason := self.items[ItemIndex];
end;

procedure TJanuaFootballSeasons.Add(aObject: TJsonObject);
var
  aSeason: TJanuaFootballSeason;
begin
  aSeason.LoadFromJson(aObject);
  self.Add(aSeason);
end;

function TJanuaFootballSeasons.AsHtml(aOpened: boolean = False): string;
var
  aList: TJanuaMetroList;
begin
  aList := self.AsList(aOpened);
  Result := aList.AsString;
end;

procedure TJanuaFootballSeasons.Clear;
begin
  SetLength(self.items, 0);
end;

function TJanuaFootballSeasons.Count: integer;
begin
  Result := Length(self.items);
end;

procedure TJanuaFootballSeasons.CreateDataset(aDataset: TFdMemTable);
var
  I: integer;
begin
  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('season_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('season_des', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('season_code', TFieldType.ftWideString, 12, True);
  aDataset.Open;

  for I := Low(self.items) to High(self.items) do
  begin
    aDataset.Append;
    self.items[I].SaveToDataset(aDataset);
  end;

end;

function TJanuaFootballSeasons.getSelectedSeason: TJanuaFootballSeason;
begin
  Result := self.items[ItemIndex]
end;

procedure TJanuaFootballSeasons.SaveToDataset(aDataset: TDataset);
begin
  /// Qui andrebbero salvate solo le Seasons che avessere lo status a new record o modified record ...................

end;

function TJanuaFootballSeasons.SearchByCode(aCode: string): boolean;
var
  I: integer;
begin
  Result := False;
  for I := Low(0) to High(self.items) do
    if self.items[I].code.ToLower = aCode.ToLower then
    begin
      self.ItemIndex := I;
      Result := True;
      Exit
    end;

end;

function TJanuaFootballSeasons.SearchByID(aID: integer): boolean;
var
  I: integer;
begin
  Result := False;
  for I := Low(0) to High(self.items) do
    if self.items[I].ID = aID then
    begin
      self.ItemIndex := I;
      Result := True;
      Exit
    end;

end;

function TJanuaFootballSeasons.SearchByName(aName: string): boolean;
var
  I: integer;
begin
  Result := False;
  for I := Low(0) to High(self.items) do
    if self.items[I].description.ToLower = aName.ToLower then
    begin
      self.ItemIndex := I;
      Result := True;
      Exit
    end;
end;

function TJanuaFootballSeasons.SearchByPos(aPos: integer): boolean;
begin
  Result := False;
  if (aPos > 0) and (aPos <= self.Count - 1) then
  begin
    self.SelectedSeason := self.items[aPos];
    Result := True;
  end;
end;

procedure TJanuaFootballSeasons.SetDefault;
begin
  self.Clear;
  self.ItemIndex := -1;
end;

procedure TJanuaFootballSeasons.SetFromDataset(dsSeasons: TDataset);
var
  aSeason: TJanuaFootballSeason;
begin
  self.Clear;
  if Assigned(dsSeasons) and (dsSeasons.Active) and (dsSeasons.RecordCount > 0) then
  begin
    dsSeasons.First;
    while not dsSeasons.Eof do
    begin
      aSeason.SetFromDataset(dsSeasons);
      self.Add(aSeason);
      dsSeasons.Next;
    end;
  end;
end;

procedure TJanuaFootballSeasons.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }

  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('seasons');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

procedure TJanuaFootballSeasons.SetItemIndex(const Value: integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaFootballSeasons.SetSelected(aID: integer);
var
  I: integer;
begin
  for I := Low(items) to High(items) do
    self.items[I].IsSelected := aID = self.items[I].ID;
end;

procedure TJanuaFootballSeasons.SetSelectedSeason(const Value: TJanuaFootballSeason);
begin
  self.items[self.ItemIndex] := Value;
end;

procedure TJanuaFootballSeasons.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaFootballSeasons.Transform(aTemplate: string): string;
begin

end;

{ TJanuaFootballSeason }

function TJanuaFootballSeason.AsJsonObject: TJsonObject;
begin
  { id: integer;
    description: string;
    code: string;
    IsSelected: boolean;
  }
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'description', self.description);
  Janua.Core.Json.JsonPair(Result, 'code', self.code);
  Janua.Core.Json.JsonPair(Result, 'selected', self.IsSelected);
end;

function TJanuaFootballSeason.AsRow: TJanuaMetroListRow;
begin
  Result.Title := self.description;
  Result.Url := '$siteurl$/?season_id=' + self.ID.ToString;
  Result.Opened := self.IsSelected;
  Result.Active := self.IsSelected;
end;

function TJanuaFootballSeason.AsHtml: string;
begin
  Result := self.AsRow.AsString;
end;

procedure TJanuaFootballSeason.SaveToDataset(dsSeasons: TDataset);
begin
  dsSeasons.Edit;
  dsSeasons.FieldByName('season_id').AsInteger := self.ID;
  dsSeasons.FieldByName('season_des').AsWideString := self.description;
  dsSeasons.FieldByName('season_code').AsWideString := self.code;
  dsSeasons.Post;
end;

procedure TJanuaFootballSeason.SetDefault;
begin
  self.ID := 0;
  self.index := 0;
  self.description := '';
  self.code := '';
  self.IsSelected := False;
end;

procedure TJanuaFootballSeason.SetFromDataset(dsSeasons: TDataset);
begin
  {
    season_id integer NOT NULL, -- This is the Season ID unique identifier. Every Season can have a 'starting date' and 'ending date' but they are quite optional.
    season_des character varying(20), -- This is the real Description of the season
    season_code character(5),
  }

  self.ID := dsSeasons.FieldByName('season_id').AsInteger;
  self.description := dsSeasons.FieldByName('season_des').AsWideString;
  self.code := dsSeasons.FieldByName('season_code').AsWideString;
end;

procedure TJanuaFootballSeason.LoadFromJson(aJson: TJsonObject);
begin
  { id: integer;
    description: string;
    code: string;
    IsSelected: boolean;
  }
  Janua.Core.Json.JsonValue(aJson, 'id', self.ID);
  Janua.Core.Json.JsonValue(aJson, 'description', self.description);
  Janua.Core.Json.JsonValue(aJson, 'code', self.code);
  Janua.Core.Json.JsonValue(aJson, 'selected', self.IsSelected);
end;

procedure TJanuaFootballSeason.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaFootballSeason.Transform(aTemplate: string): string;
begin

end;

{ TJanuaFootballChampionships }

procedure TJanuaFootballChampionships.Add(aChampionship: TJanuaChampionship);
begin
  SetLength(self.items, Succ(self.Count));
  self.ItemIndex := Pred(self.Count);
  self.items[self.ItemIndex] := aChampionship;
end;

procedure TJanuaFootballChampionships.Add(aJsonObject: TJsonObject);
var
  aChampionship: TJanuaChampionship;
begin
  aChampionship.SetFromJson(aJsonObject);
  self.Add(aChampionship);
end;

function TJanuaFootballChampionships.AsHtml(aOpened: boolean): string;
begin
  Result := self.AsHtmlList(aOpened).AsString;
end;

function TJanuaFootballChampionships.AsJsonObject: TJsonObject;
var
  aItem: TJanuaChampionship;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);
  aJsonArray := TJsonArray.Create;
  for aItem in self.items do
    aJsonArray.AddElement(aItem.AsJsonObject);
  Result.AddPair('items', aJsonArray)

end;

function TJanuaFootballChampionships.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaFootballChampionships.AsHtmlList(aOpened: boolean): TJanuaMetroList;
var
  aItem: TJanuaChampionship;
begin
  Result.Create(3, 1);
  Result.Title := 'Campionati';
  Result.ListType := TMetroListType.mlSidebarNav;
  Result.Icon.IconType := TMetroIcon.jmlSocialDribble;
  Result.Opened := aOpened;
  Result.Selected := aOpened;

  for aItem in self.items do
    Result.Add(aItem.AsRow);

end;

procedure TJanuaFootballChampionships.Clear;
begin
  SetLength(self.items, 0);
end;

function TJanuaFootballChampionships.Count: integer;
begin
  Result := Length(self.items);
end;

procedure TJanuaFootballChampionships.CreateDataset(aDataset: TFdMemTable);
var
  I: integer;
begin
  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('season_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('league_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('league_position', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('league_name', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('league_code', TFieldType.ftWideString, 12, True);
  aDataset.FieldDefs.Add('season_code', TFieldType.ftWideString, 12, True);
  aDataset.FieldDefs.Add('season_des', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('selected', TFieldType.ftBoolean, 0, False);
  aDataset.FieldDefs.Add('promoted', TFieldType.ftSmallint, 0, False);
  aDataset.FieldDefs.Add('playoff', TFieldType.ftSmallint, 0, False);
  aDataset.FieldDefs.Add('relegation', TFieldType.ftSmallint, 0, False);
  aDataset.FieldDefs.Add('champions', TFieldType.ftSmallint, 0, False);
  aDataset.FieldDefs.Add('playout', TFieldType.ftSmallint, 0, False);
  aDataset.FieldDefs.Add('teams', TFieldType.ftSmallint, 0, False);
  aDataset.Open;

  for I := Low(self.items) to High(self.items) do
  begin
    aDataset.Append;
    self.items[I].SaveToDataset(aDataset);
  end;
end;

procedure TJanuaFootballChampionships.SetDefault;
begin
  self.Clear;
end;

procedure TJanuaFootballChampionships.SetFromDataset(dsChampionships: TDataset);
begin
  // FChampionships
  self.Clear;
  if Assigned(dsChampionships) and dsChampionships.Active and (dsChampionships.RecordCount > 0) then
  begin
    dsChampionships.First;
    while not dsChampionships.Eof do
    begin
      SetLength(self.items, self.Count + 1);
      self.items[self.Count - 1].SetFromDataset(dsChampionships);
      dsChampionships.Next;
    end;
  end;

end;

procedure TJanuaFootballChampionships.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }

  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

procedure TJanuaFootballChampionships.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaFootballChampionships.SetSelected(aID: integer);
var
  I: integer;
begin
  for I := Low(items) to High(items) do
  begin
    items[I].Selected := items[I].league_id = aID;
    if items[I].Selected then
      self.ItemIndex := I;
  end;
end;

function TJanuaFootballChampionships.Transform(aTemplate: string): string;
begin

end;

{ TJanuaFootballPlayerCareer }

function TJanuaFootballPlayerCareer.AsJson: string;
var
  temp: TJsonObject;
begin
  temp := self.AsJsonObject;
  Result := temp.ToJSON;
  temp.Free;
end;

function TJanuaFootballPlayerCareer.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'season_id', self.season_id);
  Janua.Core.Json.JsonPair(Result, 'season_des', self.season_des);
  Janua.Core.Json.JsonPair(Result, 'league_id', self.league_id);
  Janua.Core.Json.JsonPair(Result, 'league_name', self.league_name);
  Janua.Core.Json.JsonPair(Result, 'team_id', self.team_id);
  Janua.Core.Json.JsonPair(Result, 'team_name', self.team_name);
  Janua.Core.Json.JsonPair(Result, 'player_id', self.player_id);
  Janua.Core.Json.JsonPair(Result, 'goal', self.goal);
  Janua.Core.Json.JsonPair(Result, 'owngoal', self.owngoal);
  Janua.Core.Json.JsonPair(Result, 'minutes', self.minutes);
  Janua.Core.Json.JsonPair(Result, 'matches', self.matches);
end;

function TJanuaFootballPlayerCareer.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject)
end;

class function TJanuaFootballPlayerCareer.AsMetroTableHeader(aColumns: integer): TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('Stagione');
  Result.AddValue('Campionato');
  Result.AddValue('Squadra');
  Result.AddValue('Pres.');
  Result.AddValue('Minuti');
  Result.AddValue('Gol');
end;

function TJanuaFootballPlayerCareer.AsMetroTableRow: TJanuaMetroTableRow;
begin
  Result.Create(False);
  Result.AddValue(self.season_des);
  Result.AddValue(self.league_name);
  Result.AddValue(self.Team.AsHtmlLink(True));
  // Result.AddValue(self.team_name);
  // Result.AddLink(team_name, '?page=champteam&team_id=' + team_id.ToString + '&season_id=' + season_id.ToString +
  // '&league_id=' + league_id.ToString);
  Result.AddValue(self.matches);
  Result.AddValue(self.minutes);
  Result.AddValue(self.goal);
  {
    Result.AddValue(IfThen(FullName <> '', FullName, self.FirstName + ' ' + self.LastName));
    Result.AddValue(IfThen(BirthDate > 0.0, DateToStr(BirthDate), IfThen(BirthYear > 0, BirthYear.ToString, 'n.d.')));
    Result.AddValue(self.RoleRecord.getName);
    Result.AddValue(self.goal.ToString);
    Result.AddValue(self.SelectedCareer.minutes);
  }
end;

procedure TJanuaFootballPlayerCareer.Clear;
begin
  self := Default (TJanuaFootballPlayerCareer);
  {
    self.season_id := 0;
    self.league_id := 0;
    self.team_id := 0;
    self.player_id := 0;
    self.Role := 0;
    self.playsince := 0;
    self.playuntil := 0;
    goal := 0;
    owngoal := 0;
    lostgoal := 0;
  }
end;

constructor TJanuaFootballPlayerCareer.Create(SeasonID, LeagueID, teamID, playerID: integer;
  aRole, aSince, aUntil: integer);
begin
  self.Clear;
  self.season_id := SeasonID;
  self.league_id := LeagueID;
  self.team_id := teamID;
  self.player_id := playerID;
  self.Role := aRole;
  self.playsince := aSince;
  self.playuntil := aUntil;
end;

procedure TJanuaFootballPlayerCareer.LoadFromJson(aJson: string);
begin

end;

procedure TJanuaFootballPlayerCareer.LoadFromJsonObject(aJsonObject: TJsonObject);
begin

end;

procedure TJanuaFootballPlayerCareer.SetFromDataset(dsCareer: TDataset);
begin
  {
    season_id: integer;
    league_id: integer;
    team_id: integer;
    player_id: integer;
    goal: integer;
    owngoal: integer;
    lostgoal: integer;
    role: integer;
    minutes: integer;
    playsince: integer;
    playuntil: integer;
  }
  self.player_id := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'player_id');
  self.goal := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'goal');
  self.owngoal := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'owngoal');
  self.minutes := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'minutes');
  self.Role := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'role');
  matches := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'matches');
  self.Role := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'role');
  self.minutes := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'minutes');
  self.playsince := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'playsince');
  if playsince = 0 then
    playsince := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'since');
  self.playuntil := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'playuntil');
  if playuntil = 0 then
    playuntil := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'until');

  self.season_id := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'season_id');
  self.season_des := Janua.Core.Functions.GetFieldAsString(dsCareer, 'season_des');
  self.league_id := Janua.Core.Functions.GetFieldAsInteger(dsCareer, 'league_id');
  self.league_name := Janua.Core.Functions.GetFieldAsString(dsCareer, 'league_name');
  self.team_name := Janua.Core.Functions.GetFieldAsString(dsCareer, 'team_name');
  self.Team.SetFromDataset(dsCareer);
end;

{ TJanuaMatchPlayer }

function TJanuaMatchPlayer.AsHtmlTable: string;
begin

end;

function TJanuaMatchPlayer.AsJsonObject: TJsonObject;
begin
  // Player.LoadFromJsonObject(Janua.Core.Json.JsonObject('player', aJson));
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'player', Player.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'team_id', team_id);
  Janua.Core.Json.JsonPair(Result, 'match_id', match_id);
  Janua.Core.Json.JsonPair(Result, 'pos', pos);
  Janua.Core.Json.JsonPair(Result, 'vote', vote);
  Janua.Core.Json.JsonPair(Result, 'minutes', minutes);
  Janua.Core.Json.JsonPair(Result, 'goal', goal);
  Janua.Core.Json.JsonPair(Result, 'owngoal', owngoal);
  Janua.Core.Json.JsonPair(Result, 'lostgoal', lostgoal);
  Janua.Core.Json.JsonPair(Result, 'playsince', playsince);
  Janua.Core.Json.JsonPair(Result, 'playuntil', playuntil);
  Janua.Core.Json.JsonPair(Result, 'sent_off', sent_off);
  Janua.Core.Json.JsonPair(Result, 'injuries', Injuries);
  Janua.Core.Json.JsonPair(Result, 'substitute', substitute);
  Janua.Core.Json.JsonPair(Result, 'substitute_id', substitute_id);
  Janua.Core.Json.JsonPair(Result, 'rowname', RowName);
end;

function TJanuaMatchPlayer.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON);
end;

function TJanuaMatchPlayer.AsMetroPortlet(L: integer): string;
begin

end;

class function TJanuaMatchPlayer.AsMetroTableHeader(aColumns: integer): TJanuaMetroTableRow;
begin
  Result.Create(True);
  Result.AddValue('#'); // 1
  Result.AddValue('giocatore'); // 2
  Result.AddValue('dal'); // 3
  Result.AddValue('al'); // 4
  Result.AddValue('gol'); // 5
  Result.AddValue('Sostituto'); // 6
end;

function TJanuaMatchPlayer.AsMetroTableRow: TJanuaMetroTableRow;
begin
  Result.Create(False);
  Result.AddValue(self.pos.ToString); // 1
  Result.AddValue(self.Player.GetFullNameAsHtml); // 2
  Result.AddValue(self.playsince.ToString); // 3
  Result.AddValue(self.playuntil.ToString); // 4
  Result.AddValue(self.goal.ToString); // 5
  Result.AddValue(self.substitute); // 6
end;

procedure TJanuaMatchPlayer.Clear;
begin
  Player.Clear;
  team_id := 0;
  match_id := 0;
  pos := 0;
  // posizione del giocatore in formazione
  vote := 0.0; // Media dei voti dati al giocatore............
  minutes := 0; // minuti giocati dal giocatore nel match.
  goal := 0; // gol fatti
  owngoal := 0; // autogol fatti
  lostgoal := 0; // gol subiti
  playsince := 0; // presente dal minuto ... default 0
  playuntil := 0; // fino al minuto (90 di solito e meno se sostituito).
  sent_off := 0; // Minuto in cui il giocatore ? stato espulso
  Injuries := 0; // Minuto in cui il giocatore si ? infortunato e, presumibilmente, sostituito
  substitute_id := 0; // eventuale sosituto del giocatore da verificare a livello di Team come Lookup
end;

procedure TJanuaMatchPlayer.CreateDataset(aDataset: TFdMemTable);
begin
  { Player: TJanuaFootballPlayer;
    Player.id : Int64
    Player.FullName : string
    Player.RowName  : string
    Index: integer;
    team_id: integer;
    match_id: int64;
    pos: smallint; // posizione del giocatore in formazione
    vote: Double; // Media dei voti dati al giocatore............
    minutes: smallint; // minuti giocati dal giocatore nel match.
    goal: smallint; // gol fatti
    owngoal: smallint; // autogol fatti
    lostgoal: smallint; // gol subiti
    playsince: smallint; // presente dal minuto ... default 0
    playuntil: smallint; // fino al minuto (90 di solito e meno se sostituito).
    sent_off: smallint; // Minuto in cui il giocatore ? stato espulso
    injuries: smallint; // Minuto in cui il giocatore si ? infortunato e, presumibilmente, sostituito
    substitute: string; // nome del giocatore subentrato
    RowName: string; // Row Name (riassunot dle nome del giocatore);
  }

end;

procedure TJanuaMatchPlayer.LoadFromJson(aJson: TJsonObject);
begin
  self.Clear;
  if aJson = nil then
    raise exception.Create('TJanuaMatchPlayer.LoadFromJson aJson is nil');

  Player.LoadFromJsonObject(Janua.Core.Json.JsonObject('player', aJson));
  Janua.Core.Json.JsonValue(aJson, 'team_id', team_id);
  Janua.Core.Json.JsonValue(aJson, 'match_id', match_id);
  Janua.Core.Json.JsonValue(aJson, 'pos', pos);
  Janua.Core.Json.JsonValue(aJson, 'vote', vote);
  Janua.Core.Json.JsonValue(aJson, 'minutes', minutes);
  Janua.Core.Json.JsonValue(aJson, 'goal', goal);
  Janua.Core.Json.JsonValue(aJson, 'owngoal', owngoal);
  Janua.Core.Json.JsonValue(aJson, 'lostgoal', lostgoal);
  Janua.Core.Json.JsonValue(aJson, 'playsince', playsince);
  Janua.Core.Json.JsonValue(aJson, 'playuntil', playuntil);
  Janua.Core.Json.JsonValue(aJson, 'sent_off', sent_off);
  Janua.Core.Json.JsonValue(aJson, 'injuries', Injuries);
  Janua.Core.Json.JsonValue(aJson, 'substitute', substitute);
  Janua.Core.Json.JsonValue(aJson, 'substitute_id', substitute_id);
  Janua.Core.Json.JsonValue(aJson, 'rowname', RowName);

end;

procedure TJanuaMatchPlayer.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatchPlayer.SaveToDataset(aDataset: TDataset);
begin

end;

procedure TJanuaMatchPlayer.SetDefault;
begin
  self.Clear
end;

procedure TJanuaMatchPlayer.SetFromDataset(dsMatchPlayers: TDataset);
begin
  self.Clear;
  Player.SetFromDataset(dsMatchPlayers);
  Janua.Core.Functions.GetFieldValue(team_id, dsMatchPlayers, 'team_id');
  Janua.Core.Functions.GetFieldValue(match_id, dsMatchPlayers, 'match_id');
  Janua.Core.Functions.GetFieldValue(pos, dsMatchPlayers, 'pos');
  Janua.Core.Functions.GetFieldValue(vote, dsMatchPlayers, 'vote');
  Janua.Core.Functions.GetFieldValue(minutes, dsMatchPlayers, 'minutes');
  Janua.Core.Functions.GetFieldValue(goal, dsMatchPlayers, 'goal');
  Janua.Core.Functions.GetFieldValue(owngoal, dsMatchPlayers, 'owngoal');
  Janua.Core.Functions.GetFieldValue(lostgoal, dsMatchPlayers, 'lostgoal');
  Janua.Core.Functions.GetFieldValue(playsince, dsMatchPlayers, 'since');
  Janua.Core.Functions.GetFieldValue(playuntil, dsMatchPlayers, 'until');
  Janua.Core.Functions.GetFieldValue(sent_off, dsMatchPlayers, 'sent_off');
  Janua.Core.Functions.GetFieldValue(Injuries, dsMatchPlayers, 'injuries');
  Janua.Core.Functions.GetFieldValue(RowName, dsMatchPlayers, 'row_name');
  Janua.Core.Functions.GetFieldValue(self.substitute_id, dsMatchPlayers, 'subst_id');
end;

function TJanuaMatchPlayer.Transform(aTemplate, aTemplateRow: string): string;
begin

end;

{ TJanuaMatchTeam }

procedure TJanuaMatchTeam.AddPlayer(aPlayer: TJanuaMatchPlayer);
begin
  ItemIndex := self.Count;
  // associo ItemIndex all'attuale Count in pratica High + 1 di un array a base 0.
  SetLength(self.Players, Succ(self.ItemIndex));
  aPlayer.index := self.ItemIndex;
  self.Players[self.ItemIndex] := aPlayer;
end;

procedure TJanuaMatchTeam.AddPlayer(aJsonObject: TJsonObject);
var
  aPlayer: TJanuaMatchPlayer;
begin
  aPlayer.LoadFromJson(aJsonObject);
  self.AddPlayer(aPlayer);
end;

procedure TJanuaMatchTeam.Add(aPlayer: TJanuaMatchPlayer);
begin
  self.AddPlayer(aPlayer);
end;

procedure TJanuaMatchTeam.Add(aJson: TJsonObject);
begin
  self.AddPlayer(aJson);
end;

procedure TJanuaMatchTeam.AddPlayer(dsPlayer: TDataset);
var
  aPlayer: TJanuaMatchPlayer;
begin
  aPlayer.SetFromDataset(dsPlayer);
  self.AddPlayer(aPlayer);
end;

function TJanuaMatchTeam.AsHtmlTable: string;
begin
  Result := self.AsMetroTable.AsHtml
end;

function TJanuaMatchTeam.AsJsonObject: TJsonObject;
var
  aPlayer: TJanuaMatchPlayer;
  aArray: TJsonArray;
  aObject: TJsonObject;
  aTeam: string;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'match_id', self.match_id);
  aTeam := IfThen(self.IsType = jmtHome, 'home', 'visitors');
  Janua.Core.Json.JsonPair(Result, 'team', aTeam);
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'name', self.Name);
  Janua.Core.Json.JsonPair(Result, 'goal', self.goal);
  Janua.Core.Json.JsonPair(Result, 'points', self.points);
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);

  aArray := TJsonArray.Create;

  for aPlayer in self.Players do
  begin
    aObject := aPlayer.AsJsonObject;
    aArray.AddElement(aObject);
  end;
  Result.AddPair('players', aArray);

end;

function TJanuaMatchTeam.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaMatchTeam.AsLiveScore(bLongTeam: boolean = False): string;
var
  I, Limit: integer;
  temp: TJanuaMatchTeam;
  aString: IStringBuilder;
begin
  aString := TJanuaStringBuilder.Create;

  aString.Append('<p>');
  aString.Append('<span class="font-' + Janua.Core.Metronics.MetronicColorClass[Janua.Core.Metronics.jmcRed] +
    '"><strong>');
  aString.Append(self.Name + ': ');
  aString.Append('</strong></span>');

  if bLongTeam then
    Limit := self.Count - 1
  else
    Limit := Min(10, self.Count - 1);

  for I := 0 to Limit do
  begin
    aString.Append(IfThen(I = 0, '', ', ') + self.Players[I].Player.LastName);
    if self.Players[I].substitute_id <> 0 then
    begin
      if FindByID(self.Players[I].substitute_id) then
      begin
        aString.Append(' (' + self.Players[I].playuntil.ToString + '? ' + self.Players[ItemIndex].Player.LastName);
        if self.Players[ItemIndex].substitute_id > 0 then
        begin
          temp := self;
          temp.FindByID(self.Players[ItemIndex].substitute_id);
          aString.Append(' (' + Players[I].playuntil.ToString + '? ' + temp.Players[ItemIndex].Player.LastName);
          aString.Append(') ');
        end;
        aString.Append(') ');
      end;
    end;
  end;

  if (self.Count > 11) and (not bLongTeam) then
  begin
    aString.Append('<strong> A DISP: </strong>');
    for I := 11 to self.Count - 1 do
      aString.Append(IfThen(I = 11, '', ', ') + self.Players[I].Player.LastName);
  end;
  aString.Append('</p>');
  Result := aString.ToString;

  {
    while not(qryMatchTeamPlayersPos.AsInteger > 11) and not qryMatchTeamPlayers.eof do
    begin
    formazione := formazione + dmFootball.qrymatchteamplayersfamily_name.AsWideString;
    if qryMatchTeamPlayerssubst_id.AsInteger > 0 then
    begin
    i := qryMatchTeamPlayersplayer_id.AsLargeInt; // memorizzo riga
    minuti := qryMatchTeamPlayersminutes.AsWideString; // leggo minuti sostituzione
    if qryMatchTeamPlayers.Locate('Player_id', qryMatchTeamPlayerssubst_id.AsInteger, []) then
    begin
    formazione := formazione + ' (' + minuti + ''' ' + qrymatchteamplayersfamily_name.AsWideString;
    /// sostituzione annidata del Sosituto .......
    if qryMatchTeamPlayerssubst_id.AsInteger > 0 then
    begin
    if qryMatchTeamAllPlayers.Locate('anagraph_id', qryMatchTeamPlayerssubst_id.AsInteger, []) then
    begin
    formazione := formazione + '; ' + qryMatchTeamPlayersminutes.AsWideString + ''' ' +
    qryMatchTeamAllPlayersfamily_name.AsWideString;
    end;
    end;
    formazione := formazione + ')';
    qryMatchTeamPlayers.Locate('Player_id', i, []);
    end;
    end;

    if not(dmFootball.qryMatchTeamPlayersPos.AsInteger = 11) then
    formazione := formazione + ', ';
  }
end;

function TJanuaMatchTeam.AsMetroPortle(L: integer): string;
begin
  Result := MetroPortletHeader(TMetroIcon.jmiUser, self.Name, MetroHtmlTable(self.AsHtmlTable, 1),
    TMetronicColor.jmcBlue)
end;

function TJanuaMatchTeam.AsMetroTable: TJanuaMetroTable;
var
  aPlayer: TJanuaMatchPlayer;
begin
  Result.Create(True);
  Result.Header := TJanuaMatchPlayer.AsMetroTableHeader(7);
  for aPlayer in self.Players do
    Result.Add(aPlayer.AsMetroTableRow);
end;

procedure TJanuaMatchTeam.Clear;
begin
  SetLength(self.Players, 0);
  self.match_id := 0;
  self.ID := 0;
  self.Name := '';
  self.ItemIndex := -1;
  self.goal := 0;
  self.points := 0;
  self.notes := '';
end;

function TJanuaMatchTeam.Count: integer;
begin
  Result := Length(self.Players);
end;

constructor TJanuaMatchTeam.Create(aType: TJanuaMatchTeamType);
begin
  self.Clear;
  self.IsType := aType;
end;

procedure TJanuaMatchTeam.CreateDataset(aDataset: TFdMemTable);
begin

end;

procedure TJanuaMatchTeam.CreateTeamDataset(aDataset: TFdMemTable);
begin

end;

function TJanuaMatchTeam.FindByID(aID: int64): boolean;
var
  aPlayer: TJanuaMatchPlayer;
begin
  Result := False;
  for aPlayer in self.Players do
    if aPlayer.Player.ID = aID then
    begin
      self.ItemIndex := aPlayer.index;
      Exit(True)
    end;
end;

procedure TJanuaMatchTeam.LoadFromJson(aJson: TJsonObject);
var
  vTest: integer;
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
  aTemp: string;
begin
  self.SetDefault;
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('players');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;
  Janua.Core.Json.JsonValue(aJson, 'match_id', self.match_id);
  Janua.Core.Json.JsonValue(aJson, 'team', aTemp);
  if aTemp = 'home' then
    self.IsType := jmtHome
  else
    self.IsType := jmtVisitors;
  Janua.Core.Json.JsonValue(aJson, 'id', self.ID);
  Janua.Core.Json.JsonValue(aJson, 'name', self.Name);
  Janua.Core.Json.JsonValue(aJson, 'goal', self.goal);
  Janua.Core.Json.JsonValue(aJson, 'points', self.points);
  Janua.Core.Json.JsonValue(aJson, 'count', vTest);
  SetSubstitute;
end;

procedure TJanuaMatchTeam.PopulateTeamDataset(aDataset: TDataset);
var
  I: integer;
begin
  if aDataset <> nil then
  begin
    if not aDataset.Active and (aDataset is TFdMemTable) then
      self.CreateTeamDataset(aDataset as TFdMemTable);

    if aDataset.Active then
    begin
      for I := Low(self.Players) to High(self.Players) do
      begin
        aDataset.Append;
        self.Players[I].SaveToDataset(aDataset);
      end;
    end;

  end;
end;

procedure TJanuaMatchTeam.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatchTeam.SaveToDataset(aDataset: TDataset);
begin

end;

function TJanuaMatchTeam.SelectedPlayer: TJanuaMatchPlayer;
begin
  Result := self.Players[ItemIndex]
end;

procedure TJanuaMatchTeam.SetSubstitute;
var
  I: integer;
begin
  for I := Low(self.Players) to High(self.Players) do
    if (self.Players[I].substitute_id <> 0) and (FindByID(Players[I].substitute_id)) then
      self.Players[I].substitute := self.SelectedPlayer.Player.LastName;
end;

procedure TJanuaMatchTeam.SetDefault;
begin
  match_id := 0;
  IsType := TJanuaMatchTeamType.jmtHome;
  ID := 0;
  Name := '';
  SetLength(Players, 0); // : array of TJanuaMatchPlayer;
  ItemIndex := 0;
  goal := 0;
  points := 0;
end;

procedure TJanuaMatchTeam.SetFromDataset(dsMatch, dsMatchTeamPlayers: TDataset);
begin
  Janua.Core.Functions.GetFieldValue(match_id, dsMatch, 'match_id');
  case self.IsType of
    jmtHome:
      begin
        Janua.Core.Functions.GetFieldValue(ID, dsMatch, 'home_team_id');
        Janua.Core.Functions.GetFieldValue(self.Name, dsMatch, 'home_team');
        Janua.Core.Functions.GetFieldValue(self.goal, dsMatch, 'goal_home');
        Janua.Core.Functions.GetFieldValue(self.points, dsMatch, 'points_home');
        Janua.Core.Functions.GetFieldValue(self.notes, dsMatch, 'home_notes');
      end;
    jmtVisitors:
      begin
        Janua.Core.Functions.GetFieldValue(ID, dsMatch, 'visitors_team_id');
        Janua.Core.Functions.GetFieldValue(self.Name, dsMatch, 'visitors_team');
        Janua.Core.Functions.GetFieldValue(self.goal, dsMatch, 'goal_visitor');
        Janua.Core.Functions.GetFieldValue(self.points, dsMatch, 'points_visitors');
        Janua.Core.Functions.GetFieldValue(self.notes, dsMatch, 'visitors_notes');
      end;
  end;

  if Assigned(dsMatchTeamPlayers) and dsMatchTeamPlayers.Active and (dsMatchTeamPlayers.RecordCount > 0) then
  begin
    dsMatchTeamPlayers.First;
    while not dsMatchTeamPlayers.Eof do
    begin
      self.AddPlayer(dsMatchTeamPlayers);
      dsMatchTeamPlayers.Next;
    end;
  end;
  SetSubstitute;

  {
    Players: array of TJanuaMatchPlayer;
    ItemIndex: integer;
  }

end;

function TJanuaMatchTeam.Transform(aTemplate, aTemplateRow: string): string;
begin

end;

{ TJanuaHealthNotification }

function TJanuaFootballNotification.GetAsJsonObject: TJsonObject;
begin
  { id: int64;
    title: string;
    notification: string;
    bookingID: int64;
    UserID: integer;
    date: TDateTime;
    read: boolean;
  }
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'type_id', self.type_id);
  Janua.Core.Json.JsonPair(Result, 'title', self.Title);
  Janua.Core.Json.JsonPair(Result, 'notification', self.notification);
  Janua.Core.Json.JsonPair(Result, 'bookingid', self.bookingID);
  Janua.Core.Json.JsonPair(Result, 'userid', self.UserID);
  Janua.Core.Json.JsonPair(Result, 'date', self.date);
  Janua.Core.Json.JsonPair(Result, 'read', self.read);
  Janua.Core.Json.JsonPair(Result, 'level', self.level);
  Janua.Core.Json.JsonPair(Result, 'solved', self.solved);
end;

function TJanuaFootballNotification.getId64: string;
begin
  Result := Encode64(self.ID.ToString)
end;

function TJanuaFootballNotification.GetNotificationID: integer;
begin
  Result := -1;
  { TODO -oRiccardo -cImplment Method : Implementare TJanuaHealthNotification.GetNotificationID }
end;

procedure TJanuaFootballNotification.LoadFromDataset(aDataset: TDataset);
begin
  {
    SELECT n.id, n.type_id, n.title, n.message, n.db_schema_id, n.db_user_id, n.datetime,
    read, booking_id, solved, from_user_id, booking_action, t.level, t.type_name
    FROM health.notifications n, health.notifications_types t
    where t.id = n.type_id
    order by read, t.level
  }
  if Assigned(aDataset) then
  begin
    Janua.Core.Functions.GetFieldValue(ID, aDataset, 'id');
    Janua.Core.Functions.GetFieldValue(type_id, aDataset, 'type_id');
    Janua.Core.Functions.GetFieldValue(Title, aDataset, 'title');
    Janua.Core.Functions.GetFieldValue(notification, aDataset, 'message');
    Janua.Core.Functions.GetFieldValue(bookingID, aDataset, 'booking_id');
    Janua.Core.Functions.GetFieldValue(UserID, aDataset, 'db_user_id');
    Janua.Core.Functions.GetFieldValue(date, aDataset, 'datetime');
    Janua.Core.Functions.GetFieldValue(read, aDataset, 'read');
    Janua.Core.Functions.GetFieldValue(level, aDataset, 'level');
    Janua.Core.Functions.GetFieldValue(solved, aDataset, 'solved');
  end;
end;

procedure TJanuaFootballNotification.LoadFromJsonObject(const Value: TJsonObject);
begin
  if Assigned(Value) then
  begin
    Janua.Core.Json.JsonValue(Value, 'id', self.ID);
    Janua.Core.Json.JsonValue(Value, 'type_id', self.type_id);
    Janua.Core.Json.JsonValue(Value, 'title', self.Title);
    Janua.Core.Json.JsonValue(Value, 'notification', self.notification);
    Janua.Core.Json.JsonValue(Value, 'bookingid', self.bookingID);
    Janua.Core.Json.JsonValue(Value, 'userid', self.UserID);
    Janua.Core.Json.JsonValue(Value, 'date', self.date);
    Janua.Core.Json.JsonValue(Value, 'read', self.read);
    Janua.Core.Json.JsonValue(Value, 'level', self.level);
    Janua.Core.Json.JsonValue(Value, 'solved', self.solved);
  end;
end;

procedure TJanuaFootballNotification.SaveToDataset(aDataset: TDataset);
begin
  if Assigned(aDataset) then
  begin
    aDataset.Edit;
    Janua.Core.Functions.SetFieldValue(ID, aDataset, 'id');
    Janua.Core.Functions.SetFieldValue(type_id, aDataset, 'type_id');
    Janua.Core.Functions.SetFieldValue(Title, aDataset, 'title');
    Janua.Core.Functions.SetFieldValue(notification, aDataset, 'message');
    Janua.Core.Functions.SetFieldValue(bookingID, aDataset, 'booking_id');
    Janua.Core.Functions.SetFieldValue(UserID, aDataset, 'db_user_id');
    Janua.Core.Functions.SetFieldValue(date, aDataset, 'datetime');
    Janua.Core.Functions.SetFieldValue(read, aDataset, 'read');
    Janua.Core.Functions.SetFieldValue(level, aDataset, 'level');
    Janua.Core.Functions.SetFieldValue(solved, aDataset, 'solved');
    aDataset.Post;
  end;
end;

procedure TJanuaFootballNotification.setId64(const Value: string);
begin
  self.ID := Decode64(Value).ToInt64;
end;

procedure TJanuaFootballNotification.SetNotificationType(const Value: TJanuaFootballNotificationType);
begin
  FNotificationType := Value;
end;

{ TJanuaHealthNotifications }

procedure TJanuaFootballNotifications.Add(aObject: TJsonObject);
var
  I: integer;
begin
  I := self.AddItem;
  self.items[I].LoadFromJsonObject(aObject);
end;

procedure TJanuaFootballNotifications.Add(aDataset: TDataset);
var
  I: integer;
begin
  I := self.AddItem;
  self.items[I].LoadFromDataset(aDataset);
end;

function TJanuaFootballNotifications.AddItem: integer;
begin
  SetLength(self.items, self.Count + 1);
  Result := self.Count - 1;
end;

function TJanuaFootballNotifications.AsHtml(aTemplate: string): string;
begin

end;

function TJanuaFootballNotifications.AsHtml: string;
var
  aList: TStrings;
  aNotification: TJanuaFootballNotification;
begin
  aList := TStringList.Create;
  try
    aList.Add('<div class="portlet light bordered">');
    aList.Add('    <div class="portlet-title">');
    aList.Add('        <div class="caption">');
    aList.Add('            <i class="icon-list font-blue"></i>');
    aList.Add('            <span class="caption-subject font-blue sbold uppercase">Lista Attivit&agrave;</span>');
    aList.Add('        </div>');
    aList.Add('        <div class="actions">');
    aList.Add('            <div class="btn-group btn-group-devided" data-toggle="buttons">');
    aList.Add('</div>');
    aList.Add('        </div>');
    aList.Add('    </div>');
    aList.Add('    <div class="portlet-body">');
    aList.Add('        <div class="table-scrollable">');
    aList.Add('            <table class="table table-hover">');
    aList.Add('                <thead>');
    aList.Add('                    <tr>');
    aList.Add('                        <th> Data </th>');
    aList.Add('                        <th> Notifica</th>');
    aList.Add('                    </tr>');
    aList.Add('                </thead>');
    aList.Add('                <tbody>');
    for aNotification in self.items do
    begin
      aList.Add('                    <tr>');
      aList.Add('                        <td>' + FormatDateTime('dd/mm/yyyy', aNotification.date) + ' </td> ');
      aList.Add('                        <td> ' + aNotification.Title + ' </td>');
      aList.Add('                    </tr>');
    end;
    aList.Add('                </tbody>');
    aList.Add('            </table>');
    Result := aList.Text;
  finally
    aList.DisposeOf
  end;
end;

procedure TJanuaFootballNotifications.Clear;
begin
  SetLength(self.items, 0);
end;

function TJanuaFootballNotifications.FindItemByID(aID: int64): boolean;
var
  a: TJanuaFootballNotification;
begin
  Result := False;
  for a in self.items do
    if a.ID = aID then
    begin
      Result := True;
      self.FSelectedItem := a;
      Exit
    end;

end;

function TJanuaFootballNotifications.GetAsJsonObject: TJsonObject;
var
  aItem: TJanuaFootballNotification;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  aArray := TJsonArray.Create;
  for aItem in self.items do
    aArray.AddElement(aItem.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'items', aArray);
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);
end;

function TJanuaFootballNotifications.GetCount: integer;
begin
  Result := Length(self.items);
end;

function TJanuaFootballNotifications.GetUnread: integer;
var
  a: TJanuaFootballNotification;
begin
  Result := 0;
  if self.Count > 0 then
    for a in self.items do
      if not a.read then
        Inc(Result);

end;

procedure TJanuaFootballNotifications.LoadFromDataset(aDataset: TDataset);
begin
  self.Clear;
  if Assigned(aDataset) and aDataset.Active and (aDataset.RecordCount > 0) then
  begin
    aDataset.First;
    while not aDataset.Eof do
    begin
      self.Add(aDataset);
      aDataset.Next;
    end;
  end;

end;

procedure TJanuaFootballNotifications.LoadFromJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  vTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  Janua.Core.Json.JsonValue(Value, 'count', vTest);
  if vTest > 0 then
  begin
    aPair := Value.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;
end;

procedure TJanuaFootballNotifications.SaveToDataset(aDataset: TDataset);
begin

end;

procedure TJanuaFootballNotifications.SetSelectedItem(const Value: TJanuaFootballNotification);
begin
  FSelectedItem := Value;
end;

{ TJanuaMatchDetail }

function TJanuaMatchDetail.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'daynumber', self.DayNumber);
  Janua.Core.Json.JsonPair(Result, 'championship', self.Championship.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'match', self.match.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'hometeam', self.hometeam.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'visitorsteam', self.visitorsteam.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'events', self.events.AsJsonObject);
end;

function TJanuaMatchDetail.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaMatchDetail.AsLiveScore(bShort: boolean = False; bLongTeam: boolean = False): string;
var
  Title: string;
  HomeGoals, VisitorsGoals, OtherEvents, goals, Status, StatusXS: string;
  aList: IStringBuilder;
begin
  if self.events.Count > 0 then
  begin
    HomeGoals := IfThen(self.match.goal_home > 0, self.events.goals(self.hometeam.ID), '');
    VisitorsGoals := IfThen(self.match.goal_visitors > 0, self.events.goals(self.visitorsteam.ID), '');
    OtherEvents := events.OtherEvents;
  end;
  goals := self.match.goal_home.ToString + ' - ' + self.match.goal_visitors.ToString;

  case self.match.level of
    1:
      begin
        Status := '<h1 class=" text-center font-' + MetronicColorClass[TMetronicColor.jmcPurple] + ' ">' + 'LIVE'
          + '</h1>';
        StatusXS := '<h4 class=" text-center font-' + MetronicColorClass[TMetronicColor.jmcPurple] + ' ">' + 'LIVE'
          + '</h4>';
      end;
    2:
      begin
        Status := '<h1 class=" text-center font-' + MetronicColorClass[TMetronicColor.jmcGreen] + ' ">' + 'FINALE'
          + '</h1>';
        StatusXS := '<h4 class=" text-center font-' + MetronicColorClass[TMetronicColor.jmcGreen] + ' ">' + 'FINALE'
          + '</h4>';
      end;
    {
      aList.AppendLine('<p><span class=" text-center font-' + MetronicColorClass[TMetronicColor.jmcGreen] + ' ">' +
      'Partita Terminata' + '</span></p>');
    }
    3:
      begin
        Status := '<h4 class=" text-center  font-' + MetronicColorClass[TMetronicColor.jmcBlue] + ' ">' +
          self.match.DateTimeString + '</h4>';
        StatusXS := '<p class=" text-center  font-' + MetronicColorClass[TMetronicColor.jmcBlue] + ' "><strong>' +
          self.match.DateTimeString + '</strong</p>';
      end;
    {
      aList.AppendLine(Tag('p', '<span class=" font-' + MetronicColorClass[TMetronicColor.jmcBlue] + '">' +
      'Partita da Giocare' + '</span>', ''));
    }
  end;

  if bShort then
    Result := IfThen(match.goal_home > 0, hometeam.Name + ': ' + events.goals(self.hometeam.ID) + '<br>', '') +
      IfThen(match.goal_visitors > 0, visitorsteam.Name + ': ' + events.goals(self.visitorsteam.ID) + '<br>', '')
  else
  begin
    aList := TJanuaStringBuilder.Create;

    aList.AppendLine('<div class="row hidden-xs hidden-xs-down">');
    // inizio row
    // ---------------Home
    aList.AppendLine('  <div class="col-sm-5">'); // prima colonna home in casa align right
    aList.AppendLine('<h3 class="text-right"> <strong>' + self.hometeam.Name + '</strong></h3>');
    aList.AppendLine('<p class="text-right">' + HomeGoals + '</p>');
    aList.AppendLine('</div> <!-- end col home -->');
    // termino col home
    // ---------------Goals
    aList.AppendLine('  <div class="col-sm-2">'); // prima colonna gol in casa align right
    aList.AppendLine('<h1 class="text-center"> <strong>' + goals + '</strong></h1>');
    aList.AppendLine(Status);
    aList.AppendLine('</div> <!-- end col gol -->'); // termino col home
    // ---------------Visitors
    aList.AppendLine('  <div class="col-sm-5">'); // prima colonna home in casa align right
    aList.AppendLine(Tag('h3', '<strong>' + self.visitorsteam.Name + '</strong>', ''));
    aList.AppendLine('<p class="text-left">' + VisitorsGoals + '</p>');
    aList.AppendLine('</div> <!-- end col visitors -->'); // termino col visitor
    // ------------------------
    aList.AppendLine('</div> <!-- end row -->'); // termino row

    // -------------------------------------------- XS --------------------------------------------------

    aList.AppendLine('<div class="row hidden-sm hidden-md hidden-lg hidden-sm-up">'); // inizio row
    aList.AppendLine('<div class="row">'); // Row Squadre
    // ---------------Home
    aList.AppendLine('  <div class="col-xs-6">'); // prima colonna home in casa align right
    aList.AppendLine('<p class="text-right"> <strong>' + self.hometeam.Name + '</strong></p>');
    aList.AppendLine('<p class="text-right">' + HomeGoals + '</p>');
    aList.AppendLine('</div> <!-- end col home -->');
    // termino col home
    // ---------------Visitors
    aList.AppendLine('  <div class="col-xs-6">'); // prima colonna home in casa align right
    aList.AppendLine(Tag('p', '<strong>' + self.visitorsteam.Name + '</strong>', ''));
    aList.AppendLine('<p class="text-left">' + VisitorsGoals + '</p>');
    aList.AppendLine('</div> <!-- end col visitors -->'); // termino col visitor
    // ------------------------
    aList.AppendLine('</div> <!-- end row Home-Visitors -->'); // termino row
    // ---------------Goals
    aList.AppendLine('  <div class="col-xs-12 col-sm-12">'); // prima colonna gol in casa align right
    aList.AppendLine('<h1 class="text-center"> <strong>' + goals + '</strong></h1>');
    aList.AppendLine(StatusXS);
    aList.AppendLine('</div> <!-- end col gol -->'); // termino col home
    // ------------------------
    aList.AppendLine('</div> <!-- end row -->'); // termino row

    {
      case self.match.level of
      1:
      aList.AppendLine(Tag('p', '<span class=" font-' + MetronicColorClass[TMetronicColor.jmcRed] + ' ">' +
      'Diretta Live' + '</span>', ''));
      2:
      aList.AppendLine('<p><span class=" font-' + MetronicColorClass[TMetronicColor.jmcGreen] + ' ">' +
      'Partita Terminata' + '</span></p>');
      3:
      aList.AppendLine(Tag('p', '<span class=" font-' + MetronicColorClass[TMetronicColor.jmcBlue] + '">' +
      'Partita da Giocare' + '</span>', ''));
      end;
    }
    // aList.AppendLine(HomeGoals + ' ' + VisitorsGoals + '<br>' + OtherEvents + '<br>');
    aList.AppendLine(self.hometeam.AsLiveScore(bLongTeam));
    aList.AppendLine(self.visitorsteam.AsLiveScore(bLongTeam));

    Result := aList.ToString;
  end;

end;

procedure TJanuaMatchDetail.Clear;
begin
  // imposto Home Team come 'Home' usandoAsLiveScore il type della classe
  self.hometeam.Clear;
  self.hometeam.IsType := jmtHome;
  // imposto Visitors Team come 'Home' usando il type della classe
  self.visitorsteam.Clear;
  self.visitorsteam.IsType := jmtVisitors;
end;

procedure TJanuaMatchDetail.LoadFromJson(aJson: TJsonObject);
begin
  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('campionship', aJson));
  self.match.SetFromJson(Janua.Core.Json.JsonObject('match', aJson));
  self.hometeam.LoadFromJson(Janua.Core.Json.JsonObject('hometeam', aJson));
  self.visitorsteam.LoadFromJson(Janua.Core.Json.JsonObject('visitorsteam', aJson));
end;

procedure TJanuaMatchDetail.PopulateDatasets(dsMatchDetail, dsHomeTeam, dsVisitorsTeam, dsEvents: TFdMemTable);
begin
  self.match.CreateDataset(dsMatchDetail);
  self.match.SaveToDataset(dsMatchDetail);
  self.hometeam.PopulateTeamDataset(dsHomeTeam);
  self.visitorsteam.PopulateTeamDataset(dsVisitorsTeam);
  self.events.PopulateDataset(dsEvents);
end;

procedure TJanuaMatchDetail.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatchDetail.SetFromDataset(dsChampionship, dsMatchDeail, dsHomeTeam, dsVisitorsTeam,
  dsEvents: TDataset);
var
  I: integer;
begin
  self.Clear;
  Janua.Core.Functions.GetFieldValue(self.ID, dsMatchDeail, 'match_id');
  Janua.Core.Functions.GetFieldValue(self.DayNumber, dsMatchDeail, 'match_day_number');
  self.Championship.SetFromDataset(dsChampionship);
  self.match.SetFromDataset(dsMatchDeail);
  self.hometeam.SetFromDataset(dsMatchDeail, dsHomeTeam);
  self.visitorsteam.SetFromDataset(dsMatchDeail, dsVisitorsTeam);
  self.events.SetFromDataset(dsEvents);

  for I := Low(events.items) to High(events.items) do
    self.events.items[I].LookupPlayer(self.hometeam, self.visitorsteam);

end;

procedure TJanuaMatchDetail.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatchDetail.SetFromJson(aJsonObject: TJsonObject);
var
  temp: TJsonObject;
begin
  self.Clear;
  Janua.Core.Json.JsonValue(aJsonObject, 'id', self.ID);
  Janua.Core.Json.JsonValue(aJsonObject, 'daynumber', self.DayNumber);
  temp := Janua.Core.Json.JsonObject('championship', aJsonObject);
  self.Championship.SetFromJson(temp);
  temp := Janua.Core.Json.JsonObject('match', aJsonObject);
  self.match.SetFromJson(temp);
  temp := Janua.Core.Json.JsonObject('events', aJsonObject);
  self.events.LoadFromJson(temp);
  self.hometeam.LoadFromJson(Janua.Core.Json.JsonObject('hometeam', aJsonObject));
  self.visitorsteam.LoadFromJson(Janua.Core.Json.JsonObject('visitorsteam', aJsonObject));
end;

function TJanuaMatchDetail.Transform(aTemplate, aTemplateRow: string): string;
begin

end;

{ TJanuaMatchEvent }

function TJanuaMatchEvent.AsJsonObject: TJsonObject;
begin
  { match_id := 0;
    team_id := 0;
    player_id := 0;
    Event.EventType := TJanuaMatchEventType.jmtNone;
    self.Player.Clear;
    minute := 0;
    Value := 0;
    row_id := 0;
    notes := '';
    favor_team_id := 0;
    teamplayer := '';
    family_name := ''; }

  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'match_id', self.match_id);
  Janua.Core.Json.JsonPair(Result, 'team_id', self.team_id);
  Janua.Core.Json.JsonPair(Result, 'player_id', self.player_id);
  Janua.Core.Json.JsonPair(Result, 'player', self.Player.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'minute', self.minute);
  Janua.Core.Json.JsonPair(Result, 'Value', self.Value);
  Janua.Core.Json.JsonPair(Result, 'row_id', self.row_id);
  Janua.Core.Json.JsonPair(Result, 'notes', self.notes);
  Janua.Core.Json.JsonPair(Result, 'favor_team_id', self.favor_team_id);
  Janua.Core.Json.JsonPair(Result, 'teamplayer', self.teamplayer);
  Janua.Core.Json.JsonPair(Result, 'family_name', self.family_name);
  Janua.Core.Json.JsonPair(Result, 'event', self.Event.Definition);
  Janua.Core.Json.JsonPair(Result, 'event_id', self.Event.ID);
end;

function TJanuaMatchEvent.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaMatchEvent.AsMetroTableRow: TJanuaMetroTableRow;
begin
  Result.AddValue(self.minute);
  Result.AddValue(self.Event.getDef);
  Result.AddValue(self.teamplayer);
end;

procedure TJanuaMatchEvent.Clear;
begin
  match_id := 0;
  team_id := 0;
  player_id := 0;
  Event.EventType := TJanuaMatchEventType.jmtNone;
  self.Player.Clear;
  minute := 0;
  Value := 0;
  row_id := 0;
  notes := '';
  favor_team_id := 0;
  teamplayer := '';
  family_name := '';
end;

procedure TJanuaMatchEvent.CreateDataset(aDataset: TFdMemTable);
begin
  { Event: TJanuaMatchEventDef;
    Player: TJanuaMatchPlayer;
    Team: TJanuaMatchTeam;
  }
  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('match_id', TFieldType.ftLargeint, 0, True);
  aDataset.FieldDefs.Add('team_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('player_id', TFieldType.ftInteger, 0, True);
  aDataset.FieldDefs.Add('definition', TFieldType.ftWideString, 20, True);
  aDataset.FieldDefs.Add('minute', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('Value', TFieldType.ftSmallint, 0, False);
  aDataset.FieldDefs.Add('row_id', TFieldType.ftLargeint, 0, True);
  aDataset.FieldDefs.Add('notes', TFieldType.ftWideString, 128, False);
  aDataset.FieldDefs.Add('teamplayer', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('family_name', TFieldType.ftWideString, 128, True);
  aDataset.FieldDefs.Add('favor_team_id', TFieldType.ftInteger, 0, True);
  aDataset.Open;
end;

procedure TJanuaMatchEvent.LoadFromJson(aJson: TJsonObject);
var
  temp: string;
  oTemp: TJsonObject;
begin
  self.Clear;
  Janua.Core.Json.JsonValue(aJson, 'match_id', self.match_id);
  Janua.Core.Json.JsonValue(aJson, 'team_id', self.team_id);
  Janua.Core.Json.JsonValue(aJson, 'player_id', self.player_id);
  oTemp := Janua.Core.Json.JsonObject('player', aJson);
  self.Player.LoadFromJson(oTemp);
  // Janua.Core.Json.JsonValue(aJson, 'player', self.Player.AsJsonObject);
  Janua.Core.Json.JsonValue(aJson, 'minute', self.minute);
  Janua.Core.Json.JsonValue(aJson, 'Value', self.Value);
  Janua.Core.Json.JsonValue(aJson, 'row_id', self.row_id);
  Janua.Core.Json.JsonValue(aJson, 'notes', self.notes);
  Janua.Core.Json.JsonValue(aJson, 'favor_team_id', self.favor_team_id);
  Janua.Core.Json.JsonValue(aJson, 'teamplayer', self.teamplayer);
  Janua.Core.Json.JsonValue(aJson, 'family_name', self.family_name);
  Janua.Core.Json.JsonValue(aJson, 'event', temp);
  self.Event.Definition := temp;
  // Janua.Core.Json.JsonValue(aJson, 'event', self.Event.Definition);
  // Janua.Core.Json.JsonValue(aJson, 'event_id', self.Event.id);
end;

procedure TJanuaMatchEvent.LookupPlayer(aHomeTeam, aVisitorsTeam: TJanuaMatchTeam);
begin
  if aHomeTeam.FindByID(self.player_id) then
    self.Player := aHomeTeam.Players[aHomeTeam.ItemIndex]
  else if aVisitorsTeam.FindByID(self.player_id) then
    self.Player := aVisitorsTeam.Players[aVisitorsTeam.ItemIndex]

end;

procedure TJanuaMatchEvent.LookupTeam(aHomeTeam, aVisitorTeam: TJanuaMatchTeam);
begin
  if aHomeTeam.ID = self.team_id then
    self.Team := aHomeTeam
  else
    self.Team := aVisitorTeam;

end;

procedure TJanuaMatchEvent.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatchEvent.SaveToDataset(dsMatchEvents: TDataset);
begin
  dsMatchEvents.Edit;
  Janua.Core.Functions.SetFieldValue(match_id, dsMatchEvents, 'match_id');
  Janua.Core.Functions.SetFieldValue(team_id, dsMatchEvents, 'team_id');
  Janua.Core.Functions.SetFieldValue(player_id, dsMatchEvents, 'player_id');
  Janua.Core.Functions.SetFieldValue(minute, dsMatchEvents, 'minute');
  Janua.Core.Functions.SetFieldValue(Value, dsMatchEvents, 'Value');
  Janua.Core.Functions.SetFieldValue(row_id, dsMatchEvents, 'row_id');
  Janua.Core.Functions.SetFieldValue(notes, dsMatchEvents, 'notes');
  Janua.Core.Functions.SetFieldValue(favor_team_id, dsMatchEvents, 'favor_team_id');
  Janua.Core.Functions.SetFieldValue(teamplayer, dsMatchEvents, 'teamplayer');
  Janua.Core.Functions.SetFieldValue(family_name, dsMatchEvents, 'family_name');
  Janua.Core.Functions.SetFieldValue(Event.ID, dsMatchEvents, 'event_id');
  Janua.Core.Functions.SetFieldValue(Event.Definition, dsMatchEvents, 'Definition');
  dsMatchEvents.Post;
end;

procedure TJanuaMatchEvent.SetFromDataset(dsMatchEvents: TDataset);
begin
  self.Clear;
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'match_id', self.match_id);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'team_id', self.team_id);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'player_id', self.player_id);
  // riguardo al discorso 'player' va fatto un discorso a parte in quanto va 'caricato' il giocatore da una lista
  // Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'Player', self.Player.AsJsonObject);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'minute', self.minute);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'Value', self.Value);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'row_id', self.row_id);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'notes', self.notes);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'favor_team_id', self.favor_team_id);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'teamplayer', self.teamplayer);
  Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'family_name', self.family_name);
  self.Event.ID := Janua.Core.Functions.GetFieldAsInteger(dsMatchEvents, 'event_id');
  // self.Player.SetFromDataset(dsMatchEvents);
  // Janua.Core.Functions.DatasetFieldValue(dsMatchEvents, 'event_id', self.Event.ID);
end;

procedure TJanuaMatchEvent.SetPlayer(const Value: TJanuaMatchPlayer);
begin
  FPlayer := Value;
end;

procedure TJanuaMatchEvent.SetTeam(const Value: TJanuaMatchTeam);
begin
  FTeam := Value;
end;

function TJanuaMatchEvent.ShortDescription: string;
begin
  Result := '';
  Result := Result + self.minute.ToString + '?' + ' - ';
  Result := Result + self.Event.Definition + ' - ';
  Result := Result + self.Team.Name;
end;

function TJanuaMatchEvent.Transform(aTemplate, aTemplateRow: string): string;
begin

end;

{ TJanuaMatchEvents }

procedure TJanuaMatchEvents.Add(aEvent: TJanuaMatchEvent);
begin
  self.ItemIndex := self.Count;
  SetLength(self.items, Succ(self.ItemIndex));
  self.items[self.ItemIndex] := aEvent
end;

procedure TJanuaMatchEvents.Add(aObject: TJsonObject);
var
  aEvent: TJanuaMatchEvent;
begin
  aEvent.LoadFromJson(aObject);
  self.Add(aEvent);
end;

procedure TJanuaMatchEvents.Add(aDatasetRecord: TDataset);
var
  aEvent: TJanuaMatchEvent;
begin
  aEvent.SetFromDataset(aDatasetRecord);
  self.Add(aEvent);
end;

function TJanuaMatchEvents.AsHtmlTable: string;
var
  aTable: TJanuaMetroTable;
  aEvent: TJanuaMatchEvent;
begin

  for aEvent in self.items do
    aTable.Add(aEvent.AsMetroTableRow);
end;

function TJanuaMatchEvents.AsJsonObject: TJsonObject;
var
  aEvent: TJanuaMatchEvent;
  aEvents: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);

  aEvents := TJsonArray.Create;
  for aEvent in self.items do
    aEvents.AddElement(aEvent.AsJsonObject);
  Result.AddPair('items', aEvents);
end;

function TJanuaMatchEvents.AsJsonPretty: string;
begin
  Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

procedure TJanuaMatchEvents.Clear;
begin
  SetLength(self.items, 0);
  self.ItemIndex := -1;
end;

function TJanuaMatchEvents.Count: integer;
begin
  Result := Length(self.items);
end;

function TJanuaMatchEvents.goals(aTeamID: integer): string;
var
  aEvent: TJanuaMatchEvent;
  I: integer;
begin
  // occorre conoscere il Player che ha realizzato il gol o l'evento ............................
  Result := '';
  I := 0;
  for aEvent in self.items do
  begin
    if (aEvent.Event.EventType in [jmtGoal, jmtOwnGoal, jmtPenalty]) and (aEvent.favor_team_id = aTeamID) then
    begin
      Result := Result + IfThen(I > 0, '<br /> ', '') + aEvent.minute.ToString + '?' + ' ' + aEvent.family_name +
        IfThen(aEvent.Event.EventType = jmtGoal, ' ', '(' + aEvent.Event.Definition + ')');
      Inc(I);
    end;
  end;
end;

procedure TJanuaMatchEvents.LoadFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  if aJson = nil then
    raise exception.Create('TJanuaMatchEvents.LoadFromJson Error Json Object is nil');
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end
    else
      raise exception.Create('TJanuaMatchEvents.LoadFromJson Count > 0 but Items list is null');
  end;
end;

function TJanuaMatchEvents.OtherEvents: string;
var
  aEvent: TJanuaMatchEvent;
  I: integer;
begin
  // occorre conoscere il Player che ha realizzato il gol o l'evento ............................
  Result := '';
  I := 0;
  for aEvent in self.items do
  begin
    if not(aEvent.Event.EventType in [jmtGoal, jmtOwnGoal, jmtPenalty]) then
    begin
      Result := Result + IfThen(I > 0, ', ', '') + aEvent.minute.ToString + '?' + ' ' + aEvent.teamplayer +
        IfThen(aEvent.Event.EventType = jmtGoal, ' ', '(' + aEvent.Event.Definition + ')');
      Inc(I);
    end;
  end;
end;

procedure TJanuaMatchEvents.PopulateDataset(aDataset: TFdMemTable);
var
  aMatchEvent: TJanuaMatchEvent;
begin
  aMatchEvent.Clear;
  aMatchEvent.CreateDataset(aDataset);
  for aMatchEvent in self.items do
  begin
    aDataset.Append;
    aMatchEvent.SaveToDataset(aDataset);
  end;
end;

procedure TJanuaMatchEvents.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaMatchEvents.SetFromDataset(dsMatchEvents: TDataset);
begin
  if Assigned(dsMatchEvents) and dsMatchEvents.Active and (dsMatchEvents.RecordCount > 0) then
  begin
    dsMatchEvents.First;
    while not dsMatchEvents.Eof do
    begin
      self.Add(dsMatchEvents);
      dsMatchEvents.Next;
    end;
  end;
end;

function TJanuaMatchEvents.Transform(aTemplate, aTemplateRow: string): string;
begin

end;

function TJanuaMatchEvents.VisitorsGoals: string;
begin

end;

{ TJanuaMatchEventDef }

constructor TJanuaMatchEventDef.Create(aID: integer);
begin
  self.setID(aID);
end;

function TJanuaMatchEventDef.getDef: string;
begin
  Result := JanuaMatchEventDefinitions[self.EventType]
end;

function TJanuaMatchEventDef.getID: integer;
begin
  Result := JanuaMatchEventIDs[self.EventType]
end;

procedure TJanuaMatchEventDef.setDef(const Value: string);
begin
  // EventType := GetEventTypeByDef(Value);
  Guard.CheckTrue(TEnumConvertor<TJanuaMatchEventType>.TryFromStringArray(Value, JanuaMatchEventDefinitions, EventType),
    'TJanuaMatchEventDef.setID Out of Range: ' + Value);
end;

procedure TJanuaMatchEventDef.setID(const Value: integer);
begin
  // self.EventType := GetEventTypeByID(Value);
  Guard.CheckTrue(TEnumConvertor<TJanuaMatchEventType>.TryFromInteger(Value, self.EventType),
    'TJanuaMatchEventDef.setID Out of Range: ' + Value.ToString);

end;

{ TTJanuaChampionshipSummary }

function TJanuaChampionshipSummary.AsHtmlTable(L: integer): string;
begin
  // Function As HtmlTable
end;

function TJanuaChampionshipSummary.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'LastDayNum', self.LastDayNum);
  Janua.Core.Json.JsonPair(Result, 'championship', self.Championship.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'matches', self.matches.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'ranking', self.Ranking.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'goalranking', self.GoalRanking.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'nextmatches', self.NextMatches.AsJsonObject);
end;

function TJanuaChampionshipSummary.AsJsonPretty: string;
begin
  Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

procedure TJanuaChampionshipSummary.Clear;
begin
  self.LastDayNum := 0;
  self.matches.Clear;
  self.GoalRanking.Clear;
end;

procedure TJanuaChampionshipSummary.SetFromDataset(dsMatches, dsMatchDay, dsChampionship, dsRankings,
  dsGoalRankings: TDataset);
begin

end;

procedure TJanuaChampionshipSummary.SetFromJson(aJson: TJsonObject);
begin
  { Result := TJsonObject.Create;
    Janua.Core.Json.JsonPair(Result, 'LastDayNum', self.LastDayNum);
    Janua.Core.Json.JsonPair(Result, 'championship', self.Championship.AsJsonObject);
    Janua.Core.Json.JsonPair(Result, 'matches', self.Matches.AsJsonObject);
    Janua.Core.Json.JsonPair(Result, 'ranking', self.Ranking.AsJsonObject);
    Janua.Core.Json.JsonPair(Result, 'goalranking', self.GoalRanking.AsJsonObject);
    Janua.Core.Json.JsonPair(Result, 'nextmatches', self.NextMatches.AsJsonObject); }

  Janua.Core.Json.JsonValue(aJson, 'lastdaynum', self.LastDayNum);
  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('championship', aJson));
  self.matches.SetFromJson(Janua.Core.Json.JsonObject('matches', aJson));
  self.Ranking.SetFromJson(Janua.Core.Json.JsonObject('ranking', aJson));
  self.GoalRanking.SetFromJson(Janua.Core.Json.JsonObject('goalranking', aJson));
  self.NextMatches.SetFromJson(Janua.Core.Json.JsonObject('nextmatches', aJson));
end;

procedure TJanuaChampionshipSummary.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

{ TJanuaCalendar }

procedure TJanuaFootballCalendar.Add(aObject: TJsonObject);
var
  aItem: TJanuaMatches;
begin
  if Assigned(aObject) then
    aItem.SetFromJson(aObject);
  self.Add(aItem);
end;

procedure TJanuaFootballCalendar.Add(aItem: TJanuaMatches);
begin
  self.ItemIndex := self.Count;
  SetLength(self.items, Succ(self.ItemIndex));
  self.items[self.ItemIndex] := aItem;
end;

function TJanuaFootballCalendar.AsHtmlTable: string;
begin
  // This transformation is a bit tricky because a Calendar is composed by many Tables not just one Table ..............
  // At the moment this is pretty raw so I replaced it tith AsMetroPortlet..............................................
  Result := '';
  // it should be useful for Mailing lists or for retro compatiblity....................................................
end;

function TJanuaFootballCalendar.AsJsonObject: TJsonObject;
var
  aItems: TJsonArray;
  aMatches: TJanuaMatches;
begin
  Result := TJsonObject.Create;
  Result.AddPair('count', TJSONNumber.Create(self.Count));
  Result.AddPair('championship', self.Championship.AsJsonObject);
  aItems := TJsonArray.Create;
  for aMatches in self.items do
    aItems.AddElement(aMatches.AsJsonObject);
  // Aggiunge l'oggetto TJsonArray all'oggetto TJsonObject ............................................................
  Result.AddPair('items', aItems);
end;

function TJanuaFootballCalendar.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaFootballCalendar.AsMetroPortlets: string;
var
  I: integer;
  aList: TStrings;
begin
  // The simple Idea is to open a Div portlet splitted into odds and pairs at first I can make the Odd columns
  // then I can add the pairs columns ... but on smartphones this should sound 'odd' because mathes should not
  // be displayed in the correct way I should, Instead, split my calendar in first round second round
  // literally Andata and Ritorno in ca classical girone all'Italiana.
  aList := TStringList.Create;
  try
    aList.Add(Indent(3, 1) + '<div class="row">');
    aList.Add(Indent(3, 2) + '<div class="col-md-6">');
    for I := 0 to (trunc(self.Count / 2) - 1) do
    begin
      aList.Add(self.items[I].AsMetroPortlet);
    end;
    aList.Add(Indent(3, 2) + '</div>');
    // girone di ritorno ...............................................................................................
    aList.Add(Indent(3, 2) + '<div class="col-md-6">');
    for I := trunc(self.Count / 2) to self.Count - 1 do
    begin
      aList.Add(self.items[I].AsMetroPortlet);
    end;
    aList.Add(Indent(3, 2) + '</div>');
    aList.Add(Indent(3, 1) + '</div');
    Result := aList.Text;
  finally
    aList.Free;
  end;

end;

procedure TJanuaFootballCalendar.Clear;
begin
  SetLength(self.items, 0);
end;

function TJanuaFootballCalendar.Count: integer;
begin
  Result := Length(self.items);
end;

procedure TJanuaFootballCalendar.CreateDataset(aMaster, aDetail: TFdMemTable);
var
  aMatches: TJanuaMatches;
begin
  // this is a bit complex to make because it involves an event to manage master-detaiil relationships .................
  aMatches.CreateDataset(aDetail);
end;

procedure TJanuaFootballCalendar.PopulateDataset(aMaster, aDetail: TFdMemTable);
begin
  self.items[self.ItemIndex].PopulateDataset(aDetail);
end;

procedure TJanuaFootballCalendar.SetFromDataset(dsMatches, dsMatchDay, dsChampionship: TDataset);
var
  aMatchDay: TJanuaMatches;
begin
  self.Championship.SetFromDataset(dsChampionship);
  dsMatchDay.First;
  while not dsMatchDay.Eof do
  begin
    aMatchDay.SetFromDataset(dsMatches, dsMatchDay, dsChampionship);
    self.Add(aMatchDay);
    dsMatchDay.Next;
  end;
end;

procedure TJanuaFootballCalendar.SetFromJson(aJson: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    self.SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    self.TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    self.TemplateRow := aJson.GetValue('TemplateRow').Value;
  }
  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('championship', aJson));
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

end;

procedure TJanuaFootballCalendar.SetFromJson(aJson: string);
begin
  self.SetFromJson(Janua.Core.Json.JsonParse(aJson));
end;

function TJanuaFootballCalendar.Transform(aTemplate, aTemplateRow: string): string;
begin
  // al momento sostituito dalla procedura AsMetro......................................................................
end;

{ TJanuaMatchDetails }

procedure TJanuaMatchDetails.Add(aItem: TJanuaMatchDetail);
begin
  self.ItemIndex := self.Count;
  SetLength(self.items, self.ItemIndex + 1);
  self.items[self.ItemIndex] := aItem;
end;

function TJanuaMatchDetails.AsLiveScore(bLongTeam: boolean = False): string;
var
  aMatchDetail: TJanuaMatchDetail;
  aList: IStringBuilder;
begin
  Result := '';
  if self.Count > 0 then
  begin
    aList := TJanuaStringBuilder.Create;

    {
      aMatchDetail := self.items[0];

      aList.Add(Tag('p', (Tag('h1', aMatchDetail.championship.league_name + ' ' + aMatchDetail.championship.season_des +
      ' Live Score: ' + aMatchDetail.DayNumber.ToString + '^ Giornata', '')), ''));
    }
    for aMatchDetail in self.items do
    begin
      aList.AppendLine(aMatchDetail.AsLiveScore(False, bLongTeam));
      // aggiungo un paragrafo identificato da uno spazio per distanziare i risultati in semplice HTML.
      // aList.Add( '&nbsp;', ''))
    end;
    Result := aList.ToString;
  end;
end;

procedure TJanuaMatchDetails.Clear;
begin
  SetLength(self.items, 0);
  self.ItemIndex := -1;
end;

function TJanuaMatchDetails.Count: integer;
begin
  Result := Length(self.items);
end;

procedure TJanuaMatchDetails.SetFromDataset(dsChampionship, dsMatchDeail, dsHomeTeam, dsVisitorsTeam,
  dsEvents: TDataset);
var
  aItem: TJanuaMatchDetail;
begin
  if dsMatchDeail.Active and (dsMatchDeail.RecordCount > 0) then
  begin
    dsMatchDeail.First;
    while not dsMatchDeail.Eof do
    begin
      aItem.SetFromDataset(dsChampionship, dsMatchDeail, dsHomeTeam, dsVisitorsTeam, dsEvents);
      self.Add(aItem);
      dsMatchDeail.Next;
    end;
  end;
end;

{ TJanuaFootballRoleRecord }

function TJanuaFootballRoleRecord.getID: Byte;
begin
  Result := Ord(self.FRole);
end;

function TJanuaFootballRoleRecord.getName: string;
begin
  Result := JanuaFootballRole[self.FRole]
end;

procedure TJanuaFootballRoleRecord.setID(const Value: Byte);
var
  FootballRole: TJanuaFootballRole;
begin
  if Value in [0 .. Ord(High(TJanuaFootballRole))] then
  begin
    if TEnumConvertor<TJanuaFootballRole>.TryFromInteger(Value, FootballRole) then
      self.FRole := FootballRole
    else
      raise exception.Create('TJanuaGender unexpected value for gender code: ' + Value.ToString);
  end
  else
    self.FRole := TJanuaFootballRole.jfrNone;

end;

procedure TJanuaFootballRoleRecord.setName(const Value: string);
var
  FootballRole: TJanuaFootballRole;
begin
  if Value <> '' then
  begin
    if TEnumConvertor<TJanuaFootballRole>.TryFromStringArray(Value, JanuaFootballRole, FootballRole) then
      self.FRole := FootballRole
    else
      raise exception.Create('TJanuaGender unexpected value for gender code: ' + Value);
  end
  else
    self.FRole := TJanuaFootballRole.jfrNone;
end;

procedure TJanuaFootballRoleRecord.SetRole(const Value: TJanuaFootballRole);
begin
  FRole := Value;
end;

{ TJanuaTeam }

procedure TTJanuaChampionshipTeamAdd(aJson: TJsonObject);
begin

end;

procedure TJanuaChampionshipTeam.Add(aPlayer: TJanuaFootballPlayer);
begin

end;

procedure TJanuaChampionshipTeam.AddPlayer(aPlayer: TJanuaFootballPlayer);
begin
  ItemIndex := self.Count;
  // associo ItemIndex all'attuale Count in pratica High + 1 di un array a base 0.
  SetLength(self.Players, Succ(self.ItemIndex));
  aPlayer.index := self.ItemIndex;
  self.Players[self.ItemIndex] := aPlayer;
end;

procedure TJanuaChampionshipTeam.AddPlayer(aJsonObject: TJsonObject);
var
  aPlayer: TJanuaFootballPlayer;
begin
  aPlayer.LoadFromJsonObject(aJsonObject);
  self.AddPlayer(aPlayer);
end;

procedure TJanuaChampionshipTeam.Add(aJson: TJsonObject);
var
  aPlayer: TJanuaFootballPlayer;
begin
  aPlayer.Clear;
  aPlayer.LoadFromJsonObject(aJson);
  self.AddPlayer(aPlayer);
end;

procedure TJanuaChampionshipTeam.AddPlayer(dsPlayer: TDataset);
var
  aPlayer: TJanuaFootballPlayer;
begin
  aPlayer.SetFromDataset(dsPlayer, False); // se non si tratta di un Match il programma carica la carriera
  self.AddPlayer(aPlayer);
end;

function TJanuaChampionshipTeam.AsHtmlTable(aIsFrame: boolean = False): string;
begin
  Result := self.AsMetroTable(aIsFrame).AsHtml
end;

function TJanuaChampionshipTeam.AsJsonObject: TJsonObject;
var
  aPlayer: TJanuaFootballPlayer;
  aArray: TJsonArray;
  aObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'id', self.ID);
  Janua.Core.Json.JsonPair(Result, 'name', self.Name);
  Janua.Core.Json.JsonPair(Result, 'goal', self.goal);
  Janua.Core.Json.JsonPair(Result, 'points', self.points);
  Janua.Core.Json.JsonPair(Result, 'notes', self.notes);
  Janua.Core.Json.JsonPair(Result, 'count', self.Count);
  Janua.Core.Json.JsonPair(Result, 'season', self.Season.AsJsonObject);
  Janua.Core.Json.JsonPair(Result, 'championship', self.Championship.AsJsonObject);
  aArray := TJsonArray.Create;

  for aPlayer in self.Players do
  begin
    aObject := aPlayer.AsJsonObject;
    aArray.AddElement(aObject);
  end;
  Result.AddPair('players', aArray);

end;

function TJanuaChampionshipTeam.AsJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject.ToJSON)
end;

function TJanuaChampionshipTeam.AsMetroPortlet(L: integer; aPortletContainer: boolean = True;
  aIsFrame: boolean = False): string;
begin
  Result := MetroPortletHeader(TMetroIcon.jmiUser, self.Name + ' rosa ' + self.Championship.season_des,
    MetroHtmlTable(self.AsHtmlTable(aIsFrame), 1), TMetronicColor.jmcBlue, L, False, True, aPortletContainer)
end;

function TJanuaChampionshipTeam.AsMetroTable(aIsFrame: boolean = False): TJanuaMetroTable;
var
  aPlayer: TJanuaFootballPlayer;
begin
  Result.HasHeader := True;
  Result.Header := TJanuaFootballPlayer.AsMetroTableHeader(7);
  for aPlayer in self.Players do
    Result.Add(aPlayer.AsMetroTableRow(7, aIsFrame));
end;

function TJanuaChampionshipTeam.AsTableBig(isTeam: boolean = False): TJanuaMetroTable;
begin
  Result.Header := self.Ranking.AsTableBigHeader(isTeam);
  Result.Add(Ranking.AsTableBigRow((isTeam)));
end;

procedure TJanuaChampionshipTeam.Clear;
begin
  SetLength(self.Players, 0);
  self.ID := 0;
  self.Name := '';
  self.ItemIndex := -1;
  self.goal := 0;
  self.points := 0;
  self.notes := '';
end;

function TJanuaChampionshipTeam.Count: integer;
begin
  Result := Length(self.Players);
end;

constructor TJanuaChampionshipTeam.Create(aSeason: TJanuaFootballSeasons; aChampionship: TJanuaChampionship);
begin
  self.Clear;
  self.Season := aSeason;
  self.Championship := aChampionship;
end;

procedure TJanuaChampionshipTeam.CreateDataset(aDataset: TFdMemTable);
begin

end;

procedure TJanuaChampionshipTeam.CreateTeamDataset(aDataset: TFdMemTable);
begin

end;

function TJanuaChampionshipTeam.FindByID(aID: int64): boolean;
begin
  Result := False;

end;

procedure TJanuaChampionshipTeam.LoadFromJson(aJson: TJsonObject);
var
  vTest: integer;
  aValue: TJsonValue;
  aPair: TJSONPair;
  aObject: TJsonObject;
  aTest: integer;
  aTemp: string;
begin
  self.SetDefault;
  Janua.Core.Json.JsonValue(aJson, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := aJson.Get('players');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Add(aObject);
      end;
  end;

  Janua.Core.Json.JsonValue(aJson, 'id', self.ID);
  Janua.Core.Json.JsonValue(aJson, 'name', self.Name);
  Janua.Core.Json.JsonValue(aJson, 'goal', self.goal);
  Janua.Core.Json.JsonValue(aJson, 'points', self.points);
  Janua.Core.Json.JsonValue(aJson, 'count', vTest);
  Janua.Core.Json.JsonValue(aJson, 'notes', self.notes);

  self.Season.Clear;
  self.Season.AsJsonObject := Janua.Core.Json.JsonObject('seasons', aJson);
  self.Championship.SetDefault;
  self.Championship.SetFromJson(Janua.Core.Json.JsonObject('championship', aJson));

end;

procedure TJanuaChampionshipTeam.LoadFromJson(aJson: string);
begin
  self.LoadFromJson(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaChampionshipTeam.PopulateTeamDataset(aDataset: TDataset);
begin

end;

procedure TJanuaChampionshipTeam.SaveToDataset(aDataset: TDataset);
begin

end;

function TJanuaChampionshipTeam.SelectedPlayer: TJanuaFootballPlayer;
begin

end;

procedure TJanuaChampionshipTeam.SetDefault;
begin
  self.ID := 0;
  self.Name := '';
  SetLength(self.Players, 0);
  self.ItemIndex := -1;
  self.goal := 0;
  self.points := 0;
  self.notes := '';
  self.Season.Clear;
  self.Championship.SetDefault;
end;

procedure TJanuaChampionshipTeam.SetFromDataset(dsTeam, dsTeamPlayers, dsMatches: TDataset);
begin
  try
    SetDefault;
    Janua.Core.Functions.GetFieldValue(ID, dsTeam, 'team_id');
    Janua.Core.Functions.GetFieldValue(self.Name, dsTeam, 'team_name');
    Janua.Core.Functions.GetFieldValue(self.goal, dsTeam, 'goal_done');
    Janua.Core.Functions.GetFieldValue(self.points, dsTeam, 'points');
    // Janua.Core.Functions.GetFieldValue(self.notes, dsTeam, 'home_notes');

    self.Ranking.SetFromDataset(dsTeam);

    if Assigned(dsTeamPlayers) and dsTeamPlayers.Active and (dsTeamPlayers.RecordCount > 0) then
    begin
      dsTeamPlayers.First;
      while not dsTeamPlayers.Eof do
      begin
        self.AddPlayer(dsTeamPlayers);
        dsTeamPlayers.Next;
      end;
    end;

    self.matches.Create(TMetroIcon.jmiCalendar, TJanuaMatchesType.jmtMatchesTeam);
    matches.Championship := self.Championship;

    if Assigned(dsMatches) then
      self.matches.SetFromDataset(dsMatches);
  finally

  end;
end;

function TJanuaChampionshipTeam.Transform(aTemplate, aTemplateRow: string): string;
begin

end;

{ TJanuaFootballTeam }

function TJanuaFootballTeam.AsHtmlLink(AsButton: boolean = True): string;
begin
  Result := self.AsMetroLink(AsButton).AsHtml;
end;

function TJanuaFootballTeam.AsMetroLink(AsButton: boolean = True): TJanuaMetroLink;
begin
  Result.Clear;
  // './matchdetail?match_id='
  Result.BaseUrl := '?page=champteam&team_id=' + ID.ToString + '&season_id=' + SeasonID.ToString + '&league_id=' +
    LeagueID.ToString;
  Result.Color.MetroColor := TMetronicColor.jmcBlue;
  Result.Font.Color.MetroColor := TMetronicColor.jmcWhite;
  Result.Icon.IconType := TMetroIcon.jmiGlobe;
  Result.IsButton := AsButton;
  Result.ButtonStyle := TBootstrapButtonStyle.jbbNone;
  Result.Text := self.Name;
end;

procedure TJanuaFootballTeam.LoadFromJson(aJson: string);
begin

end;

procedure TJanuaFootballTeam.LoadFromJson(aJson: TJsonObject);
begin

end;

procedure TJanuaFootballTeam.SetFromDataset(dsTeam: TDataset);
begin
  self.ID := GetFieldAsInteger(dsTeam, 'team_id');
  self.SeasonID := GetFieldAsInteger(dsTeam, 'season_id');
  self.LeagueID := GetFieldAsInteger(dsTeam, 'league_id');
  self.Name := GetFieldAsString(dsTeam, 'team_name');
end;

end.
