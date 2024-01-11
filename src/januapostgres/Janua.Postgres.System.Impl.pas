unit Janua.Postgres.System.Impl;

interface

uses Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.Types,
  // Orm
  JOrm.System.UserProfile.Custom.Intf,  JORM.System.Intf,
  // Parent
  Janua.Cms.Server.Impl, Janua.System.Server.Intf, Janua.System.Server.Impl, Janua.System.Postgres.Storage;

type
  TJanuaPgSystemStorage = class(TJanuaDBSystemStorage, IJanuaStorage, IJanuaSystemStorage)
    { Private declarations }
  strict private
    FFDM: Janua.System.Postgres.Storage.TdmPgSystemStorage;
    function FDM: Janua.System.Postgres.Storage.TdmPgSystemStorage;
  private
    procedure CloseProfile; override;
    function InternalAddUser(const aUser: IUserProfile): boolean;
    function InternalAddUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUser(var count: integer; aUser: IUserProfile): boolean;
    function OpenProfile(aUserID: integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  strict protected
    /// <summary> System Storage Dataset </summary>
    procedure InternalCreateDBDataSets;
    procedure InternalCreateDataset;
    procedure InternalDestroyDataset;
    function InternalLoginSocial: boolean;
    function InternalLogin: boolean;
  public
    { Public declarations }
    procedure SetSelectedSchema(const Value: Int64); override;
    function SaveProfile(const aProfile: IUserProfile): boolean; override;
    procedure OpenUserProfile; override;
    /// <summary> Imposta la lista degli Schemi </summary>
    procedure SetProfileFromQuery; override;
    function FindUserByKey(const key: string): boolean; override;
    function FindUserByID(const Id: integer): boolean; override;
    function CheckUser(const aUser: IUserProfile): boolean; override;
    function AddUser(const aUser: IUserProfile): boolean; override;
    /// <summary> funzione che crea un utente partendo da un profilo utente auto registrato</summary>
    function AdminAddUser(const aUser: IUserProfile): boolean; override;
    /// <summary> funzione che crea un utente creando un profilo utente da Amministratore </summary>
    function login(const aUser: IUser): boolean; override;
    function LoginByKey(const aKey: string): boolean; override;
    function LoginByKey: boolean; override;
    procedure GetSession; override;
    function findaddress(const aAddress: string): smallint; override;
    function findaddressbyID(const aID: Int64): smallint; override;
    procedure GetSchemasList(const SessionKey: string); override;
    function SearchUserByID(const aID: integer): boolean; override;
    function SearchUserByName(const aName: string): boolean; override;
    function SearchUserByEmail(const aMail: string): boolean; override;
    function SearchUserBySocialID(aID: string; aSocial: string): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by TGUID </summary>
    function SearchUserByGUID(const aGUID: TGUID): boolean; override;
    // è possibile avviare una Sessione Pubblica direttamente da un URL
    function StartSessionByUrl(const aUrl: string): boolean; deprecated;
    /// <summary> basic payment function, on searched user found by ID or Token or EMail </summary>
    function DoPaymentSearchUser(const aAmount: Currency; const aDate: TDate): boolean; override;
    /// <summary> basic payment function, on session or user logged in  </summary>
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean; override;
    function SearchUsers(const aUserName, aEmail: string): integer; override;
    function SearchUserByKey(const aKey: string): boolean; override;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: integer): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): boolean; override;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): boolean; override;
  end;

type
  TJanuaServerPgSystemFactory = class(TJanuaServerSystemFactory, IJanuaServerSystemFactory)
  public
    function GetSystemStorage: IJanuaSystemStorage; override;
  end;

implementation

uses System.SysUtils, Janua.Orm.UniDac, Data.DB, Janua.Core.Functions, Spring, System.StrUtils;

{ TJanuaSystemStorage }

function TJanuaPgSystemStorage.AddUser(const aUser: IUserProfile): boolean;
var
  p_userName: string;
begin
  self.WriteLocalLog('AddUser', 'Creazione utente ..... TJanuaRecordUserProfile');
  Result := False;
  try
    if aUser.User.ValidateUser then
    begin
      if (aUser.User.SocialID.AsString = '') then
        Result := self.InternalAddUser(aUser)
        // Result := ServerFunctions.AddUser(self.spUserAdd, self.spUserTest, aUser.User.Username, aUser.User.Email,
        // aUser.User.Password, True, self.FLastErrorMessage, 1, self.FUserKey, self.FRegisterError)
      else
        Result := self.InternalAddUserSocial(aUser);
      self.WriteLocalLog('AddUser', ' fine Creazione utente ' + self.LastErrorMessage);
    end;

    // ServerFunctions.AddUserSocial(self.spUserAddSocial, self.spUserTestSocial, aUser.User.SocialID,
    // aUser.User.SocialType, aUser.User.Email, True, self.FLastErrorMessage, 1, self.FUserKey, self.FRegisterError);

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
      self.WriteLog('AddUser', ' Risultato OK' + self.LastErrorMessage);
      FDM.qryGetUserByKey.ParamByName('verify_token').AsString := FUserLogin.VerifyToken.AsString;
      FDM.ServerFunctions.OpenDataset(FDM.qryGetUserByKey);
      Result := FDM.qryGetUserByKey.RecordCount > 0;
      if Result then
      begin
        // self.GetUserProfile.Clear;
        FUserLogin.Clear;
        login(aUser.User);
        // self.GetUserProfile.
        aUser.User := FUserLogin;

        // imposto come schema di Default lo schema della sessione in log in in questo momento..
        // SELECT system.setuserdefaultschema(:session_key, :p_user_id)
        if FDM.qryUserSessiondb_schema_id.AsInteger > 0 then
        begin
          FDM.qryGetUserByKey.Close;
          FDM.prcSetUserDefaultSchema.ParamByName('p_session_key').AsWideString := self.GetSessionKey;
          FDM.prcSetUserDefaultSchema.ParamByName('p_user_id').AsInteger := aUser.User.DbUserId.AsInteger;
          FDM.prcSetUserDefaultSchema.Execute;
        end;
        FDM.ServerFunctions.OpenDataset(FDM.qryGetUserByKey);

        if FDM.qryGetUserByKeydefault_schema_id.AsInteger <> FDM.qryUserSessiondb_schema_id.AsInteger then
          raise exception.Create('Errore di Assegnazione schema-utente contattare amministrazione sistema');

        // dopodiché verifico ed aggiorno lo user profile ....
        self.WriteLocalLog('AddUser', '  qrySearchUserProfile');
        FDM.qrySearchUserProfile.ParamByName('db_user_key').AsString := FUserLogin.VerifyToken.AsString;
        FDM.ServerFunctions.OpenDataset(FDM.qrySearchUserProfile);
        if FDM.qrySearchUserProfile.RecordCount = 0 then
          FDM.qrySearchUserProfile.Append;
        aUser.SaveToDataset;
        { TODO : Implmentare SaveToDataset (FDM.qryGetUserByKey, FDM.qrySearchUserProfile); }
        // (FDM.qryGetUserByKey, FDM.qrySearchUserProfile);

        if FDM.qrySearchUserProfile.State in [dsInsert, dsEdit] then
          FDM.qrySearchUserProfile.Post;

        FDM.qrySearchUserProfile.Close;
        FDM.ServerFunctions.OpenDataset(FDM.qrySearchUserProfile);
        if FDM.qrySearchUserProfile.RecordCount = 0 then
          raise exception.Create('qrySearchUserProfile Errore inserimento utente: ' +
            FUserLogin.DbUserId.AsString);
        // self.SetUserProfile(aUser);
      end
      else
      begin
        self.WriteLocalLog('AddUser', ' = Errore di Creazione utente ..... ');
        self.WriteLocalLog('AddUser', ' Risultato: ' + self.LastErrorMessage);
      end;
    end;
    self.ClearLocalLog('AddUser');
  except
    on e: exception do
    begin
      self.WriteError('Errore TJanuaPgSystemStorage.AddUser', LogString, e);
    end;
  end;
  self.ClearLocalLog('AddUser');
