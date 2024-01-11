unit Janua.Football.Web.Impl;

{$I januacore.inc}

interface

uses System.SysUtils, Web.HTTPApp,
  // Janua Html Core
  Janua.Http.Intf, Janua.Html.Metro5.Intf, Janua.Html.Builder.Intf, Janua.Html.Intf,
  Janua.Html.Metro5.Types,
  Janua.Http.Impl, Janua.Orm.Intf,
  // Football Web
  Janua.Football.Intf, Janua.Football.Web.Intf,
  // Orm ........................................................
  JOrm.Cms.Articles.Intf, JOrm.Cms.MainArguments.Intf, JOrm.Cms.Arguments.Intf,
  JOrm.Football.RankingTable.Intf, JOrm.Football.GoalRanking.Intf, JOrm.Football.Matches.Intf,
  JOrm.Football.MatchDay.Intf, JOrm.Football.Leagues.Intf, JOrm.Football.MatchDetails.Intf,
  // Server
  Janua.Cms.Server.Intf, Janua.Football.Server.Intf, Janua.System.Server.Intf;

type
  TFootballPage = class(TInterfacedObject, IFootballPage)
  private
    FPage: IJanuaHtmlObject;
  protected
    FFactory: IFootballFactory;
  protected
    // Pagina Finale ..................................................
    function GetPage: IJanuaHtmlObject;
    procedure SetPage(const Value: IJanuaHtmlObject);
  public
    function AsHtml: string;
  public
    property Page: IJanuaHtmlObject read FPage write SetPage;
  public
    constructor Create(const aFactory: IFootballFactory);
  end;

type
  TFootballFrame = class(TInterfacedObject)
  protected
    FFrame: IMetro5Frame;
    FFootballFactory: IFootballFactory;
  public
    function AsHtml: string;
  public
    constructor Create(const aFactory: IFootballFactory); overload;
  end;

type
  TFootballRankingFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aRanking: IRankingTable); overload;
  end;

type
  TFootballBigRankingFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aRanking: IRankingTable; aDayList: IMatchDayNumbers;
      aLeagueList: ILeagues); overload;
  end;

type
  TFootballGolRankingFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aGolRanking: IGoalRankingTable); overload;
  end;

type
  /// <summary>
  /// Dynamic Frame Riassume in un unico Frame Risultati e Classifiche Marcatori e Squadre
  /// Deve essere composto da 3 Elementi quindi: Risultati + grande Classifica + Marcatori.
  /// </summary>
  TFootballDynamicFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aGolRanking: IGoalRankingTable; aRanking: IRankingTable;
      aDayList: IMatchDayNumbers; aLeagueList: ILeagues); overload;
  end;

type
  /// <summary>
  /// IFootballPage Dynamic Live Frame Riassume in un unico Frame Diretta Live (per Risultati e classifiche rimanda)
  /// Deve essere composto da Diretta Live + Classifica Breve + Classifica Marcatori.
  /// E' dinamico in quanto permette di 'navigare' campionato e Giornata della Diretta Live
  /// </summary>
  TFootballFullLiveFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aGolRanking: IGoalRankingTable; aRanking: IRankingTable;
      aMatDetails: IMatchDetails; aMatchDay: IMatchDays); overload;
  end;

type
  /// <summary>
  /// IFootballPage Dynamic Live Frame Riassume in un la Frame Diretta Live (per Risultati e classifiche rimanda)
  /// Deve essere composto da Diretta Live + Classifica Breve + Classifica Marcatori.
  /// E' dinamico in quanto permette di 'navigare' campionato e Giornata della Diretta Live
  /// </summary>
  TFootballSimpleLiveFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(aMatDetails: IMatchDetails; aMatchDay: IMatchDay); overload;
  end;

type
  TFootballMatchesFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aMatches: IMatches); overload;
  end;

type
  TFootballNextMatchesFrame = class(TFootballFrame, IFootballPage)
  public
    constructor Create(const aFactory: IFootballFactory; aNextMatches: IMatches); overload;
  end;

type
  TFootballController = class(TInterfacedObject)
  private
    FServer: IJanuaServerFootball;
    FCmsServer: IJanuaServerCms;
    FSystemServer: IJanuaServerSystem;
  protected
    FFootballFactory: IFootballFactory;
    function GetCmsServer: IJanuaServerCms;
    function GetSystemServer: IJanuaServerSystem;
    procedure SetCmsServer(const Value: IJanuaServerCms);
    procedure SetSystemServer(const Value: IJanuaServerSystem);
    procedure SetServer(const Value: IJanuaServerFootball);
    function GetServer: IJanuaServerFootball;
    function GetFootballSettings: IFootballSettings;
    procedure SetFootballSettings(const Value: IFootballSettings);
  public
    property SystemServer: IJanuaServerSystem read GetSystemServer write SetSystemServer;
    property CmsServer: IJanuaServerCms read GetCmsServer write SetCmsServer;
    property Server: IJanuaServerFootball read GetServer write SetServer;
  protected
    procedure SetupArguments(out ma: IMainArguments; out ar: IArguments);
  public
    function GetGoalRankingFrame: string;
    function GetFullLiveScoreFrame: string;
    function GetErrorPage(const aErrorMessage: string): string;
    function GetMatchesFrame: string;
    function GetSmallRankingFrame: string;
    function GetNextMatchesFrame: string;
    function GetRankingFrame: string;
    function GetDynamicRankingFrame: string;
    function GetPage404(aException: Exception): string;
    function GetFrame404(aException: Exception): string;
  public
    constructor Create(const aServer: IJanuaServerFootball; aCmsServer: IJanuaServerCms;
      aSystemServer: IJanuaServerSystem; aFootballFactory: IFootballFactory);
  end;

