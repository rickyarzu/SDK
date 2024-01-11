unit Janua.FMX.PhoenixMobile.frmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Actions,
  // FMX
  FMX.Types, FMX.Controls, FMX.Graphics, FMX.Forms, FMX.Dialogs, FMX.TabControl, FMX.ActnList,
  FMX.Objects, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView,
  // Janua
  Janua.FMX.PhoenixMobile.Resources, Janua.FMX.ListViewMenu, Janua.Core.Commons,  Janua.Core.Classes, FMX.Layouts,
  Janua.FMX.FormControls, Janua.FMX.PhoenixMobile.frameReportItem, Janua.FMX.PhoenixMobile.frameReportHeader,
  FMX.Edit, FMX.TMSBaseControl, FMX.TMSBaseGroup, FMX.TMSRadioGroup;

type
  TfrmFMXPhoenixMobileMain = class(TForm)
    ActionList1: TActionList;
    PreviousTabAction1: TPreviousTabAction;
    TitleAction: TControlAction;
    NextTabAction1: TNextTabAction;
    TopToolBar: TToolBar;
    btnNext: TSpeedButton;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    ListViewMain: TListView;
    jlvMenuController: TJanuaFMXListViewMenuController;
    Rectangle1: TRectangle;
    Layout1: TLayout;
    lbUtente: TLabel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    lbTitle: TLabel;
    lbDate: TLabel;
    JanuaFmxBadge1: TJanuaFmxBadge;
    SpeedButton1: TSpeedButton;
    TabItem3: TTabItem;
    frameFMXPhoenixMobileReportHeader1: TframeFMXPhoenixMobileReportHeader;
    edLocation: TEdit;
    ClearEditButton1: TClearEditButton;
    Layout3: TLayout;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    rgSelectSearch: TTMSFMXRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure TitleActionUpdate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btnTestClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FTestMenu: TJanuaFMXListViewMenuController;
    FdmJanuaFMXPhoenixMobileResources: TdmJanuaFMXPhoenixMobileResources;
  public
    { Public declarations }
  end;

var
  frmFMXPhoenixMobileMain: TfrmFMXPhoenixMobileMain;

implementation

uses Spring;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}
{$R *.iPhone55in.fmx IOS}

procedure TfrmFMXPhoenixMobileMain.TitleActionUpdate(Sender: TObject);
begin
  if Sender is TCustomAction then
  begin
    if TabControl1.ActiveTab <> nil then
      TCustomAction(Sender).Text := TabControl1.ActiveTab.Text
    else
      TCustomAction(Sender).Text := '';
  end;
end;

procedure TfrmFMXPhoenixMobileMain.btnTestClick(Sender: TObject);
var
  iTest: integer;
  lItem, lItem2: TJanuaFMXMenuItem;

begin
  FTestMenu := TJanuaFMXListViewMenuController.Create(self);
{$IF Defined(DEBUG)}
  Guard.CheckNotNull(FTestMenu.MenuItems, 'FTestMenu.MenuItems');
{$ENDIF}
  iTest := FTestMenu.MenuItems.Count;
  lItem := FTestMenu.MenuItems.Add;
{$IF Defined(DEBUG)}
  Guard.CheckNotNull(lItem, 'lItem');
{$ENDIF}
  FdmJanuaFMXPhoenixMobileResources := TdmJanuaFMXPhoenixMobileResources.Create(self);
  FTestMenu.Images := FdmJanuaFMXPhoenixMobileResources.ImageList512;
{$IF Defined(DEBUG)}
  Guard.CheckNotNull(FTestMenu.Images, 'FTestMenu.Images');
  Guard.CheckNotNull(FTestMenu.MenuItems[0], 'FTestMenu.MenuItems[0]');
  Guard.CheckNotNull(FTestMenu.MenuItems[0].Images, 'FTestMenu.MenuItems[0].Images');
{$ENDIF}
  lItem.ImageIndex := 1;
  lItem.Title := 'Prova Menu 1';
  lItem2 := FTestMenu.MenuItems.Add;
  iTest := FTestMenu.MenuItems.Count;
{$IF Defined(DEBUG)}
  Guard.CheckTrue(iTest = 2, 'iTest');
  Guard.CheckNotNull(lItem2, 'lItem2');
  Guard.CheckNotNull(FTestMenu.Images, 'FTestMenu.Images');
  Guard.CheckNotNull(FTestMenu.MenuItems[1], 'FTestMenu.MenuItems[0]');
  Guard.CheckNotNull(FTestMenu.MenuItems[1].Images, 'FTestMenu.MenuItems[0].Images');
{$ENDIF}
  lItem2.ImageIndex := 2;
  ListViewMain.Images := FdmJanuaFMXPhoenixMobileResources.ImageList512;
  FTestMenu.ListView := ListViewMain;
  FTestMenu.DrawListView;
end;

procedure TfrmFMXPhoenixMobileMain.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.First(TTabTransition.None);
end;

procedure TfrmFMXPhoenixMobileMain.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if (Key = vkHardwareBack) and (TabControl1.TabIndex <> 0) then
  begin
    TabControl1.First;
    Key := 0;
  end;
end;

procedure TfrmFMXPhoenixMobileMain.FormShow(Sender: TObject);
begin
  jlvMenuController.DrawListView
end;

end.
