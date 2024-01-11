unit unitTestFootball;

{$I JANUACORE.INC}

interface

uses
  DUnitX.TestFramework, Janua.Football.Server.Intf, Janua.Test.Football, Janua.Html.Builder.Intf;

type

  [TestFixture]
  TTestFootball = class(TObject)
  private
    function GenerateServer: IJanuaServerFootball;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestDataModule;
    [Test]
    procedure TestAssignDataSets;
    [Test]
    procedure Championships;
    [Test]
    procedure Championship;
    // [Test]
    procedure TestRanking;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure GolRanking;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure ChampionshipsIntf;
    [Test]
    procedure Storage;
    [Test]
    procedure StorageMatches;
    [Test]
    procedure TableMatches;
    [Test]
    procedure ServerFootball;
    [Test]
    procedure StorageTests;
    [Test]
    procedure TableRanking;
    [Test]
    procedure MatchDayStorage;
    [Test]
    procedure MatchDetailsStorage;
    [Test]
    procedure TableGoalRanking;
    [Test]
    procedure TableDynamicRanking;
    [Test]
    procedure TableDynamicGoalRanking;
    [Test]
    procedure TestLiveScore;
    // ***************** Rest Server Functions *****************************************************
    function FactoryCreateFootballServer: IJanuaServerFootball;
    [Test]
    procedure TestRestSeasonsLeagues; // *Failed*
    [Test]
    procedure RestCalendar; // Non implemented
    [Test]
    procedure RestMatchDay; // Ok   - Postgres
    [Test]
    procedure RestGoalRanking; // ok   Postgres
    [Test]
    procedure RestRanking; // Ok   Postgres
    [Test]
    procedure RestChampionship; // Ok
    [Test]
    procedure RestMatchDetails; // Ok  *Failed*
    [Test]
    procedure RestMatches; // Not Implemented all matches in a Day
    [Test]
    procedure RestNexMatches; // OK  Next Day's Matches *Failed*
    [Test]
    procedure RestGetNextMatchDay; // Next Day and Matches Ok Pg
    [Test]
    procedure RestCalendarMatches; // OK  Pg    *Failed*
    [Test]
    procedure RestSelectedSeason; // Errore nel component server    *Failed*
    [Test]
    procedure RestGetMatchDaysList; // O.K. Pg. *Failed*
    [Test]
    procedure RestDynamicRanking; // O.K.  Pg  *Failed*
    [Test]
    procedure RestDynamicGoalRanking; // Ok  Pg
    [Test]
    procedure RestGetLiveScore; // O.K. Pg  *Failed*
    [Test]
    procedure RestPlayerCareers; // O.K. Pg  *Failed*
  end;

implementation

uses
  System.JSON, System.SysUtils, udmVirtualFootballServer, System.Net.HttpClient, uWebBrokerTest,
  // Janua Application
  Janua.Application.Framework,
  // Janua Server Infrastructure
  Janua.Server.Intf, Janua.Server.Impl,
  Janua.Http.Types, Janua.Http.Intf, Janua.Core.Types, Janua.Http.Impl,
  // Seasons Leagues Championships
  JOrm.Football.Season.Intf, JOrm.Football.Season.Impl, JOrm.Football.Championship.Impl,
  JOrm.Football.Championship.Intf,
  // Ranking
  JOrm.Football.RankingTable.Intf, JOrm.Football.RankingTable.Impl, JOrm.Football.GoalRanking.Intf,
  JOrm.Football.GoalRanking.Impl,
  // Player Career
  JOrm.Football.PlayerCareer.Intf, JOrm.Football.PlayerCareer.Impl,
  // Match Day
  JOrm.Football.MatchDay.Intf, JOrm.Football.MatchDay.Impl,
  // Match Details
  JOrm.Football.MatchDetails.Intf, JOrm.Football.MatchDetails.Impl,
  JOrm.Football.Matches.Intf, JOrm.Football.Matches.Impl,
  Janua.Football.Server.Impl, Janua.Virtual.Football, Janua.Orm.Intf,
  Janua.Orm.Impl, Janua.Html.Builder.Impl, Janua.Html.Intf, Janua.Football.Intf, Janua.Football.Impl,
  Janua.Football.Web.Intf, Janua.Football.Web.Impl;

var
  DMF: TdmVirtualFootballServer;

procedure TTestFootball.ServerFootball;
var
  aStorage: IJanuaFootballStorage;
  aSettings: IFootballSettings;
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  aSettings := TFootballSettings.Create;
  Assert.IsNotNull(aSettings, 'aSettings is nil');
  aStorage := TJanuaVirtualFootballStorage.Create(aSettings);
  Assert.IsNotNull(aStorage, 'aStorage is nil');
  aServer := TJanuaServerFootball.Create(aStorage, nil, aSettings);
  Assert.IsNotNull(aStorage, 'aServer is nil');
  aServer.Settings.season_id := 76;
  aServer.Settings.league_id := 124;
  aServer.OpenMatches;
  Assert.AreNotEqual(0, aServer.Matches.RecordCount, 'aServer.Matches.RecordCount = 0');
  tmp := aServer.Matches.AsJsonObject.ToJSON;
  Assert.AreNotEqual('{}', tmp, 'tmp Json is null');

end;

procedure TTestFootball.Setup;
begin
  DMF := udmVirtualFootballServer.TdmVirtualFootballServer.Create(nil);
  TJanuaApplication.RestServer := 'http://localhost:8099';
  TJanuaApplication.WebServer := 'http://localhost:8099';
  TJanuaApplication.ListenPort := 8099;
{$IFDEF TESTWEB}
{$IFDEF WEBBROKER}
  uWebBrokerTest.Setup
{$ENDIF}
{$ENDIF}
end;

procedure TTestFootball.Storage;
var
  aStorage: IJanuaFootballStorage;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aStorage.CheckSeasonID;
  aStorage.CheckChampionshipID;
  aStorage.OpenMatches;
  aStorage.DestroyDataset;
end;

