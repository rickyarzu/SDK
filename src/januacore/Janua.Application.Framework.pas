unit Janua.Application.Framework;

interface

{$I januacore.inc}

uses
  System.Classes, System.SysUtils, System.SyncObjs,
  // Posix MacOS - iOS - Linux
{$IF Defined(Posix)}
  Posix.Stdlib,
{$ENDIF Posix}
{$IFDEF MACOS} MacApi.helpers, MacApi.CoreFoundation, MacApi.ObjectiveC,
{$IFNDEF IOS} MacApi.AppKit, MacApi.CocoaTypes, MacApi.Foundation, {$ENDIF}
{$ENDIF}
{$IF Defined(IOS)}
  iOSapi.Foundation, FMX.helpers.iOS,
{$ELSEIF Defined(ANDROID)}
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Net,
  Androidapi.JNI.App,
  Androidapi.helpers,
{$ELSEIF Defined(MSWINDOWS)}
  Winapi.Windows, Winapi.ShellAPI, Winapi.ShlObj, Winapi.ActiveX,
{$ENDIF}
  // Older 'Ini' Support
  System.IniFiles,
  // JsonSupport
  System.JSON, System.Rtti,
  // DB Units
  Data.DB, // FireDAC.Comp.Client,
  // System Framework
  Janua.System.ViewModel.Intf,
  // Spring
  Spring.Collections,
  // Januaproject Core Framework
  Janua.Http.Types, Janua.Core.Types, Janua.Core.Commons, Janua.Core.AsyncTask, Janua.Application.Intf,
  Janua.Bindings.Intf,
  // Januaproject DB Framework - REST Framework
  Janua.Core.DB.Types, Janua.Core.DB.Intf, Janua.REST.Types,
  // Janua Orm Framework
  Janua.Orm.Intf, Janua.Orm.Types, Janua.Orm.Dataset.Intf, JOrm.Anagraph.Intf,
  // Januaproject Search Framework
  Janua.Lookups.Intf,
  // Janua MVVM  Framework
  Janua.Anagraph.ViewModel.Intf,
  // Januaproject Forms And Dialogs Framework
  Janua.Controls.Dialogs.Intf, Janua.Controls.Forms.Intf;

