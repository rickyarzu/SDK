unit Janua.Core.Classes;

interface

{$I JANUACORE.INC}

uses

{$IFDEF delphixe}
  // System Procedures ............................................................
  System.SysUtils, System.Classes, System.Rtti, System.UITypes, System.SyncObjs,
  System.IOUtils, System.Variants, System.StrUtils, System.TypInfo, System.Generics.Collections, System.Types,
  // Custom Units ......................................................................................................
{$ELSE}
  Process,
{$ENDIF delphixe}
{$IF Defined(Posix)}
  Posix.Stdlib,
  // ReqMulti is the multipart content parser of delphi XE
{$ENDIF Posix}
{$IFDEF MACOS} MacApi.CoreFoundation,
{$IFNDEF IOS} MacApi.AppKit, MacApi.CocoaTypes, MacApi.Foundation, {$ENDIF}
{$ENDIF}
{$IF Defined(MSWINDOWS)}
  Winapi.Windows, Winapi.ShellAPI, Winapi.ShlObj, Winapi.ActiveX,
  // ReqMulti is the multipart content parser of delphi XE
{$ENDIF}
{$IF Defined(WEBBROKER)}
  Web.HttpApp, ReqMulti,
{$ENDIF}
{$IFDEF FPC}
{$MODESWITCH ADVANCEDRECORDS}
  // system ...................................................................
  SysUtils, Classes, TypInfo, Types, Variants, fpjson, jsonparser, Generics.Collections, StrUtils,
  // DB .......................................................................
  DB, VirtualTable,
  // HTTP .....................................................................
  fphttpclient,
{$ENDIF}
{$IFNDEF FPC}
  // JsonSupport
  System.JSON,
  // http functions
  System.Net.HttpClient, System.Net.URLClient, System.Net.Mime,
  System.Net.HttpClientComponent,
  System.NetEncoding,

  // DB Units
  Data.DB, FireDAC.Comp.Client,
  // Spring
  Spring.Collections,
{$ENDIF}
  // Indy
  IdURI,
  // Januaproject
  Janua.Http.Types, Janua.Orm.Types, Janua.Core.Entities, Janua.Core.Types, Janua.Core.Commons,
  Janua.Bindings.Intf,
  Janua.Core.System.Types, Janua.Core.Classes.Intf, Janua.Controls.Intf, Janua.System.ViewModel.Intf;

{$TYPEINFO ON}
{$METHODINFO ON}

type
  TJanuaInterfacedObject = class(TJanuaCoreInterfacedObject)
    // ********************************* Log Management ********************************************************
  protected
    FLogProc: TMessageLogProc;
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc); virtual;
  public
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    // ********************************* Log Management ********************************************************

  protected
    function GetSelf: TObject;
  private
    procedure InternalCreate;
  strict private
    FInitialized: Boolean;
  strict protected
    procedure InternalActivateThreaded;
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    Property Active: Boolean read GetActive write SetActive;
  protected
    FActivateThreaded: Boolean;
    FAfterActivate: TProc;
    function GetAfterActivate: TProc;
    procedure SetAfterActivate(const Value: TProc);
  public
    function Activate: Boolean; overload;
    /// <summary> overrides Create method to initialize FBindings </summary>
    constructor Create; overload; override;
    Constructor Create(aValues: TValueArray); override;
    Destructor Destroy; override;
    property AfterActivate: TProc Read GetAfterActivate write SetAfterActivate;
    // ************************************* Log Manager *******************************************
  protected
    procedure WriteLog(const aProcedureName, aLog: string);
    procedure WriteError(const aProcedureName, aLog: string; E: Exception);
    procedure WriteLocalLog(const aProcedureName, aLog: string);
    procedure WriteLocalError(const aProcedureName, aLog: string; E: Exception);
    procedure ClearLocalLog(const aProcedureName: string = ''); overload;
    procedure ClearLocalLog; overload;
  protected
    function GetLogString: string;
  public
    property LogString: string read GetLogString;
  end;

  TJanuaInterfacedObjectClass = class of TJanuaInterfacedObject;

type
  TJanuaCoordinates = class
  private
    FCoordinates: TJanuaRecordCoordinates;
    function getLatitude: Double;
    function getLongitude: Double;
    function getAddress: string;
    procedure SetLatitude(const Value: Double);
    procedure SetLongitude(const Value: Double);
    procedure SetAddress(const Value: string);
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
  public
    constructor Create; overload;
    constructor Create(aLat, aLon: Double); overload;
    function ToString: string; override;
    procedure Clear;
    procedure GetCoordinatesFromAddress;
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property Latitude: Double read getLatitude write SetLatitude;
    property Longitude: Double read getLongitude write SetLongitude;
    property Address: string read getAddress write SetAddress;
  end;

Type
  TJanuaMime = class(TPersistent)
  private
    FCharset: TJanuaCharsetType;
    FMimeType: TJanuaMimeType;
    FExtension: string;
    FMimeList: TStrings;
    FCharSetList: TStrings;
    procedure SetCharset(const Value: TJanuaCharsetType);
    procedure SetCharsetString(const Value: string);
    procedure SetMimeString(const Value: string);
    procedure SetMimeType(const Value: TJanuaMimeType);
    procedure SetExtension(const Value: string);
    procedure SetMimeList(const Value: TStrings);
    procedure SetCharSetList(const Value: TStrings);
    function getCharsetString: string;
    function getMimeString: string;
    function getIsSet: Boolean;
  public
    constructor Create; overload;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
    property MimeString: string read getMimeString write SetMimeString;
    property MimeType: TJanuaMimeType read FMimeType write SetMimeType default jmtUnknown;
    property CharsetString: string read getCharsetString write SetCharsetString;
    property Charset: TJanuaCharsetType read FCharset write SetCharset;
    property Extension: string read FExtension write SetExtension;
    property MimeList: TStrings read FMimeList write SetMimeList;
    property CharSetList: TStrings read FCharSetList write SetCharSetList;
    property isSet: Boolean read getIsSet;
  end;

type
  TJanuaJsonParser = class(TJanuaInterfacedObject, IJanuaJsonParser)
  private
    FIndex: IDictionary<string, TJsonValue>;
    FasJsonObject: TJsonObject;
  protected
    function GetAsJsonString: string;
    function GetasJsonObject: TJsonObject;
    procedure SetasJsonObject(const Value: TJsonObject);
    procedure SetAsJsonString(const Value: string);
  public
    Constructor Create; override;
    Constructor Create(aObject: TJsonObject); overload;
    Destructor Destroy; override;
    function FindKey(const aKey: string): TJsonValue;
    procedure ParseJson(const aJson: string);
  public
    // This function Stores a Value into a Json Variable ......................................
    procedure JsonValue(aParam: string; var aValue: string); overload;
    procedure JsonValue(aParam: string; var aValue: TDateTime); overload;
    procedure JsonValue(aParam: string; var aValue: Int64); overload;
    procedure JsonValue(aParam: string; var aValue: Integer); overload;
    procedure JsonValue(aParam: string; var aValue: Extended); overload;
    procedure JsonValue(aParam: string; var aValue: Double); overload;
    procedure JsonValue(aParam: string; var aValue: Boolean); overload;
    procedure JsonValue(aParam: string; var aValue: TJsonArray); overload;
    procedure JsonValue(aParam: string; var aValue: TJsonObject); overload;
  public
    property asJsonObject: TJsonObject read GetasJsonObject write SetasJsonObject;
    property AsJsonString: string read GetAsJsonString write SetAsJsonString;
  end;

type
  TEnumerationEnumerator = class
  private
    FMinValue: Integer;
    FMaxValue: Integer;
    FValue: Integer;
  public
    constructor Create(aEnumeratorTypeInfo: PTypeInfo);
    function GetCurrent: Integer;
    function MoveNext: Boolean;
    property Current: Integer read GetCurrent;
  end;

  REnumerationEnumerator = record
  private
    EnumeratorTypeInfo: PTypeInfo;
  public
    constructor Create(aEnumeratorTypeInfo: PTypeInfo);
    class function From(aEnumeratorTypeInfo: PTypeInfo): REnumerationEnumerator; static;
    function GetEnumerator: TEnumerationEnumerator;
  end;

type
  TJanuaImageRSSTag = record
    Image: string;
    Url: string;
    Title: string;
    Link: string;
    Width: string;
    Heigth: string;
    Description: string;
  public
    procedure SetDefault;
    constructor Create(aFeedType: TJanuaRSSFeedType);
  end;

type
  TJanuaItemRSSTag = record
    Item: string;
    Title: string;
    Author: string;
    Link: string;
    Description: string;
    category: string;
    comments: string;
    enclosure: string;
    guid: string;
    pubDate: string;
    Source: string;
  public
    procedure SetDefault;
    constructor Create(aFeedType: TJanuaRSSFeedType);
  end;

  {
    Element	Description	Example
    title	The name of the channel. It's how people refer to your service. If you have an HTML website that contains the same information as your RSS file, the title of your channel should be the same as the title of your website.	GoUpstate.com News Headlines
    link	The URL to the HTML website corresponding to the channel.	http://www.goupstate.com/
    description	Phrase or sentence describing the channel.	The latest news from GoUpstate.com, a Spartanburg Herald-Journal Web site.
  }
type
  TJanuaRSSTags = record
    Channel: string;
    Title: string;
    Link: string;
    Description: string;
    Language: string;
    pubDate: string;
    lastBuildDate: string;
    generator: string;
    Item: TJanuaItemRSSTag;
    Image: TJanuaImageRSSTag;
    FeedType: TJanuaRSSFeedType;
  public
    constructor Create(aFeedType: TJanuaRSSFeedType);
    function ToString: string;
  end;

type
  TJanuaFeed = record
    Title, AbstractText, LinkUrl, Text, Image, Author, RawText: unicodestring;
    Date: TDateTime;
  public
    function ToString: string;
  end;

type
  TJanuaFeeds = record
    Url: string;
    RSSTags: TJanuaRSSTags;
    Feeds: array of TJanuaFeed;
  public
    constructor Create(aFeedType: TJanuaRSSFeedType);
    function ToString: string;
  end;

  {

    1 : FJanuaAnagraphType := jatSchoolCustomer;
    2 : FJanuaAnagraphType := jatSchoolSupplier;
    9 : FJanuaAnagraphType := jatAgent;
    10: FJanuaAnagraphType := jatSchoolWorker;
    11: FJanuaAnagraphType := jatSchoolStudent;
    12: FJanuaAnagraphType := jatSchoolGroup;
    13: FJanuaAnagraphType := jatSchoolTeacher;


  }

  TJanuaCustomObject = class(TObject)
  private
    FActive: Boolean;
    procedure SetName(const Value: string);
    procedure SetActive(const Value: Boolean);
  protected
    FName: string;
    FActve: Boolean;
  strict protected
    function InternalActivate: Boolean; virtual;
    procedure Deactivate; virtual;
  public
    function Activate: Boolean;
  published
    property Name: string read FName write SetName;
    property Active: Boolean read FActive write SetActive stored false default false;
  end;

  TJanuaCustomPersistent = class(TPersistent)
  private
    procedure SetName(const Value: string);
  protected
    FName: string;
    FActive: Boolean;
    procedure SetActive(const Value: Boolean); Virtual;
    procedure Deactivate; virtual;
  public
    function Activate: Boolean; virtual;
  published
    property Name: string read FName write SetName;
    property Active: Boolean read FActive write SetActive stored false;
  end;

type
  TJanuaObject = class(TJanuaCustomObject)
  private
    FLastMessage: string;
    FName: string;
    procedure SetVerbose(const Value: Boolean);
    procedure SetLastMessage(const Value: string);
    procedure SetNameJ(const Value: string);
  strict protected
    procedure Deactivate; override;
    function InternalActivate: Boolean; override;
  protected
    FLastErrorMessage: string;
    FHasErrors: Boolean;
    FVerbose: Boolean;
    procedure WriteLog(ProcedureName, LogMessage: string; isError: Boolean = false); virtual;
    { gestore degli errori di classe JanuaProject }
    procedure WriteError(aProcedureName, LogMessage: string; E: Exception; doraise: Boolean = true);
  public
    constructor Create; overload; virtual; // overloaded virtual Method
    Destructor Destroy; override;
    procedure ClearErrors;
  published
    property LastErrorMessage: string read FLastErrorMessage stored false;
    property HasErrors: Boolean read FHasErrors stored false default false;
    property Verbose: Boolean read FVerbose write SetVerbose;
    property lastMessage: string read FLastMessage write SetLastMessage stored false;
    property Name: string read FName write SetNameJ;

  end;

  TJanuaPersistent = class(TJanuaCustomPersistent)
  private
    FLastMessage: string;
    procedure SetVerbose(const Value: Boolean);
    procedure SetLastMessage(const Value: string);
  protected
    FActive: Boolean;
    FLastErrorMessage: string;
    FHasErrors: Boolean;
    FLog: string;
    FVerbose: Boolean;
    FOwner: TJanuaCustomComponent;
    procedure SetActive(const Value: Boolean); override;
    procedure Deactivate; override;
    procedure AddLog(aLog: string);
    procedure SetLog(const Value: string); virtual;
    procedure WriteLog(LogMessage: string; isError: Boolean = false; ProcedureName: string = ''); virtual;
    { gestore degli errori di classe JanuaProject }
    procedure WriteError(LogMessage: string; E: Exception); virtual;
    function IsDesigning: Boolean;
  public
    constructor Create; overload; virtual; // overloaded virtual Method
    constructor Create(AOwner: TJanuaCustomComponent); overload; virtual;
    // overloaded virtual Method
    Destructor Destroy; override;
    function Activate: Boolean; override;
    procedure ClearErrors;
    procedure ClearLog;
  published
    property Log: string read FLog write SetLog stored false;
    property LastErrorMessage: string read FLastErrorMessage stored false;
    property HasErrors: Boolean read FHasErrors stored false default false;
    property Verbose: Boolean read FVerbose write SetVerbose;
    property Active: Boolean read FActive write SetActive stored false default false;
    property lastMessage: string read FLastMessage write SetLastMessage stored false;
  end;



type
  TJanuaBindableObject = class(TJanuaBindableClass)
    // ************************************** Log Management ***************************************
  protected
    FLogProc: TMessageLogProc;
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc); virtual;
    procedure LogError(const aProcName, aError: string);
  public
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    // ************************************* Bindings Procedures ***********************************
  protected
    function GetSelf: TObject;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserved: TObject);
    // *********************************************************************************************
    property AsObject: TObject read GetSelf;
  public
    Constructor Create; overload; virtual;
    Constructor Create(aValues: TValueArray); overload;
    Destructor Destroy; override;
  end;

  TJanuaBindableConfObject = class(TJanuaBindableObject)
  private
    FKey: string;
    [weak]
    FUserSessionVM: IJanuaSystemUserSessionViewModel;
    FSettingLocation: TJanuaSettingLocation;
    procedure SetUserSessionVM(const Value: IJanuaSystemUserSessionViewModel);
    procedure SetSettingLocation(const Value: TJanuaSettingLocation);
    function GetUserSessionVM: IJanuaSystemUserSessionViewModel;
  protected
    function GetAsJson: String; virtual; abstract;
    procedure SetAsJson(const aJson: string); virtual; abstract;
    procedure SetKey(const Value: string);
    procedure StoreConfig(const aConfig: string);
    function RetrieveConfig(const aDefault: string): string;
    procedure NotifyAll; virtual;
    procedure CheckAll; virtual; abstract;
  public
    constructor Create; override;
    constructor Create(const aSettingLocation: TJanuaSettingLocation); overload;
    constructor Create(aUserSessionVM: IJanuaSystemUserSessionViewModel;
      const aSettingLocation: TJanuaSettingLocation = tslCustom); overload;
  public
    procedure LoadConfig;
    procedure SaveConfig;
  public
    property AsJson: String read GetAsJson write SetAsJson;
    property Key: string read FKey write SetKey;
    property SettingLocation: TJanuaSettingLocation read FSettingLocation write SetSettingLocation;
    property UserSessionVM: IJanuaSystemUserSessionViewModel read GetUserSessionVM write SetUserSessionVM;
  end;

type
  TJanuaBindableItem = class(TCollectionItem { , IJanuaBindable } )
  public
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    function GetSelf: TObject;
  public
    procedure ClearBindings;
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserved: TObject);
    property BindManager: IJanuaBindManager read GetBindManager;
    // ************************************* Bindings Procedures ***********************************
  public
    /// <summary> overrides Create method to initialize FBindings </summary>
    constructor Create(Collection: TCollection); override;
    /// <summary> overrides Create method to destroy FBindings </summary>
    destructor Destroy; override;
    /// <summary> Clears all the bindings from Program bindings liste in FBindings </summary>
  end;

type
  TJanuaInterfacedBindableObject = class(TJanuaInterfacedObject, IJanuaInterface, IJanuaBindable)
    /// <summary> overrides Create method to initialize FBindings </summary>
    constructor Create; override;
    destructor Destroy; override;
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  strict protected
    procedure Notify(const Value: string);
  public
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    procedure ClearBindings;
    // ************************************* Bindings Procedures ***********************************
  strict protected
    /// <summary> Can be Set to initialize the Object (after creating it or in a IInd time) </summary>
    function InternalActivate: Boolean; override;
  public
    Property Active: Boolean read GetActive write SetActive;
  end;

type
  TJanuaInterfacedBindableComponent = class(TJanuaInterfacedBindableObject, IJanuaBindableComponent)
  protected
    FComponent: TComponent;
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    /// <summary> Component to be connected to object properties or Fields </summary>
  public
    property Name: TComponentName read GetNameJ write SetNameJ;
    property Component: TComponent read JanuaGetComponent write JanuaSetComponent;
  end;

