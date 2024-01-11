unit ufrmVCLCmsEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCGrids, AdvOfficePager,
  AdvOfficePagerStylers, AdvAppStyler, Vcl.Menus, AdvMenus,
  AdvMenuStylers,
  Vcl.StdCtrls, Vcl.DBCtrls, uframeRichEditorRibbon, Data.DB, AdvRichEditorIO, DBAdvRichEditorRTFIO,
  AdvOfficeHint,
  Shader, Vcl.ExtDlgs, AdvGlowButton, Vcl.Mask, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker, Vcl.OleCtrls, MemData, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExControls, JvDBLookup,
  AdvMemo, AdvmWS, AdvOfficeTabSet, AdvOfficeTabSetStylers, Vcl.Imaging.pngimage,
  // Januaproject
  Janua.Cloud.Images.Intf, Janua.Core.Classes, Janua.Vcl.OS, Janua.Cloud.Server.Intf, Janua.Cloud.Server.Impl,
  Janua.Cloud.Files.Intf, Janua.Core.Customcontrols, Janua.Vcl.Dialogs, Janua.Vcl.Cloud.Images,
  Janua.Vcl.Cloud.Files, JvSpeedButton, Vcl.Buttons, AdvScrollControl,
  AdvRichEditorBase, JOrm.Cms.Articles.Intf,
  AdvRichEditor, AdvCustomComponent, AdvPDFIO, AdvRichEditorPDFIO, AcroPDFLib_TLB, JvBaseDlg,
  JvSelectDirectory,
  Vcl.WinXCtrls, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList,
  DBAdvGlowNavigator,
  CRGrid, AdvDateTimePicker, AdvCombo, AdvDBComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvFontCombo, System.Actions, Vcl.ActnList, Janua.Vcl.EnhCRDBGrid, JvExExtCtrls,
  JvRadioGroup,
  AdvDBDateTimePicker, AdvStyleIF;

