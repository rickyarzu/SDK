unit unitTestSystemMVVM;

interface

uses
  DUnitX.TestFramework;

type

  [TestFixture]
  TMVVMSystemTest = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure TestDataModule;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    procedure TestCreateModelSession;
    [Test]
    procedure TestCreateViewModelSession;
    [Test]
    [TestCase('TestTrue', 'true,varv-k@mail.ru,j4nu4pr0j3ct')]
    [TestCase('TestFalse', 'false,varv-k@mail.ru,errata')]
    procedure TestLoginDataModule(const bExpected: Boolean; const aUsername, aPassword: string);
    [Test]
    [TestCase('TestTrue', 'true,varv-k@mail.ru,j4nu4pr0j3ct')]
    [TestCase('TestFalse', 'false,varv-k@mail.ru,errata')]
    procedure TestLoginModel(const bExpected: Boolean; const aUsername, aPassword: string);
    [Test]
    [TestCase('TestTrue', 'true,paolo.dellepiane@settimanasport.com,sp0rtm3d14')]
    [TestCase('TestFalse', 'false,paolo.dellepiane@settimanasport.com,wrong')]
    [TestCase('TestNotFound', 'false,error@wrong.com,wrong')]
    procedure Login(const expected: Boolean; const aUsername: string; const aPassword: string);
    [TestCase('TestFalse', 'false,paolo.dellepiane@settimanasport.com,sp0rtm3d14')]
    [TestCase('TestTrue', 'true,new@user.com,password')]
    procedure CreateUser(const expected: Boolean; const aUsername: string; const aPassword: string);
    [Test]
    procedure AddAnagraph;
    [Test]
    procedure AddAnagraphViewModel;
    /// <summary>2019-06-29 SessionKeyLogin Creato il test di login su sessione attiva</summary>
    [TestCase('TestA', 'true,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')]
    [TestCase('TestB', 'false,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c566')]
    procedure SessionKeyLogin(const expected: Boolean; const aSessionKey: string);
    /// <summary>2019-06-29 Test di Pagamento PayPal su Mail attivabile  da super User</summary>
    [TestCase('TestA', 'true,20190701,paolo.dellepiane@settimanasport.com,10.0')]
    [TestCase('TestB', 'false,20190701,inesistente@settimanasport.com,10.0')]
    procedure DoUserPayPalPayment(const expected: Boolean; const aDate: string; const aUserEmail: string;
      const aAmount: Double);
    /// <summary>2019-06-29 Test di Pagamento dalla sessione Utente loggato da App o sito web Token Paypal</summary>
    [TestCase('TestA',
      'true,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543,01/01/2019,10.0')]
    [TestCase('TestB',
      'false,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c566,01/01/2019,10.0')]
    procedure DoSessionPayment(const expected: Boolean; const aSessionKey: string; const aDate: string;
      const aAmount: Currency);
    /// <summary>2019-06-29 Test di Modifica e ripristino nome e cognome del profilo utente</summary>
    [TestCase('TestA',
      'true,Ciccio,Pasticcio,testpwd,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')]
    [TestCase('TestB',
      'false,Paolo,Dellepiane,sp0rtm3d14,cb36af3131aa783905fa7f510698e9ceecbb4737cc1461e6af0e4fd80ae1c543')
      ]
    procedure ModifyUser(const expected: Boolean; const aName, aLastName, Password: string;
      const aSessionKey: string);
  end;

implementation

uses System.Classes, System.SysUtils, Spring, Janua.Core.Functions, Janua.Core.Types,
{$IFDEF TESTPOSTGRES}
  Janua.Orm.UniDac, Janua.Uni.Framework,
{$ENDIF TESTPOSTGRES}
  Janua.Mock.Firedac.Framework, Janua.Orm.Impl,
  JOrm.Anagraph.Intf, JOrm.System.Intf,
  Janua.Application.Framework, Janua.System.ViewModel.Intf;

