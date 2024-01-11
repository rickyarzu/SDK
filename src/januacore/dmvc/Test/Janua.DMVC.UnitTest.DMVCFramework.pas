unit Janua.DMVC.UnitTest.DMVCFramework;

interface

uses
  DUnitX.TestFramework,
  // System
  System.Generics.Collections, System.SysUtils,
  // Spring
  Spring.Collections,
  // DMVC
  MVCFramework;

type
  TDummyController = class
  public
    // TFunc<TWebContext, TList<String>, string, boolean>
    class function Authenticate(AContext: TWebContext; AUserRoles: TList<String>;
      aActionName: string): boolean;
  end;

  TDummyWebContext = class(TWebContext)
  public
    constructor Create; overload;
  end;

  [TestFixture]
  TestDMVCFramework = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestCreate;
    [Test]
    procedure TestRegisterAuthentication;
    [Test]
    procedure TestRequiresAuthentication;
    [Test]
    [TestCase('TestTrue', 'admin,true')]
    [TestCase('TestFalse', 'user,false')]
    procedure TestAuthentication(aRole: string; aExpected: boolean);
  end;

implementation

uses Janua.DMVC.Srv.Framework;

procedure TestDMVCFramework.Setup;
begin
end;

procedure TestDMVCFramework.TearDown;
begin
end;

procedure TestDMVCFramework.TestAuthentication(aRole: string; aExpected: boolean);
var
  lContext: TWebContext;
  lUserRoles: TList<String>;
begin
  lContext := TDummyWebContext.Create;
  lUserRoles := TList<String>.Create;
  lUserRoles.Add(aRole);
  // ******************************************************************************************************
  // *** Aggiungo due funzioni che saranno 'protette' dal meccanismo di autenticazione jwt ****************
  var
  lClassName := TDummyController.QualifiedClassName;

  TJanuaServerDMVCApplication.AddProtectedControllerAction(lClassName, 'Action1');
  TJanuaServerDMVCApplication.AddProtectedControllerAction(lClassName, 'Action2');

  Assert.AreEqual(aExpected, TJanuaServerDMVCApplication.Authenticate(lContext, lUserRoles, lClassName,
    'Action1'));

  Assert.AreEqual(aExpected, TJanuaServerDMVCApplication.Authenticate(lContext, lUserRoles, lClassName,
    'Action2'));
end;

procedure TestDMVCFramework.TestCreate;
begin
  Assert.IsNotNull(TJanuaServerDMVCApplication.ProtectedControllersActions, 'ProtectedControllersActions');
  Assert.IsNotNull(TJanuaServerDMVCApplication.AuthenticationFunctions, 'AuthenticationFunctions');
end;

procedure TestDMVCFramework.TestRegisterAuthentication;
var
  lFunc: TAuthenticationFunc;
  lClassName: string;
begin
  lClassName := TDummyController.QualifiedClassName;
  TJanuaServerDMVCApplication.AddAuthFunc(lClassName, TDummyController.Authenticate);
  Assert.AreEqual(1, TJanuaServerDMVCApplication.AuthenticationFunctions.Count);
  // aControllerQualifiedClassName, lFunc
  Assert.IsTrue(TJanuaServerDMVCApplication.AuthenticationFunctions.TryGetValue(lClassName, lFunc));
  Assert.IsTrue(Assigned(lFunc), 'lFunc');
end;

procedure TestDMVCFramework.TestRequiresAuthentication;
begin
  // ******************************************************************************************************
  // *** Aggiungo due funzioni che saranno 'protette' dal meccanismo di autenticazione jwt ****************
  TJanuaServerDMVCApplication.AddProtectedControllerAction(TDummyController.QualifiedClassName, 'Action1');
  TJanuaServerDMVCApplication.AddProtectedControllerAction(TDummyController.QualifiedClassName, 'Action2');

  // ******************************************************************************************************
  // *** Verifico che le due funzioni siano registrate nella DMVCApplication e siano protette *************
  Assert.AreNotEqual(0, TJanuaServerDMVCApplication.ProtectedControllersActions.Count);
  Assert.IsTrue(TJanuaServerDMVCApplication.RequiresAuthentication(TDummyController.QualifiedClassName,
    'Action1'));
  Assert.IsTrue(TJanuaServerDMVCApplication.RequiresAuthentication(TDummyController.QualifiedClassName,
    'Action2'));
end;

{ TDummyController }

class function TDummyController.Authenticate(AContext: TWebContext; AUserRoles: TList<String>;
  aActionName: string): boolean;
begin
  Result := false;
  if aActionName = 'Action1' then
    Result := AUserRoles.Contains('admin')
  else if aActionName = 'Action2' then
    Result := AUserRoles.Contains('admin')
 end;

{ TDummyWebContext }

constructor TDummyWebContext.Create;
begin

end;

initialization

TDUnitX.RegisterTestFixture(TestDMVCFramework);

end.
