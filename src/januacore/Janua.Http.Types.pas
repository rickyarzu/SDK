unit Janua.Http.Types;

{$I JANUACORE.INC}

interface

uses
{$IFDEF delphixe}
{$IFDEF WEBBROKER}
  Web.HTTPApp,
{$ENDIF}
  System.Classes, Spring, Spring.Collections, System.Generics.Collections;
{$ENDIF}
{$IFDEF fpc}
Classes, Generics.Collections;
{$ENDIF}

type
{$IFNDEF MACOS}
  TJWebBrowserSameSiteType = (jsstNone, jsstLax, jsstSameSite); // Lax means same-site and cross-site
{$ENDIF}

  TJWebBrowserCookie = record
    Path: string;
    Name: string;
    Expires: TDateTime;
    Domain: string;
    Secure: Boolean;
    HTTPOnly: Boolean;
    Value: string;
    Session: Boolean;
{$IFNDEF MACOS}
    SameSite: TJWebBrowserSameSiteType;
{$ENDIF}
  end;

  TJWebBrowserCookies = record
  private
    function GetCount: Integer;
  public
    Draws: Tarray<TJWebBrowserCookie>;
    Width: Single;
    Heigth: Single;
    Notes: string;
    property Count: Integer read GetCount;
  public
    constructor Create(aWidth, aHeigth: Single);
    procedure AddCookie(aCookie: TJWebBrowserCookie);
    procedure Clear;
    function Serialize: string;
    procedure DeSerialize(const aJson: string);
    function GetSiteCookies(aDomain, aPath: string): Tarray<TJWebBrowserCookie>;
  end;

  // Main protocols on internet TCP/IP protocols ..............................
  TJanuaProtocol = (jptFtp, jptFtps, jptSCP, jptTcpIp, jptUdp, jptHttp, jtpHttps, jtpSMTP, jtpPOP, jtpIMAP,
    jptStop, jptStompSSL, jptNone);

  // Janua Http Socket

  TJanuaHttpParamTypes = (jhtString, jhtStrings, jhtMultipart);

  TJanuaHttpMethod = (jhmAny, jhmGet, jhmPut, jhmPost, jhmHead, jhmDelete, jhmPatch, jhmTrace, jhmOptions,
    jhmConnect, jhmNone);

const
  JanuaHttpMethodString: array [TJanuaHttpMethod] of string = ('Any', 'GET', 'PUT', 'POST', 'HEAD', 'DELETE',
    'PATCH', 'TRACE', 'OPTIONS', 'CONNECT', 'None');

{$IF Defined(WEBBROKER)}

const
  JanuaWebBrokerMethod: array [jhmAny .. jhmPatch] of Web.HTTPApp.TMethodType = (mtAny, mtGet, mtPut, mtPost,
    mtHead, mtDelete, mtPatch);
{$ENDIF Defined(WEBBROKER)}
  /// ***************************** Web Methods and Protocols **************************************

  /// ***************************** Http Protocol Classes ******************************************

  // il protocollo di comunicazione per ora è http ed https, è utile soprattutto per il client
  // potrà variare il Framework usato (Sparkle, Embarcadero e compagnia bella ma il resto rimane).
const
  JanuaProtocolText: array [jptFtp .. jptNone] of string = ('ftp', 'ftps', 'scp', 'tcp-ip', 'udp', 'http',
    'https', 'smtp', 'pop', 'imap', 'stomp', 'stomp+ssl', '');
  /// Web Broker Specific Classes
  JanuaProtocolPort: array [jptFtp .. jptNone] of Integer = (21, 22, 22, 0, 0, 80, 443, 0, 0, 0, 0, 0, 0);

  // ******************* Janua Mimme and Charset Type Management *************************************
