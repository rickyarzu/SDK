unit Janua.System.Server.Impl;

interface

uses
  Spring.Collections, System.SysUtils,
  // Janua.Core.Framework
  Janua.Core.Types, Janua.Core.DB.Intf, Janua.Core.DB.Impl,
  // Janua Server Framework
  Janua.Server.Intf, Janua.System.Server.Intf, Janua.Orm.Intf, Janua.Server.Impl, Janua.Orm.Impl,
  // Janua Orm System Framework
  JOrm.System.Intf, JOrm.System.Session.Intf;

type
  TPasswordRec = record
    username: string;
    password: string;
  public
    constructor Create(const aName, aPwd: string);
  end;

type
  /// <summary> Template Class For System Storage Defines Fields and Methods common to Rest and DB Storage </summary>
  TJanuaSystemStorage = class(TJanuaStorage, IJanuaStorage, IJanuaSystemStorage)
    {
      strict private
      FUserSessionStorage: IJanuaRecordSetStorage;
      FUsersStorage: IJanuaRecordSetStorage;
      FSearchedUserStorage: IJanuaRecordSetStorage;
      FUserProfilesStorage: IJanuaRecordSetStorage;
    }
  strict private
    (*
      FUserSession: IUserSession;
      FSearchedUser: IUserProfile;
    *)
    FSessionKey: string;
    FUserKey: string;
    FRegisterError: TJanuaRegisterError;
    FLoggedIn: Boolean;
    FFUserLogin: IUser;
    function GetFUserLogin: IUser;
    procedure SetFUserLogin(const Value: IUser);
    // Storage Management System ...............................................................................
  strict protected
    FUsersListStorage: IJanuaRecordSetStorage;
    FUserSessionStorage: IJanuaRecordSetStorage;
    FSearchedUserStorage: IJanuaRecordSetStorage;
  protected
    function GetUsersListStorage: IJanuaRecordSetStorage;
    function GetUserSessionStorage: IJanuaRecordSetStorage;
    function GetSearchedUserStorage: IJanuaRecordSetStorage;
    procedure SetUsersListStorage(const Value: IJanuaRecordSetStorage);
    procedure SetUserSessionStorage(const Value: IJanuaRecordSetStorage);
    procedure SetSearchedUserStorage(const Value: IJanuaRecordSetStorage);
  strict protected
    procedure SetSessionKey(const Value: string);
    function GetSessionKey: string;
    function GetUserKey: string;
    procedure SetUserKey(const Value: String);
    function GetRegisterError: TJanuaRegisterError;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    (*
      procedure SetUserProfile(val: IUserProfile);
      function GetUserProfile(): IUserProfile;
      procedure SetUserSession(val: IUserSession);
      function GetUserSession(): IUserSession;
      procedure SetUser(val: IUser);
      function GetUser(): IUser;
      procedure SetSearchedUser(val: IUserProfile);
      function GetSearchedUser(): IUserProfile;
    *)
    /// <summary> Procedura per impostare il flag Logged In. Accessibile solo dal descendant </summary>
    procedure SetLoggedIn(Value: Boolean);
    /// <summary> Procedure che imposta il profilo utente di Login ricevuto dal SystemManager </summary>
    function SetupLogin(const aUser: IUser; const aMailLogin: Boolean): Boolean;
    property FUserLogin: IUser read GetFUserLogin write SetFUserLogin;
  public
    constructor Create; override;
    function GetLoggedIn: Boolean;
    procedure CloseProfile; virtual; abstract;
    procedure OpenUserProfile; virtual; abstract;
    procedure SetSelectedSchema(const Value: Int64); virtual; abstract;
    function SaveProfile(const aProfile: IUserProfile): Boolean; virtual; abstract;
    procedure SetProfileFromQuery; virtual; abstract;
    function AddUser(const aUser: IUserProfile): Boolean; virtual; abstract;
    function AdminAddUser(const aUser: IUserProfile): Boolean; virtual; abstract;
    function login(const aUser: IUser): Boolean; virtual; abstract;
    function LoginByKey(const aKey: string): Boolean; overload; virtual; abstract;
    function LoginByKey: Boolean; overload; virtual; abstract;
    procedure GetSession; virtual; abstract;
    function findaddress(const aAddress: string): smallint; virtual; abstract;
    function findaddressbyID(const aID: Int64): smallint; virtual; abstract;
    function SearchUsers(const aUserName, aEmail: string): integer; virtual; abstract;
    procedure GetSchemasList(const SessionKey: string); virtual; abstract;
    function SearchUserByKey(const aKey: string): Boolean; virtual; abstract;
    function SearchUserByID(const aID: integer): Boolean; virtual; abstract;
    function SearchUserByName(const aName: string): Boolean; virtual; abstract;
    function SearchUserByEmail(const aMail: string): Boolean; virtual;
    function SearchUserBySocialID(aID: string; aSocial: string): Boolean; virtual; abstract;
    function DoPaymentSearchUser(const aAmount: Currency; const aDate: TDate): Boolean; virtual; abstract;
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): Boolean; virtual; abstract;
    function FindUserByKey(const key: string): Boolean; virtual; abstract;
    function FindUserByID(const Id: integer): Boolean; virtual; abstract;
    function CheckUser(const aUser: IUserProfile): Boolean; virtual; abstract;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): Boolean; overload; virtual; abstract;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: Boolean; overload; virtual; abstract;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: integer): Boolean; overload; virtual; abstract;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): Boolean; overload; virtual; abstract;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): Boolean; overload; virtual; abstract;
    /// <summary> Search an user from the storage using Searched User Profile by GUID </summary>
    function SearchUserByGUID(const aGUID: TGUID): Boolean; overload; virtual; abstract;
  end;

type
  TJanuaDBSystemStorage = class(TJanuaSystemStorage, IJanuaStorage, IJanuaSystemStorage,
    IJanuaSystemDBStorage)
  strict private
    FjdsSearchUsers: IJanuaDBDataset;
    FjdsSearchUserProfiles: IJanuaDBDataset;
    FjdsUsers: IJanuaDBDataset;
    FjdsUserProfiles: IJanuaDBDataset;
    FjdsUserSessions: IJanuaDBDataset;
  protected
    function GetjdsSearchUsers: IJanuaDBDataset;
    procedure SetjdsSearchUsers(Value: IJanuaDBDataset);
    procedure SetjdsUserProfiles(Value: IJanuaDBDataset);
    procedure SetjdsUsers(Value: IJanuaDBDataset);
    procedure SetjdsUserSessions(Value: IJanuaDBDataset);
    function GetjdsUsers: IJanuaDBDataset;
    function GetjdsUserProfiles: IJanuaDBDataset;
    function GetjdsUserSessions: IJanuaDBDataset;
    function GetjdsSearchUserProfiles: IJanuaDBDataset;
    procedure SetjdsSearchUserProfiles(Value: IJanuaDBDataset);
  strict protected
    procedure SetAfterDestroyDataset; override;
    procedure SetInternalCreateDBDataSets; override;
    procedure SetInternalCreateDataset; override;
    procedure SetAfterCreateDataset; override;
    procedure SetInternalDestroyDataset; override;
    procedure SetInternalAssignDatasets; override;
  public
    constructor Create; override;
    function SearchUsers(const aUserName, aEmail: string): integer; override;
  public
    property jdsUsers: IJanuaDBDataset read GetjdsUsers write SetjdsUsers;
    property jdsUserProfiles: IJanuaDBDataset read GetjdsUserProfiles write SetjdsUserProfiles;
    property jdsUserSessions: IJanuaDBDataset read GetjdsUserSessions write SetjdsUserSessions;
    property jdsSearchUserProfiles: IJanuaDBDataset read GetjdsSearchUserProfiles
      write SetjdsSearchUserProfiles;
    property jdsSearchUsers: IJanuaDBDataset read GetjdsSearchUsers write SetjdsSearchUsers;
  end;

