unit Janua.Core.System;

{$I JANUACORE.INC}

interface

uses

  // System .................................................................................
{$IFDEF fpc}
  LResources, Classes, SysUtils, IOUtils, DB, Variants, StrUtils
{$ELSE}
    System.SysUtils, System.IOUtils, Data.DB, FireDAC.Comp.Client,
  System.Variants, System.Classes, System.JSON, System.JSONConsts, Web.HTTPApp, System.StrUtils
{$ENDIF}
{$IFDEF MACOS} , MacApi.CoreFoundation
{$IFNDEF IOS} , MacApi.AppKit, MacApi.CocoaTypes, MacApi.Foundation{$ENDIF}
{$ENDIF}
{$IFDEF MSWINDOWS}
    , Windows, ShellAPI, ShlObj, ActiveX
{$ENDIF}
  // Third Paty Components
    , Janua.Core.Entities, Janua.Core.Types, Janua.Core.Functions, Janua.Core.Classes,
  Janua.Core.CustomControls, Janua.Core.ServerClasses, Janua.Core.Servers, Janua.Core.Metronics,
  Janua.Html.Types, Janua.Http.Types;

{$IFDEF MACOS}
function NSUserName: Pointer; cdecl;
  external '/System/Library/Frameworks/Foundation.framework/Foundation' name '_NSUserName';
{$ENDIF}

type
  TJanuaIcons = (jaiPanel, jaiTab, jaiIcons);

  { TJanuaIOSource }

type
  TJanuaIOSource = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
    FNodeCount: integer;
    i: integer;
  public
    { Public declarations }
    Procedure LogToMemo(Log: String); Virtual;
    Procedure AddNode(id: integer; parent_id: integer; node_name: string; Directory: boolean);
      Virtual; Abstract;
    Constructor Create(AOwner: TComponent); override;
  published
    { Published declarations }
    property NodeCount: integer read FNodeCount default 0;
    property Counter: integer read i;
  end;

type
  TJanuaCustomServerSystem = class(TJanuaCustomServer)
  private
    FLocalConnect: boolean;
    FLoadedProfile: boolean;
    FAppID: string;
    FAppKey: string;
    FSearchUserProfile: TJanuaRecordUserProfile;
    FServerPublicKey: string;
    FSocialID: string;
    FSocialKind: string;
    procedure SetLoginPrompt(const Value: boolean);
    procedure SetLocalConnect(const Value: boolean);
    procedure SetServerList(const Value: TStrings);
    procedure SetLoadedProfile(const Value: boolean);
    procedure SetcdsUsersList(const Value: TFdMemTable);
    procedure SetAppID(const Value: string);
    procedure SetAppKey(const Value: string);
    procedure SetSearchUserProfile(const Value: TJanuaRecordUserProfile);
    procedure SetServerPublicKey(const Value: string);
    function GetLoadedProfile: boolean;
    function GetUserEmail: string;
    function GetUserPassword: string;
  strict protected
    procedure InternalDeactivate; override;
  protected
    FcdsUsersList: TFdMemTable;
    FLoginPrompt: boolean;
    FCounter: smallint;
    FServerList: TStrings;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetSocialID(const Value: string);
    procedure SetSocialKind(const Value: string);
    procedure SetSessionKey(const Value: string); override;
    function CheckUp: boolean; override;
    function InternalLogin: boolean; virtual; abstract;
    function InternalStartPublicWebSession: boolean; virtual; abstract;
    function InternalLoginbyKey(const aKey: string): boolean; virtual; abstract;
    function InternalDoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean; virtual; abstract;
  public
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    function PayPalForm: string;
    function PaymentForm(bHasErrors: boolean = False; bPayment: boolean = False): string;
    function DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean;
    function Login: boolean; overload; virtual;
    function Login(aUserProfile: TJanuaRecordUserProfile): boolean; overload;
    function LoginByKey(const aKey: string): boolean;
    function SaveProfile: boolean; virtual; abstract;
    function NewProfile: boolean; virtual; abstract;
    function CheckNewUser(aUser: TJanuaRecordUserProfile): boolean; overload; virtual; abstract;
    function CheckNewUser(aUser: string): boolean; overload; virtual;
    function CreateNewUser(aUser: TJanuaRecordUserProfile): boolean; virtual; abstract;
    procedure LoadProfile; override;
    function SetUserDefaultSchema(aUser: TJanuaRecordUserProfile): boolean; virtual; abstract;
    procedure SetDefaultSchema(aSchemaID: integer); virtual; abstract;
    function SearchUser(fullusername: string): integer; virtual; abstract;
    function SearchUserByID(aID: integer): boolean; virtual; abstract;
    function AppLogin(vAppID: string; vAppKey: string): boolean; overload; virtual; abstract;
    function AppLogin: boolean; overload; virtual; abstract;
    function CheckNewUserJSON(aUser: TJanuaRecordUserProfile): TJSONObject;
    function LoginJSON: TJSONObject;
    function CreateNewUserJSON(aUser: TJanuaRecordUserProfile): TJSONObject;
    function SearchUserJSON(fullusername: string): TJSONObject;
    function SearchUserByIDJSON(aID: integer): TJSONObject;
    function LoginBySessionKey(aSessionKey: string): boolean; virtual;
    // Start Public session check if a Public user/session are set for a specified URL
    function StartSystemPublicWebSession(const aUrl: string): string;
    property SearchUserProfile: TJanuaRecordUserProfile read FSearchUserProfile write SetSearchUserProfile;
  published
    property Username: string read GetUserEmail write SetUsername;
    property Password: string read GetUserPassword write SetPassword;
    property SocialID: string read FSocialID write SetSocialID;
    property SocialKind: string read FSocialKind write SetSocialKind;
    property LoginPrompt: boolean read FLoginPrompt write SetLoginPrompt default False;
    property LocalConnect: boolean read FLocalConnect write SetLocalConnect default False;
    property ServerPublicKey: string read FServerPublicKey write SetServerPublicKey;
    property ServerList: TStrings read FServerList write SetServerList;
    property LoadedProfile: boolean read GetLoadedProfile write SetLoadedProfile;
    property cdsUsersList: TFdMemTable read FcdsUsersList write SetcdsUsersList;
    property AppID: string read FAppID write SetAppID;
    property AppKey: string read FAppKey write SetAppKey;
  end;

type
  /// <summary>
  /// This record tell us about the structure of a main form contained in an
  /// application.
  /// </summary>
  TJanuaRecordForm = record
    id: integer;
    Name: string;
    Title: string;
    MDC: boolean;
    IconID: integer;
  end;

type
  TJanuaCustomAppDefinition = class(TJanuaCoreComponent)
    function OpenForm(aForm: TJanuaRecordForm): boolean; virtual; abstract;
  end;

type
  /// <summary>
  /// This record contains the structure of an application
  /// </summary>
  TJanuaRecordApplication = record
    id: integer;
    Name: string;
    Title: string;
    Forms: array of TJanuaRecordForm;
    Icons: TJanuaIcons;
    ApplicationActive: boolean;
    Application: TJanuaCustomAppDefinition;
    DefaultForm: TJanuaRecordForm;
  public
    /// <summary>
    /// This Constructor is intended to assign and eventually Create an
    /// Application in The record Application.
    /// </summary>
    /// <remarks>
    /// The record will be used in an array inside a Package or in a Project
    /// to hold the list of enabled applications.
    /// </remarks>
    constructor Create(aApplication: TJanuaCustomAppDefinition);
    procedure ActivateApplication;
    procedure ShowFormbyID(aID: integer);
    function FindFormbyID(aID: integer): boolean;

  end;

