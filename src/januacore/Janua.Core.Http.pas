unit Janua.Core.Http;

interface

{$I JANUACORE.INC}

uses
  // System
  System.SysUtils, System.Classes, System.StrUtils, System.SysConst, System.Rtti, System.Generics.Collections,
  System.JSON,

{$IF Defined(WEBBROKER)}
  Web.HttpApp,
{$ENDIF}
  // Janua Core Librarie
  Janua.Core.Types, Janua.Core.Classes, Janua.Core.Params, Janua.Core.Functions, Janua.Core.Http.Intf,
  Janua.Core.System, Janua.Core.Servers, Janua.Core.Metronics, Janua.Core.Cloud,
  Janua.Core.Classes.Social, Janua.Http.Types, Janua.Cloud.Types, Janua.Cloud.Mail.Intf,
  /// Devart Components .........................................

  // Indy
  IdHTTP,
  System.Net.HttpClient, System.NetEncoding,
  Janua.Core.Entities, Janua.Legacy.Classes;

type
  TJanuaPageType = (jptHome, jptHomeFootball, jptGoalRanking, jptRanking, jptMatches, jptLogin,
    jptLoginFootball, jptLoginDico33);

  TJanuaWebPage = (jwpNone, jwpHome, jwpBooking, jwpConfirmation, jwpProfile, jwpLogin, jwpFinalisation,
    jwpCheckOut, jwpDashBoard, jwpFrames, jwpMatchDetails, jwpPlayerCareer);

  TJanuaTinyUrlGenerator = class(TJanuaInterfacedObject, IJanuaUrlGenerator, IJanuaTinyUrlGenerator)
  public
    function GenerateUrl(const aUrl: string): string;
  end;

  TJanuaTestUrlGenerator = class(TJanuaInterfacedObject, IJanuaUrlGenerator, IJanuaTestUrlGenerator)
  public
    function GenerateUrl(const aUrl: string): string;
  end;

const
  // elenco dei titoli associati all'enumeratore soprastante delle pagine in uso nel sistema ........................
  sJanuaWebPage: array [TJanuaWebPage] of string = ('', 'Home', 'Booking', 'Confirmation', 'Profile', 'Login',
    'Finalisation', 'CheckOut', 'DashBoard', 'Frames', 'MatchDetail', 'PlayerCareer');

  sJanuaWebPageUrl: array [TJanuaWebPage] of string = ('/', '/', '/hiteshi2', '/hiteshi3', '/profile',
    '/login', '/finalisation', '/checkout', '/health/dashboard', '/frames', '/matchdetail', '/playercareer');

function GenerateTinyUrl(const aUrl: string): string;

function OpenURL(const aUrl: string; aMime: TJanuaMimeType): string;

{$IF Defined(WEBBROKER)}
procedure EncodeUTF8Response(aResponse: TWebResponse; aString, aMimeType: string);

type
  TWebActionMethod = reference to procedure(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
    var Handled: boolean);
{$ENDIF}

type
  TMyControllerMethod = reference to function(aFrame: boolean): boolean;

Type
  TJanuaWebAction = record

  end;

type
  TJanuaWebRecord = record
    Sender: TObject;
    Handled: boolean;
{$IF Defined(WEBBROKER)}
    Request: Web.HttpApp.TWebRequest;
    Response: Web.HttpApp.TWebResponse;
{$ENDIF}
  end;

type
  TJanuaWebContent = class(TJanuaObject)
  private
{$IF Defined(WEBBROKER)}
    FWebRequest: Web.HttpApp.TWebRequest;
    FWebResponse: Web.HttpApp.TWebResponse;
    procedure SetWebRequest(const Value: Web.HttpApp.TWebRequest);
    procedure SetWebResponse(const Value: Web.HttpApp.TWebResponse);
{$ENDIF WEBBROKER}
  private
    FContentType: TJanuaMime;
    FContentString: string;
    FRawContent: TBytes;
    FContent: string;
    FEncoding: string;
    FRawContentText: String;
    FBlob: TJanuaBlob;
    procedure SetContent(const Value: string);
    procedure SetContentString(const Value: string);
    procedure SetContentType(const Value: TJanuaMime);
    procedure SetRawContent(const Value: TBytes);
    procedure SetEncoding(const Value: string);
    procedure SetRawContentText(const Value: String);
    procedure SetBlob(const Value: TJanuaBlob);

  public
    constructor Create; override;
{$IF Defined(WEBBROKER)}
    procedure SetFromWebBrokerRequest(aRequest: Web.HttpApp.TWebRequest);
{$ENDIF}
  published
    property Content: string read FContent write SetContent;
    property RawContent: TBytes read FRawContent write SetRawContent;
    property RawContentText: String read FRawContentText write SetRawContentText;
    property ContentType: TJanuaMime read FContentType write SetContentType;
    property ContentString: string read FContentString write SetContentString;
    property Encoding: string read FEncoding write SetEncoding;
    property Blob: TJanuaBlob read FBlob write SetBlob;
{$IFDEF WEBBROKER}
    property WebRequest: Web.HttpApp.TWebRequest read FWebRequest write SetWebRequest;
    property WebResponse: Web.HttpApp.TWebResponse read FWebResponse write SetWebResponse;
{$ENDIF WEBBROKER}
  end;

type
  TJanuaResponseHandler = class(TJanuaObject)

  public
  private
  public
  published

  end;

type
  TJanuaRequestHandler = class(TJanuaObject)
  private
{$IF Defined(WEBBROKER)}
    FWebBrokerRequest: Web.HttpApp.TWebRequest;
{$ENDIF}
    FContent: TJanuaContent;
    FIsMobile: boolean;
    FRawHeaders: string;
    FLanguageCode: string;
    FIPAddress: string;
    FRemoteAddr: string;
    FPathInfo: string;
    FHost: string;
    FBrowserName: string;
    FUserAgent: string;
    procedure SetContent(const Value: TJanuaContent);
    procedure SetBrowserName(const Value: string);
    procedure SetHost(const Value: string);
    procedure SetIPAddress(const Value: string);
    procedure SetIsMobile(const Value: boolean);
    procedure SetLanguageCode(const Value: string);
    procedure SetPathInfo(const Value: string);
    procedure SetRawHeaders(const Value: string);
    procedure SetRemoteAddr(const Value: string);
    procedure SetUserAgent(const Value: string);
  public
{$IF Defined(WEBBROKER)}
    procedure SetFromWebBrokerRequest(aRequest: TWebRequest);
{$ENDIF}
    constructor Create; override;
    Destructor Destroy; override;
  published
    property RawHeaders: string read FRawHeaders write SetRawHeaders;
    property IPAddress: string read FIPAddress write SetIPAddress;
    property PathInfo: string read FPathInfo write SetPathInfo;
    property UserAgent: string read FUserAgent write SetUserAgent;
    property LanguageCode: string read FLanguageCode write SetLanguageCode;
    property RemoteAddr: string read FRemoteAddr write SetRemoteAddr;
    property Host: string read FHost write SetHost;
    property IsMobile: boolean read FIsMobile write SetIsMobile;
    property BrowserName: string read FBrowserName write SetBrowserName;
{$IF Defined(WEBBROKER)}
    property WebBrokerRequest: Web.HttpApp.TWebRequest read FWebBrokerRequest write SetFromWebBrokerRequest;
{$ENDIF}
    property Content: TJanuaContent read FContent write SetContent;
  end;

type

  // Array record Definition ...............................................................
  TJanuaDomain = record
    Url: String;
    id: Integer;
    Title: string;
    Whois: string;
  end;

  /// a collection of Domains (array) ......................................................
  TJanuaDomains = record
    count: Integer;
    Domains: array of TJanuaDomain;
    SelectedDomain: TJanuaDomain;
  public
    function getDomainByName(aName: string): boolean;
    function getDomainByUrlRequest(aUrl: String): boolean;
    function AddDomain(aDomain: TJanuaDomain): boolean;
    constructor Create(aCount: Integer);
  end;

type
  TJanuaCustomServerLogs = class(TJanuaCustomServer)
  private
    FWebProfile: TJanuaRequestHandler;
    FWebProfileID: int64;
    procedure SetWebProfile(const Value: TJanuaRequestHandler);
    procedure SetWebProfileID(const Value: int64);
  public
    property WebProfile: TJanuaRequestHandler read FWebProfile write SetWebProfile;
    property WebProfileID: int64 read FWebProfileID write SetWebProfileID;
    procedure RecoverProfileID(aID: int64); virtual; abstract;
    function SaveWebProfile(aProfile: TJanuaRequestHandler): int64; virtual; abstract;
  end;

  // Custom web Parser server - usato per uniformare i differenti protocolli di chiamata al server
  // WebBroker, Delphi MVC,  Lazarus FCL Web, TMS Sparkle
  // Si basa su diverse Classi Tra cui WebProfile che si occupa fisicamente del 'Parsing' della
  // Chiamata al server stesso.

type
  TJanuaCustomRequestParser = class(TJanuaCoreComponent)
{$IF Defined(WEBBROKER)}
  private
    FWebBrokerRequest: TWebRequest;
    procedure SetWebBrokerRequest(const Value: TWebRequest);
{$ENDIF}
  private
    FRequestHandler: TJanuaRequestHandler;
    FJanuaIsoCulture: TJanuaIsoLanguageCountry;
    FServerLog: TJanuaCustomServerLogs;
    procedure SetWebProfile(const Value: TJanuaRequestHandler);
    procedure SetJanuaIsoCulture(const Value: TJanuaIsoLanguageCountry);
    procedure SetBrowserName(const Value: string);
    procedure SetIsMobile(const Value: boolean);
    procedure SetServerLog(const Value: TJanuaCustomServerLogs);
    procedure SetgetParams(const Value: TJanuaParamsReader);
    procedure SetpostParams(const Value: TJanuaParamsReader);
  protected
    FpostParams: TJanuaParamsReader;
    FgetParams: TJanuaParamsReader;
    procedure SetLanguageCode(const Value: string);
  public
    Constructor Create(AOwner: TComponent); override;
    procedure RecordSessionLog;
    function GetWebProfile: TJanuaRequestHandler;
    procedure AssignWebProfile(AWebProfile: TJanuaRequestHandler);

  published
{$IF Defined(WEBBROKER)}
    property WebBrokerRequest: TWebRequest read FWebBrokerRequest write SetWebBrokerRequest;
{$ENDIF}
    property RequestHandler: TJanuaRequestHandler read FRequestHandler write SetWebProfile;
    property JanuaIsoCulture: TJanuaIsoLanguageCountry read FJanuaIsoCulture write SetJanuaIsoCulture;
    property ServerLog: TJanuaCustomServerLogs read FServerLog write SetServerLog;
    property postParams: TJanuaParamsReader read FpostParams write SetpostParams;
    property getParams: TJanuaParamsReader read FgetParams write SetgetParams;
  end;

type
  TJanuaCustomRequestManager = class(TJanuaCoreComponent)
  private
    FDebug: boolean;
    FpostParams: TJanuaParamsReader;
    FgetParams: TJanuaParamsReader;
    procedure SetDebug(const Value: boolean);
    procedure SetgetParams(const Value: TJanuaParamsReader);
    procedure SetpostParams(const Value: TJanuaParamsReader);
  protected
    FWebProfile: TJanuaRequestHandler;
  public

  published
    property Debug: boolean read FDebug write SetDebug default false;
    property getParams: TJanuaParamsReader read FgetParams write SetgetParams;
    property postParams: TJanuaParamsReader read FpostParams write SetpostParams;
  end;

type
  TJanuaRepositoryType = (jrtJanuaDir, jrtAppDir, jrtDatabase);