type
  // TInterfacedObjectClass = class of TInterfacedObject;
  TDataModuleClass = class of TDataModule;
  TComponentClass = class of TComponent;

  TJanuaLocalLogin = record
  private
    FStoreSession: Boolean;
    FStorePassword: Boolean;
    FPassword: string;
    FUsername: string;
    FSession: string;
    procedure SetPassword(const Value: string);
    procedure SetSession(const Value: string);
    procedure SetStoreSession(const Value: Boolean);
    procedure SetStorePassword(const Value: Boolean);
    procedure SetUsername(const Value: string);
  public
    procedure LoadSettings;
  public
    property Username: string read FUsername write SetUsername;
    property Password: string read FPassword write SetPassword;
    property StorePassword: Boolean read FStorePassword write SetStorePassword;
    property Session: string read FSession write SetSession;
    property StoreSession: Boolean read FStoreSession write SetStoreSession;
  end;

  TJanuaApplicationFactory = class
  public
    class constructor Create;
  private
    class var FLookupFactory: IJanuaLookupFactory;
    class var FLookupDatasets: IDictionary<string, IJanuaDBDataset>;
    class var FObjClasses: IDictionary<TGUID, TJanuaCoreInterfacedObjectClass>;
    class function GetObjClasses: IDictionary<TGUID, TJanuaCoreInterfacedObjectClass>; static;
    class var DMClasses: IDictionary<TGUID, TDataModuleClass>;
    class function GetDMClasses: IDictionary<TGUID, TDataModuleClass>;
    class var CmpClasses: IDictionary<TGUID, TComponentClass>;
    class function GetCmpClasses: IDictionary<TGUID, TComponentClass>;
    // Record / Recordset Classes
    class function GetLookupFactory: IJanuaLookupFactory; static;
    class function GetGIDString(const aGID: Variant): string;
  public
    class property LookupFactory: IJanuaLookupFactory read GetLookupFactory;
  public
    class procedure RegisterLookupDataset(const aGUID: TGUID; const aGID: Variant;
      const aDataset: IJanuaDBDataset);
    class function TryGetLookupDataset(const aGUID: TGUID; const aGID: Variant;
      out aDataset: IJanuaDBDataset): Boolean;
  protected
    class property ObjClasses: IDictionary<TGUID, TJanuaCoreInterfacedObjectClass> read GetObjClasses;
    class function GetInterfacedObject(const aGUID: TGUID; const aValues: TValueArray;
      out aObject: TInterfacedObject): Boolean;
  public
    // TJanuaCoreInterfacedObjectClass
    class function GetInterfacedObjectClass(const aGUID: TGUID;
      out aClass: TJanuaCoreInterfacedObjectClass): Boolean;
    class procedure RegisterClass(const aGUID: TGUID; aClass: TJanuaCoreInterfacedObjectClass);
    class function TryGetInterface(const IID: TGUID; out Intf; const aRaise: Boolean = True)
      : Boolean; overload;
    class function TryGetInterface(const IID: TGUID; const aValues: TValueArray; out Intf;
      const aRaise: Boolean = True): Boolean; overload;
  public
    class procedure RegisterDataModule(const aGUID: TGUID; aClass: TDataModuleClass);
    class function GetDataModule(const aGUID: TGUID; const aOwner: TComponent;
      out aObject: TDataModule): Boolean;
    class function TryGetDataModule(const IID: TGUID; const aOwner: TComponent; out Intf;
      const aRaise: Boolean = True): Boolean;
  public
    class procedure RegisterComponent(const aGUID: TGUID; aClass: TComponentClass);
    class function GetComponent(const aGUID: TGUID; const aOwner: TComponent;
      out aObject: TComponent): Boolean;
    class function TryGetComponent(const IID: TGUID; const aOwner: TComponent; out Intf;
      const aRaise: Boolean = True): Boolean;
  end;

  TJanuaApplicationSettings = record
  private
    FSALT: RawByteString;
    FCipherKey: RawByteString;
    procedure SetCipherKey(const Value: RawByteString);
    procedure SetSALT(const Value: RawByteString);
  public
    LocalLogin: TJanuaLocalLogin;
  public
    constructor Create(aCipherKey: RawByteString);
    procedure LoadSettings;
  public
    property SALT: RawByteString read FSALT write SetSALT;
    property CipherKey: RawByteString read FCipherKey write SetCipherKey;
  end;

  TJanuaApplication = class
  public
    class constructor Create;
    class destructor Destroy;
  private
    class var FIsTerminating: Boolean;
    class function GetIsTerminating: Boolean; static;
  public
    class procedure Setup;
    class procedure Initialize;
    class procedure Terminate;
    class property IsTerminating: Boolean read GetIsTerminating;
  private
    class var FDBEngine: TJanuaDBEngine;
    class var FSessionKey: string;
    class var FAppName: string;
    class var FErrorLog: TStrings;
    class var FStyleManager: IJanuaStyleManager;
    class var FDialogs: IJanuaDialog;
    class var FLoginDialog: IJanuaLoginDialog;
    class var FDialogText: IJanuaDialogText;
    class var FDialogInteger: IJanuaDialogInteger;
    class var FWindowsManager: IJanuaWindowsManager;
    class var FUseClassicUpdate: Boolean;
    class var FServiceName: string;
    class var FServiceDescription: string;
    class var FRESTClientConf: TRestClientConf;
    class var FRestServerConf: TRestServerConf;
  strict Private
    class var FSystemUserGroup: Integer;
    class var FMemIniFile: TMemIniFile;
    class var FSettings: TJanuaApplicationSettings;
    class var FMainAnagraphVM: IJanuaDBAnagraphViewModel;
    class var FAnagraphProfile: IAnagraph;
    class var FLogProc: TMessageLogProc;
    class procedure SetUseClassicUpdate(const Value: Boolean); static;
    class procedure SetDBEngine(const Value: TJanuaDBEngine); static;
  protected
    class function GetIniFile: TCustomIniFile; static;
    class function GetErrorLog: TStrings; static;
  public
    class property DBEngine: TJanuaDBEngine read FDBEngine write SetDBEngine;
    class property IniFile: TCustomIniFile read GetIniFile;
    class property Settings: TJanuaApplicationSettings read FSettings;
    class property ErrorLog: TStrings read GetErrorLog;
    class property UseClassicUpdate: Boolean read FUseClassicUpdate write SetUseClassicUpdate;
    class property RESTClientConf: TRestClientConf read FRESTClientConf;
    class property RestServerConf: TRestServerConf read FRestServerConf;
  public
    class procedure WriteParamBool(const aSection, aKey: string; const aParam: Boolean);
    class procedure WriteParamString(const aSection, aKey: string; const aParam: String);
    class procedure WriteParamEncryptString(const aSection, aKey: string; const aParam: String);
    class procedure WriteParamInteger(const aSection, aKey: string; const aParam: Integer);
    class procedure WriteParamDate(const aSection, aKey: string; const aParam: TDate);
    class procedure WriteParamDateTime(const aSection, aKey: string; const aParam: TDateTime);
    class procedure WriteParamStream(const aSection, aKey: string; aParam: TStream);
    class Function ReadParamBool(const aSection, aKey: string; aDefault: Boolean): Boolean;
    class Function ReadParamString(const aSection, aKey: string; aDefault: String): String;
    class Function ReadParamDecryptString(const aSection, aKey: string; aDefault: String): String;
    class Function ReadParamInteger(const aSection, aKey: string; aDefault: Integer): Integer;
    class Function ReadParamDate(const aSection, aKey: string; aDefault: TDate): TDate;
    class Function ReadParamDateTime(const aSection, aKey: string; aDefault: TDateTime): TDateTime;
    class Function ReadParamStream(const aSection, aKey: string; aParam: TStream): Integer;
    class Function GetServiceName(const aDefault: string): string;
    class Function GetServiceDescription(const aDefault: string): string;
  protected
    class function GetStyleManager: IJanuaStyleManager; static;
    class function GetWindowsManager: IJanuaWindowsManager; static;
    class function GetJanuaDialog: IJanuaDialog; static;
    class function GetJanuaDialogText: IJanuaDialogText; static;
    class function GetJanuaLoginDialog: IJanuaLoginDialog; static;
    class function GetDialogInteger: IJanuaDialogInteger; static;
    class procedure SetAppName(const Value: string); static;
    class function GetAppName: string; static;
    class function GetMainAnagraphVM: IJanuaDBAnagraphViewModel; static;
    class function GetAnagraphProfile: IAnagraph; static;
    class procedure SetSystemUserGroup(const Value: Integer); static;
    class function GetSystemUserGroup: Integer; static;
    class procedure SetSessionKey(const Value: string); static;
    class function GetSessionKey: string; static;
  public
    class property StyleManager: IJanuaStyleManager read GetStyleManager;
    class property WindowsManager: IJanuaWindowsManager read GetWindowsManager;
    class property Dialogs: IJanuaDialog read GetJanuaDialog;
    class property DialogText: IJanuaDialogText read GetJanuaDialogText;
    class property LoginDialog: IJanuaLoginDialog read GetJanuaLoginDialog;
    class property AppName: string read GetAppName write SetAppName;
    class property DialogInteger: IJanuaDialogInteger read GetDialogInteger;
    class property MainAnagraphVM: IJanuaDBAnagraphViewModel read GetMainAnagraphVM;
    class property AnagraphProfile: IAnagraph read GetAnagraphProfile;
    class property SystemUserGroup: Integer read GetSystemUserGroup write SetSystemUserGroup;
    class property SessionKey: string read GetSessionKey write SetSessionKey;
    // TMessageLogProc = TProc<string { aProcName } , string { aLogMessage } , TObject { aObject } >;
    class property LogProc: TMessageLogProc read FLogProc write FLogProc;
  private
    // Queste sono tutte le variabili Globali di Un server
    // indirizzo (se presente)
    // password
    // user name
    // schema (se presente)
    // Database Name (se presente), in oracle indica in particolare l'istanza del Database in uso.
    // porta (se non usa la porta di default in tal caso vale -1);
    // FGlobalServerConf: TJanuaServerRecordConf;
    // indica se la connessione al server è diretta o meno.
    class var FOsProfile: TJanuaOSProfile;
    class var FJanuaServerConf: TJanuaServerRecordConf;
  private
    class var FProtocol: TJanuaProtocol;
    class var FApplicationType: TJanuaApplicationType;
    class var FApplicationFramework: TJanuaApplicationFramework;
    class var FOSActive: Boolean;
    class var FAssetsUrl: string;
    class var FLoaded: Boolean;
    class var FSiteAddess: string;
    class var FVerbose: Boolean;
    class var FTestMode: Boolean;
    class var FDBSchemaID: Integer;
    class var FDBUserID: Integer;
    class var FLanguage: TJanuaLanguage;
    class var FAppVersion: string;
    class var FUnitTesting: Boolean;
    class var FIsTestVersion: Boolean;
    class var FIsLocal: Boolean;
    class var FRelease: string;
    class var FWebServer: string;
    class var FRestServer: string;
    class var FListenPort: Word;
    class var FReleaseDate: string;
    class var FSentLog: Boolean;
    class var FAppTitle: string;
    class var FLogFileRoot: string;
    class var FLogFileDir: string;
  private
    class procedure SetCustomServer(const Value: Boolean); static;
    class procedure SetDirectory(const Value: string); static;
    class procedure SetResolveToFile(const Value: Boolean); static;
    class procedure SetTitle(const Value: string); static;
    class procedure SetUseCurrentDir(const Value: Boolean); static;
    class procedure SetApplicationFramework(const Value: TJanuaApplicationFramework); static;
    class procedure SetApplicationType(const Value: TJanuaApplicationType); static;
    class procedure SetAssetsUrl(const Value: string); static;
    class procedure SetLoaded(const Value: Boolean); static;
    class procedure SetOSActive(const Value: Boolean); static;
    class procedure SetProtocol(const Value: TJanuaProtocol); static;
    class function GetProtocolAssetsUrl: string; static;
    class function GetProtocolText: string; static;
    class function GetProtocolUrl: string; static;
    class procedure SetSiteAddess(const Value: string); static;
    class procedure SetVerbose(const Value: Boolean); static;
    class procedure SetTestMode(const Value: Boolean); static;
    class procedure SetDBSchemaID(const Value: Integer); static;
    class procedure SetDBUserID(const Value: Integer); static;
    class procedure SetLanguage(const Value: TJanuaLanguage); static;
    class procedure SetAppVersion(const Value: string); static;
    class procedure SetUnitTesting(const Value: Boolean); static;
    class procedure SetIsTestVersion(const Value: Boolean); static;
    class procedure SetIsLocal(const Value: Boolean); static;
    class procedure SetRelease(const Value: string); static;
    class procedure SetRestServer(const Value: string); static;
    class procedure SetWebServer(const Value: string); static;
    class procedure SetListenPort(const Value: Word); static;
    class procedure SetReleaseDate(const Value: string); static;
    class procedure SetSentLog(const Value: Boolean); static;
    class procedure SetAppTitle(const Value: string); static;
    /// <summary> LogFileRoot if set is used as root for all logs, should appended or used as directory </summary>
    class procedure SetLogFileRoot(const Value: string); static;
    class procedure SetLogFileDir(const Value: string); static;
    class function GetLog: string; static;
  private // Sever Record Conf
    class function GetJanuaServerConf: TJanuaServerRecordConf; static;
    class procedure SetJanuaServerConf(aConf: TJanuaServerRecordConf); static;
    class function GetServerAddress: string; static;
    class procedure SetServerAddress(Value: string); static;
    class function GetServerUsername: string; static;
    class procedure SetServerUsername(Value: string); static;
    // ServerSchema
    class function GetServerSchema: string; static;
    class procedure SetServerSchema(Value: string); static;
    // ServerDatabaseName
    class function GetServerDatabaseName: string; static;
    class procedure SetServerDatabaseName(Value: string); static;
    // ServerDirect
    class function GetServerDirect: Boolean; static;
    class procedure SetServerDirect(Value: Boolean); static;
    // ServerPassword
    class function GetServerPassword: string; static;
    class procedure SetServerPassword(Value: string); static;
    // ServerPort
    class function GetServerPort: Word; static;
    class procedure SetServerPort(Value: Word); static;
  public
    class property JanuaServerConf: TJanuaServerRecordConf read GetJanuaServerConf write SetJanuaServerConf;
    class property ServerUserName: string read GetServerUsername write SetServerUsername;
    class property ServerAddress: string read GetServerAddress write SetServerAddress;
    class property ServerSchema: string read GetServerSchema write SetServerSchema;
    class property ServerDatabaseName: string read GetServerDatabaseName write SetServerDatabaseName;
    class property ServerDirect: Boolean read GetServerDirect write SetServerDirect;
    class property ServerPassword: string read GetServerPassword write SetServerPassword;
    class property ServerPort: Word read GetServerPort write SetServerPort;
  public
    class property OsProfile: TJanuaOSProfile read FOsProfile write FOsProfile;
    class property OSActive: Boolean read FOSActive write SetOSActive;
    // Variabile Globale che indica che JanuaOS è attivo e caricato.
    class property AssetsUrl: string read FAssetsUrl write SetAssetsUrl;
    class property ApplicationFramework: TJanuaApplicationFramework read FApplicationFramework
      write SetApplicationFramework;
    class property ApplicationType: TJanuaApplicationType read FApplicationType write SetApplicationType;
    class property Protocol: TJanuaProtocol read FProtocol write SetProtocol;
    class property Loaded: Boolean read FLoaded write SetLoaded;
    class property SiteAddess: string read FSiteAddess write SetSiteAddess;
    class property ProtocolUrl: string read GetProtocolUrl;
    class property ProtocolAssetsUrl: string read GetProtocolAssetsUrl;
    class property ProtocolText: string read GetProtocolText;
  public
    class procedure ReleaseObject(const aObject: TObject);
    class procedure ExecProc(aProc: TProc; const ProcName: string = ''; aClass: TObject = nil);
    class function LanguageID: Word;
    class function IsServer: Boolean;
    class function IsClient: Boolean;
    class function IsFMX: Boolean;
    class function IsVCL: Boolean;
    class function IsLinux: Boolean;
    class function IsConsole: Boolean;
    class function GetConfiguration: string;
    class procedure WriteJWT;
    class function ReadJWT: Boolean;
  private // OsProfile Function
    class function GetCustomServer: Boolean; static;
    class function GetDirectory: string; static;
    class function GetResolveToFile: Boolean; static;
    class function GetUseCurrentDir: Boolean; static;
    class function GetTitle: string; static;
    class function GetLinuxHome: string; static;
    class procedure SetLinuxHome(const aHome: string); static;
    // OsProfileCustomServer
    class function GetOsProfileCustomServer: Boolean; static;
    class procedure SetOsProfileCustomServer(const Value: Boolean); static;
    // OsProfileDirectory
    class function GetOsProfileDirectory: string; static;
    class procedure SetOsProfileDirectory(const Value: string); static;
    // OsProfileHomeDirectory
    class function GetOsProfileHomeDirectory: TJanuaOSHomeDir; static;
    class procedure SetOsProfileHomeDirectory(const Value: TJanuaOSHomeDir); static;
    // OsProfileLinuxHome
    class function GetOsProfileLinuxHome: string; static;
    class procedure SetOsProfileLinuxHome(const Value: string); static;
    // OsProfileTitle
    class function GetOsProfileTitle: string; static;
    class procedure SetOsProfileTitle(const Value: string); static;
    // OsProfileUseCurrentDir
    class function GetOsProfileUseCurrentDir: Boolean; static;
    class procedure SetOsProfileUseCurrentDir(const Value: Boolean); static;
  public
    class property OsProfileCustomServer: Boolean read GetOsProfileCustomServer
      write SetOsProfileCustomServer;
    class property OsProfileDirectory: string read GetOsProfileDirectory write SetOsProfileDirectory;
    class property OsProfilehomeDirectory: TJanuaOSHomeDir read GetOsProfileHomeDirectory
      write SetOsProfileHomeDirectory;
    class property OsProfileLinuxHome: string read GetOsProfileLinuxHome write SetOsProfileLinuxHome;
    class property OsProfileTitle: string read GetOsProfileTitle write SetOsProfileTitle;
    class property OsProfileUseCurrentDir: Boolean read GetOsProfileUseCurrentDir
      write SetOsProfileUseCurrentDir;
  public
    class function GetLocalText(const aText: string; aGUID: TGUID): string; overload;
    class function GetLocalText(const aText: string; aGUID: string): string; overload;
    class procedure AddLog(const aLog: string); overload;
    class procedure AddLog(const aProcedure, aMessage: string; aClass: TObject); overload;
    class procedure AddLog(const aProcedure, aMessage: string; aClass: TObject; e: Exception); overload;
    class property CustomServer: Boolean read GetCustomServer write SetCustomServer;
    class property Directory: string read GetDirectory write SetDirectory;
    class property ResolveToFile: Boolean read GetResolveToFile write SetResolveToFile;
    class property UseCurrentDir: Boolean read GetUseCurrentDir write SetUseCurrentDir;
    class property Title: string read GetTitle write SetTitle;
    class property AppTitle: string read FAppTitle write SetAppTitle;
    class property Release: string read FRelease write SetRelease;
    class property LinuxHome: string read GetLinuxHome write SetLinuxHome;
    class property Log: string read GetLog;
    class property LogString: string read GetLog;
    class property Verbose: Boolean read FVerbose write SetVerbose;
    class property TestMode: Boolean read FTestMode write SetTestMode;
    class property DBSchemaID: Integer read FDBSchemaID write SetDBSchemaID;
    class property DBUserID: Integer read FDBUserID write SetDBUserID;
    class property Language: TJanuaLanguage read FLanguage write SetLanguage;
    class property AppVersion: string read FAppVersion write SetAppVersion;
    class property UnitTesting: Boolean read FUnitTesting write SetUnitTesting;
    class property IsTestVersion: Boolean read FIsTestVersion write SetIsTestVersion;
    class property IsLocal: Boolean read FIsLocal write SetIsLocal;
    class property WebServer: string read FWebServer write SetWebServer;
    class property RestServer: string read FRestServer write SetRestServer;
    class property ListenPort: Word read FListenPort write SetListenPort;
    class property ReleaseDate: string read FReleaseDate write SetReleaseDate;
    class property SentLog: Boolean read FSentLog write SetSentLog;
    class property LogFileRoot: string read FLogFileRoot write SetLogFileRoot;
    class property LogFileDir: string read FLogFileDir write SetLogFileDir;
    // Bind Engine
  private
    class var FBindEngine: IJanuaBindEngine;
    class function GetBindEngine: IJanuaBindEngine; static;
  public
    class property BindEngine: IJanuaBindEngine read GetBindEngine;
    // System and Login Management
  private
    class var FUserSessionVM: IJanuaSystemUserSessionViewModel;
  protected
    class function GetUserSessionVM: IJanuaSystemUserSessionViewModel; static;
    class function GetSchemaID: Integer; static;
  public
    class property UserSessionVM: IJanuaSystemUserSessionViewModel read GetUserSessionVM;
    class property SchemaID: Integer read GetSchemaID;
  end;

  TJanuaLogger = class
  private
    class var FlogRecords: TJanuaLogRecords;
    class var FLogStarted: Boolean;
    class var FDBDatasetErrors: TJanuaDBDatasetErrors;
    class var FOutputLogger: IJanuaApplicationLogOutput;
  protected
    class function GetLogRecords: TJanuaLogRecords; static;
    class procedure SetlogRecords(const Value: TJanuaLogRecords); static;
    class function GetDefaultProcedure: string; static;
    class procedure SetDefaultProcedure(Value: string); static;
    class procedure SetDBDatasetErrors(const Value: TJanuaDBDatasetErrors); static;
  public
    class procedure Startup;
    class property Calendar: TJanuaLogRecords read GetLogRecords write SetlogRecords;
    class procedure LogRecord(const aProcedure, aMessage: string; aClass: TObject);
    class procedure LogError(const aProcedure, aMessage: string; aClass: TObject; e: Exception); overload;
    class procedure LogError(const aProcedure, aMessage: string; aClass: TObject); overload;
    class Procedure LogWarning(const aProcedure, aMessage: string; aClass: TObject);
    class procedure LogMessage(const aProcedure, aMessage: string; aClass: TObject);
    class procedure ClearLog; overload;
    class procedure ClearLocalLog(const aObject: TObject; aProcedure: string);
    class procedure StartWatch;
    class procedure StopWatch;
    class procedure ResetWatch;
    class procedure SaveLogToFile(aFileName: string);
    class procedure StartLog;
    class procedure StopLog;
    class procedure ExportToCSV(aFileName: string);
    class function LogString(const aClass: TObject = nil): string;
    class function TailLog: string;
    class procedure Initialize;
    class procedure Terminate;
    class procedure LogDatabaseError(aItem: TJanuaDBDatasetError);
    class property DBDatasetErrors: TJanuaDBDatasetErrors read FDBDatasetErrors write SetDBDatasetErrors;
    class property DefaultProcedure: string read GetDefaultProcedure write SetDefaultProcedure;
    class property OutputLogger: IJanuaApplicationLogOutput read FOutputLogger write FOutputLogger;

  end;

  { TJanuaCoreOS }
  TJanuaCoreOS = class
  private
    class var FJanuaConfiguration: TJanuaConfiguration;
    class var FLastErrorMessage: string;
    class var FPublicRaised: Boolean;
    class var FOutputText: string;
    class var FConfigDataset: IJanuaDBDataset;
    class var ErrTextFileName: TFileName;
    class var FDirectory: TFileName;

    class var FDialog: IJanuaDialog;

    // Mac OS Variables for Exec Command on MacOS
{$IF Defined(MACOS)}
{$IFNDEF IOS} class var Task: NSTask; {$ENDIF IOS}
    class var LPipeInput, LPipeOutput, LPipeError: NSPipe;
    // ConsoleError,
    // ConsoleInput,
    class var ConsoleOutput: NSData;
{$ENDIF}
  public
    class property PublicRaised: Boolean read FPublicRaised;
  public
    class constructor Create;
    class procedure PublicClearLog(const Sender: TObject; const ProcedureName: string);
    class function PublicWriteLog(Sender: TObject; ProcedureName, sMessage: string; isError: Boolean = false)
      : TJanuaLogRecord;
    class function PublicWriteError(Sender: TObject; aProcedureName, sMessage: string; e: Exception;
      doraise: Boolean = True): TJanuaLogRecord; virtual;
    class procedure ReadErrorFile;
    class function PublicActivate: Boolean; virtual;
    class procedure SetupAppConfiguration;
    class Procedure WriteFileText(aFileName: string; aMessage: string);
    // Class Functions ................................................................
    Class function GetSharedDocumentsPath: string; static;
    Class Function GetDirectory: String; static;
    Class procedure OpenUrl(URL: string);
    Class Function GetTitle: String; static;
    Class Function GetAppName: string; static;
    Class Function GetCustomServer: Boolean; static;
    Class Function GetResolveToFile: Boolean; static;
    Class Function GetUseCurrentDir: Boolean; static;
    Class Function GetActive: Boolean; static;
    Class Function GetIsLoaded: Boolean; static;
    Class Function GetLinuxHome: string; static;
    Class Function GetHomeDirectory: TJanuaOSHomeDir; static;
    Class Function GetDialog: IJanuaDialog; static;
    // .................................................................................
    Class procedure SetDirectory(const Value: String); static;
    Class procedure SetTitle(const Value: String); static;
    Class procedure SetAppName(const Value: string); static;
    Class procedure SetCustomServer(const Value: Boolean); static;
    Class procedure SetResolveToFile(const Value: Boolean); static;
    Class procedure SetLinuxHome(const Value: string); static;
    Class procedure SetHomeDirectory(const Value: TJanuaOSHomeDir); static;
    Class function LogString: string; static;
    Class Procedure Initialize;
    Class procedure Terminate;

  private
{$IFDEF MSWINDOWS}
    {
      if we are working in Windows so we will have to Select the right Folder in the system
      for windows XP there will be one kind of selector and for Vista/7 another kind of selector.
    }
    (*
      function WinVistaSelectFolder: string;
      function WinXPSelectFolder: string;
    *)
    class function GetComputerNameFromWindows: string;
{$ENDIF}
    class procedure CreateConfigDataset;
    class procedure SetConfigDataset(Value: IJanuaDBDataset); static;
    // {$IFDEF fpc} class procedure SetConfigDataset(const Value: TVirtualTable); static; {$ENDIF}
  public
    class function GetJsonConf: string; static;
    class function getOSVersion: string; static;
    class function GetUserName: String; static;
    class function getWildCard: string; static;
    class function GetOsMajor: string; static;
    class function GetOsName: string; static;
    class function GetOsPlatform: string; static;
    class function GetOsString: string; static;
    class function getDocumentsPath: string; static;
    (* class function getSeparator: string; *)
    class function GetHomePath: string; static;
    class procedure SetUseCurrentDir(const Value: Boolean); static;
    class function GetLibraryPath: string; static;
    class function GetAppDocumentsPath: string; static;
    class function GetAppDataPath: string; static;
    class function GetDocDirectory: string; static;
    class function GetErgoDocumentsPath: string; static;
    class function GetAppHomePath: string; static;
    class function GetAppLogPath: string; static;
    class function GetAppConfPath: string; static;
    class function GetErgoHomePath: string; static;
    class function GetErgoTempPath: string; static;
    class function GetCachePath: string; static;
    class function GetTempPath: string; static;
    class function GetAppTempPath: string; static;
    class function GetLocalComputerName: string; static;
    class function GetAppDownloadsPath: string; static;
    class function GetConfigFileName: string; static;
    class function getCurrentPath: string; static;
  public
    class procedure Deactivate;
    { Public declarations }
    class function GetConfiguration: string;
    class function SelectFolder(var aFolder: string; const aTitle, aButtonCaption: string): Boolean;
    class function GetDocumentDirectory: string; static;
    class function GetDownloadsDirectory: string; static;
    class function GetOsArchitecture: string; static;
    class procedure SaveConfiguration;
    class procedure LoadConfiguration;
    class function ReadParam(Key, Name: string; Default: TJanuaServerRecordConfs)
      : TJanuaServerRecordConfs; overload;
    class function WriteParam(Key, Name: string; Default: TJanuaServerRecordConfs)
      : TJanuaServerRecordConfs; overload;
    class function ReadParam(Key, Name: string; Default: TJsonObject): TJsonObject; overload;
    class function ReadParam(Key, Name: string; Default: Integer): Integer; overload;
    // class function ReadParam(Key, Name: string; Default: Word): Integer; overload;
    class function ReadParam(Key, Name: string; Default: string): string; overload;
    class function WriteParam(Key, Name: string; Default: string): string; overload;
    class function WriteParam(Key, Name: string; Default: Integer): Integer; overload;
    class function ReadParam(Key, Name: string; Default: Boolean): Boolean; overload;
    class function WriteParam(Key, Name: string; Default: Boolean): Boolean; overload;
    class function WriteParam(Key, Name: string; Default: Double): Double; overload;
    class function ReadParam(Key, Name: string; Default: Double): Double; overload;
    class function WriteDateTimeParam(Key, Name: string; Default: TDateTime): TDateTime; overload;
    class function ReadDateTimeParam(Key, Name: string; Default: TDateTime): TDateTime; overload;
    // API to local system calls
    class procedure ExternalExec(FileName, parameter: string);
    class procedure InternalExec(FileName, parameter: string); virtual;
    class procedure ExecCommand(FileName, parameter: string; aWaitEnd: Boolean = false);
    class Function GetConsoleOutput: string;
    class property ConfigDataset: IJanuaDBDataset read FConfigDataset write SetConfigDataset;
    class function ReadRegistry(Machine: Boolean; stringa: string; chiave: string; Default: string)
      : string; overload;
    class function ReadRegistry(Machine: Boolean; stringa: string; chiave: string; Default: Integer)
      : Integer; overload;
    class function ReadRegistry(Machine: Boolean; stringa: string; chiave: string; Default: Word)
      : Word; overload;

    class function WriteRegistry(Machine: Boolean; aName, aKey, aValue: string): Boolean;
    class procedure WriteBoolRegistry(Machine: Boolean; aName, aKey: string; aValue: Boolean);
    class procedure WriteRegistryCrypt(Machine: Boolean; stringa, chiave, valore: string);
    class function ReadRegistryCrypt(Machine: Boolean; aName, aKey, aDefault: string): string;
    class function RegistryNextVal(table: string): int64;
    class procedure CheckRegistry;
{$IFDEF MSWINDOWS}
    class function ReadParam(Key, Name: string; Default: AnsiString): AnsiString; overload;
    class function WriteParam(Key, Name: string; Default: AnsiString): AnsiString; overload;
{$ENDIF}
    class function ReadIntRegistry(Machine: Boolean; stringa, chiave: string; Default: Integer): Integer;
    class function ReadBoolRegistry(Machine: Boolean; stringa, chiave: string; Default: Boolean): Boolean;
  private
    class var FKey: string; // questa variabile indica la chiave di rif. di questa applicazione.
    class function GetJanuaConfiguration: TJanuaConfiguration;
  public
    class procedure GenerateJanuaConfiguration;
    class property Key: string read FKey write FKey;
    // Global Class Properties these properties can be Set only by Conf Class ...........................
    class property Title: String read GetTitle write SetTitle;
    class property SharedDocumentsPath: string read GetSharedDocumentsPath;
    class property AppName: string read GetAppName write SetAppName;
    class property CustomServer: Boolean read GetCustomServer write SetCustomServer;
    class property ResolveToFile: Boolean read GetResolveToFile write SetResolveToFile;
    class property UseCurrentDir: Boolean read GetUseCurrentDir write SetUseCurrentDir;
    class property Directory: String read GetDirectory write SetDirectory;
    class property LinuxHome: string read GetLinuxHome write SetLinuxHome;
    class property HomeDirectory: TJanuaOSHomeDir read GetHomeDirectory write SetHomeDirectory;
    { Published declarations }
    /// <summary> This is the operating system Versione according to System API </summary>
    /// <value> OS version is a string not a number </value>
    class property Version: string read getOSVersion;
    class property Username: string read GetUserName;
    class property WildCard: String read getWildCard;
    class property DocDirectory: String read GetDocDirectory;
    class property TempPath: string read GetTempPath;
    class property HomePath: string read GetHomePath;
    class property LibraryPath: string read GetLibraryPath;
    class property CachePath: string read GetCachePath;
    class property DownloadsPath: string read GetDownloadsDirectory;
    class property AppDocumentsPath: string read GetAppDocumentsPath;
    class property ConfigFileName: string read GetConfigFileName;
    class property ComputerName: string read GetLocalComputerName;
    class property AppHomePath: string read GetAppHomePath;
    class property AppDownloadsPath: string read GetAppDownloadsPath;
    class property AppTempPath: string read GetAppTempPath;
    class property AppDocDirectory: string read GetAppDocumentsPath;
    class property AppLogPath: string read GetAppLogPath;
    class property LastErrorMessage: string read FLastErrorMessage;
    class property DocumentsPath: string read getDocumentsPath;
    class property OSArchitecture: string read GetOsArchitecture;
    class property OSPlatform: string read GetOsPlatform;
    class property OSMajor: string read GetOsMajor;
    class property OSName: string read GetOsName;
    class property OsString: string read GetOsString;
    class property ErgoHomePath: string read GetErgoHomePath;
    class property CurrentPath: string read getCurrentPath;
    class property AppConfPath: string read GetAppConfPath;
    class property JsonConf: string read GetJsonConf;
    class property Dialog: IJanuaDialog read GetDialog;
  end;

  TJanuaDBFramework = class
  private
    class var FDatasetFunctions: IJanuaDatasetFunctions;
  protected
    class function GetDatasetFunctions: IJanuaDatasetFunctions; static;
  public
    class property DatasetFunctions: IJanuaDatasetFunctions read GetDatasetFunctions;
  end;

  /// <param name="aProcName">
  /// Name of the procedure(string)
  /// </param>
  /// <param name="aError">
  /// exception class e
  /// </param>
  /// <param name="aClass">
  /// usually self, class calling
  /// </param>
  /// <param name="aLog">
  /// log string if is set.
  /// </param>
  /// <example>
  /// except <br />on e: exception do <br />RaiseException(&lt;procname,&gt; e,
  /// self, self.LogString);
  /// </example>
