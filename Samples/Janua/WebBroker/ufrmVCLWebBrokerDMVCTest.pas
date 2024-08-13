unit ufrmVCLWebBrokerDMVCTest;

interface

uses
  // rtl
  System.Net.URLClient, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  // Vcl
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  // Tms
  AdvCustomControl, AdvWebBrowser,
  // Janua
  Janua.Vcl.frameWebServerManager, AdvMemo, advmjson;

type
  TfrmVCLWebBrokerDMVCTest = class(TForm)
    pgTests: TPageControl;
    tabWebBrokder: TTabSheet;
    tabDMVCWebBrokder: TTabSheet;
    tabMixedTest: TTabSheet;
    pnlWebBrokerTest: TPanel;
    frameTestWebBroker: TJanuaframeWebServerManager;
    Panel1: TPanel;
    frameDMVCWebBroker: TJanuaframeWebServerManager;
    edPassword: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    PageControl1: TPageControl;
    tabBrowser: TTabSheet;
    awbDMVCIndexPage: TAdvWebBrowser;
    tabDMVCTest: TTabSheet;
    pgDMVCTests: TPageControl;
    tabDMVCWebTests: TTabSheet;
    tabLoginTest: TTabSheet;
    TabSheet3: TTabSheet;
    pnlDMVCWebTest: TPanel;
    AdvWebBrowser2: TAdvWebBrowser;
    awbTestWebServer: TAdvWebBrowser;
    AdvMemo1: TAdvMemo;
    s: TAdvJSONMemoStyler;
    edDMVCUrlTest: TEdit;
    procedure frameTestWebBrokerBeforeStartServer(Sender: TObject);
    procedure frameTestWebBrokerAfterStartServer(Sender: TObject);
    procedure frameDMVCWebBrokerAfterStartServer(Sender: TObject);
    procedure frameDMVCWebBrokerBeforeStartServer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVCLWebBrokerDMVCTest: TfrmVCLWebBrokerDMVCTest;

implementation

{$R *.dfm}

uses Janua.WebBroker.Server, Janua.Test.WebBroker.WebModule, Janua.DMVC.WebBroker.Server,
  Janua.DMVC.Test.CoreWebModule, Janua.Core.Functions, Janua.Application.Framework;

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

procedure TfrmVCLWebBrokerDMVCTest.frameDMVCWebBrokerAfterStartServer(Sender: TObject);
begin
  var
  int := 'intero=1';
  var
  stringa := '&stringa=' + TURI.URLEncode('Ma che bella Giornata!');
  var
  guid := '&GUID=' + TURI.URLEncode('{282BCD26-510D-4CEE-8A0A-72607E401F31}');

  edDMVCUrlTest.Text := frameDMVCWebBroker.Url + '?' + int + stringa + guid;
  awbDMVCIndexPage.Navigate(edDMVCUrlTest.Text)
end;

procedure TfrmVCLWebBrokerDMVCTest.frameDMVCWebBrokerBeforeStartServer(Sender: TObject);
/// prima dell'avvio del Web Server (ma dopo la sua creazione) possiamo indicargli quale sia la classe
/// del webModule che la sua Factory si occuperà di creare ad ogni avvio del Server Stesso
begin
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  frameDMVCWebBroker.WebBrokerClass := JanuaDMVCWebBrokerServerClass;
  frameDMVCWebBroker.WebModuleClass := JanuaDMVCTestWebModuleClass;
end;

end.
