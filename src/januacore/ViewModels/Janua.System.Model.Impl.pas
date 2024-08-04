unit Janua.System.Model.Impl;

interface

uses
  Janua.Core.Types, Janua.Http.Types, Janua.Core.Classes, Janua.Orm.Types, Janua.Core.Classes.Intf,
  Janua.Controls.Forms.Intf,
  // Orm
  Janua.Orm.Intf, Data.DB, JOrm.System.Intf, JOrm.System.Session.Intf, JOrm.Anagraph.Intf, Janua.Rest.Intf,
  // ViewModel
  Janua.ViewModels.Intf, Janua.Anagraph.ViewModel.Intf, Janua.Models.Templates, Janua.System.ViewModel.Intf;

type

  TJanuaCustomSystemDataModule = class(TJanuaDataModuleTemplate, IJanuaSystemDataModule)
  strict protected
    { Private declarations }
    FjdsSchemaConfig: IJanuaDBDataset;
    FjdsUserSession: IJanuaDBDataset;
    FjdsUser: IJanuaDBDataset;
    FjdsUserProfile: IJanuaDBDataset;
    FjdsLogin: IJanuaDBDataset;
    FjspLogin: IJanuaDBStoredProcedure;
    FjspLoginSocial: IJanuaDBStoredProcedure;
    FjdsGetUserByKey: IJanuaDBDataset;
    FjdsSearchUserProfile: IJanuaDBDataset;
    FjdsSchemasList: IJanuaDBDataset;
    FjspCreatePersonalSchema: IJanuaDBStoredProcedure;
    FjspSetUserDefaultSchema: IJanuaDBStoredProcedure;
    FjspUserAdd: IJanuaDBStoredProcedure;
    FjspUserTest: IJanuaDBStoredProcedure;
    FjspUserDel: IJanuaDBStoredProcedure;
    FjspUpdateUserAnID: IJanuaDBStoredProcedure;
    FjspUserAddWithProfile: IJanuaDBStoredProcedure;
    FjspAddAnagraphProfile: IJanuaDBStoredProcedure;
  strict protected
    procedure SetjspAddAnagraphProfile(const Value: IJanuaDBStoredProcedure);
    procedure SetjspUpdateUserAnID(const Value: IJanuaDBStoredProcedure);
    procedure SetjdsGetUserByKey(Value: IJanuaDBDataset);
    procedure SetjdsUserSession(Value: IJanuaDBDataset);
    procedure SetjdsUser(Value: IJanuaDBDataset);
    procedure SetjdsLogin(Value: IJanuaDBDataset);
    procedure SetjdsSearchUserProfile(Value: IJanuaDBDataset);
    procedure SetjdsUserProfile(Value: IJanuaDBDataset);
    procedure SetjspCreatePersonalSchema(Value: IJanuaDBStoredProcedure);
    procedure SetjspLogin(Value: IJanuaDBStoredProcedure);
    procedure SetjspLoginSocial(Value: IJanuaDBStoredProcedure);
    procedure SetjspSetUserDefaultSchema(const Value: IJanuaDBStoredProcedure);
    procedure SetjspUserAdd(Value: IJanuaDBStoredProcedure);
    procedure SetjspUserTest(Value: IJanuaDBStoredProcedure);
    procedure SetjspUserDel(Value: IJanuaDBStoredProcedure);
    procedure SetjdsSchemaConfig(Value: IJanuaDBDataset);
    procedure SetjspUserAddWithProfile(Value: IJanuaDBStoredProcedure);
  protected
    function GetjdsUser: IJanuaDBDataset;
    // qryUserSession
    function GetjdsUserSession: IJanuaDBDataset;
    // qryUserProfile
    function GetjdsUserProfile: IJanuaDBDataset;
    // spLogin IJanuaDBStoredProcedure
    function GetjspLogin: IJanuaDBStoredProcedure;
    function GetjspLoginSocial: IJanuaDBStoredProcedure;
    function GetjdsLogin: IJanuaDBDataset;
    function GetjspUserAdd: IJanuaDBStoredProcedure;
    function GetjspUserTest: IJanuaDBStoredProcedure;
    function GetjspCreatePersonalSchema: IJanuaDBStoredProcedure;
    function GetjdsGetUserByKey: IJanuaDBDataset;
    function GetjdsSearchUserProfile: IJanuaDBDataset;
    function GetjspSetUserDefaultSchema: IJanuaDBStoredProcedure;
    function GetjspUserDel: IJanuaDBStoredProcedure;
    function GetjspUpdateUserAnID: IJanuaDBStoredProcedure;
    function GetjdsSchemaConfig: IJanuaDBDataset;
    // jspUserAddWithProfile IJanuaDBStoredProcedure
    function GetjspUserAddWithProfile: IJanuaDBStoredProcedure;
    function GetjdsSchemasList: IJanuaDBDataset;
    function GetjspAddAnagraphProfile: IJanuaDBStoredProcedure;
  public
    /// <summary> Stores public configurations and settings for all Schema Applications </summary>
    /// <summary>IJanuaDBStoredProcedure: Stored Procedure to Associate an angraph id with user profile </summary>
    property jspAddAnagraphProfile: IJanuaDBStoredProcedure read GetjspAddAnagraphProfile;
    property jdsSchemaConfig: IJanuaDBDataset read GetjdsSchemaConfig;
    property jdsUserSession: IJanuaDBDataset read GetjdsUserSession;
    property jdsUser: IJanuaDBDataset read GetjdsUser;
    property jdsUserProfile: IJanuaDBDataset read GetjdsUserProfile;
    property jdsLogin: IJanuaDBDataset read GetjdsLogin;
    property jspLogin: IJanuaDBStoredProcedure read GetjspLogin;
    property jspLoginSocial: IJanuaDBStoredProcedure read GetjspLoginSocial;
    property jspUserAdd: IJanuaDBStoredProcedure read GetjspUserAdd;
    property jspUserTest: IJanuaDBStoredProcedure read GetjspUserTest;
    property jspCreatePersonalSchema: IJanuaDBStoredProcedure read GetjspCreatePersonalSchema;
    property jdsGetUserByKey: IJanuaDBDataset read GetjdsGetUserByKey;
    property jdsSearchUserProfile: IJanuaDBDataset read GetjdsSearchUserProfile;
    property jspSetUserDefaultSchema: IJanuaDBStoredProcedure read GetjspSetUserDefaultSchema;
    property jspUserDel: IJanuaDBStoredProcedure read GetjspUserDel;
    property jspUpdateUserAnID: IJanuaDBStoredProcedure read GetjspUpdateUserAnID;
    property jspUserAddWithProfile: IJanuaDBStoredProcedure read GetjspUserAddWithProfile;
    property jdsSchemasList: IJanuaDBDataset read GetjdsSchemasList;
  public
    constructor Create; override;
    destructor Destroy; override;
  end;

  TJanuaDBSystemUsersModel = class(TJanuaModelDBTemplate, IJanuaDBSystemUsersModel, IJanuaModel)
  public
    constructor Create; override;
    destructor Destroy; override;
  private
    FUserProfileRecord: IUserProfile;
    FjdsUser: IJanuaDBDataset;
    FjdsUserProfile: IJanuaDBDataset;
    FjdsLogin: IJanuaDBDataset;
  strict protected
    FAnagraphModel: IJanuaAnagraphModel;
    FDM: IJanuaSystemDataModule;
    function GetAnagraphModel: IJanuaAnagraphModel;
  protected
    // qryUserProfile
    function GetjdsUserProfile: IJanuaDBDataset;
    // qryUserProfile
    function GetjdsUser: IJanuaDBDataset;
    function GetUserProfileRecord: IUserProfile;
    // Users List
    function GetjdsUsers: IJanuaDBDataset;
    // Anagraph Profile
    function GetAnagraphProfile: IAnagraphView;
  public
    property jdsUser: IJanuaDBDataset read GetjdsUser;
    property jdsUserProfile: IJanuaDBDataset read GetjdsUserProfile;
    property UserProfileRecord: IUserProfile read GetUserProfileRecord;
    // <summary> Lists all Users belonging to a specific user's group  </summary>
    property jdsUsers: IJanuaDBDataset read GetjdsUsers;
  public
    function searchuserbyGUID(const aGUID: TGUID): boolean; overload;
    /// <summary> Opens the Users table according to a Group ID Identifier </summary>
    function ListUsersByGroupID(const GroupID: Integer): boolean;
    /// <summary> Selects an User by its ID </summary>
    function searchuserbyID(const aID: Integer): boolean;
    /// <summary> Retrieves user's anagraph profile, this profile is managed by Anagraph Model </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
  end;

  TJanuaRESTSystemUserSessionModel = class(TJanuaRESTModelTemplate, IJanuaRemoteSystemUserSessionModel,
    IJanuaSystemUserSessionModel, IJanuaClientModel)
  strict protected
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
  strict private
    FRememberSession: boolean;
    FSessionKey: string;
    FAnagraphModel: IJanuaAnagraphModel;
    FUserLogin: IUser;
    FUserSessionRecord: IUserSession;
    FSelectedUser: IUser;
    FLoggedIn: boolean;
    FClientLogin: IRESTLoginClient;
  protected
    function GetUserLogin: IUser;
  private
    FLastErrorMessage: string;
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
  strict protected
    function GetAnagraphModel: IJanuaAnagraphModel;
    /// <summary> After a Successful Login using User Session Key all Session informations will be loaded </summary>
    procedure LoadSessionUserProfile;
    /// <summary> After Load UserProfile if AnagraphID is set for  Anagraph Record will Loaded </summary>
    procedure LoadSessionAnagraphProfile;
    procedure SetLoggedIn(Value: boolean);
    /// <summary> Procedure che imposta il profilo utente di Login ricevuto dal SystemManager </summary>
    function SetupLogin(const aUser: IUser; var aMailLogin: boolean): boolean;
    function GetUserProfile: IUserProfile;
    function InternalLogin: boolean;
    function InternalLoginSocial: boolean;
    procedure CloseProfile;
    function InternalAddUser(const aUser: IUserProfile): boolean;
    function InternalAddUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUser(var count: Integer; aUser: IUserProfile): boolean;
    function OpenProfile(aUserID: Integer): boolean;
  protected
    function GetUserSessionRecord: IUserSession;
    function GetSessionID: Int64;
    procedure SetSessionID(const Value: Int64);
    function GetUser: IUser;
    function GetSessionKey: String;
    procedure SetSessionKey(const Value: String);
    function GetLoggedIn: boolean;
    function GetRememberSession: boolean;
    procedure SetRememberSession(const Value: boolean);
    function GetRememberLocalPassword: boolean;
    procedure SetRememberLocalPassword(const Value: boolean);
    function GetAnagraphProfile: IAnagraphView;
    function GetUserGUID: TGUID;
    procedure SetUserGUID(const Value: TGUID);
    /// <summary> Local Test requires System Storage to output logs to console or store logs to file </summary>
    procedure SetLocalTest(const Value: boolean);
    function GetSearchedUser: IUserProfile;
    function GetRegisterError: TJanuaRegisterError;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure LoadProfile;
    function InternalLoginByKey: boolean;
  public
    // Janua User Session Model
    procedure SetSelectedSchema(const Value: Int64);
    function SaveProfile(const aProfile: IUserProfile): boolean;
    procedure OpenUserProfile;
    /// <summary> Imposta la lista degli Schemi </summary>
    procedure SetProfileFromQuery;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aMail"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserByEmail(const aMail: string): boolean;
    /// <summary> Searches and user's profile using its social unique identifier. The sets SearchedUser </summary>
    /// <param name="aID"> social profile unique identifier </param>
    /// <param name="aSocial"> social network for the unique identifier  </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserBySocialID(aID: string; aSocial: string): boolean;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aGUID"> TGUID unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserbyGUID(const aGUID: TGUID): boolean; overload;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aName"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserByName(const aName: string): boolean;
    function FindUserByKey(const key: string): boolean;
    function FindUserByID(const Id: Integer): boolean;
    function CheckUser(const aUser: IUserProfile): boolean;
    function AddUser(const aUser: IUserProfile): boolean;
    /// <summary> funzione che crea un utente partendo da un profilo utente auto registrato</summary>
    function AdminAddUser(const aUser: IUserProfile): boolean;
    /// <summary> funzione che crea un utente creando un profilo utente da Amministratore </summary>
    function login(const aUser: IUser): boolean; overload;
    function login: boolean; overload;
    function LoginByKey(const aKey: string): boolean;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: Integer): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by TGUID </summary>
    function searchuserbyGUID(const aGUID: TGUID): boolean; overload;
    /// <summary> Create a new anagraph profiles and adds it to the passed user </summary>
    function CreateNewAnagraph(const Value: IUser; const aAnagraphProfile: IAnagraphView): Integer; overload;
    /// <summary> Create a new anagraph profiles and adds it to user logged in </summary>
    function CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): Integer; overload;
    /// <summary> Sends Anagraph Profile to AnagraphModel for Updates </summary>
    procedure UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
    /// <summary> Deletes current logged User </summary>
    function DelCurrentUser: boolean;
    /// <summary> Extract a configuration from the actual schema </summary>
    function ReadSchemaConf(const aKey, aDefault: string): string;
    /// <summary> Writes a configuration in the actual schema </summary>
    procedure WriteSchemaConf(const aKey, aConf: string);
    /// <summary> returns an user-session if user is logged in sets local session Variable </summary>
    procedure GetSession;
    /// <summary> if a Session Object is not loaded or its session Key is different opens a session </summary>
    procedure OpenSession;
    procedure vtUserSessionAfterScroll(DataSet: TDataSet);
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(const aID: Int64): smallint;
    // Find users by List Returns the number of found Users
    function FindUsers(const aUserName, aEmail: string): Integer;
    /// <summary> basic payment function, on Finded user found by ID or Token or EMail </summary>
    function DoPaymentFindUser(const aAmount: Currency; const aDate: TDate): boolean;
    /// <summary> basic payment function, on session or user logged in  </summary>
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean;
    /// <summary> performs a logout and resets both user informations and Session Informations  </summary>
    procedure LogOut;
  public
    /// <summary> User token or User GUID. </summary>
    property UserGUID: TGUID read GetUserGUID write SetUserGUID;
    /// <summary> This is a searched user other than the session's owner. </summary>
    property SearchedUser: IUserProfile read GetSearchedUser;
    /// <summary> An user and Session can have an Anagraph profile </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
    /// <summary> Latest registrarion Error Type if registration Fails </summary>
    property RegisterError: TJanuaRegisterError read GetRegisterError write SetRegisterError;
    property UserSessionRecord: IUserSession read GetUserSessionRecord;
    property LastErrorMessage: string read GetLastErrorMessage;
    property SessionID: Int64 read GetSessionID write SetSessionID;
    property UserProfile: IUserProfile read GetUserProfile;
    property User: IUser read GetUser;
    property SessionKey: String read GetSessionKey write SetSessionKey;
    property UserLogin: IUser read GetUserLogin;
    property LoggedIn: boolean read GetLoggedIn;
    property RememberSession: boolean read GetRememberSession write SetRememberSession;
    property RememberLocalPassword: boolean read GetRememberLocalPassword write SetRememberLocalPassword;
  end;

  TJanuaDBSystemUserSessionModel = class(TJanuaModelDBTemplate, IJanuaDBSystemUserSessionModel,
    IJanuaSystemUserSessionModel, IJanuaClientModel, IJanuaModel)
  strict protected
    function InternalActivate: boolean; override;
  public
    constructor Create; override;
  strict private
    FRememberSession: boolean;
    FSessionKey: string;
    FAnagraphModel: IJanuaDBAnagraphModel;
    FUserLogin: IUser;
    FUserSessionRecord: IUserSession;
  protected
    function GetUserLogin: IUser;
  private
    FLastErrorMessage: string;
    function GetLastErrorMessage: string;
    procedure SetLastErrorMessage(const Value: string);
  strict protected
    FDM: IJanuaSystemDataModule;
    function GetAnagraphModel: IJanuaDBAnagraphModel;
    /// <summary> After a Successful Login using User Session Key all Session informations will be loaded </summary>
    procedure LoadSessionUserProfile;
    /// <summary> After Load UserProfile if AnagraphID is set for  Anagraph Record will Loaded </summary>
    procedure LoadSessionAnagraphProfile;
    procedure SetLoggedIn(Value: boolean);
    /// <summary> Procedure che imposta il profilo utente di Login ricevuto dal SystemManager </summary>
    function SetupLogin(const aUser: IUser; var aMailLogin: boolean): boolean;
    function GetUserProfile: IUserProfile;
    function InternalLogin: boolean;
    function InternalLoginSocial: boolean;
    procedure CloseProfile;
    function InternalAddUser(const aUser: IUserProfile): boolean;
    function InternalAddUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUserSocial(const aUser: IUserProfile): boolean;
    function InternalCheckUser(var count: Integer; aUser: IUserProfile): boolean;
    function OpenProfile(aUserID: Integer): boolean;
  protected
    function GetjspUserAdd: IJanuaDBStoredProcedure;
    function GetjdsUserProfile: IJanuaDBDataset;
    function GetjdsUser: IJanuaDBDataset;
    function GetUserSessionRecord: IUserSession;
    function GetSessionID: Int64;
    procedure SetSessionID(const Value: Int64);
    function GetUser: IUser;
    function GetSessionKey: String;
    procedure SetSessionKey(const Value: String);
    // qryUserSession
    function GetjdsUserSession: IJanuaDBDataset;
    function GetjdsSchemaConfig: IJanuaDBDataset;
    function GetLoggedIn: boolean;
    function GetRememberSession: boolean;
    procedure SetRememberSession(const Value: boolean);
    function GetRememberLocalPassword: boolean;
    procedure SetRememberLocalPassword(const Value: boolean);
    function GetAnagraphProfile: IAnagraphView;
    function GetUserGUID: TGUID;
    procedure SetUserGUID(const Value: TGUID);
    /// <summary> Local Test requires System Storage to output logs to console or store logs to file </summary>
    procedure SetLocalTest(const Value: boolean);
    function GetSearchedUser: IUserProfile;
    function GetRegisterError: TJanuaRegisterError;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    procedure LoadProfile;
    function InternalLoginByKey: boolean;
  public
    // Janua User Session Model
    procedure SetSelectedSchema(const Value: Int64);
    function SaveProfile(const aProfile: IUserProfile): boolean;
    procedure OpenUserProfile;
    /// <summary> Imposta la lista degli Schemi </summary>
    procedure SetProfileFromQuery;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aMail"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserByEmail(const aMail: string): boolean;
    /// <summary> Searches and user's profile using its social unique identifier. The sets SearchedUser </summary>
    /// <param name="aID"> social profile unique identifier </param>
    /// <param name="aSocial"> social network for the unique identifier  </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserBySocialID(aID: string; aSocial: string): boolean;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aGUID"> TGUID unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserbyGUID(const aGUID: TGUID): boolean; overload;
    /// <summary> Searches and user's profile using its email unique identifier. The sets SearchedUser </summary>
    /// <param name="aName"> email unique identifier for an user </param>
    /// <returns> bool value should be True (found) or False (not Found) </returns>
    function FindUserByName(const aName: string): boolean;
    function FindUserByKey(const key: string): boolean;
    function FindUserByID(const Id: Integer): boolean;
    function CheckUser(const aUser: IUserProfile): boolean;
    function AddUser(const aUser: IUserProfile): boolean;
    /// <summary> funzione che crea un utente partendo da un profilo utente auto registrato</summary>
    function AdminAddUser(const aUser: IUserProfile): boolean;
    /// <summary> funzione che crea un utente creando un profilo utente da Amministratore </summary>
    function login(const aUser: IUser): boolean; overload;
    function login: boolean; overload;
    function LoginByKey(const aKey: string): boolean;
    /// <summary> Deletes an user from the storage after searching its profile </summary>
    function DelUser(const aUser: IUserProfile): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile </summary>
    function DelUser: boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by User ID </summary>
    function DelUser(const aUserID: Integer): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by GUID </summary>
    function DelUser(const aGUID: TGUID): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by EMail UID </summary>
    function DelUser(const aEmail: string): boolean; overload;
    /// <summary> Deletes an user from the storage using Searched User Profile by TGUID </summary>
    function searchuserbyGUID(const aGUID: TGUID): boolean; overload;
    /// <summary> Create a new anagraph profiles and adds it to the passed user </summary>
    function CreateNewAnagraph(const Value: IUser; const aAnagraphProfile: IAnagraphView): Integer; overload;
    /// <summary> Create a new anagraph profiles and adds it to user logged in </summary>
    function CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): Integer; overload;
    /// <summary> Sends Anagraph Profile to AnagraphModel for Updates </summary>
    procedure UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
    /// <summary> Deletes current logged User </summary>
    function DelCurrentUser: boolean;
    /// <summary> Extract a configuration from the actual schema </summary>
    function ReadSchemaConf(const aKey, aDefault: string): string;
    /// <summary> Writes a configuration in the actual schema </summary>
    procedure WriteSchemaConf(const aKey, aConf: string);
    /// <summary> returns an user-session if user is logged in sets local session Variable </summary>
    procedure GetSession;
    /// <summary> if a Session Object is not loaded or its session Key is different opens a session </summary>
    procedure OpenSession;
    procedure vtUserSessionAfterScroll(DataSet: TDataSet);
    function findaddress(const aAddress: string): smallint;
    function findaddressbyID(const aID: Int64): smallint;
    // Find users by List Returns the number of found Users
    function FindUsers(const aUserName, aEmail: string): Integer;
    /// <summary> basic payment function, on Finded user found by ID or Token or EMail </summary>
    function DoPaymentFindUser(const aAmount: Currency; const aDate: TDate): boolean;
    /// <summary> basic payment function, on session or user logged in  </summary>
    function DoPaymentSession(const aAmount: Currency; const aDate: TDate): boolean;
    /// <summary> performs a logout and resets both user informations and Session Informations  </summary>
    procedure LogOut;
  public
    /// <summary> User token or User GUID. </summary>
    property UserGUID: TGUID read GetUserGUID write SetUserGUID;
    /// <summary> This is a searched user other than the session's owner. </summary>
    property SearchedUser: IUserProfile read GetSearchedUser;
    /// <summary> An user and Session can have an Anagraph profile </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
    /// <summary> Latest registrarion Error Type if registration Fails </summary>
    property RegisterError: TJanuaRegisterError read GetRegisterError write SetRegisterError;
    /// <summary> Stores public configurations and settings for all Schema Applications </summary>
    property jdsSchemaConfig: IJanuaDBDataset read GetjdsSchemaConfig;
    property jspUserAdd: IJanuaDBStoredProcedure read GetjspUserAdd;
    property UserSessionRecord: IUserSession read GetUserSessionRecord;
    property jdsUser: IJanuaDBDataset read GetjdsUser;
    property jdsUserProfile: IJanuaDBDataset read GetjdsUserProfile;
    property jdsUserSession: IJanuaDBDataset read GetjdsUserSession;
    property LastErrorMessage: string read GetLastErrorMessage;
    property SessionID: Int64 read GetSessionID write SetSessionID;
    property UserProfile: IUserProfile read GetUserProfile;
    property User: IUser read GetUser;
    property SessionKey: String read GetSessionKey write SetSessionKey;
    property UserLogin: IUser read GetUserLogin;
    property LoggedIn: boolean read GetLoggedIn;
    property RememberSession: boolean read GetRememberSession write SetRememberSession;
    property RememberLocalPassword: boolean read GetRememberLocalPassword write SetRememberLocalPassword;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, System.StrUtils, System.IOUtils,
  // Januaproject
  JOrm.System.Impl, Janua.Orm.Impl, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaCustomSystemDataModule }
