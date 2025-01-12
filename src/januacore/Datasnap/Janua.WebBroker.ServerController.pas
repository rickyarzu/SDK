unit Janua.WebBroker.ServerController;

interface

uses System.Classes, System.SysUtils, Janua.WebBroker.Server, Janua.Core.Classes, Janua.Bindings.Intf;

type
  TJanuaWebBrokerServerManager = class(TJanuaBindableComponent, IJanuaBindable)
  private
    FWebModuleClass: TComponentClass;
    FWebServer: TJanuaWebBrokerServer;
    FPort: Smallint;
    FUrl: string;
    FOnBeforeConnect: TNotifyEvent;
    FOnAfterStartServer: TNotifyEvent;
    FOnBeforeStartServer: TNotifyEvent;
    FWebBrokerClass: TJanuaWebBrokerServerClass;
    FOnCreate: TNotifyEvent;
    FServerName: string;
    procedure SetUrl(const Value: string);
    procedure SetOnBeforeConnect(const Value: TNotifyEvent);
    procedure SetOnAfterStartServer(const Value: TNotifyEvent);
    procedure SetOnBeforeStartServer(const Value: TNotifyEvent);
    procedure SetWebBrokerClass(const Value: TJanuaWebBrokerServerClass);
    procedure SetOnCreate(const Value: TNotifyEvent);
    function GetPort: Smallint;
    procedure SetPort(const Value: Smallint);
    procedure SetServerName(const Value: string);
  public
    { Public declarations }
    property WebModuleClass: TComponentClass read FWebModuleClass write FWebModuleClass;
    property WebBrokerClass: TJanuaWebBrokerServerClass read FWebBrokerClass write SetWebBrokerClass;
    property Url: string read FUrl write SetUrl;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    procedure StartServer; virtual;
    procedure StopServer; virtual;
  published
    property OnCreate: TNotifyEvent read FOnCreate write SetOnCreate;
    property OnBeforeConnect: TNotifyEvent read FOnBeforeConnect write SetOnBeforeConnect;
    property OnAfterStartServer: TNotifyEvent read FOnAfterStartServer write SetOnAfterStartServer;
    property OnBeforeStartServer: TNotifyEvent read FOnBeforeStartServer write SetOnBeforeStartServer;
    property Port: Smallint read GetPort write SetPort;
    property ServerName: string read FServerName write SetServerName;
  end;

procedure Register;

implementation

uses Janua.Application.Framework;

procedure Register;
begin
  RegisterComponents('Janua Remoting', [TJanuaWebBrokerServerManager]);
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

function TJanuaWebBrokerServerManager.GetPort: Smallint;
begin
  Result := FPort;
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

procedure TJanuaWebBrokerServerManager.SetPort(const Value: Smallint);
begin
  if FPort <> Value then
  begin
    FPort := Value;
    if Assigned(FWebServer) and (FPort <> FWebServer.Port) then
      FWebServer.Port := FPort;
    Notify('Port');
  end;
end;

procedure TJanuaWebBrokerServerManager.SetServerName(const Value: string);
begin
  if FServerName <> Value then
  begin
    FServerName := Value;
    Notify('ServerName');
  end;

  if Assigned(FWebServer) then
    FWebServer.ServerName := FServerName;
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
    FWebServer.ServerName := FServerName;
    FPort := FWebServer.Port;
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

  FUrl := Format('http://localhost:%d', [FPort]);
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
