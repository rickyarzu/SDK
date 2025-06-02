unit Janua.Http.Types.Test.WithMocks;

interface

uses
  DUnitX.TestFramework, Janua.Http.Types, Janua.Test.Mocks, 
  Spring.Mocking, Spring.Collections, System.SysUtils, System.JSON;

type
  [TestFixture]
  TTestJanuaHttpTypesWithMocks = class(TObject)
  private
    FHttpClientMock: Mock<IJanuaHttpClient>;
    FCookieManagerMock: Mock<IJanuaCookieManager>;
    FMimeResolverMock: Mock<IJanuaMimeResolver>;
  public
    [Setup]
    procedure Setup;
    [TearDown] 
    procedure TearDown;
    
    // Test HTTP Authentication con Mock
    [Test]
    procedure TestHttpAuthWithMockedClient;
    [Test]
    procedure TestBearerAuthValidation;
    [Test]
    procedure TestBasicAuthWithMockedResponse;
    
    // Test Cookie Manager con Mock
    [Test]
    procedure TestCookieManagerAddAndRetrieve;
    [Test]
    procedure TestCookieManagerDomainFiltering;
    
    // Test MIME Type con Mock
    [Test]
    procedure TestMimeTypeResolutionWithMock;
    [Test]
    procedure TestUnsupportedMimeType;
    
    // Test HTTP Status con Mock responses
    [Test]
    procedure TestHttpStatusCodesWithMockedResponses;
    
    // Test combinati
    [Test]
    procedure TestAuthenticatedRequestWithCookies;
  end;

implementation

{ TTestJanuaHttpTypesWithMocks }

procedure TTestJanuaHttpTypesWithMocks.Setup;
begin
  // Crea i mock usando la factory
  FHttpClientMock := TJanuaMockFactory.CreateHttpClientMock;
  FCookieManagerMock := TJanuaMockFactory.CreateCookieManagerMock;
  FMimeResolverMock := TJanuaMockFactory.CreateMimeResolverMock;
end;

procedure TTestJanuaHttpTypesWithMocks.TearDown;
begin
  // I mock vengono automaticamente puliti quando escono dallo scope
end;

procedure TTestJanuaHttpTypesWithMocks.TestHttpAuthWithMockedClient;
var
  Auth: TJanuaHttpAuth;
  Response: string;
begin
  // Arrange
  Auth := TJanuaTestDataBuilder.BuildAuth(TJanuaAuthType.Bearer, 'test-token-123');
  TJanuaMockFactory.SetupHttpSuccessResponse(FHttpClientMock, '{"result": "success"}', 200);
  
  // Act
  Response := FHttpClientMock.Instance.Get('https://api.example.com/data', Auth);
  
  // Assert
  Assert.AreEqual('{"result": "success"}', Response);
  Assert.AreEqual(200, FHttpClientMock.Instance.GetStatusCode);
  
  // Verify the auth was used correctly
  FHttpClientMock.Verify.Once.Get('https://api.example.com/data', 
    Match<TJanuaHttpAuth>.When(
      function(const A: TJanuaHttpAuth): Boolean
      begin
        Result := (A.AuthType = TJanuaAuthType.Bearer) and (A.Token = 'test-token-123');
      end
    ));
end;

procedure TTestJanuaHttpTypesWithMocks.TestBearerAuthValidation;
var
  Auth: TJanuaHttpAuth;
  AuthenticatedResponse: string;
begin
  // Arrange - Setup mock to only respond to Bearer auth
  TJanuaMockFactory.SetupHttpAuthenticatedCall(FHttpClientMock, TJanuaAuthType.Bearer);
  
  // Act - Try with Bearer auth
  Auth := TJanuaTestDataBuilder.BuildAuth(TJanuaAuthType.Bearer, 'valid-token');
  AuthenticatedResponse := FHttpClientMock.Instance.Get('/api/secure', Auth);
  
  // Assert
  Assert.AreEqual('{"authenticated": true}', AuthenticatedResponse);
  
  // Act - Try with no auth
  Auth := TJanuaTestDataBuilder.BuildAuth(TJanuaAuthType.None);
  AuthenticatedResponse := FHttpClientMock.Instance.Get('/api/secure', Auth);
  
  // Assert - Should get empty response for non-bearer auth
  Assert.AreEqual('', AuthenticatedResponse);
end;

procedure TTestJanuaHttpTypesWithMocks.TestBasicAuthWithMockedResponse;
var
  Auth: TJanuaHttpAuth;
  Response: string;