procedure TMVVMSystemTest.AddAnagraph;
var
  LModel: IJanuaSystemUserSessionModel;
  LDBModel: IJanuaDBSystemUserSessionModel;
  aAnagraph: IAnagraphView;
  aUserProfile: IUserProfile;
  lTest: Integer;
  bTest: Boolean;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionModel, LDBModel),
    'IJanuaDBSystemUserSessionModel not registered');
  Assert.IsNotNull(LDBModel, 'LModel');
  LDBModel.Activate;

  // At first check if UserProfile Interface is loaded
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, aUserProfile, 'user_profile'),
    'IUserProfile not registered');

  // I Setup a new user profile and Try to Register it
  aUserProfile.Clear;
  aUserProfile.User.Username.AsString := 'newuser@gmail.com';
  aUserProfile.User.Password.AsString := 'newpassword';
  bTest := LDBModel.CheckUser(aUserProfile);
{$IFDEF TESTPOSTGRES}
  Assert.AreEqual(True, bTest, 'Error user registered newuser@gmail.com');
{$ENDIF TESTPOSTGRES}
  try
    bTest := LDBModel.AddUser(aUserProfile);
{$IFDEF TESTPOSTGRES}
    Assert.AreEqual(True, bTest, 'Error adding user newuser@gmail.com');
{$ENDIF TESTPOSTGRES}
    bTest := LDBModel.Login(aUserProfile.User);
{$IFDEF TESTPOSTGRES}
    Assert.AreEqual(True, bTest, 'Login Failed newuser@gmail.com');
    lTest := LDBModel.UserSessionRecord.UserProfile.User.DbUserId.AsInteger;
    Assert.AreNotEqual(0, lTest, 'LDBModel.User ID');
    Assert.AreEqual(0, LDBModel.AnagraphProfile.AnagraphId.AsInteger, 'LDBModel.AnagraphProfile.AnagraphId');
{$ENDIF TESTPOSTGRES}
    // At First I check if IAnagraphView is correctly registered at Factory
    Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IAnagraphView, aAnagraph, 'anagraph_profile'));
    // Then I fill Anagraph with Test Data:
    aAnagraph.Clear;
    aAnagraph.AnAddress.AsString := 'TestAddress';
    aAnagraph.AnLastName.AsString := 'TestLastName';
    aAnagraph.AnName.AsString := 'TestFirstName';
    aAnagraph.AnFiscalCode.AsString := '03623590100';
    aAnagraph.AnVatId.AsString := '03623590100';
    aAnagraph.AnTown.AsString := 'TESTTOWN';
    aAnagraph.AnAddressNumber.AsString := '1A';

    Assert.AreEqual(0, aAnagraph.AnagraphId.AsInteger, 'aAnagraph.AnagraphID');

    Assert.IsNotNull(LDBModel.User, 'LDBModel.User');
{$IFDEF TESTPOSTGRES}
    lTest := LDBModel.User.DbUserId.AsInteger;
{$ELSE}
    LDBModel.User.DbUserId.AsInteger := 1;
    lTest := 1;
{$ENDIF TESTPOSTGRES}
    Assert.AreNotEqual(0, lTest, 'LDBModel.User ID');
    aUserProfile.User.Assign(LDBModel.User);

    lTest := LDBModel.CreateNewAnagraph(aUserProfile.User, aAnagraph);
{$IFDEF TESTPOSTGRES}
    Assert.AreNotEqual(0, lTest, 'New Anagraph id is 0');

    Assert.AreEqual(lTest, LDBModel.AnagraphProfile.AnagraphId.AsInteger,
      'LDBModel.AnagraphProfile.AnagraphId');
    Assert.AreEqual(True, LDBModel.Login(aUserProfile.User), '2nd Login Failed newuser@gmail.com');
    Assert.AreEqual(lTest, LDBModel.AnagraphProfile.AnagraphId.AsInteger, '2nd AnagraphProfile.AnagraphId');
{$ENDIF TESTPOSTGRES}
  finally
{$IFDEF TESTPOSTGRES} LDBModel.DelUser('newuser@gmail.com'); {$ENDIF TESTPOSTGRES}
  end;

end;

