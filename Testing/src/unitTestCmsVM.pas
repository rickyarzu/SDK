unit unitTestCmsVM;

interface

uses
  DUnitX.TestFramework, Forms, Data.DB,
  AdvDateTimePicker, JvRadioGroup, AdvRichEditor, AdvGlowButton, VCL.Menus, VCL.ExtDlgs, VCL.Dialogs, VCL.StdCtrls,
  VCL.ExtCtrls,
  udmCMSViewModel;

type

  [TestFixture]
  TTestCmsVM = class(TObject)
  private const
    CMainAttach = sGitHubHome + '\SDK\Testing\res\files\1548437363cu4019.doc';
    CAttachFiles = sGitHubHome + '\SDK\Testing\res\Files\AllegatiCU34_19';
    CImageFile = sGitHubHome + 'SDK\Testing\res\Images\lnd_liguria.jpg';
  private
    FedVideoUrl: TEdit;
    FedTitle: TEdit;
    FAdvRichEditor: TAdvRichEditor;
    FlbGUID: TLabel;
    FlbArticle: TLabel;
    FedAbstract: TEdit;
    FbtnShowAttach: TAdvGlowButton;
    FbtnDeleteAttach: TAdvGlowButton;
    FMenu: TPopupMenu;
    FAltriAllegati: TMenuItem;
    FImageTest: TImage;
    FBtnPublish: TAdvGlowButton;
    FImageArticle: TImage;
    FedExpiryDate: TAdvDateTimePicker;
    FlkpPublishArticle: TJvRadioGroup;
    FedArticleDate: TAdvDateTimePicker;
  private
    function GetCmsViewModel: TdmCMSViewModel;
    procedure VCLSetup(aViewModel: TdmCMSViewModel);
  public
    procedure MainArgumentsChange(const aDataset: TDataset);
    procedure ArticleClear;
  public
    FForm: TForm;
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestCreateCmsVM;
    [Test]
    procedure NewArticle;
    [Test]
    procedure NewArticleVCL;
    [Test]
    procedure UploadPicture;
    [Test]
    procedure UploadPictureVCL;
    [Test]
    procedure SaveArticle;
    [Test]
    procedure SaveArticleVCL;
    [Test]
    procedure DeletePicture;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure TestOpenArguments;
    [Test]
    procedure UploadFile;
    [Test]
    procedure UploadAttach;
    [Test]
    procedure UploaAttachVCL;
    [Test]
    procedure UploadFiles;
    [Test]
    procedure UploadFilesVCL;
    [Test]
    procedure DatasetVCL;
  end;

implementation

uses Janua.Core.Classes, Janua.Core.Types, System.SysUtils, AsyncTask, Janua.VCL.Controls.Editors.Impl;

procedure TTestCmsVM.ArticleClear;
begin
  if Assigned(self.FAdvRichEditor) then
    FAdvRichEditor.Clear
end;

procedure TTestCmsVM.DatasetVCL;
var
  a: TdmCMSViewModel;
  LMain, LArg: integer;
  LArt: Int64;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  Assert.IsTrue(a.cdsMainArguments.Active);
  Assert.IsTrue(a.cdsArgumentsArticles.Active);
  Assert.IsTrue(a.cdsArguments.Active);
  a.cdsMainArguments.First;
  a.cdsArguments.First;
  LMain := a.cdsMainArgumentsmain_argument_id.AsInteger;
  LArg := a.cdsArgumentsargument_id.AsInteger;
  a.NewArticle;
  Assert.AreEqual(0, a.Article.Article_id.AsInteger);
  Assert.AreEqual(LMain, a.Article.Main_argument_id.AsInteger, 'main Argument not: ' + LMain.ToString);
  Assert.AreEqual(LArg, a.Article.Argument_id.AsInteger, 'Argument not: ' + LArg.ToString);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  // per salvare l'articolo chiamo Store Arguments Article
  a.StoreArgumentsArticle;
  // a.UpdateScreen;
  Assert.AreEqual(self.FedAbstract.Text, a.Article.Abstract.AsString);
  Assert.AreEqual(self.FedTitle.Text, a.Article.Title.AsString);
  a.NewArticle;
  Assert.AreEqual(0, a.Article.Article_id.AsInteger);
  Assert.AreEqual(self.FedAbstract.Text, '');
  Assert.AreEqual(self.FedTitle.Text, '');
  FreeAndNil(a);

end;

procedure TTestCmsVM.DeletePicture;
begin

end;

