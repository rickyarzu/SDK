unit Janua.Cms.Test;

interface

{$I JANUACORE.INC}

uses
  DUnitX.TestFramework, FireDAC.Comp.Client,
  Janua.Cms.Server.Intf, Janua.Orm.Intf, Janua.Orm.Dataset.Intf, JOrm.Cms.MainArguments.Intf,
  udmVirtualCmsServer;

type

  [TestFixture]
  TCms = class(TObject)
  private
    aLocal, aRemote: IJanuaRecordSetStorage;
    dsLocal, dsRemote: IJanuaCmsStorage;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure MainArguments;
    [Test]
    procedure DatasetMainArguments;
    [Test]
    procedure SaveToDataStore;
    [Test]
    procedure TestCmsServer;
    [Test]
    procedure TestCmsArticles;
    [Test]
    procedure TestCmsArticle;
    [Test]
    procedure ArticleEncoding;
    [Test]
    procedure RestArticles;
    [Test]
    procedure TestRestArticle;
    [Test]
    procedure TestRestArguments;
    [Test]
    procedure TestRestWarnings;
    [Test]
    procedure TestRestNews;
  end;

implementation

uses
  System.SysUtils, System.Classes, System.Json, uWebBrokerTest, System.Net.HttpClient,
  // Janua Application
  Janua.Application.Framework, Janua.Uni.Virtual, Janua.Orm.Types,
  JOrm.Cms.MainArguments.Impl, Janua.Orm.Dataset.Impl, Janua.Core.Functions, Janua.Core.Json,
  // Server
  Janua.Virtual.Cms, Janua.Cms.Server.Impl, Janua.Orm.Impl, Janua.Server.Intf, Janua.Server.Impl,
  // Articles
  JOrm.Cms.Articles.Intf, Janua.Html.Bootstrap4.Builder, JOrm.Cms.Articles.Impl,
  // http
  Janua.Core.Sockets, Janua.Core.Types, Janua.Http.Intf, Janua.Http.Impl, Janua.Http.Types,
  // Html
  Janua.Html.Intf, Janua.Html.Metro5.Impl, Janua.Html.Metro5.Types, Janua.Html.Impl, Janua.Html.Metro5.Intf,
  Janua.Metro5.Builder, Janua.Html.Builder.Intf, Janua.Html.Builder.Impl;

procedure TCms.SaveToDataStore;
var
  aLocal, aRemote: IJanuaRecordSetStorage;
  Test: IJanuaRecordSet;
  aServer: IJanuaServerCms;
  dsLocal, dsRemote: IJanuaDBCmsStorage;
begin
  dsLocal := TJanuaVirtualCmsStorage.Create;
  dsRemote := TJanuaVirtualCmsStorage.Create;
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  dsLocal.CreateDataset;
  dsRemote.CreateDataset;
  aServer := TJanuaServerCms.Create(dsLocal, dsRemote);
  dsLocal.CreateDataset;
  Assert.AreEqual(6, dsLocal.jdsMainArguments.Dataset.RecordCount, 'vtMainArguments Record Count');
  aLocal := dsLocal.ArgumentsStorage;
  // TJanuaCmsArgumentsDSStorage.Create(dsLocal);
  aRemote := dsRemote.ArgumentsStorage;
  // TJanuaCmsArgumentsDSStorage.Create(dsRemote);
  Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments', aLocal, aRemote);
  Assert.AreEqual(1, Test.CurrentRecord.RecordSetCount);
  Test.LoadFromRemoteStorage;
  Assert.AreEqual(6, Test.RecordCount);
  Test.Clear;
  Assert.AreEqual(Test.RecordCount, 0);
  Test.LoadFromLocalStorage;
  Assert.AreEqual(Test.RecordCount, 6);

end;

procedure TCms.Setup;
begin
  TJanuaApplication.RestServer := 'http://localhost:8099';
{$IFDEF WEBBROKER}
  uWebBrokerTest.Setup
{$ENDIF}
end;

procedure TCms.TearDown;
begin
{$IFDEF WEBBROKER}
  // uWebBrokerTest.TearDown
{$ENDIF}
end;