function ErrorMessage(const aProcName: string; const aError: Exception; const aClass: TObject = nil;
  const aLog: string = ''): string; overload;
function ErrorMessage(const aProcName: string; const aError: Exception; const aLog: IStringBuilder;
  const aClass: TObject): string; overload;
procedure RaiseException(const aProcName: string; aError: Exception; const aClass: TObject = nil;
  const aLog: string = '');
procedure RaiseExceptionInternal(const aProcName: string; const aLog: IStringBuilder; const aError: Exception;
  const aClass: TObject = nil);
procedure CreateException(const aProcName, aError: string; const aClass: TObject = nil;
  const aLog: string = ''); overload;
procedure CreateException(const aProcName: string; const aLog: IStringBuilder; aError: string;
  const aClass: TObject = nil); overload;
procedure CreateException(const aProcName: string; const aLog: string; aError: string;
  const aClass: TObject = nil); overload;
procedure LogException(const aProcName: string; aError: Exception; const aClass: TObject = nil;
  const aLog: string = '');

const
  sl = sLineBreak;

var
  PublicRaised: Boolean;

function tpl(aValue: string): string;

implementation

uses
{$IFDEF  MSWINDOWS} System.Win.ComObj, System.Win.Registry, {$ENDIF}
  Spring, System.IOUtils, System.TypInfo, System.Math, System.StrUtils, System.Variants,
  // Neon Json Serializer
  Neon.Core.Persistence.JSON, Neon.Core.Utils,
  Janua.Bindings.Impl, Janua.Core.Functions;

var
  LogCriticalSection: TCriticalSection;
  ObjCriticalSection: TCriticalSection;
  LockObject: TObject;

const
  LoginKeySection = 'LOGIN';
  LoginKeyLocalUserName = 'UserName';
  LoginKeyLocalPassword = 'Password';
  LoginKeyLocalStorePassword = 'StorePassword';
  LoginKeyLocalSession = 'Session';
  LoginKeyLocalStoreSession = 'StoreSession';

  // ******** abbreviazioni ********************

function ErrorMessage(const aProcName: string; const aError: Exception; const aClass: TObject = nil;
  const aLog: string = ''): string;
var
  aList: TStringList;
  lError: String;

  function FClassName: string;
  begin
    Result := '';
    If Assigned(aClass) then
      if aClass is TJanuaCustomComponent then
        Result := TJanuaCustomComponent(aClass).ComponentInfo
      else
        Result := aClass.ClassName + '.';
  end;

begin
  if aError <> nil then
  begin
    aList := TStringList.Create;
    try
      aList.Text := aError.Message;
{$IFNDEF  JANUAUNIGUI}
      if aList.Count > 1 then
      begin
        lError := aList[aList.Count - 1]
      end
      else
      begin
        lError := aList.Text;
      end;
{$ELSE}
      lError := aList.Text;
{$ENDIF}
      TJanuaCoreOS.PublicWriteLog(aClass, aProcName, lError, True);

      Result := FClassName + aProcName + ' Error: ' + sLineBreak + lError +
        ifThen(aLog = '', '', sLineBreak + aLog);
    finally
      aList.Free;
    end;
  end;
end;

function ErrorMessage(const aProcName: string; const aError: Exception; const aLog: IStringBuilder;
  const aClass: TObject): string; // overload;
begin
  try
    Result := ErrorMessage(aProcName, aError, aClass, aLog.ToString);
  finally
    aLog.Clear;
  end;
end;

procedure RaiseException(const aProcName: string; aError: Exception; const aClass: TObject = nil;
  const aLog: string = '');
begin
  if aError <> nil then
    raise Exception.Create(ErrorMessage(aProcName, aError, aClass, ''));
end;

procedure LogException(const aProcName: string; aError: Exception; const aClass: TObject = nil;
  const aLog: string = '');
begin
  if aError <> nil then
    TJanuaApplication.ErrorLog.Add(ErrorMessage(aProcName, aError, aClass, aLog))
end;

procedure RaiseExceptionInternal(const aProcName: string; const aLog: IStringBuilder; const aError: Exception;
  const aClass: TObject = nil); // overload;
begin
  try
    if Assigned(aLog) then
      RaiseException(aProcName, aError, aClass, aLog.ToString)
    else
      RaiseException(aProcName, aError, aClass);
  finally
    aLog.Clear;
  end;
end;

procedure CreateException(const aProcName, aError: string; const aClass: TObject = nil;
  const aLog: string = '');
  function LErrorMessage: string;
  var
    FClassName: string;
  begin
    FClassName := '';
    If Assigned(aClass) then
      FClassName := aClass.ClassName + '.';

    Result := FClassName + aProcName + ' Error: ' + sLineBreak + aError + ''
    { ifThen(aLog = '', '', sLineBreak + aLog) }
  end;

begin
  raise Exception.Create(LErrorMessage); // (ErrorMessage(aProcName, aError, aClass, aLog));
end;

procedure CreateException(const aProcName: string; const aLog: string; aError: string;
  const aClass: TObject = nil); overload;
begin
  CreateException(aProcName, aError, aClass, '' { aLog } );
end;

procedure CreateException(const aProcName: string; const aLog: IStringBuilder; aError: string;
  const aClass: TObject = nil); overload;
begin
  try
    CreateException(aProcName, aError, aClass, '' { aLog.ToString } );
  finally
    aLog.Clear;
  end;
end;

function tpl(aValue: string): string;
begin
  Result := IncludeTrailingPathDelimiter(aValue);
end;

// -------------- string functions ----------------------------------------------------------------------------
{$IFNDEF NEXTGEN}
{$IFDEF POSIX}

function StringToAnsiString(const source: UnicodeString; CodePage: Integer = 0): AnsiString;
{$ELSE}

function StringToAnsiString(const source: UnicodeString; CodePage: UINT = 0): AnsiString;
{$ENDIF}
var
  strLen: Integer;
begin
  if CodePage = 0 then
    CodePage := DefaultSystemCodePage;
{$IFNDEF FPC}
  strLen := LocaleCharsFromUnicode(CodePage, 0, PWideChar(source), Length(source), nil, 0, nil, nil);
  if strLen > 0 then
  begin
    SetLength(Result, strLen);
    LocaleCharsFromUnicode(CodePage, 0, PWideChar(source), Length(source), PAnsiChar(Result), strLen,
      nil, nil);
    SetCodePage(PRawByteString(@Result)^, CodePage, false);
  end;
{$ENDIF FPC}
end;
(*
  function AnsiStringToString(const source: RawByteString): UnicodeString; overload;
  begin
  Result := UnicodeString(source);
  end;

  function AnsiStringToString(const source: AnsiString): UnicodeString; overload;
  begin
  Result := UnicodeString(source);
  end;
*)
{$ENDIF NEXTGEN}
{ TJanuaAplicationFactory }

class constructor TJanuaApplicationFactory.Create;
begin
  try
    FLookupDatasets := TCollections.CreateDictionary<string, IJanuaDBDataset>;
    FObjClasses := TCollections.CreateDictionary<TGUID, TJanuaCoreInterfacedObjectClass>;
    CmpClasses := TCollections.CreateDictionary<TGUID, TComponentClass>;
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.Create ' + e.Message);
  end;
end;

class function TJanuaApplicationFactory.GetCmpClasses: IDictionary<TGUID, TComponentClass>;
begin
  Result := CmpClasses;
end;

class function TJanuaApplicationFactory.GetComponent(const aGUID: TGUID; const aOwner: TComponent;
  out aObject: TComponent): Boolean;
var
  lClass: TComponentClass;
begin
  Result := GetCmpClasses.TryGetValue(aGUID, lClass);
  if Result then
    aObject := lClass.Create(aOwner);
end;

class function TJanuaApplicationFactory.GetDataModule(const aGUID: TGUID; const aOwner: TComponent;
  out aObject: TDataModule): Boolean;
var
  lClass: TDataModuleClass;
begin
  Result := GetDMClasses.TryGetValue(aGUID, lClass);
  if Result then
    aObject := lClass.Create(aOwner);
end;

class function TJanuaApplicationFactory.GetDMClasses: IDictionary<TGUID, TDataModuleClass>;
begin
  if not Assigned(DMClasses) then
    DMClasses := TCollections.CreateDictionary<TGUID, TDataModuleClass>;
  Result := DMClasses;
end;

class function TJanuaApplicationFactory.GetGIDString(const aGID: Variant): string;
begin
  case VarType(aGID) of
    varInteger:
      Result := Integer(aGID).ToHexString;
    varString:
      Result := '-' + String(aGID);
  end;
end;

class function TJanuaApplicationFactory.GetInterfacedObject(const aGUID: TGUID; const aValues: TValueArray;
  out aObject: TInterfacedObject): Boolean;
var
  lClass: TJanuaCoreInterfacedObjectClass;
begin
  Result := GetInterfacedObjectClass(aGUID, lClass);
  if Result then
  begin
    if Length(aValues) = 0 then
      aObject := lClass.Create
    else
      aObject := lClass.Create(aValues);
  end;
end;

class function TJanuaApplicationFactory.GetInterfacedObjectClass(const aGUID: TGUID;
  out aClass: TJanuaCoreInterfacedObjectClass): Boolean;
begin
  ObjCriticalSection.Acquire;
  try
    Result := ObjClasses.TryGetValue(aGUID, aClass);
  finally
    ObjCriticalSection.Release;
  end;
end;

class function TJanuaApplicationFactory.GetLookupFactory: IJanuaLookupFactory;
begin
  if not Assigned(FLookupFactory) then
    try
      TJanuaApplicationFactory.TryGetInterface(IJanuaLookupFactory, FLookupFactory);
    except
      on e: Exception do
        raise Exception.Create('TJanuaApplicationFactory.GetLookupFactory ' + e.Message);
    end;
  Result := FLookupFactory;
end;

class function TJanuaApplicationFactory.GetObjClasses: IDictionary<TGUID, TJanuaCoreInterfacedObjectClass>;
begin
  try
    Result := FObjClasses;
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.GetObjClasses ' + e.Message);
  end;
end;

class function TJanuaApplication.GetSchemaID: Integer;
begin
  Result := FUserSessionVM.CurrentRecord.Db_schema_id.AsInteger;
end;

class function TJanuaApplication.GetServerAddress: string;
begin
  Result := FJanuaServerConf.Address
end;

class function TJanuaApplication.GetServerDatabaseName: string;
begin
  Result := FJanuaServerConf.DatabaseName
end;

class function TJanuaApplication.GetServerDirect: Boolean;
begin
  Result := FJanuaServerConf.Direct
end;

class function TJanuaApplication.GetServerPassword: string;
begin
  Result := FJanuaServerConf.Password
end;

class function TJanuaApplication.GetServerPort: Word;
begin
  Result := FJanuaServerConf.Port
end;

class function TJanuaApplication.GetServerSchema: string;
begin
  Result := FJanuaServerConf.Schema
end;

class function TJanuaApplication.GetServerUsername: string;
begin
  Result := FJanuaServerConf.Username
end;

class function TJanuaApplication.GetServiceDescription(const aDefault: string): string;
begin
  if FServiceDescription = '' then
    FServiceDescription := TJanuaCoreOS.ReadParam('Service', 'Description', aDefault);
  Result := FServiceDescription;
end;

class function TJanuaApplication.GetServiceName(const aDefault: string): string;
begin
  if FServiceName = '' then
    FServiceName := TJanuaCoreOS.ReadParam('Service', 'Name', aDefault);
  Result := FServiceName;
end;

class function TJanuaApplication.GetSessionKey: string;
begin
  Result := TJanuaCoreOS.ReadRegistryCrypt(false, 'SessionKey', 'System', FSessionKey);
end;

class function TJanuaApplication.GetStyleManager: IJanuaStyleManager;
begin
  if not Assigned(FStyleManager) then
  begin
    if TJanuaApplicationFactory.TryGetInterface(IJanuaStyleManager, FStyleManager) then
      // GetInterfacedObject(IJanuaStyleManager, lStyleManager);
      // if Supports(lStyleManager, IJanuaStyleManager, FStyleManager) then
      Result := FStyleManager // lStyleManager as IJanuaStyleManager
    else
      raise Exception.Create('IJanuaStyleManager Intterface not Registered');
  end
  else
    Result := FStyleManager;
end;

class function TJanuaApplication.GetSystemUserGroup: Integer;
begin
  Result := FSystemUserGroup
end;

class function TJanuaApplication.GetTitle: string;
begin
  Result := FOsProfile.Title
end;

class function TJanuaApplication.GetUseCurrentDir: Boolean;
begin
  Result := FOsProfile.UseCurrentDir
end;

class function TJanuaApplication.GetUserSessionVM: IJanuaSystemUserSessionViewModel;
begin
  if not Assigned(FUserSessionVM) then
  begin
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaSystemUserSessionViewModel, FUserSessionVM) then
      raise Exception.Create('JanuaApplication IJanuaSystemUserSessionViewModel not registered ')
    else
      FUserSessionVM.Activate;
  end;
  Result := FUserSessionVM;
end;

class function TJanuaApplication.GetWindowsManager: IJanuaWindowsManager;
begin
  if not Assigned(FWindowsManager) then
  begin
    if TJanuaApplicationFactory.TryGetInterface(IJanuaWindowsManager, FWindowsManager) then
      Result := FWindowsManager // lStyleManager as IJanuaWindowsManager
    else
      raise Exception.Create('IJanuaWindowsManager Intterface not Registered');
  end
  else
    Result := FWindowsManager;
end;

class procedure TJanuaApplication.Initialize;
begin
  FUseClassicUpdate := True;
  TJanuaCoreOS.Initialize;
  if AppName <> '' then
    FSettings.LoadSettings;
end;

class procedure TJanuaApplicationFactory.RegisterClass(const aGUID: TGUID;
  aClass: TJanuaCoreInterfacedObjectClass);
