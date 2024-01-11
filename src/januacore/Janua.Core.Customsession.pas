unit Janua.Core.Customsession;

interface

{$I JANUACORE.INC}

uses
  System.SysUtils, System.Classes, Janua.Core.Customsystem, Data.DB,
  FireDAC.Comp.Client,
  Janua.Core.Functions, Janua.Core.System, Janua.Core.Classes;

type
  TUserSchema = record
    Name: string;
    ID: integer;
    Posts: Cardinal;
  end;

type
  TUserSession = record
    UUID: int64;
    KEY: string;
    Started: TDateTime;
  end;

type
  TJanuaCustomSession = class(TJanuaCoreComponent)
  private
    procedure SetKey(const Value: string);
    procedure SetConnectionError(const Value: boolean);
    procedure SetSchemaSelector(const Value: TDataset);
    procedure SetIsoCountries(const Value: TDataset);
    procedure CloneDataset(fromDataset: TDataset; toDataset: TDataset);
    procedure SetIsRemote(const Value: boolean);
    procedure SetappKey(const Value: string);
    procedure SetappSecret(const Value: string);
    procedure SetisPublic(const Value: boolean);
    procedure SetConnectionTime(const Value: TDateTime);
    procedure SetUserID(const Value: integer);
    procedure SetLastMessage(const Value: string);
    procedure SetActiveLog(const Value: boolean);
    procedure SetMailExists(const Value: boolean);
    procedure SetUserExists(const Value: boolean);
    { Private declarations }
  protected
    { Protected declarations }
    FHasErrors: boolean;
    FActiveLog: boolean;
    FMailExists: boolean;
    FUserExists: boolean;

    FLastMessage: string;
    FInternalIsoCountries: TDataset;
    FInternalSchemas: TDataset;
    FUserSession: TUserSession;
    FUserEmail: string;
    FConnected: boolean;
    FPassword: string;
    FUserSchema: TUserSchema;
    FUsername: string;
    FKey: string;
    FConnectionError: boolean;
    FSchemaSelector: TDataset;
    FIsoCountries: TDataset;
    FIsRemote: boolean;
    FisPublic: boolean;
    FappSecret: string;
    FappKey: string;
    FConnectionTime: TDateTime;
    FUserID: integer;
    procedure SetInternalIsoCountries(Dataset: TDataset);
    procedure SetInternalSchemas(Dataset: TDataset);
    procedure SetConnected(const Value: boolean); Virtual;
    procedure SetPassword(const Value: string); Virtual;
    procedure SetUserEmail(const Value: string); Virtual;
    procedure SetUsername(const Value: string); Virtual;
    procedure SetUserSchema(const Value: TUserSchema); Virtual;
    procedure SetUserSession(const Value: TUserSession); Virtual;
  public
    { Public declarations }
    function Login: boolean; Virtual;
    function LoginWithKey(KEY: string): boolean; Virtual;
    function LoginWithUser(Username, Password: string): boolean; Virtual; Abstract;
    procedure Disconnect; Virtual; Abstract;
    function StartPublicSession(schema_key, publicuser_key: string): boolean; Virtual; Abstract;
    procedure LoginWithSession(vSession: String); Virtual; Abstract;
    function RegisterUser(sUser, sPassword, sConfirmPassword, sCountry, sEmail, sDefaultSchema: string)
      : boolean; Virtual;
    // this function check if password and email are correct then calls the
    // verify user to check if it exists then leave the control to descendant to register User
    function VerifyUser(sUser, sEmail: string): boolean; Virtual; Abstract;
    // this function  checks up if the registering users has entered correct informations.
    function ConfirmUser(sUserKey: string): boolean; Virtual; Abstract;
    // When an user Receives a confirmation Key he can connect back to the system.
    function GetConfirmKey(UserID: integer): string; Virtual; Abstract;
    // This function calls a Store procedure to Retrieve the User Password.
    constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property Connected: boolean read FConnected write SetConnected;
    property UserID: integer read FUserID write SetUserID;
    // this is the unique user id that must be set by the Login Procedure
    property ConnectionTime: TDateTime read FConnectionTime write SetConnectionTime;
    // this is the server connection time of the connection it must be set
    property Username: string read FUsername write SetUsername;
    // this is the Username is set to the connection Procedure can be in the user record
    property Password: string read FPassword write SetPassword;
    property UserEmail: string read FUserEmail write SetUserEmail;
    property UserSchema: TUserSchema read FUserSchema write SetUserSchema;
    property UserSession: TUserSession read FUserSession write SetUserSession;
    property KEY: string read FKey write SetKey;
    property ConnectionError: boolean read FConnectionError write SetConnectionError;
    property SchemaSelector: TDataset read FSchemaSelector write SetSchemaSelector;
    property IsoCountries: TDataset read FIsoCountries write SetIsoCountries;
    property IsRemote: boolean read FIsRemote write SetIsRemote;
    property isPublic: boolean read FisPublic write SetisPublic;
    property appKey: string read FappKey write SetappKey;
    property appSecret: string read FappSecret write SetappSecret;
    property LastMessage: string read FLastMessage write SetLastMessage;

    property ActiveLog: boolean read FActiveLog write SetActiveLog;
    property UserExists: boolean read FUserExists write SetUserExists;
    property MailExists: boolean read FMailExists write SetMailExists;
    property HasErrors: boolean read FHasErrors;
  end;

