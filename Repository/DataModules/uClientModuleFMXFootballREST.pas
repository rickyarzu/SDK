unit uClientModuleFMXFootballREST;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.REST.Football, Datasnap.DSClientRest, System.Notification, System.Sensors,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent, Janua.Core.Classes, Janua.Core.Cloud,
  System.Sensors.Components, FMX.TMSWebGMapsCommon, FMX.TMSWebGMapsGeocoding, Janua.Core.System,
  Janua.Core.RESTClient.Football, Data.DB, MemDS, VirtualTable;

type
  TClientModuleFMXFootballREST = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
    JanuaCoreLogger1: TJanuaCoreLogger;
    NotificationCenter1: TNotificationCenter;
    TMSFMXWebGMapsGeocoding1: TTMSFMXWebGMapsGeocoding;
    LocationSensor1: TLocationSensor;
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    NetHTTPRequest1: TNetHTTPRequest;
    NetHTTPClient1: TNetHTTPClient;
    JanuaCoreOS1: TJanuaCoreOS;
    vrtRestMatchDetail: TVirtualTable;
    dsRestMatchDetail: TDataSource;
    dsRestGoalRankings: TDataSource;
    vrtGoalRankings: TVirtualTable;
    dsRestMatches: TDataSource;
    vrtRestMatches: TVirtualTable;
    vrtRestRankings: TVirtualTable;
    dsRestRankings: TDataSource;
    vrtRestChampionships: TVirtualTable;
    dsRestChampionships: TDataSource;
    vrtRestSeasons: TVirtualTable;
    dsRESTSeasons: TDataSource;
    dsRestMatchDetailEvents: TDataSource;
    vrtRestMatchDetailEvents: TVirtualTable;
    dsRestMatchHome: TDataSource;
    vrtRestMatchHome: TVirtualTable;
    vrtRestMatchVisitors: TVirtualTable;
    dsRestMatchVisitors: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FInstanceOwner: Boolean;
    FServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
    FJanuaRESTFootballClient: TJanuaRESTFootballClient;
    FConnected: Boolean;
    FCheckedBadge: integer;
    FLog: TStringList;
    FActive: Boolean;
    function GetServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
    function GetJanuaRESTFootballClient: TJanuaRESTFootballClient;
    procedure SetActive(const Value: Boolean);
    procedure SetCheckedBadge(const Value: integer);
    procedure SetConnected(const Value: Boolean);
    procedure SetLog(const Value: TStringList);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property ServerMethodsSportmediaClient: TServerMethodsSportmediaClient read GetServerMethodsSportmediaClient
      write FServerMethodsSportmediaClient;
    property JanuaRESTFootballClient: TJanuaRESTFootballClient read GetJanuaRESTFootballClient
      write FJanuaRESTFootballClient;
public // notification Badge procedures ...........................................
    procedure CheckBadge;
    procedure NotificationBadge(aBadge: integer);
  public
    function Activate: Boolean;
    property Active: Boolean read FActive write SetActive;
    property Log: TStringList read FLog write SetLog;
    property Connected: Boolean read FConnected write SetConnected;
    property CheckedBadge: integer read FCheckedBadge write SetCheckedBadge;
  end;

var
  ClientModuleFMXFootballREST: TClientModuleFMXFootballREST;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}

function TClientModuleFMXFootballREST.Activate: Boolean;
begin
  if not Assigned(FJanuaRESTFootballClient) then
    FJanuaRESTFootballClient := TJanuaRESTFootballClient.Create(self.ServerMethodsSportmediaClient);
  self.FJanuaRESTFootballClient.Log := self.Log;
  self.FJanuaRESTFootballClient.JanuaCoreOS := self.JanuaCoreOS1;

  try
    self.Connected := True;
    Result := self.FJanuaRESTFootballClient.Activate;
    if FJanuaRESTFootballClient.Notifications.Unread > 0 then
    begin
      self.NotificationBadge(FJanuaRESTFootballClient.Notifications.Unread);
    end;

  except
    on e: exception do
    begin
      self.FLog.Add(DateTimeToStr(Now) + ' Errore di connessione al server: ' + e.Message);
      Result := False;
    end;

  end;

  self.FActive := Result;
end;

procedure TClientModuleFMXFootballREST.CheckBadge;
begin
  if self.FJanuaRESTFootballClient.Notifications.Unread > self.FCheckedBadge then
  begin
    self.FCheckedBadge := self.FJanuaRESTFootballClient.Notifications.Unread;
    self.NotificationBadge(FCheckedBadge);
  end;
end;

constructor TClientModuleFMXFootballREST.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

procedure TClientModuleFMXFootballREST.DataModuleCreate(Sender: TObject);
begin
  self.FLog := TStringList.Create;
end;

procedure TClientModuleFMXFootballREST.DataModuleDestroy(Sender: TObject);
begin
  FLog.Free;
end;

destructor TClientModuleFMXFootballREST.Destroy;
begin
  FServerMethodsSportmediaClient.Free;
  inherited;
end;

function TClientModuleFMXFootballREST.GetJanuaRESTFootballClient: TJanuaRESTFootballClient;
begin
  if FJanuaRESTFootballClient = nil then
  begin
    FJanuaRESTFootballClient := TJanuaRESTFootballClient.Create(self.ServerMethodsSportmediaClient);
    self.FJanuaRESTFootballClient.Log := self.Log;
  end;
  Result := FJanuaRESTFootballClient;
end;

function TClientModuleFMXFootballREST.GetServerMethodsSportmediaClient: TServerMethodsSportmediaClient;
begin
  if FServerMethodsSportmediaClient = nil then
    FServerMethodsSportmediaClient := TServerMethodsSportmediaClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FServerMethodsSportmediaClient;
end;

procedure TClientModuleFMXFootballREST.NotificationBadge(aBadge: integer);
begin

end;

procedure TClientModuleFMXFootballREST.SetActive(const Value: Boolean);
begin
  if not self.FActive and Value then
    self.Activate;
  self.FActive := Value
end;

procedure TClientModuleFMXFootballREST.SetCheckedBadge(const Value: integer);
begin
  FCheckedBadge := Value;
end;

procedure TClientModuleFMXFootballREST.SetConnected(const Value: Boolean);
begin
  FConnected := Value;
end;

procedure TClientModuleFMXFootballREST.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;

end.