procedure TTestFootball.StorageMatches;
var
  aStorage: IJanuaDBFootballStorage;
  aMatchesStorage: IJanuaRecordSetStorage;
  aMatches, bMatches: IMatches;
  aTest, bTest: Integer;
  tmp1, tmp2: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aMatchesStorage := TJanuaCustomDatasetStorage.Create('matches', IMatches { TMatches } , [aStorage.jdsMatches]);
  // TJanuaFootballMatchesDSStorage.Create(aStorage);
  Assert.IsNotNull(aMatchesStorage, 'Error aMatchesStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  aStorage.OpenMatches;
  aMatches := TMatchFactory.CreateRecordset('matches', nil, nil);
  Assert.IsNotNull(aMatches, 'Error aMatches is nil');
  // Caricamento diretto dei dati
  aMatches.DirectLoadFromDataset(aStorage.jdsMatches.Dataset);
  aTest := aMatches.RecordCount;
  // Caricamento attraverso l'oggetto MatchesStorage (pratica consigliabiile in linea teorica)
  bMatches := TMatchFactory.CreateRecordset('matches', aMatchesStorage, nil);
  Assert.IsNotNull(bMatches, 'Error aMatches is nil');
  aStorage.OpenMatches;
  bMatches.LoadFromLocalStorage;
  // Adesso facciamo un piccolo confronto ....
  bTest := bMatches.RecordCount;
  Assert.AreNotEqual(0, bTest, 'RecordCount = 0');
  Assert.AreEqual(bTest, aTest, 'bMatches e aMatches differenti Record .... ');
  // TMatchFactory.CreateRecordset('Matches', aStorage.jdsMatches, nil);
  aStorage.DestroyDataset;
  bMatches.First;
  tmp1 := bMatches.Match.HomeTeamLogo.AsString;
  bMatches.Next;
  tmp2 := bMatches.Match.HomeTeamLogo.AsString;
  Assert.AreNotEqual(tmp1, tmp2);
end;

procedure TTestFootball.StorageTests;
var
  aStorage: IJanuaDBFootballStorage;
  aRankingStorage: IJanuaRecordSetStorage;
  aRankingTable, bRankingTable: IRankingTable;
  // -------------------------------------------
  aMatchDayStorage: IJanuaRecordSetStorage;
  aMatchDay, bMatchDay: IRankingTable;
  // ---------------------------------------------
  aTest, bTest: Integer;
  tmp1, tmp2: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aRankingStorage := TJanuaCustomDatasetStorage.Create('ranking', IRankingTable { TRankingTable } ,
    [aStorage.jdsChampRanking]);
  // TJanuaFootballRankingTableDSStorage.Create(aStorage);
  Assert.IsNotNull(aRankingStorage, 'Error aRankingStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  aStorage.OpenRanking;
  aRankingTable := TRankingRowFactory.CreateRecordset('ranking', nil, nil);
  Assert.IsNotNull(aRankingTable, 'Error aRankingTable is nil');
  aRankingTable.DirectLoadFromDataset(aStorage.jdsChampRanking.Dataset);
  aTest := aRankingTable.RecordCount;
  bRankingTable := TRankingRowFactory.CreateRecordset('ranking', aRankingStorage, nil);
  bRankingTable.LoadFromLocalStorage;
  // Adesso facciamo un piccolo confronto ....
  bTest := bRankingTable.RecordCount;
  Assert.AreNotEqual(0, bTest, 'RecordCount = 0');
  Assert.AreEqual(bTest, aTest, 'bRankingTable e aRankingTable differenti Record .... ');
  // TMatchFactory.CreateRecordset('Matches', aStorage.jdsMatches, nil);
  aStorage.DestroyDataset;
  bRankingTable.First;
  tmp1 := bRankingTable.TeamName.AsString;
  bRankingTable.Next;
  tmp2 := bRankingTable.TeamName.AsString;
  Assert.AreNotEqual(tmp1, tmp2);
  // -----------------------------  TJanuaFootballMatchDayDSStorage --------------------
end;

procedure TTestFootball.TableDynamicGoalRanking;
var
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  aServer := GenerateServer;
  Assert.IsNotNull(aServer, 'aServer is nil');
  aServer.Settings.season_id := 76;
  aServer.Settings.league_id := 124;
  aServer.OpenDynamicGoalRanking;
  Assert.AreNotEqual(0, aServer.DynamicGoalRanking.RecordCount, 'DynamicGoalRanking.RecordCount = 0');
  tmp := aServer.DynamicGoalRanking.AsJsonObject.ToJSON;
  Assert.AreNotEqual('{}', tmp, 'tmp Json is null');
end;

procedure TTestFootball.TableDynamicRanking;
var
  aServer: IJanuaServerFootball;
  tmp: string;
begin
  aServer := GenerateServer;
  Assert.IsNotNull(aServer, 'aServer is nil');
  aServer.Settings.season_id := 76;
  aServer.Settings.league_id := 124;
  Assert.AreNotEqual(0, aServer.LocalFootballStorage.OpenMatchDayLists, sLineBreak + 'OpenMatchDayLists = 0');
  aServer.OpenMatchDayLists;
  Assert.AreNotEqual(0, aServer.MatchDaysList.RecordCount, sLineBreak + 'MatchDaysList.RecordCount = 0');
  tmp := aServer.MatchDaysList.AsJsonObject.ToJSON;
  Assert.AreNotEqual('{}', tmp, 'tmp Json is null');
  Assert.AreNotEqual(0, aServer.OpenDynamicRanking, sLineBreak + 'OpenDynamicRanking = 0');
  Assert.AreNotEqual(0, aServer.DynamicRanking.RecordCount, sLineBreak + 'DynamicRanking.RecordCount = 0');
  tmp := aServer.DynamicRanking.AsJsonObject.ToJSON;
  Assert.AreNotEqual('{}', tmp, 'tmp Json is null');
end;

procedure TTestFootball.TableGoalRanking;
var
  aStorage: IJanuaDBFootballStorage;
  aGoalRankingStorage: IJanuaRecordSetStorage;
  aGoalRankings: IGoalRankingTable;
  aTest: Integer;
  aColumn: THtmlTableTableColumn;
  aBuilder: IHtmlTableBuilder;
  aResult: IHtmlTable;
  vHtml: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Creo lo storage dei GoalRanking
  aGoalRankingStorage := TJanuaCustomDatasetStorage.Create('goalranking', IGoalRankingTable { TGoalRankingTable } ,
    [aStorage.jdsGolRanking]);
  // TJanuaGoalRankingDSStorage.Create(aStorage);
  Assert.IsNotNull(aGoalRankingStorage, 'Error aGoalRankingStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  aStorage.OpenGoalRanking;
  aGoalRankings := TGoalRankingFactory.CreateRecordset('goalrankings', aGoalRankingStorage, nil);
  Assert.IsNotNull(aGoalRankings, 'Error aGoalRankingStorage is nil');
  // Caricamento diretto dei dati
  aGoalRankings.LoadFromLocalStorage;
  aTest := aGoalRankings.RecordCount;
  // THtmlTableBuilder = class(THtmlBuilder, IHtmlBuilder, IHtmlTableBuilder)
  aBuilder := THtmlTableBuilder.Create(aGoalRankings);
  Assert.IsNotNull(aBuilder);
  aColumn := THtmlTableTableColumn.Create(aGoalRankings.Rownum, '#');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aGoalRankings.FullName, 'Giocatore');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aGoalRankings.TeamName, 'Squadra');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aGoalRankings.TeamName, 'Gol');
  aBuilder.AddColumin(aColumn);
  aResult := aBuilder.GetElement as IHtmlTable;
  Assert.IsNotNull(aResult);
  vHtml := aResult.AsHtml;
  Assert.IsTrue(vHtml <> '');
  aStorage.DestroyDataset;
end;

