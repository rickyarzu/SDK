unit unitTestCoreSystem;

{$I januacore.inc}

interface

uses
  DUnitX.TestFramework,
  // Janua ORM Framework
  JORM.System.Users.Intf;

type

  [TestFixture]
  TTestSystem = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('TestTrue', 'true,paolo.dellepiane@settimanasport.com,sp0rtm3d14')]
    [TestCase('TestFalse', 'false,paolo.dellepiane@settimanasport.com,wrong')]
    [TestCase('TestNotFound', 'false,error@wrong.com,wrong')]
    procedure Login(const expected: boolean; const aUsername: string; const aPassword: string);

    [Test]
    [TestCase('TestTrue', 'true,paolo.dellepiane@settimanasport.com,sp0rtm3d14')]
    [TestCase('TestFalse', 'false,paolo.dellepiane@settimanasport.com,wrong')]
    [TestCase('TestNotFound', 'false,error@wrong.com,wrong')]
    procedure ServerSystemLogin(const expected: boolean; const aUsername: string; const aPassword: string);

    [Test]
    [TestCase('TestTrue', 'true,paolo.dellepiane@settimanasport.com,sp0rtm3d14')]
    [TestCase('TestFalse', 'false,paolo.dellepiane@settimanasport.com,wrong')]
    [TestCase('TestNotFound', 'false,error@wrong.com,wrong')]
    procedure RESTLogin(const expected: boolean; const aUsername: string; const aPassword: string);

    [TestCase('TestFalse', 'false,paolo.dellepiane@settimanasport.com,sp0rtm3d14')]
    [TestCase('TestTrue', 'true,new@user.com,password')]
    procedure CreateUser(const expected: boolean; const aUsername: string; const aPassword: string);
    /// <summary>2019-06-29 SessionKeyLogin Creato il test di login su sessione attiva</summary>
    [TestCase('TestA', 'true,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')]
    [TestCase('TestB', 'false,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c566')]
    procedure SessionKeyLogin(const expected: boolean; const aSessionKey: string);
    /// <summary>2019-06-29 Test di Pagamento PayPal su Mail attivabile  da super User</summary>
    [TestCase('TestA', 'true,20190701,paolo.dellepiane@settimanasport.com,10.0')]
    [TestCase('TestB', 'false,20190701,inesistente@settimanasport.com,10.0')]
    procedure DoUserPayPalPayment(const expected: boolean; const aDate: string; const aUserEmail: string;
      const aAmount: Double);
    /// <summary>2019-06-29 Test di Pagamento dalla sessione Utente loggato da App o sito web Token Paypal</summary>
    [TestCase('TestA',
      'true,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543,01/01/2019,10.0')]
    [TestCase('TestB',
      'false,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c566,01/01/2019,10.0')]
    procedure DoSessionPayment(const expected: boolean; const aSessionKey: string; const aDate: string;
      const aAmount: Currency);
    /// <summary>2019-06-29 Test di Modifica e ripristino nome e cognome del profilo utente</summary>
    [TestCase('TestA',
      'true,Ciccio,Pasticcio,testpwd,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')]
    [TestCase('TestB',
      'false,Paolo,Dellepiane,sp0rtm3d14,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')]
    procedure ModifyUser(const expected: boolean; const aName, aLastName, Password: string;
      const aSessionKey: string);
  end;

implementation

uses
  System.SysUtils, {$IFDEF  TESTWEBBROKER} uWebBrokerTest, {$ENDIF} uTestSystem,
  Janua.Application.Framework,
  Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.Types, udmVirtualSystemServer,
  // Orm
  JOrm.System.UserProfile.Custom.Intf, JORM.System.Intf,
  JORM.System.Users.Impl, JORM.System.Impl, JOrm.System.UserProfile.Custom.Impl,
  // Parent
  Janua.Server.Impl, Janua.System.Server.Intf, Janua.System.Server.Impl, Janua.Virtual.System;

procedure TTestSystem.CreateUser(const expected: boolean; const aUsername, aPassword: string);
var
  LStorage: IJanuaSystemStorage;
  LFactory: IJanuaServerSystemFactory;
  LBool: boolean;
  LUser: IUser;
  LUserProfile: IUserProfile;
  // LSystem, LRestSystem: IJanuaServerSystem;
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LTestParam: IJanuaField;
  LUserSession: IUserSession;
