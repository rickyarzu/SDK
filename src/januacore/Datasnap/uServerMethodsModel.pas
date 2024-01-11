unit uServerMethodsModel;

interface

uses
  System.SysUtils, System.Classes, System.Json, System.StrUtils,
  // Datasnap
  Datasnap.DSAuth, Datasnap.DSProviderDataModuleAdapter, Datasnap.DSServer,
  // System Http Clients
  System.Net.HttpClient, System.Net.HttpClientComponent, System.Net.URLClient,
  // Janua Components
  Janua.Core.Http, Janua.Core.Customcontrols, Janua.Core.Mail,
  Janua.Core.Classes, Janua.Core.Cloud, Janua.Core.System, Janua.Core.Functions,
  Janua.Core.Cms, Janua.Core.JPublic, Janua.Core.Servers,
  // Janua Postgres
  Janua.Postgres.System, Janua.Postgres.JPublic, Janua.Postgres.Cms, Janua.Core.DB, Data.DB, MemDS, DBAccess, Uni, Janua.Unidac.Connection, ,
  VirtualTable;

type
  TDSServerModuleModel = class(TDSServerModule)
    JanuaPostgresSystem: TJanuaPostgresSystem;
    JanuaServerPgCms: TJanuaServerPgCms;
    JanuaServerJPublic: TJanuaServerJPublic;
    JanuaVCLOS1: TJanuaCoreOS;
    JanuaMailSender1: TJanuaMailSender;
    JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding;
    NetHTTPRequest1: TNetHTTPRequest;
    NetHTTPClient1: TNetHTTPClient;
    JanuaServerConf1: TJanuaServerConf;
    JanuaDBLogger1: TJanuaDBLogger;
    vtTowns: TVirtualTable;
    vtTownstown_id: TIntegerField;
    vtTownstown_name: TStringField;
    vtTownstown_iso_code: TStringField;
    vtTownstown_local_code: TStringField;
    vtTownstown_postal_code: TStringField;
    vtTownsdistrict_id: TSmallintField;
  protected
    FJanuaCustomDBServer: TJanuaCustomDBServer;
  private
    { Private declarations }
  public
{$METHODINFO ON}
    { Public declarations }
    // **************************************** System Methods *************************************
    function GetCoordinates(aAddres: string): TJsonObject; virtual;
    function LoginJson(aJsonObject: TJsonObject): TJsonObject; virtual;
    function CheckSessionKey(const aSessionKey: string; const aAppName: string = ''): TJsonObject; virtual;
    function Login(UserName, Password: string): TJsonObject; virtual;
    function StartPublicSession(aAppName: string = 'dico33.com'): TJsonObject; virtual;
    function CheckNewUser(aUserName: string): boolean; virtual;
    function CheckNewUserJson(aUser: TJsonObject): boolean; virtual;
    function CreateNewUser(aUser: TJsonObject; var aChecked: boolean): TJsonObject; overload; virtual;
    function CreateNewUserPwd(aUserName, aPassword: string; var aChecked: boolean): TJsonObject; overload; virtual;
    function SaveProfile(aUserProfile: TJsonObject; var aChecked: boolean; var aError: string): TJsonObject; virtual;
    // **************************************** Health Methods *************************************
  end;
{$METHODINFO OFF}

implementation

uses Janua.Core.Types, Janua.Core.Classes;

{$R *.dfm}

function TDSServerModuleModel.CheckNewUser(aUserName: string): boolean;
begin
  Result := self.JanuaPostgresSystem.CheckNewUser(aUserName)
end;

function TDSServerModuleModel.CheckNewUserJson(aUser: TJsonObject): boolean;
var
  aNewUser: TJanuaRecordUserProfile;
begin
  aNewUser.Clear;
  aNewUser.AsJsonObject := aUser;
  Result := JanuaPostgresSystem.CheckNewUser(aNewUser);
end;

function TDSServerModuleModel.CheckSessionKey(const aSessionKey, aAppName: string): TJsonObject;
var
  aLoginRecord: TJanuaLoginRecord;
