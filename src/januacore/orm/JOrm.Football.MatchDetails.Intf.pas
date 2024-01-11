unit JOrm.Football.MatchDetails.Intf;

interface

uses
  JOrm.Football.Matches.Intf, Janua.Orm.Intf, JOrm.Football.MatchPlayer.Intf,
  JOrm.Football.MatchEventDetail.Intf, Janua.Html.Intf;

type
  /// <summary>
  /// Aggiunge la tabella dei Dettagli al Live Score. A sua Volta il Recordset dei Details
  /// connette altri Recordsets Sottostanti.
  /// </summary>
  IMatchDetail = interface(IMatch)
    ['{893E3ADD-77A8-4BE4-A6CA-6225D03E44D3}']
    function GetVisitorsPlayers: IMatchPlayers;
    procedure SetVisitorsPlayers(const Value: IMatchPlayers);
    property VisitorsPlayers: IMatchPlayers read GetVisitorsPlayers write SetVisitorsPlayers;

    function GetHomePlayers: IMatchPlayers;
    procedure SetHomePlayers(const Value: IMatchPlayers);
    property HomePlayers: IMatchPlayers read GetHomePlayers write SetHomePlayers;

    function GetEvents: IMatchEventsDetails;
    procedure SetEvents(const Value: IMatchEventsDetails);
    property Events: IMatchEventsDetails read GetEvents write SetEvents;
    /// <summary>
    /// This procedure Lists all players in a team, bLongTeam is used for futsal teams.
    /// </summary>
    function StringPlayers(aHome: boolean; bLongTeam: boolean = False): string;
    /// <summary>
    /// This procedure Lists all goals made from a team (own goals included) with time.
    /// <param name="aNewLine"> Tell us if Html will be inlined or on multple lines
    /// </param>
    /// </summary>
    function GoalsVisitors(aNewLine: boolean = False): string;
    /// <summary>
    /// This obtain an html Text As String from HtmlObject
    /// <param name="aNewLine"> Tell us if Html will be inlined or on multple lines
    /// </param>
    /// </summary>
    function GoalsHome(aNewLine: boolean = False): string;
    /// <summary>
    /// This Gets an html Object including a img linkt to the logo.
    /// <param name="aSize"> Image size on screen in Pixexl (square XxXpx)
    /// </param>
    /// <param name="aHome"> If 'Home' is taken an home default from website settings.
    /// </param>
    /// </summary>
    function GetLogoHtmlObject(aHome: boolean; aSize: Word = 32): IJanuaHtmlImage;
    /// <summary>
    /// This obtain an html Text As String from HtmlObject
    /// <param name="aSize"> Image size on screen in Pixexl (square XxXpx)
    /// </param>
    /// <param name="aHome"> If 'Home' is taken an home default from website settings.
    /// </param>
    /// </summary>
    function GetLogoString(aHome: boolean; aSize: Word = 32): string;
  end;

  IMatchDetails = interface(IJanuaRecordSet)
    ['{956AAD56-C1DF-4B83-9BEF-BFF348D5DAF2}']
    function GetVisitorsPlayers: IMatchPlayers;
    procedure SetVisitorsPlayers(const Value: IMatchPlayers);
    property VisitorsPlayers: IMatchPlayers read GetVisitorsPlayers write SetVisitorsPlayers;

    function GetHomePlayers: IMatchPlayers;
    procedure SetHomePlayers(const Value: IMatchPlayers);
    property HomePlayers: IMatchPlayers read GetHomePlayers write SetHomePlayers;

    function GetEvents: IMatchEventsDetails;
    procedure SetEvents(const Value: IMatchEventsDetails);
    property Events: IMatchEventsDetails read GetEvents write SetEvents;

    procedure SetMatchDetail(const Value: IMatchDetail);
    function GetMatchDetail: IMatchDetail;
    property MatchDetail: IMatchDetail read GetMatchDetail write SetMatchDetail;
  end;

implementation

end.