constructor TJanuaCustomSystemDataModule.Create;
begin
  inherited;
end;

function TJanuaCustomSystemDataModule.GetjdsUser: IJanuaDBDataset;
begin
  Result := Self.FjdsUser
end;

destructor TJanuaCustomSystemDataModule.Destroy;
begin
  FjdsUserSession := nil;
  FjdsUser := nil;
  FjdsUserProfile := nil;
  FjdsLogin := nil;
  FjspLogin := nil;
  FjspLoginSocial := nil;
  inherited;
end;

function TJanuaCustomSystemDataModule.GetjdsGetUserByKey: IJanuaDBDataset;
begin
  Result := FjdsGetUserByKey;
end;

function TJanuaCustomSystemDataModule.GetjdsLogin: IJanuaDBDataset;
begin
  Result := FjdsLogin
end;

function TJanuaCustomSystemDataModule.GetjdsSchemaConfig: IJanuaDBDataset;
begin
  Result := FjdsSchemaConfig
end;

function TJanuaCustomSystemDataModule.GetjdsSchemasList: IJanuaDBDataset;
begin
  Result := FjdsSchemasList
end;

function TJanuaCustomSystemDataModule.GetjdsSearchUserProfile: IJanuaDBDataset;
begin
  Result := FjdsSearchUserProfile;
