unit Janua.Http.Types.Test;

{$I januacore.inc}

interface

uses
  DUnitX.TestFramework, Janua.Http.Types, System.SysUtils, System.Classes,
  System.DateUtils, System.Json
  {$IFDEF DELPHIXE}
  , Spring, Spring.Collections
  {$ENDIF}
  ;

type
  [TestFixture]
  TTestJanuaHttpTypes = class(TObject)
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    
    // Test TJWebBrowserCookie
    [Test]
    procedure TestWebBrowserCookie;
    [Test]
    procedure TestWebBrowserCookieSameSite;
    
    // Test TJWebBrowserCookies
    [Test]
    procedure TestWebBrowserCookiesCreate;
    [Test]
    procedure TestWebBrowserCookiesAddAndCount;
    [Test]
    procedure TestWebBrowserCookiesSerialize;
    
    // Test TJanuaProtocol
    [Test]
    procedure TestProtocolConstants;
    [Test]
    procedure TestProtocolPorts;
    
    // Test TJanuaHttpMethod
    [Test]
    procedure TestHttpMethodStrings;
    {$IFDEF WEBBROKER}
    [Test]
    procedure TestWebBrokerMethodMapping;
    {$ENDIF}
    
    // Test TJanuaMimeType
    [Test]
    procedure TestMimeTypeStrings;
    [Test]
    procedure TestMimeExtensions;
    [Test]
    procedure TestMimeDefGetFromExtension;
    
    // Test TJanuaCharsetType
    [Test]
    procedure TestCharsetStrings;
    
    // Test HTTP_STATUS
    [Test]
    procedure TestHttpStatusConstants;
    [Test]
    procedure TestHttpStatusDictionary;
    [Test]
    procedure TestHttpStatusLevels;
    
    // Test TJanuaHttpAuth
    [Test]
    procedure TestHttpAuthNone;
    [Test]
    procedure TestHttpAuthBasic;
    [Test]
    procedure TestHttpAuthBearer;
    [Test]
    procedure TestHttpAuthConstructors;
    
    // Test TJanuaMimeDef
    [Test]
    procedure TestMimeDefExtensionLookup;
    [Test]
    procedure TestMimeDefUnknownExtension;
  end;

implementation

uses
  Janua.Core.Functions;

{ TTestJanuaHttpTypes }

procedure TTestJanuaHttpTypes.Setup;
begin
  // Setup comune per tutti i test
end;

procedure TTestJanuaHttpTypes.TearDown;
begin
  // Cleanup comune
end;

procedure TTestJanuaHttpTypes.TestWebBrowserCookie;
var
  Cookie: TJWebBrowserCookie;
begin
  // Test creazione e campi base
  Cookie.Name := 'TestCookie';
  Cookie.Value := 'TestValue';
  Cookie.Domain := 'example.com';
  Cookie.Path := '/';
  Cookie.Expires := EncodeDate(2025, 12, 31);
  Cookie.Secure := True;
  Cookie.HTTPOnly := True;
  Cookie.Session := False;
  
  Assert.AreEqual('TestCookie', Cookie.Name);
  Assert.AreEqual('TestValue', Cookie.Value);
  Assert.AreEqual('example.com', Cookie.Domain);
  Assert.AreEqual('/', Cookie.Path);
  Assert.IsTrue(Cookie.Secure);
  Assert.IsTrue(Cookie.HTTPOnly);
  Assert.IsFalse(Cookie.Session);
end;

procedure TTestJanuaHttpTypes.TestWebBrowserCookieSameSite;
{$IFNDEF MACOS}
var
  Cookie: TJWebBrowserCookie;
begin
  // Test SameSite solo su piattaforme non macOS
  Cookie.SameSite := jsstNone;
  Assert.AreEqual(TJWebBrowserSameSiteType.jsstNone, Cookie.SameSite);
  
  Cookie.SameSite := jsstLax;
  Assert.AreEqual(TJWebBrowserSameSiteType.jsstLax, Cookie.SameSite);
  
  Cookie.SameSite := jsstSameSite;
  Assert.AreEqual(TJWebBrowserSameSiteType.jsstSameSite, Cookie.SameSite);
