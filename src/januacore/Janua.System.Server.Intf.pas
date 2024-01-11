unit Janua.System.Server.Intf;

interface

uses
  Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.Types, Janua.Core.DB.Intf,
  // Orm
  JOrm.System.Intf;

type
  IJanuaSystemStorage = interface(IJanuaStorage)
    ['{D2421465-F0F8-4ABF-BF6E-960FA8DC9F20}']
    function GetUserKey: string;
    procedure SetUserKey(const Value: String);
    /// <summary> User token or User GUID. </summary>
    property UserKey: string read GetUserKey write SetUserKey;
    function GetRegisterError: TJanuaRegisterError;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    /// <summary> Latest registrarion Error Type if registration Fails </summary>
    property RegisterError: TJanuaRegisterError read GetRegisterError write SetRegisterError;
    /// <summary> Local Test requires System Storage to output logs to console or store logs to file </summary>
    procedure SetLocalTest(const Value: boolean);
    /// <summary> Open user's profile After Login, opens and assign data to recordset </summary>
    procedure OpenUserProfile;
    // <summary> Close user's profile After Assigning data to RecordSet. Does not Clean </summary>
    procedure CloseProfile;
    /// <summary> Updates profile on REST endpoint or Database if changed. Returns false if fails </summary>
    function SaveProfile(const aProfile: IUserProfile): boolean;
    procedure SetProfileFromQuery;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: integer): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by TGUID </summary>
    function searchuserbyGUID(const aGUID: TGUID): boolean; overload;
    /// <summary> Adds an user with a default profile  with auto registration </summary>
    function AddUser(const aUser: IUserProfile): boolean;
    /// <summary> Adds an user with a default profile  set by a super user requires an active session </summary>
    function AdminAddUser(const aUser: IUserProfile): boolean;
    /// <summary> Standard Login with a IUser interface as input, sets a local user-session </summary>
    function login(const aUser: IUser): boolean;
    /// <summary> Standard Login with a session key or Token interface as input, sets a local user-session </summary>
    function LoginByKey(const aKey: string): boolean; overload;
    /// <summary> Check if a user is logged In </summary>
    function GetLoggedIn: boolean;
    /// <summary> Login With already Stored Session Key </summary>
    function LoginByKey: boolean; overload;
    /// <summary> returns an user-session if user is logged in sets local session Variable </summary>
    procedure GetSession;
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(const aID: Int64): smallint;
    // search users by List Returns the number of found Users
    function SearchUsers(const aUserName, aEmail: string): integer;
    /// <summary> Searches and user's profile using its unique GUID or Token Identifier. The sets SearchedUser </summary>
    /// <param name="aKey"> unique identifier (GUID or Token) for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function SearchUserByKey(const aKey: string): boolean;
    procedure GetSchemasList(const SessionKey: string);
    /// <summary> Searches and user's profile using its unique identifier. The sets SearchedUser </summary>
    /// <param name="aID"> unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function SearchUserByID(const aID: integer): boolean;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aName"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function SearchUserByName(const aName: string): boolean;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aMail"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function SearchUserByEmail(const aMail: string): boolean;
    /// <summary> Searches and user's profile using its social unique identifier. The sets SearchedUser </summary>
    /// <param name="aID"> social profile unique identifier </param>
    /// <param name="aSocial"> social network for the unique identifier  </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function SearchUserBySocialID(aID: string; aSocial: string): boolean;
    /// <summary> basic payment function, on searched user found by ID or Token or EMail </summary>
    function DoPaymentSearchUser(const aAmount: Currency; const aDate: TDate): boolean;
    /// <summary> basic payment function, on session or user logged in  </summary>
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean;

    procedure SetSessionKey(const Value: string);
    function GetSessionKey: string;
    /// <summary> Session Key for current Session. Connects a cookie or token session to db session </summary>
    property SessionKey: string read GetSessionKey write SetSessionKey;
    function GetUsersListStorage: IJanuaRecordSetStorage;
    function GetUserSessionStorage: IJanuaRecordSetStorage;
    function GetSearchedUserStorage: IJanuaRecordSetStorage;
    procedure SetUsersListStorage(const Value: IJanuaRecordSetStorage);
    procedure SetUserSessionStorage(const Value: IJanuaRecordSetStorage);
    procedure SetSearchedUserStorage(const Value: IJanuaRecordSetStorage);
    property SearchedUserStorage: IJanuaRecordSetStorage read GetSearchedUserStorage write SetSearchedUserStorage;
    property UserSessionStorage: IJanuaRecordSetStorage read GetUserSessionStorage write SetUserSessionStorage;
    property UsersListStorage: IJanuaRecordSetStorage read GetUsersListStorage write SetUsersListStorage;
  end;

