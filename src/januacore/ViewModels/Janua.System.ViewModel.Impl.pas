unit Janua.System.ViewModel.Impl;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Janua Project Framework
  Janua.Core.Types, Janua.Orm.Intf, Janua.Controls.Forms.Intf, Janua.Core.Classes.Intf,
  // Orm
  JOrm.System.Intf, JOrm.Anagraph.Intf,
  // View Model
  Janua.ViewModels.Intf, Janua.ViewModels.Templates, Janua.System.ViewModel.Intf;

type
  TJanuaCustomSystemUserSessionViewModel = class(TJanuaRecordViewModelTemplate,
    IJanuaSystemUserSessionViewModel, IJanuaBaseViewModel)
  private
    [weak]
    FSystemUserSessionModel: IJanuaSystemUserSessionModel;
    FLoginDialog: IJanuaLoginForm;
    FCount: Integer;
    FLocalUserProfile: IUserProfile;
    FLastErrorMessge: string;
    FLoginRegister: TLoginRegister;
    // -------------------- inherited and override from TJanuaViewModelDBTemplate -----------------------------------------
  strict protected // virtual methods
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
    function InternalActivate: boolean; override;
  protected
    function GetSystemUserSessionModel: IJanuaSystemUserSessionModel;
    procedure SetSystemUserSessionModel(const Value: IJanuaSystemUserSessionModel);
    // IAnagraph
    function GetCurrentRecord: IUserSession;
    procedure SetCurrentRecord(const Value: IUserSession);
    function GetSessionID: Int64;
    /// <summary>
    /// This is the System (Dataset Based) User Session Class. It is
    /// connected with the DB Model and is a Descendant of the UserSession
    /// ViewModel generic Class
    /// </summary>
    procedure SetSessionID(const Value: Int64);
    property SessionID: Int64 read GetSessionID write SetSessionID;
    function GetSchemaID: Integer;
    procedure SetSchemaID(const Value: Integer);
    function GetLocalAnagraph: IAnagraphView;
    function GetLocalUserProfile: IUserProfile;
    function GetRememberLocalPassword: boolean;
    function GetLoginRegister: TLoginRegister;
    procedure SetLoginRegister(const Value: TLoginRegister);
  public
    function LoginWithDialog: boolean;
    /// <summary> Standard Login with a session key or Token interface as input, sets a local user-session </summary>
    function LoginByKey(const aKey: string): boolean;
    /// <summary> Silent login for testing or custom login Procedures </summary>
    function SilentLogin(const aUsername, aPassword: string): boolean; overload;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function SilentLogin(const aUser: IUser): boolean; overload;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function RegisterUser(const aUser: IUserProfile): boolean; overload;
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    function RegisterUser(const aUser: IUser): boolean; overload;
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
    /// <summary> Silent login is used just for testing purposes or for a custom Application </summary>
    /// <summary> performs a logout and resets both user informations and Session Informations  </summary>
    procedure LogOut;
    function RegisterUser(const aUsername, aPassword: string): boolean; overload;
    function GetRememberSession: boolean;
    procedure SetRememberSession(const Value: boolean);
    procedure SetRememberLocalPassword(const Value: boolean);
    function GetAnagraphProfile: IAnagraphView;
    function ReadSchemaConf(const aKey, aDefault: string): string;
    procedure WriteSchemaConf(const aKey, aConf: string);
    function TryLoginOrRegister(aErrorProc: TCallBackLoginRegister): boolean;
    function LastErrorMessage: string;
    /// <summary> Check first part of user Registration </summary>
    function CheckRegisterValues(aErrorProc: TMessageProc): boolean;
    /// <summary> Does a full check of user registration prerequisites with anagraph referer </summary>
    function CheckRegisterEndValues(aErrorProc: TMessageProc): boolean;
  public
    destructor Destroy; override;
    constructor Create; override;
  public
    /// <summary> Create a new anagraph profiles and adds it to the passed user </summary>
    function CreateNewAnagraph(const Value: IUser; const aAnagraphProfile: IAnagraphView): Integer; overload;
    /// <summary> Create a new anagraph profiles and adds it to user logged in </summary>
    function CreateNewAnagraph(const aAnagraphProfile: IAnagraphView): Integer; overload;
    /// <summary> Sends Anagraph Profile to AnagraphModel for Updates </summary>
    procedure UpdateAnagraphProfile;
    /// <summary> An user and Session can have an Anagraph profile </summary>
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
    property CurrentRecord: IUserSession read GetCurrentRecord write SetCurrentRecord;
    property SystemUserSessionModel: IJanuaSystemUserSessionModel read GetSystemUserSessionModel;
    property SchemaID: Integer read GetSchemaID write SetSchemaID;
    property RememberSession: boolean read GetRememberSession write SetRememberSession;
    property RememberLocalPassword: boolean read GetRememberLocalPassword write SetRememberLocalPassword;
    /// <summary> LocalAnagraph Added to register a new Anagraph and attach it to new user profile </summary>
    property LocalAnagraph: IAnagraphView read GetLocalAnagraph;
    /// <summary> Added to register a new User Profile and store it's temporary configuration </summary>
    property LocalUserProfile: IUserProfile read GetLocalUserProfile;
    property LoginRegister: TLoginRegister read GetLoginRegister write SetLoginRegister;
    function GetLoginCount: Integer;
    /// <summary> Refers the login attempts count </summary>
    property LoginCount: Integer read GetLoginCount;
  end;