type
  TfrmVCLCmsEditor = class(TForm)
    AdvAppStyler1: TAdvAppStyler;
    AdvFormStyler1: TAdvFormStyler;
    AdvMainMenu1: TAdvMainMenu;
    popMainMenu: TAdvPopupMenu;
    Login1: TMenuItem;
    Accedi1: TMenuItem;
    N1: TMenuItem;
    ChiudiProgramma1: TMenuItem;
    Modifica1: TMenuItem;
    AdvOfficeHint1: TAdvOfficeHint;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    est1: TMenuItem;
    estArticles1: TMenuItem;
    FullTest1: TMenuItem;
    Menu1: TMenuItem;
    ImpostaImmaginediDefault1: TMenuItem;
    N2: TMenuItem;
    Amministratore1: TMenuItem;
    Utilit1: TMenuItem;
    ConvertePDF1: TMenuItem;
    AdvMenuStyler1: TAdvMenuStyler;
    PopAllegati: TAdvPopupMenu;
    AllegatoPrincipale1: TMenuItem;
    AltriAllegati1: TMenuItem;
    Timer1: TTimer;
    Timer2: TTimer;
    PopVediAllegati: TAdvPopupMenu;
    mnuMainAttach: TMenuItem;
    MenuItem2: TMenuItem;
    popEliminaAllegati: TAdvPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    pagerMain: TAdvOfficePager;
    pgArticles: TAdvOfficePage;
    pgImages: TAdvOfficePage;
    pgMail: TAdvOfficePage;
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    grdArguments: TDBCtrlGrid;
    DBText2: TDBText;
    grdMainArguments: TDBCtrlGrid;
    DBText1: TDBText;
    ImageList1: TImageList;
    pagerArticle: TAdvOfficePager;
    Articoli: TAdvOfficePage;
    frameRichEditorRibbon1: TframeRichEditorRibbon;
    Shader1: TShader;
    DBImage1: TImage;
    Shader2: TShader;
    Label1: TLabel;
    Label2: TLabel;
    DBText7: TDBText;
    Label5: TLabel;
    lbGUID: TLabel;
    Shader3: TShader;
    AdvGlowButton1: TAdvGlowButton;
    btnNewArticle: TAdvGlowButton;
    btnPublish: TAdvGlowButton;
    btnAttachments: TAdvGlowButton;
    btnShowAttach: TAdvGlowButton;
    btnDeleteAttach: TAdvGlowButton;
    edTitle: TEdit;
    edAbstract: TEdit;
    edVideoUrl: TEdit;
    Panel3: TPanel;
    DBText3: TDBText;
    DBText8: TDBText;
    lbArticle: TLabel;
    Panel4: TPanel;
    grdArticleTest: TDBGrid;
    pgPreview: TAdvOfficePage;
    pgHtml: TAdvOfficePage;
    advMemoHtml: TAdvMemo;
    pgTestImage: TAdvOfficePage;
    ImageTest: TImage;
    btnTestLoad: TSpeedButton;
    TestClear: TSpeedButton;
    TestBlobStream: TSpeedButton;
    testMemory: TSpeedButton;
    tabPdfPreview: TAdvOfficePage;
    Panel5: TPanel;
    AdvGlowButton3: TAdvGlowButton;
    AdvRichEditorPDFIO1: TAdvRichEditorPDFIO;
    AdvGlowButton6: TAdvGlowButton;
    DBCtrlGrid4: TDBCtrlGrid;
    btnImageUpload: TJvSpeedButton;
    DBImage2: TDBImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Panel7: TPanel;
    edSeachImages: TSearchBox;
    DBNavigator1: TDBAdvGlowNavigator;
    pgFiles: TAdvOfficePage;
    Panel6: TPanel;
    DBNavigator2: TDBAdvGlowNavigator;
    btnLoadResource: TAdvGlowButton;
    btnLoadResourceFolder: TAdvGlowButton;
    edSearchBlob: TSearchBox;
    DBCtrlGrid5: TDBCtrlGrid;
    btnShowBlobFile: TJvSpeedButton;
    DBText9: TDBText;
    edFileName: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBEdit5: TDBEdit;
    pgAnagrafiche: TAdvOfficePage;
    DataSource1: TDataSource;
    Panel8: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    CRDBGrid1: TCRDBGrid;
    dsMail: TDataSource;
    btnSendMail: TAdvGlowButton;
    pgBanners: TAdvOfficePage;
    Panel9: TPanel;
    edSearchBanner: TSearchBox;
    DBNavigator3: TDBAdvGlowNavigator;
    btnImageNewUpload: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    edArticleDate: TAdvDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    edExpiryDate: TAdvDateTimePicker;
    dsArticleState: TDataSource;
    popPublishArticle: TAdvPopupMenu;
    mnuArticlePublish: TMenuItem;
    mnuArticleDraft: TMenuItem;
    mnuArticleDelete: TMenuItem;
    mnuArticleArchive: TMenuItem;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    lkpMaiinArgument: TJvDBLookupCombo;
    Label4: TLabel;
    lkpArgument: TJvDBLookupCombo;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    grdBanners: TEnhCRDBGrid;
    Panel10: TPanel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    imgBanners: TImage;
    btnBannerNew: TAdvGlowButton;
    btnBannerDelete: TAdvGlowButton;
    btnBannerSave: TAdvGlowButton;
    Shader4: TShader;
    Shader5: TShader;
    grdArticles: TDBCtrlGrid;
    edArticleDateTime: TDBText;
    edArticleTitleText: TDBText;
    edArticleID: TDBText;
    edArticleGUID: TDBText;
    SearchBoxArticles: TSearchBox;
    lkpPublishArticle: TJvRadioGroup;
    AdvGlowButton4: TAdvGlowButton;
    SalvaModifiche1: TMenuItem;
    N3: TMenuItem;
    Label16: TLabel;
    dbtSince: TAdvDBDateTimePicker;
    Label17: TLabel;
    dbtUntil: TAdvDBDateTimePicker;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    Label19: TLabel;
    procedure btnTestLoadClick(Sender: TObject);
    procedure TestClearClick(Sender: TObject);
    procedure TestBlobStreamClick(Sender: TObject);
    procedure testMemoryClick(Sender: TObject);
    procedure ChiudiProgramma1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure edSearchBlobClick(Sender: TObject);
    procedure edSeachImagesClick(Sender: TObject);
    procedure edSearchBannerChange(Sender: TObject);
    procedure dsArticleStateDataChange(Sender: TObject; Field: TField);
    procedure pagerMainChange(Sender: TObject);
    procedure SearchBoxArticlesChange(Sender: TObject);
    procedure SearchBoxArticlesContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    // FMainArgumentID: integer;
    procedure ClearArticle;
    procedure UpdateScreen;
    procedure MainArgumentsChange(const aDataset: TDataset);
    { Private declarations }
  public
    { Public declarations }
    procedure BannerChange(const aRecordCount: Integer; const aUpdatesPending: Boolean);
  end;

var
  frmVCLCmsEditor: TfrmVCLCmsEditor;

implementation

uses
  Janua.Core.AsyncTask, Janua.Core.Types, JOrm.Cms.Articles.Impl, Janua.Cloud.Images.Impl, udlgSplash,
  udmCMSViewModel, Janua.Application.Framework;

{$R *.dfm}

var
  f: TFormSplast;

procedure TfrmVCLCmsEditor.BannerChange(const aRecordCount: Integer; const aUpdatesPending: Boolean);
begin
  self.btnBannerNew.Enabled := self.grdBanners.DataSource.DataSet.Active;
  self.btnBannerDelete.Enabled := aRecordCount > 0;
  self.btnBannerSave.Enabled := aUpdatesPending;
