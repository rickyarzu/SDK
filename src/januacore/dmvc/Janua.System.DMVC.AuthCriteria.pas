unit Janua.System.DMVC.AuthCriteria;

interface

uses
  MVCFramework, System.Generics.Collections, Janua.System.ViewModel.Intf;

type
  TJanuaAuthCriteria = class(TInterfacedObject, IMVCAuthenticationHandler)
  public
    procedure OnRequest(const AContext: TWebContext; const AControllerQualifiedClassName: string;
      const AActionName: string; var AAuthenticationRequired: Boolean);
    procedure OnAuthentication(const AContext: TWebContext; const AUserName: string; const APassword: string;
      AUserRoles: TList<String>; var AIsValid: Boolean; const ASessionData: TDictionary<string, string>);
    procedure OnAuthorization(const AContext: TWebContext; AUserRoles: TList<string>;
      const AControllerQualifiedClassName: string; const AActionName: string; var AIsAuthorized: Boolean);
  end;

implementation

uses
  System.SysUtils, Janua.Application.Framework, Janua.DMVC.Srv.Framework;

{ TJanuaAuthCriteria }

procedure TJanuaAuthCriteria.OnAuthentication(const AContext: TWebContext; const AUserName, APassword: string;
  AUserRoles: TList<string>; var AIsValid: Boolean; const ASessionData: TDictionary<String, String>);
var
  aSession: IJanuaSystemUserSessionModel;
begin
  AIsValid := APassword = ('pwd' + AUserName);

  if not AIsValid then
  begin
    TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionModel, aSession);
    aSession.Activate;
    aSession.IsThreaded := False;
    aSession.UserLogin.Email.AsString := AUserName;
    aSession.UserLogin.Password.AsString := APassword;
    AIsValid := aSession.login;
    if AIsValid then
    begin
      ASessionData.Add('session_id', aSession.SessionKey);
      ASessionData.Add('user_id', aSession.User.DbUserId.AsString);
      ASessionData.Add('user_uid', aSession.User.GUIDString);
      AUserRoles.Add('admin');
      AUserRoles.Add('user');
    end;
  end;

  if AUserName = 'user1' then
  begin
    AUserRoles.Add('role1');
  end
  else if AUserName = 'user2' then
  begin
    AUserRoles.Add('role2');
  end
  else if AUserName = 'user3' then
  begin
    AUserRoles.Add('role1');
    AUserRoles.Add('role2');
  end;

  AIsValid := AUserRoles.Count > 0;

  if AContext.Request.Headers['default_schema'] <> '' then
    ASessionData.Add('default_schema', AContext.Request.Headers['default_schema'])
  else
    ASessionData.Add('default_schema', '0');

end;

procedure TJanuaAuthCriteria.OnAuthorization(const AContext: TWebContext;
  AUserRoles: System.Generics.Collections.TList<String>; const AControllerQualifiedClassName,
  AActionName: string; var AIsAuthorized: Boolean);
begin
  AIsAuthorized := TJanuaServerDMVCApplication.Authenticate(AContext, AUserRoles,
    AControllerQualifiedClassName, AActionName);
  if not AIsAuthorized then
    AIsAuthorized := AUserRoles.Contains('admin');
end;

procedure TJanuaAuthCriteria.OnRequest(const AContext: TWebContext;
  const AControllerQualifiedClassName, AActionName: string; var AAuthenticationRequired: Boolean);
begin
  AAuthenticationRequired := TJanuaServerDMVCApplication.RequiresAuthentication(AControllerQualifiedClassName,
    AActionName);
end;

end.