type
  /// <summary>
  /// a Package is a List of application that can be used in a software
  /// schema; usually a package is hosted in a Panel.
  /// </summary>
  TJanuaRecordPackage = record
    id: integer;
    Name: string;
    Title: string;
    Applications: array of TJanuaRecordApplication;
  end;

type
  /// <summary>
  /// This is the not-graphic definition of a Server controller where we can
  /// add all the apps.
  /// </summary>
  TJanuaCustomServerController = class(TJanuaCoreComponent)

  private
    FApplications: array of TJanuaRecordApplication;
    FJanuaServerSystem: TJanuaCustomServerSystem;
    FPackages: TJanuaRecordPackage;
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);

  public

    procedure AddApplication(aApplication: TJanuaRecordApplication);

  published
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;
    property Packages: TJanuaRecordPackage read FPackages;

  end;

type
  TJanuaLocalRegisterApplication = class(TJanuaCoreComponent)
  private
  protected
    FJanuaServerSystem: TJanuaCustomServerSystem;
  public
    function Registration: boolean; Virtual;
  published
  end;

type
  TJanuaSystemPasswordDialog = class(TJanuaCoreComponent)
  private
    FLabelPassword: string;
    FErrorMessagePwdEasy: string;

    FErrorMessagePwdShort: string;
    FLabelButtonOK: string;
    FLabelRetypePassword: string;
    FErrorMessagePwdRetype: string;
    FLabelButtonCancel: string;
    procedure SetErrorMessagePwdEasy(const Value: string);
    procedure SetErrorMessagePwdRetype(const Value: string);
    procedure SetErrorMessagePwdShort(const Value: string);
    procedure SetLabelButtonCancel(const Value: string);
    procedure SetLabelButtonOK(const Value: string);
    procedure SetLabelPassword(const Value: string);
    procedure SetLabelRetypePassword(const Value: string);
    procedure SetNewPassword(const Value: string);
  protected
    FNewPassword: string;
    FCheckPassword: string;
    function InternalShowMessage(aMessage: string): boolean; virtual; abstract;
    function CheckPwd: boolean;
    function ShowDialog: boolean; virtual; abstract;
  public
    function Execute: boolean;
  published
    property NewPassword: string read FNewPassword write SetNewPassword;
    property LabelPassword: string read FLabelPassword write SetLabelPassword;
    property LabelRetypePassword: string read FLabelRetypePassword write SetLabelRetypePassword;
    property LabelButtonOK: string read FLabelButtonOK write SetLabelButtonOK;
    property LabelButtonCancel: string read FLabelButtonCancel write SetLabelButtonCancel;
    property ErrorMessagePwdShort: string read FErrorMessagePwdShort write SetErrorMessagePwdShort;
    property ErrorMessagePwdEasy: string read FErrorMessagePwdEasy write SetErrorMessagePwdEasy;
    property ErrorMessagePwdRetype: string read FErrorMessagePwdRetype write SetErrorMessagePwdRetype;

  end;

type
  TJanuaSystemController = class(TJanuaCoreComponent)

  end;

type
  TJanuaCustomSystemClient = class(TJanuaCustomRESTClient)
  protected // Client Record Management Procedure (Session, Login, Profile)
    procedure SetSessionID(const Value: int64);
    procedure SetSessionKey(const Value: string);
    procedure SetClientRecord(const Value: TJanuaLoginRecord);
    function GetSessionKey: string;
    function GetSessionID: int64;
    function GetSession: TJanuaServerSession;
    function GetIsLoggedIn: boolean; override;
    // function getIsPublic: boolean; override;
    // function GetUserProfile: TJanuaRecordUserProfile; override;
    // procedure SetUserProfile(const Value: TJanuaRecordUserProfile); override;
    procedure SetSession(const Value: TJanuaServerSession);
  private
    FLoginRecord: TJanuaLoginRecord;
    { 2021-08-02 Login Record reintroduced and identical method from TJanuaCustomRESTClient }
    { procedure SetLoginRecord(const Value: TJanuaLoginRecord); override; }
  protected // User Profile Management ...........................................................................
    function GetIsPublic: boolean; override;
  strict protected
    procedure SetPublicSessionJson(aObject: TJSONObject);
    function InternalActivate: boolean; override;
  public
    property IsPublic: boolean read GetIsPublic;
  public // virtual; abstract; methods
    function GetNotifications: integer; overload; virtual; abstract;
    function GetNotifications(aSessionKey: string): integer; overload; virtual; abstract;
    function EchoString(Value: string): string; virtual; abstract;
    function ReverseString(Value: string): string; virtual; abstract;
    function SaveProfile(var aUser: TJanuaRecordUserProfile): boolean; virtual; abstract;
    function StartPublicSession(const aAppName: string): TJanuaServerSession; virtual; abstract;
    function Login(aUser: TJanuaRecordUserProfile): TJanuaLoginRecord; overload; virtual; abstract;
    function Login(Username, Password: string): TJanuaLoginRecord; overload; virtual; abstract;
    function CheckNewUser(aUser: TJanuaRecordUserProfile): boolean; overload; virtual; abstract;
    function CheckNewUser(aUser: string): boolean; overload; virtual; abstract;
    function CheckSessionKey(aSessionKey: string): TJanuaLoginRecord; virtual; abstract;
    // CreateNewUser
    function CreateNewUser(aUser: TJanuaRecordUserProfile; var aChecked: boolean): TJanuaRecordUserProfile;
      overload; virtual; abstract;
  public
    function CreateNewUser(aUser: TJanuaRecordUserProfile): boolean; overload; virtual;
    property ClientRecord: TJanuaLoginRecord read FLoginRecord write SetLoginRecord;
  public
    property SessionKey: string read GetSessionKey write SetSessionKey;
    property SessionID: int64 read GetSessionID write SetSessionID;
    property Session: TJanuaServerSession read GetSession write SetSession;

  end;

Type
  TJanuaCustomDBServer = class(TJanuaCustomServer)
  strict protected
    FJanuaSystem: TJanuaCustomServerSystem;
  protected
    procedure SetJanuaSystem(const Value: TJanuaCustomServerSystem); virtual;
  public
    // procedure aggiunte per la gestione della sessione web
    procedure StartPublicWebSession; override;
  published
    property JanuaSystem: TJanuaCustomServerSystem read FJanuaSystem write SetJanuaSystem;
  end;

implementation

uses Janua.Application.Framework;

{ TJanuaCustomSystemClient }

function TJanuaCustomSystemClient.CreateNewUser(aUser: TJanuaRecordUserProfile): boolean;
begin
  FLoginRecord.UserProfile := CreateNewUser(aUser, Result);
end;

{
  procedure TJanuaCustomSystemClient.SetIsPublic(const Value: boolean);
  begin
  FLoginRecord.Session.IsPublic := Value;
  end;
}

function TJanuaCustomSystemClient.GetIsLoggedIn: boolean;
begin
  Result := FLoginRecord.IsLoggedIn;
end;

function TJanuaCustomSystemClient.GetIsPublic: boolean;
begin
  Result := FLoginRecord.UserProfile.User.IsPublic;
  // Result := FClientRecord.IsPublicSession
end;

function TJanuaCustomSystemClient.GetSession: TJanuaServerSession;
begin
  Result := FLoginRecord.Session;
  // Result := FClientRecord.Session;