type
  TJanuaBindableComponent = class(TJanuaCustomComponent)
    // ************************************** Log Management ***************************************
  protected
    FLogProc: TMessageLogProc;
    function GetLogProc: TMessageLogProc;
    procedure SetLogProc(const Value: TMessageLogProc); virtual;
    procedure LogError(const aProcName, aError: string);
  public
    property LogProc: TMessageLogProc read GetLogProc write SetLogProc;
    // ************************************** Log Management ***************************************

  protected
    function notDesigning: Boolean;
    // ------- Observer
  private
    FObserversList: IDictionary<IJanuaBindable, TProc>;
  protected
    procedure CallObservers;
    procedure DetachObservers;
  public
    procedure AttachObserver(const aObserver: TObject; aProc: TProc);
    procedure Detach(const aObserver: TObject);
    // ************************************* Bindings Procedures *********************************************
  protected
    function JanuaGetComponent: TComponent;
    procedure JanuaSetComponent(const Value: TComponent);
    function GetNameJ: TComponentName;
    procedure SetNameJ(const Value: TComponentName);
  public
    // ************************************* Bindings Procedures ***********************************
  private
    FBindManager: IJanuaBindManager;
    function GetBindManager: IJanuaBindManager;
  protected
    function GetSelf: TObject;
  public
    procedure Notify(const AProperty: string);
    procedure Bind(const AProperty: string; const ABindToObject: TObject; const ABindToProperty: string;
      const AReadOnly: Boolean = false; const ACreateOptions: TJanuaBindCreateOptions = [jbcNotifyOutput,
      jbcEvaluate]);
    property BindManager: IJanuaBindManager read GetBindManager;
    /// <summary> simply exposes a shortcut to BindManger.ClearBindings procedure to simplify if BM is nil </summary>
    procedure ClearBindings;
    // ************************************* Bindings Procedures ***********************************

    // ************************************* Log Manager *****************************************************
    // strict private
    // {$IFDEF delphixe} FInternalLog: IList<TJanuaRecordLog>; {$ELSE} FInternalLog: TList<TJanuaRecordLog>; {$ENDIF}
  protected
    procedure WriteLog(const aProcedureName, aLog: string);
    procedure WriteError(const aProcedureName, aLog: string; E: Exception);
    procedure WriteLocalLog(const aProcedureName, aLog: string);
    procedure WriteLocalError(const aProcedureName, aLog: string; E: Exception);
    procedure ClearLocalLog(const aProcedureName: string = '');
  protected
    function GetLogString: string;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property LogString: string read GetLogString;
    // ************************************* End Log Manager *************************************************
  end;

type
  TJanuaCoreComponent = class(TJanuaBindableComponent, IJanuaBindableComponent, IJanuaBindable)
  public
    // ************************* Janua Global common properties ************************************
    { class procedure SetGlobalTestmode(Value: Boolean);
      class function GetGlobalTest: Boolean; }
    class function GetApplicationType: TJanuaApplicationType;
    class procedure SetApplicationType(const Value: TJanuaApplicationType);
    // *********************************** Logging Procedures ***************************************************
  private
    FLocalLog: string;
    FLogToFile: Boolean;
    FHasMessage: Boolean;
    FVerbose: Boolean;
    procedure SetLogToFile(const Value: Boolean);
    function GetLogText: string;
  strict protected
    FLastMessage: string;
    FLogErrors: TJanuaLogRecords;
    function GetLocalLog: string;
    procedure RaiseLocalException(const aProcName: string; aError: Exception);
  public
    procedure ClearMessage;
    procedure ClearErrors; virtual;
    procedure AddLog(aLog: string);
    procedure WriteLog(LogMessage: string; isError: Boolean = false); overload; virtual;
    procedure WriteLog(ProcedureName, LogMessage: string; isError: Boolean = false); overload; virtual;
    procedure WriteError(LogMessage: string; E: Exception; doraise: Boolean = true); overload; virtual;
    procedure WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: Boolean = true);
      overload; virtual;
    property LocalLog: string read GetLocalLog;
    property LogText: string read GetLogText;
    // *********************************** end Logging Procedures ***********************************************
  strict protected
    // virtual abstract Methods to be implemented by descendant classes .....................................
    function InternalActivate: Boolean; override;
    procedure InternalDeactivate; override;
  private
    FIsServer: Boolean;
    FDebugMode: Boolean;
    procedure SetIsServer(const Value: Boolean);
    procedure SetDebugMode(const Value: Boolean);
  protected
    FOnChangeLanguage: TNotifyEvent;
    FLanguage: TJanuaLanguage;
    FTestMode: Boolean;
    procedure SetVerbose(const Value: Boolean); virtual;
    procedure LocalRaiseException(const sException: string);
    procedure WriteMessage(aMessage: string);
    procedure SetTestMode(const Value: Boolean); virtual;
    function isInitializing: Boolean;
  protected
    FIsLoaded: Boolean;
    function GenerateJsonError(aError: string): TJsonObject;
    function GenerateJsonResult(aResult: string): TJsonObject;
    function CanRaise: Boolean;
    function GetIsLoaded: Boolean; virtual;
  public
    JanuaComponentCount: Integer;
    constructor Create(AOwner: TComponent); override;
    Destructor Destroy; override;
    procedure SetLanguage(const Value: TJanuaLanguage); virtual;
  published
    property ApplicationType: TJanuaApplicationType read GetApplicationType write SetApplicationType
      stored false;
    property lastMessage: string read FLastMessage stored false;
    property HasMessage: Boolean read FHasMessage stored false;
    property LastErrorMessage: string read FLastErrorMessage write FLastErrorMessage stored false;
    property Verbose: Boolean read FVerbose write SetVerbose default true;
    property LogToFile: Boolean read FLogToFile write SetLogToFile;
    property Language: TJanuaLanguage read FLanguage write SetLanguage;
    property OnChangeLanguage: TNotifyEvent read FOnChangeLanguage write FOnChangeLanguage;
    property IsServer: Boolean read FIsServer write SetIsServer default false;
    property isLoaded: Boolean read GetIsLoaded default false;
    property TestMode: Boolean read FTestMode write SetTestMode;
    property DebugMode: Boolean read FDebugMode write SetDebugMode default false;
  end;

  { type
    TJanuaCoreComponentSettings = class(TComponent)
    private
    FTestMode: Boolean;
    procedure SetTestMode(const Value: Boolean);
    published
    property TestMode: Boolean read FTestMode write SetTestMode;
    end; }

type
  TJanuaContent = class(TJanuaObject)
  private
{$IFDEF delphixe}
    FMemDataset: TFdMemTable;
    function geTFdMemTable: TFdMemTable;
    procedure seTFdMemTable(const Value: TFdMemTable);
{$ELSE}
    FMemDataset: TVirtualTable;
    function geTFdMemTable: TVirtualTable;
    procedure seTFdMemTable(const Value: TVirtualTable);
{$ENDIF}
  private
    FBlob: TJanuaBlob;
    FStrings: TStrings;
    FMimeType: TJanuaMime;
    FContentType: TJanuaContentType;
    FMaxLength: Integer;
    FMinLength: Integer;
    FDigits: smallint;
    FIsSet: Boolean;
    FJsonObject: TJsonObject;
    function getAsBlob: TJanuaBlob;
    procedure setAsBlob(const Value: TJanuaBlob);
    procedure setAsString(const Value: String);
    procedure SetMimeType(const Value: TJanuaMime);
    procedure SetContentType(const Value: TJanuaContentType);
    function GetJsonObject: TJsonObject;
    procedure SetJsonObject(const Value: TJsonObject);
    procedure SetDigits(const Value: smallint);
    procedure SetMaxLength(const Value: Integer);
    procedure SetMinLength(const Value: Integer);
    procedure SetIsSet(const Value: Boolean);
    function getAsStrings: TStrings;
    procedure setAsStrings(const Value: TStrings);
    procedure JsonObjectClear;
    procedure SetAsJson(const Value: string);
    function GetAsJson: String;
    function getAsString: String;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure Clear;
    procedure Unset;
    procedure LoadFromStream(aStream: TStream);
    procedure LoadFromFile(aFile: TFileName);
    // procedure LoadFromDevartDataset(aDataset: TDataset);
    procedure SaveToStream(aStream: TStream);
    procedure SaveToFile(aFile: TFileName);
    property AsJson: string read GetAsJson write SetAsJson;
    property AsBlob: TJanuaBlob read getAsBlob write setAsBlob;
    property AsStrings: TStrings read getAsStrings write setAsStrings;
    property AsString: String read getAsString write setAsString;
    { Creare un oggetto 'Table' che sia un Dataset ma non esattamente una Virtual Table }
    // property AsVirtualTable: TFdMemTable read geTFdMemTable write seTFdMemTable;
    property asJsonObject: TJsonObject read GetJsonObject write SetJsonObject;
  published
    property MimeType: TJanuaMime read FMimeType write SetMimeType;
    property ContentType: TJanuaContentType read FContentType write SetContentType;
    property MaxLength: Integer read FMaxLength write SetMaxLength default -1;
    property MinLength: Integer read FMinLength write SetMinLength default -1;
    property Digits: smallint read FDigits write SetDigits default 6;
    property isSet: Boolean read FIsSet write SetIsSet;
  end;

type
  TJanuaFileCache = class(TJanuaCoreComponent)
  private // components
    FTextFiles: TDictionary<String, String>;
    FFileLoader: TStrings;
  private // variables
    FFileName: string;
    FHomeDir: string;
    FSelectedFile: string;
    FFound: Boolean;
  private // procedures
    procedure SetTextFiles(const Value: TDictionary<String, String>);
    procedure SetHomeDir(const Value: string);
    procedure SetSelectedFile(const Value: string);
    procedure SetFound(const Value: Boolean);
  public
    property SelectedFile: String read FSelectedFile write SetSelectedFile;
    property Found: Boolean read FFound write SetFound;
    function SearchFile(aDirectory, aFile: string): Boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property HomeDir: string read FHomeDir write SetHomeDir;
    property TextFiles: TDictionary<String, String> read FTextFiles write SetTextFiles;
  end;

  TJanuaISOCountry = class(TJanuaPersistent)
  private
    FisoCountry: TJanuaISOCountries;
    function GetCountry2Code: string;
    function GetCountry3Code: string;
    procedure SetCountry2Code(val: string);
    procedure SetCountry3Code(val: string);
    procedure SetisoCountry(const Value: TJanuaISOCountries);
  public
    constructor Create(AOwner: TJanuaCustomComponent); overload; override;
    constructor Create(AOwner: TJanuaCustomComponent; aCountry: TJanuaISOCountries); overload;
  published
    property Country3Code: string read GetCountry3Code write SetCountry3Code stored false;
    property isoCountry: TJanuaISOCountries read FisoCountry write SetisoCountry;
    property Country2Code: string read GetCountry2Code write SetCountry2Code Stored false;
  end;

type
  TJanuaISORecordLanguage = record
    ID: Integer;
    Name: string;
    Code: string;
    IsoCode3: string;
    Language: TJanuaLanguage;
  end;

type
  TJanuaISOLanguages = class(TJanuaPersistent)
  private
    FJanuaISOLanguages: array of TJanuaISORecordLanguage;
    FSelectedLanguage: TJanuaISORecordLanguage;
    FFound: Boolean;
    procedure SetID(const Value: Integer);
    procedure SetCode(const Value: string);
    procedure SetIsoCode3(const Value: string);
    procedure SetLanguage(const Value: TJanuaLanguage);
    procedure SetLanguageName(const Value: string);
    procedure SetLanguagesList;
  public
    constructor Create(AOwner: TJanuaCustomComponent; aLanguage: TJanuaLanguage); overload;
    constructor Create(AOwner: TJanuaCustomComponent); overload; override;
    // constructor Create; overload; override; // overrides virtual Method
    function Activate: Boolean; override;
    procedure Deactivate; override;
  published
    property ID: Integer read FSelectedLanguage.ID write SetID;
    property LanguageName: string read FSelectedLanguage.Name write SetLanguageName;
    property Code: string read FSelectedLanguage.Code write SetCode;
    property IsoCode3: string read FSelectedLanguage.IsoCode3 write SetIsoCode3;
    property Language: TJanuaLanguage read FSelectedLanguage.Language write SetLanguage;
    property Found: Boolean read FFound;

  end;

type
  TJanuaISOCulture = record
    ID: smallint;
    IsoCode3: string;
    CultureCode: string;
    LanguageName: string;
    CountryCode: TJanuaisoCountryCode;
    Country: TJanuaISOCountries;
    Culture: TJanuaCultures;
  end;

type
  TJanuaISOCultures = class(TJanuaObject)
  private
    FISOCultures: array of TJanuaISOCulture;
    FSelectedCulture: TJanuaISOCulture;
    FLanguageName: string;
    FCultureCode: string;
    FCountry: TJanuaISOCountries;
    FCountryCode: TJanuaisoCountryCode;
    FIsoCode3: string;
    FCulture: TJanuaCultures;
    FFound: Boolean;
    FIsoLanguages: TJanuaISOLanguages;
    procedure SetCountry(const Value: TJanuaISOCountries);
    procedure SetCountryCode(const Value: TJanuaisoCountryCode);
    procedure SetCultureCode(const Value: string);
    procedure SetIsoCode3(const Value: string);
    procedure SetLanguageName(const Value: string);
    procedure SetCulture(const Value: TJanuaCultures);
    procedure SetSelectedCulture;
    procedure SetIsoLanguages(const Value: TJanuaISOLanguages);
  public
    Constructor Create; override;
    destructor Destroy; override;
    procedure Deactivate; override;
  published
    property IsoCode3: string read FIsoCode3 write SetIsoCode3;
    property CultureCode: string read FCultureCode write SetCultureCode;
    property LanguageName: string read FLanguageName write SetLanguageName;
    property CountryCode: TJanuaisoCountryCode read FCountryCode write SetCountryCode;
    property Culture: TJanuaCultures read FCulture write SetCulture;
    property Country: TJanuaISOCountries read FCountry write SetCountry;
    property Found: Boolean read FFound;
    property IsoLanguages: TJanuaISOLanguages read FIsoLanguages write SetIsoLanguages;
  end;

  TJanuaIsoLanguageCountry = class(TJanuaCoreComponent)
  private
    FLanguageName: string;
    FMainCountry: TJanuaISOCountries;
    FCultureCode: string;
    FCultures: TJanuaISOCultures;
    FMainCountryCode: TJanuaisoCountryCode;
    FOnChangeCulture: TNotifyEvent;
    procedure SetCultureCode(const Value: string);
    procedure SetCultures(const Value: TJanuaISOCultures);
  public
    procedure SetLanguage(const Value: TJanuaLanguage); override;
    Constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property CultureCode: string read FCultureCode write SetCultureCode stored false;
    property LanguageName: string read FLanguageName stored false;
    property MainCountryCode: TJanuaisoCountryCode read FMainCountryCode stored false;
    property MainCountry: TJanuaISOCountries read FMainCountry stored false;
    property Cultures: TJanuaISOCultures read FCultures write SetCultures;
    property OnChangeCulture: TNotifyEvent read FOnChangeCulture write FOnChangeCulture;
  end;

  { TJanuaBarcode }

  TJanuaBarcodeInterfacedObject = class(TJanuaInterfacedBindableObject, IJanuaBarcode)

  end;


  // --------------------- Janua Dataset -------------------------------------------------------------------

Type
  TJanuaJsonDacDataset = class(TJanuaCoreComponent)
  private
    FEncodedDataset: String;
    FDecodedDataset: TStrings;
    FJsonObject: TJsonObject;
    FKeyFields: TStrings;
    // FParams: TJanuaParams;
    FisReadOny: Boolean;
    FDataSource: TDataSource;
    FIsVirtualTable: Boolean;
    procedure SetDecodedDataset(const Value: TStrings);
    procedure SetEncodedDataset(const Value: string);
    procedure SetJsonObject(const Value: TJsonObject);
    procedure SetKeyFields(const Value: TStrings);
    // procedure SetParams(const Value: TJanuaParams);
    procedure SetisReadOny(const Value: Boolean);
    procedure SetDataSource(const Value: TDataSource);
    procedure AssignDatasource;
    function getRecordCount: Integer;
    procedure SetIsVirtualTable(const Value: Boolean);
    procedure CreateVirtualTable;
  protected
{$IFDEF delphixe}
    FVirtualTable: TFdMemTable;
    procedure seTFdMemTable(const Value: TDataset);
{$ELSE}
    FVirtualTable: TVirtualTable;
    procedure seTFdMemTable(const Value: TDataset);
{$ENDIF}
  protected
    FMemDataset: TDataset;
    FPostDataset: TDataset;
    FDelDataset: TDataset;
    procedure CreateInternalDataset;
    procedure DestroyInternalDataset;
  public
    procedure LoadFromJsonObject(aObject: TJsonObject);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function asJsonObject: TJsonObject;
    function AsJson: string;
    procedure AfterPost(aDataset: TDataset);
    function FieldByName(const FieldName: string): TField;
    procedure AssignDataset(aDataset: TDataset);
  public
    procedure LoadFromFile(const FileName: string);
    procedure SaveToFile(const FileName: string);
    procedure LoadFromJson(aJson: string);
    property EncodedDataset: string read FEncodedDataset write SetEncodedDataset;
    property DecodedDataset: TStrings read FDecodedDataset write SetDecodedDataset;
    property JsonObject: TJsonObject read FJsonObject write SetJsonObject;
  public // Dataset procedures
    procedure Open;
    procedure Close;
  published
    property MemDataset: TDataset read FMemDataset write seTFdMemTable;
    property KeyFields: TStrings read FKeyFields write SetKeyFields;
    // property Params: TJanuaParams read FParams write SetParams;
    property isReadOny: Boolean read FisReadOny write SetisReadOny default false;
    property DataSource: TDataSource read FDataSource write SetDataSource;
    property RecordCount: Integer read getRecordCount;
    /// if set this property launches the creation of a TFdMemTable and sets the dataset to become a VTable;
    property IsVirtualTable: Boolean read FIsVirtualTable write SetIsVirtualTable;
  end;

