unit ufrmMDCStatisticsQueries;

interface

uses
  // WinApi
  Winapi.Windows, Winapi.Messages,
  // System
  System.SysUtils, System.Variants, System.Classes, System.ImageList,
  // VcL
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, AdvMenus, Vcl.ImgList, Vcl.ComCtrls, Vcl.ExtCtrls,
  // TMS
  AdvOfficePager, AdvSplitter, AdvAppStyler,
  // DB
  Data.DB,
  // Janua Project
  Janua.Core.Classes, Janua.Vcl.Statistics.MainFormController, Janua.Vcl.Dialogs, uframeVCLStatisticQuery;

type
  TfrmMDCStatisticsQueries = class(TForm)
    AdvMainMenu1: TAdvMainMenu;
    Statistiche1: TMenuItem;
    GestioneQuery1: TMenuItem;
    AdvFormStyler1: TAdvFormStyler;
    ImageList1: TImageList;
    PopupMenu1: TAdvPopupMenu;
    Add1: TMenuItem;
    AddGroup1: TMenuItem;
    AddQuery1: TMenuItem;
    Delete1: TMenuItem;
    ExecQuery1: TMenuItem;
    EditQuery1: TMenuItem;
    N1: TMenuItem;
    InviaInRepository1: TMenuItem;
    RicevidaRepository1: TMenuItem;
    AdvSplitter1: TAdvSplitter;
    pnlNavigator: TPanel;
    TreeListQueries: TTreeView;
    pnlQueries: TPanel;
    pgQueries: TAdvOfficePager;
    JanuaStatisticsMainForm1: TJanuaStatisticsMainForm;
    Refresh1: TMenuItem;
    N2: TMenuItem;
    Rename1: TMenuItem;
    JanuaDialogText1: TJanuaDialogText;
    procedure JanuaStatisticsMainForm1AfterAddQuery(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMDCStatisticsQueries: TfrmMDCStatisticsQueries;

implementation

type
    TFrameClass = class of TframeVCLStatisticQuery;

{$R *.dfm}

procedure TfrmMDCStatisticsQueries.JanuaStatisticsMainForm1AfterAddQuery(Sender: TObject);
var
  NewTabSheet: tAdvOfficePage;
  NewFrame: uframeVCLStatisticQuery.TframeVCLStatisticQuery;
  FrameClass: TFrameClass;
  tpage: integer;
  i: integer;
  bookmark: TBookmark;
  PageName: string;
begin

end;

end.
