unit Janua.WebBroker.ServerController;

interface

uses Janua.Core.Classes;

type
  TJanuaWebBrokerServerManager = class(TJanuaBindableComponent)
  private
    FWebModuleClass: TComponentClass;
    FWebServer: TJanuaWebBrokerServer;
    FUrl: string;
    FOnBeforeConnect: TNotifyEvent;
    FOnAfterStartServer: TNotifyEvent;
    FOnBeforeStartServer: TNotifyEvent;
    FWebBrokerClass: TJanuaWebBrokerServerClass;
    FOnCreate: TNotifyEvent;
    procedure SetUrl(const Value: string);
    procedure SetOnBeforeConnect(const Value: TNotifyEvent);
    procedure SetOnAfterStartServer(const Value: TNotifyEvent);
    procedure SetOnBeforeStartServer(const Value: TNotifyEvent);
    procedure SetWebBrokerClass(const Value: TJanuaWebBrokerServerClass);
    procedure SetOnCreate(const Value: TNotifyEvent);
    function GetPort: smallint;
    procedure SetPort(const Value: smallint);
  protected
    procedure StartServer; virtual;
    procedure StopServer; virtual;
  public
    { Public declarations }
    property WebModuleClass: TComponentClass read FWebModuleClass write FWebModuleClass;
    property WebBrokerClass: TJanuaWebBrokerServerClass read FWebBrokerClass write SetWebBrokerClass;
    property Url: string read FUrl write SetUrl;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  published
    property OnCreate: TNotifyEvent read FOnCreate write SetOnCreate;
    property OnBeforeConnect: TNotifyEvent read FOnBeforeConnect write SetOnBeforeConnect;
    property OnAfterStartServer: TNotifyEvent read FOnAfterStartServer write SetOnAfterStartServer;
    property OnBeforeStartServer: TNotifyEvent read FOnBeforeStartServer write SetOnBeforeStartServer;
    property Port: smallint read GetPort write SetPort;
  end;

procedure Register;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TframeWebBrokerStarter }

procedure Register;
begin
  RegisterComponents('Januaproject', [TJanuaWebBrokerServerManager]);
end;

{ TJanuaframeWebServerManager }

procedure TJanuaWebBrokerServerManager.AfterConstruction;
begin
  inherited;
  // here goes the AfterConstruction Code
  if Assigned(FOnCreate) then
    FOnCreate(Self);
end;

procedure TJanuaWebBrokerServerManager.BeforeDestruction;
begin
  if Assigned(FWebServer) then
  begin
    if FWebServer.IsActive then
      FWebServer.StopServer;
    FWebServer.Free;
  end;
  FWebServer := nil;
  inherited;
end;

function TJanuaWebBrokerServerManager.GetPort: smallint;
begin

end;

procedure TJanuaWebBrokerServerManager.SetOnAfterStartServer(const Value: TNotifyEvent);
begin
  FOnAfterStartServer := Value;
end;

procedure TJanuaWebBrokerServerManager.SetOnBeforeConnect(const Value: TNotifyEvent);
begin
  FOnBeforeConnect := Value;
end;

procedure TJanuaWebBrokerServerManager.SetOnBeforeStartServer(const Value: TNotifyEvent);
begin
  FOnBeforeStartServer := Value;
end;

procedure TJanuaWebBrokerServerManager.SetOnCreate(const Value: TNotifyEvent);
begin
  FOnCreate := Value;
end;

procedure TJanuaWebBrokerServerManager.SetPort(const Value: smallint);
begin
  if Assigned(FWebServer) and (Value <> FWebServer.Port) then
    FWebServer.Port := Value
end;

procedure TJanuaWebBrokerServerManager.SetUrl(const Value: string);
begin
  FUrl := Value;
end;

procedure TJanuaWebBrokerServerManager.SetWebBrokerClass(const Value: TJanuaWebBrokerServerClass);
begin
  FWebBrokerClass := Value;
  if Assigned(FWebBrokerClass) then
  begin
    TJanuaWebServerFactory.WebServerClass := FWebBrokerClass;
    FWebServer := TJanuaWebServerFactory.CreateWebServer(FPort) as TJanuaWebBrokerServer;
    sedPort.Value := FWebServer.Port;
  end;
end;

procedure TJanuaWebBrokerServerManager.StartServer;
begin
  if Assigned(OnBeforeStartServer) then
    OnBeforeStartServer(Self);

  Assert(Assigned(FWebBrokerClass), 'Web Broker Class not Assigned');
  Assert(Assigned(FWebModuleClass), 'Web Module Class not Assigned');

  FWebServer.WebModuleClass := FWebModuleClass;

  // WebModule Class non è più una 'Class Property ma una proprietà dell'istanza della classe';
  // FWebBrokerClass.WebModuleClass := FWebModuleClass;

  FUrl := Format('http://localhost:%d', [sedPort.ValueAsInt]);
  Assert(Assigned(FWebServer), 'WebServer Not Assigned');
  FWebServer.StartServer;

  if Assigned(OnAfterStartServer) then
    OnAfterStartServer(Self);
end;

procedure TJanuaWebBrokerServerManager.StopServer;
begin
  if Assigned(FWebServer) then
    FWebServer.StopServer;
end;

end.
