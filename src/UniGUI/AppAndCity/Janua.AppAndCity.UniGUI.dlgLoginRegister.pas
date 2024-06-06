unit Janua.AppAndCity.UniGUI.dlgLoginRegister;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes,
  // VCL
  VCL.Graphics, VCL.Controls, VCL.Forms, VCL.TMSFNCTypes, VCL.Imaging.pngimage,
  // UniGUI
  uniGUIAbstractClasses, uniImageList, uniBitBtn, UniFSButton, uniGUITypes,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton, uniPageControl, uniCheckBox,
  uniEdit, uniImage, uniPanel, uniLabel, uniDateTimePicker, uniSpeedButton, uniColorButton,
  // Januaproject
  Janua.UniGUI.Interposers, Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types,
  JOrm.System.Intf, JOrm.Anagraph.Intf, Janua.UniGUI.dlgSearchGoogleAddress,
  Janua.System.ViewModel.Intf;

type
  TBtnType = (btLogin, btRegisterStart, btRegisterNext, btRegisterPrev, btRegisterEnd, btNone);
  TLoginPage = (lpLogin, lpRegisterStart, lpRegisterEnd, lpNone);

  TfrmAppAndCityUniGUILoginRegister = class(TUniLoginForm)
    pgUserLoginRegister: TUniPageControl;
    tsLogin: TUniTabSheet;
    ledUserName: TUniEdit;
    ledPassword: TUniEdit;
    chkPassword: TUniCheckBox;
    lbUserName: TUniLabel;
    lbPassword: TUniLabel;
    tsRegister: TUniTabSheet;
    ledProfileEmail: TUniEdit;
    ledProfilePassword: TUniEdit;
    ledProfilePasswordRepeat: TUniEdit;
    ledFirstName: TUniEdit;
    ledLastName: TUniEdit;
    chkShowPwdRegister: TUniCheckBox;
    tsRegisterEnd: TUniTabSheet;
    ledProfileAddress: TUniEdit;
    ledAddressNumber: TUniEdit;
    ledAddressCode: TUniEdit;
    ledTown: TUniEdit;
    ledFiscalCode: TUniEdit;
    ledPhone: TUniEdit;
    ledVATCode: TUniEdit;
    ledCellularPhone: TUniEdit;
    lbProfileEmail: TUniLabel;
    lbProfilePassword: TUniLabel;
    lbProfilePasswordRepeat: TUniLabel;
    lbProfileFirstName: TUniLabel;
    lbLastName: TUniLabel;
    lbProfileAddress: TUniLabel;
    lbAddressNumber: TUniLabel;
    lbAddressCode: TUniLabel;
    lbTown: TUniLabel;
    lbFiscalCode: TUniLabel;
    lbPhone: TUniLabel;
    lbVATCode: TUniLabel;
    lbCellularPhone: TUniLabel;
    btnRegister: TUniFSButton;
    btnLogin: TUniFSButton;
    edtStateProvince: TUniEdit;
    lbProv: TUniLabel;
    edtFullAddress: TUniEdit;
    lbAddressFull: TUniLabel;
    btnGoogleSearch: TUniFSButton;
    lbLongitude: TUniLabel;
    lbLatitude: TUniLabel;
    UniContainerPanel1: TUniContainerPanel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure chkPasswordClick(Sender: TObject);
    procedure UniLoginFormCreate(Sender: TObject);
    procedure UniLoginFormShow(Sender: TObject);
    procedure chkShowPwdRegisterClick(Sender: TObject);
    procedure ledPasswordChange(Sender: TObject);
    procedure ledUserNameChange(Sender: TObject);
    procedure UniButton1Click(Sender: TObject);
    procedure UniImage1Click(Sender: TObject);
    procedure btnGoogleSearchClick(Sender: TObject);
    procedure ledProfilePasswordExit(Sender: TObject);
    procedure ledProfilePasswordRepeatExit(Sender: TObject);
  private
    FBtn1Type: TBtnType;
    FBtn2Type: TBtnType;
    FLoginPage: TLoginPage;
    FGoogleSearchDialog: TUniGoogleSearchDialog;
    [weak]
    FUserSession: IJanuaSystemUserSessionViewModel;
    procedure SetBtn1Type(const Value: TBtnType);
    procedure SetBtn2Type(const Value: TBtnType);
    procedure SetButtonCaptions;
    procedure SetLoginPage(const Value: TLoginPage);
    procedure InternalLogin;
    procedure RegisterStart;
    procedure RegisterPrev;
    procedure RegisterNext;
    procedure RegisterEnd;
    procedure RegisterAnagraphProfile;
    function CheckRegisterValues: Boolean;
    function CheckRegisterEndValues: Boolean;
    procedure JShowError(const aMessage: string; aTitle: string = '');
    procedure ButtonClick(const aBtnType: TBtnType);
    function TestLoginRegister: Boolean;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    procedure CallBackMsg(Sender: TComponent; Res: Integer);
    procedure GoogleResult1(Sender: TObject);
    { Public declarations }
    property Btn1Type: TBtnType read FBtn1Type write SetBtn1Type;
    property Btn2Type: TBtnType read FBtn2Type write SetBtn2Type;
    property LoginPage: TLoginPage read FLoginPage write SetLoginPage;
  end;