type
  TJanuaDatasetProvider = class(TJanuaCoreComponent)
  private
    FDataset: TJanuaJsonDacDataset;
    procedure SetDataset(const Value: TJanuaJsonDacDataset);
  published
    property Dataset: TJanuaJsonDacDataset read FDataset write SetDataset;
  end;

type
  TJanuaDatasetClient = class(TJanuaCoreComponent)
  private
    FDataset: TJanuaJsonDacDataset;
    procedure SetDataset(const Value: TJanuaJsonDacDataset);
  published
    property Dataset: TJanuaJsonDacDataset read FDataset write SetDataset;
  end;

{$TYPEINFO OFF}
{$METHODINFO OFF}

type
  TJanuaLoginRecord = record
    Session: TJanuaServerSession;
    UserProfile: TJanuaRecordUserProfile;
  private
    function GetIsLoggedIn: Boolean;
    function GetIsPublicSession: Boolean;
    function GetJsonObject: TJsonObject;
    procedure SetIsLoggedIn(const Value: Boolean);
  public
    procedure Clear;
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
  public
    property IsPublicSession: Boolean read GetIsPublicSession;
    property IsLoggedIn: Boolean read GetIsLoggedIn write SetIsLoggedIn;
    property asJsonObject: TJsonObject read GetJsonObject write LoadFromJsonObject;
  end;

type
  TJanuaCustomRESTClient = class(TJanuaObject)
  private
    class function GetAppName: string;
  private
    procedure SetErrorMessage(const Value: string);
    procedure SetHasErrors(const Value: Boolean);
    function Activate: Boolean;
  strict protected
    function InternalActivate: Boolean; override;
  protected
    FUserProfile: TJanuaRecordUserProfile;
    FLoginRecord: TJanuaLoginRecord;
    FHasErrors: Boolean;
    FErrorMessage: string;
    function GetIsPublic: Boolean; Virtual;
    function GetIsLoggedIn: Boolean; Virtual;
    procedure SetLoginRecord(const Value: TJanuaLoginRecord); Virtual;
    procedure SetUserProfile(const aUser: TJanuaRecordUserProfile); Virtual;
  public
    property IsLoggedIn: Boolean read GetIsLoggedIn;
    property isPublic: Boolean read GetIsPublic;
    property AppName: string read GetAppName stored false;
    property HasErrors: Boolean read FHasErrors write SetHasErrors;
    property ErrorMessage: string read FErrorMessage write SetErrorMessage;
    property LoginRecord: TJanuaLoginRecord read FLoginRecord write SetLoginRecord;
    property UserProfile: TJanuaRecordUserProfile read FUserProfile write SetUserProfile;
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    procedure Deactivate; override;
    procedure LogOut; virtual;
    // definizione della classe base di client REST sicuramente una classe di metodi astratti da implementare
  end;

  TJanuaCustomRESTModel = class(TJanuaCoreComponent)
  private
    procedure SetJanuaRESTClient(const Value: TJanuaCustomRESTClient);
  protected
    FJanuaRESTClient: TJanuaCustomRESTClient;
  public
    property JanuaRESTClient: TJanuaCustomRESTClient read FJanuaRESTClient write SetJanuaRESTClient;
  end;

  TJanuaCustomViewModel = class(TJanuaCoreComponent)
  private

  protected
    RESTModel: TJanuaCustomRESTModel;
  public

  end;

  TJanuaAction = class(TJanuaInterfacedBindableObject, IJanuaAction, IJanuaBindable)
  private
    FCaption: string;
    FTag: Integer;
    FEnabled: Boolean;
    FVisible: Boolean;
    FOnExecute: TJanuaActionEvent;
    FProc: TProc<IJanuaAction>;
    FImageIndex: TImageIndex;
    FDropDownList: IJanuaActionList;
    FHasDropDown: Boolean;
    FName: string;
    FGUID: TGUID;
  protected
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    function GetName: string;
    procedure SetName(const Value: string);
    function GetCaption: string;
    procedure SetCaption(const Value: string);
    function GetEnabled: Boolean;
    procedure SetEnabled(const Value: Boolean);
    function GetOnExecute: TJanuaActionEvent;
    procedure SetOnExecute(const Value: TJanuaActionEvent);
    function GetProc: TProc<IJanuaAction>;
    procedure SetProc(const Value: TProc<IJanuaAction>);
    function GetImageIndex: TImageIndex;
    procedure SetImageIndex(const Value: TImageIndex);
    function GetHasDropDown: Boolean;
    procedure SetHasDropDown(const Value: Boolean);
    function GetDropDownList: IJanuaActionList;
    procedure SetDropDownList(const Value: IJanuaActionList);
    function GetTag: Integer;
    procedure SetTag(const Value: Integer);
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
  public
    procedure ExecuteAction(Sender: TObject);
    procedure Execute;
    constructor Create; override;
  public
    /// <summary> An Action (intendes as an 'action button' can have an action List to Drop Down </summary>
    property DropDownList: IJanuaActionList read GetDropDownList write SetDropDownList;
    /// <summary> An Action (intendes as an 'action button' can have an action List to Drop Down </summary>
    property HasDropDown: Boolean read GetHasDropDown write SetHasDropDown;
    property Tag: Integer read GetTag write SetTag;
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property Caption: string read GetCaption write SetCaption;
    property ImageIndex: TImageIndex read GetImageIndex write SetImageIndex;
    property Name: string read GetName write SetName;
    property guid: TGUID read GetGUID write SetGUID;
    /// <summary> Use Visibile to Hide objects from the Forms </summary>
    property Visible: Boolean read GetVisible write SetVisible;
  public
    procedure UpdateName(const aName, aCaption: string; aGuid: TGUID);
  end;

  TJanuaActionList = class(TJanuaInterfacedObject, IJanuaActionList)
  private
    FActions: IList<IJanuaAction>;
    FItemIndex: Integer;
    FStdActions: TJanuaStandardActions;
    FOnUpdateAction: TNotifyEvent;
    function GetStdActions(Index: TJanuaStandardAction): IJanuaAction;
  protected
    function GetActions: IList<IJanuaAction>;
    function GetItemIndex: Integer;
    function GetItems(Index: String): IJanuaAction;
    procedure SetItemIndex(const Value: Integer);
    procedure SetItems(Index: String; const Value: IJanuaAction);
    function GetOnUpdateAction: TNotifyEvent; stdcall;
    procedure SetOnUpdateAction(Value: TNotifyEvent); stdcall;
  public
    procedure ClearActions;
    procedure DoUpdateActions;
    function FindAction(const aActionName: string): Boolean;
    function Add(const aCaption: string; aEnabled: Boolean; aProc: TProc<IJanuaAction>;
      aStd: TJanuaStandardAction; aImageIndex: TImageIndex = -1; aGuid: string = ''): IJanuaAction; overload;
    function Add(const aAction: IJanuaAction; aStd: TJanuaStandardAction): IJanuaAction; overload;
    property Actions: IList<IJanuaAction> read GetActions;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property Items[Index: String]: IJanuaAction read GetItems write SetItems;
    property StdActions[Index: TJanuaStandardAction]: IJanuaAction read GetStdActions; default;
    property OnUpdateAction: TNotifyEvent read GetOnUpdateAction write SetOnUpdateAction;
  public
    constructor Create; override;
  end;

  // Example Enumerato by Stefan Glienke

  /// <summary> This Class iterate over a class T and returns a Class TFilter </summary>
  TOfTypeEnumerator<T: class; TFilter: class> = class(TInterfacedObject, IEnumerator<TFilter>)
  private
    FTestList: TList<T>;
    FIndex: Integer;
  protected
    constructor Create(Owner: TList<T>); overload;
    procedure Reset;
    function GetCurrent: TFilter;
    function MoveNext: Boolean;
  end;

  /// <summary> This Class iterate over a class T and returns a Class TFilter </summary>
  TOfInterfaceEnumerator<T: class; IFilter: IInterface> = class(TInterfacedObject, IEnumerator<IFilter>)
  private
    FTestList: IList<T>;
    FIndex: Integer;
  protected
    constructor Create(Owner: IList<T>); overload;
    procedure Reset;
    function GetCurrent: IFilter;
    function MoveNext: Boolean;
  end;

  TOfTypeEnumeratorFactory<T: class; TFilter: class> = class(TInterfacedObject, IEnumerable<TFilter>)
  private
    FTestList: TList<T>;
  public
    constructor Create(Owner: TList<T>); overload;
    function GetEnumerator: IEnumerator<TFilter>;
  end;

  TTestList<T: class> = class(TList<T>)
  public
    function OfType<TFilter: class>: IEnumerable<TFilter>;
  end;

  TJanuaCustomLogger = class(TJanuaInterfacedObject, IJanuaInterface, IJanuaLogger)
  private
    FlogRecords: TJanuaLogRecords;
    FLogStarted: Boolean;
    FLock: TCriticalSection;
  protected
    function GetLogRecords: TJanuaLogRecords;
    procedure SetlogRecords(const Value: TJanuaLogRecords);
    function GetDefaultProcedure: string;
    procedure SetDefaultProcedure(Value: string);
    procedure Startup;
    procedure ClearLog;
    procedure ClearLocalLog(const aObject: TObject; aProcedure: string);
    procedure StartWatch;
    procedure StopWatch;
    procedure ResetWatch;
    procedure SaveLogToFile(aFileName: string);
    procedure StartLog;
    procedure StopLog;
    procedure ExportToCSV(aFileName: string);
    function LogString(const aClass: TObject = nil): string;
    function TailLog: string;
    procedure Initialize;
    procedure Terminate;
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
  public
    procedure FlushLog;
    procedure LogRecord(const aProcedure, aMessage: string; aClass: TObject); overload; virtual;
    procedure LogError(const aProcedure, aMessage: string; aClass: TObject; E: Exception); overload; virtual;
    procedure LogError(const aProcedure, aMessage: string; aClass: TObject); overload; virtual;
    Procedure LogWarning(const aProcedure, aMessage: string; aClass: TObject); virtual;
  public
    constructor Create; override;
    destructor Destroy; override;
  public
    property Calendar: TJanuaLogRecords read GetLogRecords write SetlogRecords;
    property guid: TGUID read GetGUID write SetGUID;
    property DefaultProcedure: string read GetDefaultProcedure write SetDefaultProcedure;
  end;

  TJanuaBasicLogger = class(TJanuaCustomLogger, IJanuaInterface, IJanuaLogger)
  end;

  // TJanuaBasicLogger()

procedure JwriteLog(aLog: string);

implementation

uses
{$IFDEF delphixe}
  // Janua Core Libraries .........................................................................
  Spring, Janua.Mocks.Helpers, System.DateUtils, Soap.EncdDecd, FireDAC.Comp.Dataset, Janua.Core.AsyncTask,
{$ELSE}
  DateUtils, FileUtil,
{$ENDIF}
  Janua.Bindings.Impl, Janua.Application.Framework, Janua.Core.Functions, Janua.Core.JSON;

procedure JwriteLog(aLog: string);
begin
  if TJanuaApplication.ApplicationType = TJanuaApplicationType.jatConsoleSrv then
    Writeln(aLog);
end;


{ TJanuaCustomRESTClient }

function TJanuaCustomRESTClient.Activate: Boolean;
begin
  Result := inherited;
end;

constructor TJanuaCustomRESTClient.Create;
begin
  inherited;
end;

procedure TJanuaCustomRESTClient.Deactivate;
begin
  self.ClearErrors;
  inherited;

end;

destructor TJanuaCustomRESTClient.Destroy;
begin
  inherited;
end;

class function TJanuaCustomRESTClient.GetAppName: string;
begin
  Result := TJanuaApplication.AppName
end;

function TJanuaCustomRESTClient.GetIsLoggedIn: Boolean;
begin
  Result := self.FLoginRecord.IsLoggedIn;
end;

function TJanuaCustomRESTClient.GetIsPublic: Boolean;
begin
  Result := self.FLoginRecord.IsPublicSession;
end;

function TJanuaCustomRESTClient.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
        ClearErrors;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;
end;

procedure TJanuaCustomRESTClient.LogOut;
begin
  self.FLoginRecord.Clear;
end;

procedure TJanuaCustomRESTClient.SetErrorMessage(const Value: string);
begin
  FErrorMessage := Value;
end;

procedure TJanuaCustomRESTClient.SetHasErrors(const Value: Boolean);
begin
  FHasErrors := Value;
end;

procedure TJanuaCustomRESTClient.SetLoginRecord(const Value: TJanuaLoginRecord);
begin
  FLoginRecord := Value;
end;

procedure TJanuaCustomRESTClient.SetUserProfile(const aUser: TJanuaRecordUserProfile);
begin
  self.FLoginRecord.UserProfile := aUser;
end;

{ TJanuaVatCode }

constructor TJanuaISOCountry.Create(AOwner: TJanuaCustomComponent);
begin
  inherited;
  self.FisoCountry := TJanuaISOCountries.jicNone;
end;

constructor TJanuaISOCountry.Create(AOwner: TJanuaCustomComponent; aCountry: TJanuaISOCountries);
begin
  self.Create(AOwner);
  self.FisoCountry := aCountry;
end;

function TJanuaISOCountry.GetCountry2Code: string;
begin
  Result := JanuaIsoCountry2Code[self.FisoCountry]
end;

procedure TJanuaISOCountry.SetCountry2Code(val: string);
{$IFDEF delphixe}
var
  aisoCountry: TJanuaISOCountries;
{$ELSE delphixe}
  function FindCountry: Boolean;
  var
    i: TJanuaISOCountries;
  begin
    for i := Low(TJanuaISOCountries) to high(TJanuaISOCountries) do
      if val = JanuaIsoCountry2Code[i] then
      begin
        FisoCountry := i;
        Result := true;
      end;
  end;
{$ENDIF}

begin
  if val = JanuaIsoCountry2Code[self.FisoCountry] then
    Exit;
{$IFDEF delphixe}
  if TEnumConvertor<TJanuaISOCountries>.TryFromStringArray(val, JanuaIsoCountry2Code, aisoCountry) then
    self.FisoCountry := aisoCountry
  else
{$ELSE}
  if not FindCountry then
{$ENDIF}
    FisoCountry := TJanuaISOCountries.jicNone;
end;

function TJanuaISOCountry.GetCountry3Code: string;
begin
  Result := JanuaIsoCountry3Code[self.FisoCountry]
end;

procedure TJanuaISOCountry.SetCountry3Code(val: string);
{$IFDEF delphixe}
var
  aisoCountry: TJanuaISOCountries;
{$ELSE delphixe}
  function FindCountry: Boolean;
  var
    i: TJanuaISOCountries;
  begin
    for i := Low(TJanuaISOCountries) to high(TJanuaISOCountries) do
      if val = JanuaIsoCountry3Code[i] then
      begin
        FisoCountry := i;
        Result := true;
      end;
  end;
{$ENDIF}

begin
  if val = JanuaIsoCountry3Code[self.FisoCountry] then
    Exit;
{$IFDEF delphixe}
  if TEnumConvertor<TJanuaISOCountries>.TryFromStringArray(val, JanuaIsoCountry3Code, aisoCountry) then
    self.FisoCountry := aisoCountry
  else
{$ELSE delphixe}
  if not FindCountry then
{$ENDIF}
    self.FisoCountry := TJanuaISOCountries.jicNone;
end;

procedure TJanuaISOCountry.SetisoCountry(const Value: TJanuaISOCountries);
begin
  if Value = FisoCountry then
    Exit;
  FisoCountry := Value;
end;

{ TJanuaIsoLanguageCountry }

constructor TJanuaIsoLanguageCountry.Create(AOwner: TComponent);
begin
  inherited;
  FCultures := TJanuaISOCultures.Create();
end;

destructor TJanuaIsoLanguageCountry.Destroy;
begin
  try
    FCultures.Free;
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

procedure TJanuaIsoLanguageCountry.SetCultureCode(const Value: string);
begin
  if self.FCultureCode <> Value then
  begin
    FCultureCode := Value;
    self.FCultures.CultureCode := FCultureCode;
    // FActive := FCultures.Active or self.FCultures.FIsoLanguages.Active;
    if Assigned(self.OnChangeCulture) then
      self.OnChangeCulture(self);
  end;
end;

procedure TJanuaIsoLanguageCountry.SetCultures(const Value: TJanuaISOCultures);
begin
  FCultures := Value;
end;

procedure TJanuaIsoLanguageCountry.SetLanguage(const Value: TJanuaLanguage);
var
  aComponent: TJanuaCoreComponent;
begin
  if self.FLanguage <> Value then
  begin
    FLanguage := Value;

    if Assigned(self.FCultures) then
    begin
      FCultures.IsoLanguages.Language := self.Language;
      FLanguageName := FCultures.IsoLanguages.LanguageName;
    end;

  end;

end;

{ TJanuaCoreComponent }

procedure TJanuaCoreComponent.AddLog(aLog: string);
begin
  TJanuaLogger.LogRecord('Log', aLog, self);
  // FLocalLog := FLocalLog + sLineBreak + aLog;
end;

function TJanuaCoreComponent.CanRaise: Boolean;
begin
  Result := not(csDesigning in ComponentState) and not FIsServer
