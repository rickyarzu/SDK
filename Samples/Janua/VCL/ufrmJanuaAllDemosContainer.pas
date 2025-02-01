unit ufrmJanuaAllDemosContainer;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Strutils,
  System.Net.URLClient,
  // VCL
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Graphics,
  // Januaproject
  Janua.REST.Intf, Janua.System.ViewModel.Intf, Jorm.System.Intf, Janua.Core.Types, Janua.Http.Types,
  // Janua
  Janua.Vcl.frameWebServerManager, Vcl.ComCtrls, Janua.TMS.FrameAdvBrowser, AdvMemo, advmjson;

type
  TfrmAllDemosContainer = class(TForm)
    pntlTop: TPanel;
    frameDMVCWebBroker: TJanuaframeWebServerManager;
    edtPassword: TLabeledEdit;
    edtUsername: TLabeledEdit;
    btnLogin: TButton;
    pgTests: TPageControl;
    tabTestSer: TTabSheet;
    tabTestConnection: TTabSheet;
    tabTestVCLApplication: TTabSheet;
    TframeTmsAdvBrowser1: TframeTmsAdvBrowser;
    AdvJSONMemoStyler1: TAdvJSONMemoStyler;
    advMemoSession: TAdvMemo;
    ckbRemember: TCheckBox;
    ckbShow: TCheckBox;
    procedure frameDMVCWebBrokerBeforeStartServer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure frameDMVCWebBrokerAfterStartServer(Sender: TObject);
    procedure ckbRememberClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  strict private
    FViewModel: IJanuaSystemUserSessionViewModel;
    FClientLogin: IRESTLoginClient;
    FPassword: string;
    FUserName: string;
    FLastMessage: string;
  private
    FJsonLog: string;
    procedure StorePassword;
    function InternalLogin: boolean; overload;
    function InternalLogin(const aUsername, aPassword: string): boolean; overload;
    procedure SetJsonLog(const Value: string);
  protected
    function GetViewModel: IJanuaSystemUserSessionViewModel;
    procedure SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
    { Private declarations }
  public
    property ViewModel: IJanuaSystemUserSessionViewModel read GetViewModel write SetViewModel;
    property JsonLog: string read FJsonLog write SetJsonLog;
  end;

var
  frmAllDemosContainer: TfrmAllDemosContainer;

implementation

uses System.IOUtils, Janua.REST.Client, Jorm.System.Impl, Janua.WebBroker.Server,
  Janua.Test.WebBroker.WebModule, Janua.DMVC.WebBroker.Server, Janua.DMVC.Test.CoreWebModule,
  Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmAllDemosContainer.btnLoginClick(Sender: TObject);
begin
  if InternalLogin(edtUsername.Text, edtPassword.Text) then
    advMemoSession.Lines.Text := FJsonLog;
end;

procedure TfrmAllDemosContainer.ckbRememberClick(Sender: TObject);
begin
  if Assigned(FViewModel) then
    FViewModel.RememberLocalPassword := ckbRemember.Checked;
  TJanuaCoreOS.WriteBoolRegistry(False, 'Remember', 'System', ckbRemember.Checked);
  StorePassword;
end;

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
  TJanuaApplication.RestClientConf.Port := 9010;
  TJanuaApplication.RestClientConf.Server := 'http://localhost';
  //
  SetViewModel(TJanuaApplication.UserSessionVM);
  FClientLogin := TRESTClientLogin.Create;
  FClientLogin.ServerPort := TJanuaApplication.RestClientConf.Port;
  FClientLogin.ServerURL := TJanuaApplication.RestClientConf.Server;
  FClientLogin.APIUrl := TJanuaApplication.RestClientConf.LoginResource;
end;

procedure TfrmAllDemosContainer.frameDMVCWebBrokerAfterStartServer(Sender: TObject);
begin
  // Remote Configuration  {'https://api.pikapp.it/'}
  TJanuaApplication.RestServer := 'http://localhost';
  TJanuaApplication.RestClientConf.Server := 'http://localhost';
  TJanuaApplication.RestClientConf.Port := frameDMVCWebBroker.sedPort.Value;
  FClientLogin.ServerPort := TJanuaApplication.RestClientConf.Port;
  FClientLogin.ServerURL := TJanuaApplication.RestClientConf.Server;

  var
  int := 'intero=1';
  var
  stringa := '&stringa=' + TURI.URLEncode('Ma che bella Giornata!');
  var
  guid := '&GUID=' + TURI.URLEncode('{282BCD26-510D-4CEE-8A0A-72607E401F31}');

  TframeTmsAdvBrowser1.edtUrl.Text := frameDMVCWebBroker.Url + '?' + int + stringa + guid;
  TframeTmsAdvBrowser1.AdvWebBrowser1.Navigate(TframeTmsAdvBrowser1.edtUrl.Text)
