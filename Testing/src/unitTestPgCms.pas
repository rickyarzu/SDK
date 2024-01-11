unit unitTestPgCms;

interface

uses
  DUnitX.TestFramework, Janua.Core.Classes;

type

  [TestFixture]
  Cms = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    procedure SaveLog(const procName: string);
    // Sample Methods
    // Simple single Test
    [Test]
    [TestCase('TestA', '101')]
    procedure Architecture(aArgID: Integer);
    [Test]
    // "74493"
    [TestCase('TestA', '75130,75130')]
    [TestCase('TestB', '74999,0')]
    procedure TestArticle(const aArticleID, aExpected: Int64);
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA', '101')]
    // [TestCase('TestB', '0')]
    procedure RestArticles(const aArgID: Integer);
    [Test]
    [TestCase('TestA', '75130,75130')]
    [TestCase('TestB', '74999,0')]
    procedure TestRestArticle(const aArticleID, aExpected: Int64);
    [Test]
    procedure TestRestArguments;
    [Test]
    procedure TestRestWarnings;
  end;

implementation

uses
  System.SysUtils, System.Classes, System.Json, uWebBrokerTest, System.Net.HttpClient, System.Rtti,
  JOrm.Cms.MainArguments.Impl, Janua.Orm.Dataset.Impl, Janua.Core.Functions, Janua.Http.Types,
  Janua.Orm.Types, Janua.Core.Json,
  // Storage Postgres
  udmPgCmsStorage, Janua.Postgres.Cms, Janua.Postgres.Cms.Impl, Janua.Postgres.Football.Impl,
  // Server
  Janua.Cms.Server.Intf, Janua.Orm.Intf, Janua.Orm.Dataset.Intf, JOrm.Cms.MainArguments.Intf,
  Janua.Cms.Server.Impl, Janua.Orm.Impl, Janua.Server.Intf, Janua.Server.Impl,
  // Articles
  JOrm.Cms.Articles.Intf, Janua.Html.Bootstrap4.Builder, JOrm.Cms.Articles.Impl,
  // http
  Janua.Core.Sockets, Janua.Core.Types, Janua.Http.Intf, Janua.Http.Impl,
  Janua.Football.Intf, Janua.Football.Web.Intf, Janua.Football.Server.Intf, Janua.Dilettantissimo.Impl,
  // Html
  Janua.Html.Intf, Janua.Html.Metro5.Impl, Janua.Html.Metro5.Types, Janua.Html.Impl, Janua.Html.Metro5.Intf,
  Janua.Metro5.Builder, Janua.Html.Builder.Intf, Janua.Html.Builder.Impl,
  //Janua Application Framework
  Janua.Application.Framework;

procedure Cms.Architecture(aArgID: Integer);
var
  FSession: IFootballWebSession;
  FCloudSession: IWebSession;
  LWebManager: IWebManager;
  LFactory: IFootballFactory;
  LFActoryFootball: IJanuaServerFootballFactory;
  LWebFactory: IFootballWebFactory;
  LFactoryCms: IJanuaServerCmsFactory;
  LServerFootball: IJanuaServerFootball;
  LServerCms: IJanuaServerCms;
  LTestCache: IJanuaServerCmsCache;
  // TJanuaServerCmsCache = class(TInterfacedObject, IJanuaServerCmsCache)
  LTest: string;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  br: IArticles;
