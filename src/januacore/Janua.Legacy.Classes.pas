unit Janua.Legacy.Classes;

interface

uses
  System.SysUtils, System.Classes,
  System.Bindings.Expression,
  System.Bindings.Helper,
  System.Variants,
  System.StrUtils,
  System.TypInfo,
  System.Generics.Collections,
  System.JSON, System.Types,
  System.Rtti, System.IOUtils,
  // http functions
  System.Net.HttpClient, System.Net.URLClient, System.Net.Mime,
  System.Net.HttpClientComponent,
  System.NetEncoding,
  Janua.Core.Types, Janua.Orm.Types, Janua.Http.Types, Janua.Core.Classes;

type
  TJanuaParam = class(TPersistent)
  private
    FKey: string;
    FIsSet: boolean;
    FValue: TValue;
    FMaxLength: integer;
    FPrecision: smallint;
    FMinLength: smallint;
    FJanuaProperty: TJanuaProperty;
    FCheckMessage: string;
    FMandatory: boolean;
    procedure SetKey(const Value: string);
    procedure setValue(const Value: TValue);
    procedure SetParamType(const Value: TJanuaFieldType);
    function GetJsonObject: TJsonObject;
    procedure SetJsonObject(aJsonObject: TJsonObject);
    function getChecked: boolean;
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;

    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);

    function getJsonObjectString: TJsonObject;
    procedure setJsonObjectString(const Value: TJsonObject);
    procedure SetMaxLength(const Value: integer);
    procedure SetMinLength(const Value: smallint);
    procedure SetPrecision(const Value: smallint);
    function getAsUTF8Bytes: TBytes;
    procedure SetJanuaProperty(const Value: TJanuaProperty);
    function GetParamType: TJanuaFieldType;

    procedure SetCheckMessage(const Value: string);
    procedure SetMandatory(const Value: boolean);
    function getIsSet: boolean;
    procedure SetIsSet(const Value: boolean);
    procedure SetDefaultValue;
    function getAsURIEncoded: string;
    procedure setAsURIEncoded(const Value: string);

    function getUrlEncoded: string;
  public
    function GetJsonValue: TJsonValue;
    constructor Create; overload;
    constructor Create(aJsonObject: TJsonObject); overload;
    constructor Create(const aKey: string; aType: TJanuaFieldType; aValue: TValue); overload;
    constructor Create(aJson: string); overload;
    procedure Unset;
  published

    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property Value: TValue read FValue write setValue;
    property AsURIEncoded: string read getAsURIEncoded write setAsURIEncoded;

    property Checked: boolean read getChecked;
    property CheckMessage: string read FCheckMessage write SetCheckMessage;
    property Required: boolean read FMandatory write SetMandatory default false;
    property Key: string read FKey write SetKey;

    property ParamType: TJanuaFieldType read GetParamType write SetParamType;
    property asJsonObject: TJsonObject read GetJsonObject write SetJsonObject;
    property AsJsonObjectString: TJsonObject read getJsonObjectString write setJsonObjectString;
    property MinLength: smallint read FMinLength write SetMinLength default -1;
    property MaxLength: integer read FMaxLength write SetMaxLength default -1;
    property Precision: smallint read FPrecision write SetPrecision default 6;
    property JanuaProperty: TJanuaProperty read FJanuaProperty write SetJanuaProperty;
    property isSet: boolean read getIsSet write SetIsSet;

    property AsUrlEncoded: string read getUrlEncoded;

  end;

type
  TJanuaParams = class(TJanuaObject)
  private
    FParams: TDictionary<String, TJanuaParam>;
    FName: string;
    FJson: TStrings;
    FJsonRaw: TStrings;
    FSelectedParam: TJanuaParam;
    FProperty1: integer;
    FAsHttpUrlGetString: string;
    FAsHttpPostMultiPart: TMultipartFormData;
    FAsHttpUrlPostStrings: TStrings;
    procedure SetParams(const Value: TDictionary<String, TJanuaParam>);
    function GetAsJson: TStrings;
    function GetAsJsonRaw: TStrings;
    function GetJsonObject: TJsonObject;
    procedure SetasJson(const Value: TStrings);
    procedure SetAsJsonRaw(const Value: TStrings);
    procedure SetJsonObject(const Value: TJsonObject);
    procedure SetName(const Value: string);
    function getJsonPretty: string;
    function getJsonPrettyRaw: string;
    function getJsonString: string;
    procedure setJsonString(const Value: string);
    function getJsonObjectString: TJsonObject;
    procedure setJsonObjectString(const Value: TJsonObject);

    procedure SetAsHttpPostMultiPart(const Value: TMultipartFormData);
    procedure SetAsHttpUrlGetString(const Value: string);
    procedure SetAsHttpUrlPostStrings(const Value: TStrings);
    function getAsHttpUrlGetString: string;
    function GetCount: integer;

  public
    constructor Create; override;
    constructor Create(aJsonObject: TJsonObject); overload;
    constructor Create(const aParams: TJanuaParams); overload;
    constructor Create(aJsonString: string); overload;
    constructor Create(aJsonStrings: TStrings); overload;

    Destructor Destroy; override;
    // procedure per assegnare e riprodurre array parametri da Json o da Object
    procedure Assign(const aParams: TJanuaParams);
    procedure Clear;
    procedure Unset;
    // this procedure sets all params to default value and unset them.

    /// versione semplificata della procedura Add .....................
    function Add(aJsonObject: TJsonObject): TJanuaParam; overload;
    function Add(const aKey: string; aType: TJanuaFieldType; aValue: TValue): TJanuaParam; overload;
    function Add(aParam: TJanuaParam): TJanuaParam; overload;
    function Add(const aKey: string; aValue: boolean): TJanuaParam; overload;
    function Add(const aKey: string; aValue: TDateTime): TJanuaParam; overload;
    function Add(const aKey: string; aValue: Extended): TJanuaParam; overload;
    function Add(const aKey: string; aValue: TFileName): TJanuaParam; overload;
    function Add(const aKey: string; aValue: TStrings): TJanuaParam; overload;
    function Add(const aKey: string; aValue: Double): TJanuaParam; overload;
    function Add(const aKey: string; aValue: integer): TJanuaParam; overload;
    function Add(const aKey: string; aValue: Int64): TJanuaParam; overload;
    function Add(const aKey: string; aValue: TBytes): TJanuaParam; overload;

    // Parametri per ritrovare e modificare un parametro ........................................
    function getChecked: boolean;
    function find(const aKey: string): boolean;
    function ParamByName(const aKey: string): TJanuaParam;
    function Update(aParam: TJanuaParam): boolean; overload;
    function setValue(const aKey: string; aValue: integer): boolean; overload;
    function setValue(const aKey: string; aValue: Int64): boolean; overload;
    function setValue(const aKey: string; aValue: Word): boolean; overload;
    function setValue(const aKey: string; aValue: Extended): boolean; overload;
    function setValue(const aKey, aValue: string): boolean; overload;
    function setValue(const aKey: string; aValue: boolean): boolean; overload;
    function Update(const aKey: string; aType: TJanuaFieldType; aValue: TValue): boolean; overload;
    function ExtractParam(const aKey: string): TJanuaParam;
    property asJsonObject: TJsonObject read GetJsonObject write SetJsonObject;
    /// <summary>
    /// Returns the content of the params Array as Json Object Javascript Encoded
    /// </summary>
    property asJson: TStrings read GetAsJson write SetasJson;
    /// <summary>
    /// Returns the content of the params Array as Text not Javascript Encoded
    /// </summary>
    property AsJsonRaw: TStrings read GetAsJsonRaw write SetAsJsonRaw;
    property Params: TDictionary<String, TJanuaParam> read FParams write SetParams;
    /// <summary>
    /// Returns the content of the params Array as
    /// </summary>

  published
    property Checked: boolean read getChecked;
    property Name: string read FName write SetName;
    property SelectedParam: TJanuaParam read FSelectedParam;
    property asJsonPretty: string read getJsonPretty;
    property AsJsonRawPretty: string read getJsonPrettyRaw;
    property AsJsonString: string read getJsonString write setJsonString;
    property AsJsonObjectString: TJsonObject read getJsonObjectString write setJsonObjectString;
    property AsHttpUrlGetString: string read getAsHttpUrlGetString write SetAsHttpUrlGetString;
    property AsHttpUrlPostStrings: TStrings read FAsHttpUrlPostStrings write SetAsHttpUrlPostStrings;
    property AsHttpPostMultiPart: TMultipartFormData read FAsHttpPostMultiPart write SetAsHttpPostMultiPart;
    property count: integer read GetCount;
  end;

type
  TJanuaCustomField = class(TPersistent)
  private
    FKey: string;
    FIsSet: boolean;
    FValue: TValue;
    FMaxLength: integer;
    FPrecision: smallint;
    FMinLength: smallint;
    FJanuaProperty: TJanuaProperty;
    FCheckMessage: string;
    FMandatory: boolean;
    FFieldType: TJanuaProperty;
    FDBField: string;
    procedure getKey(const Value: string);
    function GetMaxLength: integer;
    function GetMinLength: smallint;
    function GetPrecision: smallint;
    procedure SetAsJsonMetadata(const Value: TJsonObject);
    procedure SetFieldType(const Value: TJanuaProperty);
    procedure SetMaxLength(const Value: integer);
    procedure SetMinLength(const Value: smallint);
    procedure SetPrecision(const Value: smallint);
    procedure SetDBField(const Value: string);
  protected
    function getAsBoolean: boolean; virtual; abstract;
    function getAsDateTime: TDateTime; virtual; abstract;
    function getAsFloat: Extended; virtual; abstract;
    function getAsInteger: integer; virtual; abstract;
    function getAsString: String; virtual; abstract;
    function getAsLargeInt: Int64; virtual; abstract;
    function getValue: Variant; virtual; abstract;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean); virtual; abstract;
    procedure setAsDateTime(const Value: TDateTime); virtual; abstract;
    procedure setAsFloat(const Value: Extended); virtual; abstract;
    procedure setAsInteger(const Value: integer); virtual; abstract;
    procedure setAsString(const aValue: String); virtual; abstract;
    procedure setAsLargeInt(const Value: Int64); virtual; abstract;
    procedure setValue(const Value: Variant); virtual; abstract;
  protected // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue; virtual; abstract;
    procedure SetJsonValue(Value: TJsonValue); virtual; abstract;
    function GetJsonPair: TJsonPair; virtual; abstract;
    procedure SetJsonPair(Value: TJsonPair); virtual; abstract;
    function GetJson: string; virtual; abstract;
    procedure SetJson(Value: string); virtual; abstract;
    function getAsUTF8Bytes: TBytes; virtual; abstract;
    function GetAsJsonMetadata: TJsonObject;
  public
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
  public
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: Variant read getValue write setValue;
  published
    property MinLength: smallint read GetMinLength write SetMinLength default -1;
    property MaxLength: integer read GetMaxLength write SetMaxLength default -1;
    property Precision: smallint read GetPrecision write SetPrecision default 6;
    property Key: string read FKey write getKey;
    property FieldType: TJanuaProperty read FFieldType write SetFieldType;
    property DBField: string read FDBField write SetDBField;
  end;

type
  TJanuaLargeIntField = class(TJanuaCustomField)
  private
    FInternalValue: Int64;
    procedure SetInternalValue(const Value: Int64);
  protected
    function getAsBoolean: boolean; override;
    function getAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: integer; override;
    function getAsString: String; override;
    function getAsLargeInt: Int64; override;
    function getValue: Variant; override;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean); override;
    procedure setAsDateTime(const Value: TDateTime); override;
    procedure setAsFloat(const Value: Extended); override;
    procedure setAsInteger(const Value: integer); override;
    procedure setAsString(const aValue: String); override;
    procedure setAsLargeInt(const Value: Int64); override;
    procedure setValue(const Value: Variant); override;
  protected // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue; override;
    procedure SetJsonValue(Value: TJsonValue); override;
    function GetJsonPair: TJsonPair; override;
    procedure SetJsonPair(Value: TJsonPair); override;
    function GetJson: string; override;
    procedure SetJson(Value: string); override;
    function getAsUTF8Bytes: TBytes; override;
  public
    property InternalValue: Int64 read FInternalValue write SetInternalValue;
  end;

type
  TJanuaLegacyFields = TDictionary<string, TJanuaCustomField>;

type
  TJanuaLegacyRecord = class(TPersistent)
  private
    FAsJsonMetadata: TJsonObject;
    FFields: TJanuaLegacyFields;
    function GetFieldCount: integer;
    procedure SetAsJsonMetadata(const Value: TJsonObject);
    procedure SetasJsonObject(const Value: TJsonObject);
  protected
    function getAsJsonObject: TJsonObject;
  public
    property FieldCount: integer read GetFieldCount;
    property AsJsonMetadata: TJsonObject read FAsJsonMetadata write SetAsJsonMetadata;
    property asJsonObject: TJsonObject read getAsJsonObject write SetasJsonObject;
    constructor Create; overload;
    destructor Destroy; override;
  end;

