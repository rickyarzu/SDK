unit ufrmTestFootball;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, VirtualTable, Vcl.ExtCtrls, AdvMemo,
  Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls, AdvmWS, Vcl.Buttons, AdvPageControl, Vcl.ComCtrls,
  AdvSplitter, advmjson,

  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, CRGrid, AdvmCSS,

  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Football, Janua.Postgres.Football,
  Janua.Postgres.Cms, Janua.Core.System, Janua.Postgres.System, Janua.Core.Cms,

  udmJanuaCoreTesting;

type
  TfrmTestFootball = class(TForm)
    Panel1: TPanel;
    dsSeasons: TVirtualTable;
    dsLeagues: TVirtualTable;
    edSeason: TEdit;
    edLeague: TEdit;
    edMatchDay: TEdit;
    AdvHTMLMemoStyler1: TAdvHTMLMemoStyler;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    PageControl1: TPageControl;
    tabJsonObject: TTabSheet;
    TabSheet2: TTabSheet;
    AdvPageControl1: TAdvPageControl;
    tabTemplateRanking: TAdvTabSheet;
    Panel4: TPanel;
    tabMatchDay: TAdvTabSheet;
    AdvTabSheet1: TAdvTabSheet;
    memHtmlHeader: TAdvMemo;
    Panel3: TPanel;
    tabHtmlMenu: TAdvTabSheet;
    Panel8: TPanel;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    tbThemes: TVirtualTable;
    tbTemplates: TVirtualTable;
    edUsername: TLabeledEdit;
    btnSaveTemplateRanking: TSpeedButton;
    edPassword: TLabeledEdit;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    dsTestFootball: TDataSource;
    dsChampionship: TDataSource;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    advMemoJson: TAdvMemo;
    TabSheet4: TTabSheet;
    CRDBGrid1: TCRDBGrid;
    DBNavigator1: TDBNavigator;
    CRDBGrid2: TCRDBGrid;
    tabHtmlResult: TTabSheet;
    Panel9: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    memHtml: TAdvMemo;
    tabBrowser: TTabSheet;
    WebBrowser1: TWebBrowser;
    Panel5: TPanel;
    btnStartWebServer: TSpeedButton;
    tabCss: TAdvTabSheet;
    Panel10: TPanel;
    AdvMemo1: TAdvMemo;
    edCssPromotion: TLabeledEdit;
    edPlayoff: TLabeledEdit;
    edCssStandard: TLabeledEdit;
    edPlayout: TLabeledEdit;
    edRelegation: TLabeledEdit;
    AdvCSSMemoStyler1: TAdvCSSMemoStyler;
    tabTestServer: TTabSheet;
    AdvTabSheet2: TAdvTabSheet;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl4: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    memRankingPage: TAdvMemo;
    Panel13: TPanel;
    memRankingTableHeader: TAdvMemo;
    memRankingTableRows: TAdvMemo;
    Panel2: TPanel;
    memTemplateMatchDayPage: TAdvMemo;
    Panel6: TPanel;
    memTemplateMatchDayTable: TAdvMemo;
    Panel7: TPanel;
    memTemplateMatchDayRows: TAdvMemo;
    pgGoalRankingSettings: TPageControl;
    TabSheet10: TTabSheet;
    memGoalRankingPage: TAdvMemo;
    TabSheet11: TTabSheet;
    Panel11: TPanel;
    memGoalRankingHead: TAdvMemo;
    TabSheet12: TTabSheet;
    Panel12: TPanel;
    memGoalRankingRows: TAdvMemo;
    ckbAlive: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FdmJanuaCoreTesting: udmJanuaCoreTesting.TdmJanuaCoreTesting;
    procedure SetdmJanuaCoreTesting(const Value: udmJanuaCoreTesting.TdmJanuaCoreTesting);
    procedure SetChampionship;
    procedure CleanUp;
    procedure LoadText;
    procedure SaveText;
    { Private declarations }
  public
    { Public declarations }
    property dmJanuaCoreTesting: udmJanuaCoreTesting.TdmJanuaCoreTesting read FdmJanuaCoreTesting
      write SetdmJanuaCoreTesting;
  end;

var
  frmTestFootball: TfrmTestFootball;

implementation

{$R *.dfm}

procedure TfrmTestFootball.Button1Click(Sender: TObject);
begin
  self.SaveText;
end;

procedure TfrmTestFootball.SetdmJanuaCoreTesting(const Value
  : udmJanuaCoreTesting.TdmJanuaCoreTesting);
begin
  FdmJanuaCoreTesting := Value;
  if Assigned(self.FdmJanuaCoreTesting) then
    LoadText;

end;