procedure TTestFootball.TableMatches;
var
  aStorage: IJanuaDBFootballStorage;
  aMatchesStorage: IJanuaRecordSetStorage;
  aMatches: IMatches;
  aTest: Integer;
  aColumn: THtmlTableTableColumn;
  aBuilder: IHtmlTableBuilder;
  aResult: IHtmlTable;
  vHtml: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aMatchesStorage := TJanuaCustomDatasetStorage.Create('matches', IMatches { TMatches } , [aStorage.jdsMatches]);
  Assert.IsNotNull(aMatchesStorage, 'Error aMatchesStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  aStorage.OpenMatches;
  aMatches := TMatchFactory.CreateRecordset('matches', aMatchesStorage, nil);
  Assert.IsNotNull(aMatches, 'Error aMatches is nil');
  // Caricamento diretto dei dati
  aMatches.LoadFromLocalStorage;
  aTest := aMatches.RecordCount;
  // THtmlTableBuilder = class(THtmlBuilder, IHtmlBuilder, IHtmlTableBuilder)
  aBuilder := THtmlTableBuilder.Create(aMatches);
  Assert.IsNotNull(aBuilder);
  // constructor Create(aField: IJanuaField; const aTitle: string; const aGroup: string = '';
  // const aOnCellClick: string = ''; const aOnColumnClick: string = ''; const aWidth: Word = 0;
  // const aHeight: Word = 0);
  aColumn := THtmlTableTableColumn.Create(aMatches.HomeTeamLogo, 'Casa');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create(aMatches.VisitorsTeamLogo, 'Ospiti');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).Score, 'Ris.');
  aBuilder.AddColumin(aColumn);
  aColumn := THtmlTableTableColumn.Create((aMatches.CurrentRecord as IMatch).Buttons, 'Note');
  aBuilder.AddColumin(aColumn);
  aResult := aBuilder.GetElement as IHtmlTable;
  Assert.IsNotNull(aResult);
  vHtml := aResult.AsHtml;
  Assert.IsTrue(vHtml <> '');
  aStorage.DestroyDataset;

end;

procedure TTestFootball.TableRanking;
begin

end;

procedure TTestFootball.TearDown;
begin
  DMF.Free;
{$IFDEF WEBBROKER}
  // uWebBrokerTest.TearDown
{$ENDIF}
end;

procedure TTestFootball.TestRanking;
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
begin
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    Assert.IsNotNull(FootballServer.DM);
    Assert.IsNotNull(FootballServer.cdsChampRanking);
    FootballServer.AssignDatasets;
    Assert.IsNotNull(FootballServer.cdsChampRanking.MemDataset);
    Assert.IsTrue(FootballServer.cdsChampRanking.MemDataset.Active);
  finally
    FootballServer.Free
  end;
  // self.FootballServer.OpenRanking;
end;

procedure TTestFootball.TestRestSeasonsLeagues;
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
  LServer.OpenSeasonsList;
  aSeasons := LServer.Seasons;
  Assert.AreNotEqual(0, aSeasons.RecordCount, 'Seasons Record Count = 0');
  aSeasons.First;
  Assert.AreNotEqual(0, aSeasons.SeasonId.AsInteger, 'SeasonId = 0');
  LInt := LServer.GetLastSeasonID;
  Assert.IsTrue(aSeasons.Locate(aSeasons.SeasonId, LInt), 'Record non trovato ' + LInt.ToString);
  Assert.AreEqual(LInt, aSeasons.SeasonId.AsInteger, 'SeasonId(' + aSeasons.SeasonId.AsString + ') non è max ' +
    LInt.ToString);
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetSeasons(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bSeasons viene creato assegnandogli il primo Record di Rec Result.
  bSeasons := JOrm.Football.Season.Impl.TSeasons.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bSeasons.ContentEquals(aSeasons), 'bSeasons not ContentEquals(aSeasons internal test ');
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
{$IFNDEF JANUAUNIDAC}
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
  Assert.IsTrue(bSeasons.ContentEquals(aSeasons), 'bSeasons not ContentEquals(aSeasons HTTP test ');

  // Championships
  bChampionships := nil;
  LResult := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'championships',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  bChampionships := TChampionships.Create(LResult.RecResult.RecordSets[0]);
  Assert.IsTrue(bChampionships.ContentEquals(aChampionships), 'bChampionships not ContentEquals(aChampionships)');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.TestAssignDataSets;
var
  t1, t2: smallint;
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
begin
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    t1 := 76;
    t2 := 124;
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    // FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    FootballServer.AssignDatasets;
    Assert.AreEqual(FootballServer.season_id, t1);
    Assert.AreEqual(FootballServer.league_id, t2);
    Assert.IsNotNull(FootballServer.DM);
    Assert.IsNotNull(FootballServer.cdsChampionship);
    Assert.IsNotNull(FootballServer.cdsChampionship.MemDataset);
  finally
    FootballServer.Free
  end;
end;

procedure TTestFootball.TestDataModule;
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
begin
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    Assert.IsNotNull(FootballServer);
    Assert.IsNotNull(FootballServer.FootballSettings);
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    Assert.IsNotNull(FootballServer.DM);
    FootballServer.Activate;
    FootballServer.CreateDataModule;
  finally
    FootballServer.Free
  end;
end;

procedure TTestFootball.TestLiveScore;
var
  aStorage: IJanuaDBFootballStorage;
  aSettings: IFootballSettings;
  aServer: IJanuaServerFootball;
