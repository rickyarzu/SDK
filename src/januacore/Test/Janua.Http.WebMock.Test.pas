unit Janua.Http.WebMock.Test;

interface

uses
  DUnitX.TestFramework,
  // System
  System.Generics.Collections, System.SysUtils, RESTRequest4D,
  // Web Mock
  WebMock;

type

  [TestFixture]
  TWebMockTest = class
  private
    WebMock: TWebMock;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure Get_WhenStubbed_ReturnsOK;
  end;

implementation

uses Janua.REST.Intf, Janua.REST.Client, Janua.REST.TestClasses;

procedure TWebMockTest.Get_WhenStubbed_ReturnsOK;
var
  lClient: IRESTTestClient;
  lRequest: IRequest;
  lResponse: IResponse;
  aUrl, aMockUrl: string;
begin
  // Arrange
  WebMock.StubRequest('GET', '/test');
  aMockUrl := WebMock.URLFor('/test');

  lClient := TRESTTestClient.Create;

  Assert.IsNotNull(lClient);
  lClient.ServerURL := 'http://127.0.0.1';
  lClient.ApiUrl := 'test';
  lClient.ServerPort := 8081;
  aUrl := lClient.GetBaseUrl;

  Assert.AreEqual(aMockUrl, aUrl);

  lRequest := lClient.GetRequest([]);
  Assert.IsNotNull(lRequest);

  lResponse := lRequest.Get;

  // Assert
  Assert.AreEqual(200, lResponse.StatusCode);
end;

procedure TWebMockTest.Setup;
begin
  { Client := THTTPClient.Create; }
  WebMock := TWebMock.Create(8081);
end;

procedure TWebMockTest.TearDown;
begin
  WebMock.Free;
  { Client.Free; }
end;

initialization

TDUnitX.RegisterTestFixture(TWebMockTest);

end.