implementation

// procedura RegisterComponents disattivata

{ TJanuaCustomSession }

procedure TJanuaCustomSession.CloneDataset(fromDataset: TDataset; toDataset: TDataset);
begin
  if (toDataset is TFDMemTable) then
    Janua.Core.Functions.CloneDataset(fromDataset, TFDMemTable(toDataset));
end;

constructor TJanuaCustomSession.Create(AOwner: TComponent);
begin
  inherited;
  self.FUserSession.UUID := -1;

end;

function TJanuaCustomSession.Login: boolean;
begin
  self.FLastMessage := '';
  self.FHasErrors := False;
  Result := False;
end;

function TJanuaCustomSession.LoginWithKey(KEY: string): boolean;
begin
  // This function has to be implemented by descendant classess
  Result := False;
end;

function TJanuaCustomSession.RegisterUser(sUser, sPassword, sConfirmPassword, sCountry, sEmail,
  sDefaultSchema: string): boolean;
begin
  Result := True;

  if not Janua.Core.Functions.IsValidEmail(sEmail) then
  begin
    self.FLastMessage := 'Attenzione Inserita una mail non valida';
    Exit(False);
  end;

  if not self.VerifyUser(sUser, sEmail) then
  begin
    self.FLastMessage := 'Attenzione Nome Utente o Mail già esistenti';
    Exit(False);
  end;
end;

procedure TJanuaCustomSession.SetActiveLog(const Value: boolean);
begin
  FActiveLog := Value;
end;

procedure TJanuaCustomSession.SetappKey(const Value: string);
begin
  FappKey := Value;
end;

procedure TJanuaCustomSession.SetappSecret(const Value: string);
begin
  FappSecret := Value;
end;

procedure TJanuaCustomSession.SetConnected(const Value: boolean);
begin
  if Value then
  begin
    FConnected := self.Login;
  end
  else
    FConnected := False;
end;

procedure TJanuaCustomSession.SetConnectionError(const Value: boolean);
begin
  FConnectionError := Value;
end;

procedure TJanuaCustomSession.SetConnectionTime(const Value: TDateTime);
begin
  FConnectionTime := Value;
end;

procedure TJanuaCustomSession.SetInternalIsoCountries(Dataset: TDataset);

begin
  // This procedure 'clones' the Iso Country Dataset into FIsoCountries ClientDataset
  if assigned(self.FIsoCountries) then
  begin
    self.CloneDataset(Dataset, self.FIsoCountries);
  end;
end;

procedure TJanuaCustomSession.SetInternalSchemas(Dataset: TDataset);
begin
  // This procedure 'clones' the Schemas Dataset into FSchemas ClientDataset

end;

procedure TJanuaCustomSession.SetIsoCountries(const Value: TDataset);
begin
  FIsoCountries := Value;
end;

procedure TJanuaCustomSession.SetisPublic(const Value: boolean);
begin
  FisPublic := Value;
end;

procedure TJanuaCustomSession.SetIsRemote(const Value: boolean);
begin
  FIsRemote := Value;
end;

procedure TJanuaCustomSession.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TJanuaCustomSession.SetLastMessage(const Value: string);
begin
  FLastMessage := Value;
end;

procedure TJanuaCustomSession.SetMailExists(const Value: boolean);
begin
  FMailExists := Value;
end;

procedure TJanuaCustomSession.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaCustomSession.SetSchemaSelector(const Value: TDataset);
begin
  FSchemaSelector := Value;
end;

procedure TJanuaCustomSession.SetUserEmail(const Value: string);
begin
  FUserEmail := Value;
end;

procedure TJanuaCustomSession.SetUserExists(const Value: boolean);
begin
  FUserExists := Value;
end;

procedure TJanuaCustomSession.SetUserID(const Value: integer);
begin
  FUserID := Value;
end;

procedure TJanuaCustomSession.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

procedure TJanuaCustomSession.SetUserSchema(const Value: TUserSchema);
begin
  FUserSchema := Value;
end;

procedure TJanuaCustomSession.SetUserSession(const Value: TUserSession);
begin
  FUserSession := Value;
end;

end.
