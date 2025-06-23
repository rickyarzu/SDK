unit Janua.FMX.PhoenixMobile.frmMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Actions,
  System.Generics.Collections,
  // FMX
  FMX.Types, FMX.Controls, FMX.Graphics, FMX.Forms, FMX.Dialogs, FMX.TabControl, FMX.ActnList,
  FMX.Objects, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, FMX.Layouts, FMX.Edit, FMX.TMSBaseControl, FMX.TMSBaseGroup,
  FMX.TMSRadioGroup,
  // Janua
  Janua.FMX.PhoenixMobile.Resources, Janua.FMX.ListViewMenu, Janua.Core.Commons, Janua.Core.Classes,

  Janua.FMX.FormControls, Janua.FMX.PhoenixMobile.frameReportItem, Janua.FMX.PhoenixMobile.frameReportHeader,
  Janua.FMX.PhoenixMobile.frameReportListModel, Janua.FMX.PhoenixMobile.frameReportListEstinguishers,
  Janua.FMX.PhoenixMobile.frameReportListFireHoses;

type
  TfrmFMXPhoenixMobileMain = class(TForm)
    ActionList1: TActionList;
    PreviousTabAction1: TPreviousTabAction;
    TitleAction: TControlAction;
    NextTabAction1: TNextTabAction;
    TopToolBar: TToolBar;
    btnNext: TSpeedButton;
    TabControl1: TTabControl;
    tab01Menu: TTabItem;
    tab02ReportList: TTabItem;
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
    tab03Report: TTabItem;
    frameFMXPhoenixMobileReportHeader1: TframeFMXPhoenixMobileReportHeader;
    edLocation: TEdit;
    ClearEditButton1: TClearEditButton;
    Layout3: TLayout;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    rgSelectSearch: TTMSFMXRadioGroup;
    Layout5: TLayout;
    VertScrollBoxReports: TVertScrollBox;
    actSincroDB: TAction;
    ToolBar2: TToolBar;
    Rectangle4: TRectangle;
    Layout6: TLayout;
    lbRapportino: TLabel;
    SpeedButton2: TSpeedButton;
    tab04EstingushersList: TTabItem;
    ToolBar3: TToolBar;
    Rectangle5: TRectangle;
    Layout7: TLayout;
    lbEstingushersList: TLabel;
    SpeedButton3: TSpeedButton;
    frameFMXPhoenixReportListEstinguishers1: TframeFMXPhoenixReportListEstinguishers;
    Timer1: TTimer;
    tab05FireHoseLisst: TTabItem;
    ToolBar4: TToolBar;
    Rectangle6: TRectangle;
    Layout8: TLayout;
    lbIdranti: TLabel;
    SpeedButton4: TSpeedButton;
    frameFMXReportListFireHoses1: TframeFMXReportListFireHoses;
    procedure FormCreate(Sender: TObject);
    procedure TitleActionUpdate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btnTestClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure jlvMenuControllerMenuItems0Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure frameFMXPhoenixMobileReportHeader1btnFireExtinguishersClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure frameFMXPhoenixMobileReportHeader1btnFireHydrantsClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    FTestMenu: TJanuaFMXListViewMenuController;
    FdmJanuaFMXPhoenixMobileResources: TdmJanuaFMXPhoenixMobileResources;
    FListFrames: TObjectList<TframeReportItem>;
  public
    { Public declarations }
    procedure ReportClick(Sender: TObject);
    procedure CallBackEvent(Sender: TObject);
  end;

var
  frmFMXPhoenixMobileMain: TfrmFMXPhoenixMobileMain;

implementation

uses Spring, Janua.FMX.PhoenixMobile.dmAppMobileController;

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.iPhone4in.fmx IOS}
{$R *.iPhone55in.fmx IOS}