end;

function TJanuaCustomSystemClient.GetSessionID: int64;
begin
  Result := FLoginRecord.Session.session_id;
  // Result := FClientRecord.Session.session_id;
end;

function TJanuaCustomSystemClient.GetSessionKey: string;
begin
  Result := FLoginRecord.Session.Key;
  // Result := FClientRecord.Session.Key;
end;

function TJanuaCustomSystemClient.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        if not TJanuaCoreOS.GetActive then
          TJanuaCoreOS.PublicActivate;

        TJanuaCoreOS.LoadConfiguration;

        // try to open the ClientDaModule if Set then checks all TVIrtual Tables.
        // JanuaServerHealthBooking1.ActiveDatasets := true;
        try
          SessionKey := TJanuaCoreOS.ReadParam('session', 'key', '');
          if SessionKey.IsEmpty then
          begin
            try
              StartPublicSession(TJanuaApplication.AppName);
              TJanuaCoreOS.WriteParam('session', 'key', ClientRecord.Session.Key);
              TJanuaCoreOS.WriteParam('clientrecord', 'session', ClientRecord.Session.AsJson);
              TJanuaCoreOS.WriteParam('clientrecord', 'user', ClientRecord.UserProfile.AsJson);
              Result := true;
            except // Generalmente se la connessione non riesce devo fare qualcosa
              on e: Exception do
              begin
                WriteError('Activate', 'StartPublicSession: ', e);
                Result := False;
                HasErrors := true;
              end;

            end;
          end
          else
          begin
            // sostituito dalla corrispondente procedura REST in cui richiedo i dati di Sessione al server.
            // occcorre verificare la validit? della sessione e se questa ? considerata attiva dal server
            // ed eventualmente (in futuro) ricevere un JSON WEB TOKEN....................................
            // JanuaServerHealthBooking1.CheckSessionKey(SessionKey);
            try
              CheckSessionKey(SessionKey);
              if ClientRecord.IsLoggedIn and not ClientRecord.IsPublicSession then
              begin
                GetNotifications;
              end;
              Result := true;
            except
              on e: Exception do
              begin
                ClientRecord.Clear;
                FLastErrorMessage := ('Attenzione errore di connessione al server ');
                HasErrors := true;
                WriteError('TJanuaCustomSystemClient.Activate', 'Attivazione App Errore connessione: ',
                  e, False);
                Result := False;
              end;

            end;
          end;
        except
          on e: Exception do
          begin
            HasErrors := true;
            Result := False;
            WriteError('TJanuaCustomHealthClient.Activate', 'Attenzione errore di connessione al server',
              e, False);
            WriteError('TJanuaCustomHealthClient.Activate', ' Attenzione errore di connessione al server',
              e, False);
          end;
        end;
      end;
    except
      on e: Exception do
      begin
        LogException('InternalActivate', e, self);
        raise;
      end;
    end;

end;

procedure TJanuaCustomSystemClient.SetClientRecord(const Value: TJanuaLoginRecord);
begin

end;

procedure TJanuaCustomSystemClient.SetPublicSessionJson(aObject: TJSONObject);
var
  aSession: TJanuaServerSession;
  // aObject: TJsonObject;
begin
  aSession.LoadFromJsonObject(aObject);
  FLoginRecord.Session := aSession;
  FLoginRecord.UserProfile.Clear;
  FLoginRecord.UserProfile.User.IsPublic := true;
  FLoginRecord.UserProfile.User.Email := aSession.Email;
  FLoginRecord.UserProfile.User.id := aSession.User_id;
  FLoginRecord.UserProfile.User.SocialID := aSession.Social_ID;
  FLoginRecord.UserProfile.User.SocialType := aSession.Social_Kind;
  // No more needed becaus Client Record is a pointer to FLoginRecord .................................................
  // ClientRecord.Session := aSession;
  TJanuaCoreOS.WriteParam('clientrecord', 'session', ClientRecord.Session.AsJson);
  TJanuaCoreOS.WriteParam('clientrecord', 'user', ClientRecord.UserProfile.AsJson);
  TJanuaCoreOS.WriteParam('session', 'key', ClientRecord.Session.Key);
end;

procedure TJanuaCustomSystemClient.SetSession(const Value: TJanuaServerSession);
begin
  FLoginRecord.Session := Value;
  // FClientRecord.Session := Value;
end;

procedure TJanuaCustomSystemClient.SetSessionID(const Value: int64);
begin
  FLoginRecord.Session.session_id := Value;
  // FClientRecord.Session.session_id := Value;
end;

procedure TJanuaCustomSystemClient.SetSessionKey(const Value: string);
begin

  FLoginRecord.Session.Key := Value;
  // FClientRecord.Session.Key := Value;
end;

{ TJanuaCustomServerSystem }

procedure TJanuaCustomServerSystem.AfterConstruction;
begin
  inherited;
  try
    FUserProfile.User.id := 0;
    LoadProfile;
  except
    on e: Exception do
    begin
      LogException('AfterConstruction', e, self);
      raise;
    end;
  end;
end;

procedure TJanuaCustomServerSystem.BeforeDestruction;
begin
  inherited;
  try
    FUserProfile.User.id := 0;
  except
    on e: Exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

function TJanuaCustomServerSystem.CheckNewUser(aUser: string): boolean;
var
  aNewUser: TJanuaRecordUserProfile;
begin
  aNewUser.Clear;
  aNewUser.User.Email := aUser;
  Result := CheckNewUser(aNewUser)
end;

function TJanuaCustomServerSystem.CheckNewUserJSON(aUser: TJanuaRecordUserProfile): TJSONObject;
begin
  Result := TJSONObject.Create;
  if not CheckNewUser(aUser) then
  begin
    Result.AddPair(TJSONPair.Create('Result', 'True'));
    Result.AddPair(TJSONPair.Create('Username', FUserProfile.User.Username));
    Result.AddPair(TJSONPair.Create('Social', FUserProfile.User.SocialType));
    Result.AddPair(TJSONPair.Create('Social_ID', FUserProfile.User.SocialID));
  end
  else
  begin
    Result.AddPair(TJSONPair.Create('Result', 'False'));
    Result.AddPair(TJSONPair.Create('Username', ''));
    Result.AddPair(TJSONPair.Create('Social', ''));
    Result.AddPair(TJSONPair.Create('Social_ID', ''));
  end;
end;

function TJanuaCustomServerSystem.CheckUp: boolean;
var
  aJanuaServerSession: TJanuaServerSession;