end;

function TJanuaPgSystemStorage.AdminAddUser(const aUser: IUserProfile): boolean;
begin
  Result := False;
  if self.CheckUser(aUser) then
    Result := False;
  { TODO : Create AdminAddUser using the add-user procedure but without the login }

end;

function TJanuaPgSystemStorage.CheckUser(const aUser: IUserProfile): boolean;
begin
  if aUser.User.SocialID.AsString = '' then
    with FDM do
    begin
      spUserTest.ParamByName('p_username').AsWideString := aUser.User.Username.AsString;
      spUserTest.ParamByName('p_email').AsWideString := aUser.User.Email.AsString;
      ServerFunctions.ExecuteProcedure(spUserTest);
      Result := spUserTest.ParamByName('Result').AsInteger = 0;
    end
  else
    with FDM do
    begin
      spUserTestSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID.AsString;
      spUserTestSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType.AsString;
      ServerFunctions.ExecuteProcedure(spUserTestSocial);
      Result := spUserTest.ParamByName('Result').AsInteger = 0;
    end;
  if not Result then
    self.SetLastErrorMessage('User Already Registered');
end;

procedure TJanuaPgSystemStorage.CloseProfile;
begin
  inherited;
  { TODO : TJanuaPgSystemStorage.CloseProfile }
end;

constructor TJanuaPgSystemStorage.Create;
begin
  inherited;
  SetInternalCreateDBDataSets(InternalCreateDBDataSets);
  SetInternalCreateDataset(InternalCreateDataset);
  SetInternalDestroyDataset(InternalDestroyDataset);
end;

function TJanuaPgSystemStorage.DelUser(const aUser: IUserProfile): boolean;
begin
  Result := FindUserByID(aUser.Db_user_id.AsInteger) and DelUser;
end;

function TJanuaPgSystemStorage.DelUser: boolean;
var
  LInt: integer;
begin
  // SELECT system.userdel(:p_user_id)
  LInt := self.FUserLogin.DbUserId.AsInteger; // getSearchedUser.User.DbUserId.AsInteger;
  Result := LInt > 0;
  if Result then
  begin
    FDM.spUserDel.ParamByName('p_user_id').AsInteger := LInt;
    FDM.spUserDel.ExecProc;
  end
  else
    LastErrorMessage := 'User not found';
end;

function TJanuaPgSystemStorage.DelUser(const aUserID: integer): boolean;
var
  LInt: integer;
begin
  // SELECT system.userdel(:p_user_id)
  LInt := FUserLogin.DbUserId.AsInteger; // getSearchedUser.User.DbUserId.AsInteger;
  Result := (LInt > 0) or self.FindUserByID(aUserID);
  if Result then
  begin
    FDM.spUserDel.ParamByName('p_user_id').AsInteger := LInt;
    FDM.spUserDel.ExecProc;
  end
  else
    LastErrorMessage := 'User not found';
end;

destructor TJanuaPgSystemStorage.Destroy;
begin
  InternalDestroyDataset;
  inherited;
end;

function TJanuaPgSystemStorage.DoPaymentSearchUser(const aAmount: Currency; const aDate: TDate): boolean;
begin
  Result := False;
  try
    // questa funzione chiama la stored procedure di sistema che si occupa di registrare i pagamenti degli utenti al
    // servizio di abbonamento al server.
    // SELECT system.user_payment(:p_user_id, :p_schema_id, :p_amount, :p_interval_type, :p_interval_duration, :p_payment_date)
    try
      WriteLocalLog('DoPaymentSearchUser', 'Payment user_id = ' + FUserLogin.DbUserId.AsString);
      FDM.spUserPayment.ParamByName('p_user_id').AsInteger := FUserLogin.DbUserId.AsInteger;
      FDM.spUserPayment.ParamByName('p_schema_id').AsInteger := 0;
      FDM.spUserPayment.ParamByName('p_amount').AsCurrency := aAmount;
      FDM.spUserPayment.ParamByName('p_interval_type').AsWideString := 'Y';
      FDM.spUserPayment.ParamByName('p_interval_duration').AsSmallInt := 1;
      FDM.spUserPayment.ParamByName('p_payment_date').AsDate := aDate;
      FDM.spUserPayment.Execute;
      FUserLogin.PaymentExpirationDate.AsDateTime := FDM.spUserPayment.ParamByName('result').AsDate;
      Result := True;
    except
      on e: exception do
        Janua.Core.Functions.RaiseException('DoPaymentSearchUser', e, self, self.LogString);
    end;
  finally
    self.ClearLocalLog('DoPaymentSearchUser');
  end;
