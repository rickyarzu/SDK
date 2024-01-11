unit ufrmTestTabbedCreationComponents;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, Janua.FMX.Forms,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation, Janua.Core.Cloud,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.Layouts, FMX.ScrollBox, FMX.Memo, FMX.Edit, Janua.Core.Classes,
  Janua.Core.DB, Janua.FMX.Geocoding;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControlCreation: TTabControl;
    TabItem1: TTabItem;
    TabControlHome: TTabControl;
    TabItemControlHome: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    btnNext: TSpeedButton;
    TabItem6: TTabItem;
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
    Button1: TButton;
    VertScrollBox1: TVertScrollBox;
    MainLayout1: TLayout;
    Button2: TButton;
    Memo1: TMemo;
    LabelTitle: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    btnTestGeoCodingComponents: TButton;
    TabItemGeoCoding: TTabItem;
    EdLocation: TEdit;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure btnTestGeoCodingComponentsClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private
    { Private declarations }
    FFormManager: Janua.FMX.Forms.TJanuaFMXFormManager;
  public
    { Public declarations }
    FJanuaCoreOS: Janua.Core.Classes.TJanuaCoreOS;
    FJanuaLogger: Janua.Core.DB.TJanuaDBLogger;
    FJanuaGoogleGeoCoding: Janua.Core.Cloud.TJanuaGoogleGeoCoding;
    FJanuaFMXGoogleGeoCoding: TJanuaFMXGoogleGeoCoding;
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}

procedure TTabbedwithNavigationForm.btnNextClick(Sender: TObject);
begin
  TabControlHome.ActiveTab := TabItemControlHome
end;

procedure TTabbedwithNavigationForm.btnTestGeoCodingComponentsClick(Sender: TObject);
begin
  self.FJanuaGoogleGeoCoding := TJanuaGoogleGeoCoding.Create(self);
  FJanuaGoogleGeoCoding.JanuaLogger := self.FJanuaLogger;
  FJanuaGoogleGeoCoding.JanuaOS := self.FJanuaCoreOS;
  FJanuaGoogleGeoCoding.Activate;
  FJanuaFMXGoogleGeoCoding := TJanuaFMXGoogleGeoCoding.Create(self);
  FJanuaFMXGoogleGeoCoding.JanuaGoogleGeoCoding := FJanuaGoogleGeoCoding;
  FJanuaFMXGoogleGeoCoding.JanuaOS := self.FJanuaCoreOS;
  FJanuaFMXGoogleGeoCoding.JanuaLogger := self.FJanuaLogger;
  FJanuaFMXGoogleGeoCoding.LocationEdit := self.EdLocation;
  TabControlHome.ActiveTab := self.TabItemGeoCoding;
end;

procedure TTabbedwithNavigationForm.Button1Click(Sender: TObject);
begin
  self.TabControlHome.Next();

end;

procedure TTabbedwithNavigationForm.Button3Click(Sender: TObject);
begin
  if not Assigned(self.FFormManager) then
    FFormManager := Janua.FMX.Forms.TJanuaFMXFormManager.Create(self);
  self.FFormManager.VertScrollBox := self.VertScrollBox1;
  self.FFormManager.MainLayout := self.MainLayout1;
  self.FFormManager.AutoShowKeyBoard := True;
  self.FFormManager.Activate;

end;

procedure TTabbedwithNavigationForm.Button4Click(Sender: TObject);
begin
  self.FJanuaCoreOS := Janua.Core.Classes.TJanuaCoreOS.Create(self);
  self.FJanuaCoreOS.ClearLog;
  self.FJanuaCoreOS.AppName := 'test.januaproject.it';
  self.FJanuaCoreOS.Activate;
  FJanuaLogger := Janua.Core.DB.TJanuaDBLogger.Create(self);
  FJanuaLogger.JanuaOS := self.FJanuaCoreOS;
end;

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControlCreation.ActiveTab := TabItem1;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControlCreation.ActiveTab = TabItem1) and (TabControlHome.ActiveTab = TabItem6) then
    begin
      TabControlHome.Previous;
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
        if TabControlCreation.ActiveTab <> TabControlCreation.Tabs[TabControlCreation.TabCount - 1] then
          TabControlCreation.ActiveTab := TabControlCreation.Tabs[TabControlCreation.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControlCreation.ActiveTab <> TabControlCreation.Tabs[0] then
          TabControlCreation.ActiveTab := TabControlCreation.Tabs[TabControlCreation.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

end.