begin
  // First Test if Datasets are correctly prepared and loaded by aStorage Procedures
  aSettings := TFootballSettings.Create;
  Assert.IsNotNull(aSettings, 'aSettings is nil');
  aStorage := Janua.Virtual.Football.TJanuaVirtualFootballStorage.Create(aSettings);
  aStorage.KeepAlive := True;
  Assert.IsNotNull(aStorage, 'aStorage is nil');
  aStorage.CreateDataset;
  aStorage.OpenLiveScore;
  Assert.IsNotNull(aStorage.jdsMatchDetail, 'jdsMatchDetail is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailEvents, 'jdsMatchDetailEvents is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailHomePlayers, 'jdsMatchDetailHomePlayers is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailVisitorPlayers, 'jdsMatchDetailVisitorPlayers is nil');
  Assert.AreNotEqual(0, aStorage.jdsMatchDetail.RecordCount, 'jdsMatchDetail is 0');
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailEvents.RecordCount, 'jdsMatchDetailEvents is 0');
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailHomePlayers.RecordCount, 'jdsMatchDetailHomePlayers is 0');
  Assert.AreNotEqual(0, aStorage.jdsMatchDetailVisitorPlayers.RecordCount, 'jdsMatchDetailVisitorPlayers is 0');
  Assert.IsNotNull(aStorage.MatchDetailsStorage, 'MatchDetailsStorage  is nil');
  Assert.IsNotNull(aStorage.MatchDetailsStorage.RecordSet, 'RecordSet  is nil');

  {
    FMatchDetailsStorage := TJanuaCustomDatasetStorage.Create('matchdetails', TMatchDetails,
    [jdsMatchDetail, jdsMatchDetailVisitorPlayers, jdsMatchDetailHomePlayers, jdsMatchDetailEvents]);
  }

  // Assert.AreEqual(aStorage.MatchDetailsStorage.RecordSet.RecordCount, aStorage.jdsMatchDetail.RecordCount);

  // Second Test if Server Corretly Opens and Assigns Datasets to RecordSets and i Recordsets Are correcly loaded
  aServer := GenerateServer;
  Assert.IsNotNull(aServer, 'aServer is nil');
  aServer.OpenLiveScore;
  Assert.IsNotNull(aServer.MatchDetails, 'jdsMatchDetail is nil');
  Assert.IsNotNull(aServer.MatchDetails.Events, 'jdsMatchDetailEvents is nil');
  Assert.IsNotNull(aServer.MatchDetails.HomePlayers, 'jdsMatchDetailHomePlayers is nil');
  Assert.IsNotNull(aServer.MatchDetails.VisitorsPlayers, 'jdsMatchDetailVisitorPlayers is nil');
  Assert.AreNotEqual(0, aServer.MatchDetails.RecordCount, 'jdsMatchDetail is 0');
  Assert.AreNotEqual(0, aServer.MatchDetails.Events.RecordCount, 'jdsMatchDetailEvents is 0');
  Assert.AreNotEqual(0, aServer.MatchDetails.HomePlayers.RecordCount, 'jdsMatchDetailHomePlayers is 0');
  Assert.AreNotEqual(0, aServer.MatchDetails.VisitorsPlayers.RecordCount, 'jdsMatchDetailVisitorPlayers is 0');
  // Then we can check if Server and Storage ContentEquals one Each other
  Assert.AreEqual(aStorage.jdsMatchDetail.RecordCount, aServer.MatchDetails.RecordCount,
    'aStorage.jdsMatchDetail <>  aServer.MatchDetails');
  Assert.AreEqual(aStorage.jdsMatchDetailEvents.RecordCount, aServer.MatchDetails.Events.RecordCount,
    'aStorage.jdsMatchDetailEvents <> aServer.MatchDetails.Events');
  Assert.AreEqual(aStorage.jdsMatchDetailHomePlayers.RecordCount, aServer.MatchDetails.HomePlayers.RecordCount,
    'jdsMatchDetailHomePlayers do not match MatchDetails');
  Assert.AreEqual(aStorage.jdsMatchDetailVisitorPlayers.RecordCount, aServer.MatchDetails.VisitorsPlayers.RecordCount,
    'jdsMatchDetailVisitorPlayers not MatchDetails');

end;

function TTestFootball.GenerateServer: IJanuaServerFootball;
var
  aStorage: IJanuaFootballStorage;
  aSettings: IFootballSettings;
begin
  aSettings := TFootballSettings.Create;
  Assert.IsNotNull(aSettings, 'aSettings is nil');
  aStorage := Janua.Virtual.Football.TJanuaVirtualFootballStorage.Create(aSettings);
  aStorage.KeepAlive := True;
  Assert.IsNotNull(aStorage, 'aStorage is nil');
  Result := TJanuaServerFootball.Create(aStorage, nil, aSettings);
  Assert.IsNotNull(Result, 'IJanuaServerFootball is nil');

end;

procedure TTestFootball.GolRanking;
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  j: Integer;
begin
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    Assert.IsNotNull(FootballServer, 'FootballSettings is null');
    Assert.IsNotNull(FootballServer.FootballSettings, 'FootballSettings is null');
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    // FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;

    Assert.IsNotNull(FootballServer.DM, 'DM is null');
    // if  FootballServer.KeepAlive := False  we obtain a big memory Error why?
    FootballServer.KeepAlive := True;
    FootballServer.Activate;
    Assert.IsNotNull(FootballServer.cdsGolRanking, 'cdsGolRanking is null');
    FootballServer.OpenGoalRanking;

    //
    // Assert.IsNotNull(FootballServer.cdsGolRanking.MemDataset);
    Assert.IsNotNull(FootballServer.cdsGolRanking.MemDataset, 'MemDataset is null');
    FootballServer.cdsGolRanking.Open;
    {
      Assert.IsTrue(FootballServer.cdsGolRanking.MemDataset.Active, 'cdsGolRanking not active');
      j := FootballServer.cdsGolRanking.MemDataset.RecordCount;
      Assert.IsTrue(j > 0, 'cdsGolRanking record = ' + IntToStr(j) );
    }
  finally
    FootballServer.Free
  end;
end;