type
  TJanuaMimeString = record
  public const
    CONTENTTYPE_NONE = ''; // do not localize
    // Type Application
    APPLICATION_FORM_URLENCODED = 'application/x-www-form-urlencoded';
    APPLICATION_ATOM_XML = 'application/atom+xml'; // do not localize
    APPLICATION_ECMASCRIPT = 'application/ecmascript'; // do not localize
    APPLICATION_EDI_X12 = 'application/EDI-X12'; // do not localize
    APPLICATION_EDIFACT = 'application/EDIFACT'; // do not localize
    APPLICATION_JSON = 'application/json'; // do not localize
    APPLICATION_JAVASCRIPT = 'application/javascript'; // do not localize
    APPLICATION_OCTET_STREAM = 'application/octet-stream'; // do not localize
    APPLICATION_OGG = 'application/ogg'; // do not localize
    APPLICATION_PDF = 'application/pdf'; // do not localize
    APPLICATION_POSTSCRIPT = 'application/postscript'; // do not localize
    APPLICATION_RDF_XML = 'application/rdf+xml'; // do not localize
    APPLICATION_RSS_XML = 'application/rss+xml'; // do not localize
    APPLICATION_SOAP_XML = 'application/soap+xml'; // do not localize
    APPLICATION_FONT_WOFF = 'application/font-woff'; // do not localize
    APPLICATION_XHTML_XML = 'application/xhtml+xml'; // do not localize
    APPLICATION_XML = 'application/xml'; // do not localize
    APPLICATION_XML_DTD = 'application/xml-dtd'; // do not localize
    APPLICATION_XOP_XML = 'application/xop+xml'; // do not localize
    APPLICATION_ZIP = 'application/zip'; // do not localize
    APPLICATION_GZIP = 'application/gzip'; // do not localize
    APPLICATION_SVG_XML = 'application/svg+xml';
    APPLICATION_X_PDF = 'application/x-pdf';
    // Type Text
    TEXT_CMD = 'text/cmd'; // do not localize
    TEXT_CSS = 'text/css'; // do not localize
    TEXT_CSV = 'text/csv'; // do not localize
    TEXT_HTML = 'text/html'; // do not localize
    TEXT_JAVASCRIPT = 'text/javascript'; // do not localize
    TEXT_PLAIN = 'text/plain'; // do not localize
    TEXT_VCARD = 'text/vcard'; // do not localize
    TEXT_XML = 'text/xml'; // do not localize
    TEXT_CACHEMANIFEST = 'text/cache-manifest';
    TEXT_EVENTSTREAM = 'text/event-stream';
    // Type Media
    MEDIA_TYPE_WILDCARD = '*';
    // Type Audio
    AUDIO_BASIC = 'audio/basic'; // do not localize
    AUDIO_L24 = 'audio/L24'; // do not localize
    AUDIO_MP4 = 'audio/mp4'; // do not localize
    AUDIO_MPEG = 'audio/mpeg'; // do not localize
    AUDIO_OGG = 'audio/ogg'; // do not localize
    AUDIO_VORBIS = 'audio/vorbis'; // do not localize
    AUDIO_VND_RN_REALAUDIO = 'audio/vnd.rn-realaudio'; // do not localize
    AUDIO_VND_WAVE = 'audio/vnd.wave'; // do not localize
    AUDIO_WEBM = 'audio/webm'; // do not localize
    // Type Image
    IMAGE_GIF = 'image/gif'; // do not localize
    IMAGE_JPEG = 'image/jpeg'; // do not localize
    IMAGE_PJPEG = 'image/pjpeg'; // do not localize
    IMAGE_PNG = 'image/png'; // do not localize
    IMAGE_SVG_XML = 'image/svg+xml'; // do not localize
    IMAGE_TIFF = 'image/tiff'; // do not localize
    // Type Message
    MESSAGE_HTTP = 'message/http'; // do not localize
    MESSAGE_IMDN_XML = 'message/imdn+xml'; // do not localize
    MESSAGE_PARTIAL = 'message/partial'; // do not localize
    MESSAGE_RFC822 = 'message/rfc822'; // do not localize
    // Type Model (3D Models)
    MODEL_EXAMPLE = 'model/example'; // do not localize
    MODEL_IGES = 'model/iges'; // do not localize
    MODEL_MESH = 'model/mesh'; // do not localize
    MODEL_VRML = 'model/vrml'; // do not localize
    MODEL_X3D_BINARY = 'model/x3d+binary'; // do not localize
    MODEL_X3D_VRML = 'model/x3d+vrml'; // do not localize
    MODEL_X3D_XML = 'model/x3d+xml'; // do not localize
    // Type Multipart
    MULTIPART_MIXED = 'multipart/mixed'; // do not localize
    MULTIPART_ALTERNATIVE = 'multipart/alternative'; // do not localize
    MULTIPART_RELATED = 'multipart/related'; // do not localize
    MULTIPART_FORM_DATA = 'multipart/form-data'; // do not localize
    MULTIPART_SIGNED = 'multipart/signed'; // do not localize
    MULTIPART_ENCRYPTED = 'multipart/encrypted'; // do not localize
    // Type Video
    VIDEO_MPEG = 'video/mpeg'; // do not localize
    VIDEO_MP4 = 'video/mp4'; // do not localize
    VIDEO_OGG = 'video/ogg'; // do not localize
    VIDEO_QUICKTIME = 'video/quicktime'; // do not localize
    VIDEO_WEBM = 'video/webm'; // do not localize
    // Type Application - Vendor Specific
    APPLICATION_VND_OASIS_OPENDOCUMENT_TEXT = 'application/vnd.oasis.opendocument.text'; // do not localize
    APPLICATION_VND_OASIS_OPENDOCUMENT_SPREADSHEET = 'application/vnd.oasis.opendocument.spreadsheet';
    // do not localize
    APPLICATION_VND_OASIS_OPENDOCUMENT_PRESENTATION = 'application/vnd.oasis.opendocument.presentation';
    // do not localize
    APPLICATION_VND_OASIS_OPENDOCUMENT_GRAPHICS = 'application/vnd.oasis.opendocument.graphics';
    // do not localize
    APPLICATION_VND_MS_EXCEL = 'application/vnd.ms-excel'; // do not localize
    APPLICATION_VND_OPENXMLFORMATS_OFFICEDOCUMENT_SPREADSHEETML_SHEET =
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'; // do not localize
    APPLICATION_VND_MS_POWERPOINT = 'application/vnd.ms-powerpoint'; // do not localize
    APPLICATION_VND_OPENXMLFORMATS_OFFICEDOCUMENT_PRESENTATIONML_PRESENTATION =
      'application/vnd.openxmlformats-officedocument.presentationml.presentation'; // do not localize
    APPLICATION_VND_OPENXMLFORMATS_OFFICEDOCUMENT_WORDPROCESSINGML_DOCUMENT =
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document'; // do not localize
    APPLICATION_VND_MOZILLA_XUL_XML = 'application/vnd.mozilla.xul+xml'; // do not localize
    APPLICATION_VND_GOOGLE_EARTH_KML_XML = 'application/vnd.google-earth.kml+xml'; // do not localize
    APPLICATION_VND_GOOGLE_EARTH_KMZ = 'application/vnd.google-earth.kmz'; // do not localize
    APPLICATION_VND_DART = 'application/vnd.dart'; // do not localize
    APPLICATION_VND_ANDROID_PACKAGE_ARCHIVE = 'application/vnd.android.package-archive'; // do not localize
    // Type X (RFC 6648)
    APPLICATION_X_DEB = 'application/x-deb'; // do not localize
    APPLICATION_X_DVI = 'application/x-dvi'; // do not localize
    APPLICATION_X_FONT_TTF = 'application/x-font-ttf'; // do not localize
    APPLICATION_X_JAVASCRIPT = 'application/x-javascript'; // do not localize
    APPLICATION_X_LATEX = 'application/x-latex'; // do not localize
    APPLICATION_X_MPEGURL = 'application/x-mpegURL'; // do not localize
    APPLICATION_X_RAR_COMPRESSED = 'application/x-rar-compressed'; // do not localize
    APPLICATION_X_SHOCKWAVE_FLASH = 'application/x-shockwave-flash'; // do not localize
    APPLICATION_X_STUFFIT = 'application/x-stuffit'; // do not localize
    APPLICATION_X_TAR = 'application/x-tar'; // do not localize
    APPLICATION_X_WWW_FORM_URLENCODED = 'application/x-www-form-urlencoded'; // do not localize
    APPLICATION_X_XPINSTALL = 'application/x-xpinstall'; // do not localize
    AUDIO_X_AAC = 'audio/x-aac'; // do not localize
    AUDIO_X_CAF = 'audio/x-caf'; // do not localize
    IMAGE_X_XCF = 'image/x-xcf'; // do not localize
    IMAGE_X_PNG = 'image/x-png';
    IMAGE_X_ICON = 'image/x-icon';
    TEXT_X_GWT_RPC = 'text/x-gwt-rpc'; // do not localize
    TEXT_X_JQUERY_TMPL = 'text/x-jquery-tmpl'; // do not localize
    TEXT_X_MARKDOWN = 'text/x-markdown'; // do not localize
    VIDEO_X_MATROSKA = 'video/x-matroska'; // do not localize
    VIDEO_X_MS_WMV = 'video/x-ms-wmv'; // do not localize
    VIDEO_X_FLV = 'video/x-flv'; // do not localize
    // Type PKCS (Cryptography)
    APPLICATION_X_PKCS12 = 'application/x-pkcs12'; // do not localize
    APPLICATION_X_PKCS7_CERTIFICATES = 'application/x-pkcs7-certificates'; // do not localize
    APPLICATION_X_PKCS7_CERTREQRESP = 'application/x-pkcs7-certreqresp'; // do not localize
    APPLICATION_X_PKCS7_MIME = 'application/x-pkcs7-mime'; // do not localize
    APPLICATION_X_PKCS7_SIGNATURE = 'application/x-pkcs7-signature'; // do not localize
    // Type Application - Embarcadero Specific
    APPLICATION_VND_EMBARCADERO_FIREDAC_JSON = 'application/vnd.embarcadero.firedac+json'; // do not localize
    // WilCARD
    WILDCARD = '*/*';
  end;

  TJanuaMimeType = (jmtApplicationJson, jmtApplicationXml, jmtTextHtml, jmtTextCss, jmtTextXml, jmtTextPlain,
    jmtOctetStream, jmtApplicationJavascript, jmtRSSXML, jmtImageIcon, jmtTextJavascript, jmtApplicationPdf,
    jmtApplicationZip, jmtExcel, jmtExcelOpenXML, jmtImageJpeg, jmtImagePng, jmtImageBmp, jmtTextCsv,
    // Unknown
    jmtUnknown);

  TJanuaCharsetType = (jcsUnknown, jcsUTF8, jcsANSI, jcsASCII, jcsISO8859_1);

