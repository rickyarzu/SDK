unit uCloudCalendarSync;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Planner, CloudBase, CloudLiveWin, CloudLiveCalendar,
  PlanExLiveCalendar, CloudGoogleWin, CloudGCalendar, PlanExGCalendar, Menus,
  CloudCustomGoogle, CloudCustomGCalendar, CloudBaseWin, CloudCustomLive,
  CloudCustomLiveCalendar;

type
  TCloudCalendar = (ccWinLive, ccGoogle);

  TfrmCalendarCloudSync = class(TForm)
    AdvLiveCalendar1: TAdvLiveCalendar;
    Planner1: TPlanner;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    AdvGCalendar1: TAdvGCalendar;
    PopupMenu1: TPopupMenu;
    Createnewitem1: TMenuItem;
    PlannerGCalendarExchange1: TPlannerGCalendarExchange;
    PlannerLiveCalendarExchange1: TPlannerLiveCalendarExchange;
    procedure Button1Click(Sender: TObject);
    procedure AdvLiveCalendar1ReceivedAccessToken(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AdvGCalendar1ReceivedAccessToken(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Createnewitem1Click(Sender: TObject);
  private
    { Private declarations }
    FCloudCalendar: TCloudCalendar;
  public
    { Public declarations }
    procedure GetGCalendarList;
    procedure GetLiveCalendarList;
    property CloudCalendar: TCloudCalendar read FCloudCalendar write FCloudCalendar;
  end;

var
  frmCalendarCloudSync: TfrmCalendarCloudSync;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TfrmCalendarCloudSync.AdvGCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvGCalendar1.SaveTokens;
  GetGCalendarList;
end;

procedure TfrmCalendarCloudSync.AdvLiveCalendar1ReceivedAccessToken(Sender: TObject);
begin
  AdvLiveCalendar1.SaveTokens;
  GetLiveCalendarList;
end;

procedure TfrmCalendarCloudSync.Button1Click(Sender: TObject);
begin
  if not AdvLiveCalendar1.TestTokens then
  begin
    AdvLiveCalendar1.RefreshAccess;
    if not AdvLiveCalendar1.TestTokens then
      AdvLiveCalendar1.DoAuth
    else
      GetLiveCalendarList;
  end
  else
    GetLiveCalendarList;
end;

procedure TfrmCalendarCloudSync.Button2Click(Sender: TObject);
var
  id: string;
  i: integer;
begin
  // mark all for export

  for i := 0 to Planner1.Items.Count - 1 do
    Planner1.Items[i].DoExport := true;

  if CloudCalendar = ccWinLive then
  begin

    PlannerLiveCalendarExchange1.LiveCalendarName := ListBox1.Items[ListBox1.ItemIndex];
    PlannerLiveCalendarExchange1.GetCalendarID;
    PlannerLiveCalendarExchange1.DoExport;

  end
  else
  begin

    PlannerGCalendarExchange1.GCalendarName := ListBox1.Items[ListBox1.ItemIndex];
    PlannerGCalendarExchange1.GetCalendarID;
    PlannerGCalendarExchange1.DoExport;

  end;

end;

procedure TfrmCalendarCloudSync.Button3Click(Sender: TObject);
var
  id: string;
begin
  if CloudCalendar = ccWinLive then
  begin
    PlannerLiveCalendarExchange1.LiveCalendarName := ListBox1.Items[ListBox1.ItemIndex];
    PlannerLiveCalendarExchange1.GetCalendarID;
    PlannerLiveCalendarExchange1.DoImport;
  end
  else
  begin
    PlannerGCalendarExchange1.GCalendarName := ListBox1.Items[ListBox1.ItemIndex];
    PlannerGCalendarExchange1.GetCalendarID;
    PlannerGCalendarExchange1.DoImport;
  end;

end;

procedure TfrmCalendarCloudSync.Button4Click(Sender: TObject);
begin
  AdvLiveCalendar1.App.Key := TJanuaApplication.CloudConf.WinLiveClientID;
  AdvLiveCalendar1.App.Secret := TJanuaApplication.CloudConf.WinLiveClientSecret;

  AdvGCalendar1.App.Key := TJanuaApplication.CloudConf.GoogleAppKey;
  AdvGCalendar1.App.Secret := TJanuaApplication.CloudConf.GoogleAppSecret;

  if not AdvGCalendar1.TestTokens then
  begin
    AdvGCalendar1.RefreshAccess;
    if not AdvGCalendar1.TestTokens then
    begin
      AdvGCalendar1.DoAuth
    end
    else
      GetGCalendarList;
  end
  else
    GetGCalendarList;
end;

procedure TfrmCalendarCloudSync.Createnewitem1Click(Sender: TObject);
begin
  Planner1.CreateItemAtSelection;
end;

procedure TfrmCalendarCloudSync.FormCreate(Sender: TObject);
var
  i: integer;
begin
  AdvLiveCalendar1.PersistTokens.Key := '.\tokens.ini';
  AdvLiveCalendar1.PersistTokens.Section := 'winlive';
  AdvLiveCalendar1.PersistTokens.Location := plIniFile;

  AdvGCalendar1.PersistTokens.Key := '.\tokens.ini';
  AdvGCalendar1.PersistTokens.Section := 'google';
  AdvGCalendar1.PersistTokens.Location := plIniFile;

  AdvLiveCalendar1.LoadTokens;
  AdvGCalendar1.LoadTokens;

  Planner1.Positions := 7;
  Planner1.Header.Captions.Clear;
  Planner1.Header.Captions.Add('');
  for i := 0 to 6 do
    Planner1.Header.Captions.Add(datetostr(Now + i));
end;

procedure TfrmCalendarCloudSync.GetGCalendarList;
var
  i: integer;
begin
  CloudCalendar := ccGoogle;
  AdvGCalendar1.GetCalendars;
  ListBox1.Items.Clear;
  for i := 0 to AdvGCalendar1.Calendars.Count - 1 do
  begin
    ListBox1.Items.Add(AdvGCalendar1.Calendars[i].Summary);
  end;
  ListBox1.ItemIndex := 0;
end;

procedure TfrmCalendarCloudSync.GetLiveCalendarList;
var
  i: integer;
begin
  CloudCalendar := ccWinLive;
  AdvLiveCalendar1.GetCalendars;
  ListBox1.Items.Clear;
  for i := 0 to AdvLiveCalendar1.Calendars.Count - 1 do
  begin
    ListBox1.Items.Add(AdvLiveCalendar1.Calendars[i].Summary);
  end;

  ListBox1.ItemIndex := 0;
end;


end.
