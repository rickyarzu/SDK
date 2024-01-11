unit Janua.Server.System.Intf;

interface

uses Janua.Server.Intf, JOrm.System.User.Intf, JOrm.System.UserProfile.Custom.Intf;

type
  IJanuaSystemServer = interface(IJanuaServer)
    function GetConnectedUser: IUser;
    procedure SetConnectedUser(const Value: IUser);
    property ConnectedUser: IUser read GetConnectedUser write SetConnectedUser;
    function LogIn(const  aUser, aPassword: string): Boolean;
    function LogInBySessionKey(const aSessionKey: string): Boolean;
    function LoginBySessionGUID(const aSessionGUID: TGUID): Boolean;
    procedure CacheUsers;
    function FindUserByGUID(ID: TGUID): boolean;
    function CheckUser(User: IUserProfile): boolean;
    function AddUser(const aUser: IUserProfile): boolean;
  end;


implementation

end.
