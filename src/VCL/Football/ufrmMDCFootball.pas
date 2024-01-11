unit ufrmMDCFootball;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.DBGrids, Vcl.StdCtrls, CRGrid, Vcl.Buttons, Vcl.Menus, Vcl.ImgList,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Data.DB,
  Janua.Vcl.Dialogs, Janua.Core.Classes, Janua.Core.CustomControls, DBAdvNavigator,
  Vcl.DBCtrls, Janua.Core.System, Janua.Core.Football, Janua.Vcl.EnhCRDBGrid,
  ufrmRichEdit, udlgFootballNewSeason, udlgFootballSelectSeason, udmFootballPostgres,
  udlgFootballSelectTeamLastSeason, udlgFootballClub, udlgFootballSelectTeamClubPlayers,
  udlgFootballPlayer, udlgFootballSelectMatchTeams, udlgSelectPlayerMatch, AdvOfficePager,
  AdvGlowButton, DBAdvGlowNavigator, AdvPanel, AdvOfficePagerStylers, AdvAppStyler, AdvSplitter,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvMenus, AdvMenuStylers, Janua.Vcl.TMSStyles, Shader,
  JvExControls, JvDBLookup, AdvMemo, AdvmSQLS, Janua.Core.Functions, Vcl.Mask, Vcl.OleCtrls,
  SHDocVw, Vcl.Clipbrd, W7Buttons, W7Classes, W7NaviButtons, AdvOfficeHint, uJanuaVCLfrmMDCModel,
  Janua.Postgres.Cloud, Janua.Core.Cloud, Vcl.ExtDlgs, System.ImageList, MemData, Janua.Core.Servers,
  Janua.Core.Cloud.Server, DBAccess, Uni, MemDS, Janua.Vcl.Grids, Janua.Football.Types, Vcl.WinXCtrls,
  AdvGroupBox,
  AdvOfficeButtons, AdvStyleIF, Janua.Components.Dialogs, Janua.Core.Commons;