type
  IJanuaSystemDBStorage = interface(IJanuaSystemStorage)
    ['{558FFF68-85D3-478F-B6A9-9F6FACC3D881}']
    procedure SetjdsUserProfiles(Value: IJanuaDBDataset);
    procedure SetjdsUsers(Value: IJanuaDBDataset);
    procedure SetjdsUserSessions(Value: IJanuaDBDataset);
    function GetjdsUsers: IJanuaDBDataset;
    function GetjdsUserProfiles: IJanuaDBDataset;
    function GetjdsUserSessions: IJanuaDBDataset;
    /// <summary> System User that is currently logged in which belongs to User Session </summary>
    property jdsUsers: IJanuaDBDataset read GetjdsUsers write SetjdsUsers;
    /// <summary> User profile for user that is currently logged in with public and detailed info </summary>
    property jdsUserProfiles: IJanuaDBDataset read GetjdsUserProfiles write SetjdsUserProfiles;
    /// <summary> User Session for logged in user. Can be linked to Session stored in cookies or Json Token </summary>
    property jdsUserSessions: IJanuaDBDataset read GetjdsUserSessions write SetjdsUserSessions;
    function GetjdsSearchUsers: IJanuaDBDataset;
    procedure SetjdsSearchUsers(Value: IJanuaDBDataset);
    property jdsSearchUsers: IJanuaDBDataset read GetjdsSearchUsers write SetjdsSearchUsers;
    function GetjdsSearchUserProfiles: IJanuaDBDataset;
    procedure SetjdsSearchUserProfiles(Value: IJanuaDBDataset);
    /// <summary> jdsSearchUserProfiles maintains a distinct query for user profiles other than system users </summary>
    property jdsSearchUserProfiles: IJanuaDBDataset read GetjdsSearchUserProfiles write SetjdsSearchUserProfiles;
  end;

type
  IJanuaSystemCache = interface(IInterface)
    ['{B927316A-F368-4330-BEFB-F86CD75F922D}']
    procedure SetUsers(val: IUsers);
    function GetUsers(): IUsers;
    property users: IUsers read GetUsers write SetUsers;
    procedure SetUserSessions(val: IUserSessions);
    function GetUserSessions(): IUserSessions;
    property UserSessions: IUserSessions read GetUserSessions write SetUserSessions;
    procedure SetSelectedSession(val: IUserSession);
    function GetSelectedSession(): IUserSession;
    property SelectedSession: IUserSession read GetSelectedSession write SetSelectedSession;
    function GetUserProfiles(): IUserProfiles;
    procedure SetUserProfiles(const Value: IUserProfiles);
    property UserProfiles: IUserProfiles read GetUserProfiles write SetUserProfiles;
    // procedures
    function login(aUserName, aPassword: string; aUser: IUser): boolean;
    procedure AddSession(aUserSession: IUserSessions);
    procedure AddUser(const aUser: IUser);
    procedure AddUserProfile(aUserProfile: IUserProfile);
    function SearchUser(fullusername: string; out aUserProfile: IUserProfile): boolean;
    function SearchUserByID(aID: integer; out aUserProfile: IUserProfile): boolean;
  end;