type
  TFootballWebSession = class(TJanuaCustomWebSession, IWebSession, IFootballWebSession)
  protected
    FFactory: IFootballFactory;
  public
    Constructor Create(const aFactory: IFootballFactory; aWebManager: IWebManager); overload;
{$IF Defined(WEBBROKER)}
    procedure RegisterWebModule(aModule: TWebModule);
    procedure ArticlePage(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure ArgumentPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure WBHomePage(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    // function GetDynamicRankingFrame: string;
    procedure FrameDynamicRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameMatches(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameNextMatches(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameGoalRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
    procedure FrameLiveScore(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean);
{$ENDIF WEBBROKER}
  end;

Type
  TCustomFootballFactory = class(TInterfacedObject, IFootballFactory)
  protected
    FFootballFactory: IJanuaServerFootballFactory;
    FCmsFactory: IJanuaServerCmsFactory;
    FSystemFactory: IJanuaServerSystemFactory;
    FSettings: IFootballSettings;
    FHelper: IHtmlHelper;
  protected
    function GetSettings: IFootballSettings;
    procedure SetSettings(const Value: IFootballSettings);
  public
    constructor Create; overload;
    constructor Create(aFootballFactory: IJanuaServerFootballFactory; aCmsFactory: IJanuaServerCmsFactory;
      aSystemFactory: IJanuaServerSystemFactory); overload;
  public
    function CreateHomePage(aMainArg: IMainArguments; aArgs: IArguments; ANews, aVideo: IArticles): IFootballPage;
      virtual; abstract;
    function GetController(const aServer: IJanuaServerFootball; aServerCms: IJanuaServerCms;
      aServerSystem: IJanuaServerSystem): IFootballController; overload; virtual; abstract;
  public
    function GetRankingLink: IJanuaHtmlObject;
    function GetLiveScoreLink: IJanuaHtmlObject;
    function GetGoalRankingLink: IJanuaHtmlObject;
    function GetNextMatchesLink: IJanuaHtmlObject;
    function CreateRankingFrame(aRanking: IRankingTable): IFootballPage;
    function CreateDynamicFrame(aRanking: IRankingTable): IFootballPage;
    function CreateBigRankingFrame(aRanking: IRankingTable; aDayList: IMatchDayNumbers; aLeagueList: ILeagues)
      : IFootballPage;
    function CreateGoalRankingFrame(aGoalRanking: IGoalRankingTable): IFootballPage;
    function CreateMatchesFrame(aMatches: IMatches): IFootballPage;
    function CreateNextMatchesFrame(aMatches: IMatches): IFootballPage;
    function GetGoalRankingTable(aGoalRanking: IGoalRankingTable): IHtmlTable;
    function GetMatchesTable(aMatches: IMatches; IsPlayed: boolean = True): IHtmlTable;
    function CreateSimpleLiveScoreFrame(aMatchDetails: IMatchDetail): IFootballPage;
    function CreateFullLiveScoreFrame(aMatchDetails: IMatchDetails; aRanking: IRankingTable;
      aGoalRanking: IGoalRankingTable; aMatchDay: IMatchDays): IFootballPage;
    function GetMatchDetailTable(aMatchDetail: IMatchDetail): IHtmlTable;
    function GetMatchDetailContainer(aMatchDetail: IMatchDetail): IJanuaHtmlObject;
    function GetSmallMatchDetailContainer(aMatchDetail: IMatchDetail): IJanuaHtmlObject;
    function GetRankingTable(aRanking: IRankingTable): IHtmlTable;
    function GetBigRankingTable(aRanking: IRankingTable): IJanuaHtmlObject;
    function GetNavigatorForm(aDayList: IMatchDayNumbers; aLeagueList: ILeagues): IJanuaHtmlObject;
    function GetController: IFootballController; overload;
    /// <summary>
    /// 2018-0070 Football Portlet
    /// Questa procedura 'salta' la creazione dei Builder ed impiega direttamente le class function della
    /// Factory Html Metro 5 per la generazione di un portlet-container fornendo le proprietà essenziali per la
    /// sua costruzione.
    ///
    /// </summary>
    function GetPortlet(aTitle, aSubTitle: string; aIcon: TMetro5IconType; aFontColor: TM5StateColorsStyle)
      : IMetro5Portlet;
  public
    property Settings: IFootballSettings read GetSettings write SetSettings;
  end;

{$IF Defined(WEBBROKER)}

procedure ReadSettings(aRequest: TWebRequest; aSettings: IFootballSettings);
{$ENDIF WEBBROKER}

var
  FMainArguments: IMainArguments;

implementation

uses System.SyncObjs, Spring, System.Math, System.StrUtils, Janua.Core.AsyncTask,
  // Core
  Janua.Core.Functions, Janua.Html.Types,
  // Orm
  JOrm.Cms.MainArguments.Impl,
  // Html
  Janua.Html.Impl, Janua.Html.Builder.Impl, Janua.Core.Types,
  // Metro 5
  Janua.Metro5.Builder, Janua.Html.Metro5.Impl, Janua.Html.Metro5.Pages;

var
  // Critical Section per le operazioni parallele.
  FLock: TCriticalSection;

{$IF Defined(WEBBROKER)}

procedure ReadSettings(aRequest: TWebRequest; aSettings: IFootballSettings);
var
  LMainID: Word;
begin
  Guard.CheckNotNull(aSettings, 'ReadSettings aSettings is nil');
  Guard.CheckNotNull(aRequest, 'ReadSettings aRequest is nil');
  // FSettings := aSettings;
  LMainID := Word(Janua.Core.Functions.HttpGetParamInteger(aRequest, 'main'));
  aSettings.MainArgumentID := IfThen(LMainID = 0, 1, LMainID);
  aSettings.ArgumentID := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'arg');
  aSettings.ArticleID := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'id');
  Guard.CheckNotNull(aSettings, 'Settings is null');
  aSettings.match_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'match_id');
  aSettings.season_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'season_id');
  aSettings.league_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'league_id');
  aSettings.team_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'team_id');
  aSettings.match_day := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'match_day');
  aSettings.player_id := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'player_id');
  aSettings.match_team := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'match_team');
  aSettings.LastMatchDay := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'lastmatch_day');
  aSettings.match_day_from := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'from');
  aSettings.match_day_to := Janua.Core.Functions.HttpGetParamInteger(aRequest, 'to');
end;
{$ENDIF WEBBROKER}
{ TFootballNextMatchesFrame }

constructor TFootballNextMatchesFrame.Create(const aFactory: IFootballFactory; aNextMatches: IMatches);
var
  aPortlet: IMetro5Portlet;
begin
  Guard.CheckNotNull(aNextMatches, self.ClassName + '.Create aGolRanking is nil');
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aGolRanking is nil');
  self.Create(aFactory);
  aPortlet := FFootballFactory.GetPortlet('Prossima Giornata', '', TMetro5IconType.jmlSocialDribble,
    TM5StateColorsStyle.m5sSecondary);
  aPortlet.Head.AddSimpleTag('div', '', True, ['m-portlet__head-tools']);
  aPortlet.Head.SelectedItem.Add(aFactory.GetRankingLink);
  aPortlet.Head.SelectedItem.Add(aFactory.GetLiveScoreLink);
  aPortlet.Head.SelectedItem.Add(aFactory.GetGoalRankingLink);

  Guard.CheckNotNull(aPortlet, self.ClassName + '.Create aPortlet is nil');
  aPortlet.Content.Add(self.FFootballFactory.GetMatchesTable(aNextMatches, False));
  FFrame.ContentBody.Add(aPortlet);
  (*
    Create(aFactory);
    Guard.CheckNotNull(aFactory, ' TFootballNextMatchesFrame.Create aServer is nil');
    FFrame.ContentBody.Add(self.FFootballFactory.GetMatchesTable(aNextMatches, False))
  *)
end;

{ TFootballRankingFrame }

constructor TFootballRankingFrame.Create(const aFactory: IFootballFactory; aRanking: IRankingTable);
var
  aPortlet: IMetro5Portlet;
begin
  Guard.CheckNotNull(aRanking, self.ClassName + '.Create aGolRanking is nil');
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aGolRanking is nil');
  self.Create(aFactory);
  // 'Classifica'
  aPortlet := FFootballFactory.GetPortlet('', '', TMetro5IconType.jmlSocialDribble, TM5StateColorsStyle.m5sBrand);
  Guard.CheckNotNull(aPortlet, self.ClassName + '.Create aPortlet is nil');
  aPortlet.Head.AddSimpleTag('div', '', True, ['m-portlet__head-tools']);
  aPortlet.Head.SelectedItem.Add(aFactory.GetRankingLink);
  aPortlet.Head.SelectedItem.Add(aFactory.GetLiveScoreLink);
  aPortlet.Head.SelectedItem.Add(aFactory.GetNextMatchesLink);

  aPortlet.Content.Add(FFootballFactory.GetRankingTable(aRanking));
  FFrame.ContentBody.Add(aPortlet);
  (*
    self.Create(aFactory);
    Guard.CheckNotNull(aRanking, ' TFootballRankingFrame.Create aRanking is nil');
    FFrame.ContentBody.Add(FFootballFactory.GetRankingTable(aRanking));
  *)

end;

{ TFootballGolRankingFrame }

constructor TFootballGolRankingFrame.Create(const aFactory: IFootballFactory; aGolRanking: IGoalRankingTable);
var
  aPortlet: IMetro5Portlet;
begin
  self.Create(aFactory);
  Guard.CheckNotNull(aGolRanking, self.ClassName + '.Create aGolRanking is nil');
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aGolRanking is nil');
  // ''Classifica Marcatori
  aPortlet := FFootballFactory.GetPortlet('', '', TMetro5IconType.jmiIconUser, TM5StateColorsStyle.m5sInfo);
  Guard.CheckNotNull(aPortlet, self.ClassName + '.Create aGolRanking is nil');
  aPortlet.Head.AddSimpleTag('div', '', True, ['m-portlet__head-tools']);
  aPortlet.Head.SelectedItem.Add(aFactory.GetRankingLink);
  aPortlet.Head.SelectedItem.Add(aFactory.GetLiveScoreLink);
  aPortlet.Head.SelectedItem.Add(aFactory.GetNextMatchesLink);

  aPortlet.Content.Add(FFootballFactory.GetGoalRankingTable(aGolRanking));
  FFrame.ContentBody.Add(aPortlet);

  (*
    aFrame := TMetro5PageFactory.GetMetro5Frame;
    aFrame.ContentBody.Add(self.GetGoalRankingTable(aGoalRanking));
  *)
end;

{ TFootballMatchesFrame }

constructor TFootballMatchesFrame.Create(const aFactory: IFootballFactory; aMatches: IMatches);
var
  aPortlet: IMetro5Portlet;