type
  TfrmMdcFootballChampionship = class(TfrmJanuaMdcModel)
    pnlTeamsList: TShader;
    Panel4: TShader;
    grdTeamsChampionships: TEnhCRDBGrid;
    Splitter1: TAdvSplitter;
    pnlChampionshipsList: TShader;
    Panel7: TShader;
    grdChampionships: TEnhCRDBGrid;
    Splitter2: TAdvSplitter;
    Panel8: TShader;
    Panel9: TShader;
    Panel13: TShader;
    Panel14: TShader;
    grdMatchDays: TEnhCRDBGrid;
    Panel15: TShader;
    Panel16: TShader;
    Panel17: TShader;
    grdMatches: TEnhCRDBGrid;
    Panel18: TShader;
    Panel19: TShader;
    pnlEvents: TShader;
    Panel21: TShader;
    grdMatchEvents: TEnhCRDBGrid;
    Panel22: TShader;
    Panel20: TShader;
    grdMatchTeams: TEnhCRDBGrid;
    pnlTeamMembersList: TShader;
    Panel28: TShader;
    Panel29: TShader;
    grdTeamsChampPlayers: TCRDBGrid;
    pnlRankings: TShader;
    Panel34: TShader;
    popChamRanking: TAdvPopupMenu;
    ImageList1: TImageList;
    Classfiica1Colonna1: TMenuItem;
    Classifica6Colonne1: TMenuItem;
    Classifica8Colonne1: TMenuItem;
    N1: TMenuItem;
    Marcatori1: TMenuItem;
    Panel36: TShader;
    Panel37: TShader;
    btnSearchTeamChamps: TButtonedEdit;
    btnSearchChamp: TButtonedEdit;
    pnlSeasons: TShader;
    Panel47: TShader;
    grdSeasons: TEnhCRDBGrid;
    SpeedButton2: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    SpeedButton5: TAdvGlowButton;
    Panel1: TShader;
    Panel50: TShader;
    DBAdvNavigator4: TDBAdvGlowNavigator;
    ButtonedEditPlayers: TButtonedEdit;
    Label2: TLabel;
    grdAllPlayers: TEnhCRDBGrid;
    dsAllPlayers: TDataSource;
    Panel52: TShader;
    btnPlayerEdit: TAdvGlowButton;
    btnPlayerAssign: TAdvGlowButton;
    btnPlayerAdd: TAdvGlowButton;
    btnRetirePlayer: TAdvGlowButton;
    DBNavigator4: TDBAdvGlowNavigator;
    ButtonedEdit3: TButtonedEdit;
    Label4: TLabel;
    SpeedButton12: TAdvGlowButton;
    SpeedButton13: TAdvGlowButton;
    Panel38: TShader;
    navClubs: TDBAdvGlowNavigator;
    Label1: TLabel;
    btnEdiSearchClub: TButtonedEdit;
    grdClubs: TCRDBGrid;
    Panel61: TShader;
    Panel62: TShader;
    grdMatchTeamPlayers: TEnhCRDBGrid;
    Button6: TAdvGlowButton;
    Panel63: TShader;
    Panel65: TShader;
    Label5: TLabel;
    ButtonedEdit5: TButtonedEdit;
    PopupMenu2: TAdvPopupMenu;
    InserisciSquadraCasa1: TMenuItem;
    InseriscisquadraTrasferta1: TMenuItem;
    N2: TMenuItem;
    InserisciNuovaRiga1: TMenuItem;
    navMatchEvents: TDBAdvGlowNavigator;
    btnSaveMatch: TAdvGlowButton;
    Panel66: TShader;
    SpeedButton10: TAdvGlowButton;
    SpeedButton21: TAdvGlowButton;
    SpeedButton22: TAdvGlowButton;
    grdTeamsClubsLeagues: TEnhCRDBGrid;
    SpeedButton6: TAdvGlowButton;
    Button9: TAdvGlowButton;
    navMatches: TDBAdvGlowNavigator;
    btnMatchEvents: TAdvGlowButton;
    navMatchTeamPlayers: TDBAdvGlowNavigator;
    SpeedButton19: TAdvGlowButton;
    Splitter7: TAdvSplitter;
    SpeedButton20: TAdvGlowButton;
    popTabellino: TAdvPopupMenu;
    Sostituzione1: TMenuItem;
    Gol1: TMenuItem;
    Autogol1: TMenuItem;
    Ammonizione1: TMenuItem;
    Espulsione1: TMenuItem;
    Infortunio1: TMenuItem;
    GolRigore1: TMenuItem;
    AdvOfficePager1: TAdvOfficePager;
    pgChampionships: TAdvOfficePage;
    pgCalendarMatches: TAdvOfficePage;
    pgClubs: TAdvOfficePage;
    pgPlayers: TAdvOfficePage;
    DBAdvGlowNavigator1: TDBAdvGlowNavigator;
    Label9: TLabel;
    splitpnlChampionshipsList: TAdvSplitter;
    Splitter3: TAdvSplitter;
    splitpnlSeasons: TAdvSplitter;
    adgPagerRankings: TAdvOfficePager;
    pgRankings: TAdvOfficePage;
    pgPlayerScores: TAdvOfficePage;
    grdChampRanking: TCRDBGrid;
    grdGoalRanking: TCRDBGrid;
    Panel10: TPanel;
    pgClubsAnagraphs: TAdvOfficePager;
    pgClubsClub: TAdvOfficePage;
    pgClubsTeams: TAdvOfficePage;
    Panel48: TShader;
    Panel51: TShader;
    Panel5: TShader;
    grdTeamsClubsMain: TEnhCRDBGrid;
    Panel49: TShader;
    Label8: TLabel;
    SpeedButton11: TAdvGlowButton;
    navTeamsClubsMain: TDBAdvGlowNavigator;
    Button5: TAdvGlowButton;
    Panel53: TShader;
    Panel54: TShader;
    DBNavigator6: TDBAdvGlowNavigator;
    Button1: TAdvGlowButton;
    Button7: TAdvGlowButton;
    grdClubPlayers: TEnhCRDBGrid;
    Panel60: TShader;
    Panel55: TShader;
    Panel56: TShader;
    navTeamPlayers: TDBAdvGlowNavigator;
    Button3: TAdvGlowButton;
    Button4: TAdvGlowButton;
    grdTeamPlayers: TEnhCRDBGrid;
    Panel57: TShader;
    Panel58: TShader;
    Label3: TLabel;
    Button2: TAdvGlowButton;
    Button8: TAdvGlowButton;
    grdTeamPlayersLast: TEnhCRDBGrid;
    grdTeamRankings: TCRDBGrid;
    Shader24: TShader;
    navTeamsClubs: TDBAdvGlowNavigator;
    Shader25: TShader;
    grdTeamsClubs: TEnhCRDBGrid;
    grdTeamHistory: TEnhCRDBGrid;
    navTeamHistory: TDBAdvGlowNavigator;
    pgNavigator: TAdvOfficePage;
    AdvSplitter3: TAdvSplitter;
    AdvSplitter4: TAdvSplitter;
    AdvSplitter5: TAdvSplitter;
    Shader12: TShader;
    Shader13: TShader;
    EnhCRDBGrid9: TEnhCRDBGrid;
    Shader14: TShader;
    btnClubTeams: TButtonedEdit;
    Shader15: TShader;
    Shader16: TShader;
    EnhCRDBGrid10: TEnhCRDBGrid;
    Shader17: TShader;
    btnFootballClubs: TButtonedEdit;
    Shader18: TShader;
    Shader19: TShader;
    EnhCRDBGrid11: TEnhCRDBGrid;
    Shader20: TShader;
    btnTeamPlayers: TButtonedEdit;
    Shader21: TShader;
    Shader22: TShader;
    EnhCRDBGrid12: TEnhCRDBGrid;
    Shader23: TShader;
    btnSearchteam: TButtonedEdit;
    Shader1: TShader;
    AdvGlowButton1: TAdvGlowButton;
    Shader2: TShader;
    btnRankingExport: TAdvGlowButton;
    navChampRanking: TDBAdvGlowNavigator;
    AdvGlowButton3: TAdvGlowButton;
    popExportMatchDay: TAdvPopupMenu;
    ConRisultati1: TMenuItem;
    SenzaRisultati1: TMenuItem;
    AdvGlowButton4: TAdvGlowButton;
    popMatchEvents: TAdvPopupMenu;
    EsportaTabellino1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    pgQuery: TAdvOfficePage;
    Shader3: TShader;
    AdvGlowButton5: TAdvGlowButton;
    AdvMemo1: TAdvMemo;
    EnhCRDBGrid1: TEnhCRDBGrid;
    Splitter4: TAdvSplitter;
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    DBAdvGlowNavigator4: TDBAdvGlowNavigator;
    navTeamPlayersLast: TDBAdvGlowNavigator;
    AdvOfficePage2: TAdvOfficePage;
    Shader4: TShader;
    grdDynamicRanking: TEnhCRDBGrid;
    AdvGlowButton6: TAdvGlowButton;
    btnUpdateRankings: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    grdSelectAllPlayers: TDBGrid;
    Panel2: TPanel;
    grdMatchTeamAllPlayers: TEnhCRDBGrid;
    DBAdvGlowNavigator3: TDBAdvGlowNavigator;
    DBAdvGlowNavigator8: TDBAdvGlowNavigator;
    Shader5: TShader;
    AdvGlowButton9: TAdvGlowButton;
    navGolRanking: TDBAdvGlowNavigator;
    AdvGlowButton10: TAdvGlowButton;
    AdvSplitter2: TAdvSplitter;
    AnnullaSostituzione1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Shader6: TShader;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBText1: TDBText;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    popRosa: TAdvPopupMenu;
    AdvGlowButton12: TAdvGlowButton;
    N4Colonne1: TMenuItem;
    N5Colonne1: TMenuItem;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    AdvGlowButton13: TAdvGlowButton;
    N6Colonne1: TMenuItem;
    advPageBrowser: TAdvOfficePage;
    Shader7: TShader;
    WebBrowser1: TWebBrowser;
    edUrl: TButtonedEdit;
    popChampionships: TAdvPopupMenu;
    InserisciRisultati1: TMenuItem;
    InserisciprossimaGiornata1: TMenuItem;
    InserisciClassifica1: TMenuItem;
    Inserisci1: TMenuItem;
    W7NavigationButton1: TW7NavigationButton;
    W7SpeedButton1: TW7SpeedButton;
    W7NavigationButton2: TW7NavigationButton;
    Label19: TLabel;
    Label20: TLabel;
    N5: TMenuItem;
    Calcolatutto1: TMenuItem;
    N7Colonne1: TMenuItem;
    popRosaChampionship: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    Shader8: TShader;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    edClubPlayerFamilyName: TDBEdit;
    edClubPlayerName: TDBEdit;
    edClubPlayerBirth: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    CreaNuovaStagione1: TMenuItem;
    JanuaDialogSostituzione: TJanuaDialogInteger;
    pgClubsManageAnagraphs: TAdvOfficePage;
    Shader9: TShader;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label33: TLabel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit26: TDBEdit;
    Label36: TLabel;
    DBEdit27: TDBEdit;
    Label37: TLabel;
    DBEdit28: TDBEdit;
    Label38: TLabel;
    DBEdit29: TDBEdit;
    Label39: TLabel;
    EnhCRDBGrid4: TEnhCRDBGrid;
    Shader10: TShader;
    Label35: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit25: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit30: TDBEdit;
    Label40: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Shader11: TShader;
    cboSeasons: TJvDBLookupCombo;
    AdvGlowButton14: TAdvGlowButton;
    Label41: TLabel;
    Shader26: TShader;
    btnClubAnagraphNew: TAdvGlowButton;
    btnClubAnagraphEdit: TAdvGlowButton;
    btnClubAnagraphSave: TAdvGlowButton;
    btnClubAnagraphDelete: TAdvGlowButton;
    dbNavClubSubAnagraphs: TDBAdvGlowNavigator;
    pgFootballMarket: TAdvOfficePage;
    Shader27: TShader;
    DBAdvGlowNavigator10: TDBAdvGlowNavigator;
    EnhCRDBGrid5: TEnhCRDBGrid;
    PgQuery1: TUniQuery;
    PgDataSource1: TUniDataSource;
    JanuaGridController1: TJanuaGridController;
    btnImportMatch: TAdvGlowButton;
    btnSeasons: TAdvGlowButton;
    btnEditMatchTeamPlayer: TButtonedEdit;
    lbServerConnection: TLabel;
    AdvOfficePage1: TAdvOfficePage;
    memLogs: TAdvMemo;
    dsMatchTeams: TUniDataSource;
    N6: TMenuItem;
    Html1: TMenuItem;
    DBImage1: TDBImage;
    btnClubImage: TAdvGlowButton;
    OpenPictureDialog2: TOpenPictureDialog;
    AdvAppStyler1: TAdvAppStyler;
    Squadre1: TMenuItem;
    ArchivioImmagini1: TMenuItem;
    dsDynamicRanking: TDataSource;
    jvLookUpDayFrom: TJvDBLookupCombo;
    jvLookUpDayTo: TJvDBLookupCombo;
    dsMatchFrom: TDataSource;
    dsMatchTo: TDataSource;
    Label42: TLabel;
    Label43: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    btnPlayerInherit: TAdvGlowButton;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    AdvFormStyler2: TAdvFormStyler;
    dsRanking: TDataSource;
    dsTeamsChampPlayers: TDataSource;
    dsClubsAnagraph: TDataSource;
    dsClubs: TDataSource;
    dsTeamPlayers: TDataSource;
    pgUsersManagement: TAdvOfficePage;
    Shader28: TShader;
    DBAdvNavigator1: TDBAdvNavigator;
    btnUserAdd: TAdvGlowButton;
    btnUserRevokePayment: TAdvGlowButton;
    btnUserEnablePayment: TAdvGlowButton;
    EnhCRDBGrid2: TEnhCRDBGrid;
    Shader29: TShader;
    sbSearchUser: TSearchBox;
    rgSearchIndex: TAdvOfficeRadioGroup;
    lbUserID: TLabel;
    N7: TMenuItem;
    CalcolaOrigineGiocatori1: TMenuItem;
    CalcolaOrigineGiocatoriTutteleStagioni1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btnSearchteamKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Classifica6Colonne1Click(Sender: TObject);
    procedure btnSearchChampKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSearchTeamChampsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFootballClubsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnClubTeamsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnTeamPlayersKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure ButtonedEditPlayersKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonedEditPlayersChange(Sender: TObject);
    procedure btnEdiSearchClubChange(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure NavigatoreShow(Sender: TObject);
    procedure ClubsShow(Sender: TObject);
    procedure btnPlayerAssignClick(Sender: TObject);
    procedure grdTeamPlayersLastDblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure AnagraficheShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure btnPlayerEditClick(Sender: TObject);
    procedure btnPlayerAddClick(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure grdMatchTeamAllPlayersDblClick(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure tabMatchesShow(Sender: TObject);
    procedure tabMatchesHide(Sender: TObject);
    procedure Sostituzione1Click(Sender: TObject);
    procedure Gol1Click(Sender: TObject);
    procedure Autogol1Click(Sender: TObject);
    procedure Ammonizione1Click(Sender: TObject);
    procedure Infortunio1Click(Sender: TObject);
    procedure btnMatchEventsClick(Sender: TObject);
    procedure GolRigore1Click(Sender: TObject);
    procedure pgNavigatorShow(Sender: TObject);
    procedure pgChampionshipsShow(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure Classifica8Colonne1Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure pgCalendarMatchesShow(Sender: TObject);
    procedure grdMatchTeamsEnter(Sender: TObject);
    procedure btnUpdateRankingsClick(Sender: TObject);
    procedure ConRisultati1Click(Sender: TObject);
    procedure SenzaRisultati1Click(Sender: TObject);
    procedure Classfiica1Colonna1Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure pgRankingsShow(Sender: TObject);
    procedure btnSaveMatchClick(Sender: TObject);
    procedure AnnullaSostituzione1Click(Sender: TObject);
    procedure Espulsione1Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure ExportRosa(Sender: TObject);
    procedure edUrlClick(Sender: TObject);
    procedure AdvGlowButton14Click(Sender: TObject);
    procedure AdvGlowButton15Click(Sender: TObject);
    procedure AdvGlowButton16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LinkLabelMouseEnter(Sender: TObject);
    procedure LinkLabelClick(Sender: TObject; const Link: string; LinkType: TSysLinkType);
    procedure LinkLabelClick1(Sender: TObject);
    procedure InserisciRisultati1Click(Sender: TObject);
    procedure InserisciClassifica1Click(Sender: TObject);
    procedure Inserisci1Click(Sender: TObject);
    procedure Calcolatutto1Click(Sender: TObject);
    procedure N7Colonne1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure CreaNuovaStagione1Click(Sender: TObject);
    procedure btnClubAnagraphNewClick(Sender: TObject);
    procedure btnClubAnagraphSaveClick(Sender: TObject);
    procedure btnClubAnagraphEditClick(Sender: TObject);
    procedure pgFootballMarketShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure JanuaGridController1NeedColor(var aColor: TColor);
    procedure btnSeasonsClick(Sender: TObject);
    procedure btnImportMatchClick(Sender: TObject);
    procedure btnEditMatchTeamPlayerChange(Sender: TObject);
    procedure grdMatchesCellClick(Column: TColumn);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure btnClubImageClick(Sender: TObject);
    procedure ArchivioImmagini1Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure btnPlayerInheritClick(Sender: TObject);
    procedure sbSearchUserChange(Sender: TObject);
    procedure rgSearchIndexClick(Sender: TObject);
  private
    { Private declarations }
    FSelectedForm: TJanuaFooballForm;
    FJanuaTmsStyleManager: TJanuaTmsStyleManager;
    procedure CopyTeamPlayerLast;
    procedure SetJanuaTmsStyleManager(const Value: TJanuaTmsStyleManager);
    procedure ShowLog(aLog: TStrings);
    procedure RecordLog(aLog: string);
    procedure LoadPlayerImage;
    procedure CalculateMatch;
    procedure TabellinoOld;
    procedure TabellinoNew;
  public
    { Public declarations }
    property JanuaTmsStyleManager: TJanuaTmsStyleManager read FJanuaTmsStyleManager
      write SetJanuaTmsStyleManager;
  end;

var
  frmMdcFootballChampionship: TfrmMdcFootballChampionship;

implementation

{$R *.dfm}

uses System.StrUtils, System.Bindings.Helper,
  // Janua Library
  Janua.Vcl.HtmlPreviewDialog, ufrmTeamLogo, Janua.Core.Types, Janua.Application.Framework,
  // Janua forms
  udmPgAnagraph, udmFootballAnagraph, udlgSelectLkpPlayer, udmPgViewModelSystem, udmFootballController;

procedure TfrmMdcFootballChampionship.btnSearchteamKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if btnSearchteam.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryClubs.Filtered := True;
    dmFootballPostgres.qryClubs.Filter := 'search_name like ''%' + UpperCase(btnSearchteam.Text) + '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryClubs.Filtered := False;
  end;

end;

procedure TfrmMdcFootballChampionship.btnSeasonsClick(Sender: TObject);
begin
  inherited;
  ExecProc(
    procedure
    begin
      self.pnlSeasons.Visible := not self.pnlSeasons.Visible;
      self.splitpnlSeasons.Visible := self.pnlSeasons.Visible;
    end, 'btnSeasonsClick', self);
end;

procedure TfrmMdcFootballChampionship.btnTeamPlayersKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if btnClubTeams.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryTeams.Filtered := True;
    dmFootballPostgres.qryTeams.Filter := 'search_name like ''%' + UpperCase(btnClubTeams.Text) + '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryTeams.Filtered := False;
  end;
end;

procedure TfrmMdcFootballChampionship.Button1Click(Sender: TObject);
begin
  with dmFootballPostgres do
  begin
    if qryTeamPlayers.Locate('player_id', qryClubPlayersanagraph_id.AsInteger, []) then
    begin
      JanuaDialog1.JShowError('Attenzione il giocatore ? gi? in rosa per il team ' +
        dmFootballPostgres.qryTeamsClubsLeaguesteam_name.AsWideString, '', '');
      Exit;
    end;
    qryTeamPlayers.Append;
    qryTeamPlayersteam_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
    qryTeamPlayersplayer_id.AsInteger := qryClubPlayersanagraph_id.AsInteger;
    qryTeamPlayersseason_id.AsInteger := qryTeamsClubsLeaguesseason_id.AsInteger;
    qryTeamPlayerssince.AsDateTime := Date();
    qryTeamPlayersclub_origin_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
    qryTeamPlayersrole.AsInteger := qryClubPlayersrole.AsInteger;
  end;
end;

procedure TfrmMdcFootballChampionship.Button2Click(Sender: TObject);
var
  i: integer;
  TempBookmark: TBookMark;
begin

  for i := 0 to self.grdTeamPlayersLast.SelectedRows.Count - 1 do
  begin
    TempBookmark := grdTeamPlayersLast.SelectedRows.Items[i];
    dmFootballPostgres.qryTeamPlayersLast.GotoBookmark(TempBookmark);
    self.CopyTeamPlayerLast;
  end;

  dmFootballPostgres.qryTeamPlayersLast.Close;
  dmFootballPostgres.qryTeamPlayersLast.Open;

end;

procedure TfrmMdcFootballChampionship.Button3Click(Sender: TObject);
var
  a: TdlgFootballPlayer;
begin
  dmFootballPostgres.qryAllPlayers.Close;
  dmFootballPostgres.qryAllPlayers.Params[0].AsString := '%';
  dmFootballPostgres.qryAllPlayers.Params[1].AsInteger :=
    dmFootballPostgres.qryTeamPlayersplayer_id.AsInteger;
  dmFootballPostgres.qryAllPlayers.Open;

  a := TdlgFootballPlayer.Create(nil);
  try
    a.ShowModal;
  finally
    a.Free;
  end;
end;

procedure TfrmMdcFootballChampionship.Button6Click(Sender: TObject);
var
  a: TdlgFootballSelectTeamClubPlayers;
begin
  dmFootballPostgres.SelectedForm := jffChampionship;
  dmFootballPostgres.RefreshTeamClubPlayers(jffChampionship);

  a := TdlgFootballSelectTeamClubPlayers.Create(self);
  try
    a.FSelectedForm := jffChampionship;
    a.ShowModal;
  finally
    a.Free;
  end;

end;

procedure TfrmMdcFootballChampionship.Button7Click(Sender: TObject);
var
  a: TdlgFootballPlayer;
begin
  dmFootballPostgres.qryAllPlayers.Close;
  dmFootballPostgres.qryAllPlayers.Params[0].AsString := '%';
  dmFootballPostgres.qryAllPlayers.Params[1].AsInteger :=
    dmFootballPostgres.qryClubPlayersplayer_id.AsInteger;
  dmFootballPostgres.qryAllPlayers.Open;

  a := TdlgFootballPlayer.Create(nil);
  try
    a.ShowModal;
  finally
    a.Free
  end;

end;

procedure TfrmMdcFootballChampionship.Button8Click(Sender: TObject);
var
  a: TdlgFootballPlayer;
begin

  dmFootballPostgres.qryAllPlayers.Close;
  dmFootballPostgres.qryAllPlayers.Params[0].AsString := '%';
  dmFootballPostgres.qryAllPlayers.Params[1].AsInteger :=
    dmFootballPostgres.qryTeamPlayersLastplayer_id.AsInteger;
  dmFootballPostgres.qryAllPlayers.Open;

  a := TdlgFootballPlayer.Create(nil);
  try
    a.ShowModal;
  finally
    a.Free;
  end;

end;

procedure TfrmMdcFootballChampionship.Button9Click(Sender: TObject);
var
  a: TdlgFootballSelectMatchTeams;
begin
  a := TdlgFootballSelectMatchTeams.Create(self);
  try

    dmFootballPostgres.qrySelectVisitors.Close;
    dmFootballPostgres.qrySelectVisitors.ParamByName('match_day_number').AsInteger :=
      dmFootballPostgres.qryMatchDaysmatch_day_number.AsInteger;

    dmFootballPostgres.qrySelectHome.Close;
    dmFootballPostgres.qrySelectHome.ParamByName('match_day_number').AsInteger :=
      dmFootballPostgres.qryMatchDaysmatch_day_number.AsInteger;

    dmFootballPostgres.qrySelectVisitors.Open;
    dmFootballPostgres.qrySelectHome.Open;

    a.ShowModal;

    if a.ModalResult = mrOK then
      with dmFootballPostgres do
      begin
        dmFootballPostgres.qryVerificaMatches.Close;
        dmFootballPostgres.qryVerificaMatches.ParamByName('home_team_id').AsInteger :=
          qrySelectHometeam_id.AsInteger;
        dmFootballPostgres.qryVerificaMatches.ParamByName('visitors_team_id').AsInteger :=
          qrySelectVisitorsteam_id.AsInteger;
        dmFootballPostgres.qryVerificaMatches.Open;

        if qryVerificaMatches.RecordCount > 0 then
        begin
          self.JanuaDialog1.JShowError('Attenzione queste due squadre si incontrano gi? in campionato alla ' +
            qryVerificaMatchesmatch_day_number.AsWideString + '^ Giornata', '', '');
          Exit;
        end
        else
        begin
          qryMatches.Append;
          qryMatcheshome_team_id.AsInteger := qrySelectHometeam_id.Value;
          qryMatchesvisitors_team_id.AsInteger := qrySelectVisitorsteam_id.Value;
          qryMatches.Post;
        end;

      end;

  finally
    a.DisposeOf
  end;
end;

procedure TfrmMdcFootballChampionship.edUrlClick(Sender: TObject);
begin
  self.WebBrowser1.Navigate(edUrl.Text)
end;

procedure TfrmMdcFootballChampionship.btnEditMatchTeamPlayerChange(Sender: TObject);
begin
  dmFootballPostgres.qryMatchTeamAllPlayers.Close;
  dmFootballPostgres.qryMatchTeamAllPlayers.ParamByName('search_name').AsWideString :=
    Trim(self.btnEditMatchTeamPlayer.Text) + '%';
  dmFootballPostgres.qryMatchTeamAllPlayers.Open;
end;

procedure TfrmMdcFootballChampionship.ButtonedEditPlayersChange(Sender: TObject);
begin
  dmFootballPostgres.qryAllPlayers.Close;
  dmFootballPostgres.qryAllPlayers.Params[0].AsString := self.ButtonedEditPlayers.Text;
  dmFootballPostgres.qryAllPlayers.Params[1].AsInteger := 0;
  dmFootballPostgres.qryAllPlayers.Open;
end;

procedure TfrmMdcFootballChampionship.ButtonedEditPlayersKeyUp(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  {
    if btnEdiSearchClub.Text > '' then
    begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryClubs.Filtered := True;
    dmFootballPostgres.qryClubs.Filter := 'league_name like ''%' + (btnEdiSearchClub.Text) +
    '%' + '''';
    end
    else
    begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryChampionships.Filtered := False;
    end;
  }
end;

procedure TfrmMdcFootballChampionship.btnClubAnagraphEditClick(Sender: TObject);
begin
  inherited;
  if dmFootballAnagraph.dsSubAngraphs.DataSet.Active then
  begin
    dmFootballAnagraph.dsSubAngraphs.DataSet.Edit;
  end;
end;

procedure TfrmMdcFootballChampionship.btnClubAnagraphNewClick(Sender: TObject);
begin
  inherited;
  if dmFootballAnagraph.dsSubAngraphs.DataSet.Active then
    dmFootballAnagraph.dsSubAngraphs.DataSet.Append

end;

procedure TfrmMdcFootballChampionship.btnClubAnagraphSaveClick(Sender: TObject);
begin
  inherited;
  if dmFootballAnagraph.dsSubAngraphs.DataSet.State in [dsInsert, dsEdit] then
    dmFootballAnagraph.dsSubAngraphs.DataSet.Post
end;

procedure TfrmMdcFootballChampionship.btnClubImageClick(Sender: TObject);
begin
  inherited;
  if self.OpenPictureDialog2.Execute then
  begin
    dmFootballPostgres.qryClubs.Edit;
    dmFootballPostgres.qryClubsclub_name.AsWideString :=
      dmFootballPostgres.qryClubsclub_name.AsWideString + ' ';
    self.DBImage1.Picture.LoadFromFile(self.OpenPictureDialog2.FileName);
    dmFootballPostgres.qryClubs.Post;
    dmFootballPostgres.qryClubs.Edit;
    dmFootballPostgres.qryClubsclub_name.AsWideString :=
      Trim(dmFootballPostgres.qryClubsclub_name.AsWideString);
    dmFootballPostgres.qryClubs.Post;
  end;

end;

procedure TfrmMdcFootballChampionship.btnClubTeamsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if btnClubTeams.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryTeams.Filtered := True;
    dmFootballPostgres.qryTeams.Filter := 'search_name like ''%' + UpperCase(btnClubTeams.Text) + '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryTeams.Filtered := False;
  end;

end;

procedure TfrmMdcFootballChampionship.btnEdiSearchClubChange(Sender: TObject);
begin
  if btnEdiSearchClub.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryClubs.Filtered := True;
    dmFootballPostgres.qryClubs.Filter := 'lower(club_name) like ''%' + LowerCase(btnEdiSearchClub.Text) +
      '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryChampionships.Filtered := False;
  end;
end;

procedure TfrmMdcFootballChampionship.btnFootballClubsKeyUp(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  if btnFootballClubs.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryClubs.Filtered := True;
    dmFootballPostgres.qryClubs.Filter := 'upper(search_name) like ''%' + UpperCase(btnFootballClubs.Text) +
      '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryClubs.Filtered := False;
  end;
end;

procedure TfrmMdcFootballChampionship.btnImportMatchClick(Sender: TObject);
var
  i: integer;
  a: TfrmRichEdit;
  v: TStringList;
  s: string;
begin
  // if not Assigned(a) then
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.ShowModal;
    s := a.AdvMemo1.Lines.Text;
  finally
    a.DisposeOf;
    a := nil;
  end;
  s := stringreplace(s, ' (', ',', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '(', ',', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '0', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '1', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '2', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '3', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '4', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '5', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '6', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '7', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '8', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, '9', '', [rfReplaceAll, rfIgnoreCase]);
  s := stringreplace(s, ')', '', [rfReplaceAll, rfIgnoreCase]);

  v := TStringList.Create;
  try
    v.Delimiter := ',';
    v.DelimitedText := s;
    for i := 0 to v.Count - 1 do
    begin
      { after  := stringreplace(before, ' a ', ' THE ',
        [rfReplaceAll, rfIgnoreCase]);
      }
      btnEditMatchTeamPlayer.Text := stringreplace(Trim(v[i].ToLower), ' ', '%',
        [rfReplaceAll, rfIgnoreCase]);
      self.btnEditMatchTeamPlayerChange(self);
      if dmFootballPostgres.qryMatchTeamAllPlayers.RecordCount > 0 then
      begin
        grdMatchTeamAllPlayersDblClick(self);
      end
      else
      begin
        ButtonedEditPlayers.Text := stringreplace(Trim(v[i].ToLower), ' ', '%', [rfReplaceAll, rfIgnoreCase]);
        self.ButtonedEditPlayersChange(self);
        if dmFootballPostgres.qryAllPlayers.RecordCount = 1 then
        begin
          if self.JanuaDialog1.JMessageDlg('Attenzione Inserisco: ' +
            dmFootballPostgres.qryAllPlayersfullname.AsWideString) then
          begin
            btnPlayerAssignClick(self);
            grdMatchTeamAllPlayersDblClick(self);
          end;
        end
        else if dmFootballPostgres.qryAllPlayers.RecordCount > 0 then
        begin
          if self.JanuaDialog1.JMessageDlg('Attenzione seleziono il giocatore dalla lista?') then
          begin
            btnPlayerAssignClick(self);
            grdMatchTeamAllPlayersDblClick(self);
          end;
        end
        else if dmFootballPostgres.qryAllPlayers.RecordCount = 0 then
        begin
          if self.JanuaDialog1.JMessageDlg('Attenzione Inserisco un nuovo giocatore?') then
          begin
            Clipboard.AsText := Trim(v[i]);
            btnPlayerAddClick(self);
            btnPlayerAssignClick(self);
            grdMatchTeamAllPlayersDblClick(self);
          end;
        end;
      end;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;

  self.JanuaDialog1.JShowMessage('Inserimento terminato');
end;

procedure TfrmMdcFootballChampionship.btnSearchTeamChampsKeyUp(Sender: TObject; var Key: Word;
Shift: TShiftState);
begin
  if btnSearchTeamChamps.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryTeamsChampionships.Filtered := True;
    dmFootballPostgres.qryTeamsChampionships.Filter := 'team_name like ''%' + (btnSearchTeamChamps.Text) +
      '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryTeamsChampionships.Filtered := False;
  end;

end;

procedure TfrmMdcFootballChampionship.btnSaveMatchClick(Sender: TObject);
begin
  CalculateMatch;
end;

procedure TfrmMdcFootballChampionship.btnSearchChampKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if btnSearchChamp.Text > '' then
  begin
    // se ? scritto qualcosa .....
    dmFootballPostgres.qryChampionships.Filtered := True;
    dmFootballPostgres.qryChampionships.Filter := 'league_name like ''%' + (btnSearchChamp.Text) + '%' + '''';
  end
  else
  begin
    // nel caso che non sia scritto nulla .....
    dmFootballPostgres.qryChampionships.Filtered := False;
  end;
end;

procedure TfrmMdcFootballChampionship.Calcolatutto1Click(Sender: TObject);
begin
  dmFootballPostgres.qryMatchDays.First;
  grdMatches.DataSource := nil;
  grdMatchEvents.DataSource := nil;
  grdMatchTeams.DataSource := nil;
  grdMatchTeamPlayers.DataSource := nil;
  try
    while not dmFootballPostgres.qryMatchDays.eof do
    begin
      dmFootballPostgres.qryMatches.First;
      while not dmFootballPostgres.qryMatches.eof do
      begin
        dmFootballPostgres.CalculateMatch;
        dmFootballPostgres.qryMatches.Next;
      end;
      dmFootballPostgres.qryMatchDays.Next;
    end;

    JShowMessage('Operazione Terminata');
  finally
    grdMatches.DataSource := dmFootballPostgres.dsMatches;
    grdMatchEvents.DataSource := dmFootballPostgres.dsMatchEvents;
    grdMatchTeams.DataSource := dsMatchTeams;
    grdMatchTeamPlayers.DataSource := dmFootballPostgres.dsMatchTeamPlayers;
  end;

end;

procedure TfrmMdcFootballChampionship.Classfiica1Colonna1Click(Sender: TObject);
var
  i: integer;
  a: TfrmRichEdit;
begin
  // if not Assigned(a) then
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    btnUpdateRankingsClick(Sender);
    a.AdvMemo1.Clear;
    if dmFootballPostgres.qryChampRanking.RecordCount > 0 then
    begin
      i := 0;
      dmFootballPostgres.qryChampRanking.First;
      while not dmFootballPostgres.qryChampRanking.eof do
      begin
        if dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString.Length > i then
          i := dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString.Length + 2;
        dmFootballPostgres.qryChampRanking.Next;
      end;

      dmFootballPostgres.qryChampRanking.First;
      while not dmFootballPostgres.qryChampRanking.eof do
      begin
        a.AdvMemo1.Lines.Add(Rpad(dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString, i, ' ') + #9 +
          dmFootballPostgres.qryChampRankingPoints.AsWideString);
        dmFootballPostgres.qryChampRanking.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.Classifica6Colonne1Click(Sender: TObject);
var
  i: integer;
  a: TfrmRichEdit;
begin
  // if not Assigned(a) then
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    btnUpdateRankingsClick(Sender);
    a.AdvMemo1.Clear;
    if dmFootballPostgres.qryChampRanking.RecordCount > 0 then
    begin
      i := 0;
      dmFootballPostgres.qryChampRanking.First;
      while not dmFootballPostgres.qryChampRanking.eof do
      begin
        if dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString.Length > i then
          i := dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString.Length + 2;
        dmFootballPostgres.qryChampRanking.Next;
      end;

      dmFootballPostgres.qryChampRanking.First;
      while not dmFootballPostgres.qryChampRanking.eof do
      begin
        a.AdvMemo1.Lines.Add(Rpad(dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString, i, ' ') + #9 +
          dmFootballPostgres.qryChampRankingPoints.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingwon_matches.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingtied_matches.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingLost_matches.AsWideString + #9 +
          dmFootballPostgres.qryChampRankinggoal_done.AsWideString + #9 +
          dmFootballPostgres.qryChampRankinggoal_lost.AsWideString);
        dmFootballPostgres.qryChampRanking.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.Classifica8Colonne1Click(Sender: TObject);
var
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;
    if dmFootballPostgres.qryChampRanking.RecordCount > 0 then
    begin
      dmFootballPostgres.qryChampRanking.First;
      while not dmFootballPostgres.qryChampRanking.eof do
      begin
        a.AdvMemo1.Lines.Add(dmFootballPostgres.qryChampRankinglkpTeamName.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingcalcPunti.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingwon_matches.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingtied_matches.AsWideString + #9 +
          dmFootballPostgres.qryChampRankingLost_matches.AsWideString + #9 +
          dmFootballPostgres.qryChampRankinggoal_done.AsWideString + #9 +
          dmFootballPostgres.qryChampRankinggoal_lost.AsWideString);
        dmFootballPostgres.qryChampRanking.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.ClubsShow(Sender: TObject);
begin
  FSelectedForm := TJanuaFooballForm.jffClubs;
end;

procedure TfrmMdcFootballChampionship.FormCreate(Sender: TObject);
begin
  // self.WebBrowser1.Navigate('http://www.settimanasport.com');
  with TJanuaApplication do
  begin
    lbServerConnection.Caption := JanuaServerConf.Address + ':' + JanuaServerConf.Port.ToString + ':' +
      JanuaServerConf.DatabaseName + ' - ' + JanuaServerConf.Schema;
  end;
  // AdvOfficePagerOfficeStyler1.Style := TOfficePagerStyle.psWindows10;

  // ------------------------------------------------------------------------------------
  // View Model Binding Interface to View Model
  // ------------------------------------------------------------------------------------
  { TODO: Connect View Model Bindings to real User Session in Application
    Application.CreateForm(TdmPgSystemViewModel, dmPgSystemViewModel);
    dmPgSystemViewModel.DBUserSearch.Bind('SearchName', sbSearchUser, 'Text');
    dmPgSystemViewModel.DBUserSearch.Bind('SearchIndex', rgSearchIndex, 'ItemIndex');
    dmPgSystemViewModel.DBUserSearch.Bind('DBUserID', lbUserID, 'Caption');
  }
end;

procedure TfrmMdcFootballChampionship.FormShow(Sender: TObject);
begin
  if not Assigned(dmFootballPostgres) then
    Application.CreateForm(TdmFootballPostgres, dmFootballPostgres);

  if not Assigned(dmFootballController) then
    Application.CreateForm(TdmFootballController, dmFootballController);

  grdSeasons.DataSource := dmFootballPostgres.dsSeasons;
  dmFootballPostgres.Activate;
  // Application.CreateForm(TdmFootballPlayerAnagraph, dmFootballPlayerAnagraph);
  // dmFootballPlayerAnagraph.ServerConf := FServerConf;
  Application.CreateForm(TdmFootballAnagraph, dmFootballAnagraph);
  // dmFootballAnagraph.ServerConf := FServerConf;
  dmFootballPostgres.JanuaDMAnagraph := dmFootballAnagraph;
  jvLookUpDayTo.Value := dmFootballPostgres.lkpMatchDaysTomatch_day_number.AsString;
  self.grdChampionships.DataSource := dmFootballPostgres.dsChampionships;
  self.grdTeamsChampionships.DataSource := dmFootballPostgres.dsTeamChampionships;
  self.grdMatchTeamAllPlayers.DataSource := dmFootballPostgres.dsMatchTeamAllPlayers;
  self.grdTeamsChampPlayers.DataSource := dmFootballPostgres.dsTeamChampPlayers;
  grdTeamsClubs.DataSource := dmFootballPostgres.dsTeams;
  self.dsAllPlayers.DataSet := dmFootballPostgres.qryAllPlayers;
  self.grdMatchTeamAllPlayers.DataSource := dmFootballPostgres.dsMatchTeamAllPlayers;

  // ---------------------------------------------------------------------------------------------
  // ----------------- Navigator -----------------------------------------------------------------
  // ---------------------------------------------------------------------------------------------
  cboSeasons.Value := dmFootballPostgres.qrySeasonsseason_id.AsWideString;

  // ---------------------------------------------------------------------------------------------
  // ----------------- Rankings ------------------------------------------------------------------
  // ---------------------------------------------------------------------------------------------
  self.navChampRanking.DataSource := dmFootballPostgres.dsChampRanking;
  self.grdChampRanking.DataSource := dmFootballPostgres.dsChampRanking;
  self.navGolRanking.DataSource := dmFootballPostgres.dsGolRanking;
  self.dsDynamicRanking.DataSet := dmFootballPostgres.qryDynamicRanking;
  self.jvLookUpDayFrom.Value := '1';
  dsMatchFrom.DataSet := dmFootballPostgres.lkpMatchDaysFrom;
  dsMatchTo.DataSet := dmFootballPostgres.lkpMatchDaysTo;
  dmFootballPostgres.lkpMatchDaysTo.Open;
  dmFootballPostgres.lkpMatchDaysTo.Last;
  self.jvLookUpDayTo.Value := dmFootballPostgres.lkpMatchDaysTomatch_day_number.AsString;
  self.grdGoalRanking.DataSource := dmFootballPostgres.dsGolRanking;

  // ---------------------------------------------------------------------------------------------
  // ----------------- Clubs & Teams -------------------------------------------------------------
  // ---------------------------------------------------------------------------------------------

  // Navigator
  dsClubs.DataSet := dmFootballPostgres.qryClubs;
  self.navClubs.DataSource := dsClubs;
  self.grdClubs.DataSource := dsClubs;
  self.grdTeamsClubsLeagues.DataSource := dmFootballPostgres.dsTeamsClubsLeagues;

  // First Page
  // Teams Club League.
  self.grdTeamsClubsMain.DataSource := dmFootballPostgres.dsTeams;
  self.navTeamsClubsMain.DataSource := dmFootballPostgres.dsTeams;
  // all club Players
  self.grdClubPlayers.DataSource := dmFootballPostgres.dsClubPlayers;
  // Team Club Players
  self.dsTeamsChampPlayers.DataSet := dmFootballPostgres.qryTeamChampPlayers;
  self.dsTeamPlayers.DataSet := dmFootballPostgres.qryTeamPlayers;
  // Team Players Last
  self.grdTeamPlayersLast.DataSource := dmFootballPostgres.dsTeamLastSeason;
  self.navTeamPlayersLast.DataSource := dmFootballPostgres.dsTeamLastSeason;

  // Team Clubs
  self.grdTeamsClubs.DataSource := dmFootballPostgres.dsTeamsClubsLeagues;
  self.navTeamsClubs.DataSource := dmFootballPostgres.dsTeamsClubsLeagues;
  self.grdTeamRankings.DataSource := dmFootballPostgres.dsTeamRankings;
  self.navTeamHistory.DataSource := dmFootballPostgres.dsTeamHistory;
  self.grdTeamHistory.DataSource := dmFootballPostgres.dsTeamHistory;

  grdTeamRankings.DataSource := dmFootballPostgres.dsTeamRankings;

  // ---------------------------------------------------------------------------------------------
  // ----------------- Matches -------------------------------------------------------------------
  // ---------------------------------------------------------------------------------------------
  self.grdMatchDays.DataSource := dmFootballPostgres.dsMatchDays;
  self.grdMatches.DataSource := dmFootballPostgres.dsMatches;
  self.grdMatchEvents.DataSource := dmFootballPostgres.dsMatchEvents;
  self.grdMatchTeamPlayers.DataSource := dmFootballPostgres.dsMatchTeamPlayers;
  self.dsMatchTeams.DataSet := dmFootballPostgres.qryMatchTeams;
  self.navMatchEvents.DataSource := dmFootballPostgres.dsMatchEvents;
  self.navMatchTeamPlayers.DataSource := dmFootballPostgres.dsMatchTeamPlayers;
  self.grdMatchTeamPlayers.DataSource := dmFootballPostgres.dsMatchTeamPlayers;
  grdMatches.DataSource := dmFootballPostgres.dsMatches;
  self.grdMatchEvents.DataSource := dmFootballPostgres.dsMatchEvents;
  self.navMatches.DataSource := dmFootballPostgres.dsMatches;
  self.dsMatchTeams.DataSet := dmFootballPostgres.qryMatchTeams;
end;

procedure TfrmMdcFootballChampionship.Gol1Click(Sender: TObject);
begin
  {
    1;"Gol"
  }
  with dmFootballPostgres do
  begin
    dmFootballPostgres.qryMatchEvents.Append;
    self.JanuaDialogInteger1.Caption := 'Minuti di Gioco';
    self.JanuaDialogInteger1.Execute;
    qryMatchEventsplayer_id.AsInteger := qryMatchTeamPlayersplayer_id.AsInteger;
    qryMatchEventsevent_id.AsInteger := 1;
    qryMatchEventsminute.AsInteger := JanuaDialogInteger1.Number;
    qryMatchEventsfavor_team_id.AsInteger := qryMatchTeamPlayersteam_id.AsInteger;
    qryMatchEventsteam_id.AsInteger := qryMatchTeamPlayersteam_id.AsInteger;
    qryMatchEventsvalue.AsInteger := 1;
    dmFootballPostgres.qryMatchEvents.Post;
    dmFootballPostgres.qryMatchEvents.Close;
    dmFootballPostgres.qryMatchEvents.Open;
  end;
  CalculateMatch;

end;

procedure TfrmMdcFootballChampionship.GolRigore1Click(Sender: TObject);
begin
  {
    1;"Gol"
  }
  with dmFootballPostgres do
  begin
    dmFootballPostgres.qryMatchEvents.Append;
    self.JanuaDialogInteger1.Caption := 'Minuti di Gioco';
    self.JanuaDialogInteger1.Execute;
    qryMatchEventsplayer_id.AsInteger := qryMatchTeamPlayersplayer_id.AsInteger;
    qryMatchEventsevent_id.AsInteger := 1;
    qryMatchEventsminute.AsInteger := JanuaDialogInteger1.Number;
    qryMatchEventsfavor_team_id.AsInteger := qryMatchTeamPlayersteam_id.AsInteger;
    qryMatchEventsteam_id.AsInteger := qryMatchTeamPlayersteam_id.AsInteger;
    qryMatchEventsvalue.AsInteger := 1;
    qryMatchEventsnotes.AsWideString := 'Rig.';
    dmFootballPostgres.qryMatchEvents.Post;
    dmFootballPostgres.qryMatchEvents.Close;
    dmFootballPostgres.qryMatchEvents.Open;
  end;
  CalculateMatch;
end;

procedure TfrmMdcFootballChampionship.grdTeamPlayersLastDblClick(Sender: TObject);
var
  id: integer;
begin
  CopyTeamPlayerLast;
  if not dmFootballPostgres.qryTeamPlayersLast.Bof then
  begin
    dmFootballPostgres.qryTeamPlayersLast.Prior;
    id := dmFootballPostgres.qryTeamPlayersLastplayer_id.AsInteger
  end
  else
    id := -1;

  dmFootballPostgres.qryTeamPlayersLast.Close;
  dmFootballPostgres.qryTeamPlayersLast.Open;

  dmFootballPostgres.qryTeamPlayersLast.Locate('player_id', id, []);
end;

procedure TfrmMdcFootballChampionship.Infortunio1Click(Sender: TObject);
begin
  {
    3;"Infortunio"
  }
  {
    7;"Espulsione"
  }

  if dmFootballPostgres.qryMatchTeamPlayerssubst_id.AsInteger <> 0 then
  begin
    JanuaDialog1.JShowError('Attenzione giocatore gi? sostituito',
      'id sostituzione : ' + dmFootballPostgres.qryMatchTeamPlayerssubst_id.AsString, '');
    Exit;
  end;

  JanuaDialogSostituzione.Execute;

  if dmFootballPostgres.qryMatchTeamPlayersSince.AsInteger > JanuaDialogSostituzione.Number then
  begin
    JanuaDialog1.JShowError('Attenzione espulsione non applicabile,  entrato al ' +
      dmFootballPostgres.qryMatchTeamPlayersSince.AsString,
      'non potete inserire una ammonizione o espulsione ad un giocatore prima che entri in campo .....', '');
  end
  else
    with dmFootballPostgres do
    begin

      begin
        qryMatchTeamPlayers.Edit;

        if JanuaDialogSostituzione.Number > 90 then
          qryMatchTeamPlayersUntil.AsInteger := 90
        else
          qryMatchTeamPlayersUntil.AsInteger := JanuaDialogSostituzione.Number;

        dmFootballPostgres.qrymatchteamplayersInjuries.AsInteger := 1;

        qryMatchTeamPlayersminutes.AsInteger := qryMatchTeamPlayersUntil.AsInteger -
          qryMatchTeamPlayersSince.AsInteger + 1;

        qryMatchTeamPlayers.Post;
      end

    end;

end;

procedure TfrmMdcFootballChampionship.Inserisci1Click(Sender: TObject);
begin
  Clipboard.AsText :=
    '<iframe src="http://sportmedia.ergomercator.com?page=goalranking&type=iFrame&league_id=' +
    dmFootballPostgres.qryChampionshipsleague_id.AsString +
    '" width="340" height="800" frameborder="no"></iframe>';
end;

procedure TfrmMdcFootballChampionship.InserisciClassifica1Click(Sender: TObject);
begin
  Clipboard.AsText := '<iframe src="http://sportmedia.ergomercator.com?page=ranking&type=iFrame&league_id=' +
    dmFootballPostgres.qryChampionshipsleague_id.AsString +
    '" width="340" height="800" frameborder="no"></iframe>';
end;

procedure TfrmMdcFootballChampionship.InserisciRisultati1Click(Sender: TObject);
begin
  Clipboard.AsText := '<iframe src="http://sportmedia.ergomercator.com?page=match&type=iFrame&league_id=' +
    dmFootballPostgres.qryChampionshipsleague_id.AsString +
    '" width="340" height="800" frameborder="no"></iframe>';

end;

procedure TfrmMdcFootballChampionship.JanuaGridController1NeedColor(var aColor: TColor);
begin
  inherited;
  if dmFootballPostgres.qryMatchessuspended.AsBoolean then
    aColor := clRed
  else if dmFootballPostgres.qryMatchesforfeit.AsBoolean then
    aColor := clBlue
  else if dmFootballPostgres.qryMatchespostponed.AsBoolean then
    aColor := clFuchsia
end;

procedure TfrmMdcFootballChampionship.LinkLabelMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clBlue;
  TLabel(Sender).Font.Style := [fsUnderline];
  TLabel(Sender).Invalidate;
end;

procedure TfrmMdcFootballChampionship.LoadPlayerImage;
begin
end;

procedure TfrmMdcFootballChampionship.CalculateMatch;
begin
  if not dmFootballPostgres.CalculateMatch then
    self.JanuaDialog1.JShowError(dmFootballPostgres.LastErrorMessage, dmFootballPostgres.Log, '')
    // serviva solo in fase di Test del programma ....
  else
    self.RecordLog(dmFootballPostgres.Log);
end;

procedure TfrmMdcFootballChampionship.MenuItem1Click(Sender: TObject);
var
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;

    a.AdvMemo1.Lines.Add('ruolo' + #9 + 'cognome e nome' + #9 + 'nascita' + #9 + 'prov' + #9 + 'pres' + #9 +
      'min' + #9 + 'gol');

    if dmFootballPostgres.qryTeamChampPlayers.RecordCount > 0 then
    begin
      dmFootballPostgres.qryTeamChampPlayers.First;
      while not dmFootballPostgres.qryTeamChampPlayers.eof do
      begin
        a.AdvMemo1.Lines.Add(dmFootballPostgres.qryTeamChampPlayersRole_Code.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayersfamily_name.AsWideString + ' ' +
          dmFootballPostgres.qryTeamChampPlayersfirst_name.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayersbirth_date.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayerslkpOriginClubName.AsWideString);
        dmFootballPostgres.qryTeamChampPlayers.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.Free;
  end;
end;

procedure TfrmMdcFootballChampionship.MenuItem2Click(Sender: TObject);
var
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;
    a.AdvMemo1.Lines.Add('ruolo' + #9 + 'cognome e nome' + #9 + 'nascita' + #9 + 'prov' + #9 + 'pres');
    if dmFootballPostgres.qryTeamChampPlayers.RecordCount > 0 then
    begin
      dmFootballPostgres.qryTeamChampPlayers.First;
      while not dmFootballPostgres.qryTeamChampPlayers.eof do
      begin
        a.AdvMemo1.Lines.Add(dmFootballPostgres.qryTeamChampPlayersRole_Code.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayersfamily_name.AsWideString + ' ' +
          dmFootballPostgres.qryTeamChampPlayersfirst_name.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayersbirth_date.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayerslkpOriginClubName.AsWideString + #9 +
          dmFootballPostgres.qryTeamChampPlayersmatches.AsWideString);
        dmFootballPostgres.qryTeamChampPlayers.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.Free;
  end;

end;

procedure TfrmMdcFootballChampionship.MenuItem3Click(Sender: TObject);
var
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;

    a.AdvMemo1.Lines.Add('ruolo' + #9 + 'cognome e nome' + #9 + 'nascita' + #9 + 'prov' + #9 + 'pres' + #9 +
      #9 + 'gol');

    if dmFootballPostgres.qryTeamPlayers.RecordCount > 0 then
    begin
      dmFootballPostgres.qryTeamPlayers.First;
      while not dmFootballPostgres.qryTeamPlayers.eof do
      begin
        a.AdvMemo1.Lines.Add(dmFootballPostgres.qryTeamPlayerslkpRoleCode.AsWideString + #9 +
          UpperCase(dmFootballPostgres.qryTeamPlayersfamily_name.AsWideString) + ' ' +
          dmFootballPostgres.qryTeamPlayersfirst_name.AsWideString + #9 +
          dmFootballPostgres.qryTeamPlayersbirth_date.AsWideString + #9 +
          dmFootballPostgres.qryTeamPlayerslkpOriginClubName.AsWideString + #9 +
          dmFootballPostgres.qryTeamPlayersmatches.AsWideString + #9 +
          dmFootballPostgres.qryTeamPlayersgoal.AsWideString);
        dmFootballPostgres.qryTeamPlayers.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.MenuItem4Click(Sender: TObject);
var
  a: TfrmRichEdit;
  s: string;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;

    a.AdvMemo1.Lines.Add('ruolo' + #9 + 'cognome e nome' + #9 + 'nascita' + #9 + 'prov' + #9 + 'pres' + #9 +
      'min' + #9 + 'gol');

    if dmFootballPostgres.qryTeamChampPlayers.RecordCount > 0 then
      with dmFootballPostgres do
      begin
        dmFootballPostgres.qryTeamChampPlayers.First;
        while not dmFootballPostgres.qryTeamChampPlayers.eof do
        begin
          s := IfThen(qryTeamChampPlayerslostgoal.AsInteger > 0, IfThen(qryTeamChampPlayersgoal.AsInteger > 0,
            qryTeamChampPlayersgoal.AsWideString + '/', '') + '-' + qryTeamChampPlayerslostgoal.AsWideString,
            qryTeamChampPlayersgoal.AsWideString);

          a.AdvMemo1.Lines.Add(dmFootballPostgres.qryTeamChampPlayersRole_Code.AsWideString + #9 +
            dmFootballPostgres.qryTeamChampPlayersfamily_name.AsWideString + ' ' +
            dmFootballPostgres.qryTeamChampPlayersfirst_name.AsWideString + #9 +
            dmFootballPostgres.qryTeamChampPlayersbirth_date.AsWideString + #9 +
            dmFootballPostgres.qryTeamChampPlayerslkpOriginClubName.AsWideString + #9 +
            dmFootballPostgres.qryTeamChampPlayersmatches.AsWideString + #9 +
            dmFootballPostgres.qryTeamChampPlayersminutes.AsWideString + #9 + s
          // dmFootballPostgres.qryTeamChampPlayersgoal.AsWideString
            );
          dmFootballPostgres.qryTeamChampPlayers.Next;
        end;
        a.ShowModal;
      end;
  finally
    a.Free;
  end;
end;

procedure TfrmMdcFootballChampionship.LinkLabelClick(Sender: TObject; const Link: string;
LinkType: TSysLinkType);
begin
  self.WebBrowser1.Navigate(TLinkLabel(Sender).Hint);
end;

procedure TfrmMdcFootballChampionship.LinkLabelClick1(Sender: TObject);
begin
  self.WebBrowser1.Navigate(TLabel(Sender).Hint);
end;

procedure TfrmMdcFootballChampionship.ConRisultati1Click(Sender: TObject);
var
  i: integer;
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;
    if dmFootballPostgres.qryMatches.RecordCount > 0 then
    begin
      i := 0;
      dmFootballPostgres.qryMatches.First;
      while not dmFootballPostgres.qryMatches.eof do
      begin
        if dmFootballPostgres.qryMatcheslkpHomeTeam.AsWideString.Length + 3 +
          dmFootballPostgres.qryMatcheslkpVisitorTeam.AsWideString.Length + 2 > i then
          i := dmFootballPostgres.qryMatcheslkpHomeTeam.AsWideString.Length + 3 +
            dmFootballPostgres.qryMatcheslkpVisitorTeam.AsWideString.Length + 2;

        dmFootballPostgres.qryMatches.Next;
      end;

      dmFootballPostgres.qryMatches.First;
      while not dmFootballPostgres.qryMatches.eof do
      begin
        a.AdvMemo1.Lines.Add(Rpad(dmFootballPostgres.qryMatcheslkpHomeTeam.AsWideString + ' - ' +
          dmFootballPostgres.qryMatcheslkpVisitorTeam.AsWideString, i, ' ') + #9 +
          dmFootballPostgres.qryMatchesgoal_home.AsString + ' - ' +
          dmFootballPostgres.qryMatchesgoal_visitor.AsString);
        dmFootballPostgres.qryMatches.Next;
      end;
      if dmFootballPostgres.qryMatchDaysrest_team_id.AsInteger > 0 then
      begin
        a.AdvMemo1.Lines.Add('');
        a.AdvMemo1.Lines.Add('Riposa: ' + dmFootballPostgres.qryMatchDayslkpRestTeam.AsWideString);
      end;

      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.CopyTeamPlayerLast;
begin
  with dmFootballPostgres do
  begin
    qryTeamPlayers.Append;
    qryTeamPlayersfamily_name.AsWideString := qryTeamPlayersLastfamily_name.AsWideString;
    qryTeamPlayersfirst_name.AsWideString := qryTeamPlayersLastfirst_name.AsWideString;
    qryTeamPlayersfullname.AsWideString := qryTeamPlayersLastfullname.AsWideString;
    qryTeamPlayersteam_id.AsInteger := qryTeamPlayersLastteam_id.AsInteger;
    qryTeamPlayersplayer_id.AsInteger := qryTeamPlayersLastplayer_id.AsInteger;
    qryTeamPlayersseason_id.AsInteger := dmFootballPostgres.qrySeasonsseason_id.AsInteger;
    qryTeamPlayersrole.AsInteger := qryTeamPlayersLastrole.AsInteger;
    qryTeamPlayers.Post;
  end;
end;

procedure TfrmMdcFootballChampionship.CreaNuovaStagione1Click(Sender: TObject);
var
  a: TdlgFootballNewSeason;
begin
  a := TdlgFootballNewSeason.Create(self);
  try
    dmFootballPostgres.qrySeasons.Append;
    a.ShowModal;
    if a.ModalResult = mrOK then
      try
        dmFootballPostgres.qrySeasons.Post;
        JanuaDialog1.JShowMessage('Stagione ' + dmFootballPostgres.qrySeasonsseason_des.AsWideString +
          ' creata corretamente', '', '');

      except
        on e: exception do
        begin
          JanuaDialog1.JShowError('Errore di Registrazione Stagione', e.Message, '');
        end;
      end;
  finally
    a.DisposeOf
  end;
end;

procedure TfrmMdcFootballChampionship.grdMatchTeamsEnter(Sender: TObject);
begin
  dmFootballPostgres.qryMatchTeamAllPlayers.Open;
end;

procedure TfrmMdcFootballChampionship.Espulsione1Click(Sender: TObject);
begin
  {
    7;"Espulsione"
  }

  if dmFootballPostgres.qryMatchTeamPlayerssubst_id.AsInteger <> 0 then
  begin
    JanuaDialog1.JShowError('Attenzione giocatore gi? sostituito',
      'id sostituzione : ' + dmFootballPostgres.qryMatchTeamPlayerssubst_id.AsString, '');
    Exit;
  end;

  JanuaDialogSostituzione.Execute;

  if dmFootballPostgres.qryMatchTeamPlayersSince.AsInteger > JanuaDialogSostituzione.Number then
  begin
    JanuaDialog1.JShowError('Attenzione espulsione non applicabile,  entrato al ' +
      dmFootballPostgres.qryMatchTeamPlayersSince.AsString,
      'non potete inserire una ammonizione o espulsione ad un giocatore prima che entri in campo .....', '');
  end
  else
    with dmFootballPostgres do
    begin

      begin
        qryMatchTeamPlayers.Edit;

        if JanuaDialogSostituzione.Number > 90 then
          qryMatchTeamPlayersUntil.AsInteger := 90
        else
          qryMatchTeamPlayersUntil.AsInteger := JanuaDialogSostituzione.Number;

        dmFootballPostgres.qrymatchteamplayersSent_Off.AsInteger := 1;

        qryMatchTeamPlayersminutes.AsInteger := qryMatchTeamPlayersUntil.AsInteger -
          qryMatchTeamPlayersSince.AsInteger + 1;

        qryMatchTeamPlayers.Post;
      end

    end;

end;

procedure TfrmMdcFootballChampionship.grdMatchesCellClick(Column: TColumn);
begin
  inherited;
  JanuaGridController1.DBGridCellClick(Column);

end;

procedure TfrmMdcFootballChampionship.grdMatchTeamAllPlayersDblClick(Sender: TObject);
begin
  if not dmFootballPostgres.qryMatchTeamPlayers.Locate('player_id',
    dmFootballPostgres.qryMatchTeamAllPlayersplayer_id.AsInteger, []) then
  begin
    dmFootballPostgres.qryMatchTeamPlayers.Append;
    dmFootballPostgres.qryMatchTeamPlayers.Post;
  end;
end;

procedure TfrmMdcFootballChampionship.ExportRosa(Sender: TObject);
begin
  dmFootballController.ExportTeam((Sender as TComponent).Name, FSelectedForm);
  (*
    a := nil;
    DataSource := nil;
    // Application.CreateForm(TfrmRichEdit, a);
    a := TfrmRichEdit.Create(nil);
    try
    case FSelectedForm of
    jffClubs:
    DataSource := dmFootballPostgres.dsTeamPlayers;
    jffChampionship:
    DataSource := dmFootballPostgres.dsTeamChampPlayers;
    jffMatch:
    ;
    else
    DataSource := dmFootballPostgres.dsTeamChampPlayers;
    end;
    a.AdvMemo1.Lines.Clear;

    Assert(Assigned(DataSource), 'Datasource is Null .. Error');
    Assert(Assigned(DataSource.DataSet), 'Dataset is Null .. Error');

    if DataSource.DataSet.RecordCount > 0 then
    with DataSource.DataSet do
    begin
    First;
    while not eof do
    begin
    if (Sender as TComponent).Name = 'N4Colonne1' then
    a.AdvMemo1.Lines.Add(FieldByName('first_name').AsWideString + FieldByName('last_name')
    .AsWideString + #9 + FieldByName('birth_date').AsWideString + #9)
    else if (Sender as TComponent).Name = 'N5Colonne1' then
    a.AdvMemo1.Lines.Add(FieldByName('first_name').AsWideString + FieldByName('last_name')
    .AsWideString + #9 + FieldByName('birth_date').AsWideString + #9 + FieldByName('minutes')
    .AsWideString)
    else if (Sender as TComponent).Name = 'N4Colonne1' then
    a.AdvMemo1.Lines.Add(FieldByName('first_name').AsWideString + FieldByName('last_name')
    .AsWideString + #9 + FieldByName('birth_date').AsWideString + #9 + FieldByName('minutes')
    .AsWideString + #9 + FieldByName('goal').AsWideString);

    dmFootballPostgres.qryChampRanking.Next;
    Next;
    end;
    end;
    a.ShowModal;
    finally
    a.Free;
    end;
  *)
end;

procedure TfrmMdcFootballChampionship.N7Colonne1Click(Sender: TObject);
var
  a: TfrmRichEdit;
  s: string;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;

    a.AdvMemo1.Lines.Add('ruolo' + #9 + 'cognome e nome' + #9 + 'nascita' + #9 + 'prov' + #9 + 'pres' + #9 +
      'min' + #9 + 'gol');

    if dmFootballPostgres.qryTeamPlayers.RecordCount > 0 then
      with dmFootballPostgres do
      begin
        qryTeamPlayers.First;
        while not dmFootballPostgres.qryTeamPlayers.eof do
        begin
          s := IfThen(qryTeamPlayerslostgoal.AsInteger > 0, IfThen(qryTeamPlayersgoal.AsInteger > 0,
            qryTeamPlayersgoal.AsWideString + '/', '') + '-' + qryTeamPlayerslostgoal.AsWideString,
            qryTeamPlayersgoal.AsWideString);

          a.AdvMemo1.Lines.Add(dmFootballPostgres.qryTeamPlayerslkpRoleCode.AsWideString + #9 +
            UpperCase(dmFootballPostgres.qryTeamPlayersfamily_name.AsWideString) + ' ' +
            dmFootballPostgres.qryTeamPlayersfirst_name.AsWideString + #9 +
            dmFootballPostgres.qryTeamPlayersbirth_date.AsWideString + #9 +
            dmFootballPostgres.qryTeamPlayerslkpOriginClubName.AsWideString + #9 +
            dmFootballPostgres.qryTeamPlayersmatches.AsWideString + #9 +
            dmFootballPostgres.qryTeamPlayersminutes.AsWideString + #9 + s
          // dmFootballPostgres.qryTeamPlayersgoal.AsWideString
            );
          dmFootballPostgres.qryTeamPlayers.Next;
        end;
        a.ShowModal;
      end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.NavigatoreShow(Sender: TObject);
begin
  FSelectedForm := jffChampionship;
end;

procedure TfrmMdcFootballChampionship.pgCalendarMatchesShow(Sender: TObject);
begin
  FSelectedForm := TJanuaFooballForm.jffMatch
end;

procedure TfrmMdcFootballChampionship.pgChampionshipsShow(Sender: TObject);
begin
  self.pnlChampionshipsList.Visible := True;
  FSelectedForm := TJanuaFooballForm.jffChampionship
end;

procedure TfrmMdcFootballChampionship.pgFootballMarketShow(Sender: TObject);
begin
  inherited;
  dmFootballPostgres.qryFootballMarket.Open
end;

procedure TfrmMdcFootballChampionship.pgNavigatorShow(Sender: TObject);
begin
  pnlChampionshipsList.Visible := False;
end;

procedure TfrmMdcFootballChampionship.pgRankingsShow(Sender: TObject);
begin
  btnUpdateRankingsClick(Sender);
end;

procedure TfrmMdcFootballChampionship.RecordLog(aLog: string);
begin
  self.memLogs.Lines.Add('');
  self.memLogs.Lines.Add(DateTimeToStr(Now) + '*************************************************');
  self.memLogs.Lines.Add(aLog);
end;

procedure TfrmMdcFootballChampionship.rgSearchIndexClick(Sender: TObject);
begin
  inherited;
  TBindings.Notify(Sender, 'ItemIndex');
end;

procedure TfrmMdcFootballChampionship.sbSearchUserChange(Sender: TObject);
begin
  inherited;
  TBindings.Notify(Sender, 'Text');
end;

procedure TfrmMdcFootballChampionship.SenzaRisultati1Click(Sender: TObject);
var
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;
    if dmFootballPostgres.qryMatches.RecordCount > 0 then
    begin
      dmFootballPostgres.qryMatches.First;
      while not dmFootballPostgres.qryMatches.eof do
      begin
        a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatcheslkpHomeTeam.AsWideString + ' - ' +
          dmFootballPostgres.qryMatcheslkpVisitorTeam.AsWideString);
        dmFootballPostgres.qryMatches.Next;
      end;

      if dmFootballPostgres.qryMatchDaysrest_team_id.AsInteger > 0 then
      begin
        a.AdvMemo1.Lines.Add('');
        a.AdvMemo1.Lines.Add('Riposa: ' + dmFootballPostgres.qryMatchDayslkpRestTeam.AsWideString);
      end;
      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.SetJanuaTmsStyleManager(const Value: TJanuaTmsStyleManager);
begin
  FJanuaTmsStyleManager := Value;
end;

procedure TfrmMdcFootballChampionship.ShowLog(aLog: TStrings);
var
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    if Assigned(aLog) then
    begin
      a.AdvMemo1.Clear;
      a.AdvMemo1.Lines.Assign(aLog);
      a.ShowModal;
    end;
  finally
    a.DisposeOf;
    a := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.Sostituzione1Click(Sender: TObject);
var
  a: TdlgSelectPlayerMatch;
begin
  {
    5;"Sostituzione"
  }

  if dmFootballPostgres.qryMatchTeamPlayerssubst_id.AsInteger <> 0 then
  begin
    JanuaDialog1.JShowError('Attenzione giocatore gi? sostituito',
      'id sostituzione : ' + dmFootballPostgres.qryMatchTeamPlayerssubst_id.AsString, '');
    Exit;
  end;

  a := TdlgSelectPlayerMatch.Create(self);
  try
    a.ShowModal;
    JanuaDialogSostituzione.Execute;

    if dmFootballPostgres.qryMatchTeamPlayersSince.AsInteger > JanuaDialogSostituzione.Number then
    begin
      JanuaDialog1.JShowError('Attenzione giocatore non sostituibile entrato al ' +
        dmFootballPostgres.qryMatchTeamPlayersSince.AsString,
        'non potete inserire una sostituzione ad un giocatore prima che entri in campo .....', '');
    end
    else
      with dmFootballPostgres do
      begin
        if not qryMatchTeamPlayers.Locate('player_id', qryMatchTeamAllPlayersanagraph_id.AsInteger, []) then
        begin
          qryMatchTeamPlayers.Edit;

          if JanuaDialogSostituzione.Number > 90 then
            qryMatchTeamPlayersUntil.AsInteger := 90
          else
            qryMatchTeamPlayersUntil.AsInteger := JanuaDialogSostituzione.Number;

          qryMatchTeamPlayersminutes.AsInteger := qryMatchTeamPlayersUntil.AsInteger -
            qryMatchTeamPlayersSince.AsInteger + 1;
          qryMatchTeamPlayerssubst_id.AsInteger := qryMatchTeamAllPlayersanagraph_id.AsInteger;
          qryMatchTeamPlayers.Post;

          qryMatchTeamPlayers.Append;
          qryMatchTeamPlayersSince.AsInteger := JanuaDialogSostituzione.Number;

          if JanuaDialogSostituzione.Number >= 89 then
            qryMatchTeamPlayersUntil.AsInteger := JanuaDialogSostituzione.Number + 2
          else
            qryMatchTeamPlayersUntil.AsInteger := 90;

          qryMatchTeamPlayersminutes.AsInteger := qryMatchTeamPlayersUntil.AsInteger -
            qryMatchTeamPlayersSince.AsInteger;
          qryMatchTeamPlayersplayer_id.AsInteger := qryMatchTeamAllPlayersanagraph_id.AsInteger;
          qryMatchTeamPlayersfull_name.AsWideString := qryMatchTeamAllPlayersfullname.AsWideString;
          qryMatchTeamPlayers.Post;
        end
        else
        begin
          self.JanuaDialog1.JShowError('Attenzione il giocatore: ' +
            qryMatchTeamAllPlayersfullname.AsWideString +
            ' ? gi? in formazione non pu? entrare come sostituto', '', '');
        end;
      end;

  finally
    a.DisposeOf
  end;

end;

procedure TfrmMdcFootballChampionship.SpeedButton10Click(Sender: TObject);
var
  a: TdlgFootballClub;
begin
  try
    dmFootballPostgres.qryClubs.Append;
    a := TdlgFootballClub.Create(self);
    try
      a.ShowModal;
    finally
      FreeAndNil(a);
    end;
    if dmFootballPostgres.qryClubs.State in [dsEdit, dsInsert] then
      dmFootballPostgres.qryClubs.Post;
  except
    dmFootballPostgres.qryClubs.Cancel;
  end;

end;

procedure TfrmMdcFootballChampionship.SpeedButton12Click(Sender: TObject);
begin
  if JanuaDialog1.JMessageDlg('Attenzione Elimino la squadra dal campionato?') then
  begin
    dmFootballPostgres.qryTeamsChampionships.Delete;
  end;

end;

procedure TfrmMdcFootballChampionship.SpeedButton13Click(Sender: TObject);
var
  i, j: integer;
begin
  self.JanuaDialogInteger1.Number := dmFootballPostgres.qryTeamsChampionships.RecordCount;
  JanuaDialogInteger1.Caption := 'Confermare il numero di squadre iscritte al campionato';
  if JanuaDialogInteger1.Number <> dmFootballPostgres.qryTeamsChampionships.RecordCount then
  begin
    self.JanuaDialog1.JShowError('Attenzione errore nel conteggio squadre giornate', '', '');
    Exit;
  end;

  if self.JanuaDialogInteger1.Execute then
  begin
    if Odd(self.JanuaDialogInteger1.Number) then
      j := self.JanuaDialogInteger1.Number
    else
      j := self.JanuaDialogInteger1.Number - 1;

    for i := 1 to (j) * 2 do
    begin
      dmFootballPostgres.qryMatchDays.Append;
      dmFootballPostgres.qryMatchDaysseason_id.AsInteger := dmFootballPostgres.qrySeasonsseason_id.AsInteger;
      dmFootballPostgres.qryMatchDaysleague_id.AsInteger :=
        dmFootballPostgres.qryChampionshipsleague_id.AsInteger;
      dmFootballPostgres.qryMatchDaysmatch_day_number.AsInteger := i;
      dmFootballPostgres.qryMatchDays.Post;
    end;

  end;

end;

procedure TfrmMdcFootballChampionship.SpeedButton19Click(Sender: TObject);
begin
  dmFootballPostgres.qryMatchAllPlayers.Close;
  dmFootballPostgres.qryMatchAllPlayers.Open;
end;

procedure TfrmMdcFootballChampionship.SpeedButton20Click(Sender: TObject);
begin
  inherited;
  self.TabellinoNew;
end;

procedure TfrmMdcFootballChampionship.SpeedButton21Click(Sender: TObject);
var
  a: TdlgFootballClub;
begin
  try
    dmFootballPostgres.qryClubs.Edit;
    a := TdlgFootballClub.Create(self);
    try
      a.ShowModal;
      if (dmFootballPostgres.qryClubs.State in [dsEdit, dsInsert]) then
        case a.ModalResult of
          mrOK:
            dmFootballPostgres.qryClubs.Post;
          mrCancel:
            dmFootballPostgres.qryClubs.Cancel;
        end;
    finally
      FreeAndNil(a);
    end;
  except
    dmFootballPostgres.qryClubs.Cancel;
  end;

end;

procedure TfrmMdcFootballChampionship.SpeedButton2Click(Sender: TObject);
var
  a: TdlgFootballSelectSeason;
begin
  a := TdlgFootballSelectSeason.Create(self);
  try
    a.ShowModal;
    if a.ModalResult = mrOK then
      with dmFootballPostgres do
        try
          qryChampionships.Append;
          qryChampionshipsseason_id.Value := qrySeasonsseason_id.AsInteger;
          qryChampionshipsleague_id.Value := qrySelectLeaguesleague_id.AsInteger;
          qryChampionshipsleague_name.Value := qrySelectLeaguesleague_name.AsString;
          qryChampionshipsiso_country_code.Value := 'IT';
          qryChampionships.Post;
          JanuaDialog1.JShowMessage('Campionato ' + qryChampionshipsleague_name.AsString + ' - ' +
            qryChampionshipsleague_name.AsString + ' inserito', '', '');
        except
          on e: exception do
          begin
            JanuaDialog1.JShowError('Errore di Registrazione Campionato' +
              qryChampionshipsleague_name.AsString, e.Message, '');
          end;
        end;
  finally
    FreeAndNil(a);
  end;
end;

procedure TfrmMdcFootballChampionship.SpeedButton3Click(Sender: TObject);
var
  i: integer;
  a: TdlgFootballSelectTeamLastSeason;
  tmp: TBookMark;
begin
  if JanuaDialog1.JMessageDlgExt('Stagione Precedente o Elenco Squadre?', 'Stagione', 'Elenco') then
  begin
    // Application.CreateForm(TdlgFootballSelectTeamLastSeason, dlgFootballSelectTeamLastSeason);
    a := TdlgFootballSelectTeamLastSeason.Create(self);
    try
      a.DataSource1.DataSet := dmFootballPostgres.qryTeamsLastSeason;
      a.ShowModal;
      if a.ModalResult = mrOK then
      begin
        if a.grdSelectedTeams.SelectedRows.Count > 0 then
          with dmFootballPostgres do
            for i := 0 to a.grdSelectedTeams.SelectedRows.Count - 1 do
            begin
              tmp := a.grdSelectedTeams.SelectedRows.Items[i];
              qryTeamsLastSeason.GotoBookmark(tmp);
              // qryTeamsLastSeason.GotoBookmark(pointer(a.grdSelectedTeams.SelectedRows.Items[i]));
              if not qryTeamsChampionships.Locate('team_id', qryTeamsLastSeasonteam_id.AsInteger, []) then
              begin
                qryTeamsChampionships.Append;
                qryTeamsChampionshipsseason_id.AsInteger := qryChampionshipsseason_id.AsInteger;
                qryTeamsChampionshipsleague_id.AsInteger := qryChampionshipsleague_id.AsInteger;
                qryTeamsChampionshipsteam_id.AsInteger := qryTeamsLastSeasonteam_id.AsInteger;
                qryTeamsChampionshipsteam_name.AsString := qryTeamsLastSeasonteam_name.AsString;
                qryTeamsChampionshipsClub_name.AsString := qryTeamsLastSeasonClub_name.AsString;
                qryTeamsChampionships.Post;
              end;
            end;
      end
    finally
      FreeAndNil(a);
    end
  end
  else
  begin
    a := TdlgFootballSelectTeamLastSeason.Create(self);
    try
      a.DataSource1.DataSet := dmFootballPostgres.qryAllTeamsNoSeason;
      a.ShowModal;
      if a.ModalResult = mrOK then
      begin
        if a.grdSelectedTeams.SelectedRows.Count > 0 then
          with dmFootballPostgres do
            for i := 0 to a.grdSelectedTeams.SelectedRows.Count - 1 do
            begin
              tmp := a.grdSelectedTeams.SelectedRows.Items[i];
              qryAllTeamsNoSeason.GotoBookmark(tmp);
              // qryAllTeamsNoSeason.GotoBookmark(pointer(a.grdSelectedTeams.SelectedRows.Items[i]));
              if not qryTeamsChampionships.Locate('team_id', qryAllTeamsNoSeasonteam_id.AsInteger, []) then
              begin
                qryTeamsChampionships.Append;
                qryTeamsChampionshipsseason_id.AsInteger := qryChampionshipsseason_id.AsInteger;
                qryTeamsChampionshipsleague_id.AsInteger := qryChampionshipsleague_id.AsInteger;
                qryTeamsChampionshipsteam_id.AsInteger := qryAllTeamsNoSeasonteam_id.AsInteger;
                qryTeamsChampionshipsteam_name.AsString := qryAllTeamsNoSeasonteam_name.AsString;
                qryTeamsChampionships.Post;
              end;
            end;
      end
    finally
      FreeAndNil(a);
    end

  end;
end;

procedure TfrmMdcFootballChampionship.SpeedButton4Click(Sender: TObject);
var
  Old, New: integer;
begin
  {
    insert into football.ft_championships
    select  :new_season_id, league_id
    from football.ft_championships f
    where f.season_id = :old_season_id
    and not exists
    (select 1 from football.ft_championships g
    where g.season_id =  :new_season_id
    and f.league_id = g.league_id
  }

  if JanuaDialog1.JMessageDlg('Attenzione Clono la stagione precedente') then
  begin
    New := dmFootballPostgres.qrySeasonsseason_id.AsInteger;
    dmFootballPostgres.qrySeasons.Next;
    Old := dmFootballPostgres.qrySeasonsseason_id.AsInteger;
    dmFootballPostgres.qryCloneSeason.ParamByName('old_season_id').Value := Old;
    dmFootballPostgres.qryCloneSeason.ParamByName('new_season_id').Value := New;
    dmFootballPostgres.qryCloneSeason.Prepare;
    dmFootballPostgres.qryCloneSeason.Execute;
    dmFootballPostgres.qrySeasons.Prior;
  end;
end;

procedure TfrmMdcFootballChampionship.SpeedButton5Click(Sender: TObject);
begin
  /// eliminazione
  if JanuaDialog1.JMessageDlg('Attenzione Clono la stagione precedente') then
  begin
    dmFootballPostgres.qryChampionships.Delete;
  end;
end;

procedure TfrmMdcFootballChampionship.SpeedButton6Click(Sender: TObject);
var
  i, j, k: integer;
begin
  self.JanuaDialogInteger1.Number := dmFootballPostgres.qryTeamsChampionships.RecordCount;
  JanuaDialogInteger1.Caption := 'Confermare il numero di squadre iscritte al campionato';
  self.JanuaDialogInteger1.Execute;
  if JanuaDialogInteger1.Number <> dmFootballPostgres.qryTeamsChampionships.RecordCount then
  begin
    self.JanuaDialog1.JShowError('Attenzione errore nel conteggio squadre giornate', '', '');
    Exit;
  end
  else
    with dmFootballPostgres do
    begin

      if Odd(self.JanuaDialogInteger1.Number) then
        k := self.JanuaDialogInteger1.Number
      else
        k := self.JanuaDialogInteger1.Number - 1;

      dmFootballPostgres.qryMatchDays.First;
      for i := 1 to k do
      begin
        j := i + k;
        if qryMatchDays.Locate('match_day_number', j, []) then
        begin
          // self.JanuaDialog1.JShowMessage('Trovato ritorno: ' + j.ToString(), '', '');
          if qryMatches.RecordCount = 0 then
          begin
            if qryMatchDays.Locate('match_day_number', i, []) then
            begin
              // self.JanuaDialog1.JShowMessage('Trovato Andata: ' + i.ToString(), '', '');
              if qryMatches.RecordCount > 0 then
              begin
                self.JanuaDialog1.JShowMessage('Inserisco Andata: ' + i.ToString() + ' Ritorno: ' +
                  j.ToString, '', '');
                qryMatches.First;
                while not qryMatches.eof do
                begin
                  qryInsertCalendar.Connection.StartTransaction;
                  qryInsertCalendar.ParamByName('match_day_number').Value := j;
                  qryInsertCalendar.ParamByName('league_id').Value := qryMatchesleague_id.AsInteger;
                  qryInsertCalendar.ParamByName('season_id').Value := qryMatchesseason_id.AsInteger;
                  qryInsertCalendar.ParamByName('home_team_id').Value := qryMatchesvisitors_team_id.AsInteger;
                  qryInsertCalendar.ParamByName('visitors_team_id').Value := qryMatcheshome_team_id.AsInteger;
                  qryInsertCalendar.ParamByName('db_schema_id').Value := qryMatchesdb_schema_id.AsInteger;
                  qryInsertCalendar.Execute;
                  if qryInsertCalendar.Connection.InTransaction then
                    qryInsertCalendar.Connection.Commit;
                  qryMatches.Next;
                end;
              end;
            end;
          end;
        end;
      end;
    end;
end;

procedure TfrmMdcFootballChampionship.btnPlayerAddClick(Sender: TObject);
begin
  dmFootballPostgres.qryAllPlayers.Append;
  self.btnPlayerEditClick(Sender);
end;

procedure TfrmMdcFootballChampionship.btnPlayerEditClick(Sender: TObject);
var
  a: TdlgFootballPlayer;
begin
  a := TdlgFootballPlayer.Create(nil);
  try
    a.ShowModal;
  finally
    a.Free;
  end;
end;

procedure TfrmMdcFootballChampionship.btnPlayerInheritClick(Sender: TObject);
var
  dlgSelect: TdlgSelectLkpPlayer;
begin
  inherited;
  dlgSelect := TdlgSelectLkpPlayer.Create(nil);
  try
    dlgSelect.ShowModal;
    if (dlgSelect.ModalResult = mrOK) then
      with dmFootballPostgres do
      begin
        if qryLkpAllPlayersanagraph_id.AsInteger <> qryAllPlayersanagraph_id.AsInteger then
        begin
          if JMessageDlg('Attenzione Eredito: ' + qryLkpAllPlayersfullname.AsWideString + ' in: ' +
            qryAllPlayersfullname.AsWideString) then
          begin
            inheritPlayer(qryLkpAllPlayersanagraph_id.AsInteger, qryAllPlayersanagraph_id.AsInteger);
            JShowMessage('Giocatore Ereditato');
          end;
        end
        else
          JShowMessage('Attenzione un giocatore non pu? ereditare se stesso');
      end;
  finally
    dlgSelect.Free;
  end;
end;

procedure TfrmMdcFootballChampionship.btnPlayerAssignClick(Sender: TObject);
begin
  case self.FSelectedForm of
    // qryMatchTeamAllPlayers

    jffMatch:
      with dmFootballPostgres do
      begin
        if qryMatchTeamAllPlayers.Locate('player_id', qryAllPlayersanagraph_id.AsInteger, []) then
        begin
          JanuaDialog1.JShowError('Attenzione il giocatore ? gi? tesserato per il club ' +
            qryClubsclub_name.AsWideString, '', '');
          Exit;
        end;
        qryAllClubPlayers.Open;
        if qryAllClubPlayers.RecordCount > 0 then
        begin
          if JanuaDialog1.JMessageDlg('Attenzione ' + qryAllClubPlayersfullname.AsString + ' ? tesserato per '
            + qryAllClubPlayersclub_name.AsString + ' procedo?') then
          begin
            qryMatchTeamAllPlayers.Append;
            // qryMatchTeamAllPlayersteam_id.AsInteger := dmFootballPostgres.qryMatchTeamsteam_id.AsInteger;
            qryMatchTeamAllPlayersplayer_id.AsInteger := qryAllPlayersanagraph_id.AsInteger;
            qryMatchTeamAllPlayerssince.AsDateTime := Date();
            qryMatchTeamAllPlayersclub_origin_id.AsInteger := qryAllClubPlayersteam_id.AsInteger;
            qryMatchTeamAllPlayersrole.AsInteger := qryAllPlayersrole.AsInteger;
            qryMatchTeamAllPlayersfullname.AsWideString := qryAllPlayersfullname.AsWideString;
            qryMatchTeamAllPlayers.Post;
          end;
        end
        else
        begin
          qryMatchTeamAllPlayers.Append;
          // qryMatchTeamAllPlayersteam_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
          qryMatchTeamAllPlayersplayer_id.AsInteger := qryAllPlayersanagraph_id.AsInteger;
          qryMatchTeamAllPlayerssince.AsDateTime := Date();
          // qryMatchTeamAllPlayersclub_origin_id.AsInteger := qryAllClubPlayersteam_id.AsInteger;
          qryMatchTeamAllPlayersrole.AsInteger := qryAllPlayersrole.AsInteger;
          qryMatchTeamAllPlayersfullname.AsWideString := qryAllPlayersfullname.AsWideString;
          qryMatchTeamAllPlayers.Post;
          qryMatchTeamAllPlayers.Refresh;
        end;
      end;

    jffClubs:
      with dmFootballPostgres do
      begin
        if qryTeamPlayers.Locate('player_id', qryAllPlayersanagraph_id.AsInteger, []) then
        begin
          JanuaDialog1.JShowError('Attenzione il giocatore ? gi? tesserato per il club ' +
            qryClubsclub_name.AsWideString, '', '');
          Exit;
        end;
        qryAllClubPlayers.Open;
        if qryAllClubPlayers.RecordCount > 0 then
        begin
          if JanuaDialog1.JMessageDlg('Attenzione ' + qryAllClubPlayersfullname.AsString + ' ? tesserato per '
            + qryAllClubPlayersclub_name.AsString + ' procedo?') then
          begin
            qryTeamPlayers.Append;
            qryTeamPlayersteam_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
            qryTeamPlayersplayer_id.AsInteger := qryAllPlayersanagraph_id.AsInteger;
            qryTeamPlayersseason_id.AsInteger := qryTeamsClubsLeaguesseason_id.AsInteger;
            qryTeamPlayerssince.AsDateTime := Date();
            qryTeamPlayersclub_origin_id.AsInteger := qryAllClubPlayersteam_id.AsInteger;
            qryTeamPlayersrole.AsInteger := qryAllPlayersrole.AsInteger;
            qryTeamPlayersfullname.AsWideString := qryAllPlayersfullname.AsWideString;
            qryTeamPlayers.Post;
            qryTeamPlayers.Refresh;
          end;
        end
        else
        begin
          qryTeamPlayers.Append;
          qryTeamPlayersteam_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
          qryTeamPlayersplayer_id.AsInteger := qryAllPlayersanagraph_id.AsInteger;
          qryTeamPlayersseason_id.AsInteger := qryTeamsClubsLeaguesseason_id.AsInteger;
          qryTeamPlayerssince.AsDateTime := Date();
          qryTeamPlayersclub_origin_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
          qryTeamPlayersrole.AsInteger := qryAllPlayersrole.AsInteger;
          qryTeamPlayers.Post;
          qryTeamPlayers.Refresh;
        end;
      end;

    jffChampionship:

      with dmFootballPostgres do
      begin
        if qryTeamChampPlayers.Locate('player_id', qryAllPlayersanagraph_id.AsInteger, []) then
        begin
          JanuaDialog1.JShowError('Attenzione il giocatore ? gi? tesserato per il club ' +
            qryClubsclub_name.AsWideString, '', '');
          Exit;
        end;
        qryAllClubPlayers.Open;
        if qryAllClubPlayers.RecordCount > 0 then
        begin
          if JanuaDialog1.JMessageDlg('Attenzione ' + qryAllClubPlayersfullname.AsString + ' ? tesserato per '
            + qryAllClubPlayersclub_name.AsString + ' procedo?') then
          begin
            qryTeamChampPlayers.Append;
            // qryTeamChampPlayersteam_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
            qryTeamChampPlayersplayer_id.AsInteger := qryAllPlayersanagraph_id.AsInteger;
            // qryTeamChampPlayersseason_id.AsInteger := qryTeamsClubsLeaguesseason_id.AsInteger;
            qryTeamChampPlayerssince.AsDateTime := Date();
            qryTeamChampPlayersclub_origin_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
            qryTeamChampPlayersrole.AsInteger := qryAllPlayersrole.AsInteger;
            qryTeamChampPlayersfullname.AsWideString := qryAllPlayersfullname.AsWideString;
            qryTeamChampPlayersteam_id.AsInteger := qryTeamsChampionshipsteam_id.AsInteger;
            qryTeamChampPlayers.Post;
          end;
        end
        else
        begin
          qryTeamChampPlayers.Append;
          // qryTeamChampPlayersteam_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
          qryTeamChampPlayersplayer_id.AsInteger := qryAllPlayersanagraph_id.AsInteger;
          // qryTeamChampPlayersseason_id.AsInteger := qryTeamsClubsLeaguesseason_id.AsInteger;
          qryTeamChampPlayerssince.AsDateTime := Date();
          qryTeamChampPlayersclub_origin_id.AsInteger := qryTeamsClubsLeaguesteam_id.AsInteger;
          qryTeamChampPlayersrole.AsInteger := qryAllPlayersrole.AsInteger;
          qryTeamChampPlayersfullname.AsWideString := qryAllPlayersfullname.AsWideString;
          qryTeamChampPlayers.Post;
        end;
      end;

  end;
end;

procedure TfrmMdcFootballChampionship.TabellinoNew;
var
  formazione, gol, minuti: string;
  i: int64;
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    self.grdMatchTeamPlayers.DataSource.Enabled := False;
    self.grdMatchEvents.DataSource.Enabled := False;
    self.grdMatchTeams.DataSource.Enabled := False;

    CalculateMatch;
    a.AdvMemo1.Clear;
    with dmFootballPostgres do
    begin
      qryMatches.Edit;
      qryMatchesvisitors_notes.Clear;
      qryMatcheshome_notes.Clear;
      qryMatches.Post;
      dsMatchTeams.DataSet.First;

      qryMatchEvents.First;
      while not dmFootballPostgres.qryMatchEvents.eof do
      begin
        if qryMatchEventsevent_id.AsInteger in [1, 6] then
        begin
          // if qryMatchEventsfavor_team_id.AsInteger = qryMatchTeamsTeam_id.AsInteger then
          // begin
          if gol <> '' then
            gol := gol + ', ';
          gol := gol + qryMatchEventsminute.AsWideString + ''' ' + qryMatchEventsfamily_name.AsWideString;
          if qryMatchEventsnotes.AsWideString > '' then
            gol := gol + ' (' + qryMatchEventsnotes.AsWideString + ')';
          // end;
        end;
        qryMatchEvents.Next;
      end;

      // a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatchTeamsteam_name.AsWideString + ': ' + formazione);

      while not dmFootballPostgres.dsMatchTeams.DataSet.eof do
      begin
        // gol := '';
        formazione := '';
        dmFootballPostgres.qryMatchTeamPlayers.Close;
        dmFootballPostgres.qryMatchTeamPlayers.Open;

        if dmFootballPostgres.qryMatchTeamPlayers.RecordCount < 11 then
          JShowWarning('Attenzione la squadra: ' + dmFootballPostgres.qryMatchTeamsteam_name.AsWideString +
            ' ha meno di 11 giocatori');

        if dmFootballPostgres.qryMatchTeamPlayers.RecordCount > 0 then
          with dmFootballPostgres do
          begin
            dmFootballPostgres.qryMatchTeamPlayers.First;
            while not(qryMatchTeamPlayersPos.AsInteger > 11) and not qryMatchTeamPlayers.eof do
            begin
              formazione := formazione + dmFootballPostgres.qrymatchteamplayersfamily_name.AsWideString;
              if qryMatchTeamPlayerssubst_id.AsInteger > 0 then
              begin
                i := qryMatchTeamPlayersplayer_id.AsLargeInt; // memorizzo riga
                // dmFootballPostgres.qryMatchTeamPlayersuntil
                // qryMatchTeamPlayersminutes
                minuti := qryMatchTeamPlayersUntil.AsWideString; // leggo minuti sostituzione
                if qryMatchTeamPlayers.Locate('Player_id', qryMatchTeamPlayerssubst_id.AsInteger, []) then
                begin
                  formazione := formazione + ' (' + minuti + ''' ' +
                    qrymatchteamplayersfamily_name.AsWideString;
                  /// sostituzione annidata del Sosituto .......
                  if qryMatchTeamPlayerssubst_id.AsInteger > 0 then
                  begin
                    if qryMatchTeamAllPlayers.Locate('anagraph_id', qryMatchTeamPlayerssubst_id.AsInteger, [])
                    then
                    begin
                      formazione := formazione + '; ' + qryMatchTeamPlayersUntil.AsWideString + ''' ' +
                        qryMatchTeamAllPlayersfamily_name.AsWideString;
                    end;
                  end;
                  formazione := formazione + ')';
                  qryMatchTeamPlayers.Locate('Player_id', i, []);
                end;
              end;

              if not(dmFootballPostgres.qryMatchTeamPlayersPos.AsInteger = 11) then
                formazione := formazione + ', ';

              dmFootballPostgres.qryMatchTeamPlayers.Next;
            end;



            // self.JanuaDialog1.JShowMessage(dmFootballPostgres.qryMatchTeamsteam_name.AsWideString + ' ' +
            // dmFootballPostgres.qryMatchTeamsTeam_id.AsWideString,
            // 'Home: ' + qryMatcheshome_team_id.AsWideString + sLineBreak + 'Visitors: ' +
            // qryMatchesvisitors_team_id.AsWideString, '');

            // self.JanuaDialog1.JShowMessage
            // ('Formazione ' + dmFootballPostgres.qryMatchTeamsteam_name.AsWideString,
            // formazione + sLineBreak + 'Marcatori: ' + sLineBreak + gol, '');

            dmFootballPostgres.qryMatches.Edit;

            if dmFootballPostgres.qryMatchTeamsTeam_id.AsInteger = qryMatchesvisitors_team_id.AsInteger then
            begin
              dmFootballPostgres.qryMatchesvisitors_notes.AsWideString :=
                (dmFootballPostgres.qryMatchTeamsteam_name.AsWideString + ': ' + formazione)
              // a.AdvMemo1.Lines.Text;
              // self.JanuaDialog1.JShowMessage('Formazione Ospiti: ' + dmFootballPostgres.qryMatchesvisitors_notes.AsWideString, '', '');
            end
            else
            begin
              dmFootballPostgres.qryMatcheshome_notes.AsWideString :=
                (dmFootballPostgres.qryMatchTeamsteam_name.AsWideString + ': ' + formazione)
              // a.AdvMemo1.Lines.Text;
              // self.JanuaDialog1.JShowMessage('Formazione Casa: ' + dmFootballPostgres.qryMatcheshome_notes.AsWideString, '', '');
            end;
            dmFootballPostgres.qryMatches.Post;
            // a.AdvMemo1.Lines.Clear;
          end;
        dmFootballPostgres.dsMatchTeams.DataSet.Next;
      end;
    end;
    a.AdvMemo1.Lines.Clear;
    a.AdvMemo1.Lines.Add('marcatori: ' + gol);
    // a.AdvMemo1.Lines.Add(gol);
    a.AdvMemo1.Lines.Add('');
    a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatcheshome_notes.AsWideString);
    a.AdvMemo1.Lines.Add('');
    a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatchesvisitors_notes.AsWideString);
    a.ShowModal;
  finally
    self.grdMatchTeams.DataSource.Enabled := True;
    self.grdMatchTeamPlayers.DataSource.Enabled := True;
    self.grdMatchEvents.DataSource.Enabled := True;
    a.Free;
  end;

end;

procedure TfrmMdcFootballChampionship.TabellinoOld;
var
  formazione, gol, minuti: string;
  i: int64;
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    self.grdMatchTeamPlayers.DataSource.Enabled := False;
    self.grdMatchEvents.DataSource.Enabled := False;
    self.grdMatchTeams.DataSource.Enabled := False;

    CalculateMatch;
    a.AdvMemo1.Clear;
    with dmFootballPostgres do
    begin
      qryMatches.Edit;
      qryMatchesvisitors_notes.Clear;
      qryMatcheshome_notes.Clear;
      qryMatches.Post;
      dsMatchTeams.DataSet.First;

      while not dmFootballPostgres.dsMatchTeams.DataSet.eof do
      begin
        gol := '';
        formazione := '';
        dmFootballPostgres.qryMatchTeamPlayers.Close;
        dmFootballPostgres.qryMatchTeamPlayers.Open;

        if dmFootballPostgres.qryMatchTeamPlayers.RecordCount < 11 then
          JShowWarning('Attenzione la squadra: ' + dmFootballPostgres.qryMatchTeamsteam_name.AsWideString +
            ' ha meno di 11 giocatori');

        if dmFootballPostgres.qryMatchTeamPlayers.RecordCount > 0 then
          with dmFootballPostgres do
          begin
            dmFootballPostgres.qryMatchTeamPlayers.First;
            while not(qryMatchTeamPlayersPos.AsInteger > 11) and not qryMatchTeamPlayers.eof do
            begin
              formazione := formazione + dmFootballPostgres.qrymatchteamplayersfamily_name.AsWideString;
              if qryMatchTeamPlayerssubst_id.AsInteger > 0 then
              begin
                i := qryMatchTeamPlayersplayer_id.AsLargeInt; // memorizzo riga
                minuti := qryMatchTeamPlayersminutes.AsWideString; // leggo minuti sostituzione
                if qryMatchTeamPlayers.Locate('Player_id', qryMatchTeamPlayerssubst_id.AsInteger, []) then
                begin
                  formazione := formazione + ' (' + minuti + ''' ' +
                    qrymatchteamplayersfamily_name.AsWideString;
                  /// sostituzione annidata del Sosituto .......
                  if qryMatchTeamPlayerssubst_id.AsInteger > 0 then
                  begin
                    if qryMatchTeamAllPlayers.Locate('anagraph_id', qryMatchTeamPlayerssubst_id.AsInteger, [])
                    then
                    begin
                      formazione := formazione + '; ' + qryMatchTeamPlayersminutes.AsWideString + ''' ' +
                        qryMatchTeamAllPlayersfamily_name.AsWideString;
                    end;
                  end;
                  formazione := formazione + ')';
                  qryMatchTeamPlayers.Locate('Player_id', i, []);
                end;
              end;

              if not(dmFootballPostgres.qryMatchTeamPlayersPos.AsInteger = 11) then
                formazione := formazione + ', ';

              dmFootballPostgres.qryMatchTeamPlayers.Next;
            end;

            qryMatchEvents.First;
            while not dmFootballPostgres.qryMatchEvents.eof do
            begin
              if qryMatchEventsevent_id.AsInteger in [1, 6] then
              begin
                if qryMatchEventsfavor_team_id.AsInteger = qryMatchTeamsTeam_id.AsInteger then
                begin
                  if gol <> '' then
                    gol := gol + ', ';
                  gol := gol + qryMatchEventsminute.AsWideString + ''' ' +
                    qryMatchEventsfamily_name.AsWideString;
                  if qryMatchEventsnotes.AsWideString > '' then
                    gol := gol + ' (' + qryMatchEventsnotes.AsWideString + ')';
                end;
              end;
              qryMatchEvents.Next;
            end;

            a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatchTeamsteam_name.AsWideString + ': ' + formazione);
            a.AdvMemo1.Lines.Add('');
            a.AdvMemo1.Lines.Add('marcatori:');
            a.AdvMemo1.Lines.Add(gol);

            // self.JanuaDialog1.JShowMessage(dmFootballPostgres.qryMatchTeamsteam_name.AsWideString + ' ' +
            // dmFootballPostgres.qryMatchTeamsTeam_id.AsWideString,
            // 'Home: ' + qryMatcheshome_team_id.AsWideString + sLineBreak + 'Visitors: ' +
            // qryMatchesvisitors_team_id.AsWideString, '');

            // self.JanuaDialog1.JShowMessage
            // ('Formazione ' + dmFootballPostgres.qryMatchTeamsteam_name.AsWideString,
            // formazione + sLineBreak + 'Marcatori: ' + sLineBreak + gol, '');

            dmFootballPostgres.qryMatches.Edit;

            if dmFootballPostgres.qryMatchTeamsTeam_id.AsInteger = qryMatchesvisitors_team_id.AsInteger then
            begin
              dmFootballPostgres.qryMatchesvisitors_notes.AsWideString := a.AdvMemo1.Lines.Text;
              // self.JanuaDialog1.JShowMessage('Formazione Ospiti: ' + dmFootballPostgres.qryMatchesvisitors_notes.AsWideString, '', '');
            end
            else
            begin
              dmFootballPostgres.qryMatcheshome_notes.AsWideString := a.AdvMemo1.Lines.Text;
              // self.JanuaDialog1.JShowMessage('Formazione Casa: ' + dmFootballPostgres.qryMatcheshome_notes.AsWideString, '', '');
            end;
            dmFootballPostgres.qryMatches.Post;
            a.AdvMemo1.Lines.Clear;
          end;
        dmFootballPostgres.dsMatchTeams.DataSet.Next;
      end;
    end;
    a.AdvMemo1.Lines.Clear;
    a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatcheshome_notes.AsWideString);
    a.AdvMemo1.Lines.Add('');
    a.AdvMemo1.Lines.Add(dmFootballPostgres.qryMatchesvisitors_notes.AsWideString);
    a.ShowModal;
  finally
    self.grdMatchTeams.DataSource.Enabled := True;
    self.grdMatchTeamPlayers.DataSource.Enabled := True;
    self.grdMatchEvents.DataSource.Enabled := True;
    a.Free;
  end;

end;

procedure TfrmMdcFootballChampionship.btnMatchEventsClick(Sender: TObject);
var
  lPoint: TPoint;
begin
  lPoint := btnMatchEvents.ClientToScreen(Point(0, 0));
  self.popTabellino.Popup(lPoint.X, lPoint.Y + btnMatchEvents.Height);

end;

procedure TfrmMdcFootballChampionship.tabMatchesHide(Sender: TObject);
begin
  grdMatchTeamAllPlayers.Visible := False;
end;

procedure TfrmMdcFootballChampionship.tabMatchesShow(Sender: TObject);
begin
  self.FSelectedForm := jffMatch;
  grdMatchTeamAllPlayers.Visible := True;
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton10Click(Sender: TObject);
begin
  dmFootballPostgres.dsGolRanking.DataSet.Open;
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton11Click(Sender: TObject);
begin
  if self.JanuaDialog1.JMessageDlg('Siete sicuri di eliminre questa giornata?') then
  begin
    dmFootballPostgres.dsMatches.DataSet.First;
    while not dmFootballPostgres.dsMatches.DataSet.eof do
      dmFootballPostgres.dsMatches.DataSet.Delete;
  end;

end;

procedure TfrmMdcFootballChampionship.AdvGlowButton14Click(Sender: TObject);
begin
  self.WebBrowser1.GoBack;
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton15Click(Sender: TObject);
begin
  self.WebBrowser1.GoForward;
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton16Click(Sender: TObject);
begin
  self.WebBrowser1.Navigate(self.edUrl.Text);
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton1Click(Sender: TObject);
begin
  self.pnlChampionshipsList.Visible := not self.pnlSeasons.Visible;
  self.splitpnlChampionshipsList.Visible := self.pnlSeasons.Visible;
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton5Click(Sender: TObject);
begin
  self.PgQuery1.SQL.Assign(self.AdvMemo1.Lines);
  self.PgQuery1.Open;
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton7Click(Sender: TObject);
var
  a: TdlgFootballSelectMatchTeams;
begin
  a := TdlgFootballSelectMatchTeams.Create(self);
  try
    dmFootballPostgres.qrySelectVisitors.Close;
    dmFootballPostgres.qrySelectVisitors.ParamByName('match_day_number').AsInteger :=
      dmFootballPostgres.qryMatchDaysmatch_day_number.AsInteger;

    dmFootballPostgres.qrySelectHome.Close;
    dmFootballPostgres.qrySelectHome.ParamByName('match_day_number').AsInteger :=
      dmFootballPostgres.qryMatchDaysmatch_day_number.AsInteger;

    dmFootballPostgres.qrySelectVisitors.Open;
    dmFootballPostgres.qrySelectHome.Open;

    a.ShowModal;

    if a.ModalResult = mrOK then
      with dmFootballPostgres do
      begin

        {
          dmFootballPostgres.qryVerificaMatches.Close;
          dmFootballPostgres.qryVerificaMatches.ParamByName('home_team_id').AsInteger :=
          qrySelectHometeam_id.AsInteger;
          dmFootballPostgres.qryVerificaMatches.ParamByName('visitors_team_id').AsInteger :=
          qrySelectVisitorsteam_id.AsInteger;
          dmFootballPostgres.qryVerificaMatches.Open;
        }

        // if qryVerificaMatches.RecordCount > 0 then
        { begin
          self.JanuaDialog1.JShowError
          ('Attenzione queste due squadre si incontrano gi? in campionato alla ' +
          qryVerificaMatchesmatch_day_number.AsWideString + '^ Giornata', '', '');
          Exit;
          end
          else }
        begin
          dmFootballPostgres.qryMatchDays.Edit;
          dmFootballPostgres.qryMatchDaysrest_team_id.Value := qrySelectHometeam_id.Value;
          qryMatchDays.Post;
        end;

      end;

  finally
    a.Free;
  end;
end;

procedure TfrmMdcFootballChampionship.btnUpdateRankingsClick(Sender: TObject);
var
  tmp1, tmp2: integer;
begin
  tmp1 := 0;
  TryStrToInt(jvLookUpDayFrom.Value, tmp1);
  tmp2 := 0;
  TryStrToInt(jvLookUpDayTo.Value, tmp2);
  dmFootballPostgres.UpdateRankings(tmp1, tmp2);
end;

procedure TfrmMdcFootballChampionship.AdvGlowButton9Click(Sender: TObject);
var
  i: integer;
  a: TfrmRichEdit;
begin
  a := nil;
  Application.CreateForm(TfrmRichEdit, a);
  try
    a.AdvMemo1.Clear;
    if dmFootballPostgres.qryGolRanking.RecordCount > 0 then
    begin
      i := 0;
      dmFootballPostgres.qryGolRanking.First;
      while not dmFootballPostgres.qryGolRanking.eof do
      begin
        if dmFootballPostgres.qryGolRankingteam_name.AsWideString.Length + 4 +
          dmFootballPostgres.qryGolRankingfamily_name.AsWideString.Length > i then
          i := dmFootballPostgres.qryGolRankingteam_name.AsWideString.Length + 4 +
            dmFootballPostgres.qryGolRankingfamily_name.AsWideString.Length + 4;
        dmFootballPostgres.qryGolRanking.Next;
      end;

      dmFootballPostgres.qryGolRanking.First;
      while not dmFootballPostgres.qryGolRanking.eof do
      begin
        a.AdvMemo1.Lines.Add(Rpad(dmFootballPostgres.qryGolRankingfamily_name.AsWideString + ' (' +
          dmFootballPostgres.qryGolRankingteam_name.AsWideString + ') ', i, ' ') + #9 +
          dmFootballPostgres.qryGolRankinggol.AsWideString);
        dmFootballPostgres.qryGolRanking.Next;
      end;
      a.ShowModal;
    end;
  finally
    a.DisposeOf
  end;
end;

procedure TfrmMdcFootballChampionship.Ammonizione1Click(Sender: TObject);
begin
  {
    5;"Sostituzione"
    1;"Gol"
    2;"Rigore"
    3;"Infortunio"
    4;"Parata"
    5;"Sostituzione"
    6;"Autogol"
  }
end;

procedure TfrmMdcFootballChampionship.AnagraficheShow(Sender: TObject);
begin
  self.FSelectedForm := jffClubs;
end;

procedure TfrmMdcFootballChampionship.AnnullaSostituzione1Click(Sender: TObject);
var
  pid: int64;
begin
  with dmFootballPostgres do
  begin
    pid := qryMatchTeamPlayerssubst_id.AsLargeInt;

    qryMatchTeamPlayers.Edit;
    qryMatchTeamPlayerssubst_id.Clear;
    qryMatchTeamPlayersUntil.Value := 90;
    if qryMatchTeamPlayersSince.AsInteger > 1 then
      qryMatchTeamPlayersminutes.Value := 90 - qryMatchTeamPlayersSince.AsInteger
    else
      qryMatchTeamPlayersminutes.Value := 90;
    qryMatchTeamPlayers.Post;

    if qryMatchTeamPlayers.Locate('player_id', pid, []) then
      qryMatchTeamPlayers.Delete;
  end;
end;

procedure TfrmMdcFootballChampionship.ArchivioImmagini1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TdlgTeamsLogos, dlgTeamsLogos);
  try
    dlgTeamsLogos.ShowModal;
  finally
    dlgTeamsLogos.Free;
    dlgTeamsLogos := nil;
  end;
end;

procedure TfrmMdcFootballChampionship.Autogol1Click(Sender: TObject);
begin
  {
    6;"Autogol"
  }

  with dmFootballPostgres do
  begin
    dmFootballPostgres.qryMatchEvents.Append;
    self.JanuaDialogInteger1.Caption := 'Minuti di Gioco';
    self.JanuaDialogInteger1.Execute;
    qryMatchEventsplayer_id.AsInteger := qryMatchTeamPlayersplayer_id.AsInteger;
    qryMatchEventsevent_id.AsInteger := 6;
    qryMatchEventsminute.AsInteger := JanuaDialogInteger1.Number;
    qryMatchTeamPlayersteam_id.AsInteger;
    if dmFootballPostgres.qryMatcheshome_team_id.AsInteger = qryMatchTeamPlayersteam_id.AsInteger then
      qryMatchEventsfavor_team_id.AsInteger := dmFootballPostgres.qryMatchesvisitors_team_id.AsInteger
    else
      qryMatchEventsfavor_team_id.AsInteger := dmFootballPostgres.qryMatcheshome_team_id.AsInteger;
    qryMatchEventsteam_id.AsInteger := qryMatchTeamPlayersteam_id.AsInteger;
    qryMatchEventsnotes.AsWideString := 'Aut.';
    qryMatchEventsvalue.AsInteger := 1;
    dmFootballPostgres.qryMatchEvents.Post;
    dmFootballPostgres.qryMatchEvents.Close;
    dmFootballPostgres.qryMatchEvents.Open;
  end;
  CalculateMatch;
end;

end.