procedure TfrmTestFootball.SaveText;
begin

  with FdmJanuaCoreTesting do
  begin
    if JanuaServerPgFootball.Active then
    begin
      StringListAssignBack(memHtmlHeader.Lines, JanuaServerPgFootball.HtmlHead, True);
      StringListAssignBack(memRankingPage.Lines, JanuaServerPgFootball.TemplateRankingPage, True);
      StringListAssignBack(memRankingTableHeader.Lines,
        JanuaServerPgFootball.TemplateRankingHead, True);
      StringListAssignBack(memRankingTableRows.Lines,
        JanuaServerPgFootball.TemplateRankingRow, True);
      StringListAssignBack(memTemplateMatchDayPage.Lines,
        JanuaServerPgFootball.TemplateMatchesPage, True);
      StringListAssignBack(memRankingTableHeader.Lines,
        JanuaServerPgFootball.TemplateRankingHead, True);
      StringListAssignBack(memRankingTableRows.Lines,
        JanuaServerPgFootball.TemplateRankingRow, True);
      StringListAssignBack(memRankingPage.Lines, JanuaServerPgFootball.TemplateRankingPage, True);
      StringListAssignBack(memRankingTableHeader.Lines,
        JanuaServerPgFootball.TemplateRankingHead, True);
      StringListAssignBack(memRankingTableRows.Lines,
        JanuaServerPgFootball.TemplateRankingRow, True);

      JanuaServerPgFootball.SaveTemplate;
    end;
  end;

end;

procedure TfrmTestFootball.SetChampionship;
begin
  if not FdmJanuaCoreTesting.JanuaServerPgFootball.Active then
    FdmJanuaCoreTesting.JanuaServerPgFootball.Activate;

  FdmJanuaCoreTesting.JanuaServerPgFootball.season_id := StrToInt(self.edSeason.Text);
  FdmJanuaCoreTesting.JanuaServerPgFootball.league_id := StrToInt(self.edLeague.Text);
  FdmJanuaCoreTesting.JanuaServerPgFootball.match_day := StrToInt(self.edMatchDay.Text);
end;

procedure TfrmTestFootball.Button2Click(Sender: TObject);
begin
  self.LoadText;
end;

procedure TfrmTestFootball.CleanUp;
begin
  if (self.edMatchDay.Text = '') or (self.edMatchDay.Text = '0') then
    self.edMatchDay.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.match_day.ToString;
  self.advMemoJson.Lines.Clear;
  memHtml.Lines.Clear;
end;

procedure TfrmTestFootball.LoadText;
begin
  if Assigned(FdmJanuaCoreTesting) then
    with FdmJanuaCoreTesting do
    begin
      self.FdmJanuaCoreTesting.JanuaServerPgFootball.Activate;
      if JanuaServerPgFootball.Active then
      begin
        JanuaServerPgFootball.LoadTemplate;
        StringListAssign(memHtmlHeader.Lines, JanuaServerPgFootball.HtmlHead.Text, True);
        StringListAssign(memRankingPage.Lines, JanuaServerPgFootball.TemplateRankingPage, True);
        StringListAssign(memRankingTableHeader.Lines,
          JanuaServerPgFootball.TemplateRankingHead, True);
        StringListAssign(memRankingTableRows.Lines, JanuaServerPgFootball.TemplateRankingRow, True);
        StringListAssign(memTemplateMatchDayPage.Lines,
          JanuaServerPgFootball.TemplateMatchesPage, True);
        StringListAssign(memRankingTableHeader.Lines,
          JanuaServerPgFootball.TemplateRankingHead, True);
        StringListAssign(memRankingTableRows.Lines, JanuaServerPgFootball.TemplateRankingRow, True);
        StringListAssign(memRankingPage.Lines, JanuaServerPgFootball.TemplateRankingPage, True);
        StringListAssign(memRankingTableHeader.Lines,
          JanuaServerPgFootball.TemplateRankingHead, True);
        StringListAssign(memRankingTableRows.Lines, JanuaServerPgFootball.TemplateRankingRow, True);
      end;
    end;
end;

procedure TfrmTestFootball.FormCreate(Sender: TObject);
begin
  LoadText;

end;

procedure TfrmTestFootball.SpeedButton1Click(Sender: TObject);
begin
  SetChampionship;
  // Test della prima procedura apertura delle stagioni ...............................................................
  FdmJanuaCoreTesting.JanuaServerPgFootball.OpenSeasonsList;
  self.dsTestFootball.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsSeasons.MemDataset;
  self.memHtml.Lines.Text := self.FdmJanuaCoreTesting.JanuaServerPgFootball.Seasons.AsHtml(False);
end;

procedure TfrmTestFootball.SpeedButton2Click(Sender: TObject);
begin
  SetChampionship;
  FdmJanuaCoreTesting.JanuaServerPgFootball.OpenChampionshipsList;
  self.dsTestFootball.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsChampionships.MemDataset;
  self.memHtml.Lines.Text := self.FdmJanuaCoreTesting.JanuaServerPgFootball.Championships.AsHtml(True);
  // self.JanuaServerPgFootball1.