begin
  try
    if Supports(aClass, aGUID) then
    begin
      if not GetObjClasses.ContainsKey(aGUID) then
        GetObjClasses.Add(aGUID, aClass)
      else
        GetObjClasses[aGUID] := aClass; // .AddOrSetValue(aGUID, aClass)
    end
    else
      raise Exception.Create('TJanuaApplicationFactory.RegisterClass ' + aClass.ClassName +
        ' does not support ' + GetInterfaceName(aGUID));
    // 202000720 Replaced Add with Add Or Set Value using a Cascade updating Rule
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaApplicationFactory.RegisterComponent(const aGUID: TGUID; aClass: TComponentClass);
begin
  if Supports(aClass, aGUID) then
    GetCmpClasses[aGUID] := aClass // .AddOrSetValue(aGUID, aClass)
  else
    raise Exception.Create('TJanuaApplicationFactory.RegisterComponent ' + aClass.ClassName +
      ' does not support interface ' + GetInterfaceName(aGUID));
  // 202000720 Replaced Add with Add Or Set Value using a Cascade updating Rule
end;

class procedure TJanuaApplicationFactory.RegisterDataModule(const aGUID: TGUID; aClass: TDataModuleClass);
begin
  try
    if Supports(aClass, aGUID) then
      GetDMClasses[aGUID] := aClass // .AddOrSetValue(aGUID, aClass)
    else
      raise Exception.Create('TJanuaApplicationFactory.RegisterDataModule ' + aClass.ClassName +
        ' does not support interface ' + GetInterfaceName(aGUID));
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaApplicationFactory.RegisterLookupDataset(const aGUID: TGUID; const aGID: Variant;
  const aDataset: IJanuaDBDataset);
var
  aKey: string;
begin
  aKey := aGUID.ToString + GetGIDString(aGID);
  FLookupDatasets[aKey] := aDataset // AddOrSetValue(aKey, aDataset);
end;

class function TJanuaApplicationFactory.TryGetComponent(const IID: TGUID; const aOwner: TComponent; out Intf;
  const aRaise: Boolean = True): Boolean;
var
  lObject: TComponent;
begin
  Result := GetComponent(IID, aOwner, lObject);
  if Result then
  begin
    Result := Supports(lObject, IID, Intf);
    if not Result and aRaise then
      raise Exception.Create('TryGetComponent ' + lObject.ClassName + ' does not support ' +
        GetInterfaceName(IID));
  end
  else if aRaise then
    raise Exception.Create('TryGetComponent Interface not found: ' + GetInterfaceName(IID));
end;

class function TJanuaApplicationFactory.TryGetDataModule(const IID: TGUID; const aOwner: TComponent; out Intf;
  const aRaise: Boolean): Boolean;
var
  lObject: TDataModule;
begin
  Result := GetDataModule(IID, aOwner, lObject);
  if Result then
  begin
    Result := Supports(lObject, IID, Intf);
    if not Result and aRaise then
      raise Exception.Create('DataModule ' + lObject.ClassName + ' does not support ' +
        GetInterfaceName(IID));
  end
  else if aRaise then
    raise Exception.Create('DataModule Interface not found: ' + GetInterfaceName(IID));
end;

class function TJanuaApplicationFactory.TryGetInterface(const IID: TGUID; out Intf;
  const aRaise: Boolean): Boolean;
var
  lObject: TInterfacedObject;
begin
  Result := GetInterfacedObject(IID, [], lObject);
  if Result then
  begin
    Result := Supports(lObject, IID, Intf);
    if not Result and aRaise then
      raise Exception.Create('Object ' + lObject.ClassName + ' does not support ' + GetInterfaceName(IID));
  end
  else if aRaise then
    raise Exception.Create('Object Interface not found: ' + GetInterfaceName(IID));
end;

class function TJanuaApplicationFactory.TryGetInterface(const IID: TGUID; const aValues: TValueArray;
  out Intf; const aRaise: Boolean): Boolean;
var
  lObject: TInterfacedObject;
begin
  Result := GetInterfacedObject(IID, aValues, lObject);
  if Result then
  begin
    Result := Supports(lObject, IID, Intf);
    if not Result and aRaise then
      raise Exception.Create('Object ' + lObject.ClassName + ' does not support ' + GetInterfaceName(IID));
  end
  else if aRaise then
    raise Exception.Create('Object Interface not found: ' + GetInterfaceName(IID));
end;

class function TJanuaApplicationFactory.TryGetLookupDataset(const aGUID: TGUID; const aGID: Variant;
  out aDataset: IJanuaDBDataset): Boolean;
var
  lString: string;
begin
  lString := aGUID.ToString + GetGIDString(aGID);
  Result := FLookupDatasets.TryGetValue(lString, aDataset);
end;

class procedure TJanuaApplication.AddLog(const aProcedure, aMessage: string; aClass: TObject);
begin
  TJanuaLogger.LogRecord(aProcedure, aMessage, aClass)
end;

class procedure TJanuaApplication.AddLog(const aProcedure, aMessage: string; aClass: TObject; e: Exception);
begin
  if Assigned(e) then
    TJanuaLogger.LogError(aProcedure, aMessage, aClass, e)
  else
    TJanuaLogger.LogRecord(aProcedure, aMessage, aClass)
end;

class constructor TJanuaApplication.Create;
begin
  try
    FDBEngine := jdbPostgres;
    FRESTClientConf := TRestClientConf.Create;
    FRestServerConf := TRestServerConf.Create;

    FLogProc := procedure(aProcedure, aMessage: string; aClass: TObject)
      begin
        TJanuaLogger.LogMessage(aProcedure, aMessage, aClass)
      end
  except
    on e: Exception do
      RaiseException('TJanuaApplication.Create', e, nil);
  end;
end;

class destructor TJanuaApplication.Destroy;
begin
  try
    FRESTClientConf.Free;
  finally
    FRESTClientConf := nil;
  end;
  // FRestServerConf
  try
    FRestServerConf.Free;
  finally
    FRestServerConf := nil;
  end;
end;

class procedure TJanuaApplication.ExecProc(aProc: TProc; const ProcName: string = ''; aClass: TObject = nil);
begin
  try
    aProc
  except
    on e: Exception do
      RaiseException(ProcName, e, aClass);
  end;
end;

class procedure TJanuaApplication.AddLog(const aLog: string);
begin
  LogCriticalSection.Acquire;
  try
    TJanuaLogger.LogRecord('', aLog, nil);
  finally
    LogCriticalSection.Release;
  end;
end;

class function TJanuaApplication.GetAnagraphProfile: IAnagraph;
begin

  Result := FAnagraphProfile
end;

class function TJanuaApplication.GetAppName: string;
begin
  Result := OsProfile.AppName
end;

class function TJanuaApplication.GetBindEngine: IJanuaBindEngine;
begin
  if not Assigned(FBindEngine) then
  begin
    FBindEngine := Janua.Bindings.Impl.TJanuaBindings.Create;
    FBindEngine.Activate;
  end;
  Result := FBindEngine;
end;

class function TJanuaApplication.GetConfiguration: string;
var
  a: IStringBuilder;
begin
  { OSActive: boolean; // Variabile Globale che indica che JanuaOS è attivo e caricato.
    AssetsUrl: string;
    ApplicationFramework: TJanuaApplicationFramework;
    ApplicationType: TJanuaApplicationType;
    Protocol: TJanuaProtocol;
    OsProfile: TJanuaOSProfile;
    Loaded: boolean;
  }

  a := TJanuaStringBuilder.Create;
  a.AppendLine('O.S. Active: ' + Self.OSActive.ToString(True));
  a.AppendLine('AssetsUrl: ' + Self.AssetsUrl);
{$IFDEF delphixe}
  a.AppendLine('ApplicationFramework: ' + System.TypInfo.GetEnumName(TypeInfo(TJanuaApplicationFramework),
    Ord(ApplicationFramework)));
  a.AppendLine('ApplicationType: ' + System.TypInfo.GetEnumName(TypeInfo(TJanuaApplicationType),
    Ord(ApplicationType)));
  a.AppendLine('Protocol: ' + System.TypInfo.GetEnumName(TypeInfo(TJanuaProtocol), Ord(Protocol)));
{$ENDIF delphixe}
  a.AppendLine('OsProfile: ');
  a.AppendLine(Self.OsProfile.GetConfiguration);
  a.AppendLine('Server Profile: ');
  a.AppendLine(GetConfiguration);
  Result := a.ToString;
end;

class function TJanuaApplication.GetCustomServer: Boolean;
begin
  Result := OsProfile.CustomServer
end;

class function TJanuaApplication.GetDialogInteger: IJanuaDialogInteger;
begin
  if not Assigned(FDialogInteger) then
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDialogInteger, FDialogInteger) then
      raise Exception.Create('JanuaApplication IJanuaDialogInteger not registered ');
  Result := FDialogInteger;
end;

class function TJanuaApplication.GetDirectory: string;
begin
  Result := OsProfile.Directory
end;

class function TJanuaApplication.GetErrorLog: TStrings;
begin
  if not Assigned(FErrorLog) then
    FErrorLog := TStringList.Create;
  Result := FErrorLog;
end;

class function TJanuaApplication.GetIniFile: TCustomIniFile;
var
  sFileName: TFileName;
begin
  if not Assigned(FMemIniFile) then
  begin
    sFileName := TPath.Combine(TJanuaCoreOS.GetHomePath, AppName + '.ini');
    FMemIniFile := TMemIniFile.Create(sFileName);
    FMemIniFile.AutoSave := True;
  end;
  Result := FMemIniFile;
end;

class function TJanuaApplication.GetIsTerminating: Boolean;
begin
  Result := FIsTerminating;
end;

class function TJanuaApplication.GetJanuaDialog: IJanuaDialog;
begin
  if not Assigned(FDialogs) then
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDialog, FDialogs) then
      raise Exception.Create('JanuaApplication IJanuaDialog not registered ');
  Result := FDialogs;
end;

class function TJanuaApplication.GetJanuaDialogText: IJanuaDialogText;
begin
  if not Assigned(FDialogText) then
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDialogText, FDialogText) then
      raise Exception.Create('JanuaApplication IJanuaLoginDialog not registered ');
  Result := FDialogText;
end;

class function TJanuaApplication.GetJanuaLoginDialog: IJanuaLoginDialog;
begin
  if not Assigned(FLoginDialog) then
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaLoginDialog, FLoginDialog) then
      raise Exception.Create('JanuaApplication IJanuaLoginDialog not registered ');
  Result := FLoginDialog;
end;

class function TJanuaApplication.GetJanuaServerConf: TJanuaServerRecordConf;
begin
  Result := FJanuaServerConf;
end;

class function TJanuaApplication.GetLinuxHome: string;
begin
  Result := FOsProfile.LinuxHome
end;

class function TJanuaApplication.GetLocalText(const aText: string; aGUID: TGUID): string;
begin
  { TODO : Implementation of localization Engine }
  Result := aText;
end;

class function TJanuaApplication.GetLocalText(const aText: string; aGUID: string): string;
begin
  Result := GetLocalText(aText, StringToGUID(aGUID));
end;

class function TJanuaApplication.GetLog: string;
begin
  Result := TJanuaLogger.LogString
end;

class function TJanuaApplication.GetMainAnagraphVM: IJanuaDBAnagraphViewModel;
begin
  if not Assigned(FMainAnagraphVM) then
  begin
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBAnagraphViewModel, FMainAnagraphVM) then
      raise Exception.Create('TJanuaApplication.GetMainAnagraphVM IJanuaDBAnagraphViewModel not set');
    FMainAnagraphVM.GroupID := 0;
    FMainAnagraphVM.AnagraphID := -1;
  end;
  Result := FMainAnagraphVM
end;

class function TJanuaApplication.GetOsProfileCustomServer: Boolean;
begin
  Result := FOsProfile.CustomServer
end;

class function TJanuaApplication.GetOsProfileDirectory: string;
begin
  Result := FOsProfile.Directory
end;

class function TJanuaApplication.GetOsProfileHomeDirectory: TJanuaOSHomeDir;
begin
  Result := FOsProfile.HomeDirectory
end;

class function TJanuaApplication.GetOsProfileLinuxHome: string;
begin
  Result := FOsProfile.LinuxHome
end;

class function TJanuaApplication.GetOsProfileTitle: string;
begin
  Result := FOsProfile.Title
end;

class function TJanuaApplication.GetOsProfileUseCurrentDir: Boolean;
begin
  Result := FOsProfile.UseCurrentDir
end;

class function TJanuaApplication.GetProtocolAssetsUrl: string;
begin
  Result := JanuaProtocolText[FProtocol] + '://' + AssetsUrl;
end;

class function TJanuaApplication.GetProtocolText: string;
begin
  Result := JanuaProtocolText[FProtocol]
end;

class function TJanuaApplication.GetProtocolUrl: string;
begin
  Result := JanuaProtocolText[FProtocol] + '://' + SiteAddess;
end;

class function TJanuaApplication.GetResolveToFile: Boolean;
begin
  Result := OsProfile.ResolveToFile
end;

class function TJanuaApplication.IsClient: Boolean;
begin
  Result := Self.FApplicationType in [jatConsoleClient, jatClientWin, jatClientTablet];
end;

class function TJanuaApplication.IsConsole: Boolean;
begin
  Result := Self.FApplicationType in [jatConsoleSrv, jatConsoleClient]
end;

class function TJanuaApplication.IsFMX: Boolean;
begin
  Result := Self.ApplicationFramework in [jafFMX, jafFMXMac, jafFMXIOS, jafFMXAndroidTablet, jafFMXIOSTablet,
    jafFMXIOSPhone, jafFMXAndroid, jafFMXAndroidTablet, jafFMXAndroidPhone]
end;

class function TJanuaApplication.IsLinux: Boolean;
begin
  Result := Self.ApplicationFramework = jafFMXLinux;
end;

class function TJanuaApplication.IsServer: Boolean;
begin
  Result := FApplicationType in [jatConsoleSrv, jatWinService, jatWebBroker, jatIntraweb, jatLinuxService]
end;

class function TJanuaApplication.IsVCL: Boolean;
begin
  Result := Self.ApplicationFramework in [jafVCLWin32, jafVCLWin64]
end;

class function TJanuaApplication.LanguageID: Word;
begin
  Result := Ord(Self.FLanguage);
end;

class function TJanuaApplication.ReadJWT: Boolean;
begin
  TJanuaApplication.RESTClientConf.JWT := TJanuaCoreOS.ReadRegistry(false, 'JWT', 'System',
    TJanuaApplication.RESTClientConf.JWT);
  Result := not TJanuaApplication.RESTClientConf.JWT.IsEmpty;
end;

class function TJanuaApplication.ReadParamBool(const aSection, aKey: string; aDefault: Boolean): Boolean;
begin
  Result := IniFile.ReadBool(aSection, aKey, aDefault);
end;

class function TJanuaApplication.ReadParamDate(const aSection, aKey: string; aDefault: TDate): TDate;
begin
  Result := IniFile.ReadDate(aSection, aKey, aDefault);
end;

class function TJanuaApplication.ReadParamDateTime(const aSection, aKey: string; aDefault: TDateTime)
  : TDateTime;
begin
  Result := IniFile.ReadDateTime(aSection, aKey, aDefault);
end;

class function TJanuaApplication.ReadParamDecryptString(const aSection, aKey: string;
  aDefault: String): String;
var
  Tmp: string;
begin
  if aDefault <> '' then
    Tmp := Janua.Core.Functions.EncryptDES3(aDefault);

  Tmp := ReadParamString(aSection, aKey, Tmp);

  if Tmp <> '' then
    Result := Janua.Core.Functions.DecryptDES3(Tmp);

end;

class function TJanuaApplication.ReadParamInteger(const aSection, aKey: string; aDefault: Integer): Integer;
begin
  Result := IniFile.ReadInteger(aSection, aKey, aDefault);
end;

class function TJanuaApplication.ReadParamStream(const aSection, aKey: string; aParam: TStream): Integer;
begin
  Result := IniFile.ReadBinaryStream(aSection, aKey, aParam);
end;

class function TJanuaApplication.ReadParamString(const aSection, aKey: string; aDefault: String): String;
begin
  Result := IniFile.ReadString(aSection, aKey, aDefault);
end;

class procedure TJanuaApplication.ReleaseObject(const aObject: TObject);
begin
  if Assigned(aObject) and (TInterfacedObject(aObject).RefCount > 1) then
    TJanuaCoreInterfacedObject(aObject).Release;
end;

class procedure TJanuaApplication.SetApplicationFramework(const Value: TJanuaApplicationFramework);
begin
  FApplicationFramework := Value;
end;

class procedure TJanuaApplication.SetApplicationType(const Value: TJanuaApplicationType);
begin
  FApplicationType := Value;
end;

class procedure TJanuaApplication.SetAppName(const Value: string);
begin
  if FOsProfile.AppName <> Value then
  begin
    FOsProfile.AppName := Value;
    if (FOsProfile.AppName <> '') then
      TJanuaCoreOS.PublicActivate;
  end;
end;

class procedure TJanuaApplication.SetAppTitle(const Value: string);
begin
  FAppTitle := Value;
end;

class procedure TJanuaApplication.SetAppVersion(const Value: string);
begin
  FAppVersion := Value;
end;