end;

function TJanuaPgSystemStorage.DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean;
begin
  Result := False;
  try
    // questa funzione chiama la stored procedure di sistema che si occupa di registrare i pagamenti degli utenti al
    // servizio di abbonamento al server.
    // SELECT system.user_payment(:p_user_id, :p_schema_id, :p_amount,
    // :p_interval_type, :p_interval_duration, :p_payment_date)
    try
      with FDM.spUserPayment do
      begin
        WriteLocalLog('DoPaymentSearchUser', 'Payment user_id = ' + FUserLogin.DbUserId.AsString);
        ParamByName('p_user_id').AsInteger := FUserLogin.DbUserId.AsInteger;
        ParamByName('p_schema_id').AsInteger := 0;
        ParamByName('p_amount').AsCurrency := aAmount;
        ParamByName('p_interval_type').AsWideString := 'Y';
        ParamByName('p_interval_duration').AsSmallInt := 1;
        ParamByName('p_payment_date').AsDate := aDate;
        Execute;
        FUserLogin.PaymentExpirationDate.AsDateTime := ParamByName('result').AsDate;
        Result := True;
      end;
    except
      on e: exception do
        Janua.Core.Functions.RaiseException('DoPaymentSearchUser', e, self, self.LogString);
    end;
  finally
    self.ClearLocalLog('DoPaymentSearchUser');
  end;
end;

function TJanuaPgSystemStorage.FDM: Janua.System.Postgres.Storage.TdmPgSystemStorage;
begin
  if not Assigned(FFDM) then
    self.CreateDataset;
  Result := self.FFDM;
  // raise exception.Create('TJanuaPgSystemStorage.FDM Test Error');
end;

function TJanuaPgSystemStorage.findaddress(const aAddress: string): smallint;
begin
  FDM.qrySearchUserProfile.Close;
  FDM.qrySearchUserProfile.ParamByName('p_search').AsString := aAddress;
  FDM.ServerFunctions.OpenDataset(FDM.qrySearchUserProfile);
  Result := FDM.qrySearchUserProfile.RecordCount;
end;

function TJanuaPgSystemStorage.findaddressbyID(const aID: Int64): smallint;
var
  LTmp: IJanuaDBDataset;
begin
  FDM.qrySearchUserProfile.Close;
  FDM.qrySearchUserProfile.ParamByName('p_id').AsLargeInt := aID;
  FDM.ServerFunctions.OpenDataset(FDM.qrySearchUserProfile);
  Result := FDM.qrySearchUserProfile.RecordCount;
  LTmp := GetjdsSearchUsers;
  if Result > 0 then
    FUserLogin.LoadFromDataset(LTmp);
end;

function TJanuaPgSystemStorage.FindUserByID(const Id: integer): boolean;
begin
  FDM.qrySearchUserProfile.Close;
  FDM.qrySearchUserProfile.ParamByName('db_user_id').AsInteger := Id;
  FDM.qrySearchUserProfile.ParamByName('db_user_key').AsWideString := '%';
  FDM.ServerFunctions.OpenDataset(FDM.qrySearchUserProfile);
  Result := FDM.qrySearchUserProfile.RecordCount > 0;
  if Result then
    FUserLogin.LoadFromDataset(self.GetjdsSearchUsers);
  { TODO :
    ricercare un profilo utente completo attraverso una stored procedure che lo elabori
    impiegare ove possibile delle stored procedure basate su text (clob) basato su a
    array json }
end;

function TJanuaPgSystemStorage.FindUserByKey(const key: string): boolean;
begin
  FDM.qrySearchUserProfile.Close;
  FDM.qrySearchUserProfile.ParamByName('db_user_key').AsWideString := key;
  FDM.qrySearchUserProfile.ParamByName('db_user_id').AsInteger := 0;
  FDM.ServerFunctions.OpenDataset(FDM.qrySearchUserProfile);
  Result := FDM.qrySearchUserProfile.RecordCount > 0;
  if Result then
    FUserLogin.LoadFromDataset(self.GetjdsSearchUsers);

  { TODO :
    ricercare un profilo utente completo attraverso una stored procedure che lo elabori
    impiegare ove possibile delle stored procedure basate su text (clob) basato su a
    array json }
end;

procedure TJanuaPgSystemStorage.GetSchemasList(const SessionKey: string);
begin
  self.SetSessionKey(SessionKey);
  FDM.qrydbUserSchemas.ParamByName('db_user_id').AsInteger := FUserLogin.DbUserId.AsInteger;
  FDM.ServerFunctions.OpenDataset(FDM.qrydbUserSchemas);
end;

procedure TJanuaPgSystemStorage.GetSession;
begin
  try
    try
      if not FDM.qryUserSession.Prepared then
        FDM.qryUserSession.Prepare;
      self.WriteLocalLog('GetSession', 'db_session_key=' + GetSessionKey);
      FDM.qryUserSession.ParamByName('db_session_key').AsString := GetSessionKey;
      FDM.ServerFunctions.OpenDataset(FDM.qryUserSession);
      (*
        if FDM.qryUserSession.RecordCount > 0 then
        GetUserSession.LoadFromDataset(self.GetjdsUserSessions)
      *)
      if FDM.qryUserSession.RecordCount = 0 then
        raise exception.Create('qryUserSession no record Found');
      FDM.qryUserSession.Close;
    except
      on e: exception do
        Janua.Core.Functions.RaiseException('GetSession', e, self, self.LogString);
    end;
  finally
    self.ClearLocalLog('GetSession');
  end;
end;

function TJanuaPgSystemStorage.InternalAddUser(const aUser: IUserProfile): boolean;
var
  vcount: integer;