begin
  Result := inherited;
  try
    if FLoginPrompt and not(csDesigning in ComponentState) then
    begin
      WriteLog('TJanuaCustomServerSystem.Checkup: Lettura dialog login');
      TJanuaApplication.LoginDialog.Username := FUserProfile.User.Email;
      TJanuaApplication.LoginDialog.Password := FUserProfile.User.Password;

      if FLocalConnect then
      begin
        WriteLog('TJanuaCustomServerSystem.Checkup: Local Connect: ' + ServerUrl);
        TJanuaApplication.LoginDialog.ServerList.Clear;
        TJanuaApplication.LoginDialog.ServerList.AddStrings(FServerList);
        TJanuaApplication.LoginDialog.SelectedServer := GetServerUrl;
      end;

      if not TJanuaApplication.LoginDialog.Execute then
        Exit(False)
      else
      begin
        Username := TJanuaApplication.LoginDialog.Username;
        Password := TJanuaApplication.LoginDialog.Password;
      end;
    end;

    Result := ((UserProfile.User.Email > '') and (UserProfile.User.Password > '')) or
      ((UserProfile.User.SocialID > '') and (UserProfile.User.SocialType > ''));

    if FLocalConnect and FLoginPrompt and Not Assigned(TJanuaApplication.LoginDialog) then
      LocalRaiseException('TJanuaCustomServerSystem.CheckUp Not Assigned(TJanuaApplication.LoginDialog');

    if FLoginPrompt and FLocalConnect and Assigned(TJanuaApplication.LoginDialog) then
    begin
      SetServerUrl(TJanuaApplication.LoginDialog.SelectedServer);
      SetServerList(TJanuaApplication.LoginDialog.ServerList);
    end;

    with aJanuaServerSession do
    begin
      Key := SessionKey;
      User_id := FUserProfile.User.id;
    end;

    JanuaServerSession := aJanuaServerSession;

    FUserProfile.User.Email := FUserProfile.User.Email;
    FUserProfile.User.Password := FUserProfile.User.Password;

    if (UserProfile.User.Email = '') and (UserProfile.User.SocialID = '') then
    begin
      LocalRaiseException('TJanuaServerSystem.login Username (or Social ID) not Set');
      HasErrors := true;
      LastErrorMessage := 'TJanuaServerSystem.login Username not Set';
    end;

    if (UserProfile.User.Password = '') and (UserProfile.User.SocialID = '') then
    begin
      LocalRaiseException('TJanuaServerSystem.login Username not Set');
      HasErrors := true;
      LastErrorMessage := 'TJanuaServerSystem.login Password not Set';
    end;
  except
    on e: Exception do
      WriteError('TJanuaCustomServerSystem.Checkup', e);

  end;

end;

constructor TJanuaCustomServerSystem.Create(AOwner: TComponent);
begin
  try
    inherited;
    FServerList := TStringList.Create;
    if not Assigned(FcdsUsersList) then
      FcdsUsersList := TFdMemTable.Create(nil);
  except
    on e: Exception do
      WriteError('TJanuaCustomServerSystem.Create', e);
  end;
end;

function TJanuaCustomServerSystem.CreateNewUserJSON(aUser: TJanuaRecordUserProfile): TJSONObject;
begin
  Result := TJSONObject.Create;
  if CreateNewUser(aUser) then
  begin
    Result.AddPair(TJSONPair.Create('Result', 'true'));
    Result.AddPair(TJSONPair.Create('Profile', FUserProfile.AsJsonObject));
  end
  else
  begin
    Result.AddPair(TJSONPair.Create('Result', 'false'));
    Result.AddPair(TJSONPair.Create('Error', LastErrorMessage));
  end;
end;

procedure TJanuaCustomServerSystem.LoadProfile;
begin
  WriteLog('TJanuaCustomServerSystem.LoadProfile');
  try
    if not(csDesigning in ComponentState) then
    begin
      if TJanuaApplication.IsClient then
      begin
        Username := TJanuaCoreOS.ReadParam('System', 'UserName', FUserProfile.User.Email);
        Password := TJanuaCoreOS.ReadParam('System', 'Password', FUserProfile.User.Password);
        FJanuaServerSession.Key := TJanuaCoreOS.ReadParam('System', 'SessionKey', SessionKey);
        LocalConnect := TJanuaCoreOS.ReadParam('System', 'FLocalConnect', 'False') = 'True';
        LoginPrompt := TJanuaCoreOS.ReadParam('System', 'FLoginPrompt', 'False') = 'True';
        if Assigned(FServerList) then
          FServerList.Text := TJanuaCoreOS.ReadParam('System', 'ServerList', FServerList.Text);
        WriteLog(FJanuaServerSession.ToString);
      end;
      FLoadedProfile := true;
    end
    else
      FLoadedProfile := False;
  except
    on e: Exception do
    begin
      WriteError('TJanuaCustomServerSystem.LoadProfile Errore Settaggio Profilo', e, notDesigning);
    end;
  end;
end;

function TJanuaCustomServerSystem.Login: boolean;
begin
  Result := False;
  try
    if not TJanuaCoreOS.GetActive then
      TJanuaCoreOS.PublicActivate;

    Result := LoadedProfile;
    // 19/10/15 Added Social Kind to procedure..............................
    FUserProfile.User.SocialID := FSocialID;
    FUserProfile.User.SocialType := FSocialKind;
    // 19/10/15 Added Social Kind to protected procedure ...................
    Result := False;
    Result := InternalLogin;
    if not Result then
    begin
      if not HasErrors then
        HasErrors := true;
      if LastErrorMessage = '' then
        LastErrorMessage := 'Errore di Login';
    end;
  except
    on e: Exception do
    begin
      WriteError('TJanuaCustomServerSystem.Login Errore di Login', e, notDesigning);
      Result := False;
    end;
  end;
end;

function TJanuaCustomServerSystem.Login(aUserProfile: TJanuaRecordUserProfile): boolean;
begin
  FUserProfile := aUserProfile;
  Result := Login;
end;

function TJanuaCustomServerSystem.LoginByKey(const aKey: string): boolean;
begin
  SetSessionKey(aKey);
  Result := InternalLoginbyKey(aKey);
end;

function TJanuaCustomServerSystem.LoginBySessionKey(aSessionKey: string): boolean;
begin
  Result := (SessionKey = aSessionKey) and (GetActive) and (FUserProfile.User.id > 0);
  if not Result then
  begin
    CreateDataModule;
    try
      FJanuaServerSession.Clear;
      FJanuaServerSession.Key := aSessionKey;
      Result := InternalCheckSessionKey;
      if Result then
        SetUserSessionProfile
    finally
      if not InTransaction then
        DestroyDataModule(False);
    end;
  end;

end;

function TJanuaCustomServerSystem.LoginJSON: TJSONObject;
begin
  Result := TJSONObject.Create;
  if Login then
  begin
    Result.AddPair(TJSONPair.Create('Result', 'True'));
    Result.AddPair(TJSONPair.Create('SessionID', SessionKey));
    Result.AddPair(TJSONPair.Create('UserID', TJsonNumber.Create(FUserProfile.User.id)));
  end
  else
  begin
    Result.AddPair(TJSONPair.Create('Result', 'False'));
    Result.AddPair(TJSONPair.Create('SessionID', ''));
  end;
end;

function TJanuaCustomServerSystem.PaymentForm(bHasErrors: boolean = False; bPayment: boolean = False): string;
var
  // il container ? di tipo Metro Container (il Div principale della pagina)
  Container: Janua.Core.Metronics.TJanuaMetroContainer;
  // all'interno del container sono presenti una o pi? rows che in bootstrap sono divise poi in colonne.
  Row: Janua.Core.Metronics.TJanuaMetroFormRow;
  // l'area di input ? il Frame, un frame pu? eventualmente contenere un portlet, il frame
  frame: TJanuaMetroFrame;
  // i vari controlli sono il FormInput, l'Option, il Radio Control o il pi? generico MetroControl.
  Input: TJanuaMetroFormInput;
  Value: TJanuaOptionValue;
  aControl: TJanuaMetroControl;
  Radio: TJanuaInputRadio;
  Conf: TJanuaInputConf;
  aLink: TJanuaMetroLink;
  aBuilder: IStringBuilder;
  sError, sMessage: string;
