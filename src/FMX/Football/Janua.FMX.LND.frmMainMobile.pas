unit Janua.FMX.LND.frmMainMobile;

interface

uses
  System.SysUtils, System.Types, System.Actions, System.UITypes, System.Classes,
  Data.DB, // DBAccess, Uni, MemDS,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Ani,
  FMX.Controls.Presentation, FMX.Gestures, FMX.ActnList, FMX.ImgList, FMX.Maps, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.Objects, FMX.Platform,
  // Tms Components
  FMX.TMSRichEditorBase, FMX.TMSRichEditor, FMX.TMSRichEditorIO,
  // Janua FMX
  Janua.Core.Types, Janua.FMX.Services, JOrm.Cms.Articles.Intf,
  // Frame & Forms
  Janua.FMX.LND.frameArticle, Janua.FMX.FormControls, Janua.Core.Classes, Janua.Core.Commons;

type
  TTabbedwithNavigationForm = class(TForm)
    TabControlLND: TTabControl;
    TabItem1LND: TTabItem;
    TabControlMenu: TTabControl;
    TabItem11: TTabItem;
    ToolBar1: TToolBar;
    lblTitle: TLabel;
    TabItem12: TTabItem;
    ToolBar2: TToolBar;
    lblTitle12: TLabel;
    btnBack: TSpeedButton;
    TabItem2Warnings: TTabItem;
    ToolBar3: TToolBar;
    TabItemMap: TTabItem;
    ToolBar4: TToolBar;
    lblTitle4: TLabel;
    TabItem4: TTabItem;
    ToolBar5: TToolBar;
    lblTitle5: TLabel;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    SpeedButton1: TSpeedButton;
    MapView1: TMapView;
    Label1: TLabel;
    btnCallFair: TButton;
    btnWebFair: TButton;
    ListViewMainMenu: TListView;
    ListViewArguments: TListView;
    TabItem13: TTabItem;
    ListViewArticles: TListView;
    ToolBar6: TToolBar;
    lbTitle13: TLabel;
    SpeedButton2: TSpeedButton;
    TextConnectionError1: TText;
    TextConnectionError2: TText;
    MainTimer: TTimer;
    ArgumentsTimer: TTimer;
    ArticlesTimer: TTimer;
    TabItem14: TTabItem;
    TextConnectionError3: TText;
    PreviousTabAction2: TPreviousTabAction;
    TabControlWarnings: TTabControl;
    TabItem21List: TTabItem;
    TabItem22: TTabItem;
    ListViewWarnings: TListView;
    TimerWarningNews: TTimer;
    FrameLNDArticle1: TFrameLNDArticle;
    FrameLNDArticleWarning: TFrameLNDArticle;
    ToolBar7: TToolBar;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    ToolBar8: TToolBar;
    Label3: TLabel;
    SpeedButton4: TSpeedButton;
    Label4: TLabel;
    BitmapAnimation1: TBitmapAnimation;
    JanuaDialer1: TJanuaDialer;
    JanuaFmxBadge1: TJanuaFmxBadge;
    TabControlNews: TTabControl;
    TimerNews: TTimer;
    rectWarnings: TRectangle;
    btnNewsBack: TSpeedButton;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure TabControlLNDChange(Sender: TObject);
    procedure btnCallFairClick(Sender: TObject);
    procedure ListViewMainMenuItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure ListViewArgumentsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure MainTimerTimer(Sender: TObject);
    procedure ListViewArticlesItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure ArticlesTimerTimer(Sender: TObject);
    // procedure btnOpenAttachFileClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure TimerNewsTimer(Sender: TObject);
    procedure TimerWarningNewsTimer(Sender: TObject);
  private
    FSelectedMain: Integer;
    FSelectedArgument: Integer;
    FReadList: TStrings;
    FUnread: Integer;
    function GetReadFileLocation: string;
    procedure ArgumentsSetup;
    procedure MainArgumentsSetup;
    procedure UpdateArticles;
    { Private declarations }
    procedure CreateDBDataModule;
    procedure ActivateImages;
    function IsUnread(i: Integer): Boolean;
    procedure MarkRead(i: Integer);
    procedure SetupWarningNews;
    procedure ShowWarningNews(aID: Int64);
    procedure UpdateListNews;
  public
    { Public declarations }
    procedure ListViewWarningsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure OnNewsClick(Sender: TObject);
    function HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
  end;

