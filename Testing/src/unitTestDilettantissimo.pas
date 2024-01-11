unit unitTestDilettantissimo;

interface

uses
  Janua.Football.Intf, Janua.Football.Web.Intf, DUnitX.TestFramework;

type

  [TestFixture]
  TDilettantissimo = class(TObject)
  private
    function GetController: IFootballController;
    function GetFactory: IFootballFactory;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure StartWebSession;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '1,2')]
    [TestCase('TestB', '3,4')]
    procedure TestHomePage(const AValue1: smallint; const AValue2: smallint);
    [Test]
    procedure TestMatchesFrame;
    [Test]
    procedure TestRankingFrame;
    [Test]
    procedure TestGolRankingFrame;
    [Test]
    procedure TestGolPortlet;
    [Test]
    procedure TestDynRankingFrame;
    [Test]
    procedure TestLiveScore;
  end;

implementation

uses Janua.Football.Server.Intf, Janua.Virtual.Football, Janua.Virtual.System, Janua.Dilettantissimo.Impl,
  Janua.Football.Impl, Janua.Cms.Server.Intf, Janua.Virtual.Cms, Janua.System.Server.Intf,
  Janua.Football.Server.Impl, Janua.Cms.Server.Impl, Janua.Html.Metro5.Intf, Janua.Html.Metro5.Types,
  Janua.Http.Intf, Janua.Http.Impl;

function TDilettantissimo.GetController: IFootballController;
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

  aFactory := GetFactory;
  Assert.IsNotNull(aFactory, 'GetController aFactory is nil');
  Result := aFactory.GetController;
  Assert.IsNotNull(Result.Settings, 'GetController Result is nil');
  Assert.IsNotNull(Result, 'GetController Result is nil');
  Assert.IsNotNull(Result.Server, 'GetController Server is nil');
  Assert.IsNotNull(Result.CmsServer, 'GetController Cms is nil');
end;

function TDilettantissimo.GetFactory: IFootballFactory;
var
  aServerFootball: IJanuaServerFootballFactory;
  aServerCms: IJanuaServerCmsFactory;
  aServerSystem: IJanuaServerSystemFactory;
begin
  aServerFootball := TJanuaServerVirtualFootballFactory.Create;
  aServerCms := TJanuaServerVirtualCmsFactory.Create(nil);
  aServerSystem := nil;
  Result := TDilettantissimoFootballFactory.Create(aServerFootball, aServerCms, aServerSystem);
  Assert.IsNotNull(Result, ' GetFactory Result is nil');
end;

procedure TDilettantissimo.Setup;
begin
end;

procedure TDilettantissimo.TearDown;
begin
end;

procedure TDilettantissimo.StartWebSession;
var
  LSession: IFootballWebSession;
  LServerFootball: IJanuaServerFootballFactory;
  LServerCms: IJanuaServerCmsFactory;
  LServerSystem: IJanuaServerSystemFactory;
  LWebManager: IWebManager;
  LWebFactory: IFootballWebFactory;
begin
  LWebManager := TWebManager.Create;
  LServerFootball := TJanuaServerVirtualFootballFactory.Create;
  LServerCms := TJanuaServerVirtualCmsFactory.Create(nil);
  LServerSystem := TJanuaServerVirtualSystemFactory.Create;
  LWebFactory := TDilettantissimoFactory.Create;
  LSession := LWebFactory.GetWebSession(LServerFootball, LServerCms, LServerSystem, LWebManager);
  Assert.IsNotNull(LSession, 'aSession is nil');
end;

procedure TDilettantissimo.TestDynRankingFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetDynamicRankingFrame;
  Assert.AreNotEqual('', s, 'S is null');
  Assert.IsNotNull(aController.Server.DynamicRanking, 'DynamicRanking is nil');
  Assert.AreNotEqual(0, aController.Server.DynamicRanking.RecordCount,
    sLineBreak + 'DynamicRanking.RecordCount 0');

end;

procedure TDilettantissimo.TestGolPortlet;
var
  LPortlet: IMetro5Portlet;
  LFactory: IFootballFactory;
  s: string;
begin
  LFactory := self.GetFactory;
  LPortlet := LFactory.GetPortlet('Titolo', 'Sottotitolo', TMetro5IconType.jmiPhone,
    TM5StateColorsStyle.m5sWarning);
  Assert.IsNotNull(LPortlet, 'LPortlet nil');
  s := LPortlet.AsHtml;
  Assert.AreNotEqual('', s, 's is nil');
end;

procedure TDilettantissimo.TestGolRankingFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetGoalRankingFrame;
  Assert.AreNotEqual('', s, 'S is null');
  Assert.IsNotNull(aController.Server.GoalRanking, 'RankingTable is nil');
  Assert.AreNotEqual(0, aController.Server.GoalRanking.RecordCount,
    'aController.Server.GoalRanking.RecordCount = 0');
end;

procedure TDilettantissimo.TestHomePage(const AValue1: smallint; const AValue2: smallint);
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Settings, 'Settings is nil ');
  Assert.IsNotNull(aController.Server, 'Server is nil ');
  Assert.IsNotNull(aController.CmsServer, 'Server is nil ');
  s := aController.GetHome(AValue1, AValue2, 20, 1);
  Assert.AreNotEqual('', 's');
end;

procedure TDilettantissimo.TestLiveScore;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetFullLiveScoreFrame;
  Assert.IsNotNull(aController.Server.MatchDetails, 'Matches is nil');
  Assert.AreNotEqual(0, aController.Server.MatchDetails.RecordCount);

end;

procedure TDilettantissimo.TestMatchesFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetMatchesFrame;
  Assert.IsNotNull(aController.Server.Matches, 'Matches is nil');
  Assert.AreNotEqual(0, aController.Server.Matches.RecordCount);

end;

procedure TDilettantissimo.TestRankingFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetRankingFrame;
  Assert.AreNotEqual('', s, 's is null');
  Assert.IsNotNull(aController.Server.RankingTable, 'RankingTable is nil');
  Assert.AreNotEqual(0, aController.Server.RankingTable.RecordCount);
end;

initialization

TDUnitX.RegisterTestFixture(TDilettantissimo);

end.