type
  IJanuaServerSystem = interface(IJanuaServer)
    ['{2DA3E172-BEBB-4899-88B1-BBF15A12D237}']
    procedure SetPassword(val: String);
    function GetPassword(): String;
    property Password: String read GetPassword write SetPassword;
    procedure SetUsername(val: String);
    function GetUsername(): String;
    property Username: String read GetUsername write SetUsername;
    procedure SetIsLoggedIn(val: boolean);
    function GetIsLoggedIn(): boolean;
    property IsLoggedIn: boolean read GetIsLoggedIn;
    procedure SetServerCache(val: IJanuaSystemCache);
    function GetServerCache(): IJanuaSystemCache;
    property ServerCache: IJanuaSystemCache read GetServerCache write SetServerCache;
    procedure SetUsersList(val: IUsers);
    function GetUsersList(): IUsers;
    property UsersList: IUsers read GetUsersList write SetUsersList;

    procedure SetUserProfile(val: IUserProfile);
    function GetUserProfile(): IUserProfile;
    /// <summary> User profile after login. Contains user login and user profile informations </summary>
    property userprofile: IUserProfile read GetUserProfile write SetUserProfile;

    procedure SetUserSession(val: IUserSessions);
    function GetUserSession(): IUserSessions;
    /// <summary> User session after login. Session login info and full user profile informations </summary>
    property UserSession: IUserSessions read GetUserSession write SetUserSession;

    procedure SetUser(val: IUser);
    function GetUser(): IUser;
    /// <summary> This is the session's user. Usually corresponding to the session.user object </summary>
    property User: IUser read GetUser write SetUser;

    procedure SetSearchedUser(val: IUserProfiles);
    function GetSearchedUser(): IUserProfiles;
    /// <summary> This is a searched user other than the session's owner. </summary>
    property SearchedUser: IUserProfiles read GetSearchedUser write SetSearchedUser;

    // procedures and Functions
    function login: boolean; overload;
    function login(const aUserName, aPassword: string): boolean; overload;
    /// <summary> Login to session using session key or stored session Token </summary>
    /// <param name="aKey"> session's key or token </param>
    /// <returns> bool if session found and session not expired </returns>
    function LoginByKey(const aKey: string): boolean;
    /// <summary> Login to session using session key or stored session GUID </summary>
    /// <param name="aGUID"> session's GUID from json web token </param>
    /// <returns> bool true if session found and session not expired </returns>
    function LoginByGUID(const aGUID: TGUID): boolean;
    /// <summary> Stores user profiel to Dataset </summary>
    /// <returns> bool true if post committed without exceptions </returns>
    function SaveProfile: boolean;
    /// <summary> Clears profile and prepare for input of a new one (used for client cloud sessions) </summary>
    /// <returns> bool true if clearing and prepare are executed </returns>
    function NewProfile: boolean;
    /// <summary> Deactivate from system an user. User can be suddenly deleted with history </summary>
    /// <param name="aUser"> user's profile can contain even only ID, GUID and userid </param>
    /// <returns> bool true if user exists and Deactivate executes  </returns>
    function Deactivate(const aUser: IUserProfile): boolean; overload;
    /// <summary> Deactivate from system an user. User can be suddenly deleted with history </summary>
    /// <param name="aUser"> is the user's email unique id </param>
    /// <returns> bool true if user exists and Deactivate executes  </returns>
    function Deactivate(aUser: string): boolean; overload;
    /// <summary> Check if user contained in the new profile is already on system </summary>
    /// <param name="aUser"> is the new user's Profile </param>
    /// <returns> bool true if user does not exists and profile is correct </returns>
    function CheckNewUser(const aUser: IUserProfile): boolean; overload;
    /// <summary> Check if user contained  is already on system </summary>
    /// <param name="aUser"> is the new user's email used to check if already registered </param>
    /// <returns> bool true if user does not exists and profile is correct </returns>
    function CheckNewUser(aUser: string): boolean; overload;
    function CreateNewUser(const aUser: IUserProfile): boolean;
    procedure LoadProfile;
    function SetUserDefaultSchema(const aUser: IUserProfile): boolean;
    procedure SetDefaultSchema(aSchemaID: integer);
    function SearchUser(fullusername: string): boolean;
    function SearchUserByID(aID: integer): boolean;
    /// <summary> search an user using it's email. Should be another user other than the session one </summary>
    function SearchUserByEmail(aEmail: string): boolean;
    function GetSessionKey(): String;
    procedure SetSessionKey(const Value: String);
    property SessionKey: String read GetSessionKey write SetSessionKey;
    // Rest Server Functions ........................................................................
    /// <summary> Translate to REST login using username/password or Token login </summary>
    /// <param name="aParams"> Set of login Params can be either user, token, email/password </param>
    /// <returns> bool true if session found and session not expired </returns>
    function RestLogin(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestLoginByKey(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestLoginByGUID(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestCheckNewUser(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestPCheckNewUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
    function RestUpdateUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
    /// <summary> This is the procedure to create a new user that is registering himself </summary>
    /// <param name="aParams"> Set of user infos either the 'user' record or set of fields </param>
    /// <returns> True and user profile if correctly registered in system </returns>
    function RestCreateNewUser(const aParams: IJanuaParams): IJanuaFuncResult;
    function RestPCreateNewUser(aContent: IJanuaFuncResult): IJanuaFuncResult;
    /// <summary> basic payment function, when session and user_id are set can be called by other procedures </summary>
    function DoPaymentSession(aAmount: Currency; aDate: TDate): boolean;
    /// <summary> basic payment function, when session and user_id are set can be called by other procedures </summary>
    function DoPaymentSelectedUser(aAmount: Currency; aDate: TDate): boolean;
    /// <summary> Funzione di pagamento abbonamenti attraverso user ID chiamata internamente </summary>
    function DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean; overload;
    /// <summary> Funzione di pagamento abbonamenti attraverso Session Key </summary>
    function DoPayment(aSessionKey: string; aAmount: Currency; aDate: TDate): boolean; overload;
    /// <summary> Funzione di pagamento abbonamenti attraverso indirizzo e-mail utente </summary>
    function DoPaymentEMail(aEmail: string; aAmount: Currency; aDate: TDate): boolean;
  end;

  IJanuaServerSystemFactory = interface(IInterface)
    ['{5BD6276B-33D1-4DE7-BC05-D2EBF9DF5BC8}']
    function GetServerSystem(aServerType: TJanuaServerType = jstDBServer): IJanuaServerSystem; overload;
    function GetServerSystem(const aLocalStorage, aRemoteStorage: IJanuaSystemStorage;
      aServerType: TJanuaServerType = jstDBServer): IJanuaServerSystem; overload;
    function GetSystemStorage: IJanuaSystemStorage;
  end;

var
  GlobalServerSystemFactory: IJanuaServerSystemFactory;

implementation

end.