var
  TabbedwithNavigationForm: TTabbedwithNavigationForm;

implementation

{$R *.fmx}

uses
{$IFDEF ANDROID}
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.Helpers,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net,
{$ENDIF}
  // uLNDDMMobileDB,
  Janua.Application.Framework, Janua.FMX.Cloud, System.StrUtils, System.IOUtils, Janua.FMX.LND.dmMain,
  Janua.FMX.frmBrowser;

procedure OnButtonClick(Sender: TObject);
begin

end;

procedure TTabbedwithNavigationForm.ArgumentsSetup;
begin
  LNDMainDataModule.MainArguments.First;
  while not LNDMainDataModule.MainArguments.Eof do
  begin
    if LNDMainDataModule.MainArguments.Main_argument_id.AsInteger = FSelectedMain then
    begin
      TabControlMenu.Next(TTabtransition.Slide);
      TextConnectionError2.Visible := True;
      lblTitle12.Text := LNDMainDataModule.MainArguments.Main_argument_des.AsString;
      try
        TextConnectionError2.Visible := False;
        LNDMainDataModule.MainArguments.Arguments.First;
        ListViewArguments.BeginUpdate;
        ListViewArguments.Items.Clear;
        while not LNDMainDataModule.MainArguments.Arguments.Eof do
        begin
          with ListViewArguments.Items.Add do
          begin
            Tag := LNDMainDataModule.MainArguments.Arguments.Argument_id.AsInteger;
            Text := LNDMainDataModule.MainArguments.Arguments.Argument_des.AsString;
            // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
            ImageIndex := 0;
            {
              Tag := main_argumentsmain_argument_id.AsInteger;
              Data['Text1'] := main_argumentsmain_argument_des;
              Data['Detail1'] := '';
            }
          end;
          LNDMainDataModule.MainArguments.Arguments.Next;
        end;
        ListViewArguments.EndUpdate;
        Exit
      except
        on e: exception do
        begin
          TextConnectionError2.Visible := True;
          TextConnectionError2.Text := 'Attenzione Errore di connessione con il server attendere ..';
        end;
      end;
    end;
    LNDMainDataModule.MainArguments.Next
  end;

  (*
    LNDDMMobileDB.main_arguments.First;
    while not LNDDMMobileDB.main_arguments.Eof do
    begin
    if LNDDMMobileDB.main_argumentsmain_argument_id.AsInteger = FSelectedMain then
    begin
    TabControlMenu.Next(TTabtransition.Slide);
    TextConnectionError2.Visible := True;
    lblTitle12.Text := LNDDMMobileDB.main_argumentsmain_argument_des.AsWideString;
    LNDDMMobileDB.arguments.Close;
    try
    LNDDMMobileDB.arguments.Open;
    TextConnectionError2.Visible := False;
    LNDDMMobileDB.arguments.First;
    ListViewArguments.BeginUpdate;
    ListViewArguments.Items.Clear;
    while not LNDDMMobileDB.arguments.Eof do
    begin
    with ListViewArguments.Items.Add do
    begin
    Tag := LNDDMMobileDB.argumentsargument_id.AsInteger;
    Text := LNDDMMobileDB.argumentsargument_des.AsWideString;
    // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
    ImageIndex := 0;
    {
    Tag := main_argumentsmain_argument_id.AsInteger;
    Data['Text1'] := main_argumentsmain_argument_des;
    Data['Detail1'] := '';
    }
    end;
    LNDDMMobileDB.arguments.Next;
    end;
    ListViewArguments.EndUpdate;
    Exit
    except
    on e: exception do
    begin
    TextConnectionError2.Visible := True;
    TextConnectionError2.Text := 'Attenzione Errore di connessione con il server attendere ..';
    end;
    end;
    end;
    LNDDMMobileDB.main_arguments.Next
    end;
  *)
