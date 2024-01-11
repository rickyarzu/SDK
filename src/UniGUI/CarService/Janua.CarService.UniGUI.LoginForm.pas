unit Janua.CarService.UniGUI.LoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniPageControl, uniCheckBox,
  uniEdit, uniImage, Vcl.Imaging.pngimage, uniBitBtn, UniFSButton, uniMultiItem, uniComboBox, UniFSCombobox,
  uniImageList, uniColorButton, uniPanel, uniLabel, uniDateTimePicker,
  // Januaproject
  Janua.UniGUI.Interposers, Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types,
  Janua.Vcl.Interposers, JOrm.System.Intf, JOrm.Anagraph.Intf;

type
  TBtnType = (btLogin, btRegisterStart, btRegisterNext, btRegisterPrev, btRegisterEnd, btNone);
  TLoginPage = (lpLogin, lpRegisterStart, lpRegisterEnd, lpNone);

  TfrmCarServiceUniGUILogin = class(TUniLoginForm)
    pgUserLoginRegister: TUniPageControl;
    tsLogin: TUniTabSheet;
    ledUserName: TUniEdit;
    ledPassword: TUniEdit;
    chkPassword: TUniCheckBox;
    lbUserName: TUniLabel;
    lbPassword: TUniLabel;
    lblTituloSistema: TUniLabel;
    lblSubTitulo: TUniLabel;
    btnLogin: TUniFSButton;
    UniImage1: TUniImage;
    unmglst1: TUniImageList;
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure chkPasswordClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
    procedure ledPasswordChange(Sender: TObject);
    procedure ledUserNameChange(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
  private
    FBtn1Type: TBtnType;
    FBtn2Type: TBtnType;
    FLoginPage: TLoginPage;
    procedure SetBtn1Type(const Value: TBtnType);
    procedure SetBtn2Type(const Value: TBtnType);
    procedure SetButtonCaptions;
    procedure SetLoginPage(const Value: TLoginPage);
    procedure InternalLogin;
    procedure RegisterAnagraphProfile;
    function CheckRegisterValues: Boolean;
    function CheckRegisterEndValues: Boolean;
    procedure JShowError(const aMessage: string; aTitle: string = '');
    procedure ButtonClick(const aBtnType: TBtnType);
    function TestLoginRegister: Boolean;
    { Private declarations }
  private

  public
    constructor Create(AOwner: TComponent); override;
    procedure CallBackMsg(Sender: TComponent; Res: Integer);
    { Public declarations }
    property Btn1Type: TBtnType read FBtn1Type write SetBtn1Type;
    property Btn2Type: TBtnType read FBtn2Type write SetBtn2Type;
    property LoginPage: TLoginPage read FLoginPage write SetLoginPage;
  end;

function frmCarServiceUniGUILogin: TfrmCarServiceUniGUILogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication, System.StrUtils, Janua.Core.Functions,
  Janua.Application.Framework;

var
  cBtnCaptions: array [btLogin .. btNone] of string;

function frmCarServiceUniGUILogin: TfrmCarServiceUniGUILogin;
begin
  Result := TfrmCarServiceUniGUILogin(UniMainModule.GetFormInstance(TfrmCarServiceUniGUILogin));
end;

procedure TfrmCarServiceUniGUILogin.btnRegisterClick(Sender: TObject);
begin
  ButtonClick(Btn2Type);
end;

procedure TfrmCarServiceUniGUILogin.ButtonClick(const aBtnType: TBtnType);
begin
  InternalLogin;
end;

procedure TfrmCarServiceUniGUILogin.CallBackMsg(Sender: TComponent; Res: Integer);
begin
  if Res = mrAbort then
    Close;
end;

function TfrmCarServiceUniGUILogin.CheckRegisterEndValues: Boolean;

begin

end;

function TfrmCarServiceUniGUILogin.CheckRegisterValues: Boolean;
begin

end;

constructor TfrmCarServiceUniGUILogin.Create(AOwner: TComponent);
begin
  inherited;
  cBtnCaptions[btLogin] := 'Sei Registrato? ACCEDI';
  cBtnCaptions[btRegisterStart] := 'Non Sei ancora Iscritto? Registrati';
  cBtnCaptions[btNone] := '';
  cBtnCaptions[btRegisterNext] := 'Prosegui -->';
  cBtnCaptions[btRegisterPrev] := '<-- Indietro';
  cBtnCaptions[btRegisterEnd] := 'Termina Registrazione';

  FBtn1Type := btNone;
  FBtn2Type := btNone;
  FLoginPage := lpNone;
end;

procedure TfrmCarServiceUniGUILogin.btnLoginClick(Sender: TObject);
begin
  ButtonClick(Btn1Type);
end;

procedure TfrmCarServiceUniGUILogin.chkPasswordClick(Sender: TObject);
begin
  { ledPassword.PasswordChar := JIfThen(chkPassword.Checked, Chr(0), '*') }
end;

procedure TfrmCarServiceUniGUILogin.InternalLogin;
var
  vError: string;
  aUser: IUserProfile;
begin
  { UniMainModule.LoginRegister := TLoginRegister.lrLogin; }
  UniMainModule.LocalUserProfile.User.Username.AsString := ledUserName.Text;
  UniMainModule.LocalUserProfile.User.Password.AsString := ledPassword.Text;

  if IsValidEmail(UniMainModule.LocalUserProfile.User.Username.AsString) and
    (UniMainModule.LocalUserProfile.User.Password.AsString.Length > 0) and TestLoginRegister then
  begin
    ModalResult := mrOK;
  end
  else
  begin
    aUser := UniMainModule.UserSessionVM.CurrentRecord.UserProfile;
    vError := 'Dati di Accesso non validi ' + IfThen(aUser.User.Password.AsString = '',
      'Password non inserita', IfThen(aUser.AnagraphID.AsInteger = 0,
      'Anagrafica non impostata correttamente', 'eMail non valida'));
    MessageDlg(vError, TMsgDlgType.mtError, [mbAbort, mbRetry], CallBackMsg);
    if UniMainModule.LoginCount > 3 then
      ModalResult := mrCancel;
  end;
end;

procedure TfrmCarServiceUniGUILogin.JShowError(const aMessage: string; aTitle: string = '');
begin
  MessageDlg(aMessage, TMsgDlgType.mtError, [mbAbort, mbRetry], CallBackMsg);
end;

procedure TfrmCarServiceUniGUILogin.ledPasswordChange(Sender: TObject);
begin
  UniMainModule.LocalUserProfile.User.Password.AsString := ledPassword.Text;
end;

procedure TfrmCarServiceUniGUILogin.ledUserNameChange(Sender: TObject);
begin
  UniMainModule.LocalUserProfile.User.Username.AsString := ledUserName.Text;
end;

procedure TfrmCarServiceUniGUILogin.RegisterAnagraphProfile;
begin

end;

procedure TfrmCarServiceUniGUILogin.SetButtonCaptions;
begin
  btnLogin.Caption := cBtnCaptions[Btn1Type];
  btnLogin.Visible := not(Btn1Type = btNone);
end;

{ TfrmCarServiceUniGUILoginRegister }

procedure TfrmCarServiceUniGUILogin.SetBtn1Type(const Value: TBtnType);
begin
  FBtn1Type := Value;
  SetButtonCaptions;
end;

procedure TfrmCarServiceUniGUILogin.SetBtn2Type(const Value: TBtnType);
begin
  FBtn2Type := Value;
  SetButtonCaptions;
end;

procedure TfrmCarServiceUniGUILogin.SetLoginPage(const Value: TLoginPage);
begin
  FLoginPage := Value;
  Case FLoginPage of
    TLoginPage.lpLogin:
      begin
        pgUserLoginRegister.ActivePage := tsLogin;
        tsLogin.Visible := True;
        pgUserLoginRegister.ActivePageIndex := 0;
        Btn1Type := TBtnType.btLogin;
        Btn2Type := TBtnType.btRegisterStart;
      end;
    TLoginPage.lpRegisterStart:
      begin

      end;
    TLoginPage.lpRegisterEnd:
      begin

      end;
  End;
  SetButtonCaptions;
end;

function TfrmCarServiceUniGUILogin.TestLoginRegister: Boolean;
begin
  Result := UniMainModule.TryLoginOrRegister;
end;

procedure TfrmCarServiceUniGUILogin.UniButton1Click(Sender: TObject);
begin
  // DtPicker.DateTime := Date();
end;

procedure TfrmCarServiceUniGUILogin.UniLoginFormCreate(Sender: TObject);
begin
  SetLoginPage(TLoginPage.lpLogin);

  pgUserLoginRegister.ActivePage := tsLogin;
  pgUserLoginRegister.ActivePageIndex := 0;

  UniMainModule.LocalUserProfile.User.Username.AsString := ledUserName.Text;
  UniMainModule.LocalUserProfile.User.Password.AsString := ledPassword.Text;

  { chkPassword.Checked := UniMainModule.LocalUserProfile.User.PasswordVisible; }
  chkPassword.Bind('Checked', UniMainModule.LocalUserProfile.User.GetSelf, 'PasswordVisible');

  ledPassword.PasswordChar := UniMainModule.LocalUserProfile.User.PasswordChar;
  UniMainModule.LocalUserProfile.User.Bind('PasswordChar', ledPassword, 'PasswordChar', False);

{$IFDEF DEBUG}
  ledUserName.Text := 'rickyarzu@gmail.com';
  ledPassword.Text := 'f4nkul0';
{$ENDIF}
  { // DtPicker.DateTime := UniMainModule.LocalUserProfile.User.InsertDate.AsDateTime;
    UniMainModule.LocalUserProfile.User.InsertDate.Bind('AsDateTime', DtPicker, 'DateTime', False);
    // UniLabel1.Caption
    UniMainModule.LocalUserProfile.User.InsertDate.Bind('AsString', UniLabel1, 'Caption', True);
    //DtPicker.DateTime := Now; }
end;

procedure TfrmCarServiceUniGUILogin.UniLoginFormShow(Sender: TObject);
begin
  pgUserLoginRegister.ActivePage := tsLogin;
  pgUserLoginRegister.ActivePageIndex := 0;
end;

initialization

RegisterAppFormClass(TfrmCarServiceUniGUILogin);

end.
