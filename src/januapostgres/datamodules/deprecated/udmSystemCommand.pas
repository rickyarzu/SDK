unit udmSystemCommand;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Data.DB,
  PgAccess, MemDS, DBAccess, Janua.Core.System, Janua.Postgres.Functions,
  Janua.Core.Functions, Janua.Core.Params, Janua.Core.Classes;

type
  TdmSystemCommand = class(TDataModule)
    PgConnection1: TPgConnection;
    spCreatePersonalSchema: TPgStoredProc;
    dspUserSessions: TDataSetProvider;
    spUserTest: TPgStoredProc;
    spUserAdd: TPgStoredProc;
    spLogin: TPgStoredProc;
    qryUserSession: TPgQuery;
    qryUserSessiondb_session_key: TWideStringField;
    qryUserSessiondb_user_id: TIntegerField;
    qryUserSessiondb_schema_id: TIntegerField;
    qryUserSessionactive: TBooleanField;
    qryUserSessionemail: TWideStringField;
    qryUserSessionpassword: TWideStringField;
    qryUserSessionusername: TWideStringField;
    qryUserSessionisactive: TBooleanField;
    qryUserSessionverify_token: TWideStringField;
    qryUserSessionverified: TBooleanField;
    qryUserSessiondefault_schema_id: TIntegerField;
    qryUserSessionispublic: TBooleanField;
    qryUserSessioninternal_key: TWideStringField;
    dsUserSession: TDataSource;
    tbUserSessionRoles: TPgTable;
    tbUserSessionRolesdb_schema_id: TIntegerField;
    tbUserSessionRolesrole_id: TSmallintField;
    tbUserSessionRolesdb_user_id: TIntegerField;
    qryUserProfile: TPgQuery;
    qryUserProfiledb_user_id: TIntegerField;
    qryUserProfilecountry_id: TSmallintField;
    qryUserProfileregion_id: TSmallintField;
    qryUserProfiledistrict_id: TSmallintField;
    qryUserProfiletown_id: TIntegerField;
    qryUserProfilefirst_name: TWideStringField;
    qryUserProfilelast_name: TWideStringField;
    qryUserProfileaddress_street: TWideStringField;
    qryUserProfileaddress_number: TWideStringField;
    qryUserProfileaddress_postal_code: TWideStringField;
    qryUserProfilephone: TWideStringField;
    qryUserProfilecellular_phone: TWideStringField;
    qryUserProfilework_phone: TWideStringField;
    qryUserProfilefax_number: TWideStringField;
    qryUserProfilegender_code: TWideStringField;
    qryUserProfilebirth_date: TPgDateField;
    qryUserProfilebirth_country_id: TSmallintField;
    qryUserProfilebirth_region_id: TSmallintField;
    qryUserProfilebirth_district_id: TSmallintField;
    qryUserProfilebirth_town_id: TIntegerField;
    qrySearchUserProfile: TPgQuery;
    qrySearchUsers: TPgQuery;
    qryUserSessiondb_session_id: TLargeintField;
    qryUserProfilepublic_email: TWideStringField;
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
    qrySearchUserProfilebirth_date: TPgDateField;
    qrySearchUserProfilebirth_country_id: TSmallintField;
    qrySearchUserProfilebirth_region_id: TSmallintField;
    qrySearchUserProfilebirth_district_id: TSmallintField;
    qrySearchUserProfilebirth_town_id: TIntegerField;
    qrySearchUserProfilepublic_email: TWideStringField;
    prcSetUserDefaultSchema: TPgStoredProc;
    qryUserProfilesearch_name: TWideStringField;
    qryUserProfilereverse_search: TWideStringField;
    qryUserProfiletitle: TWideStringField;
    qrySearchUserProfilesearch_name: TWideStringField;
    qrySearchUserProfilereverse_search: TWideStringField;
    qrySearchUserProfiletitle: TWideStringField;
    qryUserSessionsearch_name: TWideStringField;
    qryUserSessiondefault_role_id: TSmallintField;
    qrySearchUsersdb_user_id: TIntegerField;
    qrySearchUsersemail: TWideStringField;
    qrySearchUserspublic_email: TWideStringField;
    qrySearchUserstitle: TWideStringField;
    qrySearchUsersfirst_name: TWideStringField;
    qrySearchUserslast_name: TWideStringField;
    qrySearchUsersfull_name: TWideStringField;
    dspSearchUsers: TDataSetProvider;
    dspUserSchemas: TDataSetProvider;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryUserProfileNewRecord(DataSet: TDataSet);
    procedure PgConnection1BeforeConnect(Sender: TObject);
    procedure qrySearchUsersBeforeOpen(DataSet: TDataSet);
  private
    FUserProfile: TJanuaRecordUserProfile;
    FSessionKey: String;
    FUserKey: String;
    FServerSession: TJanuaServerSession;
    FLastErrorMessage: string;
    FRegisterError: TJanuaRegisterError;
    FConfirmMail: boolean;
    FVerbose: boolean;
    FLoggedIn: boolean;
    FisServer: boolean;
    FLog: TStrings;
    FGuestUserKey: string;
    FGuestProfile: TJanuaRecordUserProfile;
    FLocalTest: boolean;
    FSelectedSchema: Int64;
    FJanuaServerSession: TJanuaServerSession;
    FJanuaCoreLogger: TJanuaCoreLogger;
    FServerFunctions: TJanuaPostgresServerFunctions;
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile);
    function InternalLogin: boolean;
    procedure OpenProfile;
    procedure CloseProfile;
    procedure WriteLog(log: string);
    procedure SetSessionKey(const Value: String);
    procedure SetUserKey(const Value: String);
    procedure SetServerSession(const Value: TJanuaServerSession);
    procedure SetLastErrorMessage(const Value: string);
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure SetConfirmMail(const Value: boolean);
    procedure SetVerbose(const Value: boolean);
    procedure SetLoggedIn(const Value: boolean);
    procedure SetLog(const Value: TStrings);
    procedure SetGuestUserKey(const Value: string);
    procedure SetGuestProfile(const Value: TJanuaRecordUserProfile);
    procedure SetLocalTest(const Value: boolean);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
    procedure SetServerFunctions(const Value: TJanuaPostgresServerFunctions);
    { Private declarations }
  public
    { Public declarations }
    procedure GetSchemasList(SessionKey: string);
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
    function login(aUser: Janua.Core.System.TJanuaUser): boolean;
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(aID: Int64): smallint;
    procedure SetGuestByKey(const aKey: string);
    procedure ConnectSession(SessionKey: string);
    function SearchUsers(pusername: string): integer;

  published
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    property SessionKey: String read FSessionKey write SetSessionKey;
    property UserKey: String read FUserKey write SetUserKey;
    property ServerSession: TJanuaServerSession read FServerSession write SetServerSession;
    property LastErrorMessage: string read FLastErrorMessage write SetLastErrorMessage;
    property RegisterError: TJanuaRegisterError read FRegisterError write SetRegisterError;
    property Verbose: boolean read FVerbose write SetVerbose;
    property ConfirmMail: boolean read FConfirmMail write SetConfirmMail;
    property LoggedIn: boolean read FLoggedIn write SetLoggedIn;
    property log: TStrings read FLog write SetLog;
    property GuestUserKey: string read FGuestUserKey write SetGuestUserKey;
    property GuestProfile: TJanuaRecordUserProfile read FGuestProfile write SetGuestProfile;
    property LocalTest: boolean read FLocalTest write SetLocalTest;
    property SelectedSchema: Int64 read FSelectedSchema write SetSelectedSchema;
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession
      write SetJanuaServerSession;
    property JanuaCoreLogger: TJanuaCoreLogger read FJanuaCoreLogger write SetJanuaCoreLogger;
    property ServerFunctions: TJanuaPostgresServerFunctions read FServerFunctions write SetServerFunctions;
  end;