begin
  LWebManager := TWebManager.Create;
  Assert.IsNotNull(LWebManager, 'WebModuleCreate aSession is null');
  // Creo le Factories da Postgres Server
  LFActoryFootball := Janua.Postgres.Football.Impl.TJanuaServerPgFootballFactory.Create;
  Assert.IsNotNull(LFActoryFootball, 'TWebModule1.WebModuleCreate LServerFootball is nil');
  // Creo la Factory CMS Non serve piu includere la Cache in quanto viene creta 'on demand' dalla Factory
  LFactoryCms := Janua.Postgres.Cms.Impl.TJanuaServerPgCmsFactory.Create(nil);
  // Attivo e registro i Web Server Responder essendo server REST i loro Storage hanno KeepAlive = False
  LServerCms := LFactoryCms.GetServerCms;
  LWebManager.AddServer(LServerCms);
  Assert.IsNotNull(LFactoryCms, 'TWebModule1.WebModuleCreate LServerCms is nil');
  { TODO : Creare 3 Differenti WebSession ognuna 'specializzata' per la propria 'Factory' associate al WebManager }
  // LFactorySystem := nil;
  LWebFactory := TDilettantissimoFactory.Create;
  FSession := LWebFactory.GetWebSession(LFActoryFootball, LFactoryCms, nil, LWebManager);
  Assert.IsNotNull(FSession, 'TWebModule1.WebModuleCreate aSession is nil');
  // LTestCache := LFactoryCms.

  // ************************** Collaudo risposta **************************************
  // per creare i parametri uso la funzione del Server Cms
  aParams := LServerCms.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := aArgID;
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test(2) ');

  LTest := LWebManager.FuncResponder('cms', 'argarticles', aParams.AsJsonObject.ToJSON);
  Assert.AreNotEqual('', LTest, ' Url returned no result');

  // Testo la f() sul server passandole i parametri
  LResult := TJanuaFuncResult.Create(LTest);
  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.RecordCount > 0, sLineBreak + 'WebBroker br.RecordCount = 0');
end;

procedure Cms.RestArticles(const aArgID: Integer);
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  t1: Integer;
  ar, br: IArticles;
  aParams, tParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  aHttpParams: TJanuaHttpParams;
  tmp, tmpjson: string;
begin
  TJanuaLogger.StartLog;
  TJanuaLogger.StartWatch;
  TJanuaLogger.LogRecord('RestArticles', 'TJanuaPgCmsStorage.Create', self);
  aStorage := TJanuaPgCmsStorage.Create;
  Assert.IsNotNull(aStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(aStorage, nil);
  Assert.IsNotNull(aServer);
  // Primo Test esegue apertura Argument Articles e verifica che la query sia corretta.
  t1 := aServer.OpenArgumentArticles(aArgID);
  // t1 := (aServer.LocalArgumentsStorage as IJanuaDBCmsStorage).jdsArticles.RecordCount;
  Assert.AreNotEqual(0, t1, sLineBreak + 'aServer.OpenArgumentArticles(' + aArgID.ToString + ') = 0');
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');
  Assert.AreNotEqual(1, t1, sLineBreak + 'aServer.OpenArgumentArticles(' + aArgID.ToString + ') = 1');
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  ar := aServer.Articles;
  Assert.IsNotNull(ar);
  t1 := ar.RecordCount;
  Assert.AreNotEqual(0, t1, sLineBreak + 'aServer.OpenArgumentArticles(' + aArgID.ToString + ') = 0');
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');
  Assert.AreNotEqual(1, t1, sLineBreak + 'aServer.OpenArgumentArticles(' + aArgID.ToString + ') = 1');
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := aArgID;
  // Testo la f() sul server passandole i parametri
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test (1) ');

  Assert.IsTrue(aParams.Items.ContainsKey('argument_id'), 'Arguments do not contain argument_id');

  LResult := aServer.RestGetArgumentArticles(aParams);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.ContentEquals(ar), sLineBreak + 'br not Equals(ar');

  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  br := nil;
  LResult := nil;
  aParams := nil;

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := aArgID;
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test(2) ');

  LResult := TServerHelper.OpenServerFunction('cms', 'argarticles', aParams);

  (*
    aHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
    aHttpParams.Add(TJanuaHttpParam.Create('function', 'argarticles'));
    aHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
    tmpjson := aParams.AsJsonObject.ToJSON;
    tParams := TJanuaParams.Create(Janua.Core.Json.JsonParse(tmpjson));
    Assert.IsTrue(tParams.ContentEquals(aParams), 'tParams not Equals(aParams)');
    aHttpParams.Add(TJanuaHttpParam.Create('params', tmpjson));
    tmp := TJanuaHttp.OpenUrlAsString( { Url } 'http://localhost:8099', { HttpParams } aHttpParams,
    { MimeType } jmtApplicationJson);
    // uWebBrokerTest.TearDown;
    Assert.AreNotEqual('', tmp, ' Url returned no result');
    // Testo la f() sul server passandole i parametri
    LResult := TJanuaFuncResult.Create(tmp);
  *)

  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.ContentEquals(ar), sLineBreak + 'WebBroker br not Equals(ar');

  TJanuaLogger.StopLog;
  SaveLog('RestArticles');