begin
  // Occorre Verificare che il profilo pubblico sia stato caricato altrimenti non si potr? rispondere all'evento.
  Assert(FUserProfile.User.IsPublic <> true, 'Error TJanuaCustomServerSystem.PaymentForm Profile is Public');
  Assert(FUserProfile.User.id <> 0, 'Error TJanuaCustomServerSystem.PaymentForm Profile ID Not Set');

  // We can create and Accordion Form for more informations to dig in, Form is a Portlet (True) and Form (True) it is a
  // full window-large bootstrap object
  Container.Create('payment_container', MetroArrangement.maNone, true, true, 12);
  // At First set the portlet if IsPortlet .............................................................................
  Container.Portlet.Create('payment_portlet', 'Conferma I dati per la Registrazione',
    'conferma qui i dati per il tuo abbonamento ad Almanacco dello sport Ligure');
  // TMetroPortletType = (mptBox, mptLightNoBorder, mptLigthBordered, mptLightSolidInverse);
  Container.Portlet.PortletType.PortletType := TMetroPortletType.mptLigthBordered;
  // TMetronicColor TMetroFontCase = (mfsUppercase, mfsNormal) TMetroFontSize = (jmtBold, jmtUnderline, jmtItalic, jmtNone);
  Container.Portlet.TitleFont.Create(TMetronicColor.jmcBlue, TMetroFontCase.mfsNormal,
    TMetroFontSize.jmtBold);
  // imposto solo la variabile colore....
  Container.Portlet.TitleBackgroud.MetroColor := TMetronicColor.jmcWhite;
  Container.Portlet.Icon.IconType := Janua.Core.Metronics.TMetroIcon.jmiAddressCardOutline;
  // il colore ? ereditato
  Container.Portlet.Fit := False;
  // fit false dovrebbe essere il default fit imposta il contenuto a pieno schermo...
  Container.Portlet.ContentFit := False;
  Container.Portlet.ContentScrollable := False;
  // Then Set Form if isForm ...........................................................................................
  Container.Form.Create('payment_form', '/?page=confirmpaymentform', jhmPost, mftHorizontal);
  Container.Form.Bordered := False;
  // TMetroFormType.mftHorizontal;  Arrangement ? stasto scelto Accordion (chiamata ridondante dal Create).
  Container.Arrangement := MetroArrangement.maAccordion;

  // Container Portlet Button
  Container.Portlet.AddButton('Save All', 'test_save', true, TMetroIcon.jmiAddressCard,
    TMetronicColor.jmcBlue);

  // imposto la conf di Default:
  Conf.IconPos := TTMetroIconPos.jmpLeftBoxed;
  Conf.IconType := TMetroIcon.jmiAddressCard;
  Conf.IconColor := TMetronicColor.jmcNone;
  Conf.LabelType := TMetroLabel.jmlLeft;
  Conf.InputType := TMetroInput.jmtStandard;
  Conf.InputState := TMetroState.jmsEnabled;

  // un form contiene uno o pi? frames (nel test ne metteremo almeno 2)
  frame.Create('person_frame', 'Verifica i tuoi dati personali',
    'i dati in questo box servono per la fattura del pagamento abbonamento.');
  frame.IsPortlet := False;
  frame.Size := 12;
  frame.Arrangement := MetroArrangement.maNone;
  frame.Conf := Conf;

  Row.Conf := Conf;
  aBuilder := TJanuaStringBuilder.Create;
  if not bPayment then
  begin
    aBuilder.Append('<h2> Iscrizione ad Almanacco del Calcio Ligure</h2>');
    aBuilder.Append('<p>A partire da oggi le funzioni di visualizzazione archivio storico di ' +
      '  Almanacco del Calcio Ligure sarano a pagamento. Resteranno gratuiti i risultati e le classifiche in corso<p>');
    aBuilder.Append
      ('<p>Per continuare ad accedere ai dati occorre pagare un canone annuale pari ad Euro 12 per anno' +
      'compilando il modulo qui presente. Ringraziandovi anticipatamente vi auguriamo buona lettura.<p>');
  end
  else
  begin
    aBuilder.Append
      ('<p>Verifica la correttezza dei dati che hai inserito, se vuoi puoi correggerli e premere il pulsante registra in fodo allo schermo ');

    { aBuilder.Append('<div class="alert alert-info">');
      aBuilder.Append('<strong>Puoi pagare con Paypal o con un bonifico bancario: </strong>');
      aBuilder.Append
      ('qui di seguito le coordinate IBAN: IT52V0617501420000001954580  intestato a  Edizioni Sportmedia srl');
      aBuilder.Append
      (' indicando nella causale: Abbonamento Almanacco Calcio Ligure ed il proprio indirizzo mail o nome e cognome ');
      aBuilder.Append('</div>');
    }
  end;

  aBuilder.Append('<p>La Redazione.<p>');

  if bHasErrors then
  begin
    aBuilder.Append('<div class="alert alert-danger">');
    sMessage := '';
    sMessage := sMessage + IfThen(UserProfile.FirstName = '', 'Nome non inserito ', '');
    sMessage := sMessage + IfThen(UserProfile.LastName = '', 'Cognome non inserito ', '');
    sMessage := sMessage + IfThen(UserProfile.PublicEmail = '', 'Email non inserita ', '');
    sMessage := sMessage + IfThen(not IsValidEmail(UserProfile.PublicEmail), 'Email non valida ', '');
    sMessage := sMessage + IfThen((UserProfile.Address.Address = ''), 'Indirizzo ', '');
    sMessage := sMessage + IfThen((UserProfile.Address.postalcode = ''), 'Codice Postale ', '');
    sMessage := sMessage + IfThen((UserProfile.Address.Town = ''), 'Citt? ', '');
    sMessage := sMessage + IfThen((UserProfile.Address.Address = ''), 'Indirizzo ', '');
    sMessage := sMessage + IfThen((UserProfile.Address.StateProvince = ''), 'Provincia ', '');
    sMessage := sMessage + IfThen(not VerifyFiscalCode(UserProfile.FiscalCode, sError), sError, '');
    aBuilder.Append('<strong>Attenzione alcuni campi non sono stati compilati o sono errati: </strong>' +
      sMessage);
    aBuilder.Append('</div>');
  end;
  Row.Add(aControl.Create('disclaimer', aBuilder.ToString));
  frame.Add(Row);
  Row.ItemsClear;
  // La Row Eredita il Frame Conf...................... in pratica una Row12 unica rappresenta l'intero Frame.
  Row.Conf := Conf;
  // prima di tutto il segno di spunta
  // aControl.ControlType := TMetronicControlType.mctInput;
  // aControl.Size := 12;
  Input.Clear;
  aLink := TJanuaMetroLink.Create('/?page=payment_terms', 'Accetto le condizioni di vendita del servizio');
  Input.InputConf := Conf;
  Input.Name := 'terms_checkbox';
  Input.Size := 6;
  Input.sLabel := aLink.AsHtml;
  Input.MetroType := TMetroInputType.jmtCheckBox;
  Row.Add(aControl.Create(Input, 6));

  // Creo il Controllo ................................
  Input.Clear;
  Input.Name := 'public_email';
  Input.StringValue := UserProfile.PublicEmail;
  Input.Size := 6;
  Input.Text := '';
  Input.Suggestion := 'Il tuo indirizzo Mail (obbligatorio)';
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiUser;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.sLabel := 'E-Mail ';
  Input.MetroType := TMetroInputType.jmtText;
  Row.Add(aControl.Create(Input, 6));

  frame.Add(Row);
  Row.ItemsClear;

  // riga nome

  // Creo il Controllo ................................
  Input.Clear;
  Input.Name := 'first_name';
  Input.StringValue := UserProfile.FirstName;
  Input.Size := 6;
  Input.Text := '';
  Input.Suggestion := 'Scrivi qui il nome (obbligatorio)';
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiUser;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.sLabel := 'Nome ';
  Input.MetroType := TMetroInputType.jmtText;
  // aControl.Input := Input;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 6));

  // Creo il Controllo ................................
  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiUser;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.Name := 'last_name';
  Input.StringValue := UserProfile.LastName;
  Input.Text := '';
  Input.Suggestion := 'Scrivi qui il cognome (obbligatorio)';
  Input.Size := 6;
  Input.sLabel := 'Cognome ';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  // aControl.Input := Input;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 6));
  frame.Add(Row);
  Row.ItemsClear;

  // riga Fisco ....

  // Creo il Controllo ................................
  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiIDCard;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.Name := 'fiscalcode';
  Input.StringValue := UserProfile.FiscalCode;
  Input.Text := '';
  Input.Suggestion := 'Codice Fiscale Italiano';
  Input.Size := 6;
  Input.sLabel := 'Codice Fiscale';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  // aControl.Input := Input;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 6));

  // Radiogroup il radio Group non prevede una Icona ma solo una Label ed una lista di scelte
  Input.Clear;
  Input.Size := 6;
  Input.InputConf := Conf;
  Input.Name := 'gender';
  Input.sLabel := 'Sesso';
  // aggiungo i due selettori M e F
  Radio.Create('sex', 'sex1', 'M', 'M');
  Radio.Checked := UserProfile.Gender.GenderType = TJanuaGenderType.Male;
  Input.AddRadio(Radio);
  Radio.Create('sex', 'sex2', 'F', 'F');
  Radio.Checked := UserProfile.Gender.GenderType = TJanuaGenderType.Female;
  Input.AddRadio(Radio);
  // finalizzo il controllo
  Input.MetroType := TMetroInputType.jmtRadioGroup;
  // aControl.Input := Input;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 6));
  // invio la riga al Frame che la deve contenere.
  frame.Add(Row);
  // Chiudo e ripulisco la riga
  Row.ItemsClear;


  // ***** Riga indirizzo ***************************************************************************************

  {
    BirthDate := HttpParseDate(HttpGetParamValue(aRequest, 'birth_date'));
    Address.CellularPhone := HttpGetParamValue(aRequest, 'cellularphone');
    Address.Latitude := HttpParseNumber(HttpGetParamValue(aRequest, 'lat'));
    Address.Longitude := HttpParseNumber(HttpGetParamValue(aRequest, 'lng'));
    User.AvatarImageUrl := HttpGetParamValue(aRequest, 'avatar_img_url');
  }

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.Name := 'address';
  Input.StringValue := UserProfile.Address.Address;
  Input.Text := '';
  Input.Suggestion := 'Indirizzo: via/piazza';
  Input.Size := 6;
  Input.sLabel := 'Indirizzo';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  // aControl.Input := Input;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 6));

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.Name := 'address_number';
  Input.StringValue := UserProfile.Address.Number;
  Input.Text := '';
  Input.Suggestion := 'Numero civico / Interno';
  Input.Size := 6;
  Input.sLabel := 'Num. Civico';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  // aControl.Input := Input;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 6));

  frame.Add(Row);
  Row.ItemsClear;

  // ***** Riga cap-citt? ***************************************************************************************

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiMapMarker;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.Name := 'town';
  Input.StringValue := UserProfile.Address.Town;
  Input.Text := '';
  Input.Suggestion := 'Comune di Residenza';
  Input.Size := 6;
  Input.sLabel := 'Comune';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  Row.Add(aControl.Create(Input, 6));
  // aControl.Input := Input;
  // Row.Add(aControl);

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.InputConf.IconColor := TMetronicColor.jmcNone;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.Name := 'postal_code';
  Input.StringValue := UserProfile.Address.postalcode;
  Input.Text := '';
  Input.Suggestion := 'Cod. Postale';
  Input.Size := 3;
  Input.sLabel := 'CAP';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  Row.Add(aControl.Create(Input, 3));
  // aControl.Input := Input;
  // Row.Add(aControl);

  Input.Clear;
  Input.InputConf := Conf;
  Input.InputConf.InputType := TMetroInput.jmtStandard;
  Input.InputConf.IconType := TMetroIcon.jmiAddressCardOutline;
  Input.Name := 'state_province';
  Input.StringValue := UserProfile.Address.StateProvince;
  Input.Text := '';
  Input.Suggestion := 'Prov.';
  Input.Size := 3;
  Input.sLabel := 'Prov.';
  Input.MetroType := TMetroInputType.jmtText;
  // aggiungo il controllo alla row
  // aControl.Input := Input;
  // aControl.Size := Input.Size;
  // Row.Add(aControl);
  Row.Add(aControl.Create(Input, 3));
  frame.Add(Row);
  Row.ItemsClear;

  // Inserimento del Frame.
  Container.Add(frame);
  Conf := frame.Conf;
  // ricorda la configurazione per ereditarla con il prossimo Frame. --------------------------------------------------

  // ********* finalizzazione del Form ********************************************************************************

  // ********* Pulsanti standard di Gestione del Form (Registra e Annulla):
  Container.Form.Actions.Create(TMetroButtonPosition.jmpRight);
  Container.Form.Actions.AddButton('Annulla', 'undo', False, TMetroIcon.jmiNone, TMetronicColor.jmcDefault);
  Container.Form.Actions.AddButton('Conferma', 'confirm', true, TMetroIcon.jmiCheck, TMetronicColor.jmcRed);

  Result := Container.HtmlText;
