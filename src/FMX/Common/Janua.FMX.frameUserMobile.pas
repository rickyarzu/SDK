unit Janua.FMX.frameUserMobile;

interface

uses
  // System RTL RTTI
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  // Janua.Postgres.System,
  // Janua.Core.RESTClient.Health,
  // FMX
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Edit, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.TabControl,
  // Januaproject
  JOrm.System.Intf,
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Servers, Janua.Core.System, Janua.FMX.Forms,
  Janua.FMX.Geocoding, Janua.Core.Commons, Janua.Core.Cloud, Janua.Core.Entities, Janua.Components.Maps,
  FMX.TMSBaseControl, FMX.TMSBaseGroup, FMX.TMSRadioGroup;

type
  TframeFMXRegisterMobile = class(TFrame)
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    Panel1: TPanel;
    btnRegister: TButton;
    Label1: TLabel;
    edFirstMail: TEdit;
    edConfirmMail: TEdit;
    Label2: TLabel;
    edPassword: TEdit;
    Label3: TLabel;
    edConfirmPassword: TEdit;
    Label4: TLabel;
    Layout2: TLayout;
    edLuogoNascita: TEdit;
    Panel4: TPanel;
    edDataNascita: TDateEdit;
    Panel2: TPanel;
    rgGender: TTMSFMXRadioGroup;
    edIndrizzo: TEdit;
    btnProfile: TButton;
    VertScrollBox2: TVertScrollBox;
    TabItemPersonal: TTAbItem;
    TabItemPassword: TTAbItem;
    TabControlRegister: TTabControl;
    JanuaFMXGoogleGeoCoding1: TJanuaFMXGoogleGeoCoding;
    Panel3: TPanel;
    Switch1: TSwitch;
    Label5: TLabel;
    Label9: TLabel;
    Panel5: TPanel;
    edPersonaCognome: TEdit;
    edPersonaNome: TEdit;
    edCodiceFiscale: TEdit;
    layoutUser: TLayout;
    lbUsername: TLabel;
    lbPassword: TLabel;
    edtPassword: TEdit;
    edtUserName: TEdit;
    edtRepeatPassword: TEdit;
    lbRepeatPassword: TLabel;
    btnChangeUserName: TButton;
    btnChangePassword: TButton;
    procedure btnRegisterClick(Sender: TObject);
    procedure btnProfileClick(Sender: TObject);
    procedure edIndrizzoEnter(Sender: TObject);
    procedure edIndrizzoExit(Sender: TObject);
    procedure Switch1Switch(Sender: TObject);
  private
    UserProfile: TJanuaRecordUserProfile;
    FUSerProfile: IUserProfile;
    FIsRegistered: boolean;
    FJanuaSystemClient: TJanuaCustomSystemClient;
    FJanuaFMXFormManager: TJanuaFMXFormManager;
    FActive: boolean;
    procedure SetIsRegistered(const Value: boolean);
    procedure SetJanuaSystemClient(const Value: TJanuaCustomSystemClient);
    procedure SetActive(const Value: boolean);
    procedure SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile); { Private declarations }
  public
    procedure LoadProfile;
    procedure Default;
    procedure SetupFormManager;
    procedure GoPersonal;
    procedure GoPassword;
    procedure SetupProfile;
  public
    { Public declarations }
    property JanuaFMXFormManager: TJanuaFMXFormManager read FJanuaFMXFormManager write SetJanuaFMXFormManager;
    property Active: boolean read FActive write SetActive;
    property JanuaUserProfile: IUserProfile read GetUserProfile write SetUserProfile;
    property IsRegistered: boolean read FIsRegistered write SetIsRegistered;
    property JanuaSystemClient: TJanuaCustomSystemClient read FJanuaSystemClient write SetJanuaSystemClient;
  end;

implementation

{$R *.fmx}

procedure TframeFMXRegisterMobile.btnProfileClick(Sender: TObject);
var
  aCheck: boolean;
  error: string;