var
  dmSystemCommand: TdmSystemCommand;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}
{ TdmSystemCommand }

function TdmSystemCommand.InternalLogin: boolean;
begin
  WriteLog('TdmSystemCommand.InternalLogin');

  if (self.FUserProfile.User.Username = '') and (self.FUserProfile.User.Email = '') then
    raise Exception.Create
      ('dmSystemCommand.InternalLogin Error self.FUserProfile.User.Username is null ');

  if IsMail(self.FUserProfile.User.Username) and (self.FUserProfile.User.Email = '') then
    self.FUserProfile.User.Email := self.FUserProfile.User.Username;

  if (self.FUserProfile.User.Password = '') then
    raise Exception.Create
      ('dmSystemCommand.InternalLogin Error self.FUserProfile.User.Password is null ');

  if not assigned(spLogin) then
  begin
    WriteLog('Janua.Server.Functions.Login spLogin non assegnata');
    Exit(False);
  end;

  { CustomServer: boolean;
    CustomServerUrl: string;
    CustomServerPort: string;
    CustomServerSchema: string; }

  if FJanuaServerSession.CustomServer then
  begin
    self.PgConnection1.Server := FJanuaServerSession.CustomServerUrl;
    self.PgConnection1.Port := FJanuaServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := FJanuaServerSession.CustomServerSchema;
  end;

  if not spLogin.Connection.Connected then
    spLogin.Connection.Connected := True;
  WriteLog('Sessione Connessa a PostGres');

  WriteLog('Login:  spLogin.Prepare');
  if not spLogin.Prepared then
    spLogin.Prepare;

  try
    WriteLog('Tentativo Login: ' + self.FUserProfile.User.Email + '/' +
      self.FUserProfile.User.Password);

    if IsMail(self.FUserProfile.User.Email) then
    begin
      if not IsValidEmail(self.FUserProfile.User.Email) then
      begin
        WriteLog('Tentativo Login con Mail Errata: ' + self.FUserProfile.User.Email);
        self.LastErrorMessage := 'Tentativo Login con Mail Errata: ';
        spLogin.ParamByName('p_email').AsString := '';
        spLogin.ParamByName('p_username').AsString := self.FUserProfile.User.Email;
      end
      else
      begin
        spLogin.ParamByName('p_email').AsString := self.FUserProfile.User.Email;
        WriteLog('Tentativo connessione udando indrizzo Mail:' + self.FUserProfile.User.Email);
        spLogin.ParamByName('p_username').AsString := '';
      end;
    end
    else
    begin
      if (self.FUserProfile.User.Email = '') then
        spLogin.ParamByName('p_username').AsString := self.FUserProfile.User.Username
      else if (self.FUserProfile.User.Email > '') and (self.FUserProfile.User.Username = '') then
        spLogin.ParamByName('p_username').AsString := self.FUserProfile.User.Email
      else
        spLogin.ParamByName('p_username').AsString := self.FUserProfile.User.Username;

      spLogin.ParamByName('p_email').AsString := '';
      WriteLog('Tentativo connessione usando username:' + self.FUserProfile.User.Email);
    end;

    spLogin.ParamByName('p_password').AsString := self.FUserProfile.User.Password;
    spLogin.ExecProc;
    // FUserID := spLogin.ParamByName('Result').AsLargeInt;
    WriteLog('Tentativo Login risultato: ' + spLogin.ParamByName('Result').AsWideString);

    self.FSessionKey := spLogin.ParamByName('Result').AsString;
    Result := (FSessionKey <> 'Error') and (FSessionKey <> '');

    if not self.FLocalTest then
      spLogin.Connection.Close;

  except
    on e: Exception do
    begin
      Result := False;
      WriteLog('Errore funzione di TServerMethodsCore.Login: ' + sLineBreak + e.Message);
      self.FLastErrorMessage := ('Errore funzione di TServerMethodsCore.Login: ' + sLineBreak +
        e.Message);
    end;
  end;