type
  TJanuaTemplateRepository = class(TJanuaCustomServer)
  private
    FPageTitle: string;
    FTemplateName: string;
    FJanuaMailSender: IJanuaMailSender;
    FLocalApp: boolean;
    FRepositoryType: TJanuaRepositoryType;
    FTemplateBodyName: string;
    FUserProfile: TJanuaRecordUserProfile;
    FPageTemplateFile: TFileName;
    FPageBodyFile: TFileName;
    FPageBeginFile: string;
    FPageScriptsFile: string;
    FPageHeaderFile: string;
    FPageFooterFile: string;
    FTemplateCssFile: string;
    FPageHeadFile: string;
    FUrlSite: string;
    FPageDescription: string;
    FPageAuthor: string;
    FTemplateMailBodyName: string;
    FTemplateMailRowName: string;
    FMailTemplateFile: string;
    FTemplateMailName: string;
    FJanuaFileCache: TJanuaFileCache;
    FLasFileName: string;
    FMailTemplateBodyFile: string;
    FMailTemplateRowFile: string;
    FFileNameHeader: string;
    FFileNameFooter: string;
    FUserDropDownMenu: TJanuaMetroUserDropDownMenu;
    FPageType: TJanuaPageType;
    FJanuaCloudOAuth: TJanuaCustomCloudOAuth;
    FJanuaServerSystem: TJanuaCustomServerSystem;
    procedure LoadFromFile(sStrings: TStrings; aFirstFileName: string; var aSecondFileName: string); overload;
    procedure LoadFromFile(sStrings: TStrings; aFirstFileName: string;
      var aSecondFileName: TFileName); overload;
    procedure LoadFromFile(var sString: string; const aFileName: string; var sFileName: string); overload;
    procedure LoadFromFile(var sString: string; const aFileName: string; var sFileName: TFileName); overload;
    procedure SetNameSpace(const Value: string);
    procedure SetPageBegin(const Value: TStrings);
    procedure SetPageBody(const Value: TStrings);
    procedure SetPageFooter(const Value: TStrings);
    procedure SetPageHead(const Value: TStrings);
    procedure SetPageHeader(const Value: TStrings);
    procedure SetPageScripts(const Value: TStrings);
    procedure SetTemplate(const Value: TStrings);
    procedure SetTemplateCss(const Value: TStrings);
    procedure SetTemplateName(const Value: string);
    procedure SetPageTitle(const Value: string);
    procedure SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
    procedure SetLocalApp(const Value: boolean);
    procedure SetRepositoryType(const Value: TJanuaRepositoryType);
    procedure SetTemplateBodyName(const Value: string);
    { TODO -cIndy : SetUserProfile(const Value: TJanuaRecordUserProfile) Hides Virtual Method }
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile); override;
    procedure SetPageTemplate(const Value: TStrings);
    procedure SetPageTemplateFile(const Value: TFileName);
    procedure SetPageBodyFile(const Value: TFileName);
    procedure SetPageBeginFile(const Value: string);
    procedure SetPageFooterFile(const Value: string);
    procedure SetPageHeaderFile(const Value: string);
    procedure SetPageScriptsFile(const Value: string);
    procedure SetTemplateCssFile(const Value: string);
    procedure SetPageHeadFile(const Value: string);
    function GetUrlAssets: string;
    procedure SetUrlAssets(const Value: string);
    procedure SetUrlSite(const Value: string);
    procedure SetPageAuthor(const Value: string);
    procedure SetPageDescription(const Value: string);
    procedure SetMailTemplateFile(const Value: string);
    procedure SetTemplateMailBodyName(const Value: string);
    procedure SetTemplateMailName(const Value: string);
    procedure SetTemplateMailRowName(const Value: string);
    procedure SetJanuaFileCache(const Value: TJanuaFileCache);
    procedure SetLasFileName(const Value: string);
    procedure SetMailBody(const Value: TStrings);
    procedure SetMailRow(const Value: TStrings);
    procedure SetMailTemplate(const Value: TStrings);
    procedure SetMailTemplateBodyFile(const Value: string);
    procedure SetMailTemplateRowFile(const Value: string);
    procedure SetFileNameFooter(const Value: string);
    procedure SetFileNameHeader(const Value: string);
    procedure SetUserDropDownMenu(const Value: TJanuaMetroUserDropDownMenu);
    procedure SetPageType(const Value: TJanuaPageType);
    procedure SeTJanuaCustomCloudOAuth(const Value: TJanuaCustomCloudOAuth);
    procedure SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
  protected
    // insieme delle funzioni e delle variabili per la preparazione base dei template, comuni a tutti i modelli siti
    // il nome del Tamplate ed il NameSpace sono le coordinate del modello da Caricare.
    // i dati del Template in base al namespace possono essere memorizzati su Record all'interno dello Schema
    // Oppure nella cartella di riferimento sul file system identificata dal NameSpace
    FPageBegin: TStrings;
    FPageHead: TStrings;
    FPageScripts: TStrings;
    FTemplate: TStrings;
    FPageBody: TStrings;
    FPageHeader: TStrings;
    FPageFooter: TStrings;
    FTemplateCss: TStrings;
    FPageTemplate: TStrings;
    FNameSpace: string;
    // elementi della Mail
    // create and destroy Elements ................................
    FMailBody: TStrings;
    FMailRow: TStrings;
    FMailTemplate: TStrings;
    // configurato base e NameSpace ecco le singole procedure di Caricamento dei modelli ............
    function PreparePageStyle: boolean;
    function PreparePageHead(sCustomScripts: string = ''): boolean;
    function PreparePageBegin: boolean;
    function PreparePageHeader: boolean;
    function PreparePageFooter: boolean;
    function PreparePageScripts(sCustomScripts: string = ''): boolean;
    function InternalActivate: boolean; override;
    procedure TerminateTemplatePage(aIsFrame: boolean); virtual;
  protected
    function PrepareMailHeader: boolean;
    function PrepareMailFooter: boolean;
    function PrepareMailStyle: boolean;
  public // public class Procedures
    Constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
  public // Mail Template specific functions ..........................................................................
    procedure ReplaceMailTemplateString(const aMarker, aValue: string);
    // sostituisce una stringa in base ad un tag
    procedure PrepareMailWelcome; virtual;
    // procedura che si occupa di caricare la mail di benvenuto dal modello sito
    procedure PrepareMailPasswordRecovery; virtual;
    // procedura che prepara e testa la mail di recupero Password .......
    procedure PrepareMailTemplate; overload; virtual;
    // carica il mail Template se le propriet? sono impostate
    // procedura che prapara il template (esegue il caricamento ed il montaggio del medesimo in memoria).
    procedure PrepareMailTemplate(const aNameSpace, aTemplateName: string; const aBodyName: string = '';
      const aRowName: string = '')overload; virtual;
    property MailTemplate: TStrings read FMailTemplate write SetMailTemplate;
    property MailBody: TStrings read FMailBody write SetMailBody;
    property MailRow: TStrings read FMailRow write SetMailRow;
  published // Mail Template Specific Properties .....................................................
    property TemplateMailName: string read FTemplateMailName write SetTemplateMailName;
    // nome del tamplate della mail caricato (solitamente nome file meno html)
    property TemplateMailBodyName: string read FTemplateMailBodyName write SetTemplateMailBodyName;
    // nome del body del template se separato dal modello contenitore.
    property TemplateMailRowName: string read FTemplateMailRowName write SetTemplateMailRowName;
    // nome del template delle righe della mail se sono presenti.
    // ***** location dei file caricati ***************************************************************
    property MailTemplateFile: string read FMailTemplateFile write SetMailTemplateFile;
    // nome del tamplate della mail caricato (solitamente nome file meno html)
    property MailTemplateBodyFile: string read FMailTemplateBodyFile write SetMailTemplateBodyFile;
    // nome del body del template se separato dal modello contenitore.
    property MailTemplateRowFile: string read FMailTemplateRowFile write SetMailTemplateRowFile;
    // il menu viene interamente gestito dalla sessione del controller e va a completare le pagine se presente
    property UserDropDownMenu: TJanuaMetroUserDropDownMenu read FUserDropDownMenu write SetUserDropDownMenu;
  public
    // TemplateManagement procedures functions and properties
    procedure ReplaceTemplateString(const aMarker, aValue: string);
    procedure AddTemplate(const filename, replacestring: string); overload;
    procedure PrepareTemplate(const aNameSpace, aTemplateName, aBodyName: string); overload; virtual;
    procedure PrepareTemplate; overload; virtual;
    procedure AddTemplate; overload;
    function getTemplatesDir: string;
    function StringFromFile(const aFileName: string): string;
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
    property PageType: TJanuaPageType read FPageType write SetPageType;
  public
    // procedure preparazione/termine pagine - template partendo (assemblaggio e costruzione)
    procedure InternalRedirect(aUrl: string);
    procedure ExternalRedirect(aUrl: string);
    procedure PrepareHomeTemplate;
    procedure ShowLogin; virtual;
    function PreparePage(const aPage: string): boolean; virtual;
    procedure PreparePageLogin(aFrame: boolean = false); virtual; abstract;
    // definita di volta in volta dagli eredi
    // se vogliono rimanere nello standard chiameranno ShowLogin altrimetti scriveranno poi il loro codice
    procedure PreparePageProfile;
    procedure PreparePagePaymentForm(aIsFrame: boolean); virtual;
    procedure PreparePageConfirmPaymentForm(aIsFrame: boolean); virtual;
    // PreparePageConfirmPaypalPayment
    procedure PreparePageConfirmPaypalPayment(aIsFrame: boolean); virtual;
    // self.FJanuaRepository.TerminatePageContent;
    procedure TerminatePagePaymentForm(aIsFrame: boolean; bHasErrors: boolean = false); virtual;
    // TerminatePageConfirmPaymentForm Pagina contenente il Form Paypal per il pagamento, funzione
    // Virtuale in quanto dovrebbe essere sovrascritta dalle classi discendenti con i dati corretti
    // di Pagamento da Richiedere al cliente (bonifico / Paypal / Carta di Credito ecc ecc ...).
    procedure TerminatePageConfirmPaymentForm(aIsFrame: boolean); virtual;
    // TerminatePageConfirmPaypalPayment
    procedure TerminatePageConfirmPaypalPayment(aIsFrame: boolean); virtual;
    procedure PreparePageDashboard;
    procedure ShowProfile(aProfile: TJanuaRecordUserProfile); overload;
    procedure ShowProfile; overload;
    procedure TerminatePageContent; virtual;
    procedure TerminatePageLogin; virtual;
    function PreparePage404: boolean; virtual;
    function PreparePage501: boolean; virtual;
    function LoginScripts: string;
    function LoginHead: string;
    // funzione che termina le impostazioni della pagina con tutti i campi
  published
    property JanuaFileCache: TJanuaFileCache read FJanuaFileCache write SetJanuaFileCache;
    // Questo collegamento serve per la generazione del/i link oAuth per le il form di login.
    property JanuaCloudOAuth: TJanuaCustomCloudOAuth read FJanuaCloudOAuth write SeTJanuaCustomCloudOAuth;
    property JanuaServerSystem: TJanuaCustomServerSystem read FJanuaServerSystem write SetJanuaServerSystem;
  published
    property UrlAssets: string read GetUrlAssets write SetUrlAssets;
    property UrlSite: string read FUrlSite write SetUrlSite;
    property TemplateName: string read FTemplateName write SetTemplateName;
    property TemplateBodyName: string read FTemplateBodyName write SetTemplateBodyName;
    property PageTitle: string read FPageTitle write SetPageTitle;
    property PageDescription: string read FPageDescription write SetPageDescription;
    property PageAuthor: string read FPageAuthor write SetPageAuthor;
    property TemplatesDir: string read getTemplatesDir;
    property RepositoryType: TJanuaRepositoryType read FRepositoryType write SetRepositoryType;
    property LocalApp: boolean read FLocalApp write SetLocalApp default false;
    property NameSpace: string read FNameSpace write SetNameSpace;
    // Templates TStringList Storage ..................................................
    property LasFileName: string read FLasFileName write SetLasFileName;

    property PageHead: TStrings read FPageHead write SetPageHead;
    property PageHeadFile: string read FPageHeadFile write SetPageHeadFile;

    property PageTemplate: TStrings read FPageTemplate write SetPageTemplate;
    property PageTemplateFile: TFileName read FPageTemplateFile write SetPageTemplateFile;

    property PageBegin: TStrings read FPageBegin write SetPageBegin;
    property PageBeginFile: string read FPageBeginFile write SetPageBeginFile;

    property Template: TStrings read FTemplate write SetTemplate;
    property PageHeader: TStrings read FPageHeader write SetPageHeader;
    property PageHeaderFile: string read FPageHeaderFile write SetPageHeaderFile;

    property PageFooter: TStrings read FPageFooter write SetPageFooter;
    property PageFooterFile: string read FPageFooterFile write SetPageFooterFile;

    property PageScripts: TStrings read FPageScripts write SetPageScripts;
    property PageScriptsFile: string read FPageScriptsFile write SetPageScriptsFile;

    property PageBody: TStrings read FPageBody write SetPageBody;
    property PageBodyFile: TFileName read FPageBodyFile write SetPageBodyFile;

    property TemplateCss: TStrings read FTemplateCss write SetTemplateCss;
    property TemplateCssFile: string read FTemplateCssFile write SetTemplateCssFile;
    // classes used ................ references ................................................
    property JanuaMailSender: IJanuaMailSender read FJanuaMailSender write SeTJanuaCustomMailSender;

    // Files to be loaded and their Defaults ..........................................................................
    property FileNameFooter: string read FFileNameFooter write SetFileNameFooter;
    property FileNameHeader: string read FFileNameHeader write SetFileNameHeader;
  end;

type
  TJanuaCustomWebController = class(TJanuaCoreComponent)
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  private
    FSessionLog: string;
    FSessionUID: int64;
    FTest: boolean;
    FLoginFailed: boolean;
    FWebResponse: TStrings;
    FRoot: string;
    FPersistent: boolean;
    FJsonResponse: string;
    FHtmlResponse: string;
    FXmlResponse: string;
    FMime: TJanuaMime;
    FJanuaMailSender: IJanuaMailSender;
    FFacebookActionScopes: TJanuaFBSCopeTypes;
    FFacebookTokenUrl: string;
    FFacebookToken: string;
    FIsFrame: boolean;
    FFacebookCode: string;
    FSideMenu: boolean;
    procedure setLatitude(const Value: Extended);
    procedure setLongitude(const Value: Extended);
    function getLatitude: Extended;
    function getLongitude: Extended;
    procedure Setaddress(const Value: string);
    procedure SetSessionKey(const Value: string);
    procedure SetSessionLog(const Value: string);
    procedure SetSessionUID(const Value: int64);
    procedure SetTest(const Value: boolean);
    function getSessionFields: string; virtual;
    procedure SetLoginFailed(const Value: boolean);
    function LoginTitle: string;
    procedure SetJanuaSystem(const Value: TJanuaCustomServerSystem);
    procedure SetWebResponse(const Value: TStrings);
    procedure SetRoot(const Value: string);
    // procedure SetAppUrl(const Value: string);  // Read Only Property
    procedure SetPersistent(const Value: boolean);
    procedure SetMimeType(const Value: TJanuaMimeType);
    procedure SetHtmlResponse(const Value: string);
    procedure SetJsonResponse(const Value: string);
    procedure SetXmlResponse(const Value: string);
    function GetHtmlResponse: string;
    function GetJsonReponse: string;
    function GetXmlResponse: string;
    function getJsonResponse: string;
    procedure SetMime(const Value: TJanuaMime);
    function getMimeType: TJanuaMimeType;
    function getIsPublic: boolean;
    procedure SetPassword(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
    procedure SetFacebookActionScopes(const Value: TJanuaFBSCopeTypes);
    procedure SeTJanuaCustomCloudOAuth(const Value: TJanuaCustomCloudOAuth);
    procedure SetFacebookTokenUrl(const Value: string);
    procedure SetFacebookToken(const Value: string);
    procedure SetIsFrame(const Value: boolean);
    procedure SetFacebookCode(const Value: string);
    procedure SetSideMenu(const Value: boolean);
    procedure AssignCheck(aProcedure: string);
    // Facebook - Twitter oAuth Framework REST..................................
  strict protected
    FJanuaFBUrl: TJanuaFacebookUrl;
    FJanuaCloudOAuth: TJanuaCustomCloudOAuth;
    FFromPage: TJanuaWebPage;
    FToPage: TJanuaWebPage;
    function GetFacebookActionURL: string;
    procedure SetFromPage(const Value: TJanuaWebPage);
    procedure SetToPage(const Value: TJanuaWebPage);
    // ***************************************************************************
  strict protected
    function InternalActivate: boolean; override;
  strict protected // system and profile mangement .............................
    FMailParts: TJanuaMailMessage;
    FSessionSet: boolean;
    FSessionChecked: boolean;
    FJanuaSystem: TJanuaCustomServerSystem;
    FJanuaCustomServer: TJanuaCustomServer;
    procedure SetUserProfile(const Value: TJanuaRecordUserProfile); virtual;
    function getSessionKey: string; virtual;
    function getUserProfile: TJanuaRecordUserProfile; virtual;
  strict protected // procedure che sono chiamate dalle procedure Login ed Action .....
    procedure SetLoginPages; virtual;
    // questa procedura ? passata da Abstract a Virtual standardizzando le pages
    procedure PrepareLoginTemplate; virtual; Abstract;
    procedure TemplateHead(aUseFrame: boolean = false); virtual; Abstract;
    procedure TerminateHome; virtual;
    procedure GoToPage(out Result: boolean); Virtual;
  public
    // Virtual  Actions to be implemented by Descendants
    function Action501(aFrame: boolean = false): boolean; virtual;
    function Action404(aFrame: boolean = false): boolean; virtual;
    function ActionPage(aPage: string): boolean; virtual;
    function ActionDoRegister: boolean; virtual;
    function ActionDoLogin: boolean; virtual;
    // ActionDoLogOut esegue il Logout e successivamente invia alla Home Page
    function ActionDoLogOut: boolean; virtual;
    function ActionDoLoginFacebook: boolean; virtual;
    function ActionLogin(error: boolean = false; ErrorMessage: string = ''): boolean; virtual;
    // self.FJanuaController.ActionConfirmPaypalPayment(aUseFrame, aSuccess)
    function ActionConfirmPaypalPayment(aUseFrame: boolean = false): boolean; virtual;
    function ActionPaymentForm(aUseFrame: boolean = false; bHasErrors: boolean = false): boolean; virtual;
    // ActionConfirmPaymentForm  questa procedura emette il preventivo ed il Form di Pagamento
    // conforme con le specifiche di pagamento attive nella classe o nel suo discendente .....
    function ActionConfirmPaymentForm(aUseFrame: boolean = false): boolean; virtual;
  strict protected
    FPassword: string;
    FUsername: string;
    FCoordinates: TJanuaCoordinates;
    FAddress: string;
    FJanuaRepository: TJanuaTemplateRepository;
    procedure WriteResponse;
    function GetAppUrl: string; virtual;
  public
    procedure SetIsPublic;
    procedure SelfCheck; virtual;
    procedure StartPublicWebSession; virtual;
    procedure CheckSessionKey(const aKey: string); virtual;
    // Notifications gestisce le notifiche di sistema, di default prende le notifiche presente nel 'core' system
    function ActionRestNotifications: boolean; virtual;
    function Messages: string; Virtual;
    property JanuaMailSender: IJanuaMailSender read FJanuaMailSender write SeTJanuaCustomMailSender;
    property UserProfile: TJanuaRecordUserProfile read getUserProfile write SetUserProfile;
    property WebResponse: TStrings read FWebResponse write SetWebResponse;
    property MimeType: TJanuaMimeType read getMimeType write SetMimeType;
    property HtmlResponse: string read GetHtmlResponse write SetHtmlResponse;
    property JsonResponse: string read getJsonResponse write SetJsonResponse;
    property XmlResponse: string read GetXmlResponse write SetXmlResponse;
    property Username: string read FUsername write SetUsername;
    property Password: string read FPassword write SetPassword;
    property IsFrame: boolean read FIsFrame write SetIsFrame;
    property SideMenu: boolean read FSideMenu write SetSideMenu;
  published
    property Mime: TJanuaMime read FMime write SetMime;
    property SessionKey: string read getSessionKey write SetSessionKey;
    property IsPublic: boolean read getIsPublic;
    property SessionLog: string read FSessionLog write SetSessionLog;
    property SessionUID: int64 read FSessionUID write SetSessionUID;
    property Test: boolean read FTest write SetTest;
    property SessionFields: string read getSessionFields;
    property LoginFailed: boolean read FLoginFailed write SetLoginFailed;
    property JanuaSystem: TJanuaCustomServerSystem read FJanuaSystem write SetJanuaSystem;
    property Root: string read FRoot write SetRoot;
    property AppUrl: string read GetAppUrl stored false;
    /// la propriet?'persistent' indica se il componente ? usato a design time su una form ed ? (quindi) persistente
    /// nel caso in cui sia persistente allora non verranno distrutti gli oggetti esterni.
    property Persistent: boolean read FPersistent write SetPersistent;
    property Latitude: Extended read getLatitude write setLatitude;
    property Longitude: Extended read getLongitude write setLongitude;
    property Address: string read FAddress write Setaddress;
    // Facebook Properties .............................................................................................
    property FacebookActionScopes: TJanuaFBSCopeTypes read FFacebookActionScopes
      write SetFacebookActionScopes;
    property FacebookActionUrl: string read GetFacebookActionURL;
    property JanuaCloudOAuth: TJanuaCustomCloudOAuth read FJanuaCloudOAuth write SeTJanuaCustomCloudOAuth;
    property FacebookTokenUrl: string read FFacebookTokenUrl write SetFacebookTokenUrl;
    property FacebookToken: string read FFacebookToken write SetFacebookToken;
    property FacebookCode: string read FFacebookCode write SetFacebookCode;
    property FromPage: TJanuaWebPage read FFromPage write SetFromPage default TJanuaWebPage.jwpNone;
    property ToPage: TJanuaWebPage read FToPage write SetToPage default TJanuaWebPage.jwpNone;
  end;

  /// TJanuaWebSession ? un oggetto che viene istanziato dal Web Server ogni volta che questo riceve una chiamata
  /// occorre che ogni sessione sia istanziata in parallelo sul server per non 'mischiare' le sessioni tra di loro
  /// Alcuni Elementi quindi sono 'fissi' sul server altri sono costruiti tra questi la 'sessione' che ? il motore
  /// dell'applicazione web. Ogni Sessione dedicata poi si occuper? di istanziare i server che le saranno utili
  /// per rispondere alle varie chiamate
type
  TJanuaWebSession = class(Janua.Core.Classes.TJanuaCoreComponent)
  private
    LValid: TDateTime;
    Valid: Integer;
    procedure CheckCookieSession(sCookie: string);
  private
    FSessionUrl: string;
    FJanuaSystem: TJanuaCustomServerSystem;
    FPersistent: boolean;
    FRawHeaders: TStrings;
    procedure SetRoot(const Value: string);
    procedure SetSessionUrl(const Value: string);
    procedure SetJanuaSystem(const Value: TJanuaCustomServerSystem);
    procedure SetPersistent(const Value: boolean);
    procedure SetRawHeaders(const Value: TStrings);
  strict protected
    FFromPage: TJanuaWebPage;
    FToPage: TJanuaWebPage;
  strict protected
    function InternalActivate: boolean; override;
    function GetFacebookActionURL: string; virtual;
    procedure SetFromPage(const Value: TJanuaWebPage); virtual;
    procedure SetToPage(const Value: TJanuaWebPage); virtual;
  protected
    FJanuaController: TJanuaCustomWebController;
    FJanuaWebRecord: TJanuaWebRecord;
    FRoot: string;
    FNoStartSession: boolean;
    FPage: string;
    function GetAppUrl: string;
    procedure InternalCreateController; virtual; abstract;
    procedure InternalDestroyController; virtual; abstract;
    procedure SetupController; Virtual;
    procedure StartSession; Virtual;
    procedure StopSession; Virtual;
    // variabile da impostare sull'evento on Create del sistema centrale del server .............
  public // virtual inherited procedures and functions ...........................................
    procedure SelfCheck; virtual;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Messages: string; Virtual;
{$IFDEF WEBBROKER}
  strict protected
    procedure ResponseController(Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aMethod: TMyControllerMethod; aUseFrame: boolean = false); virtual;
    procedure WebResponseController(Response: TWebResponse); virtual;
    procedure JsonResponseController(Response: TWebResponse); virtual;
    procedure WebResponse501(Response: TWebResponse); virtual;
    procedure WebResponse404(Response: TWebResponse); virtual;
    function CheckSession(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aUseFrame: boolean = false; aCheckPayment: boolean = false): boolean; virtual;
  public // Web Action Procedures common to all JanuaProject Web Frameworks
    procedure Action404(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      InternalCall: boolean = false);
    procedure ActionLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      InternalCall: boolean = false; aFrame: boolean = false); virtual;
    procedure ActionDoLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aFrame: boolean = false); virtual;
    procedure RegisterAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aFrame: boolean = false);
    procedure ActionPayment(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean); virtual;
    procedure ActionPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse; var Handled: boolean;
      aFrame: boolean = false); virtual;
    procedure LoginAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean);
    procedure RestNotificationsAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean); Virtual; Abstract;
    // GoToPage permette di raggiungere una nuova pagina o meglio di inviare ad una nuova pagina ......................
    procedure GoToPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean); virtual;
    // ActionPaymentForm Azione che crea la pagina da compilare per il pagamento con i dati del cliente....
    procedure ActionPaymentForm(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aUseFrame: boolean = false); virtual;
    // ActionConfirmPaymentForm
    procedure ActionConfirmPaymentForm(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aUseFrame: boolean = false); virtual;
    // ActionConfirmPaypalPayment
    procedure ActionConfirmPaypalPayment(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
      var Handled: boolean; aUseFrame: boolean = false); virtual;
  public // other Public Procedures not Linked to page Action Production ..............................................
    procedure GetSessionRequest(const aRequest: TWebRequest); Virtual;
    procedure SetCookies(aValid: Integer; var aResponse: TWebResponse; isJson: boolean = false); virtual;
    procedure WritePage(var aResponse: TWebResponse); Virtual;
    procedure GoToError(Response: TWebResponse; var Handled: boolean); virtual;
{$ENDIF WEBBROKER}
  public
    property RawHeaders: TStrings read FRawHeaders write SetRawHeaders;
    property FromPage: TJanuaWebPage read FFromPage write SetFromPage default TJanuaWebPage.jwpNone;
    property ToPage: TJanuaWebPage read FToPage write SetToPage default TJanuaWebPage.jwpNone;
  published
    property JanuaSystem: TJanuaCustomServerSystem read FJanuaSystem write SetJanuaSystem;
    property Root: string read FRoot write SetRoot;
    property SessionUrl: string read FSessionUrl write SetSessionUrl;
    property AppUrl: string read GetAppUrl stored false;
    property Persistent: boolean read FPersistent write SetPersistent;
  end;

