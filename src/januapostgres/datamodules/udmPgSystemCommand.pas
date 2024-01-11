unit udmPgSystemCommand;

interface

uses
  System.SysUtils, System.Classes,
  // DB
  Datasnap.Provider, Data.DB,

  PgAccess, MemDS, DBAccess, Janua.Core.System,
  // DataModule
  udmJanuaPostgresModel,
  // Janua
  Janua.Core.Types, Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Exceptions, Janua.Core.Params,
  Datasnap.DBClient;

type
  TdmPgSystemCommand = class(TdmJanuaPostgresModel)
    spCreatePersonalSchema: TPgStoredProc;
    dspUserSessions: TDataSetProvider;
    spUserTest: TPgStoredProc;
    spUserAdd: TPgStoredProc;
    spLogin: TPgStoredProc;
    qrySearchUserProfile: TPgQuery;
    qrySearchUsers: TPgQuery;
    qryGetUserByKey: TPgQuery;
    qryGetUserByKeyactive: TBooleanField;
    qryGetUserByKeyemail: TWideStringField;
    qryGetUserByKeydb_user_id: TIntegerField;
    qryGetUserByKeypassword: TWideStringField;
    qryGetUserByKeyusername: TWideStringField;
    qryGetUserByKeyisactive: TBooleanField;
    qryGetUserByKeyverify_token: TWideStringField;
    qryGetUserByKeyverified: TBooleanField;
    qryGetUserByKeydefault_schema_id: TIntegerField;
    qryGetUserByKeyispublic: TBooleanField;
    qryGetUserByKeyinternal_key: TWideStringField;
    qrydbUserSchemas: TPgQuery;
    qrydbUserSchemasdb_schema_id: TIntegerField;
    qrydbUserSchemasdb_schema_name: TWideStringField;
    qrydbUserSchemasschema_des: TWideStringField;
    qrydbUserSchemaspersonal: TBooleanField;
    qrydbUserSchemasdb_schema_key: TWideStringField;
    qrydbUserSchemascountry_id: TSmallintField;
    qrydbUserSchemaslanguage_id: TSmallintField;
    qrydbUserSchemasdefault_user_id: TIntegerField;
    prcSetUserDefaultSchema: TPgStoredProc;
    qrySearchUsersdb_user_id: TIntegerField;
    qrySearchUsersemail: TWideStringField;
    qrySearchUserspublic_email: TWideStringField;
    qrySearchUserstitle: TWideStringField;
    qrySearchUsersfirst_name: TWideStringField;
    qrySearchUserslast_name: TWideStringField;
    qrySearchUsersfull_name: TWideStringField;
    dspSearchUsers: TDataSetProvider;
    dspUserSchemas: TDataSetProvider;
    spUserTestSocial: TPgStoredProc;
    spUserAddSocial: TPgStoredProc;
    spLoginSocial: TPgStoredProc;
    qryGetUserByKeydefault_role_id: TSmallintField;
    qryGetUserByKeysearch_name: TWideStringField;
    qryGetUserByKeyreverse_search: TWideStringField;
    qryGetUserByKeyinsert_date: TSQLTimeStampField;
    qryGetUserByKeycountry_id: TSmallintField;
    qryGetUserByKeymain_profile_type_id: TSmallintField;
    qryGetUserByKeymain_profile_id: TWideStringField;
    qryGetUserByKeyimage_id: TLargeintField;
    qryGetUserByKeyimage_url: TWideStringField;
    qryGetUserByKeyiso_language_code: TWideStringField;
    qryGetUserByKeyiso_culture_code: TWideStringField;
    spStartSessionByUrl: TPgStoredProc;
    qrySessionByUrl: TPgQuery;
    qryGetUserByKeyuser_first_name: TWideStringField;
    qryGetUserByKeyuser_family_name: TWideStringField;
    qryGetUserByKeyemailsent: TBooleanField;
    qryGetUserByKeyemailconfirmed: TBooleanField;
    qryGetUserByKeyemaildate: TSQLTimeStampField;
    qrySearchUserProfiledb_user_id: TIntegerField;
    qrySearchUserProfilecountry_id: TSmallintField;
    qrySearchUserProfileregion_id: TSmallintField;
    qrySearchUserProfiledistrict_id: TSmallintField;
    qrySearchUserProfiletown_id: TIntegerField;
    qrySearchUserProfilefirst_name: TWideStringField;
    qrySearchUserProfilelast_name: TWideStringField;
    qrySearchUserProfileaddress_street: TWideStringField;
    qrySearchUserProfileaddress_number: TWideStringField;
    qrySearchUserProfileaddress_postal_code: TWideStringField;
    qrySearchUserProfilephone: TWideStringField;
    qrySearchUserProfilecellular_phone: TWideStringField;
    qrySearchUserProfilework_phone: TWideStringField;
    qrySearchUserProfilefax_number: TWideStringField;
    qrySearchUserProfilegender_code: TWideStringField;
    qrySearchUserProfilebirth_date: TDateField;
    qrySearchUserProfilebirth_country_id: TSmallintField;
    qrySearchUserProfilebirth_region_id: TSmallintField;
    qrySearchUserProfilebirth_district_id: TSmallintField;
    qrySearchUserProfilebirth_town_id: TIntegerField;
    qrySearchUserProfilepublic_email: TWideStringField;
    qrySearchUserProfiletitle: TWideStringField;
    qrySearchUserProfilesearch_name: TWideStringField;
    qrySearchUserProfilereverse_search: TWideStringField;
    qrySearchUserProfileaddress_full: TWideStringField;
    qrySearchUserProfilelatitude: TFloatField;
    qrySearchUserProfilelongitude: TFloatField;
    qrySearchUserProfilefiscal_code: TWideStringField;
    qrySearchUserProfilesmssent: TBooleanField;
    qrySearchUserProfilesmsconfirmed: TBooleanField;
    qrySearchUserProfilesmsdate: TSQLTimeStampField;
    qrySearchUserProfilesmschecknumber: TWideStringField;
    qrySearchUserProfileaddress_town: TWideStringField;
    qrySessionByUrlstartsessionbyurl: TWideStringField;
    spUserPayment: TPgStoredProc;
    qrySession: TPgQuery;
    qrySessiondb_user_id: TIntegerField;
    qrySessiondb_schema_id: TIntegerField;
    qrySessiondb_session_key: TWideStringField;
    qrySessiondb_session_id: TLargeintField;
    qrySessionlanguage_id: TSmallintField;
    qrySessionstart_time: TSQLTimeStampField;
    qrySessioninsert_date: TSQLTimeStampField;
    qrySessionispublic: TBooleanField;
    qryUseruser_jguid: TWideStringField;
    qryUseruser_deleted: TBooleanField;
    procedure DataModuleCreate(Sender: TObject); override;
    procedure PgConnection1BeforeConnect(Sender: TObject);
    procedure qrySearchUsersBeforeOpen(DataSet: TDataSet);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  private
    FRegisterError: TJanuaRegisterError;
    FConfirmMail: boolean;
    FLoggedIn: boolean;
    FisServer: boolean;
    FGuestUserKey: string;
    FGuestProfile: TJanuaRecordUserProfile;
    FLocalTest: boolean;
    FSelectedSchema: Int64;
    FUserKey: String;
    FSearchUserProfile: TJanuaRecordUserProfile;
    function InternalLogin: boolean;
    function InternalLoginSocial: boolean;
    procedure CloseProfile;
    procedure SetUserKey(const Value: String);
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure SetConfirmMail(const Value: boolean);
    procedure SetLoggedIn(const Value: boolean);
    procedure SetGuestUserKey(const Value: string);
    procedure SetGuestProfile(const Value: TJanuaRecordUserProfile);
    procedure SetLocalTest(const Value: boolean);
    procedure SetSearchUserProfile(const Value: TJanuaRecordUserProfile);
    procedure OpenUserProfile;
  protected
    function InternalAddUser(aUser: TJanuaRecordUserProfile): boolean;
    function InternalAddUserSocial(aUser: TJanuaRecordUserProfile): boolean;
    function InternalCheckUserSocial(aUser: TJanuaRecordUserProfile): boolean;
    function InternalCheckUser(var count: integer; aUser: TJanuaRecordUserProfile): boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure SetSelectedSchema(const Value: Int64);
    // Imposta la lista degli Schemi
    procedure SaveProfile(aProfile: TJanuaRecordUserProfile);
    procedure SetProfileFromQuery;
    function FindUserByKey(key: string): boolean;
    function FindUserByID(Id: integer): boolean;
    function CheckUser(User: TJanuaRecordUserProfile): boolean;
    function AddUser(aUser: TJanuaRecordUserProfile): boolean;
    // funzione che crea un utente partendo da un profilo utente auto registrato
    function AdminAddUser(User: TJanuaRecordUserProfile): boolean;
    // funzione che crea un utente creando un profilo utente da Amministratore
    function login(aUser: TJanuaUser): boolean;
    procedure GetSession;
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(aID: Int64): smallint;
    procedure SetGuestByKey(const aKey: string);
    procedure ConnectSession(SessionKey: string);
    function SearchUsers(pusername: string): integer;
    procedure GetSchemasList(SessionKey: string);
    function SearchUserByID(aID: integer): integer;
    function SearchUserByName(aName: string): integer;
    function SearchUserByEmail(aMail: string): integer;
    function SearchUserBySocialID(aID: string; aSocial: string): integer;
    // è possibile avviare una Sessione Pubblica direttamente da un URL
    function StartSessionByUrl(aUrl: string): boolean;
    function DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean;
  public
    property SearchUserProfile: TJanuaRecordUserProfile read FSearchUserProfile write SetSearchUserProfile;
    property UserKey: String read FUserKey write SetUserKey;
    property RegisterError: TJanuaRegisterError read FRegisterError write SetRegisterError;
    property ConfirmMail: boolean read FConfirmMail write SetConfirmMail;
    property LoggedIn: boolean read FLoggedIn write SetLoggedIn;
    property GuestUserKey: string read FGuestUserKey write SetGuestUserKey;
    property GuestProfile: TJanuaRecordUserProfile read FGuestProfile write SetGuestProfile;
    property LocalTest: boolean read FLocalTest write SetLocalTest;
    property SelectedSchema: Int64 read FSelectedSchema write SetSelectedSchema;
  end;