type
  TJanuaRecords = TDictionary<string, TJanuaLegacyRecord>;

type
  TJanuaORMObject = class(TPersistent)
  private
    FRecords: TJanuaRecords;
    FFields: TJanuaLegacyFields;
    // un oggetto potrebbe contenere un array di altri oggetti .........................................................
    // ogni oggetto ? composto da un Record descrittivo o da un array di recoreds ......................................
    FORMObjects: TDictionary<string, TJanuaORMObject>;
  end;

type
  TOnNeedDataset = procedure(Sender: TObject) of object;
  TOnReleaseDataset = procedure(Sender: TObject) of object;
  TOnProcedureExecute = procedure(var vParamsIN, vParamsOUT: TJanuaParams; var vContent: TJanuaContent;
    var aResult: boolean) of object;

type
  TJanuaConfig = Class(TJanuaObject)
  private
    FJanuaParams: TDictionary<String, TJanuaParams>;
    FFileName: TFileName;
    FSelectedParams: TJanuaParams;
    procedure SetJanuaParams(const Value: TDictionary<String, TJanuaParams>);
    procedure SetFileName(const Value: TFileName);
    procedure SetSelectedParams(const Value: TJanuaParams);
  public
    constructor Create; override;
    destructor Destroy; override;
    function ReadParam(const sKey, sParam, sDefaul: string): string; overload;
    function ReadParam(const sKey, sParam: string; sDefaul: boolean): boolean; overload;
    function ReadParam(const sKey, sParam: string; sDefaul: integer): integer; overload;
    function ReadParam(const sKey, sParam: string; sDefaul: Extended): Extended; overload;
    function ReadParam(const sKey, sParam: string; sDefaul: Double): Double; overload;
  public
    property JanuaParams: TDictionary<String, TJanuaParams> read FJanuaParams write SetJanuaParams;

  published
    property FileName: TFileName read FFileName write SetFileName;
    property SelectedParams: TJanuaParams read FSelectedParams write SetSelectedParams;
  End;

type
  TJanuaProcedure = class(TJanuaObject)
  private
    FOnNeedDataset: TOnNeedDataset;
    FParamsOUT: TJanuaParams;
    FParamsIN: TJanuaParams;
    FMimeType: TJanuaMime;
    FContent: TJanuaContent;
    FProcedureType: TJanuaProcedureType;
    FRemoteProcedure: TJanuaProcedure;
    FName: string;
    FDescription: string;
    FSlug: string;
    FOnProcedureExecute: TOnProcedureExecute;
    FOnReleaseDataset: TOnReleaseDataset;
    FHttpMethod: TJanuaHttpMethod;
    FFullName: string;
    FUrl: string;
    FParentUrl: string;
    FParentName: string;
    function GetJsonObject: TJsonObject;
    procedure SetOnNeedDataset(const Value: TOnNeedDataset);
    procedure SetContent(const Value: TJanuaContent);
    procedure SetMimeType(const Value: TJanuaMime);
    procedure SetParamsIN(const Value: TJanuaParams);
    procedure SetParamsOUT(const Value: TJanuaParams);
    procedure SetProcedureType(const Value: TJanuaProcedureType);
    procedure SetRemoteProcedure(const Value: TJanuaProcedure);
    procedure SetDescription(const Value: string);
    procedure SetName(const Value: string);
    procedure SetJsonObject(const Value: TJsonObject);
    procedure SetSlug(const Value: string);
    function GetJson: string;
    function getJsonObjectString: TJsonObject;
    function getJsonString: string;
    procedure SetJson(const Value: string);
    procedure setJsonObjectString(const Value: TJsonObject);
    procedure setJsonString(const Value: string);
    procedure SetOnProcedureExecute(const Value: TOnProcedureExecute);
    procedure SetOnReleaseDataset(const Value: TOnReleaseDataset);
    procedure SetHttpMethod(const Value: TJanuaHttpMethod);
    function getUrl: string;
    function getFullName: string;
    procedure SetParentUrl(const Value: string);
    procedure SetParentName(const Value: string);
  public
    function Execute: boolean; Virtual;
    constructor Create; overload; override;
    constructor Create(aRemoteProcedure: TJanuaProcedure); overload;
    constructor Create(aJsonObject: TJsonObject); overload;
    constructor Create(aJsonString: string); overload;
    constructor Create(aName, aDescription: string; aSlug: string; aMimeType: TJanuaMimeType); overload;
    destructor Destroy; override;
    procedure Assign(aRemoteProcedure: TJanuaProcedure);
    procedure ClearParams;
    procedure UnSetParams;
    procedure Unset;
  published
    property Name: string read FName write SetName;
    property ParentName: string read FParentName write SetParentName;
    property FullName: string read getFullName;
    // FullName is the unique name assigned to a procedure using the schema_resource_procedure tail
    property Slug: string read FSlug write SetSlug;
    property ParentUrl: string read FParentUrl write SetParentUrl;
    property Url: string read getUrl;
    // Url is the unique 'long-tail' url assigned to a procedure using the schema-resource-procedure tail
    property Description: string read FDescription write SetDescription;
    property OnNeedDataset: TOnNeedDataset read FOnNeedDataset write SetOnNeedDataset;
    // on Need Dataset is called by the procedure to advise the system that a Dataset must be created
    property OnReleaseDataset: TOnReleaseDataset read FOnReleaseDataset write SetOnReleaseDataset;
    // on Need Dataset is called by the procedure to advise the system that a Dataset should be released
    property OnProcedureExecute: TOnProcedureExecute read FOnProcedureExecute write SetOnProcedureExecute;
    // On Procedure Execute is called by the procedure object to call an underliyng procedure that will
    // fill the result using the parameters Exposed by the procedure based on the RESTFul Procedure type
    property ParamsIN: TJanuaParams read FParamsIN write SetParamsIN;
    property ParamsOUT: TJanuaParams read FParamsOUT write SetParamsOUT;
    property MimeType: TJanuaMime read FMimeType write SetMimeType;
    property Content: TJanuaContent read FContent write SetContent;
    property RemoteProcedure: TJanuaProcedure read FRemoteProcedure write SetRemoteProcedure;
    property ProcedureType: TJanuaProcedureType read FProcedureType write SetProcedureType;
    property asJsonObject: TJsonObject read GetJsonObject Write SetJsonObject;
    property AsJsonObjectString: TJsonObject read getJsonObjectString Write setJsonObjectString;
    property asJson: string read GetJson write SetJson;
    property AsJsonString: string read getJsonString write setJsonString;
    property HttpMethod: TJanuaHttpMethod read FHttpMethod write SetHttpMethod;
  end;

type
  TJanuaResource = class(TJanuaObject)
  private
    FName: string;
    FSlug: string;
    FDescription: string;
    FProcedures: TDictionary<String, TJanuaProcedure>;
    FSelectedProcedure: TJanuaProcedure;
    FParentUrl: string;
    FParentName: string;
    procedure SetDescription(const Value: string);
    procedure SetName(const Value: string);
    procedure SetSlug(const Value: string);
    procedure SetProcedures(const Value: TDictionary<String, TJanuaProcedure>);
    function GetJsonObject: TJsonObject;
    procedure SetJsonObject(const Value: TJsonObject);
    function getJsonObjectString: TJsonObject;
    procedure setJsonObjectString(const Value: TJsonObject);
    procedure SetSelectedProcedure(const Value: TJanuaProcedure);
    function getAsJsonString: string;
    function GetAsJson: string;
    procedure SetasJson(const Value: string);
    procedure SetAsJsonString(const Value: string);
    function getUrl: string;
    function getFullName: string;
    procedure SetParentName(const Value: string);
    procedure SetParentUrl(const Value: string);
  public
    procedure AddProcedure(aProcedure: TJanuaProcedure); overload;
    procedure AddProcedure(aObject: TJsonObject); overload;
    procedure AddProcedure(aName, aDescription: string; aSlug: string; aMimeType: TJanuaMimeType); overload;
    constructor Create; override;
    constructor Create(aRemoteResource: TJanuaResource); overload;
    constructor Create(aJsonObject: TJsonObject); overload;
    constructor Create(aJsonString: string); overload;
    constructor Create(aName, aDescription: string; aSlug: string); overload;
    destructor Destroy; override;
    function FindProcedure(const aKey: string): boolean;
    function count: integer;
    procedure Assign(aResource: TJanuaResource);
    property asJson: string read GetAsJson write SetasJson;
    property AsJsonString: string read getAsJsonString write SetAsJsonString;
    property Procedures: TDictionary<String, TJanuaProcedure> read FProcedures write SetProcedures;
    property asJsonObject: TJsonObject read GetJsonObject Write SetJsonObject;
    property AsJsonObjectString: TJsonObject read getJsonObjectString Write setJsonObjectString;
    property SelectedProcedure: TJanuaProcedure read FSelectedProcedure write SetSelectedProcedure;

  published
    property Name: string read FName write SetName;
    property ParentName: string read FParentName write SetParentName;
    property FullName: string read getFullName;
    property Slug: string read FSlug write SetSlug;
    property ParentUrl: string read FParentUrl write SetParentUrl;
    property Url: string read getUrl;
    // Url is not sent or stored in a Json Object because it's embedded in the schema-resource tree....
    property Description: string read FDescription write SetDescription;
  end;

  TJanuaSchema = class(TJanuaObject)
  private
    FName: string;
    FResources: TDictionary<String, TJanuaResource>;
    FSelectedResource: TJanuaResource;
    FSlug: string;
    FDescription: string;
    function GetAsJson: string; //
    function getAsJsonString: string; //
    function GetJsonObject: TJsonObject; //
    function getJsonObjectString: TJsonObject; //
    procedure SetasJson(const Value: string); //
    procedure SetAsJsonString(const Value: string); //
    procedure SetDescription(const Value: string); //
    procedure SetJsonObject(const Value: TJsonObject); //
    procedure setJsonObjectString(const Value: TJsonObject); //
    procedure SetName(const Value: string); //
    procedure SetResources(const Value: TDictionary<String, TJanuaResource>); //
    procedure SetSelectedResource(const Value: TJanuaResource); //
    procedure SetSlug(const Value: string); //
  protected
  public
    procedure AddResource(aResource: TJanuaResource); overload; //
    procedure AddResource(aObject: TJsonObject); overload; //
    procedure AddResource(aName, aDescription, aSlug: string); overload;
    constructor Create; override; //
    constructor Create(aRemoteSchema: TJanuaSchema); overload; //
    constructor Create(aJsonObject: TJsonObject); overload; //
    constructor Create(aJsonString: string); overload; //
    constructor Create(aName, aDescription, aSlug: string); overload; //
    destructor Destroy; override; //
    function FindResource(const aKey: string): boolean;
    function count: integer; //
    procedure Assign(aSchema: TJanuaSchema); //
  published
    property asJson: string read GetAsJson write SetasJson;
    property AsJsonString: string read getAsJsonString write SetAsJsonString;
    property Resources: TDictionary<String, TJanuaResource> read FResources write SetResources;
    property Name: string read FName write SetName;
    property Slug: string read FSlug write SetSlug;
    property Description: string read FDescription write SetDescription;
    property asJsonObject: TJsonObject read GetJsonObject Write SetJsonObject;
    property AsJsonObjectString: TJsonObject read getJsonObjectString Write setJsonObjectString;
    property SelectedResource: TJanuaResource read FSelectedResource write SetSelectedResource;
  end;

  TJanuaConnector = class(TJanuaObject)
  private
    FUrl: string;
    function getHttpMethod: TJanuaHttpMethod;
    procedure SetURL(const Value: string);
    function getName: string;
    procedure SetName(const Value: string);
  protected
    FJanuaProcedure: TJanuaProcedure;
    procedure SetJanuaProcedure(const Value: TJanuaProcedure); virtual;
  public
    property JanuaProcedure: TJanuaProcedure read FJanuaProcedure write SetJanuaProcedure;
  published
    property Method: TJanuaHttpMethod read getHttpMethod;
    property Url: string read FUrl write SetURL;
    property Name: string read getName;
  end;

  // il socket sarebbe la versione server del connettore che accetta chiamate dal plug
  TJanuaSocket = class(TJanuaConnector)
  private
  public
    procedure publish; virtual; abstract;
  published
  end;