const
  JanuaMimeString: array [TJanuaMimeType] of string = (TJanuaMimeString.APPLICATION_JSON,
    TJanuaMimeString.APPLICATION_XML, TJanuaMimeString.TEXT_HTML, TJanuaMimeString.TEXT_CSS,
    TJanuaMimeString.TEXT_XML, TJanuaMimeString.TEXT_PLAIN, TJanuaMimeString.APPLICATION_OCTET_STREAM,
    TJanuaMimeString.APPLICATION_JAVASCRIPT, TJanuaMimeString.APPLICATION_RSS_XML,
    TJanuaMimeString.IMAGE_X_ICON, 'text/javascript', 'application/pdf', 'application/zip',
    'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    'image/jpeg', 'image/png', 'image/bmp', 'text/csv',
    // non assegnato
    '');

  JanuaMimeEXtension: array [TJanuaMimeType] of string = ('.json', '.xml', '.html', '.css', '.xml', '.txt',
    '.bin', '.js', '.rss', '.ico', '.js', '.pdf', '.zip', '.xls', '.xlxs', 'jpeg', '.png', '.bmp', '.csv',
    // non assegnato
    '');

  JanuaCharsetString: array [TJanuaCharsetType] of string = ('', 'UTF-8', 'ANSI', 'ASCII', 'ISO-8859-1');