class procedure TJanuaApplication.SetAssetsUrl(const Value: string);
begin
  FAssetsUrl := Value;
end;

class procedure TJanuaApplication.SetCustomServer(const Value: Boolean);
begin
  FOsProfile.CustomServer := Value;
end;

class procedure TJanuaApplication.SetDBEngine(const Value: TJanuaDBEngine);
begin
  if FDBEngine <> Value then
  begin
    FDBEngine := Value;
    FJanuaServerConf.Create(FDBEngine);
  end;
end;

class procedure TJanuaApplication.SetDBSchemaID(const Value: Integer);
begin
  FDBSchemaID := Value;
end;

class procedure TJanuaApplication.SetDBUserID(const Value: Integer);
begin
  FDBUserID := Value;
end;

class procedure TJanuaApplication.SetDirectory(const Value: string);
begin
  FOsProfile.Directory := Value;
end;

class procedure TJanuaApplication.SetIsLocal(const Value: Boolean);
begin
  FIsLocal := Value;
end;

class procedure TJanuaApplication.SetIsTestVersion(const Value: Boolean);
begin
  FIsTestVersion := Value;
end;

class procedure TJanuaApplication.SetJanuaServerConf(aConf: TJanuaServerRecordConf);
begin
  FJanuaServerConf := aConf;
end;

class procedure TJanuaApplication.SetLanguage(const Value: TJanuaLanguage);
begin
  FLanguage := Value;
end;

class procedure TJanuaApplication.SetLinuxHome(const aHome: string);
begin

end;

class procedure TJanuaApplication.SetListenPort(const Value: Word);
begin
  FListenPort := Value;
end;

class procedure TJanuaApplication.SetLoaded(const Value: Boolean);
begin
  FLoaded := Value;
end;

class procedure TJanuaApplication.SetLogFileDir(const Value: string);
begin
  FLogFileDir := Value;
end;

class procedure TJanuaApplication.SetLogFileRoot(const Value: string);
begin
  FLogFileRoot := Value;
end;

class procedure TJanuaApplication.SetOSActive(const Value: Boolean);
begin
  FOSActive := Value;
end;

class procedure TJanuaApplication.SetOsProfileCustomServer(const Value: Boolean);
begin
  FOsProfile.CustomServer := Value
end;

class procedure TJanuaApplication.SetOsProfileDirectory(const Value: string);
begin
  FOsProfile.Directory := Value
end;

class procedure TJanuaApplication.SetOsProfileHomeDirectory(const Value: TJanuaOSHomeDir);
begin
  FOsProfile.HomeDirectory := Value
end;

class procedure TJanuaApplication.SetOsProfileLinuxHome(const Value: string);
begin
  FOsProfile.LinuxHome := Value
end;

class procedure TJanuaApplication.SetOsProfileTitle(const Value: string);
begin
  FOsProfile.Title := Value
end;

class procedure TJanuaApplication.SetOsProfileUseCurrentDir(const Value: Boolean);
begin
  FOsProfile.UseCurrentDir := Value
end;

class procedure TJanuaApplication.SetProtocol(const Value: TJanuaProtocol);
begin
  FProtocol := Value;
end;

class procedure TJanuaApplication.SetRelease(const Value: string);
begin
  FRelease := Value;
end;

class procedure TJanuaApplication.SetReleaseDate(const Value: string);
begin
  FReleaseDate := Value;
end;

class procedure TJanuaApplication.SetResolveToFile(const Value: Boolean);
begin
  FOsProfile.ResolveToFile := Value;
end;

class procedure TJanuaApplication.SetRestServer(const Value: string);
begin
  FRestServer := Value;
end;

class procedure TJanuaApplication.SetSentLog(const Value: Boolean);
begin
  FSentLog := Value;
end;

class procedure TJanuaApplication.SetServerAddress(Value: string);
begin
  if FJanuaServerConf.Address <> Value then
    FJanuaServerConf.Address := Value
end;

class procedure TJanuaApplication.SetServerDatabaseName(Value: string);
begin
  FJanuaServerConf.DatabaseName := Value
end;

class procedure TJanuaApplication.SetServerDirect(Value: Boolean);
begin
  FJanuaServerConf.Direct := Value
end;

class procedure TJanuaApplication.SetServerPassword(Value: string);
begin
  FJanuaServerConf.Password := Value
end;

class procedure TJanuaApplication.SetServerPort(Value: Word);
begin
  FJanuaServerConf.Port := Value
end;

class procedure TJanuaApplication.SetServerSchema(Value: string);
begin
  FJanuaServerConf.Schema := Value
end;

class procedure TJanuaApplication.SetServerUsername(Value: string);
begin
  FJanuaServerConf.Username := Value
end;

class procedure TJanuaApplication.SetSessionKey(const Value: string);
begin
  FSessionKey := Value;
  TJanuaCoreOS.WriteRegistryCrypt(false, 'SessionKey', 'System', FSessionKey);
end;

class procedure TJanuaApplication.SetSiteAddess(const Value: string);
begin
  FSiteAddess := Value;
end;

class procedure TJanuaApplication.SetSystemUserGroup(const Value: Integer);
begin
  FSystemUserGroup := Value;
end;

class procedure TJanuaApplication.SetTestMode(const Value: Boolean);
begin
  FTestMode := Value;
end;

class procedure TJanuaApplication.SetTitle(const Value: string);
begin
  FOsProfile.Title := Value;
end;

class procedure TJanuaApplication.SetUnitTesting(const Value: Boolean);
begin
  FUnitTesting := Value;
end;

class procedure TJanuaApplication.Setup;
begin
  TJanuaApplication.Initialize;
  FIsTerminating := false;
  try
    FOsProfile.AppName := 'Januaproject';
    FApplicationFramework := jafDefault;
{$IFDEF HAS_VCL}
{$IFDEF WIN32}
    FApplicationFramework := jafVCLWin32;
{$ELSE}   // {$IFDEF WIN64}
    FApplicationFramework := jafVCLWin64;
{$ENDIF}
{$ELSE}
    FApplicationFramework := jafFMX;
{$ENDIF HAS_VCL}
{$IFDEF android}
    FApplicationFramework := jafFMXAndroid;
{$ENDIF}
{$IFDEF LINUX}
    FApplicationFramework := jafFMXLinux;
{$ENDIF}
{$IFDEF MACOS}
{$IFDEF ios}
    FApplicationFramework := jafFMXIOS;
{$ELSE}
    FApplicationFramework := jafFMXMac;
{$ENDIF}
{$ENDIF}
    ApplicationType := TJanuaApplicationType.jatDefault;
    AssetsUrl := 'cdn.ergomercator.com';
    Protocol := TJanuaProtocol.jptNone;
    OsProfile.Initialize;
    Loaded := false;
    FDBSchemaID := 0;
    FLanguage := TJanuaLanguage.jlaItalian;
    FUnitTesting := false;
    FIsTestVersion := false;
    FSentLog := false;
    FSettings.Create('T4nt0v4l4g4t.');
  except
    on e: Exception do
      raise Exception.Create('TJanuaApplication.Create ' + e.Message);
  end;
end;

class procedure TJanuaApplication.SetUseClassicUpdate(const Value: Boolean);
begin
  FUseClassicUpdate := Value;
end;

class procedure TJanuaApplication.SetUseCurrentDir(const Value: Boolean);
begin
  FOsProfile.UseCurrentDir := Value;
end;

class procedure TJanuaApplication.SetVerbose(const Value: Boolean);
begin
  FVerbose := Value;
end;

class procedure TJanuaApplication.SetWebServer(const Value: string);
begin
  FWebServer := Value;
end;

class procedure TJanuaApplication.Terminate;
begin
  try
    if Assigned(FUserSessionVM) and (TInterfacedObject(FUserSessionVM.GetSelf).RefCount > 1) then
      TJanuaCoreInterfacedObject(FUserSessionVM.GetSelf).Release;

    if not FIsTerminating then
    begin
      FIsTerminating := True;

      if Assigned(FBindEngine) then
      begin
        FBindEngine.ClearAllBindings;
        FBindEngine := nil;
      end;

      if Assigned(FMemIniFile) then
        FMemIniFile.Free;
      FMemIniFile := nil;

      if Assigned(FErrorLog) then
        FErrorLog.Free;
      FErrorLog := nil;

      FStyleManager := nil;
      FDialogs := nil;
      FLoginDialog := nil;
      FDialogText := nil;
      FDialogInteger := nil;
      FWindowsManager := nil;
      FMainAnagraphVM := nil;
      FUserSessionVM := nil;
    end;
  except
    on e: Exception do
      raise Exception.Create('Application.Terminate ' + e.Message);
  end;
end;

class procedure TJanuaApplication.WriteJWT;
begin
  TJanuaCoreOS.WriteRegistry(false, 'JWT', 'System', TJanuaApplication.RESTClientConf.JWT);
end;

class procedure TJanuaApplication.WriteParamBool(const aSection, aKey: string; const aParam: Boolean);
begin
  IniFile.WriteBool(aSection, aKey, aParam);
  IniFile.UpdateFile;
end;

class procedure TJanuaApplication.WriteParamDate(const aSection, aKey: string; const aParam: TDate);
begin
  IniFile.WriteDate(aSection, aKey, aParam);
  IniFile.UpdateFile;
end;

class procedure TJanuaApplication.WriteParamDateTime(const aSection, aKey: string; const aParam: TDateTime);
begin

end;

class procedure TJanuaApplication.WriteParamEncryptString(const aSection, aKey, aParam: String);
begin

end;

class procedure TJanuaApplication.WriteParamInteger(const aSection, aKey: string; const aParam: Integer);
begin
  IniFile.WriteInteger(aSection, aKey, aParam);
  IniFile.UpdateFile;
end;

class procedure TJanuaApplication.WriteParamStream(const aSection, aKey: string; aParam: TStream);
begin
  IniFile.WriteBinaryStream(aSection, aKey, aParam);
  IniFile.UpdateFile;
end;

class procedure TJanuaApplication.WriteParamString(const aSection, aKey, aParam: String);
begin
  IniFile.WriteString(aSection, aKey, aParam);
  IniFile.UpdateFile;
end;

{$ENDREGION 'CoreOS'}
{ TJanuaCoreOS }

class procedure TJanuaCoreOS.GenerateJanuaConfiguration;
begin
  if not Assigned(FJanuaConfiguration) then
    FJanuaConfiguration := TJanuaConfiguration.Create(GetConfigFileName);
end;

class function TJanuaCoreOS.GetActive: Boolean;
begin
  Result := TJanuaApplication.OSActive;
end;

class function TJanuaCoreOS.GetAppConfPath: string;
begin
  /// distinguo 3 differenti casistiche
  /// 1 - Custom Server: la directory è definita a design time e può anche non coincidere con il percorso eseguibile
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato l'eseguibile o da cui è eseguito.
  /// 3 - Tutti gli altri casi (iOS/Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user
  if not GetUseCurrentDir then
  begin
    Result := tpl(GetAppHomePath) + 'conf';
  end
  else
  begin
    Result := tpl(getCurrentPath) + 'conf';
  end;
end;

class function TJanuaCoreOS.GetAppDataPath: string;
begin
  /// distinguo 3 differenti casistiche
  /// 1 - Custom Server: la directory è definita a design time e può anche non coincidere con il percorso eseguibile
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato l'eseguibile o da cui è eseguito.
  /// 3 - Tutti gli altri casi (iOS/Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user

  if GetUseCurrentDir then
    Result := tpl(getCurrentPath) + 'data'
  else if GetCustomServer then
    Result := tpl(GetAppHomePath) + 'data'
  else
    Result := tpl(GetErgoDocumentsPath) + GetAppName.ToLower;
end;

class function TJanuaCoreOS.GetAppDocumentsPath: string;
begin
  /// distinguo 3 differenti casistiche
  /// 1 - Custom Server: la directory è definita a design time e può anche non coincidere con il percorso eseguibile
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato l'eseguibile o da cui è eseguito.
  /// 3 - Tutti gli altri casi (iOS/Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user

  if GetUseCurrentDir then
    Result := tpl(getCurrentPath) + 'docs'
  else if GetCustomServer then
    Result := tpl(GetAppHomePath) + 'docs'
  else
    Result := tpl(GetErgoDocumentsPath) + GetAppName.ToLower;
end;

class function TJanuaCoreOS.GetAppDownloadsPath: string;
begin
  if GetUseCurrentDir then
  begin
    Result := tpl(GetAppHomePath) + 'download';
  end
  else if GetCustomServer then
  begin
    Result := tpl(GetAppHomePath) + 'download';
  end
  else
  begin
    Result := tpl(tpl(GetDownloadsDirectory) + 'januaproject') + GetAppName.ToLower;
  end
end;

class function TJanuaCoreOS.GetAppHomePath: string;
begin
  /// distinguo 3 differenti casistiche
  /// 1 - Custom Server: la directory è definita a design time e può anche non coincidere con il percorso eseguibile
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato l'eseguibile o da cui è eseguito.
  /// 3 - Tutti gli altri casi (iOS/Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user

{$IF Defined(IOS) or Defined(MACOS) or Defined(ANDROID)}
  Result := TPath.getDocumentsPath;
{$ELSE}
  if not GetUseCurrentDir then
  begin
{$IF Defined(JANUATEST) and Defined(MSWINDOWS)}
    Result := 'c:\januaproject\test\' + GetAppName.ToLower;
{$ELSE}
    Result := tpl(GetErgoHomePath) + GetAppName.ToLower;
{$ENDIF}
  end
  else
  begin
    Result := getCurrentPath;
  end;
{$ENDIF }
  // WriteLog('AppHomePath:' + Result);
end;

class function TJanuaCoreOS.GetAppLogPath: string;
begin
  /// distinguo 3 differenti casistiche
  /// 1 - Custom Server: la directory è definita a design time e può anche non coincidere con il percorso eseguibile
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato l'eseguibile o da cui è eseguito.
  /// 3 - Tutti gli altri casi (iOS/Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user

  if not GetUseCurrentDir then
  begin
    Result := tpl(GetAppHomePath) + 'log';
  end
  else
  begin
    Result := tpl(getCurrentPath) + 'log';
  end;

  if not DirectoryExists(Result) then
    TDirectory.CreateDirectory(Result);
end;

class function TJanuaCoreOS.GetAppName: string;
begin
  Result := TJanuaApplication.AppName;
end;

class function TJanuaCoreOS.GetAppTempPath: string;
begin
  if GetCustomServer then
  begin
    Result := tpl(GetAppHomePath) + 'temp';
  end
  else if GetUseCurrentDir then
  begin
    Result := tpl(getCurrentPath) + 'temp';
  end
  else
  begin
    Result := tpl(GetErgoTempPath) + GetAppName.ToLower;
  end;

  // WriteLog('AppLogPath:' + Result);
end;

class function TJanuaCoreOS.GetCachePath: string;
begin
{$IFDEF delphixe} Result := TPath.GetCachePath; {$ENDIF}
  // WriteLog('CachePath =' + Result);
end;

class function TJanuaCoreOS.GetConfigFileName: string;
begin
{$IFDEF android}
  Result := IncludeTrailingPathDelimiter(GetAppConfPath) + GetAppName + '.json';
{$ENDIF}
{$IFDEF LINUX}
  Result := IncludeTrailingPathDelimiter(GetAppConfPath) + GetAppName + '.json';
{$ENDIF}
{$IFDEF MACOS}
{$IFDEF ios}
  Result := IncludeTrailingPathDelimiter(GetAppConfPath) + GetAppName + '.json';
{$ELSE}
  Result := IncludeTrailingPathDelimiter(GetAppConfPath) + GetAppName + '.json';
{$ENDIF}
{$ENDIF}
{$IFDEF MSWINDOWS}
  Result := IncludeTrailingPathDelimiter(GetAppConfPath) + GetAppName + '.json';
{$ENDIF}
end;

class function TJanuaCoreOS.GetConfiguration: string;
begin
  Result := TJanuaApplication.GetConfiguration;
end;

class function TJanuaCoreOS.GetConsoleOutput: string;
begin
{$IFDEF MACOS}
{$IFNDEF IOS}
  Assert(Task <> nil, 'Task has not been created.');

  ConsoleOutput := LPipeOutput.fileHandleForReading.availableData;
  FOutputText := StringOf(BytesOf(ConsoleOutput.bytes, ConsoleOutput.Length));
  Result := FOutputText;
{$ENDIF IOS}
{$ENDIF MACOS}
end;

class function TJanuaCoreOS.GetLocalComputerName: string;
begin
{$IFDEF MSWINDOWS}
  Result := GetComputerNameFromWindows;
{$ELSE}
  Result := '';
{$ENDIF}
end;

{$IFDEF MSWINDOWS}

class function TJanuaCoreOS.GetComputerNameFromWindows: string;
var
  iLen: Cardinal;