begin
  Guard.CheckNotNull(self.FDM, ('TJanuaPgSystemStorage.InternalAddUser FDM is nil'));
  try
    if not IsValidEmail(aUser.User.Email.AsString) and IsValidEmail(aUser.User.Username.AsString) then
      aUser.User.Email.AsString := aUser.User.Username.AsString;
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email.AsString) then
    begin
      Result := False;
      self.LastErrorMessage := 'Mail non Valida';
      // FRegisterError := JreWrongEmail;
      Exit;
    end;
    // FRegisterError := jreNone;
    { TODO : Modificare Check User con le nuove Coordinate e-mail e username }
    if CheckUser(aUser) then
      Result := True
    else
    begin
      // FRegisterError := jreUserAlreadyRegistered;
      Result := False;
      self.LastErrorMessage := 'Utente già registrato';
    end;
    if Result then
      with FDM do
      begin
        spUserAdd.ParamByName('p_email').AsWideString := aUser.User.Email.AsString;
        spUserAdd.ParamByName('p_username').AsWideString := aUser.User.Username.AsString;
        spUserAdd.ParamByName('p_password').AsWideString := aUser.User.Password.AsString;
        spUserAdd.ParamByName('p_country_id').AsInteger := 1;
        spUserAdd.ParamByName('p_ispublic').AsBoolean := False;
        ServerFunctions.ExecuteProcedure(spUserAdd);
        aUser.User.VerifyToken.AsString := spUserAdd.ParamByName('Result').AsString;
        self.SetUserKey(aUser.User.VerifyToken.AsString);
        Result := GetUserKey <> 'Error';

        (* if Result then
          self.GetUserSession.userprofile := aUser *)

        if not Result then
          self.LastErrorMessage := 'Utente non registrato da procedura di database';
      end;
  except
    on e: exception do
    begin
      Result := False;
      self.LastErrorMessage := e.Message;
      // FRegisterError := TJanuaRegisterError.jreSystemError;
      WriteError('TJanuaPostgresServerFunctions.AddUser', self.LogString, e);
    end;
  end;

end;

function TJanuaPgSystemStorage.InternalAddUserSocial(const aUser: IUserProfile): boolean;
begin
  try
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email.AsString) then
      aUser.User.Email.AsString := lowerCase(aUser.User.SocialType.AsString) + '-' +
        lowerCase(aUser.User.SocialID.AsString);

    if (aUser.User.SocialID.AsString = '') or (aUser.User.SocialType.AsString = '') then
    begin
      Result := False;
      self.LastErrorMessage := 'Social ID or Social Kind not set';
      // RegisterError := JreWrongEmail;
      Exit;
    end;
    // FRegisterError := jreNone;
    if InternalCheckUserSocial(aUser) then
      Result := True
    else
    begin
      // FRegisterError := jreUserAlreadyRegistered;
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
      FDM.spUserAddSocial.ParamByName('p_email').AsWideString := aUser.User.Email.AsString;
      FDM.spUserAddSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID.AsString;
      FDM.spUserAddSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType.AsString;
      FDM.spUserAddSocial.ParamByName('p_ispublic').AsBoolean := False;
      FDM.spUserAddSocial.ParamByName('p_firstname').AsWideString := aUser.First_Name.AsString;
      FDM.spUserAddSocial.ParamByName('p_lastname').AsWideString := aUser.Last_Name.AsString;
      FDM.spUserAddSocial.ParamByName('p_address_town').AsWideString := aUser.Address_town.AsString;
      FDM.spUserAddSocial.ParamByName('p_address_number').AsWideString := aUser.Address_number.AsString;
      FDM.spUserAddSocial.ParamByName('p_address_postal_code').AsWideString :=
        aUser.Address_postal_code.AsString;
      FDM.spUserAddSocial.ParamByName('p_address_full').AsWideString := aUser.Address_full.AsString;
      FDM.spUserAddSocial.ParamByName('p_public_email').AsWideString := aUser.Public_email.AsString;
      FDM.spUserAddSocial.ParamByName('p_latitude').AsFloat := aUser.Latitude.AsFloat;
      FDM.spUserAddSocial.ParamByName('p_longitude').AsFloat := aUser.Longitude.AsFloat;
      FDM.spUserAddSocial.ParamByName('p_birth_date').AsDate := aUser.Birth_date.AsDateTime;
      FDM.spUserAddSocial.ParamByName('p_fiscal_code').AsWideString := aUser.Fiscal_code.AsString;
      FDM.spUserAddSocial.ParamByName('p_gender_code').AsWideString := aUser.Gender_code.AsString;
      FDM.spUserAddSocial.ParamByName('p_cellular_phone').AsWideString := aUser.Cellular_phone.AsString;
      FDM.spUserAddSocial.ParamByName('p_phone').AsWideString := aUser.Phone.AsString;
      FDM.spUserAddSocial.ParamByName('p_image_url').AsWideString := aUser.User.ImageUrl.AsString;
      // self.spUserAddSocial.ParamByName('p_facebook_json').AsWideString := aUser.FacebookJSON;
      // spUserAdd.ParamByName('p_country_id').AsInteger := 1;
      FDM.spUserAddSocial.ParamByName('p_country_code').Value := 'IT';
      FDM.spUserAddSocial.ParamByName('p_ispublic').AsBoolean := False;
      FDM.ServerFunctions.ExecuteProcedure(FDM.spUserAddSocial);
      aUser.User.VerifyToken.AsString := FDM.spUserAdd.ParamByName('Result').AsString;
      Result := Pos('error', aUser.User.VerifyToken.AsString.ToLower) = 0;

      (* self.GetUserSession.userprofile := aUser *)
      if not Result then
        self.LastErrorMessage := 'Utente non registrato da procedura di database';
    end;
  except
    on e: exception do
    begin
      Result := False;
      LastErrorMessage := e.Message;
      // FRegisterError := jreSystemError;
      self.WriteError(ClassName + '.AddUser', self.LogString, e);
    end;
  end;
end;

function TJanuaPgSystemStorage.InternalCheckUser(var count: integer; aUser: IUserProfile): boolean;
begin
  // if aUser.User.Username = aUser.User.Email then
  // aUser.User.Username := aUser.User.Email;
  FDM.spUserTest.ParamByName('p_username').AsWideString := aUser.User.Username.AsString;
  FDM.spUserTest.ParamByName('p_email').AsWideString := aUser.User.Email.AsString;
  FDM.ServerFunctions.ExecuteProcedure(FDM.spUserTest);
  count := FDM.spUserTest.ParamByName('Result').AsInteger;
  Result := count = 0;
