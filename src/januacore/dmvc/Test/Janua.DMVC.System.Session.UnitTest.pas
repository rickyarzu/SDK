unit Janua.DMVC.System.Session.UnitTest;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TSystemSession = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure GetSession;
  end;

implementation

uses
  // CarService
  Janua.Carservice.Driver.ViewModel.Intf, Janua.Carservice.Driver.Model.Impl, Janua.Carservice.Commons,
  Janua.Carservice.PgRemoteDrivers,
  // Janua
  Janua.Core.Functions, Janua.Application.Framework, Janua.Orm.Intf, Janua.Orm.Impl, Janua.ViewModels.Intf,
  Janua.REST.Client, Janua.REST.Intf, Janua.Http.Types, Janua.Core.Types, Janua.Core.DB.Types,
  // Janua Orm - Booking DMVC
   JOrm.System.Intf,  JOrm.System.Impl,
  // Special Test Classes
  Janua.REST.TestClasses;


procedure TSystemSession.GetSession;
var
  // TJanuaRESTClient = class(IJanuaRESTClient, IJanuaBindable)
  lRestClient: IJanuaRESTClient;
  lSystem: IUserSession;
begin
  lRestClient := TJanuaRESTClient.New;
  lRestClient.ApiUrl := 'session';
  Assert.AreEqual('http://127.0.0.1', lRestClient.ServerUrl, 'lRestClient.ServerURL');
  Assert.AreEqual('http://127.0.0.1:8081/session', lRestClient.GetFullUrl);
  Assert.IsTrue(lRestClient.Execute(TJanuaHttpMethod.jhmGet), lRestClient.Content);
  lSystem := TUserSession.Create;
  lSystem.asJson := lRestClient.Content;
end;

procedure TSystemSession.Setup;
begin
end;

procedure TSystemSession.TearDown;
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TSystemSession);

end.
