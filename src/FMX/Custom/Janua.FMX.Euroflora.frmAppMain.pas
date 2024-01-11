unit Janua.FMX.Euroflora.frmAppMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation, Janua.Core.Cloud, FMX.Platform, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  System.Sensors, System.Sensors.Components, Janua.FMX.Cms, System.ImageList, FMX.ImgList,
  Janua.FMX.Services, Janua.Core.Classes, Janua.FMX.ListViewMenu, System.Actions, FMX.ActnList, FMX.Gestures,
  FMX.WebBrowser, FMX.Objects, FMX.ListView, FMX.Maps,
  // Janua Components
  Janua.FMX.Maps, Janua.Anagraph.Types, Janua.Maps.Types, Janua.Core.Types, Janua.FMX.FormControls,
  FMX.Edit, Janua.FMX.StandardMaps, Janua.Core.Commons;

type
  TfrmEuroFloraAppMain = class(TForm)
    // Janua Components
    JFMXLVMenuAround: TJanuaFMXListViewMenu;
    JFMXLVMenuFair: TJanuaFMXListViewMenu;
    JanuaFMXListEvents1: TJanuaFMXListNews;
    JanuaMapListFair: TJanuaFMXStandardMapList;
    JanuaMapListAround: TJanuaFMXStandardMapList;
    TabControlMain: TTabControl;
    tab2Around: TTabItem;
    TabControl2Around: TTabControl;
    TabItem21AroundMain: TTabItem;
    TabItem22AroundList: TTabItem;
    ToolBar2: TToolBar;
    lblTitleAround: TLabel;
    btnBack: TSpeedButton;
    tab3Events: TTabItem;
    tab1Fair: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    tab4News: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    ListViewAround: TListView;
    TabControl1Fair: TTabControl;
    TabItem11FairMain: TTabItem;
    ListViewFair: TListView;
    tabItem12FairList: TTabItem;
    ToolBar1: TToolBar;
    Label1: TLabel;
    btnFairPlacesBack: TSpeedButton;
    TabControl4News: TTabControl;
    TabItem41News: TTabItem;
    TabItem42News: TTabItem;
    ToolBar7: TToolBar;
    lbNewsArticle: TLabel;
    SpeedButton3: TSpeedButton;
    TabControl3Events: TTabControl;
    TabItem31EventsList: TTabItem;
    TabItem32EventPage: TTabItem;
    ToolBar8: TToolBar;
    lbEventArticle: TLabel;
    btnEventsBack: TSpeedButton;
    pnlMapListFair: TPanel;
    Image1: TImage;
    pnlAround: TPanel;
    ListViewFairPlaces: TListView;
    TabItem13Location: TTabItem;
    ListViewAroundPlaces: TListView;
    ToolBar3: TToolBar;
    Label2: TLabel;
    TabItem23Location: TTabItem;
    ToolBar5: TToolBar;
    lbAroundName: TLabel;
    SpeedButton1: TSpeedButton;
    JanuaDialer1: TJanuaDialer;
    btnCall: TButton;
    btnWeb: TButton;
    TabItem23WebSite: TTabItem;
    ToolBar6: TToolBar;
    lbAroundBrowserTitle: TLabel;
    SpeedButton2: TSpeedButton;
    WebBrowser1: TWebBrowser;
    Rectangle1: TRectangle;
    lbName: TLabel;
    Rectangle2: TRectangle;
    lbAddress: TLabel;
    ImageList1: TImageList;
    ListViewNews: TListView;
    ToolBar9: TToolBar;
    Label4: TLabel;
    WebBrowser2: TWebBrowser;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    ToolBar10: TToolBar;
    Label6: TLabel;
    WebBrowserEvents: TWebBrowser;
    JanuaFMXListNews1: TJanuaFMXListNews;
    ListViewEvents: TListView;
    Rectangle3: TRectangle;
    lbNameFair: TLabel;
    Rectangle4: TRectangle;
    lbAddressFair: TLabel;
    ToolBar11: TToolBar;
    lbFairName: TLabel;
    SpeedButton4: TSpeedButton;
    btnCallFair: TButton;
    btnWebFair: TButton;
    LocationSensor1: TLocationSensor;
    Timer1: TTimer;
    TimerAround: TTimer;
    Timer2: TTimer;
    JanuaFmxBadge1: TJanuaFmxBadge;
    pnlMapAroundDetail: TPanel;
    TimerListFair: TTimer;
    pnlMapFairDetail: TPanel;
    TabItem14WebSite: TTabItem;
    ToolBar12: TToolBar;
    lbFairBrowser: TLabel;
    SpeedButton5: TSpeedButton;
    WebBrowserFair: TWebBrowser;
    edFairUrl: TEdit;
    Panel1: TPanel;
    lbListViewNews: TLabel;
    Panel2: TPanel;
    lbListViewEvents: TLabel;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure btnFairPlacesBackClick(Sender: TObject);
    procedure JFMXLVMenuFairBeforeItemClick(Sender: TObject);
    procedure JFMXLVMenuAroundBeforeItemClick(Sender: TObject);
    procedure btnCallClick(Sender: TObject);
    procedure btnWebClick(Sender: TObject);
    procedure JanuaFMXListNews1SelectedItem(Sender: TObject);
    procedure TabControlMainChange(Sender: TObject);
    procedure JanuaFMXListEvents1SelectedItem(Sender: TObject);
    procedure btnEventsBackClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure OnMapAroundItemClick(Sender: TObject);
    procedure OnMapFairItemClick(Sender: TObject);
    procedure OnListFairMenuClick(Sender: TObject);
    procedure OnListAroundMenuClick(Sender: TObject);
    procedure JFMXLVMenuAroundAfterItemClick(Sender: TObject);
    procedure TimerListFairTimer(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TimerAroundTimer(Sender: TObject);
    procedure btnCallFairClick(Sender: TObject);
    procedure btnWebFairClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    aCloud: TJanuaCloudComponent;
    FMe: TMapMarker;
    // FFairMap: Janua.FMX.Maps.TJanuaFMXStandardMapList;
    // FAroundMap: Janua.FMX.Maps.TJanuaFMXStandardMapList;
    // DynamicAppearance
    aAnagraphs: TJanuaAnagraphs;
    // FAroundTag: Int64;
    FMapViewAroundDetail: TMapView;
    FMapViewFairDetail: TMapView;
    // FTagCategory: Integer;
    procedure Setup;
    procedure MapViewAroundDetailCreate(FMapParent: TStyledControl);
    procedure MapViewFairDetailCreate(FMapParent: TStyledControl);
  public
    { Public declarations }
    function HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
    procedure GenerateFairListView(aCategoryID: smallint);
    procedure GenerateAroundListView(aCategoryID: smallint);
  end;

var
  frmEuroFloraAppMain: TfrmEuroFloraAppMain;

implementation

{$R *.fmx}
{$R *.Macintosh.fmx MACOS}

uses System.IOUtils, Janua.Core.AsyncTask, Janua.FMX.Euroflora.Resources, Janua.Core.Functions,
  Janua.Eroflora.dmAppLocalData, Janua.FMX.Functions;

procedure TfrmEuroFloraAppMain.btnCallClick(Sender: TObject);
begin
  self.JanuaDialer1.PhoneToCall := self.JanuaMapListAround.SelectedItem.Address.Phone;
  JanuaDialer1.MakeACall;
end;

procedure TfrmEuroFloraAppMain.btnCallFairClick(Sender: TObject);
begin
  self.JanuaDialer1.PhoneToCall := self.JanuaMapListFair.SelectedItem.Address.Phone;
  JanuaDialer1.MakeACall;
end;

procedure TfrmEuroFloraAppMain.btnEventsBackClick(Sender: TObject);
begin
  self.TabControl3Events.Previous(TTabtransition.Slide)
end;

procedure TfrmEuroFloraAppMain.btnFairPlacesBackClick(Sender: TObject);
begin
  if FMe <> nil then
    FMe.Remove;
  self.TabControl1Fair.Previous(TTabtransition.Slide)
end;

procedure TfrmEuroFloraAppMain.btnWebClick(Sender: TObject);
begin
  self.lbAroundBrowserTitle.Text := self.JanuaMapListAround.SelectedItem.LastName;
  WebBrowser1.URL := JanuaMapListAround.SelectedItem.an_web;
  self.TabControl2Around.Next(TTabtransition.Slide);
  self.WebBrowser1.Navigate;
end;

procedure TfrmEuroFloraAppMain.btnWebFairClick(Sender: TObject);
begin
  self.lbFairBrowser.Text := self.JanuaMapListFair.SelectedItem.LastName;
  self.WebBrowserFair.URL := JanuaMapListFair.SelectedItem.an_web;
  self.TabControl1Fair.Next(TTabtransition.Slide);
  self.edFairUrl.Text := JanuaMapListFair.SelectedItem.an_web;
  self.WebBrowserFair.Navigate;
end;

procedure TfrmEuroFloraAppMain.FormCreate(Sender: TObject);
var
  aFMXApplicationEventService: IFMXApplicationEventService;
begin
  case TOSVersion.Platform of
    pfWindows:
      begin
      end;
    pfMacOS:
      begin
      end;
    pfiOS:
      begin
        Timer1.Interval := 200;
        Timer2.Interval := 200;
      end;
    pfAndroid:
      begin
        Timer1.Interval := 3000;
        Timer2.Interval := 3000;
      end;
    pfWinRT:
      begin
      end;
    pfLinux:
      begin
      end;
  end;
  if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService,
    IInterface(aFMXApplicationEventService)) then
  begin
    aFMXApplicationEventService.SetApplicationEventHandler(HandleAppEvent);
  end
  else
  begin
    self.Timer1.Enabled := True;
  end;