procedure TTestFootball.MatchDayStorage;
var
  aStorage: IJanuaDBFootballStorage;
  // aRankingStorage: IJanuaRecordSetStorage;
  // aRankingTable, bRankingTable: IRankingTable;
  // -------------------------------------------
  aMatchDayStorage: IJanuaRecordSetStorage;
  aMatchDays, bMatchDays: IMatchDays;
  // ---------------------------------------------
  aTest, bTest: Integer;
  tmp1, tmp2: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aMatchDayStorage := TJanuaCustomDatasetStorage.Create('matchday', IMatchDays { TMatchDays } , [aStorage.jdsMatchDay]);
  // TJanuaFootballMatchDayDSStorage.Create(aStorage);
  Assert.IsNotNull(aMatchDayStorage, 'Error aMatchesStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  aStorage.OpenMatches;
  aMatchDays := TMatchDayFactory.CreateRecordset('matchday', nil, nil);
  Assert.IsNotNull(aMatchDays, 'Error aRankingTable is nil');
  aMatchDays.DirectLoadFromDataset(aStorage.jdsMatchDay.Dataset);
  aTest := aMatchDays.RecordCount;
  bMatchDays := TMatchDayFactory.CreateRecordset('ranking', aMatchDayStorage, nil);
  bMatchDays.LoadFromLocalStorage;
  // Adesso facciamo un piccolo confronto ....
  bTest := bMatchDays.RecordCount;
  Assert.AreNotEqual(0, bTest, 'RecordCount = 0');
  Assert.AreEqual(bTest, aTest, 'bRankingTable e aRankingTable differenti Record .... ');
  // TMatchFactory.CreateRecordset('Matches', aStorage.jdsMatches, nil);
  aStorage.DestroyDataset;
  bMatchDays.First;
  tmp1 := bMatchDays.MatchDayNumber.AsString;
  bMatchDays.Next;
  tmp2 := bMatchDays.MatchDayNumber.AsString;
  // Assert.AreNotEqual(tmp1, tmp2);  // mi pare che non sia caricato un calendario di partite ma una sola
  // -----------------------------  TJanuaFootballMatchDayDSStorage --------------------

end;

procedure TTestFootball.MatchDetailsStorage;
var
  aStorage: IJanuaDBFootballStorage;
  // -------------------------------------------
  aMatchDetailStorage: IJanuaRecordSetStorage;
  aMatchDetails, bMatchDetails: IMatchDetails;
  // ---------------------------------------------
  aTest, bTest: Integer;
  tmp1, tmp2: string;
begin
  aStorage := TJanuaVirtualFootballStorage.Create;
  Assert.IsNotNull(aStorage, 'Error aStorage is nil');
  aStorage.CreateDataset;
  // Nota: aMatchesStorage non 'conosce' Virtual o Postgres ma si riferisce solo all'interfaccia ....
  aStorage.OpenMatchDetail;
  aMatchDetails := TMatchDetailsFactory.CreateRecordset('MatchDetail', nil, nil);
  Assert.IsNotNull(aMatchDetails, 'Error aRankingTable is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetail, 'Error jdsMatchDetail is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetail.Dataset, 'Error jdsMatchDetail.Dataset is nil');
  aMatchDetails.VisitorsPlayers.StoreDataset := aStorage.jdsMatchDetailVisitorPlayers;
  aMatchDetails.HomePlayers.StoreDataset := (aStorage.jdsMatchDetailHomePlayers);
  aMatchDetails.Events.StoreDataset := (aStorage.jdsMatchDetailEvents);
  Assert.IsNotNull(aMatchDetails.Events.StoreDataset, 'aMatchDetails.Events.Dataset is nil');
  Assert.IsNotNull(aMatchDetails.Events.CurrentRecord.DBDataset, 'aMatchDetails.Events.CurrentRecord.DBDataset is nil');

  Assert.IsNotNull(aMatchDetails.VisitorsPlayers, 'Error VisitorsPlayers is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailVisitorPlayers, 'Error jdsMatchDetailVisitorPlayers is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailVisitorPlayers.Dataset, 'Error jdsMatchDetailVisitorPlayers.Dataset is nil');

  Assert.IsNotNull(aMatchDetails.HomePlayers, 'Error aRankingTable is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailHomePlayers, 'Error jdsMatchDetail is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailHomePlayers.Dataset, 'Error jdsMatchDetail.Dataset is nil');

  Assert.IsNotNull(aMatchDetails.Events, 'Error aRankingTable is nil');
  Assert.IsNotNull(aMatchDetails.CurrentRecord.RecordSets[0], 'aMatchDetails CurrentRecord.RecordSets[0] is nil');
  Assert.AreSame(aMatchDetails.CurrentRecord.RecordSets[0], aMatchDetails.Events);
  Assert.IsNotNull(aStorage.jdsMatchDetailEvents, ' aMatchDetails.Events.Dataset is nil');
  Assert.IsNotNull(aStorage.jdsMatchDetailEvents.Dataset, 'Error jdsMatchDetailEvents.Dataset is nil');

  aMatchDetails.DirectLoadFromDataset(aStorage.jdsMatchDetail.Dataset);

  aTest := aMatchDetails.RecordCount;
  Assert.AreEqual(1, aTest);

  // aMatchDetails.VisitorsPlayers.DirectLoadFromDataset(aStorage.jdsMatchDetailVisitorPlayers.Dataset);
  aTest := aMatchDetails.VisitorsPlayers.RecordCount;
  Assert.AreNotEqual(0, aTest, 'VisitorsPlayers 0 record');

  // aMatchDetails.HomePlayers.DirectLoadFromDataset(aStorage.jdsMatchDetailHomePlayers.Dataset);
  aTest := aMatchDetails.HomePlayers.RecordCount;
  Assert.AreNotEqual(0, aTest, 'HomePlayers 0 record');

  Assert.AreNotEqual(0, aStorage.jdsMatchDetailEvents.Dataset.RecordCount, 'jdsMatchDetailEvents Dataset 0 record');
  // aMatchDetails.Events.DirectLoadFromDataset(aStorage.jdsMatchDetailEvents.Dataset);
  aTest := aMatchDetails.Events.RecordCount;
  Assert.AreNotEqual(0, aTest, 'Events 0 record');
  // Elenco di Tabelle di riferimento
  with aStorage do
    aMatchDetailStorage := TJanuaCustomDatasetStorage.Create('matchdetails', IMatchDetails { TMatchDetails } ,
      [jdsMatchDetail, jdsMatchDetailEvents, jdsMatchDetailVisitorPlayers, jdsMatchDetailHomePlayers]);
  Assert.IsNotNull(aMatchDetailStorage, 'Error aMatchDetailStorage is nil');
  // provo ad assegnare aMatches al relativo Storage .......................
  Assert.IsNotNull(aMatchDetailStorage, 'Error aMatchDetailStorage is nil');
  aMatchDetailStorage.LoadData;

  bMatchDetails := TMatchDetailsFactory.CreateRecordset('matchdetails', aMatchDetailStorage, nil);
  if aMatchDetailStorage.LoadData then
    bMatchDetails.LoadFromLocalStorage;
  aTest := aMatchDetailStorage.RecordSet.RecordCount;
  Assert.AreNotEqual(0, aTest, 'aMatchDetailStorage RecordSet 0 record');
  aTest := (aMatchDetailStorage.RecordSet as IMatchDetails).RecordCount;
  Assert.AreNotEqual(0, aTest, 'aMatchDetailStorage RecordSet 0 record');

  aTest := (aMatchDetailStorage.RecordSet as IMatchDetails).Events.RecordCount;
  Assert.AreNotEqual(0, aTest, 'aMatchDetailStorage Events 0 record');

  // Adesso facciamo un piccolo confronto ....
  aTest := bMatchDetails.RecordCount;
  Assert.AreNotEqual(0, aTest, 'bMatchDetails 0 record');
  aTest := bMatchDetails.HomePlayers.RecordCount;
  Assert.AreNotEqual(0, aTest, 'bMatchDetails HomePlayers 0 record');
  aTest := bMatchDetails.Events.RecordCount;
  Assert.AreNotEqual(0, aTest, 'bMatchDetails Events 0 record');
  aTest := bMatchDetails.HomePlayers.RecordCount;
  Assert.AreNotEqual(0, aTest, 'bMatchDetails HomePlayers 0 record');
  aTest := bMatchDetails.VisitorsPlayers.RecordCount;
  Assert.AreNotEqual(0, aTest, 'bMatchDetailsVisitorsPlayers 0 record');

  bTest := bMatchDetails.RecordCount;
  Assert.AreNotEqual(0, bTest, 'RecordCount = 0');
  aTest := aMatchDetails.RecordCount;
  Assert.AreEqual(bTest, aTest, 'bMatchDetails e aMatchDetails differenti Record .... ');
  // TMatchFactory.CreateRecordset('Matches', aStorage.jdsMatches, nil);

  aStorage.DestroyDataset;
  bMatchDetails.First;
  tmp1 := bMatchDetails.MatchDetail.MatchId.AsString;
  bMatchDetails.Next;
  tmp2 := bMatchDetails.MatchDetail.MatchId.AsString;
  // Assert.AreNotEqual(tmp1, tmp2);  // mi pare che non sia caricato un calendario di partite ma una sola
  // -----------------------------  TJanuaFootballMatchDetailDSStorage --------------------

end;

procedure TTestFootball.RestCalendar;
begin

end;

procedure TTestFootball.RestCalendarMatches;
var
  LServer: IJanuaServerFootball;
  aCalendarMatchDays, bCalendarMatchDays: IMatchCalendarDays;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.OpenCalendar;
  aCalendarMatchDays := LServer.MatchCalendarDays; // IMatchCalendarDays
  Assert.IsNotNull(aCalendarMatchDays, 'aCalendarMatches is null');
  Assert.AreNotEqual(0, aCalendarMatchDays.RecordCount, 'aCalendarMatches Record Count = 0');
  aCalendarMatchDays.First;
  Assert.AreNotEqual(0, aCalendarMatchDays.LeagueId.AsInteger, 'aCalendarMatches.LeagueId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetCalendarMatchDays(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordCount, 'LResult Return Error local test');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bCalendarMatchDays := TMatchCalendarDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, aCalendarMatchDays.LeagueId.AsInteger, 'bCalendarMatches not loaded local test');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(aCalendarMatchDays.ContentEquals(bCalendarMatchDays),
    'bCalendarMatches not ContentEquals(aGoalRanking internal test ');
{$IFNDEF JANUAUNIDAC}
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  // bGoalRanking.Last;
  LResult := nil;
  // self.AddFunction('calendarmatches', RestGetCalendarMatches);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'calendarmatches',
    { aParams } aParams);
  Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
  Assert.IsNotNull(LResult, 'LResult is null http test');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error http test');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bCalendarMatchDays := TMatchCalendarDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, aCalendarMatchDays.LeagueId.AsInteger, 'bCalendarMatches not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(aCalendarMatchDays.ContentEquals(bCalendarMatchDays),
    'bCalendarMatches not ContentEquals(aGoalRanking internal test ');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.RestChampionship;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.OpenChampionship;
  aChampionship := LServer.Championship;
  Assert.IsNotNull(aChampionship, 'aChampionship is null');
  // Assert.AreNotEqual(0, aChampionship.RecordCount, 'aRanking Record Count = 0');
  // aChampionship.First;
  Assert.AreNotEqual(0, aChampionship.LeagueId.AsInteger, 'aChampionship.LeagueId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
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
  aChampionship := nil;
  LServer.OpenChampionship;
  aChampionship := LServer.Championship;
  // self.AddFunction('championship', RestGetChampionship);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'championship',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordCount, 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bChampionship := TChampionship.Create(LResult.RecResult.Records[0]);
  Assert.AreNotEqual(0, bChampionship.LeagueId.AsInteger, 'bChampionship not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.AreEqual(bChampionship.SeasonId.AsInteger, aChampionship.SeasonId.AsInteger, 'Rest Season');
  Assert.AreEqual(bChampionship.LeagueId.AsInteger, aChampionship.LeagueId.AsInteger, 'Rest League');
  Assert.IsTrue(bChampionship.ContentEquals(aChampionship), 'bChampionship Rest not ContentEquals(aChampionship)');

end;

procedure TTestFootball.RestDynamicGoalRanking;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
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
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.match_day := 30;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetDynamicGoalRanking(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bGoalRanking := TGoalRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bGoalRanking.LeagueId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking), 'bGoalRanking not ContentEquals(aGoalRanking internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bGoalRanking := nil;
  LResult := nil;
  // self.AddFunction('dyngoalranking', RestGetDynamicGoalRanking);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'dyngoalranking',
    { aParams } aParams);
  Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bGoalRanking := TGoalRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bGoalRanking.LeagueId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking), 'bGoalRanking not ContentEquals(aGoalRanking http test ');