begin
  aCheck := False;
  // Default check to false if not passed or not checked .............................................

  if self.edPersonaNome.Text = '' then
    ShowMessage('Attenzione occorre inserire il proprio Nome')
  else if self.edPersonaCognome.Text = '' then
    ShowMessage('Attenzione occorre inserire il proprio Cognome')
  else if self.rgGender.ItemIndex = -1 then
    ShowMessage('Attenzione occorre indicare il sesso (M/F)')
  else if (self.edCodiceFiscale.Text = '') or (Janua.Core.Functions.StringLength(self.edCodiceFiscale.Text) <
    16) or not VerifyFiscalCode(self.edCodiceFiscale.Text, error) then
    ShowMessage('Attenzione occorre inserire un codice fiscale Valido')
    {
      else if (self.edCodiceFiscale.Text = '') or (Length(self.edCodiceFiscale.Text) < 16) or
      not VerifyFiscalCode(self.edCodiceFiscale.Text, error) then
      ShowMessage('Attenzione occorre inserire un codice fiscale Valido')S.
      else if self.edIndrizzo.Text = '' then
      ShowMessage('Attenzione occorre inserire un indirizzo')
      {
      else if self.edTown.Text = '' then
      ShowMessage('Attenzione occorre inserire il proprio comune di residenza', '', '')
      else if self.edDataNascita.Date = 0 then
      ShowMessage('Attenzione occorre inserire una data Valida', '', '')
      else if self.edLuogoNascita.Text = '' then
      ShowMessage('Attenzione occorre inserire un luogo di nascita', '', '')
      else if self.rgGender.ItemIndex = -1 then
      ShowMessage('Attenzione occorre indicare il sesso (M/F)', '', '')
      else if not self.DM.JanuaServerHealthBooking1.GeoCoding(self.edIndrizzo.Text + ', ' + self.edCivico.Text +
      ', ' + self.edTown.Text) then
      ShowMessage('Attenzione Indirizzo non riconosciuto dal sistema', '', ''
    }
  else
  begin
    aCheck := True;
    UserProfile.FirstName := self.edPersonaNome.Text;
    UserProfile.LastName := self.edPersonaCognome.Text;
    UserProfile.BirthDate := self.edDataNascita.Date;
    UserProfile.Address.AddressFull := self.edIndrizzo.Text;
    {
      UserProfile.Address.postalcode := self.edPostalCode.Text;
      UserProfile.Address.Town := self.edTown.Text;
      UserProfile.Address.Number := self.edCivico.Text;
    }
    UserProfile.FiscalCode := edCodiceFiscale.Text;
    UserProfile.Gender.GenderCode := rgGender.Items[rgGender.ItemIndex].Value;
  end;

  if aCheck then
  begin
    if FJanuaSystemClient.SaveProfile(UserProfile) then
    begin
      ShowMessage('Dati aggiornati con successo');
      self.IsRegistered := True;
    end
    else
      ShowMessage('Errore di Aggiornamento dati utente: ' + FJanuaSystemClient.ErrorMessage);
  end;

end;

procedure TframeFMXRegisterMobile.btnRegisterClick(Sender: TObject);
VAR
  // error: string;
  aCheck: boolean;
begin
  if not assigned(FJanuaSystemClient) then
    raise Exception.Create('frameFMXRegisterMobile: FJanuaRESTHealthClient not set');
  aCheck := True;

  if self.edFirstMail.Text = '' then
  begin
    ShowMessage('Attenzione occorre inserire un indirizzo Email');
  end
  else if not Janua.Core.Functions.IsValidEmail(self.edFirstMail.Text) then
  begin
    ShowMessage('Attenzione è stato inserito un indirizzo non valido');
    aCheck := False;
  end
  else if not(edFirstMail.Text = self.edConfirmMail.Text) then
  begin
    ShowMessage('Attenzione la mail inserita non è uguale alla sua conferma');
    aCheck := False;
  end
  else
  begin
    UserProfile.User.Email := self.edFirstMail.Text;
    UserProfile.User.Password := self.edPassword.Text;
    UserProfile.User.IsoLanguageCode := 'it';
    UserProfile.User.IsoCultureCode := 'it_IT';
    if (self.UserProfile.User.ID = 0) and not FJanuaSystemClient.CheckNewUser(UserProfile) then
    begin
      ShowMessage
        ('Attenzione utente già registrato, se non ricordate la password potete recuperarla via Mail');
    end
    else if self.UserProfile.User.ID = 0 then
    begin
      FJanuaSystemClient.CreateNewUser(self.UserProfile, aCheck);
      if aCheck then
      begin
        // FJanuaSystemClient.Login(UserProfile.User.Email, UserProfile.User.Password);
        ShowMessage('Utente registrato con successo');
        self.IsRegistered := True;
        self.TabControlRegister.Next(TTabTransition.Slide)
      end
      else
      begin
        ShowMessage('Errore di Registrazione utente sul server: ');
        // self.JanuaPostgresSystem.LastErrorMessage);
        { TODO : Aggiungere ad ogni procedura una Var con lastErrorMessage }
      end;
    end
    else if self.UserProfile.User.ID <> 0 then
    begin
      if FJanuaSystemClient.SaveProfile(UserProfile) then
      begin
        ShowMessage('Dati aggiornati con successo');
        self.IsRegistered := True;
        self.TabControlRegister.Next(TTabTransition.Slide)
      end
      else
        ShowMessage('Errore di Aggiornamento dati utente: ' + FJanuaSystemClient.ErrorMessage);
    end;

  end;

end;

procedure TframeFMXRegisterMobile.Default;
begin
  self.UserProfile.Clear;
  self.FActive := False;
end;

procedure TframeFMXRegisterMobile.edIndrizzoEnter(Sender: TObject);
begin
  self.Panel5.Visible := False;
end;

procedure TframeFMXRegisterMobile.edIndrizzoExit(Sender: TObject);
begin
  self.Panel5.Visible := True;
  Panel5.Position.X := 0;
end;

function TframeFMXRegisterMobile.GetUserProfile: IUserProfile;
begin

end;

procedure TframeFMXRegisterMobile.GoPassword;
begin
  self.TabControlRegister.ActiveTab := self.TabItemPassword;
  SetupFormManager
end;

procedure TframeFMXRegisterMobile.GoPersonal;
begin
  TabControlRegister.ActiveTab := TabItemPersonal;
  SetupFormManager
end;

procedure TframeFMXRegisterMobile.LoadProfile;
begin
  if not assigned(FJanuaSystemClient) then
    raise Exception.Create('frameFMXRegisterMobile.LoadProfile FJanuaRESTHealthClient not set');

  if FJanuaSystemClient.IsPublic then
    btnRegister.Text := 'Registrati'
  else
    btnRegister.Text := 'Salva Modifiche';

  UserProfile := FJanuaSystemClient.UserProfile;
  edFirstMail.Text := UserProfile.User.Email;
  edPassword.Text := UserProfile.User.Password;
  edPersonaNome.Text := UserProfile.FirstName;
  edPersonaCognome.Text := UserProfile.LastName;
  edDataNascita.Date := UserProfile.BirthDate;
  edIndrizzo.Text := UserProfile.Address.AddressFull;
  edCodiceFiscale.Text := UserProfile.FiscalCode;
  rgGender.ItemIndex := UserProfile.Gender.GenderIndex;
end;

procedure TframeFMXRegisterMobile.SetActive(const Value: boolean);
begin
  FActive := Value;
  if not self.FActive and Value then
    self.LoadProfile

end;

procedure TframeFMXRegisterMobile.SetIsRegistered(const Value: boolean);
begin
  FIsRegistered := Value;
end;

procedure TframeFMXRegisterMobile.SetJanuaFMXFormManager(const Value: TJanuaFMXFormManager);
begin
  FJanuaFMXFormManager := Value;
end;

procedure TframeFMXRegisterMobile.SetJanuaSystemClient(const Value: TJanuaCustomSystemClient);
begin
  FJanuaSystemClient := Value;
end;

procedure TframeFMXRegisterMobile.SetupFormManager;
begin
  if assigned(self.FJanuaFMXFormManager) then
  begin
    if self.TabControlRegister.ActiveTab = self.TabItemPassword then
    begin
      FJanuaFMXFormManager.Active := False;
      self.FJanuaFMXFormManager.VertScrollBox := self.VertScrollBox1;
      self.FJanuaFMXFormManager.MainLayout := self.Layout1;
      FJanuaFMXFormManager.Activate;
    end
    else if self.TabControlRegister.ActiveTab = self.TabItemPersonal then
    begin
      FJanuaFMXFormManager.Active := False;
      self.FJanuaFMXFormManager.VertScrollBox := self.VertScrollBox2;
      self.FJanuaFMXFormManager.MainLayout := self.Layout2;
      FJanuaFMXFormManager.Activate;
    end;
  end;
end;

procedure TframeFMXRegisterMobile.SetupProfile;
begin
  edFirstMail.Text := FUserProfile.User.Email.AsString;
  edPassword.Text := FUserProfile.User.Password.AsString;
  edPersonaNome.Text := FUserProfile.First_name.AsString;
  edPersonaCognome.Text := FUserProfile.Last_name.AsString;
  edDataNascita.Date := FUserProfile.Birth_date.AsDateTime;
  edIndrizzo.Text := FUserProfile.Address_full.AsString;
  edCodiceFiscale.Text := UserProfile.FiscalCode;
  rgGender.ItemIndex := UserProfile.Gender.GenderIndex;
end;

procedure TframeFMXRegisterMobile.SetUserProfile(const Value: IUserProfile);
begin
  FUSerProfile := Value;
end;

procedure TframeFMXRegisterMobile.Switch1Switch(Sender: TObject);
begin
  edPassword.Password := not Switch1.IsChecked;
  edConfirmPassword.Password := not Switch1.IsChecked;
end;

end.