type
  TJanuaHttpStatus = (jhsContinue = 100, jhsSwitchingProtocol = 101, jhsOK = 200, jhsCreated = 201,
    jhsAccepted = 202);

  // http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html
  HTTP_STATUS = record
  const
    // Informational 1xx
    Continue = 100;
    SwitchingProtocols = 101;
    // Successful 2xx
    /// <summary>
    /// 200 OK
    /// The request has succeeded. The information returned with the response is dependent on the method used in the request, for example:
    /// GET an entity corresponding to the requested resource is sent in the response;
    /// HEAD the entity-header fields corresponding to the requested resource are sent in the response without any message-body;
    /// POST an entity describing or containing the result of the action;
    /// TRACE an entity containing the request message as received by the end server.
    /// </summary>
    OK = 200;
    /// <summary>
    /// 201 Created
    /// The request has been fulfilled and resulted in a new resource being created. The newly created resource can be referenced by the URI(s) returned in the entity of the response, with the most specific URI for the resource given by a Location header field. The response SHOULD include an entity containing a list of resource characteristics and location(s) from which the user or user agent can choose the one most appropriate. The entity format is specified by the media type given in the Content-Type header field. The origin server MUST create the resource before returning the 201 status code. If the action cannot be carried out immediately, the server SHOULD respond with 202 (Accepted) response instead.
    /// A 201 response MAY contain an ETag response header field indicating the current value of the entity tag for the requested variant just created
    /// </summary>
    Created = 201;
    /// <summary>
    /// 202 Accepted
    /// The request has been accepted for processing, but the processing has not been completed. The request might or might not eventually be acted upon, as it might be disallowed when processing actually takes place. There is no facility for re-sending a status code from an asynchronous operation such as this.
    /// The 202 response is intentionally non-committal. Its purpose is to allow a server to accept a request for some other process (perhaps a batch-oriented process that is only run once per day) without requiring that the user agent's connection to the server persist until the process is completed. The entity returned with this response SHOULD include an indication of the request's current status and either a pointer to a status monitor or some estimate of when the user can expect the request to be fulfilled.
    /// </summary>
    Accepted = 202;
    ///
    NonAuthoritativeInformation = 203;
    /// <summary>
    /// 204 No Content
    /// The server has fulfilled the request but does not need to return an entity-body, and might want to return updated metainformation. The response MAY include new or updated metainformation in the form of entity-headers, which if present SHOULD be associated with the requested variant.
    /// If the client is a user agent, it SHOULD NOT change its document view from that which caused the request to be sent. This response is primarily intended to allow input for actions to take place without causing a change to the user agent's active document view, although any new or updated metainformation SHOULD be applied to the document currently in the user agent's active view.
    /// The 204 response MUST NOT include a message-body, and thus is always terminated by the first empty line after the header fields.
    /// </summary>
    NoContent = 204;
    ResetContent = 205;
    PartialContent = 206;
    // Redirection 3xx
    MultipleChoices = 300;
    /// <summary>
    /// 301 Moved Permanently
    /// The requested resource has been assigned a new permanent URI and any future references to this resource SHOULD use one of the returned URIs. Clients with link editing capabilities ought to automatically re-link references to the Request-URI to one or more of the new references returned by the server, where possible. This response is cacheable unless indicated otherwise.
    /// The new permanent URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
    /// If the 301 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
    /// Note: When automatically redirecting a POST request after
    /// receiving a 301 status code, some existing HTTP/1.0 user agents
    /// will erroneously change it into a GET request.
    /// </summary>
    MovedPermanently = 301;
    /// <summary>
    /// 302 Found
    /// The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.
    /// The temporary URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
    /// If the 302 status code is received in response to a request other than GET or HEAD, the user agent MUST NOT automatically redirect the request unless it can be confirmed by the user, since this might change the conditions under which the request was issued.
    /// </summary>
    Found = 302;
    /// <summary>
    /// 303 See Other
    /// The response to the request can be found under a different URI and SHOULD be retrieved using a GET method on that resource. This method exists primarily to allow the output of a POST-activated script to redirect the user agent to a selected resource. The new URI is not a substitute reference for the originally requested resource. The 303 response MUST NOT be cached, but the response to the second (redirected) request might be cacheable.
    /// The different URI SHOULD be given by the Location field in the response. Unless the request method was HEAD, the entity of the response SHOULD contain a short hypertext note with a hyperlink to the new URI(s).
    /// </summary>
    SeeOther = 303;
    /// <summary>
    /// 304 Not Modified
    /// If the client has performed a conditional GET request and access is allowed, but the document has not been modified, the server SHOULD respond with this status code. The 304 response MUST NOT contain a message-body, and thus is always terminated by the first empty line after the header fields.
    /// The response MUST include the following header fields:
    /// - Date, unless its omission is required by section 14.18.1
    /// If a clockless origin server obeys these rules, and proxies and clients add their own Date to any response received without one (as already specified by [RFC 2068], section 14.19), caches will operate correctly.
    /// - ETag and/or Content-Location, if the header would have been sent in a 200 response to the same request
    /// - Expires, Cache-Control, and/or Vary, if the field-value might differ from that sent in any previous response for the same variant
    /// If the conditional GET used a strong cache validator (see section 13.3.3), the response SHOULD NOT include other entity-headers. Otherwise (i.e., the conditional GET used a weak validator), the response MUST NOT include other entity-headers; this prevents inconsistencies between cached entity-bodies and updated headers.
    /// If a 304 response indicates an entity not currently cached, then the cache MUST disregard the response and repeat the request without the conditional.
    /// If a cache uses a received 304 response to update a cache entry, the cache MUST update the entry to reflect any new field values given in the response.
    /// </summary>
    NotModified = 304;
    UseProxy = 305;
    TemporaryRedirect = 307;
    // Client Error 4xx
    /// <summary>
    /// The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
    /// </summary>
    BadRequest = 400;
    /// <summary>
    /// 401 Unauthorized
    /// The request requires user authentication. The response MUST include a WWW-Authenticate header field (section 14.47) containing a challenge applicable to the requested resource. The client MAY repeat the request with a suitable Authorization header field (section 14.8). If the request already included Authorization credentials, then the 401 response indicates that authorization has been refused for those credentials. If the 401 response contains the same challenge as the prior response, and the user agent has already attempted authentication at least once, then the user SHOULD be presented the entity that was given in the response, since that entity might include relevant diagnostic information. HTTP access authentication is explained in "HTTP Authentication: Basic and Digest Access Authentication".
    /// </summary>
    Unauthorized = 401;
    PaymentRequired = 402;
    /// <summary>
    /// 403 Forbidden
    /// The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated. If the request method was not HEAD and the server wishes to make public why the request has not been fulfilled, it SHOULD describe the reason for the refusal in the entity. If the server does not wish to make this information available to the client, the status code 404 (Not Found) can be used instead.
    /// </summary>
    Forbidden = 403;
    /// <summary>
    /// 404 Not Found
    /// The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent. The 410 (Gone) status code SHOULD be used if the server knows, through some internally configurable mechanism, that an old resource is permanently unavailable and has no forwarding address. This status code is commonly used when the server does not wish to reveal exactly why the request has been refused, or when no other response is applicable.
    /// </summary>
    NotFound = 404;
    /// <summary>
    /// 405 Method Not Allowed
    /// The method specified in the Request-Line is not allowed for the resource identified by the Request-URI. The response MUST include an Allow header containing a list of valid methods for the requested resource.
    /// </summary>
    MethodNotAllowed = 405;
    NotAcceptable = 406;
    ProxyAuthenticationRequired = 407;
    RequestTimeout = 408;
    Conflict = 409;
    Gone = 410;
    LengthRequired = 411;
    /// <summary>
    /// 412 Precondition Failed
    /// Any request can contain a conditional header defined in HTTP (If-
    /// Match, If-Modified-Since, etc.) or the "If" or "Overwrite"
    /// conditional headers defined in this specification.  If the server
    /// evaluates a conditional header, and if that condition fails to hold,
    /// then this error code MUST be returned.  On the other hand, if the
    /// client did not include a conditional header in the request, then the
    /// server MUST NOT use this status code.
    /// </summary>
    PreconditionFailed = 412;
    RequestEntityTooLarge = 413;
    RequestURITooLong = 414;
    UnsupportedMediaType = 415;
    RequestedRangeNotSatisfiable = 416;
    ExpectationFailed = 417;
    /// <summary>
    /// The 422 (Unprocessable Entity) status code means the server
    /// understands the content type of the request entity (hence a
    /// 415(Unsupported Media Type) status code is inappropriate), and the
    /// syntax of the request entity is correct (thus a 400 (Bad Request)
    /// status code is inappropriate) but was unable to process the contained
    /// instructions.  For example, this error condition may occur if an XML
    /// request body contains well-formed (i.e., syntactically correct), but
    /// semantically erroneous, XML instructions.
    /// </summary>
    UnprocessableEntity = 422;
    /// <summary>
    /// The 423 (Locked) status code means the source or destination resource
    /// of a method is locked.  This response SHOULD contain an appropriate
    /// precondition or postcondition code, such as 'lock-token-submitted' or 'no-conflicting-lock
    /// </summary>
    Locked = 423;
    /// <summary>
    /// The 424 (Failed Dependency) status code means that the method could
    /// not be performed on the resource because the requested action
    /// depended on another action and that action failed.  For example, if a
    /// command in a PROPPATCH method fails, then, at minimum, the rest of
    /// the commands will also fail with 424 (Failed Dependency).
    /// </summary>
    FailedDependency = 424;
    // Server Error 5xx
    /// <summary>
    /// 500 Internal Server Error
    /// The server encountered an unexpected condition which prevented it from fulfilling the request.
    /// </summary>
    InternalServerError = 500;
    /// <summary>
    /// 501 Not Implemented
    /// The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.
    /// </summary>
    NotImplemented = 501;
    BadGateway = 502;
    /// <summary>
    /// 503 Service Unavailable
    /// The server is currently unable to handle the request due to a temporary overloading or maintenance of the server. The implication is that this is a temporary condition which will be alleviated after some delay. If known, the length of the delay MAY be indicated in a Retry-After header. If no Retry-After is given, the client SHOULD handle the response as it would for a 500 response.
    /// Note: The existence of the 503 status code does not imply that a
    /// server must use it when becoming overloaded. Some servers may wish
    /// to simply refuse the connection.
    /// </summary>
    ServiceUnavailable = 503;
    GatewayTimeout = 504;
    HTTPVersionNotSupported = 505;

    /// <summary>
    /// The 507 (Insufficient Storage) status code means the method could not
    /// be performed on the resource because the server is unable to store
    /// the representation needed to successfully complete the request.
    /// This condition is considered to be temporary.  If the request that
    /// received this status code was the result of a user action, the
    /// request MUST NOT be repeated until it is requested by a separate user action.
    /// </summary>
    InsufficientStorage = 507;
    class operator Initialize(out Dest: HTTP_STATUS);
    class operator Finalize(var Dest: HTTP_STATUS);
  private
    FStatusDict: TDictionary<Word, string>;

  const
    FErrorStatus: Array [0 .. 4] of string = ('Informational', 'Success', 'Redirection', 'Client Error',
      'Server Error');
    function GetStatus(const aStatus: Word): string;
    function GetLevel(const aStatus: Word): string;
  public
    function GetMessageLevel(const aValue: Word): string;
    property Status[const Index: Word]: string read GetStatus; default;
    property Levels[const Index: Word]: string read GetLevel;
  end;