end;

procedure TTabbedwithNavigationForm.ArticlesTimerTimer(Sender: TObject);
begin
  UpdateArticles
end;

procedure TTabbedwithNavigationForm.SetupWarningNews;
var
  j: Integer;
  Lfound: Boolean;
  LRoundRect: TRoundRect;
  LLabel: TLabel;
  LItem: TTabItem;
  LImage: TImage;
  LRectangle: TRectangle;
  LFile, LUrl: string;
begin

  LNDMainDataModule.LoadWarnings;
  FUnread := 0;
  j := 0;
  if LNDMainDataModule.Warnings.RecordCount > 0 then
  begin
    rectWarnings.Visible := True;
    rectWarnings.Height := 50 * LNDMainDataModule.Warnings.RecordCount;
    LNDMainDataModule.Warnings.First;
    while not LNDMainDataModule.Warnings.Eof do
    begin
      if IsUnread(LNDMainDataModule.Warnings.Article_id.AsInteger) then
        Inc(FUnread);

      // Creo il Rettangolo di Fondo
      LRoundRect := TRoundRect.Create(self);
      LRoundRect.Tag := LNDMainDataModule.Warnings.Article_id.AsInteger;
      LRoundRect.Parent := rectWarnings;
      LRoundRect.Margins.Bottom := 5;
      LRoundRect.Margins.Left := 3;
      LRoundRect.Margins.Right := 3;
      LRoundRect.Fill.Kind := TBrushKind.None;
      LRoundRect.Align := TAlignLayout.Top;
      LRoundRect.Height := 46;
      LRoundRect.Stroke.Color := TAlphaColorRec.Red;
      LRoundRect.Visible := True;
      LRoundRect.OnClick := OnNewsClick;

      LLabel := TLabel.Create(self);
      LLabel.Parent := LRoundRect;
      LLabel.StyledSettings := LLabel.StyledSettings - [TStyledSetting.FontColor, TStyledSetting.Other];
      LLabel.Align := TAlignLayout.Client;
      LLabel.Margins.Left := 15;
      LLabel.Margins.Right := 15;
      LLabel.StyledSettings := LLabel.StyledSettings - [TStyledSetting.FontColor, TStyledSetting.Other];
      LLabel.TextSettings.FontColor := TAlphaColorRec.Red;
      LLabel.TextSettings.WordWrap := True;
      LLabel.TextSettings.HorzAlign := TTextAlign.Center;
      LLabel.TextSettings.VertAlign := TTextAlign.Center;
      LLabel.Tag := LNDMainDataModule.Warnings.Article_id.AsInteger;
      LLabel.OnClick := OnNewsClick;
      LLabel.Text := LNDMainDataModule.Warnings.Title.AsString;
      LLabel.Visible := True;
      LNDMainDataModule.Warnings.Next;
    end;
    JanuaFmxBadge1.Badge := FUnread;
  end
  else
  begin
    rectWarnings.Visible := False;
  end;

  LNDMainDataModule.LoadNews;
  if LNDMainDataModule.News.RecordCount > 0 then
  begin
    TabControlNews.Height := Trunc(TabControlNews.Width / 2);
    LNDMainDataModule.News.First;
    while not LNDMainDataModule.News.Eof do
    begin
      LItem := TabControlNews.Add;

      LImage := TImage.Create(self);
      LImage.Parent := LItem;
      LImage.Align := TAlignLayout.Client;
      LImage.Tag := LNDMainDataModule.News.Article_id.AsLargeInt;
      LImage.Visible := True;
      LImage.OnClick := OnNewsClick;
      LImage.Visible := True;

      if LNDMainDataModule.News.MainImageId.AsLargeInt > 0 then
      begin
        LFile := LNDMainDataModule.News.MainImageId.AsString + '.jpg';
        LUrl := TJanuaApplication.WebServer + '/?page=image&file=' + LFile;
        // Componente Cloud Image che funziona solo su iOS
        // TMSFMXCloudImage1.URL := sUrl;
        // Componente Custom e funzione interna Android
        // procedure CloudDownload(aFileName: string);
        Janua.FMX.Cloud.CloudImageDownload(LUrl, LFile, LImage);
      end;

      LRectangle := TRectangle.Create(self);
      LRectangle.Parent := LImage;
      LRectangle.Align := TAlignLayout.Bottom;
      LRectangle.Margins.Left := 10;
      LRectangle.Margins.Right := 10;
      LRectangle.Margins.Bottom := 10;
      LRectangle.Visible := True;
      LRectangle.Fill.Color := $802E2121;
      LRectangle.Stroke.Kind := TBrushKind.None;
      LRectangle.Tag := LNDMainDataModule.News.Article_id.AsInteger;
      LRectangle.OnClick := OnNewsClick;

      LLabel := TLabel.Create(self);
      LLabel.Parent := LRectangle;
      LLabel.Align := TAlignLayout.Client;
      LLabel.Margins.Left := 5;
      LLabel.Margins.Right := 5;
      LLabel.Margins.Top := 5;
      LLabel.Margins.Bottom := 5;
      LLabel.StyledSettings := LLabel.StyledSettings - [TStyledSetting.FontColor, TStyledSetting.Other];
      LLabel.TextSettings.FontColor := TAlphaColorRec.White;
      LLabel.TextSettings.WordWrap := True;
      LLabel.Tag := LNDMainDataModule.News.Article_id.AsInteger;
      LLabel.OnClick := OnNewsClick;
      LLabel.Text := LNDMainDataModule.News.Title.AsString;
      LLabel.Visible := True;

      LNDMainDataModule.News.Next;
    end;
    TabControlNews.Visible := True;
    j := TabControlNews.TabCount;
  end
  else
  begin
    TabControlNews.Visible := False;
  end;
  UpdateListNews;
  TimerNews.Enabled := True;
  {
    procedure TTabbedwithNavigationForm.ListViewWarningsItemClick(const Sender: TObject;
    const AItem: TListViewItem);
  }
  JanuaFmxBadge1.ShowBadge := FUnread > 0;