end;

procedure TfrmTestFootball.SpeedButton4Click(Sender: TObject);
begin
  SetChampionship;
  self.FdmJanuaCoreTesting.JanuaServerPgFootball.OpenRanking;
  CleanUp;

  self.dsTestFootball.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsChampRanking.MemDataset;
  self.dsChampionship.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsChampionship.MemDataset;

  self.advMemoJson.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.RankingsJson;

  FdmJanuaCoreTesting.JanuaServerPgFootball.HtmlHead.Assign(memHtmlHeader.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateRankingHead.Assign(memRankingTableHeader.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateRankingRow.Assign(memRankingTableRows.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateRankingPage.Assign(memRankingPage.Lines);

  memHtml.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.RankingHtmlPage;

  memHtml.Lines.SaveToFile('c:\januaproject\temp\testfootballrankings.html');
  self.WebBrowser1.Navigate('file://c:\januaproject\temp\testfootballrankings.html');

  // advMemoJson.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball
end;

procedure TfrmTestFootball.SpeedButton5Click(Sender: TObject);
begin
  SetChampionship;

  self.FdmJanuaCoreTesting.JanuaServerPgFootball.OpenMatches;
  self.dsTestFootball.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsMatches.MemDataset;
  self.dsChampionship.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsMatchDay.MemDataset;
  CleanUp;
  self.advMemoJson.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.matches.AsJsonPretty;

  FdmJanuaCoreTesting.JanuaServerPgFootball.HtmlHead.Assign(memHtmlHeader.Lines);

  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateMatchesPage.Assign
    (memTemplateMatchDayPage.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateMatchesHead.Assign
    (memTemplateMatchDayTable.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateMatchesRow.Assign
    (memTemplateMatchDayRows.Lines);

  memHtml.Lines.Clear;
  memHtml.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.MatchesHtmlPage;

  memHtml.Lines.SaveToFile('c:\januaproject\temp\testfootballmatches.html');
  self.WebBrowser1.Navigate('file://c:\januaproject\temp\testfootballmatches.html');

end;

procedure TfrmTestFootball.SpeedButton6Click(Sender: TObject);
begin
  SetChampionship;
  self.FdmJanuaCoreTesting.JanuaServerPgFootball.OpenGoalRanking;
  self.dsTestFootball.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsGolRanking.MemDataset;
  self.dsChampionship.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsChampionship.MemDataset;

  CleanUp;
  self.advMemoJson.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.GoalRankingJson;

  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateGoalRankingPage.Assign
    (self.memGoalRankingPage.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateGoalRankingHead.Assign
    (self.memGoalRankingHead.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateGoalRankingRow.Assign(memGoalRankingRows.Lines);

  memHtml.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.GoalRankingHtmlPage;

  memHtml.Lines.SaveToFile('c:\januaproject\temp\testfootballgoalranking.html');
  self.WebBrowser1.Navigate('file://c:\januaproject\temp\testfootballgoalranking.html');

end;

procedure TfrmTestFootball.SpeedButton7Click(Sender: TObject);
begin
  SetChampionship;
  self.FdmJanuaCoreTesting.JanuaServerPgFootball.OpenNextMatches;
  self.dsTestFootball.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsNextMatches.MemDataset;
  // self.dsChampionship.DataSet := FdmJanuaCoreTesting.JanuaServerPgFootball.cdsNextMatcheDay;

  CleanUp;

  self.edMatchDay.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.NextMatchDay.ToString;

  self.advMemoJson.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.NextMatches.AsJsonPretty;

  FdmJanuaCoreTesting.JanuaServerPgFootball.HtmlHead.Assign(memHtmlHeader.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateMatchesPage.Assign
    (self.memTemplateMatchDayPage.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateMatchesHead.Assign
    (self.memTemplateMatchDayTable.Lines);
  FdmJanuaCoreTesting.JanuaServerPgFootball.TemplateMatchesRow.Assign
    (self.memTemplateMatchDayRows.Lines);

  memHtml.Lines.Clear;
  memHtml.Lines.Text := FdmJanuaCoreTesting.JanuaServerPgFootball.NextMatchesHtmlPage;

  memHtml.Lines.SaveToFile('c:\januaproject\temp\testfootballnextmatches.html');
  self.WebBrowser1.Navigate('file://c:\januaproject\temp\testfootballnextmatches.html');
end;

procedure TfrmTestFootball.SpeedButton9Click(Sender: TObject);
begin
  // self.JanuaServerPgFootball1.OpenDefaultSeason := True;
  FdmJanuaCoreTesting.JanuaServerPgFootball.SessionKey :=
    '2d579dc29360d8bbfbb4aa541de5afa9384cf20f208b99bb435f5e6356a81b54';
  FdmJanuaCoreTesting.JanuaServerPgFootball.Activate;
end;

end.