end;

procedure TfrmAllDemosContainer.frameDMVCWebBrokerBeforeStartServer(Sender: TObject);
/// prima dell'avvio del Web Server (ma dopo la sua creazione) possiamo indicargli quale sia la classe
/// del webModule che la sua Factory si occuperà di creare ad ogni avvio del Server Stesso
begin
  // nota JanuaWebBrokerServerClass è una Variabile di tipo TJanuaWebBrokerServerClass
  frameDMVCWebBroker.WebBrokerClass := JanuaDMVCWebBrokerServerClass;
  frameDMVCWebBroker.WebModuleClass := JanuaDMVCTestWebModuleClass;
end;

function TfrmAllDemosContainer.GetViewModel: IJanuaSystemUserSessionViewModel;
begin
  Result := FViewModel
end;

function TfrmAllDemosContainer.InternalLogin: boolean;
var
  // TJanuaRESTClient = class(IJanuaRESTClient, IJanuaBindable)
  lRestClient: IJanuaRESTClient;
  lSystem: IUserSession;
begin
  Result := False;
  FClientLogin.ServerPort := TJanuaApplication.RestClientConf.Port;
  FClientLogin.ServerURL := TJanuaApplication.RestClientConf.Server;
  FClientLogin.UserName := IfThen(FUserName = '', TJanuaApplication.RestClientConf.UserName, FUserName);
  FClientLogin.Password := IfThen(FPassword = '', TJanuaApplication.RestClientConf.Password, FPassword);
{$IFDEF DEBUG}
  var
  lUrl := FClientLogin.GetFullUrl;
  if lUrl <> '' then
{$ENDIF}
    Result := FClientLogin.Login;

  {
    FClientLogin è la libreria REST client per login con DMVC e JWT ma non si occupa di recuperare la
    'sessione'. Una volta ottenuto il Token JWT questo va scritto 'aggiornato' in locale e va chiamata
    con un client REST separato l'url session ceh con un metodo GET e l'autenticazione JWT ci ritorna
    il record di sessione dell'utente sostanzialmente i dati dell'utente che ha fatto la login.
    Dopodiché viene registrata la sessione e viene passata come oggetto IJanuaRecord al ViewModel di
    gestione della sessione dell'Applicazione.
  }

  FLastMessage := FClientLogin.LoginResult + sl + FClientLogin.LogString;
  if Result then
  begin
    // Store Json Web Token
    TJanuaCoreOS.WriteRegistry(False, 'JWT', 'System', TJanuaApplication.RestClientConf.JWT);
    lRestClient := TJanuaRESTClient.New;
    lRestClient.APIUrl := 'session';
    lRestClient.Execute(TJanuaHttpMethod.jhmGet);
    lSystem := TUserSession.Create;
    lSystem.asJson := lRestClient.Content;
    FJsonLog := lSystem.asJson;
    TFile.WriteAllText(TPath.Combine(TJanuaCoreOS.HomePath, 'session.json'), FJsonLog);
    TJanuaApplication.UserSessionVM.CurrentRecord.Assign(lSystem);
  end;
end;

function TfrmAllDemosContainer.InternalLogin(const aUsername, aPassword: string): boolean;
begin
  FUserName := aUsername;
  FPassword := aPassword;
  Result := InternalLogin;
end;

procedure TfrmAllDemosContainer.SetJsonLog(const Value: string);
begin
  FJsonLog := Value;
end;

procedure TfrmAllDemosContainer.SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
begin
  FViewModel := Value;

  (*
    if Assigned(FViewModel) then
    begin
    FViewModel.SystemUserSessionModel.Bind('LastErrorMessage', self, 'Caption', True);
    FViewModel.SystemUserSessionModel.UserLogin.UserName.Bind('AsString', self.edtUserName, 'Text');
    FViewModel.SystemUserSessionModel.UserLogin.Password.Bind('AsString', self.edtPassword, 'Text');
    { TODO: // Connects Local Store Password To Check Box.
    FViewModel.Bind('RememberLocalPassword', ckbRemember, 'Checked'); }
    end;
  *)

end;

procedure TfrmAllDemosContainer.StorePassword;
begin
  if ckbRemember.Checked and (edtPassword.Text > '') then
  { TODO: FViewModel.RememberLocalPassword }
  begin
    TJanuaCoreOS.WriteRegistryCrypt(False, 'Password', 'System', edtPassword.Text);
    TJanuaCoreOS.WriteRegistryCrypt(False, 'User', 'System', edtUsername.Text);
  end;
end;

end.