end;

procedure TTabbedwithNavigationForm.btnCallFairClick(Sender: TObject);
begin
  JanuaDialer1.PhoneToCall := '+39010810952';
  JanuaDialer1.MakeACall;
end;

procedure TTabbedwithNavigationForm.CreateDBDataModule;
begin
  // **** Disattivazione DB ****
  {
    if not Assigned(LNDDMMobileDB) then
    LNDDMMobileDB := TLNDDMMobileDB.Create(self);
  }
end;

procedure TTabbedwithNavigationForm.FormCreate(Sender: TObject);
var
  aFMXApplicationEventService: IFMXApplicationEventService;
begin
  FReadList := TStringList.Create;

  if TJanuaApplication.IsTestVersion then
    lblTitle.Text := 'Test ' + TJanuaApplication.Release + ' ' + TJanuaApplication.ReleaseDate;

  if not FileExists(GetReadFileLocation) then
  begin
    FReadList.Add('0');
    FReadList.SaveToFile(GetReadFileLocation);
  end
  else
  begin
    FReadList.LoadFromFile(GetReadFileLocation);
  end;

  { This defines the default active tab at runtime }
  TabControlLND.ActiveTab := TabItem1LND;

  TabControlWarnings.ActiveTab := TabItem21List;

  if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService,
    IInterface(aFMXApplicationEventService)) then
    aFMXApplicationEventService.SetApplicationEventHandler(HandleAppEvent)
  else
    MainTimer.Enabled := True;

  TabControlMenu.ActiveTab := TabItem11;
  FrameLNDArticle1.TabControl1.ActiveTab := FrameLNDArticle1.TabItemArticle;
  FrameLNDArticleWarning.TabControl1.ActiveTab := FrameLNDArticle1.TabItemArticle;

  if not TJanuaApplication.IsTestVersion then
    lblTitle.Text := TJanuaApplication.AppTitle
  else
    lblTitle.Text := TJanuaApplication.AppName + ' - ' + TJanuaApplication.ReleaseDate + ' - ' +
      TJanuaApplication.Release;

  ActivateImages;
