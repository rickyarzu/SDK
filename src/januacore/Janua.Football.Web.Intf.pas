unit Janua.Football.Web.Intf;

interface

{$I januacore.inc}

uses
  // Web and System
  Web.HTTPApp,
  // Footabll - Cms - System:  Server
  Janua.Football.Intf, Janua.Football.Server.Intf, Janua.Cms.Server.Intf, Janua.System.Server.Intf,
  // Html & Web
  Janua.Orm.Intf, Janua.Html.Types, Janua.Html.Intf,
  // Orm ........................................................
  JOrm.Cms.Articles.Intf, JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf,
  JOrm.Football.RankingTable.Intf, JOrm.Football.GoalRanking.Intf, JOrm.Football.MatchDetails.Intf,
  JOrm.Football.MatchDay.Intf, JOrm.Football.Leagues.Intf, JOrm.Football.Matches.Intf,
  // Metro 5
  Janua.Html.Metro5.Intf, Janua.Html.Metro5.Types, Janua.Http.Intf;

type
  IFootballPage = interface(IInterface)
    ['{BF13DB37-F8CE-42B0-B3E4-3676FCE0DDDF}']
    // Pagina Finale ..................................................
    function AsHtml: string;
  end;

type
  IFootballArticlePage = interface(IInterface)
    ['{3BC07C6A-B9DD-4F97-BB9C-686D9ACC8C0C}']
    // News
    function GetRecordSet: IJanuaRecordSet;
    procedure SetRecordSet(Value: IJanuaRecordSet);
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
    function AsHtml: string;
  end;

type
  IFootballController = interface(Janua.Http.Intf.IWebController)
    ['{C8DE8601-2DA2-4375-8036-1571C42A79B9}']
    function GetHome(aMainCategory, aCategory, aLimit, aPage: Word): string;
    function GetArticlesList(aArgumentID: integer): Janua.Html.Intf.IJanuaHtmlObject;
    function GetArticlePage(aID: int64): string;
    function GetArgumentPage(aID: integer): string;
    procedure SetServer(const Value: IJanuaServerFootball);
    function GetServer: IJanuaServerFootball;
    property Server: IJanuaServerFootball read GetServer write SetServer;
    function GetCmsServer: IJanuaServerCms;
    function GetSystemServer: IJanuaServerSystem;
    procedure SetCmsServer(const Value: IJanuaServerCms);
    procedure SetSystemServer(const Value: IJanuaServerSystem);
    property SystemServer: IJanuaServerSystem read GetSystemServer write SetSystemServer;
    property CmsServer: IJanuaServerCms read GetCmsServer write SetCmsServer;
    function GetFootballSettings: IFootballSettings;
    procedure SetFootballSettings(const Value: IFootballSettings);
    property Settings: IFootballSettings read GetFootballSettings write SetFootballSettings;
    function GetErrorPage(const aErrorMessage: string): string;
    function GetMatchesFrame: string;
    function GetGoalRankingFrame: string;
    function GetSmallRankingFrame: string;
    function GetNextMatchesFrame: string;
    /// <summary>
    /// GetLiveScoreFrame is the mail function for Live Scores.
    /// Dynamic Live Score can let the user to 'navigate' through live Scores inside the Application.
    /// </summary>
    function GetFullLiveScoreFrame: string;
    function GetRankingFrame: string;
    function GetDynamicRankingFrame: string;
  end;

type
  IFootballWebSession = interface(Janua.Http.Intf.IWebSession)
    ['{834A51AA-18FB-4BB7-8047-8DBED6072F0B}']
{$IF Defined(WEBBROKER)}
    procedure WBHomePage(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameMatches(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameNextMatches(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameGoalRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    /// <summary>
    /// GetLiveScoreFrame iis the Main procedure to handel a livescore Requeest
    /// It can Open 'just' livescore or using a full parameter obtain a full dynamic day.
    /// </summary>
    procedure FrameLiveScore(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
{$ENDIF WEBBROKER}
  end;

type
  IFootballFactory = interface(IInterface)
    ['{9CDBF248-097E-476B-9E79-1E4C3BD86853}']
    function CreateHomePage(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles): IFootballPage;
    function CreateRankingFrame(aRanking: IRankingTable): IFootballPage;
    function CreateGoalRankingFrame(aGoalRanking: IGoalRankingTable): IFootballPage;
    function CreateMatchesFrame(aMatches: IMatches): IFootballPage;
    function CreateNextMatchesFrame(aMatches: IMatches): IFootballPage;
    function GetGoalRankingTable(aGoalRanking: IGoalRankingTable): IHtmlTable;
    function GetMatchesTable(aMatches: IMatches; IsPlayed: boolean = True): IHtmlTable;
    function GetMatchDetailTable(aMatche: IMatchDetail): IHtmlTable;
    function GetMatchDetailContainer(aMatchDetail: IMatchDetail): IJanuaHtmlObject;
    function GetRankingTable(aRanking: IRankingTable): IHtmlTable;
    function GetController: IFootballController; overload;
    function GetController(const aServer: IJanuaServerFootball; aServerCms: IJanuaServerCms;
      aServerSystem: IJanuaServerSystem): IFootballController; overload;
    // Big Ranking Frame
    function GetBigRankingTable(aRanking: IRankingTable): IJanuaHtmlObject;
    function CreateBigRankingFrame(aRanking: IRankingTable; aDayList: IMatchDayNumbers; aLeagueList: ILeagues)
      : IFootballPage;
    function GetSettings: IFootballSettings;
    procedure SetSettings(const Value: IFootballSettings);
    property Settings: IFootballSettings read GetSettings write SetSettings;
    function GetPortlet(aTitle, aSubTitle: string; aIcon: TMetro5IconType; aFontColor: TM5StateColorsStyle)
      : IMetro5Portlet;
    function GetNavigatorForm(aDayList: IMatchDayNumbers; aLeagueList: ILeagues): IJanuaHtmlObject;
    // Live Score
    function CreateSimpleLiveScoreFrame(aMatchDetails: IMatchDetail): IFootballPage;
    function CreateFullLiveScoreFrame(aMatchDetails: IMatchDetails; aRanking: IRankingTable;
      aGoalRanking: IGoalRankingTable; aMatchDay: IMatchDays): IFootballPage;
    function GetRankingLink: IJanuaHtmlObject;
    function GetLiveScoreLink: IJanuaHtmlObject;
    function GetGoalRankingLink: IJanuaHtmlObject;
    function GetNextMatchesLink: IJanuaHtmlObject;
  end;

  IFootballWebFactory = interface
    ['{6CB5583B-0060-4122-B73B-A4BD5A1BC244}']
    function GetWebSession(const aFactory: IFootballFactory; aWebManager: IWebManager): IFootballWebSession; overload;
    function GetWebSession(aFootballFactory: IJanuaServerFootballFactory; aCmsFactory: IJanuaServerCmsFactory;
      aSystemFactory: IJanuaServerSystemFactory; aWebManager: IWebManager): IFootballWebSession; overload;
    function GetFooterLeft: IJanuaHtmlObject;
    function GetFooterRight: IJanuaHtmlObject;
    function GetNewsWidget: IJanuaHtmlObject;
    function GetBannersWidget: IJanuaHtmlObject;
  end;

implementation

end.
