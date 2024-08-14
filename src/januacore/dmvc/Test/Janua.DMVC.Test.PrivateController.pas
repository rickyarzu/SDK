unit Janua.DMVC.Test.PrivateController;

interface

uses
  MVCFramework, MVCFramework.Commons, Janua.DMVC.Controller.Template;

type

  [MVCPath('/test/private')]
  TPrivateController = class(TMVCController)
  public
    [MVCPath('/role1')]
    [MVCHTTPMethod([httpGET])]
    procedure ActionForRole1;

    [MVCPath('/role2')]
    [MVCHTTPMethod([httpGET])]
    procedure ActionForRole2;
  public
    class constructor Create;
    class destructor Destroy;
  end;

implementation

uses Janua.DMVC.Srv.Framework, System.Generics.Collections;

{ TPrivateController }

procedure TPrivateController.ActionForRole1;
var
  aResponse: string;
  aPair: System.Generics.Collections.TPair<string, string>;
begin
  ContentType := TMVCMediaType.TEXT_PLAIN;
  // **** Importante **** i dati di Sessione si possono inserire come parametri in LoggedUser.CustomData
  // Questi parametri arrivano dal token jwt e sono stati inseriti al momento del login.
  for aPair in Context.LoggedUser.CustomData do
    aResponse := aResponse + ';' + aPair.Key + ' = ' + aPair.Value;
  aResponse := aResponse + ';' + Context.Session.ToString + ' ; ' + Context.Config.ToString;

  Render('Response from ActionForRole1: ' + aResponse);
end;

procedure TPrivateController.ActionForRole2;
begin
  ContentType := TMVCMediaType.TEXT_PLAIN;
  Render('Response from ActionForRole2');
end;

class constructor TPrivateController.Create;
begin
  inherited;
  TJanuaServerDMVCApplication.AddProtectedControllerAction(TPrivateController.QualifiedClassName,
    'ActionForRole1');
  TJanuaServerDMVCApplication.AddProtectedControllerAction(TPrivateController.QualifiedClassName,
    'ActionForRole2');
end;

class destructor TPrivateController.Destroy;
begin
  inherited;
end;

end.