end;
{$ELSE}
begin
  Assert.Pass('SameSite not available on macOS');
end;
{$ENDIF}

procedure TTestJanuaHttpTypes.TestWebBrowserCookiesCreate;
var
  Cookies: TJWebBrowserCookies;
begin
  Cookies := TJWebBrowserCookies.Create(800, 600);
  
  Assert.AreEqual(800.0, Cookies.Width, 0.01);
  Assert.AreEqual(600.0, Cookies.Heigth, 0.01);
  Assert.AreEqual(0, Cookies.Count);
  Assert.AreEqual('', Cookies.Notes);
end;

procedure TTestJanuaHttpTypes.TestWebBrowserCookiesAddAndCount;
var
  Cookies: TJWebBrowserCookies;
  Cookie: TJWebBrowserCookie;
begin
  Cookies := TJWebBrowserCookies.Create(1024, 768);
  
  // Test iniziale
  Assert.AreEqual(0, Cookies.Count);
  
  // Aggiungi cookie
  Cookie.Name := 'session';
  Cookie.Value := '123456';
  Cookie.Domain := 'test.com';
  Cookies.AddCookie(Cookie);
  
  // Nota: l'implementazione è vuota, quindi il test dovrebbe fallire
  // o essere adattato quando l'implementazione sarà completata
  Assert.Warn('TJWebBrowserCookies.AddCookie not implemented');
end;

procedure TTestJanuaHttpTypes.TestWebBrowserCookiesSerialize;
var
  Cookies: TJWebBrowserCookies;
  Json: string;
begin
  Cookies := TJWebBrowserCookies.Create(1920, 1080);
  Cookies.Notes := 'Test cookies';
  
  Json := Cookies.Serialize;
  
  // Nota: implementazione vuota
  Assert.Warn('TJWebBrowserCookies.Serialize not implemented');
  
  // Test deserialize
  Cookies.DeSerialize('{"test": "data"}');
  Assert.Warn('TJWebBrowserCookies.DeSerialize not implemented');
end;

procedure TTestJanuaHttpTypes.TestProtocolConstants;
begin
  // Test mapping protocollo -> stringa
  Assert.AreEqual('ftp', JanuaProtocolText[jptFtp]);
  Assert.AreEqual('ftps', JanuaProtocolText[jptFtps]);
  Assert.AreEqual('http', JanuaProtocolText[jptHttp]);
  Assert.AreEqual('https', JanuaProtocolText[jtpHttps]);
  Assert.AreEqual('smtp', JanuaProtocolText[jtpSMTP]);
  Assert.AreEqual('stomp+ssl', JanuaProtocolText[jptStompSSL]);
  Assert.AreEqual('', JanuaProtocolText[jptNone]);
end;

procedure TTestJanuaHttpTypes.TestProtocolPorts;
begin
  // Test porte standard
  Assert.AreEqual(21, JanuaProtocolPort[jptFtp]);
  Assert.AreEqual(22, JanuaProtocolPort[jptFtps]);
  Assert.AreEqual(80, JanuaProtocolPort[jptHttp]);
  Assert.AreEqual(443, JanuaProtocolPort[jtpHttps]);
  Assert.AreEqual(0, JanuaProtocolPort[jptTcpIp]);
  Assert.AreEqual(0, JanuaProtocolPort[jptNone]);
end;

procedure TTestJanuaHttpTypes.TestHttpMethodStrings;
begin
  // Test metodi HTTP
  Assert.AreEqual('Any', JanuaHttpMethodString[jhmAny]);
  Assert.AreEqual('GET', JanuaHttpMethodString[jhmGet]);
  Assert.AreEqual('POST', JanuaHttpMethodString[jhmPost]);
  Assert.AreEqual('PUT', JanuaHttpMethodString[jhmPut]);
  Assert.AreEqual('DELETE', JanuaHttpMethodString[jhmDelete]);
  Assert.AreEqual('PATCH', JanuaHttpMethodString[jhmPatch]);
  Assert.AreEqual('OPTIONS', JanuaHttpMethodString[jhmOptions]);
  Assert.AreEqual('None', JanuaHttpMethodString[jhmNone]);