begin
  Guard.CheckNotNull(aMatches, self.ClassName + '.Create aGolRanking is nil');
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aGolRanking is nil');
  self.Create(aFactory);
  aPortlet := FFootballFactory.GetPortlet('Risultati', '', TMetro5IconType.jmlSocialDribble,
    TM5StateColorsStyle.m5sBrand);
  Guard.CheckNotNull(aPortlet, self.ClassName + '.Create aPortlet is nil');
  aPortlet.Content.Add(FFootballFactory.GetMatchesTable(aMatches));
  FFrame.ContentBody.Add(aPortlet);
  (*
    self.Create(aFactory);
    Guard.CheckNotNull(aFactory, ' TFootballMatchesFrame.Create aMatches is nil');
    FFrame.ContentBody.Add(FFootballFactory.GetMatchesTable(aMatches));
  *)
end;

{ TFootballController }

constructor TFootballController.Create(const aServer: IJanuaServerFootball; aCmsServer: IJanuaServerCms;
  aSystemServer: IJanuaServerSystem; aFootballFactory: IFootballFactory);
begin
  Guard.CheckNotNull(aServer, ' TFootballController.Create aServer is nil');
  Guard.CheckNotNull(aServer.Settings, ' TFootballController.Create Settings is nil');
  Guard.CheckNotNull(aCmsServer, ' TFootballController.Create aCmsServer is nil');
  Guard.CheckNotNull(aFootballFactory, ' TFootballController.Create aFootballFactory is nil');
  try
    self.FServer := aServer;
    self.FCmsServer := aCmsServer;
    FSystemServer := aSystemServer;
    self.FFootballFactory := aFootballFactory;
    self.FFootballFactory.Settings := self.FServer.Settings;
  except
    on e: Exception do
      raise Exception.Create('TFootballController.Create ' + e.Message);

  end;
end;

function TFootballController.GetCmsServer: IJanuaServerCms;
begin
  Result := self.FCmsServer
end;

function TFootballController.GetDynamicRankingFrame: string;
var
  p: IFootballPage;
begin
  self.Server.OpenDynamicRanking;
  p := FFootballFactory.CreateBigRankingFrame(Server.DynamicRanking, Server.MatchDaysList, Server.Leagues);
  Result := p.AsHtml
end;

function TFootballController.GetErrorPage(const aErrorMessage: string): string;
begin

end;

function TFootballController.GetFootballSettings: IFootballSettings;
begin
  Result := self.FServer.Settings
end;

function TFootballController.GetFrame404(aException: Exception): string;
begin

end;

function TFootballController.GetFullLiveScoreFrame: string;
var
  p: IFootballPage;
begin
  // p := TDilettantissimoFactory.CreateLiveScoreFrame();
  Guard.CheckNotNull(self.Server, 'GetFullLiveScoreFrame Server  is nil');
  self.Server.OpenLiveScore;
  Server.OpenGoalRanking;
  Server.OpenRanking;
  p := FFootballFactory.CreateFullLiveScoreFrame(Server.MatchDetails, Server.RankingTable, Server.GoalRanking,
    Server.MatchDay);
  Result := p.AsHtml;
end;

function TFootballController.GetGoalRankingFrame: string;
var
  p: IFootballPage;
begin
  self.Server.OpenGoalRanking;
  p := FFootballFactory.CreateGoalRankingFrame(self.Server.GoalRanking);
  Result := p.AsHtml
end;

function TFootballController.GetMatchesFrame: string;
var
  p: IFootballPage;
begin
  self.Server.OpenMatches;
  p := FFootballFactory.CreateMatchesFrame(self.Server.Matches);
  Result := p.AsHtml
end;

function TFootballController.GetNextMatchesFrame: string;
var
  p: IFootballPage;
begin
  self.Server.OpenNextMatches;
  p := FFootballFactory.CreateNextMatchesFrame(self.Server.NextMatches);
  Result := p.AsHtml
end;

function TFootballController.GetPage404(aException: Exception): string;
begin

end;

function TFootballController.GetRankingFrame: string;
var
  p: IFootballPage;
begin
  self.Server.OpenRanking;
  p := FFootballFactory.CreateRankingFrame(self.Server.RankingTable);
  Result := p.AsHtml

end;

function TFootballController.GetServer: IJanuaServerFootball;
begin
  Result := self.FServer
end;

function TFootballController.GetSmallRankingFrame: string;
var
  p: IFootballPage;
begin
  self.Server.OpenRanking;
  p := FFootballFactory.CreateRankingFrame(self.Server.RankingTable);
  Result := p.AsHtml
end;

function TFootballController.GetSystemServer: IJanuaServerSystem;
begin
  Result := self.FSystemServer
end;

procedure TFootballController.SetCmsServer(const Value: IJanuaServerCms);
begin
  FCmsServer := Value;
end;

procedure TFootballController.SetFootballSettings(const Value: IFootballSettings);
begin
  self.FServer.Settings := Value
end;

procedure TFootballController.SetServer(const Value: IJanuaServerFootball);
begin
  FServer := Value;
end;

procedure TFootballController.SetSystemServer(const Value: IJanuaServerSystem);
begin
  FSystemServer := Value;
end;

procedure TFootballController.SetupArguments(out ma: IMainArguments; out ar: IArguments);
  function CheckARRecord: boolean;
  begin
    ma.First;
    Result := False;
    while not(ma.Eof or Result) do
    begin
      Result := ar.RecordCount > 0;
      ma.Next;
    end;
  end;

begin
  if (FMainArguments.RecordCount = 0) then
  begin
    self.FCmsServer.OpenMainArguments;
    Guard.CheckNotNull(FCmsServer.MainArguments, '.SetupArguments MainArguments is nil');
    FLock.Acquire;
    try
      FMainArguments.Assign(self.FCmsServer.MainArguments);
    finally
      FLock.Release;
    end;
    Assert(FMainArguments.RecordCount > 0, 'SetupArguments FMainArguments has 0 Records');
  end;
  ma := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;
  FLock.Acquire;
  try
    ma.Assign(FMainArguments);
  finally
    FLock.Release;
  end;
  ar := ma.Arguments;
  Assert(ma.RecordCount > 0, 'MainArguments has 0 Records');
  Assert(CheckARRecord, 'Arguments has 0 Records');

  // 2018-0075 Selected Menu Builder
  if (GetFootballSettings.MainArgumentID = 0) and (GetFootballSettings.ArgumentID = 0) then
  begin
    ma.First;
    ar.First;
    ma.MainArgument.Selected.AsBoolean := True;
    ar.Argument.Selected.AsBoolean := True;
  end;

  if self.GetFootballSettings.MainArgumentID > 0 then
  begin
    ma.First;
    while not ma.Eof do
    begin
      if ma.Main_argument_id.AsInteger = GetFootballSettings.MainArgumentID then
      begin
        ma.MainArgument.Selected.AsBoolean := True;
        ma.Post;
      end;
      ma.Next;
    end;
  end;

  if self.GetFootballSettings.ArgumentID > 0 then
  begin
    ma.First;
    while not ma.Eof do
    begin
      ar.First;
      while not ar.Eof do
      begin
        if ar.Argument_id.AsInteger = GetFootballSettings.ArgumentID then
        begin
          ar.Argument.Selected.AsBoolean := True;
          ar.Post;
        end;
        ar.Next;
      end;
      ma.Next
    end;
  end;

  ma.First;
  ar.First;

end;

{ TFootballPage }

function TFootballPage.AsHtml: string;
begin
  Guard.CheckNotNull(self.FPage, 'TFootballPage.AsHtml FPage is nil');
end;

constructor TFootballPage.Create(const aFactory: IFootballFactory);
begin
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aFactory is nil');
  self.FFactory := aFactory;
end;

function TFootballPage.GetPage: IJanuaHtmlObject;
begin
  Result := self.FPage
end;

procedure TFootballPage.SetPage(

  const Value: IJanuaHtmlObject);
begin
  FPage := Value;
end;

{ TFootballWebSession }

