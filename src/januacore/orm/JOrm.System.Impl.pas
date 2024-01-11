unit JOrm.System.Impl;

interface

uses
  // RTL
  System.SysUtils,
  // Interfaces
  JOrm.System.Session.Intf, Janua.Orm.Intf, JOrm.System.Intf, JOrm.Anagraph.Intf,
  // Library
  Janua.Core.Entities, JOrm.System.Session.Impl, JOrm.System.Users.Custom.Impl,
  JOrm.System.UserProfile.Custom.Impl;

type
  TUser = class(TCustomUser, IUser)

  end;

  TUsers = class(TCustomUsers, IUsers)
  private
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
  protected
  public
    constructor Create; override;
    property User: IUser read GetUser write SetUser;
  end;

  TUserProfile = class(TCustomUserProfile, IUserProfile)
  private
    FAnagraphProfile: IAnagraphView;
    FUser: IUser;
  strict protected
    procedure SetAnagraphProfile(const Value: IAnagraphView);
  protected
    function GetAnagraphProfile: IAnagraphView;
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
  public
    constructor Create; override;
    procedure AfterConstruction; override;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
    function ValidateUser: Boolean;
    property User: IUser read GetUser write SetUser;
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
  end;

  TUserProfiles = class(TCustomUserProfiles, IUserProfiles, IJanuaRecordset)
  private
    FUserProfile: IUserProfile;
  strict protected
    procedure SetUserProfile(const Value: IUserProfile);
  protected
    function GetUserProfile: IUserProfile;
  public
    constructor Create; override;
    Constructor Create(const aName: string); overload;
  public
    property UserProfile: IUserProfile read GetUserProfile;
  end;

  TUserSession = class(TSession, IUserSession, IJanuaRecord)
  strict private
    FUserProfile: IUserProfile;
  protected
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);
    function GetAnagraphProfile: IAnagraphView;
  public
    constructor Create; override;
  public
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
    property User: IUser read GetUser write SetUser;
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
  End;

  TUserSessions = class(TSessions, IUserSessions)
  protected
    function GetSession: IUserSession;
    procedure SetSession(const Value: IUserSession);
  public
    constructor Create; override;
    Constructor Create(const aName: string); overload;
  public
    property UserSession: IUserSession read GetSession write SetSession;
  end;

  TUserSessionFactory = class
  public
    class function CreateRecord(const aKey: string): IUserSession; overload;
    class function CreateRecordset(aName, aTableName: string): IUserSessions; overload;
    class function CreateRecordset(const aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IUserSessions; overload;
  end;

  TUsersFactory = class
    class function CreateRecord(const aKey: string): IUser; overload;
    class function CreateRecordset(const aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IUsers; overload;
  end;

implementation

uses Janua.Orm.Types, Spring, Janua.Orm.Impl, JOrm.Anagraph.Impl, Janua.Application.Framework;

{ TJanuaUserSession }

constructor TUserSession.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.SysDbUserSessions);
  FUserProfile := TUserProfile.Create('userprofile');
  Guard.CheckNotNull(FUserProfile.User, 'TUserSession.Create  FUserProfile.User is nil');
  AddRecordDef(FUserProfile);
end;

function TUserSession.GetAnagraphProfile: IAnagraphView;
begin
  Result := FUserProfile.AnagraphProfile
end;

function TUserSession.GetUser: IUser;
begin
  Result := FUserProfile.User
end;

function TUserSession.GetUserProfile: IUserProfile;
begin
  Result := self.FUserProfile
end;

procedure TUserSession.SetUser(const Value: IUser);
begin
  FUserProfile.User := Value
end;

procedure TUserSession.SetUserProfile(const Value: IUserProfile);
begin
  self.FUserProfile := Value
end;

{ TUserSessions }

constructor TUserSessions.Create(const aName: string);
begin
  Create;
  FRecord := TUserSessionFactory.CreateRecord(aName);
end;

constructor TUserSessions.Create;
begin
  inherited;
  FRecord := TUserSessionFactory.CreateRecord('usersession');
end;

function TUserSessions.GetSession: IUserSession;
begin
  Result := FRecord as IUserSession;
end;

procedure TUserSessions.SetSession(const Value: IUserSession);
begin
  FRecord := Value;
end;

{ TUserSessionFactory }

class function TUserSessionFactory.CreateRecord(const aKey: string): IUserSession;
begin
  Result := TUserSession.Create(aKey);
end;

class function TUserSessionFactory.CreateRecordset(aName, aTableName: string): IUserSessions;
begin
  Result := TUserSessions.Create(aName, nil, nil);
end;

class function TUserSessionFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IUserSessions;
begin
  Result := TUserSessions.Create(aName, aLocalStorage, aRemoteStorage);
end;

{ TFullUserProfile }

procedure TUserProfile.AfterConstruction;
begin
  inherited;
  // i campi interi entity se '0' sonon considerati nulli (non 0) non attivano foreign key
  Town_id.IsEntityKey := True;
  Country_id.IsEntityKey := True;
  Region_id.IsEntityKey := True;
  District_id.IsEntityKey := True;
end;

constructor TUserProfile.Create;
begin
  inherited;
  SetEntity(TJanuaEntity.SysDbUsersProfiles);
  SetAnagraphProfile(TAnagraphViewFactory.CreateRecord('userprofile_anagraph'));
  AddRecordDef(GetAnagraphProfile);
  FUser := TUser.Create('CustomUserProfile_user');
  AddRecordDef(FUser);
end;

function TUserProfile.GetAnagraphProfile: IAnagraphView;
begin
  Result := FAnagraphProfile
end;

function TUserProfile.GetUser: IUser;
begin
  Result := FUser
end;

procedure TUserProfile.SetAnagraphProfile(const Value: IAnagraphView);
begin
  FAnagraphProfile := Value;
end;

procedure TUserProfile.SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
begin
  Address_street.AsString := aAddress.Address;
  Address_number.AsString := aAddress.Number;
  Address_town.AsString := aAddress.Town;
  Address_postal_code.AsString := aAddress.postalcode;
  Address_state_province.AsString := aAddress.StateProvince;
  Latitude.AsFloat := aAddress.Latitude;
  Longitude.AsFloat := aAddress.Longitude;
  // AnIsoCountryCode2.AsString := aAddress.CountryCode;
end;

procedure TUserProfile.SetUser(const Value: IUser);
begin
  FUser := Value
end;

function TUserProfile.ValidateUser: Boolean;
begin
  Result := self.FUser.ValidateUser;
  if not Result then
  begin
    if (First_name.AsString <> '') or (Last_name.AsString <> '') then
      FUser.Username.AsString := First_name.AsString + '_' + Last_name.AsString + '_' +
        FormatDateTime('ddhhnnss', Now());
    Result := self.FUser.Username.AsString <> '';
  end;
end;

{ TUserProfiles }

constructor TUserProfiles.Create;
begin
  inherited;
  FRecord := TUserProfile.Create('userprofile');
end;

constructor TUserProfiles.Create(const aName: string);
begin
  Create;
  FRecord := TUserProfile.Create(aName);
end;

function TUserProfiles.GetUserProfile: IUserProfile;
begin
  Result := FRecord as IUserProfile
end;

procedure TUserProfiles.SetUserProfile(const Value: IUserProfile);
begin
  FRecord := Value;
end;

{ TUsers }

constructor TUsers.Create;
begin
  inherited;
  FRecord := TUser.Create('Users');
end;

function TUsers.GetUser: IUser;
begin
  Result := FRecord as IUser
end;

procedure TUsers.SetUser(const Value: IUser);
begin
  FRecord := Value
end;

{ TUsersFactory }

class function TUsersFactory.CreateRecord(const aKey: string): IUser;
begin

end;

class function TUsersFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IUsers;
begin
  Result := TUsers.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
