unit JORM.System.Impl;

interface

uses JOrm.System.Users.Intf, JOrm.System.UserProfile.Custom.Intf,
  JORM.System.Intf, JOrm.System.Session.Impl;

type
  TJanuaUserSession = class(TSession, IJanuaUserSession)
  strict private
    FUser: IUser;
    FUserProfile: IUserProfile;
  protected
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);
  public
    constructor Create; override;
    Constructor Create(aName: string); overload; override;
  public
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
    property User: IUser read GetUser write SetUser;
  End;

implementation

uses JOrm.System.User.Impl, JOrm.System.UserProfile.Custom.Impl;

{ TJanuaUserSession }

constructor TJanuaUserSession.Create;
begin
  inherited;
  FUser := TUser.Create('user');
  FUserProfile := TUserProfile.Create('userprofile');
  self.AddRecordDef(FUser);
  self.AddRecordDef(self.FUserProfile);
end;

constructor TJanuaUserSession.Create(aName: string);
begin
  inherited;
end;

function TJanuaUserSession.GetUser: IUser;
begin
  Result := self.FUser
end;

function TJanuaUserSession.GetUserProfile: IUserProfile;
begin
  Result := self.FUserProfile
end;

procedure TJanuaUserSession.SetUser(const Value: IUser);
begin
  self.FUser := Value
end;

procedure TJanuaUserSession.SetUserProfile(const Value: IUserProfile);
begin
  self.FUserProfile := Value
end;

end.