end;

function TdmSystemCommand.login(aUser: Janua.Core.System.TJanuaUser): boolean;
begin
  try
    try
      Result := True;

      WriteLog('email: ' + aUser.Email);
      WriteLog('Password: ' + aUser.Password);

      WriteLog('Controllo email');
      if aUser.Email = '' then
      begin
        Result := False;
        FLastErrorMessage := 'Attenzione non avete compilato la mail';
        WriteLog('Attenzione non avete compilato la mail');
      end;

      WriteLog('Controllo password');
      if (aUser.Password = '') and Result then
      begin
        Result := False;
        FLastErrorMessage := 'Attenzione non avete compilato la password';
        WriteLog(FLastErrorMessage);
      end;

      if Result then
      begin
        WriteLog('Controlli OK avvio Login');
        if not assigned(self.spLogin) then
          raise Exception.Create('spLogin non assegnata da costruttore...');
        self.FUserProfile.User := aUser;
        Result := self.InternalLogin;
        self.FUserProfile.User := aUser;
        if Result then
          self.FServerSession := FServerFunctions.GetSession(self.FSessionKey, self.qryUserSession,
            True, FLastErrorMessage);
      end;

      self.FLoggedIn := Result;

      if self.FLoggedIn then
        SetProfileFromQuery;

    finally
      if not self.FLocalTest then
        self.PgConnection1.Close;
    end;

  except
    on e: Exception do
    begin
      self.WriteLog('Errore TIWuserSessionErgoMercator.login' + sLineBreak + e.Message);
      raise;
    end;
  end