end;

procedure TTabbedwithNavigationForm.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
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

function TTabbedwithNavigationForm.GetReadFileLocation: string;
begin
  Result := TPath.Combine(TPath.GetDocumentsPath, 'read.txt');
end;

function TTabbedwithNavigationForm.HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
begin
  case AAppEvent of

    // TApplicationEvent.aeFinishedLaunching:
    // Log('Finished Launching');

    TApplicationEvent.BecameActive:
      MainTimer.Enabled := True;
    {
      TApplicationEvent.aeWillBecomeInactive:
      Log('Will Become Inactive');

      TApplicationEvent.aeEnteredBackground:
      Log('Entered Background');

      TApplicationEvent.aeWillBecomeForeground:
      Log('Will Become Foreground');

      TApplicationEvent.aeWillTerminate:
      Log('Will Terminate');

      TApplicationEvent.aeLowMemory:
      Log('Low Memory');

      TApplicationEvent.aeTimeChange:
      Log('Time Change');

      TApplicationEvent.aeOpenURL:
      Log('Open URL');
    }
  end;

  Result := True;

end;

procedure TTabbedwithNavigationForm.UpdateListNews;
begin
  if (LNDMainDataModule.News.RecordCount > 0) and (ListViewWarnings.Items.Count = 0) then
  begin
    ListViewWarnings.Images := LNDMainDataModule.ImageList1;
    // LNDMainDataModule.qryWarnings.Open;
    ListViewWarnings.BeginUpdate;
    LNDMainDataModule.News.First;
    while not LNDMainDataModule.News.Eof do
    begin
      with ListViewWarnings.Items.Add do
      begin
        Tag := LNDMainDataModule.News.Article_id.AsInteger;
        Text := LNDMainDataModule.News.Title.AsString;
        Detail := LNDMainDataModule.News.Abstract.AsString;
        ImageIndex := 0;
      end;
      LNDMainDataModule.News.Next;
    end;
    ListViewWarnings.EndUpdate;
  end;
  ListViewWarnings.OnItemClick := ListViewWarningsItemClick;
end;

function TTabbedwithNavigationForm.IsUnread(i: Integer): Boolean;
var
  j: Integer;
begin
  Result := True;
  for j := 0 to Pred(FReadList.Count) do
    Result := Result and not(i.ToString = FReadList[j]);
end;

procedure TTabbedwithNavigationForm.ActivateImages;
begin
  Application.CreateForm(TLNDMainDataModule, LNDMainDataModule);
  TabControlLND.Images := LNDMainDataModule.ImageList1;
  SpeedButton1.Images := LNDMainDataModule.ImageList1;
  btnNewsBack.Images := LNDMainDataModule.ImageList1;
  ListViewMainMenu.Images := LNDMainDataModule.ImageList1;
  ListViewArguments.Images := LNDMainDataModule.ImageList1;
  ListViewArticles.Images := LNDMainDataModule.ImageList1;
end;

procedure TTabbedwithNavigationForm.ListViewArgumentsItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  FSelectedArgument := AItem.Tag;
  UpdateArticles;
end;

procedure TTabbedwithNavigationForm.ListViewArticlesItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  aStream: TMemoryStream;
  sUrl, sFile: string;
