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

  if edPersonaNome.Text = '' then
    ShowMessage('Attenzione occorre inserire il proprio Nome')
  else if edPersonaCognome.Text = '' then
    ShowMessage('Attenzione occorre inserire il proprio Cognome')
  else if rgGender.ItemIndex = -1 then
    ShowMessage('Attenzione occorre indicare il sesso (M/F)')
  else if (edCodiceFiscale.Text = '') or (Janua.Core.Functions.StringLength(edCodiceFiscale.Text) < 16) or
    not VerifyFiscalCode(edCodiceFiscale.Text, error) then
    ShowMessage('Attenzione occorre inserire un codice fiscale Valido')
    {
      else if (edCodiceFiscale.Text = '') or (Length(edCodiceFiscale.Text) < 16) or
      not VerifyFiscalCode(edCodiceFiscale.Text, error) then
      ShowMessage('Attenzione occorre inserire un codice fiscale Valido')S.
      else if edIndrizzo.Text = '' then
      ShowMessage('Attenzione occorre inserire un indirizzo')
      {
      else if edTown.Text = '' then
      ShowMessage('Attenzione occorre inserire il proprio comune di residenza', '', '')
      else if edDataNascita.Date = 0 then
      ShowMessage('Attenzione occorre inserire una data Valida', '', '')
      else if edLuogoNascita.Text = '' then
      ShowMessage('Attenzione occorre inserire un luogo di nascita', '', '')
      else if rgGender.ItemIndex = -1 then
      ShowMessage('Attenzione occorre indicare il sesso (M/F)', '', '')
      else if not DM.JanuaServerHealthBooking1.GeoCoding(edIndrizzo.Text + ', ' + edCivico.Text +
      ', ' + edTown.Text) then
      ShowMessage('Attenzione Indirizzo non riconosciuto dal sistema', '', ''
    }
  else
  begin
    aCheck := True;
    UserProfile.FirstName := edPersonaNome.Text;
    UserProfile.LastName := edPersonaCognome.Text;
    UserProfile.BirthDate := edDataNascita.Date;
    UserProfile.Address.AddressFull := edIndrizzo.Text;
    {
      UserProfile.Address.postalcode := edPostalCode.Text;
      UserProfile.Address.Town := edTown.Text;
      UserProfile.Address.Number := edCivico.Text;
    }
    UserProfile.FiscalCode := edCodiceFiscale.Text;
    UserProfile.Gender.GenderCode := rgGender.Items[rgGender.ItemIndex].Value;
  end;

  if aCheck then
  begin
    if FJanuaSystemClient.SaveProfile(UserProfile) then
    begin
      ShowMessage('Dati aggiornati con successo');
      IsRegistered := True;
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

  if edFirstMail.Text = '' then
  begin
    ShowMessage('Attenzione occorre inserire un indirizzo Email');
  end
  else if not Janua.Core.Functions.IsValidEmail(edFirstMail.Text) then
  begin
    ShowMessage('Attenzione è stato inserito un indirizzo non valido');
    aCheck := False;
  end
  else if not(edFirstMail.Text = edConfirmMail.Text) then
  begin
    ShowMessage('Attenzione la mail inserita non è uguale alla sua conferma');
    aCheck := False;
  end
  else
  begin
    UserProfile.User.Email := edFirstMail.Text;
    UserProfile.User.Password := edPassword.Text;
    UserProfile.User.IsoLanguageCode := 'it';
    UserProfile.User.IsoCultureCode := 'it_IT';
    if (UserProfile.User.ID = 0) and not FJanuaSystemClient.CheckNewUser(UserProfile) then
    begin
      ShowMessage
        ('Attenzione utente già registrato, se non ricordate la password potete recuperarla via Mail');
    end
    else if UserProfile.User.ID = 0 then
    begin
      FJanuaSystemClient.CreateNewUser(UserProfile, aCheck);
      if aCheck then
      begin
        // FJanuaSystemClient.Login(UserProfile.User.Email, UserProfile.User.Password);
        ShowMessage('Utente registrato con successo');
        IsRegistered := True;
        TabControlRegister.Next(TTabTransition.Slide)
      end
      else
      begin
        ShowMessage('Errore di Registrazione utente sul server: ');
        // JanuaPostgresSystem.LastErrorMessage);
        { TODO : Aggiungere ad ogni procedura una Var con lastErrorMessage }
      end;
    end
    else if UserProfile.User.ID <> 0 then
    begin
      if FJanuaSystemClient.SaveProfile(UserProfile) then
      begin
        ShowMessage('Dati aggiornati con successo');
        IsRegistered := True;
        TabControlRegister.Next(TTabTransition.Slide)
      end
      else
        ShowMessage('Errore di Aggiornamento dati utente: ' + FJanuaSystemClient.ErrorMessage);
    end;

  end;

end;

procedure TframeFMXRegisterMobile.Default;
begin
  UserProfile.Clear;
  FActive := False;
end;

procedure TframeFMXRegisterMobile.edIndrizzoEnter(Sender: TObject);
begin
  Panel5.Visible := False;
end;

procedure TframeFMXRegisterMobile.edIndrizzoExit(Sender: TObject);
begin
  Panel5.Visible := True;
  Panel5.Position.X := 0;
end;

function TframeFMXRegisterMobile.GetUserProfile: IUserProfile;
begin

end;

procedure TframeFMXRegisterMobile.GoPassword;
begin
  TabControlRegister.ActiveTab := TabItemPassword;
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
  if not FActive and Value then
    LoadProfile
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
  if assigned(FJanuaFMXFormManager) then
  begin
    if TabControlRegister.ActiveTab = TabItemPassword then
    begin
      FJanuaFMXFormManager.Active := False;
      FJanuaFMXFormManager.VertScrollBox := VertScrollBox1;
      FJanuaFMXFormManager.MainLayout := Layout1;
      FJanuaFMXFormManager.Activate;
    end
    else if TabControlRegister.ActiveTab = TabItemPersonal then
    begin
      FJanuaFMXFormManager.Active := False;
      FJanuaFMXFormManager.VertScrollBox := VertScrollBox2;
      FJanuaFMXFormManager.MainLayout := Layout2;
      FJanuaFMXFormManager.Activate;
    end;
  end;
end;

procedure TframeFMXRegisterMobile.SetupProfile;
begin
  edFirstMail.Text := FUSerProfile.User.Email.AsString;
  edPassword.Text := FUSerProfile.User.Password.AsString;
  edPersonaNome.Text := FUSerProfile.First_name.AsString;
  edPersonaCognome.Text := FUSerProfile.Last_name.AsString;
  edDataNascita.Date := FUSerProfile.Birth_date.AsDateTime;
  edIndrizzo.Text := FUSerProfile.Address_full.AsString;
  edCodiceFiscale.Text := UserProfile.FiscalCode;
  rgGender.ItemIndex := UserProfile.Gender.GenderIndex;
end;

procedure TframeFMXRegisterMobile.SetUserProfile(const Value: IUserProfile);
begin
  FUSerProfile := Value;
  if assigned(FUSerProfile) then
    SetupProfile
end;

procedure TframeFMXRegisterMobile.Switch1Switch(Sender: TObject);
begin
  edPassword.Password := not Switch1.IsChecked;
  edConfirmPassword.Password := not Switch1.IsChecked;
end;

end.