end;

function TJanuaPgSystemStorage.InternalCheckUserSocial(const aUser: IUserProfile): boolean;
begin
  FDM.spUserTestSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID.AsString;
  FDM.spUserTestSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType.AsString;
  FDM.ServerFunctions.ExecuteProcedure(FDM.spUserTestSocial);
  Result := FDM.spUserTest.ParamByName('Result').AsInteger = 0;
end;

procedure TJanuaPgSystemStorage.InternalCreateDataset;
begin
  try
    if not Assigned(FFDM) then
    begin
      FFDM := TdmPgSystemStorage.Create(nil);
      InternalCreateDBDataSets;
    end;
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('InternalCreateDataset' { ProcName } , e, self { Class } );
  end;
end;

procedure TJanuaPgSystemStorage.InternalCreateDBDataSets;
begin
  try
    self.WriteLocalLog('InternalCreateDBDataSets', 'SetjdsUsers(TJanuaPgDataset)');
    self.SetjdsUsers(TJanuaPgDataset.Create(FDM.qryUser));
    self.WriteLocalLog('InternalCreateDBDataSets', 'SetjdsUserProfiles(TJanuaPgDataset)');
    self.SetjdsUserProfiles(TJanuaPgDataset.Create(FDM.qryUserProfile));
    self.WriteLocalLog('InternalCreateDBDataSets', 'SetjdsUserSessions(TJanuaPgDataset)');
    self.SetjdsUserSessions(TJanuaPgDataset.Create(FDM.qryUserSession));
    self.WriteLocalLog('InternalCreateDBDataSets', 'SetjdsUserSessions(TJanuaPgDataset)');
    SetjdsSearchUsers(TJanuaPgDataset.Create(FDM.qrySearchUsers));
    SetjdsSearchUserProfiles(TJanuaPgDataset.Create(FDM.qrySearchUserProfile));

  except
    on e: exception do
      Janua.Core.Functions.RaiseException('InternalCreateDBDataSets' { ProcName } , e, self { Class } ,
        LogString);
  end;
  self.ClearLocalLog('InternalCreateDBDataSets');
end;

procedure TJanuaPgSystemStorage.InternalDestroyDataset;
begin
  try
    if Assigned(FFDM) then
    begin
      self.WriteLocalLog('InternalDestroyDataset', 'Destroy Dataset');
      FFDM.Free;
      FFDM := nil;
    end;
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('InternalDestroyDataset' { ProcName } , e, self { Class } ,
        LogString);
  end;
  ClearLocalLog('InternalDestroyDataset');
end;

function TJanuaPgSystemStorage.InternalLogin: boolean;
begin
  Result := False;
  try
    // At First Login function Clears the User Session Settings
    (* GetUserSession.Clear; *)
    // if not DataModule Active it creates a Datamodule
    CreateDataset;

    WriteLocalLog('InternalLogin', ' Login:  spLogin.Prepare');
    if not FDM.spLogin.Prepared then
      FDM.spLogin.Prepare;

    WriteLocalLog('InternalLogin', 'Tentativo Login: ' + self.FUserLogin.Email.AsString + '/' +
      FUserLogin.Password.AsString);

    if self.FUserLogin.Email.AsString > '' then
    begin
      if not IsValidEmail(FUserLogin.Email.AsString) then
      begin
        WriteLocalLog('InternalLogin', 'Tentativo Login con Mail Errata: ' + FUserLogin.Email.AsString);
        self.LastErrorMessage := 'Tentativo Login con Mail Errata: ';
        FDM.spLogin.ParamByName('p_email').AsString := '';
        FDM.spLogin.ParamByName('p_username').AsString := FUserLogin.Email.AsString;
      end
      else
      begin
        FDM.spLogin.ParamByName('p_email').AsString := FUserLogin.Email.AsString;
        WriteLocalLog('InternalLogin', 'Tentativo connessione udando indrizzo Mail:' +
          FUserLogin.Email.AsString);
        FDM.spLogin.ParamByName('p_username').AsString := '';
      end;
    end
    else
    begin
      if (FUserLogin.Email.AsString = '') then
        FDM.spLogin.ParamByName('p_username').AsString := self.FUserLogin.Username.AsString
      else if (self.FUserLogin.Email.AsString > '') and (self.FUserLogin.Username.AsString = '') then
        FDM.spLogin.ParamByName('p_username').AsString := self.FUserLogin.Email.AsString
      else
        FDM.spLogin.ParamByName('p_username').AsString := self.FUserLogin.Username.AsString;

      FDM.spLogin.ParamByName('p_email').AsString := '';
      WriteLocalLog('InternalLogin', 'Tentativo connessione usando username:' +
        self.FUserLogin.Email.AsString);
    end;

    FDM.spLogin.ParamByName('p_password').AsString := self.FUserLogin.Password.AsString;
    FDM.spLogin.ExecProc;
    // FUserID := spLogin.ParamByName('Result').AsLargeInt;
    WriteLocalLog('InternalLogin', 'Tentativo Login risultato: ' + FDM.spLogin.ParamByName('Result')
      .AsWideString);

    SetSessionKey(FDM.spLogin.ParamByName('Result').AsString);

    Result := (GetSessionKey <> 'Error');
    if Result then
      Result := (GetSessionKey <> '');
    if Result then
      Result := (self.FUserLogin.DbUserId.AsInteger > 0);

    ClearLocalLog('InternalLogin');
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('InternalLogin', e, self, self.LogString);
  end;

  // raise Exception.Create('TJanuaPgSystemStorage.InternalLogin not implemented');
end;