function frmAppAndCityUniGUILoginRegister: TfrmAppAndCityUniGUILoginRegister;

implementation

{$R *.dfm}

uses
  uniGUIVars, Janua.UniGUI.MainModule, uniGUIApplication, System.StrUtils, Janua.Core.Functions,
  Janua.Application.Framework;

var
  cBtnCaptions: array [btLogin .. btNone] of string;

function frmAppAndCityUniGUILoginRegister: TfrmAppAndCityUniGUILoginRegister;
begin
  Result := TfrmAppAndCityUniGUILoginRegister
    (UniMainModule.GetFormInstance(TfrmAppAndCityUniGUILoginRegister));
end;

procedure TfrmAppAndCityUniGUILoginRegister.btnRegisterClick(Sender: TObject);
begin
  ButtonClick(Btn2Type);
end;

procedure TfrmAppAndCityUniGUILoginRegister.ButtonClick(const aBtnType: TBtnType);
begin
  case aBtnType of
    btLogin:
      InternalLogin;
    btRegisterStart:
      RegisterStart;
    btRegisterNext:
      RegisterNext;
    btRegisterPrev:
      RegisterPrev;
    btRegisterEnd:
      RegisterEnd;
    btNone:
      ;
  end;
end;

procedure TfrmAppAndCityUniGUILoginRegister.CallBackMsg(Sender: TComponent; Res: Integer);
begin
  if Res = mrAbort then
    Close;
end;

function TfrmAppAndCityUniGUILoginRegister.CheckRegisterEndValues: Boolean;
var
  lError, lSpec: string;
  // A: IAnagraphView;
  U: IUser;
  P: IUserProfile;
begin
  Result := False;
  if not FPartitaIva(ledVATCode.Text, lError, lSpec) then
    JShowError(lError, lSpec)
  else
    Result := True;

  {
    A := UniMainModule.LocalAnagraph;
    A.AnName.AsString := ledFirstName.Text;
    A.AnLastName.AsString := ledLastName.Text;
  }
end;

function TfrmAppAndCityUniGUILoginRegister.CheckRegisterValues: Boolean;
begin
  Result := False;
  if not IsValidEmail(ledProfileEmail.Text) then
    JShowError('Username/Email is not valid: ' + ledProfileEmail.Text)
  else if Length(ledProfilePassword.Text) < 8 then
    JShowError('Attenzione la password inserita deve essere di almeno 8 caratteri')
  else if (ledProfilePassword.Text <> ledProfilePasswordRepeat.Text) then
    JShowError('Attenzione la password e la sua copia non sono uguali')
  else if Length(ledLastName.Text) < 2 then
    JShowError('Attenzione Occorre inserire almeno un cognome o ragione sociale')
  else
    Result := True;
end;

procedure TfrmAppAndCityUniGUILoginRegister.chkShowPwdRegisterClick(Sender: TObject);
begin
  ledProfilePassword.PasswordChar := JIfThen(chkShowPwdRegister.Checked, Chr(0), '*');
  ledProfilePasswordRepeat.PasswordChar := ledProfilePassword.PasswordChar;
end;

constructor TfrmAppAndCityUniGUILoginRegister.Create(AOwner: TComponent);
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

procedure TfrmAppAndCityUniGUILoginRegister.GoogleResult1(Sender: TObject);
begin
  {Anagraph.SetfromRecordAddress(FGoogleSearchDialog1.GooglePlace);}
  edtFullAddress.Text := FGoogleSearchDialog.GooglePlace.AddressFull;
end;

procedure TfrmAppAndCityUniGUILoginRegister.btnGoogleSearchClick(Sender: TObject);
begin
  FGoogleSearchDialog.RecordAnagraph := FUserSession.LocalAnagraph as IAnagraph;
  FGoogleSearchDialog.Execute(edtFullAddress.Text);