constructor TFootballWebSession.Create(const aFactory: IFootballFactory; aWebManager: IWebManager);
begin
  self.Create(aWebManager);
  Guard.CheckNotNull(aFactory, 'TFootballWebSession.Create aFactory is nil');
  self.FFactory := aFactory;
{$IFDEF webbroker}
  FWebManager.AddWebAction('/', 'ActionHome', '/football', self.WBHomePage, True);
  FWebManager.AddWebAction('ranking', 'ActionRanking', '/ranking', self.FrameRanking, True);
  FWebManager.AddWebAction('matches', 'ActionMatches', '/matches', self.FrameMatches, True);
  FWebManager.AddWebAction('nextmatches', 'ActionNextMatches', '/nextmatches', self.FrameNextMatches, True);
  FWebManager.AddWebAction('livescore', 'ActionLiveScore', '/livescore', self.FrameLiveScore, True);
  FWebManager.AddWebAction('goalranking', 'ActionGoalRanking', '/goalranking', self.FrameGoalRanking, True);
  // Janua.Cloud.Images.WebBroker.ImageManager
  FWebManager.AddWebAction('category', 'ActionCategory', '/category', self.ArgumentPage, True);
  FWebManager.AddWebAction('article', 'ActionArticle', '/article', self.ArticlePage, True);
  FWebManager.AddWebAction('dynranking', 'ActionDynRanking', '/dynranking', FrameDynamicRanking, True);
  aWebManager.AddSession(self as IWebSession);
{$ENDIF webbroker}
  {
    else if (aPage.ToLower = 'category') then
    ArgumentPage(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'article') then
    ArticlePage(Sender, Request, Response, Handled)

  }

end;

{$IF Defined(WEBBROKER)}

procedure TFootballWebSession.ArgumentPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  // ReadSettings ha impostato anche il LController ed il Server sottostante per leggere le coordinate
  Response.Content := LController.GetArgumentPage(LController.Settings.ArgumentID);
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.ArticlePage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  // ReadSettings ha impostato anche il LController ed il Server sottostante per leggere le coordinate
  Response.Content := LController.GetArticlePage(LController.Settings.ArticleID);
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.FrameGoalRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse;

  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  // ReadSettings ha impostato anche il LController ed il Server sottostante per leggere le coordinate
  Response.Content := LController.GetGoalRankingFrame;
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.FrameLiveScore(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
var
  LController: IFootballController;
begin
  try
    // This is the "background" anonymous method. Runs in the
    // background thread, and its result is passed
    // to the "success" callback.
    // In this case the result is a String.
    LController := FFactory.GetController;
    ReadSettings(Request, LController.Settings);
    Response.Content := LController.GetFullLiveScoreFrame;
    Response.SendResponse;
    Handled := True;
  except
    on Ex: Exception do
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      Response.Content := 'TFootballWebSession.FrameLiveScore' + sLineBreak + Ex.ClassName + sLineBreak + Ex.Message;
      Response.StatusCode := 501;
      Response.SendResponse;
      Handled := True;
    end;
  end;

end;

procedure TFootballWebSession.FrameMatches(Sender: TObject; Request: TWebRequest; Response: TWebResponse;

  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  // ReadSettings ha impostato anche il LController ed il Server sottostante per leggere le coordinate
  Response.Content := LController.GetMatchesFrame;
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.FrameNextMatches(Sender: TObject; Request: TWebRequest; Response: TWebResponse;

  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  Response.Content := LController.GetNextMatchesFrame;
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.FrameRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse;

  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  Response.Content := LController.GetRankingFrame;
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.FrameDynamicRanking(Sender: TObject; Request: TWebRequest; Response: TWebResponse;

  var Handled: boolean);
var
  LController: IFootballController;
begin
  LController := self.FFactory.GetController;
  ReadSettings(Request, LController.Settings);
  Response.Content := LController.GetDynamicRankingFrame;
  Response.SendResponse;
  Handled := True;
end;

procedure TFootballWebSession.WBHomePage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
var
  vTemp, aPage: string;
  LController: IFootballController;
begin
  // aPage := Janua.Core.Functions.HttpGetParamValue(Request, 'page');
  // if (aPage.ToLower = '') then
  try
    LController := FFactory.GetController;
    ReadSettings(Request, LController.Settings);
    vTemp := LController.GetHome(LController.Settings.MainArgumentID, LController.Settings.ArgumentID, 6, 1);
    Response.Content := vTemp;
    Handled := True;
  except
    on Ex: Exception do
    begin
      Response.Content := 'TFootballWebSession.WBHomePage' + sLineBreak + Ex.ClassName + sLineBreak + Ex.Message;
      Response.StatusCode := 501;
      Response.SendResponse;
      Handled := True;
    end
  end
  (*
    else if (aPage.ToLower = 'ranking') then
    FrameRanking(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'dynranking') then
    FrameDynamicRanking(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'matches') then
    FrameMatches(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'nextmatches') then
    FrameNextMatches(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'goalranking') then
    FrameGoalRanking(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'category') then
    ArgumentPage(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'article') then
    ArticlePage(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'livescore') then
    FrameLiveScore(Sender, Request, Response, Handled)
    else if aPage.ToLower = 'image' then
    TCloudImageManager.ImageManager(Sender, Request, Response, Handled)
    else if (aPage.ToLower = 'files') or (aPage.ToLower = 'attach') then
    TCloudFileManager.FileManager(Sender, Request, Response, Handled)
    else if aPage.ToLower = 'resources' then
    TCloudFileManager.ResourceManager(Sender, Request, Response, Handled);
  *)
end;

procedure TFootballWebSession.RegisterWebModule(aModule: TWebModule);
begin
  self.FWebManager.RegisterWebModule(aModule);
end;

{$ENDIF Defined(WEBBROKER)}
{ TFootballFrame }

function TFootballFrame.AsHtml: string;
begin
  Result := self.FFrame.AsHtml
end;

constructor TFootballFrame.Create(const aFactory: IFootballFactory);
begin
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aFactory is nil');
  self.FFootballFactory := aFactory;
  FFrame := TMetro5PageFactory.GetMetro5Frame;
end;

{ TFootballBigRankingFrame }

constructor TFootballBigRankingFrame.Create(const aFactory: IFootballFactory; aRanking: IRankingTable;
  aDayList: IMatchDayNumbers; aLeagueList: ILeagues);
var
  aPortlet: IMetro5Portlet;
begin
  self.Create(aFactory);
  Guard.CheckNotNull(aRanking, ' TFootballBigRankingFrame.Create aRanking is nil');
  Guard.CheckNotNull(aDayList, ' TFootballBigRankingFrame.Create aDayList is nil');
  Guard.CheckNotNull(aLeagueList, ' TFootballBigRankingFrame.Create aLeagueList is nil');
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aFactory is nil');
  aPortlet := FFootballFactory.GetPortlet('Classifica Campionato', '', TMetro5IconType.jmiIconUser,
    TM5StateColorsStyle.m5sInfo);
  Guard.CheckNotNull(aPortlet, self.ClassName + '.Create aPortlet is nil');
  aPortlet.Head.AddSimpleTag('div', '', True, ['m-portlet__head-tools']);
  // riporta il link al Live Score in base alla giornata/campionato/stagione selezionati
  aPortlet.Head.SelectedItem.Add(aFactory.GetLiveScoreLink);
  // riporta il link al Goal Ranking in base alla giornata/campionato/stagione selezionati
  aPortlet.Head.SelectedItem.Add(aFactory.GetGoalRankingLink);
  // riporta il link alla Prossima Giornata in base alla giornata/campionato/stagione selezionat
  aPortlet.Head.SelectedItem.Add(aFactory.GetNextMatchesLink);
  // Navigatore delle pagine Frame del programma delle classifiche.
  aPortlet.Content.Add(FFootballFactory.GetNavigatorForm(aDayList, aLeagueList));
  aPortlet.Content.AddStyle(THtmlStyle.Padding, '10px');
  // Factory per la generazione della Tabella dinamica della classifica Big Ranking Table
  aPortlet.Content.Add(FFootballFactory.GetBigRankingTable(aRanking));
  FFrame.ContentBody.Add(aPortlet);
  (*
    self.Create(aFactory);
    Guard.CheckNotNull(aRanking, ' TFootballBigRankingFrame.Create aRanking is nil');
    Guard.CheckNotNull(aDayList, ' TFootballBigRankingFrame.Create aDayList is nil');
    Guard.CheckNotNull(aLeagueList, ' TFootballBigRankingFrame.Create aLeagueList is nil');
    FFrame.ContentBody.Add(FFootballFactory.GetBigRankingTable(aRanking, aDayList, aLeagueList));
  *)
end;

{ TCustomFootballFactory }

function TCustomFootballFactory.GetController: IFootballController;
var
  aServer: IJanuaServerFootball;
  aServerCms: IJanuaServerCms;
  aServerSystem: IJanuaServerSystem;
begin
  aServer := FFootballFactory.GetServerFootball;
  Guard.CheckNotNull(aServer, 'aServer is nil');
  aServerCms := FCmsFactory.GetServerCms;
  Guard.CheckNotNull(aServerCms, 'aServerCms is nil');
  if Assigned(FSystemFactory) then
    aServerSystem := FSystemFactory.GetServerSystem;
  Result := GetController(aServer, aServerCms, aServerSystem);
  Guard.CheckNotNull(Result, 'Result is nil');
end;

function TCustomFootballFactory.GetGoalRankingLink: IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'a', ['btn', 'm-btn--square', 'btn-outline-success',
    'm-btn m-btn--outline-2x']);
  Result.Text := 'Marcatori';
  Result.AddParam('href', '/?page=goalranking&league_id=' + self.FSettings.league_id.ToString + '&season_id=' +
    self.FSettings.season_id.ToString + '&match_day=' + self.FSettings.match_day.ToString);
end;

function TCustomFootballFactory.GetGoalRankingTable(aGoalRanking: IGoalRankingTable): IHtmlTable;
var
  aBuilder: IHtmlTableBuilder;
  aColumn: THtmlTableTableColumn;
begin
  // TMetro5TableBuilder = class(THtmlBuilder, IHtmlBuilder, IHtmlTableBuilder)
  aBuilder := TMetro5TableBuilder.Create(aGoalRanking);
  aColumn := THtmlTableTableColumn.Create(aGoalRanking.Rownum, '#');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aGoalRanking.FullName, 'Giocatore');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aGoalRanking.GoalRanking.FullTeamName, 'Squadra');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aGoalRanking.Goals, 'Gol');
  aBuilder.AddColumin(aColumn);
  Result := aBuilder.GetElement as IHtmlTable;