end;

procedure TJanuaCoreComponent.ClearErrors;
begin
  self.HasErrors := false;
  self.FLastErrorMessage := '';
end;

procedure TJanuaCoreComponent.ClearMessage;
begin
  self.FHasMessage := false;
  self.FLastMessage := '';
end;

constructor TJanuaCoreComponent.Create(AOwner: TComponent);
var
  i: Integer;
begin
  inherited;
  try
    WriteLog('TJanuaCoreComponent.Create ' + self.Name);
    FLastErrorMessage := '';
    HasErrors := false;

    { FComponentInstances.Add(self);
      self.FTestMode := FGlobalTestMode; }
  except
    on E: Exception do
    begin
      self.WriteError('TJanuaCoreComponent.Create', E);
    end;
  end;
end;

destructor TJanuaCoreComponent.Destroy;
begin
  // {$IFDEF webbroker}
  { FComponentInstances.Remove(self); }
  // {$ENDIF}
  inherited;
end;

function TJanuaCoreComponent.isInitializing: Boolean;
begin
  Result := (csLoading in ComponentState) or (csFixups in ComponentState)
end;

procedure TJanuaCoreComponent.RaiseLocalException(const aProcName: string; aError: Exception);
begin
  if notDesigning then
    Janua.Application.Framework.RaiseException(aProcName, aError, self, '')
  else
  begin
    FLastMessage := ClassName + '.' + aProcName + ': NotDesiging ' + aError.Message + sl + FLastMessage;
    HasErrors := true;
  end;
end;

procedure TJanuaCoreComponent.LocalRaiseException(const sException: string);
begin
  if not(csDesigning in ComponentState) then
  begin
    raise Exception.Create(sException)
  end
  else
  begin
    WriteLog(sException, true);
    HasErrors := true;
    LastErrorMessage := sException;
  end;
end;

class procedure TJanuaCoreComponent.SetApplicationType(const Value: TJanuaApplicationType);
begin
  TJanuaApplication.ApplicationType := Value;
end;

procedure TJanuaCoreComponent.SetDebugMode(const Value: Boolean);
begin
  FDebugMode := Value;
end;
{
  class procedure TJanuaCoreComponent.SetGlobalTestmode(Value: Boolean);
  var
  i: integer;
  begin
  if Value <> FGlobalTestMode then
  begin
  FGlobalTestMode := Value;
  for i := 0 to Pred(FComponentInstances.count) do
  (FComponentInstances.Items[i] as TJanuaCoreComponent).FTestMode := FGlobalTestMode;
  end;
  end; }

procedure TJanuaCoreComponent.SetIsServer(const Value: Boolean);
begin
  FIsServer := Value;
end;

procedure TJanuaCoreComponent.SetLanguage(const Value: TJanuaLanguage);
begin
  if self.FLanguage <> Value then
  begin
    FLanguage := Value;
    if Assigned(FOnChangeLanguage) then
      FOnChangeLanguage(self);

  end;
end;

procedure TJanuaCoreComponent.SetLogToFile(const Value: Boolean);
begin
  FLogToFile := Value;
end;

procedure TJanuaCoreComponent.SetTestMode(const Value: Boolean);
begin
  FTestMode := Value;
end;

procedure TJanuaCoreComponent.SetVerbose(const Value: Boolean);
begin
  self.FVerbose := Value;
end;

procedure TJanuaCoreComponent.WriteError(LogMessage: string; E: Exception; doraise: Boolean = true);
begin
  if notDesigning and not PublicRaised then
    WriteError(E.ClassName + '.' + self.Name, LogMessage, E, doraise)
  else
    PublicRaised := false;
end;

procedure TJanuaCoreComponent.WriteLog(LogMessage: string; isError: Boolean = false);
begin
  if notDesigning then
    WriteLog('', LogMessage, isError);
end;

procedure TJanuaCoreComponent.WriteError(ProcedureName, LogMessage: string; E: Exception; doraise: Boolean);
begin
  if not PublicRaised then
    TJanuaCoreOS.PublicWriteError(self, ProcedureName, LogMessage, E, doraise);
end;

procedure TJanuaCoreComponent.WriteLog(ProcedureName, LogMessage: string; isError: Boolean);
var
  aLogRecord: TJanuaLogRecord;
begin
  if notDesigning then
    TJanuaCoreOS.PublicWriteLog(self, ProcedureName, LogMessage, isError);
end;

procedure TJanuaCoreComponent.WriteMessage(aMessage: string);
begin
  FLastMessage := aMessage;
  FHasMessage := true;
  if notDesigning then
    WriteLog(aMessage);
end;

{ TJanuaObject }

destructor TJanuaObject.Destroy;
begin
  inherited;
end;

function TJanuaObject.InternalActivate: Boolean;
begin
  Result := inherited;
end;

constructor TJanuaObject.Create;
begin
  self.FLastErrorMessage := '';
end;

procedure TJanuaObject.ClearErrors;
begin
  self.FHasErrors := false;
  self.FLastErrorMessage := '';
end;

procedure TJanuaObject.Deactivate;
begin
  inherited;
end;

procedure TJanuaObject.SetLastMessage(const Value: string);
begin
  FLastMessage := Value;
end;

