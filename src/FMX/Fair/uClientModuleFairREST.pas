unit uClientModuleFairREST;

interface

uses
  // system
  System.SysUtils, System.Classes, Datasnap.DSClientRest, System.Sensors, System.Sensors.Components,
  System.JSON, System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  System.Notification,
  // Janua
  Janua.Core.REST.Health, Janua.Core.Health, Janua.Core.Classes, Janua.Core.System, Janua.Core.Cloud,
  Janua.Core.RESTClient.Health, Janua.Core.Anagraph,
  // fmx
  FMX.TMSWebGMapsCommon, FMX.TMSWebGMapsGeocoding, FMX.Dialogs, Data.DB, MemDS, VirtualTable, Janua.Core.Conf,
  Janua.FMX.FormControls;

type
  TClientModuleHealthREST = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
    JanuaCoreOS1: TJanuaCoreOS;
    NetHTTPClient1: TNetHTTPClient;
    NetHTTPRequest1: TNetHTTPRequest;
    LocationSensor1: TLocationSensor;
    TMSFMXWebGMapsGeocoding1: TTMSFMXWebGMapsGeocoding;
    NotificationCenter1: TNotificationCenter;
    vrtLog: TVirtualTable;
    JanuaConf1: TJanuaConf;
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    JanuaCoreLogger1: TJanuaCoreLogger;
    procedure DataModuleCreate(Sender: TObject);
  private
    FInstanceOwner: boolean;
    FJanuaRESTHealthClient: TJanuaRESTHealthClient;
    FHealthMethodsClient: THealthMethodsClient;
    FActive: boolean;
    FLog: TStringList;
    FConnected: boolean;
    FCheckedBadge: integer;
    FNotificationBadge: integer;
    function GetServerMethods1Client: THealthMethodsClient;
    function GetTJanuaRESTHealthClient: TJanuaRESTHealthClient;
    procedure SetActive(const Value: boolean);
    procedure SetLog(const Value: TStringList);
    procedure SetConnected(const Value: boolean);
    procedure SetCheckedBadge(const Value: integer);
    { Private declarations }
  public
    procedure CheckBadge;
    procedure NotificationBadge(aBadge: integer);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property HealthMethodsClient: THealthMethodsClient read GetServerMethods1Client write FHealthMethodsClient;
    property JanuaRESTHealthClient: TJanuaRESTHealthClient read GetTJanuaRESTHealthClient write FJanuaRESTHealthClient;
  public
    function Activate: boolean;
    procedure DeActivate;
    property Active: boolean read FActive write SetActive;
    property Log: TStringList read FLog write SetLog;
    property Connected: boolean read FConnected write SetConnected;
    property CheckedBadge: integer read FCheckedBadge write SetCheckedBadge;
  end;

var
  ClientModuleHealthREST: TClientModuleHealthREST;

{%CLASSGROUP 'FMX.Controls.TControl'}

implementation

{$R *.dfm}

function TClientModuleHealthREST.Activate: boolean;
begin
  Result := self.FActive;
  if not Result then
  begin
    if not Assigned(FJanuaRESTHealthClient) then
      FJanuaRESTHealthClient := TJanuaRESTHealthClient.Create(self.HealthMethodsClient);
    try
      self.DSRestConnection1.TestConnection;
      Result := True;
    except
      on e: exception do
      begin
        self.FLog.Add(DateTimeToStr(Now) + ' Errore di connessione al server: ' + e.Message);
        Result := False;
      end;
    end;

    if Result then
      try
        Result := self.FJanuaRESTHealthClient.Activate;
        if FJanuaRESTHealthClient.Notifications.Unread > 0 then
        begin
          self.NotificationBadge(FJanuaRESTHealthClient.Notifications.Unread);
        end;
        self.Connected := Result;
      except
        on e: exception do
        begin
          self.FLog.Add(DateTimeToStr(Now) + ' Errore di connessione al server: ' + e.Message);
          Result := False;
        end;

      end;

    self.FActive := Result;
  end;
end;

procedure TClientModuleHealthREST.CheckBadge;
begin
  if self.FJanuaRESTHealthClient.Notifications.Unread > self.FCheckedBadge then
  begin
    self.FCheckedBadge := self.FJanuaRESTHealthClient.Notifications.Unread;
    self.NotificationBadge(FCheckedBadge);
  end;
end;

constructor TClientModuleHealthREST.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TClientModuleHealthREST.DataModuleCreate(Sender: TObject);
begin
  FInstanceOwner := True;
  self.FLog := TStringList.Create;
  self.FCheckedBadge := 0;
  FNotificationBadge := 0;
end;

procedure TClientModuleHealthREST.DeActivate;
begin
  if Assigned(FJanuaRESTHealthClient) then
  begin
    FJanuaRESTHealthClient.DisposeOf;
    FJanuaRESTHealthClient := nil;
    self.FActive := False;
  end;
end;

destructor TClientModuleHealthREST.Destroy;
begin
  FHealthMethodsClient.Free;
  self.FLog.Free;
  inherited;
end;

function TClientModuleHealthREST.GetServerMethods1Client: THealthMethodsClient;
begin
  if FHealthMethodsClient = nil then
    FHealthMethodsClient := THealthMethodsClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FHealthMethodsClient;
end;

function TClientModuleHealthREST.GetTJanuaRESTHealthClient: TJanuaRESTHealthClient;
begin
  if not Assigned(FJanuaRESTHealthClient) then
  begin
    FJanuaRESTHealthClient := TJanuaRESTHealthClient.Create(self.HealthMethodsClient);
  end;
  Result := FJanuaRESTHealthClient;
end;

procedure TClientModuleHealthREST.NotificationBadge(aBadge: integer);
var
  MyNotification: TNotification;
begin
  // Create an instance of TNotification
  if FNotificationBadge <> aBadge then
  begin
    MyNotification := NotificationCenter1.CreateNotification;
    try
      // --- your code goes here ---
      // Set the icon or notification number
      MyNotification.Number := aBadge;
      // Set the alert message
      if aBadge = 1 then
        MyNotification.AlertBody := 'Notifica Dico33 da leggere.'
      else
        MyNotification.AlertBody := 'Ci sono ' + aBadge.ToString + ' Dico33 da leggere.';
      // Note: You must send the notification to the notification center for the Icon Badge Number to be displayed.
      NotificationCenter1.PresentNotification(MyNotification);
      FNotificationBadge := aBadge;
      NotificationCenter1.ApplicationIconBadgeNumber := aBadge;
    finally
      MyNotification.DisposeOf;
    end;
  end;
end;

procedure TClientModuleHealthREST.SetActive(const Value: boolean);
begin
  if not self.FActive and Value then
    self.Activate;
  self.FActive := Value
end;

procedure TClientModuleHealthREST.SetCheckedBadge(const Value: integer);
begin
  FCheckedBadge := Value;
end;

procedure TClientModuleHealthREST.SetConnected(const Value: boolean);
begin
  FConnected := Value;
end;

procedure TClientModuleHealthREST.SetLog(const Value: TStringList);
begin
  FLog := Value;
end;

end.