end;

procedure TfrmVCLCmsEditor.FormCreate(Sender: TObject);
begin
  self.frameRichEditorRibbon1.SetupHtmlEnvironment
end;

procedure TfrmVCLCmsEditor.FormShow(Sender: TObject);
begin
  Caption := TJanuaApplication.AppName + ' - ' + TJanuaApplication.ServerAddress + ' - ' +
    TJanuaApplication.ServerDatabaseName;
  f := TFormSplast.Create(nil);
  f.Show;
  self.Timer1.Enabled := True;

  { Gestione delle Pagine da rendere invisibili non in TEST }
  self.pgAnagrafiche.TabVisible := False;
  grdArticleTest.Visible := False;
  btnImageNewUpload.Visible := False;
  btnImageUpload.Visible := False;
end;

procedure TfrmVCLCmsEditor.MainArgumentsChange(const aDataset: TDataset);
begin
  try
    if self.pagerMain.ActivePage = self.pgMail then
    begin
      // al momento non fa nulla perchè è tutto gestito da procedura Cms.
    end;
  except
    on e: exception do
      raise exception.Create('TfrmVCLCmsEditor.MainArgumentsChange ' + e.Message);
  end;
end;

procedure TfrmVCLCmsEditor.pagerMainChange(Sender: TObject);
begin
  if self.pagerMain.ActivePage = self.pgMail then
    dmCmsViewModel.SelectedPage := TCmsTabPages.Mails
  else if self.pagerMain.ActivePage = self.pgArticles then
    dmCmsViewModel.SelectedPage := TCmsTabPages.Articles
  else if self.pagerMain.ActivePage = self.pgImages then
    dmCmsViewModel.SelectedPage := TCmsTabPages.Images
  else if self.pagerMain.ActivePage = self.pgBanners then
    dmCmsViewModel.SelectedPage := TCmsTabPages.Ads
  else if self.pagerMain.ActivePage = self.pgFiles then
    dmCmsViewModel.SelectedPage := TCmsTabPages.Attachments
  else
    dmCmsViewModel.SelectedPage := TCmsTabPages.Others

end;

procedure TfrmVCLCmsEditor.SearchBoxArticlesChange(Sender: TObject);
begin
  dmCmsViewModel.SearchArticleText := self.SearchBoxArticles.Text;
end;

procedure TfrmVCLCmsEditor.SearchBoxArticlesContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  dmCmsViewModel.SearchArticleText := self.SearchBoxArticles.Text;
end;

procedure TfrmVCLCmsEditor.edSearchBannerChange(Sender: TObject);
begin
  if (edSearchBanner.Text = '') or (Length(edSearchBanner.Text) > 2) then
    dmCmsViewModel.BannerAsyncSearch(edSearchBanner.Text);
end;

procedure TfrmVCLCmsEditor.edSeachImagesClick(Sender: TObject);
begin
  dmCmsViewModel.SearchImage(edSearchBlob.Text);
end;

procedure TfrmVCLCmsEditor.edSearchBlobClick(Sender: TObject);
begin
  dmCmsViewModel.SearchBlob(edSearchBlob.Text);
end;

procedure TfrmVCLCmsEditor.UpdateScreen;
begin
end;

procedure TfrmVCLCmsEditor.btnTestLoadClick(Sender: TObject);
begin
  dmCmsViewModel.TestLoad
end;

procedure TfrmVCLCmsEditor.TestClearClick(Sender: TObject);
begin
  dmCmsViewModel.TestClear;
end;

procedure TfrmVCLCmsEditor.TestBlobStreamClick(Sender: TObject);
begin
  dmCmsViewModel.TestBlobStream;
end;

procedure TfrmVCLCmsEditor.testMemoryClick(Sender: TObject);
begin
  dmCmsViewModel.testMemory;
end;

procedure TfrmVCLCmsEditor.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  // Sostituisco FBlob con una immagine presa dal Container oggetti, lo stesso lo faccio con Allegato (usano GUID).
  // FBlob := MemData.TBlob.Create(false);
  // dmPgCmsStorage.OpenMainArguments;
  // dmPgCmsStorage.OpenArgumentsArticles;
  // f.Timer1.Enabled := True;

  Async.Run<Boolean>(
    function: Boolean
    begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      dmCmsViewModel.ArticleClearPRC := ClearArticle;
      // passo la procedura di Aggiornamento dei Main Arguments.............
      dmCmsViewModel.MainArgumentsChangePrc := self.MainArgumentsChange;
      dmCmsViewModel.BannerChangeProc := self.BannerChange;
      dmCmsViewModel.OpenArgumentArticles;
      // *******************************************************************************************************
      Result := True;
    end,
    procedure(const aValue: Boolean)
    begin
      self.Timer2.Enabled := True;
    end,
    procedure(const Ex: exception)
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.

      if Assigned(f) then
        f.Free;

      ShowMessage(Ex.Message);
    end);