end;

function TJanuaCustomSystemDataModule.GetjdsUserProfile: IJanuaDBDataset;
begin
  Result := Self.FjdsUserProfile
end;

function TJanuaCustomSystemDataModule.GetjdsUserSession: IJanuaDBDataset;
begin
  Result := FjdsUserSession
end;

function TJanuaCustomSystemDataModule.GetjspAddAnagraphProfile: IJanuaDBStoredProcedure;
begin
  Result := FjspAddAnagraphProfile
end;

function TJanuaCustomSystemDataModule.GetjspCreatePersonalSchema: IJanuaDBStoredProcedure;
begin
  Result := FjspCreatePersonalSchema;
end;

function TJanuaCustomSystemDataModule.GetjspLogin: IJanuaDBStoredProcedure;
begin
  Result := FjspLogin
end;

function TJanuaCustomSystemDataModule.GetjspLoginSocial: IJanuaDBStoredProcedure;
begin
  Result := Self.FjspLoginSocial
end;

function TJanuaCustomSystemDataModule.GetjspSetUserDefaultSchema: IJanuaDBStoredProcedure;
begin
  Result := FjspSetUserDefaultSchema;
end;

function TJanuaCustomSystemDataModule.GetjspUpdateUserAnID: IJanuaDBStoredProcedure;
begin
  Result := FjspUpdateUserAnID
end;

function TJanuaCustomSystemDataModule.GetjspUserAdd: IJanuaDBStoredProcedure;
begin
  Result := FjspUserAdd;
end;

function TJanuaCustomSystemDataModule.GetjspUserAddWithProfile: IJanuaDBStoredProcedure;
begin
  Result := FjspUserAddWithProfile;
end;

function TJanuaCustomSystemDataModule.GetjspUserDel: IJanuaDBStoredProcedure;
begin
  Result := FjspUserDel
end;

function TJanuaCustomSystemDataModule.GetjspUserTest: IJanuaDBStoredProcedure;
begin
  Result := FjspUserTest;
end;

procedure TJanuaCustomSystemDataModule.SetjspAddAnagraphProfile(const Value: IJanuaDBStoredProcedure);
begin
  FjspAddAnagraphProfile := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjdsGetUserByKey(Value: IJanuaDBDataset);
begin
  FjdsGetUserByKey := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjdsLogin(Value: IJanuaDBDataset);
begin
  FjdsLogin := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjdsSchemaConfig(Value: IJanuaDBDataset);
begin
  FjdsSchemaConfig := Value
end;

procedure TJanuaCustomSystemDataModule.SetjdsSearchUserProfile(Value: IJanuaDBDataset);
begin
  FjdsSearchUserProfile := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjdsUser(Value: IJanuaDBDataset);
begin
  FjdsUser := Value
end;

procedure TJanuaCustomSystemDataModule.SetjdsUserProfile(Value: IJanuaDBDataset);
begin
  FjdsUserProfile := Value
end;

procedure TJanuaCustomSystemDataModule.SetjdsUserSession(Value: IJanuaDBDataset);
begin
  FjdsUserSession := Value;
  SetMainDataset(FjdsUserSession);
end;

procedure TJanuaCustomSystemDataModule.SetjspCreatePersonalSchema(Value: IJanuaDBStoredProcedure);
begin

end;

procedure TJanuaCustomSystemDataModule.SetjspLogin(Value: IJanuaDBStoredProcedure);
begin
  FjspLogin := Value
end;

procedure TJanuaCustomSystemDataModule.SetjspLoginSocial(Value: IJanuaDBStoredProcedure);
begin
  FjspLoginSocial := Value
end;

procedure TJanuaCustomSystemDataModule.SetjspSetUserDefaultSchema(const Value: IJanuaDBStoredProcedure);
begin
  FjspSetUserDefaultSchema := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjspUpdateUserAnID(const Value: IJanuaDBStoredProcedure);
begin
  FjspUpdateUserAnID := Value
end;

procedure TJanuaCustomSystemDataModule.SetjspUserAdd(Value: IJanuaDBStoredProcedure);
begin
  FjspUserAdd := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjspUserAddWithProfile(Value: IJanuaDBStoredProcedure);
begin
  FjspUserAddWithProfile := Value;
end;

procedure TJanuaCustomSystemDataModule.SetjspUserDel(Value: IJanuaDBStoredProcedure);
begin
  FjspUserDel := Value
end;

procedure TJanuaCustomSystemDataModule.SetjspUserTest(Value: IJanuaDBStoredProcedure);
begin
  FjspUserTest := Value;
end;

{ TJanuaDBSystemUsersModel }
constructor TJanuaDBSystemUsersModel.Create;
begin
  inherited;
end;

function TJanuaDBSystemUsersModel.GetUserProfileRecord: IUserProfile;
begin
  Result := FUserProfileRecord
end;

function TJanuaDBSystemUsersModel.ListUsersByGroupID(const GroupID: Integer): boolean;
begin

end;

destructor TJanuaDBSystemUsersModel.Destroy;
begin
  FjdsUser := nil;
  FjdsUserProfile := nil;
  FjdsLogin := nil;
  FDM := nil;
  inherited;
end;

function TJanuaDBSystemUsersModel.GetAnagraphModel: IJanuaAnagraphModel;
begin
  if not Assigned(FAnagraphModel) then
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, FAnagraphModel) then
      raise exception.Create('IJanuaDBAnagraphModel not set');
  Result := FAnagraphModel
end;

function TJanuaDBSystemUsersModel.GetAnagraphProfile: IAnagraphView;
begin

end;

function TJanuaDBSystemUsersModel.GetjdsUser: IJanuaDBDataset;
begin
  Result := FjdsUser
end;

function TJanuaDBSystemUsersModel.GetjdsUserProfile: IJanuaDBDataset;
begin
  Result := FjdsUserProfile
end;

function TJanuaDBSystemUsersModel.GetjdsUsers: IJanuaDBDataset;
begin

end;

function TJanuaDBSystemUsersModel.searchuserbyGUID(const aGUID: TGUID): boolean;
begin
  { TODO: Implementation of method searchuserbyGUID }
  Result := False;
end;

function TJanuaDBSystemUsersModel.searchuserbyID(const aID: Integer): boolean;
begin

end;

{ TJanuaDBSystemUserSessionModel }
function TJanuaDBSystemUserSessionModel.AddUser(const aUser: IUserProfile): boolean;
var
  p_userName: string;
  lResult: boolean;
  procedure UpdateLoginUser;
  var
    vToken: string;
  begin
    vToken := '';
    Guard.CheckNotNull(FDM.jdsGetUserByKey, 'FDM.jdsGetUserByKey');
    // A.R. 20190107 Sostituito FUserLogin.VerifyToken.AsString con aUser.User.VerifyToken
    vToken := aUser.User.VerifyToken.AsString;
    FDM.jdsGetUserByKey.ParamByName('verify_token').AsString := vToken;
    FDM.jdsGetUserByKey.Open;
    lResult := (FDM.jdsGetUserByKey.RecordCount > 0);
    if lResult then
      lResult := login(aUser.User);
  end;

begin
  Self.WriteLocalLog('AddUser', 'Creazione utente ..... TJanuaRecordUserProfile');
  Result := False;
  try
    if aUser.User.ValidateUser then
    begin
      if (aUser.User.SocialID.AsString = '') then
        lResult := InternalAddUser(aUser)
        // Result := ServerFunctions.AddUser(self.spUserAdd, self.spUserTest, aUser.User.Username, aUser.User.Email,
        // aUser.User.Password, True, self.FLastErrorMessage, 1, self.FUserKey, self.FRegisterError)
      else
        lResult := InternalAddUserSocial(aUser);
      WriteLocalLog('AddUser', ' fine Creazione utente ' + Self.LastErrorMessage);
    end;

    if lResult then
      UpdateLoginUser;

    Result := lResult;
  except
    on e: exception do
      RaiseException('AddUser', e, Self);
  end;
  ClearLocalLog('AddUser');
end;

function TJanuaDBSystemUserSessionModel.AdminAddUser(const aUser: IUserProfile): boolean;
begin
  Result := False
  { TODO : Implement System Session AdminAddUser(User IUserProfile) }
end;