end;

procedure TfrmEuroFloraAppMain.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (TabControlMain.ActiveTab = self.tab1Fair) and (TabControl1Fair.ActiveTab = self.tabItem12FairList)
    then
    begin
      TabControl1Fair.Previous;
      Key := 0;
    end;
  end;
end;

procedure TfrmEuroFloraAppMain.GenerateAroundListView(aCategoryID: smallint);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  aAnagraphs.Clear;
  dmEurofloraAppLocalData.ExtractAnagraphs(aCategoryID, 100);
  aAnagraphs := dmEurofloraAppLocalData.AroundAnagraph;
end;

procedure TfrmEuroFloraAppMain.GenerateFairListView(aCategoryID: smallint);
var
  aAnagraph: TJanuaAnagraphRecord;
begin
  aAnagraphs.Clear;
  dmEurofloraAppLocalData.ExtractAnagraphs(aCategoryID, 60);
  aAnagraphs := dmEurofloraAppLocalData.AroundAnagraph;
  {
    aAnagraph.Clear;
    aAnagraph.LastName := 'New Chandra	';
    aAnagraph.MainCategory.ImageID := 29;
    aAnagraph.Latitude := 44.3805738;
    aAnagraph.Longitude := 9.0430119;
    aAnagraph.distance := Janua.Core.Functions.DistanceBetweenLonLat(aAnagraph.Latitude, aAnagraph.Longitude,
    aCoordinates.Latitude, aCoordinates.Longitude);
    aAnagraph.Address.AddressFull := 'Via Oberdan, 120 rosso, Genova';
    aAnagraphs.Add(aAnagraph);

    aAnagraph.Clear;
    aAnagraph.MainCategory.ImageID := 28;
    aAnagraph.LastName := 'Ristorante Le Cook';
    aAnagraph.Latitude := 44.3835578;
    aAnagraph.Longitude := 9.0426991;
    aAnagraph.distance := Janua.Core.Functions.DistanceBetweenLonLat(aAnagraph.Latitude, aAnagraph.Longitude,
    aCoordinates.Latitude, aCoordinates.Longitude);
    aAnagraph.Address.AddressFull := 'Via Oberdan, 120 rosso, Genova';
    aAnagraphs.Add(aAnagraph);

    aAnagraph.Clear;
    aAnagraph.MainCategory.ImageID := 27;
    aAnagraph.LastName := 'Bar Gelatieria Pisacane';
    aAnagraph.Latitude := 44.3805577;
    aAnagraph.Longitude := 9.0437764;
    aAnagraph.distance := Janua.Core.Functions.DistanceBetweenLonLat(aAnagraph.Latitude, aAnagraph.Longitude,
    aCoordinates.Latitude, aCoordinates.Longitude);
    aAnagraph.Address.AddressFull := 'Via Oberdan, 120 rosso, Genova';
    aAnagraphs.Add(aAnagraph);

    aAnagraph.Clear;
    aAnagraph.MainCategory.ImageID := 26;
    aAnagraph.LastName := 'Ristorante Il Cartellino Rosso';
    aAnagraph.Latitude := 44.3832652;
    aAnagraph.Longitude := 9.0437764;
    aAnagraph.distance := Janua.Core.Functions.DistanceBetweenLonLat(aAnagraph.Latitude, aAnagraph.Longitude,
    aCoordinates.Latitude, aCoordinates.Longitude);
    aAnagraph.Address.AddressFull := 'Via Oberdan, 120 rosso, Genova';
    aAnagraphs.Add(aAnagraph);

    aAnagraph.Clear;
    aAnagraph.MainCategory.ImageID := 30;
    aAnagraph.LastName := 'Blue Marlin';
    aAnagraph.Latitude := 44.3803029;
    aAnagraph.Longitude := 9.0435553;
    aAnagraph.distance := Janua.Core.Functions.DistanceBetweenLonLat(aAnagraph.Latitude, aAnagraph.Longitude,
    aCoordinates.Latitude, aCoordinates.Longitude);
    aAnagraph.Address.AddressFull := 'Via Oberdan, 120 rosso, Genova';
    aAnagraphs.Add(aAnagraph);

  }

  {
    Blue Marlin	true	15.08.17 09:35	44.3803029	9.0435553
    Ristorante Le Cook	true	03.10.15 20:40	44.3835578	9.0426991	0.169865754
    New Chandra	true	26.09.15 14:12	44.3805738	9.0430119	0.143993947
    Scuola Media Statale Clelia Durazzo (succursale)	true	19.09.15 21:33	44.3828711	9.0442105	0.084012581
    Farmacia La Rocca	true	08.01.18 13:20	44.3829866	9.0443028	0.087949514
    Bel Sito	true	26.09.15 19:26	44.3820031	9.0472192	0.097403267
    Bar Gelatieria Pisacane 3	true	21.09.15 10:53	44.3805577	9.0437764	0.118398479
    Ristorante Il Cartellino Rosso	true	22.09.15 12:05	44.3832652	9.043729	0.120114921
    true	04.10.15 20:16	44.3815085	9.0477884	0.128311726
    Raccolte Frugone	true	26.11.16 14:45	44.3813514	9.0477439	0.128983071
    Blue Marlin	true	15.08.17 09:35	44.3803029	9.0435553	0.139011987
  }

