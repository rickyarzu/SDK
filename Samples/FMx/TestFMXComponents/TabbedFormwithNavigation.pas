unit TabbedFormwithNavigation;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, Janua.Core.Classes, Janua.FMX.Components, Janua.Core.Types, Janua.Core.Functions,
  Janua.Core.Anagraph;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabControl2: TTabControl;
    TabItem5: TTabItem;
    ToolBar1: TToolBar;
    lblTitle1: TLabel;
    btnNext: TSpeedButton;
    TabItem6: TTabItem;
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
    Panel1: TPanel;
    ListView1: TListView;
    Button1: TButton;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FCoordinates: TJanuaRecordCoordinates;
    FAnagraphs: TJanuaAnagraphs;
    FJanuaFMXMapList1: TJanuaFMXMapList;
  public
    { Public declarations }
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}

procedure TTabbedwithNavigationForm.Button1Click(Sender: TObject);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  if not Assigned(FJanuaFMXMapList1) then
     FJanuaFMXMapList1:= TJanuaFMXMapList.Create(self);
  FJanuaFMXMapList1.ListView := self.ListView1;
  FCoordinates.Latitude := 44.3838776;
  self.FCoordinates.Longitude := 9.0401111;
  FJanuaFMXMapList1.CreateMap(self.Panel1, self.FCoordinates);
  // procedure SetMapAnagraph(aAnagraphs: TJanuaAnagraphs); overload;
  aAnagraph.Clear;
  aAnagraph.Latitude := 44.3838776;
  aAnagraph.longitude := 9.0401111;
  aAnagraph.LastName := 'Bar La Piazzetta';
  aAnagraph.Address.AddressFull := 'Via Guglielmo Oberdan, 230 rosso, Genova';
  aAnagraph.MainCategory.ImageID := 1;
  self.FAnagraphs.Add(aAnagraph);
  FJanuaFMXMapList1.SetMapAnagraph(FAnagraphs, True);
end;

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabItem1;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControl1.ActiveTab = TabItem1) and (TabControl2.ActiveTab = TabItem6) then
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