begin
  // try
  iLen := MAX_COMPUTERNAME_LENGTH + 1; // From Windows.pas
  Result := StringOfChar(#0, iLen);
  GetComputerName(PChar(Result), iLen);
  SetLength(Result, iLen);
  // except
  // on E: Exception do
  // WriteError('TJanuaCoreOS.GetComputerNameFromWindows', E);
  // end;
end;
{$ENDIF}

class function TJanuaCoreOS.getCurrentPath: string;
begin
  Result := GetCurrentDir;
end;

class constructor TJanuaCoreOS.Create;
begin
{$IFDEF MACOS}
  LPipeInput := TNSPipe.Create;
  LPipeOutput := TNSPipe.Create;
  LPipeError := TNSPipe.Create;
{$IFNDEF IOS}
  Task := nil;
{$ENDIF IOS}
{$ENDIF}
end;

class procedure TJanuaCoreOS.CreateConfigDataset;
begin
  {
    if not FConfigDataset.Active then
    begin
    with TStringField.Create(self) do
    begin
    Name := 'ConfigDatasetKey';
    FieldKind := fkData;
    FieldName := 'Key';
    Size := 256;
    Dataset := FConfigDataset;
    end; // FieldName
    with TStringField.Create(self) do
    begin
    Name := 'ConfigDatasetName';
    FieldKind := fkData;
    FieldName := 'Name';
    Size := 256;
    Dataset := FConfigDataset;
    end; // FieldName
    with TStringField.Create(self) do
    begin
    Name := 'ConfigDatasetType';
    FieldKind := fkData;
    FieldName := 'Type';
    Size := 12;
    Dataset := FConfigDataset;
    end; // FieldName
    with TMemoField.Create(self) do
    begin
    Name := 'ConfigDatasetValue';
    FieldKind := fkData;
    FieldName := 'Value';
    Dataset := FConfigDataset;
    end; // Last Name
    end;
    if not FConfigDataset.Active then
    FConfigDataset.Open;
    // if not FileExists(FConfigFileName) then
  }
end;

class procedure TJanuaCoreOS.Deactivate;
begin
  TJanuaApplication.OSActive := false;
  if GetJanuaConfiguration.isLoaded then
    GetJanuaConfiguration.UnLoad;
end;

class procedure TJanuaCoreOS.ExecCommand(FileName, parameter: string; aWaitEnd: Boolean);
begin
{$IFDEF MACOS}
{$IFNDEF IOS}
  Task := TNSTask.Wrap(TNSTask.Wrap(TNSTask.OCClass.alloc).init);

  Task.setLaunchPath(StrToNSSTR(FileName));

  Task.setStandardOutput((LPipeOutput as ILocalObject).GetObjectID);
  Task.setStandardError((LPipeError as ILocalObject).GetObjectID);
  Task.setStandardInput((LPipeInput as ILocalObject).GetObjectID);

  Task.launch;
  if aWaitEnd then
    Task.waitUntilExit; // IF This child process is NOT supposed to keep running.
{$ENDIF IOS}
{$ENDIF}
end;

class procedure TJanuaCoreOS.ExternalExec(FileName, parameter: string);
var
  ThisFolder: string;
begin
  ThisFolder := GetAppHomePath;
  InternalExec(FileName, parameter);
  setcurrentdir(ThisFolder);
end;

class function TJanuaCoreOS.GetCustomServer: Boolean;
begin
{$IF Defined(JANUASERVER)}
  Result := True;
{$ELSE}
  Result := TJanuaApplication.OsProfile.CustomServer;
{$ENDIF}
end;

class function TJanuaCoreOS.GetDialog: IJanuaDialog;
begin
  Result := nil;
  if Assigned(FDialog) or TJanuaApplicationFactory.TryGetInterface(IJanuaDialog, FDialog, false) then
    Result := FDialog;
end;

class function TJanuaCoreOS.GetDirectory: String;
// TJanuaApplication.CustomServer
  function GetHomeDirectory: string;
  begin
    if not TDirectory.Exists('C:\Januaproject\home') then
      TDirectory.CreateDirectory('C:\Januaproject\home');
    FDirectory := 'C:\Januaproject\home';
  end;

begin
  if FDirectory = '' then
  begin
{$IF Defined(JANUATEST) and Defined(MSWINDOWS)}
    if not TDirectory.Exists('C:\Januaproject\test') then
      TDirectory.CreateDirectory('C:\Januaproject\test');
    FDirectory := 'C:\Januaproject\test';
{$ELSEIF Defined(JANUASERVER) and Defined(MSWINDOWS)}
    GetHomeDirectory;
{$ELSE}
    if TJanuaApplication.CustomServer then
      Result := GetHomeDirectory
    else
    begin
      var
      aDirectory := TJanuaApplication.OsProfile.Directory;
      // if not any directory is given by default then DocumentsPath is use (on iOS/Android at first)
      Result := ifThen(aDirectory <> '', aDirectory, TPath.getDocumentsPath);
    end;
{$ENDIF}
  end;

  Result := FDirectory;
end;

class function TJanuaCoreOS.GetDocDirectory: string;
begin
{$IFDEF delphixe} Result := TPath.getDocumentsPath; {$ENDIF}
end;

class function TJanuaCoreOS.GetDocumentDirectory: string;
begin
{$IFDEF delphixe} Result := TPath.getDocumentsPath; {$ENDIF}
end;

class function TJanuaCoreOS.getDocumentsPath: string;
begin
  if GetCustomServer and (GetDirectory <> '') then
    Result := IncludeTrailingPathDelimiter(GetDirectory) + GetAppName
  else if GetUseCurrentDir then
    Result := tpl(getCurrentPath) + GetAppName
{$IFDEF delphixe}
  else
    Result := tpl(TPath.getDocumentsPath) + tpl('januaproject') + tpl(GetAppName)
{$ENDIF}
end;

class function TJanuaCoreOS.GetDownloadsDirectory: string;
begin
{$IFDEF delphixe} Result := TPath.GetDownloadsPath; {$ENDIF}
end;

class function TJanuaCoreOS.GetErgoDocumentsPath: string;
begin
  /// distinguo 3 differenti casistiche
  /// 1 - Custom Server: la directory è definita a livello di descrittore
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato il controllo
  /// 3 - Tutti gli altri casi (iOS/Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user
  if GetCustomServer and not GetUseCurrentDir then
  begin
    Result := tpl(GetDirectory) + 'docs';
  end
  else if GetUseCurrentDir then
  begin
    Result := tpl(getCurrentPath) + 'docs';
  end
  else
  begin
    Result := IncludeTrailingPathDelimiter(GetDocDirectory) + 'januaproject';
  end;
end;

class function TJanuaCoreOS.GetErgoHomePath: string;
begin
  /// distinguo 4 differenti casistiche
  /// 1 - Custom Server: la directory è definita a livello di descrittore
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato il controllo
  /// 3 - Tutti gli altri casi (Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user
  /// 4 - iOS, in questo caso la scelta cade obbligatoriamente sulla Dcouments Path in quanto le altre non sono scrivibli
{$IFDEF IOS}
  Result := TPath.getDocumentsPath;
{$ELSE}
  if GetCustomServer or GetUseCurrentDir then
  begin
    Result := GetHomePath
  end
  else
  begin
    Result := tpl(GetHomePath) + 'januaproject';
  end;

{$ENDIF}
end;

class function TJanuaCoreOS.GetErgoTempPath: string;
begin
  /// distinguo 4 differenti casistiche
  /// 1 - Custom Server: la directory è definita a livello di descrittore
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato il controllo
  /// 3 - Tutti gli altri casi (Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user
  /// 4 - iOS, in questo caso la scelta cade obbligatoriamente sulla Dcouments Path in quanto le altre non sono scrivibli
{$IFDEF ios}
  Result := tpl(TPath.getDocumentsPath) + 'temp';
{$ELSE}
  if GetCustomServer and not GetUseCurrentDir then
  begin
    Result := tpl(GetErgoHomePath) + 'temp'
  end
  else if GetUseCurrentDir then
  begin
    Result := tpl(getCurrentPath) + 'temp';
  end
  else
  begin
{$IFDEF delphixe} Result := tpl(tpl(TPath.GetTempPath) + 'januaproject') + 'temp'; {$ENDIF }
  end;
{$ENDIF }
end;

class function TJanuaCoreOS.GetHomeDirectory: TJanuaOSHomeDir;
begin
  Result := TJanuaApplication.OsProfile.HomeDirectory
end;

class function TJanuaCoreOS.GetHomePath: string;
begin
  /// distinguo 4 differenti casistiche
  /// 1 - Custom Server: la directory è definita a livello di descrittore
  /// 2 - Current Directory: si assume come 'home' il punto in cui è posizionato il controllo
  /// 3 - Tutti gli altri casi (Android/MacOS/Windows Desktop ad esempio) si usa la directory base sys/user
  /// 4 - iOS, in questo caso la scelta cade obbligatoriamente sulla Dcouments Path in quanto le altre non sono scrivibli
{$IFDEF IOS}
  Result := TPath.getDocumentsPath;
{$ELSEIF Defined(ANDROID)}
  Result := TPath.getDocumentsPath;
{$ELSEIF Defined(MACOS)}
  Result := TPath.getDocumentsPath;
{$ELSE}
  if GetCustomServer and not GetUseCurrentDir then
  begin
    Result := GetDirectory
  end
  else if GetUseCurrentDir then
  begin
{$IF Defined(JANUATEST) and Defined(MSWINDOWS)}
    if not TDirectory.Exists('C:\Januaproject\test') then
      TDirectory.CreateDirectory('C:\Januaproject\test');
{$ELSEIF Defined(JANUASERVER) and Defined(MSWINDOWS)}
    if not TDirectory.Exists('C:\Januaproject\home') then
      TDirectory.CreateDirectory('C:\Januaproject\home');
    Result := 'C:\Januaproject\home';
{$ELSE}
    Result := getCurrentPath;
{$ENDIF}
  end
  else
  begin
{$IFDEF delphixe} Result := TPath.GetHomePath; {$ELSE} {$ENDIF}
  end;
{$ENDIF}
end;

class function TJanuaCoreOS.GetIsLoaded: Boolean;
begin
  Result := GetJanuaConfiguration.isLoaded;
end;

class function TJanuaCoreOS.GetJanuaConfiguration: TJanuaConfiguration;
begin
  if not Assigned(FJanuaConfiguration) then
    TJanuaCoreOS.GenerateJanuaConfiguration;
  Result := FJanuaConfiguration;
end;

class function TJanuaCoreOS.GetJsonConf: string;
begin
  // FilterJSON := SO(FJanuaConfiguration.AsJson);
  if GetJanuaConfiguration.Count > 0 then
    Result := GetJanuaConfiguration.asJsonPretty
  else
    Result := GetJanuaConfiguration.AsJsonString;
end;

class function TJanuaCoreOS.GetLibraryPath: string;
begin
{$IFDEF delphixe}
  Result := TPath.GetLibraryPath;
{$ENDIF}
{$IFDEF fpc}
  Result := GetUserDir;
{$ENDIF fpc}
end;

class function TJanuaCoreOS.GetLinuxHome: string;
begin
  Result := TJanuaApplication.OsProfile.LinuxHome;
end;

class function TJanuaCoreOS.GetOsArchitecture: string;
begin
  Result := 'Unidentified';
{$IFDEF delphixe}
  case TOSVersion.Architecture of
    arIntelX86:
      Result := 'IntelX86';
    arIntelX64:
      Result := 'IntelX64';
    arARM32:
      Result := 'ARM32';
  end;
{$ENDIF}
{$IFDEF fpc}
{$IFDEF CPUX86_64} Result := 'IntelX64'; {$ENDIF}
{$IFDEF CPUX86} Result := 'IntelX86'; {$ENDIF}
{$IFDEF CPUARM} Result := 'ARM32'; {$ENDIF}
{$ENDIF fpc}
end;

class function TJanuaCoreOS.GetOsMajor: string;
begin
{$IFDEF delphixe} Result := TOSVersion.Major.ToString() {$ENDIF}
end;

class function TJanuaCoreOS.GetOsName: string;
begin
{$IFDEF delphixe} Result := TOSVersion.Name {$ENDIF}
end;

class function TJanuaCoreOS.GetOsPlatform: string;
begin
{$IFDEF delphixe}
  Case TOSVersion.Platform of
    pfWindows:
      Result := 'Windows';
    pfMacOS:
      Result := 'MacOS';
    pfiOS:
      Result := 'iOS';
    pfAndroid:
      Result := 'Android';
    pfWinRT:
      Result := 'WinRT';
    pfLinux:
      Result := 'Linux:';
  End;
{$ENDIF}
{$IFDEF fpc}
{$IFDEF DARWIN} Result := 'MacOS'; {$ENDIF}
{$IFDEF FREEBSD} Result := 'FreeBSD'; {$ENDIF}
{$IFDEF LINUX} Result := 'Linux'; {$ENDIF}
{$IFDEF MSWINDOWS} Result := 'Windows'; {$ENDIF}
{$IFDEF SOLARIS} Result := 'Solaris'; {$ENDIF}
{$ENDIF fpc}
end;

class function TJanuaCoreOS.GetOsString: string;
begin
  // boh? immagino sia la stringa di definizione del sistema operativo Ospite ......
  // occorre un system information
{$IFDEF delphixe} Result := TOSVersion.ToString {$ENDIF}
end;

class function TJanuaCoreOS.GetSharedDocumentsPath: string;
begin
{$IFDEF delphixe} Result := TJanuaApplication.OsProfile.SharedDocumentsPath; {$ENDIF}
end;

class function TJanuaCoreOS.GetTempPath: string;
begin
{$IFDEF delphixe} Result := TPath.GetTempPath; {$ENDIF}
  // WriteLog('FTempPath =' + Result);
end;

class function TJanuaCoreOS.GetTitle: String;
begin
  Result := TJanuaApplication.OsProfile.Title;
end;

class function TJanuaCoreOS.GetUseCurrentDir: Boolean;
begin
{$IFDEF LOCAL_HOME}
  Result := True
{$ELSE}
  Result := TJanuaApplication.OsProfile.UseCurrentDir;
{$ENDIF}
end;

class function TJanuaCoreOS.GetUserName: String;
// ****************************************************************************
// **** funzione di get current user name: rileva il nome operatore ***********
// **** loggato ora utlizzando un accesso diretto alle API di win32 ***********
// ****************************************************************************
{$IFDEF MSWINDOWS}
var
  nSize: DWord;
{$ENDIF}
begin
  Result := '';
{$IFDEF MACOS}
{$IFNDEF IOS} Result := TNSString.Wrap(NSUserName).UTF8String; {$ENDIF}
{$ENDIF}
{$IFDEF MSWINDOWS}
  nSize := 1024;
  SetLength(Result, nSize);
  if Winapi.Windows.GetUserName(PChar(Result), nSize) then
    SetLength(Result, nSize - 1)
  else
    RaiseLastOSError;
  if Result = '' then
    Result := 'Administrator';
{$ENDIF}
end;

class function TJanuaCoreOS.getOSVersion: string;
begin
{$IFDEF UNIX}
  Result := 'Unix ';
{$ENDIF}
{$IFDEF MSWINDOWS}
  Result := 'Windows ';
{$ENDIF}
{$IFDEF LCLcarbon}
  Result := 'Mac OS X 10.';
{$ENDIF}
{$IFDEF Linux}
  Result := 'Linux Kernel ';
{$ENDIF}
{$IFDEF WINDOWS}
  if WindowsVersion = wv95 then
    Result := 'Windows 95 '
  else if WindowsVersion = wvNT4 then
    Result := 'Windows NT v.4 '
  else if WindowsVersion = wv98 then
    Result := 'Windows 98 '
  else if WindowsVersion = wvMe then
    Result := 'Windows ME '
  else if WindowsVersion = wv2000 then
    Result := 'Windows 2000 '
  else if WindowsVersion = wvXP then
    Result := 'Windows XP '
  else if WindowsVersion = wvServer2003 then
    Result := 'Windows Server 2003 '
  else if WindowsVersion = wvVista then
    Result := 'Windows Vista '
  else if WindowsVersion = wv7 then
    Result := 'Windows 7 '
  else
    Result := 'Windows ';
{$ENDIF}
end;

class function TJanuaCoreOS.GetResolveToFile: Boolean;
begin
  Result := TJanuaApplication.ResolveToFile;
end;

(*
  class function TJanuaCoreOS.getSeparator: string;
  begin
  Result := System.SysUtils.IncludeTrailingPathDelimiter
  end;
*)

class function TJanuaCoreOS.getWildCard: string;
begin
{$IFDEF delphixe} Result := TPath.PathSeparator {$ENDIF}
{$IFDEF fpc} Result := DirectorySeparator; {$ENDIF}
end;

class function TJanuaCoreOS.PublicActivate: Boolean;
begin
  if GetAppName = '' then
  begin
    raise Exception.Create('Please select an unique application Name at first');
    Result := false;
  end;

  if not GetActive then
  begin
    SetupAppConfiguration;
    TJanuaApplication.OSActive := True;
    if GetActive then
      LoadConfiguration;
  end;
  Result := GetActive;
end;

class procedure TJanuaCoreOS.PublicClearLog(const Sender: TObject; const ProcedureName: string);
begin

end;

class procedure TJanuaCoreOS.Initialize;
begin
  if TJanuaApplication.AppName <> '' then
    GetJanuaConfiguration.Initialize(GetConfigFileName);
end;

class procedure TJanuaCoreOS.InternalExec(FileName, parameter: string);
{$IFDEF FPC}
// This defines the var "AProcess" as a variable
// of the type "TProcess"
var
  AProcess: TProcess;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS)}
  ShellExecute(0, 'OPEN', PChar(FileName), nil, nil, SW_SHOWNORMAL);
  // ShellExecute(0, 'OPEN', PChar(FileName), '', '', SW_SHOWNORMAL);
{$ENDIF}
{$IF Defined(MACOS)}
  // attenzione iOS non supporta (evidentemente) una chiamata alle API posix in particolare all'oggetto _system
{$IFNDEF IOS} _system(PAnsiChar('open ' + FileName)); {$ENDIF}
{$ENDIF MACOS}
{$IFDEF FPC}
  // Now we will create the TProcess object, and
  // assign it to the var AProcess.
  AProcess := TProcess.Create(nil);
  try
    // Tell the new AProcess what the command to execute is.
    // Let's use the Free Pascal compiler (i386 version that is)
    AProcess.Executable := FileName;

    // Pass -h together with ppc386 so actually 'ppc386 -h' is executed:
    if parameter <> '' then
      AProcess.Parameters.Add(parameter);

    // We will define an option for when the program
    // is run. This option will make sure that our program
    // does not continue until the program we will launch
    // has stopped running.                vvvvvvvvvvvvvv
    AProcess.Options := AProcess.Options + [poWaitOnExit];

    // Now let AProcess run the program
    AProcess.Execute;
  finally
    // This is not reached until ppc386 stops running.
    AProcess.Free;
  end;
{$ENDIF}
end;