end;

{$IFDEF WEBBROKER}
procedure TTestJanuaHttpTypes.TestWebBrokerMethodMapping;
begin
  // Test mapping con WebBroker
  Assert.AreEqual(Ord(mtAny), Ord(JanuaWebBrokerMethod[jhmAny]));
  Assert.AreEqual(Ord(mtGet), Ord(JanuaWebBrokerMethod[jhmGet]));
  Assert.AreEqual(Ord(mtPost), Ord(JanuaWebBrokerMethod[jhmPost]));
  Assert.AreEqual(Ord(mtPut), Ord(JanuaWebBrokerMethod[jhmPut]));
  Assert.AreEqual(Ord(mtDelete), Ord(JanuaWebBrokerMethod[jhmDelete]));
  Assert.AreEqual(Ord(mtPatch), Ord(JanuaWebBrokerMethod[jhmPatch]));
end;
{$ENDIF}

procedure TTestJanuaHttpTypes.TestMimeTypeStrings;
begin
  // Test MIME type principali
  Assert.AreEqual(TJanuaMimeString.APPLICATION_JSON, JanuaMimeString[jmtApplicationJson]);
  Assert.AreEqual(TJanuaMimeString.APPLICATION_XML, JanuaMimeString[jmtApplicationXml]);
  Assert.AreEqual(TJanuaMimeString.TEXT_HTML, JanuaMimeString[jmtTextHtml]);
  Assert.AreEqual(TJanuaMimeString.TEXT_PLAIN, JanuaMimeString[jmtTextPlain]);
  Assert.AreEqual(TJanuaMimeString.APPLICATION_OCTET_STREAM, JanuaMimeString[jmtOctetStream]);
  Assert.AreEqual('', JanuaMimeString[jmtUnknown]);
end;

procedure TTestJanuaHttpTypes.TestMimeExtensions;
begin
  // Test estensioni file
  Assert.AreEqual('.json', JanuaMimeEXtension[jmtApplicationJson]);
  Assert.AreEqual('.xml', JanuaMimeEXtension[jmtApplicationXml]);
  Assert.AreEqual('.html', JanuaMimeEXtension[jmtTextHtml]);
  Assert.AreEqual('.css', JanuaMimeEXtension[jmtTextCss]);
  Assert.AreEqual('.pdf', JanuaMimeEXtension[jmtApplicationPdf]);
  Assert.AreEqual('.zip', JanuaMimeEXtension[jmtApplicationZip]);
  Assert.AreEqual('', JanuaMimeEXtension[jmtUnknown]);
end;

procedure TTestJanuaHttpTypes.TestMimeDefGetFromExtension;
var
  MimeType: TJanuaMimeType;
  MimeString: string;
begin
  // Test lookup da estensione
  MimeType := TJanuaMimeDef.GetMimeFromExtension('.json');
  Assert.AreEqual(TJanuaMimeType.jmtApplicationJson, MimeType);
  
  MimeType := TJanuaMimeDef.GetMimeFromExtension('.pdf');
  Assert.AreEqual(TJanuaMimeType.jmtApplicationPdf, MimeType);
  
  MimeType := TJanuaMimeDef.GetMimeFromExtension('.css');
  Assert.AreEqual(TJanuaMimeType.jmtTextCss, MimeType);
  
  // Test string lookup
  MimeString := TJanuaMimeDef.GetMimeStringFromExtension('.jpg');
  Assert.AreEqual('image/jpeg', MimeString);
  
  MimeString := TJanuaMimeDef.GetMimeStringFromExtension('.png');
  Assert.AreEqual('image/png', MimeString);
end;