end;

procedure TfrmAppAndCityUniGUILoginRegister.btnLoginClick(Sender: TObject);
begin
  ButtonClick(Btn1Type);
end;

procedure TfrmAppAndCityUniGUILoginRegister.chkPasswordClick(Sender: TObject);
begin
  { ledPassword.PasswordChar := JIfThen(chkPassword.Checked, Chr(0), '*') }
end;

procedure TfrmAppAndCityUniGUILoginRegister.InternalLogin;
var
  vError: string;
  aUser: IUserProfile;
begin
  FUserSession := UniMainModule.UserSessionVM;
  UniMainModule.LoginRegister := TLoginRegister.lrLogin;
  FUserSession.LocalUserProfile.User.Username.AsString := ledUserName.Text;
  FUserSession.LocalUserProfile.User.Password.AsString := ledPassword.Text;

  if IsValidEmail(FUserSession.LocalUserProfile.User.Username.AsString) and
    (FUserSession.LocalUserProfile.User.Password.AsString.Length > 0) and TestLoginRegister then
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

procedure TfrmAppAndCityUniGUILoginRegister.JShowError(const aMessage: string; aTitle: string = '');
begin
  MessageDlg(aMessage, TMsgDlgType.mtError, [mbAbort, mbRetry], CallBackMsg);
end;

procedure TfrmAppAndCityUniGUILoginRegister.ledPasswordChange(Sender: TObject);
begin
  FUserSession.LocalUserProfile.User.Password.AsString := ledPassword.Text;
  if ledProfilePassword.Text <> ledPassword.Text then
    ledProfilePassword.Text := ledPassword.Text
end;

procedure TfrmAppAndCityUniGUILoginRegister.ledProfilePasswordExit(Sender: TObject);
begin
  if not PwdComplexity(ledProfilePassword.Text) then
    MessageDlg
      ('Attenzione la Password deve essere lunga almeno 8 caratteri e contenere una lettera minuscola una maiuscola, un numero ed un carattere speciale.',
      TMsgDlgType.mtError, [mbAbort, mbRetry], CallBackMsg);
end;

procedure TfrmAppAndCityUniGUILoginRegister.ledProfilePasswordRepeatExit(Sender: TObject);
begin
  if not(ledProfilePassword.Text = ledProfilePasswordRepeat.Text) then
    MessageDlg('Attenzione Password e Conferma non sono uguali.', TMsgDlgType.mtError, [mbAbort, mbRetry],
      CallBackMsg);

end;

procedure TfrmAppAndCityUniGUILoginRegister.ledUserNameChange(Sender: TObject);
begin
  FUserSession.LocalUserProfile.User.Username.AsString := ledUserName.Text;
  if ledProfileEmail.Text <> ledUserName.Text then
    ledProfileEmail.Text := ledUserName.Text
end;

procedure TfrmAppAndCityUniGUILoginRegister.RegisterAnagraphProfile;
begin
  FUserSession.LocalAnagraph.AnagraphID.AsInteger := 0;
  FUserSession.LocalAnagraph.DbSchemaId.AsInteger := TJanuaApplication.DbSchemaId;
  FUserSession.LocalAnagraph.AnName.AsString := ledFirstName.Text;
  FUserSession.LocalAnagraph.AnLastName.AsString := ledLastName.Text;
  FUserSession.LocalAnagraph.AnAddress.AsString := ledProfileAddress.Text;
  FUserSession.LocalAnagraph.AnTown.AsString := ledTown.Text;
  FUserSession.LocalAnagraph.AnAddressNumber.AsString := ledAddressNumber.Text;
  FUserSession.LocalAnagraph.AnPostalCode.AsString := ledAddressCode.Text;
  FUserSession.LocalAnagraph.AnPhone.AsString := ledPhone.Text;
  FUserSession.LocalAnagraph.AnCellular.AsString := ledCellularPhone.Text;
  FUserSession.LocalAnagraph.AnEmail.AsString := FUserSession.LocalUserProfile.User.Email.AsString;
  FUserSession.LocalUserProfile.Address_street.AsString := FUserSession.LocalAnagraph.AnAddress.AsString;
  FUserSession.LocalUserProfile.Address_number.AsString :=
    FUserSession.LocalAnagraph.AnAddressNumber.AsString;
  FUserSession.LocalUserProfile.Address_postal_code.AsString :=
    FUserSession.LocalAnagraph.AnPostalCode.AsString;
  FUserSession.LocalUserProfile.Cellular_phone.AsString := FUserSession.LocalAnagraph.AnCellular.AsString;
  FUserSession.LocalUserProfile.User.Email.AsString := ledProfileEmail.Text;
  FUserSession.LocalUserProfile.User.Password.AsString := ledProfilePassword.Text;
  FUserSession.LocalUserProfile.First_name.AsString := ledFirstName.Text;
  FUserSession.LocalUserProfile.Last_name.AsString := ledLastName.Text;
  FUserSession.LocalUserProfile.Address_town.AsString := ledTown.Text;
  FUserSession.LocalUserProfile.Address_street.AsString := ledProfileAddress.Text;
  FUserSession.LocalUserProfile.Address_town.AsString := ledTown.Text;
  FUserSession.LocalUserProfile.Address_number.AsString := ledProfileAddress.Text;
  FUserSession.LocalUserProfile.Cellular_phone.AsString := ledCellularPhone.Text;
  FUserSession.LocalUserProfile.Address_postal_code.AsString := ledAddressCode.Text;
  FUserSession.LocalUserProfile.Phone.AsString := ledPhone.Text;
  FUserSession.LocalUserProfile.Address_full.AsString := edtFullAddress.Text;
  FUserSession.LocalUserProfile.Address_state_province.AsString := edtStateProvince.Text;


  // Assegna il profilo anagrafico alla Janua Application ..................................
  { TJanuaApplication.AnagraphProfile.Assign(UniMainModule.LocalAnagraph); }