end;

function TCustomFootballFactory.GetLiveScoreLink: IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'a', ['btn', 'm-btn--square', 'btn-outline-warning',
    'm-btn m-btn--outline-2x']);
  Result.Text := 'Partite Live';
  Result.AddParam('href', '/?page=livescore&league_id=' + self.FSettings.league_id.ToString + '&season_id=' +
    self.FSettings.season_id.ToString + '&match_day=' + self.FSettings.match_day.ToString);
end;

function TCustomFootballFactory.GetMatchDetailContainer(aMatchDetail: IMatchDetail): IJanuaHtmlObject;
var
  aRow: IJanuaHtmlObject;
  TeamHomeXL, TeamVisitorXL: IJanuaHtmlObject;
  MatchGoalsXL: IJanuaHtmlObject;
  MatchLogoPoint, MatchLogoPointSM: IJanuaHtmlObject;
  TeamHomeSM, TeamVisitorsSM: IJanuaHtmlObject;
  aContainerHigh, aContainerLow: IJanuaHtmlObject;
begin
  (*
    For faster mobile-friendly development, use responsive display classes for showing and hiding elements
    by device. Avoid creating entirely different versions of the same site, instead hide element responsively
    for each screen size.

    To hide elements simply use the .d-none class or one of the .d-{sm,md,lg,xl}-none classes for any
    responsive screen variation.

    To show an element only on a given interval of screen sizes you can combine one .d-*-none class with
    a .d-*-* class, for example .d-none .d-md-block .d-xl-none will hide the element for all screen sizes
    except on medium and large devices.

    <div class="d-lg-none">hide on screens wider than lg</div>
    <div class="d-none d-lg-block">hide on screens smaller than lg</div>
  *)

  Result := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  Result.AddClass('container');

  aContainerHigh := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['container']);
  // <div class="d-none d-lg-block">hide on screens smaller than lg</div> sostituito con md
  aContainerHigh.AddClasses(['d-none ', 'd-md-block']);
  aContainerHigh.AddStyle(THtmlStyle.MarginBottom, '60px');
  aContainerHigh.AddStyle(THtmlStyle.MarginTop, '40px');
  aRow := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  aRow.AddClass('row');

  TeamHomeXL := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['col-4']);
  TeamHomeXL.AddStyle(THtmlStyle.PaddingLeft, '5px');
  TeamHomeXL.AddStyle(THtmlStyle.PaddingRight, '20px');
  TeamHomeXL.AddSimpleTag('h3', aMatchDetail.HomeTeamName.AsString);
  TeamHomeXL.SelectedItem.AddParam('align', 'right');
  TeamHomeXL.AddSimpleTag('p', aMatchDetail.GoalsHome(False));
  TeamHomeXL.SelectedItem.AddParam('align', 'right');

  TeamVisitorXL := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  TeamVisitorXL.AddClass('col-4');
  TeamVisitorXL.AddStyle(THtmlStyle.PaddingRight, '5px');
  TeamVisitorXL.AddStyle(THtmlStyle.PaddingLeft, '20px');
  TeamVisitorXL.AddSimpleTag('h3', aMatchDetail.VisitorsTeamName.AsString);
  TeamVisitorXL.AddSimpleTag('p', aMatchDetail.GoalsVisitors(False));

  MatchGoalsXL := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['col-4']);
  MatchLogoPoint := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['row']);
  // Immagine Squadra Casa
  MatchLogoPoint.AddSimpleTag('div', '', True, ['col-3']);
  MatchLogoPoint.SelectedItem.AddStyle(THtmlStyle.PaddingRight, '0px');
  // MatchLogoPoint.SelectedItem.AddStyle(THtmlStyle.MarginLeft, '10px');
  MatchLogoPoint.SelectedItem.Add(aMatchDetail.GetLogoHtmlObject(True, 70));
  MatchLogoPoint.SelectedItem.SelectedItem.AddParam('align', 'right');
  // Punteggio
  MatchLogoPoint.AddSimpleTag('div', '', True, ['col-6']);
  MatchLogoPoint.SelectedItem.AddSimpleTag('h1', aMatchDetail.GoalHome.AsString + ' - ' +
    aMatchDetail.GoalVisitor.AsString, True, []);
  MatchLogoPoint.SelectedItem.SelectedItem.AddParam('align', 'center');
  MatchLogoPoint.SelectedItem.AddStyle(THtmlStyle.Padding, '5px');
  MatchLogoPoint.SelectedItem.Add(aMatchDetail.MatchStatusHtml(False));
  // Immagine Squadra Ospite
  MatchLogoPoint.AddSimpleTag('div', '', True, ['col-3']);
  MatchLogoPoint.SelectedItem.AddStyle(THtmlStyle.PaddingLeft, '0px');
  MatchLogoPoint.SelectedItem.Add(aMatchDetail.GetLogoHtmlObject(False, 70));
  MatchLogoPoint.SelectedItem.SelectedItem.AddParam('align', 'left');
  MatchGoalsXL.Add(MatchLogoPoint);

  aRow.Add(TeamHomeXL);
  aRow.Add(MatchGoalsXL);
  aRow.Add(TeamVisitorXL);
  aContainerHigh.Add(aRow);

  TeamHomeSM := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['row']);
  TeamHomeSM.AddStyle(THtmlStyle.MarginBottom, '15px');
  TeamHomeSM.AddSimpleTag('div', '', True, ['col-12']);
  TeamHomeSM.SelectedItem.AddStyle(THtmlStyle.PaddingLeft, '5px');
  TeamHomeSM.SelectedItem.AddSimpleTag('span', aMatchDetail.HomeTeamName.AsString + ': ', False, ['m--font-danger']);
  TeamHomeSM.SelectedItem.AddSimpleTag('span', aMatchDetail.StringPlayers(True) + ': ', False, []);

  aContainerHigh.Add(TeamHomeSM);

  TeamVisitorsSM := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['row']);
  TeamVisitorsSM.AddSimpleTag('div', '', True, ['col-12']);
  TeamVisitorsSM.SelectedItem.AddStyle(THtmlStyle.PaddingLeft, '5px');
  TeamVisitorsSM.SelectedItem.AddSimpleTag('span', aMatchDetail.VisitorsTeamName.AsString + ': ', False,
    ['m--font-danger']);
  TeamVisitorsSM.SelectedItem.AddSimpleTag('span', aMatchDetail.StringPlayers(False) + ': ', False, []);

  aContainerHigh.Add(TeamVisitorsSM);
  // ----------------------------------------------------------------------------------------------

  aContainerLow := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  aContainerLow.AddClass('container');
  // <div class="d-none d-lg-block">hide on screens smaller than lg</div> sostituito con md
  aContainerLow.AddClasses(['d-md-none']);
  aContainerLow.AddStyle(THtmlStyle.MarginBottom, '40px');

  // Riga logo Risultati e Marcatori
  aRow := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  aRow.AddClass('row');

  // Immagine Squadra Casa
  aRow.AddSimpleTag('div', '', True, ['col-4']);
  MatchLogoPointSM := aRow.SelectedItem;
  // metto una riga
  MatchLogoPointSM.AddSimpleTag('div', '', True, ['row']);
  // logo squadra di casa
  MatchLogoPointSM.SelectedItem.Add(aMatchDetail.GetLogoHtmlObject(True, 64));
  MatchLogoPointSM.SelectedItem.SelectedItem.AddParam('align', 'center');
  MatchLogoPointSM.SelectedItem.SelectedItem.AddStyle(THtmlStyle.MarginLeft, '10px');
  // Riga sottostante con Home Team
  MatchLogoPointSM.AddSimpleTag('div', '', True, ['row']);
  MatchLogoPointSM.SelectedItem.AddSimpleTag('div', '', True, ['col-12']);
  MatchLogoPointSM.SelectedItem.SelectedItem.AddSimpleTag('h5', aMatchDetail.HomeTeamName.AsString);
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddStyle(THtmlStyle.color, 'Blue');
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddParam('align', 'left');
  MatchLogoPointSM.SelectedItem.AddSimpleTag('div', '', True, ['col-12']);
  MatchLogoPointSM.SelectedItem.SelectedItem.AddSimpleTag('p', aMatchDetail.GoalsHome(True));
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddStyle(THtmlStyle.color, 'black');
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddParam('align', 'left');

  // Punteggio
  aRow.AddSimpleTag('div', '', True, ['col-4']);
  MatchLogoPointSM := aRow;
  MatchLogoPointSM.SelectedItem.AddSimpleTag('h1', aMatchDetail.GoalHome.AsString + ' - ' +
    aMatchDetail.GoalVisitor.AsString, True, []);
  MatchLogoPointSM.SelectedItem.SelectedItem.AddParam('align', 'center');
  MatchLogoPointSM.SelectedItem.Add(aMatchDetail.MatchStatusHtml(True));

  // Immagine Squadra Ospite
  aRow.AddSimpleTag('div', '', True, ['col-4']);
  MatchLogoPointSM := aRow.SelectedItem;
  MatchLogoPointSM.AddSimpleTag('div', '', True, ['row']);
  MatchLogoPointSM.SelectedItem.AddSimpleTag('div', '', True, ['col-12']);
  MatchLogoPointSM.SelectedItem.SelectedItem.Add(aMatchDetail.GetLogoHtmlObject(False, 64));
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddParam('align', 'right');
  MatchLogoPointSM.AddSimpleTag('div', '', True, ['row']);
  MatchLogoPointSM.SelectedItem.AddSimpleTag('div', '', True, ['col-12']);
  MatchLogoPointSM.SelectedItem.SelectedItem.AddSimpleTag('h5', aMatchDetail.VisitorsTeamName.AsString);
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddStyle(THtmlStyle.color, 'Blue');
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddParam('align', 'right');
  MatchLogoPointSM.SelectedItem.AddSimpleTag('div', '', True, ['col-12']);
  MatchLogoPointSM.SelectedItem.SelectedItem.AddSimpleTag('p', aMatchDetail.GoalsVisitors(True));
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddStyle(THtmlStyle.color, 'black');
  MatchLogoPointSM.SelectedItem.SelectedItem.SelectedItem.AddParam('align', 'right');

  aContainerLow.Add(aRow); // Prima riga ....................................

  TeamHomeSM := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  TeamHomeSM.AddClass('row');
  TeamHomeSM.AddStyle(THtmlStyle.PaddingLeft, '-10px');
  TeamHomeSM.AddSimpleTag('div', '', True, ['col-12']);
  TeamHomeSM.SelectedItem.AddStyle(THtmlStyle.MarginLeft, '-15px');
  TeamHomeSM.SelectedItem.AddStyle(THtmlStyle.MarginBottom, '15px');
  TeamHomeSM.SelectedItem.AddSimpleTag('span', aMatchDetail.HomeTeamName.AsString + ': ', False, ['m--font-danger']);
  TeamHomeSM.SelectedItem.AddSimpleTag('span', aMatchDetail.StringPlayers(True), False, []);

  aContainerLow.Add(TeamHomeSM);

  TeamVisitorsSM := TJanuaHtmlObject.Create(FHtmlHelper, 'div');
  TeamVisitorsSM.AddClass('row');
  TeamVisitorsSM.AddStyle(THtmlStyle.PaddingLeft, '-10px');
  TeamVisitorsSM.AddSimpleTag('div', '', True, ['col-12']);
  TeamVisitorsSM.SelectedItem.AddStyle(THtmlStyle.MarginLeft, '-15px');
  TeamVisitorsSM.SelectedItem.AddSimpleTag('span', aMatchDetail.VisitorsTeamName.AsString + ': ', False,
    ['m--font-danger']);
  TeamVisitorsSM.SelectedItem.AddSimpleTag('span', aMatchDetail.StringPlayers(False), False, []);

  aContainerLow.Add(TeamVisitorsSM);

  // Assemblaggio Finale
  Result.Add(aContainerHigh);
  Result.Add(aContainerLow);