function TTestCmsVM.GetCmsViewModel: TdmCMSViewModel;
begin
  try
    Result := TdmCMSViewModel.Create(nil);
    Assert.IsNotNull(Result);
  except
    on e: exception do
      raise exception.Create('TTestCmsVM.GetCmsViewModel ' + e.Message);
  end;
end;

procedure TTestCmsVM.MainArgumentsChange(const aDataset: TDataset);
begin
  aDataset.Close;
  aDataset.Open;
end;

procedure TTestCmsVM.NewArticle;
var
  a: TdmCMSViewModel;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(0, a.Article.Article_id.AsInteger);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  a.DeleteArticle(False);
  Assert.AreEqual(-1, a.Article.State.AsInteger, 'Article not Deleted');
  a.Article.Clear;
  Assert.AreEqual(0, a.Article.Article_id.AsInteger);

end;

procedure TTestCmsVM.NewArticleVCL;
var
  a: TdmCMSViewModel;
begin
  // per primo Step devo creare 'a' per far partire il programma
  a := GetCmsViewModel;
  // Successivamente eseguo il VCL Setup su (a) cioè associo i Componenti
  self.VCLSetup(a);
  // Verifico che il 'coordinamento' funzioni attivando gli argomenti.
  a.OpenArgumentArticles;
  // Inserisco un nuovo Articolo
  a.NewArticle;
  Assert.AreEqual(0, a.Article.Article_id.AsInteger);
  Assert.AreEqual(1, a.Article.State.AsInteger); // Articolo in stato 'bozza'.
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  a.UpdateScreen;
  Assert.AreEqual(self.FlkpPublishArticle.ItemIndex, integer(a.Article.StatePos),
    'ItemIndex: ' + FlkpPublishArticle.ItemIndex.ToString + ' differ StatePos: ' + a.Article.StatePos.ToString +
    ', State=' + a.Article.State.AsString);
  Assert.AreEqual(self.FedAbstract.Text, a.Article.Abstract.AsString);
  Assert.AreEqual(self.FedTitle.Text, a.Article.Title.AsString);
  // Test pubblicazione Articolo.
  a.Publish(False);
  Assert.AreNotEqual(0, a.Article.Article_id.AsInteger);
  Assert.AreEqual(self.FedAbstract.Text, a.Article.Abstract.AsString);
  Assert.AreEqual(self.FedTitle.Text, a.Article.Title.AsString);
  Assert.AreEqual(a.cdsArgumentsArticlesarticle_id.AsInteger, a.Article.Article_id.AsInteger);
  a.NewArticle;
  Assert.AreEqual(0, a.Article.Article_id.AsInteger);
  Assert.AreEqual(self.FedAbstract.Text, '');
  Assert.AreEqual(self.FedTitle.Text, '');
end;

procedure TTestCmsVM.SaveArticle;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  // Salva l'articolo su disco.
  a.StoreArgumentsArticle;
  Assert.AreNotEqual(tmp, a.Article.Article_id.AsLargeInt);
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  Assert.AreNotEqual(tmp, a.cdsArgumentsArticlesarticle_id.AsLargeInt);
  LL := a.cdsArgumentsArticlesarticle_id.AsLargeInt;
  Assert.AreEqual(LL, a.Article.Article_id.AsLargeInt);
  LI := a.cdsArgumentsArticles.RecordCount;
  Assert.AreNotEqual(0, LI);
  a.DeleteArticle(False);
  Assert.AreEqual(LI, a.cdsArgumentsArticles.RecordCount);
  Assert.AreEqual(True, a.cdsArgumentsArticlescrtc_deleted.AsBoolean, sLineBreak + 'Record not Deleted');
end;

procedure TTestCmsVM.SaveArticleVCL;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  // Salva l'articolo su disco.
  a.StoreArgumentsArticle;
  Assert.AreNotEqual(tmp, a.Article.Article_id.AsLargeInt);
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  Assert.AreNotEqual(tmp, a.cdsArgumentsArticlesarticle_id.AsLargeInt);
  LL := a.cdsArgumentsArticlesarticle_id.AsLargeInt;
  Assert.AreEqual(LL, a.Article.Article_id.AsLargeInt);
  LI := a.cdsArgumentsArticles.RecordCount;
  Assert.AreNotEqual(0, LI, 'LI is not 0');
  a.UpdateScreen;
  Assert.AreEqual(self.FedAbstract.Text, a.Article.Abstract.AsString);
  Assert.AreEqual(self.FedTitle.Text, a.Article.Title.AsString);
  a.DeleteArticle(False);
  Assert.AreEqual(-1, a.Article.State.AsInteger);
  Assert.AreEqual(a.lkpPublishArticle.ItemIndex, a.Article.StatePos);
  a.UpdateScreen;
  Assert.AreEqual(LI, a.cdsArgumentsArticles.RecordCount);
  Assert.AreEqual(True, a.cdsArgumentsArticlescrtc_deleted.AsBoolean, sLineBreak + 'Record not Deleted');
  {
    if (LI - 1) = 0 then
    begin
    Assert.AreEqual(0, a.Article.Article_id.AsInteger);
    Assert.AreEqual(self.FedAbstract.Text, '');
    Assert.AreEqual(self.FedTitle.Text, '');
    end;
  }