begin
  LFactory := Janua.Virtual.System.TJanuaServerVirtualSystemFactory.Create;
  LStorage := LFactory.GetSystemStorage;
  // Creo una variabile Interfaccia IUser locale denominata LUser
  LUserProfile := JOrm.System.UserProfile.Custom.Impl.TUserProfileFactory.CreateRecord('profile');
  LUser := LUserProfile.User;
  LUser.Password.AsString := aPassword;
  LUser.Email.AsString := aUsername;
  // prima chiedo a storage di Creare il Dataset.
  LStorage.CreateDataset;
  LBool := LStorage.AddUser(LUserProfile);
  Assert.AreEqual(expected, LBool, 'Error Storage AddUser: ' + aUsername + '/' + aPassword);
end;

procedure TTestSystem.DoUserPayPalPayment(const expected: boolean; const aDate: string;
  const aUserEmail: string; const aAmount: Double);
begin

end;

procedure TTestSystem.DoSessionPayment(const expected: boolean; const aSessionKey: string;
  const aDate: string; const aAmount: Currency);
begin
{$IFDEF  TESTWEBBROKER}
  TJanuaTestSystem.DoSessionPayment(expected, aSessionKey, aDate, aAmount);
{$ENDIF  TESTWEBBROKER}
  Assert.Pass(Format('DoSessionPayment(%s, %s, %f)', [aSessionKey, aDate, aAmount]));
end;

procedure TTestSystem.Login(const expected: boolean; const aUsername, aPassword: string);
begin
  TJanuaTestSystem.Login(expected, aUsername, aPassword);
  Assert.Pass(Format('Login(%s, %s)', [aUsername, aPassword]));
end;

procedure TTestSystem.ModifyUser(const expected: boolean; const aName, aLastName, Password: string;
  const aSessionKey: string);
var
  aUserProfile: IUserProfile;
  // Test Variabiles are the same as Session Key Login.
  LStorage: IJanuaSystemStorage;
  LFactory: IJanuaServerSystemFactory;
  LBool: boolean;
  LUser: IUser;
  LSystem, LRestSystem: IJanuaServerSystem;
  LParams: IJanuaParams;
  LResult: IJanuaFuncResult;
  LTestParam: IJanuaField;
  LUserSession: IUserSession;
begin
  // At first we create an User Profile record that should be used to store and change user profile's data
  aUserProfile := TUserProfileFactory.CreateRecord('userprofile');
end;

procedure TTestSystem.RESTLogin(const expected: boolean; const aUsername, aPassword: string);
begin
  TJanuaTestSystem.RESTLogin(expected, aUsername, aPassword);
  Assert.Pass(Format('Login(%s, %s)', [aUsername, aPassword]));
end;

procedure TTestSystem.ServerSystemLogin(const expected: boolean; const aUsername, aPassword: string);
begin
  TJanuaTestSystem.ServerSystemLogin(expected, aUsername, aPassword);
  Assert.Pass(Format('Login(%s, %s)', [aUsername, aPassword]));
end;

procedure TTestSystem.SessionKeyLogin(const expected: boolean; const aSessionKey: string);
begin
{$IFDEF  TESTWEBBROKER}
  TJanuaTestSystem.VirtualSessionKeyLogin(expected, aSessionKey);
{$ENDIF  TESTWEBBROKER}
  Assert.Pass('Procedure failed while Pass Expected');
end;

procedure TTestSystem.Setup;
begin
  TJanuaApplication.RestServer := 'http://localhost:8099';
  GlobalServerSystemFactory := Janua.Virtual.System.TJanuaServerVirtualSystemFactory.Create;
{$IFDEF WEBBROKER}
{$IFDEF  TESTWEBBROKER} uWebBrokerTest.Setup {$ENDIF  TESTWEBBROKER}
{$ENDIF }
end;

procedure TTestSystem.TearDown;
begin
{$IFDEF WEBBROKER}
{$IFDEF  TESTWEBBROKER} uWebBrokerTest.TearDown; {$ENDIF  TESTWEBBROKER}
{$ENDIF }
  GlobalServerSystemFactory := nil;
end;

initialization

TDUnitX.RegisterTestFixture(TTestSystem);

end.