begin
  if (aSessionKey <> '') then
  begin
    if self.FJanuaCustomDBServer.CheckSessionKey(aSessionKey) then
    begin
      // se trovo la sessione la 'ritorno' al client.
      // aLoginRecord.IsLoggedIn := True;
      aLoginRecord.Session := FJanuaCustomDBServer.JanuaServerSession;
      aLoginRecord.UserProfile := FJanuaCustomDBServer.UserProfile;
      Result := aLoginRecord.AsJsonObject;
    end
    else
    begin
      // se CheckSessionKey non ritorna un risultato utile allora avvio una nuova sessione
      self.JanuaPostgresSystem.StartSystemPublicWebSession(IfThen(aAppName = '', JanuaApplicationGlobalProfile.AppName,
        aAppName));
      // aLoginRecord.IsLoggedIn := False;
      aLoginRecord.Session := JanuaPostgresSystem.JanuaServerSession;
      aLoginRecord.UserProfile := JanuaPostgresSystem.UserProfile;
      Result := aLoginRecord.AsJsonObject;
    end;
  end
  else
  begin
    // se SessionKey = '' allora ritorno una nuova chiave di sessione pubblica ...............................
    self.JanuaPostgresSystem.StartSystemPublicWebSession(IfThen(aAppName = '', JanuaApplicationGlobalProfile.AppName,
      aAppName));
    // aLoginRecord.IsLoggedIn := False;
    aLoginRecord.Session := JanuaPostgresSystem.JanuaServerSession;
    aLoginRecord.UserProfile := JanuaPostgresSystem.UserProfile;
    Result := aLoginRecord.AsJsonObject;
  end;

end;

function TDSServerModuleModel.CreateNewUserPwd(aUserName, aPassword: string; var aChecked: boolean): TJsonObject;
var
  sUser: TJanuaRecordUserProfile;
begin
  sUser.Clear;
  sUser.User.UserName := aUserName;
  sUser.User.Password := aPassword;
  self.JanuaPostgresSystem.CreateNewUser(sUser);
  Result := self.JanuaPostgresSystem.UserProfile.AsJsonObject;
end;

function TDSServerModuleModel.GetCoordinates(aAddres: string): TJsonObject;
begin
  if (Janua.Core.Functions.StringLength(aAddres) = 5) and Janua.Core.Functions.IsNumeric(aAddres) then
  begin
    if self.vtTowns.Locate('town_postal_code', aAddres, []) then
      aAddres := aAddres + ' ' + vtTownstown_name.AsWideString
    else if self.vtTowns.Locate('town_postal_code', Copy(aAddres, 1, 3) + '00', []) then
      aAddres := aAddres + ' ' + vtTownstown_name.AsWideString;
  end;
  self.JanuaGoogleGeoCoding1.Address := aAddres;
end;

function TDSServerModuleModel.CreateNewUser(aUser: TJsonObject; var aChecked: boolean): TJsonObject;
var
  sUser: TJanuaRecordUserProfile;
begin
  sUser.Clear;
  sUser.LoadFromJsonObject(aUser);
  self.JanuaPostgresSystem.CreateNewUser(sUser);
  Result := JanuaPostgresSystem.UserProfile.AsJsonObject;
end;

function TDSServerModuleModel.Login(UserName, Password: string): TJsonObject;
var
  aLogin: TJanuaLoginRecord;
begin
  self.JanuaPostgresSystem.UserName := UserName;
  self.JanuaPostgresSystem.Password := Password;
  aLogin.Clear;
  if JanuaPostgresSystem.Login then
  begin
    aLogin.Session := self.JanuaPostgresSystem.JanuaServerSession;
    aLogin.UserProfile := self.JanuaPostgresSystem.UserProfile;
    // aLogin.IsLoggedIn := True;
  end;
  Result := aLogin.AsJsonObject;
end;

function TDSServerModuleModel.LoginJson(aJsonObject: TJsonObject): TJsonObject;
var
  aUser: TJanuaRecordUserProfile;
begin
  aUser.Clear;
  aUser.AsJsonObject := aJsonObject;
  Result := self.Login(aUser.User.UserName, aUser.User.Password);
end;

function TDSServerModuleModel.SaveProfile(aUserProfile: TJsonObject; var aChecked: boolean; var aError: string)
  : TJsonObject;
begin
  self.JanuaPostgresSystem.UserProfile.LoadFromJsonObject(aUserProfile);
  aChecked := self.JanuaPostgresSystem.SaveProfile;
  if aChecked then
  begin
    Result := self.JanuaPostgresSystem.UserProfile.AsJsonObject;
    aError := '';
  end
  else
  begin
    Result := aUserProfile;
    aError := JanuaPostgresSystem.LastErrorMessage;
  end;
end;

function TDSServerModuleModel.StartPublicSession(aAppName: string): TJsonObject;
begin
  self.JanuaPostgresSystem.StartSystemPublicWebSession(aAppName);
  Result := JanuaPostgresSystem.JanuaServerSession.AsJsonObject;
end;

end.