var
  dmPgSystemCommand: TdmPgSystemCommand;

implementation

{$R *.dfm}
{ TdmPgSystemCommand }

function TdmPgSystemCommand.InternalLoginSocial: boolean;
begin
  WriteLog('TdmPgSystemCommand.InternalLoginSocial');
  Result := False;

  if (self.UserProfile.User.SocialID = '') and (self.UserProfile.User.SocialType = '') then
  begin
    self.WriteLog('dmSystemCommand.InternalLogin Error self.UserProfile.User.SocialID is null ');
    Result := False;
    Exit(False);
  end
  else
    self.WriteLog('dmSystemCommand.InternalLogin SocialID inserito correttamente');

  { CustomServer: boolean;
    CustomServerUrl: string;
    CustomServerPort: string;
    CustomServerSchema: string; }

  if not spLogin.Connection.Connected then
    spLogin.Connection.Connected := True;
  WriteLog('dmSystemCommand.InternalLogin Sessione Connessa a PostGres');

  WriteLog('dmSystemCommand.InternalLogin Login:  spLogin.Prepare');
  if not spLoginSocial.Prepared then
    spLoginSocial.Prepare;

  try
    // SELECT system.userloginsocial(:p_socialid, :p_social_kind)
    WriteLog('dmSystemCommand.InternalLogin Tentativo Login: ' + self.UserProfile.User.SocialType + '/' +
      self.UserProfile.User.SocialID);
    spLoginSocial.ParamByName('p_socialid').AsString := self.UserProfile.User.SocialID;
    WriteLog('Tentativo connessione udando indrizzo p_socialid:' + self.UserProfile.User.SocialID);
    spLoginSocial.ParamByName('p_social_kind').AsString := self.UserProfile.User.SocialType;
    spLoginSocial.ExecProc;
    // FUserID := spLoginSocial.ParamByName('Result').AsLargeInt;
    WriteLog('Tentativo Login risultato: ' + spLoginSocial.ParamByName('Result').AsWideString);
    SetSessionKey(spLoginSocial.ParamByName('Result').AsString);
    Result := (FSessionKey <> 'Error') and (FSessionKey <> '') and (UserProfile.User.Id > 0);
    {
      self.FSessionKey := spLoginSocial.ParamByName('Result').AsString;
      Result := (FSessionKey <> 'Error') and (FSessionKey <> '');
    }
    if not self.FLocalTest then
      spLoginSocial.Connection.Close;

  except
    on e: Exception do
    begin
      Result := False;
      WriteLog('Error Executing Server Procedure T TServerMethodsCore.Login: ' + sLineBreak + e.Message);
      self.FLastErrorMessage := ('Error Executing Server Procedure TServerMethodsCore.Login: ' + sLineBreak +
        e.Message);
    end;
  end;