type

  TJanuaHttpPlug = class(TJanuaPlug)
  protected
    procedure SetJanuaProcedure(const Value: TJanuaProcedure); override;
  public
    procedure GetProcedureResult(var vParamsIN, vParamsOUT: TJanuaParams; var vContent: TJanuaContent;
      var aResult: boolean);

  end;

  TJanuaAppClientHttp = class(TJanuaAppClient)

  end;

{$IFDEF WEBBROKER}

  TJanuaSocketWebBroker = class(TJanuaSocket)
  private
    FWebModule: TWebModule;
    FWebAction: TWebActionItem;
    procedure SetWebModule(const Value: TWebModule);
    procedure SetWebAction(const Value: TWebActionItem);
  public
    procedure publish; override;
  public
    property WebAction: TWebActionItem read FWebAction write SetWebAction;
  published
    property WebModule: TWebModule read FWebModule write SetWebModule;
  end;

  TJanuaAppServerWebBroker = class(TJanuaAppServer)
  protected
    procedure InternalAddSocket(aProcedure: TJanuaProcedure); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;
{$ENDIF}

implementation

uses {$IFDEF MSWINDOWS} WinInet, {$ENDIF} Janua.Core.Commons, Janua.Application.Framework,
  System.Net.HttpClientComponent;

{ TODO : Usare i MIME Types di Daniele TETI DMVC Framework }
function OpenURL(const aUrl: string; aMime: TJanuaMimeType): string;
var
  LResponse: IHTTPResponse;
  LNetHttpRequest: TNetHTTPRequest;
  LNetHttpClient: TNetHttpClient;
begin
  LNetHttpClient := TNetHttpClient.Create(nil);
  try
    LNetHttpRequest := TNetHTTPRequest.Create(nil);
    LNetHttpRequest.Client := LNetHttpClient;
    try

      LNetHttpRequest.Accept := JanuaMimeString[aMime];
      LNetHttpRequest.MethodString := 'GET';

      LNetHttpRequest.Url := aUrl;
      LResponse := LNetHttpRequest.Execute();
    finally
      LNetHttpRequest.Free;
    end;
  finally
    LNetHttpClient.Free;
  end;

{$IFDEF MSWINDOWS}
  Result := LResponse.ContentAsString(TEncoding.UTF8);
{$ELSE}
  Result := LResponse.ContentAsString();
{$ENDIF MSWINDOWS}
end;

function GenerateTinyUrl(const aUrl: string): string;
const
  tinyurl = 'http://tinyurl.com/api-create.php?url=%s';
{$IFDEF MSWINDOWS}
  BuffSize = 2048;
var
  hInter: HINTERNET;
  UrlHandle: HINTERNET;
  BytesRead: Cardinal;
  Buffer: Pointer;
