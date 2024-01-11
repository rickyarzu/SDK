unit unitTestPgFootball;

interface

uses
  Janua.Football.Server.Intf, Janua.Football.Web.Intf,
  DUnitX.TestFramework;

type

  [TestFixture]
  TTestPgFootball = class(TObject)
  private
    function GenerateServer: IJanuaServerFootball;
    function GetController(aFramework: string = 'DIL'): IFootballController;
    function GetFactory(aFramework: string = 'DIL'): IFootballFactory;
    procedure SaveString(t, s: string);
    // ***************** Rest Server Functions *****************************************************
    function FactoryCreateFootballServer: IJanuaServerFootball;

    procedure SaveLog(const aTestName: string);
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestStorage;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure TestFootball;
    [Test]
    [TestCase('TestA', '76,124')]
    // [TestCase('TestB', '3,4')]
    procedure TestLastMatcDay(const aSeasonID: Integer; const aLeagueID: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure TestMatcDay(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure TestRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure TestGolRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure TestMatchDetail(const aMatchID: Int64);
    [Test]
    [TestCase('TestA', '76,124,0')]
    [TestCase('TestB', '76,124,1')]
    procedure TestLiveSCore(const aSeasonID, aLeagueID, aMatchDay: smallint);
    [Test]
    [TestCase('TestA', '76,124,0')]
    [TestCase('TestB', '76,124,7')]
    procedure ChampionshipSummary(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    [TestCase('TestB', '76,124,7')]
    procedure Matches(const aSeasonID, aLeagueID, aMatchDay: smallint);
    [Test]
    [TestCase('TestA', '77,124')]
    [TestCase('TestB', '77,145')]
    procedure MatchDayList(const aSeasonID, aLeagueID: smallint);
    [Test]
    [TestCase('TestA', '77,124,0, 0')]
    [TestCase('TestB', '77,124,1, 2')]
    [TestCase('Test0', '0,0,0, 0')]
    procedure DynamicRanking(const aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: smallint);
    [Test]
    [TestCase('TestA', '76,124,3')]
    [TestCase('TestB', '76,124,1')]
    // [TestCase('Test0', '0,0,0')]
    procedure TablesLiveScore(const aSeasonID, aLeagueID, aMatchDay: smallint);
    // ------------------- Frames Frames Frames --------------------------------------
    [Test]
    [TestCase('TestDil', 'DIL')]
    [TestCase('TestLND', 'LND')]
    procedure HomePage(aFramework: string);
    [Test]
    [TestCase('TestA', '76,124,0')]
    [TestCase('TestB', '76,124,7')]
    procedure FrameMatches(const aSeasonID, aLeagueID, aMatchDay: smallint);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure FrameGolRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure FrameRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure FrameSmallRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0, 0')]
    [TestCase('TestB', '76,124,1, 2')]
    [TestCase('Test0', '0,0,0, 0')]
    procedure FrameDynamicRanking(const aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: smallint);
    [Test]
    [TestCase('GetPPage', 'http://localhost:8099/,C:\Januaproject\Test\temp\,testpg.html')]
    procedure TestPage(const AValue1, AValue2, AValue3: string);
    [Test]
    [TestCase('TestA', '76,124,0, 0')]
    [TestCase('TestB', '76,124,1, 2')]
    // [TestCase('Test0', '0,0,0, 0')]
    procedure FrameLiveScore(const aSeasonID, aLeagueID, aMatchDay: Integer);
    // ***************** Rest Server Functions *****************************************************
    [Test]
    [TestCase('TestA', '76,124,0')]
    // [TestCase('TestB', '3,4')]
    procedure RestRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [TestCase('TestA', '76,124,0')]
    [TestCase('TestB', '76,124,1')]
    // [TestCase('Test0', '0,0,0, 0')]
    procedure RestMatchDay(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,0')]
    [TestCase('TestB', '76,124,1')]
    // [TestCase('Test0', '0,0,0, 0')]
    procedure RestGoalRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,2')]
    [TestCase('TestB', '76,124,3')]
    procedure RestNexMatches(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,2')]
    [TestCase('TestB', '76,124,1')]
    procedure RestGetNextMatchDay(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestCalendarMatches(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '76,124,2')]
    [TestCase('TestB', '76,124,1')]
    procedure RestSelectedSeason(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestGetMatchDaysList(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '77,124,1,30')]
    [TestCase('TestB', '77,124,2,4')]
    procedure RestDynamicRanking(const aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: Integer);
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestDynamicGoalRanking(const aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: Integer);
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestGetLiveScore(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '104280,3')]
    [TestCase('TestB', '123769,0')]
    procedure RestPlayerCareers(const aPlayerID, aReCordCount: Integer);
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure TestRestSeasonsLeagues(const aSeasonID, aLeagueID, aMatchDay: Integer);
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestCalendar(const aSeasonID, aLeagueID, aMatchDay: Integer); // Non implemented
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestChampionship(const aSeasonID, aLeagueID, aMatchDay: Integer); // Ok
    [Test]
    [TestCase('TestA', '77,124,153840')]
    procedure RestMatchDetails(const aSeasonID, aLeagueID, aMatchID: Integer); // Ok
    [Test]
    [TestCase('TestA', '77,124,2')]
    [TestCase('TestB', '77,124,1')]
    procedure RestMatches(const aSeasonID, aLeagueID, aMatchDay: Integer);
    // Not Implemented all matches in a Day
  end;

implementation

uses
  System.SysUtils, System.Classes,
  // Janua Core Classes
  Janua.Core.Classes, Janua.Core.Types, Janua.Cloud.Http.Impl, Janua.Cloud.Http.Intf,
  // Orm
  Janua.Orm.Intf, Janua.Orm.Impl,
  // HTML
  Janua.Html.Builder.Impl, Janua.Html.Intf,
  // Rest Http Server
  Janua.Server.Intf, Janua.Http.Impl, Janua.System.Server.Intf, Janua.Server.Impl,
  // Server
  Janua.Cms.Server.Intf, Janua.Cms.Server.Impl, Janua.Football.Server.Impl,
  // Football
  Janua.Football.Intf, Janua.Football.Impl,
  // Web Server
  Janua.Dilettantissimo.Impl, Janua.Dilettantissimo.Intf, Janua.Football.Web.Impl,
  Janua.LND.Impl, Janua.LND.Intf,
  // Football Orm
  JOrm.Football.Championship.Intf, JOrm.Football.MatchDay.Intf, JOrm.Football.MatchDay.Impl,
  JOrm.Football.MatchDetails.Intf, JOrm.Football.MatchDetails.Impl,
  JOrm.Football.RankingTable.Intf, JOrm.Football.RankingTable.Impl,
  JOrm.Football.Championship.Impl, JOrm.Football.Matches.Intf, JOrm.Football.Matches.Impl,
  JOrm.Football.GoalRanking.Intf, JOrm.Football.GoalRanking.Impl,
  JOrm.Football.Season.Intf, JOrm.Football.Season.Impl,
  JOrm.Football.PlayerCareer.Intf, JOrm.Football.PlayerCareer.Impl,
  // Postgres
  Janua.Postgres.Football.Impl, Janua.Postgres.Cms.Impl, // Janua.Postgres.System.Impl
  //
  uWebBrokerTest,
  // Application Framework
  Janua.Application.Framework;

const
  sl = sLineBreak;

procedure TTestPgFootball.ChampionshipSummary(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aServer: IJanuaServerFootball;
  tmp: string;
  vTest: boolean;
begin
  vTest := aMatchDay <> 0;
  aServer := self.GenerateServer;
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  aServer.Settings.match_day := aMatchDay;
  aServer.OpenChampionshipSummary;
  Assert.AreNotEqual(0, aServer.Matches.RecordCount, 'Matches = 0');
  if vTest then
    Assert.AreNotEqual(0, aServer.NextMatches.RecordCount, 'NextMatches = 0');
end;

procedure TTestPgFootball.DynamicRanking(const aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: smallint);
var
  aServer: IJanuaServerFootball;
  aPage: IFootballPage;
  aTable, aForm: IJanuaHtmlObject;
  tmp: string;
  aFactory: IFootballFactory;
  aTest: Integer;
begin
  aFactory := self.GetFactory;
  aServer := self.GenerateServer;
  aFactory.Settings := aServer.Settings;

  Assert.IsNotNull(aServer.MatchDaysList, 'Frame MatchDaysList is null');
  Assert.IsNotNull(aServer.Leagues, 'Frame Leagues is null');
  Assert.IsNotNull(aServer.DynamicRanking, 'Frame DynamicRanking is null');

  aTest := aServer.OpenDynamicRanking(aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo);
  Assert.AreNotEqual(0, aTest);
  Assert.AreEqual(aTest, aServer.DynamicRanking.RecordCount);
  Assert.AreNotEqual(0, aServer.DynamicRanking.RecordCount);
  Assert.AreNotEqual(0, aServer.MatchDaysList.RecordCount);
  Assert.AreNotEqual(0, aServer.Leagues.RecordCount);
  // ***************************************************************************************************
  aForm := aFactory.GetNavigatorForm(aServer.MatchDaysList, aServer.Leagues);
  tmp := aForm.AsHtml;
  Assert.AreNotEqual('', tmp, 'aForm is null');
  aTable := aFactory.GetBigRankingTable(aServer.DynamicRanking);
  tmp := aTable.AsHtml;
  Assert.AreNotEqual('', tmp, 'Table DynamicRanking is null');
  aPage := aFactory.CreateBigRankingFrame(aServer.DynamicRanking, aServer.MatchDaysList, aServer.Leagues);
  tmp := aPage.AsHtml;
  Assert.AreNotEqual('', tmp, 'Frame DynamicRanking is null');
end;

function TTestPgFootball.FactoryCreateFootballServer: IJanuaServerFootball;
var
  aFactory: IJanuaServerFootballFactory;
begin
  aFactory := TJanuaServerPgFootballFactory.Create;
  Result := aFactory.GetServerFootball;
  Assert.IsNotNull(Result, 'IJanuaServerFootball is nil');
  Assert.IsNotNull(Result.Settings, 'aSettings is nil');
end;

procedure TTestPgFootball.FrameDynamicRanking(const aSeasonID, aLeagueID, aMatchDayFrom,
  aMatchDayTo: smallint);
var
  aController: IFootballController;
  s: string;
  t: smallint;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  Assert.IsNotNull(aController.Settings, 'Settings is nil');
  aController.Settings.season_id := aSeasonID;
  aController.Settings.league_id := aLeagueID;
  aController.Settings.match_day_from := aMatchDayFrom;
  aController.Settings.match_day_to := aMatchDayTo;
  // da qui implementare la funzione GetDynamicRankingFrame del Controller
  // e successivamente GetDynamicRankingPage del Controller ..............
  s := aController.getDynamicRankingFrame;
  if aSeasonID = 0 then
  begin
    t := 0;
    Assert.AreNotEqual(t, aController.Settings.season_id, 'season_id = 0');
    t := 76;
    Assert.AreEqual(t, aController.Settings.season_id,
      'season_id = ' + aController.Settings.season_id.ToString);
  end;

  if aLeagueID = 0 then
  begin
    t := 0;
    Assert.AreNotEqual(t, aController.Settings.league_id, 'league_id = 0');
    t := 145;
    Assert.AreEqual(t, aController.Settings.league_id,
      'league_id = ' + aController.Settings.league_id.ToString);
  end;

  Assert.IsNotNull(aController.Server.DynamicRanking, 'Matches is nil');
  Assert.AreNotEqual(0, aController.Server.DynamicRanking.RecordCount);
  SaveString('dRanking', s)
end;

procedure TTestPgFootball.FrameGolRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aController: IFootballController;
  s, f: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  aController.Settings.season_id := aSeasonID;
  aController.Settings.league_id := aLeagueID;
  aController.Settings.match_day := aMatchDay;
  s := aController.GetGoalRankingFrame;
  Assert.IsNotNull(aController.Server.GoalRanking, 'GoalRanking is nil');
  Assert.AreNotEqual('', s, true, 's is nil');
  Assert.AreNotEqual(0, aController.Server.GoalRanking.RecordCount);
  SaveString('golranking', s)
end;

procedure TTestPgFootball.FrameLiveScore(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  Assert.IsNotNull(aController.Settings, 'Settings is nil');
  aController.Settings.season_id := aSeasonID;
  aController.Settings.league_id := aLeagueID;
  aController.Settings.match_day := aMatchDay;
  s := aController.GetFullLiveScoreFrame;
  Assert.IsNotNull(aController.Server.RankingTable, 'RankingTable is nil');
  Assert.IsNotNull(aController.Server.MatchDetails, 'MatchDetails is nil');
  Assert.IsNotNull(aController.Server.GoalRanking, 'GoalRanking is nil');
  Assert.IsNotNull(aController.Server.MatchDay, 'MatchDay is nil');
  Assert.AreNotEqual(0, aController.Server.MatchDetails.RecordCount,
    'MatchDetails 0 Rec' + sl + aController.Settings.Log);
  Assert.AreNotEqual(0, aController.Server.RankingTable.RecordCount,
    'RankingTable 0 Rec' + sl + aController.Settings.Log);
  Assert.AreNotEqual(0, aController.Server.GoalRanking.RecordCount,
    'GoalRanking 0 Rec' + sl + aController.Settings.Log);
  SaveString('LiveScore', s)
end;

procedure TTestPgFootball.FrameMatches(const aSeasonID, aLeagueID, aMatchDay: smallint);
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  Assert.IsNotNull(aController.Settings, 'Settings is nil');
  aController.Settings.season_id := aSeasonID;
  aController.Settings.league_id := aLeagueID;
  aController.Settings.match_day := aMatchDay;
  s := aController.GetMatchesFrame;
  Assert.IsNotNull(aController.Server.Matches, 'Matches is nil');
  Assert.AreNotEqual(0, aController.Server.Matches.RecordCount);
  SaveString('matches', s)
end;

procedure TTestPgFootball.FrameRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  aController.Settings.season_id := aSeasonID;
  aController.Settings.league_id := aLeagueID;
  aController.Settings.match_day := aMatchDay;
  s := aController.GetRankingFrame;
  Assert.IsNotNull(aController.Server.RankingTable, 'Matches is nil');
  Assert.AreNotEqual(0, aController.Server.RankingTable.RecordCount);
  SaveString('ranking', s)
end;

procedure TTestPgFootball.FrameSmallRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  aController.Settings.season_id := aSeasonID;
  aController.Settings.league_id := aLeagueID;
  aController.Settings.match_day := aMatchDay;
  s := aController.GetSmallRankingFrame;
  Assert.AreNotEqual(s, '', 'No html Frame s is nil');
  Assert.IsNotNull(aController.Server.RankingTable, 'RankingTable is nil');
  Assert.AreNotEqual(0, aController.Server.RankingTable.RecordCount, 'RankingTable 0 Records');
  SaveString('smallranking', s)

end;

function TTestPgFootball.GenerateServer: IJanuaServerFootball;
var
  aServerFootball: IJanuaServerFootballFactory;
begin
  aServerFootball := TJanuaServerPgFootballFactory.Create;
  Result := aServerFootball.GetServerFootball;
  Assert.IsNotNull(Result, 'IJanuaServerFootball is nil');
  Assert.IsNotNull(Result.Settings, 'aSettings is nil');
end;

function TTestPgFootball.GetController(aFramework: string): IFootballController;
var
  aFactory: IFootballFactory;
begin
  // TDilettantissimoFootballFactory = class(TInterfacedObject, IFootballFactory)

  // aSettings := TFootballSettings.Create;
  // Assert.IsNotNull(aSettings, 'aSettings is nil');
  // aStorage := Janua.Virtual.Football.TJanuaVirtualFootballStorage.Create(aSettings);
  // aStorage.KeepAlive := True;
  // Assert.IsNotNull(aStorage, 'aStorage is nil');

  // aCmsStorage := TJanuaVirtualCmsStorage.Create;
  // aServerFootball := TJanuaServerFootball.Create(aStorage, nil, aSettings);
  // aServerCms := TJanuaServerCms.Create(aCmsStorage, nil);
  // Preparo Server CMS.

  aFactory := GetFactory(aFramework);
  Assert.IsNotNull(aFactory, 'GetController aFactory is nil');
  Result := aFactory.GetController;
  Assert.IsNotNull(Result, 'GetController Result is nil');
  Assert.IsNotNull(Result.Server, 'Server is nil');
  Assert.IsNotNull(Result.CmsServer, 'Cms is nil');
end;

function TTestPgFootball.GetFactory(aFramework: string = 'DIL'): IFootballFactory;
var
  aServerFootball: IJanuaServerFootballFactory;
  aServerCms: IJanuaServerCmsFactory;
  aServerSystem: IJanuaServerSystemFactory;
begin
  aServerFootball := TJanuaServerPgFootballFactory.Create;
  aServerCms := TJanuaServerPgCmsFactory.Create(nil);
  aServerSystem := nil;
  if aFramework = 'DIL' then
    Result := TDilettantissimoFootballFactory.Create(aServerFootball, aServerCms, aServerSystem)
  else
    Result := TLNDFootballFactory.Create(aServerFootball, aServerCms, aServerSystem);

  Assert.IsNotNull(Result, ' GetFactory Result is nil');

end;

procedure TTestPgFootball.HomePage(aFramework: string);
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController(aFramework);
  Assert.IsNotNull(aController.Server, 'Server is nil');
  Assert.IsNotNull(aController.Settings, 'Settings is nil');
  s := aController.GetHome(1, 1, 20, 1);
  if aFramework = 'LND' then
  begin
    Assert.AreNotEqual('', s, 's is nil');
  end
  else
  begin
    Assert.IsNotNull(aController.CmsServer.MainArguments, 'MainArguments is nil');
    Assert.AreNotEqual(0, aController.CmsServer.MainArguments.RecordCount);
    Assert.IsNotNull(aController.CmsServer.MainArguments.Arguments, 'Arguments is nil');
    Assert.AreNotEqual(0, aController.CmsServer.MainArguments.Arguments.RecordCount);
  end;
  SaveString('home' + aFramework, s)
end;

procedure TTestPgFootball.MatchDayList(const aSeasonID, aLeagueID: smallint);
var
  aServer: IJanuaServerFootball;
  aPage: IFootballPage;
  aTable: IHtmlTable;
  tmp: string;
  aFactory: IFootballFactory;
begin
  aFactory := self.GetFactory;
  aServer := self.GenerateServer;
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  Assert.IsNotNull(aServer.MatchDaysList, 'Frame RankingTable is null');
  aServer.OpenMatchDayLists;
  Assert.AreNotEqual(0, aServer.MatchDaysList.RecordCount);
end;

procedure TTestPgFootball.Matches(const aSeasonID, aLeagueID, aMatchDay: smallint);
var
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  aServer := self.GenerateServer;
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  aServer.Settings.match_day := aMatchDay;
  aServer.OpenMatches;
  Assert.AreNotEqual(0, aServer.Matches.RecordCount, 'Matches = 0');
  Assert.AreEqual(aSeasonID, aServer.Settings.season_id, 'Season id does not match');
  // Assert.AreNotEqual(0, aServer.NextMatches.RecordCount, 'NextMatches = 0');

end;

procedure TTestPgFootball.RestCalendar(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aSeasons, bSeasons: JOrm.Football.Season.Intf.ISeasons;
  aChampionships, bChampionships: JOrm.Football.Championship.Intf.IChampionships;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  Test: TDAteTime;
  tmp: string;
  LCount, LTest: Word;
  LInt: Integer;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;

  LInt := LServer.GetLastSeasonID;
  Assert.AreNotEqual(-1, LInt, 'LServer.GetLastSeasonID not found');

  LServer.OpenSeasonsList;
  aSeasons := LServer.Seasons;
  Assert.AreNotEqual(0, aSeasons.RecordCount, 'Seasons Record Count = 0');
  Assert.AreNotEqual(0, aSeasons.SeasonId.AsInteger, 'SeasonId = 0');
  aSeasons.First;
  Assert.IsTrue(aSeasons.Locate(aSeasons.SeasonId, LInt), 'Non Trovata aSeasons.Locate: ' + LInt.ToString);
  Assert.AreEqual(LInt, aSeasons.SeasonId.AsInteger, 'SeasonId(' + aSeasons.SeasonId.AsString + ') non ? max '
    + LInt.ToString);
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetSeasons(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bSeasons viene creato assegnandogli il primo Record di Rec Result.
  bSeasons := JOrm.Football.Season.Impl.TSeasons.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bSeasons.ContentEquals(aSeasons), 'bSeasons not ContentEquals(aSeasons)' + sl +
    'internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bSeasons.Last;
  LResult := nil;
  aParams := nil;
  LSettings.Clear;
  LSettings.season_id := bSeasons.SeasonId.AsInteger;
  // Testo la f() sul server passandole i parametri
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  LResult := LServer.RestGetChampionships(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  LServer.Settings.season_id := LSettings.season_id;
  LServer.OpenChampionshipsList;
  aChampionships := LServer.Championships;
  Assert.AreNotEqual(0, aChampionships.RecordCount, 'aChampionships not loaded');
  bChampionships := TChampionships.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bChampionships sia uguale ad aChampionships
  Assert.IsTrue(bChampionships.ContentEquals(aChampionships),
    'bChampionships not ContentEquals(aChampionships internal test ');
  bChampionships.Last;
  // imposto il campionato nei parametri di test
  LSettings.league_id := bChampionships.LeagueId.AsInteger;
  // Seasons  self.AddFunction('seasons', RestGetSeasons);
  LResult := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'seasons',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  bSeasons := nil;
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bSeasons := JOrm.Football.Season.Impl.TSeasons.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bSeasons.ContentEquals(aSeasons), 'bSeasons not ContentEquals(aSeasons internal test ');

  // Championships
  bChampionships := nil;
  LResult := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'championships',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  bChampionships := TChampionships.Create(LResult.RecResult.RecordSets[0]);
  Assert.IsTrue(bChampionships.ContentEquals(aChampionships),
    'bChampionships not ContentEquals(aChampionships)');
end;

procedure TTestPgFootball.RestCalendarMatches(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aCalendarMatches, bCalendarMatches: IMatchCalendarDays;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  TJanuaLogger.StartLog;
  TJanuaLogger.StartWatch;
  try
    // Settings verranno poi usati per recuperare i dati che servono
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Local.IJanuaServerFootball.Start', self);
    LSettings := TFootballSettings.Create;
    LServer := FactoryCreateFootballServer;
    LServer.Settings.league_id := aLeagueID;
    LServer.Settings.season_id := aSeasonID;
    LServer.OpenCalendar;
    aCalendarMatches := LServer.MatchCalendarDays;
    Assert.IsNotNull(aCalendarMatches, 'aCalendarMatches is null');
    Assert.AreNotEqual(0, aCalendarMatches.RecordCount, 'aCalendarMatches Record Count = 0');
    aCalendarMatches.First;
    Assert.AreNotEqual(0, aCalendarMatches.LeagueId.AsInteger, 'aCalendarMatches.LeagueId = 0');
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Local.IJanuaServerFootball.End', self);
    LSettings.Clear;
    // ---------------------------------------------------------------------------------------------------
    // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params |
    // ---------------------------------------------------------------------------------------------------
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Local.RestGetCalendarMatchDays.Start', self);
    LSettings.league_id := aLeagueID;
    LSettings.season_id := aSeasonID;
    aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
    // ---------------------------------------------------------------------------------------------------
    // Testo la f() sul server passandole i parametri                                                   |
    // ---------------------------------------------------------------------------------------------------
    LResult := LServer.RestGetCalendarMatchDays(aParams);
    Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), sl + 'LResult Local Return Error');
    // ---------------------------------------------------------------------------------------------------
    // bCalendarMatches viene creato assegnandogli il primo RecordSet di Rec Result.                    |
    // ---------------------------------------------------------------------------------------------------
    bCalendarMatches := TMatchCalendarDays.Create(LResult.RecResult.RecordSets[0]);
    Assert.AreNotEqual(0, aCalendarMatches.LeagueId.AsInteger, 'bCalendarMatches not loaded');
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Local.RestGetCalendarMatchDays.End', self);
    // ---------------------------------------------------------------------------------------------------
    // Verifico che bCalendarMatches sia uguale ad aCalendarMatches                                     |
    // ---------------------------------------------------------------------------------------------------
    Assert.IsTrue(aCalendarMatches.ContentEquals(bCalendarMatches),
      'bCalendarMatches not ContentEquals(aGoalRanking internal test ');
    // ---------------------------------------------------------------------------------------------------
    // annullo LResult e bCalendarMatches ma mi tengo attivi i Parametri (Params).                      |
    // ---------------------------------------------------------------------------------------------------
    LResult := nil;
    bCalendarMatches := nil;
    // ---------------------------------------------------------------------------------------------------
    // Chiamo GetRestFunction football.calendarmatches e le passo i Parametri (LSettings)               |
    // ---------------------------------------------------------------------------------------------------
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Remote.RestGetCalendarMatchDays.Start', self);
    LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'calendarmatches',
      { aParams } aParams);
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Remote.RestGetCalendarMatchDays.GetRestFunction', self);
    Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
    Assert.IsNotNull(LResult, 'LResult is null');
    Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), sl + 'LResult Rest Return Error');
    // ---------------------------------------------------------------------------------------------------
    // bArticle viene creato assegnandogli il primo Record di Rec Result.                               |
    // ---------------------------------------------------------------------------------------------------
    bCalendarMatches := TMatchCalendarDays.Create(LResult.RecResult.RecordSets[0]);
    Assert.AreNotEqual(0, aCalendarMatches.LeagueId.AsInteger, 'bCalendarMatches not loaded');
    TJanuaLogger.LogRecord('RestCalendarMatches', 'Remote.RestGetCalendarMatchDays.End', self);
    // Verifico che bArticle sia uguale ad aArticle
    Assert.IsTrue(aCalendarMatches.ContentEquals(bCalendarMatches),
      'bCalendarMatches not ContentEquals(aGoalRanking rest test ');
  finally
    TJanuaLogger.StopLog;
    SaveLog('RestCalendarMatches');
  end;
end;

procedure TTestPgFootball.RestChampionship(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aChampionship, bChampionship: JOrm.Football.Championship.Intf.IChampionship;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.OpenChampionship;
  aChampionship := LServer.Championship;
  Assert.IsNotNull(aChampionship, 'aChampionship is null');
  // Assert.AreNotEqual(0, aChampionship.RecordCount, 'aRanking Record Count = 0');
  // aChampionship.First;
  Assert.AreNotEqual(0, aChampionship.LeagueId.AsInteger, 'aChampionship.LeagueId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetChampionship(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordCount, 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bChampionship := TChampionship.Create(LResult.RecResult.Records[0]);
  Assert.AreNotEqual(0, bChampionship.LeagueId.AsInteger, 'bChampionship not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bChampionship.ContentEquals(aChampionship),
    'bChampionship not ContentEquals(aChampionship internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  // bGoalRanking.Last;
  // Championships
  bChampionship := nil;
  LResult := nil;
  // self.AddFunction('championship', RestGetChampionship);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'championship',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordCount, 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bChampionship := TChampionship.Create(LResult.RecResult.Records[0]);
  Assert.AreNotEqual(0, bChampionship.LeagueId.AsInteger, 'bChampionship not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bChampionship.ContentEquals(aChampionship),
    'bChampionship not ContentEquals(aChampionship http test ');

end;

procedure TTestPgFootball.RestDynamicGoalRanking(const aSeasonID, aLeagueID, aMatchDayFrom,
  aMatchDayTo: Integer);
var
  LServer: IJanuaServerFootball;
  aGoalRanking, bGoalRanking: IGoalRankingTable;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_day_from := aMatchDayFrom;
  LServer.Settings.match_day_to := aMatchDayTo;
  LServer.OpenDynamicGoalRanking;
  aGoalRanking := LServer.DynamicGoalRanking;
  Assert.IsNotNull(aGoalRanking, 'aChampionship is null');
  // Assert.AreNotEqual(0, aChampionship.RecordCount, 'aRanking Record Count = 0');
  // aChampionship.First;
  Assert.AreNotEqual(0, aGoalRanking.RecordCount, 'aRanking.RecordCount = 0');
  Assert.AreEqual(76, aGoalRanking.SeasonId.AsInteger, 'aRanking.SeasonId <> 76');
  Assert.AreEqual(124, aGoalRanking.LeagueId.AsInteger, 'aRanking.League_id <> 124');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day_from := aMatchDayFrom;
  LSettings.match_day_to := aMatchDayTo;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetDynamicGoalRanking(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // ---------------------------------------------------------------------------------------------------
  // Verifico che il Recordset del Goal Ranking sia popolato cio? abbia ALMENO UN RECORD              |
  // ---------------------------------------------------------------------------------------------------
  Assert.AreNotEqual(0, LResult.RecResult.RecordSets[0].RecordCount, sl + 'LResult Return 0 Rec');
  // bGoalRanking viene creato assegnandogli il primo Record di Rec Result.
  bGoalRanking := TGoalRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bGoalRanking.LeagueId.AsInteger, sl + 'bRanking Local not loaded');
  // ---------------------------------------------------------------------------------------------------
  // Verifico che bGoalRanking sia uguale ad aGoalRanking
  // ---------------------------------------------------------------------------------------------------
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking),
    'bGoalRanking not ContentEquals(aGoalRanking internal test ');
  // ---------------------------------------------------------------------------------------------------
  // annullo LResult e bGoalRanking ma mi tengo attivi i Parametri (Params).                          |
  // ---------------------------------------------------------------------------------------------------
  bGoalRanking := nil;
  LResult := nil;
  // Reimposto i Parametri di Settings ------------------------------------------------------------------
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day_from := aMatchDayFrom;
  LSettings.match_day_to := aMatchDayTo;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);

  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'dyngoalranking',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Rest Return Error');
  // ---------------------------------------------------------------------------------------------------
  // Verifico che il Recordset del Goal Ranking sia popolato cio? abbia ALMENO UN RECORD              |
  // ---------------------------------------------------------------------------------------------------
  Assert.AreNotEqual(0, LResult.RecResult.RecordSets[0].RecordCount, sl + 'LResult Rest Return 0 Rec');
  // ---------------------------------------------------------------------------------------------------
  // bGoalRanking viene creato assegnandogli il primo RecordSet (0) di Rec Result.                    |
  // ---------------------------------------------------------------------------------------------------
  bGoalRanking := TGoalRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bGoalRanking.LeagueId.AsInteger, sl + 'bGoalRanking Rest not loaded');
  // ---------------------------------------------------------------------------------------------------
  // Verifico che bArticle sia uguale ad aArticle                                                     |
  // ---------------------------------------------------------------------------------------------------
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking),
    'bGoalRanking not ContentEquals(aGoalRanking) REST test ');

end;

procedure TTestPgFootball.RestDynamicRanking(const aSeasonID, aLeagueID, aMatchDayFrom, aMatchDayTo: Integer);
var
  LServer: IJanuaServerFootball;
  aRanking, bRanking: IRankingTable;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
  bTest: boolean;
begin
  // ---------------------------------------------------------------------------------------------------
  // Settings verranno poi usati per recuperare i dati che servono                                    |
  // ---------------------------------------------------------------------------------------------------
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_day_from := aMatchDayFrom;
  LServer.Settings.match_day_to := aMatchDayTo;
  LServer.OpenDynamicRanking;
  aRanking := LServer.DynamicRanking;
  Assert.IsNotNull(aRanking, 'aChampionship is null');
  Assert.AreNotEqual(0, aRanking.RecordCount, 'aRanking.RecordCount = 0');
  Assert.AreEqual(aSeasonID, aRanking.SeasonId.AsInteger, 'aRanking.SeasonId <> 76');
  Assert.AreEqual(aLeagueID, aRanking.LeagueId.AsInteger, 'aRanking.League_id <> 124');
  LSettings.Clear;
  // ---------------------------------------------------------------------------------------------------
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params |
  // ---------------------------------------------------------------------------------------------------
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day_from := aMatchDayFrom;
  LSettings.match_day_to := aMatchDayTo;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // ---------------------------------------------------------------------------------------------------
  // Testo la f() sul server passandole i parametri                                                   |
  // ---------------------------------------------------------------------------------------------------
  LResult := LServer.RestGetDynamicRanking(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // ---------------------------------------------------------------------------------------------------
  // bArticle viene creato assegnandogli il primo Record di Rec Result.                               |
  // ---------------------------------------------------------------------------------------------------
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreEqual(aRanking.LeagueId.AsInteger, bRanking.LeagueId.AsInteger,
    'bRanking League ID Local <> aRanking League ID');
  Assert.AreEqual(aRanking.SeasonId.AsInteger, bRanking.SeasonId.AsInteger,
    'bRanking SeasonId Local <> aRanking SeasonId');
  Assert.AreEqual(aRanking.RecordCount, bRanking.RecordCount, 'bRanking RecordCount <> aRanking RecordCount');
  // ---------------------------------------------------------------------------------------------------
  // Verifico che bArticle sia uguale ad aArticle                                                     |
  // ---------------------------------------------------------------------------------------------------
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bGoalRanking not ContentEquals ' + sl +
    'aGoalRanking iTest');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bRanking := nil;
  LResult := nil;
  LSettings.Clear;
  // ---------------------------------------------------------------------------------------------------
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params |
  // ---------------------------------------------------------------------------------------------------
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day_from := aMatchDayFrom;
  LSettings.match_day_to := aMatchDayTo;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // ---------------------------------------------------------------------------------------------------
  // Testo la f(football.dynranking) sul server passandole i parametri aParams                         |
  // ---------------------------------------------------------------------------------------------------
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'dynranking',
    { aParams } aParams);
  Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // ---------------------------------------------------------------------------------------------------
  // bArticle viene creato assegnandogli il primo Record di Rec Result.                                |
  // ---------------------------------------------------------------------------------------------------
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreEqual(aRanking.LeagueId.AsInteger, bRanking.LeagueId.AsInteger,
    'bRanking League ID Rest not ContentEquals aRanking League ID');
  Assert.AreEqual(aRanking.RecordCount, bRanking.RecordCount,
    'bRanking League ID Rest not ContentEquals aRanking Record Count');
  Assert.AreEqual(aRanking.SeasonId.AsInteger, bRanking.SeasonId.AsInteger,
    'bRanking Season Rest not ContentEquals aRanking Season');
  aRanking.First;
  bRanking.First;
  // ---------------------------------------------------------------------------------------------------
  // Verifico che bArticle sia uguale ad aArticle                                                      |
  // ---------------------------------------------------------------------------------------------------
  bTest := bRanking.ContentEquals(aRanking);
  Assert.IsTrue(bTest, 'bGoalRanking not ContentEquals(aGoalRanking) REST test ');