end;

function TdmPgSystemCommand.InternalAddUser(aUser: TJanuaRecordUserProfile): boolean;
var
  vcount: integer;
begin
  try
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email) and
      Janua.Core.Functions.IsValidEmail(aUser.User.Username) then
      aUser.User.Email := aUser.User.Username;
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email) then
    begin
      Result := False;
      self.FLastErrorMessage := 'Mail non Valida';
      FRegisterError := JreWrongEmail;
      Exit;
    end;
    FRegisterError := jreNone;
    { TODO : Modificare Check User con le nuove Coordinate e-mail e username }
    if CheckUser(aUser) then
      Result := True
    else
    begin
      FRegisterError := jreUserAlreadyRegistered;
      Result := False;
      self.LastErrorMessage := 'Utente già registrato';
    end;
    if Result then
    begin
      spUserAdd.ParamByName('p_email').AsWideString := aUser.User.Email;
      spUserAdd.ParamByName('p_username').AsWideString := aUser.User.Username;
      spUserAdd.ParamByName('p_password').AsWideString := aUser.User.Password;
      spUserAdd.ParamByName('p_country_id').AsInteger := 1;
      spUserAdd.ParamByName('p_ispublic').AsBoolean := False;
      self.ServerFunctions.ExecuteProcedure(spUserAdd);
      aUser.User.key := spUserAdd.ParamByName('Result').AsString;
      Result := aUser.User.key <> 'Error';
      if Result then
        self.FUserProfile := aUser
      else
        self.LastErrorMessage := 'Utente non registrato da procedura di database';
    end;
  except
    on e: Exception do
    begin
      Result := False;
      self.LastErrorMessage := e.Message;
      FRegisterError := TJanuaRegisterError.jreSystemError;
      self.WriteError('TJanuaPostgresServerFunctions.AddUser', e);
    end;
  end;

end;

function TdmPgSystemCommand.InternalAddUserSocial(aUser: TJanuaRecordUserProfile): boolean;
begin
  try
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email) then
      aUser.User.Email := lowerCase(aUser.User.SocialType) + '-' + lowerCase(aUser.User.SocialID);

    if (aUser.User.SocialID = '') or (aUser.User.SocialType = '') then
    begin
      Result := False;
      self.LastErrorMessage := 'Social ID or Social Kind not set';
      FRegisterError := JreWrongEmail;
      Exit;
    end;
    FRegisterError := jreNone;
    if InternalCheckUserSocial(aUser) then
      Result := True
    else
    begin
      FRegisterError := jreUserAlreadyRegistered;
      Result := False;
      self.LastErrorMessage := 'User already Registered';
    end;
    // system.useraddsocial(:p_email, :p_socialid, :p_social_kind, :p_country_code, :p_ispublic)
    if Result then
    begin
      // :p_email, :p_socialid, :p_social_kind, :p_country_code, :p_ispublic, :p_firstname, :p_lastname,
      // :p_address_town, :p_address_street, :p_address_number, :p_address_postal_code, :p_address_full,
      // :p_public_email, :p_latitude, :p_longitude, :p_birth_date, :p_fiscal_code, :p_gender_code,
      // :p_cellular_phone, :p_phone, :p_image_url, :p_facebook_json
      self.spUserAddSocial.ParamByName('p_email').AsWideString := aUser.User.Email;
      spUserAddSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID;
      spUserAddSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType;
      self.spUserAddSocial.ParamByName('p_ispublic').AsBoolean := False;
      self.spUserAddSocial.ParamByName('p_firstname').AsWideString := aUser.FirstName;
      self.spUserAddSocial.ParamByName('p_lastname').AsWideString := aUser.LastName;
      self.spUserAddSocial.ParamByName('p_address_town').AsWideString := aUser.Address.Town;
      self.spUserAddSocial.ParamByName('p_address_number').AsWideString := aUser.Address.Number;
      self.spUserAddSocial.ParamByName('p_address_postal_code').AsWideString := aUser.Address.postalcode;
      self.spUserAddSocial.ParamByName('p_address_full').AsWideString := aUser.Address.AddressFull;
      self.spUserAddSocial.ParamByName('p_public_email').AsWideString := aUser.PublicEmail;
      self.spUserAddSocial.ParamByName('p_latitude').AsFloat := aUser.Address.Latitude;
      self.spUserAddSocial.ParamByName('p_longitude').AsFloat := aUser.Address.Longitude;
      self.spUserAddSocial.ParamByName('p_birth_date').AsDate := aUser.BirthDate;
      self.spUserAddSocial.ParamByName('p_fiscal_code').AsWideString := aUser.FiscalCode;
      self.spUserAddSocial.ParamByName('p_gender_code').AsWideString := aUser.Gender.GenderCode;
      self.spUserAddSocial.ParamByName('p_cellular_phone').AsWideString := aUser.Address.CellularPhone;
      self.spUserAddSocial.ParamByName('p_phone').AsWideString := aUser.Address.Phone;
      self.spUserAddSocial.ParamByName('p_image_url').AsWideString := aUser.User.AvatarImageUrl;
      // self.spUserAddSocial.ParamByName('p_facebook_json').AsWideString := aUser.FacebookJSON;
      // spUserAdd.ParamByName('p_country_id').AsInteger := 1;
      spUserAddSocial.ParamByName('p_country_code').Value := 'IT';
      spUserAddSocial.ParamByName('p_ispublic').AsBoolean := False;
      self.ServerFunctions.ExecuteProcedure(spUserAddSocial);
      aUser.User.key := spUserAdd.ParamByName('Result').AsString;
      Result := Pos('error', lowerCase(aUser.User.key)) = 0;
      if Result then
        self.FUserProfile := aUser
      else
        self.LastErrorMessage := 'Utente non registrato da procedura di database';
    end;
  except
    on e: Exception do
    begin
      Result := False;
      LastErrorMessage := e.Message;
      FRegisterError := jreSystemError;
      self.WriteError('TJanuaPostgresServerFunctions.AddUser', e);
    end;
  end;