end;

function TCustomFootballFactory.GetMatchDetailTable(aMatchDetail: IMatchDetail): IHtmlTable;
var
  aRow: IHtmlTableRow;
  aCell: IHtmlTableCell;

  tmp: string;
begin
  Guard.CheckNotNull(aMatchDetail, 'THtmlTableBuilder.GetElement FRecordSet is nil');
  Result := THtmlTable.Create(FHtmlHelper);
  Result.HasHeader := False;

  aRow := THtmlTableRow.Create(FHtmlHelper);

  // Creo la Cella del 'Team' di Casa.
  tmp := aMatchDetail.HomeTeamLogo.AsString;
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 0, 0, '', False);
  aRow.AddCell(aCell);

  tmp := '<h1>' + aMatchDetail.GoalHome.AsString + ' - ' + aMatchDetail.GoalVisitor.AsString + '</h1>';
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 0, 2, '', False);
  aRow.AddCell(aCell);

  tmp := aMatchDetail.VisitorsTeamLogo.AsString;
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 0, 0, '', False);
  aRow.AddCell(aCell);

  Result.AddRow(aRow);
  aRow := nil;
  aRow := THtmlTableRow.Create(FHtmlHelper);

  tmp := aMatchDetail.GoalsHome;
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 0, 0, '', False);
  aRow.AddCell(aCell);

  tmp := aMatchDetail.GoalsVisitors;
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 0, 0, '', False);
  aRow.AddCell(aCell);

  Result.AddRow(aRow);
  aRow := nil;
  aRow := THtmlTableRow.Create(FHtmlHelper);

  tmp := aMatchDetail.StringPlayers(True);
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 3, 0, '', False);
  aRow.AddCell(aCell);

  tmp := aMatchDetail.StringPlayers(True);
  aCell := THtmlTableCell.Create(FHtmlHelper, tmp, 3, 0, '', False);
  aRow.AddCell(aCell);

  Result.AddRow(aRow);



  // aMatchDetail.GoalHome sta nella seconda Riga insieme a Goal Visitors ............

  // Result.AddClasses(['table', 'table-bordered', 'table-striped', 'table-hover']);

end;

function TCustomFootballFactory.GetMatchesTable(aMatches: IMatches; IsPlayed: boolean = True): IHtmlTable;
var
  aBuilder: IHtmlTableBuilder;
  aColumn: THtmlTableTableColumn;
begin
  aBuilder := TMetro5TableBuilder.Create(aMatches);
  aColumn := THtmlTableTableColumn.Create(aMatches.HomeTeamLogo, 'Casa');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aMatches.VisitorsTeamLogo, 'Ospiti');
  aBuilder.AddColumin(aColumn);

  if IsPlayed then
  begin
    aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).Score, 'Ris.');
    aBuilder.AddColumin(aColumn);
  end;

  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).Buttons, 'Note');
  aBuilder.AddColumin(aColumn);
  Result := aBuilder.GetElement as IHtmlTable;