procedure TJanuaObject.SetNameJ(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaObject.SetVerbose(const Value: Boolean);
begin
  self.FVerbose := Value;
end;

procedure TJanuaObject.WriteError(aProcedureName, LogMessage: string; E: Exception; doraise: Boolean = true);
begin
  TJanuaCoreOS.PublicWriteError(self, aProcedureName, LogMessage, E, doraise);
end;

procedure TJanuaObject.WriteLog(ProcedureName, LogMessage: string; isError: Boolean = false);
begin
  if isError then
  begin
    lastMessage := LogMessage;
    FHasErrors := true;
  end
  else
  begin
    if FVerbose then
      lastMessage := LogMessage;
  end;
  TJanuaCoreOS.PublicWriteLog(self, ProcedureName, LogMessage, isError)
end;

{ TJanuaCorePersistent }

function TJanuaPersistent.IsDesigning: Boolean;
begin
  if Assigned(FOwner) then
    Result := csDesigning in self.FOwner.ComponentState
  else
    Result := false
end;

function TJanuaPersistent.Activate: Boolean;
begin
  Result := inherited;
  if Result then
  begin
    ClearErrors;
    Result := FActive;
  end;
end;

constructor TJanuaPersistent.Create;
begin
  self.FLastErrorMessage := '';
end;

procedure TJanuaPersistent.AddLog(aLog: string);
begin
  self.FLog := self.FLog + sLineBreak + aLog;
end;

procedure TJanuaPersistent.ClearErrors;
begin
  self.FHasErrors := false;
  self.ClearLog;
  self.FLastErrorMessage := '';
end;

procedure TJanuaPersistent.ClearLog;
begin
  self.FLog := '';
end;

constructor TJanuaPersistent.Create(AOwner: TJanuaCustomComponent);
begin
  if Assigned(AOwner) and (AOwner <> nil) then
  begin
    // AOwner.AddPersistent(self);
    self.FOwner := AOwner;
  end;
end;

procedure TJanuaPersistent.Deactivate;
begin
  ClearErrors;
  inherited;
end;

destructor TJanuaPersistent.Destroy;
begin
  // qui dovrebbe notificare il destroy
  inherited;
end;

procedure TJanuaPersistent.SetActive(const Value: Boolean);
begin
  inherited;
  if Value and not FActive then
    FActive := self.Activate
  else
  begin
    self.FActive := Value;
    Deactivate;
  end;
end;

procedure TJanuaPersistent.SetLastMessage(const Value: string);
begin
  FLastMessage := Value;
end;

procedure TJanuaPersistent.SetLog(const Value: string);
begin
  self.FLog := Value;
end;

procedure TJanuaPersistent.SetVerbose(const Value: Boolean);
begin
  self.FVerbose := Value;
end;

procedure TJanuaPersistent.WriteError(LogMessage: string; E: Exception);
begin
  if not PublicRaised then
    TJanuaCoreOS.PublicWriteError(self, '', LogMessage, E, true);
end;

procedure TJanuaPersistent.WriteLog(LogMessage: string; isError: Boolean = false; ProcedureName: string = '');
var
  aLogRecord: TJanuaLogRecord;
begin
  aLogRecord := TJanuaCoreOS.PublicWriteLog(self, ProcedureName, LogMessage, isError);
  self.AddLog(aLogRecord.LogText);
end;

{ TJanuaBindObject }

{ TJanuaRSSTag }

constructor TJanuaRSSTags.Create(aFeedType: TJanuaRSSFeedType);
begin
  { Title: string;
    Link: string;
    Description: string;
    Language: string;
    pubDate: string;
    lastBuildDate: string;
    generator: string; }

  Item.Create(aFeedType);
  Channel := 'channel';
  Description := 'description';
  Link := 'link';
  Image.Create(aFeedType);
  Language := 'language';
  Title := 'title';
  pubDate := 'pubDate';
  lastBuildDate := 'lastBuildDate';
  generator := 'generator';
  FeedType := aFeedType;

  case aFeedType of
    jrtWordpress:
      begin
      end;
    jrtStandard:
      begin
      end;
    jrtAIFA:
      begin
      end;
    jrtEmbarcadero:
      begin
      end;
  end;
end;

function TJanuaRSSTags.ToString: string;
begin
  Result := 'Item: ' + Item.Item + sLineBreak + 'Lang: ' + self.Language + 'Description: ' + Description +
    sLineBreak + 'Link: ' + Link + sLineBreak + 'Image: ' + Image.Url + sLineBreak + 'Date: ' + self.pubDate +
    sLineBreak + 'Title: ' + Title + sLineBreak + 'Item.Author: ' + self.Item.Author + sLineBreak;
end;

{ TJanuaFeed }

function TJanuaFeed.ToString: string;
begin
  { Title, AbstractText, LinkUrl, Text, Image, Author : unicodestring;
    Date: TDateTime; }

  Result := 'Title: ' + self.Title + sLineBreak + 'AbstractText: ' + self.AbstractText + sLineBreak +
    'LinkUrl: ' + self.LinkUrl + sLineBreak + 'Text: ' + self.Text + sLineBreak + 'Image: ' + self.Image +
    sLineBreak + 'Author: ' + self.Author + sLineBreak + 'Date: ' + DateTimeToStr(self.Date);
end;

{ TJanuaFeeds }

constructor TJanuaFeeds.Create(aFeedType: TJanuaRSSFeedType);
begin
  self.Url := '';
  self.RSSTags.Create(aFeedType);
  SetLength(self.Feeds, 0);
end;

function TJanuaFeeds.ToString: string;
var
  aFeed: TJanuaFeed;
begin
  { Url: unicodestring;
    RSSTags: TJanuaRSSTag;
    Feeds : array of TJanuaFeed; }
  Result := 'Url: ' + self.Url + sLineBreak;
  for aFeed in self.Feeds do
    Result := Result + aFeed.ToString + sLineBreak;

end;

function TJanuaCoreComponent.GenerateJsonError(aError: string): TJsonObject;
begin
  Result := TJsonObject.Create;
  JSonPair(Result, 'Result', 'False');
  JSonPair(Result, 'Message', aError);
end;

function TJanuaCoreComponent.GenerateJsonResult(aResult: string): TJsonObject;
begin
  Result := TJsonObject.Create;
  JSonPair(Result, 'Result', 'True');
  JSonPair(Result, 'Message', aResult);
end;

class function TJanuaCoreComponent.GetApplicationType: TJanuaApplicationType;
begin
  Result := TJanuaApplication.ApplicationType
end;

{
  class function TJanuaCoreComponent.GetGlobalTest: Boolean;
  begin
  Result := FGlobalTestMode;
  end;
}
function TJanuaCoreComponent.GetIsLoaded: Boolean;
begin
  Result := self.FIsLoaded;
end;

function TJanuaCoreComponent.GetLocalLog: string;
begin
  Result := FLocalLog;
end;

function TJanuaCoreComponent.GetLogText: string;
begin
  Result := TJanuaLogger.LogString
end;

function TJanuaCoreComponent.InternalActivate: Boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      if Result then
      begin
        ClearErrors;
      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;
end;

procedure TJanuaCoreComponent.InternalDeactivate;
begin
  inherited;
end;

{ REnumerationEnumerator }

constructor REnumerationEnumerator.Create(aEnumeratorTypeInfo: PTypeInfo);
begin
  Assert(aEnumeratorTypeInfo^.Kind = tkEnumeration);
  EnumeratorTypeInfo := aEnumeratorTypeInfo;
end;

{ REnumerationEnumerator }

class function REnumerationEnumerator.From(aEnumeratorTypeInfo: PTypeInfo): REnumerationEnumerator;
begin
  Result := REnumerationEnumerator.Create(aEnumeratorTypeInfo);
end;

function REnumerationEnumerator.GetEnumerator: TEnumerationEnumerator;
begin
  Result := TEnumerationEnumerator.Create(EnumeratorTypeInfo);
end;

{ TEnumerationEnumerator }

constructor TEnumerationEnumerator.Create(aEnumeratorTypeInfo: PTypeInfo);
var
  EnumeratorTypeInfo: PTypeInfo;
  EnumerationTypeData: PTypeData;
begin
  Assert(aEnumeratorTypeInfo^.Kind = tkEnumeration);
  EnumeratorTypeInfo := aEnumeratorTypeInfo;
  EnumerationTypeData := GetTypeData(EnumeratorTypeInfo);
  FMinValue := EnumerationTypeData.MinValue;
  FMaxValue := EnumerationTypeData.MaxValue;
  FValue := FMinValue - 1;
end;

function TEnumerationEnumerator.GetCurrent: Integer;
begin
  Result := FValue;
end;

function TEnumerationEnumerator.MoveNext: Boolean;
begin
  Result := FValue < FMaxValue;
  if Result then
    Inc(FValue);
end;

{ TJanuaISOCultures }

constructor TJanuaISOCultures.Create;
var
  i: Integer;
begin
  inherited;
  FIsoLanguages := TJanuaISOLanguages.Create;
  SetLength(self.FISOCultures, 12);

  for i := 0 to 11 do
  begin
    case i of
      0:
        begin
          FISOCultures[i].IsoCode3 := 'NNN-NNN';
          FISOCultures[i].CultureCode := 'nn-NN';
          FISOCultures[i].LanguageName := 'Not Set';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicNNN;
          FISOCultures[i].Country := TJanuaISOCountries.jicNone;
          FISOCultures[i].Culture := TJanuaCultures.jicNone_None
        end;

      1:
        begin
          FISOCultures[i].IsoCode3 := 'ITA-ITA';
          FISOCultures[i].CultureCode := 'it-IT';
          FISOCultures[i].LanguageName := 'Italiano Italia';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicITA;
          FISOCultures[i].Country := TJanuaISOCountries.jicItalia;
          FISOCultures[i].Culture := TJanuaCultures.jicItalian_Italy
        end;

      2:
        begin
          FISOCultures[i].IsoCode3 := 'ENG-GBR';
          FISOCultures[i].CultureCode := 'en-GB';
          FISOCultures[i].LanguageName := 'English Great Britain';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicGBR;
          FISOCultures[i].Country := TJanuaISOCountries.jicEngland;
          FISOCultures[i].Culture := TJanuaCultures.jicFrancais_France
        end;

      3:
        begin
          FISOCultures[i].IsoCode3 := 'ENG-USA';
          FISOCultures[i].CultureCode := 'en-US';
          FISOCultures[i].LanguageName := 'English United States';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicUSA;
          FISOCultures[i].Country := TJanuaISOCountries.jicUnitedStates;
          FISOCultures[i].Culture := TJanuaCultures.jicEnglish_USA
        end;

      4:
        begin
          FISOCultures[i].IsoCode3 := 'FRA-FRA';
          FISOCultures[i].CultureCode := 'fr-FR';
          FISOCultures[i].LanguageName := 'Fran?ais France';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicFRA;
          FISOCultures[i].Country := TJanuaISOCountries.jicFrance;
          FISOCultures[i].Culture := TJanuaCultures.jicFrancais_France
        end;

      5:
        begin
          FISOCultures[i].IsoCode3 := 'ESP-ESP';
          FISOCultures[i].CultureCode := 'es-ES';
          FISOCultures[i].LanguageName := 'Espanol Espana';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicESP;
          FISOCultures[i].Country := TJanuaISOCountries.jicEspana;
          FISOCultures[i].Culture := TJanuaCultures.jicEspanol_Espana
        end;

      6:
        begin
          FISOCultures[i].IsoCode3 := 'ESP-ARG';
          FISOCultures[i].CultureCode := 'es-AR';
          FISOCultures[i].LanguageName := 'Espanol Argentina';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicARG;
          FISOCultures[i].Country := TJanuaISOCountries.jicArgentina;
          FISOCultures[i].Culture := TJanuaCultures.jicEspanol_Espana
        end;

      7:
        begin
          FISOCultures[i].IsoCode3 := 'ESP-ARG';
          FISOCultures[i].CultureCode := 'es-AR';
          FISOCultures[i].LanguageName := 'Espanol Argentina';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicARG;
          FISOCultures[i].Country := TJanuaISOCountries.jicArgentina;
          FISOCultures[i].Culture := TJanuaCultures.jicEspanol_Espana
        end;

      8:
        begin
          FISOCultures[i].IsoCode3 := 'ESP-ARG';
          FISOCultures[i].CultureCode := 'es-AR';
          FISOCultures[i].LanguageName := 'Espanol Argentina';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicARG;
          FISOCultures[i].Country := TJanuaISOCountries.jicArgentina;
          FISOCultures[i].Culture := TJanuaCultures.jicEspanol_Espana
        end;

      9:
        begin
          FISOCultures[i].IsoCode3 := 'POR-POR';
          FISOCultures[i].CultureCode := 'pt-PT';
          FISOCultures[i].LanguageName := 'Portugues Portugal';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicPOR;
          FISOCultures[i].Country := TJanuaISOCountries.jicPortugal;
          FISOCultures[i].Culture := TJanuaCultures.jicPortugues_Portugal
        end;

      10:
        begin
          FISOCultures[i].IsoCode3 := 'POR-BRA';
          FISOCultures[i].CultureCode := 'pt-BR';
          FISOCultures[i].LanguageName := 'Portugues Brazil';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicBRA;
          FISOCultures[i].Country := TJanuaISOCountries.jicBrazil;
          FISOCultures[i].Culture := TJanuaCultures.jicPortugues_Brazil
        end;

      11:
        begin
          FISOCultures[i].IsoCode3 := 'DEU-DEU';
          FISOCultures[i].CultureCode := 'de-DE';
          FISOCultures[i].LanguageName := 'Deutsch Deutschland';
          FISOCultures[i].CountryCode := TJanuaisoCountryCode.jicDEU;
          FISOCultures[i].Country := TJanuaISOCountries.jicDeutschland;
          FISOCultures[i].Culture := TJanuaCultures.jicDeutsch_Deutschland
        end;

    end;

  end;

  self.SetCulture(TJanuaCultures.jicNone_None);
end;

procedure TJanuaISOCultures.Deactivate;
begin
  inherited;
  SetCulture(TJanuaCultures.jicNone_None);

end;

destructor TJanuaISOCultures.Destroy;
begin
  try
    FIsoLanguages.Free; // Added by Administrator 29/01/2023 11:41:15
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

procedure TJanuaISOCultures.SetCountry(const Value: TJanuaISOCountries);
begin
  FCountry := Value;
end;

procedure TJanuaISOCultures.SetCountryCode(const Value: TJanuaisoCountryCode);
begin
  FCountryCode := Value;
end;

procedure TJanuaISOCultures.SetCulture(const Value: TJanuaCultures);
var
  aCulture: TJanuaISOCulture;
begin
  if Value <> FCulture then
  begin
    FFound := false;
    FCulture := Value;
    for aCulture in self.FISOCultures do
    begin
      if aCulture.Culture = FCulture then
      begin
        self.FSelectedCulture := aCulture;
        FFound := true;
        SetSelectedCulture;
        Exit;
      end;
    end;
    if not FFound then
      self.Deactivate;

  end;
end;

procedure TJanuaISOCultures.SetCultureCode(const Value: string);
var
  aCulture: TJanuaISOCulture;
  sCultureCode: String;
  aChar: WideChar;
begin
  FFound := true;
  if Length(Value) > 5 then
    sCultureCode := copy(Value, 1, 5);

  if sCultureCode <> FCultureCode then
  begin
    self.WriteLog('TJanuaISOCultures.SetCultureCode', 'Searching Culture Code: ' + Value);
    FFound := false;
    FCultureCode := sCultureCode;
    if Length(self.FCultureCode) = 5 then
    begin
      for aCulture in self.FISOCultures do
      begin
        if UpperCase(aCulture.CultureCode) = UpperCase(FCultureCode) then
        begin
          self.FSelectedCulture := aCulture;
          self.WriteLog('TJanuaISOCultures.SetCultureCode',
            'Found Culture: ' + FSelectedCulture.LanguageName);
          FFound := true;
          SetSelectedCulture;
          self.FIsoLanguages.Code := copy(Value, 1, 2);
          Exit;
        end;
      end;
      if not FFound then
      begin
        self.WriteLog('TJanuaISOCultures.SetCultureCode', 'Not Found Culture: ' + Value);
        self.SetCulture(TJanuaCultures.jicNone_None);
        FIsoLanguages.Code := copy(sCultureCode, 1, 2);
      end;
    end
    else
    begin
      self.FIsoLanguages.Code := Value;
      self.SetCulture(TJanuaCultures.jicNone_None);
      self.FFound := not(FIsoLanguages.Language = TJanuaLanguage.jlaNone);
      if self.FFound then
        self.Activate;
      self.FCultureCode := Value;
    end;

  end;

end;

procedure TJanuaISOCultures.SetIsoCode3(const Value: string);
begin
  FIsoCode3 := Value;
end;

procedure TJanuaISOCultures.SetIsoLanguages(const Value: TJanuaISOLanguages);
begin
  FIsoLanguages := Value;
end;

procedure TJanuaISOCultures.SetLanguageName(const Value: string);
begin
  FLanguageName := Value;
end;

procedure TJanuaISOCultures.SetSelectedCulture;
begin
  FLanguageName := FSelectedCulture.LanguageName;
  FCultureCode := FSelectedCulture.CultureCode;
  FCountry := FSelectedCulture.Country;
  FCountryCode := FSelectedCulture.CountryCode;
  FIsoCode3 := FSelectedCulture.IsoCode3;
  FCulture := FSelectedCulture.Culture;
  self.FActive := not(FSelectedCulture.Culture = jicNone_None);
end;

constructor TJanuaISOLanguages.Create(AOwner: TJanuaCustomComponent; aLanguage: TJanuaLanguage);
begin
  self.Create(AOwner);
  self.SetLanguage(aLanguage);
end;

procedure TJanuaISOLanguages.Deactivate;
begin
  self.FSelectedLanguage := FJanuaISOLanguages[0];
end;

function TJanuaISOLanguages.Activate: Boolean;
begin
  Result := inherited;
  Result := self.FSelectedLanguage.Language <> TJanuaLanguage.jlaNone;
  self.FActive := Result;
end;

procedure TJanuaISOLanguages.SetCode(const Value: string);
var
  aLanguage: TJanuaISORecordLanguage;
begin
  if FSelectedLanguage.Code <> FSelectedLanguage.Code then
  begin
    self.FFound := false;
    for aLanguage in FJanuaISOLanguages do
    begin
      if aLanguage.Code = Value then
      begin
        self.FSelectedLanguage := aLanguage;
        Activate;
        self.FFound := true;
        Exit;
      end;
    end;
    if not self.FFound then
      Deactivate;

  end;
end;

procedure TJanuaISOLanguages.SetID(const Value: Integer);
var
  aLanguage: TJanuaISORecordLanguage;
begin
  if FSelectedLanguage.ID <> Value then
  begin
    for aLanguage in FJanuaISOLanguages do
    begin
      if aLanguage.ID = Value then
      begin
        self.FSelectedLanguage := aLanguage;
        self.Activate;
        Exit;
      end;
    end;
  end;
end;

procedure TJanuaISOLanguages.SetIsoCode3(const Value: string);
var
  aLanguage: TJanuaISORecordLanguage;
begin
  if FSelectedLanguage.IsoCode3 <> Value then
  begin
    for aLanguage in FJanuaISOLanguages do
    begin
      if aLanguage.IsoCode3 = Value then
      begin
        self.FSelectedLanguage := aLanguage;
        self.Activate;
        Exit;
      end;
    end;
  end;
end;

procedure TJanuaISOLanguages.SetLanguage(const Value: TJanuaLanguage);
var
  aLanguage: TJanuaISORecordLanguage;
begin
  if FSelectedLanguage.Language <> Value then
  begin
    for aLanguage in FJanuaISOLanguages do
    begin
      if aLanguage.Language = Value then
      begin
        self.FSelectedLanguage := aLanguage;
        self.Activate;
        Exit;
      end;
    end;
  end;
end;

procedure TJanuaISOLanguages.SetLanguageName(const Value: string);
var
  aLanguage: TJanuaISORecordLanguage;
begin
  if FSelectedLanguage.Name <> Value then
  begin
    FFound := false;
    for aLanguage in FJanuaISOLanguages do
    begin
      if aLanguage.Name = Value then
      begin
        self.FSelectedLanguage := aLanguage;
        self.Activate;
        FFound := true;
        Exit;
      end;
    end;
    if not self.FFound then
    begin
      self.Deactivate;
    end;
  end;
end;

procedure TJanuaISOLanguages.SetLanguagesList;
var
  i: Integer;
begin
  SetLength(self.FJanuaISOLanguages, 7);
  for i := 0 to 6 do
  begin
    case i of
      0:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'None';
          FJanuaISOLanguages[i].Code := 'nn';
          FJanuaISOLanguages[i].IsoCode3 := 'nnn';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaNone;
        end;
      1:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'Italiano';
          FJanuaISOLanguages[i].Code := 'it';
          FJanuaISOLanguages[i].IsoCode3 := 'ita';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaItalian;
        end;
      2:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'English';
          FJanuaISOLanguages[i].Code := 'en';
          FJanuaISOLanguages[i].IsoCode3 := 'eng';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaEnglish;
        end;
      3:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'Fran?ais';
          FJanuaISOLanguages[i].Code := 'fr';
          FJanuaISOLanguages[i].IsoCode3 := 'fra';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaFrancais;
        end;
      4:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'Espanol';
          FJanuaISOLanguages[i].Code := 'es';
          FJanuaISOLanguages[i].IsoCode3 := 'esp';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaEspanol;
        end;
      5:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'Russkij';
          FJanuaISOLanguages[i].Code := 'ru';
          FJanuaISOLanguages[i].IsoCode3 := 'rus';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaRussian;
        end;
      6:
        begin
          FJanuaISOLanguages[i].ID := i;
          FJanuaISOLanguages[i].Name := 'Deutsch';
          FJanuaISOLanguages[i].Code := 'de';
          FJanuaISOLanguages[i].IsoCode3 := 'deu';
          FJanuaISOLanguages[i].Language := TJanuaLanguage.jlaGerman;
        end;
    end;
  end;
  self.SetLanguage(TJanuaLanguage.jlaNone);
end;

constructor TJanuaISOLanguages.Create(AOwner: TJanuaCustomComponent);
begin
  inherited Create(AOwner);
  self.SetLanguagesList;
end;

{ TJanuaMime }

procedure TJanuaMime.Assign(Source: TPersistent);
var
  m: TJanuaMime;
begin
  if (Source is TJanuaMime) then
  begin
    m := (Source as TJanuaMime);
    self.FCharset := m.Charset;
    self.MimeType := m.MimeType;
    self.FExtension := m.Extension;
    self.FMimeList.Assign(m.MimeList);
    self.FCharSetList.Assign(m.CharSetList);
  end
  else
    inherited;
end;

constructor TJanuaMime.Create;
var
  a: TJanuaMimeType;
begin
  FMimeList := TStringList.Create;
  FCharSetList := TStringList.Create;
  for a in [TJanuaMimeType.jmtApplicationJson .. TJanuaMimeType.jmtUnknown] do
    FMimeList.Add(JanuaMimeString[a])
end;

destructor TJanuaMime.Destroy;
begin
  try
    FCharSetList.Free;
    FMimeList.Free; // Added by Administrator 29/01/2023 11:41:41
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

function TJanuaMime.getCharsetString: string;
begin
  Result := JanuaCharsetString[self.FCharset];
end;

function TJanuaMime.getIsSet: Boolean;
begin
  Result := self.FMimeType <> jmtUnknown;
end;

function TJanuaMime.getMimeString: string;
begin
  Result := JanuaMimeString[self.FMimeType];
end;

procedure TJanuaMime.SetCharset(const Value: TJanuaCharsetType);
begin
  FCharset := Value;
end;

procedure TJanuaMime.SetCharSetList(const Value: TStrings);
begin
  FCharSetList := Value;
end;

procedure TJanuaMime.SetCharsetString(const Value: string);
var
  a: TJanuaCharsetType;
begin
  // Appena Ricevo un Encoding setto il type.
  self.FCharset := TJanuaCharsetType.jcsUnknown;
  if Value <> '' then
    for a := TJanuaCharsetType.jcsUnknown to TJanuaCharsetType.jcsISO8859_1 do
      if JanuaCharsetString[a] = Value then
        self.FCharset := a;
end;

procedure TJanuaMime.SetExtension(const Value: string);
begin
  FExtension := Value;
end;

procedure TJanuaMime.SetMimeList(const Value: TStrings);
begin
  FMimeList := Value;
end;

procedure TJanuaMime.SetMimeString(const Value: string);
var
  a: TJanuaMimeType;
begin
  self.FMimeType := TJanuaMimeType.jmtUnknown;
  if Value <> '' then
    for a in [jmtApplicationJson .. jmtUnknown] do
      if JanuaMimeString[a] = Value then
      begin
        self.FMimeType := a;
        Exit;
      end;
end;

procedure TJanuaMime.SetMimeType(const Value: TJanuaMimeType);
begin
  FMimeType := Value;
end;

{ TJanuaContent }

procedure TJanuaContent.Clear;
begin
  Unset;
  self.FContentType := TJanuaContentType.jctNotSet;
end;

constructor TJanuaContent.Create;
begin
  inherited;
  FStrings := TStringList.Create;
  FIsSet := false;
  FDigits := 6;
  FMaxLength := -1;
  FMinLength := -1;
  FMimeType := TJanuaMime.Create;
  FMimeType.MimeType := TJanuaMimeType.jmtUnknown;
  FContentType := TJanuaContentType.jctNotSet;
  FJsonObject := TJsonObject.Create;
end;

destructor TJanuaContent.Destroy;
begin
  try
    if Assigned(FStrings) then
      FreeAndNil(FStrings);
    if Assigned(FMimeType) then
      FreeAndNil(FMimeType);
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

function TJanuaContent.getAsBlob: TJanuaBlob;
var
  aStream: TMemoryStream;
begin
  Result := self.FBlob

end;

function TJanuaContent.GetAsJson: String;
begin
  Result := GetJsonObject.{$IFDEF delphixe}ToJSON{$ELSE}AsJson{$ENDIF};
end;

function TJanuaContent.getAsString: String;
begin
  Result := self.getAsStrings.Text;
end;

function TJanuaContent.getAsStrings: TStrings;
var
  aStream: TStream;
begin
  if Assigned(self.FMemDataset) and (self.FContentType = TJanuaContentType.jctMemTable) then

  begin
{$IFDEF delphixe}
    aStream := self.FMemDataset.CreateXMLStream;
{$ELSE delphixe}
    aStream := TMemoryStream.Create;
    FMemDataset.SaveToXML(aStream);
{$ENDIF delphixe}
    try
      aStream.Position := 0;
      self.FStrings.LoadFromStream(aStream);
    finally
      aStream.Free;
    end;
  end
  else if (FContentType = jctJsonObject) and Assigned(FJsonObject) and (FJsonObject.count > 0) then
  begin
    self.FStrings.Clear;
    self.FStrings.Text := Janua.Core.JSON.JsonPretty(self.FJsonObject);
  end;
  Result := FStrings;

end;

function TJanuaContent.GetJsonObject: TJsonObject;
var
  i: Integer;
begin
  if not Assigned(self.FJsonObject) then
    self.FJsonObject := TJsonObject.Create;

  if Assigned(FStrings) and (FStrings.count > 0) then
  begin
    if FContentType = TJanuaContentType.jctParams then
    begin
      JsonObjectClear;
      for i := 0 to FStrings.count - 1 do
        JSonPair(FJsonObject, FStrings.Names[i], FStrings.ValueFromIndex[i]);
    end;
  end;

  Result := self.FJsonObject;
end;

{ TJanuaInterfacedBindableComponent }

function TJanuaInterfacedBindableComponent.JanuaGetComponent: TComponent;
begin
  Result := self.FComponent;
end;

function TJanuaInterfacedBindableComponent.GetNameJ: TComponentName;
begin
  if Assigned(FComponent) then
    Result := FComponent.Name
  else
    Result := '';
end;

procedure TJanuaInterfacedBindableComponent.JanuaSetComponent(const Value: TComponent);
begin
  self.FComponent := Value
end;

procedure TJanuaInterfacedBindableComponent.SetNameJ(const Value: TComponentName);
begin
  if Assigned(FComponent) then
    FComponent.Name := Value
end;

{$IFDEF delphixe}

function TJanuaContent.geTFdMemTable: TFdMemTable;
{$ELSE}

function TJanuaContent.geTFdMemTable: TVirtualTable;
{$ENDIF}
begin
  Result := self.FMemDataset;
end;

{
  procedure TJanuaContent.LoadFromDevartDataset(aDataset: TDataset);
  begin
  self.FBlob.Clear;
  if not Assigned(FMemDataset) then
  self.FMemDataset := TFdMemTable.Create(nil)
  else
  begin
  self.FMemDataset.ClearFields;
  self.FMemDataset.Close;
  end;
  Janua.Core.Functions.CloneDataset(aDataset, self.FMemDataset);
  self.FMimeType.MimeType := TJanuaMimeType.jmtApplicationXml;
  self.FContentType := TJanuaContentType.jcTFdMemTable;
  self.FMemDataset.Open;
  end;
}

procedure TJanuaContent.LoadFromFile(aFile: TFileName);
begin
  self.FBlob.Clear;
  if FileExists(aFile) then
    self.FBlob.LoadFromFile(aFile);
end;

procedure TJanuaContent.LoadFromStream(aStream: TStream);
begin
  case self.FMimeType.FMimeType of
    jmtApplicationJson:
      self.FStrings.LoadFromStream(aStream);
    jmtApplicationXml:
      self.FStrings.LoadFromStream(aStream);
    jmtTextHtml:
      self.FStrings.LoadFromStream(aStream);
    jmtTextCss:
      self.FStrings.LoadFromStream(aStream);
    jmtTextXml:
      self.FStrings.LoadFromStream(aStream);
    jmtTextPlain:
      self.FStrings.LoadFromStream(aStream);
    jmtOctetStream:
      self.FBlob.LoadFromStream(aStream);
    jmtApplicationJavascript:
      self.FStrings.LoadFromStream(aStream);
    jmtUnknown:
      self.FStrings.LoadFromStream(aStream);
  end;

end;

procedure TJanuaContent.SaveToFile(aFile: TFileName);
begin
  if true then

end;

procedure TJanuaContent.Unset;
begin
  self.FBlob.Clear;
  self.FStrings.Clear;
  self.FDigits := 6;
  self.FMaxLength := -1;
  self.MinLength := -1;
  self.FIsSet := false;
  JsonObjectClear;
end;

procedure TJanuaContent.JsonObjectClear;
begin
  if Assigned(self.FJsonObject) and (self.FJsonObject.count > 0) then
  begin
    self.FJsonObject.Free;
    self.FJsonObject := TJsonObject.Create;
  end;
end;

procedure TJanuaContent.SaveToStream(aStream: TStream);
begin
  if not Assigned(self.FStrings) then
    self.FStrings.Create;

  if (self.FContentType = TJanuaContentType.jctJsonObject) and Assigned(self.FJsonObject) then
  begin
    self.FStrings.Clear;
    self.FStrings.Text := self.GetAsJson;
    self.FStrings.SaveToStream(aStream);
  end
  else if self.FContentType in [jctXml, jctMemo, jctString] then
  begin
    self.FStrings.SaveToStream(aStream);
  end
  else if self.FContentType in [jctFile, jctImageFile, jctXml, jctBlob] then
    FBlob.SaveToStream(aStream);

end;

procedure TJanuaContent.setAsBlob(const Value: TJanuaBlob);
begin
  self.FBlob := Value;
  self.FContentType := TJanuaContentType.jctBlob;
end;

procedure TJanuaContent.SetAsJson(const Value: string);
begin
  if self.FContentType = TJanuaContentType.jctJsonObject then
  begin
{$IFDEF delphixe}
    if not Assigned(self.FJsonObject) then
      FJsonObject := TJsonObject.Create;
    FJsonObject.Parse(BytesOf(Value), 0);
{$ENDIF}
{$IFDEF fpc}
    if Assigned(FJsonObject) then
      FJsonObject.Free;
    FJsonObject := GetJSON(Value) as TJsonObject;
{$ENDIF}
  end;
end;

procedure TJanuaContent.setAsString(const Value: String);
begin
  if self.FContentType = TJanuaContentType.jctJsonObject then
  begin
{$IFDEF delphixe}
    if not Assigned(self.FJsonObject) then
      FJsonObject := TJsonObject.Create;
    FJsonObject.Parse(BytesOf(Value), 0);
{$ENDIF}
{$IFDEF fpc}
    if Assigned(FJsonObject) then
      FJsonObject.Free;
    FJsonObject := GetJSON(Value) as TJsonObject;
{$ENDIF}
  end;
end;

procedure TJanuaContent.setAsStrings(const Value: TStrings);
begin

end;

procedure TJanuaContent.SetContentType(const Value: TJanuaContentType);
begin
  FContentType := Value;
end;

procedure TJanuaContent.SetDigits(const Value: smallint);
begin
  FDigits := Value;
end;

procedure TJanuaContent.SetIsSet(const Value: Boolean);
begin
  FIsSet := Value;
end;

procedure TJanuaContent.SetJsonObject(const Value: TJsonObject);
var
  aString: string;
begin
  // self.FJsonObject := Value;
{$IFDEF delphixe}
  aString := Value.ToJSON;
  FJsonObject.Parse(BytesOf(aString), 0);
{$ENDIF}
{$IFDEF fpc}
  FJsonObject := TJsonObject(Value.Clone);
{$ENDIF}
end;

procedure TJanuaContent.SetMaxLength(const Value: Integer);
begin
  FMaxLength := Value;
end;

procedure TJanuaContent.SetMimeType(const Value: TJanuaMime);
begin
  FMimeType := Value;
end;

procedure TJanuaContent.SetMinLength(const Value: Integer);
begin
  FMinLength := Value;
end;

{$IFDEF delphixe}

procedure TJanuaContent.seTFdMemTable(const Value: TFdMemTable);
begin

end;
{$ENDIF}
{$IFDEF FPC}

procedure TJanuaContent.seTFdMemTable(const Value: TVirtualTable);
begin

end;
{$ENDIF}
{ TJanuaCoordinates }

procedure TJanuaCoordinates.Clear;
begin
  Latitude := 0.0;
  Longitude := 0.0;
end;

constructor TJanuaCoordinates.Create(aLat, aLon: Double);
begin
  self := Default (TJanuaCoordinates);
  self.FCoordinates.Latitude := aLat;
  self.FCoordinates.Longitude := aLon;
  //
end;

constructor TJanuaCoordinates.Create;
begin
  Latitude := 0.0;
  Longitude := 0.0;
end;

function TJanuaCoordinates.getAddress: string;
begin
  Result := FCoordinates.Address
end;

procedure TJanuaCoordinates.GetCoordinatesFromAddress;
begin

end;

function TJanuaCoordinates.getLatitude: Double;
begin
  Result := FCoordinates.Latitude
end;

function TJanuaCoordinates.getLongitude: Double;
begin
  Result := FCoordinates.Longitude
end;

procedure TJanuaCoordinates.SetAddress(const Value: string);
begin
  FCoordinates.Address := Value;
end;

procedure TJanuaCoordinates.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TJanuaCoordinates.SetLatitude(const Value: Double);
begin
  FCoordinates.Latitude := Value;
end;

procedure TJanuaCoordinates.SetLongitude(const Value: Double);
begin
  FCoordinates.Longitude := Value;
end;

function TJanuaCoordinates.ToString: string;
begin
  Result := Format('Lat: %3.8f - Lon: %3.8f ', [FCoordinates.Latitude, FCoordinates.Longitude]);
end;

{ TJanuaCustomObject }

function TJanuaCustomObject.Activate: Boolean;
begin
  Result := FActive;
  if not Result then
  begin
    FActive := InternalActivate;
    Result := FActive
  end;
end;

procedure TJanuaCustomObject.Deactivate;
begin
  FActive := false;
end;

function TJanuaCustomObject.InternalActivate: Boolean;
begin
  Result := true;
end;

procedure TJanuaCustomObject.SetActive(const Value: Boolean);
begin
  if FActive <> Value then
  begin
    if Value then
      FActive := InternalActivate
    else
    begin
      FActive := false;
      Deactivate;
    end;
  end;
end;

procedure TJanuaCustomObject.SetName(const Value: string);
begin
  FName := Value;
end;

{ TJanuaCustomPersistent }

function TJanuaCustomPersistent.Activate: Boolean;
begin
  self.FActive := true;
  Result := true;
end;

procedure TJanuaCustomPersistent.Deactivate;
begin
  self.FActive := false;
end;

procedure TJanuaCustomPersistent.SetActive(const Value: Boolean);
begin
  FActive := Value;
end;

procedure TJanuaCustomPersistent.SetName(const Value: string);
begin
  self.FName := Value;
end;

{ TJanuaFileCache }

constructor TJanuaFileCache.Create(AOwner: TComponent);
begin
  inherited;
  FTextFiles := TDictionary<String, String>.Create;
  FFileLoader := TStringList.Create;
end;

destructor TJanuaFileCache.Destroy;
begin
  try
    if Assigned(FTextFiles) then
      self.FTextFiles.Free;
    if Assigned(FFileLoader) then
      self.FFileLoader.Free; // Added by Administrator 29/01/2023 11:42:32
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

function TJanuaFileCache.SearchFile(aDirectory, aFile: string): Boolean;
var
  sFile: string;
  conto { , i } : Integer;
begin
  sFile := '';
  if (self.FHomeDir <> '') then
    sFile := sFile + IncludeTrailingPathDelimiter(self.FHomeDir);
  if (aDirectory <> '') then
    sFile := sFile + IncludeTrailingPathDelimiter(aDirectory);
  sFile := sFile + aFile;
  FFound := FTextFiles.ContainsKey(aFile.ToLower);

  if FFound then
    FTextFiles.TryGetValue(sFile.ToLower, FSelectedFile)
  else
  begin
    FFound := FileExists(sFile);
    if FFound then
    begin
      FFileLoader.LoadFromFile(sFile);
      // imposto la variabile interna con il valore Text di FFileLoader
      FSelectedFile := FFileLoader.Text;
      // dopo file Loader non serve pi? ed eseguo un Clear della variabile del loader
      FFileLoader.Clear;
      // se il file ? stato caricato correttamente lo carico indicizzandolo con il suo Full-Path .......
      FTextFiles.Add(aFile.ToLower, FSelectedFile);
    end;
  end;
  Result := FFound;
end;

procedure TJanuaFileCache.SetFound(const Value: Boolean);
begin
  FFound := Value;
end;

procedure TJanuaFileCache.SetHomeDir(const Value: string);
begin
  FHomeDir := Value;
end;

procedure TJanuaFileCache.SetSelectedFile(const Value: string);
begin
  FSelectedFile := Value;
end;

procedure TJanuaFileCache.SetTextFiles(const Value: TDictionary<String, String>);
begin
  self.FTextFiles := Value;
end;

{ TJanuaJsonDacDataset }

procedure TJanuaJsonDacDataset.AfterPost(aDataset: TDataset);
begin
  if not self.FPostDataset.Locate(self.FKeyFields.Text, aDataset.FieldByName(self.FKeyFields.Text).Value, [])
  then
    FPostDataset.Append;
  Janua.Core.Functions.CopyRecord(aDataset, FPostDataset);
end;

function TJanuaJsonDacDataset.AsJson: string;
var
  aObject: TJsonObject;
begin
  aObject := asJsonObject;
  try
{$IFDEF delphixe}Result := aObject.ToJSON; {$ENDIF}
{$IFDEF fpc}Result := aObject.AsJson; {$ENDIF}
  finally
    aObject.Free;
  end;

end;

function TJanuaJsonDacDataset.asJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  if Assigned(FMemDataset) then
  begin
    Janua.Core.JSON.JSonPair(Result, 'count', FMemDataset.RecordCount);
    Janua.Core.JSON.JSonPair(Result, 'name', Name);
    Janua.Core.JSON.JSonPair(Result, 'datasetname', FMemDataset.Name);
{$IFDEF delphixe}
    if (self.IsVirtualTable) and (self.FMemDataset is TFdMemTable) then
      ExportDatasetToBase64String(FMemDataset as TFdMemTable, FEncodedDataset)
    else
      Janua.Core.Functions.ExportDatasetToBase64String(self.FMemDataset, FEncodedDataset);
{$ENDIF}
{$IFDEF fpc}
    if (self.IsVirtualTable) and (self.FMemDataset is TVirtualTable) then
      ExportDatasetToBase64String(FMemDataset as TVirtualTable, FEncodedDataset)
    else
      Janua.Core.Functions.ExportDatasetToBase64String(self.FMemDataset, FEncodedDataset);
{$ENDIF}
    Janua.Core.JSON.JSonPair(Result, 'dataset', FEncodedDataset);
  end
  else
  begin
    raise Exception.Create('TJanuaJsonDacDataset.AsJsonObject Error FMemDataset not Set');
  end;
end;

procedure TJanuaJsonDacDataset.Close;
begin
  if Assigned(FMemDataset) then
    FMemDataset.Close;
end;

constructor TJanuaJsonDacDataset.Create(AOwner: TComponent);
begin
  inherited;
  DestroyInternalDataset;
  FDecodedDataset := TStringList.Create;
  FJsonObject := TJsonObject.Create;
  FKeyFields := TStringList.Create;
  // self.FParams := TJanuaParams.Create;
end;

procedure TJanuaJsonDacDataset.CreateInternalDataset;
begin
{$IFDEF delphixe}
  FPostDataset := TFdMemTable.Create(nil);
  FDelDataset := TFdMemTable.Create(nil);
{$ENDIF}
{$IFDEF fpc}
  FPostDataset := TVirtualTable.Create(nil);
  FDelDataset := TVirtualTable.Create(nil);
{$ENDIF}
  FPostDataset.AfterPost := self.AfterPost;
end;

destructor TJanuaJsonDacDataset.Destroy;
begin
  try
    if Assigned(FDecodedDataset) then
      FDecodedDataset.Free;
    if Assigned(FJsonObject) then
      FJsonObject.Free;
    if Assigned(FKeyFields) then
      FKeyFields.Free;

    DestroyInternalDataset;
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

procedure TJanuaJsonDacDataset.DestroyInternalDataset;
begin
  if Assigned(FPostDataset) then
    FPostDataset.Free;
  if Assigned(FDelDataset) then
    FDelDataset.Free;

end;

function TJanuaJsonDacDataset.FieldByName(const FieldName: string): TField;
begin
  if Assigned(MemDataset) then
    Result := MemDataset.FieldByName(FieldName)
  else
    raise Exception.Create('TJanuaJsonDacDataset.FieldByName Dataset not set ');
end;

function TJanuaJsonDacDataset.getRecordCount: Integer;
begin
  if Assigned(FMemDataset) then
    Result := FMemDataset.RecordCount
  else
    Result := -1;

end;

procedure TJanuaJsonDacDataset.LoadFromFile(const FileName: string);
var
  aStrings: TStrings;
begin
  aStrings := TStringList.Create;
  try
    aStrings.Text := self.AsJson;
    aStrings.LoadFromFile(FileName);
  finally
    aStrings.Free;
  end;
end;

procedure TJanuaJsonDacDataset.LoadFromJson(aJson: string);
(*
  var
  vParsed: integer;
*)
begin
  FJsonObject := Janua.Core.JSON.JsonParse(aJson);

  // vParsed := FJsonObject.Parse(BytesOf(AJson), 0);
  // if vParsed <= 0 then
  // raise exception.Create('Janua Core Functions Error in Json Parse, not a json text');

  LoadFromJsonObject(FJsonObject);
end;

procedure TJanuaJsonDacDataset.CreateVirtualTable;
begin
  if not Assigned(FMemDataset) {$IFDEF delphixe} or not(FMemDataset is TFdMemTable){$ENDIF} then
  begin
    FMemDataset := nil;
    self.FVirtualTable := {$IFDEF delphixe}TFdMemTable{$ELSE}TVirtualTable{$ENDIF}.Create(self);
    self.FVirtualTable.Name := self.Name;
    self.FMemDataset := self.FVirtualTable;
    self.FIsVirtualTable := true;
    self.WriteLog('TJanuaJsonDacDataset.CreateVirtualTable Create Virtual Table: ' + FMemDataset.Name);
  end;
end;

procedure TJanuaJsonDacDataset.AssignDataset(aDataset: TDataset);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaJsonDacDataset.AssignDataset aDataset');
  CreateVirtualTable;
  if Assigned(aDataset) and Assigned(FMemDataset) then
  begin
    self.IsVirtualTable := true;
    FVirtualTable.Close;
{$IFDEF delphixe}
    FVirtualTable.CopyDataSet(aDataset, [coStructure, coRestart, coAppend]); // ();
{$ELSE}
{$ENDIF}
    // Janua.Core.Functions.CloneDataset(aDataset, self.FVirtualTable);
    FVirtualTable.Open;
  end;
end;

procedure TJanuaJsonDacDataset.AssignDatasource;
begin
  if Assigned(self.FMemDataset) and Assigned(FDataSource) then
    self.FDataSource.Dataset := self.FMemDataset;
end;

procedure TJanuaJsonDacDataset.LoadFromJsonObject(aObject: TJsonObject);
var
  stream: TBytesStream;
  // stream: TBytesStream;
begin
  Assert(Assigned(aObject), 'JanuaJsonDacDataset.LoadFromJsonObject Error object is not set');

  Janua.Core.JSON.JsonValue(aObject, 'dataset', self.FEncodedDataset);

  if not Assigned(self.FMemDataset) then
    self.CreateVirtualTable;

{$IFDEF delphixe}
  if (FEncodedDataset > '') and (self.IsVirtualTable) and (FMemDataset is TFdMemTable) then
  begin
{$IFNDEF NEXTGEN}
    stream := TBytesStream.Create(DecodeBase64(StringToAnsiString(FEncodedDataset)));
{$ELSE NEXTGEN}
    stream := TBytesStream.Create(DecodeBase64((FEncodedDataset)));
{$ENDIF NEXTGEN}
    try
      (FMemDataset as TFdMemTable).LoadFromStream(stream);
    finally
      stream.Free;
    end;

  end;
{$ENDIF}
{$IFDEF fpc}
  if (self.IsVirtualTable) and (FMemDataset is TVirtualTable) then
  begin

  end
  else
  begin
    // self.FMemDataset.Text := Janua.Core.Functions.Decode64(self.FEncodedDataset);
    if Assigned(self.FMemDataset) and (self.FMemDataset is TVirtualTable) and (self.FDecodedDataset.count > 0)
    then
    begin
      Janua.Core.Functions.ImportDatasetFromXMLMemo((self.FMemDataset as TVirtualTable),
        self.FDecodedDataset);
    end;
  end;
{$ENDIF fpc}
  if not self.FMemDataset.Active then
    self.FMemDataset.Open;
end;

procedure TJanuaJsonDacDataset.Open;
begin
  if Assigned(FMemDataset) and not self.FMemDataset.Active then
    self.FMemDataset.Open;
end;

procedure TJanuaJsonDacDataset.SaveToFile(const FileName: string);
var
  aStrings: TStrings;
begin
  aStrings := TStringList.Create;
  try
    aStrings.Text := self.AsJson;
    aStrings.LoadFromFile(FileName);
  finally
    aStrings.Free;
  end;

end;

procedure TJanuaJsonDacDataset.SetDataSource(const Value: TDataSource);
begin
  FDataSource := Value;
  AssignDatasource;
end;

procedure TJanuaJsonDacDataset.SetDecodedDataset(const Value: TStrings);
begin
  FDecodedDataset := Value;
end;

procedure TJanuaJsonDacDataset.SetEncodedDataset(const Value: string);
begin
  FEncodedDataset := Value;
end;

procedure TJanuaJsonDacDataset.SetisReadOny(const Value: Boolean);
begin
  FisReadOny := Value;
end;

procedure TJanuaJsonDacDataset.SetIsVirtualTable(const Value: Boolean);
begin
  if FIsVirtualTable and not Value then
  begin
    if Assigned(self.FMemDataset) then
      FreeAndNil(FMemDataset)
  end
  else if Value and not FIsVirtualTable then
    CreateVirtualTable;

  self.FIsVirtualTable := Value;
end;

procedure TJanuaJsonDacDataset.SetJsonObject(const Value: TJsonObject);
begin
  FJsonObject := Value;
end;

procedure TJanuaJsonDacDataset.SetKeyFields(const Value: TStrings);
begin
  FKeyFields := Value;
end;

procedure TJanuaJsonDacDataset.seTFdMemTable(const Value: TDataset);
begin
  FMemDataset := Value;
  AssignDatasource;
end;

{ TJanuaDatasetClient }

procedure TJanuaDatasetClient.SetDataset(const Value: TJanuaJsonDacDataset);
begin
  FDataset := Value;
end;

{ TJanuaDatasetProvider }

procedure TJanuaDatasetProvider.SetDataset(const Value: TJanuaJsonDacDataset);
begin
  FDataset := Value;
end;

{ TJanuaJsonParser }

constructor TJanuaJsonParser.Create;
begin
  inherited;
  FIndex := TCollections.CreateDictionary<string, TJsonValue>;
end;

constructor TJanuaJsonParser.Create(aObject: TJsonObject);
begin
  Create;
  Guard.CheckNotNull(aObject, 'TJanuaJsonParser.Create aObject is nil');
  try
    SetasJsonObject(aObject);
  finally
    aObject.Free
  end;

end;

destructor TJanuaJsonParser.Destroy;
begin
  try
    if Assigned(FasJsonObject) then
      FreeAndNil(FasJsonObject);
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

function TJanuaJsonParser.FindKey(const aKey: string): TJsonValue;
begin
  if not FIndex.TryGetValue(aKey, Result) then
    Result := nil;
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: Int64);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := TJSONNumber(FIndex.Items[aParam.ToLower]).Value.ToInt64()
  else
    aValue := 0;
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: Integer);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := TJSONNumber(FIndex.Items[aParam.ToLower]).Value.ToInteger()
  else
    aValue := 0;
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: string);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := FIndex.Items[aParam.ToLower].Value
  else
    aValue := '';

  // S := aObject.Get(aParam).JsonValue as TJSONString;
  // aValue := S.Value
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: TDateTime);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := JsonDecodeDate(FIndex.Items[aParam.ToLower].Value)
  else
    aValue := 0.0;
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: Extended);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := TJSONNumber(FIndex.Items[aParam.ToLower]).Value.ToExtended
  else
    aValue := 0.0;
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: TJsonArray);
begin