end;

function TdmSystemCommand.AddUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  try
    self.WriteLog('TdmSystemCommand.AddUser = Creazione utente ..... TJanuaRecordUserProfile');
    Result := FServerFunctions.AddUser(self.spUserAdd, self.spUserTest,
      aUser.FirstName + '_' + aUser.LastName + FormatDateTime('yy', aUser.BirthDate),
      aUser.User.Email, aUser.User.Password, True, self.FLastErrorMessage, 1, self.FUserKey,
      self.FRegisterError);

    self.WriteLog('TdmSystemCommand.AddUser fine Creazione utente ' + self.FLastErrorMessage);

    // se la creazione di un nuovo utente va per il verso giusto da risultato OK
    if Result then

    // occorre modificare leggermente la procedura di gestione utente e sessione
    // siccome qui ? un utente nuovo che si sta registrando con il suo profilo
    // dovremmo avere una 'variante' di sessione in cui un utente admin
    // crea e gestisce il profilo di un altro utente partendo dalla propria
    // sessione in questo caso il server deve verificare se l'amministratore
    // ? veramente un utente amministratoe ed ha i diritti di farmo
    begin
      // SELECT system.setuserdefaultschema(:session_key, :p_user_id)
      self.WriteLog('TdmSystemCommand.AddUser Risultato OK' + self.FLastErrorMessage);
      self.qryGetUserByKey.ParamByName('verify_token').AsString := self.FUserKey;
      self.qryGetUserByKey.Open;
      Result := self.qryGetUserByKey.RecordCount > 0;
      if Result then
      begin
        if not qryUserSession.Active then
          qryUserSession.Open;

        aUser.User.Id := self.qryGetUserByKeydb_user_id.AsInteger;
        // imposto come schema di Default lo schema della sessione in log in in questo momento..
        // SELECT system.setuserdefaultschema(:session_key, :p_user_id)
        if self.qryUserSessiondb_schema_id.AsInteger > 0 then
        begin
          qryGetUserByKey.Close;
          self.prcSetUserDefaultSchema.ParamByName('p_session_key').AsWideString :=
            self.FSessionKey;
          self.prcSetUserDefaultSchema.ParamByName('p_user_id').AsInteger := aUser.User.Id;
          self.prcSetUserDefaultSchema.Execute;
        end;
        qryGetUserByKey.Open;

        if self.qryGetUserByKeydefault_schema_id.AsInteger <> self.qryUserSessiondb_schema_id.AsInteger
        then
          raise Exception.Create
            ('Errore di Assegnazione schema-utente contattare amministrazione sistema');

        // dopodich? verifico ed aggiorno lo user profile ....
        self.WriteLog('TdmSystemCommand.AddUser  qrySearchUserProfile.Open');
        self.qrySearchUserProfile.ParamByName('db_user_key').AsString := self.FUserKey;
        self.qrySearchUserProfile.Open;
        if self.qrySearchUserProfile.RecordCount = 0 then
          self.qrySearchUserProfile.Append;
        aUser.SaveToDataset(self.qryGetUserByKey, self.qrySearchUserProfile);
      end;
    end
    else
    begin
      self.WriteLog('TdmSystemCommand.AddUser = Errore di Creazione utente ..... ');
      self.WriteLog('TdmSystemCommand.AddUser Risultato: ' + self.FLastErrorMessage);
    end;
  except
    on e: Exception do
    begin
      self.WriteLog('Errore TIWuserSessionErgoMercator.AddUser' + sLineBreak + e.Message);
      raise;
    end;
  end
