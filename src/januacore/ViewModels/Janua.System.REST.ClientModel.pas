unit Janua.System.REST.ClientModel;

interface

uses
  Janua.Core.Types, Janua.Core.Classes, Janua.Orm.Types, Janua.REST.Types,
  // Core Intf
  Janua.Core.Classes.Intf, Janua.Controls.Forms.Intf, Janua.REST.Intf,
  // Orm
  Janua.Orm.Intf, Data.DB, JOrm.System.Intf, JOrm.System.Session.Intf, JOrm.Anagraph.Intf,
  // ViewModel
  Janua.ViewModels.Intf, Janua.Anagraph.ViewModel.Intf, Janua.Models.Templates, Janua.System.ViewModel.Intf;

type
  TJanuaSystemRestUserSessionModel = class(TJanuaRestModelTemplate, IJanuaClientModel,
    IJanuaRemoteSystemUserSessionModel)
  public
    Constructor Create; override;
    Destructor Destroy; override;
  private
    FRESTClientLogin: IRESTLoginClient;
  strict protected
    function LoadUserProfile: Boolean;
  protected
    procedure SetSelectedSchema(const Value: Int64);
    function GetRegisterError: TJanuaRegisterError;
    procedure SetRegisterError(const Value: TJanuaRegisterError);
    /// <summary> Imposta la lista degli Schemi </summary>
    procedure SetProfileFromQuery;
    function GetUserSessionRecord: IUserSession;
    function GetSessionID: Int64;
    procedure SetSessionID(const Value: Int64);
    function GetLastErrorMessage: string;
    function GetUserLogin: IUser;
    function GetSessionKey: String;
    function GetUser: IUser;
  public
    /// <summary> Latest registrarion Error Type if registration Fails </summary>
    property RegisterError: TJanuaRegisterError read GetRegisterError write SetRegisterError;
    function SaveProfile(const aProfile: IUserProfile): Boolean;
    procedure OpenUserProfile;
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
    property UserSessionRecord: IUserSession read GetUserSessionRecord;
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
    /// <summary> Create a new anagraph profiles and adds it to the passed user </summary>
    function CreateNewAnagraph(const Value: IUser; const aAnagraphProfile: IAnagraphView): integer; overload;
    /// <summary> Create a new anagraph profiles and adds it to user logged in </summary>
    function CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): integer; overload;
    function ReadSchemaConf(const aKey, aDefault: string): string;
    procedure WriteSchemaConf(const aKey, aConf: string);
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
  protected
    procedure SetSessionKey(const Value: String);
    procedure vtUserSessionAfterScroll(DataSet: TDataSet);
    function GetUserProfile: IUserProfile;
    function GetLoggedIn: Boolean;
    function GetRememberSession: Boolean;
    procedure SetRememberSession(const Value: Boolean);
    function GetRememberLocalPassword: Boolean;
    procedure SetRememberLocalPassword(const Value: Boolean);
    function GetUserGUID: TGUID;
    procedure SetUserGUID(const Value: TGUID);
    function GetSearchedUser: IUserProfile;
    function GetAnagraphProfile: IAnagraphView;
  public
    property UserLogin: IUser read GetUserLogin;
    property LastErrorMessage: string read GetLastErrorMessage;
    property UserProfile: IUserProfile read GetUserProfile;
    property User: IUser read GetUser;
    property SessionKey: String read GetSessionKey write SetSessionKey;
    property LoggedIn: Boolean read GetLoggedIn;
    property RememberSession: Boolean read GetRememberSession write SetRememberSession;
    property RememberLocalPassword: Boolean read GetRememberLocalPassword write SetRememberLocalPassword;
    /// <summary> An user and Session can have an Anagraph profile </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
    /// <summary> Sends Anagraph Profile to AnagraphModel for Updates </summary>
    procedure UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
    /// <summary> User token or User GUID. </summary>
    property UserGUID: TGUID read GetUserGUID write SetUserGUID;
    /// <summary> This is a searched user other than the session's owner. </summary>
    property SearchedUser: IUserProfile read GetSearchedUser;
  end;

implementation

uses System.Classes, System.SysUtils, Spring, System.StrUtils,
  // Januaproject
  Janua.Orm.Impl, Janua.Core.Functions, Janua.Application.Framework;

{ TJanuaSystemRestUserSessionModel }

function TJanuaSystemRestUserSessionModel.AddUser(const aUser: IUserProfile): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.AdminAddUser(const aUser: IUserProfile): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.CheckUser(const aUser: IUserProfile): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.CreateNewAnagraph(const Value: IUser;
  const aAnagraphProfile: IAnagraphView): integer;
