unit JOrm.System.Intf;

interface

uses
  Janua.Orm.Intf, JOrm.Anagraph.Intf, JOrm.System.Session.Intf, JOrm.System.Users.Custom.Intf,
  JOrm.System.UserProfile.Custom.Intf, Janua.Core.Entities;

type
  IUser = interface(ICustomUser)
    ['{9D098457-7DA9-482D-BCDD-A9554DB8A6BA}']
    // Calc Propertyes
    function GetIsValidEmail: boolean;
    property IsValidEmail: boolean read GetIsValidEmail;
    function ValidateUser: boolean;
    function GetPasswordChar: char;
    procedure SetPasswordChar(const Value: char);
    function GetPasswordVisible: boolean;
    procedure SetPasswordVisible(const Value: boolean);
    property PasswordVisible: boolean read GetPasswordVisible write SetPasswordVisible;
    property PasswordChar: char read GetPasswordChar write SetPasswordChar;
  end;

  IUsers = interface(ICustomUsers)
    ['{7C67B36A-9815-4860-934E-69714682F93A}']
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
    property User: IUser read GetUser write SetUser;
  end;

  IUserProfile = interface(ICustomUserProfile)
    ['{07757C1E-2FE8-44C0-89B5-AC51BD2E2FCC}']
    // User
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);
    property User: IUser read GetUser write SetUser;
    function ValidateUser: boolean;
    // Anagraph Profile
    function GetAnagraphProfile: IAnagraphView;
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
    procedure SetfromRecordAddress(const aAddress: TJanuaRecordAddress);
  end;

  IUserProfiles = interface(ICustomUserProfiles)
    ['{FA16F0BE-1CDC-4531-91A0-AD53C05AACA1}']
    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;
  end;

  IUserSession = Interface(ISession)
    ['{A3EBCE71-4F2F-4AF7-BF66-370003745E29}']
    function GetUser: IUser;
    procedure SetUser(const Value: IUser);

    function GetUserProfile: IUserProfile;
    procedure SetUserProfile(const Value: IUserProfile);

    property User: IUser read GetUser write SetUser;
    property UserProfile: IUserProfile read GetUserProfile write SetUserProfile;

    function GetAnagraphProfile: IAnagraphView;
    property AnagraphProfile: IAnagraphView read GetAnagraphProfile;
  End;

  IUserSessions = interface(IJanuaRecordSet)
    ['{6DDCF755-3D11-4700-8CF4-8691CC09FA69}']
    function GetSession: IUserSession;
    procedure SetSession(const Value: IUserSession);
    property UserSession: IUserSession read GetSession write SetSession;
  end;

implementation

end.