type
  TJanuaSystemCache = class(TInterfacedObject, IJanuaSystemCache)
  private
    FStorage: IJanuaSystemStorage;
  strict private
    FUsers: IUsers;
    FSearchedUser: IUserProfile;
    FUserSessions: IUserSessions;
    FUsersLogin: IDictionary<TPasswordRec, IUser>;
    FUserNameNdx: IDictionary<string, IUserProfile>;
    FUsersProfilesIDNDX: IDictionary<Int64, IUserProfile>;
    FUserProfiles: IUserProfiles;
  private
    procedure SetUsers(aVal: IUsers);
    function GetUsers(): IUsers;
    procedure SetUserSessions(aVal: IUserSessions);
    function GetUserSessions(): IUserSessions;
    procedure SetSelectedSession(aVal: IUserSession);
    function GetSelectedSession(): IUserSession;
    function GetUserProfiles(): IUserProfiles;
    procedure SetUserProfiles(const Value: IUserProfiles);
  strict protected
    // Registro l'array delle Sessioni preso dal sistema in base al loro Storage.
    FSelectedUser: IUser;
    FSelectedUserProfile: IUserProfile;
    FSessions: ISessions;
    FUsersStorage: IJanuaRecordSetStorage;
    FUserProfilesStorage: IJanuaRecordSetStorage;
    FSessionProfilesStorage: IJanuaRecordSetStorage;
    procedure StartSession;
  public
    constructor Create(aStorage: IJanuaSystemStorage); overload;
    procedure Populate;
    function login(aUserName, aPassword: string; aUser: IUser): Boolean;
    procedure AddSession(aUserSession: IUserSessions);
    procedure AddUser(const aUser: IUser);
    procedure AddUserProfile(aUserProfile: IUserProfile);
    function SearchUser(fullusername: string; out aUserProfile: IUserProfile): Boolean;
    function SearchUserByID(aID: integer; out aUserProfile: IUserProfile): Boolean;
  public
    property Users: IUsers read GetUsers write SetUsers;
    property UserSessions: IUserSessions read GetUserSessions write SetUserSessions;
    property SelectedSession: IUserSession read GetSelectedSession write SetSelectedSession;
    property UserProfiles: IUserProfiles read GetUserProfiles write SetUserProfiles;
  end;