begin
  Result := '';
  hInter := InternetOpen('', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  if Assigned(hInter) then
  begin
    GetMem(Buffer, BuffSize);
    try
      UrlHandle := InternetOpenUrl(hInter, PChar(Format(tinyurl, [aUrl])), nil, 0, INTERNET_FLAG_RELOAD, 0);
      if Assigned(UrlHandle) then
      begin
        InternetReadFile(UrlHandle, Buffer, BuffSize, BytesRead);
        if BytesRead > 0 then
          SetString(Result, PAnsiChar(Buffer), BytesRead);
        InternetCloseHandle(UrlHandle);
      end;
    finally
      FreeMem(Buffer);
    end;
    InternetCloseHandle(hInter);
  end
{$ELSE}

begin
  Result := OpenURL(Format(tinyurl, [aUrl]), TJanuaMimeType.jmtUnknown);
{$ENDIF}
end;

{$IF Defined(WEBBROKER)}

procedure EncodeUTF8Response(aResponse: TWebResponse; aString, aMimeType: string);
var
  aStream: TMemoryStream;
  aStreamWriter: TStreamWriter;
begin
  aStream := TMemoryStream.Create;
  try
    aStreamWriter := TStreamWriter.Create(aStream, TEncoding.UTF8);
    try
      aStreamWriter.Write(aString);
      aStream.Position := 0;
      aResponse.ContentType := IfThen(aMimeType.Trim.IsEmpty, '', aMimeType + ';') + 'charset=utf-8';
      aResponse.ContentStream := aStream;
    finally
      aStreamWriter.Free;
    end;
  except
    on e: exception do
    begin
      aStream.Free;
      aResponse.Content := e.Message;
    end;
  end;
end;
{$ENDIF}

function TJanuaDomains.AddDomain(aDomain: TJanuaDomain): boolean;
begin
  Result := false;
  if not self.getDomainByName(aDomain.Title) and not self.getDomainByUrlRequest(aDomain.Url) then
  begin
    Inc(self.count);
    SetLength(self.Domains, self.count);
    Result := True;
  end;
end;

constructor TJanuaDomains.Create(aCount: Integer);
begin
  self.count := aCount;
  SetLength(self.Domains, aCount);
end;

function TJanuaDomains.getDomainByName(aName: string): boolean;
var
  aRegion: TJanuaDomain;
begin
  Result := false;
  if aName = '' then
    Exit(false);
  for aRegion in self.Domains do
    if UpperCase(aRegion.Title) = UpperCase(aName) then
    begin
      Result := True;
      self.SelectedDomain := aRegion;
      Exit;
    end;
end;

function TJanuaDomains.getDomainByUrlRequest(aUrl: String): boolean;
var
  aRegion: TJanuaDomain;
begin
  Result := false;
  if aUrl = '' then
    Exit(false);
  for aRegion in self.Domains do
    if AnsiContainsText(string(aUrl), string(aRegion.Url)) then
    begin
      Result := True;
      self.SelectedDomain := aRegion;
      Exit;
    end;
end;

{ TJanuaCustomWebProfile }

{ TJanuaCustomServerLogs }

procedure TJanuaCustomServerLogs.SetWebProfile(const Value: TJanuaRequestHandler);
begin
  FWebProfile := Value;
end;

procedure TJanuaCustomServerLogs.SetWebProfileID(const Value: int64);
begin
  FWebProfileID := Value;
end;

{ TJanuaCustomRequestManager }

procedure TJanuaCustomRequestManager.SetDebug(const Value: boolean);
begin
  FDebug := Value;
end;

procedure TJanuaCustomRequestManager.SetgetParams(const Value: TJanuaParamsReader);
begin
  FgetParams := Value;
end;

procedure TJanuaCustomRequestManager.SetpostParams(const Value: TJanuaParamsReader);
begin
  FpostParams := Value;
end;

{ TJanuaRecordWebProfile }

constructor TJanuaRequestHandler.Create;
begin
  inherited;

end;

destructor TJanuaRequestHandler.Destroy;
begin

  inherited;
end;

procedure TJanuaRequestHandler.SetBrowserName(const Value: string);
begin
  FBrowserName := Value;
end;

procedure TJanuaRequestHandler.SetContent(const Value: TJanuaContent);
begin
  FContent := Value;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaRequestHandler.SetFromWebBrokerRequest(aRequest: TWebRequest);
begin
  if Assigned(aRequest) then
  begin
    // at first I make a conversion from utf8 to string of the request.
    // self.RawHeaders := TEncoding.UTF8.GetString(aRequest.RawContent);

    if aRequest.ContentType <> '' then
    begin

    end;

    // := TEncoding.UTF8.GetString(aRequest.Content);

    self.IPAddress := aRequest.RemoteIP;
  end;

end;
{$ENDIF}

procedure TJanuaRequestHandler.SetHost(const Value: string);
begin
  FHost := Value;
end;

procedure TJanuaRequestHandler.SetIPAddress(const Value: string);
begin
  FIPAddress := Value;
end;

procedure TJanuaRequestHandler.SetIsMobile(const Value: boolean);
begin
  FIsMobile := Value;
end;

procedure TJanuaRequestHandler.SetLanguageCode(const Value: string);
begin
  FLanguageCode := Value;
end;

procedure TJanuaRequestHandler.SetPathInfo(const Value: string);
begin
  FPathInfo := Value;
end;

procedure TJanuaRequestHandler.SetRawHeaders(const Value: string);
begin
  FRawHeaders := Value;
end;

procedure TJanuaRequestHandler.SetRemoteAddr(const Value: string);
begin
  FRemoteAddr := Value;
end;

procedure TJanuaRequestHandler.SetUserAgent(const Value: string);
begin
  FUserAgent := Value;
end;

{ TJanuaMymeObject }
{ TJanuaContent }

procedure TJanuaWebContent.SetBlob(const Value: TJanuaBlob);
begin
  FBlob := Value;
end;

procedure TJanuaWebContent.SetContent(const Value: string);
begin
  FContent := Value;
end;

procedure TJanuaWebContent.SetContentString(const Value: string);
begin
  FContentString := Value;
end;

procedure TJanuaWebContent.SetContentType(const Value: TJanuaMime);
begin
  FContentType := Value;
end;

procedure TJanuaWebContent.SetEncoding(const Value: string);
begin
  FEncoding := Value;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaWebContent.SetFromWebBrokerRequest(aRequest: Web.HttpApp.TWebRequest);
begin
  FWebRequest := aRequest;
  SetRawContent(aRequest.RawContent);
  self.FContentString := aRequest.ContentType;
end;

procedure TJanuaWebContent.SetWebRequest(const Value: Web.HttpApp.TWebRequest);
begin
  if Assigned(Value) then
    SetFromWebBrokerRequest(Value);
end;

{$ENDIF Defined(WEBBROKER)}

procedure TJanuaWebContent.SetRawContent(const Value: TBytes);
begin
  FRawContent := Value;
  // ma ? necessario 'tradurre' il rawcontent? Se encoding ? UTF8 MAGARI ANCHE
  self.RawContentText := TEncoding.UTF8.GetString(self.FRawContent);
end;

procedure TJanuaWebContent.SetRawContentText(const Value: String);
begin
  FRawContentText := Value;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaWebContent.SetWebResponse(const Value: Web.HttpApp.TWebResponse);
begin

end;
{$ENDIF Defined(WEBBROKER)}

constructor TJanuaWebContent.Create;
begin
  FContentType := TJanuaMime.Create;
end;

{ TJanuaCustomRequestParser }

procedure TJanuaCustomRequestParser.AssignWebProfile(AWebProfile: TJanuaRequestHandler);
begin

end;

constructor TJanuaCustomRequestParser.Create(AOwner: TComponent);
begin
  inherited;

end;

function TJanuaCustomRequestParser.GetWebProfile: TJanuaRequestHandler;
begin
  Result := TJanuaRequestHandler.Create;
  { TODO -cHttp : Implement CustomRequestParser  GetWeb Profile }
end;

procedure TJanuaCustomRequestParser.RecordSessionLog;
begin

end;

procedure TJanuaCustomRequestParser.SetBrowserName(const Value: string);
begin

end;

procedure TJanuaCustomRequestParser.SetgetParams(const Value: TJanuaParamsReader);
begin
  FgetParams := Value;
end;

procedure TJanuaCustomRequestParser.SetIsMobile(const Value: boolean);
begin

end;

procedure TJanuaCustomRequestParser.SetJanuaIsoCulture(const Value: TJanuaIsoLanguageCountry);
begin

end;

procedure TJanuaCustomRequestParser.SetLanguageCode(const Value: string);
begin

end;

procedure TJanuaCustomRequestParser.SetpostParams(const Value: TJanuaParamsReader);
begin
  FpostParams := Value;
end;

procedure TJanuaCustomRequestParser.SetServerLog(const Value: TJanuaCustomServerLogs);
begin

end;

{$IF Defined(WEBBROKER)}

procedure TJanuaCustomRequestParser.SetWebBrokerRequest(const Value: TWebRequest);
begin

end;
{$ENDIF Defined(WEBBROKER)}

procedure TJanuaCustomRequestParser.SetWebProfile(const Value: TJanuaRequestHandler);
begin

end;

{$IFDEF WEBBROKER}
{ TJanuaSocketWebBroker }

procedure TJanuaSocketWebBroker.publish;
begin
end;

procedure TJanuaSocketWebBroker.SetWebAction(const Value: TWebActionItem);
begin
  FWebAction := Value;
end;

procedure TJanuaSocketWebBroker.SetWebModule(const Value: TWebModule);
begin
  FWebModule := Value;
  if Assigned(FWebModule) and Assigned(self.JanuaProcedure) then
  begin
    FWebAction := FWebModule.Actions.Add;
    FWebAction.Name := JanuaProcedure.FullName;
    FWebAction.MethodType := TMethodType.mtPost;
    FWebAction.PathInfo := JanuaProcedure.Url;
    FWebAction.Enabled := True;
  end;
end;

{ TJanuaAppServerWebBroker }

constructor TJanuaAppServerWebBroker.Create(AOwner: TComponent);
begin
  inherited;

  FMainSocket := TJanuaSocketWebBroker.Create;
  FJsonSocket := TJanuaSocketWebBroker.Create;
  FWebPageSocket := TJanuaSocketWebBroker.Create;
end;

destructor TJanuaAppServerWebBroker.Destroy;
begin
  FMainSocket.Free;
  FJsonSocket.Free;
  FWebPageSocket.Free;
  inherited;
end;

procedure TJanuaAppServerWebBroker.InternalAddSocket(aProcedure: TJanuaProcedure);
begin
  self.FSelectedSocket := TJanuaSocketWebBroker.Create;
  self.FSelectedSocket.JanuaProcedure := aProcedure;

end;

{$ENDIF}
{ TJanuaHttpPlug }

procedure TJanuaHttpPlug.GetProcedureResult(var vParamsIN, vParamsOUT: TJanuaParams;
  var vContent: TJanuaContent; var aResult: boolean);
var
  LResponse: IHTTPResponse;
  aUrl: string;
begin
  inherited;
  aUrl := TNetEncoding.Url.Encode('http://' + ServerUrl);

  case self.JanuaProcedure.HttpMethod of
    TJanuaHttpMethod.jhmGet:
      begin
        aUrl := TNetEncoding.Url.EncodeQuery(aUrl + JanuaProcedure.ParamsIN.AsHttpUrlGetString);
        LResponse := HttpClient.Get(aUrl);
      end;
  end;

end;

procedure TJanuaHttpPlug.SetJanuaProcedure(const Value: TJanuaProcedure);
begin
  inherited;
  if Assigned(FJanuaProcedure) then
    FJanuaProcedure.OnProcedureExecute := self.GetProcedureResult;
end;

procedure TJanuaWebSession.CheckCookieSession(sCookie: string);
begin
  if (sCookie <> '') and (self.FJanuaController.SessionKey <> sCookie) then
    self.FJanuaController.CheckSessionKey(sCookie)
  else
    self.FJanuaController.StartPublicWebSession
end;

{$IFDEF WEBBROKER}
// ----------------------------------- begin windows-linux socket procedures .......................................

procedure TJanuaWebSession.JsonResponseController(Response: TWebResponse);
var
  sJson: string;
begin
  self.SetCookies(7, Response, True);
  if Assigned(self.FJanuaController) then
    sJson := FJanuaController.JsonResponse;
  Janua.Core.Http.EncodeUTF8Response(Response, sJson, FJanuaController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSession.ActionPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aFrame: boolean = false);
var
  aPage: string;
begin
  // importantissimo sempre inizializzare tutte le variabili anche gli Interi .......
  self.StartSession;
  try
    GetSessionRequest(Request);
    // *** KB 2018-0004 *** Page Action Janua Http Page Action on WebBroker
    // per la visualizzazione di una pagina interna uso il parametro 'article' in quanto il parametro 'page' ? gi?
    // stato impiegato per gestire gli URL del sito web parametrizzato o gli url interni del Plugin / iFrame
    aPage := Janua.Core.Functions.HttpGetParamValue(Request, 'article');
    // esegue una verifica su booking_id per controllare se ? il medesimo di sBooking.
    // if booking_id = 0 then
    // booking_id := Janua.Core.Functions.HttpGetCookieInteger(Request, 'booking_id');
    FJanuaController.IsFrame := aFrame;
    if (aPage <> '') and self.FJanuaController.ActionPage(aPage) then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      FJanuaController.Action404;
      WebResponseController(Response);
      Handled := True;
    end;
  finally
    self.StopSession
  end;
end;

procedure TJanuaWebSession.GetSessionRequest(const aRequest: TWebRequest);
var
  sCookie: string;
begin
  try
    self.FSessionUrl := aRequest.Url;
    aRequest.ReadTotalContent;
    self.WriteLog(aRequest.Content);
    self.WriteLog(aRequest.ContentFields.Text);
    sCookie := '';

    if not Assigned(FJanuaController) then
      raise exception.Create('TJanuaWebSession.GetSessionRequest FJanuaController Not Set');

    FJanuaController.Activate;
    sCookie := HttpGetParamValue(aRequest, 'session_key');
    sCookie := IfThen(sCookie <> '', sCookie, HttpGetParamValue(aRequest, 'session_id'));
    if sCookie <> '' then
      CheckCookieSession(sCookie)
    else
    begin
      self.WriteLog('Creo nuova Sessione Cookie non trovato', false);
      FJanuaController.StartPublicWebSession;
      sCookie := FJanuaController.SessionKey;
    end;

    FJanuaController.Address := aRequest.CookieFields.Values['address'];
    self.WriteLog('Cookies Found: ' + 'session_id= ' + FJanuaController.SessionKey);

    // 2017-10-03 Procedura di attivazione del controller che verifica la sessione ed eventualmente
    // avvia una sessione pubblica in base all'URL di riferimento della App.
    if not FJanuaController.Active then
      FJanuaController.Activate;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaWebSession.GetSessionRequest, Session_ID=' + sCookie, e, True);
    end;
  end;

end;

procedure TJanuaWebSession.GoToError(Response: TWebResponse; var Handled: boolean);
begin
  // deve prendere la pagina di Errore inserire il messaggio di Errore ed indicare un pulsante di ritorno alla Home ....
  // Gestito dalla procedura Erede .....................................................................................
end;

procedure TJanuaWebSession.GoToPage(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
begin
  self.FNoStartSession := True;
  // ****** note: go to page must not call any intialisation procedure *******
  // usualmente sar? la procedura Erede a gestire la pagina da raggiungere.............................................

end;

procedure TJanuaWebSession.Action404(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; InternalCall: boolean = false);
begin
  // procedura che processa la login o la registrazione dell'utente al sito Dico33 ..............
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    try
      ResponseController(Request, Response, Handled, self.FJanuaController.Action404);
    finally
      InternalDestroyController;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaWebSessionFootball.Action404: ', e);
    end;
  end;
  // ..............................................................................................
end;

procedure TJanuaWebSession.ActionDoLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aFrame: boolean = false);
begin
  InternalCreateController;
  try
    self.GetSessionRequest(Request);
    self.FJanuaController.Username := Janua.Core.Functions.HttpGetParamValue(Request, 'username');
    self.FJanuaController.Password := Janua.Core.Functions.HttpGetParamValue(Request, 'password');
    if self.FJanuaController.ActionDoLogin then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      self.FJanuaController.Action501;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSession.ActionLogin(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; InternalCall: boolean = false; aFrame: boolean = false);
begin
  // procedura che processa la login o la registrazione dell'utente al sito Dico33 ..............
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := self.JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);
    if self.FJanuaController.ActionLogin then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      self.FJanuaController.Action501;
    end;
  finally
    InternalDestroyController;
  end;

end;

procedure TJanuaWebSession.ActionPayment(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
begin
end;

procedure TJanuaWebSession.ActionPaymentForm(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = false);
begin
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := self.JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
    begin
      self.FJanuaSystem.UserProfile := self.FJanuaController.UserProfile;
      self.FJanuaSystem.SessionKey := self.FJanuaController.SessionKey;
      self.FJanuaSystem.SessionID := self.FJanuaController.SessionUID;
      if self.FJanuaController.ActionPaymentForm(aUseFrame) then
      begin
        WebResponseController(Response);
        Handled := True;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
        self.FJanuaController.Action501;
      end;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSession.ActionConfirmPaypalPayment(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean; aUseFrame: boolean = false);
begin
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := self.JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
    begin
      self.FJanuaSystem.UserProfile := self.FJanuaController.UserProfile;
      self.FJanuaSystem.SessionKey := self.FJanuaController.SessionKey;
      self.FJanuaSystem.SessionID := self.FJanuaController.SessionUID;

      if self.FJanuaController.ActionConfirmPaypalPayment(aUseFrame) then
      begin
        WebResponseController(Response);
        Handled := True;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
        self.FJanuaController.Action501;
      end;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSession.ActionConfirmPaymentForm(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: boolean; aUseFrame: boolean = false);
var
  tmpUser: TJanuaRecordUserProfile;
begin
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := self.JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    if self.CheckSession(Sender, Request, Response, Handled, aUseFrame) then
    begin
      self.FJanuaSystem.UserProfile := self.FJanuaController.UserProfile;
      self.FJanuaSystem.SessionKey := self.FJanuaController.SessionKey;
      self.FJanuaSystem.SessionID := self.FJanuaController.SessionUID;
      tmpUser := FJanuaController.UserProfile;
      tmpUser.LoadFromHttpParams(Request);
      FJanuaController.UserProfile := tmpUser;

      if self.FJanuaController.ActionConfirmPaymentForm(aUseFrame) then
      begin
        WebResponseController(Response);
        Handled := True;
      end
      else
      begin
        // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
        self.FJanuaController.Action501;
      end;
    end;
  finally
    InternalDestroyController;
  end;
end;

procedure TJanuaWebSession.LoginAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean);
// var
// aUserProfile: TJanuaRecordUserProfile;
// sError: string;
// aCheck: boolean;
begin
  self.StartSession;
  self.FPage := Janua.Core.Functions.HttpGetParamValue(Request, 'page');
  // Default Handler Action ..................................
  // primo step preparare il Controller ......................
  InternalCreateController;
  try
    // HS.JanuaPostgresSystem := self.JanuaPostgresSystem;
    // HS.Root := JanuaApplicationProfile1.ProtocolUrl;
    // HS.GetSessionRequest(Request);
    GetSessionRequest(Request);
    Handled := True;
  finally
    InternalDestroyController;
  end;

end;
// ----------------------------------------------------------------------------------------------------------------------
{$ENDIF}

constructor TJanuaWebSession.Create(AOwner: TComponent);
begin
  // qui prima o poi ci metto qualcosa ...............................................
  FRawHeaders := TStringList.Create;
  inherited;
end;

destructor TJanuaWebSession.Destroy;
begin
  FRawHeaders.Free;
  inherited;
end;

function TJanuaWebSession.GetAppUrl: string;
begin
  Result := '';
  // if Assigned(self.FJanuaApplicationProfile) then
  Result := TJanuaApplication.AppName;

end;

function TJanuaWebSession.GetFacebookActionURL: string;
begin
  { TODO : Implementare la procedura GetFacebookActionURL }
end;

function TJanuaWebSession.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        { TODO -cHttp : Implement TJanuaWebSession Activate }
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TJanuaWebSession.SelfCheck;
begin
  if not Assigned(self.FJanuaSystem) then
    raise exception.Create('TJanuaWebSession.SelfCheck FJanuaSystem  not set');

end;

procedure TJanuaWebSession.SetFromPage(const Value: TJanuaWebPage);
begin
  self.FFromPage := Value;
end;

procedure TJanuaWebSession.SetJanuaSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaSystem := Value;
end;

procedure TJanuaWebSession.SetPersistent(const Value: boolean);
begin
  FPersistent := Value;
end;

function TJanuaWebSession.Messages: string;
begin
  if TJanuaApplication.TestMode then
  begin
    Result := 'Cookie Set for session id=' + FJanuaController.SessionKey + '<p>Expires on : ' +
      FormatDateTime('dd/mm/yyyy hh:mm', LValid) + '</p>';

    Result := Result + '<p> Session Log </p>' + '<p> ' + FJanuaController.FSessionLog + '</p>';

    if FJanuaController.IsPublic then
      Result := Result + '<p> Session Public </p>'
    else
      Result := Result + '<p> Session User= ' + FJanuaController.UserProfile.User.Username + '</p>';

    Result := Result + '<p>' + ('Longitude: ' + FloatToStr(FJanuaController.Longitude) + ', Latitude : ' +
      FloatToStr(FJanuaController.Latitude)) + '</p>';

    Result := Result + '<p> Url: "' + self.SessionUrl + '"</p>';

    Result := Result + sLineBreak + FJanuaController.UserProfile.AsHtml('');
  end
  else
  begin
    Result := '';
  end;
end;


// ----------------------------------- begin windows socket procedures .......................................
{$IF Defined(WEBBROKER)}