end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: TJsonObject);
begin

end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: Double);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := (FIndex.Items[aParam.ToLower]).Value.ToDouble
  else
    aValue := 0.0;
end;

procedure TJanuaJsonParser.JsonValue(aParam: string; var aValue: Boolean);
begin
  if (FIndex.count > 0) and FIndex.ContainsKey(aParam.ToLower) then
    aValue := FIndex.Items[aParam.ToLower].Value.ToBoolean
  else
    aValue := false;
end;

function TJanuaJsonParser.GetAsJsonString: string;
begin
  Result := self.FasJsonObject.ToJSON
end;

function TJanuaJsonParser.GetasJsonObject: TJsonObject;
begin
  Result := FasJsonObject
end;

procedure TJanuaJsonParser.ParseJson(const aJson: string);
begin
  FasJsonObject := Janua.Core.JSON.JsonParse(aJson)
end;

procedure TJanuaJsonParser.SetasJsonObject(const Value: TJsonObject);
var
  i: Integer;
{$IFDEF delphixe}
  aPair: TJsonPair;
  tmp: string;
begin
  FasJsonObject := Value;
  if Assigned(FasJsonObject) then
  begin
    FIndex.Clear;
    for i := 0 to FasJsonObject.count - 1 do
    begin
      aPair := FasJsonObject.Pairs[i];
      tmp := aPair.JsonString.Value.ToLower;
      FIndex.Add(tmp, aPair.JsonValue);
    end;
  end;