function TJanuaDBSystemUserSessionModel.CheckUser(const aUser: IUserProfile): boolean;
begin
  Result := False;
  if aUser.User.SocialID.AsString = '' then
    with FDM do
    begin
      jspUserTest.ParamByName('p_username').AsString := aUser.User.Username.AsString;
      jspUserTest.ParamByName('p_email').AsString := aUser.User.Email.AsString;
      jspUserTest.ExecSQL;
      Result := jspUserTest.ParamByName('Result').AsInteger = 0;
    end
  else
    with FDM do
    { TODO : Implement System Session CheckUser (Social: aUser.User.SocialID.AsString) }
    begin
      (*
        jspUserTestSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID.AsString;
        jspUserTestSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType.AsString;
        jspUserTestSocial.ExecSQL;
        Result := jspUserTest.ParamByName('Result').AsInteger = 0;
      *)
    end;
  if not Result then
    SetLastErrorMessage('User Already Registered');
end;

procedure TJanuaDBSystemUserSessionModel.CloseProfile;
begin
  { TODO: Implementation of method CloseProfile () }

end;

constructor TJanuaDBSystemUserSessionModel.Create;
begin
  inherited;
  FLastErrorMessage := 'Login Form';
  if not TJanuaOrmFactory.TryGetRecordIntf(IUserSession, FUserSessionRecord, 'usersession') then
    raise exception.Create('IUserSession not set');
end;

function TJanuaDBSystemUserSessionModel.CreateNewAnagraph(const Value: IUser;
  const aAnagraphProfile: IAnagraphView): Integer;
begin
  Result := -1; // if fails should return -1
  try
    Guard.CheckNotNull(aAnagraphProfile, 'aAnagraphProfile');
    Guard.CheckNotNull(Value, 'IUser');
    // check if passed User is the one logged in or not, in that case it tries to log in.
    if (User.DbUserId.AsInteger = Value.DbUserId.AsInteger) or login(Value) then
    begin
      Guard.CheckNotNull(FDM.jspUpdateUserAnID, 'FDM.jspUpdateUserAnID');

      if not User.DbUserId.AsInteger > 0 then
        raise exception.Create('User Registration Error ');

      if aAnagraphProfile.GUID.IsEmpty then
        aAnagraphProfile.GUID := TGUID.NewGuid;

      // Here System Must Call NewAnagraph Updating the Object. *** 2023-07-17 ***

      GetAnagraphModel.AddNewAnagraph(aAnagraphProfile);

{$IFNDEF TESTCORE}
      Result := aAnagraphProfile.AnagraphId.AsInteger;

      if Result <= 0 then
        raise exception.Create('Anagraph Registration Error ');
{$ELSE}
      Result := 1;
{$ENDIF TESTCORE}
{$IFDEF DEBUG}
      Guard.CheckNotNull(FDM.jspUpdateUserAnID.ParamByName('p_db_user_id'), 'p_db_user_id');
      Guard.CheckNotNull(FDM.jspUpdateUserAnID.ParamByName('p_anagraph_id'), 'p_anagraph_id');
      Guard.CheckNotNull(User, 'User');
      Guard.CheckNotNull(User.DbUserId, 'User.DbUserId');
{$ENDIF}
      FDM.jspUpdateUserAnID.ParamByName('p_db_user_id').AsInteger := User.DbUserId.AsInteger;
      FDM.jspUpdateUserAnID.ParamByName('p_anagraph_id').AsInteger := Result;
      FDM.jspUpdateUserAnID.ExecSQL;

      UserProfile.AnagraphId.AsInteger := Result;

      if UserProfile.AnagraphProfile.AnagraphId.AsInteger <> Result then
      begin
        UserProfile.AnagraphProfile.Assign(aAnagraphProfile);
        FUserSessionRecord.AnagraphProfile.Assign(aAnagraphProfile);
      end;
    end;
  except
    on e: exception do
      RaiseException('CreateNewAnagraph', e, Self);
  end;
end;

function TJanuaDBSystemUserSessionModel.CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): Integer;
begin
  Result := CreateNewAnagraph(User, aAnagraphProfile);
end;

function TJanuaDBSystemUserSessionModel.DelCurrentUser: boolean;
begin
  Result := False; // if Fails or the process is not completed default to False
  try
    Guard.CheckNotNull(FDM, 'FDM');
    Guard.CheckNotNull(FDM.jspUserDel, 'jspUserDel');
    Guard.CheckNotNull(FDM.jspUserDel.ParamByName('p_user_id'), 'jspUserDel(p_user_id)');

    Result := FUserSessionRecord.User.DbUserId.AsInteger > 0;
    if Result then
    begin
      FDM.jspUserDel.ParamByName('p_user_id').AsInteger := FUserSessionRecord.User.DbUserId.AsInteger;
      FDM.jspUserDel.ExecSQL;
    end;
  except
    on e: exception do
      RaiseException('DelCurrentUser', e, Self);
  end;
end;

function TJanuaDBSystemUserSessionModel.DelUser(const aEmail: string): boolean;
begin
  if FUserSessionRecord.User.Email.AsString.ToLower = aEmail.ToLower then
    Result := DelCurrentUser
  else
    Result := FindUserByEmail(aEmail) and DelUser
end;

function TJanuaDBSystemUserSessionModel.DoPaymentFindUser(const aAmount: Currency;
  const aDate: TDate): boolean;
