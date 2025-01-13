unit Janua.VCL.Http.frmWebBrokerServer;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Winapi.WebView2, Winapi.ActiveX,
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.AppEvnts, VCL.StdCtrls, VCL.Edge,
  IdHTTPWebBrokerBridge, IdGlobal, Web.HTTPApp,
  // Janua
  Janua.VCL.frameWebServerManager, Janua.VCL.Interposers, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser,
  VCL.TMSFNCEdgeWebBrowser;

type
  TfrmVCLWebBrokerServer = class(TForm)
    grpWebBrokerStart: TGroupBox;
    JanuaframeWebServerManager: TJanuaframeWebServerManager;
    Edit1: TEdit;
    TMSFNCEdgeWebBrowser1: TTMSFNCEdgeWebBrowser;
    procedure ButtonStopClick(Sender: TObject);
    procedure JanuaframeWebServerManagerBeforeStartServer(Sender: TObject);
    procedure JanuaframeWebServerManagerbtnStartServerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JanuaframeWebServerManagerJanuaWebBrokerServerManager1AfterStartServer(Sender: TObject);
  private
    FServer: TIdHTTPWebBrokerBridge;
    procedure StartServer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLWebBrokerServer: TfrmVCLWebBrokerServer;

implementation

{$R *.dfm}

uses
{$IFDEF MSWINDOWS}
  Winapi.Windows, Winapi.ShellApi,
{$ENDIF}
  // Janua Web Broker
  Janua.WebBroker.Server, System.Generics.Collections;

procedure TfrmVCLWebBrokerServer.ButtonStopClick(Sender: TObject);
begin
  FServer.Active := False;
  FServer.Bindings.Clear;
end;

procedure TfrmVCLWebBrokerServer.FormCreate(Sender: TObject);
begin
  JanuaframeWebServerManager.JanuaWebBrokerServerManager1.WebBrokerClass := JanuaWebBrokerServerClass;
  JanuaframeWebServerManager.btnStartServer.Enabled :=
    JanuaframeWebServerManager.JanuaWebBrokerServerManager1.Activate;
end;

procedure TfrmVCLWebBrokerServer.JanuaframeWebServerManagerBeforeStartServer(Sender: TObject);
begin
  /// Here we can add a DataModule but it will be defined by the descendant forms
end;

procedure TfrmVCLWebBrokerServer.JanuaframeWebServerManagerbtnStartServerClick(Sender: TObject);
begin
  JanuaframeWebServerManager.btnStartServerClick(Sender);

end;

procedure TfrmVCLWebBrokerServer.JanuaframeWebServerManagerJanuaWebBrokerServerManager1AfterStartServer
  (Sender: TObject);
begin
  Edit1.Text := JanuaframeWebServerManager.JanuaWebBrokerServerManager1.Url;
  TMSFNCEdgeWebBrowser1.Navigate(JanuaframeWebServerManager.JanuaWebBrokerServerManager1.Url);
  TMSFNCEdgeWebBrowser1.Url := JanuaframeWebServerManager.JanuaWebBrokerServerManager1.Url;
end;

procedure TfrmVCLWebBrokerServer.StartServer;
begin

end;

end.