end;

procedure TfrmAppAndCityUniGUILoginRegister.RegisterEnd;
begin
  if CheckRegisterEndValues then
  begin
    RegisterAnagraphProfile;
    UniMainModule.LoginRegister := TLoginRegister.lrRegister;
    if UniMainModule.TryLoginOrRegister then
      ModalResult := mrOK
    else
    begin
      if UniMainModule.LoginCount < 3 then
        case UniMainModule.LoginRegister of
          lrRegister:
            ShowMessage('Errata registrazione utente' + sl + FUserSession.LastErrorMessage);
          lrLogin:
            ShowMessage('Login Errata' + sl + FUserSession.LastErrorMessage);
        end
      else
        Close;
    end;
  end;
end;

procedure TfrmAppAndCityUniGUILoginRegister.RegisterNext;
begin
  if CheckRegisterValues then
    SetLoginPage(TLoginPage.lpRegisterEnd);
end;

procedure TfrmAppAndCityUniGUILoginRegister.RegisterPrev;
begin
  case Self.FLoginPage of
    lpLogin:
      ;
    // non fa nulla :)
    lpRegisterStart:
      SetLoginPage(TLoginPage.lpLogin);
    lpRegisterEnd:
      SetLoginPage(TLoginPage.lpRegisterStart);
    lpNone:
      SetLoginPage(TLoginPage.lpLogin);
    // a scanso equivoci va a Login
  end;
end;

procedure TfrmAppAndCityUniGUILoginRegister.RegisterStart;
begin
  { pgUserLoginRegister.ActivePage := tsRegister; }
  if (FUserSession.LocalUserProfile.User.Username.AsString > '') and
    IsValidEmail(FUserSession.LocalUserProfile.User.Username.AsString) then
    ledProfileEmail.Text := FUserSession.LocalUserProfile.User.Username.AsString;

  if FUserSession.LocalUserProfile.User.Password.AsString <> '' then
    ledProfilePassword.Text := FUserSession.LocalUserProfile.User.Password.AsString;

  SetLoginPage(TLoginPage.lpRegisterStart);

end;

procedure TfrmAppAndCityUniGUILoginRegister.SetButtonCaptions;
begin
  btnLogin.Caption := cBtnCaptions[Btn1Type];
  btnRegister.Caption := cBtnCaptions[Btn2Type];
  if Btn2Type = btRegisterEnd then
    btnRegister.StyleButton := GoogleGreen
  else
    btnRegister.StyleButton := GoogleBlue2;

  btnLogin.Visible := not(Btn1Type = btNone);
  btnRegister.Visible := not(Btn2Type = btNone);
end;

{ TfrmCarServiceUniGUILoginRegister }

procedure TfrmAppAndCityUniGUILoginRegister.SetBtn1Type(const Value: TBtnType);
begin
  FBtn1Type := Value;
  SetButtonCaptions;
end;

procedure TfrmAppAndCityUniGUILoginRegister.SetBtn2Type(const Value: TBtnType);
begin
  FBtn2Type := Value;
  SetButtonCaptions;