end;

procedure TfrmVCLCmsEditor.Timer2Timer(Sender: TObject);
begin
  try
    self.Timer2.Enabled := False;
    self.grdMainArguments.DataSource := dmCmsViewModel.dsMainArguments;
    grdMainArguments.Invalidate;
    grdMainArguments.Refresh;
    self.grdArguments.DataSource := dmCmsViewModel.dsArguments;
    grdArguments.Invalidate;
    grdArguments.Refresh;
    self.grdArticles.DataSource := dmCmsViewModel.dsArgumentsArticles;
    grdArticles.Invalidate;
    grdArticles.Refresh;
    // Images
    dmCmsViewModel.ImageArticle := self.DBImage1;
    dmCmsViewModel.ImageTest := self.ImageTest;
    dmCmsViewModel.BannerImage := self.imgBanners;
    // Buttons
    dmCmsViewModel.AdvRichEditor := self.frameRichEditorRibbon1.RTFEditor;
    dmCmsViewModel.AltriAllegati := self.AltriAllegati1;
    // Editor
    dmCmsViewModel.edVideoUrl := self.edVideoUrl;
    dmCmsViewModel.edTitle := self.edTitle;
    dmCmsViewModel.edAbstract := self.edAbstract;
    dmCmsViewModel.mnuAttachPreview := self.PopVediAllegati;
    dmCmsViewModel.mnuAttachDelete := self.popEliminaAllegati;
    dmCmsViewModel.lkpPublishArticle := self.lkpPublishArticle;
    dmCmsViewModel.edArticleDate := self.edArticleDate;
    dmCmsViewModel.edExpiryDate := self.edExpiryDate;
    dmCmsViewModel.UpdateArticles;
    if Assigned(f) then
    begin
      f.AdvCircularProgress1.Visible := False;
      f.Invalidate;
      Sleep(1000);
      f.Hide;
      f.Free;
    end;
    if dmCmsViewModel.cdsArgumentsArticles.RecordCount > 0 then
    begin
      dmCmsViewModel.cdsArgumentsArticles.First;
      if not dmCmsViewModel.cdsArgumentsArticles.Eof then
        dmCmsViewModel.cdsArgumentsArticles.Next;
      dmCmsViewModel.cdsArgumentsArticles.First;
    end;

    self.frameRichEditorRibbon1.SetupHtmlEnvironment;
    dmCmsViewModel.DataChange(self, nil);

    if dmCmsViewModel.cdsArgumentsArticles.RecordCount > 1 then
    begin
      dmCmsViewModel.cdsArgumentsArticles.Next;
      dmCmsViewModel.cdsArgumentsArticles.First;
    end;

    self.dsArticleState.Enabled := True;

    dmCmsViewModel.OpenThreadedBanners;
  except
    on e: exception do
      raise exception.Create(self.ClassName + '.Timer2Timer ' + e.ClassName + ' ' + e.Message);

  end;
end;

procedure TfrmVCLCmsEditor.ChiudiProgramma1Click(Sender: TObject);
begin
  self.Close
end;

procedure TfrmVCLCmsEditor.ClearArticle;
begin
  self.frameRichEditorRibbon1.Clear;
end;

procedure TfrmVCLCmsEditor.dsArticleStateDataChange(Sender: TObject; Field: TField);
begin
  if dmCmsViewModel.cdsArgumentsArticlesstate.AsInteger = -1 then
  begin
    self.edTitle.Font.Color := clRed;
    {
      self.edArticleDate.Font.Color := clRed;
      self.edArticleDateTime.Font.Color := clRed;
      self.edArticleTitleText.Font.Color := clRed;
      self.edArticleID.Font.Color := clRed;
      self.edArticleGUID.Font.Color := clRed;
    }
  end
  else if dmCmsViewModel.cdsArgumentsArticlesstate.AsInteger = 1 then
  begin
    self.edTitle.Font.Color := clBlack;
    {
      self.edArticleDateTime.Font.Color := clBlack;
      self.edArticleTitleText.Font.Color := clBlack;
      self.edArticleID.Font.Color := clBlack;
      self.edArticleGUID.Font.Color := clBlack;
    }
  end
  else if dmCmsViewModel.cdsArgumentsArticlesstate.AsInteger = 0 then
  begin
    self.edTitle.Font.Color := clBlue;
    {
      self.edArticleDate.Font.Color := clBlue;
    }
  end
  else if dmCmsViewModel.cdsArgumentsArticlesstate.AsInteger = 9 then
  begin
    self.edTitle.Font.Color := clGreen;
  end
end;

end.