begin
  // Arrange
  Auth := TJanuaTestDataBuilder.BuildAuth(TJanuaAuthType.Basic);
  
  // Setup mock to return user info when Basic auth is used
  FHttpClientMock.Setup.WillReturn('{"user": "testuser", "role": "admin"}').When.Get(
    '/api/userinfo',
    Match<TJanuaHttpAuth>.When(
      function(const A: TJanuaHttpAuth): Boolean
      begin
        Result := (A.AuthType = TJanuaAuthType.Basic) and 
                  (A.UserName = 'testuser') and 
                  (A.Password = 'testpass');
      end
    ));
  
  // Act
  Response := FHttpClientMock.Instance.Get('/api/userinfo', Auth);
  
  // Assert
  Assert.Contains(Response, '"user": "testuser"');
  Assert.Contains(Response, '"role": "admin"');
end;

procedure TTestJanuaHttpTypesWithMocks.TestCookieManagerAddAndRetrieve;
var
  Cookie1, Cookie2: TJWebBrowserCookie;
  RetrievedCookies: TArray<TJWebBrowserCookie>;
begin
  // Arrange
  Cookie1 := TJanuaTestDataBuilder.BuildCookie('session', 'abc123', 'example.com');
  Cookie2 := TJanuaTestDataBuilder.BuildCookie('user', 'john', 'example.com');
  
  // Setup mock behavior
  FCookieManagerMock.Setup.WillReturn(2).When.GetCookieCount;
  FCookieManagerMock.Setup.WillReturn(
    TArray<TJWebBrowserCookie>.Create(Cookie1, Cookie2)
  ).When.GetCookies('example.com', '/');
  
  // Act
  FCookieManagerMock.Instance.AddCookie(Cookie1);
  FCookieManagerMock.Instance.AddCookie(Cookie2);
  RetrievedCookies := FCookieManagerMock.Instance.GetCookies('example.com', '/');
  
  // Assert
  Assert.AreEqual(2, FCookieManagerMock.Instance.GetCookieCount);
  Assert.AreEqual(2, Length(RetrievedCookies));
  Assert.AreEqual('session', RetrievedCookies[0].Name);
  Assert.AreEqual('abc123', RetrievedCookies[0].Value);
  
  // Verify AddCookie was called
  FCookieManagerMock.Verify.Exactly(2).AddCookie(It.IsAny<TJWebBrowserCookie>);
end;

procedure TTestJanuaHttpTypesWithMocks.TestCookieManagerDomainFiltering;
var
  CookieExample, CookieOther: TJWebBrowserCookie;
  ExampleCookies, OtherCookies: TArray<TJWebBrowserCookie>;
begin
  // Arrange
  CookieExample := TJanuaTestDataBuilder.BuildCookie('test', 'value1', 'example.com');
  CookieOther := TJanuaTestDataBuilder.BuildCookie('test', 'value2', 'other.com');
  
  // Setup different responses for different domains
  FCookieManagerMock.Setup.WillReturn(
    TArray<TJWebBrowserCookie>.Create(CookieExample)
  ).When.GetCookies('example.com', '/');
  
  FCookieManagerMock.Setup.WillReturn(
    TArray<TJWebBrowserCookie>.Create(CookieOther)
  ).When.GetCookies('other.com', '/');
  
  // Act
  ExampleCookies := FCookieManagerMock.Instance.GetCookies('example.com', '/');
  OtherCookies := FCookieManagerMock.Instance.GetCookies('other.com', '/');
  
  // Assert
  Assert.AreEqual(1, Length(ExampleCookies));
  Assert.AreEqual('example.com', ExampleCookies[0].Domain);
  Assert.AreEqual(1, Length(OtherCookies));
  Assert.AreEqual('other.com', OtherCookies[0].Domain);
end;

procedure TTestJanuaHttpTypesWithMocks.TestMimeTypeResolutionWithMock;
var
  MimeType: string;
  MimeEnum: TJanuaMimeType;
begin
  // Act & Assert - Test known types
  MimeType := FMimeResolverMock.Instance.GetMimeType('.json');
  Assert.AreEqual('application/json', MimeType);
  
  MimeType := FMimeResolverMock.Instance.GetMimeType('.html');
  Assert.AreEqual('text/html', MimeType);
  
  MimeType := FMimeResolverMock.Instance.GetMimeType('.pdf');
  Assert.AreEqual('application/pdf', MimeType);
  
  // Test enum resolution
  MimeEnum := FMimeResolverMock.Instance.GetMimeTypeEnum('.json');
  Assert.AreEqual(TJanuaMimeType.jmtApplicationJson, MimeEnum);
  
  // Test supported check
  Assert.IsTrue(FMimeResolverMock.Instance.IsSupported('.json'));
  Assert.IsTrue(FMimeResolverMock.Instance.IsSupported('.html'));
  Assert.IsFalse(FMimeResolverMock.Instance.IsSupported('.xyz'));