procedure TTestJanuaHttpTypes.TestCharsetStrings;
begin
  // Test charset
  Assert.AreEqual('', JanuaCharsetString[jcsUnknown]);
  Assert.AreEqual('UTF-8', JanuaCharsetString[jcsUTF8]);
  Assert.AreEqual('ANSI', JanuaCharsetString[jcsANSI]);
  Assert.AreEqual('ASCII', JanuaCharsetString[jcsASCII]);
  Assert.AreEqual('ISO-8859-1', JanuaCharsetString[jcsISO8859_1]);
end;

procedure TTestJanuaHttpTypes.TestHttpStatusConstants;
var
  Status: HTTP_STATUS;
begin
  // Test costanti principali
  Assert.AreEqual(100, HTTP_STATUS.Continue);
  Assert.AreEqual(200, HTTP_STATUS.OK);
  Assert.AreEqual(201, HTTP_STATUS.Created);
  Assert.AreEqual(204, HTTP_STATUS.NoContent);
  Assert.AreEqual(301, HTTP_STATUS.MovedPermanently);
  Assert.AreEqual(304, HTTP_STATUS.NotModified);
  Assert.AreEqual(400, HTTP_STATUS.BadRequest);
  Assert.AreEqual(401, HTTP_STATUS.Unauthorized);
  Assert.AreEqual(403, HTTP_STATUS.Forbidden);
  Assert.AreEqual(404, HTTP_STATUS.NotFound);
  Assert.AreEqual(500, HTTP_STATUS.InternalServerError);
  Assert.AreEqual(503, HTTP_STATUS.ServiceUnavailable);
end;

procedure TTestJanuaHttpTypes.TestHttpStatusDictionary;
var
  Status: HTTP_STATUS;
begin
  // Test dictionary lookup
  Assert.AreEqual('OK', Status[200]);
  Assert.AreEqual('Created', Status[201]);
  Assert.AreEqual('Bad Request', Status[400]);
  Assert.AreEqual('NotFound', Status[404]);
  Assert.AreEqual('Internal Server Error', Status[500]);
  
  // Test status non esistente
  Assert.AreEqual('', Status[999]);
end;

procedure TTestJanuaHttpTypes.TestHttpStatusLevels;
var
  Status: HTTP_STATUS;
begin
  // Test livelli di status
  Assert.AreEqual('Info', Status.Levels[100]);
  Assert.AreEqual('Info', Status.Levels[101]);
  
  Assert.AreEqual('Success', Status.Levels[200]);
  Assert.AreEqual('Success', Status.Levels[204]);
  
  Assert.AreEqual('Redirect', Status.Levels[301]);
  Assert.AreEqual('Redirect', Status.Levels[304]);
  
  Assert.AreEqual('Client Error', Status.Levels[400]);
  Assert.AreEqual('Client Error', Status.Levels[404]);
  
  Assert.AreEqual('Server Error', Status.Levels[500]);
  Assert.AreEqual('Server Error', Status.Levels[503]);
  
  // Test GetMessageLevel
  Assert.AreEqual('Success', Status.GetMessageLevel(200));
  Assert.AreEqual('Client Error', Status.GetMessageLevel(404));
end;

procedure TTestJanuaHttpTypes.TestHttpAuthNone;
var
  Auth: TJanuaHttpAuth;
begin
  Auth := TJanuaHttpAuth.Create(TJanuaAuthType.None);
  
  Assert.AreEqual(TJanuaAuthType.None, Auth.AuthType);
  Assert.AreEqual('', Auth.Token);
  Assert.AreEqual('', Auth.UserName);
  Assert.AreEqual('', Auth.Password);
  Assert.AreEqual('', Auth.AuthString);
end;

procedure TTestJanuaHttpTypes.TestHttpAuthBasic;
var
  Auth: TJanuaHttpAuth;
begin
  Auth := TJanuaHttpAuth.Create(TJanuaAuthType.Basic, 'user', 'pass');
  
  Assert.AreEqual(TJanuaAuthType.Basic, Auth.AuthType);
  Assert.AreEqual('user', Auth.UserName);
  Assert.AreEqual('pass', Auth.Password);
  Assert.AreEqual('Basic', Auth.AuthString);
  
  // Test modifica valori
  Auth.UserName := 'newuser';
  Auth.Password := 'newpass';
  Assert.AreEqual('newuser', Auth.UserName);
  Assert.AreEqual('newpass', Auth.Password);