end;

procedure TTestCmsVM.Setup;
begin
  JanuaApplicationGlobalProfile.JanuaServerConf.Port := 5432;
  JanuaApplicationGlobalProfile.JanuaServerConf.DatabaseName := 'test';
  JanuaApplicationGlobalProfile.JanuaServerConf.Password := '3rg0m3rc4t0r';
  JanuaApplicationGlobalProfile.JanuaServerConf.Username := 'ergo';
  JanuaApplicationGlobalProfile.JanuaServerConf.Address := 'local.januaservers.com';
  // JanuaApplicationGlobalProfile.JanuaServerConf.Address := 'pg.januaservers.com';
  JanuaApplicationGlobalProfile.JanuaServerConf.Schema := 'cms';
  JanuaApplicationGlobalProfile.JanuaServerConf.DBEngine := TJanuaDBEngine.jdbPostgres;
  JanuaApplicationGlobalProfile.Language := jlaNone;
  JanuaApplicationGlobalProfile.UnitTesting := True;
  // dmCmsLNDConf.JanuaConf1.JanuaServerConf.SetRecordConf(JanuaApplicationGlobalProfile.JanuaServerConf);
  JanuaApplicationGlobalProfile.DBSchemaID := 32;
  JanuaApplicationGlobalProfile.DBUserID := 13;
  // TProc Properties
  FForm := TForm.Create(nil);
  FedVideoUrl := TEdit.Create(FForm);
  FedTitle := TEdit.Create(FForm);
  FAdvRichEditor := TAdvRichEditor.Create(FForm);
  FlbGUID := TLabel.Create(FForm);
  FlbArticle := TLabel.Create(FForm);
  FedAbstract := TEdit.Create(FForm);
  FbtnShowAttach := TAdvGlowButton.Create(FForm);
  FbtnShowAttach.Parent := FForm;
  FbtnDeleteAttach := TAdvGlowButton.Create(FForm);
  FbtnDeleteAttach.Parent := FForm;
  FMenu := TPopupMenu.Create(FForm);
  FAltriAllegati := FMenu.CreateMenuItem;
  FAltriAllegati.Caption := 'Altri Allegati';
  FedAbstract.Parent := FForm;
  FImageTest := TImage.Create(FForm);
  FImageTest.Parent := FForm;
  FBtnPublish := TAdvGlowButton.Create(FForm);
  FBtnPublish.Parent := FForm;
  FImageArticle := TImage.Create(FForm);
  FImageArticle.Parent := FForm;
  FlkpPublishArticle := TJvRadioGroup.Create(FForm);
  FlkpPublishArticle.Parent := FForm;
  FedExpiryDate := TAdvDateTimePicker.Create(FForm);
  FedExpiryDate.Parent := FForm;
  FedArticleDate := TAdvDateTimePicker.Create(FForm);
  FedArticleDate.Parent := FForm;
end;

procedure TTestCmsVM.TearDown;
begin
  FreeAndNil(FForm);
end;

procedure TTestCmsVM.TestCreateCmsVM;
var
  LdmCMSViewModel: TdmCMSViewModel;
begin
  LdmCMSViewModel := TdmCMSViewModel.Create(nil);
  Assert.IsNotNull(LdmCMSViewModel);
  LdmCMSViewModel.Free;
end;

procedure TTestCmsVM.TestOpenArguments;
begin
  GetCmsViewModel.OpenArgumentArticles;
end;

procedure TTestCmsVM.UploadAttach;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  Assert.AreEqual(tmp, a.Article.MainAttachId.AsLargeInt);
  // indico il nome del file ed imposto a True il Flag 'Test'.
  a.MainAttachUpload(self.CMainAttach, True);
  Assert.AreNotEqual(tmp, a.Article.MainAttachId.AsLargeInt);

