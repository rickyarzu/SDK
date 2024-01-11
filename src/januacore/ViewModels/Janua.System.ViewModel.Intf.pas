unit Janua.System.ViewModel.Intf;

interface

uses
  // RTL
  Data.DB, System.SysUtils,
  // Core
  Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.Core.Types,
  // Orm
  Janua.Orm.Intf, JOrm.System.Intf,
  JOrm.System.Session.Intf, JOrm.Anagraph.Intf,
  // ViewModel
  Janua.ViewModels.Intf;

type
  TLoginRegister = (lrLogin, lrRegister);
  TCallBackLoginRegister = TProc<string>;

  IJanuaSystemDataModule = interface(IJanuaDataModuleContainer)
    // set of IJanuaDBDataset and IJanuaDBStoredProcedure
    ['{19762400-1EC8-4D0B-8CAF-F8D49C781123}']
    function GetjdsSchemaConfig: IJanuaDBDataset;
    /// <summary> Stores public configurations and settings for all Schema Applications </summary>
    property jdsSchemaConfig: IJanuaDBDataset read GetjdsSchemaConfig;

    function GetjdsUser: IJanuaDBDataset;
    property jdsUser: IJanuaDBDataset read GetjdsUser;
    // qryUserSession
    function GetjdsUserSession: IJanuaDBDataset;
    property jdsUserSession: IJanuaDBDataset read GetjdsUserSession;
    // qryUserProfile
    function GetjdsUserProfile: IJanuaDBDataset;
    property jdsUserProfile: IJanuaDBDataset read GetjdsUserProfile;
    // spLogin IJanuaDBStoredProcedure
    function GetjspLogin: IJanuaDBStoredProcedure;
    property jspLogin: IJanuaDBStoredProcedure read GetjspLogin;
    // jspUserAdd IJanuaDBStoredProcedure
    function GetjspUserAdd: IJanuaDBStoredProcedure;
    property jspUserAdd: IJanuaDBStoredProcedure read GetjspUserAdd;
    // jspUserAddWithProfile IJanuaDBStoredProcedure
    function GetjspUserAddWithProfile: IJanuaDBStoredProcedure;
    property jspUserAddWithProfile: IJanuaDBStoredProcedure read GetjspUserAddWithProfile;

    // spLoginSocial IJanuaDBStoredProcedure
    function GetjspLoginSocial: IJanuaDBStoredProcedure;
    property jspLoginSocial: IJanuaDBStoredProcedure read GetjspLoginSocial;
    function GetjdsLogin: IJanuaDBDataset;
    /// <summary>IJanuaDBDataset: Login Dataset to populate user session with IUser data and check the login  </summary>
    property jdsLogin: IJanuaDBDataset read GetjdsLogin;
    function GetjspUserTest: IJanuaDBStoredProcedure;
    /// <summary>IJanuaDBStoredProcedure: Stored Procedure to Test if an user si registered in the database  </summary>
    property jspUserTest: IJanuaDBStoredProcedure read GetjspUserTest;

    function GetjspCreatePersonalSchema: IJanuaDBStoredProcedure;
    function GetjdsGetUserByKey: IJanuaDBDataset;
    function GetjdsSearchUserProfile: IJanuaDBDataset;
    function GetjspSetUserDefaultSchema: IJanuaDBStoredProcedure;
    function GetjspUserDel: IJanuaDBStoredProcedure;

    property jspCreatePersonalSchema: IJanuaDBStoredProcedure read GetjspCreatePersonalSchema;
    property jdsGetUserByKey: IJanuaDBDataset read GetjdsGetUserByKey;
    property jdsSearchUserProfile: IJanuaDBDataset read GetjdsSearchUserProfile;
    property jspSetUserDefaultSchema: IJanuaDBStoredProcedure read GetjspSetUserDefaultSchema;
    property jspUserDel: IJanuaDBStoredProcedure read GetjspUserDel;

    function GetjspAddAnagraphProfile: IJanuaDBStoredProcedure;
    /// <summary>IJanuaDBStoredProcedure: Stored Procedure to Associate an angraph id with user profile </summary>
    property jspAddAnagraphProfile: IJanuaDBStoredProcedure read GetjspAddAnagraphProfile;

    function GetjspUpdateUserAnID: IJanuaDBStoredProcedure;
    /// <summary> This procedure updates user profiles connecting it to anagraph profile for invoice mgmgt </summary>
    property jspUpdateUserAnID: IJanuaDBStoredProcedure read GetjspUpdateUserAnID;

    function GetjdsSchemasList: IJanuaDBDataset;
    /// <summary> This table lists user schemas admin only </summary>
    property jdsSchemasList: IJanuaDBDataset read GetjdsSchemasList;
  end;

  IJanuaSystemUserModel = interface(IJanuaModel) // set of IJanuaDBDataset, Procedures and Orm Objects
    ['{654C918A-920C-477A-9071-CE7B719E9872}']
    function GetCurrentRecord: IUserProfile;
    procedure SetCurrentRecord(const Value: IUserProfile);
    property CurrentRecord: IUserProfile read GetCurrentRecord write SetCurrentRecord;
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
    property User: IUser read GetUser write SetUser;

    function GetAnagraphProfile: IAnagraphView;
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;

    /// <summary> Deletes an user from the storage using Searched User Profile by TGUID </summary>
    function searchuserbyGUID(const aGUID: TGUID): Boolean; overload;
  end;

  /// <summary> DB Model for Users Management composed by IJanuaDBDataset, Procedures and Orm Objects</summary>
  IJanuaDBSystemUsersModel = interface(IJanuaDBModel)
    ['{264ED184-1127-4BE3-AA88-2759B2DF0E36}']
    // qryUserProfile
    function GetjdsUserProfile: IJanuaDBDataset;
    property jdsUserProfile: IJanuaDBDataset read GetjdsUserProfile;
    // qryUserProfile
    function GetjdsUser: IJanuaDBDataset;
    property jdsUser: IJanuaDBDataset read GetjdsUser;

    function GetUserProfileRecord: IUserProfile;
    property UserProfileRecord: IUserProfile read GetUserProfileRecord;

  end;

  IJanuaSystemUserSessionModel = interface(IJanuaClientModel)
    ['{1D0CB558-DB30-4205-BCAE-E92E2E7879A2}']
    procedure SetSelectedSchema(const Value: Int64);
    function GetRegisterError: TJanuaRegisterError;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    /// <summary> Latest registrarion Error Type if registration Fails </summary>
    property RegisterError: TJanuaRegisterError read GetRegisterError write SetRegisterError;

    function SaveProfile(const aProfile: IUserProfile): Boolean;
    procedure OpenUserProfile;
    /// <summary> Imposta la lista degli Schemi </summary>
    procedure SetProfileFromQuery;
    function FindUserByKey(const key: string): Boolean;
    function FindUserByID(const Id: integer): Boolean;
    function CheckUser(const aUser: IUserProfile): Boolean;
    /// <summary> Adds a New User providing (also) a Full Profile with Contact and Address Infos </summary>
    function AddUser(const aUser: IUserProfile): Boolean;
    /// <summary> funzione che crea un utente partendo da un profilo utente auto registrato</summary>
    function AdminAddUser(const aUser: IUserProfile): Boolean;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: integer): Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    /// <param name="aMail"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not deleted / not found) </returns>
    function DelUser(const aEmail: string): Boolean; overload;

    /// <summary> Searches and user's profile using its social unique identifier. The sets SearchedUser </summary>
    /// <param name="aID"> social profile unique identifier </param>
    /// <param name="aSocial"> social network for the unique identifier  </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserBySocialID(aID: string; aSocial: string): Boolean;

    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aGUID"> TGUID unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserbyGUID(const aGUID: TGUID): Boolean; overload;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aMail"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserByEmail(const aMail: string): Boolean;
    function GetUserSessionRecord: IUserSession;
    property UserSessionRecord: IUserSession read GetUserSessionRecord;
    function GetSessionID: Int64;
    procedure SetSessionID(const Value: Int64);
    property SessionID: Int64 read GetSessionID write SetSessionID;
    // function SetupLogin(const aUser: IUser; var aMailLogin: boolean): boolean;
    /// <summary> funzione che crea un utente creando un profilo utente da Amministratore </summary>
    function login(const aUser: IUser): Boolean; overload;
    /// <summary> Performs a Login using the internal Stored IUser Profile returns True if succeeds </summary>
    function login: Boolean; overload;
    /// <summary> performs a logout and resets both user informations and Session Informations  </summary>
    procedure LogOut;
    /// <summary> Standard Login with a session key or Token interface as input, sets a local user-session </summary>
    function LoginByKey(const aKey: string): Boolean;
    function GetUserLogin: IUser;
    property UserLogin: IUser read GetUserLogin;
    function GetLastErrorMessage: string;
    property LastErrorMessage: string read GetLastErrorMessage;
    function GetUser: IUser;
    function GetSessionKey: String;
    procedure SetSessionKey(const Value: String);
    procedure vtUserSessionAfterScroll(DataSet: TDataSet);
    function GetUserProfile: IUserProfile;
    property UserProfile: IUserProfile read GetUserProfile;
    property User: IUser read GetUser;
    property SessionKey: String read GetSessionKey write SetSessionKey;
    function GetLoggedIn: Boolean;
    property LoggedIn: Boolean read GetLoggedIn;
    function GetRememberSession: Boolean;
    procedure SetRememberSession(const Value: Boolean);
    property RememberSession: Boolean read GetRememberSession write SetRememberSession;
    function GetRememberLocalPassword: Boolean;
    procedure SetRememberLocalPassword(const Value: Boolean);
    property RememberLocalPassword: Boolean read GetRememberLocalPassword write SetRememberLocalPassword;
    /// <summary> Create a new anagraph profiles and adds it to the passed user </summary>
    function CreateNewAnagraph(const Value: IUser; const aAnagraphProfile: IAnagraphView): integer; overload;
    /// <summary> Create a new anagraph profiles and adds it to user logged in </summary>
    function CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): integer; overload;
    function GetAnagraphProfile: IAnagraphView;
    /// <summary> An user and Session can have an Anagraph profile </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
    /// <summary> Sends Anagraph Profile to AnagraphModel for Updates </summary>
    procedure UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
    function ReadSchemaConf(const aKey, aDefault: string): string;
    procedure WriteSchemaConf(const aKey, aConf: string);
    function GetUserGUID: TGUID;
    procedure SetUserGUID(const Value: TGUID);
    /// <summary> User token or User GUID. </summary>
    property UserGUID: TGUID read GetUserGUID write SetUserGUID;
    /// <summary> Local Test requires System Storage to output logs to console or store logs to file </summary>
    procedure SetLocalTest(const Value: Boolean);
    /// <summary> returns an user-session if user is logged in sets local session Variable </summary>
    procedure GetSession;
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(const aID: Int64): smallint;
    // Find users by List Returns the number of found Users
    function FindUsers(const aUserName, aEmail: string): integer;
    /// <summary> basic payment function, on Finded user found by ID or Token or EMail </summary>
    function DoPaymentFindUser(const aAmount: Currency; const aDate: TDate): Boolean;
    /// <summary> basic payment function, on session or user logged in  </summary>
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): Boolean;
    function GetSearchedUser: IUserProfile;
    /// <summary> This is a searched user other than the session's owner. </summary>
    property SearchedUser: IUserProfile read GetSearchedUser;
  end;

  /// <summary> Remote Model interface should be used on remote client connected with MicroService MVC</summary>
  IJanuaRemoteSystemUserSessionModel = interface(IJanuaSystemUserSessionModel)
    ['{ADB14109-D4F4-4B68-B656-3E415CE7FA4A}']
  end;

  /// <summary> DB Model for User session composed by IJanuaDBDataset, Procedures and Orm Objects</summary>
  IJanuaDBSystemUserSessionModel = interface(IJanuaSystemUserSessionModel)
    ['{A8A48988-733C-4486-A5A6-13B2B785631E}']
    // Search by GUID should be performed against
    function GetjdsRecordDataset: IJanuaDBDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsRecordDataset: IJanuaDBDataset read GetjdsRecordDataset;
    // ---------- Common Dataset Objects Procedures and Functions ----------------------------------------
    function GetjdsDetail: IJanuaDBDataset;
    /// <summary>  Directly connected with MainSearch Params in Model (First Assign Then Bind).</summary>
    property jdsDetail: IJanuaDBDataset read GetjdsDetail;
    // qryUserSession
    function GetjdsSchemaConfig: IJanuaDBDataset;
    function GetjdsUserSession: IJanuaDBDataset;
    function GetjdsUserProfile: IJanuaDBDataset;
    function GetjdsUser: IJanuaDBDataset;
    property jdsUserSession: IJanuaDBDataset read GetjdsUserSession;
    property jdsUser: IJanuaDBDataset read GetjdsUser;
    property jdsUserProfile: IJanuaDBDataset read GetjdsUserProfile;
    /// <summary> Stores public configurations and settings for all Schema Applications </summary>
    property jdsSchemaConfig: IJanuaDBDataset read GetjdsSchemaConfig;
  end;

  IJanuaDBSystemUsersViewModel = interface(IJanuaDBViewModel)
    ['{163BF9C4-BA06-41D4-85DB-F713D84194BD}']
    function GetCurrentRecord: IUserProfile;
    procedure SetCurrentRecord(const Value: IUserProfile);
    property CurrentRecord: IUserProfile read GetCurrentRecord write SetCurrentRecord;
  end;

  IJanuaSystemUserSessionViewModel = interface(IJanuaBaseViewModel)
    ['{A14A507B-40A8-4F6E-B116-F6F4E812DF5F}']
    function GetSystemUserSessionModel: IJanuaSystemUserSessionModel;
    procedure SetSystemUserSessionModel(const Value: IJanuaSystemUserSessionModel);
    property SystemUserSessionModel: IJanuaSystemUserSessionModel read GetSystemUserSessionModel;
    // IAnagraph
    function GetCurrentRecord: IUserSession;
    procedure SetCurrentRecord(const Value: IUserSession);
    property CurrentRecord: IUserSession read GetCurrentRecord write SetCurrentRecord;
    function GetSessionID: Int64;
    procedure SetSessionID(const Value: Int64);
    property SessionID: Int64 read GetSessionID write SetSessionID;
    function GetSchemaID: integer;
    procedure SetSchemaID(const Value: integer);
    property SchemaID: integer read GetSchemaID write SetSchemaID;
    /// <summary> Calls the standard Dialog Login Interface then calls the module Login procedure </summary>
    function LoginWithDialog: Boolean;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function SilentLogin(const aUserName, aPassword: string): Boolean; overload;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function SilentLogin(const aUser: IUser): Boolean; overload;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function RegisterUser(const aUser: IUserProfile): Boolean; overload;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function RegisterUser(const aUser: IUser): Boolean; overload;
    /// <summary> performs a logout and resets both user informations and Session Informations  </summary>
    procedure LogOut;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function RegisterUser(const aUserName, aPassword: string): Boolean; overload;

    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: integer): Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): Boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): Boolean; overload;

    function GetRememberSession: Boolean;
    procedure SetRememberSession(const Value: Boolean);
    property RememberSession: Boolean read GetRememberSession write SetRememberSession;
    function GetRememberLocalPassword: Boolean;
    procedure SetRememberLocalPassword(const Value: Boolean);
    property RememberLocalPassword: Boolean read GetRememberLocalPassword write SetRememberLocalPassword;

    /// <summary> Create a new anagraph profiles and adds it to the passed user </summary>
    function CreateNewAnagraph(const Value: IUser; const aAnagraphProfile: IAnagraphView): integer; overload;
    /// <summary> Create a new anagraph profiles and adds it to user logged in </summary>
    function CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): integer; overload;
    function GetAnagraphProfile: IAnagraphView;
    /// <summary> An user and Session can have an Anagraph profile </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;

    function ReadSchemaConf(const aKey, aDefault: string): string;
    procedure WriteSchemaConf(const aKey, aConf: string);

    function GetLocalAnagraph: IAnagraphView;
    /// <summary> LocalAnagraph Added to register a new Anagraph and attach it to new user profile </summary>
    property LocalAnagraph: IAnagraphView read GetLocalAnagraph;

    function GetLocalUserProfile: IUserProfile;
    /// <summary> Added to register a new User Profile and store it's temporary configuration </summary>
    property LocalUserProfile: IUserProfile read GetLocalUserProfile;

    /// <summary> Sends Anagraph Profile to AnagraphModel for Updates </summary>
    procedure UpdateAnagraphProfile;

    function TryLoginOrRegister(aErrorProc: TCallBackLoginRegister): Boolean;
    function LastErrorMessage: string;

    function GetLoginRegister: TLoginRegister;
    procedure SetLoginRegister(const Value: TLoginRegister);
    property LoginRegister: TLoginRegister read GetLoginRegister write SetLoginRegister;

    /// <summary> Standard Login with a session key or Token interface as input, sets a local user-session </summary>
    function LoginByKey(const aKey: string): Boolean;

    function GetLoginCount: integer;
    /// <summary> Refers the login attempts count </summary>
    property LoginCount: integer read GetLoginCount;

    /// <summary> Check first part of user Registration </summary>
    function CheckRegisterValues(aErrorProc: TMessageProc): Boolean;
    /// <summary> Does a full check of user registration prerequisites with anagraph referer </summary>
    function CheckRegisterEndValues(aErrorProc: TMessageProc): Boolean;
  end;

  IJanuaDBSystemUserSessionViewModel = interface(IJanuaSystemUserSessionViewModel)
    ['{B81C7DE4-4D10-4C26-BDF4-148345155B69}']
    function GetDBSystemUserSessionModel: IJanuaDBSystemUserSessionModel;
    property DBSystemUserSessionModel: IJanuaDBSystemUserSessionModel read GetDBSystemUserSessionModel;
  end;

  IJanuaLoginForm = interface(IJanuaForm)
    ['{5863DC1A-7780-4382-AF06-4273A35E40BF}']
    function GetViewModel: IJanuaSystemUserSessionViewModel;
    procedure SetViewModel(const Value: IJanuaSystemUserSessionViewModel);
    property ViewModel: IJanuaSystemUserSessionViewModel read GetViewModel write SetViewModel;
    procedure ShowLogin(aProc: TProc<string { UserName } , string { Password } , Boolean { DoLogin } >);
  end;

implementation

initialization

Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaLoginForm));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaDBSystemUserSessionViewModel));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaSystemUserSessionViewModel));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaSystemDataModule));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaSystemUserModel));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaDBSystemUsersModel));
Janua.Core.Types.RegisterInterface(TypeInfo(IJanuaSystemUserSessionModel));

end.
