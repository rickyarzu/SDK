unit unitTestLNDFactory;

interface

uses
  Janua.Football.Intf, Janua.Football.Web.Intf, DUnitX.TestFramework;

type

  [TestFixture]
  TLND = class(TObject)
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
  end;

implementation

uses Janua.Football.Server.Intf, Janua.Virtual.Football, Janua.lnd.Impl, System.SysUtils,
  Janua.Football.Impl, Janua.Cms.Server.Intf, Janua.Virtual.Cms, Janua.System.Server.Intf,
  Janua.Football.Server.Impl, Janua.Cms.Server.Impl, Janua.Html.Metro5.Intf, Janua.Html.Metro5.Types,
  Janua.Http.Intf, Janua.Http.Impl;

function TLND.GetController: IFootballController;
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
  try
    aFactory := GetFactory;
    Assert.IsNotNull(aFactory, 'GetController aFactory is nil');
    Result := aFactory.GetController;
    Assert.IsNotNull(Result.Settings, 'GetController Result is nil');
    Assert.IsNotNull(Result, 'GetController Result is nil');
    Assert.IsNotNull(Result.Server, 'GetController Server is nil');
    Assert.IsNotNull(Result.CmsServer, 'GetController Cms is nil');
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.GetController: ' + e.Message);

  end;
end;

function TLND.GetFactory: IFootballFactory;
var
  aServerFootball: IJanuaServerFootballFactory;
  aServerCms: IJanuaServerCmsFactory;
  aServerSystem: IJanuaServerSystemFactory;
begin
  try
    aServerFootball := TJanuaServerVirtualFootballFactory.Create;
    aServerCms := TJanuaServerVirtualCmsFactory.Create(nil);
    aServerSystem := nil;
    Result := TLNDFootballFactory.Create(aServerFootball, aServerCms, aServerSystem);
    Assert.IsNotNull(Result, ' GetFactory Result is nil');
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.GetFactory: ' + e.Message);

  end;
end;

procedure TLND.Setup;
begin
end;

procedure TLND.TearDown;
begin
end;

procedure TLND.StartWebSession;
var
  aSession: IFootballWebSession;
  aServerFootball: IJanuaServerFootballFactory;
  aServerCms: IJanuaServerCmsFactory;
  aServerSystem: IJanuaServerSystemFactory;
  LWebManager: IWebManager;
  LWebFactory: IFootballWebFactory;
begin
  LWebManager := TWebManager.Create;
  Assert.IsNotNull(LWebManager, 'WebModuleCreate aSession is null');
  aServerFootball := TJanuaServerVirtualFootballFactory.Create;
  aServerCms := TJanuaServerVirtualCmsFactory.Create(nil);
  aServerSystem := nil;
  LWebFactory := TLNDFactory.Create;
  aSession := LWebFactory.GetWebSession(aServerFootball, aServerCms, aServerSystem, LWebManager);
  Assert.IsNotNull(aSession, 'aSession is nil');
end;

procedure TLND.TestGolPortlet;
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

procedure TLND.TestGolRankingFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetGoalRankingFrame;
  // Assert.AreNotEqual('', s, 'S is null');
  Assert.IsNotNull(aController.Server.GoalRanking, 'RankingTable is nil');
  // Assert.AreNotEqual(0, aController.Server.GoalRanking.RecordCount);
end;

procedure TLND.TestHomePage(const AValue1: smallint; const AValue2: smallint);
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

procedure TLND.TestMatchesFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetMatchesFrame;
  Assert.IsNotNull(aController.Server.Matches, 'Matches is nil');
  // Assert.AreNotEqual(0, aController.Server.Matches.RecordCount);

end;

procedure TLND.TestRankingFrame;
var
  aController: IFootballController;
  s: string;
begin
  aController := GetController;
  Assert.IsNotNull(aController.Server, 'Server is nil');
  s := aController.GetRankingFrame;
  // Assert.AreNotEqual('', s, 's is null');
  Assert.IsNotNull(aController.Server.RankingTable, 'RankingTable is nil');
  // Assert.AreNotEqual(0, aController.Server.RankingTable.RecordCount);
end;

initialization

TDUnitX.RegisterTestFixture(TLND);

end.