end;

function TCustomFootballFactory.GetNavigatorForm(aDayList: IMatchDayNumbers; aLeagueList: ILeagues): IJanuaHtmlObject;
var
  LRow: IJanuaHtmlObject;
  LColumnLeagues, LColumnDayFrom, LColumnDayTo, LColumnButton: IJanuaHtmlObject;
  LLeagues, LFrom, LTo, LSubmitButton: IJanuaHtmlObject;
  LValue: TValue;
  LHidden1, LHidden2: IJanuaHtmlObject;
begin
  // Creo il form che si comporrà di
  // (1) hidden input season da link
  // (2) hidden input page = dynranking
  // (3) Riga di comandi composta da 3 Input:
  // (4) selettore campionati
  // (5) Selettord Dal
  // (6) Selettore Al

  Result := TJanuaHtmlFactory.CreateForm;
  // 1 Hidden input diretamente nel Form
  LHidden1 := TJanuaHtmlFactory.CreateObject('input', '', [], True);
  LHidden1.AddParam('type', 'hidden');
  LHidden1.AddParam('name', 'season_id');
  LHidden1.Id := 'season_id';
  LHidden1.AddParam('value', IntToStr(FSettings.season_id));
  Result.Add(LHidden1);

  // 2   Hidden input diretamente nel Form
  LHidden2 := TJanuaHtmlFactory.CreateObject('input', '', [], True);
  LHidden2.AddParam('type', 'hidden');
  LHidden2.AddParam('name', 'page');
  LHidden2.Id := 'page';
  LHidden2.AddParam('value', 'dynranking');
  Result.Add(LHidden2);

  // 3  Riga di comandi composta da 3 Input:
  LRow := TJanuaHtmlFactory.CreateObject('div', '', ['row'], True);

  // 4 Colonna di selezione delle Leghe
  LColumnLeagues := TJanuaHtmlFactory.CreateObject('div', '', ['col-md-5'], True);
  aLeagueList.First;
  LValue := TValue(FSettings.league_id); // aLeagueList.LeagueId.Value;
  LLeagues := TJanuaHtmlFactory.CreateSelect('league_id', aLeagueList, aLeagueList.LeagueId,
    aLeagueList.LeagueName, LValue);
  LLeagues.Id := 'leagueselect';
  LLeagues.AddClasses(['form-control', 'm-input']);
  LColumnLeagues.AddSimpleTag('div', '', True, ['form-group', 'm-form__group']);
  LColumnLeagues.SelectedItem.AddSimpleTag('label', 'Campionato:');
  LColumnLeagues.SelectedItem.SelectedItem.AddParam('for', 'leagueselect');
  LColumnLeagues.SelectedItem.Add(LLeagues);
  LRow.Add(LColumnLeagues);

  // 5 Colonna di selezione Dal
  LColumnDayFrom := TJanuaHtmlFactory.CreateObject('div', '', ['col-md-2'], True);
  LValue := IfThen(FSettings.match_day_from > 0, FSettings.match_day_from, 1);
  LFrom := TJanuaHtmlFactory.CreateSelect('from', aDayList, aDayList.MatchDayNumber, aDayList.MatchDayNumber, LValue);
  LFrom.Id := 'fromselect';
  LFrom.AddClasses(['form-control', 'm-input']);
  LColumnDayFrom.AddSimpleTag('div', '', True, ['form-group', 'm-form__group']);
  LColumnDayFrom.SelectedItem.AddSimpleTag('label', 'Dalla Giornata:');
  LColumnDayFrom.SelectedItem.SelectedItem.AddParam('for', 'fromselect');
  LColumnDayFrom.SelectedItem.Add(LFrom);
  LRow.Add(LColumnDayFrom);

  // 6 Colonna di selezione Al
  LColumnDayTo := TJanuaHtmlFactory.CreateObject('div', '', ['col-md-2'], True);
  aDayList.Last;
  LValue := IfThen(FSettings.match_day_to > 0, FSettings.match_day_to, aDayList.MatchDayNumber.AsInteger);
  LTo := TJanuaHtmlFactory.CreateSelect('to', aDayList, aDayList.MatchDayNumber, aDayList.MatchDayNumber, LValue);
  LTo.Id := 'toselect';
  LTo.AddClasses(['form-control', 'm-input']);
  LColumnDayTo.AddSimpleTag('div', '', True, ['form-group', 'm-form__group']);
  LColumnDayTo.SelectedItem.AddSimpleTag('label', 'Alla Giornata:');
  LColumnDayTo.SelectedItem.SelectedItem.AddParam('for', 'toselect');
  LColumnDayTo.SelectedItem.Add(LTo);
  LRow.Add(LColumnDayTo);

  // 7 Bottone di Aggiornamento
  LColumnButton := TJanuaHtmlFactory.CreateObject('div', '', ['col-md-3'], True);
  LSubmitButton := TJanuaHtmlFactory.CreateObject('button', 'Aggiorna', ['btn', 'btn-brand'], True);
  LSubmitButton.AddParam('type', 'sumbit');
  LSubmitButton.AddStyle(THtmlStyle.Width, '100%');
  LSubmitButton.AddStyle(THtmlStyle.MarginTop, '20px');
  LColumnButton.Add(LSubmitButton);
  LRow.Add(LColumnButton);

  // Finale
  Result.Add(LRow);
end;

function TCustomFootballFactory.GetNextMatchesLink: IJanuaHtmlObject;
begin
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'a', ['btn', 'm-btn--square', 'btn-outline-danger',
    'm-btn m-btn--outline-2x']);
  Result.Text := 'Prossimo Turno';
  Result.AddParam('href', '/?page=nextmatches&league_id=' + self.FSettings.league_id.ToString + '&season_id=' +
    self.FSettings.season_id.ToString + '&match_day=' + self.FSettings.match_day.ToString);
end;

function TCustomFootballFactory.GetPortlet(aTitle, aSubTitle: string; aIcon: TMetro5IconType;
  aFontColor: TM5StateColorsStyle): IMetro5Portlet;
var
  o: IJanuaHtmlObject;
  h: IMetro5PortletHead;
begin
  o := TMetro5Factory.CreateMetro5PortletHead(aTitle, aSubTitle, aIcon, aFontColor);
  if supports(o, IMetro5PortletHead, h) then
  begin
    o := TMetro5Factory.CreatePortlet(h);
    supports(o, IMetro5Portlet, Result);
  end;
end;

function TCustomFootballFactory.GetRankingLink: IJanuaHtmlObject;
var
  LParam: string;
begin
  Guard.CheckNotNull(FSettings, 'TCustomFootballFactory.GetRankingLink Settings is nil');
  Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'a', ['btn', 'm-btn--square', 'btn-outline-brand',
    'm-btn m-btn--outline-2x']);
  Result.Text := 'Classifiche';
  LParam := '/?page=dynranking&league_id=';
  LParam := LParam + self.FSettings.league_id.ToString;
  LParam := LParam + '&season_id=' + self.FSettings.season_id.ToString;
  LParam := LParam + '&match_day=' + self.FSettings.match_day.ToString;
  Result.AddParam('href', LParam);
end;

function TCustomFootballFactory.GetRankingTable(aRanking: IRankingTable): IHtmlTable;
var
  aBuilder: IHtmlTableBuilder;
  aColumn: THtmlTableTableColumn;
begin
  Guard.CheckNotNull(aRanking, 'TDilettantissimoFactory.GetRankingTable aRanking is nil');
  aBuilder := TMetro5TableBuilder.Create(aRanking);
  Result := aBuilder.GetElement as IHtmlTable;
  aColumn := THtmlTableTableColumn.Create(aRanking.Pos, '#', 'Squadra');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.RankingRow.TeamNameLogo, 'Formazione', 'Squadra');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.Points, 'Pti', 'Squadra');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.PlayedMatches, 'G', 'Totali');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.WonMatches, 'V', 'Totali');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.TiedMatches, 'N', 'Totali');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.LostMatches, 'P', 'Totali');
  aBuilder.AddColumin(aColumn);

  aColumn := THtmlTableTableColumn.Create(aRanking.HomeMatches, 'G', 'Casa');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.HomeWon, 'V', 'Casa');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.HomeTied, 'N', 'Casa');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.HomeLost, 'P', 'Casa');
  aBuilder.AddColumin(aColumn);

  aColumn := THtmlTableTableColumn.Create(aRanking.OutsidePlayed, 'G', 'Totali');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.OutsideWon, 'V', 'Totali');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.OutsideTied, 'N', 'Totali');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.OutsideLost, 'P', 'Totali');
  aBuilder.AddColumin(aColumn);

  aColumn := THtmlTableTableColumn.Create(aRanking.GoalDone, 'GF', 'Gol');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aRanking.GoalLost, 'GS', 'Gol');
  aBuilder.AddColumin(aColumn);
  Result := aBuilder.GetElement as IHtmlTable;