type
  TJanuaMimeDef = class
  private
{$IFDEF delphixe}
    class var FMimeExtensions: IDictionary<string, TJanuaMimeType>;
    class var FMimeExtDict: IDictionary<string, string>;
    class procedure SetMimeExtensions(const aExtensions: IDictionary<string, TJanuaMimeType>); static;
    class procedure SetMimeExtDict(const aExtDict: IDictionary<string, string>); static;
  public
    class property MimeExtensions: IDictionary<string, TJanuaMimeType> read FMimeExtensions;
    class property MimeExtDict: IDictionary<string, string> read FMimeExtDict;
{$ENDIF}
{$IFDEF fpc}
    class var FMimeExtensions: TDictionary<string, TJanuaMimeType>;
    class var FMimeExtDict: TDictionary<string, string>;
    class procedure SetMimeExtensions(const aExtensions: TDictionary<string, TJanuaMimeType>); static;
    class procedure SetMimeExtDict(const aExtDict: TDictionary<string, string>); static;
  public
    class property MimeExtensions: TDictionary<string, TJanuaMimeType> read FMimeExtensions;
    class property MimeExtDict: TDictionary<string, string> read FMimeExtDict;
{$ENDIF}
  public
    class function GetMimeStringFromExtension(const aExt: string): string;
    class function GetMimeFromExtension(const aExt: string): TJanuaMimeType;
  end;