type
  TJanuaPlug = Class(TJanuaConnector)
    // A schema Client MUST connect a Socket to a procedure.
    // The Client Applications calls a Client Application the same way as a server application Does
    // The Procedure is then Executed but not locally ... a corresponding Server Method identified by
    // an URL
  private
    FHTTPClient: THTTPClient;
    FServerUrl: string;
    procedure SetFHTTPClient(const Value: THTTPClient);
    procedure SetServerUrl(const Value: string);
  protected
    procedure SetJanuaProcedure(const Value: TJanuaProcedure); override;
  published
    property HttpClient: THTTPClient read FHTTPClient write SetFHTTPClient;
    property ServerUrl: string read FServerUrl write SetServerUrl;
  End;

  TJanuaCustomAppRest = class(TJanuaCoreComponent)
    // Object session can be both a Client Session or a Server Session
    // Server Sessions uses a set of Socket Connectors while client uses Plugs
  private
    FJanuaServerSession: TJanuaServerSession;
    FJanuaSchemas: TDictionary<string, TJanuaSchema>;
    FUrl: string;
    FSelectedSchema: TJanuaSchema;
    procedure SetURL(const Value: string);
    procedure SetJanuaServerSession(const Value: TJanuaServerSession);
    procedure SetJanuaSchemas(Value: TDictionary<string, TJanuaSchema>);
    function GetCount: integer;
    procedure SetSelectedSchema(const Value: TJanuaSchema);
  public
    function FindSchema(aName: string): boolean;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property JanuaSchemas: TDictionary<string, TJanuaSchema> read FJanuaSchemas write SetJanuaSchemas;
    procedure AddSchema(aSchema: TJanuaSchema);
    property SelectedSchema: TJanuaSchema read FSelectedSchema write SetSelectedSchema;
  published
    property JanuaServerSession: TJanuaServerSession read FJanuaServerSession write SetJanuaServerSession;
    property count: integer read GetCount;
    property Url: string read FUrl write SetURL;

  end;

  TJanuaAppServer = class(TJanuaCustomAppRest)
    // Rest Application that Act As as Server this is the Server Skeleton
    // The Custom App Server MUST be converted in a Standard communication Server
  private
    FJanuaSockets: TDictionary<string, TJanuaSocket>;
    procedure SetJanuaSockets(Value: TDictionary<string, TJanuaSocket>);
    procedure SetSelectedSocket(const Value: TJanuaSocket);
  protected
    FSelectedSocket: TJanuaSocket;
    FMainSocket: TJanuaSocket;
    FJsonSocket: TJanuaSocket;
    FWebPageSocket: TJanuaSocket;
    function InternalActivate: boolean; override;
    // This procedure overrides the Internal Activate procedure. That is Virtual and Abstract method
    procedure InternalAddSocket(aProcedure: TJanuaProcedure); virtual; abstract;
    // This procedure is Virtual Abstract and needs to be implemented by a descendant according to his framework
    procedure SetMainPlug(const Value: TJanuaSocket);
    procedure SetJsonPlug(const Value: TJanuaSocket);
    procedure SetWebPagePlug(const Value: TJanuaSocket);
  public
    constructor Create(AOwner: TComponent); override;
    // il main plug ? il plug principale che serve per indicare la 'root' dell'application Server
    property MainSocket: TJanuaSocket read FMainSocket write SetMainPlug;
    property WebPageSocket: TJanuaSocket read FWebPageSocket write SetWebPagePlug;
    property JsonSocket: TJanuaSocket read FJsonSocket write SetJsonPlug;
    property JanuaSockets: TDictionary<string, TJanuaSocket> read FJanuaSockets write SetJanuaSockets;
    property SelectedSocket: TJanuaSocket read FSelectedSocket write SetSelectedSocket;
    // main url-responder of the web Server .......................................................
  published

  end;

  TJanuaAppClient = class(TJanuaCustomAppRest)
  private
    FPort: integer;
    FServerUrl: string;
    FJsonPlug: TJanuaPlug;
    FWebPagePlug: TJanuaPlug;
    FMainPlug: TJanuaPlug;
    FJanuaPlugs: TDictionary<string, TJanuaPlug>;
    FHTTPClient: THTTPClient;
    FNetHttpClient: TNetHTTPClient;
    procedure SetPort(const Value: integer);
    procedure SetServerUrl(const Value: string);
    procedure SetJsonPlug(const Value: TJanuaPlug);
    procedure SetMainPlug(const Value: TJanuaPlug);
    procedure SetWebPagePlug(const Value: TJanuaPlug);
    procedure setJanuaPlugs(const Value: TDictionary<string, TJanuaPlug>);
    procedure SetFHTTPClient(const Value: THTTPClient);
    procedure SetNetHttpClient(const Value: TNetHTTPClient);
  protected
    procedure AddPlug(aPlug: TJanuaPlug);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    // il costruttore all'avvio dell'App server deve istanziare tutti gli oggetti Server
    // i Plugs principali Main, Page, Json(REST) Plug. Ma anche l'http Client che sar? il 'motore'.
    // E il Dictionary a cui connettere tutti i Plugs del Server generati dalla lettura degli schemi.
    property MainPlug: TJanuaPlug read FMainPlug write SetMainPlug;
    property WebPagePlug: TJanuaPlug read FWebPagePlug write SetWebPagePlug;
    property JsonPlug: TJanuaPlug read FJsonPlug write SetJsonPlug;
    property JanuaPlugs: TDictionary<string, TJanuaPlug> read FJanuaPlugs write setJanuaPlugs;

  published
    property ServerUrl: string read FServerUrl write SetServerUrl;
    property Port: integer read FPort write SetPort;
    property HttpClient: THTTPClient read FHTTPClient write SetFHTTPClient;
    // The internal Http Client is set created by AppClient the NetHttpClient instead is a Component
    property NetHttpClient: TNetHTTPClient read FNetHttpClient write SetNetHttpClient;
  end;

  TJanuaAppClientWebBroker = class(TJanuaAppClient)
  private
  public
  published
  end;

  TJanuaAppClientSparkle = class(TJanuaAppClient)
  private
  public
  published
  end;

implementation

uses
  // Indy
  IdURI,
  // Spring
  Spring, Janua.Mocks.Helpers,
  // Janua
  Janua.Application.Framework, Janua.Core.Functions, Janua.Core.JSON;

{ TJanuaParam }

constructor TJanuaParam.Create(aJsonObject: TJsonObject);
begin
  Create;
  SetJsonObject(aJsonObject);

  /// by default precision is set to 6 digits
  /// length is not set both as minimimal lenth both as maximal length (-1).

end;

constructor TJanuaParam.Create(const aKey: string; aType: TJanuaFieldType; aValue: TValue);
begin
  Create;
  FKey := LowerCase(aKey);
  FJanuaProperty.PropertyType := aType;
  Value := aValue;
  FIsSet := true;
end;

constructor TJanuaParam.Create(aJson: string);
var
  aJsonObject: TJsonObject;
begin
  aJsonObject := TJsonObject.ParseJSONValue(aJson) as TJsonObject;
  Create(aJsonObject);
end;

constructor TJanuaParam.Create;
begin
  FPrecision := 6;
  FMinLength := -1;
  FMaxLength := -1;
  FIsSet := false;
end;

function TJanuaParam.getAsBoolean: boolean;
begin
  if (JanuaProperty.PropertyType = TJanuaFieldType.jptBoolean) and (FValue.IsBoolean) then
    Result := FValue.AsBoolean
  else
    Result := false;
end;

function TJanuaParam.getAsDateTime: TDateTime;
begin
  if (JanuaProperty.PropertyType in [jptDate, jptDateTime]) and
    (FValue.IsDate or FValue.IsDateTime or FValue.IsFloat or FValue.IsNumeric or FValue.IsDouble) then
    Result := FValue.AsType<TDateTime>
  else
    Result := 0;
end;

function TJanuaParam.getAsFloat: Extended;
begin
  if (JanuaProperty.PropertyType = TJanuaFieldType.jptFloat) and (FValue.IsDouble or FValue.IsFloat) then
    Result := FValue.AsExtended
  else
    Result := 0.0;
end;

function TJanuaParam.getAsInteger: integer;
begin
  if (JanuaProperty.PropertyType = TJanuaFieldType.jptInteger) and (FValue.IsInteger) then
    Result := FValue.AsInteger
  else
    Result := 0;
end;

function TJanuaParam.getAsLargeInt: Int64;
begin
  if (JanuaProperty.PropertyType = TJanuaFieldType.jptInteger) and (FValue.IsInt64) then
    Result := FValue.AsInt64
  else if (JanuaProperty.PropertyType = TJanuaFieldType.jptInteger) and (FValue.IsInteger) then
    Result := FValue.AsInt64
  else
    Result := 0;
end;

function TJanuaParam.getAsString: String;
begin
  if (JanuaProperty.PropertyType in [TJanuaFieldType.jptString, TJanuaFieldType.jptFilename,
    TJanuaFieldType.jptHtmlText, TJanuaFieldType.jptUrl]) and (FValue.IsString) then
    Result := FValue.AsString
  else if (JanuaProperty.PropertyType = TJanuaFieldType.jptInteger) and (FValue.IsInt64) then
    Result := FValue.AsInt64.ToString
  else if (JanuaProperty.PropertyType = TJanuaFieldType.jptInteger) and (FValue.IsInteger) then
    Result := FValue.AsInteger.ToString
  else
    Result := '';
end;

function TJanuaParam.getAsURIEncoded: string;
begin
  // questa procedura facilita l'invio di parametri in un metodo post/get codificando in http / html
  // il parametro da aggiungere al compando post/get per richiedere un dato o ricevere una risposta
  // o per salvare un oggetto composto da tutti i campi
  // nota: se i parametri sono scritti in un unico blocco nel body di una GET non necessitano di codifica
  case JanuaProperty.PropertyType of
    jptUnknown:
      Result := TidURI.ParamsEncode(FValue.ToString);
    jptDate:
      Result := TidURI.ParamsEncode(Janua.Core.JSON.JsonEncodeDate(FValue.AsType<TDateTime>));
    jptDateTime:
      Result := TidURI.ParamsEncode(Janua.Core.JSON.JsonEncodeDate(FValue.AsType<TDateTime>));
    jptInteger:
      Result := TidURI.ParamsEncode(FValue.AsInt64.ToString);
    jptFilename:
      Result := TidURI.ParamsEncode(FValue.ToString);
    jptString:
      Result := TidURI.ParamsEncode(FValue.ToString);
    jptFloat:
      Result := TidURI.ParamsEncode(JsonFloatToStr(FValue.AsDouble, FPrecision));
    jptHtmlText:
      Result := TidURI.ParamsEncode(FValue.ToString);
    jptRichText:
      Result := '';
    jptBoolean:
      Result := TidURI.ParamsEncode(Janua.Core.JSON.JanuaJsonBool(FValue.AsBoolean));
    jptText:
      Result := TidURI.ParamsEncode((FValue.AsString));
    jptUrl:
      Result := TidURI.ParamsEncode(FValue.AsString);
  end;

end;

function TJanuaParam.getAsUTF8Bytes: TBytes;
begin
  case JanuaProperty.PropertyType of
    jptUnknown:
      Result := TEncoding.UTF8.GetBytes('');
    jptDate:
      Result := TEncoding.UTF8.GetBytes(Janua.Core.JSON.JsonEncodeDate(FValue.AsType<TDateTime>));
    jptDateTime:
      Result := TEncoding.UTF8.GetBytes(Janua.Core.JSON.JsonEncodeDate(FValue.AsType<TDateTime>));
    jptInteger:
      Result := TEncoding.UTF8.GetBytes(FValue.AsInt64.ToString);
    jptFilename:
      Result := TEncoding.UTF8.GetBytes(FValue.ToString);
    jptString:
      Result := TEncoding.UTF8.GetBytes(FValue.ToString);
    jptFloat:
      Result := TEncoding.UTF8.GetBytes(JsonFloatToStr(FValue.AsDouble, FPrecision));
    jptHtmlText:
      Result := TEncoding.UTF8.GetBytes(FValue.ToString);
    jptRichText:
      Result := nil;
    jptBoolean:
      Result := TEncoding.UTF8.GetBytes(Janua.Core.JSON.JanuaJsonBool(FValue.AsBoolean));
    jptText:
      Result := TEncoding.UTF8.GetBytes((FValue.AsString));
    jptUrl:
      Result := TEncoding.UTF8.GetBytes(FValue.AsString);
  end;
end;

function TJanuaParam.getChecked: boolean;
begin
  Result := false;

  case JanuaProperty.PropertyType of
    jptUnknown:
      Result := false;
    jptDate:
      Result := FValue.IsDate or FValue.IsDateTime;
    jptDateTime:
      Result := FValue.IsDate or FValue.IsDateTime;
    jptInteger:
      Result := FValue.IsInteger or FValue.IsInt64 or FValue.IsSmallInt;
    jptFilename:
      Result := FValue.IsString;
    jptString:
      Result := FValue.IsString;
    jptFloat:
      Result := FValue.IsDouble or FValue.IsFloat or FValue.IsCurrency;
    jptHtmlText:
      Result := FValue.IsObject or FValue.IsClass or FValue.IsString;
    jptRichText:
      Result := FValue.IsObject or FValue.IsClass or FValue.IsString;
    jptBoolean:
      Result := FValue.IsBoolean;
    jptUrl:
      Result := FValue.IsString;
  end;

  Result := Result and FIsSet;
end;

function TJanuaParam.getIsSet: boolean;
begin
  Result := FIsSet;
end;

