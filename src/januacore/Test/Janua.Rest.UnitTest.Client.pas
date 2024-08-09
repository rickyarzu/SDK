unit Janua.Rest.UnitTest.Client;

interface

uses
  DUnitX.TestFramework,
  // System
  System.Generics.Collections, System.SysUtils, RESTRequest4D,
  // Spring
  Spring.Collections,
  // Janua
  Janua.Rest.Intf, Janua.Rest.Client, Janua.Orm.Intf, Janua.Test.FireDac.dmVirtual,
  Janua.Orm.Test.Intf, Janua.Server.Intf,
  // Janua Types
  Janua.Rest.Types, Janua.Core.Types, Janua.Http.Types,
  // WebMock
  WebMock.Response, WebMock.Http.Messages, WebMock;

type

  [TestFixture]
  TestRESTClient = class
  private
    WebMock: TWebMock;
    FDMComponent: TTestDataModuleComponent;
    TestDM: ITestDMComponent;
    FRecordTest: IJanuaTestNestedSubRecord;
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
    // [Test]
    procedure eCreateRecordSetClient;
    [Test]
    procedure fLogin;
    [Test]
    procedure gGetDBClient;
    [Test]
    procedure hGetRecordClient;
    // [Test]
    procedure iTestInterfaces;
  end;

implementation

uses
  System.Rtti, Spring, Janua.Orm.Impl, System.JSON, System.DateUtils,
  Janua.Application.Framework, Janua.Server.Impl, Janua.Orm.Test.Impl, Janua.Core.JSON,
  // WebMock
  WebMock.ResponseStatus,
  // Test Login
  JOrm.System.Intf, JOrm.System.Impl,
  // Janua Librarie
  Janua.Core.DB.Types, Janua.Orm.FireDac, Janua.Core.Functions, Janua.Rest.TestClasses;

{ TestRESTClient }

procedure TestRESTClient.aCreateClient;
var
  lClient: IRESTTestClient;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aMockUrl, aJson: string;
begin
  // Setup WebMock
  WebMock.StubRequest('GET', '/test');
  aMockUrl := WebMock.URLFor('/test');
  // SetupClient
  lClient := TRESTTestClient.Create;
  Assert.IsNotNull(lClient);
  // Setup Client URL
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ApiUrl := 'test';
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual(aMockUrl, aUrl);
  // Test Request
  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);
  lResponse := lRequest.Get;
  // Assert
  Assert.AreEqual(200, lResponse.StatusCode);

end;

procedure TestRESTClient.cCreateDBClient;
// ********************************************************************************************
// **** DB Client è pensato per 'gestire' tutto il ciclo di connessione di un Memory Dataset **
// **** con un Dataset Remoto ed un Memory Database usando una connessione REST http MVC     **
// **** Per fare questo impiega una proprietà
var
  lClient: IRESTTestDBClient;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aMockUrl, aTmp, aJsonBody, aBinResponse: string;
begin
  lClient := TRESTTestDBClient.Create;
  lClient.JanuaDataset := TJanuaVtMemDataset.CreateWithEntities([]);
  lClient.JanuaDataset.Params.AddParam('gid', TJanuaFieldType.jptInteger, TValue(1));

  aMockUrl := WebMock.URLFor('/dataset');

  // Synchronize Servers
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ServerPort := 8081;
  lClient.ApiUrl := 'dataset';
  lClient.DataFormat := TRestFormat.rfBinary;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual(aMockUrl, aUrl, 'MockUrl error');

  // ------------- REST Client DB full URL Test --------------------------------

  aTmp := lClient.GetTestResourcesUrl;
  // Setup WebMock DBUrl
  aMockUrl := WebMock.URLFor(ConcatUrl('/dataset', aTmp));

  // Test Request
  lRequest := lClient.GetRequest([CRestFormat[lClient.JanuaDataset.SerializeFormat],
    lClient.JanuaDataset.Params.AsBase64Url]);
  Assert.IsNotNull(lRequest);
  Assert.AreEqual(aMockUrl, lRequest.BaseURL);

  // AResponse Dataset Generation:
  Assert.IsNotNull(TestDM.MemDataset, 'TestDM.MemDataset');
  Assert.AreNotEqual(0, TestDM.MemDataset.RecordCount, 'TestDM.MemDataset.RecordCount');
  aBinResponse := TestDM.MemDataset.Serialize('bin');
  Assert.AreNotEqual('', aBinResponse, 'aBinResponse');

  // WebMock responding with Serializer
  // RETRIEVE - GET
  WebMock.StubRequest('GET', ConcatUrl('/dataset', aTmp)).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aBinResponse);
    end);

  // Test Simple GET
  lResponse := lRequest.Get;
  // Assert
  Assert.AreEqual(200, lResponse.StatusCode);

  aBinResponse := lResponse.Content;
  try
    lClient.JanuaDataset.DeSerialize('bin', aBinResponse);
    Assert.AreEqual(TestDM.MemDataset.RecordCount, lClient.JanuaDataset.RecordCount, 'RecordCount');
  Except
    on e: exception do
      raise exception.Create('lClient.JanuaDataset.DeSerialize: ' + e.Message);
  end;