procedure TMVVMSystemTest.AddAnagraphViewModel;
var
  LDBViewModel: IJanuaDBSystemUserSessionViewModel;
  aAnagraph: IAnagraphView;
  aUserProfile: IUserProfile;
  lTest: Integer;
  bTest: Boolean;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionViewModel, LDBViewModel),
    'IJanuaDBSystemUserSessionViewModel not registered');
  Assert.IsNotNull(LDBViewModel, 'LModel');
  LDBViewModel.Activate;

  // Check that Angraph Profile Interface is set and loaded
  Assert.IsNotNull(LDBViewModel.AnagraphProfile, 'LDBViewModel.AnagraphProfile');

  // At first check if UserProfile Interface is loaded
  Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IUserProfile, aUserProfile, 'user_profile'),
    'IUserProfile not registered');


  // I Setup a new user profile and Try to Register it
  aUserProfile.Clear;
  aUserProfile.User.Username.AsString := 'newuser@gmail.com';
  aUserProfile.User.Password.AsString := 'newpassword';
  bTest := LDBViewModel.SystemUserSessionModel.CheckUser(aUserProfile);
{$IFDEF TESTPOSTGRES}
  Assert.AreEqual(True, bTest, 'Error user registered newuser@gmail.com');
{$ENDIF TESTPOSTGRES}
  try
    LDBViewModel.RegisterUser(aUserProfile);
{$IFDEF TESTPOSTGRES}
    Assert.AreEqual(True, LDBViewModel.SilentLogin(aUserProfile.User), 'Login Failed newuser@gmail.com');
    Assert.AreEqual(0, LDBViewModel.AnagraphProfile.AnagraphId.AsInteger,
      'LDBModel.AnagraphProfile.AnagraphId');
{$ENDIF TESTPOSTGRES}
    // At First I check if IAnagraphView is correctly registered at Factory
    Assert.IsTrue(TJanuaOrmFactory.TryGetRecordIntf(IAnagraphView, aAnagraph, 'anagraph_profile'));
    // Then I fill Anagraph with Test Data:
    aAnagraph.Clear;
    aAnagraph.AnAddress.AsString := 'TestAddress';
    aAnagraph.AnLastName.AsString := 'TestLastName';
    aAnagraph.AnName.AsString := 'TestFirstName';
    aAnagraph.AnFiscalCode.AsString := '03623590100';
    aAnagraph.AnVatId.AsString := '03623590100';
    aAnagraph.AnTown.AsString := 'TESTTOWN';
    aAnagraph.AnAddressNumber.AsString := '1A';

    Assert.AreEqual(0, aAnagraph.AnagraphId.AsInteger, 'aAnagraph.AnagraphID');

    Assert.IsNotNull(LDBViewModel.CurrentRecord.UserProfile.User, 'LDBModel.User');
{$IFNDEF TESTPOSTGRES}
    LDBViewModel.CurrentRecord.User.DbUserId.AsInteger := 1;
{$ENDIF TESTPOSTGRES}
    lTest := LDBViewModel.CurrentRecord.User.DbUserId.AsInteger;
    Assert.AreNotEqual(0, lTest, 'LDBModel.User ID');
    aUserProfile.User.Assign(LDBViewModel.CurrentRecord.User);

    lTest := LDBViewModel.CreateNewAnagraph(aUserProfile.User, aAnagraph);
{$IFDEF TESTPOSTGRES}
    Assert.AreNotEqual(0, lTest, 'New Anagraph id is not 0');
    Assert.AreEqual(lTest, LDBViewModel.AnagraphProfile.AnagraphId.AsInteger,
      'LDBModel.AnagraphProfile.AnagraphId');
    Assert.AreEqual(True, LDBViewModel.SilentLogin(aUserProfile.User), '2nd Login Failed newuser@gmail.com');
    Assert.AreEqual(lTest, LDBViewModel.AnagraphProfile.AnagraphId.AsInteger,
      '2nd AnagraphProfile.AnagraphId');
{$ENDIF TESTPOSTGRES}
  finally
{$IFDEF TESTPOSTGRES} LDBViewModel.DelUser('newuser@gmail.com'); {$ENDIF TESTPOSTGRES}
  end;
