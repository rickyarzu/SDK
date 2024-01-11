unit Janua.DMVC.UnitTest.Client;

interface

uses
  DUnitX.TestFramework,
  // System
  System.Generics.Collections, System.SysUtils, RESTRequest4D,
  // Spring
  Spring.Collections,
  // Janua
  Janua.REST.Intf, Janua.REST.Client,
  // Janua Types
  Janua.REST.Types, Janua.Core.Types, Janua.Http.Types;

type

  [TestFixture]
  TestRESTClient = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure aCreateClient;
    [Test]
    procedure bCreateLogin;
    [Test]
    procedure cCreateDBClient;
    [Test]
    procedure dCreateRecordClient;
    [Test]
    procedure eCreateRecordSetClient;
    [Test]
    procedure fLogin;
    [Test]
    procedure gGetPublicClient;
    [Test]
    procedure hGetPrivateClient;
    [Test]
    procedure iTestInterfaces;
  end;

implementation

uses Janua.Core.Functions, Janua.Application.Framework, Janua.REST.TestClasses;

{ TestRESTClient }

procedure TestRESTClient.aCreateClient;
var
  lClient: IRESTTestClient;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aTest: string;
begin
  lClient := TRESTTestClient.Create;
  lClient.ServerPort := 0;
  Assert.IsNotNull(lClient);
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1', aUrl);
  lClient.ApiUrl := 'test';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1/test', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1:8081/test', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);
end;

procedure TestRESTClient.cCreateDBClient;
// TRESTTestDBClient = class(TRESTDBClient, IRESTTestDBClient)
var
  lClient: IRESTTestDBClient;
  lRequest: IRequest;
  aUrl: string;
begin
  lClient := TRESTTestDBClient.Create;
  lClient.ServerPort := 0;
  Assert.IsNotNull(lClient);
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1', aUrl);
  lClient.ApiUrl := '';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1:8081', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);
end;

procedure TestRESTClient.bCreateLogin;
var
  lClient: IRESTTestLogin;
  lRequest: IRequest;
  aUrl: string;
begin
  // TRESTTestLogin = class(TRESTClientLogin, IRESTTestLogin)
  lClient := TRESTTestLogin.Create;
  Assert.IsNotNull(lClient);
  lClient.ServerPort := 0;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1/login', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1:8081/login', aUrl);
  lClient.ApiUrl := 'system/login';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1:8081/system/login', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);

end;

procedure TestRESTClient.dCreateRecordClient;
var
  lClient: IRESTTestRecord;
  lRequest: IRequest;
  aUrl: string;
begin
  // TRESTTestRecord = class(TRESTRecordClient, IRESTTestRecord)
  lClient := TRESTTestRecord.Create;
  Assert.IsNotNull(lClient);
  lClient.ServerPort := 0;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1/record', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1:8081/record', aUrl);
  lClient.ApiUrl := 'anagraph/record';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://127.0.0.1:8081/anagraph/record', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);

end;

procedure TestRESTClient.eCreateRecordSetClient;
begin

end;

procedure TestRESTClient.fLogin;
var
  lClient: IRESTTestLogin;
  lRequest: IRequest;
  aUrl: string;
begin
  // TRESTTestLogin = class(TRESTClientLogin, IRESTTestLogin)
  lClient := TRESTTestLogin.Create;
  Assert.IsNotNull(lClient);
  lClient.ServerPort := 0;
  lClient.ServerURL := TJanuaApplication.RESTClientConf.Server;
  lClient.Username := TJanuaApplication.RESTClientConf.Username;
  lClient.Password := TJanuaApplication.RESTClientConf.Password;
  lClient.ServerPort := TJanuaApplication.RESTClientConf.Port;
  aUrl := lClient.GetBaseUrl;
  Assert.IsTrue(lClient.Login, 'login failed ' + aUrl);
end;

procedure TestRESTClient.gGetPublicClient;
var
  lClient: IRESTTestClient;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aTest: string;
begin
  lClient := TRESTTestClient.Create;
  lClient.ServerPort := 0;
  Assert.IsNotNull(lClient);

  lClient.ServerURL := TJanuaApplication.RESTClientConf.Server;
  lClient.ServerPort := TJanuaApplication.RESTClientConf.Port;
  lClient.ApiUrl := '/test/private/role1';
  lClient.SetMimeType(TJanuaMimeType.jmtTextPlain);

  aUrl := lClient.GetBaseUrl;

  Assert.IsTrue(lClient.AuthenticationType = jatJWT, 'AuthenticationType <> Jwt');

  try
    lRequest := lClient.GetRequest([]);
    Assert.IsNotNull(lRequest);
    lResponse := lRequest.Get;
    Assert.IsNotNull(lResponse);
    aTest := lResponse.Content;
    Assert.AreNotEqual('', aTest, 'aTest empty response ' + aUrl);
  except
    on e: exception do
      raise exception.Create('Error Getting ' + aUrl + sLineBreak + e.Message);
  end;
end;

procedure TestRESTClient.hGetPrivateClient;
var
  lClient: IRESTTestClient;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aTest: string;
begin
  lClient := TRESTTestClient.Create;
  lClient.ServerPort := 0;
  Assert.IsNotNull(lClient);

  lClient.ServerURL := TJanuaApplication.RESTClientConf.Server;
  lClient.ServerPort := TJanuaApplication.RESTClientConf.Port;
  lClient.ApiUrl := '/test/private/role1';

  aUrl := lClient.GetBaseUrl;

  Assert.IsTrue(lClient.AuthenticationType = jatJWT, 'AuthenticationType <> Jwt');

  try
    lRequest := lClient.GetRequest([]);
    Assert.IsNotNull(lRequest);
    lResponse := lRequest.Get;
    Assert.IsNotNull(lResponse);
    aTest := lResponse.Content;
    Assert.AreNotEqual('', aTest, 'aTest empty response ' + aUrl);
  except
    on e: exception do
      raise exception.Create('Error Getting ' + aUrl + sLineBreak + e.Message);
  end;
end;

procedure TestRESTClient.iTestInterfaces;
var
  lClient: IJanuaRESTClient;
  lRESTLoginClient: IRESTLoginClient;
  lRESTRecordClient: IRESTRecordClient;
  lRESTDBClient: IRESTDBClient;
begin
  // TryGetInterface(const IID: TGUID; out Intf; const aRaise: Boolean = True)
  TJanuaApplicationFactory.TryGetInterface(IJanuaRESTClient, lClient);
  Assert.IsNotNull(lClient);
  TJanuaApplicationFactory.TryGetInterface(IRESTLoginClient, lRESTLoginClient);
  Assert.IsNotNull(lRESTLoginClient);
  TJanuaApplicationFactory.TryGetInterface(IRESTRecordClient, lRESTRecordClient);
  Assert.IsNotNull(lRESTRecordClient);
  TJanuaApplicationFactory.TryGetInterface(IRESTDBClient, lRESTDBClient);
  Assert.IsNotNull(lRESTDBClient);
end;

procedure TestRESTClient.Setup;
begin

end;

procedure TestRESTClient.TearDown;
begin

end;

end.