end;

procedure TestRESTClient.bCreateLogin;
var
  lClient: IRESTTestLogin;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aMockUrl, aTmp, aJsonBody, aJsonResponse: string;
begin
  aJsonBody := '{"token":"' +
    'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJETVZDRnJhbWV3b3JrIEpXVCBBdXRob3JpdHkiLC' +
    'JleHAiOjE2OTg0OTQ0MjgsIm5iZiI6MTY5ODQ5MDUyOCwiZGVmYXVsdF9zY2hlbWEiOiIzNiIsInNlc3Npb25faWQiOiJhZmY2MTdjNT'
    + 'UzOTVjN2U3N2YxYWM0YzVkNDliMzgxOGRhMmY5OTk3ZTI4ZjQ4MmFlNTY5MjY5ZmQ4ZDAxODcxIiwicm9sZXMiOiJhZG1pbix1c2VyIi'
    + 'widXNlcm5hbWUiOiJ0ZXN0QGVyZ29tZXJjYXRvci5jb20iLCJ1c2VyX3VpZCI6InswMTk3MDZGMC0wMDAwLTAwMDAtNDAzRi1GQjAwMD'
    + 'AwMDAwMDB9IiwidXNlcl9pZCI6IjI2In0.RIzgE3ww31NDq9eClUeSyp_Vi2EDSrjoIFMHu-lR4acKaGY_Lu_gmf2YGB9QV2RerZrp6V'
    + '6JgAViw_QhWDstJA"}';

  WebMock.StubRequest('GET', '/system/login').ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aJsonBody);
    end);

  aMockUrl := WebMock.URLFor('/system/login');

  lClient := TRESTTestLogin.Create;

  Assert.IsNotNull(lClient);
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ApiUrl := 'system/login';
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;

  Assert.AreEqual(aMockUrl, aUrl);

  lRequest := lClient.GetRequest([]).AcceptEncoding('application/json');
  Assert.IsNotNull(lRequest);

  Assert.AreEqual(aMockUrl, lRequest.FullRequestURL(False), 'Request Url');

  lResponse := lRequest.Get;
  // Assert
  Assert.AreEqual(200, lResponse.StatusCode);
  aJsonResponse := lResponse.Content;
  Assert.AreEqual(aJsonBody, aJsonResponse, 'Json Response');

end;

procedure TestRESTClient.dCreateRecordClient;
var
  lClient: IRESTTestRecord;
  lRecord: IJanuaRecord;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aMockUrl, aFinalUrl, aTmp, aJsonBody, aJsonResponse: string;
begin
  aJsonBody := FRecordTest.AsJsonWithMeta;
  aTmp := URLEncode64(FRecordTest.GUIDString);

  WebMock.StubRequest('GET', '/test/record/' + aTmp).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aJsonBody, 'application/json');
    end);

  aMockUrl := WebMock.URLFor('/test/record');
  aFinalUrl := WebMock.URLFor('/test/record/' + aTmp);

  // TRESTTestRecord = class(TRESTRecordClient, IRESTTestRecord)
  lClient := TRESTTestRecord.Create;
  Assert.IsNotNull(lClient);
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ServerPort := 8081;
  lClient.ApiUrl := 'test/record';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual(aMockUrl, aUrl, 'Base Url');

  lRequest := lClient.GetRequest([aTmp]).AcceptEncoding('application/json');
  Assert.IsNotNull(lRequest);

  aUrl := lRequest.FullRequestURL(False);

  Assert.AreEqual(aFinalUrl, aUrl, 'Final Url');

  lResponse := lRequest.Get;
  // Assert
  Assert.AreEqual(200, lResponse.StatusCode);
  aJsonResponse := lResponse.Content;
  Assert.AreEqual(aJsonBody, aJsonResponse, 'Json Response');

  try
    lRecord := TJanuaOrmFactory.CreateRecordWithMeta(aJsonResponse);
  except
    on e: exception do
      raise exception.Create('lRecord := TJanuaRecord.Create(aJsonResponse) ' + e.Message);
  end;
  Assert.AreEqual(FRecordTest.FieldCount, lRecord.FieldCount);
  Assert.AreEqual(FRecordTest.RecordCount, lRecord.RecordCount);