end;

function TdmSystemCommand.AdminAddUser(User: TJanuaRecordUserProfile): boolean;
begin
  Result := FServerFunctions.AddUser(self.spUserAdd, self.spUserTest,
    User.FirstName + '_' + User.LastName + FormatDateTime('yy', User.BirthDate), User.User.Email,
    User.User.Password, True, self.FLastErrorMessage, 1, self.FUserKey, self.FRegisterError);

  if Result then
  begin

  end;
end;

function TdmSystemCommand.CheckUser(User: TJanuaRecordUserProfile): boolean;
begin
  Result := FServerFunctions.CheckUser(User.FirstName + '_' + User.LastName + FormatDateTime('yy',
    User.BirthDate), User.User.Email, self.spUserTest)
end;

procedure TdmSystemCommand.CloseProfile;
begin
  if not self.FLocalTest then
    self.qryUserProfile.Close;
end;

procedure TdmSystemCommand.ConnectSession(SessionKey: string);
begin
  self.SetSessionKey(SessionKey);
  self.OpenProfile;
end;

procedure TdmSystemCommand.DataModuleCreate(Sender: TObject);
begin
  FServerFunctions := Janua.Postgres.Functions.TJanuaPostgresServerFunctions.Create(self);
  self.FLog := TStringList.Create;
  self.WriteLog('TdmSystemCommand.DataModuleCreate: TdmSystemCommand');
  FConfirmMail := False;
  self.FJanuaServerSession.CustomServerPort := '5432';
  FVerbose := True;
end;

function TdmSystemCommand.findaddress(const aAddress: string): smallint;
begin
  self.qrySearchUserProfile.Close;
  self.qrySearchUserProfile.ParamByName('p_search').AsString := aAddress;
  self.qrySearchUserProfile.Open;
  Result := self.qrySearchUserProfile.RecordCount;
end;

function TdmSystemCommand.findaddressbyID(aID: Int64): smallint;
begin
  self.qrySearchUserProfile.Close;
  self.qrySearchUserProfile.ParamByName('p_id').AsLargeInt := aID;
  self.qrySearchUserProfile.Open;
  Result := self.qrySearchUserProfile.RecordCount;
end;