procedure TCms.ArticleEncoding;
var
  aArticle: IArticle;
  Test: TDAteTime;
  aFileName, aDestName: string;
  aObject, aMeta: TJsonObject;
  aTestRecord: IJanuaRecord;
  aFileStream: TStream;
begin
  aFileName := sGitHubHome + '\SDK\Testing\res\files\testblob.rtf';
  aArticle := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecord('article');
  Test := 0.0;
  aArticle.Article_id.AsLargeInt := 1;
  aArticle.Title.AsString := 'Titolo';
  aArticle.Abstract.AsString := 'Sottotitolo';
  aArticle.Datetime.AsDateTime := Now();
  aFileStream := TFileStream.Create(aFileName, fmOpenRead);
  try
    aArticle.Article.LoadFromStream(aFileStream);
  finally
    aFileStream.Free;
  end;

  Assert.AreNotEqual(0, aArticle.Article_id.AsInteger, 'Article_id = 0');
  Assert.AreNotEqual(Test, aArticle.Datetime.AsDateTime, 'Datetime = 0');

  aMeta := aArticle.AsMetadata;
  aObject := aArticle.AsJsonObject;

  aTestRecord := TJanuaRecord.Create(aMeta);
  aTestRecord.AsJsonObject := aObject;
  Assert.IsTrue(aTestRecord.ContentEquals(aArticle));

  aDestName := sGitHubHome + '\SDK\Testing\res\images\testblobout.rtf';
  if FileExists(aDestName) then
    DeleteFile(aDestName);

  aFileStream := TFileStream.Create(aDestName, fmCreate);
  try
    aArticle.Article.SaveToStream(aFileStream);
  finally
    aFileStream.Free;
  end;

end;

procedure TCms.DatasetMainArguments;
var
  aServer: IJanuaServerCms;
  dsLocal, dsRemote: IJanuaDBCmsStorage;
  Test: IJanuaRecordSet;
  Detail: IJanuaRecordSet;
  // VtMaster, VtDetail: TFDMemTable;
  VtMasterDBDataset, VtDetailDBDataset: IJanuaVirtualDBDataset;
  aMasterSerialization, aDetailSerialization: IJanuaDatasetSerialization;
  // aGUID: TGUID;
  { TOrmDatasetFactory = class
    function CreateDatasetSerialization(aRecordSet: IJanuaRecordSet): IJanuaDatasetSerialization; }