type
  TJanuaAuthType = (None, Basic, Bearer);
  TJanuaContentEncoding = (ceAny, ceGzip, ceCompress, ceDeflate, ceBR);
  TJanuaContentEncodings = set of TJanuaContentEncoding;

const
  CJanuaAuth: array [TJanuaAuthType] of string = ('', 'Basic', 'Bearer');
  CJanuaContentEncoding: array [TJanuaContentEncoding] of string = ('', 'gzip', 'compress', 'deflate', 'br');

type
  TJanuaHttpAuth = record
  strict private
    FToken: string;
    FAuthType: TJanuaAuthType;
    FPassword: string;
    FUserName: string;
  private
    procedure SetAuthType(const Value: TJanuaAuthType);
    procedure SetToken(const Value: string);
    function GetToken: string;
    function GetAuthType: TJanuaAuthType;
    procedure SetPassword(const Value: string);
    procedure SetUserName(const Value: string);
    function GetPassword: string;
    function GetUserName: string;
    function GetAuthString: string;
  public
    constructor Create(const aAuthType: TJanuaAuthType); overload;
    constructor Create(const aAuthType: TJanuaAuthType; const aToken: string); overload;
    constructor Create(const aAuthType: TJanuaAuthType; const aUserName, aPassword: string); overload;
  public
    property AuthType: TJanuaAuthType read GetAuthType write SetAuthType;
    property Token: string read FToken write SetToken;
    property UserName: string read FUserName write SetUserName;
    property Password: string read FPassword write SetPassword;
    property AuthString: string read GetAuthString;
  end;

implementation

uses System.SysUtils, Janua.Core.Functions;

var
{$IFDEF delphixe}
  LMimeExtDict: IDictionary<string, string>;
  LExtensions: IDictionary<string, TJanuaMimeType>;
{$ELSE}
  LMimeExtDict: TDictionary<string, string>;
  LExtensions: TDictionary<string, TJanuaMimeType>;
{$ENDIF}
  { TJanuaAuth }

constructor TJanuaHttpAuth.Create(const aAuthType: TJanuaAuthType);
begin
  FAuthType := aAuthType;
  FToken := '';
  FPassword := '';
  FUserName := '';
end;

constructor TJanuaHttpAuth.Create(const aAuthType: TJanuaAuthType; const aToken: string);
begin
  Create(aAuthType);
  FToken := aToken;
end;