function TdmSystemCommand.FindUserByKey(key: string): boolean;
begin
  qryUserProfile.Close;
  qryUserProfile.ParamByName('db_user_key').AsString := key;
  FServerFunctions.OpenDataset(qryUserProfile);
  Result := qryUserProfile.RecordCount > 0;
  { TODO :
    ricercare un profilo utente completo attraverso una stored procedure che lo elabori
    impiegare ove possibile delle stored procedure basate su text (clob) basato su a
    array json }
end;

procedure TdmSystemCommand.GetSchemasList(SessionKey: string);
begin
  self.SetSessionKey(SessionKey);
  self.qrydbUserSchemas.ParamByName('db_user_id').AsInteger := qryUserProfiledb_user_id.AsInteger;
  self.qrydbUserSchemas.Open;
end;

function TdmSystemCommand.FindUserByID(Id: integer): boolean;
begin
  qryUserProfile.Close;
  qryUserProfile.ParamByName('db_user_id').AsInteger := Id;
  FServerFunctions.OpenDataset(qryUserProfile);
  Result := qryUserProfile.RecordCount > 0;
end;

procedure TdmSystemCommand.OpenProfile;
begin
  if (self.FSessionKey > '') and (self.FSessionKey <> 'Error') then
    try
      if not self.PgConnection1.Connected then
        self.PgConnection1.Connect;
      self.WriteLog('TdmSystemCommand.OpenProfile open qryUserSession: ' + self.FSessionKey);
      self.qryUserSession.ParamByName('db_session_key').AsString := self.FSessionKey;
      FServerFunctions.OpenDataset(self.qryUserSession);
      self.FUserKey := self.qryUserSessionverify_token.AsString;
      FServerFunctions.OpenDataset(self.tbUserSessionRoles);
      FServerFunctions.OpenDataset(self.qryUserProfile);
      self.WriteLog('TdmSystemCommand.OpenProfile open qryUserProfile record: ' +
        qryUserProfile.RecordCount.ToString());
    except
      on e: Exception do
      begin
        self.WriteLog('TdmSystemCommand.OpenProfile errore: ' + sLineBreak + e.Message);
        raise;
      end;
    end;
end;

procedure TdmSystemCommand.PgConnection1BeforeConnect(Sender: TObject);
begin
  if self.JanuaServerSession.CustomServer then
  begin
    self.WriteLog('TdmSystemCommand.PgConnection1BeforeConnect CustomServer: ' +
      JanuaServerSession.CustomServerUrl + ':' + JanuaServerSession.CustomServerPort + ':' +
      JanuaServerSession.CustomServerSchema);
    self.PgConnection1.Server := JanuaServerSession.CustomServerUrl;
    self.PgConnection1.Port := JanuaServerSession.CustomServerPort.ToInteger;
    self.PgConnection1.Database := JanuaServerSession.CustomServerSchema;
  end;
  self.WriteLog('PgConnection1.Server = ' + PgConnection1.Server);
end;

procedure TdmSystemCommand.qrySearchUsersBeforeOpen(DataSet: TDataSet);
begin
  if self.FSessionKey = '' then
    self.FSessionKey := self.FJanuaServerSession.key;

  qrySearchUsers.ParamByName('session_key').Value := self.FSessionKey;
end;

procedure TdmSystemCommand.qryUserProfileNewRecord(DataSet: TDataSet);
begin
  qryUserProfiledb_user_id.Value := qryUserSessiondb_user_id.Value;
  qryUserProfilecountry_id.Value := 1;
  qryUserProfilepublic_email.Value := qryUserSessionemail.AsString;
end;