end;

procedure Cms.SaveLog(const procName: string);
begin
  TJanuaLogger.SaveLogToFile('TestPgCms_' + procName + '.log');
end;

procedure Cms.Setup;
var
  FServerConf: TJanuaServerRecordConf;
begin
  FServerConf.Port := 5432;
  FServerConf.DatabaseName := 'test';
  FServerConf.Password := '3rg0m3rc4t0r';
  FServerConf.Username := 'ergo';
  FServerConf.Address := 'local.januaservers.com';
  // FServerConf.Address := 'pg.januaservers.com';
  FServerConf.Schema := 'public';
  FServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  TJanuaApplication.JanuaServerConf := FServerConf;
  TJanuaApplication.RestServer := 'http://localhost:8099';
  // dmCmsLNDConf.JanuaConf1.JanuaServerConf.SetRecordConf(FServerConf);
  TJanuaApplication.DBSchemaID := 32;
  TJanuaApplication.DBUserID := 13;
  uWebBrokerTest.Setup;
end;

procedure Cms.TearDown;
begin

end;

procedure Cms.TestArticle(const aArticleID, aExpected: Int64);
var
  aStorage: udmPgCmsStorage.TdmPgCmsStorage;
  LCount: Word;

  aArticle, bArticle: IArticle;
  aImageID, aTest: Int64;
  LStream: TBytesStream;
  LTmp: Int64;
  I: Integer;
  vTest: Boolean;
const
  TsWord: Word = 0;
  TsINt64: Int64 = 0;
begin
  aStorage := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    aArticle := aStorage.GetArticle(aArticleID, LCount);
  finally
    aStorage.Free;
    aStorage := nil;
  end;

  Assert.IsNotNull(aArticle, 'aArticle from GetArticle(aID is null');
  Assert.AreEqual(aExpected, aArticle.Article_id.AsLargeInt);
  if aExpected <> 0 then
  begin
    // Test sugli Attachments.
    Assert.AreNotEqual(0, aArticle.Attachments.RecordCount, sLineBreak + 'Attachments(' + aArticleID.ToString
      + ').RecordCount = 0');

    aArticle.Attachments.First;
    while not aArticle.Attachments.Eof do
    begin
      Assert.AreNotEqual(0, aArticle.Attachments.FileId.AsInteger, sLineBreak + 'Attachments(' +
        aArticleID.ToString + ').FileId = 0');
      aArticle.Attachments.Next;
    end;
    Assert.AreNotEqual(TsWord, LCount, 'LCount = 0, Record = ' + aArticleID.ToString);
    aImageID := aArticle.MainImageId.AsLargeInt;
    aTest := 0;
    Assert.AreNotEqual(aTest, aImageID, 'aImageID = 0');
    //
    Assert.AreNotEqual('', aArticle.Article.AsString);

    Assert.AreNotEqual('', aArticle.MainImageUrl, 'aArticle.MainImageUrl is null');
    // Assert.
    Assert.AreEqual('?page=image&file=' + aImageID.ToString + '.jpg', aArticle.MainImageUrl);
    // Final Test
    Assert.AreEqual('?page=image&file=' + aImageID.ToString + '.jpg', aArticle.ImageUrl.AsString);
    // Test bArticleCreate
    bArticle := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecord('article');
    // Test Json Upload
    bArticle.AsJsonObject := aArticle.AsJsonObject;
    // b equals a?
    Assert.AreEqual(bArticle.Article_id.AsInteger, aArticle.Article_id.AsInteger);
    Assert.AreEqual(bArticle.Attachments.RecordCount, aArticle.Attachments.RecordCount);
    vTest := bArticle.ContentEquals(aArticle);
    Assert.IsTrue(vTest, sLineBreak + 'bArticle not Equals(aArticle): ' + sLineBreak + bArticle.LastMessage);

  end;