end;

procedure TTestCmsVM.UploadFile;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
  LB: Boolean;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  LB := a.FileUpload(self.CMainAttach);
  Assert.IsTrue(LB, 'LB is not true, upload Failed.');
  Assert.IsTrue(a.cdsSearchBlobFiles.Active, 'cdsSearchBlobFiles is not Active');
  Assert.AreEqual(1, a.cdsSearchBlobFiles.RecordCount);
end;

procedure TTestCmsVM.UploadFiles;
var
  a: TdmCMSViewModel;
  LI: integer;
  LMain, LArg: integer;
  LL: Int64;
  LB: Boolean;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.cdsMainArguments.First;
  a.cdsArguments.First;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt, 'Article_id <> 0');
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  Assert.AreEqual(tmp, a.Article.MainAttachId.AsLargeInt);
  // indico il nome del file ed imposto a True il Flag 'Test'.
  a.MainAttachUpload(self.CMainAttach, True);
  Assert.AreNotEqual(tmp, a.Article.MainAttachId.AsLargeInt, 'Article.MainAttachId.AsLargeInt = 0');
  a.StoreArgumentsArticle;
  Assert.AreEqual(a.Article.Abstract.AsString, 'Test Abstract', 'Test Abstract 1 Article');
  Assert.AreEqual(a.cdsArgumentsArticlesabstract.AsWideString, 'Test Abstract', 'Test Abstract 1 cds');
  LMain := a.Article.Main_argument_id.AsInteger;
  LArg := a.Article.Argument_id.AsInteger;
  Assert.AreEqual(LMain, 101);
  Assert.AreEqual(LArg, 101);
  Assert.AreEqual(LMain, a.cdsMainArgumentsmain_argument_id.AsInteger);
  Assert.AreEqual(LArg, a.cdsArgumentsargument_id.AsInteger);
  LL := a.Article.Article_id.AsLargeInt;
  Assert.AreNotEqual(tmp, a.Article.Article_id.AsLargeInt, 'Article.Article_id.AsLargeInt = 0');
  LI := a.MultiAttachUpload(nil, self.CAttachFiles);
  Assert.AreEqual(LL, a.Article.Article_id.AsLargeInt, 'LL, a.MultiAttachUpload');
  Assert.AreEqual(a.Article.Abstract.AsString, 'Test Abstract', 'Test Abstract 2 Article');
  Assert.AreEqual(a.cdsArgumentsArticlesabstract.AsWideString, 'Test Abstract', 'Test Abstract 2 cds');

  Assert.AreNotEqual(0, LI, 'LI = 0 MultiAttachUpload');
  Assert.AreEqual(LI, a.Article.Attachments.RecordCount, 'LI, a.MultiAttachUpload');
  a.StoreArgumentsArticle;
  Assert.AreEqual(a.Article.Abstract.AsString, 'Test Abstract', 'Test Abstract 3 Article');
  Assert.AreEqual(a.cdsArgumentsArticlesabstract.AsWideString, 'Test Abstract', 'Test Abstract 3 cds');

  Assert.AreEqual(LL, a.Article.Article_id.AsLargeInt, 'LL, a.StoreArgumentsArticle');
  Assert.AreEqual(LI, a.Article.Attachments.RecordCount, 'LI, a.StoreArgumentsArticle');
  Assert.AreEqual(a.Article.Attachments.RecordCount, a.cdsArgumentsArticlesAttachments.RecordCount,
    'Article.Attachments <> cdsArgumentsArticlesAttachments');
  LL := a.Article.Article_id.AsLargeInt;

  FreeAndNil(a);
  a := GetCmsViewModel;
  VCLSetup(a);
  a.OpenArgumentArticles;
  a.cdsMainArguments.First;
  a.cdsArguments.First;

  Assert.AreNotEqual(0, a.cdsArgumentsArticles.RecordCount);
  LB := a.LocateArticleID(LL); // a.cdsArgumentsArticles.Locate('article_id', LL, [])
  Assert.IsTrue(LB, 'Articolo non trovato: ' + LL.ToString);
  a.DataChange(self, a.cdsArgumentsArticlesarticle_id);
  Assert.AreEqual(LI, a.Article.Attachments.RecordCount, 'LocateArticleID LI <> Article.Attachments');
  Assert.AreEqual(LL, a.Article.Article_id.AsLargeInt);
  Assert.AreEqual(LI, a.cdsArgumentsArticlesAttachments.RecordCount, 'cdsArgumentsArticlesAttachments');
  Assert.AreEqual(LI, a.Article.Attachments.RecordCount, 'Article.Attachments');
