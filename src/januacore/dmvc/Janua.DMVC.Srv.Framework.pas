unit Janua.DMVC.Srv.Framework;

interface

uses
  // System
  System.Generics.Collections, System.SysUtils,
  // Spring
  Spring.Collections,
  // DMVC
  MVCFramework;

type
  TAuthenticationFunc = TFunc<TWebContext, TList<String>, string, boolean>;

type
  TJanuaServerDMVCApplication = class
  public
    class constructor Create;
    class destructor Destroy;
  private
    class var FProtectedControllersActions: IList<string>;
    class var FAuthenticationFunctions: IDictionary<string, TAuthenticationFunc>;
  public
    class property ProtectedControllersActions: IList<string> read FProtectedControllersActions;
    class property AuthenticationFunctions: IDictionary<string, TAuthenticationFunc>
      read FAuthenticationFunctions;
  public
    class procedure AddProtectedControllerAction(const aControllerQualifiedClassName, aActionName: string);
    ///<summary> Checks if Controller and Action are Registered as Protected by Authentication </summary>
    class function RequiresAuthentication(const aControllerQualifiedClassName, aActionName: string): boolean;
    ///<summary> Adds an Authentication Function for a registered Controller </summary>
    class procedure AddAuthFunc(const aControllerName: string; aFunc: TAuthenticationFunc);
    ///<summary> Should be called by Authentication  </summary>
    class function Authenticate(AContext: TWebContext; AUserRoles: TList<String>;
      aControllerQualifiedClassName, aActionName: string): boolean;
  end;

implementation

{ TJanuaServerDMVCApplication }

class procedure TJanuaServerDMVCApplication.AddAuthFunc(const aControllerName: string;
  aFunc: TAuthenticationFunc);
begin
  FAuthenticationFunctions.Add(aControllerName, aFunc);
end;

class procedure TJanuaServerDMVCApplication.AddProtectedControllerAction(const aControllerQualifiedClassName,
  aActionName: string);
begin
  FProtectedControllersActions.Add(aControllerQualifiedClassName + '.' + aActionName);
end;

class function TJanuaServerDMVCApplication.Authenticate(AContext: TWebContext;
  AUserRoles: System.Generics.Collections.TList<String>;
  aControllerQualifiedClassName, aActionName: string): boolean;
var
  lFunc: TAuthenticationFunc;
begin
  Result := FAuthenticationFunctions.TryGetValue(aControllerQualifiedClassName, lFunc) and
    lFunc(AContext, AUserRoles, aActionName);
end;

class constructor TJanuaServerDMVCApplication.Create;
begin
  FProtectedControllersActions := TCollections.CreateList<string>;
  FAuthenticationFunctions := TCollections.CreateDictionary<string, TAuthenticationFunc>;
end;

class destructor TJanuaServerDMVCApplication.Destroy;
begin
  FProtectedControllersActions := nil;
  FAuthenticationFunctions := nil;
end;

class function TJanuaServerDMVCApplication.RequiresAuthentication(const aControllerQualifiedClassName,
  aActionName: string): boolean;
begin
  Result := FProtectedControllersActions.Contains(aControllerQualifiedClassName + '.' + aActionName);
end;

end.