begin
  { TODO : Implement Do Payment Find User on System Model (for Sportmedia) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.DoPaymentSession(const aAmount: Currency; const aDate: TDate)
  : boolean;
begin
  { TODO : Implement Do Payment Find User on System Model (for Sportmedia) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.findaddress(const aAddress: string): smallint;
begin
  { TODO : Implement findaddress (by Email) returning a smallint }
  Result := -1;
end;

function TJanuaDBSystemUserSessionModel.findaddressbyID(const aID: Int64): smallint;
begin
  { TODO : Implement findaddressbyID (by Email) returning a smallint }
  Result := -1;
end;

function TJanuaDBSystemUserSessionModel.DelUser(const aGUID: TGUID): boolean;
begin
  { TODO: Implementation of method DelUser (GUID) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.DelUser(const aUser: IUserProfile): boolean;
begin
  { TODO: Implementation of method DelUser (Profile) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.DelUser: boolean;
begin
  { TODO: Implementation of method DelUser () }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.DelUser(const aUserID: Integer): boolean;
begin
  { TODO: Implementation of method DelUser (ID) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.FindUserByID(const Id: Integer): boolean;
begin
  jdsUserProfile.Close;
  jdsUserProfile.ParamByName('db_user_id').AsInteger := Id;
  jdsUserProfile.Open;
  Result := jdsUserProfile.RecordCount > 0;
end;

function TJanuaDBSystemUserSessionModel.FindUserByKey(const key: string): boolean;
begin
  { TODO: Implementation of method FindUserByKey (ID) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.FindUserByName(const aName: string): boolean;
begin
  { TODO : Implement FindUserByName (by username) returning a boolean }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.FindUserBySocialID(aID, aSocial: string): boolean;
begin
  { TODO : Implement FindUserBySocialID (by aID, aSocial) returning a boolean }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.FindUsers(const aUserName, aEmail: string): Integer;
begin
  { TODO : Implement FindUserBySocialID (by aUserName or  aEmail) returning a boolean }
  Result := -1;
end;

function TJanuaDBSystemUserSessionModel.GetUserSessionRecord: IUserSession;
begin
  Result := FUserSessionRecord
end;

function TJanuaDBSystemUserSessionModel.GetUserLogin: IUser;
begin
  if not Assigned(FUserLogin) then
  begin
    // TUser.Create('loginuser');
    if not TJanuaOrmFactory.TryGetRecordIntf(IUser, FUserLogin, 'loginuser', TJanuaEntity.SysDbUsers) then
      raise exception.Create('IUser not set');
    FUserLogin.Username.AsString := TJanuaApplication.ReadParamString('LOGIN', 'USERNAME', '');
  end;

  Result := FUserLogin
end;

function TJanuaDBSystemUserSessionModel.GetAnagraphModel: IJanuaDBAnagraphModel;
begin
  if not Assigned(FAnagraphModel) then
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphModel, FAnagraphModel) then
      raise exception.Create('IJanuaDBAnagraphModel not set');
  Result := FAnagraphModel
end;

function TJanuaDBSystemUserSessionModel.GetAnagraphProfile: IAnagraphView;
begin
  Result := FUserSessionRecord.UserProfile.AnagraphProfile;
end;

function TJanuaDBSystemUserSessionModel.GetjdsSchemaConfig: IJanuaDBDataset;
begin
  Result := FDM.jdsSchemaConfig;
end;

function TJanuaDBSystemUserSessionModel.GetjdsUser: IJanuaDBDataset;
begin
  Result := FDM.jdsUser
end;

function TJanuaDBSystemUserSessionModel.GetjdsUserProfile: IJanuaDBDataset;
begin
  Result := FDM.jdsUserProfile
end;

function TJanuaDBSystemUserSessionModel.GetjdsUserSession: IJanuaDBDataset;
begin
  Result := FDM.jdsUserSession
end;

function TJanuaDBSystemUserSessionModel.GetjspUserAdd: IJanuaDBStoredProcedure;
begin
  Result := FDM.jspUserAdd;
end;

function TJanuaDBSystemUserSessionModel.GetLastErrorMessage: string;
begin
  Result := FLastErrorMessage;
end;

function TJanuaDBSystemUserSessionModel.GetLoggedIn: boolean;
begin
  Result := FUserSessionRecord.Db_session_key.AsString <> '';
end;

function TJanuaDBSystemUserSessionModel.GetRegisterError: TJanuaRegisterError;
begin
  { TODO : Implement GetRegisterError  returning a TJanuaRegisterError }
  Result := TJanuaRegisterError.jreNone;
end;

function TJanuaDBSystemUserSessionModel.GetRememberLocalPassword: boolean;
begin
  Result := TJanuaApplication.Settings.LocalLogin.StorePassword; //
end;

function TJanuaDBSystemUserSessionModel.GetRememberSession: boolean;
begin
  Result := TJanuaApplication.Settings.LocalLogin.StoreSession
end;

function TJanuaDBSystemUserSessionModel.GetSearchedUser: IUserProfile;
begin

end;

procedure TJanuaDBSystemUserSessionModel.GetSession;
begin

end;

function TJanuaDBSystemUserSessionModel.GetSessionID: Int64;
begin
  Result := UserSessionRecord.Db_session_id.AsLargeInt
end;

function TJanuaDBSystemUserSessionModel.GetSessionKey: String;
begin
  Result := FSessionKey
end;

function TJanuaDBSystemUserSessionModel.GetUser: IUser;
begin
  Result := UserSessionRecord.User
end;

function TJanuaDBSystemUserSessionModel.GetUserGUID: TGUID;
begin

end;

function TJanuaDBSystemUserSessionModel.GetUserProfile: IUserProfile;
begin
  Result := UserSessionRecord.UserProfile
end;

function TJanuaDBSystemUserSessionModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        WriteLocalLog('initialize', 'FCurrentRecord');
        if not TJanuaOrmFactory.TryGetRecordIntf(IUserSession, FUserSessionRecord, 'usersession',
          TJanuaEntity.SysDbUserSessions) then
          raise exception.Create('IUserSession interface not registered');
        SetInternalRecord(FUserSessionRecord);
        WriteLocalLog('initialize', 'IJanuaDBSystemUserSessionModel');
        if not TJanuaApplicationFactory.TryGetInterface(IJanuaSystemDataModule, FDM) then
          raise exception.Create('IJanuaSystemDataModule interface not registered');
        SetInternalDataModule(FDM as IJanuaDataModuleContainer);
        WriteLocalLog('initialize', 'IJanuaSystemDataModule.Initialize');
        Guard.CheckNotNull(FDM, 'FDM');
        FDM.Activate;
        Guard.CheckNotNull(FDM.jdsUserSession, 'FDM.jdsUserSession');
        jdsMaster := FDM.jdsUserSession;
        Guard.CheckNotNull(FDM.jdsUserProfile, 'FDM.jdsUserProfile');
        // jdsUser := FDM.jdsUser;
        // jdsUserProfile := FDM.jdsUserProfile;
        // Dataset and Record Are statically mapped.
        UserSessionRecord.StoreDataset := jdsMaster;
        UserSessionRecord.UserProfile.StoreDataset := jdsUserProfile;
        UserSessionRecord.User.StoreDataset := jdsMaster;
        UserSessionRecord.MapToDataset := True;
        UserSessionRecord.Clear;
        jdsMaster.DataSet.AfterScroll := vtUserSessionAfterScroll;
      end;
    except
      on e: exception do
        Raise exception.Create(ClassName + '.InternalActivate ' + e.Message + sl + TJanuaLogger.TailLog);
    end;
end;

function TJanuaDBSystemUserSessionModel.InternalAddUser(const aUser: IUserProfile): boolean;
var
  vcount: Integer;
  vResult: boolean;

  procedure RegisterUser;
  var
    vToken: string;
  begin
    FDM.jspUserAdd.ParamByName('p_email').AsString := aUser.User.Email.AsString;
    FDM.jspUserAdd.ParamByName('p_username').AsString := aUser.User.Username.AsString;
    FDM.jspUserAdd.ParamByName('p_password').AsString := aUser.User.Password.AsString;
    FDM.jspUserAdd.ParamByName('p_country_id').AsInteger := 1;
    FDM.jspUserAdd.ParamByName('p_ispublic').AsBoolean := False;
    FDM.jspUserAdd.ExecSQL;
    vToken := FDM.jspUserAdd.ParamByName('Result').AsString;
    aUser.User.VerifyToken.AsString := vToken;
    vResult := vToken <> 'Error';
  end;

  procedure RegisterUserWithProfile;
  var
    vToken: string;
  begin
    {
      :p_email, :p_username, :p_firstname, :p_lastname, :p_address, :p_town, :p_postal_code,
      :p_password, :p_phone, :p_an_group_id, :p_anagraph_id, :p_default_schema_id, :p_country_id,
      :p_ispublic)
    }
    FDM.jspUserAdd.ParamByName('p_email').AsString := aUser.User.Email.AsString;
    FDM.jspUserAdd.ParamByName('p_username').AsString := aUser.User.Username.AsString;
    FDM.jspUserAdd.ParamByName('p_password').AsString := aUser.User.Password.AsString;

    FDM.jspUserAdd.ParamByName('p_firstname').AsString := aUser.User.UserFirstName.AsString;
    FDM.jspUserAdd.ParamByName('p_lastname').AsString := aUser.Last_name.AsString;
    FDM.jspUserAdd.ParamByName('p_address').AsString := aUser.Address_street.AsString + ' ' +
      aUser.Address_number.AsString;
    FDM.jspUserAdd.ParamByName('p_town').AsString := aUser.Address_town.AsString;
    FDM.jspUserAdd.ParamByName('p_postal_code').AsString := aUser.Address_postal_code.AsString;
    FDM.jspUserAdd.ParamByName('p_an_group_id').AsInteger := TJanuaApplication.SystemUserGroup;

    FDM.jspUserAdd.ParamByName('p_country_id').AsInteger := aUser.Country_id.AsInteger;
    FDM.jspUserAdd.ParamByName('p_ispublic').AsBoolean := False;
    FDM.jspUserAdd.ExecSQL;
    vToken := FDM.jspUserAdd.ParamByName('Result').AsString;
    aUser.User.VerifyToken.AsString := vToken;
    vResult := vToken <> 'Error';
  end;

begin
  Result := False;
  Guard.CheckNotNull(Self.FDM, ('TJanuaPgSystemStorage.InternalAddUser FDM is nil'));
  try
    if not IsValidEmail(aUser.User.Email.AsString) and IsValidEmail(aUser.User.Username.AsString) then
      aUser.User.Email.AsString := aUser.User.Username.AsString;
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email.AsString) then
    begin
      FLastErrorMessage := 'Mail non Valida';
      Exit;
    end;

    vResult := CheckUser(aUser);

    if vResult then
      RegisterUser;

    Result := vResult;

  except
    on e: exception do
    begin
      Result := False;
      FLastErrorMessage := e.Message;
      WriteError(ClassName + '.AddUser', Self.LogString, e);
    end;
  end;
end;

function TJanuaDBSystemUserSessionModel.InternalAddUserSocial(const aUser: IUserProfile): boolean;
begin
  { TODO: Implementation of method InternalCheckUser (aUser) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.InternalCheckUser(var count: Integer; aUser: IUserProfile): boolean;
begin
  { TODO: Implementation of method InternalCheckUser (aUser) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.InternalCheckUserSocial(const aUser: IUserProfile): boolean;
begin
  { TODO: Implementation of method InternalCheckUserSocial (aUser) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.InternalLogin: boolean;
begin
  Result := False;
  Guard.CheckNotNull(FDM, 'FDM not Set');
  Guard.CheckNotNull(FDM.jdsLogin, 'jdsLogin not set');
  Guard.CheckNotNull(FUserLogin, 'FUserLogin not set');
  try
    WriteLocalLog('InternalLogin', 'Tentativo Login: ' + FUserLogin.Email.AsString + '/' +
      FUserLogin.Password.AsString);
    if FUserLogin.Email.AsString > '' then
    begin
{$IFDEF  DEBUG}
      Guard.CheckNotNull(FDM.jdsLogin.ParamByName('p_email'), 'p_email');
      Guard.CheckNotNull(FDM.jdsLogin.ParamByName('p_username'), 'p_username');
      // p_password
      Guard.CheckNotNull(FDM.jdsLogin.ParamByName('p_password'), 'p_password');
      Guard.CheckNotNull(FDM.jdsLogin.FieldByName('Result'), 'result');
{$ENDIF}
      if not IsValidEmail(FUserLogin.Email.AsString) then
      begin
        WriteLocalLog('InternalLogin', 'Tentativo Login con Mail Errata: ' + FUserLogin.Email.AsString);
        SetLastErrorMessage('Tentativo Login con Mail Errata: ');
        FDM.jdsLogin.ParamByName('p_email').AsString := '';
        FDM.jdsLogin.ParamByName('p_username').AsString := FUserLogin.Email.AsString;
      end
      else
      begin
        FDM.jdsLogin.ParamByName('p_email').AsString := FUserLogin.Email.AsString;
        WriteLocalLog('InternalLogin', 'Tentativo connessione udando indrizzo Mail:' +
          FUserLogin.Email.AsString);
        FDM.jdsLogin.ParamByName('p_username').AsString := '';
      end;
    end
    else
    begin
      if (FUserLogin.Email.AsString = '') then
        FDM.jdsLogin.ParamByName('p_username').AsString := Self.FUserLogin.Username.AsString
      else if (Self.FUserLogin.Email.AsString > '') and (Self.FUserLogin.Username.AsString = '') then
        FDM.jdsLogin.ParamByName('p_username').AsString := Self.FUserLogin.Email.AsString
      else
        FDM.jdsLogin.ParamByName('p_username').AsString := Self.FUserLogin.Username.AsString;
      FDM.jdsLogin.ParamByName('p_email').AsString := '';
      WriteLocalLog('InternalLogin', 'Tentativo connessione usando username:' + FUserLogin.Email.AsString);
    end;
    FDM.jdsLogin.ParamByName('p_password').AsString := FUserLogin.Password.AsString;

    try
      FDM.jdsLogin.Open;
      WriteLocalLog('InternalLogin', 'Tentativo Login risultato: ' + FDM.jdsLogin.FieldByName('Result')
        .AsString);
      SetSessionKey(FDM.jdsLogin.FieldByName('Result').AsString { .ParamByName('Result').AsString } );

      Result := (GetSessionKey <> 'Error') and (GetSessionKey <> '') and (GetUser.DbUserId.AsInteger > 0);
      if not Result then
        SetLastErrorMessage('Error bad Login Attempt');
      ClearLocalLog('InternalLogin');

    finally
      FDM.jdsLogin.Close;
    end;
  except
    on e: exception do
      RaiseException('InternalLogin', e, Self, Self.LogString);
  end;
  // raise Exception.Create('TJanuaPgSystemStorage.InternalLogin not implemented');
end;

function TJanuaDBSystemUserSessionModel.InternalLoginByKey: boolean;
begin
  Result := False;
  // Verifico se è impostata una User-Session Key
  if (GetSessionKey > '') and (GetSessionKey <> 'Error') then
    try
      if not FDM.jdsUserSession.Active or (FDM.jdsUserSession.FieldByName('db_session_key').AsWideString <>
        GetSessionKey) then
      begin
        jdsUserSession.Close;
        FDM.jdsUserSession.ParamByName('db_session_key').AsString := GetSessionKey;
        jdsUserSession.Open;
      end;
      Result := (FDM.jdsUserSession.RecordCount = 1);
      if Result then
      begin
        jdsUserProfile.Close;
        FDM.jdsUserProfile.ParamByName('db_user_id').AsInteger := FDM.jdsUserSession.FieldByName('db_user_id')
          .AsInteger;
        jdsUserProfile.Open;
        // la user Session sarà gestita a livello di Server non di Storage
        // GetUserSession.LoadFromDataset(self.GetjdsUserSessions);
        OpenUserProfile;
        // FDM.FUserProfile.LoadFromDataset(FDM.jdsUserSession, FDM.qryUserProfile);
      end;
      WriteLocalLog('LoginByKey', ' open qryUserSession record: ' + jdsUserSession.RecordCount.ToString());
    except
      on e: exception do
      begin
        WriteLocalLog('LoginByKey', ' errore: ' + sLineBreak + e.Message);
        RaiseException('OpenProfile', e, Self, Self.LogString);
      end;
    end;
  ClearLocalLog('LoginByKey');
end;

function TJanuaDBSystemUserSessionModel.InternalLoginSocial: boolean;
begin
  { TODO: Implementation of method InternalLoginSocial (ID) }
  Result := False;
end;

procedure TJanuaDBSystemUserSessionModel.LoadProfile;
begin

end;

procedure TJanuaDBSystemUserSessionModel.LoadSessionAnagraphProfile;
var
  lModel: IJanuaDBAnagraphModel;
  lID: Integer;
  lAnagraph: IAnagraphView;
begin
  lAnagraph := nil;
  lID := FUserSessionRecord.UserProfile.AnagraphId.AsInteger;
  if lID > 0 then
  begin
    lModel := GetAnagraphModel;
    lModel.TryGetAnagraphByID(lAnagraph, lID);
    if Assigned(lAnagraph) then
    begin
      FUserSessionRecord.UserProfile.AnagraphProfile.Assign(lAnagraph);
      FUserSessionRecord.AnagraphProfile.Assign(lAnagraph);
    end;
  end;
end;

procedure TJanuaDBSystemUserSessionModel.LoadSessionUserProfile;
{$IFDEF DEBUG}
var
  aUserID, aSessionID, aAnagraphID: Int64;
{$ENDIF}
begin
  if (FSessionKey <> '') and (FSessionKey.ToLower <> 'error') then
  begin
    FUserSessionRecord.User.StoreDataset := FDM.jdsUser;
    FUserSessionRecord.StoreDataset := FDM.jdsUserSession;
    FUserSessionRecord.UserProfile.StoreDataset := FDM.jdsUserProfile;
    FDM.jdsUserSession.Close;
    FDM.jdsUserSession.ParamByName('db_session_key').AsString := FSessionKey;
    FDM.jdsUserSession.Open;
    Guard.CheckTrue(FDM.jdsUserSession.RecordCount > 0, 'jdsUserSession RecordCount is 0');
    FUserSessionRecord.LoadFromDataset;
{$IFDEF DEBUG}
    aUserID := FUserSessionRecord.User.DbUserId.AsLargeInt;
    aSessionID := FUserSessionRecord.Db_session_id.AsLargeInt;
    aAnagraphID := FUserSessionRecord.UserProfile.AnagraphId.AsInteger;
{$ENDIF}
  end;
end;

function TJanuaDBSystemUserSessionModel.login: boolean;
var
  LmailLogin: boolean;
begin
  LmailLogin := False;
  Result := LoggedIn and (User.Username.AsString = FUserLogin.Username.AsString);
  // this is to prevent application to attempt multiple login after a succesfull login already done
  if not Result then
    try
      Guard.CheckNotNull(FUserLogin, 'FUserLogin is nil');
      Result := SetupLogin(FUserLogin, LmailLogin);
      if Result then
      begin
        if LmailLogin then
        begin
          WriteLocalLog('login', 'Controlli OK avvio Login');
          Result := False;
          Result := InternalLogin;
        end
        else
        begin
          WriteLocalLog('login', 'Controlli OK avvio Login');
          Guard.CheckNotNull(FDM.jspLoginSocial, 'spLogin non assegnata da costruttore...');
          Result := False;
          Result := InternalLoginSocial;
        end;
      end;

      // If Login is Successfull i locally write Username for Next Access (Store It in Local Settings).
      if Result then
      begin
        { Username is Always Stored for the Next Login to make it Easier to user Application }
        TJanuaApplication.Settings.LocalLogin.Username := FUserLogin.Username.AsString;
        { If The user selected Remember Local Password then password is stored along with Username in .ini File }
        if RememberLocalPassword then
        begin
          TJanuaApplication.Settings.LocalLogin.StorePassword := True;
          TJanuaApplication.Settings.LocalLogin.Password := FUserLogin.Password.AsString;
        end;
        { Local Session Allows the direct access to Session without even starting a Login prompt like iOS App }
        if RememberSession then
        begin
          TJanuaApplication.Settings.LocalLogin.StoreSession := True;
          TJanuaApplication.Settings.LocalLogin.Session := FUserSessionRecord.Db_session_key.AsString;
        end;
        LoadSessionAnagraphProfile;
      end
      else
      begin
        TJanuaApplication.Settings.LocalLogin.StorePassword := False;
        TJanuaApplication.Settings.LocalLogin.Password := '';
        TJanuaApplication.Settings.LocalLogin.StoreSession := False;
        TJanuaApplication.Settings.LocalLogin.Session := '';
      end;

      ClearLocalLog('login');
    except
      on e: exception do
        RaiseException('login', e, Self, Self.LogString);
    end
end;

function TJanuaDBSystemUserSessionModel.login(const aUser: IUser): boolean;
begin
  FUserLogin := aUser;
  Result := login;
end;

function TJanuaDBSystemUserSessionModel.LoginByKey(const aKey: string): boolean;
begin
  Result := False;
  // At First I check if user is already logged in and session is active
  Result := (GetSessionKey = aKey) and Assigned(FUserLogin) and (FUserLogin.DbUserId.AsInteger = 0);
  // if I am not logged in and this is not the current session so i do Session Login Operations
  if not Result then
  begin
    jdsUserSession.Close;
    SetSessionKey(aKey);
    Result := InternalLoginByKey;
  end;
end;

procedure TJanuaDBSystemUserSessionModel.LogOut;
begin
  UserProfile.Clear;
  User.Clear;
  UserSessionRecord.Clear;
end;

function TJanuaDBSystemUserSessionModel.OpenProfile(aUserID: Integer): boolean;
begin
  Result := False;
  if (FSessionKey > '') and (FSessionKey <> 'Error') then
    try
      // Session Implementation with User Roles
      OpenSession;
      (*
        jdsUserSessionRoles.Close;
        jdsUserSessionRoles).Open;
      *)

      jdsUserProfile.Close;
      if aUserID <> 0 then
        jdsUserProfile.ParamByName('db_user_id').AsInteger := aUserID
      else
        jdsUserProfile.ParamByName('db_user_id').AsInteger := FUserSessionRecord.Db_user_id.AsInteger;
      jdsUserProfile.Open;

      if aUserID <> 0 then
      begin
        jdsUser.Close;
        jdsUser.ParamByName('db_user_id').AsInteger := aUserID;
        jdsUser.Open;
      end;

      Result := jdsUserProfile.RecordCount > 0;

      WriteLog(ClassName + '.OpenProfile', ' open qryUserProfile db_user_id = ' + aUserID.ToString +
        ' record: ' + jdsUserProfile.RecordCount.ToString());

      if Result then
      begin
        FUserSessionRecord.AssignDataset(jdsUserSession);

        if jdsUserSession.Active and (jdsUserSession.RecordCount > 0) then
          FUserSessionRecord.LoadFromDataset(False);

        FUserSessionRecord.User.AssignDataset(jdsUser);
        FUserSessionRecord.User.LoadFromDataset(False);

        FUserSessionRecord.UserProfile.AssignDataset(jdsUserProfile);
        FUserSessionRecord.UserProfile.LoadFromDataset(False);
      end
      else
        SetLastErrorMessage('User ' + aUserID.ToString + ' not Found in this session');
    except
      on e: exception do
      begin
        WriteLog('OpenProfile', ' errore: ' + e.Message);
        raise;
      end;
    end;

  Result := False;
end;

procedure TJanuaDBSystemUserSessionModel.OpenSession;
begin
  { TODO: Implementation of method OpenSession () }
end;

procedure TJanuaDBSystemUserSessionModel.OpenUserProfile;
begin
  { TODO: Implementation of method OpenProfile () }
end;

function TJanuaDBSystemUserSessionModel.ReadSchemaConf(const aKey, aDefault: string): string;
begin
  if not FDM.jdsSchemaConfig.Active then
    FDM.jdsSchemaConfig.Open;

  Result := aDefault;

  if jdsSchemaConfig.Locate('key', aKey, [loCaseInsensitive]) then
  begin
    if (jdsSchemaConfig.FieldByName('conf').AsString = '') and (aDefault <> '') then
    begin
      jdsSchemaConfig.Edit;
      jdsSchemaConfig.FieldByName('conf').AsString := aDefault;
      jdsSchemaConfig.Post;
    end
    else
      Result := jdsSchemaConfig.FieldByName('conf').AsString
  end
  else
    WriteSchemaConf(aKey, aDefault);
end;

function TJanuaDBSystemUserSessionModel.SaveProfile(const aProfile: IUserProfile): boolean;
begin
  { TODO: Implementation of method SaveProfile (Profile) }
  Result := False;
end;

function TJanuaDBSystemUserSessionModel.FindUserByEmail(const aMail: string): boolean;
begin
  { TODO: Implementation of method FindUserByEmail (string) }
  Result := False;
  raise exception.Create('Not implemented yet');
end;

function TJanuaDBSystemUserSessionModel.FindUserbyGUID(const aGUID: TGUID): boolean;
begin
  { TODO: Implementation of method FindUserbyGUID (TGUID) }
  Result := False;
  raise exception.Create('Not implemented yet');
end;

function TJanuaDBSystemUserSessionModel.searchuserbyGUID(const aGUID: TGUID): boolean;
begin
  { TODO: Implementation of method searchuserbyGUID (aGUID) }
  Result := False;
end;

procedure TJanuaDBSystemUserSessionModel.SetLastErrorMessage(const Value: string);
begin
  if Value <> FLastErrorMessage then
  begin
    FLastErrorMessage := Value;
    BindManager.Notify('LastErrorMessage');
  end;
end;

procedure TJanuaDBSystemUserSessionModel.SetLocalTest(const Value: boolean);
begin

end;

procedure TJanuaDBSystemUserSessionModel.SetLoggedIn(Value: boolean);
begin
  { TODO: Implementation of method SetLoggedIn () }
end;

procedure TJanuaDBSystemUserSessionModel.SetProfileFromQuery;
begin
  { TODO: Implementation of method SetProfileFromQuery () }
end;

procedure TJanuaDBSystemUserSessionModel.SetRegisterError(const Value: TJanuaRegisterError);
begin

end;

procedure TJanuaDBSystemUserSessionModel.SetRememberLocalPassword(const Value: boolean);
begin
  TJanuaApplication.Settings.LocalLogin.StorePassword := Value;
end;

procedure TJanuaDBSystemUserSessionModel.SetRememberSession(const Value: boolean);
begin
  TJanuaApplication.Settings.LocalLogin.StoreSession := Value;
end;

procedure TJanuaDBSystemUserSessionModel.SetSelectedSchema(const Value: Int64);
begin
  { TODO: Implementation of method SetSelectedSchema (Int64) }
end;

procedure TJanuaDBSystemUserSessionModel.SetSessionID(const Value: Int64);
begin
  { TODO: Implementation of method SetSessionID (Int64) }
end;

procedure TJanuaDBSystemUserSessionModel.SetSessionKey(const Value: String);
begin
  try
{$IFDEF  DEBUG}
    Guard.CheckNotNull(jdsUserSession.ParamByName('db_session_key'), 'db_session_key');
    Guard.CheckNotNull(jdsUser.ParamByName('db_user_id'), 'db_user_id');
    Guard.CheckNotNull(jdsUserProfile.ParamByName('db_user_id'), 'db_user_id');
{$ENDIF DEBUG}
    if (Value <> FSessionKey) then
    begin
      FSessionKey := Value;
      if (Value = '') then
        FUserSessionRecord.Clear
      else
      begin
        LoadSessionUserProfile;
      end;
      BindManager.Notify('SessionKey');
    end;
  except
    on e: exception do
      RaiseException('SetSessionKey', e, Self);
  end;
end;

function TJanuaDBSystemUserSessionModel.SetupLogin(const aUser: IUser; var aMailLogin: boolean): boolean;
begin
  Result := False;
  try
    Guard.CheckNotNull(aUser, 'aUser is nil');
    aMailLogin := True;
    Result := True;
    WriteLocalLog('login', 'email: ' + aUser.Email.AsString);
    WriteLocalLog('login', 'Password: ' + aUser.Password.AsString);
    WriteLocalLog('login', 'Social Network: ' + aUser.SocialType.AsString);
    WriteLocalLog('login', 'Social ID: ' + aUser.SocialID.AsString);
    WriteLocalLog('login', 'Controllo email');
    if (aUser.Email.AsString = '') or (aUser.Email.AsString = aUser.SocialType.AsString.ToLower + '-' +
      aUser.SocialID.AsString + '@ergomercator.com') or (aUser.Password.AsString = '') then
    begin
      if (aUser.SocialID.AsString = '') then
      begin
        Result := False;
        SetLastErrorMessage(TJanuaApplication.GetLocalText('Wrong or nul mail address or Social ID',
          '{2CE6B182-55B5-42BB-AC9D-4077C0419597}'));
        WriteLocalLog('login', 'Wrong or nul mail address');
      end
      else if (aUser.SocialID.AsString <> '') and (aUser.SocialType.AsString = '') then
      begin
        Result := False;
        SetLastErrorMessage(TJanuaApplication.GetLocalText('Social ID Without Social Network',
          '{787C7ACB-CCC2-45C8-983C-891AC4C40585}'));
        WriteLocalLog('login', 'Social ID Without Social Network');
      end
      else
      begin
        aMailLogin := False;
        if not IsValidEmail(aUser.Email.AsString) then
          aUser.Email.AsString := aUser.SocialType.AsString.ToLower + '-' + aUser.SocialID.AsString.ToLower +
            '@ergomercator.com';
      end;
    end;
    WriteLocalLog('login', 'Controllo password');
    if Result and aMailLogin and (aUser.Password.AsString = '') then
    begin
      begin
        Result := False;
        SetLastErrorMessage(TJanuaApplication.GetLocalText('You must write in the password field',
          '{787C7ACB-CCC2-45C8-983C-891AC4C40585}'));
        WriteLocalLog('login', LastErrorMessage);
      end;
    end;
  except
    on e: exception do
      RaiseException('SetupLogin', e, Self);
  end;

end;

procedure TJanuaDBSystemUserSessionModel.SetUserGUID(const Value: TGUID);
begin

end;

procedure TJanuaDBSystemUserSessionModel.UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(aAnagraphProfile, 'UpdateAnagraphProfile(aAnagraphProfile)');
  Guard.CheckFalse(aAnagraphProfile.GUID = TGUID.Empty, 'Anagraph GUID is null');
{$ENDIF}
  if GetAnagraphModel.SearchByGUID(aAnagraphProfile.GUID) then
  begin
    GetAnagraphModel.UpdateAnagraph(aAnagraphProfile);
    FUserSessionRecord.UserProfile.AnagraphProfile.Assign(aAnagraphProfile);
  end;
end;

procedure TJanuaDBSystemUserSessionModel.vtUserSessionAfterScroll(DataSet: TDataSet);
begin
  FUserSessionRecord.LoadFromDataset;
end;

procedure TJanuaDBSystemUserSessionModel.WriteSchemaConf(const aKey, aConf: string);
begin
  if not FDM.jdsSchemaConfig.Active then
    FDM.jdsSchemaConfig.Open;

  if jdsSchemaConfig.Locate('key', aKey, [loCaseInsensitive]) then
  begin
    if jdsSchemaConfig.FieldByName('conf').AsString <> aConf then
    begin
      jdsSchemaConfig.Edit;
      jdsSchemaConfig.FieldByName('conf').AsString := aConf;
      jdsSchemaConfig.Post;
    end;
  end
  else
  begin
    jdsSchemaConfig.Append;
    jdsSchemaConfig.FieldByName('key').AsString := aKey;
    jdsSchemaConfig.FieldByName('conf').AsString := aConf;
    jdsSchemaConfig.FieldByName('jguid').AsGuid := TGUID.NewGuid;
    jdsSchemaConfig.FieldByName('deleted').AsBoolean := False;
    jdsSchemaConfig.Post;
  end;
end;

{ TJanuaRESTSystemUserSessionModel }

function TJanuaRESTSystemUserSessionModel.AddUser(const aUser: IUserProfile): boolean;
var
  lResult: boolean;
begin
  Self.WriteLocalLog('AddUser', 'Creazione utente ..... TJanuaRecordUserProfile');
  Result := False;
  { TODO : Aggiungere Chiamata DMVC Post a risorsa /user mettendo nel 'body' aUser }

  Result := False;
  try
    if aUser.User.ValidateUser then
    begin
      if (aUser.User.SocialID.AsString = '') then
        lResult := InternalAddUser(aUser)
      else
        lResult := InternalAddUserSocial(aUser);
      WriteLocalLog('AddUser', ' fine Creazione utente ' + Self.LastErrorMessage);
    end;

    if lResult then
      login(aUser.User);

    Result := lResult;
  except
    on e: exception do
      RaiseException('AddUser', e, Self);
  end;
  ClearLocalLog('AddUser');

end;

function TJanuaRESTSystemUserSessionModel.AdminAddUser(const aUser: IUserProfile): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per AdminAddUser(const aUser: IUserProfile) }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.CheckUser(const aUser: IUserProfile): boolean;
var
  jspUserTest: IRESTProcClient;
begin
  Result := False;
  if TJanuaApplicationFactory.TryGetInterface(IRESTProcClient, jspUserTest) then
  begin
    if aUser.User.SocialID.AsString = '' then
    begin
      jspUserTest.Params.ParamByName('p_username').AsString := aUser.User.Username.AsString;
      jspUserTest.Params.ParamByName('p_email').AsString := aUser.User.Email.AsString;
      Result := jspUserTest.Execute and (jspUserTest.Params.ParamByName('Result').AsInteger = 0);
    end
    else
    { TODO : Implement System Session CheckUser (Social: aUser.User.SocialID.AsString) }
    begin
      (*
        jspUserTestSocial.ParamByName('p_socialid').AsWideString := aUser.User.SocialID.AsString;
        jspUserTestSocial.ParamByName('p_social_kind').AsWideString := aUser.User.SocialType.AsString;
        jspUserTestSocial.ExecSQL;
        Result := jspUserTest.ParamByName('Result').AsInteger = 0;
      *)
    end;
  end;
  if not Result then
    SetLastErrorMessage('User Already Registered');
end;

procedure TJanuaRESTSystemUserSessionModel.CloseProfile;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per CloseProfile }
end;

constructor TJanuaRESTSystemUserSessionModel.Create;
begin
  inherited;
  // In a REST environment the presence of the JWT token is considered as user is logged id
  FLoggedIn := (TJanuaApplication.RESTClientConf.JWT <> '');
  FLastErrorMessage := 'Login Form';

  if not TJanuaOrmFactory.TryGetRecordIntf(IUserSession, FUserSessionRecord, 'usersession',
    TJanuaEntity.SysDbUserSessions) then
    raise exception.Create('IUserSession interface not registered');
  SetInternalRecord(FUserSessionRecord);

  if not TJanuaApplicationFactory.TryGetInterface(IUserSession, [], FClientLogin) then
    raise exception.Create('IUserSession interface not registered');
  FClientLogin.ServerPort := TJanuaApplication.RESTClientConf.Port;
  FClientLogin.ServerURL := TJanuaApplication.RESTClientConf.Server;
  FClientLogin.APIUrl := TJanuaApplication.RESTClientConf.LoginResource;
end;

function TJanuaRESTSystemUserSessionModel.CreateNewAnagraph(const Value: IUser;
  const aAnagraphProfile: IAnagraphView): Integer;
begin
  raise exception.Create('CreateNewAnagraph not completely implemented yet');

  Result := -1; // if fails should return -1
  try
    Guard.CheckNotNull(aAnagraphProfile, 'aAnagraphProfile');
    Guard.CheckNotNull(Value, 'IUser');
    // check if passed User is the one logged in or not, in that case it tries to log in.
    if (User.DbUserId.AsInteger = Value.DbUserId.AsInteger) or login(Value) then
    begin
      if not User.DbUserId.AsInteger > 0 then
        raise exception.Create('User Registration Error ');

      if aAnagraphProfile.GUID.IsEmpty then
        aAnagraphProfile.GUID := TGUID.NewGuid;

      // Here System Must Call NewAnagraph Updating the Object. *** 2023-07-17 ***

      GetAnagraphModel.AddNewAnagraph(aAnagraphProfile);

{$IFNDEF TESTCORE}
      Result := aAnagraphProfile.AnagraphId.AsInteger;

      if Result <= 0 then
        raise exception.Create('Anagraph Registration Error ');
{$ELSE}
      Result := 1;
{$ENDIF TESTCORE}
{$IFDEF DEBUG}
      Guard.CheckNotNull(User, 'User');
      Guard.CheckNotNull(User.DbUserId, 'User.DbUserId');
{$ENDIF}
      (*
        FDM.jspUpdateUserAnID.ParamByName('p_db_user_id').AsInteger := User.DbUserId.AsInteger;
        FDM.jspUpdateUserAnID.ParamByName('p_anagraph_id').AsInteger := Result;
        FDM.jspUpdateUserAnID.ExecSQL;
      *)
      { TODO : Aggiungere Chiamata a updateuseranid/(aAnagraphID) da implementare sul server }

      UserProfile.AnagraphId.AsInteger := Result;

      if UserProfile.AnagraphProfile.AnagraphId.AsInteger <> Result then
      begin
        UserProfile.AnagraphProfile.Assign(aAnagraphProfile);
        FUserSessionRecord.AnagraphProfile.Assign(aAnagraphProfile);
      end;
    end;
  except
    on e: exception do
      RaiseException('CreateNewAnagraph', e, Self);
  end;

end;

function TJanuaRESTSystemUserSessionModel.CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): Integer;
begin
  Result := CreateNewAnagraph(User, aAnagraphProfile);
end;

function TJanuaRESTSystemUserSessionModel.DelCurrentUser: boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DelCurrentUser }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.DelUser: boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DelUser }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.DelUser(const aUserID: Integer): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DelUser }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.DelUser(const aGUID: TGUID): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DelUser }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.DelUser(const aEmail: string): boolean;
begin
  if FUserSessionRecord.User.Email.AsString.ToLower = aEmail.ToLower then
    Result := DelCurrentUser
  else
    Result := FindUserByEmail(aEmail) and DelUser