function TJanuaPgSystemStorage.InternalLoginSocial: boolean;
begin
  self.WriteLocalLog('InternalLoginSocial', 'Start Login ' + FUserLogin.SocialID.AsString);
  Result := False;
  try

    if (FUserLogin.SocialID.AsString = '') and (FUserLogin.SocialType.AsString = '') then
    begin
      WriteLocalLog('InternalLoginSocial', ' Error GetUser.SocialID is null ');
      Result := False;
      Exit(False);
    end
    else
      WriteLocalLog('InternalLoginSocial', 'SocialID inserito correttamente');

    { CustomServer: boolean;
      CustomServerUrl: string;
      CustomServerPort: string;
      CustomServerSchema: string; }
    WriteLocalLog('InternalLoginSocial', 'Login:  spLogin.Prepare');
    if not self.FDM.spLoginSocial.Prepared then
      FDM.spLoginSocial.Prepare;
    // SELECT system.userloginsocial(:p_socialid, :p_social_kind)
    WriteLocalLog('InternalLoginSocial', 'Tentativo Login: ' + FUserLogin.SocialType.AsString + '/' +
      FUserLogin.SocialID.AsString);
    FDM.spLoginSocial.ParamByName('p_socialid').AsString := FUserLogin.SocialID.AsString;
    WriteLocalLog('InternalLoginSocial', 'Tentativo connessione udando indrizzo p_socialid:' +
      FUserLogin.SocialID.AsString);
    FDM.spLoginSocial.ParamByName('p_social_kind').AsString := FUserLogin.SocialType.AsString;
    FDM.spLoginSocial.ExecProc;
    // FUserID := FDM.spLoginSocial.ParamByName('Result').AsLargeInt;
    WriteLocalLog('InternalLoginSocial', 'Tentativo Login risultato: ' + FDM.spLoginSocial.ParamByName
      ('Result').AsWideString);
    SetSessionKey(FDM.spLoginSocial.ParamByName('Result').AsString);
    Result := (GetSessionKey <> 'Error') and (GetSessionKey <> '') and (FUserLogin.DbUserId.AsInteger > 0);
    FDM.spLoginSocial.Connection.Close;
    ClearLocalLog('InternalLoginSocial');
  except
    on e: exception do
      RaiseException('InternalLoginSocial' { ProcName } , e, self { Class } , LogString);
  end;
end;

function TJanuaPgSystemStorage.login(const aUser: IUser): boolean;
var
  LmailLogin: boolean;
begin
  Result := False;
  LmailLogin := False;
  try
    try
      Result := self.SetupLogin(aUser, LmailLogin);
      if Result then
      begin
        if LmailLogin then
        begin
          WriteLocalLog('login', 'Controlli OK avvio Login');
          // if not assigned(self.spLogin) then
          // self.RaiseException('spLogin non assegnata da costruttore...');
          FUserLogin := aUser;
          Result := False;
          Result := InternalLogin;
          // self.UserProfile.User := aUser;
          {
            self.FServerSession := ServerFunctions.GetSession(self.FSessionKey, self.qryUserSession, True,
            FLastErrorMessage);
          }
        end
        else
        begin
          WriteLocalLog('login', 'Controlli OK avvio Login');
          Guard.CheckNotNull(FDM.spLoginSocial, 'spLogin non assegnata da costruttore...');
          FUserLogin := aUser;
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
      // self.FLoggedIn := Result;
      {
        if self.FLoggedIn then
        SetProfileFromQuery;
      }
    finally
      FDM.PgErgoConnection.Close;
    end;
    ClearLocalLog('login');
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('login', e, self, self.LogString);
  end
end;

function TJanuaPgSystemStorage.LoginByKey: boolean;
begin
  Result := False;
  // Verifico se è impostata una User-Session Key
  if (self.GetSessionKey > '') and (self.GetSessionKey <> 'Error') then
    try
      if not FDM.PgErgoConnection.Connected then
        FDM.PgErgoConnection.Connect;
      WriteLocalLog('LoginByKey', 'Open qryUserSession: ' + self.GetSessionKey);
      if not FDM.qryUserSession.Active or (FDM.qryUserSessiondb_session_key.AsWideString <> GetSessionKey)
      then
      begin
        FDM.qryUserSession.ParamByName('db_session_key').AsString := GetSessionKey;
        FDM.ServerFunctions.ReOpenDataset(FDM.qryUserSession);
        Result := (FDM.qryUserSession.RecordCount = 1);
        if Result then
        begin
          FDM.qryUserProfile.ParamByName('db_user_id').AsInteger := FDM.qryUserSessiondb_user_id.AsInteger;
          FDM.ServerFunctions.ReOpenDataset(FDM.qryUserProfile);
          // la user Session sarà gestita a livello di Server non di Storage
          // GetUserSession.LoadFromDataset(self.GetjdsUserSessions);
          OpenUserProfile;
          // FDM.FUserProfile.LoadFromDataset(FDM.qryUserSession, FDM.qryUserProfile);
        end;
        self.WriteLocalLog('LoginByKey', ' open qryUserSession record: ' +
          self.GetjdsUserSessions.RecordCount.ToString());
      end;
    except
      on e: exception do
      begin
        self.WriteLocalLog('LoginByKey', ' errore: ' + sLineBreak + e.Message);
        Janua.Core.Functions.RaiseException('OpenProfile', e, self, self.LogString);
      end;
    end;
  self.ClearLocalLog('LoginByKey');
end;

function TJanuaPgSystemStorage.LoginByKey(const aKey: string): boolean;
begin
  Result := False;
  // At First I check if user is already logged in and session is active
  Result := (GetSessionKey = aKey) and (FUserLogin.DbUserId.AsInteger = 0);
  // if I am not logged in and this is not the current session so i do Session Login Operations
  if not Result then
  begin
    FDM.qryUserSession.Close;
    SetSessionKey(aKey);
    Result := LoginByKey;
  end;
end;