function TJanuaParam.GetJsonObject: System.JSON.TJsonObject;
begin
  Result := System.JSON.TJsonObject.Create;

  Janua.Core.JSON.JsonPair(Result, 'key', FKey);
  Janua.Core.JSON.JsonPair(Result, 'type', FJanuaProperty.Name);
  Janua.Core.JSON.JsonPair(Result, 'value', GetJsonValue);
  Janua.Core.JSON.JsonPair(Result, 'isset', FIsSet);
  {
    Result.AddPair(TJsonPair.Create('key', TJSONString.Create(FKey)));
    Result.AddPair(TJsonPair.Create('type', TJSONString.Create(FJanuaProperty.Name)));
    Result.AddPair(TJsonPair.Create('value', getJsonValue));
  }

  if MaxLength > 0 then
    Janua.Core.JSON.JsonPair(Result, 'maxlen', FMaxLength);
  if FMandatory then
    Janua.Core.JSON.JsonPair(Result, 'required', FMandatory);
  // Result.AddPair('required', TJsonBool(FMandatory));
  if FJanuaProperty.PropertyType = jptFloat then
    Janua.Core.JSON.JsonPair(Result, 'precision', FPrecision);
  // Result.AddPair('precision', TJSONNumber.Create(FPrecision));

end;

function TJanuaParam.getJsonObjectString: TJsonObject;
begin
  Result := TJsonObject.Create;
  // First is the Key of the parameter (key-volue couple).
  Result.AddPair(TJsonPair.Create('key', TJSONString.Create(FKey)));
  // Then
  Result.AddPair(TJsonPair.Create('type', TJSONString.Create(FJanuaProperty.Name)));

  case JanuaProperty.PropertyType of
    jptUnknown:
      Result.AddPair('value', FValue.AsString);
    // Janua Date Format .....................................................
    jptDate:
      if (Value.IsDate or Value.IsDateTime or Value.IsFloat) then
        Result.AddPair('value', TJSONString.Create(FormatDateTime('yyyy-mm-dd', FValue.AsType<TDateTime>)));
    jptDateTime:
      if (Value.IsDate or Value.IsDateTime or Value.IsFloat) then
        Result.AddPair('value', TJSONString.Create(FormatDateTime('yyyy-mm-dd', FValue.AsType<TDateTime>)));
    jptBoolean:
      if Value.IsBoolean then
        Result.AddPair('value', TJSONString.Create(Janua.Core.JSON.JanuaJsonBool(FValue.AsBoolean)));
    jptInteger:
      if (Value.IsShortInt or Value.IsInt64 or Value.IsInteger or Value.IsShortInt or Value.IsSmallInt) then
        Result.AddPair('value', TJSONString.Create(Value.ToString));
    jptFilename:
      Result.AddPair('value', TJSONString.Create(FValue.AsString));
    jptString:
      Result.AddPair('value', TJSONString.Create(FValue.AsString));
    jptFloat:
      if (Value.IsDouble or Value.IsFloat or Value.IsSingle) then
        Result.AddPair('value', TJSONString.Create(JsonFloatToStr(Value.AsDouble, FPrecision)));
    jptHtmlText:
      Result.AddPair('value', TJSONString.Create(FValue.AsString));
    jptRichText:
      Result.AddPair('value', TJSONString.Create(FValue.AsString));
    jptUrl:
      Result.AddPair('value', TJSONString.Create(FValue.AsString));
  end;
end;

function TJanuaParam.GetParamType: TJanuaFieldType;
begin
  Result := FJanuaProperty.PropertyType;
end;

function TJanuaParam.getUrlEncoded: string;
begin
  // TNetEncoding.URL
  case FJanuaProperty.PropertyType of
    jptUnknown:
      Result := TNetEncoding.Url.Encode(FValue.AsString);
    jptDateTime:
      if (Value.IsDate or Value.IsDateTime or Value.IsFloat) then
        Result := (TNetEncoding.Url.Encode(FormatDateTime('yyyy-mm-dd', FValue.AsType<TDateTime>)));
    jptDate:
      if (Value.IsDate or Value.IsDateTime or Value.IsFloat) then
        Result := (TNetEncoding.Url.Encode(FormatDateTime('yyyy-mm-dd', FValue.AsType<TDateTime>)));
    jptBoolean:
      if Value.IsBoolean then
      begin
        if FValue.AsBoolean then
          Result := TNetEncoding.Url.Encode('true')
        else
          Result := TNetEncoding.Url.Encode('false')
      end;
    jptInteger:
      if Value.IsShortInt or Value.IsInt64 or Value.IsInteger then
        Result := (TNetEncoding.Url.Encode(Value.AsInt64.ToString));
    jptFilename:
      Result := (TNetEncoding.Url.Encode(FValue.AsString));
    jptString:
      if FValue.IsString then
        Result := TNetEncoding.Url.Encode(FValue.AsString);
    jptFloat:
      if Value.IsDouble or Value.IsFloat or Value.IsSingle then
        Result := TNetEncoding.Url.Encode(Janua.Core.JSON.JsonFloatToStr(Value.AsDouble, 6));
    jptHtmlText:
      Result := TNetEncoding.Url.Encode(FValue.AsString);
    jptRichText:
      Result := TNetEncoding.Url.Encode(FValue.AsString);
    jptUrl:
      Result := TNetEncoding.Url.Encode(FValue.AsString);
  end;

end;

function TJanuaParam.GetJsonValue: System.JSON.TJsonValue;
begin
  Result := nil;
  case FJanuaProperty.PropertyType of
    jptUnknown:
      Result := TJSONString.Create(FValue.AsString);
    jptDateTime:
      if (Value.IsDate or Value.IsDateTime or Value.IsFloat) then
        Result := (System.JSON.TJSONString.Create(FormatDateTime('yyyy-mm-dd', FValue.AsType<TDateTime>)));
    jptDate:
      if (Value.IsDate or Value.IsDateTime or Value.IsFloat) then
        Result := (System.JSON.TJSONString.Create(FormatDateTime('yyyy-mm-dd', FValue.AsType<TDateTime>)));
    jptBoolean:
      if Value.IsBoolean then
        Result := (System.JSON.TJsonBool.Create(FValue.AsBoolean));
    jptInteger:
      if Value.IsShortInt or Value.IsInt64 or Value.IsInteger then
        Result := (System.JSON.TJSONNumber.Create(Value.AsInt64));
    jptFilename:
      Result := (System.JSON.TJSONString.Create(FValue.AsString));
    jptString:
      if FValue.IsString then
        Result := (System.JSON.TJSONString.Create(FValue.AsString));
    jptFloat:
      if Value.IsDouble or Value.IsFloat or Value.IsSingle then
        Result := (System.JSON.TJSONNumber.Create(Value.AsDouble));
    jptHtmlText:
      Result := (System.JSON.TJSONString.Create(FValue.AsString));
    jptRichText:
      Result := (System.JSON.TJSONString.Create(FValue.AsString));
    jptUrl:
      Result := (System.JSON.TJSONString.Create(FValue.AsString));
  else
    Result := TJSONString.Create('');
  end;
end;

procedure TJanuaParam.setAsBoolean(const Value: boolean);
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue(Value);
        JanuaProperty.PropertyType := TJanuaFieldType.jptBoolean;
      end;
    jptDateTime:
      raise Exception.Create('Param Conversion Boolean to Date not supported');
    jptDate:
      raise Exception.Create('Conversion Boolean to Date not supported');
    jptBoolean:
      FValue := TValue.From<boolean>(Value);
    jptInteger:
      FValue := TValue.From<Int64>(Value.ToInteger);
    jptFilename:
      raise Exception.Create('Conversion Boolean to Filename not supported');
    jptString:
      FValue := TValue(Value.ToString());
    jptFloat:
      FValue := TValue.From<Double>(Value.ToInteger * 1.0);
    jptHtmlText:
      FValue := TValue.From<string>(Value.ToString());
    jptRichText:
      FValue := TValue.From<string>(Value.ToString);
    jptUrl:
      raise Exception.Create('Conversion Boolean to URL not supported');
  end;

  FIsSet := true;
end;

procedure TJanuaParam.setAsDateTime(const Value: TDateTime);
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue.From<TDateTime>(Value);
        JanuaProperty.PropertyType := TJanuaFieldType.jptDateTime;
      end;
    jptDateTime:
      FValue := (Value);
    jptDate:
      FValue := (Value);
    jptBoolean:
      FValue := (Value <> 0);
    jptInteger:
      FValue := (trunc(Value));
    jptFilename:
      raise Exception.Create('Conversion Float to Filename not supported');
    jptString:
      FValue := (Janua.Core.JSON.JsonEncodeDateTime(Value));
    jptFloat:
      FValue := (Value);
    jptHtmlText:
      FValue := (Janua.Core.JSON.JsonEncodeDateTime(Value));
    jptRichText:
      FValue := (Janua.Core.JSON.JsonEncodeDateTime(Value));
    jptUrl:
      raise Exception.Create('Conversion Float to URL not supported');
  end;
  FIsSet := true;
end;

procedure TJanuaParam.setAsFloat(const Value: Extended);
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue(Value);
        JanuaProperty.PropertyType := TJanuaFieldType.jptFloat;
      end;
    jptDateTime:
      FValue.From<TDateTime>(Value);
    jptDate:
      FValue.From<TDateTime>(Value);
    jptBoolean:
      FValue := (Value <> 0);
    jptInteger:
      FValue := (trunc(Value));
    jptFilename:
      raise Exception.Create('Conversion Float to Filename not supported');
    jptString:
      FValue := TValue.From<String>(Value.ToString());
    jptFloat:
      FValue := (Value);
    jptHtmlText:
      FValue := (Value.ToString());
    jptRichText:
      FValue := (Value.ToString);
    jptUrl:
      raise Exception.Create('Conversion Float to URL not supported');
  end;
  FIsSet := true;
end;

procedure TJanuaParam.setAsInteger(const Value: integer);
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue.From<integer>(Value);
        JanuaProperty.PropertyType := TJanuaFieldType.jptInteger;
      end;
    jptDateTime:
      FValue.From<TDateTime>(Value * 1.0);
    jptDate:
      FValue.From<TDateTime>(Value * 1.0);
    jptBoolean:
      FValue := FValue.From<boolean>(Value <> 0);
    jptInteger:
      FValue := Value;
    TJanuaFieldType.jptLargeInt:
      FValue := Value;
    jptFilename:
      raise Exception.Create('Conversion Integer to Filename not supported');
    jptString:
      FValue := TValue.From<String>(Value.ToString());
    jptFloat:
      FValue := TValue.From<Double>(Value * 1.0);
    jptHtmlText:
      FValue := TValue.From<string>(Value.ToString());
    jptRichText:
      FValue := TValue.From<string>(Value.ToString);
    jptUrl:
      raise Exception.Create('Conversion Float to URL not supported');
  end;
  FIsSet := true;
end;

procedure TJanuaParam.setAsLargeInt(const Value: Int64);
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue.From<integer>(Value);
        JanuaProperty.PropertyType := TJanuaFieldType.jptLargeInt;
      end;
    jptDateTime:
      FValue.From<TDateTime>(Value * 1.0);
    jptDate:
      FValue.From<TDateTime>(Value * 1.0);
    jptBoolean:
      FValue := FValue.From<boolean>(Value <> 0);
    jptInteger:
      FValue := FValue.From<Int64>((Value));
    jptFilename:
      raise Exception.Create('Conversion Integer to Filename not supported');
    jptString:
      FValue := TValue.From<String>(Value.ToString());
    jptFloat:
      FValue := TValue.From<Double>(Value * 1.0);
    jptHtmlText:
      FValue := TValue.From<string>(Value.ToString());
    jptRichText:
      FValue := TValue.From<string>(Value.ToString);
    jptUrl:
      raise Exception.Create('Conversion Float to URL not supported');
  end;
  FIsSet := true;
end;

procedure TJanuaParam.setAsString(const aValue: String);
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := Value;
        /// TValue.From<string>(aValue);
        JanuaProperty.PropertyType := TJanuaFieldType.jptString;
      end;
    jptDateTime:
      FValue := Janua.Core.JSON.JsonDecodeDate(aValue);
    // FValue.From<TDateTime>(Janua.Core.Json.JsonDecodeDate(Value));
    jptDate:
      FValue := Janua.Core.JSON.JsonDecodeDate(aValue);
    // FValue.From<TDateTime>(Janua.Core.Json.JsonDecodeDate(Value));
    jptBoolean:
      FValue := FValue.From<boolean>(aValue.ToBoolean);
    jptInteger:
      FValue := aValue.ToInteger;
    // FValue.From<Int64>(Value.ToInteger());
    jptFilename:
      FValue := aValue; // FValue.From<TFileName>(aValue);
    jptString:
      FValue := aValue;
    jptFloat:
      FValue := aValue.ToExtended;
    // TValue.From<Extended>(Value.ToExtended);
    jptHtmlText:
      FValue := aValue; // TValue.From<string>(Value);
    jptRichText:
      FValue := aValue;
    jptUrl:
      FValue := aValue; // TValue.From<string>(TidURI.URLEncode(Value));
  end;
  FIsSet := true;