type
  TJanuaDBSystemUserSessionViewModel = class(TJanuaCustomSystemUserSessionViewModel,
    IJanuaSystemUserSessionViewModel, IJanuaDBSystemUserSessionViewModel, IJanuaBaseViewModel)
  private
    FSystemDBUserSessionModel: IJanuaDBSystemUserSessionModel;
  protected // virtual methods
    /// <summary> This methods (in the descendant) must set the correct model for the VM </summary>
  strict protected
    procedure CreateModel; override;
    function GetDBSystemUserSessionModel: IJanuaDBSystemUserSessionModel;
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    property DBSystemUserSessionModel: IJanuaDBSystemUserSessionModel read GetDBSystemUserSessionModel;
  end;

implementation

uses System.UITypes, System.Types, Janua.Orm.Impl, Janua.Application.Framework, Janua.Core.Functions;

{ TJanuaCustomSystemUserSessionViewModel }
function TJanuaCustomSystemUserSessionViewModel.CheckRegisterEndValues(aErrorProc: TMessageProc): boolean;
begin
  { TODO: Implementation of method CheckRegisterEndValues (TMessageProc) }
  Result := False;
end;

function TJanuaCustomSystemUserSessionViewModel.CheckRegisterValues(aErrorProc: TMessageProc): boolean;
begin
  { TODO: Implementation of method CheckRegisterValues (TMessageProc) }
  Result := False;
end;

constructor TJanuaCustomSystemUserSessionViewModel.Create;
begin
  inherited;
  FCount := 0;
  // Setup from Janua Application Framework
  TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, FLocalUserProfile, 'UserProfile');
end;

function TJanuaCustomSystemUserSessionViewModel.CreateNewAnagraph(const Value: IUser;
  const aAnagraphProfile: IAnagraphView): Integer;
begin
  Result := FSystemUserSessionModel.CreateNewAnagraph(Value, aAnagraphProfile);
end;

function TJanuaCustomSystemUserSessionViewModel.CreateNewAnagraph(const aAnagraphProfile
  : IAnagraphView): Integer;
begin
  Result := FSystemUserSessionModel.CreateNewAnagraph(aAnagraphProfile);
end;

function TJanuaCustomSystemUserSessionViewModel.DelUser(const aUser: IUserProfile): boolean;
begin
  Result := FSystemUserSessionModel.DelUser(aUser);
end;

function TJanuaCustomSystemUserSessionViewModel.DelUser: boolean;
begin
  Result := FSystemUserSessionModel.DelUser
end;

function TJanuaCustomSystemUserSessionViewModel.DelUser(const aUserID: Integer): boolean;
begin
  Result := False;
  { TODO : Implement System Session DelUser(User ID) }
end;

function TJanuaCustomSystemUserSessionViewModel.DelUser(const aGUID: TGUID): boolean;
begin
  Result := FSystemUserSessionModel.DelUser(aGUID)
end;

