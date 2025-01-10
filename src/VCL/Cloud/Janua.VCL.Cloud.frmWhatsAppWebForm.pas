unit Janua.VCL.Cloud.frmWhatsAppWebForm;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.AppEvnts, VCL.StdCtrls,
  IdHTTPWebBrokerBridge, IdGlobal, Web.HTTPApp,
  Janua.VCL.frameWebServerManager;

type
  TfrmVCLWebBrokerWhatsApp = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    grpLegacy: TGroupBox;
    ButtonStart: TButton;
    ButtonStop: TButton;
    Label1: TLabel;
    EditPort: TEdit;
    ButtonOpenBrowser: TButton;
    grpWebBrokerStart: TGroupBox;
    JanuaframeWebServerManager1: TJanuaframeWebServerManager;
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure ButtonOpenBrowserClick(Sender: TObject);
    procedure JanuaframeWebServerManager1BeforeStartServer(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure StartServer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLWebBrokerWhatsApp: TfrmVCLWebBrokerWhatsApp;

implementation

{$R *.dfm}

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows, Winapi.ShellApi,
{$ENDIF}
  // Janua Web Broker
  Janua.WebBroker.Server, Janua.WhatsApp.WebbrokerModule,
  System.Generics.Collections;

procedure TfrmVCLWebBrokerWhatsApp.ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
begin
  ButtonStart.Enabled := not FServer.Active;
  ButtonStop.Enabled := FServer.Active;
  EditPort.Enabled := not FServer.Active;
end;

procedure TfrmVCLWebBrokerWhatsApp.ButtonOpenBrowserClick(Sender: TObject);
{$IFDEF MSWINDOWS}
var
  LURL: string;
{$ENDIF}
begin
  StartServer;
{$IFDEF MSWINDOWS}
  LURL := Format('http://localhost:%s', [EditPort.Text]);
  ShellExecute(0, nil, PChar(LURL), nil, nil, SW_SHOWNOACTIVATE);
{$ENDIF}
end;

procedure TfrmVCLWebBrokerWhatsApp.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TfrmVCLWebBrokerWhatsApp.ButtonStopClick(Sender: TObject);
begin
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure TfrmVCLWebBrokerWhatsApp.FormCreate(Sender: TObject);
begin
  FServer := TIdHTTPWebBrokerBridge.Create(Self);
end;

procedure TfrmVCLWebBrokerWhatsApp.JanuaframeWebServerManager1BeforeStartServer(Sender: TObject);
begin
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  JanuaframeWebServerManager1.WebBrokerClass := JanuaWebBrokerServerClass;
  JanuaframeWebServerManager1.WebModuleClass := WhatsAppWebModuleClass;
end;

procedure TfrmVCLWebBrokerWhatsApp.StartServer;
begin
  if not FServer.Active then
  begin
    FServer.Bindings.Clear;
    FServer.DefaultPort := StrToInt(EditPort.Text);
    FServer.Active := True;
  end;
end;

end.