end;

function TdmPgSystemCommand.InternalCheckUser(var count: integer; aUser: TJanuaRecordUserProfile): boolean;
begin
  // if aUser.User.Username = aUser.User.Email then
  // aUser.User.Username := aUser.User.Email;
  (spUserTest as TPgStoredProc).ParamByName('p_username').AsWideString := aUser.User.Username;
  (spUserTest as TPgStoredProc).ParamByName('p_email').AsWideString := aUser.User.Email;
  self.ServerFunctions.ExecuteProcedure(spUserTest);
  count := (spUserTest as TPgStoredProc).ParamByName('Result').AsInteger;
  Result := count = 0;
end;

function TdmPgSystemCommand.InternalCheckUserSocial(aUser: TJanuaRecordUserProfile): boolean;
begin
  self.spUserTestSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID;
  spUserTestSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType;
  self.ServerFunctions.ExecuteProcedure(spUserTestSocial);
  Result := (spUserTest as TPgStoredProc).ParamByName('Result').AsInteger = 0;
end;

function TdmPgSystemCommand.InternalLogin: boolean;
var
  vTest: boolean;
begin
  Result := False;
  if self.SetupLogin then
  begin
    WriteLog('dmSystemCommand.InternalLogin Login:  spLogin.Prepare');
    if not spLogin.Prepared then
      spLogin.Prepare;
    try
      WriteLog('dmSystemCommand.InternalLogin Tentativo Login: ' + self.UserProfile.User.Email + '/' +
        self.UserProfile.User.Password);

      if self.UserProfile.User.Email > '' then
      begin
        if not IsValidEmail(self.UserProfile.User.Email) then
        begin
          WriteLog('Tentativo Login con Mail Errata: ' + self.UserProfile.User.Email);
          self.LastErrorMessage := 'Tentativo Login con Mail Errata: ';
          spLogin.ParamByName('p_email').AsString := '';
          spLogin.ParamByName('p_username').AsString := self.UserProfile.User.Email;
        end
        else
        begin
          spLogin.ParamByName('p_email').AsString := self.UserProfile.User.Email;
          WriteLog('Tentativo connessione udando indrizzo Mail:' + self.UserProfile.User.Email);
          spLogin.ParamByName('p_username').AsString := '';
        end;
      end
      else
      begin
        if (self.UserProfile.User.Email = '') then
          spLogin.ParamByName('p_username').AsString := self.UserProfile.User.Username
        else if (self.UserProfile.User.Email > '') and (self.UserProfile.User.Username = '') then
          spLogin.ParamByName('p_username').AsString := self.UserProfile.User.Email
        else
          spLogin.ParamByName('p_username').AsString := self.UserProfile.User.Username;

        spLogin.ParamByName('p_email').AsString := '';
        WriteLog('Tentativo connessione usando username:' + self.UserProfile.User.Email);
      end;

      spLogin.ParamByName('p_password').AsString := self.UserProfile.User.Password;
      spLogin.ExecProc;
      // FUserID := spLogin.ParamByName('Result').AsLargeInt;
      WriteLog('Tentativo Login risultato: ' + spLogin.ParamByName('Result').AsWideString);

      SetSessionKey(spLogin.ParamByName('Result').AsString);

      vTest := (FSessionKey <> 'Error');
      if vTest then
        vTest := (FSessionKey <> '');
      if vTest then
        vTest := (self.UserProfile.User.Id > 0);
      Result := vTest;

      if not self.FLocalTest then
        spLogin.Connection.Close;

    except
      on e: Exception do
      begin
        Result := False;
        WriteLog('Errore funzione di TServerMethodsCore.Login: ' + sLineBreak + e.Message);
        self.FLastErrorMessage := ('Errore funzione di TServerMethodsCore.Login: ' + sLineBreak + e.Message);
      end;
    end;
  end;
end;

function TdmPgSystemCommand.login(aUser: TJanuaUser): boolean;
var
  mailLogin: boolean;
begin
  Result := False;
  try
    try
      Result := True;
      mailLogin := True;

      WriteLog('email: ' + aUser.Email);
      WriteLog('Password: ' + aUser.Password);
      WriteLog('Social Network: ' + aUser.SocialType);
      WriteLog('Social ID: ' + aUser.SocialID);

      WriteLog('Controllo email');

      if (aUser.Email = '') or (aUser.Email = lowerCase(aUser.SocialType) + '-' + aUser.SocialID +
        '@ergomercator.com') or (aUser.Password = '') then
      begin
        if (aUser.SocialID = '') then
        begin
          Result := False;
          FLastErrorMessage := 'Wrong or nul mail address or Social ID';
          WriteLog('Wrong or nul mail address');
        end
        else if (aUser.SocialID <> '') and (aUser.SocialType = '') then
        begin
          Result := False;
          FLastErrorMessage := 'Social ID Without Social Network';
          WriteLog('Social ID Without Social Network');
        end
        else
        begin
          mailLogin := False;
          if not IsValidEmail(aUser.Email) then
            aUser.Email := lowerCase(aUser.SocialType) + '-' + lowerCase(aUser.SocialID) +
              '@ergomercator.com';
        end;
      end;

      WriteLog('Controllo password');
      if (aUser.Password = '') and Result and mailLogin then
      begin
        begin
          Result := False;
          FLastErrorMessage := 'Attenzione non avete compilato la password';
          WriteLog(FLastErrorMessage);
        end;
        //
        {
          else if Result and not MailLogin then
          begin
          Result := True;
          aUser.Password := aUser.SocialID;
          end;
        }
      end;

      if Result then
      begin
        if mailLogin then
        begin
          WriteLog('Controlli OK avvio Login');
          // if not assigned(self.spLogin) then
          // self.RaiseException('spLogin non assegnata da costruttore...');
          self.User := aUser;
          Result := False;
          Result := self.InternalLogin;
          // self.UserProfile.User := aUser;
          {
            self.FServerSession := ServerFunctions.GetSession(self.FSessionKey, self.qryUserSession, True,
            FLastErrorMessage);
          }
        end
        else
        begin
          WriteLog('Controlli OK avvio Login');
          if not assigned(self.spLoginSocial) then
            self.RaiseException('spLogin non assegnata da costruttore...');
          self.User := aUser;
          Result := False;
          Result := self.InternalLoginSocial;
          // self.UserProfile.User := aUser;
          { if Result then
            self.FServerSession := ServerFunctions.GetSession(self.FSessionKey, self.qryUserSession, True,
            FLastErrorMessage);
          }
        end;
      end;
      {
        if Result then
        Result := CheckSessionKey;
      }
      self.FLoggedIn := Result;
      {
        if self.FLoggedIn then
        SetProfileFromQuery;
      }
    finally
      if not self.FLocalTest then
        self.PgErgoConnection.Close;
    end;

  except
    on e: Exception do
    begin
      self.WriteError('Errore TIWuserSessionErgoMercator.login', e);
    end;
  end