type
  TJanuaOrmServerSystem = class(TJanuaServer, IJanuaServer, IJanuaServerSystem)
  strict private
    FUserSession: IUserSessions;
    FUsersList: IUsers;
    FSearchedUser: IUserProfiles;
    FServerCache: IJanuaSystemCache;
    FLocalStorage, FRemoteStorage: IJanuaSystemStorage;
    // FGUID: TGUID;
    // FKey: string;
    FUserName: string;
    FPassword: string;
    FCache: IJanuaSystemCache;

  strict protected
    FUsersListStorage: IJanuaRecordSetStorage;
    FUserSessionStorage: IJanuaRecordSetStorage;
    FSearchedUserStorage: IJanuaRecordSetStorage;

    FRemoteUsersListStorage: IJanuaRecordSetStorage;
    FRemoteUserSessionStorage: IJanuaRecordSetStorage;
    FRemoteSearchedUserStorage: IJanuaRecordSetStorage;

    function CacheLogin: Boolean;
    function StorageLogin: Boolean;
  private
    // FSessionKey: String;
    procedure SetIsLoggedIn(aVal: Boolean);
    function GetIsLoggedIn(): Boolean;
    procedure SetPassword(aVal: String);
    function GetPassword(): String;
    procedure SetServerCache(aVal: IJanuaSystemCache);
    function GetServerCache(): IJanuaSystemCache;
    procedure SetUsersList(aVal: IUsers);
    function GetUsersList(): IUsers;
    procedure SetUserProfile(aVal: IUserProfile);
    function GetUserProfile(): IUserProfile;
    procedure SetUserSession(aVal: IUserSessions);
    function GetUserSession(): IUserSessions;
    procedure SetUser(aVal: IUser);
    function GetUser(): IUser;
    procedure SetUsername(aVal: String);
    function GetUsername(): String;
    function GetSessionKey(): String;
    procedure SetSessionKey(const Value: String);
    procedure SetSearchedUser(aVal: IUserProfiles);
    function GetSearchedUser(): IUserProfiles;
    procedure CreateUserSession;
  public
    function CreateLoginParams: IJanuaParams;
    /// <summary> Esegue la funzione login dello storage e popola gli RS: </summary>
    function login: Boolean; overload; virtual;
    function login(const aUserName, aPassword: string): Boolean; overload;
    function LoginByKey(const aKey: string): Boolean; overload;
    function LoginByKey: Boolean; overload;
    function LoginByGUID(const aGUID: TGUID): Boolean;
    function SaveProfile: Boolean;
    function NewProfile: Boolean;
    function Deactivate(const aUser: IUserProfile): Boolean; overload;
    function Deactivate(aUser: string): Boolean; overload;
    function CheckNewUser(const aUser: IUserProfile): Boolean; overload;
    function CheckNewUser(aUser: string): Boolean; overload;
    function CheckNewUser(const aUser: IUser): Boolean; overload;
    function CreateNewUser(const aUser: IUserProfile): Boolean;
    procedure LoadProfile;
    function SetUserDefaultSchema(const aUser: IUserProfile): Boolean;
    procedure SetDefaultSchema(aSchemaID: integer);
    function SearchUser(fullusername: string): Boolean;
    function SearchUserByID(aID: integer): Boolean;
    function SearchUserByEmail(aMail: string): Boolean;
  public
    constructor Create(const aServerType: TJanuaServerType = jstDBServer); override;
    constructor Create(const aCache: IJanuaSystemCache; aStorage: IJanuaSystemStorage;
      aServerType: TJanuaServerType = jstDBServer); overload;
    constructor Create(const aCache: IJanuaSystemCache;
      const aLocalStorage, aRemoteStorage: IJanuaSystemStorage;
      aServerType: TJanuaServerType = jstDBServer); overload;
  public
    property password: String read GetPassword write SetPassword;
    property IsLoggedIn: Boolean read GetIsLoggedIn;
    property username: String read GetUsername write SetUsername;
    property SessionKey: String read GetSessionKey write SetSessionKey;
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
    property UserSession: IUserSessions read GetUserSession write SetUserSession;
    property User: IUser read GetUser write SetUser;
    property ServerCache: IJanuaSystemCache read GetServerCache write SetServerCache;
    property UsersList: IUsers read GetUsersList write SetUsersList;
    /// <summary> This is a searched user other than the session's owner. </summary>
    property SearchedUser: IUserProfiles read GetSearchedUser write SetSearchedUser;
  public
    function RestLogin(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestLoginByKey(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestLoginByGUID(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestCheckNewUser(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestPCheckNewUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
    function RestCreateNewUser(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestPCreateNewUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
    function RestUpdateUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
  public // payment procedures -------------------------------------------------------------------------------
    /// <summary> basic payment function, when session and user_id are set can be called by other procedures </summary>
    function DoPaymentSession(aAmount: Currency; aDate: TDate): Boolean;
    /// <summary> basic payment function, when session and user_id are set can be called by other procedures </summary>
    function DoPaymentSelectedUser(aAmount: Currency; aDate: TDate): Boolean;
    /// <summary> Funzione di pagamento abbonamenti attraverso user ID chiamata internamente </summary>
    function DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): Boolean; overload;
    /// <summary> Funzione di pagamento abbonamenti attraverso Session Key </summary>
    function DoPayment(aSessionKey: string; aAmount: Currency; aDate: TDate): Boolean; overload;
    /// <summary> Funzione di pagamento abbonamenti attraverso indirizzo e-mail utente </summary>
    function DoPaymentEMail(aEmail: string; aAmount: Currency; aDate: TDate): Boolean;
  end;

type
  TJanuaServerSystemFactory = class(TInterfacedObject, IJanuaServerSystemFactory)
  public
    function GetServerSystem(aServerType: TJanuaServerType = jstDBServer): IJanuaServerSystem; overload;
    function GetServerSystem(const aLocalStorage, aRemoteStorage: IJanuaSystemStorage;
      aServerType: TJanuaServerType = jstDBServer): IJanuaServerSystem; overload;
    function GetSystemStorage: IJanuaSystemStorage; virtual; abstract;
    function GetSystemCache: IJanuaSystemCache; overload;
    function GetSystemCache(aStorage: IJanuaSystemStorage): IJanuaSystemCache; overload;
  end;

type
  TJanuaSystemFactory = class
  public
    class function CreateLoginParams: IJanuaParams;
  end;

procedure SetupSharedCache(aStorage: IJanuaSystemStorage);
function DoNotCheckSever(aServerType: TJanuaServerType): Boolean;

var
  // Global System Shared Cache Variabile. Needs to be created and then to be populated
  SystemSharedCache: IJanuaSystemCache;

implementation

uses Spring, System.StrUtils, Data.DB,
  // Janua Framework
  Janua.Http.Impl, Janua.Orm.Types, Janua.Core.Functions, Janua.Application.Framework,
  // System Orm Framewok
  JOrm.System.Impl,  JOrm.System.Session.Impl;

procedure SetupSharedCache(aStorage: IJanuaSystemStorage);
begin
  Guard.CheckNotNull(aStorage, 'SetupSharedCache(aStorage) is nil');
  SystemSharedCache := TJanuaSystemCache.Create(aStorage);
end;

function DoNotCheckSever(aServerType: TJanuaServerType): Boolean;
begin
  Result := aServerType in [TJanuaServerType.jstRestServer, TJanuaServerType.jstRestClient];
end;

{ IJanuaServerSystem }

procedure TJanuaOrmServerSystem.SetSearchedUser(aVal: IUserProfiles);
begin
  self.FSearchedUser := aVal
end;

procedure TJanuaOrmServerSystem.SetServerCache(aVal: IJanuaSystemCache);
begin
  self.FServerCache := aVal
end;

procedure TJanuaOrmServerSystem.SetSessionKey(const Value: String);
begin
  FUserSession.UserSession.Db_session_key.AsString := Value;
end;

function TJanuaOrmServerSystem.GetSearchedUser: IUserProfiles;
begin
  Result := self.FSearchedUser
end;

function TJanuaOrmServerSystem.GetServerCache: IJanuaSystemCache;
begin
  Result := self.FServerCache
end;

function TJanuaOrmServerSystem.GetSessionKey: String;
begin
  Result := self.FUserSession.UserSession.Db_session_key.AsString
end;

procedure TJanuaOrmServerSystem.SetUsersList(aVal: IUsers);
begin
  FUsersList := aVal
end;

function TJanuaOrmServerSystem.GetUsersList: IUsers;
begin
  Result := self.FUsersList
end;

procedure TJanuaOrmServerSystem.SetUserProfile(aVal: IUserProfile);
begin
  self.FUserSession.UserSession.UserProfile := aVal;
end;

function TJanuaOrmServerSystem.GetUserProfile: IUserProfile;
begin
  Result := self.FUserSession.UserSession.UserProfile
end;

procedure TJanuaOrmServerSystem.SetUserSession(aVal: IUserSessions);
begin
  self.FUserSession := aVal
end;

function TJanuaOrmServerSystem.GetUserSession: IUserSessions;
begin
  Result := self.FUserSession
end;

procedure TJanuaOrmServerSystem.SetUser(aVal: IUser);
begin
  self.FUserSession.UserSession.User := aVal
end;

function TJanuaOrmServerSystem.SetUserDefaultSchema(const aUser: IUserProfile): Boolean;
begin
  { TODO : Orm Server System Implement SetUserDefaultSchema }
  Result := False;
end;

function TJanuaOrmServerSystem.GetUser: IUser;
begin
  try
    CreateUserSession;
    Guard.CheckNotNull(FUserSession.UserSession.User,
      'TJanuaOrmServerSystem.GetUser FUserSession.User is nil');
    Result := self.FUserSession.UserSession.User;
  except
    on e: exception do
      RaiseException('GetUser', e, self, self.LogString);

  end;
end;

procedure TJanuaOrmServerSystem.LoadProfile;
begin
  inherited;

end;

function TJanuaOrmServerSystem.login(const aUserName, aPassword: string): Boolean;
begin
  Result := False;
  try
    Guard.CheckTrue((FServerType in [TJanuaServerType.jstRestServer, TJanuaServerType.jstRestClient]) or
      Assigned(FLocalStorage) or Assigned(FRemoteStorage));
    if (aUserName = '') or (aPassword = '') then
      exit(False);
    // Imposto User al livello di Default
    User.Clear;
    // a questo punto imposto User ai valori di Username & Pwd
    self.User.username.AsString := aUserName;
    self.User.password.AsString := aPassword;
    self.User.Email.AsString := aUserName;
    self.WriteLog('Login', '(' + aUserName + ', ' + aPassword + ')');
    Result := self.login;
  except
    on e: exception do
      RaiseException('Login', e, self, self.LogString);
  end;
  self.ClearLocalLog('Login');
end;

function TJanuaOrmServerSystem.login: Boolean;
var
  LResult: IJanuaFuncResult;
  LParams: IJanuaParams;
begin
  Result := False;
  try
    if Assigned(self.FLocalStorage) then
    begin
      FLocalStorage.CreateDataset;
      Result := FLocalStorage.login(User);
      if Result then
      begin
        FUserSession.LoadFromLocalStorage
      end;
    end
    else if Assigned(FRemoteStorage) then
    begin
      Result := FRemoteStorage.login(User);
      if Result then
      begin
        FUserSession.LoadFromDataset;
        // self.FUserSession.Assign(self.FRemoteStorage.UserSession);
      end;
    end
    else // si tratta di un REST Client. Quindi eseguo una chiamata 'REST' al server per la login
    begin
      // per creare i parametri uso la funzione del Server Cms
      LParams := self.CreateLoginParams;
      // Recupero il risultato della funzione remota di Login
      LResult := TServerHelper.OpenServerFunction('system', 'login', LParams);
      Result := not(LResult.HasErrors);
      if Result then
      begin
        // bArticle viene creato assegnandogli il primo Record di Rec Result.
        Guard.CheckTrue(LResult.RecResult.Records.Count <> 0, self.ClassName + '.Login LResult Records = 0');
        FUserSession.Clear;
        FUserSession.Append(LResult.RecResult.Records[0]);
      end
    end;

    // Se la login 'sembra' andata a buon fine effettuo un ultima verifica sull'ID dell'utente loggato

    if Result then
      Result := FUserSession.UserSession.User.DbUserId.AsInteger > 0
    else
      FUserSession.UserSession.User.DbUserId.AsInteger := 0;
  except
    on e: exception do
      RaiseException('login', e, self, self.LogString);
  end;
end;

function TJanuaOrmServerSystem.LoginByKey(const aKey: string): Boolean;
begin
  // Imposto i parametri da usare per la login
  username := '';
  password := '';
  SessionKey := aKey;
  Result := (SessionKey <> '') and LoginByKey;
end;

function TJanuaOrmServerSystem.NewProfile: Boolean;
begin
  { TODO : Orm Server System Implement New Profile }
  Result := False;
end;

function TJanuaOrmServerSystem.RestPCheckNewUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
var
  LUserProfile: IUserProfile;
begin
  try
    Guard.CheckNotNull(aContent, ClassName + '.RestGetArguments aContent is nil');
    Guard.CheckTrue(aContent.RecResult.RecordCount > 0, ClassName + '.RestGetArguments aContent is nil');
    // in Questo caso i Parametri sono (per ora) tutti vuoti ma potrebbero contenere un SessionID o un JWT.
    Result := TJanuaFuncResult.Create;
    // Creo lo User Profile
    LUserProfile := TUserProfile.Create('userprofile');
    // Assegno il Record (0)
    LUserProfile.Assign(aContent.RecResult.Records[0]);
    Result.HasErrors := self.CheckNewUser(LUserProfile);
    if Result.HasErrors then
      Result.ErrorMessage := 'User Already Exists';
    Result.RecResult.Records[0].Assign(LUserProfile);
    // Result.RecResult.Records.Add(LUserProfile);
  except
    on e: exception do
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := ('TJanuaServerCms.RestCheckNewUser(' + UserProfile.User.username.AsString + '): '
        + e.Message);
    end;
  end;
end;

function TJanuaOrmServerSystem.RestPCreateNewUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
begin

end;

function TJanuaOrmServerSystem.RestUpdateUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
begin

end;

function TJanuaOrmServerSystem.RestCheckNewUser(const aParams: IJanuaParams): IJanuaFuncResult;
begin

end;

function TJanuaOrmServerSystem.RestCreateNewUser(const aParams: IJanuaParams): IJanuaFuncResult;
begin

end;

function TJanuaOrmServerSystem.RestLogin(const aParams: IJanuaParams): IJanuaFuncResult;
var
  LUserName, LPassword: string;
  LTmpParam: IJanuaField;
begin
  Guard.CheckNotNull(aParams, 'TJanuaOrmServerSystem.RestLogin aParams is nil');
  // creo la funzione risultato
  Result := TJanuaFuncResult.Create;
  Result.HasErrors := False;

  // imposto i paramertri UserName & Password
  LTmpParam := aParams.ParamByName('username');
  if Assigned(LTmpParam) then
  begin
    LUserName := LTmpParam.AsString;
    if LUserName = '' then
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := 'Param UserName is empty';
    end;
  end
  else
  begin
    Result.HasErrors := True;
    Result.ErrorMessage := 'Param username not found';
  end;

  LTmpParam := aParams.ParamByName('password');
  if Assigned(LTmpParam) then
  begin
    LPassword := LTmpParam.AsString;
    if LPassword = '' then
    begin
      Result.HasErrors := True;
      Result.ErrorMessage := 'Param password is empty';
    end;
  end
  else
  begin
    Result.HasErrors := True;
    Result.ErrorMessage := Result.ErrorMessage + ' Param password not found';
  end;

  // la login ed imposto Error=True in caso di mancata Login not Login.
  Result.HasErrors := Result.HasErrors or not login(LUserName, LPassword);

  if Result.HasErrors then
  begin
    Result.ErrorMessage := IfThen(Result.ErrorMessage = '', 'Username o Password Errate',
      Result.ErrorMessage);
  end
  else
  begin
    // se la login ? andata a buon fine l'avvenuta procedura di Login dovrebbe avere creato una
    // Sessione utente e quindi un Token da passare come risultato della Login al Client
    // Carico quindi la User Session nel Record di Risultato e la invio al client.
    // la User Session era un id Random formato da una stringa di 32 o 64 caratteri.
    // Dovrebbe essere sostituita da un identificativo unico GUID.
    Result.RecResult.Records.Add(FUserSession.UserSession);
  end;

end;

function TJanuaOrmServerSystem.RestLoginByGUID(const aParams: IJanuaParams): IJanuaFuncResult;
var
  aSessionKey: string;
begin
  // creo la funzione risultato
  Result := TJanuaFuncResult.Create;
  // imposto il parametro sessionkey
  aSessionKey := aParams.ParamByName('sessionkey').AsString;
  // Verifico la login ed imposto Error=True in caso di mancata Login not Login.
  Result.HasErrors := not aSessionKey.IsEmpty and not self.LoginByKey(aSessionKey);

  if Result.HasErrors then
  begin
    Result.ErrorMessage := 'Username o Password Errate';
  end
  else
  begin
    // se la login ? andata a buon fine l'avvenuta procedura di Login dovrebbe avere creato una
    // Sessione utente e quindi un Token da passare come risultato della Login al Client
    // Carico quindi la User Session nel Record di Risultato e la invio al client.
    // la User Session era un id Random formato da una stringa di 32 o 64 caratteri.
    // Dovrebbe essere sostituita da un identificativo unico GUID.
    Result.RecResult.Records.Add(FUserSession.UserSession);
  end;

end;

function TJanuaOrmServerSystem.RestLoginByKey(const aParams: IJanuaParams): IJanuaFuncResult;
begin
  Result := TJanuaFuncResult.Create;
  Result.HasErrors := True;
  Result.ErrorMessage := 'RestLoginByKey Not Implemented'
  { TODO -cIndy : TJanuaOrmServerSystem.LoginByGUID }
end;

function TJanuaOrmServerSystem.LoginByGUID(const aGUID: TGUID): Boolean;
begin
  Result := False
  { TODO -cIndy : TJanuaOrmServerSystem.LoginByGUID }
end;

function TJanuaOrmServerSystem.LoginByKey: Boolean;
var
  LResult: IJanuaFuncResult;
  LParams: IJanuaParams;
begin
  Result := False;
  /// Login in caso di Server 'locale'. Ad esempio l'application server.
  Guard.CheckFalse(SessionKey = '', 'TJanuaOrmServerSystem.LoginByKey Session Key is nil');
  if Assigned(FLocalStorage) then
  begin
    FLocalStorage.CreateDataset;
    Result := FLocalStorage.LoginByKey(SessionKey);
    if Result then
      FUserSession.LoadFromDataset // (self.FLocalStorage.UserSession);
  end
  else if Assigned(FRemoteStorage) then
  begin
    Result := FRemoteStorage.login(User);
    if Result then
    begin
      self.FUserSession.LoadFromDataset // .Assign(self.FRemoteStorage.UserSession);
    end;
  end
  else // si tratta di un REST Client. Quindi eseguo una chiamata 'REST' al server per la login
  begin
    // per creare i parametri uso la funzione del Server System.
    LParams := CreateLoginParams;
    // Recupero il risultato della funzione remota di Login
    LResult := TServerHelper.OpenServerFunction('system', 'login', LParams);
    Result := not(LResult.HasErrors);
    if Result then
    begin
      // bArticle viene creato assegnandogli il primo Record di Rec Result.
      Guard.CheckTrue(LResult.RecResult.Records.Count <> 0, self.ClassName + '.Login LResult Records = 0');
      FUserSession.Clear;
      FUserSession.Append(LResult.RecResult.Records[0]); // .Assign()
    end
  end;
end;

{ TJanuaSystemCache }

procedure TJanuaSystemCache.SetUserProfiles(const Value: IUserProfiles);
begin
  FUserProfiles := Value;
end;

procedure TJanuaSystemCache.SetUsers(aVal: IUsers);
begin

end;

function TJanuaSystemCache.GetUserProfiles: IUserProfiles;
begin

end;

function TJanuaSystemCache.GetUsers: IUsers;
begin
  Result := self.FUsers
end;

procedure TJanuaSystemCache.SetUserSessions(aVal: IUserSessions);
begin
  self.FUserSessions := aVal
end;

procedure TJanuaSystemCache.StartSession;
begin
  self.FUserSessions.Append;
  self.FUserSessions.UserSession.User.Assign(self.FUsers.User);

end;

function TJanuaSystemCache.GetUserSessions: IUserSessions;
begin

end;

function TJanuaSystemCache.SearchUser(fullusername: string; out aUserProfile: IUserProfile): Boolean;
begin
  Result := FUserNameNdx.ContainsKey(fullusername.ToLower);
  if Result then
    Result := (FUserNameNdx.TryGetValue(fullusername.ToLower, aUserProfile));
end;

function TJanuaSystemCache.SearchUserByID(aID: integer; out aUserProfile: IUserProfile): Boolean;
begin
  Result := self.FUsersProfilesIDNDX.ContainsKey(aID);
  if Result then
    Result := (FUsersProfilesIDNDX.TryGetValue(aID, aUserProfile));

end;

procedure TJanuaSystemCache.SetSelectedSession(aVal: IUserSession);
begin

end;

function TJanuaSystemCache.GetSelectedSession: IUserSession;
begin

end;

function TJanuaSystemCache.login(aUserName, aPassword: string; aUser: IUser): Boolean;
var
  aRec: TPasswordRec;
begin
  aUser.Clear;
  aRec := TPasswordRec.Create(aUserName, aPassword);
  Result := self.FUsersLogin.TryGetValue(aRec, aUser)
end;

procedure TJanuaSystemCache.Populate;
begin
  self.FUsers.LoadFromLocalStorage;
  FUsers.First;
  while not self.FUsers.Eof do
  begin
    FUsersLogin.Add(TPasswordRec.Create(FUsers.Email.AsString, FUsers.password.AsString), FUsers.User);
    self.FUsers.Next;
  end;
end;

procedure TJanuaSystemCache.AddSession(aUserSession: IUserSessions);
begin
  self.FUserSessions.Append(aUserSession as IJanuaRecord);
end;

procedure TJanuaSystemCache.AddUser(const aUser: IUser);
begin
  self.FUsers.Append(aUser as IJanuaRecord);
  self.FUsers.Post;
  FUsersLogin.Add(TPasswordRec.Create(aUser.Email.AsString, aUser.password.AsString), FUsers.User);
end;

procedure TJanuaSystemCache.AddUserProfile(aUserProfile: IUserProfile);
begin
  self.FUserProfiles.Append(aUserProfile as IJanuaRecord);
  self.FUsersProfilesIDNDX.Add(aUserProfile.Db_user_id.AsLargeInt, FUserProfiles.UserProfile);
  FUserProfiles.Post;
end;

constructor TJanuaSystemCache.Create(aStorage: IJanuaSystemStorage);
begin
  self.Create;
  Guard.CheckNotNull(aStorage, 'TJanuaSystemCache.Create(aStorage: nil)');
  self.FStorage := aStorage;
  FUsersLogin := TCollections.CreateDictionary<TPasswordRec, IUser>;
  FUsersProfilesIDNDX := TCollections.CreateDictionary<Int64, IUserProfile>;
  FUserNameNdx := TCollections.CreateDictionary<string, IUserProfile>;
end;

{ TPasswordRec }

constructor TPasswordRec.Create(const aName, aPwd: string);
begin
  self.username := aName;
  self.password := aPwd;
end;

constructor TJanuaOrmServerSystem.Create(const aCache: IJanuaSystemCache; aStorage: IJanuaSystemStorage;
  aServerType: TJanuaServerType = jstDBServer);
begin
  Guard.CheckNotNull(aCache, 'TJanuaOrmServerSystem.Create aCache is null');
  Guard.CheckNotNull(aStorage, 'TJanuaOrmServerSystem.Create aStorage is null');
  Create(aCache, aStorage, nil, aServerType);
end;

function TJanuaOrmServerSystem.CacheLogin: Boolean;
begin
  Result := FServerCache.login(self.FUserName, self.FPassword, self.FUserSession.UserSession.User);
end;

function TJanuaOrmServerSystem.StorageLogin: Boolean;
begin
  Result := False
  { TODO -cIndy : TJanuaOrmServerSystem.StorageLogin }

end;

function TJanuaOrmServerSystem.SaveProfile: Boolean;
begin
  Result := False
  { TODO -cIndy : TJanuaOrmServerSystem.SaveProfile }

end;

function TJanuaOrmServerSystem.SearchUser(fullusername: string): Boolean;
var
  LUserProfile: IUserProfile;
begin
  Result := False;
  LUserProfile := FSearchedUser.UserProfile;
  // self.FSearchedUser := TUserProfile.Create('tmpuserprofile');
  if Assigned(self.FCache) then
    Result := self.FCache.SearchUser(fullusername, LUserProfile);
  if Result then
  begin
    self.FSearchedUser.Clear;
    self.FSearchedUser.Append(LUserProfile);
  end
  else
  begin
    Result := self.FLocalStorage.SearchUserByEmail(fullusername);
    if Result then
      FSearchedUser.LoadFromDataset // Assign(self.FLocalStorage.SearchedUser);
  end;
end;

function TJanuaOrmServerSystem.SearchUserByEmail(aMail: string): Boolean;
begin
  Result := FLocalStorage.SearchUserByEmail(aMail);
  if Result then
    FSearchedUser.LoadFromDataset // .Assign(FLocalStorage.SearchedUser);
end;

function TJanuaOrmServerSystem.SearchUserByID(aID: integer): Boolean;
begin
  Result := FLocalStorage.SearchUserByID(aID);
  if Result then
    FSearchedUser.LoadFromDataset // .Assign(FLocalStorage.SearchedUser);
end;

procedure TJanuaOrmServerSystem.SetDefaultSchema(aSchemaID: integer);
begin

end;

procedure TJanuaOrmServerSystem.SetIsLoggedIn(aVal: Boolean);
begin

end;

function TJanuaOrmServerSystem.CheckNewUser(aUser: string): Boolean;
begin
  Result := not(aUser = '') and not(FLocalStorage.SearchUserByEmail(aUser))
end;

function TJanuaOrmServerSystem.CheckNewUser(const aUser: IUserProfile): Boolean;
begin
  Result := self.CheckNewUser(aUser.User)
end;

function TJanuaOrmServerSystem.CheckNewUser(const aUser: IUser): Boolean;
begin
  Result := self.CheckNewUser(IfThen(User.Email.AsString <> '', User.Email.AsString, User.username.AsString))
end;

constructor TJanuaOrmServerSystem.Create(const aCache: IJanuaSystemCache;
  const aLocalStorage, aRemoteStorage: IJanuaSystemStorage; aServerType: TJanuaServerType = jstDBServer);
begin
  Create(aServerType);
  FServerCache := aCache;
  FStorage := aLocalStorage;
  FLocalStorage := aLocalStorage;
  FRemoteStorage := aRemoteStorage;

  if Assigned(FLocalStorage) then
  begin
    FLocalStorage.KeepAlive := True;
    FLocalStorage.CreateDataset;
    Guard.CheckNotNull(FLocalStorage.UsersListStorage,
      ClassName + '.Create LocalStorage.UsersListStorage is nil');
    FUsersListStorage := FLocalStorage.UsersListStorage; // ---------------------------------- FLocalStorage
    Guard.CheckNotNull(FLocalStorage.UserSessionStorage,
      ClassName + '.Create LocalStorage.UserSessionStorage is nil');
    FUserSessionStorage := FLocalStorage.UserSessionStorage;
    // ---------------------------------- FLocalStorage
    Guard.CheckNotNull(FLocalStorage.SearchedUserStorage,
      ClassName + '.Create LocalStorage.SearchedUserStorage is nil');
    FSearchedUserStorage := FLocalStorage.SearchedUserStorage;
    // ---------------------------------- FLocalStorage
  end;

  // ---------------------------------- FUserSession ----------------------------------------------
  FUserSession := TUserSessionFactory.CreateRecordset('usersession', self.FUserSessionStorage, nil);
  AddRecordSet(FUserSession); // Important

  // ---------------------------------- FUsersList ----------------------------------------------
  self.FUsersList := TUsers.Create('userslist', self.FUsersListStorage, nil);
  AddRecordSet(FUsersList); // Important

  // ---------------------------------- FUsersList ----------------------------------------------
  FSearchedUser := TUserProfiles.Create('userslist', FSearchedUserStorage, nil);
  AddRecordSet(FSearchedUser); // Important

  { s
    property LeaguesStorage: IJanuaRecordSetStorage read GetLeaguesStorage write SetLeaguesStorage;
    FUsersListStorage: IJanuaRecordSetStorage;
    FUserSessionStorage: IJanuaRecordSetStorage;
    FSearchedUserStorage: IJanuaRecordSetStorage;
  }
end;

function TJanuaOrmServerSystem.CreateLoginParams: IJanuaParams;
begin
  Result := TJanuaSystemFactory.CreateLoginParams;
  Result.ParamByName('username').AsString := username;
  Result.ParamByName('password').AsString := password;
  Result.ParamByName('key').AsString := self.SessionKey;
end;

function TJanuaOrmServerSystem.CreateNewUser(const aUser: IUserProfile): Boolean;
begin
  Result := False;
  try
    Result := CheckNewUser(aUser);
    if Result then
      Result := self.FLocalStorage.AddUser(aUser);
    if Result then
      FUserSession.LoadFromLocalStorage;
  except
    on e: exception do
      RaiseException('CreateNewUser', e, self, '');
  end;
end;

function TJanuaOrmServerSystem.Deactivate(const aUser: IUserProfile): Boolean;
begin
  Result := False
  { TODO -cIndy : TJanuaOrmServerSystem.Deactivate(aUser: string) }
end;

function TJanuaOrmServerSystem.Deactivate(aUser: string): Boolean;
begin
  Result := False
  { TODO -cIndy : TJanuaOrmServerSystem.Deactivate(aUser: string) }
end;

function TJanuaOrmServerSystem.DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): Boolean;
begin
  Result := False;
  try
    Result := self.SearchUserByID(aUserID) and DoPaymentSelectedUser(aAmount, aDate);
  except
    on e: exception do
      RaiseException('DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate)', e, self, '');
  end;
end;

function TJanuaOrmServerSystem.DoPayment(aSessionKey: string; aAmount: Currency; aDate: TDate): Boolean;
begin
  Result := False;
  try
    Result := self.LoginByKey(aSessionKey) and DoPaymentSession(aAmount, aDate);
  except
    on e: exception do
      RaiseException('DoPayment(aSessionKey: string; aAmount: Currency; aDate: TDate)', e, self, '');
  end;
end;

function TJanuaOrmServerSystem.DoPaymentEMail(aEmail: string; aAmount: Currency; aDate: TDate): Boolean;
begin
  Result := False;
  try
    Result := SearchUser(aEmail) and DoPaymentSelectedUser(aAmount, aDate);
  except
    on e: exception do
      RaiseException('DoPaymentEMail', e, self, '');
  end;
end;

procedure TJanuaOrmServerSystem.CreateUserSession;
begin
  if not Assigned(FUserSession) then
    FUserSession := TUserSessionFactory.CreateRecordset('usersession', FUserSessionStorage,
      FRemoteUserSessionStorage);
end;

function TJanuaOrmServerSystem.DoPaymentSelectedUser(aAmount: Currency; aDate: TDate): Boolean;
begin
  Result := False;
  try
    Result := Assigned(FLocalStorage) and IsLoggedIn and (SearchedUser.Db_user_id.AsInteger > 0) and
      FLocalStorage.DoPaymentSearchUser(aAmount, aDate)
  except
    on e: exception do
      RaiseException('DoPaymentSelectedUser', e, self, '');
  end;
end;

function TJanuaOrmServerSystem.DoPaymentSession(aAmount: Currency; aDate: TDate): Boolean;
begin
  Result := Assigned(self.FLocalStorage) and IsLoggedIn and FLocalStorage.DoPaymentSession(aAmount, aDate)
end;

constructor TJanuaOrmServerSystem.Create(const aServerType: TJanuaServerType = jstDBServer);
begin
  inherited;
  try
    self.FName := 'system';
    // Registrazione della lista dei metodi Rest esposti
    AddFunction('login', self.RestLogin);
    AddFunction('loginbykey', self.RestLoginByKey);
    AddFunction('checknewuser', self.RestCheckNewUser);
    AddFunction('createnewuser', self.RestCreateNewUser);
  except
    on e: exception do
      RaiseException('Create', e, self, '');
  end;
end;

function TJanuaOrmServerSystem.GetIsLoggedIn: Boolean;
begin
  Result := (FUserSession.UserSession.Db_user_id.AsInteger > 0);
end;

procedure TJanuaOrmServerSystem.SetPassword(aVal: String);
begin

end;

function TJanuaOrmServerSystem.GetPassword: String;
begin

end;

procedure TJanuaOrmServerSystem.SetUsername(aVal: String);
begin

end;

function TJanuaOrmServerSystem.GetUsername: String;
begin
  Result := self.FUserSession.UserSession.User.username.AsString
end;

{ TJanuaServerSystemFactory }

function TJanuaServerSystemFactory.GetServerSystem(aServerType: TJanuaServerType = jstDBServer)
  : IJanuaServerSystem;
var
  LStorage: IJanuaSystemStorage;
begin
  LStorage := GetSystemStorage;
  if Assigned(LStorage) then
    Result := TJanuaOrmServerSystem.Create(GetSystemCache(LStorage), LStorage, aServerType);
end;

function TJanuaServerSystemFactory.GetServerSystem(const aLocalStorage, aRemoteStorage: IJanuaSystemStorage;
  aServerType: TJanuaServerType = jstDBServer): IJanuaServerSystem;
begin
  if Assigned(aLocalStorage) then
    Result := TJanuaOrmServerSystem.Create(GetSystemCache(aLocalStorage), aLocalStorage, aRemoteStorage)
  else if Assigned(aRemoteStorage) then
    Result := TJanuaOrmServerSystem.Create(GetSystemCache(aLocalStorage), aLocalStorage, aRemoteStorage)
  else if DoNotCheckSever(aServerType) then

end;

function TJanuaServerSystemFactory.GetSystemCache(aStorage: IJanuaSystemStorage): IJanuaSystemCache;
begin
  Result := TJanuaSystemCache.Create(aStorage);
end;

function TJanuaServerSystemFactory.GetSystemCache: IJanuaSystemCache;
begin
  Result := TJanuaSystemCache.Create(GetSystemStorage);
end;

{ TJanuaSystemStorage }

{ TJanuaSystemStorage }

constructor TJanuaSystemStorage.Create;
begin
  inherited;
end;

function TJanuaSystemStorage.GetFUserLogin: IUser;
begin
  if not Assigned(FFUserLogin) then
    FFUserLogin := TUser.Create('loginuser');
  Result := FFUserLogin
end;

function TJanuaSystemStorage.GetLoggedIn: Boolean;
begin
  Result := self.FLoggedIn
end;

function TJanuaSystemStorage.GetRegisterError: TJanuaRegisterError;
begin
  Result := self.FRegisterError
end;

(*
  function TJanuaSystemStorage.GetSearchedUser: IUserProfile;
  begin
  Result := self.FSearchedUser
  end;

  function TJanuaSystemStorage.GetUser: IUser;
  begin
  Result := self.FUserSession.User
  end;

  function TJanuaSystemStorage.GetUserProfile: IUserProfile;
  begin
  Result := self.FUserSession.UserProfile
  end;

  function TJanuaSystemStorage.GetUserSession: IUserSession;
  begin
  Result := self.FUserSession
  end;

  procedure TJanuaSystemStorage.SetSearchedUser(aval: IUserProfile);
  begin
  FSearchedUser := val
  end;

  procedure TJanuaSystemStorage.SetUser(aval: IUser);
  begin
  self.FUserSession.User := val
  end;

  procedure TJanuaSystemStorage.SetUserProfile(aval: IUserProfile);
  begin
  self.FUserSession.UserProfile := val
  end;

  procedure TJanuaSystemStorage.SetUserSession(aval: IUserSession);
  begin
  self.FUserSession := val
  end;

*)

function TJanuaSystemStorage.GetSearchedUserStorage: IJanuaRecordSetStorage;
begin
  Result := self.FSearchedUserStorage
end;

function TJanuaSystemStorage.GetSessionKey: string;
begin
  Result := self.FSessionKey
end;

function TJanuaSystemStorage.GetUserKey: string;
begin
  Result := self.FUserKey
end;

function TJanuaSystemStorage.GetUserSessionStorage: IJanuaRecordSetStorage;
begin
  Result := self.FUserSessionStorage
end;

function TJanuaSystemStorage.GetUsersListStorage: IJanuaRecordSetStorage;
begin
  Result := self.FUsersListStorage
end;

function TJanuaSystemStorage.SearchUserByEmail(const aMail: string): Boolean;
begin
  Result := False;
  { TODO : Completare System Storage Search user by Name }
end;

procedure TJanuaSystemStorage.SetFUserLogin(const Value: IUser);
begin
  FFUserLogin := Value;
end;

procedure TJanuaSystemStorage.SetLoggedIn(Value: Boolean);
begin
  self.FLoggedIn := Value;
end;

procedure TJanuaSystemStorage.SetRegisterError(const Value: TJanuaRegisterError);
begin
  self.FRegisterError := Value
end;

procedure TJanuaSystemStorage.SetSearchedUserStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FSearchedUserStorage := Value
end;

procedure TJanuaSystemStorage.SetSessionKey(const Value: string);
begin
  self.FSessionKey := Value;
end;

function TJanuaSystemStorage.SetupLogin(const aUser: IUser; const aMailLogin: Boolean): Boolean;
var
  LMailLogin: Boolean;
begin
  // aMailLogin := True;
  LMailLogin := True;
  Result := True;

  FUserLogin := aUser; // imposto FUserLogin come variabile di AUser;

  WriteLocalLog('login', 'email: ' + aUser.Email.AsString);
  WriteLocalLog('login', 'Password: ' + aUser.password.AsString);
  WriteLocalLog('login', 'Social Network: ' + aUser.SocialType.AsString);
  WriteLocalLog('login', 'Social ID: ' + aUser.SocialID.AsString);
  WriteLocalLog('login', 'Controllo email');

  if (aUser.Email.AsString = '') or (aUser.Email.AsString = aUser.SocialType.AsString.ToLower + '-' +
    aUser.SocialID.AsString + '@ergomercator.com') or (aUser.password.AsString = '') then
  begin
    if (aUser.SocialID.AsString = '') then
    begin
      Result := False;
      self.SetLastErrorMessage('Wrong or nul mail address or Social ID');
      WriteLocalLog('login', 'Wrong or nul mail address');
    end
    else if (aUser.SocialID.AsString <> '') and (aUser.SocialType.AsString = '') then
    begin
      Result := False;
      self.SetLastErrorMessage('Social ID Without Social Network');
      WriteLocalLog('login', 'Social ID Without Social Network');
    end
    else
    begin
      LMailLogin := False;
      if not IsValidEmail(aUser.Email.AsString) then
        aUser.Email.AsString := aUser.SocialType.AsString.ToLower + '-' + aUser.SocialID.AsString.ToLower +
          '@ergomercator.com';
    end;
  end;

  WriteLocalLog('login', 'Controllo password');
  if Result and LMailLogin and (aUser.password.AsString = '') then
  begin
    begin
      Result := False;
      SetLastErrorMessage('Attenzione non avete compilato la password');
      WriteLocalLog('login', LastErrorMessage);
    end;
  end;
end;

procedure TJanuaSystemStorage.SetUserKey(const Value: String);
begin
  self.FUserKey := Value
end;

procedure TJanuaSystemStorage.SetUserSessionStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FUserSessionStorage := Value
end;

procedure TJanuaSystemStorage.SetUsersListStorage(const Value: IJanuaRecordSetStorage);
begin
  self.FUsersListStorage := Value
end;

{ TJanuaDBSystemStorage }

constructor TJanuaDBSystemStorage.Create;
begin
  inherited Create;
end;

function TJanuaDBSystemStorage.GetjdsSearchUserProfiles: IJanuaDBDataset;
begin
  Result := self.FjdsSearchUserProfiles
end;

function TJanuaDBSystemStorage.GetjdsSearchUsers: IJanuaDBDataset;
begin
  Result := self.FjdsSearchUsers
end;

function TJanuaDBSystemStorage.GetjdsUserProfiles: IJanuaDBDataset;
begin
  Result := self.FjdsUserProfiles
end;

function TJanuaDBSystemStorage.GetjdsUsers: IJanuaDBDataset;
begin
  Result := FjdsUsers
end;

function TJanuaDBSystemStorage.GetjdsUserSessions: IJanuaDBDataset;
begin
  Result := self.FjdsUserSessions
end;

function TJanuaDBSystemStorage.SearchUsers(const aUserName, aEmail: string): integer;
begin
  Result := -1;
  Guard.CheckNotNull(FjdsUsers, 'TJanuaDBSystemStorage.SearchUsers.FjdsUsers is nil');
  try
    self.FjdsUsers.ParamByName('email').AsString := aEmail;
    self.FjdsUsers.ParamByName('username').AsString := aUserName;
    FjdsUsers.Open;
    Result := FjdsUsers.RecordCount;
  except
    on e: exception do
      RaiseException('SearchUsers', e, self, LogString);

  end;
end;

procedure TJanuaDBSystemStorage.SetAfterCreateDataset;
begin
  inherited;

end;

procedure TJanuaDBSystemStorage.SetAfterDestroyDataset;
begin
  inherited;

end;

procedure TJanuaDBSystemStorage.SetInternalAssignDatasets;
begin
  inherited;
  FInternalAssignDatasets := procedure
    begin
      Guard.CheckNotNull(FjdsUsers, 'TJanuaDBSystemStorage.AfterCreateDataset FjdsUsers is nil');

      // se non ? ancora stato creato FArgumentsStorage lo crea e gli assegna i due Dataset di riferimento.
      if not Assigned(FUsersListStorage) then
        FUsersListStorage := TJanuaCustomDatasetStorage.Create('userslist', IUsers { TUsers } , [FjdsUsers]);

      Guard.CheckNotNull(FjdsUserSessions,
        'TJanuaDBSystemStorage.AfterCreateDataset FjdsUserSessions is nil');
      Guard.CheckNotNull(FjdsUserProfiles,
        'TJanuaDBSystemStorage.AfterCreateDataset FjdsUserProfiles is nil');

      // 2020-05-16 User jdsUserSessions include le entities sessions, userprofiles e users
      if not Assigned(FUserSessionStorage) then
        FUserSessionStorage := TJanuaCustomDatasetStorage.Create('UserSessionStorage',
          IUserSessions { TUserSessions } , [FjdsUserSessions { , FjdsUserProfiles, FjdsUsers } ]);

      Guard.CheckNotNull(FjdsSearchUserProfiles,
        'TJanuaDBSystemStorage.AfterCreateDataset FjdsSearchUserProfiles is nil');

      Guard.CheckNotNull(FjdsSearchUsers, 'TJanuaDBSystemStorage.AfterCreateDataset FjdsSearchUsers is nil');

      if not Assigned(FSearchedUserStorage) then
        FSearchedUserStorage := TJanuaCustomDatasetStorage.Create('searcheduser',
          IUserProfiles { TUserProfiles } , [FjdsSearchUserProfiles, FjdsSearchUsers]);
    end;

end;

procedure TJanuaDBSystemStorage.SetInternalCreateDataset;
begin
  inherited;

end;

procedure TJanuaDBSystemStorage.SetInternalCreateDBDataSets;
begin
  inherited;

end;

procedure TJanuaDBSystemStorage.SetInternalDestroyDataset;
begin
  inherited;

  FInternalDestroyDataset := procedure
    begin
      FUsersListStorage := nil;
      FUserSessionStorage := nil;
      FSearchedUserStorage := nil;
    end;
end;

procedure TJanuaDBSystemStorage.SetjdsSearchUserProfiles(Value: IJanuaDBDataset);
begin
  if Assigned(Value) then
    FjdsSearchUserProfiles := Value
  else
    FjdsSearchUserProfiles := nil
end;

procedure TJanuaDBSystemStorage.SetjdsSearchUsers(Value: IJanuaDBDataset);
begin
  FjdsSearchUsers := Value;
end;

procedure TJanuaDBSystemStorage.SetjdsUserProfiles(Value: IJanuaDBDataset);
begin
  FjdsUserProfiles := Value;
end;

procedure TJanuaDBSystemStorage.SetjdsUsers(Value: IJanuaDBDataset);
begin
  if Assigned(Value) then
    FjdsUsers := Value
  else
    FjdsUsers := nil
end;

procedure TJanuaDBSystemStorage.SetjdsUserSessions(Value: IJanuaDBDataset);
begin
  FjdsUserSessions := Value;
end;

{ TJanuaSystemFactory }

class function TJanuaSystemFactory.CreateLoginParams: IJanuaParams;
begin
  Result := TJanuaParams.Create;
  Result.AddParam('username', TJanuaFieldType.jptString, '');
  Result.AddParam('password', TJanuaFieldType.jptString, '');
  Result.AddParam('key', TJanuaFieldType.jptString, '');
end;

end.
