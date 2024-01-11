unit ufrmTestFMXComponents;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Gestures, FMX.Controls.Presentation, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Janua.Core.Classes, Janua.Core.Servers, Janua.Core.Health,
  Janua.Postgres.Health, Janua.Core.System, Janua.Postgres.System, FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps,
  FMX.Edit;

type
  TTabbedForm = class(TForm)
    HeaderToolBar: TToolBar;
    ToolBarLabel: TLabel;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    GestureManager1: TGestureManager;
    tabTestHealth: TTabControl;
    TabItem5: TTabItem;
    tabTestInstitutes: TTabItem;
    tabTestBooking: TTabItem;
    TabItem8: TTabItem;
    TabItem9: TTabItem;
    ListView1: TListView;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    pnlMap: TPanel;
    ListView2: TListView;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    TMSFMXWebGMaps: TTMSFMXWebGMaps;
  public
    { Public declarations }
  end;

var
  TabbedForm: TTabbedForm;

implementation

uses
  Data.DB;

{$R *.fmx}
{$R *.Macintosh.fmx MACOS}

procedure TTabbedForm.FormCreate(Sender: TObject);
begin
  { This defines the default active tab at runtime }
  TabControl1.ActiveTab := TabItem1;
end;

procedure TTabbedForm.FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
{$IFDEF ANDROID}
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
{$ENDIF}
end;

procedure TTabbedForm.SpeedButton1Click(Sender: TObject);
var
  FdsInstitutes: TDataSet;
  FSearchAddress: String;
  FCoordinates: TJanuaCoordinates;
  FParent: TFMXObject;
begin
  FdsInstitutes := nil;
  FCoordinates.Latitude := 45.4655236;
  FCoordinates.Longitude := 9.2080925;
  FSearchAddress := 'Via Pasquale Sottocorno, 3, Milano';
  TMSFMXWebGMaps := TTMSFMXWebGMaps.Create(self);
  TMSFMXWebGMaps.Parent := self.pnlMap;
  TMSFMXWebGMaps.Align := TAlignLayout.Client;
  TMSFMXWebGMaps.ApiKey := 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c';
  TMSFMXWebGMaps.MapOptions.ZoomMap := 12;
  TMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
  // self.DM.JanuaServerHealthBooking1.Coordinates.Latitude;
  TMSFMXWebGMaps.MapOptions.DefaultLongitude := FCoordinates.Longitude;
  // DM.JanuaServerHealthBooking1.Coordinates.Longitude;
  TMSFMXWebGMaps.MapPanTo(FCoordinates.Latitude, FCoordinates.Longitude);
  TMSFMXWebGMaps.Visible := True;

  TMSFMXWebGMaps.Markers.Clear;
  TMSFMXWebGMaps.Markers.Add(FCoordinates.Latitude, FCoordinates.Longitude, FSearchAddress, '', False, True,
    False, False, True, 0);

  if Assigned(FdsInstitutes) and (FdsInstitutes.RecordCount > 0) then
  begin
    FdsInstitutes.First;
    while not FdsInstitutes.Eof do
    begin
      TMSFMXWebGMaps.Markers.Add(FdsInstitutes.FieldByName('latitude').AsFloat,
        FdsInstitutes.FieldByName('longitude').AsFloat,
        FdsInstitutes.FieldByName('an_last_name').AsWideString, '', False, True, False,
        False, True, 0);
      FdsInstitutes.Next;
    end;
    FdsInstitutes.First;
  end;

end;

end.
