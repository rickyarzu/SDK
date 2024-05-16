unit Janua.Orm.Impl;

interface

uses
  // System
  System.Classes, System.Json, System.SysUtils, System.Rtti,
  // Bindings
  System.Bindings.Expression, System.Bindings.Helper,
  // DB, RTL, .....
  Data.DB,
  // OS specifi
  // Third Party Libs
  Spring, Spring.Collections,
  // Janua Types
  Janua.Rest.Types, Janua.Core.DB.Types, Janua.Orm.Types, Janua.Core.Types,
  // Janua Interfaces
  Janua.Html.Intf, Janua.Core.Classes.Intf, Janua.Orm.Intf,
  // Janua Framework
  Janua.Core.Classes, Janua.Core.DB;

type
  TNotifyProcedure = reference to procedure(aPropertyName: string);

  TFieldCharCase = (fcNoChange, fcLowerCase, fcUpperCase);

type
  TJanuaDBField = class(TInterfacedObject, IJanuaDBField)
  private
    FDBField: TField;
    FGridFieldDef: TJanuaGridFieldDef;
    FGUID: TGUID;
    FIsNull: Boolean;
  protected
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    function GetDBField: TField;
    function GetGridFieldDef: TJanuaGridFieldDef;
    function GetIsNull: Boolean;
    procedure SetDBField(const Value: TField);
    procedure SetGridFieldDef(const Value: TJanuaGridFieldDef);
    procedure SetIsNull(const Value: Boolean);
  public
    constructor Create(const aField: TField; const aGUID: TGUID);
  public
    property DBField: TField read GetDBField write SetDBField;
    property GridFieldDef: TJanuaGridFieldDef read GetGridFieldDef write SetGridFieldDef;
    property GUID: TGUID read GetGUID write SetGUID;
    property IsNull: Boolean read GetIsNull write SetIsNull;
  end;

  TJanuaDBFields = class(TInterfacedObject, IJanuaDBFields)
  private
    FDBFields: IDictionary<string, IJanuaDBField>;
    FGridFields: IList<IJanuaDBField>;
  protected
    function GetItems(Index: string): IJanuaDBField;
    procedure SetItems(Index: string; const Value: IJanuaDBField);
    function GetFieldCount: Integer;
    function GetGridFields: IList<IJanuaDBField>;
    function GetDBFields: IDictionary<string, IJanuaDBField>;
    function Add(const aField: IJanuaDBField): IJanuaDBField; overload;
    function Add(const aField: TField; const aAddToGrid: Boolean): IJanuaDBField; overload;
    procedure AddFieldToGrid(const aField: IJanuaDBField); overload;
    procedure AddFieldToGrid(const aFieldName: string); overload;
    procedure MoveUP(const aField: IJanuaDBField); overload;
    procedure MoveUP(const aFieldName: string); overload;
    procedure ChangePos(const aField: IJanuaDBField; const aFieldPos: Integer);
  public
    constructor Create(const aDataset: TDataset); overload;
    constructor Create; overload;
  public
    property Fields: IDictionary<string, IJanuaDBField> read GetDBFields;
    property FieldCount: Integer read GetFieldCount;
    property GridFields: IList<IJanuaDBField> read GetGridFields;
    property Items[Index: string]: IJanuaDBField read GetItems write SetItems; default;
  end;

type
  TJanuaSearchContainer = class(TJanuaInterfacedObject, IJanuaSearchContainer)
  private
    FLookupField: string;
    FKeyField: string;
    FGroupID: Integer;
    FLookupValue: string;
    function GetKeyValue: string;
  strict protected
    FFieldOwner: IJanuaField;
    FCallBackSearch: TProc<Integer>;
    FKeyValue: string;
    FEntityType: TJanuaEntity;
    FContainerType: TSearchContainerType;
    procedure SetEntityType(const Value: TJanuaEntity);
    procedure SetContainerType(const Value: TSearchContainerType);
    procedure SetLookupValue(const Value: string);
    procedure SetKeyValue(const Value: string); virtual;
  protected
    function GetContainerType: TSearchContainerType;
    function GetFieldOwner: IJanuaField;
    function GetGroupID: Integer;
    function GetKeyField: string;
    function GetValueField: string;
    procedure SetKeyField(const Value: string);
    procedure SetValueField(const Value: string);
    property LookupField: string read GetValueField write SetValueField;
    procedure SetCallBackSearch(const Value: TProc<Integer>); virtual;
    function GetCallBackSearch: TProc<Integer>;
    function GetLookupValue: string;
    function GetEntityType: TJanuaEntity;
  public
    Constructor Create(const aGroupID: Integer; aFieldOwner: IJanuaField); overload; virtual;
  public
    /// <summary> When after async search an action is needed (check values, calculate, populate we must provide a
    /// callback procedure <Integer> is usually the number of records retrieved can be 0, 1, or N records </summary>
    /// type: TProc<Integer>
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    property ContainerType: TSearchContainerType read GetContainerType;
    property EntityType: TJanuaEntity read GetEntityType write SetEntityType;
    property FieldOwner: IJanuaField read GetFieldOwner;
    property GroupID: Integer read GetGroupID;
    property KeyField: string read GetKeyField write SetKeyField;
    property KeyValue: string read GetKeyValue write SetKeyValue;
    property LookupValue: string read GetLookupValue write SetLookupValue;
  end;

  TSearchContainerClass = class of TJanuaSearchContainer;

  // IJanuaSearchListContainer = interface(IJanuaSearchContainer)
  TJanuaSearchListContainer = class(TJanuaSearchContainer, IJanuaSearchListContainer, IJanuaSearchContainer)
  private
    FLookupList: IList<TKeyValue>;
    FLookupDict: IDictionary<string, string>;
  strict protected
    procedure SetKeyValue(const Value: string); override;
  protected
    function GetLookupList: IList<TKeyValue>;
    function GetKeyCount: Integer;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    procedure AddKeyValue(const aKey, aValue: string); overload;
    procedure AddKeyValue(const aKeyValue: TKeyValue); overload;
  public
    property LookupList: IList<TKeyValue> read GetLookupList;
    property KeyCount: Integer read GetKeyCount;
  end;

  TJanuaSearchRadioContainer = class(TJanuaSearchListContainer, IJanuaSearchRadioContainer,
    IJanuaSearchContainer)
  public
    constructor Create; override;
  end;

  TJanuaSearchDatasetContainer = class(TJanuaSearchContainer, IJanuaSearchDatasetContainer,
    IJanuaSearchContainer)
  private
    FLookupDataset: IJanuaDBDataset;
  protected
    function GetJanuaDBDataset: IJanuaDBDataset;
  strict protected
    procedure SetKeyValue(const Value: string); override;
  public
    /// <summary> Constructor to manage an 'Injected' DBDataset </summary>
    /// <param name="aDataset">   Dataset to be 'cloned' or Injected </param>
    /// <param name="aCreateCache">  Create a Dataset Clone if Set to True </param>
    constructor Create(aDataset: IJanuaDBDataset; const aCreateCache: Boolean = False); overload;
    property JanuaDBDataset: IJanuaDBDataset read GetJanuaDBDataset;
  end;

  TJanuaCustomField = class(TJanuaInterfacedBindableObject)
  strict private
    FVisible: Boolean;
    FFieldGUID: TGUID;
    FKey: string;
    FTitle: string;
    FIsSet: Boolean;
    FIsNull: Boolean;
    FMaxLength: Integer;
    FPrecision: Smallint;
    FMinLength: Smallint;
    // FCheckMessage: string;
    FMandatory: Boolean;
    FFieldType: TJanuaFieldType;
    FFieldKind: TJanuaFieldKind;
    FDBField: string;
    FMappedField: TField;
    FCalculated: Boolean;
    FIsReadOnly: Boolean;
    FHtmlObject: IJanuaHtmlObject;
    FFieldIndex: Integer;
    FReadFromMappedField: TProc;
    FEnabled: Boolean;
    FOperator: TJanuaOperator;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aFieldType: TJanuaFieldType; aIsMonitored: Boolean = False;
      aFieldKind: TJanuaFieldKind = jfkData); overload;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); overload; virtual; abstract;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    // class function New(const aKey, aField: string; const aIsMonitored: boolean = false): IJanuaField; static;
  private
    FIsMonitored: Boolean;
    function GetGridFieldDef: TJanuaGridFieldDef;
    function GetIsMonitored: Boolean;
    procedure SetGridFieldDef(const Value: TJanuaGridFieldDef);
    procedure SetIsMonitored(const aValue: Boolean);
  private
    FGridFieldDef: TJanuaGridFieldDef;
    FIsEntityKey: Boolean;
    FLookupField: IJanuaField;
    FLookupList: TJanuaLookupID;
    FOnFieldDataChange: TFieldChangeEvent;
    FNotifyProcedure: TNotifyProcedure;
    FSearchContainer: IJanuaSearchContainer;
    FAfterLoadRecord: TProc;
    procedure SetAfterLoadRecord(const Value: TProc);
  protected
    function GetFieldGUID: TGUID;
    function GetLookupList: TJanuaLookupID;
    function GetOnFieldDataChange: TFieldChangeEvent;
    procedure SetLookupList(const Value: TJanuaLookupID);
    procedure SetOnDataChage(const aValue: TFieldChangeEvent);
    procedure SetNotifyProcedure(const Value: TNotifyProcedure);
    function GetFieldKind: TJanuaFieldKind;
    procedure SetFieldKind(const Value: TJanuaFieldKind);
    procedure SetFieldGUID(const Value: TGUID);
    procedure CheckParamValue;
    function GetSearchContainer: IJanuaSearchContainer;
    procedure SetSearchContainer(const Value: IJanuaSearchContainer);
  public
    property NotifyProcedure: TNotifyProcedure read FNotifyProcedure write SetNotifyProcedure;
  strict private
    function IsMappedField(out aField: TField): Boolean;
    function TryGetField(const aDataset: TDataset; out aField: TField): Boolean;
  protected
    function GetFieldIndex: Integer;
    procedure SetFieldIndex(const Value: Integer);
    function GetMaxLength: Integer;
    function GetMinLength: Smallint;
    function GetPrecision: Smallint;
    procedure SetAsJsonMetadata(const aValue: TJsonObject);
    function GetAsJsonMetadata: TJsonObject;
    procedure SetFieldType(const aValue: TJanuaFieldType);
    procedure SetMaxLength(const aValue: Integer);
    procedure SetMinLength(const aValue: Smallint);
    procedure SetPrecision(const aValue: Smallint);
    function GetFieldType: TJanuaFieldType;
    procedure SetKey(const aValue: string);
    function GetKey: string;
    function GetDBField: string;
    procedure SetDBField(const aValue: string);
    procedure WriteToDataset(const aDataset: TDataset);
    function EqualsDataset(const aDataset: TDataset): Boolean; overload;
    function EqualsDataset(const aDataset: IJanuaDBDataset): Boolean; overload;
    procedure ReadFromDataset(const aDataset: TDataset);
    procedure MapDataset(const aDataset: TDataset);
    procedure UnMapDatasets;
    // Read Only and Calculated Properties
    function GetCalculated: Boolean;
    procedure SetCalculated(aValue: Boolean);
    function GeIsReadOnly: Boolean;
    procedure SetIsReadOnly(aValue: Boolean);
    function GetHtmlObject: IJanuaHtmlObject; virtual;
    procedure SetHtmlObject(const Value: IJanuaHtmlObject);
    function GetJsonPair: TJsonPair;
    function GetLookupField: IJanuaField;
    procedure SetJsonPair(aValue: TJsonPair);
    procedure SetLookupField(const Value: IJanuaField);
    property LookupList: TJanuaLookupID read GetLookupList write SetLookupList;
    function GetMappedField: TField;
    procedure SetMappedField(const Value: TField);
    function GetEnabled: Boolean;
    function GetIsEntityKey: Boolean;
    function GetOperator: TJanuaOperator;
    procedure SetEnabled(const Value: Boolean);
    procedure SetOperator(const Value: TJanuaOperator);
  strict protected
    procedure SetIsEntityKey(const Value: Boolean); virtual;
    function InternalActivate: Boolean; override;
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    procedure CheckNotifications;
    procedure SetIsNull(const Value: Boolean); virtual;
    function GetIsNull: Boolean; virtual;
    function GetAsGUID: TGUID; virtual;
    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    // Field Related procedures ........................................................................................
    function GetValue: TValue; virtual; abstract;
    function getAsBoolean: Boolean; virtual; abstract;
    function getAsFloat: Extended; virtual; abstract;
    function getAsInteger: Integer; virtual; abstract;
    function getAsSmallint: Smallint; virtual; abstract;
    function getAsLargeInt: Int64; virtual; abstract;
    function getAsCurrency: Currency; virtual; abstract;
    function GetAsString: string; virtual; abstract;
    function GetAsDateTime: TDateTime; virtual; abstract;
    procedure SetAsGUID(const Value: TGUID); virtual;
    procedure SetAsVariant(const aValue: Variant); virtual;
    procedure setAsBoolean(const aValue: Boolean); virtual; abstract;
    procedure setAsDateTime(const aValue: TDateTime); virtual; abstract;
    procedure setAsFloat(const aValue: Extended); virtual; abstract;
    procedure setAsInteger(const aValue: Integer); virtual; abstract;
    procedure setAsSmallint(const Value: Smallint); virtual; abstract;
    procedure setAsString(const aValue: string); virtual; abstract;
    procedure setAsLargeInt(const aValue: Int64); virtual; abstract;
    procedure SetValue(const aValue: TValue); virtual; abstract;
    procedure setAsCurrency(const aValue: Currency); virtual; abstract;
    property AfterLoadRecord: TProc read FAfterLoadRecord write SetAfterLoadRecord;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); virtual; abstract;
    procedure LoadFromStream(aStream: TStream); virtual; abstract;
    procedure SaveToFile(aFile: TFileName; aAppend: Boolean = False); virtual;
    procedure LoadFromFile(aFile: TFileName); virtual;
  public
    function Format(aFormat: string): string; virtual;
    procedure WriteJsonValue(const aJsonObject: TJsonObject);
    procedure ReadJsonValue(const aJsonObject: TJsonObject);
    function HasLookupList: Boolean;
    procedure SetFromParam(const aParam: TParam);
    procedure SetFromField(const aField: TField);
    procedure SetFromMappedField;
    procedure Clear; virtual; abstract;
    function EqualsField(const aField: IJanuaField): Boolean; virtual;
    // Filter Management .....................................................................
  public
    function IsDefault: Boolean; virtual;
    function DifferDefault: Boolean; virtual;
    function FilterText: string;
    /// <summary> Tells the system if a param should be used for a filter or set in a query </summary>
    property Enabled: Boolean read GetEnabled write SetEnabled;
    /// <summary> Used only for Filters defaults to Equals. Used to build filter string </summary>
    property ParamOperator: TJanuaOperator read GetOperator write SetOperator;
    // End Filter Management .................................................................
  public
    property Title: string read GetTitle write SetTitle;
    // Data Type Management
    property MinLength: Smallint read GetMinLength write SetMinLength;
    property MaxLength: Integer read GetMaxLength write SetMaxLength;
    property Precision: Smallint read GetPrecision write SetPrecision;
    property Key: string read GetKey write SetKey;
    property FieldType: TJanuaFieldType read GetFieldType write SetFieldType;
    property DBField: string read GetDBField write SetDBField;
    // Calculate / Read Only
    property Calculated: Boolean read GetCalculated write SetCalculated;
    property IsReadOnly: Boolean read GeIsReadOnly write SetIsReadOnly;
    property IsMonitored: Boolean read GetIsMonitored write SetIsMonitored;
    property OnFieldDataChange: TFieldChangeEvent read GetOnFieldDataChange write SetOnDataChage;
    property AsGUID: TGUID read GetAsGUID write SetAsGUID;
    property FieldGUID: TGUID read GetFieldGUID write SetFieldGUID;
    property HtmlObject: IJanuaHtmlObject read GetHtmlObject write SetHtmlObject;
    property FieldIndex: Integer read GetFieldIndex write SetFieldIndex;
    property IsNull: Boolean read GetIsNull write SetIsNull;
    property LookupField: IJanuaField read GetLookupField write SetLookupField;
    /// <summary>TField: Maps a Relation 1 to 1 from JanuaField to Db.TField for faster Updates </summary>
    property MappedField: TField read GetMappedField write SetMappedField;
    property GridFieldDef: TJanuaGridFieldDef read GetGridFieldDef write SetGridFieldDef;
    property FieldKind: TJanuaFieldKind read GetFieldKind write SetFieldKind;
    /// <summary>Boolean: If a field is an entity key (FK key or PK or UK) and is numeric is null if 0 </summary>
    property IsEntityKey: Boolean read GetIsEntityKey write SetIsEntityKey;
    /// <summary>IJanuaSearchContainer: Search container can be used for Lookup Fields for Lists and Search ViewModels</summary>
    /// type:IJanuaSearchContainer
    property SearchContainer: IJanuaSearchContainer read GetSearchContainer write SetSearchContainer;
    /// <summary>  A Field or a Parameter can be invisible that means not displayed in a Grid or a List </summary>
    property Visible: Boolean read GetVisible write SetVisible;
    property Value: TValue read GetValue write SetValue;
  end;

type
  TJanuaFieldClass = class of TJanuaCustomField;

type
  TJanuaLargeIntField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Int64;
    FDefaultValue: Int64;
    procedure SetFInternalValue(const aValue: Int64);
  protected
    property FInternalValue: Int64 read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Int64;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    function GetAsString: string; override;
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaSmallIntField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Smallint;
    FDefaultValue: Smallint;
    procedure SetFInternalValue(const aValue: Smallint);
  protected
    property FInternalValue: Smallint read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Smallint;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsSmallint: Smallint; override;
    function getAsLargeInt: Int64; override;
    function getAsCurrency: Currency; override;
  strict protected
    function GetAsString: string; override;
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsSmallint(const Value: Smallint); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaIntegerField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Integer;
    FDefaultValue: Integer;
    procedure SetFInternalValue(const aValue: Integer);
  protected
    property FInternalValue: Integer read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Integer;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
    procedure SetIsEntityKey(const Value: Boolean); override;
    procedure SetIsNull(const Value: Boolean); override;
    function GetIsNull: Boolean; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  strict protected
    function GetAsString: string; override;
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsSmallint(const Value: Smallint); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaGUIDField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: TGUID;
    FDefaultValue: TGUID;
    procedure SetFInternalValue(const aValue: TGUID);
  protected
    property FInternalValue: TGUID read FFInternalValue write SetFInternalValue;
  private
    FOldValue: TGUID;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  strict protected
    function GetAsString: string; override;
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    function GetAsGUID: TGUID; override;
    procedure SetAsGUID(const Value: TGUID); override;
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaStringField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: string;
    FDefaultValue: string;
    procedure SetFInternalValue(const aValue: string);
  protected
    property FInternalValue: string read FFInternalValue write SetFInternalValue;
  private
    FOldValue: string;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
    function GetIsNull: Boolean; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  strict protected
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    function GetAsString: string; override;
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
    procedure SaveToFile(aFile: TFileName; aAppend: Boolean = False); override;
    procedure LoadFromFile(aFile: TFileName); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaBlobField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: TJanuaBlob;
    procedure SetFInternalValue(const aValue: TJanuaBlob);
  protected
    property FInternalValue: TJanuaBlob read FFInternalValue write SetFInternalValue;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  protected
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    function GetAsString: string; override;
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonValue: TJsonValue;
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
    function GetValue: TValue; override;
    // Default Stored and Modified Related Procedures .......................................................
  private
    FOldValue: TJanuaBlob;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly (thread safe) </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaMemoField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: TStrings;
    FDefaultValue: string;
    procedure SetFInternalValue(const aValue: TStrings);
  private
    FOldValue: TStrings;
  protected
    property FInternalValue: TStrings read FFInternalValue write SetFInternalValue;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  protected
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    function GetAsString: string; override;
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
    function GetValue: TValue; override;
    // Default Stored and Modified Related Procedures .......................................................
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaHtmlField = class(TJanuaMemoField, IJanuaField)
  public
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
  end;

  TJanuaJsonField = class(TJanuaMemoField, IJanuaField)
  private
    procedure CheckIsJson;
  protected
    procedure setAsString(const aValue: string); override;
  public
    // Input/Output procedures
    procedure LoadFromStream(aStream: TStream); override;
  public
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
  end;

  TJanuaXMLField = class(TJanuaMemoField, IJanuaField)
  end;

  TJanuaBooleanField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Boolean;
    FDefaultValue: Boolean;
    procedure SetFInternalValue(const aValue: Boolean);
  protected
    property FInternalValue: Boolean read FFInternalValue write SetFInternalValue;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  protected
    function GetAsString: string; override;
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
    function GetValue: TValue; override;
    // Default Stored and Modified Related Procedures .......................................................
  private
    FOldValue: Boolean;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly (thread safe) </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaDateTimeField = class(TJanuaCustomField, IJanuaField)
  public
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  strict private
    FFInternalValue: TDateTime;
    FDefaultValue: TDateTime;
    procedure SetFInternalValue(const aValue: TDateTime);
  protected
    property FInternalValue: TDateTime read FFInternalValue write SetFInternalValue;
  private
    FOldValue: TDateTime;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsSmallint: Smallint; override;
    function getAsLargeInt: Int64; override;
    function getAsCurrency: Currency; override;
  protected
    function GetAsString: string; override;
    function GetDataString: string;
    // setter ................................................................................................
    procedure SetDataString(const aValue: string);
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
    // Default Value Management
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    function Format(aFormat: string): string; override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aDefault: TDateTime; aIsMonitored: Boolean = False); overload;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaDoubleField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Double;
    FDefaultValue: Double;
    procedure SetFInternalValue(const aValue: Double);
  protected
    property FInternalValue: Double read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Double;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  private
    // Field Related procedures ..............................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  strict protected
    function GetAsString: string; override;
    function GetDataString: string;
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure SetDataString(const aValue: string);
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    // Default Value Management
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaExtendedField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Extended;
    FDefaultValue: Extended;
    procedure SetFInternalValue(const aValue: Extended);
  protected
    property FInternalValue: Extended read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Extended;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
    function IsDefault: Boolean; override;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
  protected
    function GetAsString: string; override;
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    // Default Value Management
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aFiedl: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaCurrencyField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Currency;
    FDefaultValue: Currency;
    procedure SetFInternalValue(const aValue: Currency);
  protected
    property FInternalValue: Currency read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Currency;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
    function IsDefault: Boolean; override;
  strict protected
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    function GetValue: TValue; override;
  public
    procedure Default;
    function DifferDefault: Boolean; override;
  private
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // Field Related procedures ........................................................................................
    function getAsBoolean: Boolean; override;
    function GetAsDateTime: TDateTime; override;
    function getAsFloat: Extended; override;
    function getAsInteger: Integer; override;
    function getAsLargeInt: Int64; override;
    function getAsSmallint: Smallint; override;
    function getAsCurrency: Currency; override;
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(aValue: TJsonValue);
    function GetJsonDefault: TJsonValue;
    procedure SetJsonDefault(aValue: TJsonValue);
    function GetJson: string;
    procedure SetJson(aValue: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(aValue: TValue);
  strict protected
    function GetAsString: string; override;
    // setter ..........................................................................................................
    procedure setAsBoolean(const aValue: Boolean); override;
    procedure setAsDateTime(const aValue: TDateTime); override;
    procedure setAsFloat(const aValue: Extended); override;
    procedure setAsInteger(const aValue: Integer); override;
    procedure setAsString(const aValue: string); override;
    procedure setAsLargeInt(const aValue: Int64); override;
    procedure setAsSmallint(const aValue: Smallint); override;
    procedure SetValue(const aValue: TValue); override;
    procedure setAsCurrency(const aValue: Currency); override;
  strict protected
    procedure SetAsVariant(const aValue: Variant); override;
    function GetAsVariant: Variant;
  public
    // Input/Output procedures
    procedure SaveToStream(aStream: TStream); override;
    procedure LoadFromStream(aStream: TStream); override;
  public
    constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: Boolean = False); override;
    /// <summary> Create a New instance of the Interfaced Object istantiating ARC counter correctly </summary>
    class function New(const aKey, aField: string; const aIsMonitored: Boolean = False): IJanuaField; static;
    procedure Clear; override;
    function Size: Int64;
  public
    // Json Data Management
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: string read GetAsString write setAsString;
    property AsDateTime: TDateTime read GetAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read GetValue write SetValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

  TJanuaParams = class(TJanuaInterfacedBindableObject, IJanuaParams)
  private
    FItemIndex: Integer;
    FItems: IDictionary<string, IJanuaField>;
    FParamsList: TStrings;
    FMetaDataOnly: Boolean;
    FOrderedList: TJanuaFields;
    FPagination: TDatasetPagination;
    function GetItemIndex: Integer;
    procedure SetItemIndex(const Value: Integer);
    function GetAsJson: string;
    procedure SetAsJson(const Value: string);
    function GetHasPagination: Boolean;
    function GetPage: Word;
    function GetPageSize: UInt32;
    procedure SetHasPagination(const Value: Boolean);
    procedure SetPage(const Value: Word);
    procedure SetPageSize(const Value: UInt32);
    procedure SetAsBase64Url(const Value: string);
    function GetAsBase64Url: string;
  strict protected
    function GetOrderedList: TJanuaFields;
    function GetItems: IDictionary<string, IJanuaField>;
    procedure SetItems(const Value: IDictionary<string, IJanuaField>);
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
    function GetAsMetaData: TJsonObject;
    procedure SetAsMetaData(const Value: TJsonObject);
    function GetAsMetaDataOnly: Boolean;
    procedure SetAsMetaDataOnly(const Value: Boolean);
    function GetAsString: string;
    function GetItem(const aIndex: Integer): IJanuaField;
    function GetParamsList: TStrings;
    function GetText: string;
    function InternalActivate: Boolean; override;
  protected
    /// <summary>  Is the selected Param Number in the Orderded List Array</summary>
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    /// <summary> Indexed property based on the internal Array </summary>
    property Params[const aIndex: Integer]: IJanuaField read GetItem; default;
    /// <summary> ParamList can be Used to create a Combo or a Selection of Items in a View </summary>
    property ParamsList: TStrings read GetParamsList;
    /// <summary> Text is a List of Params by Title it is ParamsList.Text read only   property </summary>
    property Text: string read GetText;
  public
    constructor Create; override;
    destructor Destroy; override;
    constructor Create(const aObject: TJsonObject); overload;
    constructor Create(const aParams: TParams); overload;
    constructor Create(const aParams: string); overload;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
  public
    function AddParam(aParam: IJanuaField): IJanuaField; overload;
    procedure DelParam(const aName: string);
    function AddParam(aParam: TParam): IJanuaField; overload;
    function AddParam(const aName: string; aType: TJanuaFieldType; aValue: TValue;
      const aVisible: Boolean = True): IJanuaField; overload;
    function ParamByName(const aName: string): IJanuaField;
    function FindParam(const aParamName: string; out aParam: IJanuaField): Boolean;
    function ParamCount: Integer;
    function ContentEquals(const aParams: IJanuaParams): Boolean;
    procedure Assign(const aParams: IJanuaParams); overload;
    procedure Assign(const aParams: TParams); overload;
    procedure Assign(const aJson: string); overload;
    procedure AssignValues(const aParams: IJanuaParams); overload;
    procedure AssignValues(const aParams: string); overload;
    procedure AssignValues(const aParams: TParams); overload;
    procedure ClearParams;
    /// <summary> FilterText is the Query Text to apply a filter to a Mem Table </summary>
    function FilterText: string;
  public
    property asJson: string read GetAsJson write SetAsJson;
    property HasPagination: Boolean read GetHasPagination write SetHasPagination;
    property Page: Word read GetPage write SetPage;
    property PageSize: UInt32 read GetPageSize write SetPageSize;
    property AsBase64Url: string read GetAsBase64Url write SetAsBase64Url;
  end;

  TJanuaCustomRecord = class(TJanuaInterfacedBindableObject, IJanuaInterface)
  strict protected
    FIsOldRecord: Boolean;
  protected
    procedure InternalCreateRecord; virtual; abstract;
  public
    constructor Create; override;
    constructor CreateAsOldRecord;
  end;

  TJanuaRecord = class(TJanuaCustomRecord, IJanuaRecord, IJanuaInterface)
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor Create(const aRecord: IJanuaRecord; aAssign: Boolean = True); overload;
    constructor Create(const aObject: TJsonObject); overload;
    constructor Create(const aName: string; const aEntity: TJanuaEntity = None); overload; virtual;
    /// <summary> This constructor Creates a Record and directly assigns it a Dataset </summary>
    constructor Create(const aName: string; const aDataset: IJanuaDBDataset); overload;
    constructor Create(const aName: string; aFields: TJanuaFields; aRecords: IList<IJanuaRecord>;
      aRecordSets: IList<IJanuaRecordSet>; const aEntity: TJanuaEntity = None); overload;
    procedure Clear(const aRecursively: Boolean = True);
  protected
    procedure InternalCreateRecord; override;

  strict private

    FOldRecord: IJanuaRecord;
    FCalcFields: IList<IJanuaField>;
    FTriggerFields: IList<IJanuaField>;
    FFields: IList<IJanuaField>;
    FRecordSets: IList<IJanuaRecordSet>;
    FRecords: IList<IJanuaRecord>;
    FRecordSetIndex: Integer;
    FName: string;
    FGUID, FMasterGUID: TGUID;
    FNotifyEvent: TNotifyEvent;
    FMasterRecord: IJanuaRecord;
    FMasterFields: TMasterFields; // = TArray<TMasterField>;
    FIsNewRecord: Boolean;
    // se il record ? un nuovo record e ad esempio i campi chiave non hanno valore
    FIsLocalStored: Boolean;
    FIsRemoteStored: Boolean;
    FDeleted: Boolean;
    FEntity: TJanuaEntity;
    FEntityName: string;
    FOnNewRecord: TNotifyEvent;
    FDBSchemaField: IJanuaField;
    FNotStored: Boolean;
    procedure CheckMasterFields;
  protected
    FPrefix: string;
    FItemIndex: Integer;
    FMappedDataset: TDataset;
    function GetCheckDataset: Boolean;
    procedure InternalDoNewRecord; virtual;
  private
    procedure DoNewRecord;
    procedure SetItemIndex(aValue: Integer);
    function GetItemIndex: Integer;
    function GetJanuaFields: TJanuaFields;
    procedure SetJanuaFields(const aValue: TJanuaFields);
    function GetName: string;
    procedure SetName(const aValue: string);
    function GetStoreDataset: IJanuaDBDataset;
    procedure SetStoreDataset(aValue: IJanuaDBDataset);
    procedure SetDeleted(val: Boolean);
    function GetDeleted(): Boolean;
    procedure AssignDatasets(aDatasets: TArray<TDataset>);
    function AssignJanuaDatasets(const aDatasets: TJanuaDBDatasets; const aRaiseException: Boolean): Boolean;
  protected
    FHasMasterRecord: Boolean;
    FOnChangeActive: Boolean;
    procedure SetDefault; virtual;
    procedure InternalCalcFields(const aField: IJanuaField); virtual;
  public
    procedure DoDataChange(const aField: IJanuaField); virtual;
    // procedure AssignDatasets(aDatasets: TArray<IJanuaDBDataset>);
    procedure MapDataset(const aMainDataset: IJanuaDBDataset); overload;
    procedure AssignDataset(const aDataset: IJanuaDBDataset); overload;
    procedure MapDataset(const aDataset: TDataset); overload;
    procedure UnMapDatasets;
    procedure AssignDataset(const aDataset: TDataset); overload;
  public // spostare in protected nei tests ..............
    procedure ReadData(aDataList: TValueList);
    procedure WriteData(aDataList: TValueList);
  private
    FStoreDataset: IJanuaDBDataset;
    FIsDeleted: Boolean;
    FKeyFields: IList<IJanuaField>;
    FDBDataset: TDataset;
    FLastMessage: string;
    FMapToDataset: Boolean;
    FEditing: Boolean;
    function CheckDataset(const aDataset: IJanuaDBDataset): Boolean;
    procedure InternalDirectSaveToDataset;
  public
    class function CreateField(const aFieldType: TJanuaFieldType; const aFieldKey: string;
      const aFieldName: string = ''; aFieldKind: TJanuaFieldKind = jfkData): IJanuaField;
  public
    function FieldCount: Integer;
    function FieldByName(const aName: string): IJanuaField;
    function TryFieldByName(const aName: string; out aField: IJanuaField): Boolean;
    function FindField(const aName: string): Boolean;
    function GetRecordCount: Integer;
    function AddField(const aField: IJanuaField): Integer;
    function AddCreateField(const aFieldType: TJanuaFieldType; const aFieldKey, aFieldName: string;
      aFieldKind: TJanuaFieldKind = jfkData; aMaxLength: Integer = 0): IJanuaField;
    function AddCalcField(const aField: IJanuaField): Integer;
    procedure SetRefField(const aField: IJanuaField);
    procedure WriteToJson(const aJsonObject: TJsonObject);
    procedure ReadFromJson(const aJsonObject: TJsonObject);
    procedure LoadRecord(const aRecursively: Boolean = True); virtual;
    procedure LoadFromDataset(const aRecursively: Boolean = True); overload; virtual;
    procedure LoadFromDataset(const aMainDataset: IJanuaDBDataset; aMapToDataset: Boolean = True;
      const aRecursively: Boolean = True); overload;
    procedure SetupDataset(const aMainDataset: IJanuaDBDataset; const aDatasets: TArray<IJanuaDBDataset>;
      aMapToDataset: Boolean = True); overload;
    procedure LoadFromDataset(const aMainDataset: IJanuaDBDataset; const aDatasets: TArray<IJanuaDBDataset>;
      aMapToDataset: Boolean = True); overload;
    procedure AppendToDataset;
    procedure UpdateToDataset;
    function CheckInDataset: Boolean;
    procedure RefreshFromDataset(const aRecursively: Boolean = True);
    function EqualsDataset(const aDataset: TDataset): Boolean; overload;
    function EqualsDataset(const aDataset: IJanuaDBDataset): Boolean; overload;
    procedure SaveToDataset(Force: Boolean = False; aRecursive: Boolean = True); overload; virtual;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset; Force: Boolean = False); overload; virtual;
    procedure SaveToDBDataset(const aDataset: TDataset; Force: Boolean = False); overload; virtual;
    /// <summary> RecordSetIndex (Index of the Last Inserted Recordset)</summary>
    function RecordSetIndex: Integer;
    // RecordSetCount Count of all Recordsets Last RecordSet Index + 1
    function RecordSetCount(aRecursive: Boolean = False): Integer;
    // 2018-0052 procedura per aggiornare i Master Fields (aggiunge nuovi master fields).
    procedure AddMasterField(aMaster, aDetail: IJanuaField);
    function GetOnNewRecord: TNotifyEvent;
    procedure SetOnNewRecord(const Value: TNotifyEvent);
    /// <summary> Fills a template following a patter that is $$<fieldname>$$
    /// <returns> String: Template after elaboration </returns> </summary>
    function FillTemplate(const aTemplate: string): string;
    /// <summary> Check if a DAtaset is Mapped or not comparing the objects
    /// <returns> Boolean: True if it's mapped and false else </returns> </summary>
    function IsMappedDataset(const aDataset: TDataset): Boolean;
  strict private
    FCheckDataset: Boolean;
    FAfterLoadRecord: TProc;
  protected
    procedure SetCheckDataset(const Value: Boolean);
    procedure AddRecordDef(const aRecordDef: IJanuaRecord);
    function AddRecordIntf(const aRecordIntf: TGUID; const aName: string): IJanuaRecord;
    procedure SetIsNewRecord(const Value: Boolean);
    procedure SetState(const Value: TJanuaRecordState);
    procedure SetEditing(const Value: Boolean);
    procedure AfterPost; virtual;
    procedure BeforePost; virtual;
    procedure SetAfterLoadRecord(const Value: TProc);
  protected
    procedure InternalInitialize;
    function InternalActivate: Boolean; override;
    property AfterLoadRecord: TProc read FAfterLoadRecord write SetAfterLoadRecord;
  public
    /// <summary> Initialize può venire chiamata quando è necessario inizializzare o pulire un oggetto Record </summary>
    procedure OnFieldsChange(Sender: TObject);
    // Nested RecordSets ...................................................
    function AddRecordSet(const aRecordSet: IJanuaRecordSet): IJanuaRecordSet;
    // Notify Event To Calculate Fields
    procedure DoCalcFields;
  public
    // Deserialize .....................................
    procedure ReadRecord(aDataList: IRecSerialization);
    // Serialize .......................................
    procedure WriteRecord(aDataList: IRecSerialization);
    // Generate New Record ..............................
    function NewRecord: IRecSerialization;
    // Current Record Serialization .....................
    function RecordValue: IRecSerialization;
    // Append Procedure
    procedure Append; virtual;
    /// <summary> This procedure simply checks if GUID is nulla and sets it and check mandatory fields are filled </summary>
    procedure Post;
    procedure UndoUpdates;
    procedure Assign(const aRecord: IJanuaRecord);
    procedure ApplyRemoteUpdates;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromLocalStorage;
    // procedura che in parallelo carica i dati dal Remote Storage.
    procedure LoadFromRemoteStorage;
    // procedura che in parallelo carica i dati dal Remote Storage.
    procedure ApplyLocalUpdates;
    procedure AddKeyField(const aField: IJanuaField);
    function CheckIsStored: Boolean;
    procedure DirectLoadFromDataset(const aDataset: TDataset; const aRelease: Boolean = False;
      const aRecursively: Boolean = True); overload; virtual;
    procedure DirectLoadFromDataset(const aDataset: IJanuaDBDataset;
      const aRecursively: Boolean = True); overload;
    procedure DirectLoadFromDataset(const aDatasets: TArray<TDataset>); overload;
    procedure DirectSaveToDataset(const aDataset: TDataset; Force: Boolean = False); overload;
    procedure DirectSaveToDataset(const aDatasets: TArray<TDataset>; Force: Boolean = False); overload;
    function PrefixGUIDField: string;
    function ContentEquals(const aRecord: IJanuaRecord): Boolean;
  private
    FState: TJanuaRecordState;
    FOnRecordChange: TJanuaRecordChangeEvent;
    FFieldKind: TJanuaFieldKind; // properties Setter Getter
    FGUIDField: TField;
    procedure SetNotifyEvent(aValue: TNotifyEvent);
    function GetNotifyEvent: TNotifyEvent;
    // Cache Updates Modifications and so On .....................................................
    function GetIsNewRecord: Boolean;
    function RecordCount: Integer;
    function GetState: TJanuaRecordState;
    procedure SetFieldKind(const Value: TJanuaFieldKind);
    function GetNotStored: Boolean;
    procedure SetNotStored(const Value: Boolean);
    function GetAsJsonWithMeta: string;
    procedure SetAsJsonWithMeta(const Value: string);
    property IsNewRecord: Boolean read GetIsNewRecord;
    function GetIsRemoteStored: Boolean;
    procedure SetIsRemoteStored(aValue: Boolean);
    function GetIsLocalStored: Boolean;
    procedure SetIsLocalStored(aValue: Boolean);
    function RecordModified: Boolean;
    function GetModified: Boolean;
    procedure SetModified(const aValue: Boolean);
    // GUID MANAGEMENT
    procedure SetGUID(aValue: TGUID);
    function GetGUID: TGUID;
    function GetGUIDString: string;
    // Mastere Record
    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(aValue: IJanuaRecord);
    function GetPrefix: string;
    procedure SetPrefix(const aValue: string);
    procedure SetKeyFields(val: IList<IJanuaField>);
    function GetKeyFields(): IList<IJanuaField>;
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const aValue: TJsonObject);
    procedure SetOldRecord(aValue: IJanuaRecord);
    procedure SetOldValue(const aValue: IJanuaField);
    function GetIsDeleted: Boolean;
    procedure SetIsDeleted(const aValue: Boolean);
    function GetDataset: TDataset;
    procedure SetDataset(const aValue: TDataset);
    function GetAsMetaData: TJsonObject;
    function GetGUIDField: TField;
    procedure SetAsMetaData(const Value: TJsonObject);
    function GetLastMessage: string;
    function GetMapToDataset: Boolean;
    procedure SetGUIDField(const Value: TField);
    procedure SetLastMessage(const Value: string);
    procedure SetMapToDataset(const Value: Boolean);
    function GetJson: string;
    procedure SetJson(aValue: string);
    procedure SetMasterGUID(Value: TGUID);
    function GetMasterGUID: TGUID;
  protected
    procedure SetEntity(const Value: TJanuaEntity);
    procedure SetEntityName(const Value: string);
    function GetEntity: TJanuaEntity;
    function GetEntityName: string;
    function GetUpdatesPending: Boolean;
    procedure SetUpdatesPending(aValue: Boolean);
    // Nested Records ....................................................
    function GetRecords: IList<IJanuaRecord>;
    procedure SetRecords(const aValue: IList<IJanuaRecord>);
    function GetRecordSets: IList<IJanuaRecordSet>;
    procedure SetRecordSets(const aValue: IList<IJanuaRecordSet>);
    /// <summary>TJanuaRecordChangeEvent when a change on a monitored record occurs the change Event is called
    /// AFTER calc fields is done </summary>
    function GetOnRecordChange: TJanuaRecordChangeEvent;
    procedure SetOnRecordChange(const Value: TJanuaRecordChangeEvent);
  public
    property OnRecordChange: TJanuaRecordChangeEvent read GetOnRecordChange write SetOnRecordChange;
    property OnNewRecord: TNotifyEvent read GetOnNewRecord write SetOnNewRecord;
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    property Records: IList<IJanuaRecord> read GetRecords write SetRecords;
    property OnCalcFields: TNotifyEvent read GetNotifyEvent write SetNotifyEvent;
    property RecordSets: IList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
    property LastMessage: string read GetLastMessage write SetLastMessage;
    property KeyFields: IList<IJanuaField> read GetKeyFields write SetKeyFields;
    property Modified: Boolean read GetModified write SetModified;
    property UpdatesPending: Boolean read GetUpdatesPending write SetUpdatesPending;
    property IsLocalStored: Boolean read GetIsLocalStored write SetIsLocalStored;
    property IsRemoteStored: Boolean read GetIsRemoteStored write SetIsRemoteStored;
    property Fields: TJanuaFields read GetJanuaFields write SetJanuaFields;
    property Name: string read GetName write SetName;
    property MasterGUID: TGUID read GetMasterGUID write SetMasterGUID;
    property GUID: TGUID read GetGUID write SetGUID;
    property GUIDString: string read GetGUIDString;
    // ItemIndex should be connected with GUID and is useful to locate a record insied an ILIst
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    property StoreDataset: IJanuaDBDataset read GetStoreDataset write SetStoreDataset;
    property IsDeleted: Boolean read GetIsDeleted write SetIsDeleted;
    property Prefix: string read GetPrefix write SetPrefix;
    property DBDataset: TDataset read GetDataset write SetDataset;
    property AsMetadata: TJsonObject read GetAsMetaData write SetAsMetaData;
    property MapToDataset: Boolean read GetMapToDataset write SetMapToDataset;
    property State: TJanuaRecordState read GetState;
    property FieldKind: TJanuaFieldKind read FFieldKind write SetFieldKind;
    property GUIDField: TField read GetGUIDField write SetGUIDField;
    property asJson: string read GetJson write SetJson;
    property NotStored: Boolean read GetNotStored write SetNotStored;
    property AsJsonWithMeta: string read GetAsJsonWithMeta write SetAsJsonWithMeta;
    property DoCheckDataset: Boolean read GetCheckDataset write SetCheckDataset;
  private
    FRemoteClient: IRemoteRecordClient;
  protected
    function getRemoteClient: IRemoteRecordClient;
    procedure SetRemoteClient(const Value: IRemoteRecordClient);
  public
    function RemotePostRecord: Boolean;
    function RemoteUpdate: Boolean;
    function RemoteLoad: Boolean; overload;
    function RemoteLoad(const aGUID: TGUID): Boolean; overload;
    function RemoteDelete: Boolean;
    /// <summary> Remote Client connects Record with a Remote Server managaing the CRUD Matrix </summary>
    property RemoteClient: IRemoteRecordClient read getRemoteClient write SetRemoteClient;
  end;

  TJanuaRecordClass = class of TJanuaRecord;

  TJanuaRecMetaSerialization = class(TJanuaInterfacedBindableObject, IJanuaRecMetaSerialization)
  private
    FJanuaRecord: IJanuaRecord;
  protected
    function GetJanuaRecord: IJanuaRecord;
    procedure SetJanuaRecord(const Value: IJanuaRecord);
  public
    procedure LoadGridMeta;
    procedure SaveGridMeta;
    procedure LoadLocalGridMeta;
    procedure SaveLocalGridMeta;
  public
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
  end;

  TJanuaRecSerialization = class(TJanuaInterfacedBindableObject, IRecSerialization)
  strict private
    FValues: TValueList;
    FOldValues: TValueList;
    FRecords: TRecList;
    FRecSets: TSetList;
    FGUID: TGUID;
    FoldGUID: TGUID;
    FIndex: Integer;
    FGUIDUpdateProc: TGUIDUpdateProc;
  public
    constructor Create(const aRecord: IJanuaRecord; aProc: TGUIDUpdateProc = nil);
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    procedure Clear;
  private
    // Values .....................................................................
    function GetFieldValues: TValueList;
    procedure SetFieldValues(const aValue: TValueList);
  public
    property FieldValues: TValueList read GetFieldValues write SetFieldValues;
  private
    // OldValues .....................................................................
    function GetOldValues: TValueList;
    procedure SetOldValues(const aValue: TValueList);
  public
    property OldValues: TValueList read GetOldValues write SetOldValues;
    function GetIsModified: Boolean;
  private
    // Records .....................................................................
    function GetRecValues: TRecList;
    procedure SetRecValues(const aValue: TRecList);
  public
    property RecValues: TRecList read GetRecValues write SetRecValues;
  private
    // RecordSets ..................................................................
    function GetRecSetList: TSetList;
    procedure SetRecSetList(const aValue: TSetList);
  public
    property RecSetList: TSetList read GetRecSetList write SetRecSetList;
  private
    // GUID ..................................................................
    function GetGUID: TGUID;
    procedure SetGUID(const aValue: TGUID);
    function GetGUIDUpdateProc: TGUIDUpdateProc;
    procedure SetGUIDUpdateProc(const Value: TGUIDUpdateProc);
  public
    property GUID: TGUID read GetGUID write SetGUID;
    property GUIDUpdateProc: TGUIDUpdateProc read GetGUIDUpdateProc Write SetGUIDUpdateProc;
  private
    function GetIndex: Integer;
    procedure SetIndex(const aValue: Integer);
  public
    property ItemIndex: Integer read GetIndex write SetIndex;
  end;

  TJanuaSetSerialization = class(TJanuaInterfacedBindableObject, ISetSerialization)
  strict private
    FRecords: TRecList;
    FItemIndex: Integer;
    FGUIDDict: TGUIDDict;
  strict private
    function GetRecList: TRecList;
    procedure SetRecList(const aValue: TRecList);
  public
    property RecList: TRecList read GetRecList write SetRecList;
    procedure AddRecord(aSerialization: IRecSerialization);
    function CurrentRecord: IRecSerialization;
  private
    function GetItemIndex: Integer;
    procedure SetItemIndex(const aValue: Integer);
  public
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    procedure DelCurrenRecord;
    function RecordCount: Integer;
  strict private
    function GetGUIDDict: TGUIDDict;
  public
    property GUIDDict: TGUIDDict read GetGUIDDict;
    function LocateGUID(const aGUID: TGUID): Boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    class function New: ISetSerialization; static;
    // Data Management
    procedure Clear;
  end;

  TJanuaRecordIterator = class(TInterfacedObject, IJanuaRecordEnumerator)
  private
    FRecordset: IJanuaRecordSet;
    function GetCurrent: IJanuaRecord;
  public
    constructor Create(aRecordSet: IJanuaRecordSet);
    function MoveNext: Boolean;
    property Current: IJanuaRecord read GetCurrent;
  end;

  TJanuaRecordSet = class(TJanuaInterfacedBindableObject, IJanuaRecordSet)
  strict private
    FSetSerialization: ISetSerialization;
    FName: string;
    FEOF: Boolean;
    FGUIDIndex: IDictionary<TGUID, Integer>;
    FDelRecords: IList<IJanuaRecord>;
    FLocalStorage: IJanuaRecordSetStorage;
    FRemoteStorage: IJanuaRecordSetStorage;
    FParams: TJanuaFields;
    FOnScroll: TNotifyEvent;
    FOnNewRecord: TProc<IJanuaRecord>;
    FOnRecordChange: TProc<IJanuaRecord>;
    FLazyLoading: Boolean;
    FSyncDataset: IJanuaDBDataset;
    FForceRefresh: Boolean;
    FRecordSetState: TRecordSetState;
  protected
    FRecord: IJanuaRecord;
    FPrefix: string;
    procedure NotifyEvent;
    procedure AddIndex;
    procedure DelIndexes;
    procedure Reindex;
    function GetForceRefresh: Boolean;
    procedure SetForceRefresh(const aValue: Boolean);
    function GetItemIndex: Integer;
    procedure SetItemIndex(const aValue: Integer);
    function IsSetLocalStorage: Boolean;
    function IsSetRemoteStorage: Boolean;
    function FactoryCreateSyncDataset: IJanuaDBDataset;
    function GetSyncDataset: IJanuaDBDataset;
    function GetRecordSetState: TRecordSetState;
    procedure SetJanuaFields(const aValue: TJanuaFields);
    function GetName: string;
    procedure SetName(const aValue: string);
    /// <summary> Set master Record can be overridden by a descendant to set a custom Record or do some operations </summary>
    procedure SetMasterRecord(const Value: IJanuaRecord); virtual;
  protected
    property SyncDataset: IJanuaDBDataset read GetSyncDataset;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor Create; override;
    destructor Destroy; override;
    constructor Create(const aRecordSet: IJanuaRecordSet; aAssign: Boolean = True); overload;
    constructor Create(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage);
      overload; virtual;
    procedure SetRecord(const aRecord: IJanuaRecord);
    constructor Create(const aObject: TJsonObject); overload;
    function GetEnumerator: IJanuaRecordEnumerator;
  public // Sync Memory Dataset ..............................................................................
    procedure ClearSyncDataset;
    procedure FillSyncDataset;
    procedure UpdateSyncDataset;
  public // DB Dataset .......................................................................................
    /// <summary>Tries to locate in the Dataset its jguid using locatejguid procedure then reloads record</summary>
    procedure RefreshFromDataset(const aRecursively: Boolean = True);
    procedure ClearRecordSet;
    procedure UnMapDatasets;
    /// <summary> if a Standard TDataset is assigned as source loads all its content into the Recordset </summary>
    procedure LoadFromDataset(const aRecursively: Boolean = True); overload;
    procedure LoadFromDataset(aMainDataset: IJanuaDBDataset; aDatasets: TArray<IJanuaDBDataset>); overload;
    /// <summary> If Dataset is already set(s) posts its data back to dataset appendingor editing a record. </summary>
    procedure SaveToDataset; overload;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset); overload;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset; aDatasets: TJanuaDBDatasets); overload;
    procedure WriteToJsonObject(const aJsonObject: TJsonObject);
    procedure ReadFromJsonObject(const aJsonObject: TJsonObject; aFree: Boolean = False);
    procedure SetFromJsonObject(const aJsonObject: TJsonObject; aFree: Boolean = False);
    procedure ReadFromJson(aJson: string);
    function ToJson: string;
    function ToJsonPretty: string;
    function FieldCount: Integer;
    function RecordCount: Integer;
    // Dataset Specific procedures and functions
    procedure Append; overload; virtual;
    procedure Append(const aObject: TJsonObject); overload;
    procedure Append(const aRecord: IJanuaRecord); overload;
    procedure Delete;
    procedure Post;
    function Bof: Boolean;
    function Eof: Boolean;
    procedure Next;
    procedure Prev;
    procedure First;
    procedure Last;
    procedure Clear;
    procedure Cancel;
    function ContentEquals(const aRecord: IJanuaRecordSet): Boolean;
    procedure GoToBookmark(aBoomarkID: Integer);
    function SearchByGUID(aGUID: TGUID): Boolean;
    procedure DirectLoadFromDataset(const aDataset: TDataset; const aRelease: Boolean = False;
      const aRecursively: Boolean = True); overload;
    procedure DirectLoadFromDataset(const aDatasets: TArray<TDataset>); overload;
    procedure DirectLoadFromDataset(const aDataset: IJanuaDBDataset; const aRelease: Boolean = False;
      const aRecursively: Boolean = True); overload;
    procedure DirectSaveToDataset(const aDataset: TDataset);
  private
    FFiltered: Boolean;
    FOnClearDataset: TProc;
    FOnRecordPost: TJanuaRecordEvent;
    procedure UpdateCurrentRecord;
    // Modified
    function GetModified: Boolean;
    procedure SetModified(aValue: Boolean);
    // Record
    function GetCurrentRecord: IJanuaRecord;
    procedure SetCurrentRecord(const aValue: IJanuaRecord);
    // funzione As Json Object in entrata ed in uscita ....................
    procedure SetAsJsonObject(const aValue: TJsonObject);
    function GetAsJsonObject: TJsonObject;
    // On Scroll Event (avviato anche da NewRecord ecc ecc ................
    function GetOnScroll: TNotifyEvent;
    procedure SetOnScroll(aValue: TNotifyEvent);
    // GUID
    function GetActualGUID: TGUID;
    procedure SetActualGUID(const aValue: TGUID);
    procedure UpdateIndexGUID(const aOld, aNew: TGUID);
    // GUIDString ..................................................................
    function GetGUIDString: string;
    procedure SetGUIDString(const Value: string);
    // GUID ..................................................................
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    // Store Dataset
    function GetStoreDataset: IJanuaDBDataset;
    procedure SetStoreDataset(aValue: IJanuaDBDataset);
    // Datase
  public
    // DataSet
    function GetDataset: TDataset;
    procedure SetDataset(const aValue: TDataset);
  public
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
  public
    property State: TRecordSetState read GetRecordSetState;
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property Name: string read GetName write SetName;
    property Dataset: TDataset read GetDataset write SetDataset;
    property ActualGUID: TGUID read GetActualGUID write SetActualGUID;
    property GUID: TGUID read GetGUID write SetGUID;
    property GUIDString: string read GetGUIDString write SetGUIDString;
  public // locate move bookmark ....
    function Locate(const aField: IJanuaField; const aValue: Integer): Boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: string): Boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: Variant): Boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: TValue): Boolean; overload;
  public // serialization deserialization - Serializaiton Must Be Compatible ..........................................
    procedure WriteToSerialization(aSerialization: ISetSerialization);
    procedure ReadFromSerialization(aSerialization: ISetSerialization);
    property OnScroll: TNotifyEvent read GetOnScroll write SetOnScroll;
    property Modified: Boolean read GetModified write SetModified;
    property StoreDataset: IJanuaDBDataset read GetStoreDataset write SetStoreDataset;
    // Storage Management .........................................................................................
  private
    function GetDelRecords: IList<IJanuaRecord>;
    procedure SetDelRecords(const aValue: IList<IJanuaRecord>);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const aValue: TJanuaFields);
    /// <summary> Loads a Recordset from another Recordset (clones)  </summary>
    procedure LoadRecordSet(const aRecordSet: IJanuaRecordSet);
    procedure RefreshFromRecodrdSet(const aRecordSet: IJanuaRecordSet; bRemote: Boolean);
    procedure LoadFromStorage(aStorage: IJanuaRecordSetStorage);
    procedure SetOnNewRecord(const Value: TProc<IJanuaRecord>);
    procedure SetOnRecordChange(const Value: TProc<IJanuaRecord>);
    function GetOnNewRecord: TProc<IJanuaRecord>;
    function GetOnRecordChange: TProc<IJanuaRecord>;
    function GetLazyLoading: Boolean;
    procedure SetLazyLoading(const Value: Boolean);
    function GetAsMetaData: TJsonObject;
    procedure SetAsMetaData(const Value: TJsonObject);
    function GetFiltered: Boolean;
    function GetOnClearDataset: TProc;
    function GetOnRecordPost: TJanuaRecordEvent;
    procedure SetFiltered(const Value: Boolean);
    procedure SetOnClearDataset(const Value: TProc);
    procedure SetOnRecordPost(const Value: TJanuaRecordEvent);
    function GetMasterRecord: IJanuaRecord;
  public
    /// <summary> With Enumerator is possible to iterate through records in a recorset for .. in loop </summary>
    function IsLocalUpdated: Boolean;
    function IsRemoteUpdated: Boolean;
    /// <summary> Searches a record using TGUID starts with a Locate on jguid Field  </summary>
    function SearchRecord(const aGUID: TGUID): Boolean; virtual;
    procedure Assign(const aRecordSet: IJanuaRecordSet);
    /// <summary>
    /// Questa procedura invia le modifiche allo store remoto per registrarle. Passa una procedura Callback allo Store
    /// Quando lo store ha terminato l'update richiama la callback del Recordset per aggiornare i dati ritornati.
    /// La procedura viene lanciata se sono presenti degli Updates e se
    /// </summary>
    procedure ApplyRemoteUpdates;
    /// <summary> procedura che in parallelo carica i dati dal Remote Storage. Al termine lancia un evento <summary>
    procedure LoadFromLocalStorage;
    /// <summary> procedura che in parallelo carica i dati dal Local Storage. <summary>
    procedure LoadFromRemoteStorage;
    procedure ApplyLocalUpdates;
    /// <summary> Esegue la procedura TProc per ogni record contenuto nel set di record <summary>
    /// <param name="aProc">/// questo parametro indica la procedura da eseguire ad ogni iterazione </param>
    procedure Iterate(aProc: TProc);
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    property DelRecords: IList<IJanuaRecord> read GetDelRecords write SetDelRecords;
    property OnNewRecord: TProc<IJanuaRecord> read GetOnNewRecord write SetOnNewRecord;
    property OnRecordChange: TProc<IJanuaRecord> read GetOnRecordChange write SetOnRecordChange;
    property LazyLoading: Boolean read FLazyLoading write SetLazyLoading;
    property AsMetadata: TJsonObject read GetAsMetaData write SetAsMetaData;
    function AssignDatasets(const aDatasets: TJanuaDBDatasets; const aRaiseException: Boolean): Boolean;
    property Filtered: Boolean read GetFiltered write SetFiltered;
    property OnClearDataset: TProc read GetOnClearDataset write SetOnClearDataset;
    property OnRecordPost: TJanuaRecordEvent read GetOnRecordPost write SetOnRecordPost;
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    // ************* List and String List Engine ************************************************
  private
    FListFields: TArray<IJanuaField>;
  protected
    function GetListFields: TArray<IJanuaField>;
    procedure SetListFields(const Value: TArray<IJanuaField>);
    function GetListFieldNames: TArray<string>;
    procedure SetListFieldNames(const Value: TArray<string>);
    function GetStringList: TStrings;
  public
    property AsStringList: TStrings read GetStringList;
    property ListFields: TArray<IJanuaField> read GetListFields write SetListFields;
    property ListFieldNames: TArray<string> read GetListFieldNames write SetListFieldNames;
    // ************* End of String List Search Engine *******************************************

  end;

  TJanuaRecordSetClass = class of TJanuaRecordSet;

  TJanuaCustomOrderByFields = class(TInterfacedObject, IJanuaOrderByFields)
  private
    FFields: IList<TJanuaOrderByField>;
  protected
    function GetFields: IList<TJanuaOrderByField>;
    function FieldCount: Integer;
  public
    procedure ClearBindings;
    procedure ClearFields;
    constructor Create; overload;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    procedure AddField(const aFieldName: string; const aOrderBy: TOrderByEnum = jobASC;
      const aCompare: TOrderByCompare = jocDefault);
    /// <summary> String builder f() that needs to be implemented by descendants according to class and DB </summary>
    function GetOrderByClause: string; virtual; abstract;
  public // public Properties
    property Fields: IList<TJanuaOrderByField> read GetFields;
  end;

  TJanuaDBDataset = class(TJanuaInterfacedBindableObject, IJanuaDBDataset, IJanuaDBCustomDataset)
  strict private
    FOnInternalExec: TNotifyEvent;
    FGUIDPrefix: string;
    FLimit: Integer;
    FPage: Integer;
    FInternalDataset: TDataset;
    FInternalDataSource: TDataSource;
    FResult: IJanuaField;
    FResultType: TJanuaFieldType;
    FDeletedField: TField;
    FParams: IJanuaParams;
    FEntityNames: TJanuaEntityNames;
    FEntities: TJanuaEntities;
    FGUIDField: TField;
    FScroll: Boolean;
    FOnScroll: TJanuaDatasetEvent;
    FSerializeFormat: TRestFormat;
    FDeSerializeFunc: TProc<string, string>;
    FSerializeFunc: TFunc<string, string>;
    procedure SetDeSerializeFunc(const Value: TProc<string, string>);
    procedure SetSerializeFunc(const Value: TFunc<string, string>);
  strict protected
    FBeforeOpenProc: TProc;
    FOrderByFields: IJanuaOrderByFields;
    procedure SetInternalDataset(const Value: TDataset);
    function GetBeforeOpenProc: Boolean; virtual;
    procedure InternalOrderByActivate; virtual; abstract;
    procedure InternalOrderByDeactivate; virtual; abstract;
    property InternalDataset: TDataset read FInternalDataset write SetInternalDataset;
    property SerializeFunc: TFunc<string, string> read FSerializeFunc write SetSerializeFunc;
    property DeSerializeFunc: TProc<string, string> read FDeSerializeFunc write SetDeSerializeFunc;
  protected
    function GetOnScroll: TJanuaDatasetEvent;
    procedure SetOnScroll(const Value: TJanuaDatasetEvent);
    function GetActive: Boolean;
    procedure SetActive(const Value: Boolean);
    function GetResult: IJanuaField;
    function GetResultType: TJanuaFieldType;
    procedure SetResultType(const Value: TJanuaFieldType);
    /// <summary>  Sets REsult Type converting TFieldType to TJanuaFieldType </summary>
    /// <param name="aParam"> The Params TParam to convert </param>
    /// <remarks> It uses the conversion  Array = JanuaFieldToPropertyType: array [TFieldType]
    /// </remarks>
    procedure SetResultTypeFromParam(const aParam: TParam);
    procedure SetResultTypeFromField(const aField: TField);
    function getLimit: Integer;
    procedure setLimit(const aValue: Integer);
    function GetPage: Integer;
    procedure SetPage(const aValue: Integer);
    function getGUIDPrefix: string;
    procedure setGUIDPrefix(const aValue: string);
    function getParams: IJanuaParams;
    procedure setParams(const aValue: IJanuaParams);
    procedure DefaultParams;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource); virtual;
  private
    procedure SetOnInternalExec(const Value: TNotifyEvent);
    function GetEntities: TJanuaEntities;
    function GetEntityNames: TJanuaEntityNames;
    function GetGUIDField: TField;
    function GetOrderByFields: IJanuaOrderByFields;
    procedure SetGUIDField(const Value: TField);
    function GetOrdered: Boolean;
    procedure SetOrdered(const Value: Boolean);
  strict protected
    function GetDataset: TDataset; virtual;
    procedure SetDataset(const Value: TDataset); virtual;
    // --------------------------------------------------------------------------------------------------
    function HasDeletedField: Boolean;
    procedure MapDeletedField;
    procedure MapEvents;
    procedure SetEntities(const AEntities: TJanuaEntities);
    procedure SetEntityNames(const AEntities: TJanuaEntityNames);
    /// <summary> This event is used to internally drive function Results (Mockups or Delphi procedures)</summary>
    property OnInternalExec: TNotifyEvent read FOnInternalExec write SetOnInternalExec;
    property Dataset: TDataset read GetDataset;
  protected // guid procedures
    procedure MapGUIDField;
    function HasGUIDField: Boolean;
    function GetGUID: TGUID;
    function GetGUIDString: string;
  public // GUID SEARCH FIELD
    function SearchRecord(const aGUID: TGUID): Boolean; virtual;
    function LocateGUID(const aGUID: TGUID): Boolean;
    /// <summary>  Calculate GUID Field String </summary>
    /// <returns>  GUIDPrefix.ToLower + _jguid</returns>
    function GUIDFieldName: string;
    property GUIDString: string read GetGUIDString;
    property GUIDPrefix: string read getGUIDPrefix write setGUIDPrefix;
    property GUIDField: TField read GetGUIDField write SetGUIDField;
    property GUID: TGUID read GetGUID;
  public // Dataset Managment procedures
    function DeleteFromDataset(const aGUID: TGUID): Boolean; overload; virtual;
    function DeleteFromDataset(const aRecord: IJanuaRecord): Boolean; overload; virtual;
    function UpdateRecord(const aRecord: IJanuaRecord): Boolean; virtual;
    /// <summary> Saves a Record to a phisical TDataset mapped by IJanuaDBDataset </summary>
    /// <param name="aRecord">IJanuaRecord the record to be inserted </param>
    /// <returns> True if </returns>
    function InsertRecord(const aRecord: IJanuaRecord): Boolean; virtual;
  private // Janua DB RecordSetEvents ........................................
    FAfterOpen: TJanuaDBDataSetNotifyEvent;
    FAfterScroll: TJanuaDBDataSetNotifyEvent;
    FBeforeCancel: TJanuaDBDataSetNotifyEvent;
    FBeforeDelete: TJanuaDBDataSetNotifyEvent;
    FBeforeInsert: TJanuaDBDataSetNotifyEvent;
    FBeforePost: TJanuaDBDataSetNotifyEvent;
    FFieldCount: Integer;
    FOnCalcFields: TJanuaDBDataSetNotifyEvent;
    FOnNewRecord: TJanuaDBDataSetNotifyEvent;
    // TDataSetNotifyEvent (to maintain original Dataset Events)
    FDBAfterScroll: TDataSetNotifyEvent;
    FDBBeforeCancel: TDataSetNotifyEvent;
    FDBBeforeDelete: TDataSetNotifyEvent;
    FDBBeforeInsert: TDataSetNotifyEvent;
    FDBBeforePost: TDataSetNotifyEvent;
    FDBOnCalcFields: TDataSetNotifyEvent;
    FDBOnNewRecord: TDataSetNotifyEvent;
  protected
    procedure DatasetAfterOpen(Dataset: TDataset); virtual;
    procedure DataSetAfterScroll(Dataset: TDataset); virtual;
    procedure DataSetBeforeCancel(Dataset: TDataset); virtual;
    procedure DataSetBeforeDelete(Dataset: TDataset); virtual;
    procedure DataSetBeforeInsert(Dataset: TDataset); virtual;
    procedure DataSetBeforePost(Dataset: TDataset); virtual;
    procedure DataSetOnCalcFields(Dataset: TDataset); virtual;
    procedure DataSetOnNewRecord(Dataset: TDataset); virtual;
  protected
    function GetFieldCount: Integer;
    function GetAfterScroll: TJanuaDBDataSetNotifyEvent;
    function GetAfterOpen: TJanuaDBDataSetNotifyEvent;
    function GetBeforeCancel: TJanuaDBDataSetNotifyEvent;
    function GetBeforeDelete: TJanuaDBDataSetNotifyEvent;
    function GetBeforeInsert: TJanuaDBDataSetNotifyEvent;
    function GetBeforePost: TJanuaDBDataSetNotifyEvent;
    function GetOnCalcFields: TJanuaDBDataSetNotifyEvent;
    function GetOnNewRecord: TJanuaDBDataSetNotifyEvent;
    procedure SetAfterScroll(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetAfterOpen(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetBeforeCancel(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetBeforeDelete(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetBeforeInsert(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetBeforePost(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetOnCalcFields(const Value: TJanuaDBDataSetNotifyEvent);
    procedure SetOnNewRecord(const Value: TJanuaDBDataSetNotifyEvent);
  protected // Standard Dataset Properties......................................
    function GetName: string;
    procedure SetName(const Value: string);
    function GetState: TDatasetState;
    function GetFieldDefs: TFieldDefs;
    procedure SetFieldDefs(const Value: TFieldDefs);
  public
    function AddField(const aName: string; const aFieldType: TJanuaFieldType;
      const aSize, aPrecision: Smallint): TField; overload;
    function AddField(const aField: IJanuaField): TField; overload;
    procedure CreateFields(const aRecord: IJanuaRecord);
    property FieldCount: Integer read GetFieldCount;
    property FieldDefs: TFieldDefs read GetFieldDefs write SetFieldDefs;
    property Name: string read GetName write SetName;
    property OnCalcFields: TJanuaDBDataSetNotifyEvent read GetOnCalcFields write SetOnCalcFields;
    property AfterScroll: TJanuaDBDataSetNotifyEvent read GetAfterScroll write SetAfterScroll;
    property BeforeCancel: TJanuaDBDataSetNotifyEvent read GetBeforeCancel write SetBeforeCancel;
    property BeforeInsert: TJanuaDBDataSetNotifyEvent read GetBeforeInsert write SetBeforeInsert;
    property BeforePost: TJanuaDBDataSetNotifyEvent read GetBeforePost write SetBeforePost;
    property BeforeDelete: TJanuaDBDataSetNotifyEvent read GetBeforeDelete write SetBeforeDelete;
    property OnNewRecord: TJanuaDBDataSetNotifyEvent read GetOnNewRecord write SetOnNewRecord;
  public
    procedure BeginScroll(const DisableDataSource: Boolean = False);
    procedure EndScroll;
    procedure DeleteCurrentRecord;
    function AddParam(aParam: IJanuaField): IJanuaField; overload;
    function AddParam(aParam: TParam): IJanuaField; overload;
    // function GetFieldType: TJanuaFieldType;
    function AddParam(const aName: string; aType: TJanuaFieldType): IJanuaField; overload;
    function ParamByName(const aName: string): IJanuaField;
    function DeletedFieldName: string;
    function FindParam(const aParamName: string; out aParam: IJanuaField): Boolean;
    procedure First;
    procedure Next;
    procedure Prior;
    procedure Last;
    function Eof: Boolean;
    function Bof: Boolean;
    procedure Open; virtual;
    procedure OpenThreaded(aProc: TProc = nil); virtual;
    procedure Close; virtual;
    procedure Post; virtual;
    procedure Refresh; virtual;
    procedure Append;
    function RecordCount: Integer;
    /// <remarks> Added 2020-05-09 By AR </remarks>
    /// <example> AddEntity('ads.banners'); </example>
    procedure AddEntity(const aEntity: string); overload;
    procedure AddEntity(const aEntity: TJanuaEntity); overload;
    procedure AddEntities(const AEntities: TJanuaEntities);
    procedure AddEntityNames(const AEntities: TJanuaEntityNames);
    function FieldByName(const FieldName: string): TField; virtual;
    function FindField(const FieldName: string): TField; virtual;
    function Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean;
  public
    property Limit: Integer read getLimit write setLimit;
    property Page: Integer read GetPage write SetPage;
    property Params: IJanuaParams read getParams write setParams;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property State: TDatasetState read GetState;
    procedure ClearDataset; virtual;
    procedure Edit;
    // ------------- Constructors Destructors ------------------------------------------------------------------
  public
    constructor Create; override;
    destructor Destroy; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    constructor CreateWithEntities(const AEntities: TJanuaEntities); overload; virtual;
    constructor CreateWithNames(const AEntities: TJanuaEntityNames); overload;
    // ------------- Detail Dataset Management -----------------------------------------------------------------
  private
    FDetailDatasets: IList<IJanuaDBDataset>;
  protected
    function GetDetailDatasets: IList<IJanuaDBDataset>;
    function GetDatasetCount: Integer;
    procedure SetDetailDatasets(const Value: IList<IJanuaDBDataset>);
    function GetJsonMetadata: TJsonObject;
    procedure SetJsonMetadata(const Value: TJsonObject);
  public
    property DatasetCount: Integer read GetDatasetCount;
    property DetailDatasets: IList<IJanuaDBDataset> read GetDetailDatasets write SetDetailDatasets;
    procedure AddDataset(const aDataset: IJanuaDBDataset);
    procedure RemoveDataset(const aDataset: IJanuaDBDataset);
    // Filter and Search ---------------------------------------------------------------------------------
  private
    FFilterParams: IJanuaParams;
    FOrdered: Boolean;
    FSearchFilter: string;
  protected
    procedure GenerateFilter;
    function GetFiltered: Boolean;
    procedure SetFiltered(const Value: Boolean); virtual;
    function getFilterParams: IJanuaParams; // IList<IJanuaField>;
    function GetAppendFirst: Boolean;
    procedure SetAppendFirst(const Value: Boolean);
  public
    function AddFilterParam(aParam: IJanuaField): IJanuaField; overload;
    function FilterByName(const aName: string): IJanuaField;
    function FindFilter(const aFilterName: string; out aFilter: IJanuaField): Boolean;
    procedure SetSearchFilter(const aSQLFilter: string); virtual;
    procedure ApplyFilter;
  public
    property Filtered: Boolean read GetFiltered write SetFiltered;
    /// <summary> Act like Params but operate a Filter using in memory filter settings for dataset </summary>
    property FilterParams: IJanuaParams read getFilterParams;
    property OrderByFields: IJanuaOrderByFields read GetOrderByFields;
    property Ordered: Boolean read GetOrdered write SetOrdered;
    property AppendFirst: Boolean read GetAppendFirst write SetAppendFirst;
    // -- Grid Columns, Export and Reporting Engine ---------------------------------------------------------
  private
    FAppendFirst: Boolean;
    FGridColumns: IList<TJanuaGridColumnField>;
  public
    function GetGridColumns: IList<TJanuaGridColumnField>;
    function AddGridColumn(aField: TField; aCharWidth: Integer = 0; aTitle: string = ''): Integer; overload;
    function AddGridColumn(const aFieldName: string; aCharWidth: Integer = 0; aTitle: string = '';
      aMask: string = ''): Integer; overload;
    property GridColumns: IList<TJanuaGridColumnField> read GetGridColumns;
    // Dataset Export and Import Procedures
  protected
    /// <summary> Can export/import all dataset metadata settings in Json format to store them on db </summary>
    property AsJsonMetadata: TJsonObject read GetJsonMetadata write SetJsonMetadata;
    function GetAsBase64: string; virtual; abstract;
    function GetAsJson: string; virtual; abstract;
    procedure SetAsBase64(const Value: string); virtual; abstract;
    procedure SetAsJson(const Value: string); virtual; abstract;
    function GetAsJsonMeta: string;
    procedure SetAsJsonMeta(const Value: string);
    function GetSerializeFormat: TRestFormat;
    procedure SetSerializeFormat(const Value: TRestFormat);
    function Serialize(const aFormat: string): string;
    procedure DeSerialize(const aFormat, aPayload: string);
    function GetFieldByName(const FieldName: string; out aField: TField): Boolean;
  public
    property SerializeFormat: TRestFormat read GetSerializeFormat write SetSerializeFormat;
    property AsJsonMeta: string read GetAsJsonMeta write SetAsJsonMeta;
    property asJson: string read GetAsJson write SetAsJson;
    property AsBase64: string read GetAsBase64 write SetAsBase64;
    // ----------------------------- Remoting -------------------------------------------------------
  private
    FRemoteFormat: TRestFormat;
    FRemoteClient: IRemoteDatasetClient;
    FDatasetURL: string;
  protected
    procedure SetRemoteClient(const Value: IRemoteDatasetClient);
    function getRemoteClient: IRemoteDatasetClient;
    procedure SetDatasetURL(const Value: string);
    function GetDatasetURL: string;
    function GetRemoteFormat: TRestFormat;
    procedure SetRemoteFormat(const Value: TRestFormat);
  public
    function RemoteLoad: Boolean;
    function RemoteDelete: Boolean;
    function RemoteUpdate: Boolean;
    function RemoteAppend: Boolean;
    function RemoteGetMeta: Boolean;
    property RemoteFormat: TRestFormat read GetRemoteFormat write SetRemoteFormat;
    property RemoteClient: IRemoteDatasetClient read getRemoteClient write SetRemoteClient;
    property DatasetURL: string read GetDatasetURL write SetDatasetURL;
  end;

  TJanuaDBDatasetClass = class of TJanuaDBDataset;

  TJanuaOrmFactory = class
  public
    class constructor Create;
  protected
    // // Search Containers : TSearchContainerClass (class of TJanuaSearchContainer);
    class var SearchContainerClasses: IDictionary<TGUID, TSearchContainerClass>;
    class function GetSearchContainerClasses: IDictionary<TGUID, TSearchContainerClass>;
  protected
    class function CreateRecord: IJanuaRecord; overload;
  public // Search Containers : TSearchContainerClass (class of TJanuaSearchContainer);
    class procedure RegisterContainer(const aGUID: TGUID; aClass: TSearchContainerClass);
    class function GetContainer(const aGUID: TGUID; const aGroupID: Integer; aField: IJanuaField;
      out aObject: TJanuaSearchContainer): Boolean;
    class function TryGetContainer(const IID: TGUID; const aGroupID: Integer; aField: IJanuaField; out Intf;
      const aRaise: Boolean = True): Boolean;
  public
    class function CreateField(const aName: string; aType: TJanuaFieldType): IJanuaField; overload;
    class function CreateField(const aObject: TJsonObject): IJanuaField; overload;
    class function CreateField(const aField: TField): IJanuaField; overload;
    class function CreateField(const aParam: TParam): IJanuaField; overload;
    class function CreateBlobField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateExtentedField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateIntegerField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateSmallintField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateLargeIntField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateDoubleField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateCurrencyCField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateBoolField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateMemoField(aKey, aField: string; aIsMonitored: Boolean = False): IJanuaField;
    class function CreateStringField(aKey, aField: string; aSize: UInt16 = 128; aIsMonitored: Boolean = False)
      : IJanuaField;
    class function CreateDateTimeField(aKey, aField: string; aDateTime: TDateTime = 0.0;
      aIsMonitored: Boolean = False): IJanuaField;
    // TJanuaRecord = class(TJanuaInterfacedBindableObject, IJanuaRecord)
    class function CreateRecordWithMeta(const aJson: string; const aName: string = ''): IJanuaRecord;
    class function CreateRecord(const aName: string): IJanuaRecord; overload;
    class function CreateRecord(const aName: string; const aJson: TJsonObject): IJanuaRecord; overload;
    class function CreateRecord(const aName, aJson: string): IJanuaRecord; overload;
    class function CreateRecord(aDataset: TDataset): IJanuaRecord; overload;
    class function CreateRecordset(const aName: string; aRecord: IJanuaRecord): IJanuaRecordSet; overload;
    class function CreateRecordset(aDataset: TDataset): IJanuaRecordSet; overload;
    // Create Serialization .....
    class function CreateRecordSerialization(const aRecord: IJanuaRecord): IRecSerialization;
  protected
    class var RecordClasses: IDictionary<TGUID, TJanuaRecordClass>;
    class function GetRecordClasses: IDictionary<TGUID, TJanuaRecordClass>;
    class var RecordSetClasses: IDictionary<TGUID, TJanuaRecordSetClass>;
    class function GetRecordSetClasses: IDictionary<TGUID, TJanuaRecordSetClass>;
  public
    class procedure RegisterRecord(const aGUID: TGUID; aClass: TJanuaRecordClass);
    class function GetRecordObject(const aGUID: TGUID; out aRecord: TJanuaRecord; const aName: string;
      const aEntity: TJanuaEntity = None): Boolean;
    class function TryGetRecordIntf(const IID: TGUID; out Intf; const aName: string;
      const aEntity: TJanuaEntity = None): Boolean;
  public
    class procedure RegisterRecordSet(const aGUID: TGUID; aClass: TJanuaRecordSetClass);
    class function GetRecordSetObject(const aGUID: TGUID; out aRecordSet: TJanuaRecordSet; aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): Boolean;
    class function TryGetRecordSetIntf(const IID: TGUID; aName: string;
      const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage; out Intf): Boolean;
  end;

procedure SaveRecordToDataset(const aRecord: IJanuaRecord; aDataset: IJanuaDBDataset = nil);

procedure SaveRecordToDBDataset(const aRecord: IJanuaRecord; aDataset: TDataset);

function FieldsToJsonObject(const aFields: TJanuaFields): TJsonObject;

function JsonObjectToFields(const aObject: TJsonObject): TJanuaFields;

var
  CheckFields: Boolean;

implementation

uses
  // System
  System.Math, System.StrUtils, System.DateUtils, System.Types, System.IOUtils, System.Variants,
  Dataset.Serialize,
  // OS specific
{$IFDEF MACOS} Macapi.CoreFoundation, {$ENDIF}
  // Third Party Libs
  Janua.Mocks.Helpers, Janua.Core.AsyncTask,
  // Janua Framework
  Janua.Core.Json, Janua.Core.Functions, Janua.Html.Impl, Janua.Application.Framework;

function FieldsToJsonObject(const aFields: TJanuaFields): TJsonObject;
var
  LObj: TJsonObject;
  LArr: TJsonArray;
  aField: IJanuaField;
  I: Integer;
begin
  Result := TJsonObject.Create;
  LArr := TJsonArray.Create;
  if Assigned(aFields) and (aFields.Count > 0) then
    for I := 0 to Pred(aFields.Count) do
      LArr.AddElement(aFields[I].AsJsonMetadata);
  Janua.Core.Json.JsonPair(Result, 'fields', LArr);
end;

function JsonObjectToFields(const aObject: TJsonObject): TJanuaFields;
var
  LArr: TJsonArray;
  aValue, LValue: TJsonValue;
  aPair: TJsonPair;
  LObject: TJsonObject;
begin
  // Creo una lista vuota di Campi
  Result := Spring.Collections.TCollections.CreateList<IJanuaField>;
  // Devo 'parsare' l'oggetto cercando l'array da Estrarre.
  Janua.Core.Json.JsonValue(aObject, 'fields', LArr);
  if Assigned(LArr) then
    for aValue in LArr do
    begin
      LObject := (aValue as TJsonObject);
      Result.Add(TJanuaOrmFactory.CreateField(LObject));
      // Estraggo il valore del campo se presente.
      JsonValue(LObject, 'value', LValue);
      // Verifico che sia associato il campo e se s? sovrascrivo il Default con il valore ottenuto
      if Assigned(LValue) then
        Result.Items[Pred(Result.Count)].AsJsonValue := LValue;
    end;
end;

procedure SaveRecordToDBDataset(const aRecord: IJanuaRecord; aDataset: TDataset);
var
  aField: TField;
  lField: IJanuaField;

  procedure SaveGUID;
  begin
    if aField.AsGUID <> aRecord.GUID then
      aField.AsGUID := aRecord.GUID;
  end;

  procedure SaveMasterGUID;
  begin
    if aField.AsGUID <> aRecord.MasterGUID then
      aField.AsGUID := aRecord.MasterGUID;
  end;

  function NameDataset: string;
  begin
    Result := '"';
    if Assigned(aDataset) then
    begin
      if Assigned(aDataset.Owner) then
        Result := aDataset.Owner.ClassName + '(' + aDataset.Owner.Name + ').';
      Result := Result + aDataset.ClassName + '(' + aDataset.Name + ')';
{$IFDEF DEBUG}
      Result := Result + sLineBreak + aDataset.ToJSONObject.ToJson;
{$ENDIF}
    end;
{$IFDEF DEBUG}
    if Assigned(aRecord) then
      Result := Result + sLineBreak + aRecord.Name + ':' + aRecord.AsJsonObject.ToJson;
{$ENDIF}
    Result := Result + '"';
  end;

begin
  try
{$IFDEF DEBUG}
    Guard.CheckNotNull(aRecord, '  IJanuaRecord is null');
    Guard.CheckNotNull(aDataset, '  aDataset is null');
{$ENDIF}
    if (aDataset.State in [dsInsert]) or not aRecord.EqualsDataset(aDataset) then
    begin
      if not(aDataset.State in [dsInsert, dsInsert]) then
        aDataset.Edit;
      for lField in aRecord.Fields do
        lField.WriteToDataset(aDataset);
      if Janua.Core.Functions.GetFieldByName(aDataset, 'deleted', aField) then
        aField.AsBoolean := aRecord.Deleted
      else if Janua.Core.Functions.GetFieldByName(aDataset, aRecord.Prefix + '_deleted', aField) then
        aField.AsBoolean := aRecord.Deleted;

      if Janua.Core.Functions.GetFieldByName(aDataset, 'jguid', aField) then
        SaveGUID
      else if Janua.Core.Functions.GetFieldByName(aDataset, aRecord.PrefixGUIDField, aField) then
        SaveGUID;

      if Janua.Core.Functions.GetFieldByName(aDataset, 'master_jguid', aField) then
        SaveMasterGUID
      else if Janua.Core.Functions.GetFieldByName(aDataset, aRecord.PrefixGUIDField, aField) then
        SaveMasterGUID;

      aDataset.Post;

      // if Dataset changed some informations about the dataset so dataset must be refreshed from
      // Record But Details Dataset must be preserved
      if not aRecord.EqualsDataset(aDataset) then
      begin
        aRecord.LoadRecord(False);
        { aRecord.DirectLoadFromDataset(aDataset, False, False); }
      end;
    end;

  except
    on e: exception do
      // RaiseException('SaveRecordToDBDataset ' + NameDataset, e, aRecord.AsObject);
      raise exception.Create(aRecord.AsObject.ClassName + '.SaveRecordToDBDataset(' + NameDataset + '):' +
        e.Message);
  end;
end;

procedure SaveRecordToDataset(const aRecord: IJanuaRecord; aDataset: IJanuaDBDataset = nil);
var
  tmp: string;
begin
  Guard.CheckNotNull(aRecord, ' SaveRecordToDatasetd IJanuaRecord is null');
  try
    if not Assigned(aDataset) then
      aDataset := aRecord.StoreDataset;
    aDataset.GUIDPrefix := aRecord.PrefixGUIDField;

    SaveRecordToDBDataset(aRecord, aDataset.Dataset);
  except
    on e: exception do
      raise exception.Create('SaveRecordToDataset(IJanuaDBDataset) ' + e.Message);
  end;
end;

{ TJanuaOrmFactory }

class constructor TJanuaOrmFactory.Create;
begin
  try
    SearchContainerClasses := TCollections.CreateDictionary<TGUID, TSearchContainerClass>;
    RecordSetClasses := TCollections.CreateDictionary<TGUID, TJanuaRecordSetClass>;
    RecordClasses := TCollections.CreateDictionary<TGUID, TJanuaRecordClass>;
  except
    on e: exception do
      RaiseException('TJanuaOrmFactory.Create', e, nil);
  end;
end;

class function TJanuaOrmFactory.CreateBlobField(aKey, aField: string; aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaBlobField.New(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateBoolField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaBooleanField.New(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateCurrencyCField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaCurrencyField.New(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateDateTimeField(aKey, aField: string; aDateTime: TDateTime = 0.0;
  aIsMonitored: Boolean = False): IJanuaField;
begin
  Result := TJanuaDateTimeField.Create(aKey.ToLower, aField.ToLower, aDateTime, aIsMonitored);
end;

class function TJanuaOrmFactory.CreateDoubleField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaDoubleField.New(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateExtentedField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaExtendedField.Create(aKey.ToLower, aField.ToLower, aIsMonitored);
end;

class function TJanuaOrmFactory.CreateField(const aName: string; aType: TJanuaFieldType): IJanuaField;
begin
  case aType of
    jptUnknown:
      ;
    jptCurrency:
      Result := TJanuaOrmFactory.CreateCurrencyCField(aName, aName, False);
    jptExtended:
      Result := TJanuaOrmFactory.CreateExtentedField(aName, aName, False);
    jptDate:
      Result := TJanuaOrmFactory.CreateDateTimeField(aName, aName, 0.0, False);
    jptDateTime:
      Result := TJanuaOrmFactory.CreateDateTimeField(aName, aName, 0.0, False);
    jptSmallint:
      Result := TJanuaOrmFactory.CreateSmallintField(aName, aName, False);
    jptInteger:
      Result := TJanuaOrmFactory.CreateIntegerField(aName, aName, False);
    jptLargeInt:
      Result := TJanuaOrmFactory.CreateLargeIntField(aName, aName, False);
    jptFilename:
      Result := TJanuaOrmFactory.CreateStringField(aName, aName);
    jptString:
      Result := TJanuaOrmFactory.CreateStringField(aName, aName);
    jptFloat:
      Result := TJanuaOrmFactory.CreateDoubleField(aName, aName, False);
    jptHtmlText:
      ;
    jptRichText:
      ;
    jptBoolean:
      Result := TJanuaOrmFactory.CreateBoolField(aName, aName, False);
    jptText:
      Result := TJanuaOrmFactory.CreateMemoField(aName, aName, False);
    jptBytes:
      ;
    jptUrl:
      ;

    TJanuaFieldType.jpTBlob:
      Result := TJanuaOrmFactory.CreateBlobField(aName, aName, False);
  else
    begin
      raise exception.Create('TJanuaOrmFactory.CreateField (aName: ' + aName + ') failed');
    end;
  end;
end;

class function TJanuaOrmFactory.CreateField(const aObject: TJsonObject): IJanuaField;
var
  LSType: string;
  LType: TJanuaFieldType;
  LKey: string;
  LValue: TJsonValue;
begin
  Result := nil;
  JsonValue(aObject, 'key', LKey);
  JsonValue(aObject, 'type', LSType);
  if TEnumConvertor<TJanuaFieldType>.TryFromString(LSType, LType) then
  begin
    Result := CreateField(LKey, LType);
    if Assigned(Result) then
    begin
      Result.AsJsonMetadata := aObject;
    end
    else
      raise exception.Create('Field "' + LKey + '" of type: ' + LSType + ' creation Error');
  end;

end;

class function TJanuaOrmFactory.CreateIntegerField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaIntegerField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateLargeIntField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaLargeIntField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateMemoField(aKey, aField: string; aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaMemoField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateRecord: IJanuaRecord;
begin
  Result := TJanuaRecord.Create;
end;

class function TJanuaOrmFactory.CreateRecord(const aName: string): IJanuaRecord;
begin
  Result := CreateRecord;
  Result.Name := aName
end;

class function TJanuaOrmFactory.CreateRecordSerialization(const aRecord: IJanuaRecord): IRecSerialization;
begin
  Result := TJanuaRecSerialization.Create(aRecord);
end;

class function TJanuaOrmFactory.CreateRecordset(aDataset: TDataset): IJanuaRecordSet;
begin
  Result := TJanuaOrmFactory.CreateRecordset(aDataset.Name, TJanuaOrmFactory.CreateRecord(aDataset));
  Result.Clear;
  Result.DirectLoadFromDataset(aDataset, False);
end;

class function TJanuaOrmFactory.CreateRecordWithMeta(const aJson, aName: string): IJanuaRecord;
begin
  Result := TJanuaRecord.Create;
  Result.AsJsonWithMeta := aJson;
  if aName <> '' then
    Result.Name := aName;

end;

class function TJanuaOrmFactory.CreateRecordset(const aName: string; aRecord: IJanuaRecord): IJanuaRecordSet;
begin
  Result := TJanuaRecordSet.Create(aName, nil, nil);
  Result.SetRecord(aRecord);
end;

class function TJanuaOrmFactory.CreateSmallintField(aKey, aField: string; aIsMonitored: Boolean = False)
  : IJanuaField;
begin
  Result := TJanuaSmallIntField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateStringField(aKey, aField: string; aSize: UInt16 = 128;
  aIsMonitored: Boolean = False): IJanuaField;
begin
  Result := TJanuaStringField.Create(aKey.ToLower, aField.ToLower, aIsMonitored);
  Result.MaxLength := aSize
end;

class function TJanuaOrmFactory.GetContainer(const aGUID: TGUID; const aGroupID: Integer; aField: IJanuaField;
  out aObject: TJanuaSearchContainer): Boolean;
var
  lClass: TSearchContainerClass;
begin
  Result := GetSearchContainerClasses.TryGetValue(aGUID, lClass);
  if Result then
    aObject := lClass.Create(aGroupID, aField);
end;

class function TJanuaOrmFactory.GetRecordClasses: IDictionary<TGUID, TJanuaRecordClass>;
begin
  try
    Result := RecordClasses;
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetRecordClasses ' + e.Message);
  end;
end;

class function TJanuaOrmFactory.GetRecordObject(const aGUID: TGUID; out aRecord: TJanuaRecord;
  const aName: string; const aEntity: TJanuaEntity): Boolean;
var
  lClass: TJanuaRecordClass;
begin
  Result := GetRecordClasses.TryGetValue(aGUID, lClass);
  if Result then
    aRecord := lClass.Create;
end;

class function TJanuaOrmFactory.GetRecordSetClasses: IDictionary<TGUID, TJanuaRecordSetClass>;
begin
  try
    if not Assigned(RecordSetClasses) then
      RecordSetClasses := TCollections.CreateDictionary<TGUID, TJanuaRecordSetClass>;
    // if not Assigned(ObjClasses) then
    // raise Exception.Create('TJanuaApplicationFactory.GetObjClasses not Assigned(GetObjClasses) ');
    Result := RecordSetClasses;
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetRecordSetClasses ' + e.Message);
  end;
end;

class function TJanuaOrmFactory.GetRecordSetObject(const aGUID: TGUID; out aRecordSet: TJanuaRecordSet;
  aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): Boolean;
var
  lClass: TJanuaRecordSetClass;
begin
  Result := GetRecordSetClasses.TryGetValue(aGUID, lClass);
  if Result then
    aRecordSet := lClass.Create(aName, aLocalStorage, aRemoteStorage);
end;

class function TJanuaOrmFactory.GetSearchContainerClasses: IDictionary<TGUID, TSearchContainerClass>;
begin
  try
    Result := SearchContainerClasses;
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.GetSearchContainerClasses ' + e.Message);
  end;
end;

class procedure TJanuaOrmFactory.RegisterContainer(const aGUID: TGUID; aClass: TSearchContainerClass);
begin
  if Supports(aClass, aGUID) then
    GetSearchContainerClasses[aGUID] := aClass
  else
    raise exception.Create('TJanuaApplicationFactory.RegisterContainer ' + aClass.ClassName +
      ' does not support interface ' + GetInterfaceName(aGUID));
end;

class procedure TJanuaOrmFactory.RegisterRecord(const aGUID: TGUID; aClass: TJanuaRecordClass);
begin
  try
    if Supports(aClass, aGUID) then
      GetRecordClasses[aGUID] := aClass // AddOrSetValue(aGUID, aClass)
    else
      raise exception.Create('TJanuaApplicationFactory.RegisterRecord ' + aClass.ClassName +
        ' does not support interface ' + GetInterfaceName(aGUID));
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.RegisterClass ' + e.Message);
  end;
end;

class procedure TJanuaOrmFactory.RegisterRecordSet(const aGUID: TGUID; aClass: TJanuaRecordSetClass);
begin
  try
    if Supports(aClass, aGUID) then
      GetRecordSetClasses[aGUID] := aClass
    else
      raise exception.Create('TJanuaApplicationFactory.RegisterRecordSet ' + aClass.ClassName +
        ' does not support interface ' + GetInterfaceName(aGUID));
  except
    on e: exception do
      raise exception.Create('TJanuaApplicationFactory.RegisterRecordSet ' + e.Message);
  end;
end;

class function TJanuaOrmFactory.TryGetContainer(const IID: TGUID; const aGroupID: Integer;
  aField: IJanuaField; out Intf; const aRaise: Boolean): Boolean;
var
  LObject: TJanuaSearchContainer;
begin
  Result := GetContainer(IID, aGroupID, aField, LObject);
  if Result then
  begin
    Result := Supports(LObject, IID, Intf);
    if not Result and aRaise then
      raise exception.Create('TryGetContainer ' + LObject.ClassName + ' does not support ' +
        GetInterfaceName(IID));
  end
  else if aRaise then
    raise exception.Create('TryGetContainer Interface not found: ' + GetInterfaceName(IID));
end;

class function TJanuaOrmFactory.TryGetRecordIntf(const IID: TGUID; out Intf; const aName: string;
  const aEntity: TJanuaEntity): Boolean;
var
  lRecord: TJanuaRecord;
begin
  Result := GetRecordObject(IID, lRecord, aName, aEntity);
  if Result then
    Result := Supports(lRecord, IID, Intf);
end;

class function TJanuaOrmFactory.TryGetRecordSetIntf(const IID: TGUID; aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage; out Intf): Boolean;
var
  lRecordSet: TJanuaRecordSet;
begin
  Result := GetRecordSetObject(IID, lRecordSet, aName, aLocalStorage, aRemoteStorage);
  if Result then
    Result := Supports(lRecordSet, IID, Intf);
end;

class function TJanuaOrmFactory.CreateField(const aParam: TParam): IJanuaField;
begin
  if JanuaFieldToPropertyType[aParam.DataType] <> jptUnknown then
    Result := CreateField(aParam.Name, JanuaFieldToPropertyType[aParam.DataType])
  else
    Result := nil;
end;

class function TJanuaOrmFactory.CreateField(const aField: TField): IJanuaField;
begin
  if JanuaFieldToPropertyType[aField.DataType] <> jptUnknown then
    Result := CreateField(aField.FieldName, JanuaFieldToPropertyType[aField.DataType])
  else
    Result := nil;
end;

class function TJanuaOrmFactory.CreateRecord(aDataset: TDataset): IJanuaRecord;
var
  lField: TField;
begin
  Result := TJanuaOrmFactory.CreateRecord(aDataset.Name);
  for lField in aDataset.Fields do
    Result.AddField(TJanuaOrmFactory.CreateField(lField));
  Result.DirectLoadFromDataset(aDataset, False, False);
end;

class function TJanuaOrmFactory.CreateRecord(const aName, aJson: string): IJanuaRecord;
var
  lJsonObject: TJsonObject;
begin
  lJsonObject := JsonParse(aJson);
  try
    Result := CreateRecord(aName, lJsonObject);
  finally
    lJsonObject.Free;
  end;
end;

class function TJanuaOrmFactory.CreateRecord(const aName: string; const aJson: TJsonObject): IJanuaRecord;
begin
  Result := TJanuaRecord.Create(aJson);
  Result.Name := aName;
end;

{ TJanuaIntegerField }

constructor TJanuaIntegerField.Create;
begin
  inherited;

end;

procedure TJanuaIntegerField.Clear;
begin
  try
    Default;
    // Only if EntityKey is set the field can be Null
    SetIsNull(IsEntityKey);
  except
    on e: exception do
      if Assigned(self) then
        raise exception.Create('TJanuaIntegerField (' + DBField + ').Clear Error = ' + sl + e.Message)
      else
        raise exception.Create('TJanuaIntegerField.Clear Error = Class is nil ' + sl + e.Message);
  end;
end;

constructor TJanuaIntegerField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptInteger, aIsMonitored)
end;

procedure TJanuaIntegerField.Default;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  if FInternalValue <> FDefaultValue then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaIntegerField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaIntegerField.getAsBoolean: Boolean;
begin
  Result := not FInternalValue = 0
end;

function TJanuaIntegerField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaIntegerField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue.ToDouble
end;

function TJanuaIntegerField.getAsFloat: Extended;
begin
  Result := FInternalValue.ToExtended
end;

function TJanuaIntegerField.getAsInteger: Integer;
begin
  Result := FInternalValue
end;

function TJanuaIntegerField.getAsLargeInt: Int64;
begin
  Result := FInternalValue
end;

function TJanuaIntegerField.getAsSmallint: Smallint;
begin
  Result := FInternalValue
end;

function TJanuaIntegerField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaIntegerField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(FInternalValue.ToString);
end;

function TJanuaIntegerField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaIntegerField.GetDataString: string;
begin
  Result := GetAsString
end;

function TJanuaIntegerField.GetDefault: TValue;
begin
  Result := TValue(FDefaultValue)
end;

function TJanuaIntegerField.GetIsNull: Boolean;
begin
  Result := IsEntityKey and (FFInternalValue = 0)
end;

function TJanuaIntegerField.GetJson: string;
begin
  Janua.Core.Json.JsonPair(Key, FInternalValue).ToJson
end;

function TJanuaIntegerField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonNumber.Create(FDefaultValue)
end;

function TJanuaIntegerField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(FInternalValue)
end;

function TJanuaIntegerField.GetModified: Boolean;
begin
  Result := FFInternalValue <> FOldValue
end;

function TJanuaIntegerField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaIntegerField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaIntegerField.IsDefault: Boolean;
begin
  Result := FInternalValue = FDefaultValue
end;

procedure TJanuaIntegerField.LoadFromStream(aStream: TStream);
begin

end;

class function TJanuaIntegerField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaIntegerField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaIntegerField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaIntegerField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1, 0);
end;

procedure TJanuaIntegerField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := Round(aValue)
end;

procedure TJanuaIntegerField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := Trunc(aValue)
end;

procedure TJanuaIntegerField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := Round(aValue);
end;

procedure TJanuaIntegerField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue;
end;

procedure TJanuaIntegerField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := IfThen(aValue <= High(Integer), aValue, High(Integer));
end;

procedure TJanuaIntegerField.setAsSmallint(const Value: Smallint);
begin
  FInternalValue := Value;
end;

procedure TJanuaIntegerField.setAsString(const aValue: string);
begin
  Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue), 'TJanuaIntegerField error string is not numeric');
  ExecProc(
    procedure
    begin
      FInternalValue := System.SysUtils.StrToInt(aValue)
    end, 'setAsString ' + aValue + ' ', self);
end;

procedure TJanuaIntegerField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaIntegerField.SetDataString(const aValue: string);
begin
  setAsString(aValue);
end;

procedure TJanuaIntegerField.SetDefault(aValue: TValue);
begin
  FInternalValue := aValue.AsInteger
end;

procedure TJanuaIntegerField.SetFInternalValue(const aValue: Integer);
begin
  if aValue <> FFInternalValue then
  begin
    IsNull := False;
    FFInternalValue := aValue;
    if IsMonitored and Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    CheckNotifications;
  end;

  SetIsNull(IsEntityKey and (FFInternalValue = FDefaultValue));
end;

procedure TJanuaIntegerField.SetIsEntityKey(const Value: Boolean);
begin
  inherited;
  SetIsNull(IsEntityKey and (FInternalValue = FDefaultValue))
end;

procedure TJanuaIntegerField.SetIsNull(const Value: Boolean);
begin
  if IsEntityKey then
    inherited;
end;

procedure TJanuaIntegerField.SetJson(aValue: string);
begin

end;

procedure TJanuaIntegerField.SetJsonDefault(aValue: TJsonValue);
begin
  if not TryStrToInt(aValue.Value, FDefaultValue) then
    FDefaultValue := 0;
end;

procedure TJanuaIntegerField.SetJsonValue(aValue: TJsonValue);
var
  tmp: Integer;
begin
  if TryStrToInt(TJsonNumber(aValue).Value, tmp) then
    FInternalValue := tmp;
end;

procedure TJanuaIntegerField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaIntegerField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.AsInteger
end;

procedure TJanuaIntegerField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsInteger
end;

function TJanuaIntegerField.Size: Int64;
begin
  Result := IfThen(FInternalValue = 0, 0, SizeOf(Integer));
end;

{ TJanuaLargeIntField }

constructor TJanuaLargeIntField.Create;
begin
  inherited;
  FDefaultValue := 0;
  FInternalValue := 0;
end;

procedure TJanuaLargeIntField.Clear;
begin
  SetIsNull(True);
  FInternalValue := 0
end;

constructor TJanuaLargeIntField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptInteger, aIsMonitored)
end;

procedure TJanuaLargeIntField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaLargeIntField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaLargeIntField.getAsBoolean: Boolean;
begin
  Result := not FInternalValue = 0
end;

function TJanuaLargeIntField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaLargeIntField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue.ToDouble
end;

function TJanuaLargeIntField.getAsFloat: Extended;
begin
  Result := FInternalValue.ToExtended
end;

function TJanuaLargeIntField.getAsInteger: Integer;
begin
  Result := FInternalValue
end;

function TJanuaLargeIntField.getAsLargeInt: Int64;
begin
  Result := FInternalValue
end;

function TJanuaLargeIntField.getAsSmallint: Smallint;
begin
  Result := FInternalValue
end;

function TJanuaLargeIntField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaLargeIntField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(FInternalValue.ToString);
end;

function TJanuaLargeIntField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaLargeIntField.GetDataString: string;
begin
  Result := GetAsString
end;

function TJanuaLargeIntField.GetDefault: TValue;
begin
  Result := TValue(FDefaultValue)
end;

function TJanuaLargeIntField.GetJson: string;
begin
  Janua.Core.Json.JsonPair(Key, FInternalValue).ToJson
end;

function TJanuaLargeIntField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonNumber.Create(FDefaultValue)
end;

function TJanuaLargeIntField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(FInternalValue)
end;

function TJanuaLargeIntField.GetModified: Boolean;
begin
  Result := FOldValue <> FFInternalValue
end;

function TJanuaLargeIntField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaLargeIntField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaLargeIntField.IsDefault: Boolean;
begin
  Result := FFInternalValue = FDefaultValue
end;

procedure TJanuaLargeIntField.LoadFromStream(aStream: TStream);
begin

end;

class function TJanuaLargeIntField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaLargeIntField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaLargeIntField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaLargeIntField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1, 0);
end;

procedure TJanuaLargeIntField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := Round(aValue)
end;

procedure TJanuaLargeIntField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := Trunc(aValue)
end;

procedure TJanuaLargeIntField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := Round(aValue);
end;

procedure TJanuaLargeIntField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue;
end;

procedure TJanuaLargeIntField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := aValue;
end;

procedure TJanuaLargeIntField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := aValue;
end;

procedure TJanuaLargeIntField.setAsString(const aValue: string);
var
  tmp: Int64;
begin
  ExecProc(
    procedure
    begin
      if aValue = '' then
        FInternalValue := 0
      else
      begin
        if TryStrToInt64(aValue, tmp) then
          FInternalValue := tmp
        else
          FInternalValue := 0;
      end;
    end, 'setAsString ' + aValue + ' ', self);

end;

procedure TJanuaLargeIntField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaLargeIntField.SetDataString(const aValue: string);
begin
  setAsString(aValue);
end;

procedure TJanuaLargeIntField.SetDefault(aValue: TValue);
begin
  FInternalValue := aValue.AsInteger
end;

procedure TJanuaLargeIntField.SetFInternalValue(const aValue: Int64);
begin
  if aValue <> FFInternalValue then
  begin
    IsNull := False;
    FFInternalValue := aValue;
    if IsMonitored and Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    // Starts Binding Notifications
    CheckNotifications
  end;
end;

procedure TJanuaLargeIntField.SetJson(aValue: string);
begin

end;

procedure TJanuaLargeIntField.SetJsonDefault(aValue: TJsonValue);
begin
  if not TryStrToInt64(aValue.Value, FDefaultValue) then
    FDefaultValue := 0;
end;

procedure TJanuaLargeIntField.SetJsonValue(aValue: TJsonValue);
begin
  AsString := TJsonNumber(aValue).Value
end;

procedure TJanuaLargeIntField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaLargeIntField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.AsInteger
end;

procedure TJanuaLargeIntField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsInt64
end;

function TJanuaLargeIntField.Size: Int64;
begin
  Result := IfThen(FInternalValue = 0, 0, SizeOf(Int64));
end;

{ TJanuaSmallintField }

constructor TJanuaSmallIntField.Create;
begin
  inherited;
  FInternalValue := 0;
  FDefaultValue := 0;
  SetIsNull(True);
end;

procedure TJanuaSmallIntField.Clear;
begin
  FInternalValue := 0;
  SetIsNull(True);
end;

constructor TJanuaSmallIntField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptSmallint, aIsMonitored)
end;

procedure TJanuaSmallIntField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaSmallIntField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaSmallIntField.getAsBoolean: Boolean;
begin
  Result := not FInternalValue = 0
end;

function TJanuaSmallIntField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaSmallIntField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue.ToDouble
end;

function TJanuaSmallIntField.getAsFloat: Extended;
begin
  Result := FInternalValue.ToExtended
end;

function TJanuaSmallIntField.getAsInteger: Integer;
begin
  Result := FInternalValue
end;

function TJanuaSmallIntField.getAsLargeInt: Int64;
begin
  Result := FInternalValue
end;

function TJanuaSmallIntField.getAsSmallint: Smallint;
begin
  Result := FInternalValue
end;

function TJanuaSmallIntField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaSmallIntField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(FInternalValue.ToString);
end;

function TJanuaSmallIntField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaSmallIntField.GetDataString: string;
begin
  Result := GetAsString
end;

function TJanuaSmallIntField.GetDefault: TValue;
begin
  Result := TValue(FDefaultValue)
end;

function TJanuaSmallIntField.GetJson: string;
begin
  Janua.Core.Json.JsonPair(Key, FInternalValue).ToJson
end;

function TJanuaSmallIntField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonNumber.Create(FDefaultValue)
end;

function TJanuaSmallIntField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(FInternalValue)
end;

function TJanuaSmallIntField.GetModified: Boolean;
begin
  Result := FOldValue <> FFInternalValue
end;

function TJanuaSmallIntField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaSmallIntField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaSmallIntField.IsDefault: Boolean;
begin
  Result := FInternalValue = FDefaultValue
end;

procedure TJanuaSmallIntField.LoadFromStream(aStream: TStream);
begin

end;

procedure TJanuaSmallIntField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaSmallIntField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1, 0);
end;

procedure TJanuaSmallIntField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := Round(aValue)
end;

procedure TJanuaSmallIntField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := Trunc(aValue)
end;

procedure TJanuaSmallIntField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := Round(aValue);
end;

procedure TJanuaSmallIntField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue;
end;

procedure TJanuaSmallIntField.setAsLargeInt(const aValue: Int64);
begin
  ExecProc(
    procedure
    begin
      FInternalValue := IfThen(aValue <= High(Smallint), aValue, High(Smallint));
    end, 'setAsLargeInt ' + aValue.ToString + ' ', self);
end;

procedure TJanuaSmallIntField.setAsSmallint(const Value: Smallint);
begin
  FInternalValue := Value
end;

procedure TJanuaSmallIntField.setAsString(const aValue: string);
begin
  ExecProc(
    procedure
    var
      tmp: Integer;
    begin
      if aValue = '' then
        FInternalValue := 0
      else
      begin
        if TryStrToInt(aValue, tmp) then
          FInternalValue := tmp
        else
          FInternalValue := 0;
      end;
    end, 'setAsString ' + aValue + ' ', self);
  {
    Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue), 'TJanuaIntegerField error string is not numeric field: ' +
    DBField + ' Value: ' + aValue);
    FInternalValue := System.SysUtils.StrToInt(aValue)
  }
end;

procedure TJanuaSmallIntField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaSmallIntField.SetDataString(const aValue: string);
begin
  setAsString(aValue)
end;

procedure TJanuaSmallIntField.SetDefault(aValue: TValue);
begin
  FInternalValue := aValue.AsInteger
end;

procedure TJanuaSmallIntField.SetFInternalValue(const aValue: Smallint);
begin
  if FFInternalValue <> aValue then
    try
      SetIsNull(False);
      FFInternalValue := aValue;
      if IsMonitored and Assigned(OnFieldDataChange) then
        OnFieldDataChange(self as IJanuaField);
      CheckNotifications
    except
      on e: exception do
        RaiseException('SetFInternalValue', e, self);
    end;
end;

procedure TJanuaSmallIntField.SetJson(aValue: string);
begin

end;

procedure TJanuaSmallIntField.SetJsonDefault(aValue: TJsonValue);
var
  tmp: Integer;
begin
  if TryStrToInt(aValue.Value, tmp) then
    FDefaultValue := tmp
  else
    FDefaultValue := 0;
end;

procedure TJanuaSmallIntField.SetJsonValue(aValue: TJsonValue);
var
  tmp: Integer;
begin
  if TryStrToInt(aValue.Value, tmp) then
    FInternalValue := tmp
  else
    FInternalValue := 0;
end;

procedure TJanuaSmallIntField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaSmallIntField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.AsInteger
end;

procedure TJanuaSmallIntField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsInteger
end;

function TJanuaSmallIntField.Size: Int64;
begin
  Result := IfThen(FInternalValue = 0, 0, SizeOf(Smallint));
end;

{ TJanuaCustomField }

constructor TJanuaCustomField.Create;
begin
  inherited;
  FIsSet := False; // boolean;
  FIsNull := True; // when created the field is set as null
  FMaxLength := 0; // integer;
  FPrecision := 0; // smallint;
  FMinLength := 0; // smallint;
  FMandatory := False; // boolean;
  FIsMonitored := False;
  FLookupList := TJanuaLookupID.lklNone;
  FFieldKind := jfkData;
  // By Default a Field is not monitored and does not trigger any Event
end;

procedure TJanuaCustomField.CheckNotifications;
begin
  if (FFieldKind in [jfkParam, jfkParamLookup]) and
    (FFieldType in [jptCurrency, jptExtended, jptSmallint, jptInteger, jptString, jptLargeInt, jptCardinal,
    jptWord, jptByte, jptShortint, jptString, jptGUID, jptFilename, jptFloat]) then
    Active := DifferDefault;
  Guard.CheckNotNull(BindManager, 'BindManager not Created');
  BindManager.Notify('AsString');
  BindManager.Notify('AsInteger');
  BindManager.Notify('AsLargeInt');
  BindManager.Notify('AsCurrency');
  BindManager.Notify('AsFloat');
  BindManager.Notify('AsExtended');
  BindManager.Notify('AsDateTime');
  BindManager.Notify('AsVariant');
  BindManager.Notify('Value');
  BindManager.Notify('AsGUID');
  BindManager.Notify('Active');
end;

constructor TJanuaCustomField.Create(aKey, aField: string; aFieldType: TJanuaFieldType;
aIsMonitored: Boolean = False; aFieldKind: TJanuaFieldKind = jfkData);
begin
  Create;
  SetKey(aKey);
  SetTitle(IfThen(aKey > '', aKey, aField));
  SetDBField(aField);
  SetFieldType(aFieldType);
  FIsMonitored := aIsMonitored;
  // By Default a Field is not monitored and does not trigger any Event
  FFieldKind := aFieldKind;
  // By Default a Field is a Database Field but it can be a Lookup or Calculated one
end;

function TJanuaCustomField.FilterText: string;

  function QueryString(const aCase: TFieldCharCase = fcNoChange; const aStrip: Boolean = False): string;
  begin
    try
      Case FFieldType of
        jptDate:
          Result := DateToStr(GetAsDateTime);
        jptDateTime:
          Result := DateTimeToStr(GetAsDateTime);
        jptBoolean:
          Result := IfThen(getAsBoolean, 'true', 'false');
      else
        begin
          Result := GetAsString;
        end;

      End;

      if aCase = fcLowerCase then
        Result := Result.ToLower
      else if aCase = fcUpperCase then
        Result := Result.ToUpper;

      if aStrip then
        Result := StripString(Result, '%');

      if (FieldType = jptString) and (ParamOperator in [LikeLower, LikeStrippedLower, LikeUpper,
        LikeStrippedUpper]) then
        Result := QuotedStr('%' + Result + '%')
      else if FieldType in [jptString, jptDateTime, jptDate] then
        Result := QuotedStr(Result);
    except
      on e: exception do
        RaiseException('FilterText.QueryString', e, self);
    end;
  end;

begin
  try
    Result := FDBField.ToLower;

    case ParamOperator of
      TJanuaOperator.Equals:
        Result := DBField + ' = ' + QueryString;
      TJanuaOperator.LessThan:
        Result := DBField + ' < ' + QueryString;
      TJanuaOperator.LessThanEquals:
        Result := DBField + ' <= ' + QueryString;
      TJanuaOperator.Like:
        Result := DBField + ' like ' + QueryString;
      TJanuaOperator.LikeLower:
        Result := DBField + ' like ' + QueryString(fcLowerCase);
      TJanuaOperator.LikeStrippedLower:
        Result := DBField + ' like ' + QueryString(fcLowerCase, True);
      TJanuaOperator.LikeUpper:
        Result := DBField + ' like ' + QueryString(fcUpperCase);
      TJanuaOperator.LikeStrippedUpper:
        Result := DBField + ' like ' + QueryString(fcUpperCase, True);
      TJanuaOperator.MoreThan:
        Result := DBField + ' > ' + QueryString;
      TJanuaOperator.MoreThanEquals:
        Result := DBField + ' >= ' + QueryString;
      TJanuaOperator.NotEqual:
        Result := DBField + ' <> ' + QueryString;
    end;
  except
    on e: exception do
      RaiseException('FilterText', e, nil);
  end;
end;

function TJanuaCustomField.Format(aFormat: string): string;
begin
  if aFormat = '' then
    Result := '';
end;

function TJanuaCustomField.GeIsReadOnly: Boolean;
begin
  Result := FIsReadOnly
end;

function TJanuaCustomField.GetAsJsonMetadata: TJsonObject;
begin
  try
    Result := TJsonObject.Create;
    JsonPair(Result, 'key', FKey);
    JsonPair(Result, 'dbfield', FDBField);
    JsonPair(Result, 'type', TEnumConvertor<TJanuaFieldType>.ToString(FieldType));
    JsonPair(Result, 'default', (self as IJanuaField).GetJsonDefault);
    JsonPair(Result, 'value', (self as IJanuaField).GetJsonValue);
  except
    on e: exception do
      raise exception.Create(ClassName + '.GetAsJsonMetadata: ' + FKey + '.' +
        TEnumConvertor<TJanuaFieldType>.ToString(FieldType));
  end;
end;

function TJanuaCustomField.GetCalculated: Boolean;
begin
  Result := FCalculated
end;

function TJanuaCustomField.GetDBField: string;
begin
  Result := FDBField
end;

function TJanuaCustomField.GetEnabled: Boolean;
begin
  Result := FEnabled
end;

function TJanuaCustomField.GetFieldIndex: Integer;
begin
  Result := FFieldIndex
end;

function TJanuaCustomField.GetFieldKind: TJanuaFieldKind;
begin
  Result := FFieldKind;
end;

function TJanuaCustomField.GetFieldType: TJanuaFieldType;
begin
  Result := FFieldType
end;

function TJanuaCustomField.GetHtmlObject: IJanuaHtmlObject;
begin
  if Assigned(FHtmlObject) then
    Result := FHtmlObject
  else
    Result := TJanuaHtmlObject.Create(JanuaHtmlHelper, 'span', (self as IJanuaField).GetAsString);
end;

function TJanuaCustomField.GetIsMonitored: Boolean;
begin
  Result := FIsMonitored;
end;

function TJanuaCustomField.GetIsNull: Boolean;
begin
  Result := FIsNull
end;

function TJanuaCustomField.GetJsonPair: TJsonPair;
begin
  Result := TJsonPair.Create(TJsonString.Create(Key), (self as IJanuaField).GetJsonValue);
end;

function TJanuaCustomField.GetKey: string;
begin
  Result := FKey
end;

function TJanuaCustomField.GetLookupField: IJanuaField;
begin
  Result := FLookupField;
end;

function TJanuaCustomField.GetLookupList: TJanuaLookupID;
begin
  Result := FLookupList;
end;

function TJanuaCustomField.GetMappedField: TField;
begin
  Result := FMappedField
end;

function TJanuaCustomField.GetMaxLength: Integer;
begin
  Result := FMaxLength
end;

function TJanuaCustomField.GetMinLength: Smallint;
begin
  Result := FMinLength
end;

function TJanuaCustomField.GetOnFieldDataChange: TFieldChangeEvent;
begin
  Result := FOnFieldDataChange
end;

function TJanuaCustomField.GetOperator: TJanuaOperator;
begin
  Result := FOperator
end;

function TJanuaCustomField.GetPrecision: Smallint;
begin
  Result := FPrecision
end;

function TJanuaCustomField.GetSearchContainer: IJanuaSearchContainer;
begin
  Result := FSearchContainer;
end;

function TJanuaCustomField.GetTitle: string;
begin
  Result := FTitle
end;

function TJanuaCustomField.GetVisible: Boolean;
begin
  Result := FVisible
end;

function TJanuaCustomField.HasLookupList: Boolean;
begin
  Result := FLookupList <> TJanuaLookupID.lklNone;
end;

procedure TJanuaCustomField.MapDataset(const aDataset: TDataset);
begin
  FMappedField := GetFieldByName(aDataset, DBField, False);
  if (FMappedField <> nil) then
  begin
    case FMappedField.DataType of
      ftUnknown:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          SetAsVariant(FMappedField.Value);
      end;
      ftString:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsString(FMappedField.AsString);
      end;
      ftSmallint:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsInteger(FMappedField.AsInteger);
      end;
      ftInteger:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsInteger(FMappedField.AsInteger);
      end;
      ftWord:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsInteger(FMappedField.AsInteger);
      end;
      ftBoolean:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsBoolean(FMappedField.AsBoolean);
      end;
      ftFloat:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsFloat(FMappedField.AsFloat);
      end;
      ftCurrency:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsCurrency(FMappedField.AsCurrency);
      end;
      ftBCD:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsFloat(FMappedField.AsFloat);
      end;

      ftTimeStamp, ftOraTimeStamp:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsDateTime(FMappedField.AsDateTime);
      end;

      ftDateTime, ftDate, ftTime:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsDateTime(FMappedField.AsDateTime);
      end;
      ftBytes:
        ;
      ftVarBytes:
        ;
      ftAutoInc:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsLargeInt(FMappedField.AsLargeInt);
      end;

      fTBlob:
        FReadFromMappedField :=
                  procedure var aStream: TMemoryStream;

      begin
        if FMappedField.IsNull then
          Clear
        else
        begin
          aStream := TMemoryStream.Create;
          try
            (FMappedField as TBlobField).SaveToStream(aStream);
            aStream.Position := 0;
            (self as IJanuaField).LoadFromStream(aStream);
          finally
            aStream.Free;
          end;
        end;
      end;
      ftMemo:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsString(FMappedField.AsString);
      end;
      ftGraphic:
        ;
      ftFmtMemo:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsString(FMappedField.AsWideString);
      end;

      ftParadoxOle:
        ;
      ftDBaseOle:
        ;
      ftTypedBinary:
        ;
      ftCursor:
        ;
      ftFixedChar:
        ;
      ftWideString:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsString(FMappedField.AsWideString);
      end;

      ftLargeint:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsLargeInt(FMappedField.AsLargeInt);
      end;

      ftADT:
        ;
      ftArray:
        ;
      ftReference:
        ;
      ftDataSet:
        ;
      ftOraBlob:
        ;
      ftOraClob:
        ;
      ftVariant:
        FReadFromMappedField := (
          procedure
          begin
            if FMappedField.IsNull then
              Clear
            else
              SetAsVariant(FMappedField.Value);
          end);
      ftInterface:
        ;
      ftIDispatch:
        ;
      ftGuid:
        ;
      ftFMTBcd:
        ;
      ftFixedWideChar:
        ;
      ftWideMemo:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsString(FMappedField.AsWideString);
      end;
      ftOraInterval:
        ;
      ftLongWord:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsLargeInt(FMappedField.AsLargeInt);
      end;

      ftShortint:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsInteger(FMappedField.AsInteger);
      end;
      ftByte:
        ;
      ftExtended:
        FReadFromMappedField :=
                  procedure

      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsFloat(FMappedField.AsExtended);
      end;

      ftConnection:
        ;
      FtParams:
        ;
      ftStream:
        ;
      ftTimeStampOffset:
        ;
      ftObject:
        ;
      ftSingle:
        FReadFromMappedField :=
                  procedure
      begin
        if FMappedField.IsNull then
          Clear
        else
          setAsFloat(FMappedField.AsFloat);
      end;
    end;
  end;
end;

(*
  class function TJanuaCustomField.New(const aKey, aField: string; const aIsMonitored: boolean): IJanuaField;
  begin
  Result := TJanuaCustomField.Create(aKey, aField, aIsMonitored) as IJanuaField;
  end;
*)

function TJanuaCustomField.InternalActivate: Boolean;
begin
  if (FFieldKind in [jfkParam, jfkParamLookup]) and not(FFieldType in [jptDate, jptDateTime]) then
    Result := DifferDefault
  else
    Result := inherited;
end;

function TJanuaCustomField.IsDefault: Boolean;
begin
  Result := False;
end;

function TJanuaCustomField.IsMappedField(out aField: TField): Boolean;
begin
  aField := MappedField;
  Result := Assigned(aField);
end;

procedure TJanuaCustomField.LoadFromFile(aFile: TFileName);
begin

end;

procedure TJanuaCustomField.ReadFromDataset(const aDataset: TDataset);
var
  lField: TField;
  aStream: TMemoryStream;
  tmp: string;
  // Test SqlTimeStamp
  // LDtmp: TDateTime;
begin
  if Assigned(MappedField) and Assigned(FReadFromMappedField) then
  begin
    if not MappedField.IsNull then
      FReadFromMappedField;
    SetIsNull(MappedField.IsNull);
  end
  else
  begin
    lField := nil;
    try
      Guard.CheckNotNull(aDataset, 'aDataset is nil');
      if not FCalculated then
      begin
        if not Assigned(lField) then
          lField := GetFieldByName(aDataset, DBField, False);
        if (lField <> nil) then
        begin
          SetIsNull(lField.IsNull);
          if not IsNull then
            case lField.DataType of
              ftUnknown:
                SetAsVariant(lField.Value);
              ftString:
                setAsString(lField.AsString);
              ftSmallint:
                setAsInteger(lField.AsInteger);
              ftInteger:
                setAsInteger(lField.AsInteger);
              ftWord:
                setAsInteger(lField.AsInteger);
              ftBoolean:
                setAsBoolean(lField.AsBoolean);
              ftFloat:
                setAsFloat(lField.AsFloat);
              ftCurrency:
                setAsCurrency(lField.AsCurrency);
              ftBCD:
                setAsFloat(lField.AsFloat);
              ftDateTime, ftTimeStamp, ftDate, ftTime, ftOraTimeStamp:
                if not lField.IsNull then
                begin
                  {
                    // Test Code ....
                    if FKey = 'match_time' then
                    begin
                    LDtmp := LField.AsDateTime;
                    (self as IJanuaField).setAsDateTime(LField.AsDateTime);
                    end
                    else
                  }
                  setAsDateTime(lField.AsDateTime);
                end;
              ftBytes:
                ;
              ftVarBytes:
                ;
              ftAutoInc:
                setAsLargeInt(lField.AsLargeInt);
              fTBlob:
                begin
                  aStream := TMemoryStream.Create;
                  try
                    (lField as TBlobField).SaveToStream(aStream);
                    aStream.Position := 0;
                    LoadFromStream(aStream);
                  finally
                    aStream.Free;
                  end;
                end;
              ftMemo:
                setAsString(lField.AsString);
              ftGraphic:
                ;
              ftFmtMemo:
                setAsString(lField.AsWideString);
              ftParadoxOle:
                ;
              ftDBaseOle:
                ;
              ftTypedBinary:
                ;
              ftCursor:
                ;
              ftFixedChar:
                ;
              ftWideString:
                setAsString(lField.AsWideString);
              ftLargeint:
                setAsLargeInt(lField.AsLargeInt);
              ftADT:
                ;
              ftArray:
                ;
              ftReference:
                ;
              ftDataSet:
                ;
              ftOraBlob:
                begin
                  aStream := TMemoryStream.Create;
                  try
                    (lField as TBlobField).SaveToStream(aStream);
                    aStream.Position := 0;
                    LoadFromStream(aStream);
                  finally
                    aStream.Free;
                  end;
                end;
              ftOraClob:
                begin
                  tmp := lField.AsWideString;
                  setAsString(tmp);
                end;
              ftVariant:
                SetAsVariant(lField.AsVariant);
              ftInterface:
                ;
              ftIDispatch:
                ;
              ftGuid:
                SetAsGUID(lField.AsGUID);
              ftFMTBcd:
                ;
              ftFixedWideChar:
                setAsString(lField.AsWideString);
              ftWideMemo:
                begin
                  tmp := (lField as TWideMemoField).AsWideString;
                  setAsString(tmp);
                end;
              ftOraInterval:
                ;
              ftLongWord:
                setAsLargeInt(lField.AsLargeInt);
              ftShortint:
                setAsInteger(lField.AsInteger);
              ftByte:
                ;
              ftExtended:
                setAsFloat(lField.AsExtended);
              ftConnection:
                ;
              FtParams:
                ;
              ftStream:
                ;
              ftTimeStampOffset:
                ;
              ftObject:
                ;
              ftSingle:
                setAsFloat(lField.AsFloat);
            end;
        end;
      end;
    except
      on e: exception do
        raise exception.Create('TJanuaCustomField.' + ClassName + IfThen(FKey = '', '', '.' + FKey) +
          '.ReadFromDataset: ' + sl + e.Message);
    end;
  end;
end;

procedure TJanuaCustomField.ReadJsonValue(const aJsonObject: TJsonObject);
var
  temp: TJsonValue;
begin
  temp := nil;
  Janua.Core.Json.JsonValue(aJsonObject, Key, temp);
  if Assigned(temp) then
    (self as IJanuaField).SetJsonValue(temp);
end;

procedure TJanuaCustomField.SetAsJsonMetadata(const aValue: TJsonObject);
var
  LValue: TJsonValue;
begin
  try
    Janua.Core.Json.JsonValue(aValue, 'value', LValue);
    (self as IJanuaField).SetJsonValue(LValue);
    Janua.Core.Json.JsonValue(aValue, 'default', LValue);
    (self as IJanuaField).SetJsonDefault(LValue);
  except
    on e: exception do
      raise exception.Create(ClassName + '.SetAsJsonMetadata ' + FKey + '.' +
        TEnumConvertor<TJanuaFieldType>.ToString(FieldType));
  end;
end;

procedure TJanuaCustomField.SetAsVariant(const aValue: Variant);
begin
  // --------------------------------------------------------------------------------------------------------------//
  // -- A Value (even if null) is now Set for IJanuaField. This is true if a values is set or if DB field is found
  // --------------------------------------------------------------------------------------------------------------//
  FIsSet := True;
  FIsNull := VarIsClear(aValue) or VarIsNull(aValue);
end;

procedure TJanuaCustomField.SetCalculated(aValue: Boolean);
begin
  FCalculated := aValue
end;

procedure TJanuaCustomField.SetDBField(const aValue: string);
begin
  FDBField := aValue
end;

procedure TJanuaCustomField.SetEnabled(const Value: Boolean);
begin
  FEnabled := Value
end;

procedure TJanuaCustomField.SetFieldIndex(const Value: Integer);
begin
  FFieldIndex := Value;
end;

procedure TJanuaCustomField.SetFieldKind(const Value: TJanuaFieldKind);
begin
  FFieldKind := Value
end;

procedure TJanuaCustomField.SetFieldType(const aValue: TJanuaFieldType);
begin
  FFieldType := aValue;
end;

procedure TJanuaCustomField.SetFromField(const aField: TField);
begin
  if Assigned(aField) then
    SetAsVariant(aField.Value);
end;

procedure TJanuaCustomField.SetFromMappedField;
begin
  if Assigned(FReadFromMappedField) then
    FReadFromMappedField;
end;

procedure TJanuaCustomField.SetFromParam(const aParam: TParam);
begin
  if Assigned(aParam) then
    SetAsVariant(aParam.Value);
end;

procedure TJanuaCustomField.SetHtmlObject(const Value: IJanuaHtmlObject);
begin
  FHtmlObject := Value;
end;

procedure TJanuaCustomField.SetIsMonitored(const aValue: Boolean);
begin
  FIsMonitored := aValue;
end;

procedure TJanuaCustomField.SetIsNull(const Value: Boolean);
begin
  FIsNull := Value;
end;

procedure TJanuaCustomField.SetIsReadOnly(aValue: Boolean);
begin
  FIsReadOnly := aValue
end;

procedure TJanuaCustomField.SetJsonPair(aValue: TJsonPair);
begin
  (self as IJanuaField).SetJsonValue(aValue.JsonValue);
end;

procedure TJanuaCustomField.SetKey(const aValue: string);
begin
  FKey := aValue.ToLower
end;

procedure TJanuaCustomField.SetLookupField(const Value: IJanuaField);
begin
  FLookupField := Value;
end;

procedure TJanuaCustomField.SetLookupList(const Value: TJanuaLookupID);
begin
  FLookupList := Value;
end;

procedure TJanuaCustomField.SetMappedField(const Value: TField);
begin

end;

procedure TJanuaCustomField.SetMaxLength(const aValue: Integer);
begin
  FMaxLength := aValue;
end;

procedure TJanuaCustomField.SetMinLength(const aValue: Smallint);
begin
  FMinLength := aValue;
end;

procedure TJanuaCustomField.SetNotifyProcedure(const Value: TNotifyProcedure);
begin
  FNotifyProcedure := Value;
end;

procedure TJanuaCustomField.SetOnDataChage(const aValue: TFieldChangeEvent);
begin
  FOnFieldDataChange := aValue;
end;

procedure TJanuaCustomField.SetOperator(const Value: TJanuaOperator);
begin
  FOperator := Value;
end;

procedure TJanuaCustomField.SetPrecision(const aValue: Smallint);
begin
  FPrecision := aValue;
end;

procedure TJanuaCustomField.SetSearchContainer(const Value: IJanuaSearchContainer);
begin
  FSearchContainer := Value
end;

procedure TJanuaCustomField.SetTitle(const Value: string);
begin
  FTitle := Value
end;

procedure TJanuaCustomField.SetVisible(const Value: Boolean);
begin
  FVisible := Value;
end;

function TJanuaCustomField.TryGetField(const aDataset: TDataset; out aField: TField): Boolean;
begin
  Result := Janua.Core.Functions.ExistFieldByName(aDataset, DBField);
  if Result then
  begin
    aField := GetFieldByName(aDataset, DBField, False);
    MappedField := aField;
  end;
end;

procedure TJanuaCustomField.UnMapDatasets;
begin
  FMappedField := nil;
  FReadFromMappedField := nil;
end;

procedure TJanuaCustomField.WriteJsonValue(const aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, Key, (self as IJanuaField).GetJsonValue)
end;

procedure TJanuaCustomField.WriteToDataset(const aDataset: TDataset);
var
  lField: TField;
  lStream: TStream;

  procedure SaveToField;
  begin
    case FieldType of
      jpTBlob:
        begin
          if (lField.DataType = TFieldType.fTBlob) then
          begin
            lStream := TMemoryStream.Create;
            try
              (self as IJanuaField).SaveToStream(lStream);
              lStream.Position := 0;
              (lField as TBlobField).LoadFromStream(lStream);
            finally
              lStream.Free;
            end;
          end;
        end;
      jptString:
        begin
          if lField.DataType = TFieldType.ftWideMemo then
            (lField as TWideMemoField).Text := (self as IJanuaField).AsString
          else
            lField.AsString := (self as IJanuaField).AsString
        end;
      jptDateTime:
        begin
          if lField.DataType = TFieldType.ftDate then
            (lField as TDateField).AsDateTime := (self as IJanuaField).AsDateTime
          else if lField.DataType in [ftDateTime, ftTimeStamp, ftDate, ftTime, ftOraTimeStamp] then
          begin
            if lField is TDateField then
              (lField as TDateField).AsDateTime := (self as IJanuaField).AsDateTime
            else if lField is TDateTimeField then
              (lField as TDateTimeField).AsDateTime := (self as IJanuaField).AsDateTime
            else if lField is TSQLTimeStampField then
              (lField as TSQLTimeStampField).AsDateTime := (self as IJanuaField).AsDateTime
          end
          else
            lField.AsVariant := (self as IJanuaField).AsVariant
        end;
      jptInteger:
        begin
          if lField.DataType in [TFieldType.ftInteger, TFieldType.ftSmallint, TFieldType.ftLargeint] then
            (lField as TIntegerField).Value := (self as IJanuaField).AsInteger
          else
            lField.AsVariant := (self as IJanuaField).AsVariant
        end;
      jptGUID:
        begin
          if lField.DataType = TFieldType.ftGuid then
            (lField as TGuidField).AsGUID := (self as IJanuaField).AsGUID
          else
            lField.AsVariant := (self as IJanuaField).AsVariant
        end
    else
      lField.Value := (self as IJanuaField).GetAsVariant
    end;
  end;

begin
  lField := nil;
  // Calc and Read Only Fields are not written to dataset
  if not(GetCalculated or FIsReadOnly or GetIsNull) then
  begin
    // At first check if Field Exists calling ExistFieldByName or if the Field is Already Mapped
    // lField is an out parameter if 'is mapped'  = true then mapped field is assigned
    if IsMappedField(lField) or TryGetField(aDataset, lField) then
      SaveToField;
  end
  else if GetIsNull and (IsMappedField(lField) or TryGetField(aDataset, lField)) then
    lField.Clear;
end;

function TJanuaCustomField.EqualsDataset(const aDataset: TDataset): Boolean;
var
  lField: TField;
  lStream, lStream2: TStream;

  function CompareField: Boolean;
  begin
    Result := False;

    case FieldType of
      jpTBlob:
        begin
          if (lField.DataType = TFieldType.fTBlob) then
          begin
            lStream := TMemoryStream.Create;
            lStream2 := TMemoryStream.Create;
            try
              // IsIdenticalStreams(Source, Destination: TStream): boolean;
              (self as IJanuaField).SaveToStream(lStream);
              lStream.Position := 0;
              (lField as TBlobField).SaveToStream(lStream2);
              lStream2.Position := 0;
              Result := IsIdenticalStreams(lStream, lStream2);
            finally
              lStream.Free;
              lStream2.Free;
            end;
          end;
        end;
      jptString:
        begin
          if lField.DataType = TFieldType.ftWideMemo then
            Result := (lField as TWideMemoField).Text = (self as IJanuaField).AsString
          else
            Result := lField.AsString = (self as IJanuaField).AsString
        end;
      jptDateTime:
        begin
          if lField.DataType in [ftDateTime, ftTimeStamp, ftDate, ftTime, ftOraTimeStamp] then
          begin
            if lField is TDateField then
              Result := (lField as TDateField).AsDateTime = (self as IJanuaField).AsDateTime
            else if lField is TDateTimeField then
              Result := (lField as TDateTimeField).AsDateTime = (self as IJanuaField).AsDateTime
            else if lField is TSQLTimeStampField then
              Result := (lField as TSQLTimeStampField).AsDateTime = (self as IJanuaField).AsDateTime
          end
          else
            Result := lField.AsVariant = (self as IJanuaField).AsVariant
        end
    else
      Result := lField.Value = (self as IJanuaField).GetAsVariant
    end;
  end;

begin
  lField := nil;
  Result := True;
  // Calc and Read Only Fields are not written to dataset
  if not(FCalculated or FIsReadOnly) then
  begin
    // At first check if Field Exists calling ExistFieldByName or if the Field is Already Mapped
    if { IsMappedField(lField) or } TryGetField(aDataset, lField) then
      Result := CompareField;
  end
  else
    Result := True;
end;

function TJanuaCustomField.EqualsField(const aField: IJanuaField): Boolean;
begin
  Result := SameValue(GetValue, aField.Value)
end;

function TJanuaCustomField.EqualsDataset(const aDataset: IJanuaDBDataset): Boolean;
begin
  Result := EqualsDataset(aDataset.Dataset);
end;

function TJanuaCustomField.GetAsGUID: TGUID;
begin
  // TODO -cMM: TJanuaCustomField.GetAsGUID default body inserted
  Result := GUID_NULL;
end;

function TJanuaCustomField.GetFieldGUID: TGUID;
begin
  Result := FFieldGUID;
end;

function TJanuaCustomField.GetGridFieldDef: TJanuaGridFieldDef;
begin
  Result := FGridFieldDef;
end;

procedure TJanuaCustomField.SaveToFile(aFile: TFileName; aAppend: Boolean = False);
begin
  if aAppend and FileExists(aFile) then
    TFile.AppendAllText(aFile, GetAsString + sLineBreak);
end;

procedure TJanuaCustomField.SetAfterLoadRecord(const Value: TProc);
begin
  FAfterLoadRecord := Value;
end;

procedure TJanuaCustomField.SetAsGUID(const Value: TGUID);
begin
  // non fa nulla

end;

procedure TJanuaCustomField.SetFieldGUID(const Value: TGUID);
begin
  FFieldGUID := Value;
end;

procedure TJanuaCustomField.SetGridFieldDef(const Value: TJanuaGridFieldDef);
begin
  FGridFieldDef := Value;
end;

procedure TJanuaCustomField.CheckParamValue;
begin
  if (FieldKind in [TJanuaFieldKind.jfkParam, TJanuaFieldKind.jfkParamLookup]) and DifferDefault then
    Activate;
end;

function TJanuaCustomField.DifferDefault: Boolean;
begin
  Result := False;
end;

function TJanuaCustomField.GetIsEntityKey: Boolean;
begin
  Result := FIsEntityKey;
end;

procedure TJanuaCustomField.SetIsEntityKey(const Value: Boolean);
begin
  FIsEntityKey := Value;
end;

{ TJanuaStringField }

constructor TJanuaStringField.Create;
begin
  inherited;
  FInternalValue := '';
  FDefaultValue := '';
end;

procedure TJanuaStringField.Clear;
begin
  SetIsNull(True);
  FInternalValue := ''
end;

constructor TJanuaStringField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptString, aIsMonitored)
end;

procedure TJanuaStringField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaStringField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaStringField.getAsBoolean: Boolean;
begin
  if (FInternalValue = 'true') or (FInternalValue = '1') then
    Result := True
  else
    Result := False;
end;

function TJanuaStringField.getAsCurrency: Currency;
var
  tmp: Currency;
begin
  tmp := 0.0;
  if TryStrToCurr(FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0.0;
end;

function TJanuaStringField.GetAsDateTime: TDateTime;
begin
  if Length(FInternalValue) > 0 then
    Result := System.DateUtils.ISO8601ToDate(FInternalValue)
  else
    Result := 0.0;
  // poi vedo come gestire il TDateTime .................................
end;

function TJanuaStringField.getAsFloat: Extended;
var
  tmp: Double;
begin
  tmp := 0.0;
  if TryStrToFloat(FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0.0;
end;

function TJanuaStringField.getAsInteger: Integer;
var
  tmp: Integer;
begin
  tmp := 0;
  if TryStrToInt(FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0;
end;

function TJanuaStringField.getAsLargeInt: Int64;
var
  tmp: Int64;
begin
  tmp := 0;
  if TryStrToInt64(FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0;
end;

function TJanuaStringField.getAsSmallint: Smallint;
var
  tmp: Integer;
begin
  tmp := 0;
  if TryStrToInt(FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0;

end;

function TJanuaStringField.GetAsString: string;
begin
  Result := FInternalValue
end;

function TJanuaStringField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(FInternalValue);
end;

function TJanuaStringField.GetAsVariant: Variant;
begin
  Result := FInternalValue;
end;

function TJanuaStringField.GetDataString: string;
begin
  Result := FFInternalValue
end;

function TJanuaStringField.GetDefault: TValue;
begin
  Result := FDefaultValue
end;

function TJanuaStringField.GetIsNull: Boolean;
begin
  Result := FFInternalValue = '';
end;

function TJanuaStringField.GetJson: string;
begin
  Result := GetJsonPair.ToJson
end;

function TJanuaStringField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonString.Create(FDefaultValue)
end;

function TJanuaStringField.GetJsonValue: TJsonValue;
begin
  Result := TJsonString.Create(FInternalValue);
end;

function TJanuaStringField.GetModified: Boolean;
begin
  Result := FOldValue <> FFInternalValue
end;

function TJanuaStringField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaStringField.GetValue: TValue;
begin
  Result := TValue(FInternalValue);
end;

procedure TJanuaStringField.LoadFromFile(aFile: TFileName);
var
  aStream: TFileStream;
begin
  if not FileExists(aFile) then
    CreateException('LoadFromFile', 'File: ' + aFile + ' does not exist');

  aStream := TFileStream.Create(aFile, fmOpenRead);
  try
    aStream.Position := 0;
    FInternalValue := Encode64(aStream);
  finally
    aStream.Free;
  end;
end;

procedure TJanuaStringField.LoadFromStream(aStream: TStream);
var
  SS: TStringStream;
begin
  if aStream <> nil then
  begin
    SS := TStringStream.Create('');
    try
      SS.CopyFrom(aStream, 0);
      // No need to position at 0 nor provide size
      FInternalValue := SS.DataString;
    finally
      SS.Free;
    end;
  end
  else
  begin
    FInternalValue := '';
  end;
end;

procedure TJanuaStringField.SaveToFile(aFile: TFileName; aAppend: Boolean = False);
begin

end;

procedure TJanuaStringField.SaveToStream(aStream: TStream);
var
  SS: TStringStream;
begin
  SS := TStringStream.Create(FInternalValue);
  try
    aStream.CopyFrom(SS, 0);
    // No need to position at 0 nor provide size
  finally
    SS.Free;
  end;
end;

procedure TJanuaStringField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 'true', 'false');
end;

procedure TJanuaStringField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := CurrToStr(aValue)
end;

procedure TJanuaStringField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := DateToISO8601(aValue)
end;

procedure TJanuaStringField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := aValue.ToString
end;

procedure TJanuaStringField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue.ToString
end;

procedure TJanuaStringField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := aValue.ToString
end;

procedure TJanuaStringField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := aValue.ToString
end;

procedure TJanuaStringField.setAsString(const aValue: string);
begin
  FInternalValue := aValue
end;

procedure TJanuaStringField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaStringField.SetDataString(const aValue: string);
begin
  setAsString(aValue);
end;

procedure TJanuaStringField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.ToString
end;

procedure TJanuaStringField.SetFInternalValue(const aValue: string);
begin
  if (FFInternalValue <> aValue) then
  begin
    FFInternalValue := aValue;
    if (FieldKind in [TJanuaFieldKind.jfkData, TJanuaFieldKind.jfkLookup]) and Assigned(OnFieldDataChange)
    then
      OnFieldDataChange(self as IJanuaField);
    SetIsNull(FFInternalValue = '');
    CheckNotifications
  end;
end;

procedure TJanuaStringField.SetJson(aValue: string);
begin

end;

procedure TJanuaStringField.SetJsonDefault(aValue: TJsonValue);
begin
  FInternalValue := TJsonString(aValue).Value
end;

procedure TJanuaStringField.SetJsonValue(aValue: TJsonValue);
begin
  FInternalValue := TJsonString(aValue).Value;
end;

procedure TJanuaStringField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaStringField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.ToString
end;

procedure TJanuaStringField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsString
end;

function TJanuaStringField.Size: Int64;
begin
  Result := Length(FInternalValue)
end;

{ TJanuaBooleanField }

constructor TJanuaBooleanField.Create;
begin
  inherited;
  SetIsNull(False);
  FInternalValue := False;
  FDefaultValue := False;
end;

procedure TJanuaBooleanField.Clear;
begin
  try
    FInternalValue := False;
    // Un Boolean nel sistema non è mai null semmai ha default False
    SetIsNull(False);
  except
    on e: exception do
      if Assigned(self) then
        raise exception.Create('TJanuaBooleanField (' + DBField + ').Clear Error = ' + sl + e.Message)
      else
        raise exception.Create('TJanuaBooleanField.Clear Error = Class is nil ' + sl + e.Message);
  end;
end;

constructor TJanuaBooleanField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptBoolean, aIsMonitored)
end;

procedure TJanuaBooleanField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal aValue che Default aValue ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaBooleanField.DifferDefault: Boolean;
begin
  Result := (FInternalValue <> FDefaultValue) or not GetIsNull
end;

function TJanuaBooleanField.getAsBoolean: Boolean;
begin
  Result := FInternalValue
end;

function TJanuaBooleanField.getAsCurrency: Currency;
begin
  Result := IfThen(FInternalValue, 1.0, 0.0)
end;

function TJanuaBooleanField.GetAsDateTime: TDateTime;
begin
  Result := IfThen(FInternalValue, 1.0, 0.0)
end;

function TJanuaBooleanField.getAsFloat: Extended;
begin
  Result := IfThen(FInternalValue, 1.0, 0.0)
end;

function TJanuaBooleanField.getAsInteger: Integer;
begin
  Result := IfThen(FInternalValue, 1, 0)
end;

function TJanuaBooleanField.getAsLargeInt: Int64;
begin
  Result := IfThen(FInternalValue, 1, 0)
end;

function TJanuaBooleanField.getAsSmallint: Smallint;
begin
  Result := IfThen(FInternalValue, 1, 0)
end;

function TJanuaBooleanField.GetAsString: string;
begin
  Result := IfThen(FInternalValue, 'true', 'false')
end;

function TJanuaBooleanField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(FInternalValue.ToString(False));
end;

function TJanuaBooleanField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaBooleanField.GetDataString: string;
begin
  Result := FFInternalValue.ToString(True);
end;

function TJanuaBooleanField.GetDefault: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaBooleanField.GetJson: string;
begin

end;

function TJanuaBooleanField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonBool.Create(FDefaultValue)
end;

function TJanuaBooleanField.GetJsonValue: TJsonValue;
begin
  Result := TJsonBool.Create(FInternalValue)
end;

function TJanuaBooleanField.GetModified: Boolean;
begin
  Result := FFInternalValue <> FOldValue
end;

function TJanuaBooleanField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaBooleanField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaBooleanField.IsDefault: Boolean;
begin
  Result := IsNull and (FInternalValue = FDefaultValue)
end;

procedure TJanuaBooleanField.LoadFromStream(aStream: TStream);
begin
  aStream.ReadBuffer(FFInternalValue, SizeOf(Boolean));
end;

class function TJanuaBooleanField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaBooleanField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaBooleanField.SaveToStream(aStream: TStream);
begin
  aStream.WriteBuffer(FFInternalValue, SizeOf(FInternalValue));
end;

procedure TJanuaBooleanField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := aValue
end;

procedure TJanuaBooleanField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := not(aValue = 0.0)
end;

procedure TJanuaBooleanField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := not(aValue = 0.0)
end;

procedure TJanuaBooleanField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := not(aValue = 0.0)
end;

procedure TJanuaBooleanField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := not(aValue = 0)
end;

procedure TJanuaBooleanField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := not(aValue = 0.0)
end;

procedure TJanuaBooleanField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := not(aValue = 0)
end;

procedure TJanuaBooleanField.setAsString(const aValue: string);
begin
  FInternalValue := (aValue = 'true') or (aValue = '1')
end;

procedure TJanuaBooleanField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaBooleanField.SetDataString(const aValue: string);
begin
  FFInternalValue.TryToParse(aValue, FFInternalValue)
end;

procedure TJanuaBooleanField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.AsBoolean
end;

procedure TJanuaBooleanField.SetFInternalValue(const aValue: Boolean);
begin
  if aValue <> FFInternalValue then
  begin
    FFInternalValue := aValue;
    if Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    if (FieldKind in [TJanuaFieldKind.jfkParam, TJanuaFieldKind.jfkParamLookup]) and DifferDefault then
      Activate;
    IsNull := False;
    CheckNotifications;
  end;
end;

procedure TJanuaBooleanField.SetJson(aValue: string);
begin

end;

procedure TJanuaBooleanField.SetJsonDefault(aValue: TJsonValue);
begin
  if not TryStrToBool(aValue.Value, FDefaultValue) then
    FDefaultValue := False;
end;

procedure TJanuaBooleanField.SetJsonValue(aValue: TJsonValue);
begin
  AsString := (aValue as TJsonBool).Value
end;

procedure TJanuaBooleanField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaBooleanField.SetValue(const aValue: TValue);
begin
  FInternalValue := (aValue.AsBoolean)
end;

procedure TJanuaBooleanField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsBoolean
end;

function TJanuaBooleanField.Size: Int64;
begin
  Result := SizeOf(Boolean);
end;

{ TJanuaDateTimeField }

constructor TJanuaDateTimeField.Create;
begin
  inherited;
  FInternalValue := 0.0;
  SetIsNull(True);
end;

procedure TJanuaDateTimeField.Clear;
begin
  SetIsNull(True);
  FInternalValue := 0.0
end;

constructor TJanuaDateTimeField.Create(aKey, aField: string; aDefault: TDateTime;
  aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptDateTime, aIsMonitored);
  FDefaultValue := aDefault;
end;

procedure TJanuaDateTimeField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal aValue che Default aValue ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaDateTimeField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaDateTimeField.Format(aFormat: string): string;
begin
  if aFormat = '' then
    Result := DateTimeToStr(FFInternalValue)
  else
    Result := FormatDateTime(aFormat, FFInternalValue);
end;

function TJanuaDateTimeField.getAsBoolean: Boolean;
begin
  Result := FInternalValue <> 0.0;
end;

function TJanuaDateTimeField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaDateTimeField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue
end;

function TJanuaDateTimeField.getAsFloat: Extended;
begin
  Result := FInternalValue
end;

function TJanuaDateTimeField.getAsInteger: Integer;
begin
  Result := Trunc(FInternalValue)
end;

function TJanuaDateTimeField.getAsLargeInt: Int64;
begin
  Result := Trunc(FInternalValue)
end;

function TJanuaDateTimeField.getAsSmallint: Smallint;
begin
  Result := Trunc(FInternalValue)
end;

function TJanuaDateTimeField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaDateTimeField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaDateTimeField.GetAsVariant: Variant;
begin
  if GetIsNull then
    Result := VarNull
  else
    Result := FInternalValue
end;

function TJanuaDateTimeField.GetDataString: string;
begin
  Result := DateToISO8601(FInternalValue)
end;

function TJanuaDateTimeField.GetDefault: TValue;
begin
  Result := TValue(FDefaultValue)
end;

function TJanuaDateTimeField.GetJson: string;
begin

end;

function TJanuaDateTimeField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonString.Create(DateToISO8601(FDefaultValue))
end;

function TJanuaDateTimeField.GetJsonValue: TJsonValue;
begin
  Result := TJsonString.Create(DateToISO8601(FInternalValue))
end;

function TJanuaDateTimeField.GetModified: Boolean;
begin
  Result := FOldValue <> FFInternalValue
end;

function TJanuaDateTimeField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaDateTimeField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaDateTimeField.IsDefault: Boolean;
begin
  inherited;
  Result := FInternalValue = FDefaultValue
end;

procedure TJanuaDateTimeField.LoadFromStream(aStream: TStream);
begin

end;

class function TJanuaDateTimeField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaDateTimeField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaDateTimeField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaDateTimeField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1, 0)
end;

procedure TJanuaDateTimeField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := aValue
end;

procedure TJanuaDateTimeField.setAsDateTime(const aValue: TDateTime);
begin
  try
    FInternalValue := aValue
  except
    on e: exception do
      raise exception.Create(ClassName + '.setAsDateTime Error: ' + sl + e.Message);
  end;
end;

procedure TJanuaDateTimeField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := aValue
end;

procedure TJanuaDateTimeField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue
end;

procedure TJanuaDateTimeField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := aValue
end;

procedure TJanuaDateTimeField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := aValue
end;

procedure TJanuaDateTimeField.setAsString(const aValue: string);
var
  aString: string;
  aDateTime: TDateTime;
begin
  aString := aValue;

  if Length(aValue) > 0 then
  begin
    if not TryStrToDateTime(aString, aDateTime) then
      aDateTime := ISO8601ToDate(aString)
  end
  else
    Clear;

  FInternalValue := aDateTime;
end;

procedure TJanuaDateTimeField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaDateTimeField.SetDataString(const aValue: string);
begin
  if Length(aValue) > 0 then
    FInternalValue := System.DateUtils.ISO8601ToDate(aValue)
  else
    Clear;
end;

procedure TJanuaDateTimeField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.AsDouble
end;

procedure TJanuaDateTimeField.SetFInternalValue(const aValue: TDateTime);
begin
  if aValue <> FFInternalValue then
  begin
    FFInternalValue := aValue;
    if Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    CheckNotifications;
  end;
  IsNull := aValue = 0.0;
end;

procedure TJanuaDateTimeField.SetJson(aValue: string);
begin

end;

procedure TJanuaDateTimeField.SetJsonDefault(aValue: TJsonValue);
var
  tmp: string;
begin
  tmp := TJsonString(aValue).Value;
  if Length(tmp) > 0 then
    FDefaultValue := System.DateUtils.ISO8601ToDate(tmp)
  else
    FDefaultValue := 0.0;
end;

procedure TJanuaDateTimeField.SetJsonValue(aValue: TJsonValue);
var
  tmp: string;
begin
  tmp := TJsonString(aValue).Value;
  if Length(tmp) > 0 then
    FInternalValue := System.DateUtils.ISO8601ToDate(tmp)
  else
    FInternalValue := 0.0;
end;

procedure TJanuaDateTimeField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaDateTimeField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.AsDouble
end;

procedure TJanuaDateTimeField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsDouble
end;

function TJanuaDateTimeField.Size: Int64;
begin
  Result := SizeOf(TDateTime);
end;

{ TJanuaCurrencyField }

constructor TJanuaCurrencyField.Create;
begin
  inherited;
  FInternalValue := 0.0;
  FDefaultValue := 0.0;
  SetIsNull(False);
end;

procedure TJanuaCurrencyField.Clear;
begin
  try
    SetIsNull(False);
    FInternalValue := 0.0
  except
    on e: exception do
      if Assigned(self) then
        raise exception.Create('TJanuaCurrencyField (' + DBField + ').Clear Error = ' + sl + e.Message)
      else
        raise exception.Create('TJanuaCurrencyField.Clear Error = Class is nil ' + sl + e.Message);
  end;
end;

constructor TJanuaCurrencyField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptCurrency, aIsMonitored)
end;

procedure TJanuaCurrencyField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal aValue che Default aValue ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaCurrencyField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaCurrencyField.getAsBoolean: Boolean;
begin
  Result := not(FInternalValue = 0.0)
end;

function TJanuaCurrencyField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaCurrencyField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue
end;

function TJanuaCurrencyField.getAsFloat: Extended;
begin
  Result := FInternalValue
end;

function TJanuaCurrencyField.getAsInteger: Integer;
begin
  Result := Round(FInternalValue)
end;

function TJanuaCurrencyField.getAsLargeInt: Int64;
begin
  Result := Round(FInternalValue)
end;

function TJanuaCurrencyField.getAsSmallint: Smallint;
begin
  Result := Round(FInternalValue)
end;

function TJanuaCurrencyField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaCurrencyField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(AsString);
end;

function TJanuaCurrencyField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaCurrencyField.GetDataString: string;
begin
  Result := XMLDoubleString(FInternalValue);
end;

function TJanuaCurrencyField.GetDefault: TValue;
begin
  Result := FDefaultValue
end;

function TJanuaCurrencyField.GetJson: string;
begin
  Result := GetJsonPair.ToJson
end;

function TJanuaCurrencyField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonNumber.Create(FDefaultValue)
end;

function TJanuaCurrencyField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(FInternalValue)
end;

function TJanuaCurrencyField.GetModified: Boolean;
begin
  Result := FInternalValue <> FOldValue
end;

function TJanuaCurrencyField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaCurrencyField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaCurrencyField.IsDefault: Boolean;
begin
  Result := FDefaultValue = FInternalValue
end;

procedure TJanuaCurrencyField.LoadFromStream(aStream: TStream);
begin

end;

class function TJanuaCurrencyField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaCurrencyField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaCurrencyField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaCurrencyField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1, 0)
end;

procedure TJanuaCurrencyField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := aValue
end;

procedure TJanuaCurrencyField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := aValue
end;

procedure TJanuaCurrencyField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := aValue
end;

procedure TJanuaCurrencyField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue
end;

procedure TJanuaCurrencyField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := aValue
end;

procedure TJanuaCurrencyField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := aValue
end;

procedure TJanuaCurrencyField.setAsString(const aValue: string);
begin
  FInternalValue := StrToCurrDef(aValue, 0.0);
end;

procedure TJanuaCurrencyField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaCurrencyField.SetDataString(const aValue: string);
begin
  FInternalValue := XMLDouble(aValue);
end;

procedure TJanuaCurrencyField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.AsExtended
end;

procedure TJanuaCurrencyField.SetFInternalValue(const aValue: Currency);
begin
  if aValue <> FFInternalValue then
  begin
    IsNull := False;
    FFInternalValue := aValue;
    if IsMonitored and Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    CheckNotifications
  end;
end;

procedure TJanuaCurrencyField.SetJson(aValue: string);
begin

end;

procedure TJanuaCurrencyField.SetJsonDefault(aValue: TJsonValue);
var
  tmp: Double;
begin
  if TryStrToFloat(aValue.Value, tmp) then
    FDefaultValue := tmp
  else
    FDefaultValue := 0;
end;

procedure TJanuaCurrencyField.SetJsonValue(aValue: TJsonValue);
begin
  setAsString((aValue as TJsonNumber).Value)
end;

procedure TJanuaCurrencyField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaCurrencyField.SetValue(const aValue: TValue);
begin
  FInternalValue := (aValue.AsCurrency)
end;

procedure TJanuaCurrencyField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsCurrency
end;

function TJanuaCurrencyField.Size: Int64;
begin
  Result := SizeOf(Currency);
end;

{ TJanuaDoubleField }

constructor TJanuaDoubleField.Create;
begin
  inherited;

end;

procedure TJanuaDoubleField.Clear;
begin
  SetIsNull(True);
  FInternalValue := 0.0
end;

constructor TJanuaDoubleField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptFloat, aIsMonitored)
end;

procedure TJanuaDoubleField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal aValue che Default aValue ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaDoubleField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaDoubleField.getAsBoolean: Boolean;
begin
  Result := not(FInternalValue = 0.0)
end;

function TJanuaDoubleField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaDoubleField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue
end;

function TJanuaDoubleField.getAsFloat: Extended;
begin
  Result := FInternalValue
end;

function TJanuaDoubleField.getAsInteger: Integer;
begin
  Result := Round(FInternalValue)
end;

function TJanuaDoubleField.getAsLargeInt: Int64;
begin
  Result := Round(FInternalValue)
end;

function TJanuaDoubleField.getAsSmallint: Smallint;
begin
  Result := Trunc(FInternalValue);
end;

function TJanuaDoubleField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaDoubleField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(AsString);
end;

function TJanuaDoubleField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaDoubleField.GetDataString: string;
begin
  Result := XMLDoubleString(FInternalValue)
end;

function TJanuaDoubleField.GetDefault: TValue;
begin
  Result := TValue(FDefaultValue)
end;

function TJanuaDoubleField.GetJson: string;
begin

end;

function TJanuaDoubleField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonNumber.Create(FDefaultValue)
end;

function TJanuaDoubleField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(FFInternalValue);
end;

function TJanuaDoubleField.GetModified: Boolean;
begin
  Result := FInternalValue <> FDefaultValue;
end;

function TJanuaDoubleField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaDoubleField.GetValue: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaDoubleField.IsDefault: Boolean;
begin
  Result := FInternalValue = FDefaultValue
end;

procedure TJanuaDoubleField.LoadFromStream(aStream: TStream);
begin

end;

class function TJanuaDoubleField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaDoubleField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaDoubleField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaDoubleField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1.0, 0.0);
end;

procedure TJanuaDoubleField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := aValue
end;

procedure TJanuaDoubleField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := aValue
end;

procedure TJanuaDoubleField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := aValue
end;

procedure TJanuaDoubleField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue
end;

procedure TJanuaDoubleField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := aValue
end;

procedure TJanuaDoubleField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := aValue
end;

procedure TJanuaDoubleField.setAsString(const aValue: string);
begin
  FInternalValue := JsonStringToFloat(aValue);
end;

procedure TJanuaDoubleField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue;
end;

procedure TJanuaDoubleField.SetDataString(const aValue: string);
begin
  FInternalValue := XMLDouble(aValue)
end;

procedure TJanuaDoubleField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.AsDouble
end;

procedure TJanuaDoubleField.SetFInternalValue(const aValue: Double);
begin
  if aValue <> FFInternalValue then
  begin
    IsNull := False;
    FFInternalValue := aValue;
    if IsMonitored and Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    CheckNotifications
  end;
end;

procedure TJanuaDoubleField.SetJson(aValue: string);
begin

end;

procedure TJanuaDoubleField.SetJsonDefault(aValue: TJsonValue);
begin
  if not TryStrToFloat(aValue.Value, FDefaultValue) then
    FDefaultValue := 0;
end;

procedure TJanuaDoubleField.SetJsonValue(aValue: TJsonValue);
begin
  setAsString(TJsonNumber(aValue).Value);
end;

procedure TJanuaDoubleField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaDoubleField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.AsDouble
end;

procedure TJanuaDoubleField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsDouble
end;

function TJanuaDoubleField.Size: Int64;
begin
  Result := SizeOf(Double);
end;

{ TJanuaExtendedField }

constructor TJanuaExtendedField.Create;
begin
  inherited;
  FInternalValue := 0.0;
  FDefaultValue := 0.0;
  SetIsNull(False);
end;

procedure TJanuaExtendedField.Clear;
begin
  SetIsNull(False);
  FInternalValue := 0.0
end;

constructor TJanuaExtendedField.Create(aKey, aFiedl: string; aIsMonitored: Boolean = False);
begin
  inherited;
  Create(aKey, aFiedl, TJanuaFieldType.jptExtended, aIsMonitored)
end;

procedure TJanuaExtendedField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal aValue che Default aValue ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaExtendedField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaExtendedField.getAsBoolean: Boolean;
begin
  Result := not(FInternalValue = 0.0)
end;

function TJanuaExtendedField.getAsCurrency: Currency;
begin
  Result := FInternalValue
end;

function TJanuaExtendedField.GetAsDateTime: TDateTime;
begin
  Result := FInternalValue
end;

function TJanuaExtendedField.getAsFloat: Extended;
begin
  Result := FInternalValue
end;

function TJanuaExtendedField.getAsInteger: Integer;
begin
  Result := Round(FInternalValue)
end;

function TJanuaExtendedField.getAsLargeInt: Int64;
begin
  Result := Round(FInternalValue)
end;

function TJanuaExtendedField.getAsSmallint: Smallint;
begin
  Result := Round(FInternalValue)
end;

function TJanuaExtendedField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaExtendedField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(AsString);
end;

function TJanuaExtendedField.GetAsVariant: Variant;
begin
  Result := FInternalValue
end;

function TJanuaExtendedField.GetDataString: string;
begin
  Result := XMLDoubleString(FInternalValue);
end;

function TJanuaExtendedField.GetDefault: TValue;
begin
  Result := FInternalValue
end;

function TJanuaExtendedField.GetJson: string;
begin

end;

function TJanuaExtendedField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonNumber.Create(FDefaultValue)
end;

function TJanuaExtendedField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(FInternalValue);
end;

function TJanuaExtendedField.GetModified: Boolean;
begin
  Result := FOldValue <> FFInternalValue
end;

function TJanuaExtendedField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue)
end;

function TJanuaExtendedField.GetValue: TValue;
begin
  Result := TValue(FInternalValue);
end;

function TJanuaExtendedField.IsDefault: Boolean;
begin
  inherited;
  Result := FInternalValue = FDefaultValue
end;

procedure TJanuaExtendedField.LoadFromStream(aStream: TStream);
begin

end;

class function TJanuaExtendedField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaLargeIntField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaExtendedField.SaveToStream(aStream: TStream);
begin

end;

procedure TJanuaExtendedField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue := IfThen(aValue, 1.0, 0.0)
end;

procedure TJanuaExtendedField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := aValue
end;

procedure TJanuaExtendedField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := aValue
end;

procedure TJanuaExtendedField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := aValue
end;

procedure TJanuaExtendedField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := aValue
end;

procedure TJanuaExtendedField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := aValue
end;

procedure TJanuaExtendedField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := aValue
end;

procedure TJanuaExtendedField.setAsString(const aValue: string);
begin
{$IFDEF DEBUG}
  Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue), 'TJanuaIntegerField error string is not numeric');
{$ENDIF}
  FInternalValue := System.SysUtils.StrToFloat(aValue)

end;

procedure TJanuaExtendedField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := aValue
end;

procedure TJanuaExtendedField.SetDataString(const aValue: string);
begin
  FInternalValue := XMLDouble(aValue);
end;

procedure TJanuaExtendedField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.AsExtended
end;

procedure TJanuaExtendedField.SetFInternalValue(const aValue: Extended);
begin
  if aValue <> FFInternalValue then
  begin
    IsNull := False;
    FFInternalValue := aValue;
    if FieldKind in [jfkParamLookup, jfkParam] then
      Active := FFInternalValue <> FDefaultValue;

    if IsMonitored and Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    CheckNotifications
  end;
end;

procedure TJanuaExtendedField.SetJson(aValue: string);
begin

end;

procedure TJanuaExtendedField.SetJsonDefault(aValue: TJsonValue);
begin
  if not TryStrToFloat(aValue.Value, FDefaultValue) then
    FDefaultValue := 0;
end;

procedure TJanuaExtendedField.SetJsonValue(aValue: TJsonValue);
begin
  if Assigned(aValue) then
    FFInternalValue := TJsonNumber(aValue).AsDouble;
end;

procedure TJanuaExtendedField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaExtendedField.SetValue(const aValue: TValue);
begin
  FInternalValue := aValue.AsExtended
end;

procedure TJanuaExtendedField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := aOldValue.AsExtended
end;

function TJanuaExtendedField.Size: Int64;
begin
  Result := SizeOf(Extended);
end;

{ TJanuaRecordSet }

procedure TJanuaRecordSet.Append;
var
  LRecSer: IRecSerialization;
begin
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('Append', '__Start ', self);
{$ENDIF}
  LRecSer := FRecord.NewRecord;
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('Append', '__FRecord.NewRecord; ', self);
{$ENDIF}
  FSetSerialization.AddRecord(LRecSer);
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('Append', '___FDataSet.AddRecord(LRecSer) ', self);
{$ENDIF}
  FRecordSetState := TRecordSetState.rsInserting;
  FRecord.ItemIndex := FSetSerialization.ItemIndex;
  FRecord.DoCalcFields;
  { AddIndex; }   // AddIndex will be Inserted with a Post.
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('Append', '__AddIndex End ', self);
{$ENDIF}
end;

procedure TJanuaRecordSet.Append(const aObject: TJsonObject);
begin
  Append;
  CurrentRecord.AsJsonObject := aObject;
  Post;
end;

procedure TJanuaRecordSet.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaRecordSet.Append(const aRecord: IJanuaRecord);
begin
  Append;
  FRecord.Assign(aRecord);
  Post;
end;

procedure TJanuaRecordSet.ApplyLocalUpdates;
begin
  if Assigned(FLocalStorage) then
    if FLocalStorage.ApplyUpdates(self as IJanuaRecordSet) then
      RefreshFromRecodrdSet(FLocalStorage.RecordSet, False);
end;

procedure TJanuaRecordSet.ApplyRemoteUpdates;
begin
  if not IsRemoteUpdated then
    if Assigned(FRemoteStorage) then
      if FLocalStorage.ApplyUpdates(self as IJanuaRecordSet) then
        RefreshFromRecodrdSet(FLocalStorage.RecordSet, False);
end;

procedure TJanuaRecordSet.Assign(const aRecordSet: IJanuaRecordSet);
begin
  LoadRecordSet(aRecordSet);
end;

function TJanuaRecordSet.AssignDatasets(const aDatasets: TJanuaDBDatasets;
  const aRaiseException: Boolean): Boolean;
begin
  Result := False;
  Assert(Length(aDatasets) > 0, ClassName + '.AssignDatasets empty Datasets Array passed');
  try
    Result := FRecord.AssignJanuaDatasets(aDatasets, aRaiseException);
    Assert(not(aRaiseException) or Result, 'AssignDataset: ' + Name);
  except
    on e: exception do
      RaiseException('AssignDatasets', e, self, LogString);
  end;
end;

procedure TJanuaRecordSet.BeforeDestruction;
begin
  inherited;
  try
    FGUIDIndex.Clear;
    FDelRecords.Clear;
    FParams.Clear;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

function TJanuaRecordSet.Bof: Boolean;
begin
  Result := FSetSerialization.ItemIndex <= 0;
  // FDataSet.RecordCount
end;

constructor TJanuaRecordSet.Create;
begin
  try
    inherited Create;
    FForceRefresh := False;
    FRecordSetState := TRecordSetState.rsNone;
    FSetSerialization := TJanuaSetSerialization.Create;
    FDelRecords := TCollections.CreateList<IJanuaRecord>;
    FParams := TCollections.CreateList<IJanuaField>;
    FGUIDIndex := Spring.Collections.TCollections.CreateDictionary<TGUID, Integer>;
    FEOF := True;
  except
    on e: exception do
      RaiseException('Create', e, self, LogString);
  end;
end;

procedure TJanuaRecordSet.Cancel;
begin

end;

procedure TJanuaRecordSet.Clear;
begin
  FSetSerialization.Clear;
  FGUIDIndex.Clear;
  FRecord.Clear;
end;

procedure TJanuaRecordSet.ClearRecordSet;
begin
  try
    if RecordCount > 0 then
    begin
      Clear;
      if Assigned(FOnClearDataset) then
        FOnClearDataset;
    end;
  except
    on e: exception do
      RaiseException('ClearRecordSet', e, self, LogString);
  end;
end;

procedure TJanuaRecordSet.ClearSyncDataset;
begin
  SyncDataset.ClearDataset;
end;

constructor TJanuaRecordSet.Create(const aRecordSet: IJanuaRecordSet; aAssign: Boolean);
begin
  try
    Guard.CheckNotNull(aRecordSet, ClassName + '.Create aRecordset  is nil');
    Create(aRecordSet.Name, nil, nil);
    if aAssign then
      Assign(aRecordSet);
  except
    on e: exception do
      RaiseException('Create(aRecordSet: IJanuaRecordSet; aAssign: boolean)', e, self, LogString);
  end;
end;

constructor TJanuaRecordSet.Create(const aObject: TJsonObject);
begin
  try
    Guard.CheckNotNull(aObject, ClassName + '.Create aObject  is nil');
    Create;
    SetAsMetaData(aObject);
  except
    on e: exception do
      RaiseException('Create(aObject: TJsonObject)', e, self, LogString);
  end;
end;

constructor TJanuaRecordSet.Create(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage);
begin
  Create;
  FName := aName;
  FLocalStorage := aLocalStorage;
  FRemoteStorage := aRemoteStorage;
end;

procedure TJanuaRecordSet.Delete;
begin
  try
    CurrentRecord.Deleted := True;
    Post;
    { FDataSet.DelCurrenRecord;
      CurrentRecord.Clear;
      FEOF := FDataSet.RecordCount = 0;
      if not FEOF then
      Prev; }
  except
    on e: exception do
      RaiseException('Delete', e, self, LogString);
  end;
end;

function TJanuaRecordSet.Eof: Boolean;
begin
  Result := FEOF
  // FDataSet.ItemIndex = Pred(FDataSet.RecordCount)
end;

function TJanuaRecordSet.ContentEquals(const aRecord: IJanuaRecordSet): Boolean;
begin
  Result := True;
  try
    if (RecordCount <> aRecord.RecordCount) then
      exit(False);

    if RecordCount > 0 then
    begin
      First;
      aRecord.First;
      while not Eof do
      begin
        if not CurrentRecord.ContentEquals(aRecord.CurrentRecord) then
        begin
          WriteLocalLog('ContentEquals', 'Record[' + ItemIndex.ToString + ']: ' + CurrentRecord.LastMessage);
          exit(False);
        end;
        Next;
        aRecord.Next;
      end;
    end
    else if not CurrentRecord.ContentEquals(aRecord.CurrentRecord) then
      exit(False);
  except
    on e: exception do
      RaiseException('ContentEquals', e, self, LogString);
  end;
end;

function TJanuaRecordSet.FactoryCreateSyncDataset: IJanuaDBDataset;
var
  lFactory: IJanuaDBDatasetFactory;
begin
  try
    if not TJanuaApplicationFactory.TryGetInterface(IJanuaDBDatasetFactory, lFactory) then
      raise exception.Create('TJanuaRecordSet.FactoryCreateSyncDataset IJanuaDBDatasetFactory not set');
    Result := lFactory.CreateDataset(FRecord);
  except
    on e: exception do
      RaiseException('FactoryCreateSyncDataset', e, self, LogString);
  end;
end;

function TJanuaRecordSet.FieldCount: Integer;
begin
  Result := FSetSerialization.RecordCount
end;

procedure TJanuaRecordSet.FillSyncDataset;
begin

end;

procedure TJanuaRecordSet.First;
begin
  FEOF := (FSetSerialization.RecordCount = 0);
  if not FEOF then
  begin
    FSetSerialization.ItemIndex := 0;
    UpdateCurrentRecord;
    NotifyEvent;
  end;
end;

function TJanuaRecordSet.GetActualGUID: TGUID;
begin
  Result := FRecord.GUID
end;

function TJanuaRecordSet.GetAsJsonObject: TJsonObject;
var
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  try
    Janua.Core.Json.JsonPair(Result, 'count', RecordCount);
    aArray := TJsonArray.Create;
    if RecordCount > 0 then
    begin
      First;
      while not Eof do
      begin
        aArray.AddElement(FRecord.AsJsonObject);
        Next
      end;
    end;
    Janua.Core.Json.JsonPair(Result, 'items', aArray);
  except
    on e: exception do
      RaiseException('GetAsJsonObject', e, self, LogString);
  end;
end;

function TJanuaRecordSet.GetAsMetaData: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'name', FName);
  Janua.Core.Json.JsonPair(Result, 'record', FRecord.AsMetadata);
end;

function TJanuaRecordSet.GetCurrentRecord: IJanuaRecord;
begin
  Result := FRecord
end;

function TJanuaRecordSet.GetDataset: TDataset;
begin
  Result := FRecord.DBDataset
end;

function TJanuaRecordSet.GetDelRecords: IList<IJanuaRecord>;
begin
  Result := FDelRecords
end;

function TJanuaRecordSet.GetEnumerator: IJanuaRecordEnumerator;
begin
  Result := TJanuaRecordIterator.Create(self as IJanuaRecordSet);
end;

function TJanuaRecordSet.GetItemIndex: Integer;
begin
  Result := FSetSerialization.ItemIndex
end;

function TJanuaRecordSet.GetLazyLoading: Boolean;
begin
  Result := FLazyLoading
end;

function TJanuaRecordSet.GetListFieldNames: TArray<string>;
begin
  var
    L: Integer;
  L := Length(FListFields);
  if L > 0 then
  begin
    SetLength(Result, Length(FListFields));
    for var I := 0 to Pred(L) do
      Result[I] := FListFields[I].DBField;
  end;
end;

function TJanuaRecordSet.GetListFields: TArray<IJanuaField>;
begin
  Result := FListFields;
end;

function TJanuaRecordSet.GetMasterRecord: IJanuaRecord;
begin
  Result := FRecord.MasterRecord
end;

function TJanuaRecordSet.GetModified: Boolean;
begin
  First;
  Result := False;
  while not Eof do
  begin
    if CurrentRecord.Modified then
      exit(True);
    Next;
  end;

end;

function TJanuaRecordSet.GetName: string;
begin
  Result := FName
end;

function TJanuaRecordSet.GetOnNewRecord: TProc<IJanuaRecord>;
begin
  Result := FOnNewRecord
end;

function TJanuaRecordSet.GetOnRecordChange: TProc<IJanuaRecord>;
begin
  Result := FOnRecordChange
end;

function TJanuaRecordSet.GetOnScroll: TNotifyEvent;
begin
  Result := FOnScroll;
end;

function TJanuaRecordSet.GetParameters: TJanuaFields;
begin
  Result := FParams
end;

function TJanuaRecordSet.GetRecordSetState: TRecordSetState;
begin
  Result := FRecordSetState;
end;

function TJanuaRecordSet.GetStoreDataset: IJanuaDBDataset;
begin
  Result := FRecord.StoreDataset
end;

function TJanuaRecordSet.GetStringList: TStrings;
begin
  Result := TStringList.Create;
  var
  L := Length(FListFields);
  if L > 0 then
  begin
    First;
    while not Eof do
    begin
      var
      S := '';
      for var I := 0 to Pred(L) do
        S := S + IfThen(I = 0, '', ' ') + FListFields[I].AsString;
      Result.Add(S);
      Next;
    end;
  end;
end;

function TJanuaRecordSet.GetSyncDataset: IJanuaDBDataset;
begin
  if not Assigned(FSyncDataset) then
    FSyncDataset := FactoryCreateSyncDataset;
  Result := FSyncDataset;
end;

procedure TJanuaRecordSet.GoToBookmark(aBoomarkID: Integer);
begin
  Guard.CheckFalse(aBoomarkID > Pred(RecordCount), 'GoToBookmark Index out of Range');
  FSetSerialization.ItemIndex := aBoomarkID;
  UpdateCurrentRecord;
end;

function TJanuaRecordSet.IsLocalUpdated: Boolean;
begin
  Result := False;
  { TODO : Add Is Local Updated Management for Recordset }
end;

function TJanuaRecordSet.IsRemoteUpdated: Boolean;
begin
  Result := False;
  { TODO : Add IsRemoteUpdated Management for Recordset }
end;

function TJanuaRecordSet.IsSetLocalStorage: Boolean;
begin
  Result := Assigned(FLocalStorage)
end;

function TJanuaRecordSet.IsSetRemoteStorage: Boolean;
begin
  Result := Assigned(FRemoteStorage);
end;

procedure TJanuaRecordSet.Iterate(aProc: TProc);
begin
  if RecordCount > 0 then
  begin
    First;
    while not Eof do
    begin
      aProc;
      Next;
    end;
  end;
end;

procedure TJanuaRecordSet.Last;
begin
  FEOF := FSetSerialization.RecordCount = 0;
  if not FEOF then
  begin
    FSetSerialization.ItemIndex := Pred(FSetSerialization.RecordCount);
    FRecord.ReadRecord(FSetSerialization.CurrentRecord);
    NotifyEvent;
  end;
end;

procedure TJanuaRecordSet.LoadFromDataset(const aRecursively: Boolean = True);
var
  lDataSet: TDataset;
begin
  try
{$IFDEF DEBUG}
    Guard.CheckNotNull(FRecord, 'TJanuaRecordSet.LoadFromDataset FRecord is null');
    Guard.CheckNotNull(FRecord.DBDataset, ClassName + '.(' + FName +
      ')LoadFromDataset FRecord.DBDataset is null: ' + FRecord.EntityName);
{$ENDIF DEBUG}
    if Assigned(FRecord.StoreDataset) then
      FRecord.StoreDataset.BeginScroll(True);
    try
      ClearRecordSet;
      lDataSet := FRecord.DBDataset;
      if lDataSet.Active and (lDataSet.RecordCount > 0) then
      begin
        lDataSet.First;
        while not lDataSet.Eof do
        begin
          Append;
          FRecord.LoadFromDataset(aRecursively);
          Post;
          lDataSet.Next;
        end;
      end;
{$IFDEF DEBUG}
      Guard.CheckTrue(RecordCount = FRecord.DBDataset.RecordCount, 'TJanuaRecordSet.' + ClassName +
        '.LoadFromDataset[' + FName + '].RecordCount: ' + RecordCount.ToString + ' <> ' +
        FRecord.DBDataset.RecordCount.ToString);
{$ENDIF}
    finally
      if Assigned(FRecord.StoreDataset) then
        FRecord.StoreDataset.EndScroll;
    end;
  except
    on e: exception do
      Raise exception.Create(ClassName + '.' + ClassName + '(' + FRecord.Name + ').LoadFromDataset[' +
        FRecord.EntityName + ']: ' + e.Message);
  end;
end;

procedure TJanuaRecordSet.LoadFromDataset(aMainDataset: IJanuaDBDataset; aDatasets: TArray<IJanuaDBDataset>);
begin
  try
    Clear;
    FRecord.StoreDataset := aMainDataset;
    FRecord.SetupDataset(aMainDataset, aDatasets);
    LoadFromDataset;
  except
    on e: exception do
      RaiseException('LoadFromDataset(aMainDataset: IJanuaDBDataset; aDatasets', e, self, LogString);
  end;
end;

procedure TJanuaRecordSet.LoadFromLocalStorage;
begin
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('LoadFromLocalStorage', 'Start ', self);
{$ENDIF}
  Guard.CheckNotNull(FLocalStorage, ClassName + ': ' + FName +
    '.LoadFromLocalStorage  FLocalStorage is null');
  LoadFromStorage(FLocalStorage);
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('LoadFromLocalStorage', 'End ', self);
{$ENDIF}
end;

procedure TJanuaRecordSet.LoadFromRemoteStorage;
begin
  Guard.CheckNotNull(FRemoteStorage, 'TJanuaRecordSet.LoadFromRemoteStorage FRemoteStorage is null');
  LoadFromStorage(FRemoteStorage);
end;

procedure TJanuaRecordSet.LoadFromStorage(aStorage: IJanuaRecordSetStorage);
var
  I, j, k, L: Integer;
begin
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('LoadFromStorage', 'Start aStorage', self);
{$ENDIF}
  Guard.CheckNotNull(aStorage, 'TJanuaRecordSet.LoadFromStorage aStorage is null ');
  Guard.CheckNotNull(FParams, 'TJanuaRecordSet.LoadFromStorage FParams is null ');
  try
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadFromStorage', 'Start Params: ' + FParams.Count.ToString, self);
{$ENDIF}
    if FParams.Count > 0 then
      for I := 0 to Pred(FParams.Count) do
        aStorage.ParamByName(FParams[I].DBField).Value := FParams[I].Value;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadFromStorage', 'End Params: ' + FParams.Count.ToString, self);
{$ENDIF}
    Guard.CheckNotNull(aStorage.RecordSet, 'TJanuaRecordSet.LoadFromStorage FPaStorage.RecordSet is null');

    if aStorage.LoadData then
      LoadRecordSet(aStorage.RecordSet);

{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadFromStorage', 'End aStorage', self);
{$ENDIF}
  except
    on e: exception do
    begin
      raise exception.Create('TJanuaRecordSet.LoadFromStorage ' + e.Message);
    end;
  end;

end;

procedure TJanuaRecordSet.LoadRecordSet(const aRecordSet: IJanuaRecordSet);
begin
  Guard.CheckNotNull(aRecordSet, 'TJanuaRecordSet.LoadRecordSet aRecordSet is null ');
  try
    Clear;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadRecordSet', '__Start Name:' + aRecordSet.Name, self);
{$ENDIF}
    if aRecordSet.RecordCount > 0 then
    begin
      aRecordSet.First;
      while not aRecordSet.Eof do
      begin
        Append;
        CurrentRecord.Assign(aRecordSet.CurrentRecord);
        Post;
        aRecordSet.Next;
{$IFDEF JANUA_TEST}
        TJanuaLogger.LogRecord('LoadRecordSet', '___Next ', self);
{$ENDIF}
      end;
    end;
{$IFDEF JANUA_TEST}
    TJanuaLogger.LogRecord('LoadRecordSet.End', 'aRecordset.RecordCount = ' +
      aRecordSet.RecordCount.ToString, self);
{$ENDIF}
  except
    on e: exception do
      raise exception.Create(ClassName + '.LoadRecordSet(' + aRecordSet.Name + '): ' + sLineBreak +
        e.Message);
  end;
end;

function TJanuaRecordSet.Locate(const aField: IJanuaField; const aValue: Integer): Boolean;
begin
  Result := False;
  First;
  while not Eof do
  begin
    if aField.AsInteger = aValue then
      exit(True);
    Next
  end;
end;

function TJanuaRecordSet.Locate(const aField: IJanuaField; const aValue: string): Boolean;
begin
  Result := False;
  First;
  while not Eof do
  begin
    if aField.AsString = aValue then
      exit(True);
    Next
  end;
end;

function TJanuaRecordSet.Locate(const aField: IJanuaField; const aValue: Variant): Boolean;
begin
  Result := False;
  First;
  while not Eof do
  begin
    if aField.AsVariant = aValue then
      exit(True);
    Next
  end;
end;

function TJanuaRecordSet.Locate(const aField: IJanuaField; const aValue: TValue): Boolean;
begin
  Result := False;
  First;
  while not Eof do
  begin
    if aField.Value.Equals(aValue) then
      exit(True);
    Next
  end;
end;

procedure TJanuaRecordSet.Next;
// var
// tmp1, tmp2: string; // eliminare dopo il test di recordset Next
begin
  FEOF := (FSetSerialization.RecordCount = 0) or
    (FSetSerialization.ItemIndex = Pred(FSetSerialization.RecordCount));
  if not FEOF then
  begin
    // tmp1 :=  FRecord.GUID.ToString;
    FSetSerialization.ItemIndex := FSetSerialization.ItemIndex + 1;
    FRecord.ReadRecord(FSetSerialization.CurrentRecord);
    // tmp2 := FRecord.GUID.ToString;
    NotifyEvent;
  end;
end;

procedure TJanuaRecordSet.NotifyEvent;
begin
  try
    if BindManager.HasBindings then
    begin
      BindManager.Notify('GUID');
      BindManager.Notify('GUIDString');
      BindManager.Notify('ActualGUID');
    end;
    if Assigned(FOnScroll) then
      FOnScroll(self);
  except
    on e: exception do
      RaiseException('NotifyEvent', e, self, LogString);
  end;
end;

procedure TJanuaRecordSet.Post;
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(FRecord, ClassName + '.Post Error FRecord is Null');
  Guard.CheckNotNull(FSetSerialization, ClassName + '.Post Error FSetSerialization is Null');
{$ENDIF}
  try
    if FSetSerialization.RecordCount = 0 then
      FSetSerialization.AddRecord(CurrentRecord.RecordValue);

{$IFDEF DEBUG}
    Guard.CheckNotNull(FRecord, ClassName + '.Post Error FRecord is Null');
    Guard.CheckTrue(FSetSerialization.RecordCount > 0,
      ClassName + '.Post Error FSetSerialization.RecordCount = 0');
    Guard.CheckNotNull(FSetSerialization.CurrentRecord,
      ClassName + '.Post Error FSetSerialization.CurrentRecord is Null');
{$ENDIF}
    FRecord.WriteRecord(FSetSerialization.CurrentRecord);
    // FGUIDIndex is a Dictionary used to store and retrieve record locations based on their GUID
    if (FRecord.GUID <> System.Types.GUID_NULL) and (FRecord.ItemIndex > -1) then
      FGUIDIndex[FRecord.GUID] := FRecord.ItemIndex; // AddOrSetValue(FRecord.GUID, FRecord.ItemIndex);
    // Automatically Does a Post Action on all Sub-Records of the master Record
    try
      if Assigned(FOnRecordPost) then
        FOnRecordPost(CurrentRecord);
    except
      on e: exception do
        Raise exception.Create(ClassName + '.FOnRecordPost ' + e.Message);
    end;

    FRecordSetState := rsNone;
    NotifyEvent;
  except
    on e: exception do
      Raise exception.Create(ClassName + '.Post ' + e.Message);
  end;
end;

procedure TJanuaRecordSet.Prev;
begin
  if (FSetSerialization.RecordCount > 0) and not Bof then
  begin
    FSetSerialization.ItemIndex := FSetSerialization.ItemIndex - 1;
    FRecord.ReadRecord(FSetSerialization.CurrentRecord);
    NotifyEvent;
  end;
end;

procedure TJanuaRecordSet.ReadFromJson(aJson: string);
begin
  SetAsJsonObject(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaRecordSet.ReadFromJsonObject(const aJsonObject: TJsonObject; aFree: Boolean = False);
begin
  SetAsJsonObject(Janua.Core.Json.JsonObject(FName.ToLower, aJsonObject));
  if aFree then
    aJsonObject.Free;
end;

procedure TJanuaRecordSet.ReadFromSerialization(aSerialization: ISetSerialization);
var
  I: Integer;
begin
  try
    Guard.CheckNotNull(aSerialization, 'TJanuaRecordSet.WriteToSerialization aSerialization is null');
    Clear;
    for I := 0 to Pred(aSerialization.RecordCount) do
    begin
      // FRecord.ReadRecord(FDataSet.CurrentRecord);
      Append;
      // per ogni i mi limito a leggere il record della List
      FRecord.ReadRecord(aSerialization.RecList[I]);
      Post;
    end;
    First;
  except
    on e: exception do
      RaiseException('ReadFromSerialization', e, self, LogString);
  end;
end;

function TJanuaRecordSet.RecordCount: Integer;
begin
  Result := FSetSerialization.RecordCount
end;

procedure TJanuaRecordSet.RefreshFromDataset(const aRecursively: Boolean = True);
begin
  FRecord.RefreshFromDataset(aRecursively);
end;

procedure TJanuaRecordSet.RefreshFromRecodrdSet(const aRecordSet: IJanuaRecordSet; bRemote: Boolean);
var
  I: Integer;
begin
  try
    // questa procedura ricevento un RecordSet in risposta ad un Salvataggio aggiorna tutti i record locali
    // ed imposta il campo modified a False avendoli oramai registrati.
    First;
    while not Eof do
    begin
      if (CurrentRecord.Modified) or (not CurrentRecord.IsRemoteStored and bRemote) or
        (not CurrentRecord.IsLocalStored) or CurrentRecord.IsNewRecord then
      begin
        if aRecordSet.SearchByGUID(CurrentRecord.GUID) then
        begin
          CurrentRecord.Assign(aRecordSet.CurrentRecord);
          CurrentRecord.Modified := False;
          if bRemote then
            CurrentRecord.IsRemoteStored := True
          else
            CurrentRecord.IsLocalStored := True;
        end;
      end;
      Next;
    end;
  except
    on e: exception do
      RaiseException('RefreshFromRecodrdSet', e, self, LogString);
  end;
end;

procedure TJanuaRecordSet.SaveToDataset(const aDataset: IJanuaDBDataset; aDatasets: TJanuaDBDatasets);
var
  vDataset: TDataset;
begin
  try
    FRecord.SetupDataset(aDataset, aDatasets);
    SaveToDataset;
  except
    on e: exception do
      RaiseException('SaveToDataset', e, self, '');
  end;
end;

procedure TJanuaRecordSet.SaveToDataset(const aDataset: IJanuaDBDataset);
begin
  FRecord.SetupDataset(aDataset, []);
  SaveToDataset;
end;

function TJanuaRecordSet.SearchByGUID(aGUID: TGUID): Boolean;
var
  I: Integer;
begin
{$IFDEF DEBUG}Guard.CheckNotNull(CurrentRecord, ClassName + '.SearchByGUID CurrenteRecord not set'); {$ENDIF}
  Result := CurrentRecord.GUID = aGUID;
  if not Result then
    try
{$IFDEF DEBUG} Guard.CheckNotNull(FGUIDIndex, ClassName + '.FGUIDIndex CurrenteRecord not set'); {$ENDIF}
      Result := (FGUIDIndex.Count > 0) and FGUIDIndex.TryGetValue(aGUID, I);
      if Result and (I <> FSetSerialization.ItemIndex) then
      begin
        FSetSerialization.ItemIndex := I;
        // Aggiorno il valore del record all'attuale record selezionato nella serializzazione.........
        FRecord.ReadRecord(FSetSerialization.CurrentRecord);
        if Assigned(FOnScroll) then
          FOnScroll(self);
        NotifyEvent
      end;
    except
      on e: exception do
        RaiseException('SearchByGUID', e, self, LogString);
    end;
end;

function TJanuaRecordSet.SearchRecord(const aGUID: TGUID): Boolean;
begin
  Result := SearchByGUID(aGUID)
end;

procedure TJanuaRecordSet.SetActualGUID(const aValue: TGUID);
begin
  if (FRecord.GUID <> aValue) and (aValue <> System.Types.GUID_NULL) and not SearchByGUID(aValue) then
  begin
    FRecord.GUID := aValue;
  end;
end;

procedure TJanuaRecordSet.SetAsJsonObject(const aValue: TJsonObject);
var
  vValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: Integer;
begin
  try
    Clear;
    Janua.Core.Json.JsonValue(aValue, 'count', aTest);
    if aTest > 0 then
    begin
      aPair := aValue.Get('items');
      if Assigned(aPair) then
        for vValue in (aPair.JsonValue as TJsonArray) do
        begin
          aObject := (vValue as TJsonObject);
          Append(aObject);
        end;
    end;
  except
    on e: exception do
      RaiseException('SetAsJsonObject.JsonValue', e, self);
  end;
end;

procedure TJanuaRecordSet.SetAsMetaData(const Value: TJsonObject);
var
  tmp: string;
  LObject: TJsonObject;
begin
  Guard.CheckNotNull(Value, ClassName + '.SetAsMetadata Value is nil');
  try
    Janua.Core.Json.JsonValue(Value, 'name', tmp);
    FName := tmp;
    // At first we set to nil the current record structure
    FRecord := nil;
    // e ricreo il nuovo record struttura in base all'oggetto TJsonObject
    LObject := Janua.Core.Json.JsonObject('record', Value);
    FRecord := TJanuaRecord.Create(LObject);
    // la distruzione dell'oggetto ? compito della procedura chiamante qui non lo distruggo.
  except
    on e: exception do
      raise exception.Create(ClassName + '.SetAsMetadata ' + FName + ' Error: ' + sLineBreak + e.Message);
  end;
end;

procedure TJanuaRecordSet.SetCurrentRecord(const aValue: IJanuaRecord);
begin
  FRecord.Assign(aValue)
end;

procedure TJanuaRecordSet.SetDataset(const aValue: TDataset);
begin
  CurrentRecord.DBDataset := aValue;
end;

procedure TJanuaRecordSet.SetDelRecords(const aValue: IList<IJanuaRecord>);
begin
  FDelRecords := aValue
end;

procedure TJanuaRecordSet.SetFromJsonObject(const aJsonObject: TJsonObject; aFree: Boolean);
begin
  SetAsJsonObject(aJsonObject);
  if aFree then
    aJsonObject.Free;

end;

procedure TJanuaRecordSet.SetGUID(const Value: TGUID);
begin
  CurrentRecord.GUID := Value
end;

procedure TJanuaRecordSet.SetGUIDString(const Value: string);
begin
  // CurrentRecord.GUIDString := Value;
end;

procedure TJanuaRecordSet.SetItemIndex(const aValue: Integer);
begin
  if aValue <= Pred(FSetSerialization.RecordCount) then
  begin
    FSetSerialization.ItemIndex := aValue;
    FRecord.ReadRecord(FSetSerialization.CurrentRecord);
    NotifyEvent;
  end;
end;

procedure TJanuaRecordSet.SetJanuaFields(const aValue: TJanuaFields);
begin
  FRecord.Fields := aValue
end;

procedure TJanuaRecordSet.SetLazyLoading(const Value: Boolean);
begin
  FLazyLoading := Value;
end;

procedure TJanuaRecordSet.SetListFieldNames(const Value: TArray<string>);
begin
  SetLength(FListFields, Length(Value));
  for var I := 0 to Pred(Length(Value)) do
    if CurrentRecord.FindField(Value[I]) then
      FListFields[I] := CurrentRecord.FieldByName(Value[I])
    else
      raise exception.Create(ClassName + '.SetListFieldNames field (' + Value[I] + ') not found');
end;

procedure TJanuaRecordSet.SetListFields(const Value: TArray<IJanuaField>);
begin
  FListFields := Value;
end;

procedure TJanuaRecordSet.SetMasterRecord(const Value: IJanuaRecord);
begin
  FRecord.MasterRecord := Value;
end;

procedure TJanuaRecordSet.SetModified(aValue: Boolean);
begin
  if not aValue and GetModified then
  begin
    First;
    while not Eof do
    begin
      CurrentRecord.Modified := False;
      Post;
      Next;
    end;
  end;
end;

procedure TJanuaRecordSet.SetName(const aValue: string);
begin
  FName := aValue
end;

procedure TJanuaRecordSet.SetOnNewRecord(const Value: TProc<IJanuaRecord>);
begin
  FOnNewRecord := Value;
end;

procedure TJanuaRecordSet.SetOnRecordChange(const Value: TProc<IJanuaRecord>);
begin
  FOnRecordChange := Value;
end;

procedure TJanuaRecordSet.SetOnScroll(aValue: TNotifyEvent);
begin
  FOnScroll := aValue;
end;

procedure TJanuaRecordSet.SetParameters(const aValue: TJanuaFields);
begin
  FParams := aValue;
end;

procedure TJanuaRecordSet.SetRecord(const aRecord: IJanuaRecord);
begin
  FRecord := aRecord
end;

procedure TJanuaRecordSet.SetStoreDataset(aValue: IJanuaDBDataset);
begin
  FRecord.StoreDataset := aValue;
end;

function TJanuaRecordSet.ToJson: string;
begin
  Result := Janua.Core.Json.ToJsonFree(AsJsonObject);
end;

function TJanuaRecordSet.ToJsonPretty: string;
begin
  Result := Janua.Core.Json.ToJsonPrettyFree(AsJsonObject)
end;

procedure TJanuaRecordSet.UnMapDatasets;
begin
  FRecord.UnMapDatasets;
end;

procedure TJanuaRecordSet.UpdateCurrentRecord;
begin
  try
    if FSetSerialization.ItemIndex > -1 then
      FRecord.ReadRecord(FSetSerialization.CurrentRecord)
    else
      FRecord.Clear;
  except
    on e: exception do
      RaiseException('UpdateCurrentRecord', e, self);
  end;
end;

procedure TJanuaRecordSet.UpdateIndexGUID(const aOld, aNew: TGUID);
begin
  try
    FGUIDIndex.Remove(aOld);
    FGUIDIndex[aNew] := ItemIndex;
  except
    on e: exception do
      RaiseException('UpdateIndexGUID', e, self);
  end;
end;

procedure TJanuaRecordSet.UpdateSyncDataset;
begin
  try
    First;
    while not Eof do
    begin
      if not SyncDataset.Locate('jguid', FRecord.GUID.ToString, []) then
        SyncDataset.Append;
    end;
  except
    on e: exception do
      RaiseException('UpdateSyncDataset', e, self);
  end;
end;

procedure TJanuaRecordSet.WriteToJsonObject(const aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, FName.ToLower, AsJsonObject)
end;

procedure TJanuaRecordSet.WriteToSerialization(aSerialization: ISetSerialization);
begin
  Guard.CheckNotNull(aSerialization, 'TJanuaRecordSet.WriteToSerialization aSerialization is null');
  aSerialization.Clear;
  if (RecordCount > 0) then
  begin
    First;
    while not Eof do
    begin
      // Serialization pu? essere incrementata del valore di un singolo Record con l'operazione di serializzazione
      // dei singoli Record del dataset che deve essere serializzato .............................................
      // nota: questo permette di 'annidare' la serializzazione e deserializzazione dei recordset contenuti nei record
      aSerialization.AddRecord(FRecord.RecordValue);
      Next
    end;
  end;
end;

procedure TJanuaRecordSet.SaveToDataset;
var
  aDataset: TDataset;
begin
{$IFDEF DEBUG}
  var
  sName := self.ClassName;
  var
  iRecord := RecordCount;
{$ENDIF}
  if RecordCount > 0 then
    try
      Guard.CheckTrue(Assigned(FRecord.StoreDataset) or Assigned(FRecord.DBDataset),
        'TJanuaRecordSet.SaveToDataset StoreDataset/DBDataset both nil');
      First;
      while not Eof do
      begin
        if Assigned(FRecord.StoreDataset) then
        begin
          if not FRecord.StoreDataset.LocateGUID(FRecord.GUID) then
            FRecord.StoreDataset.Dataset.Append
          else
            FRecord.StoreDataset.Dataset.Edit;
          SaveRecordToDBDataset(FRecord, FRecord.StoreDataset.Dataset)
        end
        else if Assigned(FRecord.DBDataset) then
        begin
          if not FRecord.DBDataset.Locate('jguid', FRecord.GUID.ToString, []) then
            FRecord.DBDataset.Append
          else
            FRecord.DBDataset.Edit;
          SaveRecordToDBDataset(FRecord, FRecord.DBDataset)
        end;
{$IFDEF DEBUG}
        var
        sGUID := FRecord.GUIDString;
{$ENDIF}
        Next;
      end;
      if FForceRefresh then
      begin
        var
        lRecorCount := 0;
        if Assigned(FRecord.StoreDataset) then
        begin
          FRecord.StoreDataset.Close;
          FRecord.StoreDataset.Open;
          lRecorCount := FRecord.StoreDataset.RecordCount;
        end
        else if Assigned(FRecord.DBDataset) then
        begin
          FRecord.DBDataset.Close;
          FRecord.DBDataset.Open;
          lRecorCount := FRecord.DBDataset.RecordCount;
        end;
        if lRecorCount > 0 then
          LoadFromDataset(False);
      end;

    except
      on e: exception do
        RaiseException('SaveToDataset GUID=' + FRecord.GUID.ToString + FName, e, self);
      { raise exception.Create('TJanuaRecordSet.SaveToDataset: GUID=' + FRecord.GUID.ToString + ',Error= ' + e.Message); }
    end;
end;

procedure TJanuaRecordSet.AddIndex;
begin
  FGUIDIndex[FRecord.GUID] := FRecord.ItemIndex; // .AddOrSetValue(FRecord.GUID, FRecord.ItemIndex);
end;

procedure TJanuaRecordSet.DelIndexes;
begin
  FGUIDIndex.Clear;
end;

destructor TJanuaRecordSet.Destroy;
begin
  try
    FSetSerialization := nil;
    FGUIDIndex := nil;
    // : IList<IJanuaRecord>;
    FLocalStorage := nil;
    FRemoteStorage := nil;
    FParams := nil;
    FOnScroll := nil; // TNotifyEvent;
    FOnNewRecord := nil; // TProc<IJanuaRecord>;
    FOnRecordChange := nil; // TProc<IJanuaRecord>;
    FSyncDataset := nil; // IJanuaDBDataset;
    FRecord := nil; // IJanuaRecord;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
end;

procedure TJanuaRecordSet.DirectLoadFromDataset(const aDataset: TDataset; const aRelease: Boolean;
  const aRecursively: Boolean);
begin
  if Assigned(aDataset) then
  begin
    FRecord.DBDataset := aDataset;
    LoadFromDataset(aRecursively);
    if aRelease then
      FRecord.UnMapDatasets
  end;
end;

procedure TJanuaRecordSet.DirectLoadFromDataset(const aDatasets: TArray<TDataset>);
begin
  FRecord.AssignDatasets(aDatasets);
  LoadFromDataset;
end;

procedure TJanuaRecordSet.DirectLoadFromDataset(const aDataset: IJanuaDBDataset; const aRelease: Boolean;
  const aRecursively: Boolean);
begin
  if Assigned(aDataset) then
  begin
    FRecord.StoreDataset := aDataset;
    LoadFromDataset(aRecursively) { (aDataset.Dataset) };
    if aRelease then
      UnMapDatasets

  end;
end;

procedure TJanuaRecordSet.DirectSaveToDataset(const aDataset: TDataset);
begin
  if Assigned(aDataset) then
  begin
    FRecord.DBDataset := aDataset;
    SaveToDataset;
  end;
end;

function TJanuaRecordSet.GetFiltered: Boolean;
begin
  Result := FFiltered;
end;

function TJanuaRecordSet.GetForceRefresh: Boolean;
begin
  Result := FForceRefresh
end;

function TJanuaRecordSet.GetGUID: TGUID;
begin
  Result := CurrentRecord.GUID
end;

function TJanuaRecordSet.GetGUIDString: string;
begin
  Result := CurrentRecord.GUIDString
end;

function TJanuaRecordSet.GetOnClearDataset: TProc;
begin
  Result := FOnClearDataset;
end;

function TJanuaRecordSet.GetOnRecordPost: TJanuaRecordEvent;
begin
  Result := FOnRecordPost;
end;

procedure TJanuaRecordSet.Reindex;
begin
  DelIndexes;
  if RecordCount > 0 then
  begin
    First;
    while not Eof do
    begin
      AddIndex;
      Next;
    end;
  end;
end;

procedure TJanuaRecordSet.SetFiltered(const Value: Boolean);
begin
  FFiltered := Value;
end;

procedure TJanuaRecordSet.SetForceRefresh(const aValue: Boolean);
begin
  FForceRefresh := aValue
end;

procedure TJanuaRecordSet.SetOnClearDataset(const Value: TProc);
begin
  FOnClearDataset := Value;
end;

procedure TJanuaRecordSet.SetOnRecordPost(const Value: TJanuaRecordEvent);
begin
  FOnRecordPost := Value;
end;

{ TJanuaRecord }

function TJanuaRecord.AddCalcField(const aField: IJanuaField): Integer;
begin
  Result := AddField(aField);
  FFields[Result].Calculated := True;
  FCalcFields.Add(FFields[Result]);
end;

function TJanuaRecord.AddCreateField(const aFieldType: TJanuaFieldType; const aFieldKey, aFieldName: string;
  aFieldKind: TJanuaFieldKind = jfkData; aMaxLength: Integer = 0): IJanuaField;
begin
  try
    Result := CreateField(aFieldType, aFieldKey, aFieldName, aFieldKind);

    if Result <> nil then
    begin
      Result.MaxLength := aMaxLength;
      FItemIndex := AddField(Result);
    end
    else
      raise exception.Create('Type Not Managed ' + TEnumConvertor<TJanuaFieldType>.ToString(aFieldType))
  except
    on e: exception do
      RaiseException('AddCreateField', e, self);
  end;
end;

function TJanuaRecord.AddField(const aField: IJanuaField): Integer;
var
  I: Integer;
begin
  Guard.CheckNotNull(aField, 'TJanuaRecord.AddField aField is Null');
  Guard.CheckNotNull(FFields, 'TJanuaRecord.AddField FFields is Null');
  for I := 0 to Pred(FFields.Count) do
    if FFields[I].Key = aField.Key then
      raise exception.Create(ClassName + '.AddField Key already exists: ' + aField.Key);
  FFields.Add(aField);
  FFields[Pred(FFields.Count)].OnFieldDataChange := DoDataChange;
  Result := Pred(FFields.Count)
end;

procedure TJanuaRecord.AddKeyField(const aField: IJanuaField);
begin
  FKeyFields.Add(aField)
end;

procedure TJanuaRecord.AddMasterField(aMaster, aDetail: IJanuaField);
begin
  // 2018-0052  TMasterFields = TArray<TMasterField>;
{$IF Defined(DEBUG)}
  Guard.CheckNotNull(aMaster, 'TJanuaRecord.AddMasterField aMaster is null');
  Guard.CheckNotNull(aDetail, 'TJanuaRecord.AddMasterField aDetail is null');
{$ENDIF}
  try
    SetLength(FMasterFields, Length(FMasterFields) + 1);
    FMasterFields[Pred(Length(FMasterFields))] := TMasterField.Create(aMaster, aDetail);
  except
    on e: exception do
      RaiseException('AddMasterField', e, self)
  end;
end;

procedure TJanuaRecord.AddRecordDef(const aRecordDef: IJanuaRecord);
begin
  Guard.CheckNotNull(FRecords, ClassName + '(IJanuaRecord).AddRecordDef FRecords is Null');
  Guard.CheckNotNull(aRecordDef, ClassName + '(IJanuaRecord).aRecordDef is Null');
  try
    if Assigned(aRecordDef) then
    begin
      FRecords.Add(aRecordDef);
      aRecordDef.MasterRecord := (self as IJanuaRecord);
    end;
  except
    on e: exception do
      RaiseException('AddRecordDef', e, self, 'Adding a Record');
  end;
end;

function TJanuaRecord.AddRecordIntf(const aRecordIntf: TGUID; const aName: string): IJanuaRecord;
begin
  if not TJanuaOrmFactory.TryGetRecordIntf(aRecordIntf, Result, aName) then
    CreateException('aRecordIntf', aRecordIntf.ToString + 'not supported', self);

end;

function TJanuaRecord.AddRecordSet(const aRecordSet: IJanuaRecordSet): IJanuaRecordSet;
var
  I: Integer;
begin
  Guard.CheckNotNull(aRecordSet, ClassName + '(IJanuaRecord).AddRecordSet aRecordSet is Null');
  Guard.CheckNotNull(FRecordSets, ClassName + '(IJanuaRecord).AddRecordSet aRecordSet is Null');
  // Verifico che il Recordset non sia gi? presente o omonimo ...................
  Result := nil; // if procedure Fails.
  try
    if FRecordSets.Count > 0 then
      for I := 0 to Pred(FRecordSets.Count) do
        if FRecordSets[I] = aRecordSet then
          raise exception.Create('TJanuaRecord.AddRecordSet aRecordSet already exists: ' +
            aRecordSet.GetSelf.ClassName);
    // At First i Set the 'master record' as Self
    aRecordSet.MasterRecord := self as IJanuaRecord;
    // Aggiungo il Recorset all'insieme quindi il Count ? incrementato di un elemento
    FRecordSets.Add(aRecordSet);
    // Rispondo quindi con RecordSetIndex = Pred(Count).
    FRecordSetIndex := Pred(FRecordSets.Count);
    // I must also Set the Container Record as 'master' of the Recordset
    aRecordSet.CurrentRecord.MasterRecord := (self as IJanuaRecord);
    Result := aRecordSet;
  except
    on e: exception do
      RaiseException('AddRecordSet', e, self, 'Adding a RecordSet');
  end;
end;

procedure TJanuaRecord.AfterConstruction;
begin
  inherited;
  if FindField('db_schema_id') then
    FDBSchemaField := FieldByName('db_schema_id');
end;

procedure TJanuaRecord.AfterPost;
begin
  // here goes the procedure After Posting a Record
end;

procedure TJanuaRecord.Append;
var
  { I: Integer; }
  aMasterField: TMasterField;
  lField: IJanuaField;
  lRecord: IJanuaRecord;
  lRecordSet: IJanuaRecordSet;
begin
  CreateGUID(FGUID);

  FMasterGUID := System.Types.GUID_NULL;

  Guard.CheckNotNull(FFields, 'TJanuaRecord.Append FFields is null');

  // Clear operation sets all Fields to their default or NULL values if NULL as default state is provided
  for lField in FFields do
    lField.Clear;

  // Apppend operation applies also to every nested Record
  for lRecord in FRecords do
    lRecord.Append;

  // All Nested Recordset must be Cleared Too
  for lRecordSet in FRecordSets do
    lRecordSet.Clear;

  CheckMasterFields;

  // 'Do' procedures call internal descendant methods after inserting recored and trigger external events (TNotify...)
  DoNewRecord;
  DoCalcFields;
  // Sets the New Record State and triggers notifications and events connected to the 'new record' State
  SetState(TJanuaRecordState.jrsNewRecord);
end;

procedure TJanuaRecord.AppendToDataset;
begin
  if Assigned(FStoreDataset) then
    FStoreDataset.InsertRecord(self as IJanuaRecord)
  else if Assigned(FDBDataset) then
  begin
    FDBDataset.Append;
    SaveRecordToDBDataset(self as IJanuaRecord, FDBDataset);
    if FDBDataset.State in [TDatasetState.dsEdit, TDatasetState.dsInsert] then
      FDBDataset.Post;
    if (FDBDataset.RecordCount > 1) and (FDBDataset.FieldByName('jguid').AsString = GUIDString) then
      LoadFromDataset;
  end
  else if DoCheckDataset then
    raise exception.Create(ClassName + '.AppendToDataset(' + Name + ') Dataset is null');
end;

procedure TJanuaRecord.ApplyLocalUpdates;
begin

end;

procedure TJanuaRecord.ApplyRemoteUpdates;
begin

end;

procedure TJanuaRecord.Assign(const aRecord: IJanuaRecord);
var
  I: Integer;
begin
  Guard.CheckNotNull(aRecord, ClassName + ' Errore Assign aRecord');
  SetState(TJanuaRecordState.jrsAssigning);
  Clear;

  if self.FieldCount = 0 then
  begin
    Guard.CheckNotNull(aRecord.Fields, ClassName + '.Create aFields  is nil');
    if aRecord.Fields.Count > 0 then
      for I := 0 to Pred(aRecord.Fields.Count) do
        AddField(aRecord.Fields[I]);

    if Assigned(aRecord.Records) and (aRecord.Records.Count > 0) then
      for I := 0 to Pred(aRecord.Records.Count) do
        AddRecordDef(aRecord.Records[I]);

    if Assigned(aRecord.RecordSets) and (aRecord.RecordSets.Count > 0) then
      for I := 0 to Pred(aRecord.RecordSets.Count) do
        AddRecordSet(aRecord.RecordSets[I]);
  end;

  if FGUID = GUID_NULL then
    FGUID := aRecord.GUID;
  var
  j := aRecord.FieldCount;
  var
  k := FieldCount;
  try
    if CheckFields then
      Guard.CheckTrue(j = k, ClassName + '.Assign(aRecord=' + FName + ').Fields = ' + j.ToString + ' Field: '
        + k.ToString);
    try
      if j = k then
        for I := 0 to Pred(FieldCount) do
          FFields[I].Value := aRecord.Fields[I].Value
      else
        for I := 0 to Pred(FieldCount) do
          if aRecord.FindField(FFields[I].Key) then
            FFields[I].Value := aRecord.FieldByName(FFields[I].Key).Value
    except
      on e: exception do
        raise exception.Create('TJanuaRecord.Assign FFields[' + I.ToString + ']=' + FFields[I].DBField + '.' +
          sLineBreak + e.Message);
    end;
    // A 'Wider' Record can assign a 'smaller' Record (The Wider one is an extension of the Smaller);
    Guard.CheckTrue(aRecord.RecordCount <= RecordCount, 'RecordCount Error');

    try
      for I := 0 to Min(Pred(RecordCount), Pred(aRecord.RecordCount)) do
      begin
        FRecords[I].Assign(aRecord.Records[I]);
        FRecords[I].Post;
      end;
    except
      on e: exception do
        raise exception.Create('TJanuaRecord.Assign FRecords[' + I.ToString + ']=' + FRecords[I].Name + '.' +
          sLineBreak + e.Message);
    end;

    Guard.CheckTrue(aRecord.RecordSetCount = RecordSetCount);
    for I := 0 to Pred(RecordSetCount) do
      try
        FRecordSets[I].Assign(aRecord.RecordSets[I]);
      except
        on e: exception do
          raise exception.Create('TJanuaRecord.Assign FRecordSets[' + I.ToString + ']=' + RecordSets[I].Name +
            '.' + RecordSets[I].CurrentRecord.Name + sLineBreak + e.Message);
      end;
    SetState(TJanuaRecordState.jrsNone);
  except
    on e: exception do
      raise exception.Create(ClassName + '.Assign(aRecord=' + FName + ')' + sLineBreak + e.Message);
  end;
end;

function TJanuaRecord.CheckDataset(const aDataset: IJanuaDBDataset): Boolean;
var
  LEntity: TJanuaEntity;
  LsEntityName: string;
begin
  // cycles all entity definition(s) in a IJanuaDBDataset if a match is fount then it exits
  for LEntity in aDataset.Entities do
    if LEntity = FEntity then
      exit(True);
  // if not an entity match is found it cycles all Entity Namesin a IJanuaDBDataset exits True when found
  for LsEntityName in aDataset.EntityNames do
    if LsEntityName = FEntityName then
      exit(True);

  Result := False;

end;

function TJanuaRecord.CheckInDataset: Boolean;
begin
  Result := False;
  if Assigned(FStoreDataset) then
    FStoreDataset.SearchRecord(GUID)
  else
    // se nel dataset esiste il campo guid giusto ... agisco
    if Assigned(FGUIDField) then
      Result := FDBDataset.Locate(FGUIDField.FieldName, GUID.ToString, [])
    else
      Result := Assigned(FDBDataset) and ExistFieldByName(FDBDataset, PrefixGUIDField) and
        FDBDataset.Locate(PrefixGUIDField, GUID.ToString, [])
end;

function TJanuaRecord.CheckIsStored: Boolean;
begin
  Result := False;
  { TODO : Add CheckIsStored Management for Recordset }
end;

procedure TJanuaRecord.CheckMasterFields;
var
  aMasterField: TMasterField;
begin
  // se il record ha un 'master' per default 'eredito' i dati del master nel Dataset.
  if FHasMasterRecord { and (Length(FMasterFields) > 0) } then
  begin
    for aMasterField in FMasterFields do
      if not aMasterField.Master.IsNull then
        aMasterField.Detail.Value := aMasterField.Master.Value;

    // 2018-0052 Eredito anche MasterGUID.
    FMasterGUID := FMasterRecord.GUID
  end;
end;

procedure TJanuaRecord.Clear(const aRecursively: Boolean = True);
var
  lRecord: IJanuaRecord;
  lRecordSet: IJanuaRecordSet;
begin
  try
    MonitorEnter(self);
    try
      { TODO : Create a RecordPost or Manage Append to Generate a GUID for the Record }
      { if FGUID <> GUID_NULL then }
      begin
        InternalInitialize;
        if aRecursively then
        begin
          // se sono presenti dei sub-records (nested records) allora dobbiamo a cascate eseguire un clear anche su di loro
          for lRecord in FRecords do
            lRecord.Clear;
          // lo stesso vale per gli eventuali 'nested recordsets' .........................................................
          for lRecordSet in FRecordSets do
            lRecordSet.Clear;
        end;
      end;
    finally
      MonitorExit(self);
    end;
  except
    on e: exception do
      RaiseException('Clear', e, self);
  end;
end;

constructor TJanuaRecord.Create(const aName: string; aFields: TJanuaFields; aRecords: IList<IJanuaRecord>;
  aRecordSets: IList<IJanuaRecordSet>; const aEntity: TJanuaEntity);
var
  I: Integer;
begin
  try
    Create(aName, aEntity);
    Guard.CheckNotNull(aFields, ClassName + '.Create aFields  is nil');
    if aFields.Count > 0 then
      for I := 0 to Pred(aFields.Count) do
        AddField(aFields[I]);

    if Assigned(aRecords) and (aRecords.Count > 0) then
      for I := 0 to Pred(aRecords.Count) do
        AddRecordDef(aRecords[I]);

    if Assigned(aRecordSets) and (aRecordSets.Count > 0) then
      for I := 0 to Pred(aRecordSets.Count) do
        AddRecordSet(aRecordSets[I]);
  except
    on e: exception do
      RaiseException('Create', e, self, 'aName := ' + aName);
  end;

end;

class function TJanuaRecord.CreateField(const aFieldType: TJanuaFieldType;
  const aFieldKey, aFieldName: string; aFieldKind: TJanuaFieldKind): IJanuaField;
begin
  case aFieldType of
    jptCurrency:
      Result := TJanuaCurrencyField.Create(aFieldKey, aFieldName, aFieldType,
        not(aFieldKind = jfkCalculated));
    jptExtended:
      Result := TJanuaExtendedField.Create(aFieldKey, aFieldName, aFieldType,
        not(aFieldKind = jfkCalculated));
    jptDate:
      Result := TJanuaDateTimeField.Create(aFieldKey, aFieldName, aFieldType,
        not(aFieldKind = jfkCalculated));
    jptDateTime:
      Result := TJanuaDateTimeField.Create(aFieldKey, aFieldName, aFieldType,
        not(aFieldKind = jfkCalculated));
    jptSmallint:
      Result := TJanuaSmallIntField.Create(aFieldKey, aFieldName, aFieldType,
        not(aFieldKind = jfkCalculated));
    jptInteger:
      Result := TJanuaIntegerField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptLargeInt:
      Result := TJanuaLargeIntField.Create(aFieldKey, aFieldName, aFieldType,
        not(aFieldKind = jfkCalculated));
    jptFilename:
      Result := TJanuaStringField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptString:
      Result := TJanuaStringField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptFloat:
      Result := TJanuaDoubleField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptHtmlText:
      Result := TJanuaStringField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptRichText:
      Result := TJanuaBlobField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptBoolean:
      Result := TJanuaBooleanField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptText:
      Result := TJanuaStringField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jpTBlob:
      Result := TJanuaBlobField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptBytes:
      Result := TJanuaBlobField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptUrl:
      Result := TJanuaStringField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptGUID:
      Result := TJanuaGUIDField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptXml:
      Result := TJanuaXMLField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));
    jptJson:
      Result := TJanuaJsonField.Create(aFieldKey, aFieldName, aFieldType, not(aFieldKind = jfkCalculated));

  else
    Result := nil;
  end;

  if Result <> nil then
    Result.Title := IfThen(aFieldName <> '', aFieldName, aFieldKey);

end;

constructor TJanuaRecord.Create(const aName: string; const aDataset: IJanuaDBDataset);
begin
  if Length(aDataset.Entities) > 0 then
    Create(aName, aDataset.Entities[0])
  else
    Create(aName);
  FDBDataset := aDataset.Dataset;
  MapDataset(aDataset);
end;

constructor TJanuaRecord.Create(const aRecord: IJanuaRecord; aAssign: Boolean = True);
begin
  Guard.CheckNotNull(aRecord, ClassName + '.Create aRecord is nil');
  if aAssign then
  begin
    Create(aRecord.Name, aRecord.Entity);
    Assign(aRecord);
  end
  else
  begin
    Create(aRecord.Name, aRecord.Fields, aRecord.Records, aRecord.RecordSets);
  end;
  if Assigned(FOldRecord) then
    FOldRecord.Assign(self as IJanuaRecord)
end;

constructor TJanuaRecord.Create(const aObject: TJsonObject);
var
  tmp: TJsonObject;
begin
  Guard.CheckNotNull(aObject, ClassName + '.Create TJsonObject is nil');
  Create;
  // poi ne importo la struttura .............................
  Janua.Core.Json.JsonValue(aObject, 'meta', tmp);
  if Assigned(tmp) then
  begin
    SetAsMetaData(tmp);
    Janua.Core.Json.JsonValue(aObject, 'record', tmp);
    SetAsJsonObject(tmp);
  end
  else
  begin
    SetAsMetaData(aObject);
    SetAsJsonObject(aObject);
  end;
  if Assigned(FOldRecord) then
    FOldRecord.Assign(self as IJanuaRecord)
end;

constructor TJanuaRecord.Create(const aName: string; const aEntity: TJanuaEntity = None);
begin
  Create;
  if aEntity <> TJanuaEntity.None then
    FEntity := aEntity;
  FName := aName;
  if Assigned(FOldRecord) then
  begin
    FOldRecord.Name := aName;
    FOldRecord.Entity := aEntity;
  end;
end;

procedure TJanuaRecord.DirectLoadFromDataset(const aDataset: TDataset; const aRelease: Boolean;
  const aRecursively: Boolean);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaRecord.DirectLoadFromDataset TDataset is nil');
  AssignDataset(aDataset);
  LoadFromDataset(aRecursively);
  if Assigned(FOldRecord) then
    FOldRecord.Assign(self as IJanuaRecord);
  if aRelease then
    UnMapDatasets
end;

destructor TJanuaRecord.Destroy;
begin
  try
    FStoreDataset := nil;
    FOldRecord := nil;
    FRecordSets := nil;
    FRecords := nil;
    FKeyFields := nil;
    FCalcFields := nil;
    FTriggerFields := nil;
    inherited;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
end;

procedure TJanuaRecord.DirectLoadFromDataset(const aDatasets: TArray<TDataset>);
begin
  inherited;
  AssignDatasets(aDatasets);
  LoadFromDataset;
end;

procedure TJanuaRecord.DirectLoadFromDataset(const aDataset: IJanuaDBDataset; const aRecursively: Boolean);
begin
  Guard.CheckNotNull(aDataset, 'TJanuaRecord.DirectLoadFromDataset IJanuaDBDataset is nil');
  DirectLoadFromDataset(aDataset.Dataset, False, aRecursively);
  // LoadFromDataset;
end;

procedure TJanuaRecord.DirectSaveToDataset(const aDatasets: TArray<TDataset>; Force: Boolean = False);
begin
  AssignDatasets(aDatasets);
  SaveToDataset(Force, True);
end;

procedure TJanuaRecord.DirectSaveToDataset(const aDataset: TDataset; Force: Boolean);
begin
  AssignDataset(aDataset);
  SaveToDataset(Force, False);
end;

procedure TJanuaRecord.DoCalcFields;
begin
  if FOnChangeActive and Assigned(FNotifyEvent) then
    FNotifyEvent(self);
end;

procedure TJanuaRecord.DoDataChange(const aField: IJanuaField);
begin
  if FOnChangeActive and aField.IsMonitored then
  begin
    if Assigned(FOldRecord) and not(FOldRecord.GUID = GUID) then
      FOldRecord.Assign(self as IJanuaRecord);

    DoCalcFields;
    InternalCalcFields(aField);
    if Assigned(FOnRecordChange) then
      FOnRecordChange(self as IJanuaRecord);
  end;
  if not(FState in [jrsDatabaseLoading, jrsPosting, jrsStoreLoading, jrsModified, jrsAssigning]) then
  begin
    SetState(TJanuaRecordState.jrsModified);
  end;
end;

procedure TJanuaRecord.DoNewRecord;
begin
  InternalDoNewRecord;
  if Assigned(FOnNewRecord) then
    FOnNewRecord(self);
  DoCalcFields;
end;

function TJanuaRecord.EqualsDataset(const aDataset: IJanuaDBDataset): Boolean;
var
  lField: IJanuaField;
begin
  Result := True;
  Assert(Assigned(aDataset), 'TJanuaRecord.EqualsDataset aDataset is nil');
  for lField in FFields do
    if not lField.EqualsDataset(aDataset) then
      exit(False)
end;

function TJanuaRecord.EqualsDataset(const aDataset: TDataset): Boolean;
var
  lField: IJanuaField;
begin
  Result := True;
  Assert(Assigned(aDataset), 'TJanuaRecord.EqualsDataset aDataset is nil');
  for lField in FFields do
    if not lField.EqualsDataset(aDataset) then
      exit(False)
end;

function TJanuaRecord.ContentEquals(const aRecord: IJanuaRecord): Boolean;
var
  I: Integer;
begin
  Result := True;

  if (FRecordSets.Count <> aRecord.RecordSets.Count) then
  begin
    FLastMessage := 'FRecordSets.Count <> aRecord.RecordSets.Count';
    exit(False);
  end;

  if (FRecords.Count <> aRecord.Records.Count) then
  begin
    FLastMessage := 'FRecords.Count <> aRecord.Records.Count';
    exit(False);
  end;

  if (FFields.Count <> aRecord.Fields.Count) then
  begin
    FLastMessage := 'FFields.Count: ' + FFields.Count.ToString + ' <> ' + aRecord.Name + '.Count: ';
    exit(False);
  end;

  if FFields.Count > 0 then
    for I := 0 to Pred(FFields.Count) do
      if not FFields[I].Calculated and not FFields[I].Value.Equals(aRecord.Fields[I].Value) then
      begin
        FLastMessage := 'FField[' + I.ToString + '](' + FFields[I].DBField + ' ) = ' + FFields[I].AsString +
          ' <> ' + aRecord.Fields[I].AsString;
        exit(False);
      end;

  if FRecords.Count > 0 then
    for I := 0 to Pred(FRecords.Count) do
      if not FRecords[I].ContentEquals(aRecord.Records[I]) then
        exit(False);

  if FRecordSets.Count > 0 then
    for I := 0 to Pred(FRecordSets.Count) do
      if not FRecordSets[I].ContentEquals(aRecord.RecordSets[I]) then
        exit(False)
end;

constructor TJanuaRecord.Create;
begin
  inherited;
  FCheckDataset := True;
end;

function TJanuaRecord.FieldByName(const aName: string): IJanuaField;
var
  I: Integer;
begin
  Result := nil;
  Assert(aName <> '', ClassName + '.FieldbyBame aName Not set');
  for I := 0 to Pred(FFields.Count) do
    if FFields[I].Key = aName.ToLower then
    begin
      Result := FFields[I];
      exit
    end;
  raise exception.Create(ClassName + '.FieldByName( ' + aName + ') Field not found');
end;

function TJanuaRecord.FieldCount: Integer;
begin
  Result := FFields.Count
end;

function TJanuaRecord.FillTemplate(const aTemplate: string): string;
var
  lField: IJanuaField;
begin
  Result := aTemplate;
  for lField in FFields do
    Result := StringReplace(Result, '$$' + lField.DBField + '$$', lField.AsString,
      [rfReplaceAll, rfIgnoreCase]);
end;

function TJanuaRecord.FindField(const aName: string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Pred(FFields.Count) do
    if FFields[I].Key = aName.ToLower then
    begin
      Result := True;
      exit
    end;
end;

function TJanuaRecord.GetAsJsonObject: TJsonObject;
var
  I: Integer;
begin
  Post;

  Result := TJsonObject.Create;

  Janua.Core.Json.JsonPair(Result, 'jguid', FGUID.ToString);

  for I := 0 to Pred(FFields.Count) do
    FFields[I].WriteJsonValue(Result);

  for I := 0 to Pred(FRecords.Count) do
    FRecords[I].WriteToJson(Result);

  for I := 0 to Pred(FRecordSets.Count) do
    FRecordSets[I].WriteToJsonObject(Result);
end;

function TJanuaRecord.GetAsJsonWithMeta: string;
var
  LObject: TJsonObject;
begin
  LObject := TJsonObject.Create;
  try
    Janua.Core.Json.JsonPair(LObject, 'meta', self.AsMetadata);
    Janua.Core.Json.JsonPair(LObject, 'record', self.AsJsonObject);
    Result := LObject.ToJson;
  finally
    LObject.Free;
  end;
end;

function TJanuaRecord.GetAsMetaData: TJsonObject;
var
  FArr, RArr, RSArr: TJsonArray;
  I: Integer;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'name', FName);
  FArr := TJsonArray.Create;
  if FFields.Count > 0 then
    for I := 0 to Pred(FFields.Count) do
      FArr.AddElement(FFields[I].AsJsonMetadata);
  Janua.Core.Json.JsonPair(Result, 'fields', FArr);

  RArr := TJsonArray.Create;
  if FRecords.Count > 0 then
    for I := 0 to Pred(FRecords.Count) do
      RArr.AddElement(FRecords[I].AsMetadata);
  Janua.Core.Json.JsonPair(Result, 'records', RArr);

  RSArr := TJsonArray.Create;
  if FRecordSets.Count > 0 then
    for I := 0 to Pred(FRecordSets.Count) do
      RSArr.AddElement(FRecordSets[I].AsMetadata);
  Janua.Core.Json.JsonPair(Result, 'recordsets', RSArr);

end;

function TJanuaRecord.GetCheckDataset: Boolean;
begin
  Result := FCheckDataset;
end;

function TJanuaRecord.GetGUID: TGUID;
begin
  Result := FGUID
end;

function TJanuaRecord.GetGUIDString: string;
begin
  Result := GUIDToString(FGUID);
end;

function TJanuaRecord.GetIsLocalStored: Boolean;
begin
  Result := FIsLocalStored
end;

function TJanuaRecord.GetIsNewRecord: Boolean;
begin
  Result := FIsNewRecord
end;

function TJanuaRecord.GetIsRemoteStored: Boolean;
begin
  if (FKeyFields.Count > 0) then
    Result := FKeyFields[0].DifferDefault
  else
    Result := FIsRemoteStored
end;

function TJanuaRecord.GetItemIndex: Integer;
begin
  Result := FItemIndex
end;

function TJanuaRecord.GetJanuaFields: TJanuaFields;
begin
  Result := FFields
end;

function TJanuaRecord.GetJson: string;
var
  lJson: TJsonObject;
begin
  lJson := GetAsJsonObject;
  Result := lJson.Format(4);
  lJson.Free;
end;

function TJanuaRecord.GetKeyFields: IList<IJanuaField>;
begin
  Result := FKeyFields
end;

function TJanuaRecord.GetLastMessage: string;
begin
  Result := FLastMessage
end;

function TJanuaRecord.GetMasterGUID: TGUID;
begin
  Result := FMasterGUID;
end;

function TJanuaRecord.GetMasterRecord: IJanuaRecord;
begin
  Result := FMasterRecord;
end;

function TJanuaRecord.GetModified: Boolean;
var
  I: Integer;
begin
  Result := FState in [jrsNewRecord, jrsModified];
  // At first it tests if Dataset is Already in New-Modified State
  if not Result and not(FState in [jrsDatabaseLoading, jrsStoreLoading, jrsPosting, jrsAssigning]) then
  begin
    for I := 0 to Pred(FFields.Count) do
      if FFields[I].Modified then
        exit(True);
    for I := 0 to Pred(FRecords.Count) do
      if FRecords[I].Modified then
        exit(True);
    for I := 0 to Pred(FRecordSets.Count) do
      if FRecordSets[I].Modified then
        exit(True)
  end;
end;

function TJanuaRecord.GetName: string;
begin
  Result := FName
end;

function TJanuaRecord.GetNotifyEvent: TNotifyEvent;
begin
  Result := FNotifyEvent
end;

function TJanuaRecord.GetNotStored: Boolean;
begin
  Result := FNotStored
end;

function TJanuaRecord.GetOnNewRecord: TNotifyEvent;
begin
  Result := FOnNewRecord
end;

function TJanuaRecord.GetOnRecordChange: TJanuaRecordChangeEvent;
begin
  Result := FOnRecordChange
end;

function TJanuaRecord.GetPrefix: string;
begin
  Result := FPrefix
end;

function TJanuaRecord.GetRecordCount: Integer;
begin
  Result := 0;
  if Assigned(FRecords) then
    Result := FRecords.Count
end;

function TJanuaRecord.GetRecords: IList<IJanuaRecord>;
begin
  Result := FRecords
end;

function TJanuaRecord.GetRecordSets: IList<IJanuaRecordSet>;
begin
  Result := FRecordSets
end;

function TJanuaRecord.getRemoteClient: IRemoteRecordClient;
begin
  Result := FRemoteClient
end;

function TJanuaRecord.GetState: TJanuaRecordState;
begin
  Result := FState
end;

function TJanuaRecord.GetStoreDataset: IJanuaDBDataset;
begin
  Result := FStoreDataset
end;

function TJanuaRecord.GetUpdatesPending: Boolean;
begin
  Result := FIsNewRecord or not FIsLocalStored or not FIsRemoteStored or RecordModified
end;

procedure TJanuaRecord.InternalDirectSaveToDataset;
var
  aField: IJanuaField;
  tmp: string;
  I: Integer;
begin
  try
    SetState(jrsPosting);
    // 2020-05-16 if FStoreDataset is Assigned and FDBDataset is not stores FStoreDataset.Dataset to be Loaded
    if not Assigned(FDBDataset) and Assigned(FStoreDataset) then
      FDBDataset := FStoreDataset.Dataset;
    Guard.CheckNotNull(FDBDataset, ClassName + '.SaveToDataset FDBDataset is null');
    for aField in Fields do
      aField.WriteToDataset(FDBDataset);
    SetModified(False);
    SetState(jrsNone);
  except
    on e: exception do
    begin
      RaiseException('.LoadRecord  (' + FName + ')', e, self, LogString);
    end;
  end;
end;

procedure TJanuaRecord.InternalDoNewRecord;
begin
  if Assigned(FDBSchemaField) then
    FDBSchemaField.AsInteger := TJanuaApplication.DBSchemaID;
end;

procedure TJanuaRecord.InternalInitialize;
var
  I: IJanuaField;
begin
  try
    for I in FFields do
      if not I.IsNull then
        I.Clear;
    FGUID := System.Types.GUID_NULL;
    FItemIndex := -1;
  except
    on e: exception do
      RaiseException('Initialize  (' + FName + ')', e, self, LogString);
  end;
end;

function TJanuaRecord.IsMappedDataset(const aDataset: TDataset): Boolean;
begin
  Result := Assigned(FMappedDataset) and FMappedDataset.Equals(aDataset);
end;

function TJanuaRecord.InternalActivate: Boolean;
var
  I: IJanuaField;
begin
  Result := Active;
  if not Result then
    try
      Result := inherited;
      InternalInitialize;
    except
      on e: exception do
        RaiseException('InternalActivate', e, self);
    end;
end;

procedure TJanuaRecord.InternalCalcFields(const aField: IJanuaField);
begin
  if not aField.IsMonitored then
    exit;
end;

procedure TJanuaRecord.InternalCreateRecord;
begin
  FEntity := TJanuaEntity.None;
  FOnChangeActive := False;
  FMappedDataset := nil;
  FFields := TCollections.CreateList<IJanuaField>;
  FRecordSets := TCollections.CreateList<IJanuaRecordSet>;
  FRecords := TCollections.CreateList<IJanuaRecord>;
  FCalcFields := TCollections.CreateList<IJanuaField>;
  FTriggerFields := TCollections.CreateList<IJanuaField>;
  FKeyFields := TCollections.CreateList<IJanuaField>;
  // Initialize imposta a Default non solo i valori di GUID ed Index ma anche ogni singolo campo
  InternalInitialize;
  GUID := GUID_NULL;
  FMapToDataset := False;
  FIsNewRecord := False;
  FState := jrsNone;
  FNotStored := False;
  if not FIsOldRecord then
    FOldRecord := TJanuaRecord.CreateAsOldRecord;
end;

procedure TJanuaRecord.LoadFromDataset(const aMainDataset: IJanuaDBDataset;
  const aDatasets: TArray<IJanuaDBDataset>; aMapToDataset: Boolean = True);
begin
  SetupDataset(aMainDataset, aDatasets, aMapToDataset);
  FMapToDataset := aMapToDataset;
  LoadFromDataset;
end;

procedure TJanuaRecord.LoadFromDataset(const aMainDataset: IJanuaDBDataset; aMapToDataset: Boolean;
  const aRecursively: Boolean);
begin
  // StoreDataset := aMainDataset;
  SetupDataset(aMainDataset, [], aMapToDataset);
  LoadFromDataset(aRecursively);
end;

procedure TJanuaRecord.LoadFromDataset(const aRecursively: Boolean);
begin
  try
    LoadRecord(aRecursively);
  except
    on e: exception do
      raise exception.Create(ClassName + '.LoadFromDataset(' + aRecursively.ToString(True) + '): ' +
        e.Message);
  end;
end;

procedure TJanuaRecord.LoadFromLocalStorage;
begin
  // per ora effettua una verifica del Dataset prima di caricare dallo Storage locale .........
  if Assigned(FDBDataset) then
  begin
    ExecProc(
      procedure
      begin
        LoadRecord;
      end, 'LoadFromLocalStorage  ', self);
  end;
end;

procedure TJanuaRecord.LoadFromRemoteStorage;
begin
  raise exception.Create('LoadFromRemoteStorage not implemented');
end;

procedure TJanuaRecord.LoadRecord(const aRecursively: Boolean = True);
var
  aField: TField;
  tmp: string;
  lField: IJanuaField;
  lRecord: IJanuaRecord;
  lRecordSet: IJanuaRecordSet;

  procedure ReadGUIDField;
  begin
    aField := nil;
    if Janua.Core.Functions.GetFieldByName(FDBDataset, 'jguid', aField) then
      try
        if (aField is TGuidField) then
          FGUID := aField.AsGUID
        else if aField.AsString <> '' then
          FGUID := System.SysUtils.StringToGUID(aField.AsString)
      except
        on e: exception do
          RaiseException('ReadGUIDField(' + Name + ') jguid load Dataset: ' + FDBDataset.Name, e, self);
      end
    else if Janua.Core.Functions.GetFieldByName(FDBDataset, PrefixGUIDField, aField) then
      // and aField.AsString <> '' -- do not check this on code. A null GUID from Database should always fail.
      try
        FGUID := System.SysUtils.StringToGUID(aField.AsString)
      except
        on e: exception do
          RaiseException('ReadGUIDField(' + PrefixGUIDField + ') Load Dataset: ' + FDBDataset.Name, e, self);
      end;
  end;

begin
  try
    MonitorEnter(self);
    try
      SetState(jrsDatabaseLoading);
      // 2020-05-16 if FStoreDataset is Assigned and FDBDataset is not stores FStoreDataset.Dataset to be Loaded

      if not Assigned(FDBDataset) and Assigned(FStoreDataset) then
        FDBDataset := FStoreDataset.Dataset;
      if FCheckDataset then
        Guard.CheckNotNull(FDBDataset, ClassName + '.LoadRecord FDBDataset is null');

      if Assigned(FDBDataset) then
        try
          if FDBDataset.Active and (FDBDataset.RecordCount > 0) then
            try
              Clear(aRecursively);

              if Assigned(FStoreDataset) then
                FGUID := FStoreDataset.GUID
              else if Assigned(FGUIDField) then
                FGUID := FGUIDField.AsGUID
              else
                ReadGUIDField;

              if Janua.Core.Functions.GetFieldByName(FDBDataset, 'deleted', aField) then
                IsDeleted := aField.AsBoolean
              else if Janua.Core.Functions.GetFieldByName(FDBDataset, FPrefix + '_deleted', aField) then
                IsDeleted := aField.AsBoolean;

              for lField in FFields do
              begin
{$IFDEF DEBUG} Guard.CheckNotNull(lField, 'FFields is nil'); {$ENDIF}
                lField.ReadFromDataset(FDBDataset);
              end;

              if aRecursively then
              begin
                for lRecord in FRecords do
                begin
{$IFDEF DEBUG} Guard.CheckNotNull(lRecord, 'lRecord is nil'); {$ENDIF}
                  if Assigned(lRecord.DBDataset) then
                    lRecord.LoadRecord;
                end;

                for lRecordSet in FRecordSets do
                begin
                  if Assigned(lRecordSet) and Assigned(lRecordSet.CurrentRecord.DBDataset) then
                    lRecordSet.LoadFromDataset;
                end;
              end;

            except
              on e: exception do
              begin
                if Assigned(FDBDataset.Owner) then
                  tmp := FDBDataset.Owner.Name + '.' + FDBDataset.Name
                else
                  tmp := FDBDataset.Name;

                if Assigned(lField) then
                  tmp := tmp + '[' + lField.DBField + ']';

                Raise exception.Create(tmp + ': ' + e.Message);
              end;
            end;

          if Assigned(FAfterLoadRecord) then
            FAfterLoadRecord;

        finally
          SetState(jrsNone);
        end;
    finally
      MonitorExit(self);
    end;
  except
    on e: exception do
    begin
      Raise exception.Create(ClassName + '.LoadRecord  (' + FName + ')' + sLineBreak + e.Message);
    end;
  end;
end;

procedure TJanuaRecord.MapDataset(const aDataset: TDataset);
var
  aField: IJanuaField;
begin
  if Assigned(aDataset) then
  begin
    for aField in Fields do
      aField.MapDataset(aDataset);

    FGUIDField := aDataset.FindField('jguid');
    if not Assigned(FGUIDField) then
      FGUIDField := aDataset.FindField(PrefixGUIDField);

    FMappedDataset := aDataset;
    // if Mapped Dataset is set then MapToDataset is set to True
    FMapToDataset := True;
  end
  else
  begin
    for aField in Fields do
      aField.MappedField := nil;
    FGUIDField := nil;
    FMappedDataset := nil;
    FMapToDataset := False;
  end;
end;

procedure TJanuaRecord.MapDataset(const aMainDataset: IJanuaDBDataset);
begin
  if not Assigned(FMappedDataset) or not FMappedDataset.Equals(aMainDataset.Dataset) then
    MapDataset(aMainDataset.Dataset);
end;

function TJanuaRecord.NewRecord: IRecSerialization;
begin
  SetDefault;
  Append;
  Result := TJanuaRecSerialization.Create(self);
end;

procedure TJanuaRecord.OnFieldsChange(Sender: TObject);
begin
  DoCalcFields
end;

procedure TJanuaRecord.Post;
begin
  if GUID = GUID_NULL then
    GUID := TGUID.NewGuid;
end;

function TJanuaRecord.PrefixGUIDField: string;
begin
  Result := Prefix + '_jguid';
end;

procedure TJanuaRecord.AssignDataset(const aDataset: IJanuaDBDataset);
begin
  if Assigned(aDataset) then
  begin
    MapDataset(aDataset);
    FDBDataset := aDataset.Dataset;
  end;
end;

procedure TJanuaRecord.AssignDataset(const aDataset: TDataset);
begin
  if Assigned(aDataset) and (not Assigned(FDBDataset) or (FDBDataset <> aDataset)) then
  begin
    FDBDataset := aDataset;
    MapDataset(aDataset);
  end;
end;

procedure TJanuaRecord.AssignDatasets(aDatasets: TArray<TDataset>);
var
  I: Integer;
  k: Integer;
  j: Integer;
begin
  // if at least one Dataset is passed to the procedure it starts to assign datasets to recordsets
  if Length(aDatasets) > 0 then
    try
      FDBDataset := aDatasets[0];
      I := 0;
      k := 0;
      j := Length(aDatasets);
      if (RecordSets.Count > 0) and (j > 1) then
      begin
        while ((k < RecordSets.Count) and (I < j)) do
        begin
          Inc(I);
          if I < j then
            RecordSets[k].CurrentRecord.AssignDatasets([aDatasets[I]]);
          // := ;
          Inc(k);
        end;
      end;
    except
      on e: exception do
        CreateException('AssignDatasets', e.Message, self, LogString);
    end
  else
    raise exception.Create(ClassName + '.AssignDatasets no dataset passed to procedure');
end;

function TJanuaRecord.AssignJanuaDatasets(const aDatasets: TJanuaDBDatasets;
const aRaiseException: Boolean): Boolean;
var
  aDataset: IJanuaDBDataset;
  aRecord: IJanuaRecord;
  aRecordSet: IJanuaRecordSet;

  function DatasetsArrayNames: string;
  var
    j, k, L: Integer;
  begin
    Result := '[';
    for j := 0 to Length(aDatasets) - 1 do
    begin
      L := Length(aDatasets[j].GetEntities) - 1;
      for k := 0 to L do
        Result := Result + TRttiEnumerationType.GetName(aDatasets[j].GetEntities[k]) + ',';
    end;
    Result := Result + ']';
  end;

  function CheckDatasetsEntities: Boolean;
  var
    j: Integer;
  begin
    Result := False;
    // set result to false if array does not contain entity definitions
    for j := 0 to Length(aDatasets) - 1 do
      if Length(aDatasets[j].GetEntities) > 0 then
        exit(True);
  end;

  function GetDatasetNames: string;
  var
    j, k, L: Integer;
  begin
    Result := '[';
    for j := 0 to Length(aDatasets) - 1 do
    begin
      Result := Result + aDatasets[j].Dataset.Name;
      L := Length(aDatasets[j].GetEntities);
      if L > 0 then
      begin
        Result := Result + '(';
        for k := 0 to Pred(L) do
          Result := Result + TRttiEnumerationType.GetName(aDatasets[j].GetEntities[k]) +
            IfThen(k = Pred(L), '', ',');
        Result := Result + ')';
      end;
      if j < Length(aDatasets) - 1 then
        Result := Result + ',';
    end;
    Result := Result + ']';
  end;

begin
  Result := False;
  Assert((Length(aDatasets) > 0), ' No Datasets to process [] empty Array passed');
  Assert(CheckDatasetsEntities, 'No Entity Specified for Datasets: ' + GetDatasetNames);
  try

    Assert(FEntity <> TJanuaEntity.None, ClassName + '.Entity not set, Datasets: ' + GetDatasetNames);
    for aDataset in aDatasets do
      if CheckDataset(aDataset) then
      begin
        SetStoreDataset(aDataset);
        Result := True;
      end;

    Assert(not(aRaiseException) or Result, 'AssignDataset: ' + ClassName + ' CheckDataset not passed Entity: '
      + TRttiEnumerationType.GetName(FEntity) + '.' + FEntityName + ' not in ' + DatasetsArrayNames + sl +
      'Datasets: ' + GetDatasetNames);

    for aRecord in FRecords do
      Result := Result and aRecord.AssignJanuaDatasets(aDatasets, aRaiseException);
    for aRecordSet in RecordSets do
      Result := Result and aRecordSet.AssignDatasets(aDatasets, aRaiseException);
  except
    on e: exception do
      RaiseException('AssignJanuaDatasets', e, self, LogString)
  end;

end;

procedure TJanuaRecord.BeforeDestruction;
var
  aField: IJanuaField;
begin
  inherited;

  try
    for aField in FKeyFields do
      aField.ClearBindings;
    aField := nil;

    for aField in FFields do
      aField.ClearBindings;
    aField := nil;

    FCalcFields.Clear; // .: IList<IJanuaField>;
    FTriggerFields.Clear; // : IList<IJanuaField>;
    FFields.Clear; // : IList<IJanuaField>;
    FRecordSets.Clear; // : IList<IJanuaRecordSet>;
    FRecords.Clear; // : IList<IJanuaRecord>;
    FKeyFields.Clear; // : IList<IJanuaField>;

  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaRecord.BeforePost;
begin
  // here goes the before Post Record.
end;

procedure TJanuaRecord.SaveToDataset(Force, aRecursive: Boolean);
var
  I: Integer;
  lRecord: IJanuaRecord;

  function LocateRecord: Boolean;
  begin
    if Force then
      Result := FStoreDataset.SearchRecord(FGUID)
    else
      Result := FStoreDataset.LocateGUID(FGUID)
  end;

begin
{$IFDEF DEBUG}
  var
  sGUID := GUIDString;
  var
  sName := ClassName;
  var
  sRecord := ToString;
{$ENDIF}
  CheckMasterFields;

  BeforePost;

  if Assigned(FStoreDataset) then
  begin
    if (FGUID <> GUID_NULL) and LocateRecord then
      UpdateToDataset
    else
      AppendToDataset;
  end
  else if Assigned(FDBDataset) then
  begin
    if Force or (FGUIDField.AsGUID = GUID) then
      UpdateToDataset
    else
      AppendToDataset;
  end
  else if FCheckDataset then
    raise exception.Create(ClassName + '.SaveToDataset(' + Name + ') FStoreDataset and FDBDataset are null');

  if aRecursive then
    for lRecord in FRecords do
      lRecord.SaveToDataset(Force, aRecursive);
  {
    for I := 0 to Pred(FRecords.Count) do
    FRecords[I].SaveToDataset(Force, aRecursive);
  }

  if aRecursive then
    for I := 0 to Pred(FRecordSets.Count) do
      RecordSets[I].SaveToDataset;
end;

procedure TJanuaRecord.SaveToDataset(const aDataset: IJanuaDBDataset; Force: Boolean);
begin
  SaveRecordToDataset(self as IJanuaRecord, aDataset);
end;

procedure TJanuaRecord.SaveToDBDataset(const aDataset: TDataset; Force: Boolean);
begin
  SaveRecordToDBDataset(self as IJanuaRecord, aDataset);
end;

procedure TJanuaRecord.SetAfterLoadRecord(const Value: TProc);
begin
  FAfterLoadRecord := Value;
end;

procedure TJanuaRecord.SetAsJsonObject(const aValue: TJsonObject);
var
  I: Integer;
  // tmp: string;
begin
  Guard.CheckNotNull(aValue, 'TJanuaRecord.SetAsJsonObject Null Value Json');
  Janua.Core.Json.JsonValue(aValue, 'jguid', FGUID);

  for I := 0 to Pred(FFields.Count) do
    if not(FFields[I].Calculated) then
      FFields[I].ReadJsonValue(aValue);

  // testo la funzione Read From Json dei singoli Record che compongono il Record Principale.
  if FRecords.Count > 0 then
    for I := 0 to Pred(FRecords.Count) do
      FRecords[I].ReadFromJson(aValue);

  {
    for i := 0 to Pred(FFields.Count) do
    FFields[i].WriteJsonValue(Result);


    for i := 0 to Pred(FRecordSets.Count) do
    FRecordSets[i].WriteToJsonObject(Result);
  }
  if FRecordSets.Count > 0 then
    for I := 0 to Pred(FRecordSets.Count) do
      FRecordSets[I].ReadFromJsonObject(aValue);

end;

procedure TJanuaRecord.SetAsJsonWithMeta(const Value: string);
var
  LObject, Ltmp: TJsonObject;
begin
  LObject := Janua.Core.Json.JsonParse(Value);
  try
    Janua.Core.Json.JsonValue(LObject, 'meta', Ltmp);
    SetAsMetaData(Ltmp);
    Janua.Core.Json.JsonValue(LObject, 'record', Ltmp);
    SetAsJsonObject(Ltmp);
  finally
    LObject.Free;
  end;

end;

procedure TJanuaRecord.SetAsMetaData(const Value: TJsonObject);
var
  LFArr, LRarr, LRSArr: TJsonArray;
  tmp: string;
  aValue: TJsonValue;
  LPair: TJsonPair;
  LObject: TJsonObject;
  aTest: Integer;
begin
  try
    // da implementare;
    Janua.Core.Json.JsonValue(Value, 'name', tmp);
    FName := tmp;

    FRecordSets.Clear;
    FFields.Clear;
    FRecords.Clear;

    Janua.Core.Json.JsonValue(Value, 'fields', LFArr);

    if Assigned(LFArr) then
      for aValue in LFArr do
      begin
        if Assigned(aValue) and (aValue is TJsonObject) then
        begin
          LObject := (aValue as TJsonObject);
          AddField(TJanuaOrmFactory.CreateField(LObject));
        end;
      end;

    Janua.Core.Json.JsonValue(Value, 'records', LRarr);

    if Assigned(LRarr) and (LRarr.Count > 0) then
      for aValue in LRarr do
      begin
        LObject := (aValue as TJsonObject);
        AddRecordDef(TJanuaRecord.Create(LObject));
      end;

    Janua.Core.Json.JsonValue(Value, 'recordsets', LRSArr);

    if Assigned(LRSArr) and (LRSArr.Count > 0) then
      for aValue in LRSArr do
      begin
        LObject := (aValue as TJsonObject);
        AddRecordSet(TJanuaRecordSet.Create(LObject));
      end;

  except
    on e: exception do
      RaiseException('SetAsMetaData', e, self, TJanuaLogger.TailLog);
  end;

end;

procedure TJanuaRecord.SetCheckDataset(const Value: Boolean);
begin
  FCheckDataset := Value;
end;

procedure TJanuaRecord.SetDataset(const aValue: TDataset);
begin
  FDBDataset := aValue;
  if Assigned(aValue) then
    MapDataset(aValue);
end;

procedure TJanuaRecord.SetDefault;
begin
  // Da Implementare ..........................
  // Result := TCollections.CreateList<TValue>;
  GUID := System.Types.GUID_NULL;
end;

procedure TJanuaRecord.SetGUID(aValue: TGUID);
begin
  if FGUID <> aValue then
  begin
    FGUID := aValue;
    BindManager.Notify('GUID');
    BindManager.Notify('GUIDString');
  end;
end;

procedure TJanuaRecord.SetIsLocalStored(aValue: Boolean);
begin

end;

procedure TJanuaRecord.SetIsNewRecord(const Value: Boolean);
begin
  try
    if Value <> FIsNewRecord then
    begin
      if not(FState in [jrsDatabaseLoading, jrsStoreLoading, jrsAssigning, jrsNewRecord]) then
        SetState(jrsNewRecord);
      FIsNewRecord := Value;
      BindManager.Notify('IsNewRecord');
      BindManager.Notify('Modified');
      BindManager.Notify('GUID');
      BindManager.Notify('GUIDString');
    end;
  except
    on e: exception do
      RaiseException('SetIsNewRecord: ' + Value.ToString(True), e, self);
  end;
end;

procedure TJanuaRecord.SetIsRemoteStored(aValue: Boolean);
begin

end;

procedure TJanuaRecord.SetItemIndex(aValue: Integer);
begin
  FItemIndex := aValue;
end;

procedure TJanuaRecord.ReadData(aDataList: TValueList);
begin
  GUID := StringToGUID(aDataList[0].ToString);
end;

procedure TJanuaRecord.ReadFromJson(const aJsonObject: TJsonObject);
begin
  var
  lJsonObject := Janua.Core.Json.JsonObject(FName, aJsonObject);
  if Assigned(lJsonObject) then
    SetAsJsonObject(lJsonObject);
end;

procedure TJanuaRecord.ReadRecord(aDataList: IRecSerialization);
var
  I, t1: Integer;
begin
  Guard.CheckNotNull(aDataList, 'TJanuaRecord.ReadRecord aDataList is null');
  Guard.CheckNotNull(aDataList.FieldValues, 'ReadRecord.WriteRecord aDataList.FieldValues is null');

  // At First I am setting the GUID reading the one stored in the DataList
  GUID := aDataList.GUID;

  // if Record contains at least one Field then It loops the Datalist FieldValues stored.
  // To make it more performant DataList should use TOmniValue to store and retrieve data
  if FFields.Count > 0 then
  begin
    t1 := aDataList.FieldValues.Count;
    Guard.CheckTrue(t1 = FFields.Count, 'TJanuaRecord.ReadRecord Datalist Items = ' +
      aDataList.FieldValues.Count.ToString + ' while fields count = ' + FFields.Count.ToString);
    // in LETTURA DALLA DATALIST NON E' NECESSARIO IMPOSTARE IL VALORE DEI CAMPI CALCOLATI CHE SARA' POI ATTIVATO DA DO
    for I := 0 to Pred(t1) do
      if not(FFields[I].Calculated) then
        FFields[I].Value := aDataList.FieldValues[I];
  end;

  if FRecords.Count > 0 then
  begin
    t1 := aDataList.RecValues.Count;
    Guard.CheckTrue(t1 = FRecords.Count, 'TJanuaRecord.ReadRecord aDataList.RecValues <> Records.Count');
    for I := 0 to Pred(t1) do
    begin
      // risolvere crezione della serializzazione
      if Assigned(aDataList.RecValues[I]) then
        FRecords[I].ReadRecord(aDataList.RecValues[I]);
    end;
  end;

  if FRecordSets.Count > 0 then
  begin
    t1 := aDataList.RecSetList.Count;
    Guard.CheckTrue(t1 = FRecordSets.Count,
      'TJanuaRecord.ReadRecord aDataList.RecSetList <> FRecordSets.Count');
    for I := 0 to Pred(FRecordSets.Count) do
    begin
      // se la DataList (i) non ? ancora Assegnata (andrebbe creata immediatamente) ..............
      if Assigned(aDataList.RecSetList[I]) then
        FRecordSets[I].ReadFromSerialization(aDataList.RecSetList[I]);
      // FRecordSets[i].WriteToSerialization(aDataList.RecSetList[i]);
    end;
  end;
  DoCalcFields
end;

function TJanuaRecord.RecordCount: Integer;
begin
  Result := FRecords.Count
end;

function TJanuaRecord.RecordModified: Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Pred(FFields.Count) do
    if FFields[I].Modified then
      exit(True);
end;

function TJanuaRecord.RecordSetCount(aRecursive: Boolean = False): Integer;
var
  I: Integer;
begin
  Result := FRecordSets.Count;
  if aRecursive then
    for I := 0 to Pred(FRecordSets.Count) do
      Result := Result + FRecordSets[I].CurrentRecord.RecordSetCount(True);
end;

function TJanuaRecord.RecordSetIndex: Integer;
begin
  Result := FRecordSetIndex
end;

function TJanuaRecord.RecordValue: IRecSerialization;
begin
  // Record aValue ha come risultato una Serializzazione di se stesso ..................................................
  Result := TJanuaRecSerialization.Create(self);
  // qui non riesco a ricordare perch? la chiamata a WriteRecord, di norma ? WriteRecord che dovrebbe chiamare ........
  // questa chiamata dovrebbe essere ridondante
  WriteRecord(Result);
end;

procedure TJanuaRecord.RefreshFromDataset(const aRecursively: Boolean = True);
begin
  if Assigned(FStoreDataset) and ((FStoreDataset.GUID = GUID) or FStoreDataset.LocateGUID(GUID)) then
    LoadFromDataset(aRecursively);
end;

function TJanuaRecord.RemoteDelete: Boolean;
begin
  if Assigned(FRemoteClient) and (GUID <> TGUID.Empty) then
    Result := FRemoteClient.Delete(GUID)
end;

function TJanuaRecord.RemoteLoad(const aGUID: TGUID): Boolean;
begin
  if Assigned(FRemoteClient) and (aGUID <> TGUID.Empty) then
    Result := FRemoteClient.Retrieve(aGUID);
end;

function TJanuaRecord.RemoteLoad: Boolean;
begin
  if Assigned(FRemoteClient) and (GUID <> TGUID.Empty) then
    Result := FRemoteClient.Retrieve(GUID);
end;

function TJanuaRecord.RemotePostRecord: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.CreateRecord;
end;

function TJanuaRecord.RemoteUpdate: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.Update;
end;

procedure TJanuaRecord.SetJanuaFields(const aValue: TJanuaFields);
begin
  FFields := aValue;
  DoCalcFields
end;

procedure TJanuaRecord.SetJson(aValue: string);
var
  lJsonObject: TJsonObject;
begin
  lJsonObject := JsonParse(aValue);
  try
    SetAsJsonObject(lJsonObject);
  finally
    lJsonObject.Free;
  end;
end;

procedure TJanuaRecord.SetKeyFields(val: IList<IJanuaField>);
begin
  FKeyFields := val
end;

procedure TJanuaRecord.SetLastMessage(const Value: string);
begin
  FLastMessage := Value
end;

procedure TJanuaRecord.SetMasterGUID(Value: TGUID);
begin
  FMasterGUID := Value;
end;

procedure TJanuaRecord.SetMasterRecord(aValue: IJanuaRecord);
begin
  FMasterRecord := aValue;
  FHasMasterRecord := Assigned(FMasterRecord);
  if FHasMasterRecord then
    FMasterGUID := FMasterRecord.GUID;
end;

procedure TJanuaRecord.SetModified(const aValue: Boolean);
var
  I: IJanuaField;
begin
  if not aValue then
  begin
    for I in FFields do
      I.Modified := False;
    // State becomes normal (not Modified).
    SetState(jrsNone);
  end;
  BindManager.Notify('Modified');
end;

procedure TJanuaRecord.SetName(const aValue: string);
begin
  FName := aValue;
  DoCalcFields
end;

procedure TJanuaRecord.SetNotifyEvent(aValue: TNotifyEvent);
begin
  FNotifyEvent := aValue;
  DoCalcFields
end;

procedure TJanuaRecord.SetNotStored(const Value: Boolean);
begin
  FNotStored := Value;
end;

procedure TJanuaRecord.SetOldRecord(aValue: IJanuaRecord);
begin

end;

procedure TJanuaRecord.SetOldValue(const aValue: IJanuaField);
begin

end;

procedure TJanuaRecord.SetOnNewRecord(const Value: TNotifyEvent);
begin
  FOnNewRecord := Value;
end;

procedure TJanuaRecord.SetOnRecordChange(const Value: TJanuaRecordChangeEvent);
begin
  FOnRecordChange := Value;
end;

procedure TJanuaRecord.SetPrefix(const aValue: string);
begin
  FPrefix := aValue;
end;

procedure TJanuaRecord.SetRecords(const aValue: IList<IJanuaRecord>);
begin
  FRecords := aValue;
  DoCalcFields
end;

procedure TJanuaRecord.SetRecordSets(const aValue: IList<IJanuaRecordSet>);
begin
  FRecordSets := aValue
end;

procedure TJanuaRecord.SetRefField(const aField: IJanuaField);
begin
  // This procedure Controls the reference Fields for Calc-Fields procedures from the ORM Dataset
end;

procedure TJanuaRecord.SetRemoteClient(const Value: IRemoteRecordClient);
begin
  FRemoteClient := Value;
  if Assigned(FRemoteClient) then
    FRemoteClient.JanuaRecord := self as IJanuaRecord;
end;

procedure TJanuaRecord.SetState(const Value: TJanuaRecordState);
begin
  try
    if Value <> FState then
    begin
      FState := Value;
      case FState of
        jrsNone:
          begin
            SetEditing(False);
            SetIsNewRecord(False);
            FOnChangeActive := True;
          end;
        jrsModified:
          begin
            SetEditing(True);
            FOnChangeActive := True;
          end;
        jrsNewRecord:
          begin
            SetIsNewRecord(True);
            FOnChangeActive := True;
          end;
        jrsDeleted:
          ;
        jrsErased:
          ;
        jrsStoreLoading:
          begin
            SetEditing(False);
            SetIsNewRecord(False);
            FOnChangeActive := False;
          end;
        jrsDatabaseLoading:
          begin
            SetEditing(False);
            SetIsNewRecord(False);
            FOnChangeActive := False;
          end;
        jrsPosting:
          begin

          end;
        jrsAssigning:
          begin
            SetEditing(False);
            SetIsNewRecord(False);
            FOnChangeActive := False;
          end;
      end;
      BindManager.Notify('Modified');
    end;
  except
    on e: exception do
      RaiseException('SetState: ', e, self);
  end;

end;

procedure TJanuaRecord.SetStoreDataset(aValue: IJanuaDBDataset);
begin
  if (aValue = nil) and (FStoreDataset <> nil) then
    FDBDataset := nil;
  // Store Dataset ? alla base del sistema di registrazione dati sia locale che remota.
  // a Livello 'locale' i dati potrebbero essere registrati su DB ma anche su semplici Files.
  FStoreDataset := aValue;
  // Imposto i puntatore a DBDataset che ? la base delle procedure Record-Dataset.
  if Assigned(FStoreDataset) then
  begin
    FDBDataset := FStoreDataset.Dataset;
    MapDataset(FStoreDataset);
  end;
end;

procedure TJanuaRecord.SetupDataset(const aMainDataset: IJanuaDBDataset;
const aDatasets: TArray<IJanuaDBDataset>; aMapToDataset: Boolean = True);
var
  bDatasets, LDatasets { Local Copy of Dataset Pointers }
    : TArray<IJanuaDBDataset>;
  I, j: Integer;
begin
  StoreDataset := aMainDataset;
  LDatasets := [];
  // imposto ad un insieme inizialmente vuoto l'elenco di Dataset.
  j := 0;

  if (Length(aDatasets) > 0) and (FRecords.Count > 0) then
  begin
    bDatasets := [];
    // Tecnica efficace in caso di un albero avente pressoche sempre un sotto-livello ..........
    if Length(aDatasets) > FRecords.Count then
      bDatasets := Copy(aDatasets, Pred(FRecordSets.Count), Length(aDatasets) - FRecords.Count);

    for I := Low(aDatasets) to Min(High(aDatasets), Pred(FRecords.Count)) do
    begin
      { TODO : LoadFromDataset funziona solo se i dataset sono in perfetto "ordine" e non gestisce bene i sotto-livelli }
      if I <= Pred(FRecords.Count) then
      begin
        Inc(j, 1 + FRecords[I].Records.Count);
        FRecords[I].SetupDataset(aDatasets[I], bDatasets, aMapToDataset);
        if (FRecords[I].Records.Count > 0) then
          bDatasets := Copy(bDatasets, Pred(FRecords[I].Records.Count), High(bDatasets));
      end;
    end;

    if j < High(aDatasets) then
      LDatasets := Copy(aDatasets, j, High(aDatasets));
  end
  else
  begin
    LDatasets := Copy(aDatasets, 0, MaxInt);
  end;

  if (Length(LDatasets) > 0) and (FRecordSets.Count > 0) then
  begin
    bDatasets := [];
    // Tecnica efficace in caso di un albero avente pressoche sempre un sotto-livello ..........
    if Length(LDatasets) > FRecordSets.Count then
      bDatasets := Copy(LDatasets, Pred(FRecordSets.Count), FRecordSets.Count - Length(LDatasets));

    for I := Low(LDatasets) to High(LDatasets) do
    begin
      { TODO : LoadFromDataset funziona solo se i dataset sono in perfetto "ordine" e non gestisce bene i sotto-livelli }
      if I <= Pred(FRecordSets.Count) then
        FRecordSets[I].CurrentRecord.SetupDataset(LDatasets[I], bDatasets, aMapToDataset);
      // FRecordSets[i].CurrentRecord.StoreDataset := LDatasets[i];
      // FRecordSets[i].LoadFromDataset(LDatasets[i], bDatasets);
    end;
  end;
  // if Dataset mapping is permanently stored in Dataset so is the MapToDataset property.
  FMapToDataset := aMapToDataset;
end;

procedure TJanuaRecord.SetUpdatesPending(aValue: Boolean);
begin

end;

function TJanuaRecord.TryFieldByName(const aName: string; out aField: IJanuaField): Boolean;
var
  I: Integer;
begin
  aField := nil;
  Assert(aName <> '', ClassName + '.FieldbyBame aName Not set');
  Result := False;
  for I := 0 to Pred(FFields.Count) do
    if FFields[I].Key = aName.ToLower then
    begin
      aField := FFields[I];
      Result := True;
      exit
    end;
end;

procedure TJanuaRecord.UndoUpdates;
begin
end;

procedure TJanuaRecord.UnMapDatasets;
var
  aField: IJanuaField;
begin
  for aField in Fields do
    aField.UnMapDatasets;

  if Assigned(FGUIDField) then
    FGUIDField := nil;

  FStoreDataset := nil;
  FDBDataset := nil;

  FMappedDataset := nil;
end;

procedure TJanuaRecord.UpdateToDataset;
begin
  if Assigned(FStoreDataset) then
  begin
    if FMapToDataset then
      SaveRecordToDBDataset(self as IJanuaRecord, FStoreDataset.Dataset)
    else
      FStoreDataset.UpdateRecord(self)
  end
  else if Assigned(FDBDataset) then
    SaveRecordToDBDataset(self as IJanuaRecord, FDBDataset)
  else
    raise exception.Create('TJanuaRecord.UpdateToDataset FDBDataset and FStoreDataset both null ');
end;

procedure TJanuaRecord.WriteData(aDataList: TValueList);
begin
  aDataList[0] := FGUID.ToString;
end;

procedure TJanuaRecord.WriteRecord(aDataList: IRecSerialization);
var
  I, t1: Integer;
begin
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('WriteRecord', 'Start ', self);
{$ENDIF}
{$IFDEF DEBUG}
  // nella serializzazione registro comunque i valori anche dei readonly e dei campi calcolati
  // in quanto la serializzazione ? un valore inteno al dataset stesso e definito dal record medesimo
  Guard.CheckNotNull(aDataList, 'TJanuaRecord.WriteRecord aDataList is null');
  Guard.CheckNotNull(aDataList.FieldValues, 'TJanuaRecord.WriteRecord aDataList.FieldValues is null');
{$ENDIF}
  // Se il Record ha GUID nulla imposta la GUID ad un valore unico. GUID ? un valore a 128 bit.
  if IsEqualGUID(FGUID, System.Types.GUID_NULL) then
    CreateGUID(FGUID);

  // dopo la verifica della GUID la prima cosa che faccio ? scrivere nella serializzzione il dato.
  // la DataList dovrebbe contenere due Dati per la Cached Updates sia il valore attuale che il valore
  // passato dei Record.
  aDataList.GUID := FGUID;

  if FFields.Count > 0 then
  begin
    t1 := aDataList.FieldValues.Count;
    Guard.CheckTrue(t1 = FFields.Count, 'TJanuaRecord.WriteRecord Datalist Items = ' + t1.ToString +
      ' while fields count = ' + FFields.Count.ToString);
    // NOTA IMPORTANTE NELLA DATALIST INTERNA REGISTRO ANCHE I CAMPI IN 'SOLA LETTURA' E I CAMPI CALCOLATI POI RICALCOLO
    for I := 0 to Pred(t1) do
    begin
      aDataList.FieldValues[I] := FFields[I].Value;
      aDataList.OldValues[I] := FFields[I].GetOldValue;
    end;
  end;

  if FRecords.Count > 0 then
    for I := 0 to Pred(FRecords.Count) do
    begin
      // risolvere crezione della serializzazione
      if Assigned(aDataList.RecValues[I]) then
        FRecords[I].WriteRecord(aDataList.RecValues[I]);
    end;

  if FRecordSets.Count > 0 then
    for I := 0 to Pred(FRecordSets.Count) do
    begin
      // se la DataList (i) non ? ancora Assegnata (andrebbe creata immediatamente) ..............
      if (aDataList.RecSetList.Count < Succ(I)) then
        aDataList.RecSetList.Add(TJanuaSetSerialization.New);
      FRecordSets[I].WriteToSerialization(aDataList.RecSetList[I]);
    end;
  // sETS
  FItemIndex := aDataList.ItemIndex;
  DoCalcFields;
{$IFDEF JANUA_TEST}
  TJanuaLogger.LogRecord('WriteRecord', 'End ', self);
{$ENDIF}
end;

procedure TJanuaRecord.WriteToJson(const aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, Name, AsJsonObject)
end;

procedure TJanuaRecord.SetDeleted(val: Boolean);
begin
  FDeleted := val;
  if FindField('deleted') then
    FieldByName('deleted').AsBoolean := True;
end;

procedure TJanuaRecord.SetEditing(const Value: Boolean);
begin
  try
    if FEditing <> Value then
    begin
      FEditing := Value;
      BindManager.Notify('Editing');
      if Value then
        SetState(TJanuaRecordState.jrsModified);
    end;
  except
    on e: exception do
      RaiseException('SetEditing: ', e, self);
  end;
end;

procedure TJanuaRecord.SetEntity(const Value: TJanuaEntity);
begin
  FEntity := Value;
  FEntityName := JanuaEntityNames[Value];
end;

procedure TJanuaRecord.SetEntityName(const Value: string);
var
  LEntity: TJanuaEntity;
begin
  FEntityName := Value;
  if TEnumConvertor<TJanuaEntity>.TryFromString(Value, LEntity) then
    FEntity := LEntity
end;

procedure TJanuaRecord.SetFieldKind(const Value: TJanuaFieldKind);
begin
  FFieldKind := Value;
end;

function TJanuaRecord.GetDataset: TDataset;
begin
  Result := FDBDataset;
end;

function TJanuaRecord.GetDeleted: Boolean;
begin
  Result := FDeleted;
end;

function TJanuaRecord.GetEntity: TJanuaEntity;
begin
  Result := FEntity
end;

function TJanuaRecord.GetEntityName: string;
begin
  Result := FEntityName
end;

function TJanuaRecord.GetGUIDField: TField;
begin
  Result := FGUIDField;
end;

procedure TJanuaRecord.SetIsDeleted(const aValue: Boolean);
begin
  FIsDeleted := aValue;
end;

function TJanuaRecord.GetIsDeleted: Boolean;
begin
  Result := FIsDeleted
end;

function TJanuaRecord.GetMapToDataset: Boolean;
begin
  Result := FMapToDataset;
end;

procedure TJanuaRecord.SetGUIDField(const Value: TField);
begin
  FGUIDField := Value;
end;

procedure TJanuaRecord.SetMapToDataset(const Value: Boolean);
begin
  FMapToDataset := Value;
end;

{ TJanuaRecSerialization }

procedure TJanuaRecSerialization.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaRecSerialization.BeforeDestruction;
begin
  inherited;
  try
    Clear;
    ClearBindings;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaRecSerialization.Clear;
begin
  FValues.Clear;
  FRecords.Clear;
  FRecSets.Clear;
  FGUID := System.Types.GUID_NULL;
end;

constructor TJanuaRecSerialization.Create(const aRecord: IJanuaRecord; aProc: TGUIDUpdateProc);
var
  I: Integer;
begin
  { TRecList = IList<IRecSerialization>;
    TSetList = IList<ISetSerialization>; }
  inherited Create;
  Guard.CheckNotNull(aRecord, 'Errore aRecord non assegnato, TJanuaRecSerialization.Create');
  FRecords := TCollections.CreateList<IRecSerialization>;
  FRecSets := TCollections.CreateList<ISetSerialization>;
  FValues := TCollections.CreateList<TValue>;
  FOldValues := TCollections.CreateList<TValue>;
  FGUID := aRecord.GUID;
  FoldGUID := aRecord.GUID;

  for I := 0 to Pred(aRecord.FieldCount) do
  begin
    FValues.Add(aRecord.Fields[I].Value);
    FOldValues.Add(aRecord.Fields[I].GetOldValue);
  end;

  if aRecord.Records.Count > 0 then
    for I := 0 to Pred(aRecord.Records.Count) do
      FRecords.Add(TJanuaRecSerialization.Create(aRecord.Records[I]));

  if Assigned(aProc) then
    aProc(FGUID, FoldGUID);
end;

destructor TJanuaRecSerialization.Destroy;
begin
  try
    FValues := nil;
    FOldValues := nil;
    FRecords := nil;
    FRecSets := nil;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
  inherited;
end;

function TJanuaRecSerialization.GetFieldValues: TValueList;
begin
  Result := FValues
end;

function TJanuaRecSerialization.GetGUID: TGUID;
begin
  Result := FGUID
end;

function TJanuaRecSerialization.GetGUIDUpdateProc: TGUIDUpdateProc;
begin
  Result := FGUIDUpdateProc
end;

function TJanuaRecSerialization.GetIndex: Integer;
begin
  Result := FIndex
end;

function TJanuaRecSerialization.GetIsModified: Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Pred(FValues.Count) do
  begin
    if FValues[I].Equals(FOldValues[I]) then
      exit(True)
  end;

end;

function TJanuaRecSerialization.GetOldValues: TValueList;
begin
  Result := FOldValues
end;

function TJanuaRecSerialization.GetRecSetList: TSetList;
begin
  Result := FRecSets
end;

function TJanuaRecSerialization.GetRecValues: TRecList;
begin
  Result := FRecords
end;

procedure TJanuaRecSerialization.SetFieldValues(const aValue: TValueList);
begin
  FValues := aValue
end;

procedure TJanuaRecSerialization.SetGUID(const aValue: TGUID);
begin
  FGUID := aValue
end;

procedure TJanuaRecSerialization.SetGUIDUpdateProc(const Value: TGUIDUpdateProc);
begin
  FGUIDUpdateProc := Value;
end;

procedure TJanuaRecSerialization.SetIndex(const aValue: Integer);
begin
  FIndex := aValue
end;

procedure TJanuaRecSerialization.SetOldValues(const aValue: TValueList);
begin
  FOldValues := aValue
end;

procedure TJanuaRecSerialization.SetRecSetList(const aValue: TSetList);
begin
  FRecSets := aValue
end;

procedure TJanuaRecSerialization.SetRecValues(const aValue: TRecList);
begin
  FRecords := aValue
end;

{ TJanuaSetSerialization }

procedure TJanuaSetSerialization.AddRecord(aSerialization: IRecSerialization);
begin
  // Aggiunge un record alla serializzazione ...............................
  FRecords.Add(aSerialization);
  FItemIndex := Pred(FRecords.Count);
  FRecords[FItemIndex].ItemIndex := FItemIndex;
  FGUIDDict[aSerialization.GUID] := FItemIndex; // .AddOrSetValue(aSerialization.GUID, FItemIndex);
end;

procedure TJanuaSetSerialization.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaSetSerialization.BeforeDestruction;
begin
  inherited;
  try
    FRecords.Clear;
    FGUIDDict.Clear;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaSetSerialization.Clear;
var
  I: Integer;
begin
  FItemIndex := -1;
  for I := 0 to Pred(FRecords.Count) do
    FRecords[I].Clear;
  FRecords.Clear;
  FGUIDDict.Clear;
end;

constructor TJanuaSetSerialization.Create;
begin
  inherited Create;
  FGUIDDict := Spring.Collections.TCollections.CreateDictionary<TGUID, Integer>;
  FRecords := TCollections.CreateList<IRecSerialization>;
  FItemIndex := -1;
  // FDataRecords: IList<IRecSerialization>;
end;

function TJanuaSetSerialization.CurrentRecord: IRecSerialization;
begin
  Result := nil;
  if (FRecords.Count > 0) and (FItemIndex > -1) then
    Result := FRecords[FItemIndex]

end;

procedure TJanuaSetSerialization.DelCurrenRecord;
var
  I, j, k: Integer;
begin
  if (FRecords.Count > 0) and (FItemIndex > -1) then
  begin
    j := FItemIndex;
    FRecords.Delete(FItemIndex);
    k := Pred(FRecords.Count);
    FGUIDDict.Clear;
    // se ci sono dei record li reindicizzo
    if k > -1 then
      for I := 0 to k do
      begin
        FRecords[I].ItemIndex := I;
        FGUIDDict.Add(FRecords[I].GUID, I);
      end;
    // se ho cancellato l'ultimo record allora ItemIndex = .1
    FItemIndex := Min(j, k);
  end;

end;

destructor TJanuaSetSerialization.Destroy;
begin
  try
    FRecords := nil;
    FGUIDDict := nil;
    inherited;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
end;

function TJanuaSetSerialization.GetGUIDDict: TGUIDDict;
begin
  Result := FGUIDDict
end;

function TJanuaSetSerialization.GetItemIndex: Integer;
begin
  Result := FItemIndex
end;

function TJanuaSetSerialization.GetRecList: TRecList;
begin
  Result := FRecords
end;

function TJanuaSetSerialization.LocateGUID(const aGUID: TGUID): Boolean;
begin
  Result := GUIDDict.ContainsKey(aGUID) and GUIDDict.TryGetValue(aGUID, FItemIndex);
end;

class function TJanuaSetSerialization.New: ISetSerialization;
begin
  Result := TJanuaSetSerialization.Create as ISetSerialization
end;

function TJanuaSetSerialization.RecordCount: Integer;
begin
  Result := FRecords.Count
end;

procedure TJanuaSetSerialization.SetItemIndex(const aValue: Integer);
begin
  if (FRecords.Count > 0) and (aValue < FRecords.Count) then
    FItemIndex := aValue
end;

procedure TJanuaSetSerialization.SetRecList(const aValue: TRecList);
begin
  FRecords := aValue;
end;

{ TJanuaDBDataset }

procedure TJanuaDBDataset.AddEntity(const aEntity: string);
var
  LEntity: TJanuaEntity;

  procedure AddEntityName(const checkEntity: Boolean);
  begin
    if not checkEntity or not IsEntityInSet(LEntity, FEntities) then
    begin
      SetLength(FEntityNames, Length(FEntityNames));
      FEntityNames[Pred(Length(FEntityNames))] := aEntity;
    end;
  end;

begin
  try
    Guard.CheckTrue(Pos('.', aEntity) > 0, 'Entity(' + aEntity + ') name must be in format <schema>.<name>');
    // if entity string can be converted to entity enum stores and checks enum and strings
    if TEnumConvertor<TJanuaEntity>.TryFromStringArray(aEntity, JanuaEntityNames, LEntity) then
    begin
      AddEntity(LEntity);
      AddEntityName(True);
    end
    else
      // else it just stores a new string in the array
      AddEntityName(False);
  except
    on e: exception do
      RaiseException('AddEntity', e, self, LogString);
  end;
end;

procedure TJanuaDBDataset.AddEntity(const aEntity: TJanuaEntity);
begin
  if not IsEntityInSet(aEntity, FEntities) then
  begin
    SetLength(FEntities, Succ(Length(FEntities)));
    FEntities[Pred(Length(FEntities))] := aEntity;
  end;

end;

procedure TJanuaDBDataset.AddEntityNames(const AEntities: TJanuaEntityNames);
var
  I: Smallint;
begin
  for I := 0 to Pred(Length(AEntities)) do
    AddEntity(AEntities[I]);
end;

function TJanuaDBDataset.AddField(const aName: string; const aFieldType: TJanuaFieldType;
const aSize, aPrecision: Smallint): TField;
var
  iBeforeCount, iAfterCount: Integer;
begin
  Result := nil;
  iBeforeCount := FInternalDataset.FieldCount;
  try
    case aFieldType of
      TJanuaFieldType.jptVariant:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftVariant, 0, True);
      TJanuaFieldType.jptXml:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWideMemo, IfThen(aSize = 0, 2048, aSize), True);
      TJanuaFieldType.jptUrl:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWideString, 0, True);
      TJanuaFieldType.jptWord:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWord, 0, True);
      TJanuaFieldType.jptByte:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftBytes, 0, True);
      TJanuaFieldType.jptBytes:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftBytes, 0, True);
      TJanuaFieldType.jptSmallint:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftSmallint, 0, True);
      TJanuaFieldType.jptAutoInc:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftAutoInc, 0, True);
      TJanuaFieldType.jptCardinal:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftInteger, 0, True);
      TJanuaFieldType.jptCurrency:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftCurrency, 0, True);
      TJanuaFieldType.jptExtended:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftExtended, 0, True);
      TJanuaFieldType.jptDate:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftDate, 0, True);
      TJanuaFieldType.jptDateTime:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftDateTime, 0, True);
      TJanuaFieldType.jptInteger:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftInteger, 0, True);
      TJanuaFieldType.jptLargeInt:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftLargeint, 0, True);
      TJanuaFieldType.jptFilename:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWideString, IfThen(aSize = 0, 1024, aSize), True);
      TJanuaFieldType.jptString:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWideString, IfThen(aSize = 0, 2048, aSize), True);
      TJanuaFieldType.jptFloat:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftFloat, 0, True);
      TJanuaFieldType.jptHtmlText:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWideMemo, IfThen(aSize = 0, 2048, aSize), True);
      TJanuaFieldType.jptRichText:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.fTBlob, IfThen(aSize = 0, 2048, aSize), True);
      TJanuaFieldType.jpTBlob:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.fTBlob, IfThen(aSize = 0, 2048, aSize), True);
      TJanuaFieldType.jptBoolean:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftBoolean, 0, True);
      TJanuaFieldType.jptGUID:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftGuid, 38, True);
      TJanuaFieldType.jptShortint:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftShortint, 0, True);
      TJanuaFieldType.jptSingle:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftSingle, 0, True);
      TJanuaFieldType.jptText:
        FInternalDataset.FieldDefs.Add(aName, TFieldType.ftWideMemo, IfThen(aSize = 0, 2048, aSize), True);
    end;
    iAfterCount := FInternalDataset.FieldCount;
    if iBeforeCount < iAfterCount then
      Result := FInternalDataset.Fields[Pred(iAfterCount)];
  except
    on e: exception do
      RaiseException('AddField', e, self);

    // Result := TJanuaOrmFactory.CreateField(aName, aFieldType);
  end;
end;

function TJanuaDBDataset.AddParam(aParam: TParam): IJanuaField;
begin
  Result := TJanuaOrmFactory.CreateField(aParam);
end;

function TJanuaDBDataset.AddParam(const aName: string; aType: TJanuaFieldType): IJanuaField;
begin
  Result := AddParam(TJanuaOrmFactory.CreateField(aName, aType));
end;

procedure TJanuaDBDataset.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaDBDataset.Append;
begin
  if FAppendFirst then
  begin
    FInternalDataset.First;
    FInternalDataset.Insert;
  end
  else
    FInternalDataset.Append;
end;

procedure TJanuaDBDataset.ApplyFilter;

  function CheckFilter: Boolean;
  begin
    Result := False;
    try
      GenerateFilter;
      InternalDataset.Filter := FSearchFilter;
      Result := FSearchFilter <> '';
    except
      on e: exception do
        RaiseException('ApplyFilter.CheckFilter', e, self);
    end;
  end;

begin
  // Fileter Params Activatate should be  managed outside
  // ApplyFilter.Activate;
  FFilterParams.Activate;
  if FFilterParams.Active and CheckFilter then
  begin
{$IFDEF DEBUG} Guard.CheckNotNull(FInternalDataset, 'FInternalDataset'); {$ENDIF}
    FInternalDataset.Filtered := True
  end
  else
  begin
    FInternalDataset.Filtered := False;
  end;
end;

procedure TJanuaDBDataset.BeforeDestruction;
begin
  inherited;
  try
    if Assigned(FParams) then
    begin
      FParams.ClearParams;
    end;

    if Assigned(FDetailDatasets) then
      FDetailDatasets.Clear;

    if Assigned(FOrderByFields) then
    begin
      FOrderByFields.ClearBindings;
      FOrderByFields.ClearFields;
    end;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaDBDataset.BeginScroll(const DisableDataSource: Boolean = False);
begin
  FScroll := True;
  DataSource.Enabled := not DisableDataSource;
end;

function TJanuaDBDataset.Bof: Boolean;
begin
  Result := InternalDataset.Bof
end;

procedure TJanuaDBDataset.ClearDataset;
begin
  raise exception.Create('EJanuaDBDataset.ClearDataset not implemented');
end;

procedure TJanuaDBDataset.Close;
begin
  GetDataset.Close;
end;

constructor TJanuaDBDataset.CreateWithEntities(const AEntities: TJanuaEntities);
begin
  try
{$IFDEF DEBUG}
    WriteLocalLog('Create(AEntities)', 'Create');
{$ENDIF DEBUG}
    Create;
{$IFDEF DEBUG}
    WriteLocalLog('Create(AEntities)', 'AddEntities(AEntities)');
{$ENDIF DEBUG}
    AddEntities(AEntities);
  except
    on e: exception do
      RaiseException('Create(AEntities)', e, self, LogString);
  end;
{$IFDEF DEBUG}
  ClearLocalLog('Create(AEntities)');
{$ENDIF DEBUG}
end;

function TJanuaDBDataset.AddParam(aParam: IJanuaField): IJanuaField;
begin
  Result := FParams.AddParam(aParam)
end;

constructor TJanuaDBDataset.Create;
begin
  inherited;
  // FGridColumns
  if not Assigned(FGridColumns) then
    FGridColumns := TCollections.CreateList<TJanuaGridColumnField>;

  if not Assigned(FDetailDatasets) then
    FDetailDatasets := TCollections.CreateList<IJanuaDBDataset>;
  // IList<IJanuaDBDataset>;
  if not Assigned(FParams) then
    FParams := TJanuaParams.Create;

  if not Assigned(FFilterParams) then
    FFilterParams := TJanuaParams.Create;

  FScroll := False;
  // By default Append uses standard convention to append a Record at 'last' Dataset Position.
  FAppendFirst := False;

  if not Assigned(FInternalDataSource) then
    FInternalDataSource := TDataSource.Create(nil);
end;

procedure TJanuaDBDataset.CreateFields(const aRecord: IJanuaRecord);
var
  aField: IJanuaField;
begin
  try
    FInternalDataset.Close;
    FInternalDataset.FieldDefs.Clear;
    FInternalDataset.FieldDefs.Add('jguid', TFieldType.ftGuid, 0, True);
    if aRecord.FieldCount > 0 then
      for aField in aRecord.Fields do
        AddField(aField);
    FInternalDataset.Open;
    FGUIDField := FInternalDataset.Fields[0];
    FGUIDPrefix := '';
  except
    on e: exception do
      RaiseException('CreateFields', e, self);
  end;
end;

procedure TJanuaDBDataset.DatasetAfterOpen(Dataset: TDataset);
begin
  {
    if not FScroll and Assigned(FOnScroll) then
    FOnScroll(self as IJanuaDBCustomDataset);
  }
  try
    if Assigned(InternalDataset) then
    begin
      DataSetAfterScroll(InternalDataset);
      FScroll := False;
    end;
  except
    on e: exception do
      RaiseException('DatasetAfterOpen', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetAfterScroll(Dataset: TDataset);
begin
  try
    if not FScroll and Assigned(FDBAfterScroll) then
      FDBAfterScroll(Dataset);
    if not FScroll and Assigned(FOnScroll) then
      FOnScroll(self as IJanuaDBCustomDataset);
    if not FScroll and Assigned(FAfterScroll) then
      FAfterScroll(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetAfterScroll', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetBeforeCancel(Dataset: TDataset);
begin
  try
    if Assigned(FDBBeforeCancel) then
      FDBBeforeCancel(Dataset);

    if Assigned(FBeforeCancel) then
      FBeforeCancel(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetBeforeCancel', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetBeforeDelete(Dataset: TDataset);
begin
  try
    if Assigned(FDBBeforeDelete) then
      FDBBeforeDelete(Dataset);

    if Assigned(FBeforeDelete) then
      FBeforeDelete(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetBeforeDelete', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetBeforeInsert(Dataset: TDataset);
begin
  try
    if Assigned(FDBBeforeInsert) then
      FDBBeforeInsert(Dataset);

    if Assigned(FBeforeInsert) then
      FBeforeInsert(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetBeforeInsert', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetBeforePost(Dataset: TDataset);
begin
  try
    if Assigned(FDBBeforePost) then
      FDBBeforePost(Dataset);

    if Assigned(FBeforePost) then
      FBeforePost(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetBeforePost', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetOnCalcFields(Dataset: TDataset);
begin
  try
    if Assigned(FDBOnCalcFields) then
      FDBOnCalcFields(Dataset);

    if Assigned(FOnCalcFields) then
      FOnCalcFields(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetOnCalcFields', e, self);
  end;
end;

procedure TJanuaDBDataset.DataSetOnNewRecord(Dataset: TDataset);
begin
  try
    if Assigned(FDBOnNewRecord) then
      FDBOnNewRecord(Dataset);

    if Assigned(FOnNewRecord) then
      FOnNewRecord(self as IJanuaDBDataset);
  except
    on e: exception do
      RaiseException('DataSetOnNewRecord', e, self);
  end;
end;

procedure TJanuaDBDataset.DefaultParams;
var
  LPair: Spring.Collections.TPair<string, IJanuaField>;
begin
  try
    if FParams.ParamCount > 0 then
      for LPair in FParams.Items do
        if LPair.Value.DBField.ToLower = 'db_schema_id' then
          LPair.Value.AsInteger := TJanuaApplication.DBSchemaID
        else
          LPair.Value.Default;
  except
    on e: exception do
      RaiseException('DefaultParams', e, self);
  end;
end;

procedure TJanuaDBDataset.DeleteCurrentRecord;
var
  lField: TField;
begin
  if JMessageDlg('Do you want to delete this record?') then
  begin

    lField := Dataset.FindField('deleted');
    if not Assigned(lField) then
      lField := Dataset.FindField(DeletedFieldName);

    if Assigned(lField) then
    begin
      Dataset.Edit;
      lField.Value := True;
      Dataset.Post;
      ApplyFilter;
    end;
  end;
end;

function TJanuaDBDataset.DeletedFieldName: string;
begin
  Result := FGUIDPrefix.ToLower + '_deleted';
end;

function TJanuaDBDataset.DeleteFromDataset(const aGUID: TGUID): Boolean;
begin
  Result := False;
  // initialization to false
  try
    Result := SearchRecord(aGUID);
    if Result then
      FInternalDataset.Delete;
  except
    on e: exception do
      RaiseException('DeleteFromDataset', e, self);
  end;
end;

function TJanuaDBDataset.DeleteFromDataset(const aRecord: IJanuaRecord): Boolean;
begin
  Result := DeleteFromDataset(aRecord.GUID);
end;

procedure TJanuaDBDataset.DeSerialize(const aFormat, aPayload: string);
begin
  if Assigned(FDeSerializeFunc) then
    FDeSerializeFunc(aFormat, aPayload);
end;

destructor TJanuaDBDataset.Destroy;
begin
  try
    if Assigned(FInternalDataSource) then
      FInternalDataSource.Free;

    FParams := nil;
    FDetailDatasets := nil;
    FOnInternalExec := nil; // TNotifyEvent;
    FResult := nil;
    FOnScroll := nil;
    FBeforeOpenProc := nil;
    FOrderByFields := nil;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
end;

procedure TJanuaDBDataset.Edit;
begin
  FInternalDataset.Edit
end;

procedure TJanuaDBDataset.EndScroll;
begin
  if FScroll then
  begin
    if FInternalDataset.State in [dsEdit, dsInsert] then
    begin
      FInternalDataSource.Enabled := False;
      FInternalDataset.Post;
    end;
    FScroll := False;
    FInternalDataSource.Enabled := True;
    if Assigned(FOnScroll) then
      FOnScroll(self as IJanuaDBCustomDataset);
  end;
end;

function TJanuaDBDataset.Eof: Boolean;
begin
  Result := InternalDataset.Eof
end;

function TJanuaDBDataset.FieldByName(const FieldName: string): TField;
begin
  Assert(FieldName <> '', ClassName + '.FieldByName FieldName Not set');
  Result := FindField(FieldName);
  if not Assigned(Result) then
    raise exception.Create(ClassName + 'Field not Found ' + InternalDataset.Name + '.' + FieldName);
end;

function TJanuaDBDataset.FilterByName(const aName: string): IJanuaField;
begin

end;

function TJanuaDBDataset.FindField(const FieldName: string): TField;
begin
  Result := InternalDataset.FindField(FieldName);
end;

function TJanuaDBDataset.FindFilter(const aFilterName: string; out aFilter: IJanuaField): Boolean;
var
  LPair: Spring.Collections.TPair<string, IJanuaField>;
begin
  Result := False;
  // Param not found.
  if FFilterParams.ParamCount > 0 then
    for LPair in FParams.Items do
      if LPair.Value.DBField.ToLower = aFilterName.ToLower then
      begin
        aFilter := LPair.Value;
        exit(True)
      end;

end;

function TJanuaDBDataset.FindParam(const aParamName: string; out aParam: IJanuaField): Boolean;
var
  LPair: TPair<string, IJanuaField>;
begin
  Result := FParams.FindParam(aParamName, aParam);
end;

procedure TJanuaDBDataset.First;
begin
  if (InternalDataset.RecordCount > 0) then
    InternalDataset.First
end;

procedure TJanuaDBDataset.GenerateFilter;
begin
  if (FFilterParams.ParamCount > 0) and FFilterParams.Active then
    FSearchFilter := FFilterParams.FilterText;
end;

function TJanuaDBDataset.GetActive: Boolean;
begin
  Result := FInternalDataset.Active
end;

function TJanuaDBDataset.GetAfterOpen: TJanuaDBDataSetNotifyEvent;
begin
  Result := FAfterOpen
end;

function TJanuaDBDataset.GetAfterScroll: TJanuaDBDataSetNotifyEvent;
begin
  Result := FAfterScroll;
end;

function TJanuaDBDataset.GetBeforeCancel: TJanuaDBDataSetNotifyEvent;
begin
  Result := FBeforeCancel;
end;

function TJanuaDBDataset.GetBeforeDelete: TJanuaDBDataSetNotifyEvent;
begin
  Result := FBeforeDelete;
end;

function TJanuaDBDataset.GetBeforeInsert: TJanuaDBDataSetNotifyEvent;
begin
  Result := FBeforeInsert;
end;

function TJanuaDBDataset.GetBeforeOpenProc: Boolean;
begin
  FBeforeOpenProc := nil;
  Result := False;
end;

function TJanuaDBDataset.GetBeforePost: TJanuaDBDataSetNotifyEvent;
begin
  Result := FBeforePost;
end;

function TJanuaDBDataset.GetDataset: TDataset;
begin
  Result := FInternalDataset
end;

function TJanuaDBDataset.GetDatasetCount: Integer;
begin
  Result := FDetailDatasets.Count
end;

function TJanuaDBDataset.GetDatasetURL: string;
begin
  Result := FDatasetURL;
end;

function TJanuaDBDataset.GetDataSource: TDataSource;
begin
  Result := FInternalDataSource
end;

function TJanuaDBDataset.GetDetailDatasets: IList<IJanuaDBDataset>;
begin
  Result := FDetailDatasets
end;

function TJanuaDBDataset.GetEntities: TJanuaEntities;
begin
  Result := FEntities
end;

function TJanuaDBDataset.GetEntityNames: TJanuaEntityNames;
begin
  Result := FEntityNames;
end;

function TJanuaDBDataset.GetFieldByName(const FieldName: string; out aField: TField): Boolean;
begin
  aField := nil;
  Assert(FieldName <> '', ClassName + 'GetFieldByName.FieldByName Not set');
  aField := FInternalDataset.FindField(FieldName);
  Result := Assigned(aField);
end;

function TJanuaDBDataset.GetFieldCount: Integer;
begin
  Result := FInternalDataset.FieldCount;
end;

function TJanuaDBDataset.GetFieldDefs: TFieldDefs;
begin
  Result := FInternalDataset.FieldDefs
end;

function TJanuaDBDataset.GetFiltered: Boolean;
begin
  Result := FInternalDataset.Filtered
end;

function TJanuaDBDataset.getFilterParams: IJanuaParams;
begin
  Result := FFilterParams;
end;

function TJanuaDBDataset.getGUIDPrefix: string;
begin
  Result := FGUIDPrefix
end;

function TJanuaDBDataset.GetGUIDString: string;
begin
  if Assigned(FGUIDField) then
    Result := FGUIDField.AsString;
end;

function TJanuaDBDataset.GetJsonMetadata: TJsonObject;
var
  lArray: TJsonArray;
  lField: TField;
  LObject: TJsonObject;
begin
  Result := TJsonObject.Create(TJsonPair.Create('name', Dataset.Name));
  if FInternalDataset.FieldCount > 0 then
  begin
    lArray := TJsonArray.Create;
    for lField in FInternalDataset.Fields do
    begin
      LObject := TJsonObject.Create(TJsonPair.Create('name', lField.FieldName));

    end;
{$IFNDEF FPC} Result.AddPair('Fields', lArray); {$ENDIF FPC}
  end;
end;

function TJanuaDBDataset.getLimit: Integer;
begin
  Result := FLimit
end;

function TJanuaDBDataset.GetName: string;
begin
  Result := FInternalDataset.Name
end;

function TJanuaDBDataset.GetOnCalcFields: TJanuaDBDataSetNotifyEvent;
begin
  Result := FOnCalcFields;
end;

function TJanuaDBDataset.GetOnNewRecord: TJanuaDBDataSetNotifyEvent;
begin
  Result := FOnNewRecord;
end;

function TJanuaDBDataset.GetOnScroll: TJanuaDatasetEvent;
begin
  Result := FOnScroll
end;

function TJanuaDBDataset.GetPage: Integer;
begin
  Result := FPage
end;

function TJanuaDBDataset.getParams: IJanuaParams;
begin
  Result := FParams
end;

function TJanuaDBDataset.getRemoteClient: IRemoteDatasetClient;
begin
  Result := FRemoteClient
end;

function TJanuaDBDataset.GetRemoteFormat: TRestFormat;
begin
  Result := FRemoteFormat
end;

function TJanuaDBDataset.GetResult: IJanuaField;
begin
  Result := FResult
end;

function TJanuaDBDataset.GetResultType: TJanuaFieldType;
begin
  Result := FResultType
end;

function TJanuaDBDataset.GetSerializeFormat: TRestFormat;
begin
  Result := FSerializeFormat;
end;

function TJanuaDBDataset.GetState: TDatasetState;
begin
  Result := FInternalDataset.State
end;

function TJanuaDBDataset.GUIDFieldName: string;
begin
  Result := IfThen(FGUIDPrefix = '', 'jguid', FGUIDPrefix.ToLower + '_jguid');
end;

function TJanuaDBDataset.HasDeletedField: Boolean;
begin
  Result := Assigned(FDeletedField);
end;

function TJanuaDBDataset.HasGUIDField: Boolean;
begin
  Result := Assigned(FGUIDField);
end;

function TJanuaDBDataset.InsertRecord(const aRecord: IJanuaRecord): Boolean;
begin
  if not(FInternalDataset.State in [TDatasetState.dsInsert, TDatasetState.dsEdit]) then
    FInternalDataset.Insert;
  SaveRecordToDataset(aRecord, self as IJanuaDBDataset);
  if FInternalDataset.State in [TDatasetState.dsEdit, TDatasetState.dsInsert] then
    FInternalDataset.Post;
  Result := SearchRecord(aRecord.GUID);
end;

procedure TJanuaDBDataset.Last;
begin
  BeginScroll(False);
  InternalDataset.Last;
  EndScroll;
end;

function TJanuaDBDataset.Locate(const KeyFields: string; const KeyValues: Variant;
Options: TLocateOptions): Boolean;
begin
  Result := FInternalDataset.Locate(KeyFields, KeyValues, Options)
end;

function TJanuaDBDataset.LocateGUID(const aGUID: TGUID): Boolean;
begin
  Result := False;
  if InternalDataset.Active then
  begin
    Result := HasGUIDField and (FGUIDField.AsGUID = aGUID);
    if not Result then
    begin
      if HasGUIDField then
        Result := InternalDataset.Locate(FGUIDField.FieldName, aGUID.ToString, [])
      else
      begin
        Result := ExistFieldByName(FInternalDataset, 'jguid') and
          FInternalDataset.Locate('jguid', aGUID.ToString, []) or
          ExistFieldByName(FInternalDataset, GUIDFieldName) and FInternalDataset.Locate(GUIDFieldName,
          aGUID.ToString, []);
      end;
    end;
  end;
end;

procedure TJanuaDBDataset.MapDeletedField;
begin
  if Janua.Core.Functions.ExistFieldByName(FInternalDataset, 'deleted') then
    FDeletedField := Janua.Core.Functions.GetFieldByName(FInternalDataset, 'deleted')
  else if Janua.Core.Functions.ExistFieldByName(FInternalDataset, DeletedFieldName) then
    FDeletedField := Janua.Core.Functions.GetFieldByName(FInternalDataset, DeletedFieldName);
end;

procedure TJanuaDBDataset.MapEvents;
begin
  try
    if not Assigned(FDBAfterScroll) then
      FDBAfterScroll := FInternalDataset.AfterScroll;
    FInternalDataset.AfterScroll := DataSetAfterScroll;
    if not Assigned(FDBBeforeCancel) then
      FDBBeforeCancel := FInternalDataset.BeforeCancel;
    FInternalDataset.BeforeCancel := DataSetBeforeCancel;
    if not Assigned(FDBBeforeDelete) then
      FDBBeforeDelete := FInternalDataset.BeforeDelete;
    FInternalDataset.BeforeDelete := DataSetBeforeDelete;
    if not Assigned(FDBBeforeInsert) then
      FDBBeforeInsert := FInternalDataset.BeforeInsert;
    FInternalDataset.BeforeInsert := DataSetBeforeInsert;
    if not Assigned(FDBBeforePost) then
      FDBBeforePost := FInternalDataset.BeforePost;
    FInternalDataset.BeforePost := DataSetBeforePost;
    if not Assigned(FDBOnCalcFields) then
      FDBOnCalcFields := FInternalDataset.OnCalcFields;
    FInternalDataset.OnCalcFields := DataSetOnCalcFields;
    if not Assigned(FDBOnNewRecord) then
      FDBOnNewRecord := FInternalDataset.OnNewRecord;
    FInternalDataset.OnNewRecord := DataSetOnNewRecord;
  except
    on e: exception do
      RaiseException('MapEvents', e, self);
  end;
end;

procedure TJanuaDBDataset.MapGUIDField;
begin
  try
    if Janua.Core.Functions.ExistFieldByName(FInternalDataset, 'jguid') then
      FGUIDField := Janua.Core.Functions.GetFieldByName(FInternalDataset, 'jguid')
    else if Janua.Core.Functions.ExistFieldByName(FInternalDataset, GUIDFieldName) then
      FGUIDField := Janua.Core.Functions.GetFieldByName(FInternalDataset, GUIDFieldName);
  except
    on e: exception do
      RaiseException('MapGUIDField', e, self);
  end;
end;

procedure TJanuaDBDataset.Next;
begin
  if InternalDataset.Active then
    InternalDataset.Next
end;

procedure TJanuaDBDataset.Open;
begin
  if not GetDataset.Active then
    try
      BeginScroll(False);
      if GetBeforeOpenProc then
        try
          FBeforeOpenProc;
        finally
          FBeforeOpenProc := nil;
        end;
      GetDataset.Open;
      EndScroll;
    except
      on e: exception do
        RaiseException('Open', e, self);
    end;
end;

procedure TJanuaDBDataset.OpenThreaded(aProc: TProc);
begin
  // if Assigned(aProc) then
  MonitorEnter(self);
  try
    if Assigned(Dataset) then
      OpenDBThreadedDataset(GetDataset, nil, True, aProc)
  finally
    MonitorExit(self);
  end;
end;

function TJanuaDBDataset.ParamByName(const aName: string): IJanuaField;
begin
  try
    if not FindParam(aName, Result) then
      Result := nil;
  except
    on e: exception do
      RaiseException('ParamByName ' + aName, e, self);
  end;
end;

procedure TJanuaDBDataset.Post;
var
  FGUID: TGUID;
begin
  if InternalDataset.Active { Not to be Checked (RecordCount) } and (InternalDataset.State in dsEditModes)
  then
  begin
    if Assigned(FGUIDField) then
    begin
      FGUID := FGUIDField.AsGUID;
      InternalDataset.Post;
      if FGUID <> FGUIDField.AsGUID then
        InternalDataset.Locate(FGUIDField.FieldName, FGUIDField.Value, []);
    end
    else
      InternalDataset.Post;
  end;
end;

procedure TJanuaDBDataset.Prior;
begin
  if InternalDataset.Active and (InternalDataset.RecordCount > 0) then
    InternalDataset.Prior
end;

function TJanuaDBDataset.RecordCount: Integer;
begin
  Result := GetDataset.RecordCount
end;

procedure TJanuaDBDataset.Refresh;
begin
  InternalDataset.Refresh;
end;

function TJanuaDBDataset.RemoteAppend: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.AppendRecord
end;

function TJanuaDBDataset.RemoteDelete: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.DeleteRecord
end;

function TJanuaDBDataset.RemoteGetMeta: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.GetMeta
end;

function TJanuaDBDataset.RemoteLoad: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.LoadData
end;

function TJanuaDBDataset.RemoteUpdate: Boolean;
begin
  if Assigned(FRemoteClient) then
    Result := FRemoteClient.UpdateRecord
end;

procedure TJanuaDBDataset.RemoveDataset(const aDataset: IJanuaDBDataset);
begin
  FDetailDatasets.Remove(aDataset);
end;

function TJanuaDBDataset.AddField(const aField: IJanuaField): TField;

  function FieldLog: string;
  begin
    if Assigned(aField) then
      Result := aField.DBField + ', size: ' + aField.Size.ToString + 'Type: ' + JanuaProperty
        [aField.FieldType];
  end;

begin
  Result := nil;
  try
    Result := AddField(aField.DBField, aField.FieldType, aField.MaxLength, aField.Precision);
  except
    on e: exception do
      CreateException('AddField', '', e.Message + sl + FieldLog, self);
  end;
end;

function TJanuaDBDataset.AddFilterParam(aParam: IJanuaField): IJanuaField;
begin
  Result := FFilterParams.AddParam(aParam)
end;

function TJanuaDBDataset.AddGridColumn(const aFieldName: string; aCharWidth: Integer;
aTitle, aMask: string): Integer;
var
  lField: TField;
begin
  Result := -1;
  lField := FindField(aFieldName);
  if Assigned(lField) then
  begin
    Result := AddGridColumn(lField, aCharWidth, aTitle);
    if (Result > -1) then
      FGridColumns[Result].Mask := aMask;
  end;
end;

function TJanuaDBDataset.AddGridColumn(aField: TField; aCharWidth: Integer; aTitle: string): Integer;
var
{$IFDEF DEBUG}
  cWidth: Integer;
{$ENDIF}
  lRecordFieldDef: TJanuaGridColumnField;
begin
  lRecordFieldDef := TJanuaGridColumnField.Create(aField, True, False, aCharWidth);
  if aTitle <> '' then
    lRecordFieldDef.Title := aTitle;
  Result := FGridColumns.Add(lRecordFieldDef);
  if Result > -1 then
  begin
    { FGridColumns[Result].DisplayWidth := aCharWidth;
      FGridColumns[Result].Title := aTitle; }
{$IFDEF DEBUG}
    cWidth := FGridColumns[Result].GridFieldDef.DisplayWidth;
{$ENDIF}
  end;
end;

function TJanuaDBDataset.SearchRecord(const aGUID: TGUID): Boolean;
begin
  Result := LocateGUID(aGUID);
end;

function TJanuaDBDataset.Serialize(const aFormat: string): string;
begin
  if Assigned(FSerializeFunc) then
    Result := FSerializeFunc(aFormat);
end;

procedure TJanuaDBDataset.SetActive(const Value: Boolean);
begin
  FInternalDataset.Active := Value
end;

procedure TJanuaDBDataset.SetAfterOpen(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FAfterOpen := Value
end;

procedure TJanuaDBDataset.SetAfterScroll(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FAfterScroll := Value
end;

procedure TJanuaDBDataset.SetBeforeCancel(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FBeforeCancel := Value
end;

procedure TJanuaDBDataset.SetBeforeDelete(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FBeforeDelete := Value
end;

procedure TJanuaDBDataset.SetBeforeInsert(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FBeforeInsert := Value
end;

procedure TJanuaDBDataset.SetBeforePost(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FBeforePost := Value
end;

procedure TJanuaDBDataset.SetDataset(const Value: TDataset);
begin
  SetInternalDataset(Value)
end;

procedure TJanuaDBDataset.SetDatasetURL(const Value: string);
begin
  FDatasetURL := Value;
  if (FDatasetURL <> '') and Assigned(RemoteClient) and (RemoteClient.DatasetURL <> FDatasetURL) then
    RemoteClient.DatasetURL := FDatasetURL;
end;

procedure TJanuaDBDataset.SetDataSource(const Value: TDataSource);
begin
  FInternalDataSource := Value;
end;

procedure TJanuaDBDataset.SetDeSerializeFunc(const Value: TProc<string, string>);
begin
  FDeSerializeFunc := Value;
end;

procedure TJanuaDBDataset.SetDetailDatasets(const Value: IList<IJanuaDBDataset>);
begin
  FDetailDatasets := Value;
end;

procedure TJanuaDBDataset.SetEntities(const AEntities: TJanuaEntities);
var
  I: Integer;
begin
  if FEntities <> AEntities then
  begin
    SetLength(FEntities, Length(AEntities));
    for I := 0 to High(AEntities) do
      FEntities[I] := AEntities[I];
  end;
end;

procedure TJanuaDBDataset.SetEntityNames(const AEntities: TJanuaEntityNames);
var
  I: Integer;
  LEntity: TJanuaEntity;
  // LEntity is used to convert Entity String to Entity Enum if found
begin
  if FEntityNames <> AEntities then
  begin
    // Set length of FEntityNames array to new dimensions according to AEntities
    SetLength(FEntityNames, Length(AEntities));
    for I := 0 to High(FEntityNames) do
      FEntityNames[I] := AEntities[I];
    // check if entity strings match Entity enum definitions
    for I := 0 to High(FEntityNames) do
      if TEnumConvertor<TJanuaEntity>.TryFromString(FEntityNames[I], LEntity) then
        AddEntity(LEntity);
  end;
end;

procedure TJanuaDBDataset.SetFieldDefs(const Value: TFieldDefs);
begin
  FInternalDataset.FieldDefs := Value;
end;

procedure TJanuaDBDataset.SetFiltered(const Value: Boolean);
begin
{$IFDEF DEBUG}
  Guard.CheckNotNull(FFilterParams, 'TJanuaDBDataset.FFilterParams');
  Guard.CheckNotNull(FInternalDataset, 'TJanuaDBDataset.FInternalDataset');
{$ENDIF}
  try
    if Value and FFilterParams.Active then
    begin
      GenerateFilter;
      FInternalDataset.Filtered := True;
    end
    else if FInternalDataset.Filtered then
    begin
      FInternalDataset.Filter := '';
      FInternalDataset.Filtered := False;
    end;
  except
    on e: exception do
      RaiseException(FInternalDataset.Name + '.SetFiltered(' + Value.ToString + ')', e, self);
  end;
end;

procedure TJanuaDBDataset.setGUIDPrefix(const aValue: string);
begin
  FGUIDPrefix := aValue
end;

procedure TJanuaDBDataset.SetInternalDataset(const Value: TDataset);
begin
  if FInternalDataset <> Value then
  begin
    FInternalDataset := Value;
    if Assigned(FInternalDataset) then
    begin
      if Assigned(FInternalDataSource) then
      begin
        FInternalDataSource.Dataset := FInternalDataset;
        FInternalDataSource.Name := 'ds' + FInternalDataset.Name;
      end;
      MapGUIDField;
      MapDeletedField;
      MapEvents;
    end;
  end;
end;

procedure TJanuaDBDataset.SetJsonMetadata(const Value: TJsonObject);
begin

end;

procedure TJanuaDBDataset.setLimit(const aValue: Integer);
begin
  FLimit := aValue
end;

procedure TJanuaDBDataset.SetName(const Value: string);
begin
  FInternalDataset.Name := Value;
end;

procedure TJanuaDBDataset.SetOnCalcFields(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FOnCalcFields := Value;
end;

procedure TJanuaDBDataset.SetOnInternalExec(const Value: TNotifyEvent);
begin
  FOnInternalExec := Value;
end;

procedure TJanuaDBDataset.SetOnNewRecord(const Value: TJanuaDBDataSetNotifyEvent);
begin
  FOnNewRecord := Value;
end;

procedure TJanuaDBDataset.SetOnScroll(const Value: TJanuaDatasetEvent);
begin
  FOnScroll := Value
end;

procedure TJanuaDBDataset.SetPage(const aValue: Integer);
begin
  FPage := aValue;
end;

procedure TJanuaDBDataset.setParams(const aValue: IJanuaParams);
begin
  FParams := aValue;
end;

procedure TJanuaDBDataset.SetRemoteClient(const Value: IRemoteDatasetClient);
begin
  FRemoteClient := Value;
  if Assigned(FRemoteClient) then
  begin
    FRemoteFormat := FRemoteClient.DataFormat;
    FRemoteClient.JanuaDataset := self as IJanuaDBDataset;
  end;
end;

procedure TJanuaDBDataset.SetRemoteFormat(const Value: TRestFormat);
begin
  FRemoteFormat := Value;
  if Assigned(RemoteClient) and (RemoteClient.DataFormat <> FRemoteFormat) then
    RemoteClient.DataFormat := FRemoteFormat;
end;

procedure TJanuaDBDataset.SetResultType(const Value: TJanuaFieldType);
begin
  // ------------------------------------------------------------------------------------------------//
  // -- In base al Result Type configurato Viene creato il campo Result come parametro Out della f()
  // -----------------------------------------------------------------------------------------------//
  if FResultType <> Value then
  begin
    FResultType := Value;
    if not FParams.FindParam('result', FResult) then
      FResult := FParams.AddParam(TJanuaOrmFactory.CreateField('result', FResultType))
  end;
end;

procedure TJanuaDBDataset.SetResultTypeFromField(const aField: TField);
begin
  Guard.CheckNotNull(aField, ClassName + '.SetResultTypeFromField(aField)');
  // it uses the conversione Array = JanuaFieldToPropertyType: array [TFieldType]
  SetResultType(JanuaFieldToPropertyType[aField.DataType]);
end;

procedure TJanuaDBDataset.SetResultTypeFromParam(const aParam: TParam);
begin
  Guard.CheckNotNull(aParam, ClassName + '.SetResultTypeFromParam(aParam)');
  // it uses the conversione Array = JanuaFieldToPropertyType: array [TFieldType]
  SetResultType(JanuaFieldToPropertyType[aParam.DataType]);
end;

procedure TJanuaDBDataset.SetSearchFilter(const aSQLFilter: string);
begin
  FSearchFilter := aSQLFilter;
end;

procedure TJanuaDBDataset.SetSerializeFormat(const Value: TRestFormat);
begin

end;

procedure TJanuaDBDataset.SetSerializeFunc(const Value: TFunc<string, string>);
begin
  FSerializeFunc := Value;
end;

function TJanuaDBDataset.UpdateRecord(const aRecord: IJanuaRecord): Boolean;
begin
  Result := False;
  try
    WriteLocalLog('UpdateRecord ', 'SearchRecord ' + aRecord.GUID.ToString);
    Result := SearchRecord(aRecord.GUID);
    if Result then
      SaveRecordToDataset(aRecord);
  except
    on e: exception do
      RaiseException('UpdateRecord', e, self, LogString);
  end;
end;

procedure TJanuaDBDataset.AddDataset(const aDataset: IJanuaDBDataset);
begin
  FDetailDatasets.Add(aDataset);
end;

procedure TJanuaDBDataset.AddEntities(const AEntities: TJanuaEntities);
var
  I: Integer;

  function IsInSet: Boolean;
  var
    j: Integer;
  begin
    Result := False;
    try
      for j := 0 to Pred(Length(FEntities)) do
        if FEntities[j] = AEntities[I] then
          exit(True);
    except
      on e: exception do
        RaiseException('AddEntities(AEntities).IsInSet', e, self, LogString);
    end;
  end;

  procedure AddEntity;
  var
    k: Integer;
  begin
    k := Length(FEntities);
    SetLength(FEntities, k + 1);
    FEntities[k] := AEntities[I];
  end;

begin
  try
    if FEntities <> AEntities then
    begin
      for I := 0 to Pred(Length(AEntities)) do
        if not IsInSet then
          AddEntity;
    end;
  except
    on e: exception do
      RaiseException('AddEntities(AEntities)', e, self, LogString);
  end;
end;

constructor TJanuaDBDataset.CreateWithNames(const AEntities: TJanuaEntityNames);
begin
  inherited Create;
  SetEntityNames(AEntities);
end;

function TJanuaDBDataset.GetAppendFirst: Boolean;
begin
  Result := FAppendFirst;
end;

function TJanuaDBDataset.GetAsJsonMeta: string;
begin

end;

function TJanuaDBDataset.GetGridColumns: IList<TJanuaGridColumnField>;
begin
  Result := FGridColumns;
end;

function TJanuaDBDataset.GetGUID: TGUID;
begin
  if Assigned(FGUIDField) then
    Result := FGUIDField.AsGUID;
end;

function TJanuaDBDataset.GetGUIDField: TField;
begin
  Result := FGUIDField;
end;

function TJanuaDBDataset.GetOrderByFields: IJanuaOrderByFields;
begin
  Result := FOrderByFields;
end;

function TJanuaDBDataset.GetOrdered: Boolean;
begin
  Result := FOrdered;
end;

procedure TJanuaDBDataset.SetAppendFirst(const Value: Boolean);
begin
  FAppendFirst := Value;
end;

procedure TJanuaDBDataset.SetAsJsonMeta(const Value: string);
begin

end;

procedure TJanuaDBDataset.SetGUIDField(const Value: TField);
begin
  FGUIDField := Value;
end;

procedure TJanuaDBDataset.SetOrdered(const Value: Boolean);
begin
  if FOrdered <> Value then
  begin
    FOrdered := Value;
    if FOrdered then
      InternalOrderByActivate
    else
      InternalOrderByDeactivate;
  end;
end;

{ TJanuaBlobField }

procedure TJanuaBlobField.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaBlobField.BeforeDestruction;
begin
  inherited;
  try
    FInternalValue.Clear;
    FInternalValue.SetNil;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaBlobField.Clear;
begin
  SetIsNull(True);
  FFInternalValue.Clear
end;

constructor TJanuaBlobField.Create(aKey, aField: string; aIsMonitored: Boolean);
begin
  Create(aKey, aField, TJanuaFieldType.jpTBlob, aIsMonitored)
end;

constructor TJanuaBlobField.Create;
begin
  inherited;
  FFInternalValue := TJanuaBlob.Create(False);
  FieldType := TJanuaFieldType.jpTBlob;
end;

procedure TJanuaBlobField.Default;
begin
  FFInternalValue.Clear;
end;

destructor TJanuaBlobField.Destroy;
begin
  inherited;
end;

function TJanuaBlobField.DifferDefault: Boolean;
begin
  Result := not FInternalValue.Size = 0;
end;

function TJanuaBlobField.getAsBoolean: Boolean;
begin
  Result := not FInternalValue.Size = 0;
end;

function TJanuaBlobField.getAsCurrency: Currency;
begin
  Result := 0.0
end;

function TJanuaBlobField.GetAsDateTime: TDateTime;
begin
  Result := 0.0
end;

function TJanuaBlobField.getAsFloat: Extended;
begin
  Result := 0.0
end;

function TJanuaBlobField.getAsInteger: Integer;
begin
  Result := 0
end;

function TJanuaBlobField.getAsLargeInt: Int64;
begin
  Result := 0
end;

function TJanuaBlobField.getAsSmallint: Smallint;
begin
  Result := 0
end;

function TJanuaBlobField.GetAsString: string;
begin
  Result := TEncoding.UTF8.GetString(FInternalValue.AsBytes);
end;

function TJanuaBlobField.getAsUTF8Bytes: TBytes;
begin
  Result := FInternalValue.AsBytes
end;

function TJanuaBlobField.GetAsVariant: Variant;
var
  aStream: TStream;
  MyBuffer: Pointer;
begin
  try
    aStream := TMemoryStream.Create;
    try
      FInternalValue.SaveToStream(aStream);
      Result := VarArrayCreate([0, aStream.Size - 1], VarByte);
      MyBuffer := VarArrayLock(Result);
      aStream.ReadBuffer(MyBuffer^, aStream.Size);
      VarArrayUnlock(Result);
    finally
      aStream.Free;
    end
  except
    on e: exception do
      RaiseException('GetAsVariant', e, self, LogString);
  end;
end;

function TJanuaBlobField.GetDataString: string;
begin
  Result := FInternalValue.Encoded64
end;

function TJanuaBlobField.GetDefault: TValue;
begin
  // il Default di un campo Blob ? nullo o una stringa nulla per default.
  Result := TValue('');
end;

function TJanuaBlobField.GetJson: string;
begin
  Result := GetJsonValue.ToJson
end;

function TJanuaBlobField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonString.Create('')
end;

function TJanuaBlobField.GetJsonValue: TJsonValue;
begin
  Result := TJsonString.Create((FInternalValue.Encoded64));
end;

function TJanuaBlobField.GetModified: Boolean;
begin
  Result := not FOldValue.IsEqual(FInternalValue)
end;

function TJanuaBlobField.GetOldValue: TValue;
var
  tmp: string;
begin
  // getAsString esegue la codifica in Base64 del campo BLOB associato.
  tmp := FOldValue.Encoded64;
  Result := TValue(tmp);
end;

function TJanuaBlobField.GetValue: TValue;
var
  tmp: string;
begin
  // getAsString esegue la codifica in Base64 del campo BLOB associato.
  tmp := GetAsString;
  Result := TValue(tmp);
end;

procedure TJanuaBlobField.LoadFromStream(aStream: TStream);
begin
  if Assigned(aStream) then
    FInternalValue.LoadFromStream(aStream);
end;

class function TJanuaBlobField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaBlobField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaBlobField.SaveToStream(aStream: TStream);
begin
  FFInternalValue.SaveToStream(aStream)
end;

procedure TJanuaBlobField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue.AsBoolean := aValue
end;

procedure TJanuaBlobField.setAsCurrency(const aValue: Currency);
begin

end;

procedure TJanuaBlobField.setAsDateTime(const aValue: TDateTime);
begin

end;

procedure TJanuaBlobField.setAsFloat(const aValue: Extended);
begin

end;

procedure TJanuaBlobField.setAsInteger(const aValue: Integer);
begin

end;

procedure TJanuaBlobField.setAsLargeInt(const aValue: Int64);
begin

end;

procedure TJanuaBlobField.setAsSmallint(const aValue: Smallint);
begin

end;

procedure TJanuaBlobField.setAsString(const aValue: string);
begin
  FInternalValue.AsBytes := TEncoding.UTF8.GetBytes(aValue);
end;

procedure TJanuaBlobField.SetAsVariant(const aValue: Variant);
var
  ms: TStream;
  p: Pointer;
begin
  if VarIsNull(aValue) then
    Clear
  else
  begin
    ms := TMemoryStream.Create;
    try
      ms.Position := 0;
      p := VarArrayLock(aValue);
      ms.Write(p^, VarArrayHighBound(aValue, 1));
      // is it the best way to get the Variant's length?
      VarArrayUnlock(aValue);
      ms.Position := 0;
    finally
      ms.Free;
    end;
  end;
end;

procedure TJanuaBlobField.SetDataString(const aValue: string);
begin
  FInternalValue.Encoded64 := aValue;
end;

procedure TJanuaBlobField.SetDefault(aValue: TValue);
begin

end;

procedure TJanuaBlobField.SetFInternalValue(const aValue: TJanuaBlob);
begin
  FFInternalValue := aValue;
  IsNull := False;
end;

procedure TJanuaBlobField.SetJson(aValue: string);
begin

end;

procedure TJanuaBlobField.SetJsonDefault(aValue: TJsonValue);
begin

end;

procedure TJanuaBlobField.SetJsonValue(aValue: TJsonValue);
begin
  AsString := aValue.Value
end;

procedure TJanuaBlobField.SetModified(const aValue: Boolean);
begin

end;

procedure TJanuaBlobField.SetValue(const aValue: TValue);
begin
  AsString := aValue.ToString;
end;

procedure TJanuaBlobField.SetValues(const aActualValue, aOldValue: TValue);
begin

end;

function TJanuaBlobField.Size: Int64;
begin
  Result := FInternalValue.Size
end;

{ TJanuaMemoField }

procedure TJanuaMemoField.AfterConstruction;
begin
  inherited;
  try
    FInternalValue.Text := FDefaultValue;
    FOldValue.Text := FInternalValue.Text;
  except
    on e: exception do
      RaiseException('AfterConstruction', e, self);
  end;
end;

procedure TJanuaMemoField.BeforeDestruction;
begin
  inherited;

end;

procedure TJanuaMemoField.Clear;
begin
  FInternalValue.Clear;
  SetIsNull(True);
end;

constructor TJanuaMemoField.Create(aKey, aField: string; aIsMonitored: Boolean);
begin
  Create;
  Key := aKey;
  DBField := aField;
  IsMonitored := aIsMonitored;
end;

constructor TJanuaMemoField.Create;
begin
  FFInternalValue := TStringList.Create;
  FOldValue := TStringList.Create;
end;

procedure TJanuaMemoField.Default;
begin
  FFInternalValue.Clear;
  FOldValue.Clear;
end;

destructor TJanuaMemoField.Destroy;
begin
  try
    FInternalValue.Free;
    FOldValue.Free;
    inherited;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
end;

function TJanuaMemoField.DifferDefault: Boolean;
begin
  Result := FInternalValue.Text <> ''
end;

function TJanuaMemoField.getAsBoolean: Boolean;
begin
  Result := FFInternalValue.Count > 0
end;

function TJanuaMemoField.getAsCurrency: Currency;
begin
  TryStrToCurr(FFInternalValue.Text, Result)
end;

function TJanuaMemoField.GetAsDateTime: TDateTime;
begin
  TryStrToDateTime(FFInternalValue.Text, Result)
end;

function TJanuaMemoField.getAsFloat: Extended;
begin
  TryStrToFloat(FFInternalValue.Text, Result)
end;

function TJanuaMemoField.getAsInteger: Integer;
begin
  TryStrToInt(FFInternalValue.Text, Result)
end;

function TJanuaMemoField.getAsLargeInt: Int64;
begin
  TryStrToInt64(FFInternalValue.Text, Result)
end;

function TJanuaMemoField.getAsSmallint: Smallint;
var
  tmp: Integer;
begin
  if TryStrToInt(FFInternalValue.Text, tmp) then
    Result := tmp
  else
    Result := 0;
end;

function TJanuaMemoField.GetAsString: string;
begin
  Result := FInternalValue.Text
end;

function TJanuaMemoField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(AsString);
end;

function TJanuaMemoField.GetAsVariant: Variant;
begin
  Result := GetAsString
end;

function TJanuaMemoField.GetDataString: string;
begin
  Result := Encode64(FInternalValue.Text)
end;

function TJanuaMemoField.GetDefault: TValue;
begin
  Result := TValue(AsString)
end;

function TJanuaMemoField.GetJson: string;
begin
  Result := TJsonString.Create(AsString).ToJson
end;

function TJanuaMemoField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonString.Create('')
end;

function TJanuaMemoField.GetJsonValue: TJsonValue;
begin
  Result := TJsonString.Create(FInternalValue.Text);
end;

function TJanuaMemoField.GetModified: Boolean;
begin
  Result := not FOldValue.Equals(FInternalValue)
end;

function TJanuaMemoField.GetOldValue: TValue;
begin
  Result := TValue(FOldValue.Text);
end;

function TJanuaMemoField.GetValue: TValue;
begin
  Result := TValue(FInternalValue.Text)
end;

procedure TJanuaMemoField.LoadFromStream(aStream: TStream);
begin
  FInternalValue.LoadFromStream(aStream);
end;

class function TJanuaMemoField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaMemoField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaMemoField.SaveToStream(aStream: TStream);
begin
  FInternalValue.SaveToStream(aStream);
end;

procedure TJanuaMemoField.setAsBoolean(const aValue: Boolean);
begin
  FInternalValue.Text := aValue.ToString
end;

procedure TJanuaMemoField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue.Text := CurrToStr(aValue);
end;

procedure TJanuaMemoField.setAsDateTime(const aValue: TDateTime);
begin
  FFInternalValue.Text := DateTimeToStr(aValue)
end;

procedure TJanuaMemoField.setAsFloat(const aValue: Extended);
begin
  FInternalValue.Text := aValue.ToString
end;

procedure TJanuaMemoField.setAsInteger(const aValue: Integer);
begin
  FInternalValue.Text := aValue.ToString
end;

procedure TJanuaMemoField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue.Text := aValue.ToString
end;

procedure TJanuaMemoField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue.Text := aValue.ToString
end;

procedure TJanuaMemoField.setAsString(const aValue: string);
begin
  if aValue <> FInternalValue.Text then
  begin
    FInternalValue.Text := aValue;
    CheckNotifications;
  end;
end;

procedure TJanuaMemoField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FFInternalValue.Text := aValue;
end;

procedure TJanuaMemoField.SetDataString(const aValue: string);
begin
  FInternalValue.Text := Decode64(aValue);
end;

procedure TJanuaMemoField.SetDefault(aValue: TValue);
begin
  FDefaultValue := aValue.ToString
end;

procedure TJanuaMemoField.SetFInternalValue(const aValue: TStrings);
begin
  if Assigned(aValue) then
    FInternalValue.Assign(aValue);
  IsNull := FInternalValue.Text = '';
end;

procedure TJanuaMemoField.SetJson(aValue: string);
begin
  SetJsonValue(JsonParse(aValue))
end;

procedure TJanuaMemoField.SetJsonDefault(aValue: TJsonValue);
begin
  FDefaultValue := TJsonString(aValue).Value;
end;

procedure TJanuaMemoField.SetJsonValue(aValue: TJsonValue);
begin
  FInternalValue.Text := TJsonString(aValue).Value;
end;

procedure TJanuaMemoField.SetModified(const aValue: Boolean);
begin
  if not aValue then
    FInternalValue.Text := FOldValue.Text
end;

procedure TJanuaMemoField.SetValue(const aValue: TValue);
begin
  FFInternalValue.Text := aValue.ToString
end;

procedure TJanuaMemoField.SetValues(const aActualValue, aOldValue: TValue);
begin
  FInternalValue.Text := aActualValue.ToString;
  FOldValue.Text := aOldValue.ToString;
end;

function TJanuaMemoField.Size: Int64;
begin
  Result := Length(FInternalValue.Text);
end;

{ TJanuaParams }

function TJanuaParams.AddParam(const aName: string; aType: TJanuaFieldType; aValue: TValue;
const aVisible: Boolean): IJanuaField;
var
  tmp: IJanuaField;
begin
  tmp := TJanuaOrmFactory.CreateField(aName, aType);
  tmp.FieldKind := TJanuaFieldKind.jfkParam;
  tmp.Visible := aVisible;

  Guard.CheckNotNull(tmp, 'Error Creating Parameter: ' + aName + ' Type: ' +
    TEnumConvertor<TJanuaFieldType>.ToString(aType));

  case aType of
    jptDate, jptDateTime, jptCurrency, jptExtended, jptFloat, jptSingle:
      tmp.DefaultValue := 0.0;
    jptInteger, jptSmallint, jptShortint, jptCardinal, jptLargeInt:
      tmp.DefaultValue := 0;
    jptString, jptText:
      tmp.DefaultValue := '';
    jptBoolean:
      begin
        tmp.DefaultValue := False;
        tmp.IsNull := False;
      end;
  end;

  tmp.Value := aValue;

  if not(tmp.FieldType in [jptDate, jptDateTime]) then
    tmp.Activate;

  if aType = jptBoolean then
    tmp.IsNull := False;

  Result := AddParam(tmp);
end;

procedure TJanuaParams.AfterConstruction;
begin
  inherited;

end;

function TJanuaParams.AddParam(aParam: TParam): IJanuaField;
var
  tmp: IJanuaField;
begin
  tmp := TJanuaOrmFactory.CreateField(aParam.Name, JanuaFieldToPropertyType[aParam.DataType]);
  Guard.CheckNotNull(tmp, 'Error Creating Parameter: ' + aParam.Name + ' Type: ' +
    TEnumConvertor<TJanuaFieldType>.ToString(JanuaFieldToPropertyType[aParam.DataType]));
  tmp.AsVariant := aParam.Value;
  tmp.Activate;
  Result := AddParam(tmp);
end;

procedure TJanuaParams.Assign(const aParams: Data.DB.TParams);
var
  I: Integer;
begin
  ClearParams;
  if aParams.Count > 0 then
  begin
    for I := 0 to Pred(aParams.Count) do
      AddParam(aParams.Items[I]);
  end;
end;

procedure TJanuaParams.AssignValues(const aParams: IJanuaParams);
var
  lParam: IJanuaField;
  LPair: TPair<string, IJanuaField>;
begin
  for LPair in aParams.Items do
  begin
    if FItems.TryGetValue(LPair.Key, lParam) then
    begin
      if lParam.FieldType = LPair.Value.FieldType then
        lParam.Value := LPair.Value.Value
      else
        lParam.AsVariant := lParam.Value.AsVariant
    end;
  end;

  HasPagination := aParams.HasPagination;
  Page := aParams.Page;
  PageSize := aParams.PageSize;
end;

procedure TJanuaParams.AssignValues(const aParams: TParams);
begin

end;

procedure TJanuaParams.AssignValues(const aParams: string);
var
  lParams: TJanuaParams;
begin
  lParams := TJanuaParams.Create(aParams);
  try
    self.AssignValues(lParams);
  finally
    lParams.Free;
  end;
end;

procedure TJanuaParams.BeforeDestruction;
begin
  inherited;
  try
    FItems.Clear;
    FOrderedList.Clear;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

function TJanuaParams.AddParam(aParam: IJanuaField): IJanuaField;
begin
  if not FItems.ContainsKey(aParam.Key.ToLower) then
  begin
    FItems.Add(aParam.Key.ToLower, aParam);
    // This adds an ordered list of params
    FOrderedList.Add(aParam);
    aParam.Activate;
    Result := aParam;
  end
  else
  begin
    Result := FItems.GetItem(aParam.Key.ToLower);
  end;

end;

procedure TJanuaParams.Assign(const aParams: IJanuaParams);
var
  aPair: TPair<string, IJanuaField>;
begin
  FItems.Clear;
  for aPair in aParams.Items do
  begin
    FItems.Add(aPair.Key, aPair.Value);
    { TODO : Replace simple Add(IJanuaField) with Add(Factory.Create ...) }
  end;
end;

constructor TJanuaParams.Create;
begin
  inherited;
  FItems := Spring.Collections.TCollections.CreateDictionary<string, IJanuaField>;
  FOrderedList := Spring.Collections.TCollections.CreateList<IJanuaField>;
end;

constructor TJanuaParams.Create(const aObject: TJsonObject);
begin
  Guard.CheckNotNull(aObject, 'TJanuaParams.Create aObject nil');
  Create;
  SetAsJsonObject(aObject);
end;

procedure TJanuaParams.DelParam(const aName: string);
begin
  FItems.Remove(aName)
end;

destructor TJanuaParams.Destroy;
begin
  if Assigned(self) then
    try
      try
        FItems := nil;
        FOrderedList := nil;
        if Assigned(FParamsList) then
        begin
          ClearParams;
          FParamsList.Free;
        end;
      finally
        inherited;
      end;
    except
      on e: exception do
        LogException('Destroy', e, self);
    end;
end;

function TJanuaParams.FilterText: string;
var
  I, j: Integer;

  function JPlus: Boolean;
  begin
    Result := j > 0;
    if not Result then
      Inc(j);
  end;

begin
  Result := '';
  j := 0;
  if (ParamCount > 0) and Active then
    for I := 0 to Pred(ParamCount) do
      if Params[I].Active and not Params[I].IsDefault then
        Result := Result + IfThen(JPlus, ' and ', '') + Params[I].FilterText;
  // Note: IsDefault for params is used as an exclusion condition.
  // Examples: 0 for ID search means *ALL the same stands for '' in string Searches
  // For Date Searches it's better to explicitly use Active T/F to tell if condition should be used in query.
end;

function TJanuaParams.FindParam(const aParamName: string; out aParam: IJanuaField): Boolean;
begin
  Result := FItems.TryGetValue(aParamName.ToLower, aParam);
end;

function TJanuaParams.GetAsBase64Url: string;
begin
  Result := URLEncode64(GetAsJson);
end;

function TJanuaParams.GetAsJson: string;
begin
  Result := GetAsJsonObject.ToJson;
end;

function TJanuaParams.GetAsJsonObject: TJsonObject;
var
  aPair: TPair<string, IJanuaField>;
  LArr: TJsonArray;
begin
  Result := TJsonObject.Create;
  JsonPair(Result, 'metaonly', FMetaDataOnly);
  LArr := TJsonArray.Create;
  for aPair in FItems do
    LArr.AddElement(aPair.Value.AsJsonMetadata);
  Janua.Core.Json.JsonPair(Result, 'fields', LArr);
  JsonPair(Result, 'pagination', FPagination.GetAsJsonValue);
end;

function TJanuaParams.GetAsMetaData: TJsonObject;
var
  FArr: TJsonArray;
  aPair: TPair<string, IJanuaField>;
begin
  Result := TJsonObject.Create;
  JsonValue(Result, 'metaonly', FMetaDataOnly);
  // Params are stored in JsonObject as an array named 'params'
  FArr := TJsonArray.Create;
  if FItems.Count > 0 then
    for aPair in FItems do
      FArr.AddElement(aPair.Value.AsJsonMetadata);
  Janua.Core.Json.JsonPair(Result, 'params', FArr);
end;

function TJanuaParams.GetAsMetaDataOnly: Boolean;
begin
  Result := FMetaDataOnly
end;

function TJanuaParams.GetAsString: string;
var
  LBuilder: TStringBuilder;
  aPair: TPair<string, IJanuaField>;
begin
  LBuilder := TStringBuilder.Create;
  try
    for aPair in FItems do
      LBuilder.Append(aPair.Key + '=' + aPair.Value.AsString)
  finally
    LBuilder.Free
  end;
end;

function TJanuaParams.GetHasPagination: Boolean;
begin
  Result := FPagination.Active
end;

function TJanuaParams.GetItem(const aIndex: Integer): IJanuaField;
begin
  if aIndex < FOrderedList.Count then
    Result := FOrderedList[aIndex]
end;

function TJanuaParams.GetItems: IDictionary<string, IJanuaField>;
begin
  Result := FItems
end;

function TJanuaParams.GetOrderedList: TJanuaFields;
begin
  Result := FOrderedList;
end;

function TJanuaParams.GetPage: Word;
begin
  Result := FPagination.Page
end;

function TJanuaParams.GetPageSize: UInt32;
begin
  Result := FPagination.Size
end;

function TJanuaParams.GetParamsList: TStrings;
var
  I: Integer;
begin
  MonitorEnter(self);
  try
    if not Assigned(FParamsList) then
      FParamsList := TStringList.Create;
    FParamsList.Clear;
    for I := 0 to Pred(FOrderedList.Count) do
      FParamsList.Add(FOrderedList[I].Title);
    Result := FParamsList;
  finally
    MonitorExit(self);
  end;
end;

function TJanuaParams.GetText: string;
begin
  Result := ParamsList.Text;
end;

function TJanuaParams.InternalActivate: Boolean;
var
  aParam: IJanuaField;
begin
  MonitorEnter(self);
  try
    Result := False;
    for aParam in FOrderedList do
      if aParam.Active then
        exit(True)
  finally
    MonitorExit(self);
  end;
end;

procedure TJanuaParams.ClearParams;
var
  aParam: IJanuaField;
begin
  MonitorEnter(self);
  try
    for aParam in FOrderedList do
      aParam.Clear;
  finally
    MonitorExit(self);
  end;
end;

function TJanuaParams.ContentEquals(const aParams: IJanuaParams): Boolean;
var
  aPair: TPair<string, IJanuaField>;
begin
  Result := True;
  // Loops in Dictionary Params(Items) and exits False if Item does not Equals.
  for aPair in FItems do
    if not(aPair.Value.Value.Equals(aParams.ParamByName(aPair.Key).Value)) then
      exit(False)
end;

constructor TJanuaParams.Create(const aParams: TParams);
begin
  Create;
  Assign(aParams);
end;

function TJanuaParams.GetItemIndex: Integer;
begin
  Result := FItemIndex;
end;

function TJanuaParams.ParamByName(const aName: string): IJanuaField;
begin
  FItems.TryGetValue(aName.ToLower, Result);
  // Result := FItems.Extract(aName.ToLower)
end;

function TJanuaParams.ParamCount: Integer;
begin
  Result := FItems.Count
end;

procedure TJanuaParams.SetAsBase64Url(const Value: string);
begin
  SetAsJson(URLDecode64(Value));
end;

procedure TJanuaParams.SetAsJson(const Value: string);
begin
  if FItems.Count = 0 then
    Assign(Value)
  else
    AssignValues(Value);
end;

procedure TJanuaParams.SetAsJsonObject(const Value: TJsonObject);
var
  LArr: TJsonArray;
  aValue, LValue: TJsonValue;
  aPair: TJsonPair;
  LObject: TJsonObject;
  LItem: IJanuaField;
begin
  // Creo una lista vuota di Campi
  // Result := Spring.Collections.TCollections.CreateList<IJanuaField>;
  // Devo 'parsare' l'oggetto cercando l'array da Estrarre.
  FItems.Clear;

  Janua.Core.Json.JsonValue(Value, 'fields', LArr);

  if Assigned(LArr) then
    for aValue in LArr do
    begin
      // LObject does a cast of aVAlue (TJsonValue) to TJsonObject
      LObject := (aValue as TJsonObject);
      LItem := TJanuaOrmFactory.CreateField(LObject);
      // Estraggo il valore del campo se presente.
      JsonValue(LObject, 'value', LValue);
      // Verifico che sia associato il campo e se s? sovrascrivo il Default con il valore ottenuto
      if Assigned(LValue) then
        LItem.AsJsonValue := LValue;
      // infine inserisco il campo appena Creato
      FItems.Add(LItem.Key.ToLower, LItem);
    end;

  // Extract the Pagination Json Object as Value
  Janua.Core.Json.JsonValue(Value, 'pagination', LValue);

  if Assigned(LValue) then
    FPagination.SetAsJsonValue(LValue);

end;

procedure TJanuaParams.SetAsMetaData(const Value: TJsonObject);
var
  LFArr, LRarr, LRSArr: TJsonArray;
  tmp: string;
  aValue: TJsonValue;
  LPair: TJsonPair;
  LObject: TJsonObject;
  aTest: Integer;
begin

  FItems.Clear;

  Janua.Core.Json.JsonValue(Value, 'params', LFArr);

  if Assigned(LFArr) then
    for aValue in LFArr do
    begin
      LObject := (aValue as TJsonObject);
      AddParam(TJanuaOrmFactory.CreateField(LObject));
    end;

end;

procedure TJanuaParams.SetAsMetaDataOnly(const Value: Boolean);
begin

end;

procedure TJanuaParams.SetHasPagination(const Value: Boolean);
begin
  FPagination.Active := Value
end;

procedure TJanuaParams.SetItemIndex(const Value: Integer);
begin
  FItemIndex := Value;
end;

procedure TJanuaParams.SetItems(const Value: IDictionary<string, IJanuaField>);
begin
  FItems := Value;
end;

procedure TJanuaParams.SetPage(const Value: Word);
begin
  FPagination.Page := Value
end;

procedure TJanuaParams.SetPageSize(const Value: UInt32);
begin
  FPagination.Size := Value
end;

procedure TJanuaParams.Assign(const aJson: string);
var
  aObject: TJsonObject;
begin
  aObject := JsonParse(aJson);
  try
    SetAsJsonObject(aObject);
  finally
    aObject.Free;
  end;
end;

constructor TJanuaParams.Create(const aParams: string);
var
  aObject: TJsonObject;
begin
  Create;
  aObject := JsonParse(aParams);
  try
    Create(aObject)
  finally
    aObject.Free;
  end;
end;

{ TJanuaGUIDField }

constructor TJanuaGUIDField.Create;
begin
  inherited;
  FInternalValue := GUID_NULL;
  FDefaultValue := GUID_NULL;
  SetIsNull(True);
end;

procedure TJanuaGUIDField.Clear;
begin
  try
    FInternalValue := GUID_NULL;
    SetIsNull(True);
  except
    on e: exception do
      if Assigned(self) then
        raise exception.Create('TJanuaCurrencyField (' + DBField + ').Clear Error = ' + sl + e.Message)
      else
        raise exception.Create('TJanuaCurrencyField.Clear Error = Class is nil ' + sl + e.Message);
  end;
end;

constructor TJanuaGUIDField.Create(aKey, aField: string; aIsMonitored: Boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptGUID, aIsMonitored)
end;

procedure TJanuaGUIDField.Default;
var
  t: Boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> FDefaultValue;
  if t then
  begin
    FInternalValue := FDefaultValue;
    if Assigned(FOnFieldDataChange) then
      FOnFieldDataChange(self as IJanuaField);
  end;
  FOldValue := FInternalValue;
end;

function TJanuaGUIDField.DifferDefault: Boolean;
begin
  Result := FDefaultValue <> FFInternalValue
end;

function TJanuaGUIDField.getAsBoolean: Boolean;
begin
  Result := not(FInternalValue = GUID_NULL);
end;

function TJanuaGUIDField.getAsCurrency: Currency;
begin
  Result := 0.0;
end;

function TJanuaGUIDField.GetAsDateTime: TDateTime;
begin
  Result := 0.0;
  // poi vedo come gestire il TDateTime .................................
end;

function TJanuaGUIDField.getAsFloat: Extended;
begin
  Result := 0.0;
end;

function TJanuaGUIDField.GetAsGUID: TGUID;
begin
  Result := FInternalValue
end;

function TJanuaGUIDField.getAsInteger: Integer;
begin
  Result := 0;
end;

function TJanuaGUIDField.getAsLargeInt: Int64;
begin
  Result := 0;
end;

function TJanuaGUIDField.getAsSmallint: Smallint;
begin
  Result := 0;
end;

function TJanuaGUIDField.GetAsString: string;
begin
  Result := FInternalValue.ToString
end;

function TJanuaGUIDField.getAsUTF8Bytes: TBytes;
begin
  Result := FInternalValue.ToByteArray
end;

function TJanuaGUIDField.GetAsVariant: Variant;
begin
  Result := GUIDToString(FInternalValue);
end;

function TJanuaGUIDField.GetDataString: string;
begin
  Result := AsString
end;

function TJanuaGUIDField.GetDefault: TValue;
begin
  Result := GUIDToString(FDefaultValue)
end;

function TJanuaGUIDField.GetJson: string;
begin
  Result := GetJsonPair.ToJson
end;

function TJanuaGUIDField.GetJsonDefault: TJsonValue;
begin
  Result := TJsonString.Create(FDefaultValue.ToString)
end;

function TJanuaGUIDField.GetJsonValue: TJsonValue;
begin
  Result := TJsonString.Create(FInternalValue.ToString);
end;

function TJanuaGUIDField.GetModified: Boolean;
begin
  Result := FOldValue <> FFInternalValue
end;

function TJanuaGUIDField.GetOldValue: TValue;
var
  tmp: string;
begin
  tmp := GUIDToString(FOldValue);
  Result := TValue.From<string>(tmp)
end;

function TJanuaGUIDField.GetValue: TValue;
var
  tmp: string;
begin
  tmp := GUIDToString(FInternalValue);
  Result := TValue.From<string>(tmp)
end;

procedure TJanuaGUIDField.LoadFromStream(aStream: TStream);
var
  SS: TStringStream;
begin
  if aStream <> nil then
  begin
    SS := TStringStream.Create;
    try
      SS.LoadFromStream(aStream);
      FInternalValue := StringToGUID(SS.DataString)
    finally
      SS.Free;
    end;
  end
  else
  begin
    FInternalValue := GUID_NULL;
  end;
end;

class function TJanuaGUIDField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaGUIDField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaGUIDField.SaveToStream(aStream: TStream);
var
  SS: TStringStream;
begin
  SS := TStringStream.Create(FInternalValue.ToString);
  try
    aStream.CopyFrom(SS, 0);
    // No need to position at 0 nor provide size
  finally
    SS.Free;
  end;
end;

procedure TJanuaGUIDField.setAsBoolean(const aValue: Boolean);
begin
  if aValue then
    FInternalValue.Create(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1)
  else
    FInternalValue := GUID_NULL;

end;

procedure TJanuaGUIDField.setAsCurrency(const aValue: Currency);
begin
  FInternalValue := GUID_NULL
  // CurrToStr(aValue)
end;

procedure TJanuaGUIDField.setAsDateTime(const aValue: TDateTime);
begin
  FInternalValue := GUID_NULL
  // DateToISO8601(aValue)
end;

procedure TJanuaGUIDField.setAsFloat(const aValue: Extended);
begin
  FInternalValue := GUID_NULL
  // aValue.ToString
end;

procedure TJanuaGUIDField.SetAsGUID(const Value: TGUID);
begin
  inherited;
  FInternalValue := Value
end;

procedure TJanuaGUIDField.setAsInteger(const aValue: Integer);
begin
  FInternalValue := StringToGUID('{00000000-0000-0000-0000-' + IntToHex(aValue, 12) + '}');
end;

procedure TJanuaGUIDField.setAsLargeInt(const aValue: Int64);
begin
  FInternalValue := StringToGUID('{00000000-0000-0000-0000-' + IntToHex(aValue, 12) + '}');
end;

procedure TJanuaGUIDField.setAsSmallint(const aValue: Smallint);
begin
  FInternalValue := StringToGUID('{00000000-0000-0000-0000-' + IntToHex(aValue, 12) + '}');
end;

procedure TJanuaGUIDField.setAsString(const aValue: string);
var
  tmp: TGUID;
begin
  if (aValue <> '') then
  begin
    tmp := StringToGUID(aValue);
    if FInternalValue <> tmp then
    begin
      FInternalValue := tmp;
      // CheckNotifications;
    end;
  end;
end;

procedure TJanuaGUIDField.SetAsVariant(const aValue: Variant);
begin
  if VarIsNull(aValue) then
    Clear
  else
    FInternalValue := StringToGUID(VarToStr(aValue))
end;

procedure TJanuaGUIDField.SetDataString(const aValue: string);
begin
  setAsString(aValue);
end;

procedure TJanuaGUIDField.SetDefault(aValue: TValue);
begin
  FDefaultValue := StringToGUID(aValue.ToString)
end;

procedure TJanuaGUIDField.SetFInternalValue(const aValue: TGUID);
begin
  if aValue <> FFInternalValue then
  begin
    if aValue <> GUID_NULL then
      IsNull := False;
    FFInternalValue := aValue;
    if IsMonitored and Assigned(OnFieldDataChange) then
      OnFieldDataChange(self as IJanuaField);
    CheckNotifications
  end;
end;

procedure TJanuaGUIDField.SetJson(aValue: string);
begin

end;

procedure TJanuaGUIDField.SetJsonDefault(aValue: TJsonValue);
begin
  FInternalValue := StringToGUID(TJsonString(aValue).Value)
end;

procedure TJanuaGUIDField.SetJsonValue(aValue: TJsonValue);
begin
  FInternalValue := StringToGUID(TJsonString(aValue).Value);
end;

procedure TJanuaGUIDField.SetModified(const aValue: Boolean);
begin
  if (not aValue) and GetModified then
    FOldValue := FFInternalValue
end;

procedure TJanuaGUIDField.SetValue(const aValue: TValue);
begin
  FInternalValue := StringToGUID(aValue.ToString)
end;

procedure TJanuaGUIDField.SetValues(const aActualValue, aOldValue: TValue);
begin
  SetValue(aActualValue);
  FOldValue := StringToGUID(aOldValue.AsString)
end;

function TJanuaGUIDField.Size: Int64;
begin
  Result := (16)
end;

{ TJanuaJsonField }

procedure TJanuaJsonField.CheckIsJson;
var
  aValue: TJsonValue;
begin
  if FInternalValue.Text <> '' then
  begin
    aValue := TJsonObject.ParseJSONValue(FInternalValue.Text);
    if aValue = nil then
      raise exception.Create('JanuaJsonField.CheckIsJson Parse Error');
  end;
end;

procedure TJanuaJsonField.LoadFromStream(aStream: TStream);
begin
  inherited;
  CheckIsJson;
end;

class function TJanuaJsonField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaJsonField.Create(aKey, aField, aIsMonitored)
end;

procedure TJanuaJsonField.setAsString(const aValue: string);
begin
  inherited;
  CheckIsJson
end;

function TJanuaRecMetaSerialization.GetJanuaRecord: IJanuaRecord;
begin
  Result := FJanuaRecord;
end;

procedure TJanuaRecMetaSerialization.LoadGridMeta;
begin

end;

procedure TJanuaRecMetaSerialization.LoadLocalGridMeta;
begin

end;

procedure TJanuaRecMetaSerialization.SaveGridMeta;
begin

end;

procedure TJanuaRecMetaSerialization.SaveLocalGridMeta;
begin

end;

procedure TJanuaRecMetaSerialization.SetJanuaRecord(const Value: IJanuaRecord);
begin
  FJanuaRecord := Value;
end;

{ TJanuaDBFields }

function TJanuaDBFields.Add(const aField: IJanuaDBField): IJanuaDBField;
begin
  FDBFields.Add(aField.DBField.FieldName, aField);
  Result := aField;
end;

function TJanuaDBFields.Add(const aField: TField; const aAddToGrid: Boolean): IJanuaDBField;
begin

end;

procedure TJanuaDBFields.AddFieldToGrid(const aField: IJanuaDBField);
begin

end;

procedure TJanuaDBFields.AddFieldToGrid(const aFieldName: string);
begin

end;

procedure TJanuaDBFields.ChangePos(const aField: IJanuaDBField; const aFieldPos: Integer);
begin

end;

constructor TJanuaDBFields.Create;
begin
  inherited Create;
  FDBFields := Spring.Collections.TCollections.CreateDictionary<string, IJanuaDBField>;
end;

constructor TJanuaDBFields.Create(const aDataset: TDataset);
begin
  Create;
end;

function TJanuaDBFields.GetDBFields: IDictionary<string, IJanuaDBField>;
begin
  Result := FDBFields
end;

function TJanuaDBFields.GetFieldCount: Integer;
begin
  Result := FGridFields.Count
end;

function TJanuaDBFields.GetGridFields: IList<IJanuaDBField>;
begin
  Result := FGridFields
end;

function TJanuaDBFields.GetItems(Index: string): IJanuaDBField;
begin
  try
    FDBFields.TryGetValue(Index, Result);
  except
    on e: exception do
      RaiseException('GetItems(Index: ' + Index + ')', e, self);
  end;
end;

procedure TJanuaDBFields.MoveUP(const aField: IJanuaDBField);
var
  I: Integer;
  Found: Boolean;
begin
  try
    Guard.CheckNotNull(aField, 'aField');
    I := -1;
    Found := False;
    while (I < FGridFields.Count) or Found do
    begin
      Inc(I);
      Found := (FGridFields[I] = aField);
    end;

    if Found and (I > 0) then
      FGridFields.Move(I, I - 1);
  except
    on e: exception do
      RaiseException('MoveUP(aField)', e, self);
  end;
end;

procedure TJanuaDBFields.MoveUP(const aFieldName: string);
var
  I: Integer;
  Found: Boolean;
begin
  if aFieldName <> '' then
    try
      I := -1;
      Found := False;
      while (I < FGridFields.Count) or Found do
      begin
        Inc(I);
        Found := (FGridFields[I].DBField.FieldName.ToLower = aFieldName.ToLower);
      end;

      if Found and (I > 0) then
        FGridFields.Move(I, I - 1);
    except
      on e: exception do
        RaiseException('Create(aFieldName)', e, self);
    end;
end;

procedure TJanuaDBFields.SetItems(Index: string; const Value: IJanuaDBField);
begin
  try
    if FDBFields.ContainsKey(Index) then
      FDBFields[Index] := Value; // (Index, Value)
  except
    on e: exception do
      RaiseException('SetItems(Index IJanuaDBField)', e, self);
  end;
end;

{ TJanuaDBField }

constructor TJanuaDBField.Create(const aField: TField; const aGUID: TGUID);
begin
  try
    FDBField := aField;
    FIsNull := FDBField.IsNull;
    FGridFieldDef.GridExport := False;
    FGridFieldDef.GridPos := 0;
    FGridFieldDef.GridVisible := False;
    FGridFieldDef.GridFontColor := -1;
    FGridFieldDef.GridTitle := aField.DisplayText;
  except
    on e: exception do
      RaiseException('Create( aField aGUID)', e, self);
  end;

end;

function TJanuaDBField.GetDBField: TField;
begin
  Result := FDBField
end;

function TJanuaDBField.GetGridFieldDef: TJanuaGridFieldDef;
begin
  Result := FGridFieldDef
end;

function TJanuaDBField.GetGUID: TGUID;
begin
  Result := FGUID;
end;

function TJanuaDBField.GetIsNull: Boolean;
begin
  Result := FIsNull;
end;

procedure TJanuaDBField.SetDBField(const Value: TField);
begin
  if Value <> FDBField then
  begin
    FDBField := Value;
  end;
end;

procedure TJanuaDBField.SetGridFieldDef(const Value: TJanuaGridFieldDef);
begin
  FGridFieldDef := Value;
end;

procedure TJanuaDBField.SetGUID(const Value: TGUID);
begin
  FGUID := Value;
end;

procedure TJanuaDBField.SetIsNull(const Value: Boolean);
begin
  FIsNull := Value;
end;

{ TJanuaHtmlField }

class function TJanuaHtmlField.New(const aKey, aField: string; const aIsMonitored: Boolean): IJanuaField;
begin
  Result := TJanuaHtmlField.Create(aKey, aField, aIsMonitored)
end;

{ TJanuaRecordIterator }

constructor TJanuaRecordIterator.Create(aRecordSet: IJanuaRecordSet);
begin
  try
    FRecordset := aRecordSet;
    FRecordset.First;
  except
    on e: exception do
      RaiseException('MoveNext', e, self);
  end;
end;

function TJanuaRecordIterator.GetCurrent: IJanuaRecord;
begin
  Result := FRecordset.CurrentRecord;
end;

function TJanuaRecordIterator.MoveNext: Boolean;
begin
  Result := False;
  try
    Result := (FRecordset.RecordCount > 0) and not FRecordset.Eof;
    if Result then
      FRecordset.Next;
  except
    on e: exception do
      RaiseException('MoveNext', e, self);
  end;
end;

{ TJanuaCustomOrderByFields }

procedure TJanuaCustomOrderByFields.AddField(const aFieldName: string; const aOrderBy: TOrderByEnum;
const aCompare: TOrderByCompare);
begin
  FFields.Add(TJanuaOrderByField.Create(aFieldName, aOrderBy, aCompare));
end;

procedure TJanuaCustomOrderByFields.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaCustomOrderByFields.BeforeDestruction;
begin
  inherited;
  try
    ClearFields;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaCustomOrderByFields.ClearBindings;
begin
  // in effetti ...
end;

procedure TJanuaCustomOrderByFields.ClearFields;
begin
  ClearBindings;
  FFields.Clear;
end;

constructor TJanuaCustomOrderByFields.Create;
begin
  FFields := TCollections.CreateList<TJanuaOrderByField>;
end;

destructor TJanuaCustomOrderByFields.Destroy;
begin
  try
    FFields := nil;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;

  inherited;
end;

function TJanuaCustomOrderByFields.FieldCount: Integer;
begin
  Result := FFields.Count;
end;

function TJanuaCustomOrderByFields.GetFields: IList<TJanuaOrderByField>;
begin
  Result := FFields;
end;

{ TJanuaSearchContainer }

constructor TJanuaSearchContainer.Create(const aGroupID: Integer; aFieldOwner: IJanuaField);
begin
  Create;
  try
    FGroupID := aGroupID;
    Guard.CheckNotNull(aFieldOwner, 'aFieldOwner');
    FFieldOwner := aFieldOwner;
    FFieldOwner.SearchContainer := self as IJanuaSearchContainer;
  except
    on e: exception do
      RaiseException('Create(aGroupID,aFieldOwner)', e, self);
  end;
end;

function TJanuaSearchContainer.GetCallBackSearch: TProc<Integer>;
begin
  Result := FCallBackSearch
end;

function TJanuaSearchContainer.GetContainerType: TSearchContainerType;
begin
  Result := FContainerType
end;

function TJanuaSearchContainer.GetEntityType: TJanuaEntity;
begin
  Result := FEntityType;
end;

function TJanuaSearchContainer.GetFieldOwner: IJanuaField;
begin
  Result := FFieldOwner
end;

function TJanuaSearchContainer.GetGroupID: Integer;
begin
  Result := FGroupID
end;

function TJanuaSearchContainer.GetKeyField: string;
begin
  Result := FKeyField;
end;

function TJanuaSearchContainer.GetKeyValue: string;
begin
  Result := FKeyValue;
end;

function TJanuaSearchContainer.GetLookupValue: string;
begin
  Result := FLookupValue;
end;

function TJanuaSearchContainer.GetValueField: string;
begin
  Result := FLookupField
end;

procedure TJanuaSearchContainer.SetCallBackSearch(const Value: TProc<Integer>);
begin
  FCallBackSearch := Value
end;

procedure TJanuaSearchContainer.SetContainerType(const Value: TSearchContainerType);
begin
  FContainerType := Value;
end;

procedure TJanuaSearchContainer.SetEntityType(const Value: TJanuaEntity);
begin
  FEntityType := Value;
end;

procedure TJanuaSearchContainer.SetKeyField(const Value: string);
begin
  FKeyField := Value
end;

procedure TJanuaSearchContainer.SetKeyValue(const Value: string);
begin
  FKeyValue := Value;
end;

procedure TJanuaSearchContainer.SetLookupValue(const Value: string);
begin
  FLookupValue := Value
end;

procedure TJanuaSearchContainer.SetValueField(const Value: string);
begin
  FLookupField := Value
end;

{ TJanuaSearchListContainer }

procedure TJanuaSearchListContainer.AddKeyValue(const aKeyValue: TKeyValue);
begin
  if not FLookupDict.ContainsKey(aKeyValue.Key) then
  begin
    FLookupDict.Add(aKeyValue.Key, aKeyValue.Value);
    FLookupList.Add(aKeyValue);
  end;
end;

procedure TJanuaSearchListContainer.AfterConstruction;
begin
  inherited;

end;

procedure TJanuaSearchListContainer.BeforeDestruction;
begin
  inherited;
  try
    FLookupList.Clear;
    FLookupDict.Clear;
  except
    on e: exception do
      LogException('BeforeDestruction', e, self);
  end;
end;

procedure TJanuaSearchListContainer.AddKeyValue(const aKey, aValue: string);
begin
  AddKeyValue(TKeyValue.Create(aKey, aValue));
end;

constructor TJanuaSearchListContainer.Create;
begin
  inherited;
  FLookupList := TCollections.CreateList<TKeyValue>;
  FLookupDict := TCollections.CreateDictionary<string, string>;
  FEntityType := TJanuaEntity.None;
  FContainerType := TSearchContainerType.jscLookupList;
end;

destructor TJanuaSearchListContainer.Destroy;
begin
  try
    FLookupList := nil;
    FLookupDict := nil;
  except
    on e: exception do
      LogException('Destroy', e, self);
  end;
  inherited;
end;

function TJanuaSearchListContainer.GetKeyCount: Integer;
begin
  Result := FLookupList.Count
end;

function TJanuaSearchListContainer.GetLookupList: IList<TKeyValue>;
begin
  Result := FLookupList;
end;

procedure TJanuaSearchListContainer.SetKeyValue(const Value: string);
begin
  if FKeyValue <> Value then
  begin
    if FLookupDict.TryGetValue(Value, FLookupValue) then
    begin
      inherited;
      if FFieldOwner.AsString <> Value then
      begin
        FFieldOwner.AsString := Value;
        FFieldOwner.Enabled := not(Value = FFieldOwner.DefaultValue.ToString);
      end;
      if Assigned(FCallBackSearch) then
        FCallBackSearch(1);
    end;
  end;
end;

{ TJanuaSearchDatasetContainer }

constructor TJanuaSearchDatasetContainer.Create(aDataset: IJanuaDBDataset; const aCreateCache: Boolean);
begin
  if not aCreateCache then
    FLookupDataset := aDataset;
end;

function TJanuaSearchDatasetContainer.GetJanuaDBDataset: IJanuaDBDataset;
begin
  Result := FLookupDataset
end;

procedure TJanuaSearchDatasetContainer.SetKeyValue(const Value: string);
begin
  inherited;

end;

{ TJanuaSearchRadioContainer }

constructor TJanuaSearchRadioContainer.Create;
begin
  inherited;
  FEntityType := TJanuaEntity.None;
  FContainerType := TSearchContainerType.jscRadioList;
end;

{ TJanuaCustomRecord }

constructor TJanuaCustomRecord.Create;
begin
  inherited;
  FIsOldRecord := False;
  InternalCreateRecord;
end;

constructor TJanuaCustomRecord.CreateAsOldRecord;
begin
  inherited Create;
  FIsOldRecord := True;
  InternalCreateRecord;
end;

initialization

try
  CheckFields := False;
  RegisterInterface(TypeInfo(IJanuaParams));
  TJanuaApplicationFactory.RegisterClass(IJanuaParams, TJanuaParams);
  // TJanuaSearchListContainer =  IJanuaSearchListContainer
  RegisterInterface(TypeInfo(IJanuaSearchListContainer));
  TJanuaApplicationFactory.RegisterClass(IJanuaSearchListContainer, TJanuaSearchListContainer);
except
  on e: exception do
    raise exception.Create('Orm.Impl.Initialization ' + e.Message);
end;

end.