end;

function TJanuaCustomServerSystem.PayPalForm: string;
var
  // il container ? di tipo Metro Container (il Div principale della pagina)
  Container: Janua.Core.Metronics.TJanuaMetroContainer;
  // all'interno del container sono presenti una o pi? rows che in bootstrap sono divise poi in colonne.
  Row: Janua.Core.Metronics.TJanuaMetroFormRow;
  // l'area di input ? il Frame, un frame pu? eventualmente contenere un portlet, il frame
  frame: TJanuaMetroFrame;
  // i vari controlli sono il FormInput, l'Option, il Radio Control o il pi? generico MetroControl.
  Input: TJanuaMetroFormInput;
  Value: TJanuaOptionValue;
  aControl: TJanuaMetroControl;
  Radio: TJanuaInputRadio;
  Conf: TJanuaInputConf;
  aLink: TJanuaMetroLink;
  aBuilder: IStringBuilder;
  sError, sMessage: string;
begin
  Assert(FUserProfile.User.IsPublic <> true, 'Error TJanuaCustomServerSystem.PaymentForm Profile is Public');
  Assert(FUserProfile.User.id <> 0, 'Error TJanuaCustomServerSystem.PaymentForm Profile ID Not Set');

  // We can create and Accordion Form for more informations to dig in, Form is a Portlet (True) and Form (True) it is a
  // full window-large bootstrap object
  Container.Create('payment_container', MetroArrangement.maNone, true, False, 12);
  // At First set the portlet if IsPortlet .............................................................................
  Container.Portlet.Create('payment_portlet', 'Termina il pagamento ',
    'Da qui puoi pagare il tuo abbonamento ad Almanacco del Calcio ligure');
  // TMetroPortletType = (mptBox, mptLightNoBorder, mptLigthBordered, mptLightSolidInverse);
  Container.Portlet.PortletType.PortletType := TMetroPortletType.mptLigthBordered;
  // TMetronicColor TMetroFontCase = (mfsUppercase, mfsNormal) TMetroFontSize = (jmtBold, jmtUnderline, jmtItalic, jmtNone);
  Container.Portlet.TitleFont.Create(TMetronicColor.jmcGreen, TMetroFontCase.mfsNormal,
    TMetroFontSize.jmtBold);
  // imposto solo la variabile colore....
  Container.Portlet.TitleBackgroud.MetroColor := TMetronicColor.jmcWhite;
  Container.Portlet.Icon.IconType := Janua.Core.Metronics.TMetroIcon.jmiCreditCard; // il colore ? ereditato
  Container.Portlet.Fit := False;
  // fit false dovrebbe essere il default fit imposta il contenuto a pieno schermo...
  Container.Portlet.ContentFit := False;
  Container.Portlet.ContentScrollable := False;
  // Then Set Form if isForm ...........................................................................................
  // Container.Form.Create('payment_form', '/?page=confirmpaymentform', jhmPost, mftHorizontal);
  // Container.Form.Bordered := False;
  // TMetroFormType.mftHorizontal;  Arrangement ? stasto scelto Accordion (chiamata ridondante dal Create).
  Container.Arrangement := MetroArrangement.maNone;

  // ******************************************** Creo il Frame che compone il portlet *********************************
  // imposto la conf di Default:
  Conf.IconPos := TTMetroIconPos.jmpLeftBoxed;
  Conf.IconType := TMetroIcon.jmiAddressCard;
  Conf.IconColor := TMetronicColor.jmcNone;
  Conf.LabelType := TMetroLabel.jmlLeft;
  Conf.InputType := TMetroInput.jmtStandard;
  Conf.InputState := TMetroState.jmsEnabled;

  // un form contiene uno o pi? frames (nel test ne metteremo almeno 2)
  frame.Create('person_frame', 'Verifica i tuoi dati personali',
    'i dati in questo box servono per la fattura del pagamento abbonamento.');
  frame.IsPortlet := False;
  frame.Size := 12;
  frame.Arrangement := MetroArrangement.maNone;
  frame.Conf := Conf;

  Row := Janua.Core.Metronics.TJanuaMetroFormRow.Create(Conf);
  Row.ItemsClear;
  Row.Conf := Conf;

  aBuilder := TJanuaStringBuilder.Create;
  aBuilder.Append('<h2>Completa il Pagamento ad Almanacco del Calcio Ligure</h2>');
  aBuilder.Append('<div class="alert alert-info">');
  aBuilder.Append('<strong>Puoi pagare con Paypal o con un bonifico bancario: </strong>');
  aBuilder.Append
    ('qui di seguito le coordinate IBAN: IT52V0617501420000001954580  intestato a  Edizioni Sportmedia srl');
  aBuilder.Append
    (' indicando nella causale: Abbonamento Almanacco Calcio Ligure ed il proprio indirizzo mail o nome e cognome ');
  aBuilder.Append('</div>');
  Row.Add(aControl.Create('disclaimer', aBuilder.ToString));
  frame.Add(Row);
  Row.ItemsClear;

  Row.Conf := Conf;
  aControl.Create('paypal', '', TMetronicControlType.mctPaypalButton);
  aControl.PaypalButtonID := 'W7CUFDPXFRTYY';
  aControl.Column.IsSet := true;
  aControl.Column.AddSize(TMetroScreenSize.mssSM, 4, 4);
  Row.Add(aControl);
  frame.Add(Row);
  Row.ItemsClear;

  // Inserimento del Frame.
  Container.Add(frame);
  Conf := frame.Conf;

  Result := Container.HtmlText;