procedure TdmSystemCommand.SaveProfile(aProfile: TJanuaRecordUserProfile);
begin
  { SELECT db_user_id, country_id, region_id, district_id, town_id, first_name,
    last_name, address_street, address_number, address_postal_code,
    phone, cellular_phone, work_phone, fax_number, gender_code
    FROM system.db_users_profiles
    where db_user_id = :db_user_id }

  FUserProfile := aProfile;

  OpenProfile;
  {
    // ****** profilo speciale per Sanit?.........................................
    if (qryUserSessionpassword.AsString <> FUserProfile.User.Password) or
    (qryUserSessionemail.AsString <> FUserProfile.User.Password) then
    begin
    qryUserSession.Edit;
    qryUserSessionpassword.Value := FUserProfile.User.Password;
    qryUserSessionemail.Value := FUserProfile.User.Email;
    qryUserSession.Post;
    end;
  }

  if self.qryUserProfile.RecordCount > 0 then
  begin

    qryUserProfile.Edit;

    // Profile
    qryUserProfilefirst_name.AsString := FUserProfile.FirstName;
    qryUserProfilelast_name.AsString := FUserProfile.LastName;
    qryUserProfilebirth_date.AsDateTime := FUserProfile.BirthDate;

    if FUserProfile.Gender = TJanuaGenderType.jgtFemale then
      FUserProfile.GenderCode := 'F'
    else
      FUserProfile.GenderCode := 'M';
    qryUserProfilegender_code.AsString := FUserProfile.GenderCode;

    // Birth Lcation
    qryUserProfilebirth_country_id.AsInteger := FUserProfile.BirthLocation.Country.Id;
    qryUserProfilebirth_region_id.AsInteger := FUserProfile.BirthLocation.Region.Id;
    qryUserProfilebirth_district_id.AsInteger := FUserProfile.BirthLocation.District.Id;
    qryUserProfilebirth_town_id.AsInteger := FUserProfile.BirthLocation.Town.Id;

    // Address
    qryUserProfilecountry_id.AsInteger := FUserProfile.Address.Location.Country.Id;
    qryUserProfileregion_id.AsInteger := FUserProfile.Address.Location.Region.Id;
    qryUserProfiledistrict_id.AsInteger := FUserProfile.Address.Location.District.Id;
    qryUserProfiletown_id.AsInteger := FUserProfile.Address.Location.Town.Id;
    qryUserProfileaddress_street.AsString := FUserProfile.Address.Address;
    qryUserProfileaddress_number.AsString := FUserProfile.Address.Number;
    qryUserProfileaddress_postal_code.AsString := FUserProfile.Address.PostalCode;
    qryUserProfilepublic_email.AsString := FUserProfile.Address.AddressMail;
    qryUserProfilephone.AsString := FUserProfile.Address.Phone;
    qryUserProfilecellular_phone.AsString := FUserProfile.Address.CellularPhone;
    qryUserProfilework_phone.AsString := FUserProfile.Address.WorkPhone;
    qryUserProfilefax_number.AsString := FUserProfile.Address.FaxNumber;

    qryUserProfile.Post;
  end;

  if not self.FLocalTest then
    self.PgConnection1.Close;
end;

function TdmSystemCommand.SearchUsers(pusername: string): integer;
begin
  { (
    search_name like   '%' || upper(replace(:p_search, ' ', '%')) || '%'
    or
    reverse_search like  '%' || upper(replace(:p_search, ' ', '%')) || '%'
    ) }

  self.qrySearchUsers.Close;
  self.qrySearchUsers.ParamByName('p_search').AsString := pusername;
  self.FServerFunctions.OpenDataset(qrySearchUsers);

  Result := self.qrySearchUsers.RecordCount;
  if Result >= 1  then Self.WriteLog('Primo Utente: ' + qrySearchUsersfull_name.AsWideString)
  else self.WriteLog('Utente non trovato ...' + pusername );


end;

procedure TdmSystemCommand.SetConfirmMail(const Value: boolean);
begin
  FConfirmMail := Value;
end;

procedure TdmSystemCommand.SetGuestByKey(const aKey: string);
begin
  FServerFunctions.FindUserByKey(aKey, self.qrySearchUserProfile, self.FGuestProfile);
end;

procedure TdmSystemCommand.SetGuestProfile(const Value: TJanuaRecordUserProfile);
begin
  FGuestProfile := Value;