end;

procedure TTestFootball.RestDynamicRanking;
var
  LServer: IJanuaServerFootball;
  aRanking, bRanking: IRankingTable;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 77;
  LServer.OpenDynamicRanking;
  aRanking := LServer.DynamicRanking;
  Assert.IsNotNull(aRanking, 'aChampionship is null');
  // Assert.AreNotEqual(0, aChampionship.RecordCount, 'aRanking Record Count = 0');
  // aChampionship.First;
  Assert.AreNotEqual(0, aRanking.RecordCount, 'aRanking.RecordCount = 0');
  Assert.AreEqual(77, aRanking.SeasonId.AsInteger, 'aRanking.SeasonId <> 76');
  Assert.AreEqual(124, aRanking.LeagueId.AsInteger, 'aRanking.League_id <> 124');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 77;
  LSettings.match_day := 30;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetDynamicRanking(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bRanking.LeagueId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bGoalRanking not ContentEquals(aGoalRanking internal test ');
{$IFNDEF JANUAUNIDAC}
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bRanking := nil;
  LResult := nil;
  // dynranking
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'dynranking',
    { aParams } aParams);
  Assert.IsFalse(LResult.HasErrors, 'Error: ' + LResult.ErrorMessage);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bRanking.LeagueId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bGoalRanking not ContentEquals(aGoalRanking internal test ');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.RestGetLiveScore;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.Settings.match_day := 30;
  LServer.OpenLiveScore;
  aMatchDetails := LServer.MatchDetails;
  Assert.AreNotEqual(0, aMatchDetails.RecordCount, 'aMatches Record Count = 0');
  aMatchDetails.First;
  Assert.AreNotEqual(0, aMatchDetails.MatchDetail.MatchId.AsInteger, 'aMatchDetails.MatchDetail.MatchId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.match_day := 30;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetLiveScore(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetails := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetails.RecordCount, 'bMatDay not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetails.ContentEquals(aMatchDetails), 'bSeasons not ContentEquals(aSeasons internal test ');

{$IFNDEF JANUAUNIDAC}
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
    'bMatchDetails not ContentEquals(aMatchDetails HTTP REST test ');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.RestGetMatchDaysList;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.Settings.match_day := 30;
  LServer.OpenMatchDayLists;
  aMatchList := LServer.MatchDaysList;
  Assert.AreNotEqual(0, aMatchList.RecordCount, 'aMatches Record Count = 0');
  aMatchList.First;
  Assert.AreNotEqual(0, aMatchList.MatchDayNumber.AsInteger, 'aMatchList.MatchDayNumber = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.match_day := 30;
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
{$IFNDEF JANUAUNIDAC}
  bMatchList := nil;
  LResult := nil;
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

procedure TTestFootball.RestGetNextMatchDay;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.Settings.match_day := 30;
  LServer.OpenNextMatches;
  aMatches := LServer.NextMatches;
  aMatDay := LServer.NextMatchDay;
  Assert.AreNotEqual(0, aMatches.RecordCount, 'aMatches Record Count = 0');
  Assert.AreNotEqual(0, aMatDay.RecordCount, 'aMatDay Record Count = 0');
  aMatches.First;
  Assert.AreNotEqual(0, aMatches.MatchId.AsInteger, 'aMatches.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.match_day := 30;
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

procedure TTestFootball.RestGoalRanking;
var
  LServer: IJanuaServerFootball;
  aGoalRanking, bGoalRanking: JOrm.Football.GoalRanking.Intf.IGoalRankingTable;
  LParams: IJanuaParams;
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
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking), 'bGoalRanking not ContentEquals(aGoalRanking internal test ');
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
  Assert.IsTrue(bGoalRanking.ContentEquals(aGoalRanking), 'bGoalRanking not ContentEquals(aGoalRanking internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
end;

procedure TTestFootball.RestMatchDay;
var
  LServer: IJanuaServerFootball;
  aMatches, bMatches: JOrm.Football.Matches.Intf.IMatches;
  aMatDay, bMatDay: JOrm.Football.MatchDay.Intf.IMatchDays;
  aParams: IJanuaParams;
  LResult, MResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.Settings.match_day := 30;
  LServer.OpenMatches;
  aMatches := LServer.Matches;
  aMatDay := LServer.MatchDay;
  Assert.AreNotEqual(0, aMatches.RecordCount, 'aMatches Record Count = 0');
  Assert.AreNotEqual(0, aMatDay.RecordCount, 'aMatDay Record Count = 0');
  aMatches.First;
  Assert.AreNotEqual(0, aMatches.MatchId.AsInteger, 'aMatches.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.match_day := 30;
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

procedure TTestFootball.RestMatchDetails;
var
  LServer: IJanuaServerFootball;
  aMatchDetail, bMatchDetail: IMatchDetails;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin

  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.Settings.match_id := 153840; // Sets the right match ID For Testing
  LServer.OpenMatchDetail;
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
    'bMatchDetail not ContentEquals(aMatchDetail internal test 1 ');
{$IFNDEF JANUAUNIDAC}
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('matchdetails', RestGetMatchDetails);
  bMatchDetail := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'matchdetails',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetail := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetail.MatchDetail.MatchId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetail.ContentEquals(aMatchDetail),
    'bMatchDetail not ContentEquals(aMatchDetail internal test 2 ');
  // ------------------------- http Rest Test ----------------------------------------------------
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // AddFunction('matchdetails', RestGetMatchDetails);
  bMatchDetail := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'matchdetails',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetail := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetail.MatchDetail.MatchId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetail.ContentEquals(aMatchDetail),
    'bMatchDetail not ContentEquals(aMatchDetail http rest test 1');
  // annullo bMatchDetail ma mi tengo attivi i Parametri (Params).
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('matchdetails', RestGetMatchDetails);
  bMatchDetail := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'matchdetails',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatchDetail := TMatchDetails.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatchDetail.MatchDetail.MatchId.AsInteger, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatchDetail.ContentEquals(aMatchDetail),
    'bMatchDetail not ContentEquals(aMatchDetail http rest test 2');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.RestMatches;