end;

destructor TJanuaCustomServerSystem.Destroy;
begin
  try
    if Assigned(FServerList) then
      FServerList.Free;
    if Assigned(FcdsUsersList) then
      FcdsUsersList.Free;
    inherited;
  except
    on e: Exception do
      LogException('Destroy', e, self);
  end;
end;

function TJanuaCustomServerSystem.DoPayment(aUserID: integer; aAmount: Currency; aDate: TDate): boolean;
begin
  CreateDataModule;
  try
    Result := InternalDoPayment(aUserID, aAmount, aDate);
  finally
    DestroyDataModule(False);
  end;
end;

function TJanuaCustomServerSystem.GetLoadedProfile: boolean;
begin

  if not FLoadedProfile then
    LoadProfile;

  Result := FLoadedProfile;

end;

function TJanuaCustomServerSystem.GetUserEmail: string;
begin
  Result := FUserProfile.User.Email
end;

function TJanuaCustomServerSystem.GetUserPassword: string;
begin
  Result := FUserProfile.User.Password
end;

procedure TJanuaCustomServerSystem.InternalDeactivate;
begin
  FJanuaServerSession.Clear;
  inherited;
end;

procedure TJanuaCustomServerSystem.SetPassword(const Value: string);
begin
  try
    FUserProfile.User.Password := Value;
    if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
      TJanuaCoreOS.WriteParam('System', 'Password', FUserProfile.User.Password);

    WriteLog('System Password = ' + FUserProfile.User.Password);
  except
    on e: Exception do
    begin
      WriteError('TJanuaCustomServerSystem.SetPassword Errore:', e, not(csDesigning in ComponentState));
    end;
  end;
end;

procedure TJanuaCustomServerSystem.SetSearchUserProfile(const Value: TJanuaRecordUserProfile);
begin
  FSearchUserProfile := Value;
end;

procedure TJanuaCustomServerSystem.SetServerList(const Value: TStrings);
begin
  if Assigned(Value) then
    try
      FServerList.Assign(Value);
      if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
        TJanuaCoreOS.WriteParam('System', 'ServerList', FServerList.Text);
    except
      on e: Exception do
      begin
        WriteError('TJanuaCustomServerSystem.SetServerList Error: ', e, not(csDesigning in ComponentState));
      end;
    end;
end;

procedure TJanuaCustomServerSystem.SetServerPublicKey(const Value: string);
begin
  try
    FServerPublicKey := Value;
    if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
      TJanuaCoreOS.WriteParam('System', 'ServerPublicKey', FServerPublicKey);
    FJanuaServerSession.Key := FServerPublicKey;
  except
    on e: Exception do
    begin
      WriteError('TJanuaCustomServerSystem.SetServerPublicKey Error:', e, not(csDesigning in ComponentState));
    end;
  end;
end;

procedure TJanuaCustomServerSystem.SetSessionKey(const Value: string);
begin
  inherited;
  if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
    TJanuaCoreOS.WriteParam('System', 'SessionKey: ', FJanuaServerSession.Key);
end;

procedure TJanuaCustomServerSystem.SetSocialID(const Value: string);
begin

  FSocialID := Value;
  FUserProfile.User.SocialID := FSocialID;
  FJanuaServerSession.Social_ID := FSocialID;
  if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
    TJanuaCoreOS.WriteParam('System', 'Social ID: ', FSocialID);

end;

procedure TJanuaCustomServerSystem.SetSocialKind(const Value: string);
begin
  FSocialKind := Value;
  FUserProfile.User.SocialType := FSocialKind;
  FJanuaServerSession.Social_Kind := FSocialKind;
  if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
    TJanuaCoreOS.WriteParam('System', 'Social Network: ', FSocialKind);
end;

