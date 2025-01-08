unit Janua.VCL.frameWebServerManager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // WebBroker
  Janua.WebBroker.Server,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.Mask, scControls, VCL.AppEvnts;

type
  TJanuaframeWebServerManager = class(TFrame)
    btnStartServer: TButton;
    btnStopServer: TButton;
    sedPort: TscSpinEdit;
    Label1: TLabel;
    procedure btnStartServerClick(Sender: TObject);
    procedure btnStopServerClick(Sender: TObject);
    procedure sedPortChange(Sender: TObject);
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
  end;

procedure Register;

implementation

uses Janua.Application.Framework;

{$R *.dfm}
{ TframeWebBrokerStarter }

procedure Register;
begin
  RegisterComponents('Januaproject VCL System', [TJanuaframeWebServerManager]);
end;

procedure TJanuaframeWebServerManager.AfterConstruction;
begin
  inherited;
  // here goes the AfterConstruction Code
  if Assigned(FOnCreate) then
    FOnCreate(Self);
  if not Assigned(FWebServer) then
    sedPort.Value := FWebServer.Port;
end;

procedure TJanuaframeWebServerManager.BeforeDestruction;
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

procedure TJanuaframeWebServerManager.btnStartServerClick(Sender: TObject);
begin
  StartServer
end;

procedure TJanuaframeWebServerManager.btnStopServerClick(Sender: TObject);
begin
  StopServer
end;

procedure TJanuaframeWebServerManager.sedPortChange(Sender: TObject);
begin
  if Assigned(FWebServer) and (sedPort.Value <> FWebServer.Port) then
    sedPort.Value := FWebServer.Port
end;

procedure TJanuaframeWebServerManager.SetOnAfterStartServer(const Value: TNotifyEvent);
begin
  FOnAfterStartServer := Value;
end;

procedure TJanuaframeWebServerManager.SetOnBeforeConnect(const Value: TNotifyEvent);
begin
  FOnBeforeConnect := Value;
end;

procedure TJanuaframeWebServerManager.SetOnBeforeStartServer(const Value: TNotifyEvent);
begin
  FOnBeforeStartServer := Value;
end;

procedure TJanuaframeWebServerManager.SetOnCreate(const Value: TNotifyEvent);
begin
  FOnCreate := Value;
end;

procedure TJanuaframeWebServerManager.SetUrl(const Value: string);
begin
  FUrl := Value;
end;

procedure TJanuaframeWebServerManager.SetWebBrokerClass(const Value: TJanuaWebBrokerServerClass);
begin
  FWebBrokerClass := Value;
  if Assigned(FWebBrokerClass) then
  begin
    TJanuaWebServerFactory.WebServerClass := FWebBrokerClass;
    FWebServer := TJanuaWebServerFactory.CreateWebServer(sedPort.ValueAsInt) as TJanuaWebBrokerServer;
    sedPort.Value := FWebServer.Port;
  end;
end;

procedure TJanuaframeWebServerManager.StartServer;
begin
  if Assigned(OnBeforeStartServer) then
    OnBeforeStartServer(Self);

  Assert(Assigned(FWebBrokerClass), 'Web Broker Class not Assigned');
  Assert(Assigned(FWebModuleClass), 'Web Module Class not Assigned');

  FWebBrokerClass.WebModuleClass := FWebModuleClass;

  FUrl := Format('http://localhost:%d', [sedPort.ValueAsInt]);
  Assert(Assigned(FWebServer), 'WebServer Not Assigned');
  FWebServer.StartServer;

  if Assigned(OnAfterStartServer) then
    OnAfterStartServer(Self);
end;

procedure TJanuaframeWebServerManager.StopServer;
begin
  if Assigned(FWebServer) then
    FWebServer.StopServer;
end;

end.