end;

procedure TfrmEuroFloraAppMain.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo;
  var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if TabControlMain.ActiveTab <> TabControlMain.Tabs[TabControlMain.TabCount - 1] then
          TabControlMain.ActiveTab := TabControlMain.Tabs[TabControlMain.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if TabControlMain.ActiveTab <> TabControlMain.Tabs[0] then
          TabControlMain.ActiveTab := TabControlMain.Tabs[TabControlMain.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

function TfrmEuroFloraAppMain.HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
begin
  case AAppEvent of
    TApplicationEvent.EnteredBackground:
      begin
        // self.LabelError.Visible := True;
      end;
    TApplicationEvent.BecameActive:
      begin
        self.Timer1.Enabled := True;
      end;
  end;
end;

procedure TfrmEuroFloraAppMain.JanuaFMXListEvents1SelectedItem(Sender: TObject);
begin
  self.TabControl3Events.Next();
  self.WebBrowserEvents.URL := self.JanuaFMXListEvents1.SelectedUrl;
  lbEventArticle.Text := JanuaFMXListEvents1.News.News.Items[JanuaFMXListEvents1.SelectedItem].Title;
  self.WebBrowserEvents.Navigate;
end;

procedure TfrmEuroFloraAppMain.JanuaFMXListNews1SelectedItem(Sender: TObject);
begin
  lbNewsArticle.Text := JanuaFMXListNews1.News.News.Items[JanuaFMXListNews1.SelectedItem].Title;
  self.TabControl4News.Next();
  self.WebBrowser2.URL := self.JanuaFMXListNews1.SelectedUrl;
  self.WebBrowser2.Navigate;
end;

procedure TfrmEuroFloraAppMain.JFMXLVMenuAroundAfterItemClick(Sender: TObject);
begin
  TimerListFair.Enabled := True;
end;

procedure TfrmEuroFloraAppMain.JFMXLVMenuAroundBeforeItemClick(Sender: TObject);
begin
  if not Assigned(self.JanuaMapListAround) then
  begin
    self.JanuaMapListAround := TJanuaFMXStandardMapList.Create(self);
    JanuaMapListAround.ListView := self.ListViewAroundPlaces;
  end;

  JanuaMapListAround.ListViewType := TJanuaListType.jltDynamic;
  JanuaMapListAround.TextTitle := 'Text1';
  JanuaMapListAround.TextImage := 'Portrait';
  JanuaMapListAround.TextDescription := 'Detail1';
  JanuaMapListAround.OnItemClick := OnMapAroundItemClick;
  self.JanuaMapListAround.Coordinates := dmEurofloraAppLocalData.Coordinates;
  self.JanuaMapListAround.MapParent := self.pnlAround;
  JanuaMapListAround.Zoom := 16.0;
  self.JanuaMapListAround.CreateMap;
end;

procedure TfrmEuroFloraAppMain.JFMXLVMenuFairBeforeItemClick(Sender: TObject);
begin
  JanuaMapListFair.Coordinates := dmEurofloraAppLocalData.Coordinates;
end;

procedure TfrmEuroFloraAppMain.MapViewAroundDetailCreate(FMapParent: TStyledControl);
begin
  Assert(Assigned(pnlMapAroundDetail), 'TJanuaFMXMapList.CreateMap Cannot Create Map, Parent not assigned');
  if not Assigned(self.FMapViewAroundDetail) then
  begin
    FMapViewAroundDetail := TMapView.Create(self);
    FMapViewAroundDetail.Parent := FMapParent;
    FMapViewAroundDetail.Align := TAlignLayout.Client;
    FMapViewAroundDetail.Visible := false;
    FMapViewAroundDetail.Enabled := false;
    FMapViewAroundDetail.Zoom := 15.0;
    // self.txtMap.Visible := False;
    // self.MapSet1 := true;
  end;
  with FMapViewAroundDetail do
  begin
    FMapViewAroundDetail.Size.PlatformDefault := false;
    FMapViewAroundDetail.Zoom := 15.0;
    FMapViewAroundDetail.MapType := FMX.Maps.TMapType.Terrain;
    FMapViewAroundDetail.Enabled := True;
    FMapViewAroundDetail.Visible := True;
    if (dmEurofloraAppLocalData.Coordinates.Latitude <> 0) and
      (dmEurofloraAppLocalData.Coordinates.Longitude <> 0) then
      MapMapPanTo(FMapViewAroundDetail, dmEurofloraAppLocalData.Coordinates, 15.0);
    // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
    // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Longitude;
    // disabilito i controlli di Default
    // MapOptions.DisablePOI := True;
  end;
end;

procedure TfrmEuroFloraAppMain.MapViewFairDetailCreate(FMapParent: TStyledControl);
begin
  Assert(Assigned(pnlMapFairDetail), 'TJanuaFMXMapList.CreateMap Cannot Create Map, Parent not assigned');
  if not Assigned(self.FMapViewFairDetail) then
  begin
    FMapViewFairDetail := TMapView.Create(self);
    FMapViewFairDetail.Parent := FMapParent;
    FMapViewFairDetail.Align := TAlignLayout.Client;
    FMapViewFairDetail.Visible := false;
    FMapViewFairDetail.Enabled := false;
    FMapViewFairDetail.Zoom := 15.0;
    // self.txtMap.Visible := False;
    // self.MapSet1 := true;
  end;
  with FMapViewFairDetail do
  begin
    FMapViewFairDetail.Size.PlatformDefault := false;
    FMapViewFairDetail.Zoom := 15.0;
    FMapViewFairDetail.MapType := FMX.Maps.TMapType.Terrain;
    FMapViewFairDetail.Enabled := True;
    FMapViewFairDetail.Visible := True;
    if (dmEurofloraAppLocalData.Coordinates.Latitude <> 0) and
      (dmEurofloraAppLocalData.Coordinates.Longitude <> 0) then
      MapMapPanTo(FMapViewFairDetail, dmEurofloraAppLocalData.Coordinates, 15.0);
    // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Latitude;
    // FTMSFMXWebGMaps.MapOptions.DefaultLatitude := FCoordinates.Longitude;
    // disabilito i controlli di Default
    // MapOptions.DisablePOI := True;
  end;
end;

procedure TfrmEuroFloraAppMain.OnMapFairItemClick(Sender: TObject);
var
  Coord: TJanuaRecordCoordinates;
begin
  if (JanuaMapListFair.ItemIndex > -1) and (JanuaMapListFair.SelectedItem.LastName <> '') then
  begin
    if not Assigned(FMapViewFairDetail) then
      MapViewFairDetailCreate(pnlMapFairDetail);
    self.TabControl1Fair.Next(TTabtransition.Slide);
    Coord := TJanuaRecordCoordinates.Create(JanuaMapListFair.SelectedItem.Address.Latitude,
      JanuaMapListFair.SelectedItem.Address.Longitude);
    FMe := Janua.FMX.Functions.AddMarker(FMapViewFairDetail, Coord, JanuaMapListFair.SelectedItem.LastName);
    lbNameFair.Text := JanuaMapListFair.SelectedItem.LastName;
    lbAddressFair.Text := JanuaMapListFair.SelectedItem.FullAddress;
    btnCallFair.Visible := JanuaMapListFair.SelectedItem.Address.Phone <> '';
    btnCallFair.Text := 'Chiama: ' + JanuaMapListFair.SelectedItem.Address.Phone;
    self.btnWebFair.Visible := JanuaMapListFair.SelectedItem.an_web <> '';
    lbFairName.Text := JanuaMapListFair.SelectedItem.LastName;
    FMapViewFairDetail.Zoom := 18;
  end;
end;

procedure TfrmEuroFloraAppMain.OnListAroundMenuClick(Sender: TObject);
begin

  // This is the Fair List MENU Click Events
  if (Sender is TJanuaFMXListElement) and not(self.TabControl1Fair.ActiveTab = self.tabItem12FairList) then
  begin
    self.lblTitleAround.Text := (Sender as TJanuaFMXListElement).Text;
    TabControl2Around.Next(TTabtransition.Slide);
    Async.Run<Boolean>(
      function: Boolean
      begin
        // self.GenerateFairListView((Sender as TJanuaFMXListElement).CategoryTag);
        self.GenerateAroundListView((Sender as TJanuaFMXListElement).CategoryTag);
        Result := True;
      end,
      procedure(const Value: Boolean)
      begin
        self.TimerAround.Enabled := True;
      end)
  end;

  {
    if (Sender is TJanuaFMXListElement) then
    begin
    TabControl2Around.Next(TTabtransition.Slide);
    self.lblTitleAround.Text := (Sender as TJanuaFMXListElement).Text;
    JanuaMapListAround.Zoom := 16.0;
    JanuaMapListAround.CreateMap;
    self.GenerateAroundListView((Sender as TJanuaFMXListElement).CategoryTag);
    JanuaMapListAround.SetMapAnagraph(aAnagraphs, True);
    JanuaMapListAround.MapView.Zoom := 16;
    end;
    //////////////////////////////////////////////////////////////
    (*
    if (Sender is TJanuaFMXListElement) then
    begin
    self.FAroundTag := (Sender as TJanuaFMXListElement).CategoryTag;
    self.TabControl2Around.Next(TTabtransition.Slide);
    self.lblTitleAround.Text := (Sender as TJanuaFMXListElement).Text;
    // TimerAround.Enabled := True;
    Sleep(1000);
    // TimerAround.Enabled := False;
    self.GenerateAroundListView((Sender as TJanuaFMXListElement).CategoryTag);
    FAroundMap.ListViewType := TJanuaListType.jltDynamic;
    FAroundMap.SetMapAnagraph(aAnagraphs, True);
    end;
    *)
  }
end;

procedure TfrmEuroFloraAppMain.OnListFairMenuClick(Sender: TObject);
begin
  // This is the Fair List MENU Click Events
  if (Sender is TJanuaFMXListElement) and not(self.TabControl1Fair.ActiveTab = self.tabItem12FairList) then
  begin
    TabControl1Fair.Next(TTabtransition.Slide);
    Async.Run<Boolean>(
      function: Boolean
      begin
        self.GenerateFairListView((Sender as TJanuaFMXListElement).CategoryTag);
        Result := True;
      end,
      procedure(const Value: Boolean)
      begin
        self.TimerListFair.Enabled := True;
      end)
  end;

end;

procedure TfrmEuroFloraAppMain.OnMapAroundItemClick(Sender: TObject);
var
  Coord: TJanuaRecordCoordinates;
begin
  if (JanuaMapListAround.ItemIndex > -1) and (JanuaMapListAround.SelectedItem.LastName <> '') then
  begin
    if not Assigned(FMapViewAroundDetail) then
      MapViewAroundDetailCreate(pnlMapAroundDetail);
    self.TabControl2Around.Next(TTabtransition.Slide);
    Coord := TJanuaRecordCoordinates.Create(JanuaMapListAround.SelectedItem.Address.Latitude,
      JanuaMapListAround.SelectedItem.Address.Longitude);
    FMe := Janua.FMX.Functions.AddMarker(self.FMapViewAroundDetail, Coord,
      JanuaMapListAround.SelectedItem.LastName);
    lbName.Text := JanuaMapListAround.SelectedItem.LastName;
    lbAddress.Text := JanuaMapListAround.SelectedItem.FullAddress;
    btnCall.Visible := JanuaMapListAround.SelectedItem.Address.Phone <> '';
    btnCall.Text := 'Chiama: ' + JanuaMapListAround.SelectedItem.Address.Phone;
    self.btnWeb.Visible := JanuaMapListAround.SelectedItem.an_web <> '';
    lbAroundName.Text := JanuaMapListAround.SelectedItem.LastName;
    FMapViewAroundDetail.Zoom := 15;
  end;
end;

procedure TfrmEuroFloraAppMain.Setup;
var
  Test: Boolean;
begin
  self.ListViewFair.Images := dmFMXResources.ImageList512;
  self.TabControlMain.Images := dmFMXResources.ImageList512;
  self.ListViewAroundPlaces.Images := dmFMXResources.ImageList512;

  aCloud := TJanuaCloudComponent.Create(self);
  { This defines the default active tab at runtime }
  TabControlMain.ActiveTab := self.tab1Fair;
  // imposto il Tab di Dfault di Fair
  TabControl1Fair.ActiveTab := self.TabItem11FairMain;
  // imposto il tab di default di Around
  self.TabControl2Around.ActiveTab := self.TabItem21AroundMain;
  // Menu Around Completamento del Menu .....................................................................
  // JFMXLVMenuAround.CarItem.CategoryTag := 82;
  self.JFMXLVMenuAround.CarItem.Enabled := True;
  JFMXLVMenuAround.CarItem.OnClick := self.OnListAroundMenuClick;
  // Parking
  // JFMXLVMenuAround.ParkItem.CategoryTag := 82;
  self.JFMXLVMenuAround.ParkItem.Enabled := True;
  JFMXLVMenuAround.ParkItem.OnClick := self.OnListAroundMenuClick;
  // Shops .................................................................................................
  self.JFMXLVMenuAround.ShopItem.Enabled := True;
  JFMXLVMenuAround.ShopItem.OnClick := self.OnListAroundMenuClick;
  self.JFMXLVMenuAround.MarketItem.Enabled := True;
  JFMXLVMenuAround.MarketItem.OnClick := self.OnListAroundMenuClick;
  self.JFMXLVMenuAround.FoodItem.Enabled := True;
  JFMXLVMenuAround.FoodItem.OnClick := self.OnListAroundMenuClick;
  self.JFMXLVMenuAround.BankItem.Enabled := True;
  JFMXLVMenuAround.BankItem.OnClick := self.OnListAroundMenuClick;
  self.JFMXLVMenuAround.HealthItem.Enabled := True;
  JFMXLVMenuAround.HealthItem.OnClick := self.OnListAroundMenuClick;
  // Museum
  JFMXLVMenuAround.MuseumItem.CategoryTag := 87;
  JFMXLVMenuAround.MuseumItem.OnClick := self.OnListAroundMenuClick;
  self.JFMXLVMenuAround.MuseumItem.Enabled := True;

  // Park Item  --- cose da vedere in Fiera
  JFMXLVMenuFair.ParkItem.CategoryTag := 90;
  JFMXLVMenuFair.ParkItem.OnClick := self.OnListFairMenuClick;
  self.JFMXLVMenuFair.ParkItem.Enabled := True;
  // Exhibitors --- elenco degli espositori in fiera
  JFMXLVMenuFair.MarketItem.CategoryTag := 91;
  JFMXLVMenuFair.MarketItem.OnClick := self.OnListFairMenuClick;
  self.JFMXLVMenuFair.MarketItem.Enabled := True;
  // Euroflora Map Item --- cose da cercare in fiera (bagni servizi bar ecc ecc ...)
  JFMXLVMenuFair.MapItem.CategoryTag := 93;
  JFMXLVMenuFair.MapItem.Enabled := True;
  JFMXLVMenuFair.MapItem.OnClick := self.OnListFairMenuClick;

  // JFMXLVMenuFair.CameraItem.Enabled := True;
  // JFMXLVMenuFair.CameraItem.OnClick := self.OnListFairClick;
  JFMXLVMenuFair.CarItem.CategoryTag := 92;
  JFMXLVMenuFair.CarItem.Enabled := True;
  JFMXLVMenuFair.CarItem.OnClick := self.OnListFairMenuClick;

  // Bus Stops .................................................
  JFMXLVMenuFair.BusItem.CategoryTag := 82;
  JFMXLVMenuFair.BusItem.Enabled := True;
  JFMXLVMenuFair.BusItem.OnClick := self.OnListFairMenuClick;

  JFMXLVMenuFair.RailWayItem.CategoryTag := 94;
  JFMXLVMenuFair.RailWayItem.Enabled := True;
  JFMXLVMenuFair.RailWayItem.OnClick := self.OnListFairMenuClick;

  JFMXLVMenuFair.MuseumItem.CategoryTag := 87;
  JFMXLVMenuFair.MuseumItem.Enabled := True;
  JFMXLVMenuFair.MuseumItem.OnClick := self.OnListFairMenuClick;

  // JFMXLVMenuFair.RailWayItem
  // GenerateListView
  self.JFMXLVMenuFair.Activate;
  self.JFMXLVMenuAround.Activate;
  dmEurofloraAppLocalData.Setup(Test);
end;

procedure TfrmEuroFloraAppMain.SpeedButton3Click(Sender: TObject);
begin
  self.TabControl4News.Previous(TTabtransition.Slide)
end;

procedure TfrmEuroFloraAppMain.SpeedButton4Click(Sender: TObject);
begin
  if FMe <> nil then
    FMe.Remove;
  self.TabControl1Fair.Previous(TTabtransition.Slide);
end;

procedure TfrmEuroFloraAppMain.SpeedButton5Click(Sender: TObject);
begin
  self.TabControl1Fair.Previous(TTabtransition.Slide)
end;

procedure TfrmEuroFloraAppMain.TabControlMainChange(Sender: TObject);
begin
  {
    if (self.TabControlMain.ActiveTab = self.tab4News) and (ListViewNews.Items.Count = 0) then
    JanuaFMXListNews1.GenerateList
    else if (self.TabControlMain.ActiveTab = self.tab3Events) and (self.ListViewEvents.Items.Count = 0) then
    self.JanuaFMXListEvents1.GenerateList;
  }
  // procedura disattivata in quanto ora legata ad un timer ...
end;

procedure TfrmEuroFloraAppMain.Timer1Timer(Sender: TObject);
begin
  self.Timer1.Enabled := false;
  Setup;
  self.Timer2.Enabled := True;
end;

procedure TfrmEuroFloraAppMain.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := false;
  // if ListViewNews.Items.Count = 0 then
  // JanuaFMXListNews1.GenerateList;
  Async.Run<Integer>(
    function: Integer
    begin
      if ListViewNews.Items.Count = 0 then
        JanuaFMXListNews1.GenerateList;
      Result := ListViewNews.Items.Count;
    end,
    procedure(const Value: Integer)
    begin
      self.Timer2.Enabled := false;
      JanuaFmxBadge1.Badge := Value;
      JanuaFmxBadge1.ShowBadge := True;
      self.lbListViewNews.Visible := false;
      self.ListViewNews.Visible := True;
    end,
    procedure(const Ex: Exception)
    begin
      // Log('Exception: ' + sLineBreak + Ex.Message);
      Timer2.Interval := 3000;
      Timer2.Enabled := True;
    end);

  Async.Run<Integer>(
    function: Integer
    begin
      if self.ListViewEvents.Items.Count = 0 then
        JanuaFMXListEvents1.GenerateList;
      Result := ListViewEvents.Items.Count;
    end,
    procedure(const Value: Integer)
    begin
      self.Timer2.Enabled := false;
      self.lbListViewEvents.Visible := false;
      self.ListViewEvents.Visible := True;
      // JanuaFmxBadge1.Badge := Value;
      // JanuaFmxBadge1.ShowBadge := True;
    end,
    procedure(const Ex: Exception)
    begin
      // Log('Exception: ' + sLineBreak + Ex.Message);
      Timer2.Interval := 3000;
      Timer2.Enabled := True;
    end);

end;

procedure TfrmEuroFloraAppMain.TimerAroundTimer(Sender: TObject);
var
  aCoordinates: TJanuaRecordCoordinates;
begin
  self.TimerAround.Enabled := false;
  aCoordinates := TJanuaRecordCoordinates.Create(44.381909, 9.045305);
  self.JanuaMapListAround.AddMarker(aCoordinates, 'EuroFlora');
  JanuaMapListAround.Zoom := 16.0;
  JanuaMapListAround.CreateMap;
  JanuaMapListAround.SetMapAnagraph(aAnagraphs, True);
  JanuaMapListAround.MapView.Zoom := 16;
end;

procedure TfrmEuroFloraAppMain.TimerListFairTimer(Sender: TObject);
var
  aCoordinates: TJanuaRecordCoordinates;
begin
  TimerListFair.Enabled := false;
  aCoordinates := TJanuaRecordCoordinates.Create(44.381909, 9.045305);
  JanuaMapListFair.CreateMap;
  self.JanuaMapListFair.AddMarker(aCoordinates, 'EuroFlora');
  JanuaMapListFair.SetMapAnagraph(aAnagraphs, True);
  Janua.FMX.Functions.MapMapPanTo(JanuaMapListFair.MapView, dmEurofloraAppLocalData.Coordinates, 16);
  JanuaMapListFair.MapView.Zoom := 16;
end;

end.