end;

function TJanuaRESTSystemUserSessionModel.DelUser(const aUser: IUserProfile): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DelUser }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.DoPaymentFindUser(const aAmount: Currency;
  const aDate: TDate): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DoPaymentFindUser }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.DoPaymentSession(const aAmount: Currency;
  const aDate: TDate): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per DoPaymentSession }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.findaddress(const aAddress: string): smallint;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per findaddress }
  Result := -1;
end;

function TJanuaRESTSystemUserSessionModel.findaddressbyID(const aID: Int64): smallint;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per findaddressbyID }
  Result := -1;
end;

function TJanuaRESTSystemUserSessionModel.FindUserByEmail(const aMail: string): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per FindUserByEmail }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.FindUserbyGUID(const aGUID: TGUID): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per FindUserByEmail }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.FindUserByID(const Id: Integer): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per FindUserByID }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.FindUserByKey(const key: string): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per FindUserByKey }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.FindUserByName(const aName: string): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per FindUserByName }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.FindUserBySocialID(aID, aSocial: string): boolean;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per FindUserByName }
  Result := False;
end;

function TJanuaRESTSystemUserSessionModel.FindUsers(const aUserName, aEmail: string): Integer;
begin
  { TODO : Aggiungere procedura DMVC e Client Rest per findaddressbyID }
  Result := -1;