end;
{$ELSE}
{$IFDEF fpc}

begin
  if Assigned(FasJsonObject) then
  begin
    self.FIndex.Clear;
    for i := 0 to FasJsonObject.count - 1 do
    begin
      {
        aPair := FasJsonObject.Pairs[i];
        tmp := aPair.JsonString.Value.ToLower;
        self.FIndex.Add(tmp, aPair.JsonValue);
      }
    end;
  end;
end;
{$ENDIF}
{$ENDIF}
{ TOfTypeEnumerator<T, TFilter> }

constructor TOfTypeEnumerator<T, TFilter>.Create(Owner: TList<T>);
begin

end;

function TOfTypeEnumerator<T, TFilter>.GetCurrent: TFilter;
begin

end;

function TOfTypeEnumerator<T, TFilter>.MoveNext: Boolean;
begin

end;

procedure TOfTypeEnumerator<T, TFilter>.Reset;
begin

end;

{ TOfInterfaceEnumerator<T, IFilter> }

constructor TOfInterfaceEnumerator<T, IFilter>.Create(Owner: IList<T>);
begin

end;

function TOfInterfaceEnumerator<T, IFilter>.GetCurrent: IFilter;
begin

end;

function TOfInterfaceEnumerator<T, IFilter>.MoveNext: Boolean;
begin

end;

procedure TOfInterfaceEnumerator<T, IFilter>.Reset;
begin

end;

{ TOfTypeEnumeratorFactory<T, TFilter> }

constructor TOfTypeEnumeratorFactory<T, TFilter>.Create(Owner: TList<T>);
begin

end;

function TOfTypeEnumeratorFactory<T, TFilter>.GetEnumerator: IEnumerator<TFilter>;
begin

end;

{ TTestList<T> }

function TTestList<T>.OfType<TFilter>: IEnumerable<TFilter>;
begin

end;

{ TJanuaInterfacedObject }

constructor TJanuaInterfacedObject.Create;
begin
  inherited;
  FLogProc := TJanuaApplication.LogProc;
  InternalCreate;
end;

procedure TJanuaInterfacedObject.ClearLocalLog(const aProcedureName: string);
begin
  TJanuaLogger.ClearLocalLog(self, aProcedureName);
end;

procedure TJanuaInterfacedObject.ClearLocalLog;
begin
  ClearLocalLog('');
end;

constructor TJanuaInterfacedObject.Create(aValues: TValueArray);
begin
  // if this creator is called by a descendant but with no parameters it will return to standard Create Pro.
  if Length(aValues) = 0 then
    Create
  else
    InternalCreate
end;

destructor TJanuaInterfacedObject.Destroy;
begin
  { self.CallObservers;
    self.DetachObservers; }
  inherited;
end;

{ procedure TJanuaInterfacedObject.Detach(const aObserver: TObject);
  var
  LObserver: IJanuaBindable;
  begin
  try
  if Supports(aObserver, IJanuaBindable, LObserver) and FObserversList.ContainsKey(LObserver) then
  FObserversList.Remove(LObserver);
  except
  on E: Exception do
  RaiseException('Detach', E, self)
  end;
  end;

  procedure TJanuaInterfacedObject.DetachObservers;
  begin
  if Assigned(FObserversList) then
  try
  FObserversList.Clear;
  except
  on E: Exception do
  RaiseException('DetachObservers', E, self)
  end;
  end; }

function TJanuaInterfacedObject.GetActive: Boolean;
begin
  Result := FInitialized
end;

function TJanuaInterfacedObject.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc;
end;

function TJanuaInterfacedObject.GetLogString: string;
begin
  try
    { TODO : Use TLogger to Store and delete Logs from Objects }
    Result := TJanuaLogger.LogString(self);
  except
    on E: Exception do
      RaiseException('GetLogString', E, self, ' Reading Log: ');
  end;
end;

function TJanuaInterfacedObject.GetSelf: TObject;
begin
  Result := self as TObject
end;

{ function TJanuaInterfacedObject.GetObserverList: IDictionary<IJanuaBindable, TProc>;
  begin
  if not Assigned(FObserversList) then
  FObserversList := TCollections.CreateDictionary<IJanuaBindable, TProc>;
  Result := FObserversList;
  end;
}
function TJanuaInterfacedObject.Activate: Boolean;
begin
  // initialize ad differenza di Activate puo essere eseguita più volte
  Result := false;
  try
{$IFNDEF JANUATEST } MonitorEnter(self); {$ENDIF}
    try
      Result := FInitialized;
      if not Result then
      begin
        Result := InternalActivate;
        FInitialized := Result;
      end;
    finally
{$IFNDEF JANUATEST } MonitorExit(self); {$ENDIF}
    end;
  except
    on E: Exception do
      Raise Exception.Create(ClassName + '.Activate ' + E.Message);
  end;
end;

procedure TJanuaInterfacedObject.InternalCreate;
begin
  FInitialized := false;
  FActivateThreaded := false;
end;

procedure TJanuaInterfacedObject.InternalActivateThreaded;
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := Activate;
    end,
    procedure(const aResult: Boolean)
    begin
      if aResult then
        FActivateThreaded := false;
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

procedure TJanuaInterfacedObject.SetActive(const Value: Boolean);
begin
  MonitorEnter(self);
  try
    if Value <> FInitialized then
    begin
      if Value then
        if FActivateThreaded then
          InternalActivateThreaded
        else
          Activate
      else
        FInitialized := false;
    end;
  finally
    MonitorExit(self);
  end;
end;

procedure TJanuaInterfacedObject.WriteError(const aProcedureName, aLog: string; E: Exception);
begin
  TJanuaLogger.LogError(aProcedureName, aLog, self, E);
end;

procedure TJanuaInterfacedObject.WriteLocalError(const aProcedureName, aLog: string; E: Exception);
begin
  TJanuaLogger.LogError(aProcedureName, aLog, self, E);
end;

procedure TJanuaInterfacedObject.WriteLocalLog(const aProcedureName, aLog: string);
begin
  WriteLog(aProcedureName, aLog);
end;

procedure TJanuaInterfacedObject.WriteLog(const aProcedureName, aLog: string);
begin
  TJanuaLogger.LogMessage(aProcedureName, aLog, self)
end;

procedure TJanuaJsonParser.SetAsJsonString(const Value: string);
begin
  self.ParseJson(Value)
end;

{ TJanuaLoginRecord }

procedure TJanuaLoginRecord.Clear;
begin
  self.Session.Clear;
  self.UserProfile.Clear;
end;

function TJanuaLoginRecord.GetIsLoggedIn: Boolean;
begin
  Result := self.Session.Session_id > 0
end;

function TJanuaLoginRecord.GetIsPublicSession: Boolean;
begin
  Result := self.Session.isPublic
end;

function TJanuaLoginRecord.GetJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JSonPair(Result, 'isloggedin', self.IsLoggedIn);
  Janua.Core.JSON.JSonPair(Result, 'session', self.Session.asJsonObject);
  Janua.Core.JSON.JSonPair(Result, 'userprofile', self.UserProfile.asJsonObject);
end;

procedure TJanuaLoginRecord.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
  if Assigned(aJsonObject) then
  begin
    Session.asJsonObject := Janua.Core.JSON.JsonObject('session', aJsonObject);
    UserProfile.asJsonObject := Janua.Core.JSON.JsonObject('userprofile', aJsonObject);
    // Janua.Core.Json.JsonValue(aJsonObject, 'isloggedin', self.IsLoggedIn);
  end;
end;

procedure TJanuaLoginRecord.SetIsLoggedIn(const Value: Boolean);
begin
  self.Session.Session_id := 0;
end;

{ TJanuaCoreComponentSettings }

{ procedure TJanuaCoreComponentSettings.SetTestMode(const Value: Boolean);
  begin
  FTestMode := Value;
  TJanuaCoreComponent.SetGlobalTestmode(Value);
  end;
}
{ TJanuaCustomRESTModel }

procedure TJanuaCustomRESTModel.SetJanuaRESTClient(const Value: TJanuaCustomRESTClient);
begin
  FJanuaRESTClient := Value;
end;

{ TJanuaImageRSSTag }

constructor TJanuaImageRSSTag.Create(aFeedType: TJanuaRSSFeedType);
begin
  self.SetDefault;
end;

procedure TJanuaImageRSSTag.SetDefault;
begin
  // this sets the tags at their defaults according to the RSS 2.1 Specifications
  {
    <image>
    <link>http://dallas.example.com</link>
    <title>Dallas Times-Herald</title>
    <url>http://dallas.example.com/masthead.gif</url>
    <description>Read the Dallas Times-Herald</description>
    <height>32</height>
    <width>96</width>
    </image>
  }
  Image := 'image';
  Description := 'description';
  Url := 'url';
  Title := 'title';
  Link := 'link';
  Width := 'width';
  Heigth := 'width';
end;

{ TJanuaItemRSSTag }

constructor TJanuaItemRSSTag.Create(aFeedType: TJanuaRSSFeedType);
begin
  self.SetDefault;
end;

procedure TJanuaItemRSSTag.SetDefault;
begin
  {
    <item>
    <title>Seventh Heaven! Ryan Hurls Another No Hitter</title>
    <link>http://dallas.example.com/1991/05/02/nolan.htm</link>
    <description>Texas Rangers pitcher Nolan Ryan hurled the seventh no-hitter of his legendary career ...</description>
    <author>jbb@dallas.example.com</author>
    <category>rec.arts.movies.reviews</category>
    <comments>http://dallas.example.com/feedback/1983/06/joebob.htm</comments>
    <description>I'm headed for France. I wasn't gonna go this year, but then last week &lt;a
    href="http://www.imdb.com/title/tt0086525/"&gt;Valley Girl&lt;/a&gt; came out and I said to myself,
    Joe Bob, you gotta get out of the country for a while.</description>
    <description><![CDATA[I'm headed for France. I wasn't gonna go this year, but then last week
    <a href="http://www.imdb.com/title/tt0086525/">Valley Girl</a> came out and I said to myself, Joe Bob,
    you gotta get out of the country for a while.]]></description>
    <enclosure length="24986239" type="audio/mpeg" url="http://dallas.example.com/joebob_050689.mp3" />
    </item>

    title	The title of the item.	Venice Film Festival Tries to Quit Sinking
    link	The URL of the item.	http://nytimes.com/2004/12/07FEST.html
    description	The item synopsis.	<description>Some of the most heated chatter at the Venice ...</description>
    author	Email address of the author of the item. More.
    category	Includes the item in one or more categories. More.
    comments	URL of a page for comments relating to the item. More.
    enclosure	Describes a media object that is attached to the item. More.
    guid	A string that uniquely identifies the item. More.
    pubDate	Indicates when the item was published. More.
    source	The RSS channel that the item came from. More.
  }

  Item := 'item';
  Title := 'title';
  Link := 'link';
  Author := 'author';
  Description := 'description';
  category := 'category';
  comments := 'comments';
  enclosure := 'item';
  guid := 'guid';
  pubDate := 'pubDate';
  Source := 'source';
end;

{ TJanuaBindableObject }

procedure TJanuaBindableObject.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;


constructor TJanuaBindableObject.Create(aValues: TValueArray);
begin
  if Length(aValues) = 0 then
    Create;
end;

constructor TJanuaBindableObject.Create;
begin
  FBindManager := TJanuaBindManager.Create(self);
  inherited;
  FLogProc := TJanuaApplication.LogProc;
end;

destructor TJanuaBindableObject.Destroy;
begin
  try
    try
      if Assigned(FBindManager) then
      begin
        FBindManager.ClearBindings;
        FBindManager := nil;
      end;
    except
      on E: Exception do
        RaiseException('Destroy', E, self);
    end;
  finally
    inherited;
  end;
end;

procedure TJanuaBindableObject.Detach(const aObserved: TObject);
begin

end;

function TJanuaBindableObject.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc
end;

function TJanuaBindableObject.GetSelf: TObject;
begin
  Result := self
end;

procedure TJanuaBindableObject.LogError(const aProcName, aError: string);
begin
  if Assigned(FLogProc) then
    FLogProc(aProcName, aError, self)
  else
    TJanuaLogger.LogError(aProcName, aError, self)
end;


procedure TJanuaBindableObject.SetLogProc(const Value: TMessageLogProc);
begin
  FLogProc := Value;
end;

{ TJanuaInterfacedBindableObject }

