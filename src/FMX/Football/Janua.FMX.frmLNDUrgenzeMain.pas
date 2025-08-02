unit Janua.FMX.frmLNDUrgenzeMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  Janua.Http.Intf, Janua.Wordpress.Types,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.ScrollBox, FMX.Memo, FMX.TabControl, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.Objects, FMX.ListView, FMX.Memo.Types;

type
  TfrmLNDUrgenzeMain = class(TForm)
    Header: TToolBar;
    HeaderLabel: TLabel;
    btnSendArticle: TButton;
    edTitle: TEdit;
    memContent: TMemo;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    btnUndoArticle: TButton;
    btnNewArticle: TButton;
    ListViewArticles: TListView;
    txtServerConnection: TText;
    AniIndicator1: TAniIndicator;
    procedure btnSendArticleClick(Sender: TObject);
    procedure btnUndoArticleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNewArticleClick(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure ListViewArticlesItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    { Private declarations }
    FArticle: TWPRecord;
    FArticles: TWPRecords;
    procedure SetArticle(const Value: TWPRecord);
    procedure SetArticles(const Value: TWPRecords);
    procedure LoadArticles;
    procedure CheckLogin(aProc: TProc);
    procedure ClearArticle;
  public
    { Public declarations }
    property Article: TWPRecord read FArticle write SetArticle;
    property Articles: TWPRecords read FArticles write SetArticles;
  end;

var
  frmLNDUrgenzeMain: TfrmLNDUrgenzeMain;

implementation

uses AsyncTask, Janua.Http.Impl, Janua.Http.Types, Janua.Core.Types, Janua.Core.Json, Janua.Wordpress.Impl,
  uLNDMainDataModule, System.IOUtils, ufrmLogin;

{$R *.fmx}

procedure TfrmLNDUrgenzeMain.btnNewArticleClick(Sender: TObject);
begin
  ClearArticle;
end;

procedure TfrmLNDUrgenzeMain.btnSendArticleClick(Sender: TObject);

{ "author": 1,
  "featured_media": 207,
  "comment_status": "open",
  "ping_status": "open",
  "sticky": false,
}
begin
  CheckLogin(
    procedure
    var
      LHttpParams: TJanuaHttpParams;
      LText: string;
    begin
      FArticle.Title := self.edTitle.Text;
      FArticle.Content := self.memContent.Lines.Text;
      FArticle.Status := 'publish';
      FArticle.MainCategory := 37;
      FArticle.FeatureMedia := 950;
      if TWordpressClass.RestPost(LText, FArticle) then
        ShowMessage('Notifica Inviata')
      else
        ShowMessage('Attenzione problema di comunicazione con il server');
    end);
  {
    if self.FToken.token = '' then
    begin
    LHttpParams.Clear;
    LHttpParams.Add(TJanuaHttpParam.Create('username', 'liguriadmin'));
    LHttpParams.Add(TJanuaHttpParam.Create('password', 'T4nt0v4l4g4t'));
    LText := Janua.Http.Impl.TJanuaHttp.OpenUrlAsString
    ('http://lnd.ergomercator.com/wp-json/jwt-auth/v1/token', LHttpParams,
    TJanuaMimeType.jmtApplicationJson, TJanuaHttpMethod.jhmPost);
    self.AdvMemo1.Lines.Text := Janua.Core.Json.JsonPretty(LText);
    FToken.Create(LText);
    self.AdvMemo2.Lines.Text := FToken.AsString;
    end;
  }

end;

procedure TfrmLNDUrgenzeMain.btnUndoArticleClick(Sender: TObject);

begin
  CheckLogin(
    procedure // class function StatusPost(var aText: string; const aRecord: TWPRecord): boolean;
    var
      LText: string;
    begin
      if FArticle.ID > 0 then
      begin;
        TWordpressClass.StatusPost(LText, FArticle, TWPStatus.wpDraft);
        ShowMessage('Modifica Annullata');
        ClearArticle;
        Exit
      end
      else
        ShowMessage('Attenzione dovete selezionare una notifica da annullare');
    end);
end;

procedure TfrmLNDUrgenzeMain.FormCreate(Sender: TObject);
begin
  Application.CreateForm(TLNDMainDataModule, LNDMainDataModule);
  ListViewArticles.Images := LNDMainDataModule.ImageList1;
  TWordpressClass.Url := 'http://liguria.lnd.it/index.php';
end;

procedure TfrmLNDUrgenzeMain.ListViewArticlesItemClick(const Sender: TObject; const AItem: TListViewItem);
var
  LNewsRecord: TWPRecord;
begin
  for LNewsRecord in self.FArticles.Items do
  begin
    if LNewsRecord.ID = AItem.Tag then
    begin
      self.Article := LNewsRecord;
      self.TabControl1.Previous(TTAbTransition.Slide, TTabTRansitionDirection.Reversed);
    end;
  end
end;

procedure TfrmLNDUrgenzeMain.LoadArticles;
begin
  AniIndicator1.Visible := True;
  AniIndicator1.Enabled := True;
  Async.Run<TWPRecords>(
    function: TWPRecords
    begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      Result := TWordpressClass.LoadArticles();
    end,
    procedure(const aValue: TWPRecords)
    var
      LNewsRecord: TWPRecord;
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.
      try
        if aValue.Count > 0 then
        begin
          self.txtServerConnection.Visible := False;
          FArticles := aValue;
          // LNDMainDataModule.qryWarnings.Open;
          self.ListViewArticles.BeginUpdate;
          ListViewArticles.Items.Clear;
          for LNewsRecord in self.FArticles.Items do
          begin
            with self.ListViewArticles.Items.Add do
            begin
              Tag := LNewsRecord.ID;
              Text := StringReplace(LNewsRecord.Title, '&#8217;', '''', [rfReplaceAll]);
              // Detail := LNDMainDataModule.News.Abstract.AsString;
              ImageIndex := 0;
            end;
          end;
          self.ListViewArticles.EndUpdate;
        end;
      finally
        AniIndicator1.Visible := False;
        AniIndicator1.Enabled := False;
      end;
    end,
    procedure(const Ex: Exception)
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      try
        ShowMessage(Ex.Message);
      finally
        AniIndicator1.Visible := False;
        AniIndicator1.Enabled := False;
      end;
    end);
end;

procedure TfrmLNDUrgenzeMain.CheckLogin(aProc: TProc);
var
  LMessage, LFile: string;
  LfrmLogin: TfrmLogin;
begin
  if not TWordpressClass.Connected then
  begin
    LFile := TPath.getDocumentsPath + PathDelim + 'lnd.json';
    if not FileExists(LFile) then
    begin
      LfrmLogin := TfrmLogin.Create(Application);
      try
        LfrmLogin.LFile := LFile;
        LfrmLogin.MyEvent := procedure
          begin
            TJanuaApplication.JanuaServerConf.LoadFromFile(LFile);
            if TWordpressClass.JWTLogin(TJanuaApplication.JanuaServerConf.Username,
              TJanuaApplication.JanuaServerConf.Password, LMessage) then
              aProc
            else
              raise Exception.Create('Errore di connessione CheckLogin ' + sLineBreak + LMessage);
          end;
        LfrmLogin.Show;
      except
        on e: Exception do
        begin
          LfrmLogin.Free;
          raise Exception.Create('Errore di connessione CheckLogin ' + sLineBreak + e.Message);
        end;
      end;
    end
    else
    begin
      TJanuaApplication.JanuaServerConf.LoadFromFile(LFile);
      if TWordpressClass.JWTLogin(TJanuaApplication.JanuaServerConf.Username,
        TJanuaApplication.JanuaServerConf.Password, LMessage) then
        aProc
      else
        raise Exception.Create('Errore di connessione CheckLogin ' + sLineBreak + LMessage);
    end;
  end
  else
    aProc
end;

procedure TfrmLNDUrgenzeMain.ClearArticle;
begin
  self.Article.Clear;
  self.edTitle.Text := '';
  self.memContent.Lines.Clear;
end;

procedure TfrmLNDUrgenzeMain.SetArticle(const Value: TWPRecord);
begin
  FArticle := Value;
  self.edTitle.Text := self.FArticle.Title;
  self.memContent.Lines.Text := self.FArticle.Content;
end;

procedure TfrmLNDUrgenzeMain.SetArticles(const Value: TWPRecords);
begin
  FArticles := Value;
end;

procedure TfrmLNDUrgenzeMain.TabControl1Change(Sender: TObject);
begin
  if self.TabControl1.ActiveTab = self.TabItem2 then
  begin
    LoadArticles
  end;
end;

end.