class procedure TJanuaCoreOS.LoadConfiguration;
begin
  if GetActive and (not Assigned(FJanuaConfiguration) or not GetJanuaConfiguration.isLoaded) then
  begin
    if not DirectoryExists(GetErgoHomePath) then
      CreateDir(GetErgoHomePath);

    if not DirectoryExists(GetErgoDocumentsPath) then
      CreateDir(GetErgoDocumentsPath);

    if not DirectoryExists(GetErgoTempPath) then
      CreateDir(GetErgoTempPath);

    if not DirectoryExists(GetAppHomePath) then
      CreateDir(GetAppHomePath);

    if not DirectoryExists(GetAppDocumentsPath) then
      CreateDir(GetAppDocumentsPath);

    if not DirectoryExists(GetAppDataPath) then
      CreateDir(GetAppDataPath);

    TJanuaApplication.LogFileDir := GetAppLogPath;
    if not DirectoryExists(TJanuaApplication.LogFileDir) then
      CreateDir(TJanuaApplication.LogFileDir);

    if not DirectoryExists(GetAppConfPath) then
      CreateDir(GetAppConfPath);

    if not DirectoryExists(GetAppTempPath) then
      CreateDir(GetAppTempPath);

    if (Trim(GetAppName) <> '') then
      GetJanuaConfiguration.Initialize(GetConfigFileName)
  end;
end;

class function TJanuaCoreOS.LogString: string;
begin
  Result := TJanuaApplication.LogString;
end;

class procedure TJanuaCoreOS.OpenUrl(URL: string);
{$IF Defined(ANDROID)}
var
  Intent: JIntent;
{$ENDIF}
begin
{$IF Defined(ANDROID)}
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setData(StrToJURI(URL));
  tandroidhelper.Activity.startActivity(Intent);
  // SharedActivity.startActivity(Intent);
{$ELSEIF Defined(MSWINDOWS)}
  ShellExecute(0, 'OPEN', PWideChar(URL), nil, nil, SW_SHOWNORMAL);
{$ELSEIF Defined(IOS)}
  SharedApplication.OpenUrl(StrToNSUrl(URL));
{$ELSEIF Defined(MACOS)}
  _system(PAnsiChar('open ' + AnsiString(URL)));
{$ENDIF}
end;

class function TJanuaCoreOS.ReadParam(Key, Name: string; Default: Double): Double;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
end;

class function TJanuaCoreOS.ReadParam(Key, Name: string; Default: TJanuaServerRecordConfs)
  : TJanuaServerRecordConfs;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
end;

class function TJanuaCoreOS.ReadDateTimeParam(Key, Name: string; Default: TDateTime): TDateTime;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
end;

class procedure TJanuaCoreOS.ReadErrorFile;
begin
  TJanuaCoreOS.InternalExec(ErrTextFileName, '');
end;

class function TJanuaCoreOS.ReadParam(Key, Name: string; Default: TJsonObject): TJsonObject;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
end;

class function TJanuaCoreOS.WriteParam(Key, Name: string; Default: Integer): Integer;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.setValue(Key, Name, Default);
end;

class function TJanuaCoreOS.WriteParam(Key, Name, Default: string): string;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.setValue(Key, Name, Default);
  // WriteLog('WriteParam Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' + Default);
end;

class function TJanuaCoreOS.ReadParam(Key, Name: string; Default: Integer): Integer;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
  // WriteLog('Read integer Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' + Result.ToString);
end;

{$IFDEF MSWINDOWS}

class function TJanuaCoreOS.ReadParam(Key, Name: string; Default: AnsiString): AnsiString;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := StringToAnsiString(GetJanuaConfiguration.getValue(Key, Name, AnsiStringToString(Default)));
  // WriteLog('Read Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' + Result);
end;

{$ENDIF}

class function TJanuaCoreOS.ReadBoolRegistry(Machine: Boolean; stringa, chiave: string;
  Default: Boolean): Boolean;
// ********************** funzione di lettura stringa dal registry *************
// questa funzione legge una stringa dal registro nell'area del programma
// l'area di lavoro base ? HKE_LOCAL_MACHINE\SOFTWARE\UNDERGLOBE\CLIENT
// l'area del programma ? la stringa chiave.
// ******************************************************************************
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
var
  Reg: Tregistry;
  lKey: string;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  lKey := 'SOFTWARE\Januaproject\' + TJanuaApplication.AppName + '\' + chiave;
  Result := default;
  Reg := Tregistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(lKey, True) then
    begin
      if Reg.ValueExists(stringa) then
        Result := Reg.ReadBool(stringa)
      else
        Reg.WriteBool(stringa, default);
    end
    else
    begin
      Reg.CreateKey(lKey);
      Reg.WriteBool(stringa, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE}
  Result := TJanuaCoreOS.ReadParam(chiave, stringa, default);
{$ENDIF}
end;

class function TJanuaCoreOS.ReadIntRegistry(Machine: Boolean; stringa, chiave: string;
  Default: Integer): Integer;
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
// ********************** funzione di lettura stringa dal registry *************
// questa funzione legge una stringa dal registro nell'area del programma
// l'area di lavoro base ? HKE_LOCAL_MACHINE\SOFTWARE\UNDERGLOBE\CLIENT
// l'area del programma ? la stringa chiave.
// ******************************************************************************
var
  Reg: Tregistry;
  lKey: string;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  if True then

    lKey := 'SOFTWARE\Januaproject\' + TJanuaApplication.AppName + '\' + chiave;
  Result := default;
  Reg := Tregistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey(lKey, True) then
    begin
      if Reg.ValueExists(stringa) then
        Result := Reg.ReadInteger(stringa)
      else
        Reg.WriteInteger(stringa, default);
    end
    else
    begin
      Reg.CreateKey(lKey);
      Reg.WriteInteger(stringa, default);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE}
  Result := TJanuaCoreOS.ReadParam(chiave, stringa, default);
{$ENDIF}
end;

class function TJanuaCoreOS.ReadRegistry(Machine: Boolean; stringa, chiave, Default: string): string;
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
// ********************** funzione di lettura stringa dal registry *************
// questa funzione legge una stringa dal registro nell'area del programma
// l'area di lavoro base ? HKE_LOCAL_MACHINE\SOFTWARE\UNDERGLOBE\CLIENT
// l'area del programma ? la stringa chiave.
// ******************************************************************************
var
  Reg: Tregistry;
  lKey: string;
  valore: string;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  if TJanuaApplication.OsProfile.CustomServer then
    Result := TJanuaCoreOS.ReadParam(chiave, stringa, default)
  else
  begin
    lKey := 'SOFTWARE\Januaproject\' + TJanuaApplication.AppName + '\' + chiave;
    Reg := Tregistry.Create;
    try
      if Machine then
        Reg.RootKey := HKEY_LOCAL_MACHINE
      else
        Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey(lKey, True) then
      begin
        valore := Reg.ReadString(stringa);
        if valore = '' then
        begin
          Reg.WriteString(stringa, default);
          Result := default;
        end
        else
          Result := valore;
      end
      else
      begin
        Reg.CreateKey(lKey);
        Reg.WriteString(stringa, default);
      end;
    finally
      Reg.Free;
      inherited;
    end;
  end;
{$ELSE}
  Result := TJanuaCoreOS.ReadParam(chiave, stringa, default);
{$ENDIF}
end;

class function TJanuaCoreOS.ReadRegistry(Machine: Boolean; stringa, chiave: string; Default: Word): Word;
var
  lValore: Integer;
begin
  lValore := Integer(Default);
{$IFDEF MSWINDOWS}
  if TJanuaApplication.OsProfile.CustomServer then
    lValore := TJanuaCoreOS.ReadParam(chiave, stringa, lValore)
  else
    TJanuaCoreOS.ReadIntRegistry(Machine, stringa, chiave, lValore);
{$ELSE}
  lValore := TJanuaCoreOS.ReadParam(chiave, stringa, lValore);
{$ENDIF}
  Result := Word(lValore)
end;

class function TJanuaCoreOS.ReadRegistry(Machine: Boolean; stringa, chiave: string; Default: Integer)
  : Integer;
begin
  Result := TJanuaCoreOS.ReadParam(chiave, stringa, default);
end;

class function TJanuaCoreOS.ReadRegistryCrypt(Machine: Boolean; aName, aKey, aDefault: string): string;
var
  LValue: string;
begin
  LValue := EncryptDES3(aDefault);
  LValue := ReadRegistry(Machine, aName, aKey, LValue);
  Result := DecryptDES3(LValue);
end;