end;

procedure TJanuaParam.setAsURIEncoded(const Value: string);
begin

end;

procedure TJanuaParam.SetCheckMessage(const Value: string);
begin
  FCheckMessage := Value;
end;

procedure TJanuaParam.SetDefaultValue;
begin
  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue(nil);
      end;
    jptDate:
      begin
        FValue := TValue(Janua.Core.JSON.JsonDecodeDate('1900-01-01'));
      end;
    jptDateTime:
      begin
        FValue := TValue(Janua.Core.JSON.JsonDecodeDate('1900-01-01'));
      end;
    jptInteger:
      begin
        FValue := TValue(-1);
      end;
    jptLargeInt:
      begin
        FValue := TValue(-1);
      end;
    jptFilename:
      begin
        FValue := TValue('');
      end;
    jptString:
      begin
        FValue := TValue('');
      end;
    jptFloat:
      begin
        FValue := TValue(0.0);
      end;
    jptHtmlText:
      begin
        FValue := TValue('');
      end;
    jptRichText:
      begin
        FValue := TValue('');
      end;
    jptBoolean:
      begin
        FValue := TValue(false);
      end;
    jptText:
      begin
        FValue := TValue('');
      end;
    jptBytes:
      begin
        FValue := TValue(nil);
      end;
    jptUrl:
      begin
        FValue := TValue('');
      end;
  end;

  FIsSet := false;
end;

procedure TJanuaParam.SetIsSet(const Value: boolean);
begin
  if not Value then
    Unset;
end;

procedure TJanuaParam.SetJanuaProperty(const Value: TJanuaProperty);
begin
  FJanuaProperty := Value;
end;

procedure TJanuaParam.SetJsonObject(aJsonObject: TJsonObject);
var
  aString: string;
  aInteger: integer;
  aInt64: Int64;
  aDouble: Double;
  aIsSet: boolean;
begin
  FKey := aJsonObject.getValue('key').Value;
  FJanuaProperty.Name := aJsonObject.getValue('type').Value;
  aString := aJsonObject.getValue('value').Value;

  if Assigned(aJsonObject.getValue('isset')) then
  begin
    FIsSet := not(aJsonObject.getValue('isset').Value.ToLower = 'false');
  end;

  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := TValue(aString);
      end;
    jptDate:
      begin
        FValue := TValue(Janua.Core.JSON.JsonDecodeDate(aString));
      end;
    jptDateTime:
      begin
        FValue := TValue(Janua.Core.JSON.JsonDecodeDate(aString));
      end;
    jptInteger:
      begin
        aInteger := aString.ToInteger;
        FValue := TValue(aInteger);
      end;
    jptLargeInt:
      begin
        aInt64 := aString.ToInt64;
        FValue := TValue(aInt64);
      end;
    jptFilename:
      begin
        FValue := TValue(aString);
      end;
    jptString:
      begin
        FValue := TValue(aString);
      end;
    jptFloat:
      begin
        aDouble := Janua.Core.JSON.JsonStringToFloat(aString);
        FValue := TValue(aDouble);
      end;
    jptHtmlText:
      begin
        FValue := TValue(aString);
      end;
    jptRichText:
      ;
    jptBoolean:
      ;
    jptText:
      ;
    jptBytes:
      ;
    jptUrl:
      begin
        FValue := TValue(aString);
      end;
  end;
  FIsSet := true;
end;

procedure TJanuaParam.setJsonObjectString(const Value: TJsonObject);
begin

end;

procedure TJanuaParam.SetKey(const Value: string);
begin
  FKey := Value;
end;

procedure TJanuaParam.SetMandatory(const Value: boolean);
begin
  FMandatory := Value;
end;

procedure TJanuaParam.SetMaxLength(const Value: integer);
begin
  FMaxLength := Value;
end;

procedure TJanuaParam.SetMinLength(const Value: smallint);
begin
  FMinLength := Value;
end;

procedure TJanuaParam.SetParamType(const Value: TJanuaFieldType);
begin
  FJanuaProperty.PropertyType := Value;
end;

procedure TJanuaParam.SetPrecision(const Value: smallint);
begin
  FPrecision := Value;
end;

