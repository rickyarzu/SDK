unit Janua.VCL.Cloud.frmWhatsAppWebForm;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Winapi.WebView2, Winapi.ActiveX,
  //VCL
  VCL.Edge, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.StdCtrls,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser, VCL.TMSFNCEdgeWebBrowser, VCL.Dialogs, VCL.AppEvnts,
  VCL.Graphics, VCL.Controls, VCL.Forms,
  // Indy
  IdHTTPWebBrokerBridge, IdGlobal, Web.HTTPApp,
  // Janua
  Janua.VCL.Http.frmWebBrokerServer, Janua.VCL.frameWebServerManager, Janua.VCL.Interposers;

type
  TfrmVCLWebBrokerWhatsApp = class(TfrmVCLWebBrokerServer)
    procedure JanuaframeWebServerManagerBeforeStartServer(Sender: TObject);
  private
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

procedure TfrmVCLWebBrokerWhatsApp.JanuaframeWebServerManagerBeforeStartServer(Sender: TObject);
begin
  inherited;
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  JanuaframeWebServerManager.JanuaWebBrokerServerManager1.WebModuleClass := WhatsAppWebModuleClass;
end;

end.
