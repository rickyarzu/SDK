unit Janua.System.DMVC.Srv;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants, System.Generics.Collections,
  Spring.Collections,
  // DB Libraries
  FireDAC.Comp.Client, Data.DB,
  // DMVC Framework
  MVCFramework, MVCFramework.Commons, MVCFramework.Serializer.Commons,
  // Janua Commons
  Janua.Core.Types, Janua.Http.Types, Janua.REST.Types, Janua.Core.DB.Types,
  // Januaproject Interfaces
  Janua.Orm.Dataset.Intf, Janua.Orm.Intf, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Core.DB.Intf,
  JOrm.System.Settings.Intf,
  // ViewModels
  Janua.ViewModels.Intf, Janua.System.ViewModel.Intf,
  // Janua.Libraries
  Janua.DMVC.Srv.Template, Janua.Core.Classes, Janua.Core.DB.Impl;

type

  [MVCPath('/session')]
  TSystemSessionMVCController = class(TCustomMVVMSrvController)
  public
    class constructor Create;
    class destructor Destroy;
    /// <summary> This will be the customizable authentication function for the Framework server Application
    /// should be customized for an enforcement
    /// compatible with the standard TFunc<TWebContext, TList<String>, string, boolean> </summary>
    class function Authenticate(AContext: TWebContext; AUserRoles: TList<String>; aActionName: string)
      : boolean; override;
  public
    procedure Setup; override;
  private
    FSessionModel: IJanuaSystemUserSessionModel;
    function GetSessionModel: IJanuaSystemUserSessionModel;
  protected
    property SessionModel: IJanuaSystemUserSessionModel read GetSessionModel;
  public
    // Sample CRUD Actions for a "Customer" entity
    [MVCPath('/sessions/($aFormat)/($aParams)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetDataset(const aFormat, aParams: string); overload;

    [MVCPath]
    // index Get
    [MVCHTTPMethod([httpGET])]
    procedure GetSession;

    [MVCPath]
    // index Put
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateSession;

    [MVCPath('/users/($aCriteria)/($aValue)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetUsers(const aCriteria, aValue: string);

    [MVCPath('/users')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateUsers;

    [MVCPath('/users/(aID)')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateUsers(const aID: integer);

    [MVCPath('/users/(aID)')]
    [MVCHTTPMethod([httpDELETE])]
    procedure DeleteUsers(const aID: integer);

    [MVCPath('/users')]
    [MVCHTTPMethod([httpHEAD])]
    procedure DescUsers;

    [MVCPath('/user')]
    [MVCHTTPMethod([httpGET])]
    procedure GetUserRecord;

    [MVCPath('/user')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateRecord;

    [MVCPath('/user')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateRecord;

    [MVCPath('/user')]
    [MVCHTTPMethod([httpHEAD])]
    procedure DescRecord;

    [MVCPath('/checkuser')]
    [MVCHTTPMethod([httpPOST])]
    procedure CheckUser;

  end;

implementation

uses Janua.Application.Framework, Janua.DMVC.Srv.Framework;

{ TSystemSessionMVCController }

class function TSystemSessionMVCController.Authenticate(AContext: TWebContext; AUserRoles: TList<String>;
  aActionName: string): boolean;
begin
  Result := inherited;
end;

procedure TSystemSessionMVCController.CheckUser;
begin

end;

class constructor TSystemSessionMVCController.Create;
begin
  inherited;
  TJanuaServerDMVCApplication.AddProtectedControllerAction(TSystemSessionMVCController.QualifiedClassName,
    'GetSession');
  TJanuaServerDMVCApplication.AddProtectedControllerAction(TSystemSessionMVCController.QualifiedClassName,
    'ActionForRole2');
end;

procedure TSystemSessionMVCController.CreateRecord;
begin

end;

procedure TSystemSessionMVCController.CreateUsers;
begin

end;

procedure TSystemSessionMVCController.DeleteUsers(const aID: integer);
begin

end;

procedure TSystemSessionMVCController.DescRecord;
begin

end;

procedure TSystemSessionMVCController.DescUsers;
begin

end;

class destructor TSystemSessionMVCController.Destroy;
begin
  inherited;
end;

procedure TSystemSessionMVCController.GetDataset(const aFormat, aParams: string);
begin

end;

procedure TSystemSessionMVCController.GetUserRecord;
begin

end;

procedure TSystemSessionMVCController.GetSession;
var
  lSessionID: string;
begin
  if Context.LoggedUser.CustomData.TryGetValue('session_id', lSessionID) then
  begin
    SessionModel.LoginByKey(lSessionID);
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.OK;
    Render(SessionModel.UserSessionRecord.asJson);
  end
  else
  begin
    Context.Response.ContentType := TJanuaMimeString.APPLICATION_JSON;
    Context.Response.StatusCode := HTTP_STATUS.NotFound;
    Render(GenerateMessage('Session not Found', 'J001'));
  end;
end;

function TSystemSessionMVCController.GetSessionModel: IJanuaSystemUserSessionModel;
begin
  if not Assigned(FSessionModel) then
    Setup;
  Result := FSessionModel;
end;

procedure TSystemSessionMVCController.GetUsers(const aCriteria, aValue: string);
begin

end;

procedure TSystemSessionMVCController.Setup;
begin
  inherited;
  TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionModel, FSessionModel);
  FSessionModel.Activate;
end;

procedure TSystemSessionMVCController.UpdateRecord;
begin

end;

procedure TSystemSessionMVCController.UpdateSession;
begin

end;

procedure TSystemSessionMVCController.UpdateUsers(const aID: integer);
begin

end;

end.