begin
  dsLocal := TJanuaVirtualCmsStorage.Create;
  dsRemote := TJanuaVirtualCmsStorage.Create;
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  dsLocal.CreateDataset;
  dsRemote.CreateDataset;
  aServer := TJanuaServerCms.Create(dsLocal, dsRemote);

  Test := TMainArgumentsFactory.CreateRecordset('main_arguments', 'main_arguments');
  Assert.AreEqual(Test.CurrentRecord.RecordSetCount, 1);
  Test.StoreDataset := dsLocal.jdsMainArguments;
  Assert.AreEqual(6, dsLocal.jdsMainArguments.RecordCount, 'dsLocal.jdsMainArguments <> 6 - main_arguments');
  Test.CurrentRecord.RecordSets[0].StoreDataset := dsLocal.jdsArguments;
  Test.LoadFromDataset;
  Assert.AreEqual(6, Test.RecordCount, 'Test.RecordCount <> 6 - main_arguments');

  try
    aMasterSerialization := TOrmDatasetFactory.CreateDatasetSerialization(Test);
    aMasterSerialization.Activate;
    if Test.CurrentRecord.RecordSetCount > 0 then
      aDetailSerialization := TOrmDatasetFactory.CreateDatasetSerialization(Test.CurrentRecord.RecordSets[0]);
    aDetailSerialization.Activate;
    // The facottory Creates a Dataset based on the Test
    // VtMasterDBDataset := TOrmDatasetFactory.CreateVirtualDataset(Test);
    // TJanuaVtMemDataset.Create(TFDMemTable.Create(nil), [TJanuaEntity.TestMaster]);
    // aMasterSerialization.Dataset :=  VtMasterDBDataset;
    // Assert.AreSame(VtMasterDBDataset, aMasterSerialization.Dataset);
    // Verifico che i campi siano i campi + 1 (uno è il GUID che è impostato come proprietà e non come campo)
    VtMasterDBDataset := aMasterSerialization.Dataset;
    VtMasterDBDataset.Name := 'vtMaster';

    Assert.AreEqual(VtMasterDBDataset.FieldCount, Test.CurrentRecord.FieldCount,
      'VtMaster.FieldCount, Test.CurrentRecord.FieldCount');
    Assert.AreEqual(6, Test.RecordCount, 'Test.RecordCount');
    aMasterSerialization.FetchRecordSet;
    Assert.AreEqual(6, VtMasterDBDataset.RecordCount, 'VtMaster.RecordCount');

    VtMasterDBDataset.First;
    Assert.AreEqual(VtMasterDBDataset.GUID, Test.CurrentRecord.GUID);
    //  .FieldByName('jguid').AsWideString => .GuidField.AsString  => .GuidString => .GUID

    VtDetailDBDataset := aDetailSerialization.Dataset;
    // TJanuaVtMemDataset.Create(TFDMemTable.Create(nil), [TJanuaEntity.TestMaster]);
    try
      try
        VtDetailDBDataset.Name := 'VtDetail';
        aDetailSerialization.Master := aMasterSerialization;
        aDetailSerialization.Dataset := VtDetailDBDataset;
        aDetailSerialization.RecordSet := aDetailSerialization.RecordSet;
        Assert.AreEqual(VtDetailDBDataset.FieldCount, aDetailSerialization.RecordSet.CurrentRecord.FieldCount,
          sLineBreak + 'VtDetail.FieldCount');
        if VtDetailDBDataset.RecordCount = 0 then
          aDetailSerialization.FetchRecordSet;

        Assert.AreNotEqual(0, VtDetailDBDataset.RecordCount, 'VtDetail.RecordCount = 0');
        Assert.AreEqual(VtDetailDBDataset.RecordCount, aDetailSerialization.Dataset.RecordCount,
          'VtDetail vs Dataset Record Count');
        Assert.AreEqual(aDetailSerialization.RecordSet.RecordCount, VtDetailDBDataset.RecordCount,
          'VtDetail.RecordCount');

        VtMasterDBDataset.Next;
        // Assert.AreEqual(4, aDetailSerialization.RecordSet.RecordCount, 'aDatasetDetail.RecordCount <> 0');
        Assert.AreEqual(aDetailSerialization.RecordSet.RecordCount, VtDetailDBDataset.RecordCount,
          'VtDetail.RecordCount');
        // primo Test  Aggiungo un Detail Record al Detail Record Set
        Detail := Test.CurrentRecord.RecordSets[0];
        // ----------------- test apppend -----------------------------------------------------------------------
        Detail.Append;
        Assert.AreEqual(Test.CurrentRecord.FieldByName('main_argument_id').AsInteger,
          Detail.CurrentRecord.FieldByName('main_argument_id').AsInteger, 'Append1 Detail Master ID Not Set');
        Assert.AreEqual(aDetailSerialization.RecordSet.RecordCount, VtDetailDBDataset.RecordCount + 1,
          'Append1 VtDetail.RecordCount');
        // ----------------- test delete -----------------------------------------------------------------------
        Detail.Delete;
        Detail.Last;
        VtDetailDBDataset.Last;
        Assert.AreEqual(aDetailSerialization.RecordSet.RecordCount, VtDetailDBDataset.RecordCount,
          'Delete1 VtDetail.RecordCount');
        Assert.AreEqual(Test.CurrentRecord.FieldByName('main_argument_id').AsInteger,
          Detail.CurrentRecord.FieldByName('main_argument_id').AsInteger, 'Delete Detail Master ID Not Set');

        // ----------------- test Vtapppend-----------------------------------------------------------------------
        VtDetailDBDataset.Append;
        Assert.AreEqual(VtMasterDBDataset.FieldByName('main_argument_id').AsInteger,
          VtDetailDBDataset.FieldByName('main_argument_id').AsInteger, 'VtAppend vtDetail Master ID Not Set');
        Assert.AreEqual(aDetailSerialization.RecordSet.RecordCount, VtDetailDBDataset.RecordCount + 1,
          'VtAppend VtDetail.RecordCount');
      except
        on e: exception do
          raise exception.Create(sLineBreak + 'VtDetail: ' + sLineBreak + e.Message);
      end;
    finally
      VtDetailDBDataset := nil;
    end;
  finally
    VtMasterDBDataset := nil;
  end;