end;

function TdmPgSystemCommand.AddUser(aUser: TJanuaRecordUserProfile): boolean;
var
  p_userName: string;
begin
  Result := False;
  try
    self.WriteLog('TdmPgSystemCommand.AddUser = Creazione utente ..... TJanuaRecordUserProfile');

    if Janua.Core.Functions.IsValidEmail(aUser.User.Username) then
    begin
      aUser.User.Email := aUser.User.Username;
      aUser.User.Username := '';
    end;

    if (aUser.FirstName <> '') or (aUser.LastName <> '') and (aUser.User.Username = '') then
      aUser.User.Username := aUser.FirstName + '_' + aUser.LastName + '_' + FormatDateTime('ddhhnnss', Now());

    if aUser.User.Username = '' then
      aUser.User.Username := Janua.Core.Functions.StripString
        (aUser.User.Email + '_' + FormatDateTime('ddhhnnss', Now()));

    if aUser.User.SocialID = '' then
      Result := self.InternalAddUser(aUser)
      // Result := ServerFunctions.AddUser(self.spUserAdd, self.spUserTest, aUser.User.Username, aUser.User.Email,
      // aUser.User.Password, True, self.FLastErrorMessage, 1, self.FUserKey, self.FRegisterError)
    else
      Result := self.InternalAddUserSocial(aUser);
    // ServerFunctions.AddUserSocial(self.spUserAddSocial, self.spUserTestSocial, aUser.User.SocialID,
    // aUser.User.SocialType, aUser.User.Email, True, self.FLastErrorMessage, 1, self.FUserKey, self.FRegisterError);

    self.WriteLog('TdmPgSystemCommand.AddUser fine Creazione utente ' + self.FLastErrorMessage);

    // se la creazione di un nuovo utente va per il verso giusto da risultato OK
    if Result then
    // occorre modificare leggermente la procedura di gestione utente e sessione
    // siccome qui è un utente nuovo che si sta registrando con il suo profilo
    // dovremmo avere una 'variante' di sessione in cui un utente admin
    // crea e gestisce il profilo di un altro utente partendo dalla propria
    // sessione in questo caso il server deve verificare se l'amministratore
    // è veramente un utente amministratoe ed ha i diritti di farmo
    begin
      // SELECT system.setuserdefaultschema(:session_key, :p_user_id)
      self.WriteLog('TdmPgSystemCommand.AddUser Risultato OK' + self.FLastErrorMessage);
      self.qryGetUserByKey.ParamByName('verify_token').AsString := self.FUserKey;
      self.ServerFunctions.OpenDataset(qryGetUserByKey);
      Result := self.qryGetUserByKey.RecordCount > 0;
      if Result then
      begin
        UserProfile.Clear;

        self.login(aUser.User);
        aUser.User := self.UserProfile.User;

        // imposto come schema di Default lo schema della sessione in log in in questo momento..
        // SELECT system.setuserdefaultschema(:session_key, :p_user_id)
        if self.qryUserSessiondb_schema_id.AsInteger > 0 then
        begin
          qryGetUserByKey.Close;
          self.prcSetUserDefaultSchema.ParamByName('p_session_key').AsWideString := self.FSessionKey;
          self.prcSetUserDefaultSchema.ParamByName('p_user_id').AsInteger := aUser.User.Id;
          self.prcSetUserDefaultSchema.Execute;
        end;
        self.ServerFunctions.OpenDataset(qryGetUserByKey);

        if self.qryGetUserByKeydefault_schema_id.AsInteger <> self.qryUserSessiondb_schema_id.AsInteger then
          RaiseException('Errore di Assegnazione schema-utente contattare amministrazione sistema');

        // dopodiché verifico ed aggiorno lo user profile ....
        self.WriteLog('TdmPgSystemCommand.AddUser  qrySearchUserProfile');
        self.qrySearchUserProfile.ParamByName('db_user_key').AsString := self.FUserKey;
        self.ServerFunctions.OpenDataset(qrySearchUserProfile);
        if self.qrySearchUserProfile.RecordCount = 0 then
          self.qrySearchUserProfile.Append;
        aUser.SaveToDataset(self.qryGetUserByKey, self.qrySearchUserProfile);

        if qrySearchUserProfile.State in [dsInsert, dsEdit] then
          qrySearchUserProfile.Post;

        qrySearchUserProfile.Close;
        self.ServerFunctions.OpenDataset(qrySearchUserProfile);
        if qrySearchUserProfile.RecordCount = 0 then
          raise Exception.Create('qrySearchUserProfile Errore inserimento utente: ' +
            UserProfile.User.Id.ToString);
        self.UserProfile := aUser;
      end
      else
      begin
        self.WriteLog('TdmPgSystemCommand.AddUser = Errore di Creazione utente ..... ');
        self.WriteLog('TdmPgSystemCommand.AddUser Risultato: ' + self.FLastErrorMessage);
      end;
    end;
  except
    on e: Exception do
    begin
      self.WriteError('Errore TIWuserSessionErgoMercator.AddUser', e);
    end;
  end
end;

function TdmPgSystemCommand.AdminAddUser(User: TJanuaRecordUserProfile): boolean;
var
  vcount: integer;
  // p_email, p_userName, p_password: string;
  LProfile: TJanuaRecordUserProfile;