procedure TJanuaParam.setValue(const Value: TValue);
// var
// aTypeInfo: TTypeKind;
begin
  FValue := Value;

  // aTypeInfo := FValue.TypeInfo.Kind;

  case FJanuaProperty.PropertyType of
    jptUnknown:
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptDate:
      begin
        if not(Value.IsDateTime or Value.IsDate or Value.IsFloat) then
          raise (Exception.Create('Parameter not of integer Type. Class: TJanuaParam'))
        else
        begin
          FValue := Value;
          FIsSet := true;
        end;
      end;

    jptDateTime:

      if not(Value.IsDateTime or Value.IsDate or Value.IsFloat) then
        raise (Exception.Create('Parameter not of TDateTime Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptInteger:
      if not(Value.IsInteger or Value.IsInt64) then
        raise (Exception.Create('Parameter not of integer Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptFilename:
      if not Value.IsString then
        raise (Exception.Create('Parameter not of string Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptString:
      if not Value.IsString then
        raise (Exception.Create('Parameter not of string Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptFloat:
      if not(Value.IsDouble or Value.IsFloat) then
        raise (Exception.Create('Parameter not of Float Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptHtmlText:
      if not Value.IsString then
        raise (Exception.Create('Parameter not of string Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptRichText:
      if Value.IsInteger or Value.IsDate or Value.IsFloat or Value.IsDouble then
        raise (Exception.Create('Parameter not of Blob Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;

    jptUrl:
      if not Value.IsString then
        raise (Exception.Create('Parameter not of string Type. Class: TJanuaParam'))
      else
      begin
        FValue := Value;
        FIsSet := true;
      end;
  end;

end;

procedure TJanuaParam.Unset;
begin
  FIsSet := false;
  case FJanuaProperty.PropertyType of
    TJanuaFieldType.jptDate:
      FValue.From<TDateTime>(Now);
    TJanuaFieldType.jptDateTime:
      FValue.From<TDateTime>(Now);
    TJanuaFieldType.jptInteger:
      FValue.From<integer>(0);
    TJanuaFieldType.jptLargeInt:
      FValue.From<Int64>(0);
    TJanuaFieldType.jptFilename:
      FValue.From<string>('');
    TJanuaFieldType.jptString:
      FValue.From<string>('');
    TJanuaFieldType.jptFloat:
      FValue.From<Extended>(0.0);
    TJanuaFieldType.jptHtmlText:
      FValue.From<string>('');
    TJanuaFieldType.jptRichText:
      FValue.From<string>('');
    TJanuaFieldType.jptBoolean:
      FValue.From<boolean>(false);
    TJanuaFieldType.jptText:
      FValue.From<string>('');
    TJanuaFieldType.jptUrl:
      FValue.From<string>('');
    TJanuaFieldType.jptBytes:
      FValue.From<TBytes>(nil);
  end;
end;

{ TJanuaParams }

constructor TJanuaParams.Create;
begin
  inherited;
  FParams := TDictionary<String, TJanuaParam>.Create;
  FJson := TStringList.Create;
  FJsonRaw := TStringList.Create;
end;

constructor TJanuaParams.Create(aJsonObject: TJsonObject);
begin
  Create;
  SetJsonObject(aJsonObject);
end;

destructor TJanuaParams.Destroy;
begin
  FParams.Free;
  FJson.Free;
  FJsonRaw.Free;
  inherited;
end;

function TJanuaParams.ExtractParam(const aKey: string): TJanuaParam;
begin
  Result := nil;
  if FParams.ContainsKey(aKey) then
    Result := FParams.ExtractPair(aKey).Value;
end;

function TJanuaParams.find(const aKey: string): boolean;
begin
  Result := FParams.ContainsKey(aKey.ToLower);
  if Result then
    FParams.TryGetValue(aKey, FSelectedParam);
end;

function TJanuaParams.getAsHttpUrlGetString: string;
var
  aUrl: string;
  aParam: TJanuaParam;
  i: integer;
begin
  aUrl := '';
  i := 0;
  for aParam in FParams.Values do
  begin
    if i = 0 then
      aUrl := aUrl + '?'
    else
      aUrl := aUrl + '&';
    aUrl := aUrl + aParam.AsURIEncoded;
  end;
end;

function TJanuaParams.GetAsJson: TStrings;
begin
  Result := nil;
  if Assigned(FJsonRaw) then
  begin
    FJson.Clear;
    FJson.Append(GetJsonObject.ToJSON);
    Result := FJson;
  end;
  if not Assigned(Result) then
  begin
    Result := TStringList.Create;
    Result.Add('{}');
  end;
end;

function TJanuaParams.GetAsJsonRaw: TStrings;
begin
  Result := nil;
  if Assigned(FJsonRaw) then
  begin
    FJsonRaw.Clear;
    FJsonRaw.Append(GetJsonObject.ToString);
    Result := FJsonRaw;
  end
  else
  begin
    Result := TStringList.Create;
    Result.Add('{}')
  end;
end;

function TJanuaParams.getChecked: boolean;
var
  aParam: TJanuaParam;
begin
  Result := false;
  { TODO : Implement TJanuaParams.GetChecked }
end;

function TJanuaParams.GetCount: integer;
begin
  Result := FParams.count;
end;

function TJanuaParams.GetJsonObject: TJsonObject;
var
  aParam: TJanuaParam;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  aJsonArray := TJsonArray.Create;
  for aParam in FParams.Values do
    aJsonArray.AddElement(aParam.asJsonObject);
  if FName = '' then
    Result.AddPair('params', aJsonArray)
  else
    Result.AddPair(Name, aJsonArray);
end;

function TJanuaParams.getJsonObjectString: TJsonObject;
var
  aParam: TJanuaParam;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  aJsonArray := TJsonArray.Create;

  for aParam in FParams.Values do
    aJsonArray.AddElement(aParam.AsJsonObjectString);
  if FName = '' then
    Result.AddPair('params', aJsonArray)
  else
    Result.AddPair(Name, aJsonArray);
end;

function TJanuaParams.getJsonPretty: string;
begin
  Result := Janua.Core.JSON.JsonPrettyoLD(GetJsonObject, true)
end;

function TJanuaParams.getJsonPrettyRaw: string;
begin
  Result := Janua.Core.JSON.JsonPrettyRaw(GetJsonObject, false)
end;

function TJanuaParams.getJsonString: string;
begin
  Result := Janua.Core.JSON.JsonPrettyoLD(getJsonObjectString, false);
end;

function TJanuaParams.ParamByName(const aKey: string): TJanuaParam;
begin
  if Assigned(FSelectedParam) and (FSelectedParam.FKey.ToLower = aKey.ToLower) then
    Result := FSelectedParam
  else if find(LowerCase(aKey)) then
    Result := FSelectedParam
  else
    Result := nil;
end;

procedure TJanuaParams.SetAsHttpPostMultiPart(const Value: TMultipartFormData);
begin
  FAsHttpPostMultiPart := Value;
end;

procedure TJanuaParams.SetAsHttpUrlGetString(const Value: string);
begin
  FAsHttpUrlGetString := Value;
end;

procedure TJanuaParams.SetAsHttpUrlPostStrings(const Value: TStrings);
begin
  FAsHttpUrlPostStrings := Value;
end;

procedure TJanuaParams.SetasJson(const Value: TStrings);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;
  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(Value.Text), 0);

    if vParsed > 0 then
    begin
      SetJsonObject(LJSONObject);
    end;

  finally
    LJSONObject.Free;
  end;

end;

procedure TJanuaParams.SetAsJsonRaw(const Value: TStrings);
begin

end;

procedure TJanuaParams.SetParams(const Value: TDictionary<String, TJanuaParam>);
begin
  if Assigned(Value) then
    FParams := Value;
end;

procedure TJanuaParams.Unset;
var
  aParam: TJanuaParam;
begin
  for aParam in FParams.Values do
    aParam.isSet := false;
end;

function TJanuaParams.setValue(const aKey: string; aValue: Int64): boolean;
begin
  Result := find(aKey);
  if Result then
    FSelectedParam.AsLargeInt := aValue;
end;

function TJanuaParams.setValue(const aKey: string; aValue: Word): boolean;
begin
  Result := find(aKey);
  if Result then
    FSelectedParam.AsInteger := aValue;
end;

function TJanuaParams.Update(const aKey: string; aType: TJanuaFieldType; aValue: TValue): boolean;
begin
  Result := FParams.ContainsKey(aKey);
  if Result then
  begin
    FParams.Remove(aKey);
    Add(aKey, aType, aValue)
  end;
end;

function TJanuaParams.Update(aParam: TJanuaParam): boolean;
begin
  Result := FParams.ContainsKey(aParam.Key);
  if Result then
  begin
    FParams.Remove(aParam.Key);
    FParams.Add(aParam.Key, aParam);
  end;
end;

procedure TJanuaParams.SetJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
begin
  FParams.Clear;
  aPair := Value.Get('params');
  if Assigned(aPair) then
    for aValue in (aPair.JsonValue as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      Add(aObject);
    end;
end;

procedure TJanuaParams.setJsonObjectString(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
begin
  FParams.Clear;
  aPair := Value.Get('params');
  if Assigned(aPair) then
    for aValue in (aPair.JsonValue as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      Add(aObject);
    end;
end;

procedure TJanuaParams.setJsonString(const Value: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;
  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(Value), 0);

    if vParsed > 0 then
    begin
      setJsonObjectString(LJSONObject);
    end;

  finally
    LJSONObject.Free;
  end;

end;

procedure TJanuaParams.SetName(const Value: string);
begin
  FName := Value;
end;

function TJanuaParams.Add(aParam: TJanuaParam): TJanuaParam;
begin
  Result := aParam;
  FParams.Add(aParam.Key.ToLower, aParam);
end;

function TJanuaParams.Add(aJsonObject: TJsonObject): TJanuaParam;
begin
  Result := TJanuaParam.Create(aJsonObject);
  FParams.Add(aJsonObject.getValue('key').Value.ToLower, Result);
  // Result := Add(aJsonObject.GetValue('key').Value, TJanuaFieldType.jptString,
  // aJsonObject.GetValue('value').Value);
end;

function TJanuaParams.Add(const aKey: string; aType: TJanuaFieldType; aValue: TValue): TJanuaParam;
begin
  if not FParams.ContainsKey(LowerCase(aKey)) then
  begin
    FSelectedParam := TJanuaParam.Create(LowerCase(aKey), aType, aValue);
    FParams.Add(aKey.ToLower, FSelectedParam);
  end
  else
  begin
    FParams.TryGetValue(LowerCase(aKey), FSelectedParam);
  end;

  Result := FSelectedParam;
end;

procedure TJanuaParams.Assign(const aParams: TJanuaParams);
var
  aParam: TJanuaParam;
begin
  FParams.Clear;
  if aParams.Params.count > 0 then
  begin
    for aParam in aParams.Params.Values do
    begin
      FParams.Add(aParam.FKey, aParam);
    end;

  end;

end;

constructor TJanuaParams.Create(aJsonString: string);
begin
  Create;
  setJsonString(aJsonString);
end;

procedure TJanuaParams.Clear;
begin
  FParams.Clear;
end;

constructor TJanuaParams.Create(aJsonStrings: TStrings);
begin
  Create;
  SetasJson(aJsonStrings);
end;

constructor TJanuaParams.Create(const aParams: TJanuaParams);
begin
  Create;
  Assign(aParams);
end;

function TJanuaParams.Add(const aKey: string; aValue: TFileName): TJanuaParam;
begin
  Result := Add(aKey, TJanuaFieldType.jptFilename, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: TDateTime): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptDateTime, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: boolean): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptBoolean, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: TStrings): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptText, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: TBytes): TJanuaParam;
var
  aBlob: TJanuaBlob;
begin
  /// TValue does not Manage TBytes Directly but ... can Hold a TJanuaBlob Object instead
  aBlob.AsBytes := aValue;

  Result := Add(aKey.ToLower, TJanuaFieldType.jptBytes, TValue(aBlob.Encoded64));
  // Verificare che poi il Free del aBlob non generi un Errore ......
end;

function TJanuaParams.Add(const aKey: string; aValue: Extended): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptFloat, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: Int64): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptBytes, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: integer): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptInteger, TValue(aValue))
end;

function TJanuaParams.Add(const aKey: string; aValue: Double): TJanuaParam;
begin
  Result := Add(aKey.ToLower, TJanuaFieldType.jptFloat, TValue(aValue))
end;

{ TJanuaObjectSession }

procedure TJanuaCustomAppRest.AddSchema(aSchema: TJanuaSchema);
begin
  FSelectedSchema := aSchema;
  FJanuaSchemas.Add(aSchema.FName.ToLower, aSchema);

end;

constructor TJanuaCustomAppRest.Create(AOwner: TComponent);
begin
  inherited;
  FJanuaSchemas := TDictionary<string, TJanuaSchema>.Create;
end;

destructor TJanuaCustomAppRest.Destroy;
begin
  FJanuaSchemas.Free;
  inherited;
end;

function TJanuaCustomAppRest.FindSchema(aName: string): boolean;
begin
  Result := FJanuaSchemas.ContainsKey(aName.ToLower.Trim);
  // per prima cosa controllo che la risorsa richiesta sia presente
  if Result then
    FJanuaSchemas.TryGetValue(aName.ToLower.Trim, FSelectedSchema);
  // se s? allora importo la variabile FSelectedResource al valore della risorsa richiesta.
end;

function TJanuaCustomAppRest.GetCount: integer;
begin
  Result := FJanuaSchemas.count
end;

procedure TJanuaCustomAppRest.SetURL(const Value: string);
begin
  FUrl := Value;
end;

procedure TJanuaCustomAppRest.SetJanuaSchemas(Value: TDictionary<string, TJanuaSchema>);
begin

end;

procedure TJanuaCustomAppRest.SetJanuaServerSession(const Value: TJanuaServerSession);
begin
  FJanuaServerSession := Value;
end;

procedure TJanuaCustomAppRest.SetSelectedSchema(const Value: TJanuaSchema);
begin
  FSelectedSchema := Value;
end;

{ TJanuaProcedure }

constructor TJanuaProcedure.Create;
begin
  inherited;
  FMimeType := TJanuaMime.Create;
  FContent := TJanuaContent.Create;
  FParamsOUT := TJanuaParams.Create;
  FParamsIN := TJanuaParams.Create;
end;

constructor TJanuaProcedure.Create(aRemoteProcedure: TJanuaProcedure);
begin
  Create;
  Assign(aRemoteProcedure);
end;

constructor TJanuaProcedure.Create(aJsonObject: TJsonObject);
begin
  Create;
  SetJsonObject(aJsonObject);
end;

constructor TJanuaProcedure.Create(aJsonString: string);
var
  aJsonObject: TJsonObject;
begin
  aJsonObject := TJsonObject.ParseJSONValue(aJsonString) as TJsonObject;
  // se non ? arrivato un valido Json Creo una procedura Vuota, potrei anche sollevare exception
  if not Assigned(aJsonObject) then
    Create
  else
    Create(aJsonObject);
end;

procedure TJanuaProcedure.Assign(aRemoteProcedure: TJanuaProcedure);
begin
  FName := aRemoteProcedure.Name;
  FDescription := aRemoteProcedure.Description;
  FSlug := aRemoteProcedure.Slug;
  FProcedureType := aRemoteProcedure.ProcedureType;
  ClearParams;
  FParamsOUT.Assign(aRemoteProcedure.ParamsOUT);
  FParamsIN.Assign(aRemoteProcedure.ParamsIN);
  FMimeType.Assign(aRemoteProcedure.MimeType);
end;

procedure TJanuaProcedure.ClearParams;
begin
  FParamsOUT.Clear;
  FParamsIN.Clear;
end;

constructor TJanuaProcedure.Create(aName, aDescription: string; aSlug: String; aMimeType: TJanuaMimeType);
begin
  Create;
  FName := aName;
  FSlug := aSlug;
  FDescription := aDescription;
  FMimeType.MimeType := aMimeType;
end;

destructor TJanuaProcedure.Destroy;
begin
  FMimeType.Free;
  FContent.Free;
  FParamsOUT.Free;
  FParamsIN.Free;
  inherited;
end;

function TJanuaProcedure.Execute: boolean;
begin
  { TOnProcedureExecute = procedure(var vParamsIN, vParamsOUT: TJanuaParams;
    var vContent: TJanuaContent; var aResult: boolean) of object; }

  try
    if Assigned(FOnNeedDataset) then
      FOnNeedDataset(self);

    Result := false;

    FContent.Clear;

    if Assigned(FOnProcedureExecute) then
      FOnProcedureExecute(FParamsIN, FParamsOUT, FContent, Result);

    if Assigned(FOnReleaseDataset) then
      FOnReleaseDataset(self);

  except
    on E: Exception do
      WriteError('TJanuaProcedure.Execute ', FName + FParamsIN.asJsonPretty, E);

  end;
end;

function TJanuaProcedure.getFullName: string;
begin
  Result := FParentName + '.' + FName;
end;

function TJanuaProcedure.GetJson: string;
begin
  Result := Janua.Core.JSON.JsonPretty(GetJsonObject);
end;

function TJanuaProcedure.GetJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('name', TJSONString.Create(FName));
  Result.AddPair('description', TJSONString.Create(FDescription));
  Result.AddPair('kind', TJSONString.Create(JanuaProcedureTypeString[FProcedureType]));
  Result.AddPair('mime', TJSONString.Create(FMimeType.MimeString));
  Result.AddPair('charset', TJSONString.Create(FMimeType.CharsetString));
  Result.AddPair('slug', TJSONString.Create(FSlug));

  if Assigned(FParamsIN) then
    Result.AddPair(TJsonPair.Create('in', FParamsIN.asJsonObject));
  if Assigned(FParamsOUT) then
    Result.AddPair(TJsonPair.Create('out', FParamsOUT.asJsonObject));
end;

function TJanuaProcedure.getJsonObjectString: TJsonObject;
begin
  Result := TJsonObject.Create;
  Result.AddPair('name', TJSONString.Create(FName));
  Result.AddPair('description', TJSONString.Create(FDescription));
  Result.AddPair('kind', TJSONString.Create(JanuaProcedureTypeString[FProcedureType]));
  Result.AddPair('mime', TJSONString.Create(FMimeType.MimeString));
  Result.AddPair('charset', TJSONString.Create(FMimeType.CharsetString));
  Result.AddPair('slug', TJSONString.Create(FSlug));

  if Assigned(FParamsIN) then
    Result.AddPair(TJsonPair.Create('in', FParamsIN.AsJsonObjectString));
  if Assigned(FParamsOUT) then
    Result.AddPair(TJsonPair.Create('out', FParamsOUT.AsJsonObjectString));
end;

procedure TJanuaProcedure.SetJsonObject(const Value: TJsonObject);
begin
  FName := Value.getValue('name').Value;
  FDescription := Value.getValue('description').Value;
  FProcedureType := DecodeProcedureTypeString(Value.getValue('description').Value);
  FMimeType.MimeString := Value.getValue('mime').Value;
  FMimeType.CharsetString := Value.getValue('charset').Value;
  FProcedureType := DecodeProcedureTypeString(Value.getValue('kind').Value);
  FSlug := Value.getValue('slug').Value;
  FParamsIN.SetJsonObject(Value.getValue('in') as TJsonObject);
  FParamsOUT.SetJsonObject(Value.getValue('out') as TJsonObject);
end;

function TJanuaProcedure.getJsonString: string;
begin
  Result := JsonPretty(GetJsonObject.ToJSON);
end;

function TJanuaProcedure.getUrl: string;
begin
  Result := LowerCase(FParentUrl + '/' + FSlug);
end;

procedure TJanuaProcedure.SetContent(const Value: TJanuaContent);
begin
  FContent := Value;
end;

procedure TJanuaProcedure.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TJanuaProcedure.SetHttpMethod(const Value: TJanuaHttpMethod);
begin
  FHttpMethod := Value;
end;

procedure TJanuaProcedure.SetJson(const Value: string);
begin
  SetJsonObject(TJsonObject.ParseJSONValue(Value) as TJsonObject);
end;

procedure TJanuaProcedure.setJsonObjectString(const Value: TJsonObject);
begin

end;

procedure TJanuaProcedure.setJsonString(const Value: string);
begin

end;

procedure TJanuaProcedure.SetMimeType(const Value: TJanuaMime);
begin
  FMimeType := Value;
end;

procedure TJanuaProcedure.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaProcedure.SetOnNeedDataset(const Value: TOnNeedDataset);
begin
  FOnNeedDataset := Value;
end;

procedure TJanuaProcedure.SetOnProcedureExecute(const Value: TOnProcedureExecute);
begin
  FOnProcedureExecute := Value;
end;

procedure TJanuaProcedure.SetOnReleaseDataset(const Value: TOnReleaseDataset);
begin
  FOnReleaseDataset := Value;
end;

procedure TJanuaProcedure.SetParamsIN(const Value: TJanuaParams);
begin
  FParamsIN := Value;
end;

procedure TJanuaProcedure.SetParamsOUT(const Value: TJanuaParams);
begin
  FParamsOUT := Value;
end;

procedure TJanuaProcedure.SetParentName(const Value: string);
begin
  if FParentName <> Value then
  begin
    FParentName := Value;
  end;
end;

procedure TJanuaProcedure.SetParentUrl(const Value: string);
begin
  FParentUrl := Value;
end;

procedure TJanuaProcedure.SetProcedureType(const Value: TJanuaProcedureType);
begin
  FProcedureType := Value;
  case FProcedureType of
    jprProcedure:
      FHttpMethod := TJanuaHttpMethod.jhmGet;
    jprScript:
      FHttpMethod := TJanuaHttpMethod.jhmGet;
    jprPage:
      FHttpMethod := TJanuaHttpMethod.jhmGet;
    jprStoredProcedure:
      FHttpMethod := TJanuaHttpMethod.jhmGet;
    jprDSSelect:
      FHttpMethod := TJanuaHttpMethod.jhmGet;
    jprDSInsert:
      FHttpMethod := TJanuaHttpMethod.jhmPost;
    jprDSUpdate:
      FHttpMethod := TJanuaHttpMethod.jhmPut;
    jprDSDelete:
      FHttpMethod := TJanuaHttpMethod.jhmDelete;
    jprUnknown:
      FHttpMethod := TJanuaHttpMethod.jhmGet;
  end;
end;

procedure TJanuaProcedure.SetRemoteProcedure(const Value: TJanuaProcedure);
begin
  FRemoteProcedure := Value;
end;

procedure TJanuaProcedure.SetSlug(const Value: String);
begin
  FSlug := Value;
end;

procedure TJanuaProcedure.Unset;
begin
  UnSetParams;
  FContent.Unset;

end;

procedure TJanuaProcedure.UnSetParams;
begin
  FParamsOUT.Unset;
  FParamsIN.Unset;
end;

{ TJanuaResource }

procedure TJanuaResource.AddProcedure(aProcedure: TJanuaProcedure);
begin
  if Assigned(FProcedures) then
  begin
    if not FProcedures.ContainsKey(aProcedure.Name) then
      FProcedures.Add(aProcedure.Name, aProcedure);
    FProcedures.TryGetValue(aProcedure.Name, FSelectedProcedure);
    FSelectedProcedure.ParentName := FullName;
    FSelectedProcedure.ParentUrl := Url;
  end;
end;

constructor TJanuaResource.Create;
begin
  inherited Create;
  FProcedures := TDictionary<String, TJanuaProcedure>.Create;
end;

constructor TJanuaResource.Create(aJsonString: string);
begin
  Create;
  SetasJson(aJsonString);
end;

constructor TJanuaResource.Create(aJsonObject: TJsonObject);
begin
  Create;
  SetJsonObject(aJsonObject);
end;

constructor TJanuaResource.Create(aRemoteResource: TJanuaResource);
begin
  Create;
  Assign(aRemoteResource);
end;

procedure TJanuaResource.AddProcedure(aName, aDescription, aSlug: string; aMimeType: TJanuaMimeType);
begin
  // questa funzione  aggiunge una procedura (se non gi? esistente con medesimo nome)
  // alla lista delle procedure della Risorsa.
  if not FProcedures.ContainsKey(aName.ToLower) then
  begin
    FSelectedProcedure := TJanuaProcedure.Create(aName, aDescription, aSlug, aMimeType);
    FSelectedProcedure.ParentName := FullName;
    FSelectedProcedure.ParentUrl := Url;
    FProcedures.Add(aName.ToLower, FSelectedProcedure);
  end
  else
  begin
    FProcedures.TryGetValue(aName.ToLower, FSelectedProcedure);
  end;
end;

procedure TJanuaResource.AddProcedure(aObject: TJsonObject);
begin
  AddProcedure(TJanuaProcedure.Create(aObject));
  FSelectedProcedure.ParentName := FullName;
  FSelectedProcedure.ParentUrl := Url;
end;

procedure TJanuaResource.Assign(aResource: TJanuaResource);
var
  aProcedure: TJanuaProcedure;
begin
  FName := aResource.Name;
  FSlug := aResource.Slug;
  FDescription := aResource.Description;
  { aName, aDescription: string; aSlug: string; aMimeType: TJanuaMimeType }
  Procedures.Clear;
  for aProcedure in aResource.Procedures.Values do
  begin
    AddProcedure(aProcedure.Name, aProcedure.Description, aProcedure.Slug, aProcedure.MimeType.MimeType);
    FSelectedProcedure.Assign(aProcedure);
    FSelectedProcedure.ParentName := FullName;
    SelectedProcedure.ParentUrl := Url;
  end;

end;

function TJanuaResource.count: integer;
begin
  Result := FProcedures.count;
end;

constructor TJanuaResource.Create(aName, aDescription: string; aSlug: String);
begin
  Create;
  FName := aName;
  FDescription := aDescription;
  FSlug := aSlug;
end;

procedure TJanuaResource.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TJanuaResource.SetJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aObject: TJsonObject;
begin
  FName := Value.getValue('name').Value;
  FSlug := Value.getValue('slug').Value;
  FDescription := Value.getValue('description').Value;

  FProcedures.Clear;
  if Assigned(Value.getValue('procedures')) then
    for aValue in (Value.getValue('procedures') as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      AddProcedure(aObject);
    end;
end;

procedure TJanuaResource.setJsonObjectString(const Value: TJsonObject);
begin
  SetJsonObject(Value);
end;

procedure TJanuaResource.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaResource.SetParentName(const Value: string);
var
  aProcedure: TJanuaProcedure;
begin
  if FParentName <> Value then
  begin
    FParentName := Value;
    if FProcedures.count > 0 then
      for aProcedure in FProcedures.Values do
        aProcedure.ParentName := FullName;
  end;
end;

procedure TJanuaResource.SetParentUrl(const Value: string);
var
  aProcedure: TJanuaProcedure;
begin
  if FParentUrl <> Value then
  begin
    FParentUrl := Value;
    if FProcedures.count > 0 then
      for aProcedure in FProcedures.Values do
        aProcedure.ParentUrl := Url;
  end;
end;

procedure TJanuaResource.SetProcedures(const Value: TDictionary<String, TJanuaProcedure>);
begin
  FProcedures := Value;
end;

procedure TJanuaResource.SetSelectedProcedure(const Value: TJanuaProcedure);
begin
  FSelectedProcedure := Value;
end;

procedure TJanuaResource.SetSlug(const Value: String);
begin
  FSlug := Value.ToLower;
end;

destructor TJanuaResource.Destroy;
begin

  inherited;
end;

function TJanuaResource.FindProcedure(const aKey: string): boolean;
begin
  Result := FProcedures.ContainsKey(aKey.ToLower);
  if Result then
    FProcedures.TryGetValue(aKey, FSelectedProcedure);
end;

function TJanuaResource.GetAsJson: string;
begin
  Result := Janua.Core.JSON.JsonPretty(GetJsonObject)
end;

function TJanuaResource.getAsJsonString: string;
begin
  Result := Janua.Core.JSON.JsonPretty(getJsonObjectString)
end;

function TJanuaResource.getFullName: string;
begin
  Result := FParentName + '.' + FName;
end;

function TJanuaResource.GetJsonObject: TJsonObject;
var
  aProcedure: TJanuaProcedure;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'name', FName);
  Janua.Core.JSON.JsonPair(Result, 'slug', FSlug);
  Janua.Core.JSON.JsonPair(Result, 'description', FDescription);
  Janua.Core.JSON.JsonPair(Result, 'procedurescount', FProcedures.count);
  aJsonArray := TJsonArray.Create;
  for aProcedure in FProcedures.Values do
    aJsonArray.AddElement(aProcedure.asJsonObject);
  Result.AddPair('procedures', aJsonArray);

end;

function TJanuaResource.getJsonObjectString: TJsonObject;
var
  aProcedure: TJanuaProcedure;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'name', FName);
  Janua.Core.JSON.JsonPair(Result, 'slug', FSlug);
  Janua.Core.JSON.JsonPair(Result, 'description', FDescription);
  Janua.Core.JSON.JsonPair(Result, 'procedurescount', FProcedures.count.ToString);
  aJsonArray := TJsonArray.Create;
  for aProcedure in FProcedures.Values do
    aJsonArray.AddElement(aProcedure.AsJsonObjectString);
  Result.AddPair('procedures', aJsonArray);

end;

function TJanuaResource.getUrl: string;
begin

end;

procedure TJanuaResource.SetasJson(const Value: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;
  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(Value), 0);
    if vParsed > 0 then
    begin
      SetJsonObject(LJSONObject);
    end;
  finally
    LJSONObject.Free;
  end;
end;

procedure TJanuaResource.SetAsJsonString(const Value: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;

begin
  LJSONObject := nil;
  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(Value), 0);
    if vParsed > 0 then
    begin
      setJsonObjectString(LJSONObject);
    end;
  finally
    LJSONObject.Free;
  end;

end;

function TJanuaParams.setValue(const aKey: string; aValue: integer): boolean;
begin
  Result := find(aKey);
  if Result then
    FSelectedParam.AsInteger := aValue;
end;

function TJanuaParams.setValue(const aKey: string; aValue: Extended): boolean;
begin
  Result := find(aKey);
  if Result then
    FSelectedParam.AsFloat := aValue;
end;

function TJanuaParams.setValue(const aKey: string; aValue: boolean): boolean;
begin
  Result := find(aKey);
  if Result then
    FSelectedParam.AsBoolean := aValue;
end;

function TJanuaParams.setValue(const aKey, aValue: string): boolean;
begin
  Result := find(aKey);
  if Result then
    FSelectedParam.AsString := aValue;
end;

{ TJanuaConnector }

function TJanuaConnector.getHttpMethod: TJanuaHttpMethod;
begin
  Result := TJanuaHttpMethod.jhmNone;
  if Assigned(FJanuaProcedure) then
    Result := FJanuaProcedure.HttpMethod;
  // A Socket or a Plug cannot change the HttpMethod Requested by a Procedure.
end;

function TJanuaConnector.getName: string;
begin
  Result := FJanuaProcedure.FullName;
end;

procedure TJanuaConnector.SetJanuaProcedure(const Value: TJanuaProcedure);
begin
  // imposta il puntatore alla procedura a cui punta il Plug.
  FJanuaProcedure := Value;
  Url := FJanuaProcedure.Url;
end;

procedure TJanuaConnector.SetName(const Value: string);
begin

end;

procedure TJanuaConnector.SetURL(const Value: string);
begin
  FUrl := Value;
end;

procedure TJanuaSchema.AddResource(aResource: TJanuaResource);
begin
  if Assigned(FResources) then
  begin
    if not FResources.ContainsKey(aResource.Name) then
    begin
      FSelectedResource := aResource;
      FSelectedResource.FParentUrl := FSlug;
      FSelectedResource.FParentName := FName;
      FResources.Add(aResource.Name, FSelectedResource);
    end;
  end;
end;

procedure TJanuaSchema.AddResource(aObject: TJsonObject);
begin
  AddResource(TJanuaResource.Create(aObject));
end;

procedure TJanuaSchema.AddResource(aName, aDescription, aSlug: string);
begin
  // questa funzione  aggiunge una procedura (se non gi? esistente con medesimo nome)
  // alla lista delle procedure della Risorsa.
  if not FResources.ContainsKey(aName.ToLower) then
  begin
    FSelectedResource := TJanuaResource.Create(aName, aDescription, aSlug);
    FSelectedResource.FParentUrl := FSlug;
    FSelectedResource.FParentName := FName;
    FResources.Add(aName.ToLower, FSelectedResource);
  end
  else
  begin
    FResources.TryGetValue(aName.ToLower, FSelectedResource);
  end;
end;

procedure TJanuaSchema.Assign(aSchema: TJanuaSchema);
var
  aResource: TJanuaResource;
begin
  FName := aSchema.Name;
  FSlug := aSchema.Slug;
  FDescription := aSchema.Description;
  { aName, aDescription: string; aSlug: string; aMimeType: TJanuaMimeType }
  FResources.Clear;
  for aResource in aSchema.Resources.Values do
  begin
    AddResource(aResource.Name, aResource.Description, aResource.Slug);
    SelectedResource.Assign(aResource);
  end;

end;

function TJanuaSchema.count: integer;
begin
  Result := FResources.count;
end;

constructor TJanuaSchema.Create(aJsonString: string);
begin
  Create;
  SetasJson(aJsonString);
end;

constructor TJanuaSchema.Create(aName, aDescription, aSlug: string);
begin
  Create;
  FName := aName;
  FDescription := aDescription;
  FSlug := aSlug;
end;

constructor TJanuaSchema.Create;
begin
  inherited;
  FResources := TDictionary<String, TJanuaResource>.Create;
end;

constructor TJanuaSchema.Create(aRemoteSchema: TJanuaSchema);
begin
  Create;
  Assign(aRemoteSchema);
end;

constructor TJanuaSchema.Create(aJsonObject: TJsonObject);
begin
  Create;
  SetJsonObject(aJsonObject);
end;

destructor TJanuaSchema.Destroy;
begin
  FResources.Free;
  inherited;
end;

function TJanuaSchema.FindResource(const aKey: string): boolean;
begin
  Result := FResources.ContainsKey(aKey.ToLower);
  // per prima cosa controllo che la risorsa richiesta sia presente
  if Result then
    FResources.TryGetValue(aKey, FSelectedResource);
  // se s? allora importo la variabile FSelectedResource al valore della risorsa richiesta.
end;

function TJanuaSchema.GetAsJson: string;
begin
  Result := Janua.Core.JSON.JsonPretty(GetJsonObject)
end;

function TJanuaSchema.getAsJsonString: string;
begin
  Result := Janua.Core.JSON.JsonPretty(getJsonObjectString)
end;

function TJanuaSchema.GetJsonObject: TJsonObject;
var
  aResource: TJanuaResource;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'name', FName);
  Janua.Core.JSON.JsonPair(Result, 'slug', FSlug);
  Janua.Core.JSON.JsonPair(Result, 'description', FDescription);
  Janua.Core.JSON.JsonPair(Result, 'count', FResources.count);
  aJsonArray := TJsonArray.Create;
  for aResource in FResources.Values do
    aJsonArray.AddElement(aResource.asJsonObject);
  Result.AddPair('resources', aJsonArray);

end;

function TJanuaSchema.getJsonObjectString: TJsonObject;
var
  aResource: TJanuaResource;
  aJsonArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'name', FName);
  Janua.Core.JSON.JsonPair(Result, 'slug', FSlug);
  Janua.Core.JSON.JsonPair(Result, 'description', FDescription);
  Janua.Core.JSON.JsonPair(Result, 'count', FResources.count.ToString);
  aJsonArray := TJsonArray.Create;
  for aResource in FResources.Values do
    aJsonArray.AddElement(aResource.AsJsonObjectString);
  Result.AddPair('resources', aJsonArray);

end;

procedure TJanuaSchema.SetasJson(const Value: string);
var
  LJSONObject: TJsonObject;
  vParsed: integer;
begin
  LJSONObject := nil;
  try
    LJSONObject := TJsonObject.Create;
    { convert String to JSON }
    vParsed := LJSONObject.Parse(BytesOf(Value), 0);
    if vParsed > 0 then
    begin
      SetJsonObject(LJSONObject);
    end;
  finally
    LJSONObject.Free;
  end;

end;

procedure TJanuaSchema.SetAsJsonString(const Value: string);
begin
  SetasJson(Value);
end;

procedure TJanuaSchema.SetDescription(const Value: string);
begin
  FDescription := Value;
end;

procedure TJanuaSchema.SetJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aObject: TJsonObject;
begin
  FName := Value.getValue('name').Value;
  FSlug := Value.getValue('slug').Value;
  FDescription := Value.getValue('description').Value;

  FResources.Clear;
  if Assigned(Value.getValue('resources')) then
    for aValue in (Value.getValue('resources') as TJsonArray) do
    begin
      aObject := (aValue as TJsonObject);
      AddResource(aObject);
    end;

end;

procedure TJanuaSchema.setJsonObjectString(const Value: TJsonObject);
begin
  SetJsonObject(Value);
end;

procedure TJanuaSchema.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TJanuaSchema.SetResources(const Value: TDictionary<String, TJanuaResource>);
begin
  FResources := Value;
end;

procedure TJanuaSchema.SetSelectedResource(const Value: TJanuaResource);
begin
  FSelectedResource := Value;
end;

procedure TJanuaSchema.SetSlug(const Value: string);
begin
  FSlug := Value;
end;

{ TJanuaPlug }

procedure TJanuaPlug.SetFHTTPClient(const Value: THTTPClient);
begin
  FHTTPClient := Value;
end;

procedure TJanuaPlug.SetJanuaProcedure(const Value: TJanuaProcedure);
begin
  inherited;

end;

procedure TJanuaPlug.SetServerUrl(const Value: string);
begin
  FServerUrl := Value;
end;

{ TJanuaAppClient }

procedure TJanuaAppClient.AddPlug(aPlug: TJanuaPlug);
begin
  aPlug.HttpClient := FHTTPClient;
  FJanuaPlugs.Add(aPlug.Url, aPlug);
end;

constructor TJanuaAppClient.Create(AOwner: TComponent);
begin
  inherited;
  FHTTPClient := THTTPClient.Create;
  FJsonPlug := TJanuaPlug.Create;
  FJsonPlug.FHTTPClient := FHTTPClient;
  FWebPagePlug := TJanuaPlug.Create;
  FWebPagePlug.HttpClient := FHTTPClient;
  FMainPlug := TJanuaPlug.Create;
  FMainPlug.HttpClient := FHTTPClient;
  FJanuaPlugs := TDictionary<string, TJanuaPlug>.Create;

end;

destructor TJanuaAppClient.Destroy;
begin
  FJsonPlug.Free;
  FWebPagePlug.Free;
  FMainPlug.Free;
  FJanuaPlugs.Free;
  FHTTPClient.Free;
  inherited;
end;

procedure TJanuaAppClient.SetFHTTPClient(const Value: THTTPClient);
begin
  FHTTPClient := Value;
end;

procedure TJanuaAppClient.setJanuaPlugs(const Value: TDictionary<string, TJanuaPlug>);
begin
  FJanuaPlugs := Value;
end;

procedure TJanuaAppClient.SetJsonPlug(const Value: TJanuaPlug);
begin
  FJsonPlug := Value;
end;

procedure TJanuaAppClient.SetMainPlug(const Value: TJanuaPlug);
begin
  FMainPlug := Value;
end;

procedure TJanuaAppClient.SetNetHttpClient(const Value: TNetHTTPClient);
begin
  FNetHttpClient := Value;
end;

procedure TJanuaAppClient.SetPort(const Value: integer);
begin
  FPort := Value;
end;

procedure TJanuaAppClient.SetServerUrl(const Value: string);
begin
  FServerUrl := Value;
end;

procedure TJanuaAppClient.SetWebPagePlug(const Value: TJanuaPlug);
begin
  FWebPagePlug := Value;
end;

{ TJanuaAppServer }

constructor TJanuaAppServer.Create(AOwner: TComponent);
begin
  inherited;
  FJanuaSockets := TDictionary<string, TJanuaSocket>.Create;
end;

function TJanuaAppServer.InternalActivate: boolean;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited and Assigned(FJsonSocket);
      if Result then
      begin

      end;
    except
      on E: Exception do
        RaiseException('InternalActivate', E, self);
    end;
end;

procedure TJanuaAppServer.SetJanuaSockets(Value: TDictionary<string, TJanuaSocket>);
begin
  FJanuaSockets := Value;
end;

procedure TJanuaAppServer.SetJsonPlug(const Value: TJanuaSocket);
begin
  FJsonSocket := Value;
end;

procedure TJanuaAppServer.SetMainPlug(const Value: TJanuaSocket);
begin
  FMainSocket := Value;
end;

procedure TJanuaAppServer.SetSelectedSocket(const Value: TJanuaSocket);
begin
  FSelectedSocket := Value;
end;

procedure TJanuaAppServer.SetWebPagePlug(const Value: TJanuaSocket);
begin
  FWebPageSocket := Value;
end;

{ TJanuaConfig }

constructor TJanuaConfig.Create;
begin
  inherited;
  FJanuaParams := TDictionary<String, TJanuaParams>.Create;
end;

destructor TJanuaConfig.Destroy;
begin
  FJanuaParams.Free;
  inherited;
end;

function TJanuaConfig.ReadParam(const sKey, sParam: string; sDefaul: boolean): boolean;
var
  aParams: TJanuaParams;
begin
  Result := false;
  if FJanuaParams.TryGetValue(sKey, aParams) and aParams.find(sParam) then
    Result := aParams.SelectedParam.AsBoolean;
end;

function TJanuaConfig.ReadParam(const sKey, sParam, sDefaul: string): string;
var
  aParams: TJanuaParams;
begin
  Result := '';
  if FJanuaParams.TryGetValue(sKey, aParams) and aParams.find(sParam) then
    Result := aParams.SelectedParam.AsString;
end;

function TJanuaConfig.ReadParam(const sKey, sParam: string; sDefaul: Double): Double;
var
  aParams: TJanuaParams;
begin
  Result := 0.0;
  if FJanuaParams.TryGetValue(sKey, aParams) and aParams.find(sParam) then
    Result := aParams.SelectedParam.AsFloat;
end;

function TJanuaConfig.ReadParam(const sKey, sParam: string; sDefaul: Extended): Extended;
var
  aParams: TJanuaParams;
begin
  Result := 0.0;
  if FJanuaParams.TryGetValue(sKey, aParams) and aParams.find(sParam) then
    Result := aParams.SelectedParam.AsFloat;
end;

function TJanuaConfig.ReadParam(const sKey, sParam: string; sDefaul: integer): integer;
var
  aParams: TJanuaParams;
begin
  Result := 0;
  if FJanuaParams.TryGetValue(sKey, aParams) and aParams.find(sParam) then
    Result := aParams.SelectedParam.AsInteger;

end;

procedure TJanuaConfig.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TJanuaConfig.SetJanuaParams(const Value: TDictionary<String, TJanuaParams>);
begin
  FJanuaParams := Value;
end;

procedure TJanuaConfig.SetSelectedParams(const Value: TJanuaParams);
begin
  FSelectedParams := Value;
end;

{ TJanuaCustomField }

function TJanuaCustomField.GetAsJsonMetadata: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.JSON.JsonPair(Result, 'name', FKey);

end;

procedure TJanuaCustomField.getKey(const Value: string);
begin
  FKey := Value;
end;

function TJanuaCustomField.GetMaxLength: integer;
begin
  Result := FMaxLength;
end;

function TJanuaCustomField.GetMinLength: smallint;
begin
  Result := FMinLength;
end;

function TJanuaCustomField.GetPrecision: smallint;
begin
  Result := FPrecision;
end;

procedure TJanuaCustomField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  Janua.Core.JSON.JsonValue(Value, 'name', FKey);

end;

procedure TJanuaCustomField.SetDBField(const Value: string);
begin
  FDBField := Value;
end;

procedure TJanuaCustomField.SetFieldType(const Value: TJanuaProperty);
begin
  FFieldType := Value;
end;

procedure TJanuaCustomField.SetMaxLength(const Value: integer);
begin

end;

procedure TJanuaCustomField.SetMinLength(const Value: smallint);
begin

end;

procedure TJanuaCustomField.SetPrecision(const Value: smallint);
begin

end;

{ TJanuaRecord }

constructor TJanuaLegacyRecord.Create;
begin
  FFields := TDictionary<string, TJanuaCustomField>.Create;
end;

destructor TJanuaLegacyRecord.Destroy;
begin
  FFields.Free;
  inherited;
end;

function TJanuaLegacyRecord.getAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
end;

function TJanuaLegacyRecord.GetFieldCount: integer;
begin
  Result := FFields.count
end;

procedure TJanuaLegacyRecord.SetAsJsonMetadata(const Value: TJsonObject);
begin
  FAsJsonMetadata := Value;
end;

procedure TJanuaLegacyRecord.SetasJsonObject(const Value: TJsonObject);
begin

end;

{ TJanuaLargeIntField }

function TJanuaLargeIntField.getAsBoolean: boolean;
begin
  Result := FInternalValue <> 0;

end;

function TJanuaLargeIntField.getAsDateTime: TDateTime;
begin
  Result := InternalValue;
end;

function TJanuaLargeIntField.getAsFloat: Extended;
begin
  Result := InternalValue;
end;

function TJanuaLargeIntField.getAsInteger: integer;
begin
  Result := InternalValue;
end;

function TJanuaLargeIntField.getAsLargeInt: Int64;
begin
  Result := InternalValue;
end;

function TJanuaLargeIntField.getAsString: String;
begin
  Result := InternalValue.ToString;
end;

function TJanuaLargeIntField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaLargeIntField.GetJson: string;
begin
  Result := GetJsonPair.ToJSON;
end;

function TJanuaLargeIntField.GetJsonPair: TJsonPair;
begin
  Result := Janua.Core.JSON.JsonPair(FKey, InternalValue);
end;

function TJanuaLargeIntField.GetJsonValue: TJsonValue;
begin
  Result := TJSONNumber.Create(FInternalValue)
end;

function TJanuaLargeIntField.getValue: Variant;
begin
  Result := FInternalValue
end;

procedure TJanuaLargeIntField.setAsBoolean(const Value: boolean);
begin

end;

procedure TJanuaLargeIntField.setAsDateTime(const Value: TDateTime);
begin

end;

procedure TJanuaLargeIntField.setAsFloat(const Value: Extended);
begin

end;

procedure TJanuaLargeIntField.setAsInteger(const Value: integer);
begin

end;

procedure TJanuaLargeIntField.setAsLargeInt(const Value: Int64);
begin

end;

procedure TJanuaLargeIntField.setAsString(const aValue: String);
begin

end;

procedure TJanuaLargeIntField.SetInternalValue(const Value: Int64);
begin
  FInternalValue := Value;
end;

procedure TJanuaLargeIntField.SetJson(Value: string);
begin

end;

procedure TJanuaLargeIntField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaLargeIntField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaLargeIntField.setValue(const Value: Variant);
begin

end;

end.