end;

function TJanuaRESTSystemUserSessionModel.GetAnagraphModel: IJanuaAnagraphModel;
begin
  Result := Self.FAnagraphModel
end;

function TJanuaRESTSystemUserSessionModel.GetAnagraphProfile: IAnagraphView;
begin
  Result := Self.FUserSessionRecord.AnagraphProfile
end;

function TJanuaRESTSystemUserSessionModel.GetLastErrorMessage: string;
begin
  Result := Self.FLastErrorMessage
end;

function TJanuaRESTSystemUserSessionModel.GetLoggedIn: boolean;
begin
  Result := FLoggedIn or (TJanuaApplication.RESTClientConf.JWT <> '');
end;

function TJanuaRESTSystemUserSessionModel.GetRegisterError: TJanuaRegisterError;
begin
  { TODO : Implement GetRegisterError  returning a TJanuaRegisterError }
  Result := TJanuaRegisterError.jreNone;
end;

function TJanuaRESTSystemUserSessionModel.GetRememberLocalPassword: boolean;
begin
  Result := TJanuaApplication.Settings.LocalLogin.StorePassword;
end;

function TJanuaRESTSystemUserSessionModel.GetRememberSession: boolean;
begin
  Result := TJanuaApplication.Settings.LocalLogin.StoreSession;