end;

procedure TCms.MainArguments;
var
  t1: IMainArguments;
  t2: IJanuaRecordSet;
  aServer: IJanuaServerCms;
  dsLocal, dsRemote: IJanuaDBCmsStorage;
begin
  dsLocal := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(dsLocal, 'dsLocal is null');

  dsRemote := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(dsRemote, 'dsRemote is null');

  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  dsLocal.CreateDataset;
  dsRemote.CreateDataset;
  aServer := TJanuaServerCms.Create(dsLocal, dsRemote);

  t1 := aServer.MainArguments;
  aServer.OpenMainArguments;

  Assert.AreEqual(6, t1.RecordCount, 't1.RecordCount');
  Assert.AreEqual(1, t1.CurrentRecord.RecordSetCount, 't1.RecordSetCount');

  t2 := t1.CurrentRecord.RecordSets[0];
  Assert.IsNotNull(t2, 't2 is null');

  Assert.IsNotNull(dsLocal.jdsMainArguments.Dataset, 'DM.jdsMainArguments.Dataset is null');

  t1.LoadFromLocalStorage;
  Assert.AreEqual(6, t1.RecordCount, 't1.RecordCount');

  {
    Assert.AreEqual(6, Test.RecordCount, 'Test.RecordCount');
    Test.Clear;
    Test.StoreDataset := DM.jdsMainArguments;
    Test.CurrentRecord.RecordSets[0].StoreDataset := DM.jdsArguments;
    Assert.AreEqual(Test.CurrentRecord.RecordSetCount, 1);
    Assert.AreEqual(6, Test.RecordCount, 'Test.RecordCount');
    Test.Next;
    Assert.AreEqual(0, t2.RecordCount, 'Test.RecordCount');
    t2.Append;
    Assert.AreEqual(t1.Main_argument_id.AsInteger, t2.CurrentRecord.FieldByName('main_argument_id').AsInteger,
    'Test.Main_argument_id');
  }
end;

procedure TCms.RestArticles;
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  t1: integer;
  ar, br: IArticles;
  aParams, tParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  aHttpParams: TJanuaHttpParams;
  tmp, tmpjson: string;
begin
  aStorage := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(aStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(aStorage, nil);
  Assert.IsNotNull(aServer);
  aServer.OpenArgumentArticles(1);
  ar := aServer.Articles;
  Assert.IsNotNull(ar);
  t1 := ar.RecordCount;
  Assert.AreNotEqual(0, t1);
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := 10;
  // Testo la f() sul server passandole i parametri
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test (1) ');

  Assert.IsTrue(aParams.Items.ContainsKey('argument_id'), 'Arguments do not contain argument_id');

  LResult := aServer.RestGetArgumentArticles(aParams);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.ContentEquals(ar), 'br not ContentEquals(ar');

  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  br := nil;
  LResult := nil;
  aParams := nil;

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticlesParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['argument_id'].AsLargeInt := 10;
  Assert.AreEqual(4, aParams.Items.Count, 'Item Count <> 4: Test(2) ');

