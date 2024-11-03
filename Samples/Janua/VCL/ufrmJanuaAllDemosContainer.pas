unit ufrmJanuaAllDemosContainer;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Net.URLClient,
  // VCL
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  // Janua
  Janua.Vcl.frameWebServerManager, Vcl.ComCtrls;

type
  TfrmAllDemosContainer = class(TForm)
    Panel1: TPanel;
    frameDMVCWebBroker: TJanuaframeWebServerManager;
    edPassword: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    btnLogin: TButton;
    pgTests: TPageControl;
    tabTestSer: TTabSheet;
    tabTestConnection: TTabSheet;
    tabTestVCLApplication: TTabSheet;
    procedure frameDMVCWebBrokerBeforeStartServer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frameDMVCWebBrokerAfterStartServer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAllDemosContainer: TfrmAllDemosContainer;

implementation

uses Janua.WebBroker.Server, Janua.Test.WebBroker.WebModule, Janua.DMVC.WebBroker.Server,
  Janua.DMVC.Test.CoreWebModule, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmAllDemosContainer.FormCreate(Sender: TObject);
begin
  TJanuaApplication.ServerUserName := 'ergo';
  TJanuaApplication.ServerSchema := 'ergomercator';
  TJanuaApplication.DBSchemaID := 36;
  TJanuaApplication.ServerPassword := '3rg0m3rc4t0r';
  TJanuaApplication.ServerPort := 5432;
  TJanuaApplication.ServerAddress := 'pg.januaservers.com';
  // Rest Server Conf
  IsMultiThread := True;
  // Januaproject REST Server Settings
  // Set this or unset this to enable Test Database connection
  TJanuaApplication.TestMode := False;
  TJanuaApplication.RestServerConf.Port := 9010;
  // port of the service listener can be overwrittn by file conf
end;

procedure TfrmAllDemosContainer.frameDMVCWebBrokerAfterStartServer(Sender: TObject);
begin
  // Remote Configuration  {'https://api.pikapp.it/'}
  TJanuaApplication.RestServer := 'http://localhost';
  TJanuaApplication.RESTClientConf.Server := 'http://localhost';
  TJanuaApplication.RESTClientConf.Port := frameDMVCWebBroker.sedPort.ValueAsInt;
  // usa la porta di Default 443 per https in questo caso

  var
  int := 'intero=1';
  var
  stringa := '&stringa=' + TURI.URLEncode('Ma che bella Giornata!');
  var
  guid := '&GUID=' + TURI.URLEncode('{282BCD26-510D-4CEE-8A0A-72607E401F31}');

  {
    edDMVCUrlTest.Text := frameDMVCWebBroker.Url + '?' + int + stringa + guid;
    awbDMVCIndexPage.Navigate(edDMVCUrlTest.Text)
  }
end;

procedure TfrmAllDemosContainer.frameDMVCWebBrokerBeforeStartServer(Sender: TObject);
/// prima dell'avvio del Web Server (ma dopo la sua creazione) possiamo indicargli quale sia la classe
/// del webModule che la sua Factory si occuperà di creare ad ogni avvio del Server Stesso
begin
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  frameDMVCWebBroker.WebBrokerClass := JanuaDMVCWebBrokerServerClass;
  frameDMVCWebBroker.WebModuleClass := JanuaDMVCTestWebModuleClass;
end;

end.