end;

procedure TTestPgFootball.RestGetLiveScore(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aMatchDetails, bMatchDetails: IMatchDetails;
  // aMatDay, bMatDay: JOrm.Football.MatchDay.Intf.IMatchDays;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_day := aMatchDay;
  LServer.OpenLiveScore;
  aMatchDetails := LServer.MatchDetails;
  Assert.AreNotEqual(0, aMatchDetails.RecordCount, 'aMatches Record Count = 0');
  aMatchDetails.First;
  Assert.AreNotEqual(0, aMatchDetails.MatchDetail.MatchId.AsInteger, 'aMatchDetails.MatchDetail.MatchId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day := aMatchDay;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LServer := nil;
  LServer := FactoryCreateFootballServer;
  LResult := LServer.RestGetLiveScore(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetails := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetails.RecordCount, 'bMatDay not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetails.ContentEquals(aMatchDetails),
    'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bMatchDetails := nil;
  LResult := nil;
  // self.AddFunction('livescore', self.RestGetLiveScore);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'livescore',
    { aParams } aParams);
  Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetails := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetails.RecordCount, 'bMatDay not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetails.ContentEquals(aMatchDetails),
    'bSeasons not ContentEquals(aSeasons internal test ');

end;

procedure TTestPgFootball.RestGetMatchDaysList(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aMatchList, bMatchList: IMatchDayNumbers;
  // aMatDay, bMatDay: JOrm.Football.MatchDay.Intf.IMatchDays;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_day := aMatchDay;
  LServer.OpenMatchDayLists;
  aMatchList := LServer.MatchDaysList;
  Assert.AreNotEqual(0, aMatchList.RecordCount, 'aMatches Record Count = 0');
  aMatchList.First;
  Assert.AreNotEqual(0, aMatchList.MatchDayNumber.AsInteger, 'aMatchList.MatchDayNumber = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day := aMatchDay;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetMatchDaysList(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchList := TMatchDayNumbers.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchList.RecordCount, 'bMatDay not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchList.ContentEquals(aMatchList), 'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bMatchList := nil;
  LResult := nil;
{$IFNDEF JANUAUNIDAC}
  // Chiamo la procedura matchday dal Server ---------------------------------------------------
  // self.AddFunction('matchdaylist', RestGetMatchDaysList);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'matchdaylist',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchList := TMatchDayNumbers.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchList.RecordCount, 'bMatDay not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchList.ContentEquals(aMatchList), 'bSeasons not ContentEquals(aSeasons http test ');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestPgFootball.RestGetNextMatchDay(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aMatches, bMatches: JOrm.Football.Matches.Intf.IMatches;
  aMatDay, bMatDay: JOrm.Football.MatchDay.Intf.IMatchDays;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_day := aMatchDay;
  LServer.OpenNextMatches;
  aMatches := LServer.NextMatches;
  aMatDay := LServer.NextMatchDay;
  Assert.AreNotEqual(0, aMatches.RecordCount, 'aMatches Record Count = 0');
  Assert.AreNotEqual(0, aMatDay.RecordCount, 'aMatDay Record Count = 0');
  aMatches.First;
  Assert.AreNotEqual(0, aMatches.MatchId.AsInteger, 'aMatches.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day := aMatchDay;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetNextMatchDay(aParams);
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatDay := TMatchDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatDay.RecordCount, 'bMatDay not loaded');
  bMatches := TMatches.Create(LResult.RecResult.RecordSets[1]);
  Assert.AreNotEqual(0, bMatches.RecordCount, 'bMatches not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatches.ContentEquals(aMatches), 'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bMatches.Last;
  LResult := nil;
  aParams := nil;

end;

procedure TTestPgFootball.RestGoalRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aGoalRanking, bGoalRanking: JOrm.Football.GoalRanking.Intf.IGoalRankingTable;
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  Test: TDAteTime;
  tmp: string;
  LCount, LTest: Word;
  // LInt: Integer;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.OpenGoalRanking;
  aGoalRanking := LServer.GoalRanking;
  Assert.AreNotEqual(0, aGoalRanking.RecordCount, 'aRanking Record Count = 0');
  aGoalRanking.First;
  Assert.AreNotEqual(0, aGoalRanking.TeamId.AsInteger, 'aRanking.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetGoalRanking(LParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bGoalRanking := TGoalRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bGoalRanking.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking),
    'bGoalRanking not ContentEquals(aGoalRanking internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bGoalRanking := nil;
  LResult := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'goalranking',
    { aParams } LParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Http');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bGoalRanking := TGoalRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bGoalRanking.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking),
    'bGoalRanking not ContentEquals(aGoalRanking internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).

end;

procedure TTestPgFootball.RestMatchDay(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aMatches, bMatches: JOrm.Football.Matches.Intf.IMatches;
  aMatDay, bMatDay: JOrm.Football.MatchDay.Intf.IMatchDays;
  aParams: IJanuaParams;
  LResult { , MResult } : IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aSeasonID;
  LServer.Settings.season_id := aLeagueID;
  LServer.Settings.match_day := aMatchDay;
  LServer.OpenMatches;
  aMatches := LServer.Matches;
  aMatDay := LServer.MatchDay;
  Assert.AreNotEqual(0, aMatches.RecordCount, 'aMatches Record Count = 0');
  Assert.AreNotEqual(0, aMatDay.RecordCount, 'aMatDay Record Count = 0');
  aMatches.First;
  Assert.AreNotEqual(0, aMatches.MatchId.AsInteger, 'aMatches.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aSeasonID;
  LSettings.season_id := aLeagueID;
  LSettings.match_day := aMatchDay;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetMatchDay(aParams);
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatDay := TMatchDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatDay.RecordCount, 'bMatDay not loaded');
  bMatches := TMatches.Create(LResult.RecResult.RecordSets[1]);
  Assert.AreNotEqual(0, bMatches.RecordCount, 'bMatches not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatches.ContentEquals(aMatches), 'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bMatches := nil;
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('matchday', RestGetMatchDay);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'matchday',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Http');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');

end;

procedure TTestPgFootball.RestMatchDetails(const aSeasonID, aLeagueID, aMatchID: Integer);
var
  LServer: IJanuaServerFootball;
  aMatchDetail, bMatchDetail: IMatchDetails;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  TJanuaLogger.LogRecord('RestMatchDetails', 'Local.IJanuaServerFootball.Start', self);
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_id := aMatchID; // 153840; // Sets the right match ID For Testing
  LServer.OpenMatchDetail;
  TJanuaLogger.LogRecord('RestMatchDetails', 'OpenMatchDetail', self);

  aMatchDetail := LServer.MatchDetails;
  Assert.IsNotNull(aMatchDetail);
  // la struttura si compone di diversi Recordset
  // Events: IMatchEventsDetails;
  // HomePlayers: IMatchPlayers;
  // VisitorsPlayers: IMatchPlayers;
  aMatchDetail.First;
  Assert.AreEqual(153840, aMatchDetail.MatchDetail.MatchId.AsInteger, 'aRanking Record MatchId = 0');
  Assert.AreNotEqual(0, aMatchDetail.Events.RecordCount, 'Events Record Count = 0');
  Assert.AreNotEqual(0, aMatchDetail.HomePlayers.RecordCount, 'HomePlayers Record Count = 0');
  Assert.AreNotEqual(0, aMatchDetail.VisitorsPlayers.RecordCount, 'VisitorsPlayers Record Count = 0');
  Assert.AreEqual(153840, aMatchDetail.Events.MatchId.AsInteger, 'Events.MatchId Count = 0');
  Assert.AreEqual(153840, aMatchDetail.HomePlayers.MatchId.AsInteger, 'HomePlayers Record Count = 0');
  Assert.AreEqual(153840, aMatchDetail.VisitorsPlayers.MatchId.AsInteger, 'VisitorsPlayers Record Count = 0');
  TJanuaLogger.LogRecord('RestMatchDetails', 'aMatchDetail.First', self);
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LServer.Settings.match_id := 30; // Sets the right match ID For Testing
  // Create Params using Factory function From TJanuaFootballFactory
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetMatchDetails(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetail := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetail.MatchDetail.MatchId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetail.ContentEquals(aMatchDetail),
    'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  TJanuaLogger.LogRecord('RestMatchDetails', 'aMatchDetail.LocalREST', self);
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('matchdetails', RestGetMatchDetails);
  bMatchDetail := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'matchdetails',
    { aParams } aParams);
  TJanuaLogger.LogRecord('RestMatchDetails', 'GetRestFunction', self);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetail := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetail.MatchDetail.MatchId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetail.ContentEquals(aMatchDetail),
    'bSeasons not ContentEquals(aSeasons internal test ');
  TJanuaLogger.LogRecord('RestMatchDetails', 'ContentEquals', self);
  TJanuaLogger.LogRecord('RestMatchDetails', 'Local.IJanuaServerFootball.End', self);
end;

procedure TTestPgFootball.RestMatches(const aSeasonID, aLeagueID, aMatchDay: Integer);
begin

end;

procedure TTestPgFootball.RestNexMatches(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aMatches, bMatches: JOrm.Football.Matches.Intf.IMatches;
  aMatDay, bMatDay: JOrm.Football.MatchDay.Intf.IMatchDays;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.match_day := aMatchDay;
  LServer.OpenNextMatches;
  aMatches := LServer.NextMatches;
  aMatDay := LServer.NextMatchDay;
  Assert.AreNotEqual(0, aMatches.RecordCount, 'aMatches Record Count = 0');
  Assert.AreNotEqual(0, aMatDay.RecordCount, 'aMatDay Record Count = 0');
  aMatches.First;
  Assert.AreNotEqual(0, aMatches.MatchId.AsInteger, 'aMatches.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  LSettings.match_day := aMatchDay;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetNexMatches(aParams);
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatDay := TMatchDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatDay.RecordCount, 'bMatDay not loaded');
  bMatches := TMatches.Create(LResult.RecResult.RecordSets[1]);
  Assert.AreNotEqual(0, bMatches.RecordCount, 'bMatches not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatches.ContentEquals(aMatches), 'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('nextmatches', RestGetNexMatches);
  bMatches := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'nextmatches',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatDay := TMatchDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatDay.RecordCount, 'bMatDay not loaded');
  bMatches := TMatches.Create(LResult.RecResult.RecordSets[1]);
  Assert.AreNotEqual(0, bMatches.RecordCount, 'bMatches not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatches.ContentEquals(aMatches), 'bSeasons not ContentEquals(aSeasons internal test ');

end;

procedure TTestPgFootball.RestPlayerCareers(const aPlayerID, aReCordCount: Integer);
var
  LServer: IJanuaServerFootball;
  aPlayerCareers, bPlayerCareers: IPlayerCareers;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.player_id := aPlayerID; // id del giocatore da cercare ....
  LServer.OpenPlayerCareer;
  aPlayerCareers := LServer.PlayerCareers;
  Assert.IsNotNull(aPlayerCareers, 'aPlayerCareers is nil');
  Assert.AreEqual(aReCordCount, aPlayerCareers.RecordCount, 'aPlayerCareers Record Count = 0');
  aPlayerCareers.First;
  if aReCordCount > 0 then
    Assert.AreEqual(aPlayerID, aPlayerCareers.PlayerId.AsInteger, 'aPlayerCareers.PlayerId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.player_id := aPlayerID;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetPlayerCareers(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bPlayerCareers := TPlayerCareers.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreEqual(aReCordCount, bPlayerCareers.RecordCount, 'bPlayerCareers RecordCount');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bPlayerCareers.ContentEquals(aPlayerCareers),
    'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('playercareers', RestGetPlayerCareers);
  bPlayerCareers := nil;

  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.player_id := aPlayerID;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);

  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'playercareers',
    { aParams } aParams);

  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bPlayerCareers viene creato assegnandogli il primo Record di Rec Result.
  bPlayerCareers := TPlayerCareers.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreEqual(aReCordCount, bPlayerCareers.RecordCount, 'REST bRanking not loaded');
  // Verifico che bPlayerCareers sia uguale ad aArticle
  Assert.IsTrue(bPlayerCareers.ContentEquals(aPlayerCareers),
    'bSeasons not ContentEquals(aSeasons internal test ');
  bPlayerCareers.First;
  if aReCordCount > 0 then
  begin
    Assert.AreNotEqual(0, bPlayerCareers.PlayerId.AsInteger, 'bPlayerCareers.PlayerId = 0');
    Assert.AreEqual(aPlayerID, bPlayerCareers.PlayerId.AsInteger, 'bPlayerCareers.PlayerId = 0');
  end;
  Assert.IsTrue(bPlayerCareers.ContentEquals(aPlayerCareers), 'bPlayerCareers <> aPlayerCareers Log:' + sl);
end;

procedure TTestPgFootball.RestRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  aRanking, bRanking: JOrm.Football.RankingTable.Intf.IRankingTable;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  {
    LServer.Settings.season_id := aSeasonID;
    LServer.Settings.league_id := aLeagueID;
    LServer.Settings.match_day := aMatchDay;
  }
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.season_id := aSeasonID;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.match_day := aMatchDay;
  LServer.OpenRanking;
  aRanking := LServer.RankingTable;
  Assert.AreNotEqual(0, aRanking.RecordCount, 'aRanking Record Count = 0');
  aRanking.First;
  Assert.AreNotEqual(0, aRanking.TeamId.AsInteger, 'aRanking.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetRankingTable(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bRanking.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bSeasons not ContentEquals(aSeasons internal test ');
  // Rest Http---------------------------------------------------------------------------------------
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  // Chiamo la procedura matchday dal Server
  bRanking := nil;
  LResult := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'ranking',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // self.AddFunction('ranking', RestGetRankingTable);
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bRanking.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bSeasons not ContentEquals(aSeasons internal test ');

end;

procedure TTestPgFootball.RestSelectedSeason(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  LServer: IJanuaServerFootball;
  // Interfaccia della Stagione calcistica da caricare .....
  aSeason, bSeason: JOrm.Football.Season.Intf.ISeasons;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := aLeagueID;
  LServer.Settings.season_id := aSeasonID;
  // Apro la Stagione numero 76 per il Test
  LServer.OpenSeason(aSeasonID);
  // Open Season deve caricare la stagione selezionata dal Server dei campionati.
  aSeason := LServer.SelectedSeason;
  // Assert.AreNotEqual(0, aRanking.RecordCount, 'aRanking Record Count = 0');
  // aRanking.First;
  Assert.AreNotEqual(0, aSeason.SeasonId.AsInteger, 'aSeason.SeasonId = 0');
  Assert.AreEqual(aSeasonID, aSeason.SeasonId.AsInteger, 'aSeason.SeasonId <> 76');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := aLeagueID;
  LSettings.season_id := aSeasonID;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetSelectedSeason(aParams);
  // ----------------------------------------------------------------------------------------------
  // il numero di record defniti nella procedura di Ritorno dovrebbe essere pari ad 1.            |
  // ----------------------------------------------------------------------------------------------
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount, 'LResult Local Return Error');
  // ----------------------------------------------------------------------------------------------
  // bSeason viene creato assegnandogli il primo Record di Rec Result.                            |
  // ----------------------------------------------------------------------------------------------
  bSeason := TSeasons.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId = 0');
  Assert.AreEqual(aSeasonID, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId <> 76');
  // ----------------------------------------------------------------------------------------------
  // Verifico che bSeason sia uguale ad aSeason                                                   |
  // ----------------------------------------------------------------------------------------------
  Assert.IsTrue(bSeason.ContentEquals(aSeason), 'bSeason not ContentEquals(aSeason internal test ');
  // ----------------------------------------------------------------------------------------------
  // annullo bSeason ma mi tengo attivi i Parametri (Params).                                     |
  // ----------------------------------------------------------------------------------------------
  bSeason := nil;
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('selectedseason', RestGetSelectedSeason);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'selectedseason',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount, 'LResult Rest Return Error');
  // bSeason viene creato assegnandogli il primo Record di Rec Result.
  bSeason := TSeasons.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId = 0');
  Assert.AreEqual(aSeasonID, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId <> 76');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bSeason.ContentEquals(aSeason), 'bSeason not ContentEquals(aSeason internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).

end;

procedure TTestPgFootball.SaveLog(const aTestName: string);
begin
  TJanuaLogger.ExportToCSV('TestPgFootball_' + aTestName);
end;

procedure TTestPgFootball.SaveString(t, s: string);
var
  aList: TStringList;
  f: string;
begin
  aList := TStringList.Create;
  try
    aList.Text := s;
    f := FormatDateTime('ddmmyyynnss', now()) + '.html';
    aList.SaveToFile('C:\Januaproject\Test\temp\' + t + f);
  finally
    aList.Free
  end;
end;

procedure TTestPgFootball.Setup;
var
  FServerConf: TJanuaServerRecordConf;
begin
  (*
    FServerConf.Port := 5432;
    FServerConf.DatabaseName := 'test';
    FServerConf.Password := '3rg0m3rc4t0r';
    FServerConf.Username := 'ergo';
    FServerConf.Address := 'local.januaservers.com';
    FServerConf.Schema := 'public';
    FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
    JanuaApplicationGlobalProfile.JanuaServerConf := FServerConf;
    JanuaApplicationGlobalProfile.DBSchemaID := 32;
    JanuaApplicationGlobalProfile.DBUserID := 13;
    // Rest Server and REST port ..........................................
    JanuaApplicationGlobalProfile.RestServer := 'http://localhost:8099';
    JanuaApplicationGlobalProfile.WebServer := 'http://localhost:8099';
    JanuaApplicationGlobalProfile.ListenPort := 8099;
  *)
end;

procedure TTestPgFootball.TablesLiveScore(const aSeasonID, aLeagueID, aMatchDay: smallint);
var
  aStorage: IJanuaDBFootballStorage;
  LDatasetStorage: IJanuaRecordSetStorage;
  aSettings: IFootballSettings;
  aServer: IJanuaServerFootball;
  // aTest, bTest: Integer;
  sTest: smallint;
  iTest: Int64;
  tmp1, tmp2: string;
begin
  aSettings := TFootballSettings.Create;
  Assert.IsNotNull(aSettings, 'aSettings is nil');
  // sTest := 0;
  // iTest := 0;
  aSettings.season_id := aSeasonID;
  aSettings.league_id := aLeagueID;
  aSettings.match_day := aMatchDay;
  Assert.AreEqual(aSeasonID, aSettings.season_id);
  Assert.AreEqual(aLeagueID, aSettings.league_id);
  Assert.AreEqual(aMatchDay, aSettings.match_day);
  aStorage := TJanuaPgFootballStorage.Create(aSettings);
  Assert.IsNotNull(aStorage, 'aStorage is nil');
  aStorage.CreateDataset;
  // Test Live Score direttamente sul DB verifica dello Storage e delle Impostazioni
  aStorage.OpenLiveScore;
  Assert.IsNotNull(aStorage.jdsMatchDetail, 'jdsMatchDetail is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailEvents, 'jdsMatchDetailEvents is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailHomePlayers, 'jdsMatchDetailHomePlayers is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailVisitorPlayers, 'jdsMatchDetailVisitorPlayers is nil');
  aStorage.jdsMatchDetail.Dataset.First;
  Assert.AreNotEqual(0, aStorage.jdsMatchDetail.RecordCount, 'jdsMatchDetail is 0 match: ' + tmp1);
  tmp1 := aStorage.jdsMatchDetail.Dataset.FieldByName('goal_home').AsString + '-' +
    aStorage.jdsMatchDetail.Dataset.FieldByName('goal_visitor').AsString;
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailEvents.RecordCount,
    'jdsMatchDetailEvents is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailHomePlayers.RecordCount,
    'jdsMatchDetailHomePlayers is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailVisitorPlayers.RecordCount,
    'jdsMatchDetailVisitorPlayers is 0 match: ' + tmp1);

  // Test IJanuaRecordSetStorage
  with aStorage do
    LDatasetStorage := TJanuaCustomDatasetStorage.Create('matchdetails', IMatchDetails,
      [jdsMatchDetail, jdsMatchDetailEvents, jdsMatchDetailVisitorPlayers, jdsMatchDetailHomePlayers]);
  // LDatasetStorage TJanuaFootballMatchDetailDSStorage.Create(aStorage);
  LDatasetStorage.LoadData;
  LDatasetStorage.RecordSet.First;
  // Verifico il risultato del Match .......................................................................
  tmp1 := (LDatasetStorage.RecordSet.CurrentRecord as IMatchDetail).GoalHome.AsString + '-' +
    (LDatasetStorage.RecordSet.CurrentRecord as IMatchDetail).GoalVisitor.AsString;
  // Verifico i Record del Recordset Storage ...............................................................
  Assert.AreNotEqual(0, LDatasetStorage.RecordSet.RecordCount, 'UpdatedRecordSet is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, (LDatasetStorage.RecordSet.CurrentRecord as IMatchDetail).Events.RecordCount,
    'UpdatedRecordSet Events is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, (LDatasetStorage.RecordSet.CurrentRecord as IMatchDetail).HomePlayers.RecordCount,
    'UpdatedRecordSet HomePlayers is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, (LDatasetStorage.RecordSet.CurrentRecord as IMatchDetail).VisitorsPlayers.RecordCount,
    'UpdatedRecordSet HomePlayers is 0 match: ' + tmp1);

  // Second Test if Server Corretly Opens and Assigns Datasets to RecordSets and i Recordsets Are correcly loaded
  aServer := nil;
  aServer := GenerateServer;
  Assert.IsNotNull(aServer, 'aServer is nil');
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  aServer.Settings.match_day := aMatchDay;

  aServer.OpenLiveScore;
  // Verifica del Local Storage - avendolo creato so che implementa l'interfaccia IJanuaDBFootballStorage
  Assert.IsTrue(Supports(aServer.LocalFootballStorage, IJanuaDBFootballStorage, aStorage));
  aStorage := aServer.LocalFootballStorage as IJanuaDBFootballStorage;
  Assert.IsNotNull(aStorage.jdsMatchDetail, 'Local jdsMatchDetail is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailEvents, 'Local jdsMatchDetailEvents is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailHomePlayers, 'Local jdsMatchDetailHomePlayers is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailVisitorPlayers, 'Local jdsMatchDetailVisitorPlayers is nil');
  aStorage.jdsMatchDetail.Dataset.First;
  Assert.AreNotEqual(0, aStorage.jdsMatchDetail.RecordCount, 'Local jdsMatchDetail is 0 match: ' + tmp1);
  tmp1 := aStorage.jdsMatchDetail.Dataset.FieldByName('goal_home').AsString + '-' +
    aStorage.jdsMatchDetail.Dataset.FieldByName('goal_visitor').AsString;
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailEvents.RecordCount,
    'Local jdsMatchDetailEvents is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailHomePlayers.RecordCount,
    'Local jdsMatchDetailHomePlayers is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailVisitorPlayers.RecordCount,
    'Local jdsMatchDetailVisitorPlayers is 0 match: ' + tmp1);

  Assert.IsNotNull(aServer.MatchDetails, 'MatchDetails is nil');
  Assert.IsNotNull(aServer.MatchDetails.Events, 'Events is nil');
  Assert.IsNotNull(aServer.MatchDetails.HomePlayers, 'HomePlayers is nil');
  Assert.IsNotNull(aServer.MatchDetails.VisitorsPlayers, 'VisitorsPlayers is nil');
  // Verifico Lo storage ....................................................................

  // Vado al primo Record e controllo l'avvenuto caricamento ed aggiornamento dei dati sottostanti.
  aServer.MatchDetails.First;
  Assert.AreNotEqual(0, aServer.MatchDetails.RecordCount, 'MatchDetails is 0');

  tmp1 := aServer.MatchDetails.MatchDetail.GoalHome.AsString + '-' +
    aServer.MatchDetails.MatchDetail.GoalVisitor.AsString;

  Assert.AreNotEqual(0, aServer.MatchDetails.Events.RecordCount, 'Events is 0 match: ' + tmp1);

  Assert.AreNotEqual(0, aServer.MatchDetails.HomePlayers.RecordCount, 'HomePlayers is 0 match: ' + tmp1);
  Assert.AreNotEqual(0, aServer.MatchDetails.VisitorsPlayers.RecordCount,
    'VisitorsPlayers is 0 match: ' + tmp1);
  // Then we can check if Server and Storage ContentEquals one Each other
  Assert.AreEqual(aStorage.jdsMatchDetail.RecordCount, aServer.MatchDetails.RecordCount,
    'jdsMatchDetail is 0');
  Assert.AreEqual(aStorage.jdsMatchDetailEvents.RecordCount, aServer.MatchDetails.Events.RecordCount,
    'jdsMatchDetailEvents is 0');
  Assert.AreEqual(aStorage.jdsMatchDetailHomePlayers.RecordCount,
    aServer.MatchDetails.HomePlayers.RecordCount, 'jdsMatchDetailHomePlayers do not match MatchDetails');
  Assert.AreEqual(aStorage.jdsMatchDetailVisitorPlayers.RecordCount,
    aServer.MatchDetails.VisitorsPlayers.RecordCount, 'jdsMatchDetailVisitorPlayers not MatchDetails');

  tmp1 := aServer.MatchDetails.MatchDetail.StringPlayers(true);
  Assert.IsTrue(Length(tmp1) > 20, 'Errata StringPlayers Home: ' + Length(tmp1).ToString);
  tmp2 := aServer.MatchDetails.MatchDetail.StringPlayers(False);
  Assert.IsTrue(Length(tmp2) > 20, 'Errata StringPlayers Visitors: ' + Length(tmp2).ToString);

  tmp1 := aServer.MatchDetails.MatchDetail.GoalsHome(False);
  tmp2 := aServer.MatchDetails.MatchDetail.GoalsVisitors(False);
  if aServer.MatchDetails.MatchDetail.GoalHome.AsInteger > 0 then
    Assert.AreNotEqual('', tmp1, 'GoalHome is nil');
  if aServer.MatchDetails.MatchDetail.GoalVisitor.AsInteger > 0 then
    Assert.AreNotEqual('', tmp2, 'GoalVisitor is nil');
end;

procedure TTestPgFootball.TearDown;
begin

end;

procedure TTestPgFootball.TestStorage;
var
  aStorage: IJanuaDBFootballStorage;
  aSettings: IFootballSettings;
  // -------------------------------------------
  aMatchDetailStorage: IJanuaRecordSetStorage;
  aMatchDetails, bMatchDetails: IMatchDetails;
  // ---------------------------------------------
  aTest, bTest: Integer;
  sTest: smallint;
  iTest: Int64;
  tmp1, tmp2: string;
begin
  aSettings := TFootballSettings.Create;
  sTest := 0;
  iTest := 0;
  Assert.IsNotNull(aSettings, 'aSettings is nil');
  Assert.AreEqual(sTest, aSettings.season_id);
  Assert.AreEqual(sTest, aSettings.league_id);
  Assert.AreEqual(iTest, aSettings.match_id);
  Assert.AreEqual(0, aSettings.team_id);
  aStorage := TJanuaPgFootballStorage.Create(aSettings);
  Assert.IsNotNull(aStorage, 'aStorage is nil');
  aStorage.CreateDataset;
  // Verifico tutti i Dataset
  Assert.IsNotNull(aStorage.jdsMatchDetail, 'aStorage.jdsMatchDetail is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailEvents, 'aStorage.jdsMatchDetail is nil');
  aStorage.CheckSeasonID;
  sTest := 0;
  Assert.AreNotEqual(sTest, aSettings.season_id);
end;

procedure TTestPgFootball.TestFootball;
var
  aStorage: IJanuaFootballStorage;
  aSettings: IFootballSettings;
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  aSettings := TFootballSettings.Create;
  Assert.IsNotNull(aSettings, 'aSettings is nil');
  aStorage := TJanuaPgFootballStorage.Create(aSettings);
  Assert.IsNotNull(aStorage, 'aStorage is nil');
  aServer := TJanuaServerFootball.Create(aStorage, nil, aSettings);
  Assert.IsNotNull(aServer, 'aServer is nil');
  Assert.IsNotNull(aServer.Settings, 'aServer is nil');
  aServer.Settings.season_id := 76;
  aServer.Settings.league_id := 124;
  aStorage.KeepAlive := true;
  aServer.OpenMatches;
  Assert.IsNotNull(aServer.Matches, 'aServer.Matches is nil');
  Assert.AreNotEqual(0, aServer.Matches.RecordCount, 'aServer.Matches.RecordCount = 0');
  tmp := aServer.Matches.AsJsonObject.ToJSON;
  Assert.AreNotEqual('{}', tmp, 'tmp Json is null');
  aStorage.KeepAlive := False;
  aStorage.DestroyDataset;
end;

procedure TTestPgFootball.TestGolRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aServer: IJanuaServerFootball;
  aPage: IFootballPage;
  aTable: IHtmlTable;
  s: string;
  aFactory: IFootballFactory;
begin
  aFactory := self.GetFactory;
  aServer := self.GenerateServer;
  aFactory.Settings := aServer.Settings;
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  aServer.Settings.match_day := aMatchDay;
  aServer.OpenGoalRanking;
  Assert.AreNotEqual(0, aServer.GoalRanking.RecordCount);
  aTable := aFactory.GetGoalRankingTable(aServer.GoalRanking);
  Assert.IsNotNull(aTable, 'aTable is null');
  aPage := aFactory.CreateGoalRankingFrame(aServer.GoalRanking);
  Assert.IsNotNull(aPage, 'aPage is null');
  s := aPage.AsHtml;
end;

procedure TTestPgFootball.TestLastMatcDay(const aSeasonID: Integer; const aLeagueID: Integer);
var
  aServer: IJanuaServerFootball;
  tmp: smallint;
begin
  aServer := self.GenerateServer;
  tmp := 0;
  Assert.AreNotEqual(tmp, aServer.GetLastMatchNumber);
end;

procedure TTestPgFootball.TestLiveSCore(const aSeasonID, aLeagueID, aMatchDay: smallint);
var
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  TJanuaLogger.StartLog;
  TJanuaLogger.StartWatch;
  try
    aServer := GenerateServer;
    TJanuaLogger.LogRecord('TestLiveSCore', 'GenerateServer', self);
    aServer.OpenLiveScore(aSeasonID, aLeagueID, aMatchDay);
    TJanuaLogger.LogRecord('TestLiveSCore', Format('IJanuaServerFootball.OpenLiveScore S=%d, L=%d, MD=%d',
      [aSeasonID, aLeagueID, aMatchDay]), self);
    Assert.AreEqual(aSeasonID, aServer.Settings.season_id, 'aSeasonID differente: ' + aSeasonID.ToString + '-'
      + aServer.Settings.season_id.ToString);
    // Assert.AreNotEqual(0, aServer.MatchDay.RecordCount);
    Assert.AreNotEqual(0, aServer.MatchDetails.RecordCount, 'MatchDetails.REcordcount = 0');
    // Assert.AreNotEqual(0, aServer.Matches.RecordCount, 'Matches.REcordcount = 0');
  finally
    TJanuaLogger.StopLog;
    SaveLog('TestLiveSCore');
  end;
end;

procedure TTestPgFootball.TestMatcDay(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  aServer := self.GenerateServer;
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  aServer.Settings.match_day := aMatchDay;
  aServer.OpenMatches;
  Assert.AreNotEqual(0, aServer.Matches.RecordCount);
end;

procedure TTestPgFootball.TestMatchDetail(const aMatchID: Int64);
var
  aServer: IJanuaServerFootball;
begin
  aServer := self.GenerateServer;
  Assert.IsNotNull(aServer, 'aServer nil');
  aServer.Settings.season_id := 0;
  aServer.Settings.league_id := 0;
  aServer.Settings.match_day := 0;
  aServer.Settings.match_id := aMatchID;
  aServer.OpenLiveScore;
  Assert.AreEqual(0, aServer.Matches.RecordCount);

end;

procedure TTestPgFootball.TestPage(const AValue1, AValue2, AValue3: string);
// var
// aCloudDownloader: ICloudDownloader;
// vFileName, vFileNamePath: string;
// vTest: boolean;
begin
  // **************************************************************************************************
  // Questo test collauda il funzionamento della libreria Text-Html-Downloader.
  // al momento richiede un Testo(html-json-xxx) da url (senza curarsi particolarmente del tipo di Testo Mime)
  // e lo salva su disco. Se indicato un percorso custom lo salva su quel percorso altrimenti
  // usa come destinazione la DocumentPath Directory + AppName (da Global Configuration)
  // **************************************************************************************************

  // *************************************************************************
  (*
    aCloudDownloader := TCloudDownloader.Create;
    aCloudDownloader.URL := AValue1;
    aCloudDownloader.CustomPath := AValue2;
    vFileName := FormatDateTime('yymmddhhnnss', now()) + AValue3;
    vFileNamePath := TPath.Combine(AValue2, vFileName);
    vTest := aCloudDownloader.GetAnyTextResponse; // richiede qualunque cosa dall'url occorre risultato True
    // Sleep(1000);
    Assert.IsTrue(vTest, 'Errore di apertura Url');
    vTest := aCloudDownloader.SaveTextToFile(vFileNamePath);
    Assert.IsTrue(vTest, 'Errore salvataggio file: ' + vFileNamePath);
    Assert.IsTrue(FileExists(vFileNamePath), 'file non creato: ' + vFileNamePath);
    Assert.AreNotEqual('', aCloudDownloader.ResponseText.Text, 'response is nil');
  *)
end;

procedure TTestPgFootball.TestRanking(const aSeasonID, aLeagueID, aMatchDay: Integer);
var
  aServer: IJanuaServerFootball;
  aPage: IFootballPage;
  aTable: IHtmlTable;
  tmp: string;
  aFactory: IFootballFactory;
begin
  aFactory := self.GetFactory;
  aServer := self.GenerateServer;
  aFactory.Settings := aServer.Settings;
  aServer.Settings.season_id := aSeasonID;
  aServer.Settings.league_id := aLeagueID;
  aServer.Settings.match_day := aMatchDay;
  aServer.OpenRanking;
  Assert.AreNotEqual(0, aServer.RankingTable.RecordCount);
  aTable := aFactory.GetRankingTable(aServer.RankingTable);
  tmp := aTable.AsHtml;
  Assert.AreNotEqual('', tmp, 'Frame RankingTable is null');
  aPage := aFactory.CreateRankingFrame(aServer.RankingTable);
  tmp := aPage.AsHtml;
  Assert.AreNotEqual('', tmp, 'Frame RankingTable is null');
end;

procedure TTestPgFootball.TestRestSeasonsLeagues(const aSeasonID, aLeagueID, aMatchDay: Integer);
begin

end;

initialization

TDUnitX.RegisterTestFixture(TTestPgFootball);

end.