procedure TJanuaWebSession.WebResponseController(Response: TWebResponse);
begin
  self.SetCookies(7, Response);
  if Assigned(self.FJanuaController) then
    Janua.Core.Http.EncodeUTF8Response(Response, FJanuaController.WebResponse.Text,
      FJanuaController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSession.ResponseController(Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aMethod: TMyControllerMethod; aUseFrame: boolean = false);
begin
  // Spec. 2017-0019 Response Controller  - 2017-10-09
  try
    // anonymous method Call ............................................................
    if aMethod(aUseFrame) then
    begin
      WebResponseController(Response);
      Handled := True;
    end
    else
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
    end;
  except
    on e: exception do
    begin
      // Chiama l'action di gestione di Errore 501 ..... e ne ottiene i parametri .........
      self.WriteError(self.Name, e, false);
    end;
  end;
end;

procedure TJanuaWebSession.RegisterAction(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aFrame: boolean = false);
var
  aUserProfile: TJanuaRecordUserProfile;
  sError, sPage: string;
  aCheck: boolean;
begin
  self.StartSession;

  aCheck := True;
  sPage := Janua.Core.Functions.HttpGetParamValue(Request, 'page');

  aUserProfile.LoadFromHttpParams(Request);

  if aUserProfile.User.Username = '' then
  begin
    sError := sError + '<p>Attenzione occorre inserire la propria mail</p>';
    aCheck := false;
  end;

  if aUserProfile.User.Password = '' then
  begin
    sError := sError + '<p>Attenzione occorre inserire una password</p>';
    aCheck := false;
    
  end;

  if aUserProfile.User.Password <> aUserProfile.User.RPassword then
  begin
    sError := sError + '<p>Attenzione password e sua conferma non coincidono</p>';
    aCheck := false;
    
  end;

  if aUserProfile.FiscalCode = '' then
  begin
    sError := sError + '<p>Attenzione per prenotare ? necessario inserire un codice fiscale valido</p>';
  end;

  if aUserProfile.FiscalCode = '' then
  begin
    sError := sError + '<p>Attenzione per prenotare ? necessario inserire un codice fiscale valido</p>';
  end;

  if aCheck then
  begin
    if not self.FJanuaSystem.CheckNewUser(aUserProfile) then
    begin
      aCheck := false;
      sError := sError + '<p>Attenzione questa mail ? gi? stata registrata nel sistema</p>';
    end
    else
    begin
      // self.JanuaPostgresSystem.UserProfile := aUserProfile;
      if FJanuaSystem.LoadedProfile then
        if FJanuaSystem.CreateNewUser(aUserProfile) then
          GoToPage(Sender, Request, Response, Handled)
        else
          GoToError(Response, Handled)
    end;
  end;
end;
{$ENDIF Defined(WEBBROKER)}

procedure TJanuaWebSession.SetupController;
begin
  if not Assigned(FJanuaController) then
    self.StartSession;

  if Assigned(self.FJanuaController) then
  begin
    self.FJanuaController.Root := self.FRoot;
  end;

end;

procedure TJanuaWebSession.StartSession;
begin
  self.InternalCreateController;
  if Assigned(self.FJanuaController) then
  begin
    if Assigned(FJanuaSystem) then
      self.FJanuaController.JanuaSystem := self.FJanuaSystem;
  end;
end;

procedure TJanuaWebSession.StopSession;
begin
  if Assigned(self.FJanuaController) and not(self.FPersistent) then
    self.FJanuaController.Free;

end;

{$IF Defined(WEBBROKER)}

function TJanuaWebSession.CheckSession(Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: boolean; aUseFrame: boolean = false; aCheckPayment: boolean = false): boolean;
{ Questa procedura si occupa di eseguire diversi controlli sulla sessione ed agire di conseguenza
  verifica che la sessione sia pubblica
  verifica la chiave di sessione
  verifica se la sessione o lo schema prevedano o meno un termine di pagamento e attiva una risposta sul controller }
begin
  Result := True;
  GetSessionRequest(Request);
  self.FJanuaController.SelfCheck;
  // Si tratta di una procedura e non di una funzione che genera un errore se non sono attivi tutti i componenti
  if ((FJanuaController.IsPublic) or (FJanuaController.UserProfile.User.id = 0)) and
    (TJanuaApplication.AppName = 'almanacco.settimanasport.com') then
  begin
    self.ActionLogin(Sender, Request, Response, Handled, aUseFrame);
    Result := false;
  end
  else if aCheckPayment and (TJanuaApplication.AppName = 'almanacco.settimanasport.com') then
  begin
    self.ActionPayment(Sender, Request, Response, Handled);
  end
end;

procedure TJanuaWebSession.WebResponse404(Response: TWebResponse);
begin
  Response.StatusCode := 404;
  if Assigned(self.FJanuaController) then
    Janua.Core.Http.EncodeUTF8Response(Response, FJanuaController.WebResponse.Text,
      FJanuaController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSession.WebResponse501(Response: TWebResponse);
begin
  Response.StatusCode := 501;
  if Assigned(FJanuaController) then
    Janua.Core.Http.EncodeUTF8Response(Response, FJanuaController.WebResponse.Text,
      FJanuaController.Mime.MimeString);
  Response.SendResponse;
end;

procedure TJanuaWebSession.SetCookies(aValid: Integer; var aResponse: TWebResponse; isJson: boolean = false);
var
  v: Integer;
  sCookie: string;
begin
  if aValid = 0 then
    v := 7
  else
    v := aValid;
  // in primis un bel Clear dei Cookies.................................................................................
  aResponse.Cookies.Clear;

  if Assigned(FJanuaController) then
  begin
    sCookie := FJanuaController.SessionKey;
    // setta entrambi i cookies a session_id ..........................
    Janua.Core.Functions.AddCookie(aResponse, v, 'session_id', sCookie);
    Janua.Core.Functions.AddCookie(aResponse, v, 'session_key', sCookie);
    aResponse.SetCustomHeader('session_key', sCookie);

    sCookie := self.FJanuaController.Address;
    AddCookie(aResponse, v, 'address', sCookie);
    sCookie := FJanuaController.UserProfile.User.id.ToString;
    self.LValid := AddCookie(aResponse, v, 'user_id', sCookie);
  end;
end;
{$ENDIF Defined(WEBBROKER)}

procedure TJanuaWebSession.SetRawHeaders(const Value: TStrings);
begin
  FRawHeaders := Value;
end;

procedure TJanuaWebSession.SetRoot(const Value: string);
begin
  FRoot := Value;
end;

procedure TJanuaWebSession.SetSessionUrl(const Value: string);
begin
  FSessionUrl := Value;
end;

procedure TJanuaWebSession.SetToPage(const Value: TJanuaWebPage);
begin
  self.FToPage := Value;
end;

{$IF Defined(WEBBROKER)}

procedure TJanuaWebSession.WritePage(var aResponse: TWebResponse);
begin
  aResponse.Content := '';
end;
{$ENDIF Defined(WEBBROKER)}
{ TJanuaTemplateRepository }

procedure TJanuaTemplateRepository.AddTemplate(const filename, replacestring: string);
var
  old, new, rep: string;
begin
  self.LoadFromFile(new, filename + '.html', self.FLasFileName);
  old := FTemplate.Text;
  rep := '$' + replacestring + '$';
  self.FTemplate.Text := StringReplace(old, rep, new, [rfReplaceAll, rfIgnoreCase]);
end;

procedure TJanuaTemplateRepository.AddTemplate;
begin

end;

constructor TJanuaTemplateRepository.Create(AOwner: TComponent);
begin
  inherited;
  self.FLocalApp := false;
  FPageBegin := TStringList.Create;
  FPageHead := TStringList.Create;
  FPageScripts := TStringList.Create;
  FTemplate := TStringList.Create;
  FPageBody := TStringList.Create;
  FPageHeader := TStringList.Create;
  FPageFooter := TStringList.Create;
  FTemplateCss := TStringList.Create;
  FPageTemplate := TStringList.Create;
  // Mail Elements
  FMailBody := TStringList.Create;
  FMailRow := TStringList.Create;
  FMailTemplate := TStringList.Create;
  self.FFileNameFooter := 'pagefooter.html';
  self.FFileNameHeader := 'pageheader.html';
  self.FPageType := TJanuaPageType.jptHome;
end;

destructor TJanuaTemplateRepository.Destroy;
begin
  FPageBegin.Free;
  FPageHead.Free;
  FPageScripts.Free;
  FTemplate.Free;
  FPageBody.Free;
  FPageHeader.Free;
  FPageFooter.Free;
  FTemplateCss.Free;
  FPageTemplate.Free;
  // Mail Elements
  FMailBody.Free;
  FMailRow.Free;
  FMailTemplate.Free;
  inherited;
end;

procedure TJanuaTemplateRepository.ExternalRedirect(aUrl: string);
begin

end;

function TJanuaTemplateRepository.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        // if Assigned(self. then
        FNameSpace := TJanuaApplication.AppName;
        Result := false;
        // all'avvio prepara i componenti del Template da Caricare .............
        // lo fa File x File
        self.PrepareTemplate;
        Result := True;
      end;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TJanuaTemplateRepository.InternalRedirect(aUrl: string);
var
  sTemplate: string;
begin
  if not Assigned(FTemplate) then
    raise exception.Create('TJanuaTemplateRepository.InternalRedirect FTemplate not set');

  FTemplate.Clear;
  FTemplate.Add('<html>');
  FTemplate.Add('<head>');
  FTemplate.Add(' <title>Pagina di Redirect</title> ');
  FTemplate.Add(' <meta http-equiv="refresh" content="0;URL=$url$">');
  FTemplate.Add('</head>');
  FTemplate.Add('<body> ');
  FTemplate.Add('    <p>');
  // FTemplate.Add('    Tra 0 secondi avverr? un redirect automatico alla nuova pagina.<br>');
  // FTemplate.Add('    Se non vuoi aspettare <a href="$url$">clicca qui</a>.');
  FTemplate.Add('    </p>');
  FTemplate.Add('  </body>');
  FTemplate.Add('</html>');
  sTemplate := FTemplate.Text;
  Janua.Core.Functions.HtmlReplace(sTemplate, 'url', aUrl);
  self.FTemplate.Text := sTemplate;

end;

procedure TJanuaTemplateRepository.LoadFromFile(var sString: string; const aFileName: string;
  var sFileName: TFileName);
var
  temp: string;
begin
  LoadFromFile(sString, aFileName, temp);
  sFileName := temp;
end;

function TJanuaTemplateRepository.LoginHead: string;
var
  a: IStringBuilder;
begin
  a := TJanuaStringBuilder.Create;
  a.AppendLine(' <!-- BEGIN PAGE LEVEL STYLES -->');
  a.AppendLine('<link href="$url$/assets/pages/css/login.min.css" rel="stylesheet" type="text/css" />');
  a.AppendLine('<!-- END PAGE LEVEL STYLES -->');
  a.AppendLine('');
  Result := a.ToString;
end;

function TJanuaTemplateRepository.LoginScripts: string;
var
  a: IStringBuilder;
begin
  a := TJanuaStringBuilder.Create;
  a.AppendLine('<!-- BEGIN PAGE LEVEL PLUGINS -->');
  a.AppendLine
    ('<script src="$url$/assets/global/plugins/jquery-validation/js/jquery.validate.js" type="text/javascript"></script>');
  a.AppendLine
    ('<script src="$url$/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>');
  a.AppendLine('<script src="$url$/js/janua.system.login.js" type="text/javascript"></script>');
  a.AppendLine('<!-- END PAGE LEVEL PLUGINS -->');
  a.AppendLine('');
  Result := a.ToString;
end;

procedure TJanuaTemplateRepository.LoadFromFile(sStrings: TStrings; aFirstFileName: string;
  var aSecondFileName: TFileName);
var
  temp: string;
begin
  LoadFromFile(sStrings, aFirstFileName, temp);
  aSecondFileName := temp;
end;

procedure TJanuaTemplateRepository.LoadFromFile(sStrings: TStrings; aFirstFileName: string;
  var aSecondFileName: string);
begin
  if Assigned(sStrings) and (aFirstFileName <> '') then
  begin
    if Assigned(self.FJanuaFileCache) then
    begin
      if self.FJanuaFileCache.SearchFile(self.getTemplatesDir, aFirstFileName) then
      begin
        sStrings.Text := FJanuaFileCache.SelectedFile
      end
      else
      begin
        raise exception.Create('JanuaTemplateRepository.LoadFromFile File not Found:' + tpl(getTemplatesDir) +
          aFirstFileName);
      end;
    end
    else
    begin
      sStrings.LoadFromFile(self.getTemplatesDir + aFirstFileName);
    end;
  end
  else
    raise exception.Create('JanuaTemplateRepository.LoadFromFile TStrings is nil');
end;

procedure TJanuaTemplateRepository.LoadFromFile(var sString: string; const aFileName: string;
  var sFileName: string);
var
  sStrings: TStrings;
begin
  if Assigned(self.FJanuaFileCache) then
  begin
    self.FJanuaFileCache.SearchFile(self.getTemplatesDir, aFileName)
  end
  else
  begin
    sStrings := TStringList.Create;
    try
      sStrings.LoadFromFile(self.getTemplatesDir + aFileName);
      sString := sStrings.Text
    finally
      sStrings.Free
    end;
  end;
end;

procedure TJanuaTemplateRepository.PrepareHomeTemplate;
begin
  PrepareTemplate(self.FNameSpace, 'HomePage.html', 'bodyhome.html');
  self.AddTemplate('homehead', 'homehead');
end;

function TJanuaTemplateRepository.PrepareMailFooter: boolean;
begin
  { TODO : -cHttp : PrepareMailFooter }
  Result := false
end;

function TJanuaTemplateRepository.PrepareMailHeader: boolean;
begin
  { TODO : -cHttp : PrepareMailHeader }
  Result := false
end;

procedure TJanuaTemplateRepository.PrepareMailPasswordRecovery;
begin
  self.PrepareMailTemplate(self.FNameSpace, 'PasswordRecovery.html', '', '');
  { TODO : -cHttp :Terminare la procedura Mail Password con il link ad user_id e un Token di recupero pwd }
  self.UserProfile.User.id.ToString
end;

function TJanuaTemplateRepository.PrepareMailStyle: boolean;
begin
  Result := false;
  { TODO -cHttp : Implement Mail Style }
end;

procedure TJanuaTemplateRepository.PrepareMailTemplate(const aNameSpace, aTemplateName, aBodyName,
  aRowName: string);
begin
  // carico i nomi dei file nei rispettivi campi assegnati a loro.
  self.FTemplateMailName := aTemplateName;
  FTemplateMailBodyName := aBodyName;
  FTemplateMailRowName := aRowName;
  self.PrepareMailTemplate;
end;

procedure TJanuaTemplateRepository.PrepareMailWelcome;
begin
  self.PrepareMailTemplate(self.FNameSpace, 'welcome.html', '', '');
  { TODO : Terminare la procedura Mail con il link ad user_id e anche user_email }
  self.UserProfile.User.id.ToString
end;

procedure TJanuaTemplateRepository.PrepareMailTemplate;
var
  old, new: string;
begin
  // il body viene SEMPRE caricato ......................................................
  // se non termina con html lo aggiungo successivamente ................................

  // impostazione ed upload del Body
  self.FMailBody.Clear;
  if self.FTemplateMailBodyName <> '' then
    self.LoadFromFile(FMailBody, IncludeTrailingPathDelimiter('mail') + FTemplateMailBodyName,
      self.FMailTemplateBodyFile);

  // Main mail Template
  self.FMailTemplate.Clear;
  if self.FTemplateMailName <> '' then
    self.LoadFromFile(FMailTemplate, IncludeTrailingPathDelimiter('mail') + FTemplateMailName,
      self.FMailTemplateFile);

  // Mail Row Template
  self.FMailRow.Clear;
  if self.FTemplateMailRowName <> '' then
    self.LoadFromFile(FMailRow, IncludeTrailingPathDelimiter('mail') + FTemplateMailRowName,
      self.FMailTemplateRowFile);

  if self.FMailBody.count > 0 then
  begin
    old := FMailTemplate.Text;
    new := self.FMailBody.Text;
    self.FMailTemplate.Text := StringReplace(old, '$body$', new, [rfReplaceAll, rfIgnoreCase]);
  end;

  // le funzioni Rows verranno usate dagli eredi del template per gestire le righe custom da inserire nella mail......

end;

function TJanuaTemplateRepository.PreparePage(const aPage: string): boolean;
begin
  { TODO : Impostare Dico33 come propriet? della Classe e gestire anche il template della pagina come parametro }
  PrepareTemplate(self.FNameSpace, self.FPageTemplateFile, aPage);
  // 'HiteshiPageCheckOut.html'
  Result := True;
end;

function TJanuaTemplateRepository.PreparePage404: boolean;
begin
  // funzione che sar? ereditata dal discendente ...................
  // cambia per ora solo il 'namespace' che diventa Sportmedia al posto di Dico33......................................
  PrepareTemplate(self.FNameSpace, self.FPageTemplateFile, 'body404.html');
  Result := True;
end;

function TJanuaTemplateRepository.PreparePage501: boolean;
begin
  // funzione che sar? ereditata dal discendente ...................
  PrepareTemplate(FNameSpace, self.FPageTemplateFile, 'body501.html');
  // C:\Users\ergom\Google Drive\Sviluppo\projects\WebBroker\prj\Dico33\templates\
  Result := True;
end;

function TJanuaTemplateRepository.PreparePageBegin: boolean;
begin
  Result := True;
  if (self.FPageBegin.count = 0) or self.FTestMode then
    self.LoadFromFile(FPageBegin, 'beginofpage.html', self.FPageBeginFile);
end;

procedure TJanuaTemplateRepository.PreparePageDashboard;
begin

end;

function TJanuaTemplateRepository.PreparePageFooter: boolean;
begin
  Result := True;
  if (FPageFooter.count = 0) or self.FTestMode then
    self.LoadFromFile(FPageFooter, self.FFileNameFooter, self.FPageFooterFile);
end;

function TJanuaTemplateRepository.PreparePageHead(sCustomScripts: string = ''): boolean;
var
  testHead: string;
begin
  if (FPageHead.count = 0) or self.FTestMode then
  begin
    if self.FNameSpace = 'dilettantissimo.ergomercator.com' then
      self.LoadFromFile(FPageHead, 'dilettantissimohead.html', self.FPageHeadFile)
    else
      self.LoadFromFile(FPageHead, 'pagehead.html', self.FPageHeadFile);
  end;

  if sCustomScripts <> '' then
    self.FPageHead.Add(sCustomScripts);

  Result := True;
end;

function TJanuaTemplateRepository.PreparePageHeader: boolean;
begin
  Result := True;
  if (FPageHeader.count = 0) or self.FTestMode then
    self.LoadFromFile(FPageHeader, self.FFileNameHeader, self.FPageHeaderFile);
end;

procedure TJanuaTemplateRepository.PreparePagePaymentForm(aIsFrame: boolean);
begin
  { TODO :
    Occorre creare un'area Pubblica con un Record di Impostazioni
    del web inizializzato in initialization con le impostazioni condivise
    dei template del sito web in questione magari registrati in un record
    di database nella sessione della App in questione, }
  // self.PrepareTemplate(self.FNameSpace, 'SearchPage.html', 'bodysearch.html');
  if aIsFrame then
    PrepareTemplate(FNameSpace, 'framepage.html', 'FramePayment.html')
  else
    PrepareTemplate(FNameSpace, PageTemplateFile, 'bodypayment.html');
  // PrepareTemplate('Dico33', 'HomePage.html', 'bodyhiteshi1.html');
end;

procedure TJanuaTemplateRepository.PreparePageConfirmPaymentForm(aIsFrame: boolean);
begin
  if aIsFrame then
    PrepareTemplate(FNameSpace, 'framepage.html', 'FramePayment.html')
  else
    PrepareTemplate(FNameSpace, PageTemplateFile, 'bodypayment.html');
  // PrepareTemplate('Dico33', 'HomePage.html', 'bodyhiteshi1.html');
end;

// PreparePageConfirmPaypalPayment

procedure TJanuaTemplateRepository.PreparePageConfirmPaypalPayment(aIsFrame: boolean);
begin
  if aIsFrame then
    PrepareTemplate(FNameSpace, 'framepage.html', 'FramePayPal.html')
  else
    PrepareTemplate(FNameSpace, 'SportmediaPageCheckOut.html', 'bodyfootballcheckhout.html');
  // PrepareTemplate('Dico33', 'HomePage.html', 'bodyhiteshi1.html');
end;

procedure TJanuaTemplateRepository.PreparePageProfile;
begin
  self.ShowProfile();
end;

function TJanuaTemplateRepository.PreparePageScripts(sCustomScripts: string = ''): boolean;
begin
  // if FPageScripts.count = 0 then
  Result := FPageScripts.count > 0;
  if (not Result) or self.FTestMode then
  begin
    self.LoadFromFile(FPageScripts, 'javascriptscore.html', self.FPageScriptsFile);
    Result := True;
  end;
  if sCustomScripts <> '' then
    FPageScripts.Add(sCustomScripts)

end;

function TJanuaTemplateRepository.PreparePageStyle: boolean;
begin
  Result := FTemplateCss.count > 0;
  if (not Result) or self.FTestMode then
  begin
    self.LoadFromFile(FTemplateCss, tpl('css') + 'style.css', self.FTemplateCssFile);
  end;
end;

procedure TJanuaTemplateRepository.PrepareTemplate;
var
  old, new, sbody: string;
begin
  self.PreparePageHeader;
  self.PreparePageFooter;

  if self.FPageType in [jptLogin, jptLoginFootball, jptLoginDico33] then
    PreparePageScripts(self.LoginScripts)
  else
    self.PreparePageScripts;

  if self.FPageType in [jptLogin, jptLoginFootball, jptLoginDico33] then
    PreparePageHead(self.LoginHead)
  else
    self.PreparePageHead;

  self.PreparePageBegin;
  self.PreparePageStyle;

  // il body viene SEMPRE caricato ......................................................
  // se non termina con html lo aggiungo successivamente ................................
  FPageBody.Clear;
  self.LoadFromFile(FPageBody, FTemplateBodyName, FPageBodyFile);
  FTemplate.Clear;
  FPageTemplate.Clear;
  self.LoadFromFile(FTemplate, FTemplateName, FPageTemplateFile);
  FPageTemplate.Assign(FTemplate);
  // self.LoadFromFile(FPageTemplate, FTemplateName, FPageTemplateFile);

  old := FTemplate.Text;
  new := self.PageHead.Text;
  self.FTemplate.Text := StringReplace(old, '$head$', new, [rfReplaceAll, rfIgnoreCase]);

  // impostazione del Body della Pagina..................................................
  old := FTemplate.Text;
  new := self.PageBody.Text;
  self.FTemplate.Text := StringReplace(old, '$body$', new, [rfReplaceAll, rfIgnoreCase]);

  old := FTemplate.Text;
  new := self.FTemplateCss.Text;
  self.FTemplate.Text := StringReplace(old, '$style$', new, [rfReplaceAll, rfIgnoreCase]);

  old := FTemplate.Text;
  new := self.FPageHeader.Text;
  self.FTemplate.Text := StringReplace(old, '$header$', new, [rfReplaceAll, rfIgnoreCase]);

  old := FTemplate.Text;
  new := self.FPageFooter.Text;
  self.FTemplate.Text := StringReplace(old, '$footer$', new, [rfReplaceAll, rfIgnoreCase]);

  old := FTemplate.Text;
  new := self.FPageScripts.Text;
  self.FTemplate.Text := StringReplace(old, '$javascripts$', new, [rfReplaceAll, rfIgnoreCase]);

  // finalisation ....

  old := FTemplate.Text;
  new := self.UrlAssets;
  self.FTemplate.Text := StringReplace(old, '$url$', new, [rfReplaceAll, rfIgnoreCase]);

  old := FTemplate.Text;
  new := self.FUrlSite;
  self.FTemplate.Text := StringReplace(old, '$siteurl$', new, [rfReplaceAll, rfIgnoreCase]);

end;

procedure TJanuaTemplateRepository.ReplaceMailTemplateString(const aMarker, aValue: string);
var
  old: string;
begin
  old := self.FMailTemplate.Text;
  // trasformo la TSTrings in String per la sostituzione
  // lo standard ? che il parametro deve essere inserito nel template tra due segni del dollaro $parametro$
  self.FTemplate.Text := StringReplace(old, '$' + aMarker.ToLower + '$', aValue,
    [rfReplaceAll, rfIgnoreCase]);
end;

procedure TJanuaTemplateRepository.ReplaceTemplateString(const aMarker, aValue: string);
var
  old: string;
begin
  old := FTemplate.Text; // trasformo la TSTrings in String per la sostituzione
  // lo standard ? che il parametro deve essere inserito nel template tra due segni del dollaro $parametro$
  self.FTemplate.Text := StringReplace(old, '$' + aMarker.ToLower + '$', aValue,
    [rfReplaceAll, rfIgnoreCase]);
end;

procedure TJanuaTemplateRepository.PrepareTemplate(const aNameSpace, aTemplateName, aBodyName: string);
begin
  self.FNameSpace := aNameSpace;
  self.FTemplateName := aTemplateName;
  FTemplateBodyName := aBodyName;
  self.PrepareTemplate;
end;

procedure TJanuaTemplateRepository.SetFileNameFooter(const Value: string);
begin
  FFileNameFooter := Value;
end;

procedure TJanuaTemplateRepository.SetFileNameHeader(const Value: string);
begin
  FFileNameHeader := Value;
end;

procedure TJanuaTemplateRepository.SeTJanuaCustomCloudOAuth(const Value: TJanuaCustomCloudOAuth);
begin
  FJanuaCloudOAuth := Value;
end;

procedure TJanuaTemplateRepository.SetJanuaFileCache(const Value: TJanuaFileCache);
begin
  if Assigned(Value) then
    FJanuaFileCache := (Value)
  else
    FJanuaFileCache := nil;

end;

procedure TJanuaTemplateRepository.SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
begin
  FJanuaMailSender := Value;
end;

procedure TJanuaTemplateRepository.SetJanuaServerSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaServerSystem := Value;
end;

procedure TJanuaTemplateRepository.SetLasFileName(const Value: string);
begin
  FLasFileName := Value;
end;

procedure TJanuaTemplateRepository.SetLocalApp(const Value: boolean);
begin
  FLocalApp := Value;
end;

procedure TJanuaTemplateRepository.SetMailBody(const Value: TStrings);
begin
  if Assigned(Value) then
    FMailBody.Assign(Value)
  else
    self.FMailBody.Clear;
end;

procedure TJanuaTemplateRepository.SetMailRow(const Value: TStrings);
begin
  if Assigned(Value) then
    FMailRow.Assign(Value)
  else
    self.FMailRow.Clear;
end;

procedure TJanuaTemplateRepository.SetMailTemplate(const Value: TStrings);
begin
  if Assigned(Value) then
    FMailTemplate.Assign(Value)
  else
    self.FMailTemplate.Clear;
end;

procedure TJanuaTemplateRepository.SetMailTemplateBodyFile(const Value: string);
begin
  FMailTemplateBodyFile := Value;
end;

procedure TJanuaTemplateRepository.SetMailTemplateFile(const Value: string);
begin
  FMailTemplateFile := Value;
end;

procedure TJanuaTemplateRepository.SetMailTemplateRowFile(const Value: string);
begin
  FMailTemplateRowFile := Value;
end;

procedure TJanuaTemplateRepository.SetNameSpace(const Value: string);
begin
  FNameSpace := Value;
end;

procedure TJanuaTemplateRepository.SetPageAuthor(const Value: string);
begin
  FPageAuthor := Value;
end;

procedure TJanuaTemplateRepository.SetPageBegin(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageBegin.Assign(Value)
  else
    self.FPageBegin.Clear;
end;

procedure TJanuaTemplateRepository.SetPageBeginFile(const Value: string);
begin
  FPageBeginFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageBody(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageBody.Assign(Value)
  else
    self.FPageBody.Clear;
end;

procedure TJanuaTemplateRepository.SetPageBodyFile(const Value: TFileName);
begin
  FPageBodyFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageDescription(const Value: string);
begin
  FPageDescription := Value;
end;

procedure TJanuaTemplateRepository.SetPageFooter(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageFooter.Assign(Value)
  else
    self.FPageFooter.Clear;
end;

procedure TJanuaTemplateRepository.SetPageFooterFile(const Value: string);
begin
  FPageFooterFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageHead(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageHead.Assign(Value)
  else
    self.FPageHead.Clear;
end;

procedure TJanuaTemplateRepository.SetPageHeader(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageHeader.Assign(Value)
  else
    self.FPageHeader.Clear;

end;

procedure TJanuaTemplateRepository.SetPageHeaderFile(const Value: string);
begin
  FPageHeaderFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageHeadFile(const Value: string);
begin
  FPageHeadFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageScripts(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageScripts.Assign(Value)
  else
    self.FPageScripts.Clear;
end;

procedure TJanuaTemplateRepository.SetPageScriptsFile(const Value: string);
begin
  FPageScriptsFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageTemplate(const Value: TStrings);
begin
  if Assigned(Value) then
    FPageTemplate.Assign(Value)
  else
    self.FPageTemplate.Clear;
end;

procedure TJanuaTemplateRepository.SetPageTemplateFile(const Value: TFileName);
begin
  FPageTemplateFile := Value;
end;

procedure TJanuaTemplateRepository.SetPageTitle(const Value: string);
begin
  FPageTitle := Value;
end;

procedure TJanuaTemplateRepository.SetPageType(const Value: TJanuaPageType);
begin
  FPageType := Value;
end;

procedure TJanuaTemplateRepository.SetRepositoryType(const Value: TJanuaRepositoryType);
begin
  FRepositoryType := Value;
end;

procedure TJanuaTemplateRepository.SetTemplate(const Value: TStrings);
begin
  FTemplate := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateBodyName(const Value: string);
begin
  FTemplateBodyName := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateCss(const Value: TStrings);
begin
  FTemplateCss := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateCssFile(const Value: string);
begin
  FTemplateCssFile := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateMailBodyName(const Value: string);
begin
  FTemplateMailBodyName := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateMailName(const Value: string);
begin
  FTemplateMailName := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateMailRowName(const Value: string);
begin
  FTemplateMailRowName := Value;
end;

procedure TJanuaTemplateRepository.SetTemplateName(const Value: string);
begin
  FTemplateName := Value;
end;

procedure TJanuaTemplateRepository.SetUrlAssets(const Value: string);
begin
  if TJanuaApplication.AssetsUrl <> Value then
  begin
    TJanuaApplication.AssetsUrl := Value;
  end;
end;

procedure TJanuaTemplateRepository.SetUrlSite(const Value: string);
begin
  FUrlSite := Value;
end;

procedure TJanuaTemplateRepository.SetUserDropDownMenu(const Value: TJanuaMetroUserDropDownMenu);
begin
  FUserDropDownMenu := Value;
end;

procedure TJanuaTemplateRepository.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  self.FUserProfile := Value;
  FUserDropDownMenu.Create(self.FUserProfile);
end;

procedure TJanuaTemplateRepository.ShowLogin;
begin
  // ogni chiamata prepara il m odello di Template che le compete nel ns caso la HomePage
  self.PrepareTemplate(self.FNameSpace, 'LoginPage.html', 'bodylogin.html');
  // nself.AddTemplate(, 'body');
end;

procedure TJanuaTemplateRepository.ShowProfile;
begin
  // per prima cosa viene caricato il template con tutti i suoi componenti
  // poi con la funzione AsHtml viene fatto un Replace delle stringhe del template
  self.PrepareTemplate(self.FNameSpace, 'ProfilePage.html', 'bodyprofile');
  FTemplate.Text := self.FUserProfile.AsHtml(FTemplate.Text);
end;

procedure TJanuaTemplateRepository.ShowProfile(aProfile: TJanuaRecordUserProfile);
begin
  self.FUserProfile := aProfile;
  self.ShowProfile();
end;

function TJanuaTemplateRepository.StringFromFile(const aFileName: string): string;
var
  NewTemplate: TStrings;
begin
  self.LoadFromFile(Result, aFileName, self.FLasFileName);
end;

procedure TJanuaTemplateRepository.TerminatePageContent;
begin
  self.ReplaceTemplateString('title', self.FPageTitle);
  self.ReplaceTemplateString('description', self.FPageDescription);
  self.ReplaceTemplateString('author', self.FPageAuthor);
  self.ReplaceTemplateString('userdropdownmenu', self.FUserDropDownMenu.AsHtmlText);
end;

procedure TJanuaTemplateRepository.TerminatePageLogin;
begin
  TerminatePageContent;
  Assert(Assigned(self.FJanuaCloudOAuth),
    'Error TJanuaTemplateRepository.TerminatePageLogin FJanuaCloudOAuth not Assigned');
  self.ReplaceTemplateString('facebookoauth', FJanuaCloudOAuth.JanuaFacebookOuth.FacebookURL);
end;

procedure TJanuaTemplateRepository.TerminatePagePaymentForm(aIsFrame: boolean; bHasErrors: boolean = false);
begin
  // TJanuaCustomServerSystem.PaymentForm
  TerminatePageContent;
  // if Assigned(self.fj) then
  Assert(Assigned(self.FJanuaServerSystem),
    'Error TJanuaTemplateRepository.TerminatePagePaymentForm FJanuaServerSystem not Assigned');
  self.ReplaceTemplateString('system.paymentform', FJanuaServerSystem.PaymentForm(bHasErrors));
end;

//

procedure TJanuaTemplateRepository.TerminatePageConfirmPaymentForm(aIsFrame: boolean);
var
  aForm: string;
begin
  // TJanuaCustomServerSystem.PaymentForm
  TerminatePageContent;
  // if Assigned(self.fj) then
  Assert(Assigned(self.FJanuaServerSystem),
    'Error TJanuaTemplateRepository.TerminatePagePaymentForm FJanuaServerSystem not Assigned');
  aForm := FJanuaServerSystem.PayPalForm + sLineBreak + FJanuaServerSystem.PaymentForm(false, True);
  self.ReplaceTemplateString('system.paymentform', aForm);
end;

// TerminatePageConfirmPaypalPayment

procedure TJanuaTemplateRepository.TerminatePageConfirmPaypalPayment(aIsFrame: boolean);
var
  aForm: string;
begin
  // TJanuaCustomServerSystem.PaymentForm
  TerminatePageContent;
  // if Assigned(self.fj) then
  Assert(Assigned(self.FJanuaServerSystem),
    'Error TJanuaTemplateRepository.TerminatePagePaymentForm FJanuaServerSystem not Assigned');
  // aForm := FJanuaServerSystem.PayPalForm + sLineBreak + FJanuaServerSystem.PaymentForm(false, True);
  self.ReplaceTemplateString('expiration_date',
    DateToStr(FJanuaServerSystem.UserProfile.User.PaymentExpiration));

end;

procedure TJanuaTemplateRepository.TerminateTemplatePage(aIsFrame: boolean);
begin
  // At the moment does Nothing and let the descendant do the dirty job :)
end;

function TJanuaTemplateRepository.getTemplatesDir: string;
begin
  if self.FLocalApp then
  begin
    Result := tpl(tpl(GetCurrentDir) + 'templates');
  end
  else
  begin
    Result := tpl(tpl(TJanuaCoreOS.GetAppHomePath) + 'templates')
  end;
end;

function TJanuaTemplateRepository.GetUrlAssets: string;
begin
  Result := TJanuaApplication.AssetsUrl
end;

{ TJanuaCustomWebBrokerController }

procedure TJanuaCustomWebController.AssignCheck(aProcedure: string);
begin
  Assert(self.UserProfile.User.id > 0, 'TJanuaCustomWebController.' + aProcedure + ' Profile ID not Set');
  Assert(Assigned(FJanuaRepository), 'TJanuaCustomWebController.' + aProcedure + ' FJanuaRepository not set');
  Assert(Assigned(self.FJanuaSystem), 'TJanuaCustomWebController.' + aProcedure + ' FJanuaSystem not set');
end;

procedure TJanuaCustomWebController.CheckSessionKey(const aKey: string);
begin
  // check a web session from system and makes local assignements ............................
  // This procedure can be called by the parent Class of Web Sessione but points to a virtual abstract method
  // that needs to be implemented by descendant classes .....................................................
  Assert(Assigned(FJanuaCustomServer),
    'TJanuaCustomWebBrokerController.CheckSessionKey: FJanuaCustomServer is not set');
  Assert(Assigned(FJanuaRepository),
    'TJanuaCustomWebBrokerController.CheckSessionKey: FJanuaRepository is not set');

  // App Url now is managed by Application Class
  // FJanuaCustomServer.AppUrl := self.FAppUrl; // this coordina tes the AppUrl between Custom Server and Controller
  self.FJanuaCustomServer.CheckSessionKey(aKey); // virtual abstract method
  // FJanuaRepository
  FJanuaRepository.UserDropDownMenu.Create(self.UserProfile);

end;

constructor TJanuaCustomWebController.Create;
begin
  inherited;
  FCoordinates:= TJanuaCoordinates.Create;
  FSessionSet := false;
  FIsFrame := false;
  FSessionChecked := false;
  Mime := TJanuaMime.Create;
  FWebResponse := TStringList.Create;
  FLoginFailed := false;
  if Assigned(AOwner) and not((AOwner is TJanuaCustomComponent)) then
    self.FPersistent := True;

end;

destructor TJanuaCustomWebController.Destroy;
begin
  self.FWebResponse.Free;
  self.Mime.Free;
  inherited;
end;

function TJanuaCustomWebController.GetAppUrl: string;
begin
  Result := '';
  // funyione di check url dell'applicazione ...........................

  // if Assigned(self.FApplicationProfile) then
  Result := TJanuaApplication.AppName
end;

function TJanuaCustomWebController.GetFacebookActionURL: string;
begin
  // questo dovrebbe essere legato all'oggetto Cloud Facebook......
end;

function TJanuaCustomWebController.GetHtmlResponse: string;
begin
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := self.WebResponse.Text;
end;

function TJanuaCustomWebController.getIsPublic: boolean;
begin
  if Assigned(FJanuaCustomServer) then
    Result := self.FJanuaCustomServer.JanuaServerSession.IsPublic
  else
    Result := True;
end;

function TJanuaCustomWebController.GetJsonReponse: string;
begin
  self.Mime.MimeType := TJanuaMimeType.jmtApplicationJson;
  Result := WebResponse.Text
end;

function TJanuaCustomWebController.getSessionFields: string;
begin
  Result := '<INPUT TYPE=HIDDEN NAME=session_id Value=' + self.getSessionKey + '>';
end;

function TJanuaCustomWebController.getSessionKey: string;
begin
  if Assigned(FJanuaCustomServer) then
    Result := FJanuaCustomServer.SessionKey
  else
    Result := '';
end;

function TJanuaCustomWebController.getUserProfile: TJanuaRecordUserProfile;
begin
  if Assigned(self.FJanuaCustomServer) then
    Result := self.FJanuaCustomServer.UserProfile;
end;

function TJanuaCustomWebController.GetXmlResponse: string;
begin
  self.Mime.MimeType := TJanuaMimeType.jmtApplicationXml;
  Result := self.WebResponse.Text;
end;

procedure TJanuaCustomWebController.GoToPage(out Result: boolean);
var
  sUrl: string;
begin
  try
    sUrl := sJanuaWebPageUrl[FToPage];
    self.FJanuaRepository.InternalRedirect(sJanuaWebPageUrl[FToPage]);
    self.WebResponse.Text := self.FJanuaRepository.Template.Text;
    self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    Result := True;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaHealthWebController.GoToPage', e);
      Result := false;
    end;
  end;
end;

function TJanuaCustomWebController.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        Result := false;
        SelfCheck;
        Assert(Assigned(FJanuaSystem), 'TJanuaCustomWebController.InternalActivate FJanuaSystem not set');
        Assert(Assigned(self.FJanuaCustomServer),
          'TJanuaCustomWebController.InternalActivate FJanuaCustomServer not set');
        Result := True;
      end;
    except
      on e: exception do
        RaiseLocalException('InternalActivate', e);
    end;

end;

function TJanuaCustomWebController.LoginTitle: string;
var
  sLines: TStrings;
begin

  {
    <button class="close" data-close="alert"></button>


  }
  sLines := TStringList.Create;
  try
    if self.FLoginFailed then
    begin
      sLines.Add('<h3 class="form-title font-red">Attenzione Login Errata</h3>');
      sLines.Add('<div class="alert alert-danger">');
      sLines.Add('<span> Login non riuscita inserisci di nuovo email e password. </span>');
      sLines.Add('</div>');
    end
    else
    begin

      sLines.Add('<h3 class="form-title font-green">Sei registrato? Fai la Login</h3>');
      sLines.Add('<div class="alert alert-danger display-hide">');
      sLines.Add('<span> Login non riuscita inserisci di nuovo email e password. </span>');
      sLines.Add('</div>');
    end;

    Result := sLines.Text;
  finally
    sLines.Free;
  end;

end;

function TJanuaCustomWebController.Messages: string;
begin

end;

function TJanuaCustomWebController.Action404(aFrame: boolean = false): boolean;
begin
  self.FJanuaRepository.PreparePage404;
  self.FJanuaRepository.TerminatePageContent;
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := True;
  self.WebResponse.Text := self.FJanuaRepository.Template.Text;
end;

function TJanuaCustomWebController.Action501(aFrame: boolean = false): boolean;
var
  sTemplate: string;
begin
  self.FJanuaRepository.PreparePage501;
  self.FJanuaRepository.TerminatePageContent;
  sTemplate := self.FJanuaRepository.Template.Text;
  Janua.Core.Functions.HtmlReplace(sTemplate, 'log', TJanuaApplication.Log);
  Janua.Core.Functions.HtmlReplace(sTemplate, 'message', self.LastErrorMessage);
  self.WebResponse.Text := sTemplate;
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := True;
end;

function TJanuaCustomWebController.ActionDoLogin: boolean;
begin
  self.FFromPage := TJanuaWebPage.jwpLogin;
  if self.FToPage = TJanuaWebPage.jwpNone then
    self.FToPage := TJanuaWebPage.jwpHome;
  if Assigned(self.FJanuaSystem) then
  begin
    self.FJanuaSystem.Username := self.FUsername;
    self.FJanuaSystem.Password := self.FPassword;
    Result := FJanuaSystem.Login;
    self.FToPage := TJanuaWebPage.jwpHome; // imposto come default di ritorno sempre la pagina Home.
    if Result then
    begin
      if self.FJanuaCustomServer.SessionKey <> FJanuaSystem.SessionKey then
        if not self.FJanuaCustomServer.CheckSessionKey(FJanuaSystem.SessionKey) then
          Result := self.ActionLogin(True, self.FJanuaSystem.LastErrorMessage)
        else
          GoToPage(Result);
    end
    else
    begin
      Result := self.ActionLogin(True, self.FJanuaSystem.LastErrorMessage);
    end;
  end;
end;

function TJanuaCustomWebController.ActionDoLoginFacebook: boolean;
var
  aUser: TJanuaRecordUserProfile;
begin
  try
    // ************** parte di Login 'simile' alla parte di Login Standard ************************************
    if Assigned(self.FJanuaSystem) and Assigned(FJanuaCloudOAuth) then
    begin
      // FJanuaSystem.CheckNewUser()
      // FJanuaCloudOAuth.Code := self.FFacebookCode; // imposto Facebook Code su FJanuaCloudOAuth
      self.WriteLog
        ('TJanuaCustomWebController.ActionDoLoginFacebook: FJanuaCloudOAuth.JanuaFacebookOuth.HttpGetToken');
      FJanuaCloudOAuth.JanuaFacebookOuth.HttpGetToken;
      // Chiamo la procedura Http Get Token e Verifico che Token OK
      // qui uso oAuth Component per recuperare i dati una volta inserito il Token
      FJanuaCloudOAuth.Execute(FJanuaCloudOAuth.Token, TJanuaSocialType.jstFacebook);
      // memo_ResponseData.Text := JanuaCloudOAuth1.Execute
      // memo_ResponseData.Text := JanuaCloudOAuth1.JanuaFacebookOuth.JsonResponse;
      self.WriteLog('TJanuaCustomWebController.ActionDoLoginFacebook: ' + sLineBreak + 'SocialID=' +
        FJanuaCloudOAuth.JanuaFacebookOuth.JanuaFacebookUser.id);
      self.FJanuaSystem.SocialID := FJanuaCloudOAuth.JanuaFacebookOuth.JanuaFacebookUser.id;
      self.FJanuaSystem.SocialKind := 'Facebook';
      aUser.Clear;
      aUser.FirstName := FJanuaCloudOAuth.JanuaFacebookOuth.JanuaFacebookUser.first_name;
      aUser.LastName := FJanuaCloudOAuth.JanuaFacebookOuth.JanuaFacebookUser.last_name;
      self.WriteLog('Response: ' + FJanuaCloudOAuth.JanuaFacebookOuth.JsonResponse);
      aUser.FacebookJSON := FJanuaCloudOAuth.JanuaFacebookOuth.JsonResponse;
      aUser.PublicEmail := FJanuaCloudOAuth.JanuaFacebookOuth.JanuaFacebookUser.Email;
      aUser.User.SocialID := FJanuaCloudOAuth.JanuaFacebookOuth.JanuaFacebookUser.id;
      aUser.User.SocialType := 'Facebook';
      self.FJanuaSystem.UserProfile := aUser;
      Result := FJanuaSystem.Login(aUser);

      if not Result then
      begin
        if FJanuaSystem.CheckNewUser(aUser) then
          FJanuaSystem.CreateNewUser(aUser)
      end;

      if Result then
      begin
        if FJanuaCustomServer.SessionKey <> FJanuaSystem.SessionKey then
          if not FJanuaCustomServer.CheckSessionKey(FJanuaSystem.SessionKey) then
            Result := ActionLogin(True, self.FJanuaSystem.LastErrorMessage)
          else
            GoToPage(Result);
      end
      else
      begin
        Result := self.ActionLogin(True, self.FJanuaSystem.LastErrorMessage);
      end;
    end;
  except
    on e: exception do
    begin
      self.WriteError('TJanuaCustomWebController.ActionDoLoginFacebook', e, True);
    end;
  end;

end;

function TJanuaCustomWebController.ActionDoLogOut: boolean;
begin
  self.SessionKey := '';
  self.FFromPage := TJanuaWebPage.jwpLogin;
  if self.FToPage = TJanuaWebPage.jwpNone then
    self.FToPage := TJanuaWebPage.jwpHome;
  Result := True;
  GoToPage(Result);
end;

function TJanuaCustomWebController.ActionDoRegister: boolean;
begin
  Result := false;
  if Assigned(self.FJanuaSystem) then
  begin
    if FJanuaSystem.CreateNewUser(self.UserProfile) then
    begin
      self.SessionKey := self.FJanuaSystem.SessionKey;
      self.UserProfile := self.FJanuaSystem.UserProfile;
      if self.SessionKey = '' then
      begin
        if self.FJanuaSystem.Login then
          self.SessionKey := self.FJanuaSystem.SessionKey;
      end;
      self.Username := self.FJanuaSystem.Username;
      self.Password := self.FJanuaSystem.Password;
      if self.FJanuaCustomServer.SessionKey <> FJanuaSystem.SessionKey then
        Result := FJanuaCustomServer.CheckSessionKey(FJanuaSystem.SessionKey)
      else
        Result := True;
    end;
  end;
end;

function TJanuaCustomWebController.ActionLogin(error: boolean; ErrorMessage: string): boolean;
begin
  // Test della funzione vediamo cosa ? portabile ........................
  self.FJanuaRepository.PreparePageLogin;
  TemplateHead;

  if (self.SessionKey = '') and Assigned(self.FJanuaCustomServer) then
    self.FJanuaCustomServer.StartPublicWebSession
  else if (self.SessionKey <> '') and Assigned(self.FJanuaCustomServer) then
    self.FJanuaCustomServer.CheckSessionKey(self.SessionKey);
  // all'avvio della pagina di Login non vi sono errori di Login quindi viene presentato il display = none
  // se fosse presente un errore allora sarebbe display = block

  if error then
    self.FJanuaRepository.ReplaceTemplateString('displayerrorlogin', '')
  else
    self.FJanuaRepository.ReplaceTemplateString('displayerrorlogin', 'display-hide');
  {
    self.FJanuaRepository.ReplaceTemplateString('displayerrorlogin', 'block')
    else
    self.FJanuaRepository.ReplaceTemplateString('displayerrorlogin', 'none');
  }

  // il testo di default della box di messaggio ? quello che viene usato dal componente ajax di test.
  if error then
    self.FJanuaRepository.ReplaceTemplateString('displayerrorloginmessage', ErrorMessage)
  else
    self.FJanuaRepository.ReplaceTemplateString('displayerrorloginmessage',
      'Inserire nome utente e password.');
  // da creare la action Forget Password che verifica i dati dell'utente e gli invia un link di recupero password .....

  self.FJanuaRepository.TerminatePageLogin;
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  self.WebResponse.Assign(FJanuaRepository.Template);
  Result := True;
end;

function TJanuaCustomWebController.ActionPage(aPage: string): boolean;
begin
  AssignCheck('ActionPage');
  self.FJanuaRepository.PreparePage(aPage);
  self.FJanuaRepository.TerminatePageContent;
  { TODO : Gestire il parametro relativo al Frame }
  self.FJanuaRepository.TerminateTemplatePage(self.FIsFrame);
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := True;
  self.WebResponse.Text := self.FJanuaRepository.Template.Text;

end;

function TJanuaCustomWebController.ActionPaymentForm(aUseFrame: boolean = false;
  bHasErrors: boolean = false): boolean;
begin
  self.FIsFrame := aUseFrame;
  AssignCheck('ActionPaymentForm');
  self.FJanuaSystem.UserProfile := self.UserProfile;
  self.FJanuaRepository.PreparePagePaymentForm(self.FIsFrame);
  self.TemplateHead(aUseFrame);
  self.FJanuaRepository.TerminatePagePaymentForm(self.FIsFrame, bHasErrors);
  self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
  Result := True;
  self.WebResponse.Text := self.FJanuaRepository.Template.Text;
end;

// ActionConfirmPaymentForm
function TJanuaCustomWebController.ActionConfirmPaymentForm(aUseFrame: boolean = false): boolean;
var
  bError: boolean;
  sError: string;
begin
  AssignCheck('ActionConfirmPaymentForm');
  self.FIsFrame := aUseFrame;
  // passo al System il controllo dello User Profile della sessione Web,
  self.FJanuaSystem.UserProfile := self.UserProfile;
  Assert(FJanuaSystem.SaveProfile,
    'TJanuaCustomWebController.ActionConfirmPaymentForm Errore registrazione profilo');
  bError := false;
  bError := bError or (UserProfile.FirstName = '');
  bError := bError or (UserProfile.LastName = '');
  bError := bError or (not IsValidEmail(UserProfile.PublicEmail));
  bError := bError or (not VerifyFiscalCode(UserProfile.FiscalCode, sError));
  bError := bError or (UserProfile.Address.postalcode = '');
  bError := bError or (UserProfile.Address.Address = '');
  bError := bError or (UserProfile.Address.Town = '');
  if bError then
    Result := ActionPaymentForm(aUseFrame, True)
  else
  begin
    self.FJanuaRepository.PreparePageConfirmPaymentForm(self.FIsFrame);
    self.TemplateHead(aUseFrame);
    // self.FJanuaRepository.TerminatePageContent;
    self.FJanuaRepository.TerminatePageConfirmPaymentForm(self.FIsFrame);
    self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    Result := True;
    self.WebResponse.Text := self.FJanuaRepository.Template.Text;
  end;

end;

function TJanuaCustomWebController.ActionConfirmPaypalPayment(aUseFrame: boolean): boolean;
begin
  Result := false;
  self.FIsFrame := aUseFrame;
  AssignCheck('ActionConfirmPaypalPayment');
  self.FJanuaSystem.UserProfile := self.UserProfile;
  if self.FJanuaSystem.DoPayment(self.UserProfile.User.id, 12.00, Date()) then
  begin
    // il primo passaggio ? caricare il modulo di avvenuto pagamento partendo dal Template del sito Web.
    self.FJanuaRepository.PreparePageConfirmPaypalPayment(self.FIsFrame);
    // Si richiama la creazione del template
    self.TemplateHead(aUseFrame);
    // self.FJanuaRepository.TerminatePageContent;
    self.FJanuaRepository.TerminatePageConfirmPaypalPayment(self.FIsFrame);
    self.Mime.MimeType := TJanuaMimeType.jmtTextHtml;
    Result := True;
    self.WebResponse.Text := self.FJanuaRepository.Template.Text;
    Result := True;
  end
  else
  begin
    self.Action501(aUseFrame);
  end;
end;

function TJanuaCustomWebController.ActionRestNotifications: boolean;
var
  NB: TJanuaNotificationBadge;
  N: TJanuaNotification;
begin
  self.Mime.MimeType := TJanuaMimeType.jmtApplicationJson;

  NB.hint := 'Notifiche';
  NB.NotificationType := TJanuaNotificationBadgeType.jbtNotification;
  NB.Visible := True;
  NB.id := 1;
  NB.Url := '/health/notifications';
  NB.NotificatinCount := 4;

  N.Url := '/health/notifications?id=1';
  N.id := 1;
  N.time := now();
  N.aMessage := 'prima notifica';
  N.NotificationType := TJanuaNotificationType.jntNotificationSuccess;

  NB.Add(N);

  N.Url := '/health/notifications?id=2';
  N.id := 2;
  N.time := now();
  N.aMessage := 'seconda notifica';
  N.NotificationType := TJanuaNotificationType.jntNotificationDanger;

  NB.Add(N);

  N.Url := '/health/notifications?id=3';
  N.id := 3;
  N.time := now();
  N.aMessage := 'terza notifica';
  N.NotificationType := TJanuaNotificationType.jntNotificationWarning;

  NB.Add(N);

  N.Url := '/health/notifications?id=4';
  N.id := 4;
  N.time := now();
  N.aMessage := 'quarta notifica';
  N.NotificationType := TJanuaNotificationType.jntNotificationInfo;

  NB.Add(N);

  self.FWebResponse.Text := NB.AsJson;

  Result := True;
end;

procedure TJanuaCustomWebController.SelfCheck;
begin
  if not Assigned(self.FJanuaSystem) then
    raise exception.Create('TJanuaCustomWebController.SelfCheck FJanuaSystem not Set');
  if not Assigned(self.FJanuaCustomServer) then
    raise exception.Create('TJanuaCustomWebBrokerController: FJanuaCustomServer is not set');
end;

procedure TJanuaCustomWebController.Setaddress(const Value: string);
begin

end;

procedure TJanuaCustomWebController.SetFacebookActionScopes(const Value: TJanuaFBSCopeTypes);
begin
  FFacebookActionScopes := Value;
end;

procedure TJanuaCustomWebController.SetFacebookCode(const Value: string);
begin
  FFacebookCode := Value;
  if Assigned(self.FJanuaCloudOAuth) then
    FJanuaCloudOAuth.Code := self.FFacebookCode;

end;

procedure TJanuaCustomWebController.SetFacebookToken(const Value: string);
begin
  FFacebookToken := Value;
end;

procedure TJanuaCustomWebController.SetFacebookTokenUrl(const Value: string);
begin
  // imposto il valore della stringa Token che ho ricevuto come parametro o come URL da Facebook
  FFacebookTokenUrl := Value;
  // Verifico che sia collegato il componente per l'autenticazione esterna OAuth
  if Assigned(self.FJanuaCloudOAuth) then
  begin
    // imposto il valore Token Url sul componente JanuaFacebookOuth (TPersistent)
    self.FJanuaCloudOAuth.JanuaFacebookOuth.TokenUrl := FFacebookTokenUrl;
    // Riprendo il valore di Token che JanuaFacebookOuth ha elaborato 'parsando' il TokenUrl ricevuto prima
    FFacebookToken := FJanuaCloudOAuth.JanuaFacebookOuth.Token;
    // la variabile FFacebookToken potr? servire quindi per richiamare il componente e fargli recuperare
    // il profilo Facebook dell'utente che si ? loggato al sistema.
  end;

end;

procedure TJanuaCustomWebController.SetFromPage(const Value: TJanuaWebPage);
begin
  FFromPage := Value;
end;

procedure TJanuaCustomWebController.SetHtmlResponse(const Value: string);
begin
  FHtmlResponse := Value;
end;

procedure TJanuaCustomWebController.SetIsFrame(const Value: boolean);
begin
  FIsFrame := Value;
end;

procedure TJanuaCustomWebController.SetIsPublic;
begin
  if Assigned(FJanuaCustomServer) and self.FJanuaCustomServer.CheckSessionKey(getSessionKey) then
  begin
    self.UserProfile := FJanuaCustomServer.UserProfile;
    self.FSessionUID := FJanuaCustomServer.SessionID;
  end
end;

procedure TJanuaCustomWebController.SeTJanuaCustomCloudOAuth(const Value: TJanuaCustomCloudOAuth);
begin
  FJanuaCloudOAuth := Value;
end;

procedure TJanuaCustomWebController.SeTJanuaCustomMailSender(const Value: IJanuaMailSender);
begin
  FJanuaMailSender := Value;
end;

procedure TJanuaCustomWebController.SetJanuaSystem(const Value: TJanuaCustomServerSystem);
begin
  FJanuaSystem := Value;
end;

procedure TJanuaCustomWebController.SetJsonResponse(const Value: string);
begin
  FJsonResponse := Value;
end;

procedure TJanuaCustomWebController.setLatitude(const Value: Extended);
begin

end;

procedure TJanuaCustomWebController.SetLoginFailed(const Value: boolean);
begin
  FLoginFailed := Value;
end;

procedure TJanuaCustomWebController.SetLoginPages;
begin
  self.FFromPage := TJanuaWebPage.jwpLogin;
  if self.FToPage = TJanuaWebPage.jwpNone then
    self.FToPage := TJanuaWebPage.jwpHome;
end;

procedure TJanuaCustomWebController.setLongitude(const Value: Extended);
begin
  FCoordinates.Longitude := Value;
end;

procedure TJanuaCustomWebController.SetMime(const Value: TJanuaMime);
begin
  FMime := Value;
end;

procedure TJanuaCustomWebController.SetMimeType(const Value: TJanuaMimeType);
begin
  self.Mime.MimeType := Value;
end;

procedure TJanuaCustomWebController.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaCustomWebController.SetPersistent(const Value: boolean);
begin
  FPersistent := Value;
end;

procedure TJanuaCustomWebController.SetRoot(const Value: string);
begin
  FRoot := Value;
end;

procedure TJanuaCustomWebController.SetSessionLog(const Value: string);
begin
  FSessionLog := Value;
end;

procedure TJanuaCustomWebController.SetSessionUID(const Value: int64);
begin
  FSessionUID := Value;
end;

procedure TJanuaCustomWebController.SetSideMenu(const Value: boolean);
begin
  FSideMenu := Value;
end;

procedure TJanuaCustomWebController.SetSessionKey(const Value: string);
begin
  self.FSessionSet := (Value <> '');
  if self.Active then
  begin
    if (Value <> SessionKey) then
      FSessionChecked := false;
    if Assigned(FJanuaCustomServer) and (FJanuaCustomServer.SessionKey <> Value) then
    begin
      self.FJanuaCustomServer.SessionKey := Value;
      if FSessionSet then
      begin
        self.FSessionChecked := self.FJanuaCustomServer.CheckSessionKey(SessionKey);
        if not self.FSessionChecked then
        begin
          self.StartPublicWebSession;
          self.FSessionChecked := True;
        end;
      end
      else
      begin
        self.FJanuaCustomServer.JanuaServerSession.Clear;
        // se la chiave non ? impostata azzero la sessione sul server.
      end;
    end;
  end;
end;

procedure TJanuaCustomWebController.SetTest(const Value: boolean);
begin
  FTest := Value;
end;

procedure TJanuaCustomWebController.SetToPage(const Value: TJanuaWebPage);
begin
  FToPage := Value;
end;

procedure TJanuaCustomWebController.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

procedure TJanuaCustomWebController.SetUserProfile(const Value: TJanuaRecordUserProfile);
begin
  self.FJanuaCustomServer.UserProfile := Value;
end;

procedure TJanuaCustomWebController.SetWebResponse(const Value: TStrings);
begin
  FWebResponse := Value;
end;

procedure TJanuaCustomWebController.SetXmlResponse(const Value: string);
begin
  FXmlResponse := Value;
end;

procedure TJanuaCustomWebController.StartPublicWebSession;
begin
  // starts a public web session from system and makes local assignements ............................
  // This procedure can be called by the parent Class of Web Sessione but points to a virtual abstract method
  // that needs to be implemented by descendant classes .....................................................
  if Assigned(self.FJanuaCustomServer) then
  // Server needs to be assigned to controller ..................
  begin
    // App Url now is managed by Application Class
    // FJanuaCustomServer.AppUrl := self.FAppUrl; // this coordina tes the AppUrl between Custom Server and Controller
    self.FJanuaCustomServer.StartPublicWebSession; // virtual abstract method
    if self.SessionKey = '' then
      raise exception.Create('TJanuaCustomWebController.StartPublicWebSession Error for: ' + self.AppUrl);
    if Assigned(FJanuaRepository) then
      FJanuaRepository.UserDropDownMenu.Create(self.UserProfile);
  end
  else
    raise exception.Create
      ('TJanuaCustomWebController.StartPublicWebSession: FJanuaCustomServer not assigned');
end;

procedure TJanuaCustomWebController.TerminateHome;
begin
  // dovrebbe fare qualcosa ..................................................................

end;

procedure TJanuaCustomWebController.WriteResponse;
var
  aResponse: string;
begin
  aResponse := self.FJanuaRepository.Template.Text;

  StringReplace(aResponse, '$logintitle$', self.LoginTitle, [rfReplaceAll, rfIgnoreCase]);

  aResponse := StringReplace(aResponse, '$session_id$', self.SessionFields, [rfReplaceAll, rfIgnoreCase]);


  // dopo avere effettuato la login viene visualizzato lo UserName ..................................

  if self.IsPublic then
    aResponse := StringReplace(aResponse, '$firstname$', 'Accedi', [rfReplaceAll, rfIgnoreCase])
  else
    aResponse := StringReplace(aResponse, '$firstname$', self.UserProfile.FirstName,
      [rfReplaceAll, rfIgnoreCase]);

  aResponse := StringReplace(aResponse, '$siteurl$', TJanuaApplication.ProtocolUrl,
    [rfReplaceAll, rfIgnoreCase]);

  aResponse := StringReplace(aResponse, '$url$', TJanuaApplication.ProtocolAssetsUrl,
    [rfReplaceAll, rfIgnoreCase]);

  aResponse := StringReplace(aResponse, '$actionlogin$', self.FRoot + '/login' + '?sid=' + getSessionKey,
    [rfReplaceAll, rfIgnoreCase]);

  aResponse := StringReplace(aResponse, '$actionregister$', self.FRoot + '/register' + '?sid=' +
    getSessionKey, [rfReplaceAll, rfIgnoreCase]);

  if self.IsPublic then
  begin
    aResponse := StringReplace(aResponse, '$actioninbox$', self.FRoot + '/login' + '?sid=' + getSessionKey,
      [rfReplaceAll, rfIgnoreCase]);

    aResponse := StringReplace(aResponse, '$actionprofile$', self.FRoot + '/login' + '?sid=' + getSessionKey,
      [rfReplaceAll, rfIgnoreCase]);
  end
  else
  begin
    aResponse := StringReplace(aResponse, '$actioninbox$', self.FRoot + 'inbox' + '?sid=' + getSessionKey,
      [rfReplaceAll, rfIgnoreCase]);

    aResponse := StringReplace(aResponse, '$actionprofile$', self.FRoot + 'login' + '?sid=' + getSessionKey,
      [rfReplaceAll, rfIgnoreCase]);
  end;
end;

{ TJanuaCustomWebController }

function TJanuaCustomWebController.getJsonResponse: string;
begin
  self.Mime.MimeType := TJanuaMimeType.jmtApplicationJson;
  Result := (self.FWebResponse.Text);
end;

function TJanuaCustomWebController.getLatitude: Extended;
begin
  if FCoordinates.Latitude = 0 then
    Result := 9.2080925
  else
    Result := FCoordinates.Longitude;
end;

function TJanuaCustomWebController.getLongitude: Extended;
begin
  if FCoordinates.Longitude = 0 then
    Result := 45.4655236
  else
    Result := self.FCoordinates.Longitude;
end;

function TJanuaCustomWebController.getMimeType: TJanuaMimeType;
begin
  Result := self.FMime.MimeType
end;

{ 45.4655236, 9.2080925 }

{ TJanuaTestUrlGenerator }

function TJanuaTestUrlGenerator.GenerateUrl(const aUrl: string): string;
begin
  Result := aUrl;
end;

{ TJanuaTinyUrlGenerator }

function TJanuaTinyUrlGenerator.GenerateUrl(const aUrl: string): string;
begin
  Result := GenerateTinyUrl(aUrl);
end;

initialization

try
  // TJanuaTestUrlGenerator =  IJanuaTestUrlGenerator)
  TJanuaApplicationFactory.RegisterClass(IJanuaTestUrlGenerator, TJanuaTestUrlGenerator);
  // TJanuaTinyUrlGenerator =  IJanuaTinyUrlGenerator)
  TJanuaApplicationFactory.RegisterClass(IJanuaTinyUrlGenerator, TJanuaTinyUrlGenerator);
except
  on e: exception do
    raise exception.Create('Janua Cloud Mail Initialization: ' + e.Message);
end;

end.