end;

procedure TMVVMSystemTest.CreateUser(const expected: Boolean; const aUsername, aPassword: string);
var
  LDBViewModel: IJanuaDBSystemUserSessionViewModel;
  lTest: Boolean;
  lID: Integer;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionViewModel, LDBViewModel),
    'IJanuaDBSystemUserSessionViewModel not registered');
  Assert.IsNotNull(LDBViewModel, 'LModel');
  LDBViewModel.Activate;
  lTest := LDBViewModel.RegisterUser(aUsername, aPassword);
{$IFDEF TESTPOSTGRES}
  Assert.AreEqual(expected, lTest, 'errata registrazione utente');
{$ENDIF TESTPOSTGRES}
  lID := LDBViewModel.CurrentRecord.User.DbUserId.AsInteger;

  if expected then
  begin
    lTest := LDBViewModel.SilentLogin(aUsername, aPassword);
{$IFDEF TESTPOSTGRES}
    Assert.AreEqual(expected, lTest, 'errata login utente ' + lID.ToString);
    Assert.AreEqual(lID, LDBViewModel.CurrentRecord.User.DbUserId.AsInteger);
    lTest := LDBViewModel.DelUser(aUsername);
    Assert.IsTrue(lTest, 'user delete error');
    lTest := LDBViewModel.SilentLogin(aUsername, aPassword);
    Assert.IsFalse(lTest, 'user not correctly deleted');
{$ENDIF TESTPOSTGRES}
  end;

  LDBViewModel := nil;
end;

procedure TMVVMSystemTest.DoSessionPayment(const expected: Boolean; const aSessionKey, aDate: string;
  const aAmount: Currency);
begin

end;

procedure TMVVMSystemTest.DoUserPayPalPayment(const expected: Boolean; const aDate, aUserEmail: string;
  const aAmount: Double);
begin

end;

procedure TMVVMSystemTest.Login(const expected: Boolean; const aUsername, aPassword: string);
var
  LDBViewModel: IJanuaDBSystemUserSessionViewModel;
  lTest: Boolean;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionViewModel, LDBViewModel),
    'IJanuaDBSystemUserSessionViewModel not registered');
  Assert.IsNotNull(LDBViewModel, 'LModel');
  LDBViewModel.Activate;
  lTest := LDBViewModel.SilentLogin(aUsername, aPassword);
{$IFDEF TESTPOSTGRES}
  Assert.AreEqual(expected, lTest, 'errata login');
{$ENDIF TESTPOSTGRES}
  LDBViewModel := nil;
end;

procedure TMVVMSystemTest.ModifyUser(const expected: Boolean;
  const aName, aLastName, Password, aSessionKey: string);
begin

end;

procedure TMVVMSystemTest.SessionKeyLogin(const expected: Boolean; const aSessionKey: string);
begin

end;

procedure TMVVMSystemTest.Setup;
begin
{$IFDEF TESTPOSTGRES}
  TJanuaUniPgApplication.RegisterFramework;
{$ELSE}
  TJanuaMockFiredacApplication.RegisterFireDacDataModules;
{$ENDIF TESTPOSTGRES}
end;

procedure TMVVMSystemTest.TearDown;
begin
  try

  except
    on E: Exception do
      RaiseException('TearDown', E, Self);

  end;
end;

procedure TMVVMSystemTest.TestDataModule;
var
  lDataModule: IJanuaSystemDataModule;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaSystemDataModule, lDataModule),
    'IJanuaSystemDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  lDataModule.Activate;
  Assert.IsNotNull(lDataModule.jdsUser, 'jdsUser');
  Assert.IsNotNull(lDataModule.jdsUserSession, 'jdsUserSession');
  Assert.IsNotNull(lDataModule.jdsUserProfile, 'jdsUserProfile');
  Assert.IsNotNull(lDataModule.jspLogin, 'jspLogin');
  Assert.IsNotNull(lDataModule.jspLoginSocial, 'jspLoginSocial');
  Assert.IsNotNull(lDataModule.jspUserDel, 'jspDelUser');
end;