end;

procedure TfrmAppAndCityUniGUILoginRegister.SetLoginPage(const Value: TLoginPage);
begin
  FLoginPage := Value;
  Case FLoginPage of
    TLoginPage.lpLogin:
      begin
        pgUserLoginRegister.ActivePage := tsLogin;
        tsLogin.Visible := True;
        tsRegister.Visible := False;
        pgUserLoginRegister.ActivePageIndex := 0;
        Btn1Type := TBtnType.btLogin;
        Btn2Type := TBtnType.btRegisterStart;
      end;
    TLoginPage.lpRegisterStart:
      begin
        pgUserLoginRegister.ActivePage := Self.tsRegister;
        tsLogin.Visible := False;
        tsRegister.Visible := True;
        pgUserLoginRegister.ActivePageIndex := 1;
        Btn1Type := TBtnType.btRegisterPrev;
        Btn2Type := TBtnType.btRegisterNext;
      end;
    TLoginPage.lpRegisterEnd:
      begin
        pgUserLoginRegister.ActivePage := tsRegisterEnd;
        tsRegisterEnd.Visible := True;
        tsRegister.Visible := False;
        pgUserLoginRegister.ActivePageIndex := 2;
        Btn1Type := TBtnType.btRegisterPrev;
        Btn2Type := TBtnType.btRegisterEnd;
      end;
  End;
  SetButtonCaptions;
end;

function TfrmAppAndCityUniGUILoginRegister.TestLoginRegister: Boolean;
begin
  Result := UniMainModule.TryLoginOrRegister;
end;

procedure TfrmAppAndCityUniGUILoginRegister.UniButton1Click(Sender: TObject);
begin
  // DtPicker.DateTime := Date();
end;

procedure TfrmAppAndCityUniGUILoginRegister.UniImage1Click(Sender: TObject);
begin
  ShowMessage('Cliccato');
end;

procedure TfrmAppAndCityUniGUILoginRegister.UniLoginFormCreate(Sender: TObject);
begin
  SetLoginPage(TLoginPage.lpLogin);

  FGoogleSearchDialog := TUniGoogleSearchDialog.Create(Self);
  pgUserLoginRegister.ActivePage := tsLogin;
  pgUserLoginRegister.ActivePageIndex := 0;

  FUserSession := UniMainModule.UserSessionVM;

  FUserSession.LocalUserProfile.User.Username.AsString := ledUserName.Text;
  FUserSession.LocalUserProfile.User.Password.AsString := ledPassword.Text;

  { chkPassword.Checked := UniMainModule.LocalUserProfile.User.PasswordVisible; }
  chkPassword.Bind('Checked', FUserSession.LocalUserProfile.User.GetSelf, 'PasswordVisible');

  ledPassword.PasswordChar := FUserSession.LocalUserProfile.User.PasswordChar;
  FUserSession.LocalUserProfile.User.Bind('PasswordChar', ledPassword, 'PasswordChar', False);

{$IFDEF DEBUG}
  ledUserName.Text := 'rickyarzu@gmail.com';
  ledPassword.Text := 'f4nkul0';
{$ENDIF}
  FGoogleSearchDialog.edtPostalCode := ledAddressCode;
  FGoogleSearchDialog.edtSearchAddress := edtFullAddress;
  FGoogleSearchDialog.edtProvinceName := nil;
  FGoogleSearchDialog.edtProfileAddress := ledProfileAddress;
  FGoogleSearchDialog.edtCountry := nil;
  FGoogleSearchDialog.edtNumber := ledAddressNumber;
  FGoogleSearchDialog.edtStateProvince := edtStateProvince;
  FGoogleSearchDialog.edtRegion := nil;
  FGoogleSearchDialog.edtTown := ledTown;
  FGoogleSearchDialog.lbLatitude := lbLongitude;
  FGoogleSearchDialog.lbLongitude := lbLatitude;
  FGoogleSearchDialog.RecordAddress := nil;
  FGoogleSearchDialog.edtFullAddress := edtFullAddress;
  FGoogleSearchDialog.RecordAnagraph := FUserSession.LocalAnagraph as IAnagraph;
end;

procedure TfrmAppAndCityUniGUILoginRegister.UniLoginFormShow(Sender: TObject);
begin
  pgUserLoginRegister.ActivePage := tsLogin;
  pgUserLoginRegister.ActivePageIndex := 0;
end;

initialization

RegisterAppFormClass(TfrmAppAndCityUniGUILoginRegister);

end.