{$IFNDEF JANUAUNIDAC}
  aHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  aHttpParams.Add(TJanuaHttpParam.Create('function', 'argarticles'));
  aHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
  tmpjson := aParams.AsJsonObject.ToJSON;

  tParams := TJanuaParams.Create(Janua.Core.Json.JsonParse(tmpjson));

  Assert.IsTrue(tParams.ContentEquals(aParams), 'tParams not ContentEquals(aParams)');

  aHttpParams.Add(TJanuaHttpParam.Create('params', tmpjson));

  tmp := TJanuaHttp.OpenUrlAsString( { Url } TJanuaApplication.RestServer,
    { HttpParams } aHttpParams,
    { MimeType } TJanuaMimeType.jmtApplicationJson);

  Assert.AreNotEqual('', tmp, ' Url: ' + TJanuaApplication.RestServer + sl + aHttpParams.AsString);

  // Testo la f() sul server passandole i parametri
  LResult := TJanuaFuncResult.Create(tmp);
  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  br := TArticles.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(br.ContentEquals(ar), 'br not ContentEquals(ar');
{$ENDIF JANUAUNIDAC}
end;

procedure TCms.TestCmsArticle;
var
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  aArticle, bArticle: IArticle;
  Test: TDAteTime;
  LCount: Word;
  aObject: TJsonObject;
