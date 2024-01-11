unit Janua.Test.VCL.frmViewModel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.StdCtrls, Janua.Core.Classes, Janua.Vcl.Actions, Vcl.DBCtrls,
  Vcl.ToolWin, Vcl.ComCtrls, Janua.Vcl.ViewModel, Vcl.Mask, JvExMask, JvToolEdit,
  Lucombo,
  // Januaproject
  Janua.Test.ViewModel.Intf, Janua.ViewModels.Intf,
  // Interposers
  Janua.Vcl.Interposers, Janua.TMS.Interposers, SVGIconImageList, SVGIconImageListBase, AdvDateTimePicker,
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Janua.VCL.EnhCRDBGrid, Vcl.Menus, uframeVCLTest, Janua.Core.Commons;

type
  TfrmVCLTestViewModel = class(TForm)
    pnlCommands: TPanel;
    pnlSearch: TPanel;
    JanuaActionViewController1: TJanuaActionViewController;
    navMaster: TDBNavigator;
    JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder;
    JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder;
    btnStartSearch: TButton;
    btnAction1: TButton;
    btnAction2: TButton;
    ToolBar1: TToolBar;
    pnlDateFrom: TPanel;
    lbDateFrom: TLabel;
    pnlSearchText: TPanel;
    Label2: TLabel;
    SVGIconImageList1: TSVGIconImageList;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    edDateFrom: TDateTimePicker;
    Panel4: TPanel;
    lbSearchText: TLabel;
    ComboBox2: TComboBox;
    pnlDateTo: TPanel;
    lbDateTo: TLabel;
    edDateTo: TDateTimePicker;
    LUEdit1: TLUEdit;
    pnlSearchParams: TPanel;
    grdMaster: TEnhCRDBGrid;
    pnlBottom: TPanel;
    grdDetail: TEnhCRDBGrid;
    pnlDetail: TPanel;
    navDetail: TDBNavigator;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    estViewModel1: TMenuItem;
    estMenuBar1: TMenuItem;
    estSearchBar1: TMenuItem;
    estGrids1: TMenuItem;
    DataSource1: TDataSource;
    frameTestRecord1: TframeVCLTest;
    estFrame1: TMenuItem;
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure btnStartSearchClick(Sender: TObject);
    procedure estFrame1Click(Sender: TObject);
    procedure estGrids1Click(Sender: TObject);
    procedure estMenuBar1Click(Sender: TObject);
    procedure estSearchBar1Click(Sender: TObject);
    procedure estViewModel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FTestViewModel: IJanuaTestViewModel;
    FViewModel: IJanuaDBViewModel;
    procedure SetTestViewModel(const Value: IJanuaTestViewModel);
    procedure SetViewModel(const Value: IJanuaDBViewModel);
    { Private declarations }
  protected

  public
    { Public declarations }
    property ViewModel: IJanuaDBViewModel read FViewModel write SetViewModel;
    property TestViewModel: IJanuaTestViewModel read FTestViewModel write SetTestViewModel;
  end;

var
  frmVCLTestViewModel: TfrmVCLTestViewModel;

implementation

uses  Janua.Vcl.Framework, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmVCLTestViewModel.Action1Execute(Sender: TObject);
begin
  Action1.Checked := True;
  Action2.Checked := not Action1.Checked;
  (*
  btnAction2.HotImageIndex := btnAction2.ImageIndex;
  btnAction1.HotImageIndex := btnAction1.SelectedImageIndex;
  *)
end;

procedure TfrmVCLTestViewModel.Action2Execute(Sender: TObject);
begin
  Action2.Checked := True;
  Action1.Checked := not Action2.Checked;
  (*
  btnAction2.HotImageIndex := btnAction2.SelectedImageIndex;
  btnAction1.HotImageIndex := btnAction1.ImageIndex;
  *)
end;

procedure TfrmVCLTestViewModel.btnStartSearchClick(Sender: TObject);
begin
  FViewModel.StartSearch;
end;

procedure TfrmVCLTestViewModel.estFrame1Click(Sender: TObject);
begin
  {Self.frameTestRecord1.TestRecord := Self.FTestViewModel.CurrentRecord;}
end;

procedure TfrmVCLTestViewModel.estGrids1Click(Sender: TObject);
begin
  grdMaster.DataSource := FViewModel.dsMaster;
  grdDetail.Visible := FViewModel.HasDetail;
  // FViewModel.Bind('HasDetail', grdDetail, 'Visible', True);
  navDetail.DataSource := FViewModel.dsDetail;
  grdDetail.DataSource := FViewModel.dsDetail;
end;

procedure TfrmVCLTestViewModel.estMenuBar1Click(Sender: TObject);
begin
  JanuaActionViewController1.DataSource := FViewModel.dsMaster;
  JanuaActionViewController1.JanuaActionList := FViewModel.MainActionList;
  JanuaActionViewController1.Activate;
end;

procedure TfrmVCLTestViewModel.estSearchBar1Click(Sender: TObject);
begin
  // pnlSearch.Images := TJanuaVCLApplication.FontVCLIcons24;
  JanuaVCLMVVMSearchTextBuilder1.MDViewModel := FViewModel;
  // TJanuaApplicationFactory.RegisterClass(IJanuaTestViewModel, TTestViewModel);
  JanuaVCLMVVMSearchTextBuilder1.Activate;
end;

procedure TfrmVCLTestViewModel.estViewModel1Click(Sender: TObject);
begin
  if not TJanuaApplicationFactory.TryGetInterface(IJanuaTestViewModel, FTestViewModel) then
    raise Exception.Create('TfrmVCLTestViewModel.FormCreate IJanuaTestViewModel not set');
  // function Supports(const Instance: IInterface; const IID: TGUID; out Intf): Boolean;
  if not Supports(FTestViewModel, IJanuaDBViewModel, FViewModel) then
    raise Exception.Create('TfrmVCLTestViewModel.FormCreate lTestViewModel no support IJanuaDBViewModel');
  {FViewModel.Initialize;}
end;

procedure TfrmVCLTestViewModel.FormCreate(Sender: TObject);
begin
  TJanuaVCLApplication.IconFontColor := clSilver;
end;

procedure TfrmVCLTestViewModel.SetTestViewModel(const Value: IJanuaTestViewModel);
begin
  FTestViewModel := Value;
end;

procedure TfrmVCLTestViewModel.SetViewModel(const Value: IJanuaDBViewModel);
begin
  FViewModel := Value;
end;

end.