end;

procedure TestRESTClient.eCreateRecordSetClient;
begin

end;

procedure TestRESTClient.fLogin;
var
  lClient: IRESTTestLogin;
  aUrl, aMockUrl, aTmp, aJsonBody: string;
begin
  aJsonBody := '{"token":"' +
    'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJETVZDRnJhbWV3b3JrIEpXVCBBdXRob3JpdHkiLC' +
    'JleHAiOjE2OTg0OTQ0MjgsIm5iZiI6MTY5ODQ5MDUyOCwiZGVmYXVsdF9zY2hlbWEiOiIzNiIsInNlc3Npb25faWQiOiJhZmY2MTdjNT'
    + 'UzOTVjN2U3N2YxYWM0YzVkNDliMzgxOGRhMmY5OTk3ZTI4ZjQ4MmFlNTY5MjY5ZmQ4ZDAxODcxIiwicm9sZXMiOiJhZG1pbix1c2VyIi'
    + 'widXNlcm5hbWUiOiJ0ZXN0QGVyZ29tZXJjYXRvci5jb20iLCJ1c2VyX3VpZCI6InswMTk3MDZGMC0wMDAwLTAwMDAtNDAzRi1GQjAwMD'
    + 'AwMDAwMDB9IiwidXNlcl9pZCI6IjI2In0.RIzgE3ww31NDq9eClUeSyp_Vi2EDSrjoIFMHu-lR4acKaGY_Lu_gmf2YGB9QV2RerZrp6V'
    + '6JgAViw_QhWDstJA"}';

  WebMock.StubRequest('GET', '/system/login').ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aJsonBody);
    end);

  aMockUrl := WebMock.URLFor('/system/login');

  // Client Creation and Setup SilentLogin('test@ergomercator.com', 'ergotest');
  lClient := TRESTTestLogin.Create;
  Assert.IsNotNull(lClient);
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ApiUrl := 'system/login';
  lClient.ServerPort := 8081;
  lClient.Username := 'test@ergomercator.com';
  lClient.Password := 'ergotest';
  // Url Check Before Test
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual(aMockUrl, aUrl);
  // Login Mocked Test
  Assert.AreEqual(True, lClient.Login);

end;

procedure TestRESTClient.gGetDBClient;
// ********************************************************************************************
// **** DB Client è pensato per 'gestire' tutto il ciclo di connessione di un Memory Dataset **
// **** con un Dataset Remoto ed un Memory Database usando una connessione REST http MVC     **
// **** Per fare questo impiega una proprietà
var
  lClient: IRESTTestDBClient;
  aUrl, aMockUrl, aTmp, aJsonBody, aBinResponse: string;
begin
  lClient := TRESTTestDBClient.Create;
  lClient.JanuaDataset := TJanuaVtMemDataset.CreateWithEntities([]);
  lClient.JanuaDataset.Params.AddParam('gid', TJanuaFieldType.jptInteger, TValue(1));

  aMockUrl := WebMock.URLFor('/dataset');

  // Synchronize Servers
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ServerPort := 8081;
  lClient.ApiUrl := 'dataset';
  lClient.DataFormat := TRestFormat.rfBinary;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual(aMockUrl, aUrl, 'MockUrl error');

  // ------------- REST Client DB full URL Test --------------------------------

  aTmp := lClient.GetTestResourcesUrl;
  // Setup WebMock DBUrl
  aMockUrl := WebMock.URLFor(ConcatUrl('/dataset', aTmp));
  // Test Request URL
  Assert.AreEqual(aMockUrl, lClient.GetBaseUrl + '/' + lClient.GetTestResourcesUrl);

  // AResponse Dataset Generation:
  aBinResponse := TestDM.MemDataset.Serialize('bin');


  // CRUD RECORD MATRIX

  // CREATE - POST - I Espect aJsonBody and answer with 'Created' code
  WebMock.StubRequest('POST', '/dataset').WithBody(aJsonBody);

  // RETRIEVE - GET
  WebMock.StubRequest('GET', ConcatUrl('/dataset', aTmp)).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aBinResponse);
    end);

  // UPDATE - PUT - I Espect aJsonBody and answer with 'Created' code
  WebMock.StubRequest('PUT', '/dataset').WithBody(aJsonBody).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aBinResponse);
    end);

      { TODO : Manage and Test Delete procedure WebMock and REST Dataset }
  {
    // DELETE - DELETE
    WebMock.StubRequest('DELETE', ConcatUrl('/dataset', aTmp));
    try
    lClient.LoadData;
    except
    on e: exception do
    raise exception.Create('lClient.LoadData: ' + e.Message);
    end;
  }

  // Assert.AreEqual(TestDM.MemDataset.RecordCount, lClient.JanuaDataset.RecordCount, 'RecordCount');

