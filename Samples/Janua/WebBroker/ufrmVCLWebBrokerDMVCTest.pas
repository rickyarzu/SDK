unit ufrmVCLWebBrokerDMVCTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, AdvCustomControl, AdvWebBrowser,
  // Janua
  Janua.Vcl.frameWebServerManager, Janua.WebBroker.Server, Janua.DMVC.WebBroker.Server;

type
  TfrmVCLWebBrokerDMVCTest = class(TForm)
    pgTests: TPageControl;
    tabWebBrokder: TTabSheet;
    tabDMVCWebBrokder: TTabSheet;
    tabMixedTest: TTabSheet;
    pnlWebBrokerTest: TPanel;
    frameTestWebBroker: TJanuaframeWebServerManager;
    Panel1: TPanel;
    JanuaframeWebServerManager2: TJanuaframeWebServerManager;
    edPassword: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    PageControl1: TPageControl;
    tabBrowser: TTabSheet;
    AdvWebBrowser1: TAdvWebBrowser;
    tabDMVCTest: TTabSheet;
    pgDMVCTests: TPageControl;
    tabDMVCWebTests: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    pnlDMVCWebTest: TPanel;
    AdvWebBrowser2: TAdvWebBrowser;
    awbTestWebServer: TAdvWebBrowser;
    procedure frameTestWebBrokerBeforeStartServer(Sender: TObject);
    procedure frameTestWebBrokerAfterStartServer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLWebBrokerDMVCTest: TfrmVCLWebBrokerDMVCTest;

implementation

{$R *.dfm}

uses Janua.Test.WebBroker.WebModule;

procedure TfrmVCLWebBrokerDMVCTest.frameTestWebBrokerAfterStartServer(Sender: TObject);
/// in una applicazione VCL l'evento 'after start server' può essere utilizzato ad esempio
/// per effettuare una login o per navigare su una pagina precisa o per entrambi i metodi
begin
  awbTestWebServer.Navigate(frameTestWebBroker.Url)
end;

procedure TfrmVCLWebBrokerDMVCTest.frameTestWebBrokerBeforeStartServer(Sender: TObject);
/// prima dell'avvio del Web Server (ma dopo la sua creazione) possiamo indicargli quale sia la classe
/// del webModule che la sua Factory si occuperà di creare ad ogni avvio del Server Stesso
begin
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  frameTestWebBroker.WebBrokerClass := JanuaWebBrokerServerClass;
  frameTestWebBroker.WebModuleClass := TestWebModuleClass;
end;

end.