constructor TJanuaHttpAuth.Create(const aAuthType: TJanuaAuthType; const aUserName, aPassword: string);
begin
  Create(aAuthType);
  FUserName := aUserName;
  FPassword := aPassword;
end;

function TJanuaHttpAuth.GetAuthString: string;
begin
  Result := CJanuaAuth[FAuthType];
  case FAuthType of
    None:
      Result := '';
    Basic:
      Result := CJanuaAuth[FAuthType];
    Bearer:
      begin
        Guard.CheckTrue(FToken <> '', 'Bearer authorization without token');
        Result := CJanuaAuth[FAuthType] + ' ' + FToken;
      end;
  end;
end;

function TJanuaHttpAuth.GetAuthType: TJanuaAuthType;
begin
  Result := FAuthType
end;

function TJanuaHttpAuth.GetPassword: string;
begin
  Result := FPassword
end;

function TJanuaHttpAuth.GetToken: string;
begin
  Result := FToken
end;

function TJanuaHttpAuth.GetUserName: string;
begin
  Result := FUserName
end;

procedure TJanuaHttpAuth.SetAuthType(const Value: TJanuaAuthType);
begin
  FAuthType := Value;
end;

procedure TJanuaHttpAuth.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaHttpAuth.SetToken(const Value: string);
begin
  FToken := Value;
end;

procedure TJanuaHttpAuth.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

{ TJanuaMime }

class function TJanuaMimeDef.GetMimeFromExtension(const aExt: string): TJanuaMimeType;
begin
  if not FMimeExtensions.TryGetValue(aExt, Result) then
    Result := TJanuaMimeType.jmtUnknown
end;

class function TJanuaMimeDef.GetMimeStringFromExtension(const aExt: string): string;
begin
  if not FMimeExtDict.TryGetValue(aExt, Result) then
    Result := 'application/octet-stream'
end;

{$IFDEF delphixe}

class procedure TJanuaMimeDef.SetMimeExtDict(const aExtDict: IDictionary<string, string>);
{$ELSE}

class procedure TJanuaMimeDef.SetMimeExtDict(const aExtDict: TDictionary<string, string>);
{$ENDIF}
begin
  FMimeExtDict := aExtDict
end;

{$IFDEF delphixe}

class procedure TJanuaMimeDef.SetMimeExtensions(const aExtensions: IDictionary<string, TJanuaMimeType>);
{$ELSE}

class procedure TJanuaMimeDef.SetMimeExtensions(const aExtensions: TDictionary<string, TJanuaMimeType>);
{$ENDIF}
begin
  FMimeExtensions := aExtensions
end;

{ HTTP_STATUS }

class operator HTTP_STATUS.Finalize(var Dest: HTTP_STATUS);
begin
  Dest.FStatusDict.Free;
  Dest.FStatusDict := nil;
end;

function HTTP_STATUS.GetLevel(const aStatus: Word): string;
begin
  var
  aLevel := Trunc(aStatus / 100);
  case aLevel of
    1:
      Result := 'Info';
    2:
      Result := 'Success';
    3:
      Result := 'Redirect';
    4:
      Result := 'Client Error';
    5:
      Result := 'Server Error';
  else
    Result := '';
  end;
end;

function HTTP_STATUS.GetMessageLevel(const aValue: Word): string;
begin
  Result := GetLevel(aValue);
end;

function HTTP_STATUS.GetStatus(const aStatus: Word): string;
begin
  if not FStatusDict.TryGetValue(aStatus, Result) then
    Result := '';
end;

class operator HTTP_STATUS.Initialize(out Dest: HTTP_STATUS);
begin
  Dest.FStatusDict := TDictionary<Word, string>.Create;
  Dest.FStatusDict.Add(100, 'Continue');
  Dest.FStatusDict.Add(101, 'Switching Protocols');
  Dest.FStatusDict.Add(200, 'OK');
  Dest.FStatusDict.Add(201, 'Created');
  Dest.FStatusDict.Add(202, 'Accepted');
  Dest.FStatusDict.Add(203, 'Non Authoritative Information');
  Dest.FStatusDict.Add(204, 'No Content');
  Dest.FStatusDict.Add(205, 'Reset Content');
  Dest.FStatusDict.Add(206, 'Partial Content');
  Dest.FStatusDict.Add(300, 'Multiple Choices');
  Dest.FStatusDict.Add(301, 'Moved Permanently');
  Dest.FStatusDict.Add(302, 'Found under different URI');
  Dest.FStatusDict.Add(303, 'See Other');
  Dest.FStatusDict.Add(304, 'Not Modified');
  Dest.FStatusDict.Add(305, 'Use Proxy');
  Dest.FStatusDict.Add(307, 'Temporary Redirect');
  Dest.FStatusDict.Add(400, 'Bad Request');
  Dest.FStatusDict.Add(401, 'Unauthorized');
  Dest.FStatusDict.Add(402, 'Payment Required');
  Dest.FStatusDict.Add(403, 'Forbidden');
  Dest.FStatusDict.Add(404, 'NotFound');
  Dest.FStatusDict.Add(405, 'Method Not Allowed');
  Dest.FStatusDict.Add(406, 'Not Acceptable');
  Dest.FStatusDict.Add(407, 'Proxy Authentication Required');
  Dest.FStatusDict.Add(408, 'Request Timeout');
  Dest.FStatusDict.Add(409, 'Conflict');
  Dest.FStatusDict.Add(410, 'Gone');
  Dest.FStatusDict.Add(411, 'Length Required');
  Dest.FStatusDict.Add(412, 'Precondition Failed');
  Dest.FStatusDict.Add(413, 'Request Entity TooLarge');
  Dest.FStatusDict.Add(414, 'Request URI Too Long');
  Dest.FStatusDict.Add(415, 'Unsupported Media Type');
  Dest.FStatusDict.Add(416, 'Requested Range Not Satisfiable');
  Dest.FStatusDict.Add(417, 'Expectation Failed');
  Dest.FStatusDict.Add(422, 'Unprocessable Entity');
  Dest.FStatusDict.Add(423, 'Locked');
  Dest.FStatusDict.Add(424, 'Failed Dependency');
  Dest.FStatusDict.Add(500, 'Internal Server Error');
  Dest.FStatusDict.Add(501, 'Not Implemented');
  Dest.FStatusDict.Add(502, 'Bad Gateway');
  Dest.FStatusDict.Add(503, 'Service Unavailable');
  Dest.FStatusDict.Add(504, 'Gateway Timeout');
  Dest.FStatusDict.Add(505, 'HTTPVersion Not Supported');
  Dest.FStatusDict.Add(507, 'Insufficient Storage');