function TJanuaCustomSystemUserSessionViewModel.DelUser(const aEmail: string): boolean;
begin
  if aEmail = '' then
    raise Exception.Create('Email not set ');
  if not IsValidEmail(aEmail) then
    raise Exception.Create('Email not valid: ' + aEmail);
  Result := FSystemUserSessionModel.DelUser(aEmail)
end;

destructor TJanuaCustomSystemUserSessionViewModel.Destroy;
{$IFDEF DEBUG}
var
  vTest: Integer;
begin
  if ASsigned(FSystemUserSessionModel) then
    vTest := TInterfacedObject(FSystemUserSessionModel.GetSelf).RefCount;
{$ELSE} begin {$ENDIF}
  FSystemUserSessionModel := nil;
  inherited;
end;

function TJanuaCustomSystemUserSessionViewModel.GetAnagraphProfile: IAnagraphView;
begin
  Result := FSystemUserSessionModel.AnagraphProfile;
end;

function TJanuaCustomSystemUserSessionViewModel.GetCurrentRecord: IUserSession;
begin
  Result := FSystemUserSessionModel.UserSessionRecord
end;

function TJanuaCustomSystemUserSessionViewModel.GetLocalAnagraph: IAnagraphView;
begin
  Result := FLocalUserProfile.AnagraphProfile;
end;

function TJanuaCustomSystemUserSessionViewModel.GetLocalUserProfile: IUserProfile;
begin
  Result := FLocalUserProfile
end;

function TJanuaCustomSystemUserSessionViewModel.GetLoginCount: Integer;
begin
  Result := FCount
end;

function TJanuaCustomSystemUserSessionViewModel.GetLoginRegister: TLoginRegister;
begin
  Result := FLoginRegister
end;

function TJanuaCustomSystemUserSessionViewModel.GetRememberLocalPassword: boolean;
begin
  Result := FSystemUserSessionModel.RememberLocalPassword
end;

function TJanuaCustomSystemUserSessionViewModel.GetRememberSession: boolean;
begin
  Result := FSystemUserSessionModel.RememberSession
end;

function TJanuaCustomSystemUserSessionViewModel.GetSchemaID: Integer;
begin
  Result := CurrentRecord.Db_schema_id.AsInteger
end;

function TJanuaCustomSystemUserSessionViewModel.GetSessionID: Int64;
begin
  Result := CurrentRecord.Db_session_id.AsInteger
end;

function TJanuaCustomSystemUserSessionViewModel.GetSystemUserSessionModel: IJanuaSystemUserSessionModel;
begin
  Result := FSystemUserSessionModel;
end;

function TJanuaCustomSystemUserSessionViewModel.InternalActivate: boolean;
begin
  Result := inherited;
end;

function TJanuaCustomSystemUserSessionViewModel.LastErrorMessage: string;
begin
  Result := FLastErrorMessge
end;

function TJanuaCustomSystemUserSessionViewModel.LoginByKey(const aKey: string): boolean;
begin
  Result := FSystemUserSessionModel.LoginByKey(aKey)
end;

function TJanuaCustomSystemUserSessionViewModel.LoginWithDialog: boolean;
var
  mr: Integer;
  procedure GenerateRecordLoginForm;
  var
    lTemp: IInterface;
  begin
    if not TJanuaApplicationFactory.TryGetComponent(IJanuaLoginForm, nil, lTemp) then
      CreateException('GenerateRecordLoginForm', 'IJanuaLoginForm interface not set', self);
    if not Supports(lTemp, IJanuaLoginForm, FLoginDialog) then
      raise Exception.Create('GenerateRecordLoginForm IJanuaLoginForm interface not supported');
  end;