procedure TMVVMSystemTest.TestLoginDataModule(const bExpected: Boolean; const aUsername, aPassword: string);
var
  lDataModule: IJanuaSystemDataModule;
  bTest: Boolean;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaSystemDataModule, lDataModule),
    'IJanuaSystemDataModule not registered');
  Assert.IsNotNull(lDataModule, 'lDataModule');
  // DataModule Initialization Create also the Result Param of the procedure and Sets its DataType
  lDataModule.Activate;
  // SELECT system.userlogin(:p_username, :p_password, :p_email)
  lDataModule.jspLogin.ParamByName('p_username').AsString := '';
  lDataModule.jspLogin.ParamByName('p_password').AsString := aPassword;
  lDataModule.jspLogin.ParamByName('p_email').AsString := aUsername;
  lDataModule.jspLogin.ExecSQL;
  bTest := lDataModule.jspLogin.Result.AsString <> '';
{$IFDEF TESTPOSTGRES}
  Assert.AreEqual(bExpected, bTest, 'Error Login ' + aUsername + '/' + aPassword);
{$ENDIF TESTPOSTGRES}
end;

procedure TMVVMSystemTest.TestLoginModel(const bExpected: Boolean; const aUsername, aPassword: string);
var
  LModel: IJanuaSystemUserSessionModel;
  LDBModel: IJanuaDBSystemUserSessionModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionModel, LDBModel),
    'IJanuaDBSystemUserSessionModel not registered');
  Assert.IsNotNull(LDBModel, 'LModel');
  LDBModel.Activate;
  Assert.IsTrue(Supports(LDBModel, IJanuaSystemUserSessionModel, LModel), 'LDBMOdel not supported');
  Assert.IsNotNull(LModel, 'LModel');
  LModel.UserLogin.Clear;
  LModel.UserLogin.Username.AsString := aUsername;
  LModel.UserLogin.Password.AsString := aPassword;
  LModel.Login;
{$IFDEF TESTPOSTGRES}
  Assert.AreEqual(bExpected, LModel.Login, 'Login Failed ' + aUsername + '/' + aPassword);
{$ENDIF ENDIF}
end;

procedure TMVVMSystemTest.TestCreateModelSession;
var
  LModel: IJanuaSystemUserSessionModel;
  LDBModel: IJanuaDBSystemUserSessionModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionModel, LDBModel),
    'IJanuaDBSystemUserSessionModel not registered');
  Assert.IsNotNull(LDBModel, 'LModel');
  LDBModel.Activate;
  Assert.IsTrue(Supports(LDBModel, IJanuaSystemUserSessionModel, LModel), 'LDBMOdel not supported');
  Assert.IsNotNull(LDBModel.jdsUser, 'jdsUser');
  Assert.IsNotNull(LDBModel.jdsUserSession, 'jdsUserSession');
  Assert.IsNotNull(LDBModel.jdsUserProfile, 'jdsUserProfile');
  Assert.IsNotNull(LModel.CurrentRecord, 'CurrentRecord');
end;

procedure TMVVMSystemTest.TestCreateViewModelSession;
var
  LViewModel: IJanuaSystemUserSessionViewModel;
  LDBViewModel: IJanuaDBSystemUserSessionViewModel;
  lTest: Boolean;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaDBSystemUserSessionViewModel, LDBViewModel),
    'IJanuaDBSystemUserSessionViewModel not registered');
  Assert.IsNotNull(LDBViewModel, 'LModel');
  LDBViewModel.Activate;
  lTest := Supports(LDBViewModel, IJanuaSystemUserSessionViewModel, LViewModel);
  Assert.IsTrue(lTest, 'LDBMOdel not supported');
  Assert.IsNotNull(LDBViewModel, 'LDBViewModel');
  Assert.IsNotNull(LDBViewModel.DBSystemUserSessionModel, 'DBSystemUserSessionModel');
  Assert.IsNotNull(LDBViewModel.SystemUserSessionModel, 'SystemUserSessionModel');
end;

initialization

TDUnitX.RegisterTestFixture(TMVVMSystemTest);

end.