end;

procedure TestRESTClient.hGetRecordClient;
var
  lClient: IRESTTestRecord;
  lRecord: IJanuaTestNestedSubRecord;
  aUrl, aMockUrl, aFullUrl, aTmp, aJsonBody, aJsonResponse: string;
begin
  aJsonBody := FRecordTest.asJson;
  lRecord := TJanuaTestNestedsSubRecord.Create('local_test');
  aTmp := URLEncode64(FRecordTest.GUIDString);

  aMockUrl := WebMock.URLFor('/test/record');
  aFullUrl := WebMock.URLFor('/test/record/' + aTmp);

  // CRUD RECORD MATRIX

  // CREATE - POST - I Espect aJsonBody and answer with 'Created' code
  WebMock.StubRequest('POST', '/test/record').WithBody(aJsonBody).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aJsonBody, 'application/json');
    end);

  // RETRIEVE - GET
  WebMock.StubRequest('GET', '/test/record/' + aTmp).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aJsonBody, 'application/json');
    end);

  // UPDATE - PUT - I Espect aJsonBody and answer with 'Created' code
  WebMock.StubRequest('PUT', '/test/record').WithBody(aJsonBody).ToRespondWith(
    procedure(const ARequest: IWebMockHTTPRequest; const AResponse: IWebMockResponseBuilder)
    begin
      AResponse.WithStatus(200).WithBody(aJsonBody, 'application/json');
    end);

  // DELETE - GET
  WebMock.StubRequest('DELETE', '/test/record/' + aTmp);

  // TRESTTestRecord = class(TRESTRecordClient, IRESTTestRecord)
  lClient := TRESTTestRecord.Create;
  Assert.IsNotNull(lClient);
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ServerPort := 8081;
  lClient.ApiUrl := 'test/record';
  lClient.GUID := FRecordTest.GUID;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual(aMockUrl, aUrl, 'aMockUrl');
  aUrl := lClient.GetBaseUrl + '/' + lClient.GetTestResourcesUrl;
  Assert.AreEqual(aFullUrl, aUrl, 'aMockUrl');

  // Assegno al Client Rest un Record da Popolare
  lClient.JanuaRecord := lRecord;
  // Eseguo la funzione Retrieve della Matrice CRUD.
  Assert.IsTrue(lClient.Retrieve(FRecordTest.GUID));
  // Verifico di Avere caricato i Dati 'Giusti'
  Assert.AreEqual(FRecordTest.RecordCount, lRecord.RecordCount, 'FRecordTest <> lRecord');

  Assert.AreEqual(FRecordTest.TestInteger.AsInteger, lRecord.TestInteger.AsInteger, 'Int');
  Assert.AreEqual(FRecordTest.TestString.AsString, lRecord.TestString.AsString, 'Str');
  Assert.AreEqual(FRecordTest.TestDateTime.AsDateTime, lRecord.TestDateTime.AsDateTime, 'Date');
  Assert.AreEqual(FRecordTest.TestDouble.AsFloat, lRecord.TestDouble.AsFloat, 'Float');
  Assert.AreEqual(FRecordTest.TestBoolean.AsBoolean, lRecord.TestBoolean.AsBoolean, 'Bool');
  Assert.AreEqual(FRecordTest.TestMemo.AsString, lRecord.TestMemo.AsString, 'Memo');

  Assert.IsTrue(lClient.CreateRecord, 'lClient.CreateRecord');
  Assert.IsTrue(lClient.Update, 'lClient.Update');
  Assert.IsTrue(lClient.Delete, 'lClient.Delete');

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
  FDMComponent := TTestDataModuleComponent.Create(nil);
  WebMock := TWebMock.Create(8081);
  FRecordTest := TJanuaTestNestedsSubRecord.Create('TestS');
  FRecordTest.Append;
  FRecordTest.TestInteger.AsInteger := 1;
  FRecordTest.TestString.AsString := 'test';
  FRecordTest.TestDateTime.AsDateTime := now();
  FRecordTest.TestDouble.AsFloat := 11.121;
  FRecordTest.TestBoolean.AsBoolean := True;
  FRecordTest.TestMemo.AsString := 'Test Memo';
  FRecordTest.Post;
  Assert.IsTrue(Supports(FDMComponent, ITestDMComponent, TestDM));
end;

procedure TestRESTClient.TearDown;
begin
  WebMock.Free;
  TestDM := nil;
  FDMComponent.Free;
end;

end.