begin
  mr := -1;
  Result := False;
  try
    WriteLog('LoginDialog', 'FLoginDialog');
    Inc(FCount);
    if not ASsigned(FLoginDialog) then
    begin
      GenerateRecordLoginForm;
      FLoginDialog.ViewModel := self as IJanuaSystemUserSessionViewModel;
    end;
{$IF Defined(IOS) or Defined(Android)}
    { TODO : Add a Login Async Procedure
      aProc: TProc<string ({)*UserName*), string (*Password*), boolean(*DoLogin*)> }
    if ASsigned(FLoginDialog) then
      FLoginDialog.ShowLogin(nil);
{$ELSE}
    if ASsigned(FLoginDialog) then
      try
        WriteLog('LoginDialog', 'ShowOverlay');
        TJanuaApplication.WindowsManager.ShowOverlay;
        try
          WriteLog('LoginDialog', 'ShowModal');
          if ASsigned(FLoginDialog) then
            mr := FLoginDialog.ShowModal
          else
            mr := mrCancel;
          Result := ASsigned(FLoginDialog) and (mr = mrOK);
          if Result then
            Result := GetSystemUserSessionModel.login;
        finally
          TJanuaApplication.WindowsManager.HideOverlay;
        end;
      finally
        FLoginDialog.Component.Free;
        FLoginDialog := nil;
      end;
    ClearLocalLog('LoginDialog');
    if not Result and (FCount < 3) and (mr = mrOK) then
      Result := LoginWithDialog;
{$ENDIF}
  except
    on e: Exception do
      RaiseException('LoginDialog', e, self, TJanuaLogger.TailLog);
  end;
end;

procedure TJanuaCustomSystemUserSessionViewModel.LogOut;
begin
  FSystemUserSessionModel.LogOut;
end;

function TJanuaCustomSystemUserSessionViewModel.ReadSchemaConf(const aKey, aDefault: string): string;
begin
  Result := FSystemUserSessionModel.ReadSchemaConf(aKey, aDefault);
end;

function TJanuaCustomSystemUserSessionViewModel.RegisterUser(const aUsername, aPassword: string): boolean;
var
  aUserProfile: IUserProfile;
begin
  Result := TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, aUserProfile, 'UserProfile');
  if Result then
  begin
    aUserProfile.User.Username.AsString := aUsername;
    aUserProfile.User.Email.AsString := aUsername;
    aUserProfile.User.Password.AsString := aPassword;
    Result := GetSystemUserSessionModel.AddUser(aUserProfile);
  end;
end;

function TJanuaCustomSystemUserSessionViewModel.RegisterUser(const aUser: IUserProfile): boolean;
begin
  Result := GetSystemUserSessionModel.AddUser(aUser);
end;

function TJanuaCustomSystemUserSessionViewModel.RegisterUser(const aUser: IUser): boolean;
var
  aUserProfile: IUserProfile;
begin
  Result := TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, aUserProfile, 'UserProfile');
  if Result then
  begin
    aUserProfile.User.Assign(aUser);
    Result := GetSystemUserSessionModel.AddUser(aUserProfile);
  end;
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetCurrentRecord(const Value: IUserSession);
begin
  FSystemUserSessionModel.CurrentRecord.Assign(Value);
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetLoginRegister(const Value: TLoginRegister);
begin
  FLoginRegister := Value;
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetRememberLocalPassword(const Value: boolean);
begin
  FSystemUserSessionModel.RememberLocalPassword := Value
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetRememberSession(const Value: boolean);
begin
  FSystemUserSessionModel.RememberSession := Value
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetSchemaID(const Value: Integer);
begin
  CurrentRecord.Db_schema_id.AsInteger := Value
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetSessionID(const Value: Int64);
begin
  CurrentRecord.Db_session_id.AsLargeInt := Value
end;

procedure TJanuaCustomSystemUserSessionViewModel.SetSystemUserSessionModel
  (const Value: IJanuaSystemUserSessionModel);
begin
  FSystemUserSessionModel := Value;
end;

function TJanuaCustomSystemUserSessionViewModel.SilentLogin(const aUser: IUser): boolean;
begin
  Result := FSystemUserSessionModel.LoggedIn and
    (FSystemUserSessionModel.User.Username.AsString.ToLower = aUser.Username.AsString.ToLower) and
    (FSystemUserSessionModel.User.DbUserId.AsInteger <> 0);
  Result := Result or FSystemUserSessionModel.Login(aUser);
end;

function TJanuaCustomSystemUserSessionViewModel.TryLoginOrRegister
  (aErrorProc: TCallBackLoginRegister): boolean;
var
  lTest: Integer;