end;

procedure Cms.TestRestArguments;
begin

end;

procedure Cms.TestRestArticle(const aArticleID, aExpected: Int64);
var
  LParams: IJanuaParams;
  LArticle, aArticle: IArticle;
  LResult: IJanuaFuncResult;
  // da Test Article
  aStorage: udmPgCmsStorage.TdmPgCmsStorage;
  LCount: Word;
  // vTest boolean test for Equals
  vTest: Boolean;
begin
  aStorage := udmPgCmsStorage.TdmPgCmsStorage.Create(nil);
  try
    aArticle := aStorage.GetArticle(aArticleID, LCount);
  finally
    aStorage.Free;
    aStorage := nil;
  end;

  Assert.IsNotNull(aArticle, 'aArticle from GetArticle(aID is null');
  Assert.AreEqual(aExpected, aArticle.Article_id.AsLargeInt);

  // per creare i parametri uso la funzione del Server Cms
  LParams := TJanuaParams.Create;
  LParams.AddParam('article_id', TJanuaFieldType.jptLargeInt, TValue(aArticleID));
  LResult := TServerHelper.OpenServerFunction('cms', 'article', LParams);

  // Check LResult Fasle
  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  LArticle := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecord('article');
  LArticle.Assign(LResult.RecResult.Records[0]);
  // Verifico che bArticle sia uguale ad aArticle
  vTest := LArticle.ContentEquals(aArticle);
  Assert.IsTrue(vTest, LArticle.LastMessage);

  if aExpected > 0 then
  begin
    // Test sugli Attachments.
    Assert.AreNotEqual(0, LArticle.Attachments.RecordCount, sLineBreak + 'Attachments(' + aArticleID.ToString
      + ').RecordCount = 0');

    LArticle.Attachments.First;
    while not LArticle.Attachments.Eof do
    begin
      Assert.AreNotEqual(0, LArticle.Attachments.FileId.AsInteger, sLineBreak + 'Attachments(' +
        aArticleID.ToString + ').FileId = 0');
      LArticle.Attachments.Next;
    end;
  end;

end;

procedure Cms.TestRestWarnings;
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  t1: Integer;
  ar, br: IArticles;
  aParams, tParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  aHttpParams: TJanuaHttpParams;
  tmp, tmpjson: string;
  aConst: Word;
  TsWord: Word;
begin
  aStorage := TJanuaPgCmsStorage.Create;
  Assert.IsNotNull(aStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(aStorage, nil);
  Assert.IsNotNull(aServer);
  // Primo Test esegue apertura Warings Articles e verifica che la query sia corretta.
  ar := aServer.GetWarnings(aConst);
  TsWord := 0;
  Assert.IsNotNull(ar);
  Assert.AreNotEqual(TsWord, aConst, 'aConst = 0');
  t1 := ar.RecordCount;
  Assert.AreNotEqual(0, t1, sLineBreak + 'aServer.GetWarnings');
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := 0;
  // Testo la f() sul server passandole i parametri
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test (1) ');
  Assert.IsTrue(aParams.Items.ContainsKey('argument_id'), 'Arguments do not contain argument_id');

  LResult := aServer.RestGetWarings(aParams);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.ContentEquals(ar), sLineBreak + 'br not Equals(ar');

  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  br := nil;
  LResult := nil;
  aParams := nil;

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := 0;
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test(2) ');

  aHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  aHttpParams.Add(TJanuaHttpParam.Create('function', 'warnings'));
  aHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
  tmpjson := aParams.AsJsonObject.ToJSON;
  tParams := TJanuaParams.Create(Janua.Core.Json.JsonParse(tmpjson));
  Assert.IsTrue(tParams.ContentEquals(aParams), 'tParams not Equals(aParams)');
  LResult := TServerHelper.OpenServerFunction('cms', 'warnings', tParams);

  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  Assert.AreNotEqual(0, LResult.RecResult.RecordSetCount(False), 'LResult.RecResult 0 RecordSet');
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.ContentEquals(ar), sLineBreak + 'WebBroker br not Equals(ar');

end;

initialization

TDUnitX.RegisterTestFixture(Cms);

end.