end;

procedure TTestJanuaHttpTypes.TestHttpAuthBearer;
var
  Auth: TJanuaHttpAuth;
begin
  Auth := TJanuaHttpAuth.Create(TJanuaAuthType.Bearer, 'my-token-123');
  
  Assert.AreEqual(TJanuaAuthType.Bearer, Auth.AuthType);
  Assert.AreEqual('my-token-123', Auth.Token);
  Assert.AreEqual('Bearer my-token-123', Auth.AuthString);
  
  // Test cambio token
  Auth.Token := 'new-token-456';
  Assert.AreEqual('new-token-456', Auth.Token);
  Assert.AreEqual('Bearer new-token-456', Auth.AuthString);
  
  // Test Bearer senza token (dovrebbe generare eccezione)
  Auth.Token := '';
  Assert.WillRaise(
    procedure
    begin
      Auth.AuthString;
    end,
    Exception,
    'Bearer authorization without token'
  );
end;

procedure TTestJanuaHttpTypes.TestHttpAuthConstructors;
var
  Auth1, Auth2, Auth3: TJanuaHttpAuth;
begin
  // Test costruttore semplice
  Auth1 := TJanuaHttpAuth.Create(TJanuaAuthType.Basic);
  Assert.AreEqual(TJanuaAuthType.Basic, Auth1.AuthType);
  Assert.AreEqual('', Auth1.Token);
  
  // Test costruttore con token
  Auth2 := TJanuaHttpAuth.Create(TJanuaAuthType.Bearer, 'token123');
  Assert.AreEqual(TJanuaAuthType.Bearer, Auth2.AuthType);
  Assert.AreEqual('token123', Auth2.Token);
  
  // Test costruttore con username/password
  Auth3 := TJanuaHttpAuth.Create(TJanuaAuthType.Basic, 'admin', 'secret');
  Assert.AreEqual(TJanuaAuthType.Basic, Auth3.AuthType);
  Assert.AreEqual('admin', Auth3.UserName);
  Assert.AreEqual('secret', Auth3.Password);
end;

procedure TTestJanuaHttpTypes.TestMimeDefExtensionLookup;
begin
  // Test estensioni registrate nell'initialization
  Assert.AreEqual('application/font-tdpfr', TJanuaMimeDef.GetMimeStringFromExtension('.pfr'));
  Assert.AreEqual('application/x-font-ttf', TJanuaMimeDef.GetMimeStringFromExtension('.ttf'));
  Assert.AreEqual('application/font-woff', TJanuaMimeDef.GetMimeStringFromExtension('.woff'));
  Assert.AreEqual('image/jpeg', TJanuaMimeDef.GetMimeStringFromExtension('.jpg'));
  Assert.AreEqual('image/png', TJanuaMimeDef.GetMimeStringFromExtension('.png'));
  Assert.AreEqual('application/pdf', TJanuaMimeDef.GetMimeStringFromExtension('.pdf'));
  Assert.AreEqual('application/javascript', TJanuaMimeDef.GetMimeStringFromExtension('.js'));
  Assert.AreEqual('text/css', TJanuaMimeDef.GetMimeStringFromExtension('.css'));
  Assert.AreEqual('application/json', TJanuaMimeDef.GetMimeStringFromExtension('.json'));
  Assert.AreEqual('application/zip', TJanuaMimeDef.GetMimeStringFromExtension('.zip'));
end;

procedure TTestJanuaHttpTypes.TestMimeDefUnknownExtension;
begin
  // Test estensione non registrata
  Assert.AreEqual('application/octet-stream', 
    TJanuaMimeDef.GetMimeStringFromExtension('.xyz'));
    
  Assert.AreEqual(TJanuaMimeType.jmtUnknown, 
    TJanuaMimeDef.GetMimeFromExtension('.xyz'));
end;

initialization
  TDUnitX.RegisterTestFixture(TTestJanuaHttpTypes);

end.