begin
  // LNDMainDataModule
  LNDMainDataModule.LoadArticle(AItem.Tag);
  if LNDMainDataModule.Article.Article_id.AsLargeInt > 0 then
  begin
    FrameLNDArticle1.Visible := True;
    TabControlMenu.Next(TTabtransition.Slide);
    FrameLNDArticle1.Article := LNDMainDataModule.Article;
  end;
end;

procedure TTabbedwithNavigationForm.MainArgumentsSetup;
begin
  if ListViewMainMenu.Items.Count > 0 then
  begin
    MainTimer.Enabled := False;
  end
  else // if LNDDMMobileDB.main_arguments.Active then
  begin
    MainTimer.Enabled := False;
    try
      LNDMainDataModule.LoadMainArguments;
      TextConnectionError1.Visible := False;
      LNDMainDataModule.MainArguments.First;
      ListViewMainMenu.BeginUpdate;
      while not LNDMainDataModule.MainArguments.Eof do
      begin
        with ListViewMainMenu.Items.Add do
        begin
          Tag := LNDMainDataModule.MainArguments.Main_argument_id.AsInteger;
          Text := LNDMainDataModule.MainArguments.Main_argument_des.AsString;
          // Detail := Format('%d kg of paper', [1000 + Random(1234)]);
          ImageIndex := 0;
        end;
        LNDMainDataModule.MainArguments.Next;
      end;
      ListViewMainMenu.EndUpdate;
    except
      on e: exception do
      begin
        TextConnectionError1.Text := 'Attenzione Errore di connessione con il server attendere ..';
        TextConnectionError1.Visible := True;
        MainTimer.Interval := 30000;
        MainTimer.Enabled := True;
      end;
    end;
  end;

end;

procedure TTabbedwithNavigationForm.MainTimerTimer(Sender: TObject);
begin
  MainTimer.Enabled := False;
  TimerWarningNews.Enabled := True;
  MainArgumentsSetup;
  // SetupWarningNews;
end;

procedure TTabbedwithNavigationForm.MarkRead(i: Integer);
begin
  if IsUnread(i) then
  begin
    FReadList.Add(i.ToString);
    FReadList.SaveToFile(GetReadFileLocation);
  end;
end;

procedure TTabbedwithNavigationForm.OnNewsClick(Sender: TObject);
begin
  ShowWarningNews((Sender as TComponent).Tag);
end;

procedure TTabbedwithNavigationForm.ShowWarningNews(aID: Int64);
var
  aStream: TMemoryStream;
  sUrl, sFile: string;
begin
  LNDMainDataModule.LoadArticle(aID);
  if LNDMainDataModule.Article.Article_id.AsInteger > 0 then
  begin
    if IsUnread(aID) then
    begin
      MarkRead(aID);
      Dec(FUnread);
      JanuaFmxBadge1.Badge := FUnread;
    end;
    if TabControlLND.ActiveTab = TabItem1LND then
    begin
      TabControlLND.Next(TTabtransition.Slide);
      TabControlWarnings.ActiveTab := TabItem2Warnings;
      TabControlWarnings.ActiveTab := TabItem22;
    end
    else
    begin
      TabControlWarnings.Next(TTabtransition.Slide);
    end;
    FrameLNDArticleWarning.Visible := True;
    FrameLNDArticleWarning.TabControl1.ActiveTab := FrameLNDArticleWarning.TabItemArticle;
    FrameLNDArticleWarning.Article := LNDMainDataModule.Article;
  end;
end;

procedure TTabbedwithNavigationForm.SpeedButton3Click(Sender: TObject);
begin
  if FrameLNDArticleWarning.TabControl1.ActiveTab = FrameLNDArticleWarning.TabItemArticle then
    TabControlWarnings.Previous
  else
    FrameLNDArticleWarning.TabControl1.Previous(TTabtransition.Slide)
