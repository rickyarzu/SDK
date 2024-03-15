unit Janua.FMX.LoginDialog;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Strutils,
  // FMX
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects, FMX.Controls.Presentation,
  FMX.Edit, FMX.Layouts, FMX.StdCtrls,
  // Januaproject
  Janua.REST.Intf, Janua.System.ViewModel.Intf, Jorm.System.Intf, Janua.Core.Types, Janua.Http.Types,
  // Januaproject FMX
  Janua.FMX.Interposers, Janua.FMX.FormControls, Janua.FMX.frmModel;

type

  TdlgFMXLoginDialogMobile = class(TForm)
    layoutLogin: TLayout;
    imgLoginLogo: TImage;
    edtUserName: TEdit;
    lbUsername: TLabel;
    lbPassword: TLabel;
    edtPassword: TEdit;
    btnLogin: TButton;
    btnCancel: TButton;
    lbRemember: TLabel;
    swRemember: TSwitch;
    lbError: TLabel;
    procedure swRememberSwitch(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  strict private
    FViewModel: IJanuaSystemUserSessionViewModel;
    FClientLogin: IRESTLoginClient;
    FPassword: string;
    FUserName: string;
    FLastMessage: string;
  private
    procedure StorePassword;
    function InternalLogin: boolean; overload;
    function InternalLogin(const aUsername, aPassword: string): boolean; overload;
  protected
    function GetViewModel: IJanuaSystemUserSessionViewModel;
    procedure SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
    { Private declarations }
  public
    property ViewModel: IJanuaSystemUserSessionViewModel read GetViewModel write SetViewModel;
  end;

var
  dlgFMXLoginDialogMobile: TdlgFMXLoginDialogMobile;

implementation

uses System.IOUtils, Janua.Application.Framework, Janua.FMX.Application, Janua.REST.Client, Jorm.System.Impl;

{$R *.fmx}
{ TdlgFMXLoginDialogMobile }

procedure TdlgFMXLoginDialogMobile.btnLoginClick(Sender: TObject);
var
  aForm: TForm;
  aFunction: TFormFunc;
  FSessionKey: string;
begin
  { if FViewModel.SilentLogin(edtUserName.Text, edtPassword.Text) then }
  if InternalLogin(edtUserName.Text, edtPassword.Text) then
  begin
    TJanuaApplication.SessionKey := FViewModel.CurrentRecord.Db_session_key.AsString;
    aFunction := TJanuaFMXApplication.MainFormFunc;
    aForm := aFunction;
    aForm.Show;
    Close;
  end;
end;

procedure TdlgFMXLoginDialogMobile.FormCreate(Sender: TObject);
begin
  SetViewModel(TJanuaApplication.UserSessionVM);
  FClientLogin := TRESTClientLogin.Create;
  FClientLogin.ServerPort := TJanuaApplication.RestClientConf.Port;
  FClientLogin.ServerURL := TJanuaApplication.RestClientConf.Server;
  FClientLogin.APIUrl := TJanuaApplication.RestClientConf.LoginResource;
end;

procedure TdlgFMXLoginDialogMobile.FormShow(Sender: TObject);
begin
  if Assigned(FViewModel) then
  begin
    lbError.Visible := FViewModel.SystemUserSessionModel.LastErrorMessage <> '';
    lbError.Text := FViewModel.SystemUserSessionModel.LastErrorMessage;
  end;

  swRemember.IsChecked := TJanuaCoreOS.ReadBoolRegistry(False, 'Remember', 'System', False);
  { TODO: FViewModel.RememberLocalPassword; }

  edtUserName.Text := TJanuaCoreOS.ReadRegistryCrypt(False, 'User', 'System', edtUserName.Text);
  { TODO: FViewModel.SystemUserSessionModel.UserLogin.UserName.AsString; }
  if swRemember.IsChecked then
    edtPassword.Text := TJanuaCoreOS.ReadRegistryCrypt(False, 'Password', 'System', edtPassword.Text);
  { TODO: FViewModel.SystemUserSessionModel.UserLogin.Password.AsString; if FViewModel.RememberLocalPassword then }

end;

function TdlgFMXLoginDialogMobile.GetViewModel: IJanuaSystemUserSessionViewModel;
begin
  Result := FViewModel
end;

function TdlgFMXLoginDialogMobile.InternalLogin: boolean;
var
  // TJanuaRESTClient = class(IJanuaRESTClient, IJanuaBindable)
  lRestClient: IJanuaRESTClient;
  lSystem: IUserSession;
begin
  Result := False;
  FClientLogin.UserName := IfThen(FUserName = '', TJanuaApplication.RestClientConf.UserName, FUserName);
  FClientLogin.Password := IfThen(FPassword = '', TJanuaApplication.RestClientConf.Password, FPassword);
{$IFDEF DEBUG}
  var
  lUrl := FClientLogin.GetFullUrl;
  if lUrl <> '' then
{$ENDIF}
    Result := FClientLogin.Login;
  FLastMessage := FClientLogin.LoginResult + sl + FClientLogin.LogString;
  if Result then
  begin
    TJanuaCoreOS.WriteRegistry(False, 'JWT', 'System', TJanuaApplication.RestClientConf.JWT);
    lRestClient := TJanuaRESTClient.New;
    lRestClient.APIUrl := 'session';
    lRestClient.Execute(TJanuaHttpMethod.jhmGet);
    lSystem := TUserSession.Create;
    lSystem.asJson := lRestClient.Content;
    TFile.WriteAllText(TPath.Combine(TJanuaCoreOS.HomePath, 'session.json'), lSystem.asJson);
    TJanuaApplication.UserSessionVM.CurrentRecord.Assign(lSystem);
  end;
end;

function TdlgFMXLoginDialogMobile.InternalLogin(const aUsername, aPassword: string): boolean;
begin
  FUserName := aUsername;
  FPassword := aPassword;
  Result := InternalLogin;
end;

procedure TdlgFMXLoginDialogMobile.SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
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

procedure TdlgFMXLoginDialogMobile.StorePassword;
begin
  if swRemember.IsChecked and (edtPassword.Text > '') then
  { TODO: FViewModel.RememberLocalPassword }
  begin
    TJanuaCoreOS.WriteRegistryCrypt(False, 'Password', 'System', edtPassword.Text);
    TJanuaCoreOS.WriteRegistryCrypt(False, 'User', 'System', edtUserName.Text);
  end;
end;

procedure TdlgFMXLoginDialogMobile.swRememberSwitch(Sender: TObject);
begin
  if Assigned(FViewModel) then
    FViewModel.RememberLocalPassword := swRemember.IsChecked;
  TJanuaCoreOS.WriteBoolRegistry(False, 'Remember', 'System', swRemember.IsChecked);
  StorePassword;
end;

end.