end;

{ TJWebBrowserCookies }

procedure TJWebBrowserCookies.AddCookie(aCookie: TJWebBrowserCookie);
begin

end;

procedure TJWebBrowserCookies.Clear;
begin

end;

constructor TJWebBrowserCookies.Create(aWidth, aHeigth: Single);
begin

end;

procedure TJWebBrowserCookies.DeSerialize(const aJson: string);
begin

end;

function TJWebBrowserCookies.GetCount: Integer;
begin

end;

function TJWebBrowserCookies.GetSiteCookies(aDomain, aPath: string): Tarray<TJWebBrowserCookie>;
begin

end;

function TJWebBrowserCookies.Serialize: string;
begin

end;

initialization

try
{$IFDEF delphixe}
  LMimeExtDict := TCollections.CreateDictionary<string, string>;
{$ELSE}
  LMimeExtDict := TDictionary<string, string>.Create;
{$ENDIF}
  { Insert Procedures ............................... }
  LMimeExtDict.Add('.pfr', 'application/font-tdpfr');
  LMimeExtDict.Add('.bdf', 'application/x-font-bdf');
  LMimeExtDict.Add('.gsf', 'application/x-font-ghostscript');
  LMimeExtDict.Add('.psf', 'application/x-font-linux-psf');
  LMimeExtDict.Add('.otf', 'application/x-font-otf');
  LMimeExtDict.Add('.pcf', 'application/x-font-pcf');
  LMimeExtDict.Add('.snf', 'application/x-font-snf');
  LMimeExtDict.Add('.ttf', 'application/x-font-ttf');
  LMimeExtDict.Add('.ttc', 'application/x-font-ttf');
  LMimeExtDict.Add('.pfa', 'application/x-font-type1');
  LMimeExtDict.Add('.pfb', 'application/x-font-type1');
  LMimeExtDict.Add('.pfm', 'application/x-font-type1');
  LMimeExtDict.Add('.afm', 'application/x-font-type1');
  LMimeExtDict.Add('.woff', 'application/font-woff');
  LMimeExtDict.Add('.jpg', 'image/jpeg');
  LMimeExtDict.Add('.png', 'image/png');
  LMimeExtDict.Add('.gif', 'image/gif');
  LMimeExtDict.Add('.pdf', 'application/pdf');
  LMimeExtDict.Add('.js', 'application/javascript');
  LMimeExtDict.Add('.css', 'text/css');
  LMimeExtDict.Add('.json', 'application/json');
  LMimeExtDict.Add('.zip', 'application/zip');
  TJanuaMimeDef.SetMimeExtDict(LMimeExtDict);
except
  on e: exception do
    Raise exception.Create('Janua.Core.Football.initialization.LMimeExtDict');
end;

try
{$IFDEF delphixe}
  LExtensions := TCollections.CreateDictionary<string, TJanuaMimeType>;
{$ELSE}
  LExtensions := TDictionary<string, TJanuaMimeType>.Create;
{$ENDIF}
  LExtensions.Add('.jpg', TJanuaMimeType.jmtImageIcon);
  LExtensions.Add('.png', TJanuaMimeType.jmtImageIcon);
  LExtensions.Add('.gif', TJanuaMimeType.jmtImageIcon);
  LExtensions.Add('.pdf', TJanuaMimeType.jmtApplicationPdf);
  LExtensions.Add('.js', TJanuaMimeType.jmtApplicationJavascript); // 'application/javascript'
  LExtensions.Add('.css', TJanuaMimeType.jmtTextCss); // 'text/css'
  LExtensions.Add('.json', TJanuaMimeType.jmtApplicationJson); // 'application/json'
  LExtensions.Add('.zip', jmtApplicationZip); // application/zip
  TJanuaMimeDef.SetMimeExtensions(LExtensions);
except
  on e: exception do
    Raise exception.Create('Janua.Core.Football.initialization');
end;

end.