end;

procedure TdmSystemCommand.SetGuestUserKey(const Value: string);
begin
  FGuestUserKey := Value;
  // questa chiave se impostata permette ad un amministratore di gestire un
  // profilo di un utente 'guest' appunto ma anche (eventualmente) di potere
  // gestire il profilo di una 'pagina' o di una azienda
  // notare che aziende, studi, societ? e pagine hanno uno schema
  // ma non hanno il diritto di login al sistema dipendendo da un amministratore
  self.SetGuestByKey(Value);
end;


procedure TdmSystemCommand.SetJanuaCoreLogger(const Value: TJanuaCoreLogger);
begin
  FJanuaCoreLogger := Value;
  if assigned(FJanuaCoreLogger) then
    FServerFunctions.JanuaLogger := FJanuaCoreLogger;

end;

procedure TdmSystemCommand.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TdmSystemCommand.SetLastErrorMessage(const Value: string);
begin
  FLastErrorMessage := Value;
end;

procedure TdmSystemCommand.SetLocalTest(const Value: boolean);
begin
  FLocalTest := Value;
end;

procedure TdmSystemCommand.SetLog(const Value: TStrings);
begin
  FLog := Value;
end;

procedure TdmSystemCommand.SetLoggedIn(const Value: boolean);
begin
  FLoggedIn := Value;
end;

procedure TdmSystemCommand.SetProfileFromQuery;
begin
  WriteLog('TdmSystemCommand.SetProfileFromQuery');
  OpenProfile;
  // User Session
  self.FUserProfile.LoadFromDataset(self.qryUserSession, self.qryUserProfile);
  CloseProfile;
end;

procedure TdmSystemCommand.SetRegisterError(const Value: TJanuaRegisterError);
begin
  FRegisterError := Value;
end;

procedure TdmSystemCommand.SetSelectedSchema(const Value: Int64);
begin
  if FSelectedSchema <> Value then
  begin
    if (not self.qryUserSession.Active)  then
      self.FServerFunctions.OpenDataset(qryUserSession);

    if (self.qryUserSession.RecordCount = 0) then
    begin
       self.FServerFunctions.OpenDataset(qryUserSession)
    end;

    if self.qryUserSessiondb_schema_id.AsInteger <> Value then
    begin
      self.qryUserSession.Edit;
      self.qryUserSessiondb_schema_id.AsInteger := Value;
      self.FServerFunctions.PostPgDataset(qryUserSession);
    end;
    FSelectedSchema := Value
  end;
end;

procedure TdmSystemCommand.SetServerFunctions(const Value: TJanuaPostgresServerFunctions);
begin
  FServerFunctions := Value;
end;

procedure TdmSystemCommand.SetServerSession(const Value: TJanuaServerSession);
begin
  FServerSession := Value;
end;

procedure TdmSystemCommand.SetSessionKey(const Value: String);
begin
  if Value <> '' then
    if self.FSessionKey <> Value then
    begin
      self.qryUserSession.Close;
      self.FSessionKey := Value;
      self.OpenProfile;
    end;
end;

procedure TdmSystemCommand.SetUserKey(const Value: String);
begin
  FUserKey := Value;
end;

procedure TdmSystemCommand.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FUserProfile := Value;
end;

procedure TdmSystemCommand.SetVerbose(const Value: boolean);
begin
  FVerbose := Value;
end;

procedure TdmSystemCommand.WriteLog(log: string);
begin
  try
    if assigned(FLog) then
    begin
      self.FLog.Add(DateTimeToStr(Now));
      self.FLog.Add(log);
    end;

    self.FServerFunctions.WriteLog(Log);

  except
    on e: Exception do
    begin
      // ('Errore Write log');
      self.FServerFunctions.WriteError('TdmSystemCommand.WriteLog: Errore scrittura log', e);
    end;

  end;
  // self.FLog.Add(log);
end;

end.
