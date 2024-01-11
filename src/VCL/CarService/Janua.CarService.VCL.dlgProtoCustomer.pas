unit Janua.CarService.VCL.dlgProtoCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,
  // Januaproject
  Janua.Core.Classes, Janua.Core.Types, Janua.Anagraph.Types,
  Janua.Vcl.Interposers, JOrm.System.UserProfile.Custom.Intf, JOrm.System.Intf, JOrm.Anagraph.Intf;

type
  TLoginRegister = (lrLogin, lrRegister);
  TBtnType = (btLogin, btRegisterStart, btRegisterNext, btRegisterPrev, btRegisterEnd, btNone);
  TLoginPage = (lpLogin, lpRegisterStart, lpRegisterEnd, lpNone);

  TfrmCarServiceLoginRegister = class(TForm)
    pgUserLoginRegister: TPageControl;
    btnLogin: TButton;
    btnRegister: TButton;
    tsLogin: TTabSheet;
    tsRegister: TTabSheet;
    ledUserName: TLabeledEdit;
    ledPassword: TLabeledEdit;
    chkPassword: TCheckBox;
    btnStyle: TButton;
    ledProfileEmail: TLabeledEdit;
    ledProfilePassword: TLabeledEdit;
    ledProfilePasswordRepeat: TLabeledEdit;
    ledProfileFirstName: TLabeledEdit;
    ledLastName: TLabeledEdit;
    tsRegisterEnd: TTabSheet;
    ledProfileAddress: TLabeledEdit;
    ledAddressNumber: TLabeledEdit;
    ledAddressCode: TLabeledEdit;
    ledTown: TLabeledEdit;
    ledFiscalCode: TLabeledEdit;
    ledPhone: TLabeledEdit;
    ledVATCode: TLabeledEdit;
    ledCellularPhone: TLabeledEdit;
    chkShowPwdRegister: TCheckBox;
    procedure btnLoginClick(Sender: TObject);
    procedure btnStyleClick(Sender: TObject);
    procedure chkPasswordClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRegisterClick(Sender: TObject);
    procedure chkShowPwdRegisterClick(Sender: TObject);
  private
    FUser: IUser;
    FUserProfile: IUserProfile;
    FLoginRegister: TLoginRegister;
    FBtn1Type: TBtnType;
    FBtn2Type: TBtnType;
    FLoginPage: TLoginPage;
    FAnagraphProfile: IAnagraph;
    procedure SetUser(const Value: IUser);
    procedure SetUserProfile(const Value: IUserProfile);
    procedure SetLoginRegister(const Value: TLoginRegister);
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
    procedure ButtonClick(const aBtnType: TBtnType);
    procedure SetAnagraphProfile(const Value: IAnagraph);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    { Public declarations }
    property User: IUser read FUser write SetUser;
    property UserProfile: IUserProfile read FUserProfile write SetUserProfile;
    property AnagraphProfile: IAnagraph read FAnagraphProfile write SetAnagraphProfile;
    property LoginRegister: TLoginRegister read FLoginRegister write SetLoginRegister;
    property Btn1Type: TBtnType read FBtn1Type write SetBtn1Type;
    property Btn2Type: TBtnType read FBtn2Type write SetBtn2Type;
    property LoginPage: TLoginPage read FLoginPage write SetLoginPage;
  end;

var
  frmCarServiceLoginRegister: TfrmCarServiceLoginRegister;
  cBtnCaptions: array [btLogin .. btNone] of string;

implementation

uses System.StrUtils, Janua.Core.Functions, Janua.Application.Framework;

{$R *.dfm}

procedure TfrmCarServiceLoginRegister.btnLoginClick(Sender: TObject);
begin
  ButtonClick(Btn1Type);
end;

procedure TfrmCarServiceLoginRegister.btnRegisterClick(Sender: TObject);
begin
  ButtonClick(Btn2Type);
end;

