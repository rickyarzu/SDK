unit TabbedFormwithNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // JANUA
  Janua.Core.Functions,

  //FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.TMSBaseControl, FMX.TMSTableView, FMX.Layouts, FMX.Edit;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControl1: TTabControl;
    TabItemCore: TTabItem;
    TabControl2: TTabControl;
    TabItemCoreMenu: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    btnNext: TSpeedButton;
    TabItemCoreFunctions: TTabItem;
    ToolBar2: TToolBar;
    lblTitle2: TLabel;
    btnBack: TSpeedButton;
    TabItem2: TTabItem;
    ToolBar3: TToolBar;
    lblTitle3: TLabel;
    TabItem3: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    TabItem4: TTabItem;
    ToolBar5: TToolBar;
    lblTitle5: TLabel;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    TMSFMXTableView1: TTMSFMXTableView;
    TMSFMXTVCoreFunctions: TTMSFMXTableView;
    TabItem1: TTabItem;
    ScrollBoxCoreFunctionValidation: TScrollBox;
    Panel1: TPanel;
    edEmail: TEdit;
    Label1: TLabel;
    Button1: TButton;
    lbValidateEmail: TLabel;
    TabControl3: TTabControl;
    tab401Standard: TTabItem;
    TabItem6: TTabItem;
    TabItem7: TTabItem;
    TabItem8: TTabItem;
    VertScrollBox1: TVertScrollBox;
    Panel2: TPanel;
    Switch1: TSwitch;
    Label2: TLabel;
    Edit1: TEdit;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}

procedure TTabbedwithNavigationForm.Button1Click(Sender: TObject);
begin
  if Janua.Core.Functions.IsValidEmail(edEmail.Text) then
  begin
     self.lbValidateEmail.Text := 'Mail Valida';
  end
  else
  begin
     self.lbValidateEmail.Text := 'Mail Non Valida';
  end;

end;

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabItemCore;
  TabControl2.ActiveTab := TabItemCoreMenu;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControl1.ActiveTab = TabItemCore) and (TabControl2.ActiveTab = TabItemCoreMenu) then
    begin
      TabControl2.Previous;
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
        if TabControl1.ActiveTab <> TabControl1.Tabs[TabControl1.TabCount - 1] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControl1.ActiveTab <> TabControl1.Tabs[0] then
          TabControl1.ActiveTab := TabControl1.Tabs[TabControl1.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

end.