function TJanuaPgSystemStorage.OpenProfile(aUserID: integer): boolean;
begin
  Result := (GetSessionKey > '') and (GetSessionKey <> 'Error') and LoginByKey;

  if Result then
    try
      FDM.tbUserSessionRoles.Close;
      FDM.ServerFunctions.ReOpenDataset(FDM.tbUserSessionRoles);

      FDM.qryUserProfile.Close;

      if aUserID <> 0 then
        FDM.qryUserProfile.ParamByName('db_user_id').AsInteger := aUserID
      else
        FDM.qryUserProfile.ParamByName('db_user_id').AsInteger := self.FUserLogin.DbUserId.AsInteger;

      FDM.ServerFunctions.ReOpenDataset(FDM.qryUserProfile);

      if aUserID <> 0 then
      begin
        FDM.qryUser.Close;
        FDM.qryUser.ParamByName('db_user_id').AsInteger := aUserID;
        FDM.ServerFunctions.OpenDataset(FDM.qryUser);
      end;

      Result := FDM.qryUserProfile.RecordCount > 0;
      self.WriteLocalLog('OpenProfile', ' open qryUserProfile db_user_id = ' +
        FDM.qryUser.ParamByName('db_user_id').AsWideString + ' record: ' +
        FDM.qryUserProfile.RecordCount.ToString());

      // GetUserProfile.LoadFromDataset(self.GetjdsUserProfiles)
      if not Result then
      begin
        self.LastErrorMessage := 'User Profile ' + FDM.qryUser.ParamByName('db_user_id').AsWideString +
          ' not Found in this session';
      end;
    except
      on e: exception do
        Janua.Core.Functions.RaiseException('OpenProfile', e, self, self.LogString);
    end;

end;

procedure TJanuaPgSystemStorage.OpenUserProfile;
begin
  try
    WriteLocalLog('OpenUserProfile', 'Check Open Profile: ' + FUserLogin.DbUserId.AsString);
    if not FDM.qryUserProfile.Active and
      (FDM.qryUserProfile.ParamByName('db_user_id').AsInteger = FUserLogin.DbUserId.AsInteger) then
    begin
      WriteLocalLog('OpenUserProfile', 'Opening Profile: ' + FUserLogin.DbUserId.AsString);
      FDM.qryUserProfile.ParamByName('db_user_id').AsInteger := FUserLogin.DbUserId.AsInteger;
      FDM.ServerFunctions.ReOpenDataset(FDM.qryUserProfile);
    end;
    WriteLocalLog('OpenUserProfile', 'Load Profile: ' + FUserLogin.DbUserId.AsString);
    // non carico il profilo in locale di questo si occuperà il server
    // self.GetUserProfile.LoadFromDataset(self.GetjdsUserProfiles);
    FDM.qryUser.ParamByName('db_user_id').AsInteger := FDM.qryUserSessiondb_user_id.AsInteger;
    FDM.ServerFunctions.ReOpenDataset(FDM.qryUser);
    // Aggiorno il Record degli utenti.
    FUserLogin.LoadFromDataset(self.GetjdsUsers);
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('OpenUserProfile', e, self, LogString);
  end;
  self.ClearLocalLog('OpenUserProfile');
end;

function TJanuaPgSystemStorage.SaveProfile(const aProfile: IUserProfile): boolean;
begin
  { SELECT db_user_id, country_id, region_id, district_id, town_id, first_name,
    last_name, address_street, address_number, address_postal_code,
    phone, cellular_phone, work_phone, fax_number, gender_code
    FROM system.db_users_profiles
    where db_user_id = :db_user_id }
  Result := False;
  Assert(aProfile.User.DbUserId.AsInteger > 0, 'SaveProfile User Profile ID = 0');
  try
    try
      self.WriteLocalLog('SaveProfile', 'SetSearchedUser');
      // (aProfile);
      self.WriteLocalLog('SaveProfile', 'OpenProfile ' + aProfile.User.DbUserId.AsString);
      Result := OpenProfile(aProfile.User.DbUserId.AsInteger);
      if Result then
      begin
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
        if not FDM.qryUserProfile.Active then
        begin
          // (s.db_user_id = :db_user_id or :db_user_id = 0)
          FDM.qryUserProfile.ParamByName('db_user_id').AsInteger := aProfile.Db_user_id.AsInteger;
          FDM.qryUserProfile.Open;
        end;

        if FDM.qryUserProfile.RecordCount = 0 then
          FDM.qryUserProfile.Append;
        // if (self.qryUserProfile.RecordCount > 0) or (qryUserProfile.State = TDatasetState.dsInsert) then
        // begin

        aProfile.SetupDataset(self.GetjdsUserProfiles, [GetjdsUsers]);
        aProfile.SaveToDataset;
        {
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
        }
        FDM.ServerFunctions.PostDataset(FDM.qryUserProfile);
      end;
    finally
      self.ClearLocalLog('SaveProfile');
    end;
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('SaveProfile', e, self, LogString);
  end;
end;

function TJanuaPgSystemStorage.SearchUserByEmail(const aMail: string): boolean;
begin
  Result := False;
  try
    WriteLocalLog('SearchUserByEmail', ' Utente: id= ' + aMail);
    Result := FDM.qrySearchUsers.Active and (FDM.qrySearchUsers.ParamByName('p_search').AsString = aMail) and
      (FDM.qrySearchUsers.RecordCount > 0);
    if not Result then
    begin
      FDM.qrySearchUsers.Close;
      FDM.qrySearchUsers.ParamByName('p_search').AsString := aMail;
      FDM.qrySearchUsers.ParamByName('p_user_id').AsInteger := 0;
      FDM.ServerFunctions.OpenDataset(FDM.qrySearchUsers);
      // self.FSearchUserProfile.LoadFromDataset(qrySearchUsers, qrySearchUserProfile);
      Result := FDM.qrySearchUsers.RecordCount > 0;
      if Result then
      begin
        WriteLocalLog('SearchUserByEmail', 'Trovato Utente: id= ' + aMail + ' = ' +
          FDM.qrySearchUsersdb_user_id.AsWideString);
        Result := GetjdsSearchUsers.RecordCount > 0;
        if not Result then
          self.LastErrorMessage := 'Utente non impostato correttamente GetjdsSearchUsers.ID = 0';
        self.FUserLogin.LoadFromDataset(self.GetjdsSearchUsers);
        Result := FUserLogin.DbUserId.AsInteger > 0;
        if not Result then
          self.LastErrorMessage := 'Utente non impostato correttamente SearchedUser.User';
      end
      else
        WriteLocalLog('SearchUserByEmail', 'Utente non trovato ...' + aMail);
    end;
    ClearLocalLog('SearchUserByEmail');
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('SearchUserByEmail', e, self, LogString);
  end;
