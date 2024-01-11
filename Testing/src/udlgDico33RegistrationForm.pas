unit udlgDico33RegistrationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, JvExMask, JvToolEdit, Vcl.StdCtrls,
  // Januaproject
  Janua.Core.System, Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Customcontrols, Janua.Vcl.Dialogs,
  udmTestDico33Public,
  // Devart DB
  Data.DB, Vcl.Grids, Vcl.DBGrids, CRGrid, Uni, MemDS, DBAccess, udmTestHealthBooking,
  // TMS
  AdvOfficeImage, AdvGlowButton, AdvEdit, Vcl.ExtCtrls, AdvOfficeButtons, AdvAppStyler;

type
  TdlgDico33RegistrationForm = class(TForm)
    Label8: TLabel;
    edPersonaCognome: TAdvEdit;
    Label9: TLabel;
    edPersonaNome: TAdvEdit;
    Label16: TLabel;
    edCodiceFiscale: TAdvEdit;
    Label17: TLabel;
    edDataNascita: TJvDateEdit;
    Label18: TLabel;
    edLuogoNascita: TAdvEdit;
    edIndrizzo: TAdvEdit;
    Label19: TLabel;
    Label23: TLabel;
    edPostalCode: TAdvEdit;
    edTown: TAdvEdit;
    Label24: TLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Label1: TLabel;
    edFirstMail: TAdvEdit;
    Label2: TLabel;
    edConfirmMail: TAdvEdit;
    Label3: TLabel;
    edPassword: TAdvEdit;
    Label4: TLabel;
    edConfirmPassword: TAdvEdit;
    JanuaDialog1: TJanuaDialog;
    edStateProvince: TAdvEdit;
    Label5: TLabel;
    grdServices: TCRDBGrid;
    dsLkpComiuni: TDataSource;
    edCivico: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    lbLatitude: TLabel;
    lbLongitude: TLabel;
    rgGender: TRadioGroup;
    Label11: TLabel;
    Label12: TLabel;
    edPhone: TAdvEdit;
    edCellPhone: TAdvEdit;
    ckbPhoneConfirmed: TAdvOfficeCheckBox;
    ckbSMS: TAdvOfficeCheckBox;
    ckbMailSent: TAdvOfficeCheckBox;
    ckbMailConfirmed: TAdvOfficeCheckBox;
    AdvFormStyler1: TAdvFormStyler;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure edTownChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edFirstMailChange(Sender: TObject);
    procedure edTownKeyPress(Sender: TObject; var Key: Char);
    procedure grdServicesDblClick(Sender: TObject);
    procedure grdServicesCellClick(Column: TColumn);
    procedure edPasswordChange(Sender: TObject);
    procedure edPersonaCognomeChange(Sender: TObject);
    procedure edPersonaNomeChange(Sender: TObject);
    procedure edCodiceFiscaleChange(Sender: TObject);
    procedure edDataNascitaChange(Sender: TObject);
    procedure edPostalCodeChange(Sender: TObject);
    procedure edStateProvinceChange(Sender: TObject);
    procedure edIndrizzoChange(Sender: TObject);
    procedure grdServicesKeyPress(Sender: TObject; var Key: Char);
    procedure edFirstMailExit(Sender: TObject);
    procedure edConfirmMailExit(Sender: TObject);
    procedure edIndrizzoExit(Sender: TObject);
    procedure edCellPhoneExit(Sender: TObject);
    procedure edTownExit(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
    DM1: udmTestDico33Public.TdmDico33Public;
    function CheckConfirmation: boolean;

  public
    { Public declarations }
    UserProfile: Janua.Core.Classes.TJanuaRecordUserProfile;
    DM: udmTestHealthBooking.TdmTestHealthBooking;
    Success: boolean;
    procedure SearchClick;
    procedure LoadFromSystem;
  end;

var
  dlgDico33RegistrationForm: TdlgDico33RegistrationForm;

implementation

{$R *.dfm}

uses udlgPhoneConfirmation;

procedure TdlgDico33RegistrationForm.AdvGlowButton1Click(Sender: TObject);
begin
  self.Success := False;
end;

procedure TdlgDico33RegistrationForm.AdvGlowButton2Click(Sender: TObject);
VAR
  error: string;
begin
  if self.edFirstMail.Text = '' then
  begin
    self.JanuaDialog1.JShowError('Attenzione occorre inserire un indirizzo Email', '', '');
  end
  else if not Janua.Core.Functions.IsValidEmail(self.edFirstMail.Text) then
    self.JanuaDialog1.JShowError('Attenzione è stato inserito un indirizzo non valido', '', '')
  else if not(edFirstMail.Text = self.edConfirmMail.Text) then
    self.JanuaDialog1.JShowError('Attenzione la mail inserita non è uguale alla sua conferma', '', '')
  else if self.edPersonaNome.Text = '' then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire il proprio Nome', '', '')
  else if self.edPersonaCognome.Text = '' then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire il proprio Cognome', '', '')
  else if (self.edCodiceFiscale.Text = '') or (Length(self.edCodiceFiscale.Text) < 16) or
    not VerifyFiscalCode(self.edCodiceFiscale.Text, error) then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire un codice fiscale Valido', '', '')
  else if self.edTown.Text = '' then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire il proprio comune di residenza', '', '')
  else if self.edIndrizzo.Text = '' then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire un indirizzo', '', '')
  else if self.edDataNascita.Date = 0 then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire una data Valida', '', '')
  else if self.edLuogoNascita.Text = '' then
    self.JanuaDialog1.JShowError('Attenzione occorre inserire un luogo di nascita', '', '')
  else if self.rgGender.ItemIndex = -1 then
    self.JanuaDialog1.JShowError('Attenzione occorre indicare il sesso (M/F)', '', '')
  else if not self.DM.JanuaServerHealthBooking1.GeoCoding(self.edIndrizzo.Text + ', ' + self.edCivico.Text + ', ' +
    self.edTown.Text) then
    self.JanuaDialog1.JShowError('Attenzione Indirizzo non riconosciuto dal sistema', '', '')
  else
  begin
    UserProfile.User.Email := self.edFirstMail.Text;
    UserProfile.User.Password := self.edPassword.Text;
    UserProfile.User.IsoLanguageCode := 'it';
    UserProfile.User.IsoCultureCode := 'it_IT';
    UserProfile.FirstName := self.edPersonaNome.Text;
    UserProfile.LastName := self.edPersonaCognome.Text;
    UserProfile.BirthDate := self.edDataNascita.Date;
    UserProfile.Address.Address := self.edIndrizzo.Text;
    UserProfile.Address.postalcode := self.edPostalCode.Text;
    UserProfile.Address.Town := self.edTown.Text;
    UserProfile.Address.Number := self.edCivico.Text;
    UserProfile.FiscalCode := edCodiceFiscale.Text;
    UserProfile.Gender.GenderCode := rgGender.Items[rgGender.ItemIndex];

    if (self.UserProfile.User.ID = 0) and not DM.JanuaPostgresSystem.CheckNewUser(UserProfile) then
    begin
      self.JanuaDialog1.JShowError
        ('Attenzione utente già registrato, se non ricordate la password potete recuperarla via Mail');
    end
    else if self.UserProfile.User.ID = 0 then
    begin
      if self.DM.JanuaPostgresSystem.CreateNewUser(self.UserProfile) then
      begin
        self.JanuaDialog1.JShowMessage('Utente registrato con successo');
        self.Success := True;
        self.Close;
      end
      else
      begin
        JanuaDialog1.JShowError('Errore di Registrazione utente sul server',
          self.DM.JanuaPostgresSystem.LastErrorMessage);
      end;
    end
    else if self.UserProfile.User.ID <> 0 then
    begin
      self.DM.JanuaPostgresSystem.UserProfile := self.UserProfile;
      if self.DM.JanuaPostgresSystem.SaveProfile then
      begin
        self.JanuaDialog1.JShowMessage('Dati aggiornati con successo');
        self.Success := True;
        self.Close;
      end
      else
        self.JanuaDialog1.JShowError('Errore di Aggiornamento dati utente',
          self.DM.JanuaPostgresSystem.LastErrorMessage);
    end;

  end;

end;

procedure TdlgDico33RegistrationForm.edCellPhoneExit(Sender: TObject);
var
  D: udlgPhoneConfirmation.TdlgSmsConfirmation;
begin
  UserProfile.Address.CellularPhone := self.edCellPhone.Text;
  if not self.UserProfile.Address.SMSSent and (Length(UserProfile.Address.CellularPhone) > 9) then
  begin
    if self.JanuaDialog1.JMessageDlg
      ('Attenzione Volete confermare il numero di cellulare? Potrete ricevere aggiornamendi da Dico33 sullo stato delle vostre prenotazioni e un allarme per ogni appuntamento')
    then
    begin
      try
        D := udlgPhoneConfirmation.TdlgSmsConfirmation.Create(nil);
        D.User := self.UserProfile;
        D.ShowModal;
        if D.JanuaResult in [TJanuaResult.jrsMrOk, TJanuaResult.jrsNotConfirmed, TJanuaResult.jrsConfirmed] then
        begin
          self.UserProfile := D.User;
          self.ckbPhoneConfirmed.Checked := self.UserProfile.Address.SMSConfirmed;
          self.ckbSMS.Checked := self.UserProfile.Address.SMSSent;
        end;
      finally
        D.Free
      end;
    end;

  end;

end;

procedure TdlgDico33RegistrationForm.edCodiceFiscaleChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.FiscalCode := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edConfirmMailExit(Sender: TObject);
begin
  CheckConfirmation;
end;

procedure TdlgDico33RegistrationForm.edFirstMailChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.User.Email := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edFirstMailExit(Sender: TObject);
begin
  if not Janua.Core.Functions.IsValidEmail(self.edFirstMail.Text) then
  begin
    self.JanuaDialog1.JShowError('Attenzione Inserita una mail non Valida');
    Exit
  end;

  if (Sender is TCustomEdit) then
    self.UserProfile.User.Email := (Sender as TCustomEdit).Text;

  if not DM.JanuaPostgresSystem.CheckNewUser(UserProfile) then
    self.JanuaDialog1.JShowMessage('Attenzione email già registrata, se non ricordate la password potete richiederla');
end;

procedure TdlgDico33RegistrationForm.edDataNascitaChange(Sender: TObject);
begin
  self.UserProfile.BirthDate := edDataNascita.Date;
end;

procedure TdlgDico33RegistrationForm.edIndrizzoChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.Address.Address := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edIndrizzoExit(Sender: TObject);
begin
  if DM.JanuaPostgresSystem.GeoCoding(self.edIndrizzo.Text + ', ' + self.edCivico.Text + ' ' + self.edTown.Text) then
  begin
    self.lbLatitude.Caption := DM.JanuaPostgresSystem.Coordinates.Latitude.ToString;
    self.lbLongitude.Caption := DM.JanuaPostgresSystem.Coordinates.Longitude.ToString;
  end;
end;

procedure TdlgDico33RegistrationForm.edPasswordChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.User.Password := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edPersonaCognomeChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.FirstName := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edPersonaNomeChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.LastName := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edPostalCodeChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.Address.postalcode := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edStateProvinceChange(Sender: TObject);
begin
  if (Sender is TCustomEdit) then
    self.UserProfile.Address.StateProvince := (Sender as TCustomEdit).Text;
end;

procedure TdlgDico33RegistrationForm.edTownChange(Sender: TObject);
var
  sSearch: string;
begin

  if (Sender is TCustomEdit) then
    self.UserProfile.Address.Town := (Sender as TCustomEdit).Text;

  self.grdServices.Visible := (edTown.Text > '') and
    not(self.edTown.Text = DM1.dsLkpTowns.DataSet.FieldByName('town_name').AsWideString);

  self.grdServices.Height := 160;

  if self.edTown.Text = '' then
  begin
    TCustomPgDataset(DM1.dsLkpTowns.DataSet).Filter := '';
    TCustomPgDataset(DM1.dsLkpTowns.DataSet).Filtered := False;
  end
  else
  begin
    sSearch := 'town_name like ' + QuotedStr('%' + UpperCase(Janua.Core.Functions.StripString(edTown.Text)) + '%');
    // ShowMessage(sSearch);
    TCustomPgDataset(DM1.dsLkpTowns.DataSet).Filter := sSearch;
    TCustomPgDataset(DM1.dsLkpTowns.DataSet).Filtered := True;
  end;

end;

procedure TdlgDico33RegistrationForm.edTownExit(Sender: TObject);
begin
  if self.grdServices.Visible then
    SearchClick
end;

procedure TdlgDico33RegistrationForm.edTownKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
    self.SearchClick;
end;

procedure TdlgDico33RegistrationForm.FormCreate(Sender: TObject);
begin
  DM1 := udmTestDico33Public.TdmDico33Public.Create(nil);
  DM1.qryLkpTowns.Open;
  self.Success := False;
end;

procedure TdlgDico33RegistrationForm.FormDestroy(Sender: TObject);
begin
  DM1.Free;
end;

procedure TdlgDico33RegistrationForm.grdServicesCellClick(Column: TColumn);
begin
  self.SearchClick;
end;

procedure TdlgDico33RegistrationForm.grdServicesDblClick(Sender: TObject);
begin
  self.SearchClick;
end;

procedure TdlgDico33RegistrationForm.grdServicesKeyPress(Sender: TObject; var Key: Char);
begin
  if Ord(Key) = 13 then
    self.SearchClick;
end;

procedure TdlgDico33RegistrationForm.LoadFromSystem;
begin
  UserProfile := DM.JanuaPostgresSystem.UserProfile;
  self.edFirstMail.Text := UserProfile.User.Email;
  self.edPassword.Text := UserProfile.User.Password;
  // UserProfile.User.IsoLanguageCode := 'it';
  // UserProfile.User.IsoCultureCode := 'it_IT';
  self.edPersonaNome.Text := UserProfile.FirstName;
  self.edPersonaCognome.Text := UserProfile.LastName;
  self.edDataNascita.Date := UserProfile.BirthDate;
  self.edIndrizzo.Text := UserProfile.Address.Address;
  self.edPostalCode.Text := UserProfile.Address.postalcode;
  self.edTown.Text := UserProfile.Address.Town;
  self.edCivico.Text := UserProfile.Address.Number;
  edCodiceFiscale.Text := UserProfile.FiscalCode;
  self.edCellPhone.Text := self.UserProfile.Address.CellularPhone;
  self.edPhone.Text := self.UserProfile.Address.Phone;
  self.ckbPhoneConfirmed.Checked := self.UserProfile.Address.SMSConfirmed;
  self.ckbSMS.Checked := self.UserProfile.Address.SMSSent;
end;

procedure TdlgDico33RegistrationForm.SearchClick;
begin
  if DM1.qryLkpTowns.RecordCount > 0 then
  begin
    self.edTown.Text := DM1.qryLkpTownstown_name.AsWideString;
    self.edPostalCode.Text := DM1.qryLkpTownstown_postal_code.AsWideString;
    self.edStateProvince.Text := DM1.qryLkpTownsnumberplate_code.AsWideString;
    self.grdServices.Visible := False;
  end;

end;

function TdlgDico33RegistrationForm.CheckConfirmation: boolean;
begin
  Result := (self.edConfirmMail.Text = self.edFirstMail.Text);
  if not Result then
    self.JanuaDialog1.JShowError('Attenzione la mail inserita e la sua conferma non coincidono');
end;

end.