end;

function TJanuaRESTSystemUserSessionModel.GetSearchedUser: IUserProfile;
begin

  { Result := FSelectedUser }
end;

procedure TJanuaRESTSystemUserSessionModel.GetSession;
begin
  // Note: a User Session GUID is not needed simply because all informations about Session
  // are Already Stored in JWT
  if LoggedIn and (FUserSessionRecord.User.DbUserId.AsInteger = 0) or
    (FUserSessionRecord.Db_session_id.AsInteger = 0) then
    RESTRecordClient.Retrieve(TGUID.Empty);
end;

function TJanuaRESTSystemUserSessionModel.GetSessionID: Int64;
begin
  Result := FUserSessionRecord.Db_session_id.AsLargeInt
end;

function TJanuaRESTSystemUserSessionModel.GetSessionKey: String;
begin
  Result := FUserSessionRecord.Db_session_key.AsString
end;

function TJanuaRESTSystemUserSessionModel.GetUser: IUser;
begin
  Result := FUserSessionRecord.UserProfile.User
end;

function TJanuaRESTSystemUserSessionModel.GetUserGUID: TGUID;
begin
  Result := FUserSessionRecord.UserProfile.User.GUID
end;

function TJanuaRESTSystemUserSessionModel.GetUserLogin: IUser;
begin
  Result := FUserSessionRecord.UserProfile.User
end;

function TJanuaRESTSystemUserSessionModel.GetUserProfile: IUserProfile;
begin
  Result := FUserSessionRecord.UserProfile
end;

function TJanuaRESTSystemUserSessionModel.GetUserSessionRecord: IUserSession;
begin
  GetSession;
  Result := FUserSessionRecord
end;

function TJanuaRESTSystemUserSessionModel.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
{$IFDEF DEBUG}
        WriteLocalLog('initialize', 'FCurrentRecord');
{$ENDIF}
        if not TJanuaOrmFactory.TryGetRecordIntf(IUserSession, FUserSessionRecord, 'usersession',
          TJanuaEntity.SysDbUserSessions) then
          raise exception.Create('IUserSession interface not registered');
        SetInternalRecord(FUserSessionRecord);
        UserSessionRecord.Clear;
        if LoggedIn then
          GetSession;
        FjdsDataset.DataSet.AfterScroll := vtUserSessionAfterScroll;
      end;
    except
      on e: exception do
        Raise exception.Create(ClassName + '.InternalActivate ' + e.Message + sl + TJanuaLogger.TailLog);
    end;

end;

function TJanuaRESTSystemUserSessionModel.InternalAddUser(const aUser: IUserProfile): boolean;
var
  vResult: boolean;
  function RegisterUser: boolean;
  var
    lClient: IRESTRecordClient;
  begin
    if TJanuaApplicationFactory.TryGetInterface(IRESTRecordClient, lClient) then
    begin
      lClient.JanuaRecord := aUser;
      // API Expected is 'user'
      lClient.APIUrl := '/user';
      // Create Record Calls a standard 'POST'
      Result := lClient.CreateRecord;
    end;
  end;

begin
  Result := False;
  try
    if not IsValidEmail(aUser.User.Email.AsString) and IsValidEmail(aUser.User.Username.AsString) then
      aUser.User.Email.AsString := aUser.User.Username.AsString;
    if not Janua.Core.Functions.IsValidEmail(aUser.User.Email.AsString) then
    begin
      FLastErrorMessage := 'Mail non Valida';
      Exit;
    end;

    Result := CheckUser(aUser) and RegisterUser;

  except
    on e: exception do
    begin
      Result := False;
      WriteError(ClassName + '.AddUser', LogString, e);
    end;
  end;
end;

function TJanuaRESTSystemUserSessionModel.InternalAddUserSocial(const aUser: IUserProfile): boolean;
begin

end;

function TJanuaRESTSystemUserSessionModel.InternalCheckUser(var count: Integer; aUser: IUserProfile): boolean;
begin

end;

function TJanuaRESTSystemUserSessionModel.InternalCheckUserSocial(const aUser: IUserProfile): boolean;
begin

end;

function TJanuaRESTSystemUserSessionModel.InternalLogin: boolean;
var
  // TJanuaRESTClient = class(IJanuaRESTClient, IJanuaBindable)
  lRestClient: IJanuaRESTClient;
  lSystem: IUserSession;
begin
  Result := False;
{$IFDEF  DEBUG}
  Guard.CheckNotNull(FUserLogin, 'FUserLogin not set');
{$ENDIF}
  try
{$IFDEF  DEBUG}
    WriteLocalLog('InternalLogin', 'Tentativo Login: ' + FUserLogin.Email.AsString + '/' +
      FUserLogin.Password.AsString);
{$ENDIF}
    if FUserLogin.Email.IsNull or not IsValidEmail(FUserLogin.Email.AsString) then
      FClientLogin.Username := IfThen(FUserLogin.Username.IsNull, TJanuaApplication.RESTClientConf.Username,
        FUserLogin.Username.AsString)
    else
      FClientLogin.Username := FUserLogin.Email.AsString;

    // Setting Password
    FClientLogin.Password := IfThen(FUserLogin.Username.IsNull, TJanuaApplication.RESTClientConf.Password,
      FUserLogin.Password.AsString);

{$IFDEF DEBUG}
    var
    lUrl := FClientLogin.GetFullUrl;
    if lUrl <> '' then
{$ENDIF}
      Result := FClientLogin.login;

    if Result then
    begin
      if not TJanuaApplicationFactory.TryGetInterface(IJanuaRESTClient, lRestClient) then
        raise exception.Create('Error Message');
      lRestClient.APIUrl := 'session';
      lRestClient.Execute(TJanuaHttpMethod.jhmGet);
      lSystem := TUserSession.Create;
      lSystem.asJson := lRestClient.Content;
      TFile.WriteAllText(TJanuaCoreOS.HomePath + 'session.json', lSystem.asJson);
      Self.GetCurrentRecord.Assign(lSystem);
    end;

  except
    on e: exception do
      RaiseException('InternalLogin', e, Self, Self.LogString);
  end;

end;

function TJanuaRESTSystemUserSessionModel.InternalLoginByKey: boolean;
begin
  Result := not TJanuaApplication.RESTClientConf.JWT.IsEmpty;
  if Result then
  begin

  end;
end;

function TJanuaRESTSystemUserSessionModel.InternalLoginSocial: boolean;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.LoadProfile;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.LoadSessionAnagraphProfile;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.LoadSessionUserProfile;
begin

end;

function TJanuaRESTSystemUserSessionModel.login: boolean;
begin

end;

function TJanuaRESTSystemUserSessionModel.login(const aUser: IUser): boolean;
begin
{$IFDEF  DEBUG}
  Guard.CheckNotNull(FUserLogin, 'FUserLogin not set');
{$ENDIF}
  if aUser.Username.IsNull or aUser.Username.AsString.IsEmpty then
    aUser.Username.AsString := TJanuaApplication.RESTClientConf.Username;
  if aUser.Password.IsNull or aUser.Password.AsString.IsEmpty then
    aUser.Password.AsString := TJanuaApplication.RESTClientConf.Password;
  Result := Self.InternalLogin;
end;

function TJanuaRESTSystemUserSessionModel.LoginByKey(const aKey: string): boolean;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.LogOut;
begin

end;

function TJanuaRESTSystemUserSessionModel.OpenProfile(aUserID: Integer): boolean;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.OpenSession;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.OpenUserProfile;
begin

end;

function TJanuaRESTSystemUserSessionModel.ReadSchemaConf(const aKey, aDefault: string): string;
begin

end;

function TJanuaRESTSystemUserSessionModel.SaveProfile(const aProfile: IUserProfile): boolean;
begin

end;

function TJanuaRESTSystemUserSessionModel.searchuserbyGUID(const aGUID: TGUID): boolean;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetLastErrorMessage(const Value: string);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetLocalTest(const Value: boolean);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetLoggedIn(Value: boolean);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetProfileFromQuery;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetRegisterError(const Value: TJanuaRegisterError);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetRememberLocalPassword(const Value: boolean);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetRememberSession(const Value: boolean);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetSelectedSchema(const Value: Int64);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetSessionID(const Value: Int64);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetSessionKey(const Value: String);
begin

end;

function TJanuaRESTSystemUserSessionModel.SetupLogin(const aUser: IUser; var aMailLogin: boolean): boolean;
begin

end;

procedure TJanuaRESTSystemUserSessionModel.SetUserGUID(const Value: TGUID);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(aAnagraphProfile, 'UpdateAnagraphProfile(aAnagraphProfile)');
  Guard.CheckFalse(aAnagraphProfile.GUID = TGUID.Empty, 'Anagraph GUID is null');
{$ENDIF}
  if GetAnagraphModel.SearchByGUID(aAnagraphProfile.GUID) then
  begin
    GetAnagraphModel.UpdateAnagraph(aAnagraphProfile);
    FUserSessionRecord.UserProfile.AnagraphProfile.Assign(aAnagraphProfile);
  end;
end;

procedure TJanuaRESTSystemUserSessionModel.vtUserSessionAfterScroll(DataSet: TDataSet);
begin

end;

procedure TJanuaRESTSystemUserSessionModel.WriteSchemaConf(const aKey, aConf: string);
begin

end;

initialization

// TJanuaRESTSystemUserSessionModel = IJanuaRemoteSystemUserSessionModel
TJanuaApplicationFactory.RegisterClass(IJanuaRemoteSystemUserSessionModel, TJanuaRESTSystemUserSessionModel);

end.