begin

end;

constructor TJanuaSystemRestUserSessionModel.Create;
begin
  inherited;
  // TJanuaApplicationFactory.TryGetInterface(const IID: TGUID; out Intf; const aRaise: Boolean = True)
  TJanuaApplicationFactory.TryGetInterface(IRESTLoginClient, FRESTClientLogin, True);
end;

function TJanuaSystemRestUserSessionModel.CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): integer;
begin

end;

function TJanuaSystemRestUserSessionModel.DelUser: Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.DelUser(const aUser: IUserProfile): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.DelUser(const aEmail: string): Boolean;
begin

end;

destructor TJanuaSystemRestUserSessionModel.Destroy;
begin

  inherited;
end;

function TJanuaSystemRestUserSessionModel.DelUser(const aGUID: TGUID): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.DelUser(const aUserID: integer): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.DoPaymentFindUser(const aAmount: Currency;
  const aDate: TDate): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.DoPaymentSession(const aAmount: Currency;
  const aDate: TDate): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.findaddress(const aAddress: string): smallint;
begin

end;

function TJanuaSystemRestUserSessionModel.findaddressbyID(const aID: Int64): smallint;
begin

end;

function TJanuaSystemRestUserSessionModel.FindUserByEmail(const aMail: string): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.FindUserbyGUID(const aGUID: TGUID): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.FindUserByID(const Id: integer): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.FindUserByKey(const key: string): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.FindUserBySocialID(aID, aSocial: string): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.FindUsers(const aUserName, aEmail: string): integer;
begin

end;

function TJanuaSystemRestUserSessionModel.GetAnagraphProfile: IAnagraphView;
begin

end;

function TJanuaSystemRestUserSessionModel.GetLastErrorMessage: string;
begin

end;

function TJanuaSystemRestUserSessionModel.GetLoggedIn: Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.GetRegisterError: TJanuaRegisterError;
begin

end;

function TJanuaSystemRestUserSessionModel.GetRememberLocalPassword: Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.GetRememberSession: Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.GetSearchedUser: IUserProfile;
begin

end;

procedure TJanuaSystemRestUserSessionModel.GetSession;
begin

end;

function TJanuaSystemRestUserSessionModel.GetSessionID: Int64;
begin

end;

function TJanuaSystemRestUserSessionModel.GetSessionKey: String;
begin

end;

function TJanuaSystemRestUserSessionModel.GetUser: IUser;
begin

end;

function TJanuaSystemRestUserSessionModel.GetUserGUID: TGUID;
begin

end;

function TJanuaSystemRestUserSessionModel.GetUserLogin: IUser;
begin

end;

function TJanuaSystemRestUserSessionModel.GetUserProfile: IUserProfile;
begin

end;

function TJanuaSystemRestUserSessionModel.GetUserSessionRecord: IUserSession;
begin

end;

function TJanuaSystemRestUserSessionModel.LoadUserProfile: Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.login: Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.login(const aUser: IUser): Boolean;
begin

end;

function TJanuaSystemRestUserSessionModel.LoginByKey(const aKey: string): Boolean;
begin

end;

procedure TJanuaSystemRestUserSessionModel.LogOut;
begin
  TJanuaApplication.RESTClientConf.JWT := '';
end;

procedure TJanuaSystemRestUserSessionModel.OpenUserProfile;
begin

end;

function TJanuaSystemRestUserSessionModel.ReadSchemaConf(const aKey, aDefault: string): string;
begin

end;

function TJanuaSystemRestUserSessionModel.SaveProfile(const aProfile: IUserProfile): Boolean;
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetLocalTest(const Value: Boolean);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetProfileFromQuery;
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetRegisterError(const Value: TJanuaRegisterError);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetRememberLocalPassword(const Value: Boolean);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetRememberSession(const Value: Boolean);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetSelectedSchema(const Value: Int64);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetSessionID(const Value: Int64);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetSessionKey(const Value: String);
begin

end;

procedure TJanuaSystemRestUserSessionModel.SetUserGUID(const Value: TGUID);
begin

end;

procedure TJanuaSystemRestUserSessionModel.UpdateAnagraphProfile(aAnagraphProfile: IAnagraphView);
begin

end;

procedure TJanuaSystemRestUserSessionModel.vtUserSessionAfterScroll(DataSet: TDataSet);
begin

end;

procedure TJanuaSystemRestUserSessionModel.WriteSchemaConf(const aKey, aConf: string);
begin

end;

end.