procedure TfrmCarServiceLoginRegister.btnStyleClick(Sender: TObject);
begin
  TJanuaApplication.StyleManager.ShowSelectThemStyler;
end;

procedure TfrmCarServiceLoginRegister.ButtonClick(const aBtnType: TBtnType);
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

function TfrmCarServiceLoginRegister.CheckRegisterEndValues: Boolean;
var
  lError, lSpec: string;
begin
  Result := False;
  if not FPartitaIva(ledVATCode.Text, lError, lSpec) then
    JShowError(lError, lSpec)
  else
    Result := True;

end;

function TfrmCarServiceLoginRegister.CheckRegisterValues: Boolean;
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

procedure TfrmCarServiceLoginRegister.chkPasswordClick(Sender: TObject);
begin
  ledPassword.PasswordChar := JIfThen(chkPassword.Checked, Chr(0), '*')
end;

procedure TfrmCarServiceLoginRegister.chkShowPwdRegisterClick(Sender: TObject);
begin
  ledProfilePassword.PasswordChar := JIfThen(chkShowPwdRegister.Checked, Chr(0), '*');
  ledProfilePasswordRepeat.PasswordChar := ledProfilePassword.PasswordChar;
end;

constructor TfrmCarServiceLoginRegister.Create(AOwner: TComponent);
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

procedure TfrmCarServiceLoginRegister.InternalLogin;
var
  vError: string;
begin
  if IsValidEmail(FUser.Username.AsString) and (FUser.Password.AsString.Length > 0) then
  begin
    FLoginRegister := TLoginRegister.lrLogin;
    Close;
  end
  else
  begin
    vError := 'Dati di Accesso non validi ' + IfThen(FUser.Password.AsString = '', 'Password non inserita',
      'eMail non valida');
    if MessageDlg(vError, TMsgDlgType.mtError, [mbAbort, mbRetry], 0) = mrAbort then
      Close;
  end;
end;

procedure TfrmCarServiceLoginRegister.RegisterAnagraphProfile;
begin
   FAnagraphProfile.AnagraphId.AsInteger := 0;
   FAnagraphProfile.DbSchemaId.AsInteger := TJanuaApplication.DBSchemaID;
   FAnagraphProfile.AnName.AsString := ledProfileFirstName.Text;
   FAnagraphProfile.AnLastName.AsString := ledLastName.Text;
   FAnagraphProfile.AnAddress.AsString := ledProfileAddress.Text;
   FAnagraphProfile.AnTown.AsString := ledTown.Text;
   FAnagraphProfile.AnAddressNumber.AsString := self.ledAddressNumber.Text;
   FAnagraphProfile.AnPostalCode.AsString := self.ledAddressCode.Text;
   FAnagraphProfile.AnPhone.AsString := self.ledPhone.Text;
   FAnagraphProfile.AnCellular.AsString := self.ledCellularPhone.Text;
   FAnagraphProfile.AnEmail.AsString :=self.UserProfile.User.Email.AsString;

   FUserProfile.Address_street.AsString := FAnagraphProfile.AnAddress.AsString;
   FUserProfile.Address_number.AsString := FAnagraphProfile.AnAddressNumber.AsString;
   FUserProfile.Address_postal_code.AsString := FAnagraphProfile.AnPostalCode.AsString;
   FUserProfile.Cellular_phone.AsString := FAnagraphProfile.AnCellular.AsString;

   // Assegna il profilo anagrafico alla Janua Application ..................................
   TJanuaApplication.AnagraphProfile.Assign(FAnagraphProfile);

end;

procedure TfrmCarServiceLoginRegister.RegisterEnd;
begin
  if CheckRegisterEndValues then
  begin
    FLoginRegister := TLoginRegister.lrRegister;
    Close;
  end;
end;

procedure TfrmCarServiceLoginRegister.RegisterNext;
begin
  if CheckRegisterValues then
    SetLoginPage(TLoginPage.lpRegisterEnd);