end;

function TJanuaPgSystemStorage.SearchUserByGUID(const aGUID: TGUID): boolean;
begin
  Result := False;
  { TODO : Implementare in Postgres la ricerca utente per GUID }
end;

function TJanuaPgSystemStorage.SearchUserByID(const aID: integer): boolean;
begin
  Result := False;
  try
    try
      WriteLocalLog('SearchUserByID', 'Ricerca Utente: id= ' + aID.ToString);
      FDM.qrySearchUsers.Close;
      FDM.qrySearchUsers.ParamByName('p_search').AsString := '%';
      FDM.qrySearchUsers.ParamByName('p_user_id').AsInteger := 0;
      FDM.ServerFunctions.OpenDataset(FDM.qrySearchUsers);
      Result := FDM.qrySearchUsers.RecordCount = 1;
      if Result then
        self.FUserLogin.LoadFromDataset(self.GetjdsSearchUsers);

      if Result then
        WriteLocalLog('SearchUserByID', 'Trovato Utente: id= ' + aID.ToString + ' = ' +
          FUserLogin.DbUserId.AsString + ' ' + FUserLogin.Email.AsString)
      else
        WriteLocalLog('SearchUserByID', 'Utente non trovato ...' + aID.ToString);
    except
      on e: exception do
        Janua.Core.Functions.RaiseException('SearchUserByID', e, self, LogString);
    end;
  finally
    self.ClearLocalLog('SearchUserByID');
  end;
end;

function TJanuaPgSystemStorage.SearchUserByKey(const aKey: string): boolean;
begin
  Result := False;
  { TODO : Implement System Storage Search User By Key (GUID) }
end;

function TJanuaPgSystemStorage.SearchUserByName(const aName: string): boolean;
begin
  try
    Result := False;
    try
      Result := (FDM.qrySearchUsers.RecordCount = 1) and
        (FDM.qrySearchUsers.ParamByName('p_search').AsString = aName);
      if not Result then
      begin
        FDM.qrySearchUsers.Close;
        FDM.qrySearchUsers.ParamByName('p_search').AsString := aName;
        FDM.qrySearchUsers.ParamByName('p_user_id').AsInteger := 0;
        FDM.ServerFunctions.OpenDataset(FDM.qrySearchUsers);
        Result := FDM.qrySearchUsers.RecordCount = 1;
        if Result then
          self.FUserLogin.LoadFromDataset(GetjdsSearchUsers);

        if Result then
          WriteLocalLog('SearchUserByName', 'Trovato Utente: id= ' + aName + ' = ' +
            FUserLogin.DbUserId.AsString + ' ' + FUserLogin.Email.AsString)
        else
          WriteLocalLog('SearchUserByName', 'Utente non trovato ...' + aName);
      end;
    except
      on e: exception do
        Janua.Core.Functions.RaiseException('SearchUserByID', e, self, LogString);
    end;
    ClearLocalLog('SearchUserByName')
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('SearchUserByName', e, self, self.LogString);
  end;
end;

function TJanuaPgSystemStorage.SearchUserBySocialID(aID, aSocial: string): boolean;
begin
  Result := False;
  raise exception.Create('TJanuaPgSystemStorage.SearchUserBySocialID not implemented');
end;

function TJanuaPgSystemStorage.SearchUsers(const aUserName, aEmail: string): integer;
begin
  Result := -1;
  try
    if not(FDM.qrySearchUsers.Active) and (FDM.qrySearchUsers.RecordCount = 0) and
      (FDM.qrySearchUsers.ParamByName('p_search').AsString = IfThen(aUserName = '', aEmail, aUserName)) then
    begin
      FDM.qrySearchUsers.Close;
      FDM.qrySearchUsers.ParamByName('p_search').AsString := IfThen(aUserName = '', aEmail, aUserName);
      FDM.ServerFunctions.OpenDataset(FDM.qrySearchUsers);
      Result := FDM.qrySearchUsers.RecordCount;
      if Result >= 1 then
        WriteLocalLog('SearchUsers', 'Primo Utente: ' + FDM.qrySearchUsersemail.AsWideString)
      else
        WriteLocalLog('SearchUsers', 'Utente non trovato ...' + IfThen(aUserName = '', aEmail, aUserName));
    end;
  except
    on e: exception do
      Janua.Core.Functions.RaiseException('SearchUsers', e, self, LogString);
  end;
end;

procedure TJanuaPgSystemStorage.SetProfileFromQuery;
begin
  raise exception.Create('TJanuaPgSystemStorage.SetProfileFromQuery not implemented');
end;

procedure TJanuaPgSystemStorage.SetSelectedSchema(const Value: Int64);
begin
  inherited;
  if GetSelectedSchema <> Value then
  begin
    if (not FDM.qryUserSession.Active) then
      FDM.ServerFunctions.OpenDataset(FDM.qryUserSession);

    if (FDM.qryUserSession.RecordCount = 0) then
    begin
      FDM.ServerFunctions.OpenDataset(FDM.qryUserSession)
    end;

    if FDM.qryUserSessiondb_schema_id.AsInteger <> Value then
    begin
      FDM.qryUserSession.Edit;
      FDM.qryUserSessiondb_schema_id.AsInteger := Value;
      FDM.ServerFunctions.PostDataset(FDM.qryUserSession);
    end;
    SetSelectedSchema(Value)
  end;
end;

function TJanuaPgSystemStorage.StartSessionByUrl(const aUrl: string): boolean;
begin
  Result := False;
  raise exception.Create('TJanuaPgSystemStorage.StartSessionByUrl deprecated');
end;

{ TJanuaServerPgSystemFactory }

function TJanuaServerPgSystemFactory.GetSystemStorage: IJanuaSystemStorage;
begin
  Result := TJanuaPgSystemStorage.Create
end;

function TJanuaPgSystemStorage.DelUser(const aGUID: TGUID): boolean;
begin
  Result := SearchUserByGUID(aGUID) and self.DelUser
end;

function TJanuaPgSystemStorage.DelUser(const aEmail: string): boolean;
begin
  Result := self.SearchUserByEmail(aEmail) and self.DelUser
end;

end.