procedure TJanuaInterfacedBindableObject.Bind(const AProperty: string; const ABindToObject: TObject;
const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
{$IFDEF DEBUG} Guard.CheckNotNull(ABindToObject, 'ABindToObject'); {$ENDIF}
    if Assigned(FBindManager) then
      FBindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      RaiseException('Bind', E, self);
  end;
end;

procedure TJanuaInterfacedBindableObject.ClearBindings;
begin
  if Assigned(FBindManager) then
    FBindManager.ClearBindings;
end;

constructor TJanuaInterfacedBindableObject.Create;
begin
  inherited Create;
  FBindManager := TJanuaBindManager.Create(self);
end;

destructor TJanuaInterfacedBindableObject.Destroy;
begin
  try
    ClearBindings;
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

function TJanuaInterfacedObject.GetAfterActivate: TProc;
begin
  Result := FAfterActivate
end;

function TJanuaInterfacedBindableObject.GetBindManager: IJanuaBindManager;
begin
{$IFDEF DEBUG} Guard.CheckNotNull(FBindManager, ClassName + '.FBindManager'); {$ENDIF}
  Result := FBindManager
end;

function TJanuaInterfacedBindableObject.InternalActivate: Boolean;
begin
  Result := inherited
end;

procedure TJanuaInterfacedBindableObject.Notify(const Value: string);
begin
  if Assigned(FBindManager) then
    FBindManager.Notify(Value);
end;

procedure TJanuaInterfacedObject.SetAfterActivate(const Value: TProc);
begin
  FAfterActivate := Value
end;

procedure TJanuaInterfacedObject.SetLogProc(const Value: TMessageLogProc);
begin
  FLogProc := Value;
end;

{ TJanuaBindableItem }

procedure TJanuaBindableItem.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJanuaBindableItem.Bind(const AProperty: string; const ABindToObject: TObject;
const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  try
    BindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
  except
    on E: Exception do
      RaiseException('Bind', E, self);
  end;

end;

procedure TJanuaBindableItem.ClearBindings;
begin
  FBindManager.ClearBindings;
end;

constructor TJanuaBindableItem.Create;
begin
  inherited;
  FBindManager := TJanuaBindManager.Create(self);
end;

destructor TJanuaBindableItem.Destroy;
begin
  try
    FBindManager.ClearBindings;
    FBindManager := nil;
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

procedure TJanuaBindableItem.Detach(const aObserved: TObject);
begin

end;

function TJanuaBindableItem.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaBindManager.Create(self); }
  Result := FBindManager
end;

function TJanuaBindableItem.GetSelf: TObject;
begin
  Result := self
end;

{ TJanuaBindableComponent }

procedure TJanuaBindableComponent.AttachObserver(const aObserver: TObject; aProc: TProc);
begin

end;

procedure TJanuaBindableComponent.Bind(const AProperty: string; const ABindToObject: TObject;
const ABindToProperty: string; const AReadOnly: Boolean; const ACreateOptions: TJanuaBindCreateOptions);
begin
  if not(csDesigning in ComponentState) then
    try
      if Assigned(FBindManager) then
        FBindManager.Bind(AProperty, ABindToObject, ABindToProperty, AReadOnly, ACreateOptions);
    except
      on E: Exception do
        RaiseException('Bind', E, self);
    end;
end;

procedure TJanuaBindableComponent.CallObservers;
begin

end;

procedure TJanuaBindableComponent.ClearBindings;
begin
  try
    if not(csDesigning in ComponentState) and Assigned(FBindManager) then
      FBindManager.ClearBindings; // Added by Administrator 29/01/2023 11:58:12
  except
    on E: Exception do
      RaiseException('ClearBindings', E, self);
  end;

end;

procedure TJanuaBindableComponent.ClearLocalLog(const aProcedureName: string);
begin
  TJanuaCoreOS.PublicClearLog(self, aProcedureName);
end;

constructor TJanuaBindableComponent.Create(AOwner: TComponent);
begin
  if not(csDesigning in ComponentState) then
    FBindManager := TJanuaBindManager.Create(self);
  inherited;
end;

destructor TJanuaBindableComponent.Destroy;
begin
  try
    { if notDesigning then BindManager. } ClearBindings;
    FBindManager := nil;
  except
    on E: Exception do
      RaiseException('Destroy', E, self);
  end;
  inherited;
end;

procedure TJanuaBindableComponent.Detach(const aObserver: TObject);
begin

end;

procedure TJanuaBindableComponent.DetachObservers;
begin

end;

function TJanuaBindableComponent.GetBindManager: IJanuaBindManager;
begin
  { if not Assigned(FBindManager) then
    FBindManager := TJanuaBindManager.Create(self); }
  Result := FBindManager
end;

function TJanuaBindableComponent.GetLogProc: TMessageLogProc;
begin
  Result := FLogProc;
end;

function TJanuaBindableComponent.GetLogString: string;
begin
  Result := TJanuaLogger.LogString;
end;

function TJanuaBindableComponent.GetNameJ: TComponentName;
begin
  Result := Name
end;

function TJanuaBindableComponent.GetSelf: TObject;
begin
  Result := self as TObject;
end;

function TJanuaBindableComponent.JanuaGetComponent: TComponent;
begin
  Result := self as TComponent
end;

procedure TJanuaBindableComponent.JanuaSetComponent(const Value: TComponent);
begin
  if Value is self.ClassType then
    Assign(Value)
end;

procedure TJanuaBindableComponent.LogError(const aProcName, aError: string);
begin
  if Assigned(FLogProc) then
    FLogProc(aProcName, aError, self)
  else
    TJanuaLogger.LogError(aProcName, aError, self)
end;

function TJanuaBindableComponent.notDesigning: Boolean;
begin
  Result := not(csDesigning in ComponentState)
end;

procedure TJanuaBindableComponent.Notify(const AProperty: string);
begin
  if notDesigning and Assigned(FBindManager) then
    FBindManager.Notify(AProperty);
end;

procedure TJanuaBindableComponent.SetLogProc(const Value: TMessageLogProc);
begin

end;

procedure TJanuaBindableComponent.SetNameJ(const Value: TComponentName);
begin
  self.Name := Value
end;

procedure TJanuaBindableComponent.WriteError(const aProcedureName, aLog: string; E: Exception);
begin
  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, E.Message + sl + aLog, true)
end;

procedure TJanuaBindableComponent.WriteLocalError(const aProcedureName, aLog: string; E: Exception);
begin
  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, aLog, false)
end;

procedure TJanuaBindableComponent.WriteLocalLog(const aProcedureName, aLog: string);
begin
  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, aLog, false)
end;

procedure TJanuaBindableComponent.WriteLog(const aProcedureName, aLog: string);
begin
  TJanuaCoreOS.PublicWriteLog(self, aProcedureName, aLog, false)
end;

{ TJanuaAction }

constructor TJanuaAction.Create;
begin
  inherited;
  FCaption := '';
  FEnabled := false;
  FImageIndex := -1;
  FVisible := true;
end;

procedure TJanuaAction.Execute;
begin
  if Assigned(self.FProc) then
    FProc(self as IJanuaAction)
  else if Assigned(self.FOnExecute) then
    FOnExecute(self as IJanuaAction)

end;

procedure TJanuaAction.ExecuteAction(Sender: TObject);
begin
  self.Execute;
end;

function TJanuaAction.GetCaption: string;
begin
  Result := self.FCaption
end;

function TJanuaAction.GetDropDownList: IJanuaActionList;
begin
  Result := FDropDownList
end;

function TJanuaAction.GetOnExecute: TJanuaActionEvent;
begin
  Result := self.FOnExecute
end;

function TJanuaAction.GetProc: TProc<IJanuaAction>;
begin
  Result := FProc
end;

function TJanuaAction.GetTag: Integer;
begin
  Result := FTag
end;

function TJanuaAction.GetVisible: Boolean;
begin
  Result := FVisible
end;

function TJanuaAction.GetEnabled: Boolean;
begin
  Result := self.FEnabled
end;

function TJanuaAction.GetGUID: TGUID;
begin
  Result := self.FGUID
end;

function TJanuaAction.GetHasDropDown: Boolean;
begin
  Result := FHasDropDown
end;

function TJanuaAction.GetImageIndex: TImageIndex;
begin
  Result := FImageIndex
end;

function TJanuaAction.GetName: string;
begin
  Result := FName;
end;

procedure TJanuaAction.SetCaption(const Value: string);
begin
  if FCaption <> Value then
  begin
    FCaption := Value;
    if Assigned(FBindManager) then
      FBindManager.Notify('Caption');
  end;
end;

procedure TJanuaAction.SetDropDownList(const Value: IJanuaActionList);
begin
  FDropDownList := Value

end;

procedure TJanuaAction.SetOnExecute(const Value: TJanuaActionEvent);
begin
  self.FOnExecute := Value
end;

procedure TJanuaAction.SetProc(const Value: TProc<IJanuaAction>);
begin
  self.FProc := Value
end;

procedure TJanuaAction.SetTag(const Value: Integer);
begin
  self.FTag := Value
end;

procedure TJanuaAction.SetVisible(const Value: Boolean);
begin
  FVisible := Value;
end;

procedure TJanuaAction.UpdateName(const aName, aCaption: string; aGuid: TGUID);
begin
  FName := aName;

end;

procedure TJanuaAction.SetEnabled(const Value: Boolean);
begin
  if FEnabled <> Value then
  begin
    FEnabled := Value;
    if Assigned(FBindManager) then
      FBindManager.Notify('Enabled');
  end;
end;

procedure TJanuaAction.SetGUID(const Value: TGUID);
begin

end;

procedure TJanuaAction.SetHasDropDown(const Value: Boolean);
begin
  if Value <> FHasDropDown then
  begin
    if Value then
      FDropDownList := TJanuaActionList.Create
    else
      FDropDownList := nil;

    FHasDropDown := Value;
    if Assigned(FBindManager) then
      FBindManager.Notify('HasDropDown');
  end;
end;

procedure TJanuaAction.SetImageIndex(const Value: TImageIndex);
begin
  FImageIndex := Value;
  if Assigned(FBindManager) then
    FBindManager.Notify('ImageIndex');
end;

procedure TJanuaAction.SetName(const Value: string);
begin
  FName := Value;
end;

{ TJanuaActionList }

function TJanuaActionList.Add(const aAction: IJanuaAction; aStd: TJanuaStandardAction): IJanuaAction;
begin
  FActions.Add(aAction);
  FStdActions[aStd] := aAction;
  Result := aAction;
end;

function TJanuaActionList.Add(const aCaption: string; aEnabled: Boolean; aProc: TProc<IJanuaAction>;
aStd: TJanuaStandardAction; aImageIndex: TImageIndex; aGuid: string): IJanuaAction;
begin
  Result := Add(TJanuaAction.Create, aStd);
  Result.Caption := aCaption;
  Result.Enabled := aEnabled;
  Result.ImageIndex := aImageIndex;
  Result.ExecuteProc := aProc;
  if aGuid = '' then
    Result.guid := GUID_NULL
  else
    Result.guid := StringToGUID(aGuid);

end;

procedure TJanuaActionList.ClearActions;
begin
  FActions.Clear;
end;

constructor TJanuaActionList.Create;
begin
  inherited;
  FItemIndex := -1;
  FActions := TCollections.CreateList<IJanuaAction>;
end;

procedure TJanuaActionList.DoUpdateActions;
begin
  if Assigned(FOnUpdateAction) then
    FOnUpdateAction(self);
end;

function TJanuaActionList.FindAction(const aActionName: string): Boolean;
begin
  FItemIndex := -1;
  Result := false;
  while not Result and (FItemIndex < FActions.count) do
  begin
    Inc(FItemIndex);
    Result := FActions[FItemIndex].Name.ToLower = aActionName.ToLower;
  end;
end;

function TJanuaActionList.GetActions: IList<IJanuaAction>;
begin
  Result := FActions;
end;

function TJanuaActionList.GetItemIndex: Integer;
begin
  Result := FItemIndex;
end;

function TJanuaActionList.GetItems(Index: String): IJanuaAction;
begin
  if FindAction(Index) then
    Result := FActions[FItemIndex];

end;

function TJanuaActionList.GetOnUpdateAction: TNotifyEvent;
begin
  Result := FOnUpdateAction
end;

function TJanuaActionList.GetStdActions(Index: TJanuaStandardAction): IJanuaAction;
begin
  Result := FStdActions[Index];
end;

procedure TJanuaActionList.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaActionList.SetItems(Index: String; const Value: IJanuaAction);
begin
  Assert(FindAction(Index), 'TJanuaActionList.SetItems Action: ' + Index + 'Already Registered');
  Actions[FItemIndex] := Value;
end;

procedure TJanuaActionList.SetOnUpdateAction(Value: TNotifyEvent);
begin
  FOnUpdateAction := Value;
end;

{ TJanuaBindableConfObject }

constructor TJanuaBindableConfObject.Create;
begin
  inherited Create;
  FSettingLocation := tslCustom;
  FUserSessionVM := nil;
end;

constructor TJanuaBindableConfObject.Create(aUserSessionVM: IJanuaSystemUserSessionViewModel;
const aSettingLocation: TJanuaSettingLocation);
begin
  Create;
  if Assigned(aUserSessionVM) then
    FUserSessionVM := aUserSessionVM;
  SettingLocation := aSettingLocation;
end;

function TJanuaBindableConfObject.GetUserSessionVM: IJanuaSystemUserSessionViewModel;
begin
  if Assigned(FUserSessionVM) then
    Result := FUserSessionVM
  else
    Result := TJanuaApplication.UserSessionVM;
end;

procedure TJanuaBindableConfObject.LoadConfig;
begin
  var
  lJson := RetrieveConfig(GetAsJson);

  if (lJson = '') then
  begin
    if Assigned(FLogProc) then
      FLogProc('LoadConfig', 'Config not found ' + FKey, self);
  end
  else
    SetAsJson(lJson);

  NotifiyAllProperties;
end;

procedure TJanuaBindableConfObject.NotifyAll;
begin
  NotifiyAllProperties;
end;

constructor TJanuaBindableConfObject.Create(const aSettingLocation: TJanuaSettingLocation);
begin
  Create;
  SettingLocation := aSettingLocation;
end;

function TJanuaBindableConfObject.RetrieveConfig(const aDefault: string): string;
begin
  var
  testKey := FKey <> '';
  if not testKey and Assigned(FLogProc) then
    FLogProc('RetrieveConfig', 'Key not set', self);
  Assert(testKey, ClassName + ': Key not set');

  Result := GetUserSessionVM.ReadSchemaConf(FKey, aDefault);
end;

procedure TJanuaBindableConfObject.SaveConfig;
begin
  StoreConfig(GetAsJson);
  NotifiyAllProperties;
end;

procedure TJanuaBindableConfObject.SetKey(const Value: string);
begin
  FKey := Value;
  Notify('Key');
end;

procedure TJanuaBindableConfObject.SetSettingLocation(const Value: TJanuaSettingLocation);
begin
  FSettingLocation := Value;
  if FSettingLocation <> tslCustom then
    FKey := CSettingLocations[Value];
end;

procedure TJanuaBindableConfObject.SetUserSessionVM(const Value: IJanuaSystemUserSessionViewModel);
begin
  FUserSessionVM := Value;
end;

procedure TJanuaBindableConfObject.StoreConfig(const aConfig: string);
begin
  Assert(FKey <> '', ClassName + ': Key not set');
  CheckAll;
  GetUserSessionVM.WriteSchemaConf(FKey, aConfig);
end;

{ TJanuaCustomLogger }

procedure TJanuaCustomLogger.ClearLocalLog(const aObject: TObject; aProcedure: string);
begin

end;

procedure TJanuaCustomLogger.ClearLog;
begin

end;

constructor TJanuaCustomLogger.Create;
begin
  inherited;
  FLock := TCriticalSection.Create;
end;

destructor TJanuaCustomLogger.Destroy;
begin
  if Assigned(FLock) then
    FLock.Free;
  FLock := nil;
  inherited;
end;

procedure TJanuaCustomLogger.ExportToCSV(aFileName: string);
begin

end;

procedure TJanuaCustomLogger.FlushLog;
begin

end;

function TJanuaCustomLogger.GetDefaultProcedure: string;
begin

end;

function TJanuaCustomLogger.GetGUID: TGUID;
begin

end;

function TJanuaCustomLogger.GetLogRecords: TJanuaLogRecords;
begin

end;

procedure TJanuaCustomLogger.Initialize;
begin

end;

procedure TJanuaCustomLogger.LogError(const aProcedure, aMessage: string; aClass: TObject);
begin

end;

procedure TJanuaCustomLogger.LogError(const aProcedure, aMessage: string; aClass: TObject; E: Exception);
begin

end;

procedure TJanuaCustomLogger.LogRecord(const aProcedure, aMessage: string; aClass: TObject);
begin

end;

function TJanuaCustomLogger.LogString(const aClass: TObject): string;
begin

end;

procedure TJanuaCustomLogger.LogWarning(const aProcedure, aMessage: string; aClass: TObject);
begin

end;

procedure TJanuaCustomLogger.ResetWatch;
begin

end;

procedure TJanuaCustomLogger.SaveLogToFile(aFileName: string);
begin

end;

procedure TJanuaCustomLogger.SetDefaultProcedure(Value: string);
begin

end;

procedure TJanuaCustomLogger.SetGUID(const Value: TGUID);
begin

end;

procedure TJanuaCustomLogger.SetlogRecords(const Value: TJanuaLogRecords);
begin

end;

procedure TJanuaCustomLogger.StartLog;
begin

end;

procedure TJanuaCustomLogger.Startup;
begin

end;

procedure TJanuaCustomLogger.StartWatch;
begin

end;

procedure TJanuaCustomLogger.StopLog;
begin

end;

procedure TJanuaCustomLogger.StopWatch;
begin

end;

function TJanuaCustomLogger.TailLog: string;
begin

end;

procedure TJanuaCustomLogger.Terminate;
begin

end;

initialization

try
  TJanuaApplicationFactory.RegisterClass(IJanuaJsonParser, TJanuaJsonParser);
  TJanuaApplicationFactory.RegisterClass(IJanuaActionList, TJanuaActionList);
  TJanuaApplicationFactory.RegisterClass(IJanuaAction, TJanuaAction);
except
  on E: Exception do
    raise Exception.Create('Core.Classes.Initialization ' + E.Message);
end;

end.