end;

procedure TfrmCarServiceLoginRegister.RegisterPrev;
begin
  case self.FLoginPage of
    lpLogin:
      ; // non fa nulla :)
    lpRegisterStart:
      SetLoginPage(TLoginPage.lpLogin);
    lpRegisterEnd:
      SetLoginPage(TLoginPage.lpRegisterStart);
    lpNone:
      SetLoginPage(TLoginPage.lpLogin); // a scanso equivoci va a Login
  end;
end;

procedure TfrmCarServiceLoginRegister.RegisterStart;
begin
  { pgUserLoginRegister.ActivePage := tsRegister; }
  if (FUser.Username.AsString > '') and IsValidEmail(FUser.Username.AsString) then
    ledProfileEmail.Text := FUser.Username.AsString;

  if FUser.Password.AsString <> '' then
    ledProfilePassword.Text := FUser.Password.AsString;

  SetLoginPage(TLoginPage.lpRegisterStart);

end;

procedure TfrmCarServiceLoginRegister.SetButtonCaptions;
begin
  btnLogin.Caption := cBtnCaptions[Btn1Type];
  btnRegister.Caption := cBtnCaptions[Btn2Type];

  btnLogin.Visible := not(Btn1Type = btNone);
  btnRegister.Visible := not(Btn2Type = btNone);
end;

procedure TfrmCarServiceLoginRegister.FormCreate(Sender: TObject);
begin
  TJanuaOrmFactory.TryGetRecordIntf(IUser, FUser, 'User');
  TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, FUserProfile, 'UserProfile');
  TJanuaOrmFactory.TryGetRecordIntf(IAnagraph, FAnagraphProfile, 'AnagraphProfile');

  FUser.Username.Bind('AsString', ledUserName, 'Text');
  FUser.Password.Bind('AsString', ledPassword, 'Text');

  SetLoginPage(TLoginPage.lpLogin);
  FLoginRegister := TLoginRegister.lrLogin;
end;

{ TfrmCarServiceLoginRegister }

procedure TfrmCarServiceLoginRegister.SetAnagraphProfile(const Value: IAnagraph);
begin
  FAnagraphProfile := Value;
end;

procedure TfrmCarServiceLoginRegister.SetBtn1Type(const Value: TBtnType);
begin
  FBtn1Type := Value;
  SetButtonCaptions;
end;

procedure TfrmCarServiceLoginRegister.SetBtn2Type(const Value: TBtnType);
begin
  FBtn2Type := Value;
  SetButtonCaptions;
end;

procedure TfrmCarServiceLoginRegister.SetLoginPage(const Value: TLoginPage);
begin
  FLoginPage := Value;
  Case FLoginPage of
    TLoginPage.lpLogin:
      begin
        pgUserLoginRegister.ActivePage := tsLogin;
        Btn1Type := TBtnType.btLogin;
        Btn2Type := TBtnType.btRegisterStart;
      end;
    TLoginPage.lpRegisterStart:
      begin
        pgUserLoginRegister.ActivePage := tsRegister;
        Btn1Type := TBtnType.btRegisterPrev;
        Btn2Type := TBtnType.btRegisterNext;
      end;
    TLoginPage.lpRegisterEnd:
      begin
        pgUserLoginRegister.ActivePage := tsRegisterEnd;
        Btn1Type := TBtnType.btRegisterPrev;
        Btn2Type := TBtnType.btRegisterEnd;
      end;
  End;
  SetButtonCaptions;
end;

procedure TfrmCarServiceLoginRegister.SetLoginRegister(const Value: TLoginRegister);
begin
  FLoginRegister := Value;
end;

procedure TfrmCarServiceLoginRegister.SetUser(const Value: IUser);
begin
  FUser := Value;
end;

procedure TfrmCarServiceLoginRegister.SetUserProfile(const Value: IUserProfile);
begin
  FUserProfile := Value;
end;

end.