begin
  Inc(FCount);
  // Result := False;
  if FLoginRegister = TLoginRegister.lrLogin then
  begin
    Result := SilentLogin(FLocalUserProfile.User) and (CurrentRecord.UserProfile.Db_user_id.AsInteger > 0) and
      (CurrentRecord.UserProfile.AnagraphID.AsInteger > 0);
    if Result then
    begin
      FLocalUserProfile.Assign(CurrentRecord.UserProfile);
      if FLocalUserProfile.AnagraphProfile.AnagraphID.AsInteger <>
        CurrentRecord.UserProfile.AnagraphProfile.AnagraphID.AsInteger then
        FLocalUserProfile.AnagraphProfile.Assign(CurrentRecord.UserProfile.AnagraphProfile);
    end;
  end
  else
  begin
    Result := FSystemUserSessionModel.CheckUser(FLocalUserProfile);
    if Result then
    begin
      Result := RegisterUser(FLocalUserProfile);
      Result := Result and SilentLogin(FLocalUserProfile.User);
      if Result then
      begin
        lTest := CurrentRecord.User.DbUserId.AsInteger;
        Result := (lTest > 0);
        if Result then
        begin
          // FLocalUserProfile.User.Assign(FSystemUserSessionModel.CurrentRecord.User);
          lTest := CreateNewAnagraph(FLocalUserProfile.User, FLocalUserProfile.AnagraphProfile);
          Result := (lTest > 0);
          Result := Result and SilentLogin(FLocalUserProfile.User);
          Result := Result and (FSystemUserSessionModel.AnagraphProfile.AnagraphID.AsInteger = lTest);
        end
      end
      else
        aErrorProc('Errore registrazione utente');
    end
    else
      aErrorProc('Utente gi? registrato o non valido');
  end;
end;

procedure TJanuaCustomSystemUserSessionViewModel.UpdateAnagraphProfile;
begin
  FSystemUserSessionModel.UpdateAnagraphProfile(FLocalUserProfile.AnagraphProfile);
end;

procedure TJanuaCustomSystemUserSessionViewModel.WriteSchemaConf(const aKey, aConf: string);
begin
  FSystemUserSessionModel.WriteSchemaConf(aKey, aConf);
end;

function TJanuaCustomSystemUserSessionViewModel.SilentLogin(const aUsername, aPassword: string): boolean;
begin
  Result := FSystemUserSessionModel.LoggedIn and
    (FSystemUserSessionModel.User.Username.AsString.ToLower = aUsername.ToLower) and
    (FSystemUserSessionModel.User.DbUserId.AsInteger <> 0);
  GetSystemUserSessionModel.UserLogin.Email.AsString := aUsername;
  GetSystemUserSessionModel.UserLogin.Password.AsString := aPassword;
  Result := GetSystemUserSessionModel.login;
end;

{ TJanuaDBSystemUserSessionViewModel }
constructor TJanuaDBSystemUserSessionViewModel.Create;
begin
  inherited;
end;

procedure TJanuaDBSystemUserSessionViewModel.CreateModel;
var
  LSystemUserSessionModel: IJanuaSystemUserSessionModel;
begin
  if not ASsigned(SystemUserSessionModel) then
  begin
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionModel, FSystemDBUserSessionModel)
    then
      raise Exception.Create('TAnagraphViewModel.DataModuleCreate IJanuaDBSystemUserSessionModel not set');
    if not Supports(FSystemDBUserSessionModel, IJanuaModel, FJanuaModel) then
      raise Exception.Create('IJanuaModel not supported');
    if not Supports(FSystemDBUserSessionModel, IJanuaSystemUserSessionModel, LSystemUserSessionModel) then
      raise Exception.Create('IJanuaSystemUserSessionModel not supported');
    // procedure SetSystemUserSessionModel(const Value: IJanuaSystemUserSessionModel);
    SetSystemUserSessionModel(LSystemUserSessionModel);
    LSystemUserSessionModel.Activate;
    LSystemUserSessionModel.IsThreaded := IsThreaded;
    LSystemUserSessionModel.Bind('IsThreaded', self, 'IsThreaded');
  end;
end;

destructor TJanuaDBSystemUserSessionViewModel.Destroy;
begin
  FSystemDBUserSessionModel := nil;
  inherited;
end;

function TJanuaDBSystemUserSessionViewModel.GetDBSystemUserSessionModel: IJanuaDBSystemUserSessionModel;
begin
  Result := FSystemDBUserSessionModel
end;

end.
