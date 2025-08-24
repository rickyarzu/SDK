unit Janua.VCL.dlgCustomLogin;

interface

uses
  // Windows / System
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Spring.Collections, System.Json, System.Types, System.UITypes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.Dialogs, VCL.StdCtrls, VCL.ExtCtrls,
  // Janua
  Janua.VCL.Interposers, Janua.Core.Types, Janua.Core.Classes.Intf, Janua.Orm.Intf, Janua.Forms.Types,
  Janua.Controls.Intf, Janua.Controls.Forms.Intf, uJanuaVCLForm, Janua.System.ViewModel.Intf;

type
  TdlgVCLCustomLogin = class(TJanuaVCLFormModel, IJanuaLoginForm, IJanuaForm, IJanuaControl)
    btnUndo: TButton;
    btnLogin: TButton;
    ckbShowPasswordChar: TCheckBox;
    edPassword: TEdit;
    HTMLabel1: TLabel;
    edUserName: TEdit;
    lbUsername: TLabel;
    imgLogo: TImage;
    ckbRemember: TCheckBox;
    procedure ckbShowPasswordCharClick(Sender: TObject);
    procedure edUserNameKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ckbRememberClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPasswordExit(Sender: TObject);
  strict private
    FViewModel: IJanuaSystemUserSessionViewModel;
  private
    procedure StorePassword;
  protected
    function GetViewModel: IJanuaSystemUserSessionViewModel;
    procedure SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
  public
    procedure ShowLogin(aProc: TProc<string { UserName } , string { Password } , boolean { DoLogin } >);
    property ViewModel: IJanuaSystemUserSessionViewModel read GetViewModel write SetViewModel;
  end;

var
  dlgVCLCustomLogin: TdlgVCLCustomLogin;

implementation

uses Janua.Application.Framework;

{$R *.dfm}

procedure TdlgVCLCustomLogin.ckbRememberClick(Sender: TObject);
begin
  inherited;
  FViewModel.RememberLocalPassword := ckbRemember.Checked;
  TJanuaCoreOS.WriteBoolRegistry(False, 'Remember', 'System', ckbRemember.Checked);
  StorePassword;
end;

procedure TdlgVCLCustomLogin.ckbShowPasswordCharClick(Sender: TObject);
begin
  if ckbShowPasswordChar.Checked then
    edPassword.PasswordChar := #0
  else
    edPassword.PasswordChar := '*'
end;

procedure TdlgVCLCustomLogin.edPasswordExit(Sender: TObject);
begin
  inherited;
  if ckbRemember.Checked then
    TJanuaCoreOS.WriteRegistryCrypt(False, 'Password', 'System', edPassword.Text);
end;

procedure TdlgVCLCustomLogin.edUserNameKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = Chr(VK_RETURN) Then
  Begin
    If HiWord(GetKeyState(VK_SHIFT)) <> 0 then
      SelectNext(Sender as TWinControl, False, True)
    else
      SelectNext(Sender as TWinControl, True, True);
    Key := #0
  end;
end;

procedure TdlgVCLCustomLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  StorePassword;
end;

procedure TdlgVCLCustomLogin.FormShow(Sender: TObject);
begin
  if FViewModel.SystemUserSessionModel.LastErrorMessage <> '' then
    Caption := FViewModel.SystemUserSessionModel.LastErrorMessage;

  ckbRemember.Checked := TJanuaCoreOS.ReadBoolRegistry(False, 'Remember', 'System', False);
  { TODO: FViewModel.RememberLocalPassword; }

  edUserName.Text := TJanuaCoreOS.ReadRegistryCrypt(False, 'User', 'System', edUserName.Text);
  { TODO: FViewModel.SystemUserSessionModel.UserLogin.UserName.AsString; }
  if ckbRemember.Checked then
    edPassword.Text := TJanuaCoreOS.ReadRegistryCrypt(False, 'Password', 'System', edPassword.Text);
  { TODO: FViewModel.SystemUserSessionModel.UserLogin.Password.AsString; if FViewModel.RememberLocalPassword then }
end;

{ TdlgVCLCustomLogin }

function TdlgVCLCustomLogin.GetViewModel: IJanuaSystemUserSessionViewModel;
begin
  Result := FViewModel
end;

procedure TdlgVCLCustomLogin.SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
begin
  FViewModel := Value;

  if Assigned(FViewModel) then
  begin
    FViewModel.SystemUserSessionModel.Bind('LastErrorMessage', self, 'Caption', True);
    FViewModel.SystemUserSessionModel.UserLogin.UserName.Bind('AsString', self.edUserName, 'Text');
    FViewModel.SystemUserSessionModel.UserLogin.Password.Bind('AsString', self.edPassword, 'Text');
    { TODO: // Connects Local Store Password To Check Box.
      FViewModel.Bind('RememberLocalPassword', ckbRemember, 'Checked'); }
  end;
end;

procedure TdlgVCLCustomLogin.ShowLogin(aProc: TProc<string, string, boolean>);
begin
  ShowModal;
  if Assigned(aProc) then
    aProc(edUserName.Text, edPassword.Text, True);

end;

procedure TdlgVCLCustomLogin.StorePassword;
begin
  if ckbRemember.Checked and (edPassword.Text > '') then
  { TODO: FViewModel.RememberLocalPassword }
  begin
    TJanuaCoreOS.WriteRegistryCrypt(False, 'Password', 'System', edPassword.Text);
    TJanuaCoreOS.WriteRegistryCrypt(False, 'User', 'System', edUserName.Text);
  end;
end;

end.