begin
  LProfile.User.Username := User.FirstName + '_' + User.LastName + FormatDateTime('yy', User.BirthDate);
  LProfile.User.Email := User.User.Email;
  LProfile.User.Password := User.User.Password;

  try
    if not IsValidEmail(LProfile.User.Email) and IsValidEmail(LProfile.User.Username) then
      LProfile.User.Email := LProfile.User.Username;
    if not IsValidEmail(LProfile.User.Email) then
    begin
      Result := False;
      self.LastErrorMessage := 'Mail non Valida';
      FRegisterError := JreWrongEmail;
      Exit;
    end;
    FRegisterError := jreNone;
    if CheckUser(LProfile) then
      Result := True
    else
    begin
      FRegisterError := jreUserAlreadyRegistered;
      Result := False;
      LastErrorMessage := 'Utente già registrato';
    end;
    if Result then
    begin
      spUserAdd.ParamByName('p_email').AsWideString := LProfile.User.Email;
      spUserAdd.ParamByName('p_username').AsWideString := LProfile.User.Username;
      spUserAdd.ParamByName('p_password').AsWideString := LProfile.User.Password;
      spUserAdd.ParamByName('p_country_id').AsInteger := 1;
      spUserAdd.ParamByName('p_ispublic').AsBoolean := False;
      self.ServerFunctions.ExecuteProcedure(spUserAdd);
      self.FUserKey := spUserAdd.ParamByName('Result').AsString;
      Result := FUserKey <> 'Error';
      if not Result then
        LastErrorMessage := 'Utente non registrato da procedura di database';
    end;
  except
    on e: Exception do
    begin
      Result := False;
      LastErrorMessage := e.Message;
      FRegisterError := TJanuaRegisterError.jreSystemError;
      self.WriteError('TJanuaPostgresServerFunctions.AddUser', e);
    end;
  end;

  if Result then
  begin
    { TODO : Update the user profile controlled by administrator }
  end;
end;

function TdmPgSystemCommand.CheckUser(User: TJanuaRecordUserProfile): boolean;
var
  vcount: integer;
begin
  if User.User.SocialID = '' then
  begin
    Result := InternalCheckUser(vcount, User)
  end
  else
    Result := ServerFunctions.CheckUserSocial(User.User.SocialID, User.User.SocialType,
      self.spUserTestSocial);

  if not Result then
    self.FLastErrorMessage := 'User Already Registered';
end;

procedure TdmPgSystemCommand.CloseProfile;
begin
  if not self.FLocalTest then
    self.qryUserProfile.Close;
end;

procedure TdmPgSystemCommand.ConnectSession(SessionKey: string);
begin
  SetSessionKey(SessionKey);
  self.OpenProfile(self.UserID);
end;

procedure TdmPgSystemCommand.DataModuleCreate(Sender: TObject);
begin
  inherited;
  self.WriteLog('TdmPgSystemCommand.DataModuleCreate: TdmPgSystemCommand');
  FConfirmMail := False;
  FVerbose := True;
  UserProfile.Clear;
end;

function TdmPgSystemCommand.DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean;
var
  aUser: TJanuaUser;
begin
  Result := False;
  // questa funzione chiama la stored procedure di sistema che si occupa di registrare i pagamenti degli utenti al
  // servizio di abbonamento al server.
  // SELECT system.user_payment(:p_user_id, :p_schema_id, :p_amount, :p_interval_type, :p_interval_duration, :p_payment_date)
  try
    self.spUserPayment.ParamByName('p_user_id').AsInteger := aUserID;
    self.spUserPayment.ParamByName('p_schema_id').AsInteger := 0;
    self.spUserPayment.ParamByName('p_amount').AsCurrency := aAmount;
    self.spUserPayment.ParamByName('p_interval_type').AsWideString := 'Y';
    self.spUserPayment.ParamByName('p_interval_duration').AsSmallInt := 1;
    self.spUserPayment.ParamByName('p_payment_date').AsDate := aDate;
    spUserPayment.Execute;
    aUser := self.UserProfile.User;
    aUser.PaymentExpiration := self.spUserPayment.ParamByName('result').AsDate;
    self.FUserProfile.User := aUser;
    Result := True;
  except
    on e: Exception do
    begin
      self.LastErrorMessage := e.Message;
      self.Haserrors := True;
      self.WriteError('Error processing Payment user_id = ' + aUserID.ToString, e,
        'TdmPgSystemCommand.DoPayment');
    end;

  end;

end;

function TdmPgSystemCommand.findaddress(const aAddress: string): smallint;
begin
  self.qrySearchUserProfile.Close;
  self.qrySearchUserProfile.ParamByName('p_search').AsString := aAddress;
  self.ServerFunctions.OpenDataset(qrySearchUserProfile);
  Result := self.qrySearchUserProfile.RecordCount;
end;

function TdmPgSystemCommand.findaddressbyID(aID: Int64): smallint;
begin
  self.qrySearchUserProfile.Close;
  self.qrySearchUserProfile.ParamByName('p_id').AsLargeInt := aID;
  self.ServerFunctions.OpenDataset(qrySearchUserProfile);
  Result := self.qrySearchUserProfile.RecordCount;
end;

function TdmPgSystemCommand.FindUserByKey(key: string): boolean;
begin
  Result := False;
  try
    qryUserProfile.Close;
    qryUserProfile.ParamByName('db_user_id').AsInteger := 0;
    qryUserProfile.ParamByName('db_user_key').AsString := key;
    ServerFunctions.OpenDataset(qryUserProfile);
    Result := qryUserProfile.RecordCount > 0;
    // questa funzione però NON si occupa di 'sistemare' il discorso di assegnare
    // i dati di nazione regione provincia e città .....
    if Result then
      self.FGuestProfile.LoadFromDataset(self.qryUserProfile, self.qryUser)
      // (qryUserProfile, aUser);
  except
    on e: Exception do
    begin
      self.WriteError('TJanuaPostgresServerFunctions.FindUserByKey', e);
    end;
  end;

  {
    (const aKey: string; aQuery: TPgQuery; var aUser: TJanuaRecordUserProfile)


  }

end;

procedure TdmPgSystemCommand.GetSchemasList(SessionKey: string);
begin
  self.SetSessionKey(SessionKey);
  self.qrydbUserSchemas.ParamByName('db_user_id').AsInteger := qryUserProfiledb_user_id.AsInteger;
  self.ServerFunctions.OpenDataset(qrydbUserSchemas);
end;

procedure TdmPgSystemCommand.GetSession;
begin
  try
    if not qryUserSession.Connection.Connected then
      qryUserSession.Connection.Connect;
    if not qryUserSession.Prepared then
      qryUserSession.Prepare;
    qryUserSession.ParamByName('db_session_key').AsString := self.FSessionKey;
    OpenDataset(qryUserSession);
    self.FServerSession.LoadFromDataset(qryUserSession);
    qryUserSession.Close;
    qryUserSession.Connection.Disconnect;
  except
    on e: Exception do
    begin
      qryUserSession.Close;
      qryUserSession.Connection.Disconnect;
      WriteError('TJanuaPostgresServerFunctions.GetSession', e);
    end;
  end;
