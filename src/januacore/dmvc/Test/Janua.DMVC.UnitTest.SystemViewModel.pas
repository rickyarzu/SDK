unit Janua.DMVC.UnitTest.SystemViewModel;

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
    procedure CreateUser(const expected: Boolean; aUsername, aPassword: string);
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

{ TMVVMSystemTest }

procedure TMVVMSystemTest.AddAnagraph;
begin

end;

procedure TMVVMSystemTest.AddAnagraphViewModel;
begin

end;

procedure TMVVMSystemTest.CreateUser(const expected: Boolean; aUsername, aPassword: string);
begin

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
begin

end;

procedure TMVVMSystemTest.ModifyUser(const expected: Boolean; const aName, aLastName, Password,
  aSessionKey: string);
begin

end;

procedure TMVVMSystemTest.SessionKeyLogin(const expected: Boolean; const aSessionKey: string);
begin

end;

procedure TMVVMSystemTest.Setup;
begin

end;

procedure TMVVMSystemTest.TearDown;
begin

end;

procedure TMVVMSystemTest.TestCreateModelSession;
var
  LModel: IJanuaRemoteSystemUserSessionModel;
  LRemoteModel: IJanuaSystemUserSessionModel;
begin
  Assert.IsTrue(TJanuaApplicationFactory.TryGetInterface(IJanuaRemoteSystemUserSessionModel, LRemoteModel),
    'IJanuaDBSystemUserSessionModel not registered');
  Assert.IsNotNull(LRemoteModel, 'LModel');
  Assert.IsNotNull(LRemoteModel.UserSessionRecord, 'UserSessionRecord');
  Assert.IsTrue(Supports(LRemoteModel, IJanuaSystemUserSessionModel, LModel), 'IJanuaSystemUserSessionModel not supported');
  Assert.IsNotNull(LRemoteModel.jdsDataset, 'jdsDataset');
  Assert.IsNotNull(LModel.CurrentRecord, 'CurrentRecord');
  LRemoteModel.Activate;
end;

procedure TMVVMSystemTest.TestCreateViewModelSession;
begin

end;

procedure TMVVMSystemTest.TestDataModule;
begin

end;

procedure TMVVMSystemTest.TestLoginDataModule(const bExpected: Boolean; const aUsername, aPassword: string);
begin

end;

procedure TMVVMSystemTest.TestLoginModel(const bExpected: Boolean; const aUsername, aPassword: string);
begin

end;

end.
