unit ufrmTestLNDTabbedNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, FMX.Forms, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.StdCtrls,
  FMX.Objects, FMX.ListView, FMX.Controls.Presentation,
  FMX.Controls, FMX.TabControl, FMX.Types, System.Actions, FMX.ActnList, FMX.Gestures;

type
  TTabbedwithNavigationForm = class(TForm)
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    TabControlLND: TTabControl;
    TabItem1LND: TTabItem;
    TabControlMenu: TTabControl;
    TabItem11: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    SpeedButton1: TSpeedButton;
    ListViewMainMenu: TListView;
    TextConnectionError1: TText;
    TabItem12: TTabItem;
    ToolBar2: TToolBar;
    lblTitle12: TLabel;
    btnBack: TSpeedButton;
    ListViewArguments: TListView;
    TextConnectionError2: TText;
    TabItem13: TTabItem;
    ToolBar6: TToolBar;
    lbTitle13: TLabel;
    SpeedButton2: TSpeedButton;
    TabItem14: TTabItem;
    ToolBar7: TToolBar;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    Rectangle1: TRectangle;
    TabItem2Championships: TTabItem;
    ToolBar3: TToolBar;
    lblTitle3: TLabel;
    TabControlChampionships: TTabControl;
    TabItem21: TTabItem;
    ListViewChampionships: TListView;
    TabItem22: TTabItem;
    TabItemMap: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    Label1: TLabel;
    btnCallFair: TButton;
    btnWebFair: TButton;
    TabItem4: TTabItem;
    ToolBar5: TToolBar;
    lblTitle5: TLabel;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControlLND.ActiveTab := TabItem1LND;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControlLND.ActiveTab = TabItem1LND) and (TabControlMenu.ActiveTab = TabItem12) then
    begin
      TabControlMenu.Previous;
      Key := 0;
    end;
  end;
end;

procedure TTabbedwithNavigationForm.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo;
  var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControlLND.ActiveTab <> TabControlLND.Tabs[TabControlLND.TabCount - 1] then
          TabControlLND.ActiveTab := TabControlLND.Tabs[TabControlLND.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControlLND.ActiveTab <> TabControlLND.Tabs[0] then
          TabControlLND.ActiveTab := TabControlLND.Tabs[TabControlLND.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

end.