end;

procedure TTestJanuaHttpTypesWithMocks.TestUnsupportedMimeType;
var
  MimeType: string;
  MimeEnum: TJanuaMimeType;
begin
  // Act - Test unknown extension
  MimeType := FMimeResolverMock.Instance.GetMimeType('.xyz');
  MimeEnum := FMimeResolverMock.Instance.GetMimeTypeEnum('.xyz');
  
  // Assert - Should return default values
  Assert.AreEqual('application/octet-stream', MimeType);
  Assert.AreEqual(TJanuaMimeType.jmtUnknown, MimeEnum);
  Assert.IsFalse(FMimeResolverMock.Instance.IsSupported('.xyz'));
end;

procedure TTestJanuaHttpTypesWithMocks.TestHttpStatusCodesWithMockedResponses;
var
  Response: string;
  StatusCode: Integer;
begin
  // Test 200 OK
  TJanuaMockFactory.SetupHttpSuccessResponse(FHttpClientMock, '{"status": "ok"}', 200);
  Response := FHttpClientMock.Instance.Get('/api/test', TJanuaHttpAuth.Create(TJanuaAuthType.None));
  StatusCode := FHttpClientMock.Instance.GetStatusCode;
  Assert.AreEqual(HTTP_STATUS.OK, StatusCode);
  
  // Test 404 Not Found
  TJanuaMockFactory.SetupHttpSuccessResponse(FHttpClientMock, '{"error": "not found"}', 404);
  Response := FHttpClientMock.Instance.Get('/api/missing', TJanuaHttpAuth.Create(TJanuaAuthType.None));
  StatusCode := FHttpClientMock.Instance.GetStatusCode;
  Assert.AreEqual(HTTP_STATUS.NotFound, StatusCode);
  
  // Test 500 Internal Server Error
  TJanuaMockFactory.SetupHttpSuccessResponse(FHttpClientMock, '{"error": "server error"}', 500);
  Response := FHttpClientMock.Instance.Get('/api/error', TJanuaHttpAuth.Create(TJanuaAuthType.None));
  StatusCode := FHttpClientMock.Instance.GetStatusCode;
  Assert.AreEqual(HTTP_STATUS.InternalServerError, StatusCode);
end;

procedure TTestJanuaHttpTypesWithMocks.TestAuthenticatedRequestWithCookies;
var
  Auth: TJanuaHttpAuth;
  Cookie: TJWebBrowserCookie;
  Headers: IDictionary<string, string>;
  Response: string;
begin
  // Arrange - Setup authenticated request with cookies
  Auth := TJanuaTestDataBuilder.BuildAuth(TJanuaAuthType.Bearer, 'secure-token');
  Cookie := TJanuaTestDataBuilder.BuildCookie('session', 'xyz789', 'api.example.com');
  
  // Setup mock to return success with cookie header
  Headers := TCollections.CreateDictionary<string, string>;
  Headers.Add('Content-Type', 'application/json');
  Headers.Add('Set-Cookie', 'session=xyz789; Path=/; Domain=api.example.com');
  
  FHttpClientMock.Setup.WillReturn('{"data": "secure content"}').When.Get(
    '/api/secure-data', 
    Match<TJanuaHttpAuth>.When(
      function(const A: TJanuaHttpAuth): Boolean
      begin
        Result := A.AuthType = TJanuaAuthType.Bearer;
      end
    ));
  FHttpClientMock.Setup.WillReturn(Headers).When.GetHeaders;
  
  // Setup cookie manager to store the cookie
  FCookieManagerMock.Setup.WillExecute(
    procedure(const Cookie: TJWebBrowserCookie)
    begin
      // Simulate storing the cookie
    end
  ).When.AddCookie(It.IsAny<TJWebBrowserCookie>);
  
  // Act
  Response := FHttpClientMock.Instance.Get('/api/secure-data', Auth);
  Headers := FHttpClientMock.Instance.GetHeaders;
  
  // Parse cookie from headers and add to cookie manager
  if Headers.ContainsKey('Set-Cookie') then
    FCookieManagerMock.Instance.AddCookie(Cookie);
  
  // Assert
  Assert.AreEqual('{"data": "secure content"}', Response);
  Assert.IsTrue(Headers.ContainsKey('Set-Cookie'));
  
  // Verify interactions
  FHttpClientMock.Verify.Once.Get('/api/secure-data', It.IsAny<TJanuaHttpAuth>);
  FCookieManagerMock.Verify.Once.AddCookie(It.IsAny<TJWebBrowserCookie>);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestJanuaHttpTypesWithMocks);

end.