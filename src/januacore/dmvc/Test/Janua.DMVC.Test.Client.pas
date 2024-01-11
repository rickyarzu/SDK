unit Janua.DMVC.Test.Client;

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
  Janua.REST.Types, Janua.Core.Types, Janua.Http.Types,
  // REST
  MVCFramework;

type

  IRESTTestClient = interface(IRESTClient)
    function GetBaseUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestClient = class(TRESTClient, IRESTTestClient)
  protected
    function GetBaseUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  IRESTTestLogin = interface(IRESTLoginClient)
    function GetBaseUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestLogin = class(TRESTClientLogin, IRESTTestLogin)
  protected
    function GetBaseUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  IRESTTestRecord = interface(IRESTRecordClient)
    function GetBaseUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestRecord = class(TRESTRecordClient, IRESTTestRecord)
  protected
    function GetBaseUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  IRESTTestDBClient = interface(IRESTDBClient)
    function GetBaseUrl: string;
    function GetRequest(const aResources: TResources = []): IRequest;
  end;

  TRESTTestDBClient = class(TRESTDBClient, IRESTTestDBClient)
  protected
    function GetBaseUrl: string; override;
    function GetRequest(const aResources: TResources = []): IRequest; override;
  end;

  [TestFixture]
  TestRESTClient = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure CreateClient;
    [Test]
    procedure CreateLogin;
    [Test]
    procedure CreateDBClient;
    [Test]
    procedure CreateRecordClient;
    [Test]
    procedure CreateRecordSetClient;
  end;

implementation

{ TestRESTClient }

procedure TestRESTClient.CreateClient;
var
  lClient: IRESTTestClient;
  lRequest: IRequest;
  aUrl: string;
begin
  lClient := TRESTTestClient.Create;
  Assert.IsNotNull(lClient);
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost', aUrl);
  lClient.ApiUrl := 'test';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost/test', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost:8081/test', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);

end;

procedure TestRESTClient.CreateDBClient;
// TRESTTestDBClient = class(TRESTDBClient, IRESTTestDBClient)
var
  lClient: IRESTTestDBClient;
  lRequest: IRequest;
  aUrl: string;
begin
  lClient := TRESTTestDBClient.Create;
  Assert.IsNotNull(lClient);
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost', aUrl);
  lClient.ApiUrl := 'dataset';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost/dataset', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost:8081/dataset', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);
end;

procedure TestRESTClient.CreateLogin;
var
  lClient: IRESTTestLogin;
  lRequest: IRequest;
  aUrl: string;
begin
  // TRESTTestLogin = class(TRESTClientLogin, IRESTTestLogin)
  lClient := TRESTTestLogin.Create;
  Assert.IsNotNull(lClient);
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost/login', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost:8081/login', aUrl);
  lClient.ApiUrl := 'system/login';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost:8081/system/login', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);

end;

procedure TestRESTClient.CreateRecordClient;
var
  lClient: IRESTTestRecord;
  lRequest: IRequest;
  aUrl: string;
begin
  // TRESTTestRecord = class(TRESTRecordClient, IRESTTestRecord)
  lClient := TRESTTestRecord.Create;
  Assert.IsNotNull(lClient);
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost/record', aUrl);
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost:8081/record', aUrl);
  lClient.ApiUrl := 'anagraph/record';
  aUrl := lClient.GetBaseUrl;
  Assert.AreEqual('http://localhost:8081/anagraph/record', aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);

end;

procedure TestRESTClient.CreateRecordSetClient;
begin

end;

procedure TestRESTClient.Setup;
begin

end;

procedure TestRESTClient.TearDown;
begin

end;

{ TRESTTestClient }

function TRESTTestClient.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestClient.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

{ TRESTTestLogin }

function TRESTTestLogin.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestLogin.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

{ TRESTTestRecord }

function TRESTTestRecord.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestRecord.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

{ TRESTTestDBClient }

function TRESTTestDBClient.GetBaseUrl: string;
begin
  Result := inherited
end;

function TRESTTestDBClient.GetRequest(const aResources: TResources): IRequest;
begin
  Result := inherited
end;

end.