begin

end;

procedure TTestFootball.RestNexMatches;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.Settings.match_day := 30;
  LServer.OpenNextMatches;
  aMatches := LServer.NextMatches;
  aMatDay := LServer.NextMatchDay;
  Assert.AreNotEqual(0, aMatches.RecordCount, 'aMatches Record Count = 0');
  Assert.AreNotEqual(0, aMatDay.RecordCount, 'aMatDay Record Count = 0');
  aMatches.First;
  Assert.AreNotEqual(0, aMatches.MatchId.AsInteger, 'aMatches.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  LSettings.match_day := 30;
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
{$IFNDEF JANUAUNIDAC}
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('nextmatches', RestGetNexMatches);
  bMatches := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'nextmatches',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null ' + aParams.AsString);
  Assert.AreEqual(2, LResult.RecResult.RecordSetCount(False), 'LResult Return Error ' + aParams.AsString);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bMatDay := TMatchDays.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bMatDay.RecordCount, 'bMatDay not loaded');
  bMatches := TMatches.Create(LResult.RecResult.RecordSets[1]);
  Assert.AreNotEqual(0, bMatches.RecordCount, 'bMatches not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bMatches.ContentEquals(aMatches), 'bSeasons not ContentEquals(aSeasons internal test ');
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.RestPlayerCareers;
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
  LServer.Settings.player_id := 124; // id del giocatore da cercare ....
  LServer.OpenPlayerCareer;
  aPlayerCareers := LServer.PlayerCareers;
  Assert.IsNotNull(aPlayerCareers, 'aPlayerCareers is nil');
  Assert.AreNotEqual(0, aPlayerCareers.RecordCount, 'aPlayerCareers Record Count = 0');
  aPlayerCareers.First;
  Assert.AreNotEqual(0, aPlayerCareers.PlayerId.AsInteger, 'aPlayerCareers.PlayerId = 0');
  Assert.AreEqual(52543, aPlayerCareers.PlayerId.AsInteger, 'aPlayerCareers.PlayerId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetPlayerCareers(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bPlayerCareers := TPlayerCareers.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bPlayerCareers.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bPlayerCareers.ContentEquals(aPlayerCareers), 'bSeasons not ContentEquals(aSeasons internal test ');
{$IFNDEF JANUAUNIDAC}
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('playercareers', RestGetPlayerCareers);
  bPlayerCareers := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'playercareers',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bPlayerCareers := TPlayerCareers.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bPlayerCareers.RecordCount, 'bPlayerCareers not loaded ' + aParams.AsString);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bPlayerCareers.ContentEquals(aPlayerCareers), 'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.RestRanking;
var
  LServer: IJanuaServerFootball;
  aRanking, bRanking: JOrm.Football.RankingTable.Intf.IRankingTable;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LSettings: IFootballSettings;
begin
  // Settings verranno poi usati per recuperare i dati che servono
  LSettings := TFootballSettings.Create;
  LServer := FactoryCreateFootballServer;
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  LServer.OpenRanking;
  aRanking := LServer.RankingTable;
  Assert.AreNotEqual(0, aRanking.RecordCount, 'aRanking Record Count = 0');
  aRanking.First;
  Assert.AreNotEqual(0, aRanking.TeamId.AsInteger, 'aRanking.TeamId = 0');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetRankingTable(aParams);
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bRanking.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bSeasons not ContentEquals(aSeasons internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('playercareers', RestGetPlayerCareers);
  bRanking := nil;
  LResult := nil;
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'ranking',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Return Error');
  // self.AddFunction('ranking', RestGetRankingTable);
  bRanking := TRankingTable.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bRanking.RecordCount, 'bRanking not loaded');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bRanking.ContentEquals(aRanking), 'bSeasons not ContentEquals(aSeasons internal test ');

end;

procedure TTestFootball.RestSelectedSeason;
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
  LServer.Settings.league_id := 124;
  LServer.Settings.season_id := 76;
  // Apro la Stagione numero 76 per il Test
  LServer.OpenSeason(76);
  // Open Season deve caricare la stagione selezionata dal Server dei campionati.
  aSeason := LServer.SelectedSeason;
  // Assert.AreNotEqual(0, aRanking.RecordCount, 'aRanking Record Count = 0');
  // aRanking.First;
  Assert.AreNotEqual(0, aSeason.SeasonId.AsInteger, 'aSeason.SeasonId = 0');
  Assert.AreEqual(76, aSeason.SeasonId.AsInteger, 'aSeason.SeasonId <> 76');
  LSettings.Clear;
  // per creare i parametri uso la funzione del Server Football che traduce i settings in REST Params
  LSettings.league_id := 124;
  LSettings.season_id := 76;
  aParams := TJanuaFootballFactory.CreateFootballParams(LSettings);
  // Testo la f() sul server passandole i parametri
  LResult := LServer.RestGetSelectedSeason(aParams);
  // il numero di record defniti nella procedura di Ritorno dovrebbe essere pari ad 1.
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Local Return Error');
  // bSeason viene creato assegnandogli il primo Record di Rec Result.
  bSeason := TSeasons.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId = 0');
  Assert.AreEqual(76, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId <> 76');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bSeason.ContentEquals(aSeason), 'bSeason not ContentEquals(aSeason internal test ');
{$IFNDEF JANUAUNIDAC}
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bSeason := nil;
  LResult := nil;
  // Chiamo la procedura matchday dal Server
  // self.AddFunction('selectedseason', RestGetSelectedSeason);
  LResult := TJanuaHttp.GetRestFunction( { aSchema } 'football', { aFunction } 'selectedseason',
    { aParams } aParams);
  Assert.IsNotNull(LResult, 'LResult is null');
  Assert.AreEqual(1, LResult.RecResult.RecordSetCount(False), 'LResult Rest Return Error');
  // bSeason viene creato assegnandogli il primo Record di Rec Result.
  bSeason := TSeasons.Create(LResult.RecResult.RecordSets[0]);
  Assert.AreNotEqual(0, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId = 0');
  Assert.AreEqual(76, bSeason.SeasonId.AsInteger, 'aSeason.SeasonId <> 76');
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bSeason.ContentEquals(aSeason), 'bSeason not ContentEquals(aSeason internal test ');
  // annullo bArticle ma mi tengo attivi i Parametri (Params).
{$ENDIF JANUAUNIDAC}
end;

procedure TTestFootball.Championship;
var
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  aJson: TJsonObject;
  aHtml: string;
begin
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.season_id := 76;
    FootballServer.league_id := 124;
    // FootballServer.KeepAlive := True;
    FootballServer.CreateDataModule;
    Assert.IsNotNull(FootballServer.DM, 'FootballServer.DM is null');
    Assert.IsNotNull(FootballServer.cdsChampionship, 'cdsChampionship is null');

    FootballServer.OpenChampionship;
    {
      FootballServer.AssignDatasets;
      Assert.IsNotNull(FootballServer.cdsChampionships.MemDataset, 'MemDataset is null');
      Assert.IsTrue(FootballServer.cdsChampionship.MemDataset.RecordCount = 1);
      FootballServer.Championship.SetFromDataset(FootballServer.cdsChampionships.MemDataset);
      aJson := FootballServer.Championship.AsJsonObject;
      aHtml := FootballServer.Championship.AsRow.AsString;
    }
  finally

    FootballServer.Free
  end;
end;

procedure TTestFootball.Championships;
var
  aTransaction: boolean;
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
  s: string;
begin
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.CreateDataModule;
    Assert.IsNotNull(FootballServer.DM, 'FootballServer.DM is null');
    Assert.IsNotNull(FootballServer.cdsChampionships, 'FootballServer.cdsChampionships nil');
    FootballServer.AssignDatasets;
    Assert.IsNotNull(FootballServer.cdsChampionships.MemDataset, 'FootballServer.cdsChampionships.MemDataset nil');
    Assert.AreEqual(20, FootballServer.cdsChampionships.MemDataset.RecordCount,
      'cdsChampionships.MemDataset.RecordCount <> 20 (2)');
    Assert.IsNotNull(FootballServer.FootballSettings,
      'TJanuaCustomServerFootball.OpenChampionshipsList  IFootballSettings not set');
    Assert.IsNotNull(FootballServer.DM);
    if FootballServer.FootballSettings.season_id = 0 then
      FootballServer.FootballSettings.season_id := FootballServer.GetLastSeasonID;
    FootballServer.InternalOpenChampionshipsList;
    Assert.IsNotNull(FootballServer.cdsChampionships.MemDataset);
    Assert.IsTrue(FootballServer.cdsChampionships.MemDataset.RecordCount = 20);
    FootballServer.Championships.SetFromDataset(FootballServer.cdsChampionships.MemDataset);
    Assert.IsTrue(FootballServer.Championships.Count = 20);
    s := FootballServer.Championships.AsHtml(False);
  finally
    FootballServer.Free;
  end;
end;

procedure TTestFootball.ChampionshipsIntf;
var
  aChampionship: IChampionship;
  aChampionships: IChampionships;
  FootballServer: Janua.Test.Football.TJanuaServerVTFootball;
begin
  aChampionship := TChampionshipFactory.CreateRecord('vtChampionships');
  // aChampionships := TChampionshipFactory.CreateRecordset('championships', 'vtChampionships');
  FootballServer := Janua.Test.Football.TJanuaServerVTFootball.Create(nil);
  try
    FootballServer.Activate;
    FootballServer.OpenDefaultSeason;
    aChampionships := TChampionshipFactory.CreateRecordset('Championships', nil, nil);
    Assert.IsNotNull(FootballServer.DM, 'FootballServer.DM is null');
    Assert.IsNotNull(FootballServer.cdsChampionships);
    FootballServer.AssignDatasets;
    aChampionships.CurrentRecord.DBDataset := FootballServer.cdsChampionships.MemDataset;
    aChampionships.LoadFromDataset;
    // aChampionships.LoadFromDataset(FootballServer.cdsChampionships.MemDataset, []);
    Assert.AreEqual(20, aChampionships.RecordCount, 'aChampionships.RecordCount');
  finally
    FootballServer.Free;
  end;
end;

function TTestFootball.FactoryCreateFootballServer: IJanuaServerFootball;
var
  aFactory: IJanuaServerFootballFactory;
begin
  // TJanuaServerVirtualFootballFactory = class(TJanuaServerFootballFactory, IJanuaServerFootballFactory)
  { aStorage := TJanuaVirtualFootballStorage.Create(aSettings);
    Assert.IsNotNull(aStorage, 'aStorage is nil');
    Result := TJanuaServerFootballFactory.GetServerFootball(aStorage, nil);
    // TJanuaServerFootball.Create(aStorage, nil, aSettings);
  }
  aFactory := TJanuaServerVirtualFootballFactory.Create;
  Result := aFactory.GetServerFootball;
  Assert.IsNotNull(Result, 'aServer is nil');
  {
    self.FName := 'football';
    self.AddFunction('nextmatchday', RestGetNextMatchDay);
    self.AddFunction('dynranking', RestGetDynamicRanking);
    self.AddFunction('leaguesparams', RestGetLeaguesaParams);
  }

end;

initialization

TDUnitX.RegisterTestFixture(TTestFootball);

end.