end;

procedure TTabbedwithNavigationForm.SpeedButton4Click(Sender: TObject);
begin
  if FrameLNDArticle1.TabControl1.ActiveTab = FrameLNDArticle1.TabItemArticle then
    TabControlMenu.Previous(TTabtransition.Slide)
  else
    FrameLNDArticle1.TabControl1.Previous(TTabtransition.Slide)
end;

procedure TTabbedwithNavigationForm.ListViewMainMenuItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  FSelectedMain := AItem.Tag;
  ArgumentsSetup;
end;

procedure TTabbedwithNavigationForm.ListViewWarningsItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  ShowWarningNews(AItem.Tag);
end;

procedure TTabbedwithNavigationForm.TabControlLNDChange(Sender: TObject);
var
  mapCenter: TMapCoordinate;
  MyMarker: TMapMarkerDescriptor;
begin
  if TabControlLND.ActiveTab = TabItemMap then
  begin
    mapCenter := TMapCoordinate.Create(44.411210, 8.904366);
    MapView1.Location := mapCenter;
    MyMarker := TMapMarkerDescriptor.Create(mapCenter, 'LND Liguria');
    MyMarker.Visible := True;
    MapView1.Zoom := 14.0;
    MapView1.AddMarker(MyMarker);
  end;
  TimerNews.Enabled := TabControlLND.ActiveTab = TabItem1LND
end;

procedure TTabbedwithNavigationForm.TimerNewsTimer(Sender: TObject);
begin
  if TabControlNews.TabCount > 0 then
  begin
    if TabControlNews.TabIndex = TabControlNews.TabCount - 1 then
      TabControlNews.First(TTabtransition.Slide)
    else
      TabControlNews.Next(TTabtransition.Slide)
  end;
end;

procedure TTabbedwithNavigationForm.TimerWarningNewsTimer(Sender: TObject);
begin
  TimerWarningNews.Enabled := False;
  SetupWarningNews;
  TimerNews.Interval := 5000;
  TimerNews.Enabled := True;
end;

procedure TTabbedwithNavigationForm.UpdateArticles;
begin
  ArgumentsTimer.Enabled := False;
  LNDMainDataModule.MainArguments.Arguments.First;
  while not LNDMainDataModule.MainArguments.Arguments.Eof do
  begin
    if LNDMainDataModule.MainArguments.Arguments.Argument_id.AsInteger = FSelectedArgument then
    begin
      TabControlMenu.Next(TTabtransition.Slide);
      TextConnectionError3.Visible := True;
      try
        lbTitle13.Text := LNDMainDataModule.MainArguments.Arguments.Argument_des.AsString;
        LNDMainDataModule.ArgumentID := FSelectedArgument;
        LNDMainDataModule.LoadArgumentArticlesList;
        LNDMainDataModule.Articles.First;
        ListViewArticles.BeginUpdate;
        ListViewArticles.Items.Clear;
        while not LNDMainDataModule.Articles.Eof do
        begin
          with ListViewArticles.Items.Add do
          begin
            Tag := LNDMainDataModule.Articles.Article_id.AsInteger;
            Text := LNDMainDataModule.Articles.Title.AsString;
            Detail := IFThen(LNDMainDataModule.Articles.Abstract.AsString = '',
              LNDMainDataModule.Articles.Shorttext.AsString, LNDMainDataModule.Articles.Abstract.AsString);
            ImageIndex := 0;
          end;
          LNDMainDataModule.Articles.Next
        end;
        ListViewArticles.EndUpdate;
        TextConnectionError3.Visible := False;
        Exit
      Except
        on e: exception do
        begin
          TextConnectionError3.Text := 'Errore nella connessione al server attendere ...';
          ArgumentsTimer.Interval := 20000;
          ArgumentsTimer.Enabled := True;
        end;
      end;
    end;
    LNDMainDataModule.MainArguments.Arguments.Next
  end;
end;

end.
