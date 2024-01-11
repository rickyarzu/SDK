unit Janua.Uni.Test.Legacy.PgSystem;

interface

uses
  DUnitX.TestFramework,
  // Janua ORM Framework
  JORM.System.Intf;

type

  {[TestFixture]}
  TTestPgSystem = class(TObject)
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
      'false,Paolo,Dellepiane,sp0rtm3d14,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')
      ]
    procedure ModifyUser(const expected: boolean; const aName, aLastName, Password: string;
      const aSessionKey: string);
  end;

implementation

uses
  System.SysUtils,
  Janua.Application.Framework,
  Janua.Orm.Intf, Janua.Server.Intf, Janua.Core.Types, udmVirtualSystemServer,
  // Orm
  JORM.System.Impl, Janua.Server.Impl, Janua.System.Server.Intf, Janua.System.Server.Impl,
  Janua.Postgres.System.Impl;

{ TTestPgSystem }

procedure TTestPgSystem.CreateUser(const expected: boolean; const aUsername, aPassword: string);
var
  LStorage: IJanuaSystemStorage;
  LFactory: IJanuaServerSystemFactory;
  LBool: boolean;
  LUser: IUser;
  LUserProfile: IUserProfile;
  // LSystem, LRestSystem: IJanuaServerSystem;
  // LParams: IJanuaParams;
  // LResult: IJanuaFuncResult;
  // LTestParam: IJanuaField;
  // LUserSession: IUserSession;
begin
  // La Factory è l'unica differenza tra il framework 'core' e il framework Postgres.
  LFactory := Janua.Postgres.System.Impl.TJanuaServerPgSystemFactory.Create;
  Assert.IsNotNull(LFactory, 'LFactory is nil');
  // Da qui il test è identico al Test 'Core' basato su Virtual Server
  LStorage := LFactory.GetSystemStorage;
  Assert.IsNotNull(LStorage, 'LStorage is nil');
  // Per prima cosa verifico che l'utente non sia già registrato altrimenti lo elimino
  if expected then
  begin
    LBool := not LStorage.SearchUserByEmail(aUsername);
    if not LBool then
      LBool := LStorage.DelUser(aUsername);
    Assert.IsTrue(LBool, 'LBool Utente esistente e non cancellato');
  end;
  // Creo una variabile Interfaccia IUser locale denominata LUser
  LUserProfile := TUserProfile.Create('profile');
  Assert.IsNotNull(LUserProfile, 'LUserProfile is nil');
  LUser := LUserProfile.User;
  Assert.IsNotNull(LUser, 'LUser is nil');
  LUser.Password.AsString := aPassword;
  LUser.Email.AsString := aUsername;
  // pima di tutto elimino il Record dell'utente se esistente ... poi potrò ricrearlo eventualmente nuovo
  LStorage.CreateDataset;
  LBool := False;
  if expected then
    LBool := LStorage.DelUser(LUserProfile);
  Assert.AreEqual(expected, LBool, 'Error Storage DelUser: ' + aUsername + '/' + aPassword + sl +
    LStorage.LastErrorMessage);
  // prima chiedo a storage di Creare il Dataset.
  LStorage.CreateDataset;
  LBool := LStorage.AddUser(LUserProfile);
  Assert.AreEqual(expected, LBool, 'Error Storage AddUser: ' + aUsername + '/' + aPassword + sl +
    LStorage.LastErrorMessage);
end;

procedure TTestPgSystem.DoSessionPayment(const expected: boolean; const aSessionKey, aDate: string;
  const aAmount: Currency);
begin

end;

procedure TTestPgSystem.DoUserPayPalPayment(const expected: boolean; const aDate, aUserEmail: string;
  const aAmount: Double);
begin

end;

procedure TTestPgSystem.Login(const expected: boolean; const aUsername, aPassword: string);
begin

end;

procedure TTestPgSystem.ModifyUser(const expected: boolean;
  const aName, aLastName, Password, aSessionKey: string);
begin

end;

procedure TTestPgSystem.SessionKeyLogin(const expected: boolean; const aSessionKey: string);
begin

end;

procedure TTestPgSystem.Setup;
begin
  TJanuaApplication.RestServer := 'http://localhost:8099';
  { uWebBrokerTest.Setup }
end;

procedure TTestPgSystem.TearDown;
begin

end;

end.