end;

procedure TTestCmsVM.UploadFilesVCL;
begin

end;

procedure TTestCmsVM.UploaAttachVCL;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt);
  Assert.AreEqual(tmp, a.Article.MainAttachId.AsLargeInt);
  Assert.AreEqual(tmp, a.Article.MainImageId.AsLargeInt);
  self.VCLSetup(a);
  Assert.IsFalse(a.ActShowMainAttach.Enabled, 'btnShowAttach enabled');
  Assert.IsFalse(a.ActArticleMainAttachDelete.Enabled, 'btnShowAttach enabled');
  Assert.IsFalse(a.AltriAllegati.Enabled, 'AltriAllegati enabled');

  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  Assert.AreEqual(tmp, a.Article.MainAttachId.AsLargeInt);
  // indico il nome del file ed imposto a True il Flag 'Test'.
  a.MainAttachUpload(self.CMainAttach, True);
  Assert.AreNotEqual(tmp, a.Article.MainAttachId.AsLargeInt);

  Assert.IsTrue(a.ActShowMainAttach.Enabled, 'btnShowAttach disabled');
  Assert.IsTrue(a.ActArticleMainAttachDelete.Enabled, 'btnShowAttach disabled');
  Assert.IsTrue(a.AltriAllegati.Enabled, 'AltriAllegati disabled');
end;

procedure TTestCmsVM.UploadPicture;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  // Salva l'articolo su disco.
  a.InsertImage(self.CImageFile);
  a.StoreArgumentsArticle;
  Assert.AreNotEqual(tmp, a.Article.Article_id.AsLargeInt);
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  Assert.AreNotEqual(tmp, a.cdsArgumentsArticlesarticle_id.AsLargeInt);
end;

procedure TTestCmsVM.UploadPictureVCL;
var
  a: TdmCMSViewModel;
  LI: integer;
  LL: Int64;
const
  tmp: Int64 = 0;
begin
  a := GetCmsViewModel;
  self.VCLSetup(a);
  a.OpenArgumentArticles;
  a.NewArticle;
  Assert.AreEqual(tmp, a.Article.Article_id.AsLargeInt);
  a.Article.Title.AsString := 'Test Article';
  a.Article.Abstract.AsString := 'Test Abstract';
  a.Article.Text.AsString := 'Test Text';
  // Salva l'articolo su disco.
  a.InsertImage(self.CImageFile);
  a.StoreArgumentsArticle;
  Assert.AreNotEqual(tmp, a.Article.Article_id.AsLargeInt);
  Assert.AreEqual('Test Text', a.Article.Text.AsString);
  Assert.AreEqual('Test Article', a.Article.Title.AsString);
  Assert.AreEqual('Test Abstract', a.Article.Abstract.AsString);
  Assert.AreNotEqual(tmp, a.cdsArgumentsArticlesarticle_id.AsLargeInt);

end;

procedure TTestCmsVM.VCLSetup(aViewModel: TdmCMSViewModel);
var
  i: integer;
begin
  aViewModel.edVideoUrl := FedVideoUrl; // TEdit.Create(nil);
  aViewModel.edTitle := FedTitle; // TEdit.Create(nil);
  aViewModel.AdvRichEditor := TJanuaAdvRTFEditor.Create(FAdvRichEditor);  // TAdvRichEditor.Create(nil);
  aViewModel.lbGUID := FlbGUID; // TLabel.Create(nil);
  aViewModel.lbArticle := FlbArticle; // TLabel.Create(nil);
  aViewModel.edAbstract := FedAbstract; // TEdit.Create(nil);
  aViewModel.AltriAllegati := FAltriAllegati; // TMenuItem.Create(nil);
  aViewModel.ImageTest := FImageTest; // TImage.Create(nil);
  aViewModel.ImageArticle := FImageArticle; // TImage.Create(nil);
  aViewModel.MainArgumentsChangePrc := self.MainArgumentsChange;
  aViewModel.lkpPublishArticle := FlkpPublishArticle;
  aViewModel.ArticleClearPRC := self.ArticleClear;
  aViewModel.edExpiryDate := FedExpiryDate;
  aViewModel.edArticleDate := FedArticleDate;
end;

initialization

TDUnitX.RegisterTestFixture(TTestCmsVM);

end.