procedure TfrmFMXPhoenixMobileMain.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  FTestMenu := TJanuaFMXListViewMenuController.Create(self);
  var
  lItem := FTestMenu.MenuItems.Add;
  lItem.ImageIndex := 17;
  lItem.Title := 'Rapporti di Manutenziona Ordinaria';
  lItem.OnClick := jlvMenuControllerMenuItems0Click;
  FdmJanuaFMXPhoenixMobileResources := TdmJanuaFMXPhoenixMobileResources.Create(self);
  ListViewMain.Images := FdmJanuaFMXPhoenixMobileResources.ImageList512;
  FTestMenu.ListView := ListViewMain;
  FTestMenu.DrawListView;

  (*

    Timer1.Enabled := False;
    FdmJanuaFMXPhoenixMobileResources := TdmJanuaFMXPhoenixMobileResources.Create(self);
    ListViewMain.Images := FdmJanuaFMXPhoenixMobileResources.ImageList512;
    FTestMenu := TJanuaFMXListViewMenuController.Create(self);

    for var I := 0 to jlvMenuController.MenuItems.Count - 1 do
    begin
    var
    lItem := FTestMenu.MenuItems.Add;
    lItem.ImageIndex := jlvMenuController.MenuItems[I].ImageIndex;
    lItem.Title := jlvMenuController.MenuItems[I].Title;
    lItem.OnClick := jlvMenuController.MenuItems[I].OnClick;
    end;

    FTestMenu.ListView := ListViewMain;
    FTestMenu.DrawListView;
  *)
end;

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

procedure TfrmFMXPhoenixMobileMain.CallBackEvent(Sender: TObject);
begin
  var
  lCount := dmFMXPhoenixAppMobileController.StatiniLIst.statini.Count;
  var
  lTop := 0.0;
  if lCount > 0 then
  begin
    if FListFrames.Count > 0 then
      for var I := FListFrames.Count downto 0 do
        FListFrames[I].Free;

    FListFrames.Clear;

    for var I := 0 to lCount - 1 do
    begin
      var
      aFrame := TframeReportItem.Create(self);
      aFrame.Name := 'frameReportList' + I.ToString;
      FListFrames.Add(aFrame);
      aFrame.Align := TAlignLayout.Top;
      aFrame.Position.Y := lTop;
      lTop := lTop + aFrame.Height;
      aFrame.Statino := dmFMXPhoenixAppMobileController.StatiniLIst.statini[I];
      aFrame.Parent := VertScrollBoxReports;
      aFrame.Visible := True;
      aFrame.OnItemClick := ReportClick;
    end;
    // statini: TObjectList<TLSStatino>
  end;

end;

procedure TfrmFMXPhoenixMobileMain.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.First(TTabTransition.None);
  FListFrames := TObjectList<TframeReportItem>.Create;
  dmFMXPhoenixAppMobileController.AfterStatiniLoad := CallBackEvent;
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
  // jlvMenuController.DrawListView
end;

procedure TfrmFMXPhoenixMobileMain.frameFMXPhoenixMobileReportHeader1btnFireExtinguishersClick
  (Sender: TObject);
begin
  frameFMXPhoenixReportListEstinguishers1.Statino := dmFMXPhoenixAppMobileController.Statino;
  TabControl1.Next(TTabTransition.Slide);
end;

procedure TfrmFMXPhoenixMobileMain.frameFMXPhoenixMobileReportHeader1btnFireHydrantsClick(Sender: TObject);
begin
  frameFMXReportListFireHoses1.Statino := dmFMXPhoenixAppMobileController.Statino;
  TabControl1.GotoVisibleTab(4, TTabTransition.Slide);
end;

procedure TfrmFMXPhoenixMobileMain.jlvMenuControllerMenuItems0Click(Sender: TObject);
begin
  TabControl1.Next(TTabTransition.Slide);
end;

procedure TfrmFMXPhoenixMobileMain.ReportClick(Sender: TObject);
begin
  frameFMXPhoenixMobileReportHeader1.Statino := dmFMXPhoenixAppMobileController.Statino;
  TabControl1.Next(TTabTransition.Slide);
end;

procedure TfrmFMXPhoenixMobileMain.SpeedButton1Click(Sender: TObject);
begin
  TabControl1.Previous(TTabTransition.Slide);
end;

procedure TfrmFMXPhoenixMobileMain.SpeedButton2Click(Sender: TObject);
begin
  TabControl1.Previous(TTabTransition.Slide);
end;

procedure TfrmFMXPhoenixMobileMain.SpeedButton4Click(Sender: TObject);
begin
  TabControl1.GotoVisibleTab(1, TTabTransition.Slide);
end;

end.