procedure TJanuaCustomServerSystem.SetUsername(const Value: string);
begin
  FUserProfile.User.Email := Value;
  FJanuaServerSession.Email := FUserProfile.User.Email;
  if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
    TJanuaCoreOS.WriteParam('System', 'UserName', FUserProfile.User.Email);
end;

function TJanuaCustomServerSystem.SearchUserByIDJSON(aID: integer): TJSONObject;
begin
  Result := TJSONObject.Create;
  if SearchUserByID(aID) then
  begin
    Result.AddPair(TJSONPair.Create('Result', 'true'));
    Result.AddPair(TJSONPair.Create('User', FUserProfile.AsJsonObject));
  end
  else
  begin
    Result.AddPair(TJSONPair.Create('Result', 'false'));
    Result.AddPair(TJSONPair.Create('Error', LastErrorMessage));
  end;
end;

function TJanuaCustomServerSystem.SearchUserJSON(fullusername: string): TJSONObject;
begin
  Result := TJSONObject.Create;
  if SearchUser(fullusername) > 0 then
  begin
    Result.AddPair(TJSONPair.Create('Result', 'true'));
    Result.AddPair(TJSONPair.Create('User', FUserProfile.AsJsonObject));
  end
  else
  begin
    Result.AddPair(TJSONPair.Create('Result', 'false'));
    Result.AddPair(TJSONPair.Create('Error', LastErrorMessage));
  end;
end;

procedure TJanuaCustomServerSystem.SetAppID(const Value: string);
begin
  FAppID := Value;
end;

procedure TJanuaCustomServerSystem.SetAppKey(const Value: string);
begin
  FAppKey := Value;
end;

procedure TJanuaCustomServerSystem.SetcdsUsersList(const Value: TFdMemTable);
begin
  FcdsUsersList := Value;
end;

procedure TJanuaCustomServerSystem.SetLoadedProfile(const Value: boolean);
begin
  if Value then
  begin
    LoadProfile;
  end
  else
  begin
    FLoadedProfile := False;
  end;
end;

procedure TJanuaCustomServerSystem.SetLocalConnect(const Value: boolean);
begin
  FLocalConnect := Value;
  if FLocalConnect then
    if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
      TJanuaCoreOS.WriteParam('System', 'FLocalConnect', 'True')
    else if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive then
      TJanuaCoreOS.WriteParam('System', 'FLocalConnect', 'False')
end;

procedure TJanuaCustomServerSystem.SetLoginPrompt(const Value: boolean);
begin
  FLoginPrompt := Value;

  if FLoginPrompt then
    if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive and not TJanuaApplication.IsServer then
      TJanuaCoreOS.WriteParam('System', 'FLoginPrompt', 'True')
    else if not(csDesigning in ComponentState) and TJanuaCoreOS.GetActive then
      TJanuaCoreOS.WriteParam('System', 'FLoginPrompt', 'False')

end;

function TJanuaCustomServerSystem.StartSystemPublicWebSession(const aUrl: string): string;
var
  sUrl: string;
begin
  if aUrl = '' then
    sUrl := TJanuaApplication.AppName
  else
    sUrl := aUrl;

  CreateDataModule;
  try
    SetUrl(sUrl);
    if InternalStartPublicWebSession then
      Result := SessionKey
    else
      Result := '';
  finally
    DestroyDataModule(False);
  end;
end;

{ TJanuaIOSource }

constructor TJanuaIOSource.Create(AOwner: TComponent);
begin
  inherited;
  i := 0;
  FNodeCount := 0;
end;

procedure TJanuaIOSource.LogToMemo(Log: String);
begin
  raise Exception.Create('LogToMemo not yet implemented');
end;

{ TJanuaCustomServerController }

procedure TJanuaCustomServerController.AddApplication(aApplication: TJanuaRecordApplication);
begin
  SetLength(FApplications, Length(FApplications) + 1);
  FApplications[Length(FApplications) - 1] := aApplication;
end;

procedure TJanuaCustomServerController.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

{ TJanuaRecordApplication }

procedure TJanuaRecordApplication.ActivateApplication;
begin
  if Assigned(Application) then
  begin
    Application.Activate;
  end;
end;

constructor TJanuaRecordApplication.Create(aApplication: TJanuaCustomAppDefinition);
begin
  Application.Assign(aApplication);
end;

function TJanuaRecordApplication.FindFormbyID(aID: integer): boolean;
begin
  { TODO : Funzione da Implementare Find Form By ID }
  Result := False;
end;

procedure TJanuaRecordApplication.ShowFormbyID(aID: integer);
begin
  { TODO : Funzione da Implementare Show Form By ID }
end;

{ TJanuaLocalRegisterApplication }

function TJanuaLocalRegisterApplication.Registration: boolean;
begin
  Result := False;
  { TODO : Here we must implement the core of the registration procedure using system }
end;

{ TJanuaSystemPasswordDialog }

function TJanuaSystemPasswordDialog.CheckPwd: boolean;
begin
  Result := False;
  if Length(FNewPassword) < 8 then
  begin
    InternalShowMessage(FErrorMessagePwdShort)
  end
  else if (FNewPassword <> FCheckPassword) then
  begin
    InternalShowMessage(FErrorMessagePwdRetype)
  end
  else if not PwdComplexity(FNewPassword) then
    InternalShowMessage(FErrorMessagePwdEasy)
  else
    Result := true;
end;

function TJanuaSystemPasswordDialog.Execute: boolean;
begin
  Result := False;

end;

procedure TJanuaSystemPasswordDialog.SetErrorMessagePwdEasy(const Value: string);
begin
  FErrorMessagePwdEasy := Value;
end;

procedure TJanuaSystemPasswordDialog.SetErrorMessagePwdRetype(const Value: string);
begin
  FErrorMessagePwdRetype := Value;
end;

procedure TJanuaSystemPasswordDialog.SetErrorMessagePwdShort(const Value: string);
begin
  FErrorMessagePwdShort := Value;
end;

procedure TJanuaSystemPasswordDialog.SetLabelButtonCancel(const Value: string);
begin
  FLabelButtonCancel := Value;
end;

procedure TJanuaSystemPasswordDialog.SetLabelButtonOK(const Value: string);
begin
  FLabelButtonOK := Value;
end;

procedure TJanuaSystemPasswordDialog.SetLabelPassword(const Value: string);
begin
  FLabelPassword := Value;
end;

procedure TJanuaSystemPasswordDialog.SetLabelRetypePassword(const Value: string);
begin
  FLabelRetypePassword := Value;
end;

procedure TJanuaSystemPasswordDialog.SetNewPassword(const Value: string);
begin
  FNewPassword := Value;
end;

{ TJanuaCustomDBServer }

procedure TJanuaCustomDBServer.SetJanuaSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaSystem := Value;
end;

procedure TJanuaCustomDBServer.StartPublicWebSession;
begin
  // starts a public web session from system and makes local assignements ............................
  inherited; // at the moment it inherits from a virtual abstract method so inherited is not used ....
  if Assigned(FJanuaSystem) then
  begin
    FJanuaSystem.StartSystemPublicWebSession(AppUrl);
    FUserProfile := FJanuaSystem.UserProfile;
    FJanuaServerSession := FJanuaSystem.JanuaServerSession;
    SessionID := FJanuaSystem.JanuaServerSession.session_id;
  end
  else
    raise Exception.Create
      ('TJanuaCustomServerFootball.StartPublicWebSession: FJanuaServerSystem not assigned');
end;

end.