end;

function TCustomFootballFactory.GetSettings: IFootballSettings;
begin
  Result := self.FSettings
end;

function TCustomFootballFactory.GetSmallMatchDetailContainer(aMatchDetail: IMatchDetail): IJanuaHtmlObject;
begin

end;

procedure TCustomFootballFactory.SetSettings(const Value: IFootballSettings);
begin
  FSettings := Value;
end;

function TCustomFootballFactory.CreateBigRankingFrame(aRanking: IRankingTable; aDayList: IMatchDayNumbers;
  aLeagueList: ILeagues): IFootballPage;
begin
  Guard.CheckNotNull(aRanking, 'TLNDFactory.CreateBigRankingFrame aRanking is Null');
  Guard.CheckNotNull(aDayList, 'TLNDFactory.CreateBigRankingFrame aDayList is Null');
  Guard.CheckNotNull(aLeagueList, 'TLNDFactory.CreateBigRankingFrame aLeagueList is Null');
  Result := TFootballBigRankingFrame.Create(self, aRanking, aDayList, aLeagueList)
end;

function TCustomFootballFactory.CreateDynamicFrame(aRanking: IRankingTable): IFootballPage;
begin

end;

function TCustomFootballFactory.CreateFullLiveScoreFrame(aMatchDetails: IMatchDetails; aRanking: IRankingTable;
  aGoalRanking: IGoalRankingTable; aMatchDay: IMatchDays): IFootballPage;
begin
  Result := TFootballFullLiveFrame.Create(self, aGoalRanking, aRanking, aMatchDetails, aMatchDay)
end;

function TCustomFootballFactory.CreateGoalRankingFrame(aGoalRanking: IGoalRankingTable): IFootballPage;
begin
  Result := TFootballGolRankingFrame.Create(self, aGoalRanking)
end;

function TCustomFootballFactory.CreateMatchesFrame(aMatches: IMatches): IFootballPage;
begin
  Result := TFootballMatchesFrame.Create(self, aMatches);
end;

function TCustomFootballFactory.CreateNextMatchesFrame(aMatches: IMatches): IFootballPage;
begin
  Result := TFootballNextMatchesFrame.Create(self, aMatches);
end;

function TCustomFootballFactory.CreateRankingFrame(aRanking: IRankingTable): IFootballPage;
begin
  Result := TFootballRankingFrame.Create(self, aRanking)
end;

function TCustomFootballFactory.CreateSimpleLiveScoreFrame(aMatchDetails: IMatchDetail): IFootballPage;
begin

end;

function TCustomFootballFactory.GetBigRankingTable(aRanking: IRankingTable): IJanuaHtmlObject;
var
  LTable: IHtmlTable;
  // LRowTable: IJanuaHtmlObject;
begin
  Result := TJanuaHtmlFactory.CreateObject('row', '', ['row'], True);
  // Table
  // LRowTable :=
  LTable := self.GetRankingTable(aRanking);
  LTable.Id := 'rankingtable';
  LTable.Sortable := True;
  Result.Add(LTable);
  Result.Add(TJanuaHtmlFactory.JsSort('rankingtable', LTable.Level));
  // Result.Add(LRowTable);

end;

constructor TCustomFootballFactory.Create(aFootballFactory: IJanuaServerFootballFactory;
  aCmsFactory: IJanuaServerCmsFactory; aSystemFactory: IJanuaServerSystemFactory);
begin
  try
    self.Create;
    self.FFootballFactory := aFootballFactory;
    self.FCmsFactory := aCmsFactory;
    self.FSystemFactory := aSystemFactory;
  except
    on e: Exception do
      raise Exception.Create(self.ClassName + '.Create Error: ' + sLineBreak + e.Message);
  end;
end;

constructor TCustomFootballFactory.Create;
begin
  self.FHelper := TMetro5HtmlHelper.Create
end;

{ TFootballDynamicLiveFrame }

constructor TFootballFullLiveFrame.Create(const aFactory: IFootballFactory; aGolRanking: IGoalRankingTable;
  aRanking: IRankingTable; aMatDetails: IMatchDetails; aMatchDay: IMatchDays);
var
  aPortlet: IMetro5Portlet;
  LContainerMatch: IJanuaHtmlObject;
begin
  Guard.CheckNotNull(aMatDetails, self.ClassName + '.Create aMatDetails is nil');
  Guard.CheckNotNull(aGolRanking, self.ClassName + '.Create aGolRanking is nil');
  Guard.CheckNotNull(aFactory, self.ClassName + '.Create aFactory is nil');
  // chiama il Creator di Default (ancestor)
  self.Create(aFactory);
  // Richiama il Live Score 'Risultati Live Score'
  aPortlet := FFootballFactory.GetPortlet('', '', TMetro5IconType.jmlSocialDribble, TM5StateColorsStyle.m5sSecondary);
  Guard.CheckNotNull(aPortlet, self.ClassName + '.Create aPortlet is nil');

  (*
    aColumn1 := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['col-sm']);
  *)

  aPortlet.Head.AddSimpleTag('div', '', True, ['m-portlet__head-tools']);
  // Classifica
  aPortlet.Head.SelectedItem.Add(aFactory.GetRankingLink);
  // Marcatori
  aPortlet.Head.SelectedItem.Add(aFactory.GetGoalRankingLink);
  // Prossimo Turno
  aPortlet.Head.SelectedItem.Add(aFactory.GetNextMatchesLink);

  aMatDetails.First;
  while not aMatDetails.Eof do
  begin
    // ogni Match è identificato da una Tabellina che lo Riassume
    // La tabella potrebbe avere la seguente Forma
    // Nome Squadra - Logo - Risultato - Logo - Nome Squadra
    LContainerMatch := FFootballFactory.GetMatchDetailContainer(aMatDetails.MatchDetail);
    aPortlet.Content.Add(LContainerMatch);
    (*
      aTable := self.FFootballFactory.GetMatchDetailTable(aMatDetails.MatchDetail);
      aTable.AddStyle(THtmlStyle.MarginBottom, '10px');
      aColumn1.Add(aTable);
    *)
    aMatDetails.Next;
  end;

  (*
    aContainer := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['container']);
    aRow := TJanuaHtmlObject.Create(FHtmlHelper, 'div', ['row']);
    aRow.Add(aColumn1);
    aContainer.Add(aRow);
    aPortlet.Content.Add(aContainer);
  *)

  FFrame.ContentBody.Add(aPortlet);

  (*
    Create(aFactory);
    Guard.CheckNotNull(aFactory, ' TFootballNextMatchesFrame.Create aServer is nil');
    FFrame.ContentBody.Add(self.FFootballFactory.GetMatchesTable(aNextMatches, False))
  *)

end;

{ TFootballDynamicFrame }

constructor TFootballDynamicFrame.Create(const aFactory: IFootballFactory; aGolRanking: IGoalRankingTable;
  aRanking: IRankingTable; aDayList: IMatchDayNumbers; aLeagueList: ILeagues);
begin

end;

{ TFootballSimpleLiveFrame }

constructor TFootballSimpleLiveFrame.Create(aMatDetails: IMatchDetails; aMatchDay: IMatchDay);
begin

end;

initialization

try
  { Insert Procedures ............................... }
  FMainArguments := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments') as IMainArguments;
  FLock := TCriticalSection.Create;
except
  on e: Exception do
    raise Exception.Create('Janua.Football.Web.initialization ' + e.Message);
end;

finalization

Janua.Core.Functions.ExecProc(
  procedure
  begin
    { Insert Procedures ............................... }
    FreeAndNil(FLock);
  end, 'Janua.Core.Football.initialization');

end.
