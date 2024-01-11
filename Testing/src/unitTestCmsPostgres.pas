unit unitTestCmsPostgres;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  CmsCloud = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestArticles;
    // Test with TestCase Attribute to supply parameters.
  end;

implementation

uses
  Janua.Core.Classes, Janua.Core.Types, udmPgCmsStorage, Janua.VCL.Cloud.Files, Janua.VCL.Cloud.Images,
  VCL.ExtCtrls, JOrm.Cms.Articles.Intf, JOrm.Cms.Articles.Impl, System.Types,
  System.SysUtils;

procedure CmsCloud.Setup;
begin
  JanuaApplicationGlobalProfile.JanuaServerConf.Port := 5432;
  JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName := 'lnd';
  JanuaApplicationGlobalProfile.JanuaServerConf.Password := '3rg0m3rc4t0r';
  JanuaApplicationGlobalProfile.JanuaServerConf.Direct := True;
  JanuaApplicationGlobalProfile.JanuaServerConf.Address := 'pg.januaservers.com';
  JanuaApplicationGlobalProfile.JanuaServerConf.Username := 'ergo';
  JanuaApplicationGlobalProfile.JanuaServerConf.Schema := 'public';
  JanuaApplicationGlobalProfile.JanuaServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  JanuaApplicationGlobalProfile.DBUserID := 13;
  JanuaApplicationGlobalProfile.DBSchemaID := 1;
  JanuaApplicationGlobalProfile.Language := TJanuaLanguage.jlaItalian;
end;

procedure CmsCloud.TearDown;
begin
end;

procedure CmsCloud.TestArticles;
var
  a: TdmPgCmsStorage;
  // Connect to File Manager
  aTestFile: TJanuaVCLFilesManager;
  aTestImage: TJanuaVCLImagesManager;
  aArticle: IArticle;
  aImage: TImage;
  id, oldid: Int64;
  guid, oldguid: TGUID;
begin
  a := TdmPgCmsStorage.Create(nil);
  aTestFile := TJanuaVCLFilesManager.Create(nil);
  aTestImage := TJanuaVCLImagesManager.Create(nil);
  aImage := TImage.Create(nil);
  try
    Assert.IsFalse(Assigned(aImage.Picture.Graphic), 'aImage.Picture  not Empty');
    aTestImage.DataSource.DataSet := a.qryArgumentsArticles;
    Assert.IsTrue(Assigned(aTestImage.ImagesList), 'aTestImage.FileList is nil');
    Assert.IsFalse(Assigned(aImage.Picture.Graphic), 'aImage.Picture not Empty');
    aTestImage.ImageIDField := a.qryArgumentsArticlesmain_image_id;
    aTestImage.Image := aImage;
    a.OpenMainArguments;
    Assert.IsTrue(a.main_arguments.RecordCount >= 0, 'main arguments no records found');
    a.main_arguments.First;
    Assert.IsTrue(a.arguments.RecordCount >= 0, 'arguments no records found');
    a.OpenArgumentsArticles;
    Assert.IsTrue(a.qryArgumentsArticles.RecordCount >= 0, 'arguments no records found');
    Assert.IsTrue(Assigned(aImage.Picture.Graphic), 'aImage.Picture.Empty');
    Assert.IsTrue(Assigned(aTestImage.SelectedImage), 'SelectedImage not set');
    Assert.IsTrue(Assigned(aTestImage.ImagesList.SelectedImage), 'FileList.SelectedImage not set');
    Assert.AreEqual(a.qryArgumentsArticlesmain_image_id.AsLargeInt, aTestImage.SelectedImage.id);
    oldid := aTestImage.SelectedImage.id;
    // ***** Creo un nuovo Articolo **************************************************************
    aArticle := TArticle.Create('football.article');
    aArticle.NewRecord;
    Assert.AreEqual(0, aArticle.Article_id.AsInteger);
    Assert.AreNotEqual(GUID_NULL, aArticle.guid, 'GUID OF NEW RECORD IS NULL');
    aArticle.Title.AsString := 'Nuovo Articolo di Test: ' + GuidToString(aArticle.guid);
    aArticle.Abstract.AsString := 'Abstract nuovo Articolo ' + aArticle.Title.AsString;
    aArticle.Text.AsString := '<html><body>Ciao Mondo</body></html>';
    aArticle.Datetime.AsDateTime := Now();
    // Registro l'articolo sul Database e lo aggiorno a Schermo:
    aTestImage.OpenFile('c:\januaproject\bin\iconafarma.jpg');
    Assert.IsNotNull(aTestImage.SelectedImage, 'aTestFile.SelectedImage is nil');
    Assert.AreEqual('iconafarma.jpg', aTestImage.SelectedImage.FileName);
    Assert.AreNotEqual(oldid, aTestImage.SelectedImage.id);
    id := -1; // Created But not Set
    Assert.AreEqual(id, aTestImage.SelectedImage.id, 'Expected Image ID -1 But: ' +
      aTestImage.SelectedImage.id.ToString);
    id := aTestImage.SaveImageToStorage;
    Assert.AreEqual(id, aTestImage.SelectedImage.id);
    Assert.AreNotEqual(id, oldid);
    Assert.IsTrue(aTestImage.LoadImageByID(id), 'Errore LoadImageByID = ' + id.ToString);
    aArticle.MainImageId.AsLargeInt := id;
    id := a.StoreArgumentArticle(aArticle);
    Assert.AreEqual(id, aArticle.Article_id.AsLargeInt, ' id = StoreArgumentArticle <> aArticle.Article_id');
    // Ultimo Test .... provo ad inserire un allegato e ad aggiornare l'articolo sul set...
    oldguid := aTestFile.SelectedFile.guid;
    oldid := aTestFile.SelectedFile.id;
    id := -1;
    Assert.AreEqual(id, oldid, 'id <> -1');
    aTestFile.OpenFile('c:\januaproject\bin\Ricevuta.pdf');
    Assert.AreEqual(aTestFile.SelectedFile.Ext, '.pdf');
    Assert.AreEqual(aTestFile.SelectedFile.FileName, 'Ricevuta.pdf');
    guid := aTestFile.SelectedFile.guid;
    Assert.AreNotEqual(oldguid, guid);
    // prima salvo il test Fiel su Storage
    id :=  aTestFile.SaveFileToStorage;
    // Veriifico che id  sia cambiato ed infatti ho fatto un semplice insert che passa da -1 a n
    Assert.AreNotEqual(id, oldid);
    // Imposto quindi il mio articolo ad n (id)
    aArticle.MainAttachId.AsLargeInt := id;
    // memorizzo l'id dell'articolo che sto aggiornando (dopo update non deve cambiare of course ...)
    oldid := aArticle.Article_id.AsLargeInt;
    // Registro l'articolo su db
    id := a.StoreArgumentArticle(aArticle);
    // Verifico che id di articolo , id di riotrno da procedura di DB e precedente articolo id siano tutti uguali ...
    Assert.AreEqual(id, aArticle.Article_id.AsLargeInt);
    Assert.AreEqual(id, oldid);
  finally
    a.Free;
    aImage.Free;
    aTestFile.Free;
    aTestImage.Free;
  end;
end;

initialization

TDUnitX.RegisterTestFixture(CmsCloud);

end.