end;

function TdmPgSystemCommand.FindUserByID(Id: integer): boolean;
begin
  qryUserProfile.Close;
  qryUserProfile.ParamByName('db_user_id').AsInteger := Id;
  ServerFunctions.OpenDataset(qryUserProfile);
  Result := qryUserProfile.RecordCount > 0;
end;

procedure TdmPgSystemCommand.PgConnection1BeforeConnect(Sender: TObject);
begin

  self.WriteLog('PgErgoConnection.Server = ' + PgErgoConnection.Server);
end;

procedure TdmPgSystemCommand.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  // inherited session
end;

procedure TdmPgSystemCommand.qrySearchUsersBeforeOpen(DataSet: TDataSet);
begin
  if self.FSessionKey = '' then
    self.FSessionKey := self.FServerSession.key;

  qrySearchUsers.ParamByName('session_key').Value := self.FSessionKey;
end;

procedure TdmPgSystemCommand.SaveProfile(aProfile: TJanuaRecordUserProfile);
begin
  { SELECT db_user_id, country_id, region_id, district_id, town_id, first_name,
    last_name, address_street, address_number, address_postal_code,
    phone, cellular_phone, work_phone, fax_number, gender_code
    FROM system.db_users_profiles
    where db_user_id = :db_user_id }
  Assert(aProfile.User.Id > 0, 'SaveProfile User Profile ID = 0');
  try
    UserProfile := aProfile;
    OpenProfile(aProfile.User.Id);
    {
      // ****** profilo speciale per Sanità.........................................
      if (qryUserSessionpassword.AsString <> UserProfile.User.Password) or
      (qryUserSessionemail.AsString <> UserProfile.User.Password) then
      begin
      qryUserSession.Edit;
      qryUserSessionpassword.Value := UserProfile.User.Password;
      qryUserSessionemail.Value := UserProfile.User.Email;
      qryUserSession.Post;
      end;
    }
    if not qryUserProfile.Active then
    begin
      // (s.db_user_id = :db_user_id or :db_user_id = 0)
      qryUserProfile.ParamByName('db_user_id').AsInteger := aProfile.User.Id;
      qryUserProfile.Open;
    end;

    if qryUserProfile.RecordCount = 0 then
      qryUserProfile.Append;
    // if (self.qryUserProfile.RecordCount > 0) or (qryUserProfile.State = TDatasetState.dsInsert) then
    // begin

    qryUserProfile.Edit;
    if (qryUserProfiledb_user_id.AsInteger = 0) then
      qryUserProfiledb_user_id.AsInteger := aProfile.User.Id;

    // Profile
    qryUserProfilefirst_name.AsString := aProfile.FirstName;
    qryUserProfilelast_name.AsString := aProfile.LastName;
    qryUserProfilebirth_date.AsDateTime := aProfile.BirthDate;
    qryUserProfilegender_code.AsString := aProfile.Gender.GenderCode;

    // Birth Lcation
    qryUserProfilebirth_country_id.AsInteger := aProfile.BirthLocation.Country.Id;
    qryUserProfilebirth_region_id.AsInteger := aProfile.BirthLocation.Region.Id;
    qryUserProfilebirth_district_id.AsInteger := aProfile.BirthLocation.District.Id;
    qryUserProfilebirth_town_id.AsInteger := aProfile.BirthLocation.Town.Id;

    // Address
    if aProfile.Address.Location.Country.Id > 0 then
      qryUserProfilecountry_id.AsInteger := aProfile.Address.Location.Country.Id;
    if aProfile.Address.Location.Region.Id > 0 then
      qryUserProfileregion_id.AsInteger := aProfile.Address.Location.Region.Id;
    if aProfile.Address.Location.District.Id > 0 then
      qryUserProfiledistrict_id.AsInteger := aProfile.Address.Location.District.Id;
    if aProfile.Address.Location.Town.Id > 0 then
      qryUserProfiletown_id.AsInteger := aProfile.Address.Location.Town.Id;
    if aProfile.Address.StateProvince <> '' then
      qryUserProfileaddress_state_province.AsWideString := aProfile.Address.StateProvince;
    qryUserProfileaddress_street.AsString := aProfile.Address.Address;
    qryUserProfileaddress_number.AsString := aProfile.Address.Number;
    qryUserProfileaddress_postal_code.AsString := aProfile.Address.postalcode;
    qryUserProfileaddress_town.AsWideString := aProfile.Address.Town;
    qryUserProfilepublic_email.AsString := aProfile.Address.AddressMail;
    qryUserProfilephone.AsString := aProfile.Address.Phone;
    qryUserProfilecellular_phone.AsString := aProfile.Address.CellularPhone;
    qryUserProfilework_phone.AsString := aProfile.Address.WorkPhone;
    qryUserProfilefax_number.AsString := aProfile.Address.FaxNumber;
    if aProfile.FiscalCode <> '' then
      self.qryUserProfilefiscal_code.AsWideString := aProfile.FiscalCode;
    if aProfile.FacebookJSON <> '' then
      self.qryUserProfilefacebook_json.AsWideString := aProfile.FacebookJSON;
    qryUserProfile.Post;
    // end;

    if not self.FLocalTest then
      self.PgErgoConnection.Close;
  except
    on e: Exception do
      raise Exception.Create('TdmPgSystemCommand.SaveProfile error: ' + e.Message);
  end;
end;

function TdmPgSystemCommand.SearchUserByEmail(aMail: string): integer;
begin
  self.qrySearchUsers.Close;
  self.qrySearchUsers.ParamByName('p_search').AsString := aMail;
  self.qrySearchUsers.ParamByName('p_user_id').AsInteger := 0;
  self.ServerFunctions.OpenDataset(qrySearchUsers);
  OpenUserProfile;
  self.FSearchUserProfile.LoadFromDataset(qrySearchUsers, qrySearchUserProfile);

  Result := self.qrySearchUsers.RecordCount;

  if Result >= 1 then
    self.WriteLog('Trovato Utente: id= ' + aMail + ' = ' + qrySearchUsersfull_name.AsWideString)
  else
    self.WriteLog('Utente non trovato ...' + aMail);
end;