begin
  aArticle := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecord('article');
  aArticle.Article_id.AsInteger := 1;
  aArticle.Title.AsString := 'Titolo Articolo';
  aArticle.Abstract.AsString := 'Abstract ARticolo';
  aArticle.Author_id.AsInteger := 1;
  aArticle.Main_argument_id.AsInteger := 2;
  aArticle.Datetime.AsDateTime := Now();
  aArticle.MainImageId.AsInteger := 3;
  aArticle.MainAttachId.AsInteger := 5;
  aArticle.Attachments.Append;
  aArticle.Attachments.FileId.AsInteger := 101;
  aArticle.Attachments.Description.AsString := 'Test Descrizione';
  aArticle.Attachments.ArticleId.AsInteger := 1;
  aArticle.Attachments.Post;

  bArticle := TArticle.Create(aArticle);
  Assert.IsTrue(bArticle.ContentEquals(aArticle), 'bArticle <> aArticle');
  bArticle := nil;

  aObject := aArticle.AsJsonObject;
  bArticle := JOrm.Cms.Articles.Impl.TArticleFactory.CreateRecord('article');
  bArticle.AsJsonObject := aObject;
  Assert.IsTrue(bArticle.ContentEquals(aArticle), 'bArticle.AsJson <> aArticle.AsJson: ' + sLineBreak +
    bArticle.LastMessage);
  Assert.AreNotEqual(0, bArticle.Attachments.FileId.AsInteger);
  Assert.AreEqual(aArticle.Attachments.FileId.AsInteger, bArticle.Attachments.FileId.AsInteger);

  aStorage := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(aStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(aStorage, nil);
  Assert.IsNotNull(aServer);
  aArticle := aServer.GetArticle(1, LCount);
  Assert.AreNotEqual(0, aArticle.Article_id.AsInteger, 'Article_id = 0');
  Test := 0.0;
  Assert.AreNotEqual(Test, aArticle.Datetime.AsDateTime, 'Datetime = 0');
end;

procedure TCms.TestCmsArticles;
var
  // DM: udmVirtualCmsServer.TdmVirtualCmsServer;
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  Test: IJanuaRecordSet;
  a: Janua.Html.Builder.Intf.IHtmlBuilder;
  m: IHtmlArticlesBuilder;
  o: IJanuaHtmlObject;
  s: string;
  t1: integer;
  t: TArticlesSettings;
  ar: IArticles;
  LObj: TJsonObject;
begin
  aStorage := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(aStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(aStorage, nil);
  Assert.IsNotNull(aServer);
  aServer.OpenArgumentArticles(1);
  ar := aServer.Articles;
  Assert.IsNotNull(ar);
  t1 := ar.RecordCount;
  Assert.AreNotEqual(0, t1);
  // Assert.IsTrue(aServer.MainArguments.RecordCount > 0, 'aServer.MainArguments has 0 Records');

  // ma := Test as IMainArguments;
  // ar := ma.MainArgument.Arguments;
  LObj := ar.AsJsonObject;
  s := LObj.ToJSON;
  // self.AdvMemoJson.Lines.Add(s);
  // occorre un campo anche 'calcolato' per il sub-url da decifrare.
  // il campo 'icona' diventa ora fondamentale almeno per gli argomenti
  // tanto quanto fondamentale una propr
  t := TArticlesSettings.Create('Titolo', 'Descrizione');
  t.TitleField := ar.Title;
  t.DescriptionField := ar.Abstract;
  t.UrlField := ar.ArticleUrl;
  t.ImageField := ar.ImageUrl;
  t.DateField := ar.Datetime;
  t.AuthorField := ar.Author;

  a := TMetro5BuilderFactory.GetArticlesPortlet(t, ar);
  o := a.GetElement;

  s := o.AsHtml;
  // self.AdvMemHtml.Lines.Text := s;

end;

procedure TCms.TestCmsServer;
var
  tmp: TGUID;
  aJson: string;
  aServer: IJanuaServerCms;
  dsLocal, dsRemote: IJanuaCmsStorage;
begin
  dsLocal := TJanuaVirtualCmsStorage.Create;
  dsRemote := TJanuaVirtualCmsStorage.Create;
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  dsLocal.CreateDataset;
  dsRemote.CreateDataset;
  aServer := TJanuaServerCms.Create(dsLocal, dsRemote);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(dsLocal, dsRemote);
  aServer.LocalArgumentsStorage.LoadData;
  Assert.AreEqual(6, aServer.LocalArgumentsStorage.RecordSet.RecordCount);
  aServer.LocalArgumentsStorage.RecordSet.First;

  aServer.RemoteArgumentsStorage.LoadData;
  Assert.AreEqual(6, aServer.RemoteArgumentsStorage.RecordSet.RecordCount);
  aServer.RemoteArgumentsStorage.RecordSet.First;

  aServer.OpenMainArguments;
  Assert.AreEqual(6, aServer.MainArguments.RecordCount);

  aServer.MainArguments.First;
  Assert.AreEqual(4, aServer.MainArguments.Arguments.RecordCount);
  // lo.AppendLine('Test.Append');
  aServer.MainArguments.Append;
  aServer.MainArguments.Main_argument_id.AsInteger := 10;
  aServer.MainArguments.Main_argument_des.AsString := 'Test Main Argument';
  aServer.MainArguments.Pos.Value := 10;
  // lo.AppendLine('Test.Post');
  aServer.MainArguments.Post;
  // lo.AppendLine('Test.Arguments.Append');
  aServer.MainArguments.Arguments.Append;
  aServer.MainArguments.Arguments.Argument_id.AsInteger := 55;
  aServer.MainArguments.Arguments.Code.AsString := 'TE';
  aServer.MainArguments.Arguments.Pos.AsInteger := 1;
  aServer.MainArguments.Arguments.Argument_des.Value := 'Test Argument';
  // lo.AppendLine('Test.Post');
  aServer.MainArguments.Post;
  Assert.AreEqual(7, aServer.MainArguments.RecordCount);
  Assert.AreEqual(5, aServer.MainArguments.Arguments.RecordCount);
  // lo.AppendLine('Test.ApplyLocalUpdates');
  aServer.MainArguments.ApplyLocalUpdates;
  Assert.AreEqual(7, aServer.MainArguments.RecordCount);
  Assert.AreEqual(5, aServer.MainArguments.Arguments.RecordCount);
  aServer.MainArguments.Last;
  tmp := aServer.MainArguments.CurrentRecord.GUID;
  aJson := sLineBreak + aServer.MainArguments.AsJsonObject.ToString;
end;

procedure TCms.TestRestArguments;
var
  LStorage: IJanuaCmsStorage;
  LServer: IJanuaServerCms;
  LArguments1, LArguments2: IMainArguments;
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  Test: TDAteTime;
  aHttpParams: TJanuaHttpParams;
  tmp: string;
begin
  { per iniyiare il test carico in memoria l'articolo 1 direttamente dal server }
  LStorage := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(LStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  LServer := TJanuaServerCms.Create(LStorage, nil);
  Assert.IsNotNull(LServer);
  LServer.OpenMainArguments;
  LArguments1 := LServer.MainArguments;
  Assert.AreNotEqual(0, LArguments1.Main_argument_id.AsInteger, 'Main_argument_id = 0');
  Test := 0.0;
  Assert.AreNotEqual(0, LArguments1.RecordCount, 'RecordCount = 0');

  { verificato che l'upload è corretto carico il secondo articolo }

  // per creare i parametri uso la funzione del Server Cms
  LParams := LServer.CreateArgumentParams;
  // LParams ha un unico parametro 'void' eventualmente potrebbe avere un parametro 'result' numerico output
  LResult := LServer.RestGetArguments(LParams);
  // LArguments2 viene creato assegnandogli il primo Record di Rec Result.
  LArguments2 := TMainArguments.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che LArguments2 sia uguale ad LArguments1
  Assert.IsTrue(LArguments2.ContentEquals(LArguments1));

  LArguments2 := nil;
  LResult := nil;

  { self.AddFunction('argarticles',  RestGetArgumentArticles);
    self.AddFunction('article', RestGetArticle);
    self.AddFunction('arguments', RestGetArguments);
    self.AddFunction('articleslist', RestGetArticlesList);
    self.AddFunction('articleslistpos', RestGetArticlesListPos); }
{$IFNDEF JANUAUNIDAC}
  aHttpParams.Clear;
  aHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  aHttpParams.Add(TJanuaHttpParam.Create('function', 'arguments'));
  aHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
  aHttpParams.Add(TJanuaHttpParam.Create('params', LParams.AsJsonObject.ToJSON));

  tmp := TJanuaHttp.OpenUrlAsString( { Url } TJanuaApplication.RestServer,
    { HttpParams } aHttpParams,
    { MimeType } jmtApplicationJson);

  Assert.AreNotEqual('', tmp, ' Url returned no result');

  // Testo la f() sul server passandole i parametri
  LResult := TJanuaFuncResult.Create(tmp);
  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  LArguments2 := TMainArguments.Create(LResult.RecResult.RecordSets[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(LArguments2.ContentEquals(LArguments1), 'LArguments1 not ContentEquals(LArguments2');
{$ENDIF JANUAUNIDAC}
end;

procedure TCms.TestRestArticle;
var
  aStorage: IJanuaCmsStorage;
  aServer: IJanuaServerCms;
  aArticle, bArticle: IArticle;
  aParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  Test: TDAteTime;
  LHTTPClient: THTTPClient;
  LResponse: IHTTPResponse;
  aHttpParams: TJanuaHttpParams;
  tmp: string;
  LCount, LTest: Word;

begin
  { per iniyiare il test carico in memoria l'articolo 1 direttamente dal server }
  aStorage := TJanuaVirtualCmsStorage.Create;
  Assert.IsNotNull(aStorage);
  // constructor TJanuaServerCms.Create(const aLocalStorage, aRemoteStorage: IJanuaCmsStorage);
  aServer := TJanuaServerCms.Create(aStorage, nil);
  Assert.IsNotNull(aServer);
  aArticle := aServer.GetArticle(1, LCount);
  LTest := 0;
  Assert.AreNotEqual(LTest, LCount);
  Assert.AreNotEqual(0, aArticle.Article_id.AsInteger, 'Article_id = 0');
  Test := 0.0;
  Assert.AreNotEqual(Test, aArticle.Datetime.AsDateTime, 'Datetime = 0');

  { verificato che l'upload è corretto carico il secondo articolo }

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticleParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['article_id'].AsLargeInt := 1;
  // Testo la f() sul server passandole i parametri
  LResult := aServer.RestGetArticle(aParams);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bArticle := TArticle.Create(LResult.RecResult.Records[0]);
  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bArticle.ContentEquals(aArticle), 'bArticle not ContentEquals(aArticle internal test ');

  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bArticle := nil;
  LResult := nil;
  aParams := nil;

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticleParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['article_id'].AsLargeInt := 37;
  // Testo la f() sul server passandole i parametri

{$IFNDEF JANUAUNIDAC}
  aHttpParams.Add(TJanuaHttpParam.Create('page', 'function'));
  aHttpParams.Add(TJanuaHttpParam.Create('function', 'article'));
  aHttpParams.Add(TJanuaHttpParam.Create('schema', 'cms'));
  aHttpParams.Add(TJanuaHttpParam.Create('params', aParams.AsJsonObject.ToJSON));

  tmp := TJanuaHttp.OpenUrlAsString( { Url } TJanuaApplication.RestServer,
    { HttpParams } aHttpParams,
    { MimeType } jmtApplicationJson);
  Assert.AreNotEqual('', tmp, ' Url returned no result');

  // Testo la f() sul server passandole i parametri
  LResult := TJanuaFuncResult.Create(tmp);
  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bArticle := TArticle.Create(LResult.RecResult.Records[0]);

  Assert.AreNotEqual(0, bArticle.Article_id.AsInteger);
  Assert.AreEqual(bArticle.Article_id.AsInteger, aArticle.Article_id.AsInteger, 'article id');
  Assert.AreEqual(bArticle.Argument_id.AsInteger, aArticle.Argument_id.AsInteger, 'argument id');
  Assert.AreEqual(bArticle.Title.AsString, aArticle.Title.AsString, 'title');

  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bArticle.ContentEquals(aArticle), 'bArticle not ContentEquals(aArticle http test');

  // annullo bArticle ma mi tengo attivi i Parametri (Params).
  bArticle := nil;
  LResult := nil;
  aParams := nil;

  // per creare i parametri uso la funzione del Server Cms
  aParams := aServer.CreateArticleParams;
  // imposto il parametro 'article_id' ad 1 come nel test precedente
  aParams.Items['article_id'].AsLargeInt := 37;
  // Testo la f() sul server passandole i parametri
  // Testo la f() sul server passandole i parametri
  LResult := TServerHelper.OpenServerFunction('cms', 'article', aParams);

  Assert.IsFalse(LResult.HasErrors, LResult.ErrorMessage);
  // bArticle viene creato assegnandogli il primo Record di Rec Result.
  bArticle := TArticle.Create(LResult.RecResult.Records[0]);

  Assert.AreNotEqual(0, bArticle.Article_id.AsInteger);
  Assert.AreEqual(bArticle.Article_id.AsInteger, aArticle.Article_id.AsInteger, 'article id');
  Assert.AreEqual(bArticle.Argument_id.AsInteger, aArticle.Argument_id.AsInteger, 'argument id');
  Assert.AreEqual(bArticle.Title.AsString, aArticle.Title.AsString, 'title');

  // Verifico che bArticle sia uguale ad aArticle
  Assert.IsTrue(bArticle.ContentEquals(aArticle), 'bArticle not ContentEquals(aArticle http test');

  bArticle := nil;

  TServerHelper.OpenServerFunctionAsync('cms', 'article', aParams,
    procedure(aResult: IJanuaFuncResult)
    var
      LArticle: IArticle;
    begin
      Assert.IsNotNull(aResult, 'TestAsyncRest aResult is nil');
      Assert.IsFalse(aResult.HasErrors, aResult.ErrorMessage);
      // LArticle viene creato assegnandogli il primo Record di Rec Result.
      LArticle := TArticle.Create(aResult.RecResult.Records[0]);
      Assert.AreNotEqual(0, LArticle.Article_id.AsInteger);
      Assert.AreEqual(LArticle.Article_id.AsInteger, aArticle.Article_id.AsInteger, 'article id');
      Assert.AreEqual(LArticle.Argument_id.AsInteger, aArticle.Argument_id.AsInteger, 'argument id');
      Assert.AreEqual(LArticle.Title.AsString, aArticle.Title.AsString, 'title');
      // Verifico che LArticle sia uguale ad aArticle
      Assert.IsTrue(LArticle.ContentEquals(aArticle), 'bArticle not ContentEquals(aArticle http test');
    end);
{$ENDIF JANUAUNIDAC}
end;

procedure TCms.TestRestNews;
begin

end;

procedure TCms.TestRestWarnings;
begin

end;

initialization

TDUnitX.RegisterTestFixture(TCms);

end.