class function TJanuaCoreOS.RegistryNextVal(table: string): int64;
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
var
  Reg: Tregistry;
  client: String;
  Value: string;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  // NextVal := 0;
  Reg := Tregistry.Create;
  try
    // if Fsupervisor then Reg.RootKey := HKEY_LOCAL_MACHINE else
    Reg.RootKey := HKEY_CURRENT_USER;

    if Reg.OpenKey('\Software\Januaproject\Client\' + Key, True) then
    begin
      client := Reg.ReadString('NUMERO');
      if client = '' then
        Reg.WriteString('NUMERO', '0');
    end
    else
    begin
      Reg.CreateKey('\Software\Januaproject\Client\' + Key);
      Reg.WriteString('NUMERO', InputBox('Numero',
        'Inserire il numero di riferimento della macchina locale', '0'));
    end;
    Reg.CloseKey;

    if Reg.OpenKey('\Software\Januaproject\Client\' + Key + 'SEQUENCE', True) then
      Value := Reg.ReadString(table)
    else
      Reg.CreateKey('\Software\Januaproject\Client\SEQUENCE');

    if Value = '' then
    begin
      Reg.WriteString(table, '1');
      Value := intTostr(StrToInt64(client) * 10000000 + 1);
    end
    else
    begin
      if Trunc(StrToInt64(Value) / 10000000) >= StrToInt64(client) then
        Value := intTostr(StrToInt64(Value) + 1)
      else
        Value := intTostr(StrToInt64(client) * 10000000 + StrToInt64(Value) + 1)
    end;
    Reg.WriteString(table, Value);
    Reg.CloseKey;
    RegistryNextVal := StrToInt64(Value);
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE}
  Result := TJanuaCoreOS.ReadParam('AutoInc', table, 0);
  Inc(Result);
  TJanuaCoreOS.WriteParam('AutoInc', table, Result);
{$ENDIF}
end;

class procedure TJanuaCoreOS.WriteBoolRegistry(Machine: Boolean; aName, aKey: string; aValue: Boolean);
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
var
  Reg: Tregistry;
  lKey: string;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  lKey := 'SOFTWARE\Januaproject\' + TJanuaApplication.AppName + '\' + aKey;
  Reg := Tregistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(lKey, True) then
    begin
      Reg.WriteBool(aName, aValue);
    end
    else
    begin
      Reg.CreateKey(lKey);
      Reg.WriteBool(aName, aValue);
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE}
  TJanuaCoreOS.WriteParam(aKey, aName, aValue)
{$ENDIF}
end;

class function TJanuaCoreOS.WriteRegistry(Machine: Boolean; aName, aKey, aValue: string): Boolean;
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
// ********************** Writes a string to Windows REgistry accordin to Janua Standard *************
// today it reads usually from user settings HKEY_CURRENT_USER or  HKEY_LOCAL_MACHINE
// in both cases the root is always "\SOFTWARE\Januaproject\"
// ******************************************************************************
var
  Reg: Tregistry;
  lKey: string;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  Result := false;
  lKey := 'SOFTWARE\Januaproject\' + TJanuaApplication.AppName + '\' + aKey;
  Reg := Tregistry.Create;
  try
    if Machine then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else
      Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey(lKey, True) then
    begin
      Reg.WriteString(aName, aValue);
      Result := True;
    end
    else
    begin
      Reg.CreateKey(lKey);
      Reg.WriteString(aName, aValue);
      Result := True;
    end;
  finally
    Reg.Free;
    inherited;
  end;
{$ELSE}
  TJanuaCoreOS.WriteParam(aKey, aName, aValue);
  Result := True;
{$ENDIF}
end;

class procedure TJanuaCoreOS.WriteRegistryCrypt(Machine: Boolean; stringa, chiave, valore: string);
var
  LValue: string;
begin
  LValue := EncryptDES3(valore);
  { lValue := } WriteRegistry(Machine, stringa, chiave, LValue);
end;

class procedure TJanuaCoreOS.CheckRegistry;
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
var
  Reg: Tregistry;
{$ENDIF}
begin
{$IF Defined(MSWINDOWS) and not Defined(JANUASERVER)}
  // PER ORA NON CARICO LE STATISTICHE
  Reg := Tregistry.Create;
  try
    // Now only Current User is used to set registries ......
    // if Fsupervisor then Reg.RootKey := HKEY_LOCAL_MACHINE else
    Reg.RootKey := HKEY_CURRENT_USER;

    if not Reg.OpenKey('\Software\Januaproject\Client\' + Key, True) then
      Reg.CreateKey('\Software\Januaproject\Client\' + Key);

    if Reg.OpenKey('\Software\Januaproject\Client\' + Key, True) then
    begin
      if Reg.ReadString('NUMERO') = '' then
        Reg.WriteString('NUMERO', InputBox('Numero',
          'Inserire il numero di riferimento della macchina locale', '0'));
    end;
  finally
    Reg.Free;
  end;
{$ELSE}
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
{$ENDIF}
end;

class function TJanuaCoreOS.ReadParam(Key, Name, Default: string): string;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
  // WriteLog('Read Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' + Result);

end;

class procedure TJanuaCoreOS.SaveConfiguration;
begin
  if not GetJanuaConfiguration.isLoaded then
    LoadConfiguration
  else
    GetJanuaConfiguration.SaveConfiguration;
end;

class function TJanuaCoreOS.SelectFolder(var aFolder: string; const aTitle, aButtonCaption: string): Boolean;
var
  aDialog: IJanuaOpenFileDialog;
  lFolder: string;
begin
  Result := JanuaOpenFolder(aFolder, aTitle, aButtonCaption);
end;

class procedure TJanuaCoreOS.SetAppName(const Value: string);
begin
  if TJanuaApplication.AppName <> Value then
  begin
    TJanuaApplication.AppName := Value;
    GetJanuaConfiguration.UnLoad;
    Deactivate;
  end;
end;

class procedure TJanuaCoreOS.SetConfigDataset(Value: IJanuaDBDataset);
begin
  {
    if Assigned(FConfigDataset) then
    FConfigDataset.Assign(Value);
  }
end;

class procedure TJanuaCoreOS.SetCustomServer(const Value: Boolean);
begin
  TJanuaApplication.CustomServer := Value;
end;

class procedure TJanuaCoreOS.SetDirectory(const Value: String);
begin
  TJanuaApplication.Directory := Value;
end;

class procedure TJanuaCoreOS.SetHomeDirectory(const Value: TJanuaOSHomeDir);
begin
  TJanuaApplication.SetOsProfileHomeDirectory(Value);
end;

class procedure TJanuaCoreOS.SetLinuxHome(const Value: string);
begin
  TJanuaApplication.LinuxHome := Value;
end;

class procedure TJanuaCoreOS.SetResolveToFile(const Value: Boolean);
begin
  TJanuaApplication.ResolveToFile := Value;
end;

class procedure TJanuaCoreOS.SetTitle(const Value: String);
begin
  TJanuaApplication.Title := Value;
end;

class function TJanuaCoreOS.PublicWriteError(Sender: TObject; aProcedureName, sMessage: string; e: Exception;
  doraise: Boolean = True): TJanuaLogRecord;
var
  vFile: TFileName;
  ErrTextFile: TextFile;
  LocalLog: string;
  procedure AddLog(const aLog: string);
  begin
    LocalLog := LocalLog + aLog + sLineBreak;
  end;

begin
  if Assigned(e) and not FPublicRaised then
    try
      Result.Clear;
      AddLog(DateTimeToStr(Now));
      AddLog(sMessage + ' Error:');
      // AddLog(E.Message);
      AddLog(e.ToString);
      TJanuaApplication.AddLog(LocalLog);
      if TJanuaApplication.IsConsole then
        Writeln(LocalLog);
      Result.DateTime := Now();
      if Sender <> nil then
      begin
        Result.ClassName := Sender.ClassName;
        Result.OwnerName := '';
        if (Sender is TComponent) and ((Sender as TComponent).Owner <> nil) then
          Result.OwnerName := ifThen((Sender as TComponent).Owner <> nil,
            (Sender as TComponent).Owner.Name, '');
      end;
      Result.ProcedureName := aProcedureName;

      if (GetAppName <> '') and GetResolveToFile then
      begin
        // ***************************************************************************
        // ******* Procedura di scrittura dello unit.testing *************************
        // ***************************************************************************
        if not DirectoryExists(GetHomePath) then
          CreateDir(GetHomePath);

        if not DirectoryExists(GetAppHomePath) then
          CreateDir(GetAppHomePath);

        vFile := TJanuaApplication.AppName + FormatDateTime('yyyymmddhhnnss', Now()) + '.err.txt';

        if (GetAppName > '') then
        begin
          ErrTextFileName := IncludeTrailingPathDelimiter(GetAppLogPath) + vFile;
          // TFileName
          Assignfile(ErrTextFile, ErrTextFileName);
          If FileExists(IncludeTrailingPathDelimiter(GetAppLogPath) + vFile) then
            Append(ErrTextFile)
          else
            Rewrite(ErrTextFile);
          Writeln(ErrTextFile, LocalLog);
          Writeln(ErrTextFile, '***** Log Stack ***************');
          Writeln(ErrTextFile, TJanuaApplication.Log);
          CloseFile(ErrTextFile);
        end;
      end;
      if doraise and not FPublicRaised then
      begin
        FPublicRaised := True;
        // Sender: TObject; aProcedureName, sMessage: string; e: Exception; doraise: boolean = true
        PublicWriteLog(Sender, aProcedureName, sMessage);
        RaiseException(aProcedureName, e, Sender, LogString);
        // CreateException(aProcedureName, e, Sender, )  //Exception.Create(LocalLog);
      end
      else
        FPublicRaised := false;
    except
      on e: Exception do
      begin
        FPublicRaised := True;
      end;
    end
  else
    FPublicRaised := false;
end;

class function TJanuaCoreOS.PublicWriteLog(Sender: TObject; ProcedureName, sMessage: string;
  isError: Boolean = false): TJanuaLogRecord;
begin
  LogCriticalSection.Acquire;
  try
    Result.Clear;
    if (Sender <> nil) and (Sender is TComponent) and ((Sender as TComponent).Owner <> nil) then
      Result.OwnerName := ifThen((Sender as TComponent).Owner <> nil, (Sender as TComponent).Owner.Name, '');
    Result.ProcedureName := ProcedureName;
    Result.DateTime := Now();
    if Assigned(Sender) then
      Result.ClassName := Sender.ClassName;
    Result.LogMessage := sMessage;

    if TJanuaApplication.ApplicationType = TJanuaApplicationType.jatConsoleSrv then
      Writeln(Result.LogText);
    TJanuaApplication.AddLog(Result.LogText);
  finally
    LogCriticalSection.Release;
  end;
end;

class function TJanuaCoreOS.WriteParam(Key, Name: string; Default: Double): Double;
begin
  TJanuaCoreOS.LoadConfiguration;
  Result := GetJanuaConfiguration.setValue(Key, Name, Default);
  // WriteLog('WriteParam: ' + 'Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + Default.ToString);
end;

class function TJanuaCoreOS.WriteParam(Key, Name: string; Default: TJanuaServerRecordConfs)
  : TJanuaServerRecordConfs;
begin
  TJanuaCoreOS.LoadConfiguration;
  Result := Default;
  GetJanuaConfiguration.setValue(Key, Name, Default.asJson);
end;

class function TJanuaCoreOS.WriteDateTimeParam(Key, Name: string; Default: TDateTime): TDateTime;
begin
  TJanuaCoreOS.LoadConfiguration;
  Result := GetJanuaConfiguration.setValue(Key, Name, Default);
  // WriteLog('WriteParam: ' + 'Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) +
  // FormatDateTime('dd/mm/yyyy hh:nn', Default));
end;

class procedure TJanuaCoreOS.WriteFileText(aFileName, aMessage: string);
var
{$IFDEF delphixe} aWriter: TStreamWriter; {$ENDIF}
  vDirName: string;
begin
{$IFDEF delphixe}
  vDirName := ifThen(Pos('C:\', UpperCase(aFileName)) > 0, '', tpl(getDocumentsPath));
  aWriter := TStreamWriter.Create(vDirName + aFileName, True);
  try
    aWriter.WriteLine(aMessage);
  finally
    aWriter.Free;
  end;
{$ENDIF}
end;

class function TJanuaCoreOS.WriteParam(Key, Name: string; Default: Boolean): Boolean;
begin
  TJanuaCoreOS.LoadConfiguration;
  Result := GetJanuaConfiguration.setValue(Key, Name, Default);
  // WriteLog('WriteParam Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' +
  // Default.ToString(true));
end;

{$IFDEF MSWINDOWS}

class function TJanuaCoreOS.WriteParam(Key, Name: string; Default: AnsiString): AnsiString;
begin
  LoadConfiguration;
  Result := StringToAnsiString(GetJanuaConfiguration.setValue(Key, Name, UnicodeString(Default)));
  // WriteLog('WriteParam Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' + Default);

end;
{$ENDIF MSWINDOWS}

class procedure TJanuaCoreOS.SetupAppConfiguration;
var
  sTempPath: string;
begin
  if (GetAppName = '') then
    raise Exception.Create('TJanuaCoreOS.SetupAppConfiguration AppName is Null');
  sTempPath := GetErgoTempPath;
  if not DirectoryExists(sTempPath) then
    CreateDir(sTempPath);
  if GetAppName > '' then
  begin
    if not DirectoryExists(GetAppTempPath) then
      CreateDir(GetAppTempPath);
  end;
  if GetActive then
    LoadConfiguration;
end;

class procedure TJanuaCoreOS.SetUseCurrentDir(const Value: Boolean);
begin
  TJanuaApplication.UseCurrentDir := Value;
end;

class procedure TJanuaCoreOS.Terminate;
begin
  FJanuaConfiguration.Free;
  FJanuaConfiguration := nil;
end;

class function TJanuaCoreOS.ReadParam(Key, Name: string; Default: Boolean): Boolean;
begin
  LoadConfiguration;
  Result := GetJanuaConfiguration.getValue(Key, Name, Default);
  // WriteLog('WriteParam Key = ' + QuotedStr(Key) + ' and Name = ' + QuotedStr(Name) + ', Value = ' +
  // Default.ToString(true));
end;

{$ENDREGION 'CoreOS'}
{$REGION 'Logger'}
{ TJanuaLogger }

class procedure TJanuaLogger.ClearLog;
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
      begin
        FlogRecords.Clear;
        MonitorExit(LockObject);
      end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class procedure TJanuaLogger.ClearLocalLog(const aObject: TObject; aProcedure: string);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
      begin
        FlogRecords.ClearLocalLog(aObject, aProcedure);
        MonitorExit(LockObject);
      end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class procedure TJanuaLogger.Startup;
begin
  try
    FLogStarted := false;
    FlogRecords.Create(false)
  except
    on e: Exception do
      raise Exception.Create('TJanuaLogger.Create ' + e.Message);
  end;
end;

class procedure TJanuaLogger.ExportToCSV(aFileName: string);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          FlogRecords.ExportToCSV(IncludeTrailingPathDelimiter(TJanuaApplication.LogFileDir) +
            TJanuaApplication.LogFileRoot + aFileName + '.csv');
          FlogRecords.Clear;
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class function TJanuaLogger.GetDefaultProcedure: string;
begin
  Result := FlogRecords.DefaultProcedure
end;

class function TJanuaLogger.GetLogRecords: TJanuaLogRecords;
begin

end;

class procedure TJanuaLogger.Initialize;
begin

end;

class procedure TJanuaLogger.LogDatabaseError(aItem: TJanuaDBDatasetError);
begin
  FDBDatasetErrors.Add(aItem);
end;

class procedure TJanuaLogger.LogError(const aProcedure, aMessage: string; aClass: TObject);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          FlogRecords.Add(aProcedure, aMessage, aClass);
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class procedure TJanuaLogger.LogError(const aProcedure, aMessage: string; aClass: TObject; e: Exception);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          FlogRecords.Add(aProcedure, aMessage, aClass, e);
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class procedure TJanuaLogger.LogRecord(const aProcedure, aMessage: string; aClass: TObject);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          FlogRecords.Add(aProcedure, aMessage, aClass);
          if Assigned(FOutputLogger) then
            FOutputLogger.OutputLog(aProcedure, aMessage, aClass);
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class function TJanuaLogger.LogString(const aClass: TObject = nil): string;
begin
  Result := FlogRecords.LogString
end;

class procedure TJanuaLogger.LogWarning(const aProcedure, aMessage: string; aClass: TObject);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          FlogRecords.Add(aProcedure, aMessage, aClass);
          if Assigned(FOutputLogger) then
            FOutputLogger.OutputLog(aProcedure, aMessage, aClass);
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class procedure TJanuaLogger.LogMessage(const aProcedure, aMessage: string; aClass: TObject);
begin
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          FlogRecords.Add(aProcedure, aMessage, aClass);
          if Assigned(FOutputLogger) then
            FOutputLogger.OutputLog(aProcedure, aMessage, aClass);
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
end;

class procedure TJanuaLogger.ResetWatch;
begin
  FlogRecords.ResetWatch
end;

class procedure TJanuaLogger.SaveLogToFile(aFileName: string);
{$IFDEF FPC} Var
  f: Text; {$ENDIF FPC}
begin
{$IFDEF FPC}
  Assign(f, IncludeTrailingPathDelimiter(LogFileDir) + LogFileRoot + aFileName);
  Append(f);
  Writeln(f, FlogRecords.LogString);
  Close(f);
{$ELSE}
  Async.Run<Boolean>(
    function: Boolean
    begin
      Result := MonitorEnter(LockObject);
      if Result then
        try
          try
            TFile.AppendAllText(IncludeTrailingPathDelimiter(TJanuaApplication.LogFileDir) +
              TJanuaApplication.LogFileRoot + aFileName, FlogRecords.LogString);
            FlogRecords.Clear;
          except
            on e: Exception do
            begin
              Result := false;
              FlogRecords.Clear;
            end;
          end;
        finally
          MonitorExit(LockObject);
        end;
    end,
    procedure(const aResult: Boolean)
    begin
      // per ora non ci faccio nulla :)
    end,
    procedure(const Ex: Exception)
    begin
      JShowError(Ex.Message);
    end);
{$ENDIF FPC}
end;

class procedure TJanuaLogger.SetDBDatasetErrors(const Value: TJanuaDBDatasetErrors);
begin
  FDBDatasetErrors := Value;
end;

class procedure TJanuaLogger.SetDefaultProcedure(Value: string);
begin
  FlogRecords.DefaultProcedure := Value
end;

class procedure TJanuaLogger.SetlogRecords(const Value: TJanuaLogRecords);
begin
  FlogRecords := Value
end;

class procedure TJanuaLogger.StartLog;
begin
  FLogStarted := True
end;

class procedure TJanuaLogger.StartWatch;
begin
  FlogRecords.StartWatch
end;

class procedure TJanuaLogger.StopLog;
begin
  FLogStarted := false;
  StopWatch
end;

class procedure TJanuaLogger.StopWatch;
begin
  FlogRecords.StopWatch
end;

class function TJanuaLogger.TailLog: string;
begin
  Result := FlogRecords.TailLog;
end;

class procedure TJanuaLogger.Terminate;
begin
  // Lock Free
end;

{$ENDREGION Logger}
{ TJanuaDBFramework }

class function TJanuaDBFramework.GetDatasetFunctions: IJanuaDatasetFunctions;
begin
  if not Assigned(FDatasetFunctions) and not TJanuaApplicationFactory.TryGetInterface(IJanuaDatasetFunctions,
    FDatasetFunctions) then
    raise Exception.Create('TJanuaDBFramework.DatasetFunctions: IJanuaDatasetFunctions not set');
  Result := FDatasetFunctions;
end;

{ TJanuaApplicationSettings }

constructor TJanuaApplicationSettings.Create(aCipherKey: RawByteString);
begin
  FCipherKey := aCipherKey;
  FSALT := #0#0#0#0#0#0#0#0;
end;

procedure TJanuaApplicationSettings.LoadSettings;
begin
  LocalLogin.LoadSettings;
end;

procedure TJanuaApplicationSettings.SetCipherKey(const Value: RawByteString);
begin
  FCipherKey := Value;
end;

procedure TJanuaApplicationSettings.SetSALT(const Value: RawByteString);
begin
  FSALT := Value;
end;

{ TJanuaLocalLogin }

procedure TJanuaLocalLogin.LoadSettings;
begin
  FPassword := TJanuaApplication.ReadParamDecryptString(LoginKeySection, LoginKeyLocalPassword, '');
  FSession := TJanuaApplication.ReadParamDecryptString(LoginKeySection, LoginKeyLocalSession, '');
  FUsername := TJanuaApplication.ReadParamDecryptString(LoginKeySection, LoginKeyLocalUserName, '');
  FStorePassword := TJanuaApplication.ReadParamBool(LoginKeySection, LoginKeyLocalStorePassword, false);
  FStoreSession := TJanuaApplication.ReadParamBool(LoginKeySection, LoginKeyLocalStoreSession, false);
end;

procedure TJanuaLocalLogin.SetPassword(const Value: string);
begin
  // if password is different from the one stored then the procedure stores a new on in local File
  if Value <> FPassword then
  begin
    FPassword := Value;
    TJanuaApplication.WriteParamEncryptString(LoginKeySection, LoginKeyLocalPassword, FPassword);
  end;
end;

procedure TJanuaLocalLogin.SetSession(const Value: string);
begin
  if Value <> FSession then
  begin
    FSession := Value;
    TJanuaApplication.WriteParamEncryptString(LoginKeySection, LoginKeyLocalSession, FSession);
  end;
end;

procedure TJanuaLocalLogin.SetStoreSession(const Value: Boolean);
begin
  if Value <> FStoreSession then
  begin
    FStoreSession := Value;
    TJanuaApplication.WriteParamBool(LoginKeySection, LoginKeyLocalStoreSession, FStoreSession);
  end;
end;

procedure TJanuaLocalLogin.SetStorePassword(const Value: Boolean);
begin
  if Value <> FStorePassword then
  begin
    FStorePassword := Value;
    TJanuaApplication.WriteParamBool(LoginKeySection, LoginKeyLocalStorePassword, FStorePassword);
  end;
end;

procedure TJanuaLocalLogin.SetUsername(const Value: string);
begin
  if Value <> FUsername then
  begin
    FUsername := Value;
    TJanuaApplication.WriteParamEncryptString(LoginKeySection, LoginKeyLocalUserName, FUsername);
  end;
end;

initialization

PublicRaised := false;
try
  LogCriticalSection := TCriticalSection.Create;
  ObjCriticalSection := TCriticalSection.Create;
  LockObject := TObject.Create;

  TJanuaLogger.Initialize;
  TJanuaApplication.Setup;

except
  on e: Exception do
    raise Exception.Create('Janua.Application.Framework.initialization ' + e.Message);
end;

finalization

PublicRaised := false;
try
  if TJanuaApplication.ErrorLog.Count > 0 then
    TJanuaApplication.Dialogs.JShowError(TJanuaApplication.ErrorLog[0], TJanuaApplication.ErrorLog.Text);
  TJanuaApplication.Terminate;
  TJanuaLogger.Terminate;
  TJanuaCoreOS.Terminate;
  LogCriticalSection.Free;
  ObjCriticalSection.Free;
  LockObject.Free;
except
  on e: Exception do
    raise Exception.Create('Janua.Application.Framework.initialization ' + e.Message);
end;

end.