function TdmPgSystemCommand.SearchUserByID(aID: integer): integer;
begin
  self.qrySearchUsers.Close;
  self.qrySearchUsers.ParamByName('p_search').AsString := '%';
  self.qrySearchUsers.ParamByName('p_user_id').AsInteger := 0;
  self.ServerFunctions.OpenDataset(qrySearchUsers);
  OpenUserProfile;
  self.FSearchUserProfile.LoadFromDataset(qrySearchUsers, qrySearchUserProfile);

  Result := self.qrySearchUsers.RecordCount;

  if Result >= 1 then
    self.WriteLog('Trovato Utente: id= ' + aID.ToString + ' = ' + qrySearchUsersfull_name.AsWideString)
  else
    self.WriteLog('Utente non trovato ...' + aID.ToString);
end;

function TdmPgSystemCommand.SearchUserByName(aName: string): integer;
begin
  self.qrySearchUsers.Close;
  self.qrySearchUsers.ParamByName('p_search').AsString := aName;
  self.qrySearchUsers.ParamByName('p_user_id').AsInteger := 0;
  self.ServerFunctions.OpenDataset(qrySearchUsers);
  OpenUserProfile;
  self.FSearchUserProfile.LoadFromDataset(qrySearchUsers, qrySearchUserProfile);

  Result := self.qrySearchUsers.RecordCount;

  if Result >= 1 then
    self.WriteLog('Trovato Utente: id= ' + aName + ' = ' + qrySearchUsersfull_name.AsWideString)
  else
    self.WriteLog('Utente non trovato ...' + aName);
end;

function TdmPgSystemCommand.SearchUserBySocialID(aID, aSocial: string): integer;
begin
  Result := 1;
  { TODO : Implement search bz social id }
end;

procedure TdmPgSystemCommand.OpenUserProfile;
begin
  self.qrySearchUserProfile.Close;
  self.qrySearchUserProfile.ParamByName('p_search').AsString := '%';
  self.qrySearchUserProfile.ParamByName('p_user_id').AsInteger := qrySearchUsersdb_user_id.AsInteger;
  self.ServerFunctions.OpenDataset(qrySearchUserProfile);
end;

function TdmPgSystemCommand.SearchUsers(pusername: string): integer;
begin
  { (
    search_name like   '%' || upper(replace(:p_search, ' ', '%')) || '%'
    or
    reverse_search like  '%' || upper(replace(:p_search, ' ', '%')) || '%'
    ) }

  self.qrySearchUsers.Close;
  self.qrySearchUsers.ParamByName('p_search').AsString := pusername;
  self.ServerFunctions.OpenDataset(qrySearchUsers);

  Result := self.qrySearchUsers.RecordCount;
  if Result >= 1 then
    self.WriteLog('Primo Utente: ' + qrySearchUsersfull_name.AsWideString)
  else
    self.WriteLog('Utente non trovato ...' + pusername);

end;

procedure TdmPgSystemCommand.SetConfirmMail(const Value: boolean);
begin
  FConfirmMail := Value;
end;

procedure TdmPgSystemCommand.SetGuestByKey(const aKey: string);
begin
  FindUserByKey(aKey);
end;

procedure TdmPgSystemCommand.SetGuestProfile(const Value: TJanuaRecordUserProfile);
begin
  FGuestProfile := Value;
end;

procedure TdmPgSystemCommand.SetGuestUserKey(const Value: string);
begin
  FGuestUserKey := Value;
  // questa chiave se impostata permette ad un amministratore di gestire un
  // profilo di un utente 'guest' appunto ma anche (eventualmente) di potere
  // gestire il profilo di una 'pagina' o di una azienda
  // notare che aziende, studi, società e pagine hanno uno schema
  // ma non hanno il diritto di login al sistema dipendendo da un amministratore
  self.SetGuestByKey(Value);
end;

procedure TdmPgSystemCommand.SetLocalTest(const Value: boolean);
begin
  FLocalTest := Value;
end;

procedure TdmPgSystemCommand.SetLoggedIn(const Value: boolean);
begin
  FLoggedIn := Value;
end;

procedure TdmPgSystemCommand.SetProfileFromQuery;
begin
  WriteLog('TdmPgSystemCommand.SetProfileFromQuery');
  OpenProfile(self.UserID);
  // TJanuaRecordUserProfile.LoadFromDataset(dsUser, dsProfile: TDataset);
  self.UserProfile.LoadFromDataset(self.qryUserSession, self.qryUserProfile);
  CloseProfile;
end;

procedure TdmPgSystemCommand.SetRegisterError(const Value: TJanuaRegisterError);
begin
  FRegisterError := Value;
end;

procedure TdmPgSystemCommand.SetSearchUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FSearchUserProfile := Value;
end;

procedure TdmPgSystemCommand.SetSelectedSchema(const Value: Int64);
begin
  if FSelectedSchema <> Value then
  begin
    if (not self.qryUserSession.Active) then
      self.ServerFunctions.OpenDataset(qryUserSession);

    if (self.qryUserSession.RecordCount = 0) then
    begin
      self.ServerFunctions.OpenDataset(qryUserSession)
    end;

    if self.qryUserSessiondb_schema_id.AsInteger <> Value then
    begin
      self.qryUserSession.Edit;
      self.qryUserSessiondb_schema_id.AsInteger := Value;
      self.ServerFunctions.PostDataset(qryUserSession);
    end;
    FSelectedSchema := Value
  end;
end;

procedure TdmPgSystemCommand.SetUserKey(const Value: String);
begin
  FUserKey := Value;
end;

function TdmPgSystemCommand.StartSessionByUrl(aUrl: string): boolean;
begin
  // SELECT system.startsessionbyurl(:p_url)
  self.spStartSessionByUrl.ParamByName('p_url').AsWideString := aUrl;
  spStartSessionByUrl.Prepare;
  self.spStartSessionByUrl.ExecProc;
  self.FServerSession.key := self.spStartSessionByUrl.ParamByName('result').AsWideString;
  if self.FServerSession.key = '' then
  begin
    self.qrySessionByUrl.Close;
    qrySessionByUrl.ParamByName('p_url').AsWideString := aUrl;
    qrySessionByUrl.Open;
    FServerSession.key := qrySessionByUrlstartsessionbyurl.AsWideString
  end;
  SetSessionKey(self.FServerSession.key);

  Result := self.UserID > 0;
end;

end.
