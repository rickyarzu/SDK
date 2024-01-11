unit Janua.Orm.Impl;

interface

uses
  // System
  System.Json, System.SysUtils, System.Rtti,
  // DB, RTL, .....
  Data.DB,
  // OS specific
  // Third Party Libs
  Spring.Collections,
  // Janua Framework
  Janua.Orm.Intf, Janua.Orm.Types, System.Classes;

type
  TJanuaCustomField = class(TInterfacedObject)
  strict private
    FKey: string;
    FIsSet: boolean;
    FMaxLength: integer;
    FPrecision: smallint;
    FMinLength: smallint;
    // FCheckMessage: string;
    FMandatory: boolean;
    FFieldType: TJanuaFieldType;
    FDBField: string;
    FCalculated: boolean;
    FIsReadOnly: boolean;
  public
    constructor Create; overload; virtual;
    constructor Create(aKey, aField: string; aFieldType: TJanuaFieldType;
      aIsMonitored: boolean = False); overload;
  private
    FIsMonitored: boolean;
    function GetIsMonitored: boolean;
    procedure SetIsMonitored(const Value: boolean);
  private
    FOnDataChange: TFieldChangeEvent;
    function GetOnDataChange: TFieldChangeEvent;
    procedure SetOnDataChage(const Value: TFieldChangeEvent);
  protected
    function GetModified: boolean; Virtual; Abstract;
    procedure SetModified(const Value: boolean); Virtual; Abstract;
    function GetMaxLength: integer;
    function GetMinLength: smallint;
    function GetPrecision: smallint;
    procedure SetAsJsonMetadata(const Value: TJsonObject); virtual;
    procedure SetFieldType(const Value: TJanuaFieldType);
    procedure SetMaxLength(const Value: integer);
    procedure SetMinLength(const Value: smallint);
    procedure SetPrecision(const Value: smallint);
    function GetFieldType: TJanuaFieldType;
    procedure SetKey(const Value: string);
    function GetKey: string;
    function GetDBField: string;
    procedure SetDBField(const Value: string);
    function GetAsJsonMetadata: TJsonObject; virtual;
    procedure WriteToDataset(aDataset: TDataset);
    procedure ReadFromDataset(aDataset: TDataset);
    procedure SetAsVariant(const Value: Variant); virtual; abstract;
    function GetAsVariant: Variant; virtual; abstract;
    // Read Only and Calculated Properties
    function GetCalculated: boolean;
    procedure SetCalculated(Value: boolean);
    function GeIsReadOnly: boolean;
    procedure SetIsReadOnly(Value: boolean);
    function getValue: TValue; virtual; abstract;
  public
    // Data Type Management
    property MinLength: smallint read GetMinLength write SetMinLength;
    property MaxLength: integer read GetMaxLength write SetMaxLength;
    property Precision: smallint read GetPrecision write SetPrecision;
    property Key: string read GetKey write SetKey;
    property FieldType: TJanuaFieldType read GetFieldType write SetFieldType;
    property DBField: string read GetDBField write SetDBField;
    // Calculate / Read Only
    property Calculated: boolean read GetCalculated write SetCalculated;
    property IsReadOnly: boolean read GeIsReadOnly write SetIsReadOnly;
    property IsMonitored: boolean read GetIsMonitored write SetIsMonitored;
    property OnDataChange: TFieldChangeEvent read GetOnDataChange write SetOnDataChage;
  end;

type
  TJanuaLargeIntField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Int64;
    FDefaultValue: Int64;
    procedure SetFInternalValue(const Value: Int64);
  protected
    property FInternalValue: Int64 read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Int64;
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaSmallIntField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: smallint;
    FDefaultValue: smallint;
    procedure SetFInternalValue(const Value: smallint);
  protected
    property FInternalValue: smallint read FFInternalValue write SetFInternalValue;
  private
    FOldValue: smallint;
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue;
  public
    procedure Default;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaIntegerField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: integer;
    FDefaultValue: integer;
    procedure SetFInternalValue(const Value: integer);
  protected
    property FInternalValue: integer read FFInternalValue write SetFInternalValue;
  private
    FOldValue: integer;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaStringField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: string;
    FDefaultValue: string;
    procedure SetFInternalValue(const Value: string);
  protected
    property FInternalValue: string read FFInternalValue write SetFInternalValue;
  private
    FOldValue: string;
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaBooleanField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: boolean;
    FDefaultValue: boolean;
    procedure SetFInternalValue(const Value: boolean);
  protected
    property FInternalValue: boolean read FFInternalValue write SetFInternalValue;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
    function getValue: TValue; override;
    // Default Stored and Modified Related Procedures .......................................................
  private
    FOldValue: boolean;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
  public
    procedure Default;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaDateTimeField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: TDateTime;
    FDefaultValue: TDateTime;
    procedure SetFInternalValue(const Value: TDateTime);
  protected
    property FInternalValue: TDateTime read FFInternalValue write SetFInternalValue;
  private
    FOldValue: TDateTime;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
    // Default Value Management
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    Constructor Create(aKey, aField: string; aDefault: TDateTime; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaDoubleField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Double;
    FDefaultValue: Double;
    procedure SetFInternalValue(const Value: Double);
  protected
    property FInternalValue: Double read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Double;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    // Default Value Management
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaExtendedField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Extended;
    FDefaultValue: Extended;
    procedure SetFInternalValue(const Value: Extended);
  protected
    property FInternalValue: Extended read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Extended;
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    // Default Value Management
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    Constructor Create(aKey, aFiedl: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property DefaultValue: TValue read GetDefault write SetDefault;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaCurrencyField = class(TJanuaCustomField, IJanuaField)
  strict private
    FFInternalValue: Currency;
    FDefaultValue: Currency;
    procedure SetFInternalValue(const Value: Currency);
  protected
    property FInternalValue: Currency read FFInternalValue write SetFInternalValue;
  private
    FOldValue: Currency;
  public
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
  strict protected
    function GetModified: boolean; override;
    procedure SetModified(const Value: boolean); override;
    function getValue: TValue; override;
  public
    procedure Default;
  private
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsInteger: integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
    function getAsCurrency: Currency;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsInteger(const Value: integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure setValue(const Value: TValue);
    procedure setAsCurrency(const Value: Currency);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
  strict protected
    procedure SetAsJsonMetadata(const Value: TJsonObject); override;
    procedure SetAsVariant(const Value: Variant); override;
    function GetAsVariant: Variant; override;
  public
    // Input/Output procedures
    procedure WriteJsonValue(aJsonObject: TJsonObject);
    procedure ReadJsonValue(aJsonObject: TJsonObject);
  public
    Constructor Create; override;
    constructor Create(aKey, aField: string; aIsMonitored: boolean = False); overload;
    procedure Clear;
  public
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property Value: TValue read getValue write setValue;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
  end;

type
  TJanuaRecord = class(TInterfacedObject, IJanuaRecord)
  strict private
    // FHasCalcFields: boolean;
    // FHasRefFields: boolean;
    FCalcFields: IList<IJanuaField>;
    FTriggerFields: IList<IJanuaField>;
    FFields: IList<IJanuaField>;
    FRecordSets: IList<IJanuaRecordSet>;
    FRecordSetIndex: integer;
    FRecords: IList<IJanuaRecord>;
    FName: string;
    FGUID, FMasterGUID: TGUID;
    FNotifyEvent: TNotifyEvent;
    FItemIndex: integer;
    FMasterRecord: IJanuaRecord;
    // FOldRecord: IJanuaRecord;
    FMasterFields: TMasterFields; // = TArray<TMasterField>;
    // FModified: boolean; // se il record ? stato Modificato rispetto ad 'old-record' una cache update
    FIsNewRecord: boolean; // se il record ? un nuovo record e ad esempio i campi chiave non hanno valore
    FIsLocalStored: boolean;
    FIsRemoteStored: boolean;
  private
    procedure SetItemIndex(Value: integer);
    function GetItemIndex: integer;
    function GetJanuaFields: TJanuaFields;
    procedure SetJanuaFields(const Value: TJanuaFields);
    function GetName: string;
    procedure SetName(const Value: string);
    procedure SetDefault;
    function GetStoreDataset: TDataset;
    procedure SetStoreDataset(const Value: TDataset);
  protected
    FHasMasterRecord: boolean;
    FOnChangeActive: boolean;
  public
    procedure DoDataChange(aField: IJanuaField);
  public // spostare in protected nei tests ..............
    procedure ReadData(aDataList: TValueList);
    procedure WriteData(aDataList: TValueList);
  public
    Constructor Create; overload; virtual;
    Constructor Create(const aName: string); overload; virtual;
    procedure Clear;
  private
    FStoreDataset: TDataset;
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
    procedure SetOldRecord(Value: IJanuaRecord);
    procedure SetOldValue(const Value: IJanuaField);
  public
    function FieldCount: integer;
    function FieldByName(aName: string): IJanuaField;
    function RecordCount: integer;
    function AddField(aField: IJanuaField): integer;
    function AddCalcField(aField: IJanuaField): integer;
    procedure SetRefField(aField: IJanuaField);
    procedure WriteToJson(aJsonObject: TJsonObject);
    procedure ReadFromJson(aJsonObject: TJsonObject);
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    procedure LoadRecord;
    procedure LoadFromDataset; overload;
    procedure SetupDataset(aMainDataset: TDataset; aDatasets: TArray<TDataset>); overload;
    procedure LoadFromDataset(aMainDataset: TDataset; aDatasets: TArray<TDataset>); overload;
    procedure SaveToDataset; overload; // 2018-0058 Save to Dataset
    procedure SaveToDataset(aDataset: TDataset); overload;
    procedure SaveToDataset(aDataset: TDataset; aDatasets: TArray<TDataset>); overload;
    // RecordSetIndex (Index of the Last Inserted Recordset)
    function RecordSetIndex: integer;
    // RecordSetCount Count of all Recordsets Last RecordSet Index + 1
    function RecordSetCount: integer;
    // 2018-0052 procedura per aggiornare i Master Fields (aggiunge nuovi master fields).
    procedure AddMasterField(aMaster, aDetail: IJanuaField);
  strict protected
    // Nested Records ....................................................
    function GetRecords: IList<IJanuaRecord>;
    procedure SetRecords(const Value: IList<IJanuaRecord>);
    procedure AddRecordDef(const aRecordDef: IJanuaRecord);
    // Initialize pu? venire chiamata quando ? necessario inizializzare o pulire un oggetto Record
    procedure Initialize;
    function GetUpdatesPending: boolean;
    procedure SetUpdatesPending(Value: boolean);
  public
    property Records: IList<IJanuaRecord> read GetRecords write SetRecords;
    procedure OnFieldsChange(Sender: Tobject);
  protected
    // Cache Updates Modifications and so On .....................................................
    function GetIsNewRecod: boolean;
    procedure SetIsNewReoord(Value: boolean);
    property IsNewRecord: boolean read GetIsNewRecod write SetIsNewReoord;
    function GetIsRemoteStored: boolean;
    procedure SetIsRemoteStored(Value: boolean);
    function GetIsLocalStored: boolean;
    procedure SetIsLocalStored(Value: boolean);
    function RecordModified: boolean;
    function GetModified: boolean;
    procedure SetModified(const Value: boolean);
    // GUID MANAGEMENT
    procedure SetGUID(Value: TGUID);
    function GetGUID: TGUID;
    // Mastere Record
    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(Value: IJanuaRecord);
    // Nested RecordSets ...................................................
    function AddRecordSet(aRecordSet: IJanuaRecordSet): integer;
    function GetRecordSets: IList<IJanuaRecordSet>;
    procedure SetRecordSets(const Value: IList<IJanuaRecordSet>);
    // Notify Event To Calculate Fields
    procedure DoCalcFields;
    procedure SetNotifyEvent(Value: TNotifyEvent);
    function GetNotifyEvent: TNotifyEvent;
  public
    property OnCalcFields: TNotifyEvent read GetNotifyEvent write SetNotifyEvent;
    property RecordSets: IList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
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
    procedure Append;
    procedure UndoUpdates;
    procedure Assign(const aRecord:  IJanuaRecord);
    procedure ApplyRemoteUpdates;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromLocalStorage; // procedura che in parallelo carica i dati dal Remote Storage.
    procedure LoadFromRemoteStorage; // procedura che in parallelo carica i dati dal Remote Storage.
    procedure ApplyLocalUpdates;
  public
    property Modified: boolean read GetModified write SetModified;
    property UpdatesPending: boolean read GetUpdatesPending write SetUpdatesPending;
    property IsLocalStored: boolean read GetIsLocalStored write SetIsLocalStored;
    property IsRemoteStored: boolean read GetIsRemoteStored write SetIsRemoteStored;
    property Fields: TJanuaFields read GetJanuaFields write SetJanuaFields;
    property Name: string read GetName write SetName;
    property GUID: TGUID read GetGUID write SetGUID;
    // ItemIndex should be connected with GUID and is useful to locate a record insied an ILIst
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    property StoreDataset: TDataset read GetStoreDataset write SetStoreDataset;
  end;

type
  TJanuaRecSerialization = class(TInterfacedObject, IRecSerialization)
  strict private
    FValues: TValueList;
    FOldValues: TValueList;
    FRecords: TRecList;
    FRecSets: TSetList;
    FGUID: TGUID;
    FIndex: integer;
  public
    constructor Create(const aRecord:  IJanuaRecord);
    procedure Clear;
  private
    // Values .....................................................................
    function GetFieldValues: TValueList;
    procedure SetFieldValues(const Value: TValueList);
  public
    property FieldValues: TValueList read GetFieldValues Write SetFieldValues;
  private
    // OldValues .....................................................................
    function GetOldValues: TValueList;
    procedure SetOldValues(const Value: TValueList);
  public
    property OldValues: TValueList read GetOldValues Write SetOldValues;
    function GetIsModified: boolean;
  private
    // Records .....................................................................
    function GetRecValues: TRecList;
    procedure SetRecValues(const Value: TRecList);
  public
    property RecValues: TRecList read GetRecValues Write SetRecValues;
  private
    // RecordSets ..................................................................
    function GetRecSetList: TSetList;
    procedure SetRecSetList(const Value: TSetList);
  public
    property RecSetList: TSetList read GetRecSetList Write SetRecSetList;
  private
    // GUID ..................................................................
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
  public
    property GUID: TGUID read GetGUID Write SetGUID;
  private
    function GetIndex: integer;
    procedure SetIndex(const Value: integer);
  public
    property ItemIndex: integer read GetIndex Write SetIndex;
  end;

type
  TJanuaSetSerialization = class(TInterfacedObject, ISetSerialization)
  strict private
    FRecords: TRecList;
    FItemIndex: integer;
  strict private
    function GetRecList: TRecList;
    procedure SetRecList(const Value: TRecList);
  public
    property RecList: TRecList read GetRecList Write SetRecList;
    procedure AddRecord(aSerialization: IRecSerialization);
    function CurrentRecord: IRecSerialization;
  private
    function GetItemIndex: integer;
    procedure SetItemIndex(const Value: integer);
  public
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    procedure DelCurrenRecord;
    function RecordCount: integer;
  public
    Constructor Create;
    // Data Management
    procedure Clear;
  end;

type
  TJanuaRecordSet = class(TInterfacedObject, IJanuaRecordSet)
  private
    FDataSet: ISetSerialization;
    FRefDataSet: TDataset;
    FName: string;
    FEOF: boolean;
    FGUIDIndex: IDictionary<TGUID, integer>;
    FDelRecords: IList<IJanuaRecord>;
    FLocalStorage: IJanuaRecordSetStorage;
    FRemoteStorage: IJanuaRecordSetStorage;
    FParams: TJanuaFields;
    FOnScroll: TNotifyEvent;
    procedure SetJanuaFields(const Value: TJanuaFields);
    function GetName: string;
    procedure SetName(const Value: string);
    procedure UpdateCurrentRecord;
  strict protected
    FRecord: IJanuaRecord;
    function GetItemIndex: integer;
    procedure SetItemIndex(const Value: integer);
    function IsSetLocalStorage: boolean;
    function IsSetRemoteStorage: boolean;
  public
    constructor Create; overload; virtual;
    constructor Create(const aName: string; const  aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage);
      overload; virtual;
    procedure SetRecord(const aRecord:  IJanuaRecord);
  public
    procedure LoadFromDataset; overload;
    procedure LoadFromDataset(aMainDataset: TDataset; aDatasets: TArray<TDataset>); overload;
    procedure SaveToDataset; overload;
    procedure SaveToDataset(aDataset: TDataset); overload;
    procedure SaveToDataset(aDataset: TDataset; aDatasets: TArray<TDataset>); overload;
    procedure WriteToJsonObject(aJsonObject: TJsonObject);
    procedure ReadFromJsonObject(aJsonObject: TJsonObject; aFree: boolean = False);
    procedure SetFromJsonObject(aJsonObject: TJsonObject; aFree: boolean = False);
    procedure ReadFromJson(aJson: string);
    function ToJson: string;
    function ToJsonPretty: string;
    function FieldCount: integer;
    function RecordCount: integer;
    // Dataset Specific procedures and functions
    procedure Append; overload;
    procedure Append(aObject: TJsonObject); overload;
    procedure Append(const aRecord:  IJanuaRecord); overload;
    procedure Delete;
    procedure Post;
    function Bof: boolean;
    function Eof: boolean;
    procedure Next;
    procedure Prev;
    procedure First;
    procedure Last;
    procedure Clear;
    function SearchByGUID(aGUID: TGUID): boolean;
  private
    // Modified
    function GetModified: boolean;
    procedure SetModified(Value: boolean);
    // Record
    function GetCurrentRecord: IJanuaRecord;
    procedure SetCurrentRecord(const Value: IJanuaRecord);
    // funzione As Json Object in entrata ed in uscita ....................
    procedure SetAsJsonObject(const Value: TJsonObject);
    function GetAsJsonObject: TJsonObject;
    // On Scroll Event (avviato anche da NewRecord ecc ecc ................
    function GetOnScroll: TNotifyEvent;
    procedure SetOnScroll(Value: TNotifyEvent);
    // GUID
    function GetActualGUID: TGUID;
    procedure SetActualGUID(const Value: TGUID);
    procedure UpdateIndexGUID(const aOld, aNew: TGUID);
    // Datase
  public
    // DataSet
    function GetDataset: TDataset;
    procedure SetDataset(const Value: TDataset);
  public
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
  public
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    property ItemIndex: integer read GetItemIndex write SetItemIndex;
    property Name: string read GetName write SetName;
    property Dataset: TDataset read GetDataset write SetDataset;
    property ActualGUID: TGUID read GetActualGUID write SetActualGUID;
  public // serialization deserialization - Serializaiton Must Be Compatible ..........................................
    procedure WriteToSerialization(aSerialization: ISetSerialization);
    procedure ReadFromSerialization(aSerialization: ISetSerialization);
    property OnScroll: TNotifyEvent read GetOnScroll write SetOnScroll;
    property Modified: boolean read GetModified write SetModified;
    // Storage Management .........................................................................................
  private
    function GetDelRecords: IList<IJanuaRecord>;
    procedure SetDelRecords(const Value: IList<IJanuaRecord>);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    procedure LoadRecordSet(aRecordSet: IJanuaRecordSet);
    procedure RefreshFromRecodrdSet(aRecordSet: IJanuaRecordSet; bRemote: boolean);
    procedure LoadFromStorage(aStorage: IJanuaRecordSetStorage);
  public
    function IsLocalUpdated: boolean;
    function IsRemoteUpdated: boolean;
    procedure Assign(aRecordSet: IJanuaRecordSet);
    procedure ApplyRemoteUpdates;
    procedure LoadFromLocalStorage;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromRemoteStorage; // procedura che in parallelo carica i dati dal Remote Storage.
    procedure ApplyLocalUpdates; // procedura che in parallelo carica i dati dal Local Storage.
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    // procedura che in parallelo carica i dati dal Remote Storage.
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    property DelRecords: IList<IJanuaRecord> read GetDelRecords write SetDelRecords;
  end;

type
  TJanuaStorage = class
  strict private
    FKeepAlive: boolean;
  strict protected
    procedure InternalCreateDataset; Virtual; Abstract;
    procedure InternalDestroyDataset; Virtual; Abstract;
    function GetKeepAlive: boolean;
    procedure SetKeepAlive(const Value: boolean);
  public
    constructor Create; overload;
    procedure CreateDataset;
    procedure DestroyDataset;
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;
  end;

type
  TJanuaDatasetStorage = class(TInterfacedObject)
  strict private
    FMaxRecords: integer;
    FParameters: TJanuaFields;
    FKeepAlive: boolean;
    FOnUpdateError: TNotifyEvent;
    FOnUpdateSuccess: TNotifyEvent;
    procedure SetKeepAlive(const Value: boolean);
    function GetKeepAlive: boolean;
  strict protected
    FStorage: TJanuaStorage;
    FRecordSet: IJanuaRecordSet;
    procedure InternalAssignDatasets; Virtual; Abstract;
    procedure AddParam(aParam: IJanuaField);
  public
    Constructor Create(aRecordSetModel: IJanuaRecordSet);
    function ApplyUpdates(aRecordSet: IJanuaRecordSet): boolean;
    procedure AsyncApplyUpdates(aRecordSet: IJanuaRecordSet);
  protected
    function GetUpdatedRecordSet: IJanuaRecordSet;
    function GetOnUpdateSuccess: TNotifyEvent;
    procedure SetOnUpdateSuccess(const Value: TNotifyEvent);
    /// <summary>
    /// Property On Update Success is Triggered after a Successfull update on Remote Database
    /// </summary>
    property OnUpdateSuccess: TNotifyEvent read GetOnUpdateSuccess write SetOnUpdateSuccess;
    function GetOnUpdateError: TNotifyEvent;
    procedure SetOnUpdateError(const Value: TNotifyEvent);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    function GetMaxRecords: integer;
    procedure SetMaxRecords(const Value: integer);
    function LoadData: boolean;
    procedure AsyncLoadData;
    function ParamByName(aName: string): IJanuaField;
  public
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    property OnUpdateError: TNotifyEvent read GetOnUpdateError write SetOnUpdateError;
    property UpdatedRecordSet: IJanuaRecordSet read GetUpdatedRecordSet;
    property MaxRecords: integer read GetMaxRecords Write SetMaxRecords;
    property KeepAlive: boolean read GetKeepAlive write SetKeepAlive;
  end;

type
  TJanuaOrmFactory = class
  protected
    class function CreateRecord: IJanuaRecord; overload;
  public
    class function CreateExtentedField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateIntegerField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateSmallintField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateLageIntField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateDoubleField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateCurrencyCField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateBoolField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateStringField(aKey, aField: string; aIsMonitored: boolean = False): IJanuaField;
    class function CreateDateTimeField(aKey, aField: string; aDateTime: TDateTime = 0.0;
      aIsMonitored: boolean = False): IJanuaField;
    // TJanuaRecord = class(TInterfacedObject, IJanuaRecord)
    class function CreateRecord(aName: string): IJanuaRecord; overload;
    class function CreateRecordset(const aName: string; aRecord: IJanuaRecord): IJanuaRecordSet; overload;
    // Create Serialization .....
    class function CreateRecordSerialization(const aRecord:  IJanuaRecord): IRecSerialization;
  end;

implementation

uses
  // System
  System.Math, Spring, System.StrUtils, System.DateUtils, System.Types,
  // OS specific
{$IFDEF MACOS} Macapi.CoreFoundation, {$ENDIF}
  // Third Party Libs
  Delphi.Mocks.Helpers, AsyncTask,
  // Janua Framework
  Janua.Core.Functions;

{ TJanuaOrmFactory }

class function TJanuaOrmFactory.CreateBoolField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaBooleanField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateCurrencyCField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaCurrencyField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateDateTimeField(aKey, aField: string; aDateTime: TDateTime = 0.0;
  aIsMonitored: boolean = False): IJanuaField;
begin
  Result := TJanuaDateTimeField.Create(aKey.ToLower, aField.ToLower, aDateTime, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateDoubleField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaDoubleField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateExtentedField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaExtendedField.Create(aKey.ToLower, aField.ToLower, aIsMonitored);
end;

class function TJanuaOrmFactory.CreateIntegerField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaIntegerField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateLageIntField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaLargeIntField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateRecord: IJanuaRecord;
begin
  // IJanuaRecord
  // TJanuaRecord = class(TInterfacedObject, IJanuaRecord)
  Result := TJanuaRecord.Create;
end;

class function TJanuaOrmFactory.CreateRecord(aName: string): IJanuaRecord;
begin
  Result := self.CreateRecord;
  Result.Name := aName
end;

class function TJanuaOrmFactory.CreateRecordSerialization(const aRecord:  IJanuaRecord): IRecSerialization;
begin
  Result := TJanuaRecSerialization.Create(aRecord);
end;

class function TJanuaOrmFactory.CreateRecordset(const aName: string; aRecord: IJanuaRecord): IJanuaRecordSet;
begin
  Result := TJanuaRecordSet.Create(aName, nil, nil);
  Result.SetRecord(aRecord);
end;

class function TJanuaOrmFactory.CreateSmallintField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaSmallIntField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

class function TJanuaOrmFactory.CreateStringField(aKey, aField: string; aIsMonitored: boolean = False)
  : IJanuaField;
begin
  Result := TJanuaStringField.Create(aKey.ToLower, aField.ToLower, aIsMonitored)
end;

{ TJanuaIntegerField }

constructor TJanuaIntegerField.Create;
begin
  inherited;

end;

procedure TJanuaIntegerField.Clear;
begin
  self.FInternalValue := 0
end;

constructor TJanuaIntegerField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptInteger, aIsMonitored)
end;

procedure TJanuaIntegerField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaIntegerField.getAsBoolean: boolean;
begin
  Result := not self.FInternalValue = 0
end;

function TJanuaIntegerField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaIntegerField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue.ToDouble
end;

function TJanuaIntegerField.getAsFloat: Extended;
begin
  Result := self.FInternalValue.ToExtended
end;

function TJanuaIntegerField.getAsInteger: integer;
begin
  Result := self.FInternalValue
end;

function TJanuaIntegerField.getAsLargeInt: Int64;
begin
  Result := self.FInternalValue
end;

function TJanuaIntegerField.getAsString: String;
begin
  Result := self.FInternalValue.ToString
end;

function TJanuaIntegerField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(self.FInternalValue.ToString);
end;

function TJanuaIntegerField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaIntegerField.GetDefault: TValue;
begin
  Result := TValue(self.FDefaultValue)
end;

function TJanuaIntegerField.GetJson: string;
begin
  Janua.Core.Json.JsonPair(self.Key, self.FInternalValue).ToJson
end;

function TJanuaIntegerField.GetJsonPair: TJsonPair;
begin
  Result := JsonPair(self.Key, self.FInternalValue);
end;

function TJanuaIntegerField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(self.FInternalValue)
end;

function TJanuaIntegerField.GetModified: boolean;
begin
  Result := self.FFInternalValue <> self.FOldValue
end;

function TJanuaIntegerField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaIntegerField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaIntegerField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: integer;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaIntegerField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1, 0);
end;

procedure TJanuaIntegerField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Round(Value)
end;

procedure TJanuaIntegerField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Trunc(Value)
end;

procedure TJanuaIntegerField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Round(Value);
end;

procedure TJanuaIntegerField.setAsInteger(const Value: integer);
begin
  FInternalValue := Value;
end;

procedure TJanuaIntegerField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;
end;

procedure TJanuaIntegerField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := IfThen(Value <= High(integer), Value, High(integer));
end;

procedure TJanuaIntegerField.setAsString(const aValue: String);
begin
  Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue), 'TJanuaIntegerField error string is not numeric');
  self.FInternalValue := System.SysUtils.StrToInt(aValue)
end;

procedure TJanuaIntegerField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaIntegerField.SetDefault(Value: TValue);
begin
  self.FInternalValue := Value.AsInteger
end;

procedure TJanuaIntegerField.SetFInternalValue(const Value: integer);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaIntegerField.SetJson(Value: string);
begin

end;

procedure TJanuaIntegerField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaIntegerField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaIntegerField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaIntegerField.setValue(const Value: TValue);
begin
  self.FInternalValue := Value.AsInteger
end;

procedure TJanuaIntegerField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsInteger
end;

procedure TJanuaIntegerField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaLargeIntField }

constructor TJanuaLargeIntField.Create;
begin
  inherited;
  self.FDefaultValue := 0;
  self.FInternalValue := 0;
end;

procedure TJanuaLargeIntField.Clear;
begin
  self.FInternalValue := 0
end;

constructor TJanuaLargeIntField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptInteger, aIsMonitored)
end;

procedure TJanuaLargeIntField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaLargeIntField.getAsBoolean: boolean;
begin
  Result := not self.FInternalValue = 0
end;

function TJanuaLargeIntField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaLargeIntField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue.ToDouble
end;

function TJanuaLargeIntField.getAsFloat: Extended;
begin
  Result := self.FInternalValue.ToExtended
end;

function TJanuaLargeIntField.getAsInteger: integer;
begin
  Result := self.FInternalValue
end;

function TJanuaLargeIntField.getAsLargeInt: Int64;
begin
  Result := self.FInternalValue
end;

function TJanuaLargeIntField.getAsString: String;
begin
  Result := self.FInternalValue.ToString
end;

function TJanuaLargeIntField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(self.FInternalValue.ToString);
end;

function TJanuaLargeIntField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaLargeIntField.GetDefault: TValue;
begin
  Result := TValue(self.FDefaultValue)
end;

function TJanuaLargeIntField.GetJson: string;
begin
  Janua.Core.Json.JsonPair(self.Key, self.FInternalValue).ToJson
end;

function TJanuaLargeIntField.GetJsonPair: TJsonPair;
begin
  Result := JsonPair(self.Key, self.FInternalValue);
end;

function TJanuaLargeIntField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(self.FInternalValue)
end;

function TJanuaLargeIntField.GetModified: boolean;
begin
  Result := self.FOldValue <> self.FFInternalValue
end;

function TJanuaLargeIntField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaLargeIntField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaLargeIntField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: Int64;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaLargeIntField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1, 0);
end;

procedure TJanuaLargeIntField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Round(Value)
end;

procedure TJanuaLargeIntField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Trunc(Value)
end;

procedure TJanuaLargeIntField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Round(Value);
end;

procedure TJanuaLargeIntField.setAsInteger(const Value: integer);
begin
  FInternalValue := Value;
end;

procedure TJanuaLargeIntField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;
end;

procedure TJanuaLargeIntField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := IfThen(Value <= High(integer), Value, High(integer));
end;

procedure TJanuaLargeIntField.setAsString(const aValue: String);
begin
  if aValue = '' then
    FInternalValue := 0
  else
  begin
    Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue),
      'TJanuaLargeIntField error string is not numeric: ' + self.DBField + ' = ' + aValue);
    FInternalValue := System.SysUtils.StrToInt(aValue)
  end;
end;

procedure TJanuaLargeIntField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaLargeIntField.SetDefault(Value: TValue);
begin
  self.FInternalValue := Value.AsInteger
end;

procedure TJanuaLargeIntField.SetFInternalValue(const Value: Int64);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
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

procedure TJanuaLargeIntField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaLargeIntField.setValue(const Value: TValue);
begin
  self.FInternalValue := Value.AsInteger
end;

procedure TJanuaLargeIntField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsInt64
end;

procedure TJanuaLargeIntField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaSmallintField }

constructor TJanuaSmallIntField.Create;
begin
  inherited;
  self.FInternalValue := 0;
  self.FDefaultValue := 0;
end;

procedure TJanuaSmallIntField.Clear;
begin
  self.FInternalValue := 0
end;

constructor TJanuaSmallIntField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptInteger, aIsMonitored)
end;

procedure TJanuaSmallIntField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaSmallIntField.getAsBoolean: boolean;
begin
  Result := not self.FInternalValue = 0
end;

function TJanuaSmallIntField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaSmallIntField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue.ToDouble
end;

function TJanuaSmallIntField.getAsFloat: Extended;
begin
  Result := self.FInternalValue.ToExtended
end;

function TJanuaSmallIntField.getAsInteger: integer;
begin
  Result := self.FInternalValue
end;

function TJanuaSmallIntField.getAsLargeInt: Int64;
begin
  Result := self.FInternalValue
end;

function TJanuaSmallIntField.getAsString: String;
begin
  Result := self.FInternalValue.ToString
end;

function TJanuaSmallIntField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(self.FInternalValue.ToString);
end;

function TJanuaSmallIntField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaSmallIntField.GetDefault: TValue;
begin
  Result := TValue(self.FDefaultValue)
end;

function TJanuaSmallIntField.GetJson: string;
begin
  Janua.Core.Json.JsonPair(self.Key, self.FInternalValue).ToJson
end;

function TJanuaSmallIntField.GetJsonPair: TJsonPair;
begin
  Result := JsonPair(self.Key, self.FInternalValue);
end;

function TJanuaSmallIntField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(self.FInternalValue)
end;

function TJanuaSmallIntField.GetModified: boolean;
begin
  Result := self.FOldValue <> self.FFInternalValue
end;

function TJanuaSmallIntField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaSmallIntField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaSmallIntField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: smallint;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaSmallIntField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1, 0);
end;

procedure TJanuaSmallIntField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Round(Value)
end;

procedure TJanuaSmallIntField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Trunc(Value)
end;

procedure TJanuaSmallIntField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Round(Value);
end;

procedure TJanuaSmallIntField.setAsInteger(const Value: integer);
begin
  FInternalValue := Value;
end;

procedure TJanuaSmallIntField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;
end;

procedure TJanuaSmallIntField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := IfThen(Value <= High(integer), Value, High(integer));
end;

procedure TJanuaSmallIntField.setAsString(const aValue: String);
begin
  Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue), 'TJanuaIntegerField error string is not numeric');
  self.FInternalValue := System.SysUtils.StrToInt(aValue)
end;

procedure TJanuaSmallIntField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaSmallIntField.SetDefault(Value: TValue);
begin
  self.FInternalValue := Value.AsInteger
end;

procedure TJanuaSmallIntField.SetFInternalValue(const Value: smallint);
begin
  if FFInternalValue <> Value then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaSmallIntField.SetJson(Value: string);
begin

end;

procedure TJanuaSmallIntField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaSmallIntField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaSmallIntField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaSmallIntField.setValue(const Value: TValue);
begin
  self.FInternalValue := Value.AsInteger
end;

procedure TJanuaSmallIntField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsInteger
end;

procedure TJanuaSmallIntField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaCustomField }

constructor TJanuaCustomField.Create;
begin
  FIsSet := False; // boolean;
  FMaxLength := 0; // integer;
  FPrecision := 0; // smallint;
  FMinLength := 0; // smallint;
  FMandatory := False; // boolean;
  FIsMonitored := False; // By Default a Field is not monitored and does not trigger any Event
end;

constructor TJanuaCustomField.Create(aKey, aField: string; aFieldType: TJanuaFieldType;
  aIsMonitored: boolean = False);
begin
  self.Create;
  self.SetKey(aKey);
  self.SetDBField(aField);
  self.SetFieldType(aFieldType);
  FIsMonitored := aIsMonitored; // By Default a Field is not monitored and does not trigger any Event
end;

function TJanuaCustomField.GeIsReadOnly: boolean;
begin
  Result := self.FIsReadOnly
end;

function TJanuaCustomField.GetAsJsonMetadata: TJsonObject;
begin
  Result := TJsonObject.Create;
  JsonPair(Result, 'key', self.FKey);
  JsonPair(Result, 'dbfield', self.FDBField);

end;

function TJanuaCustomField.GetCalculated: boolean;
begin
  Result := self.FCalculated
end;

function TJanuaCustomField.GetDBField: string;
begin
  Result := self.FDBField
end;

function TJanuaCustomField.GetFieldType: TJanuaFieldType;
begin
  Result := self.FFieldType
end;

function TJanuaCustomField.GetIsMonitored: boolean;
begin
  Result := self.FIsMonitored;
end;

function TJanuaCustomField.GetKey: string;
begin
  Result := self.FKey
end;

function TJanuaCustomField.GetMaxLength: integer;
begin
  Result := self.FMaxLength
end;

function TJanuaCustomField.GetMinLength: smallint;
begin
  Result := self.FMinLength
end;

function TJanuaCustomField.GetOnDataChange: TFieldChangeEvent;
begin
  Result := self.FOnDataChange
end;

function TJanuaCustomField.GetPrecision: smallint;
begin
  Result := self.FPrecision
end;

procedure TJanuaCustomField.ReadFromDataset(aDataset: TDataset);
var
  aField: TField;
begin
  if not self.FCalculated then
  begin
    aField := GetFieldByName(aDataset, self.DBField, False);
    if aField <> nil then
    begin
      self.SetAsVariant(aField.Value);
    end;
  end;
end;

procedure TJanuaCustomField.SetAsJsonMetadata(const Value: TJsonObject);
begin

end;

procedure TJanuaCustomField.SetCalculated(Value: boolean);
begin
  self.FCalculated := Value
end;

procedure TJanuaCustomField.SetDBField(const Value: string);
begin
  self.FDBField := Value
end;

procedure TJanuaCustomField.SetFieldType(const Value: TJanuaFieldType);
begin
  self.FFieldType := Value;
end;

procedure TJanuaCustomField.SetIsMonitored(const Value: boolean);
begin
  FIsMonitored := Value;
end;

procedure TJanuaCustomField.SetIsReadOnly(Value: boolean);
begin
  self.FIsReadOnly := Value
end;

procedure TJanuaCustomField.SetKey(const Value: string);
begin
  FKey := Value.ToLower
end;

procedure TJanuaCustomField.SetMaxLength(const Value: integer);
begin
  self.FMaxLength := Value;
end;

procedure TJanuaCustomField.SetMinLength(const Value: smallint);
begin
  self.FMinLength := Value;
end;

procedure TJanuaCustomField.SetOnDataChage(const Value: TFieldChangeEvent);
begin
  self.FOnDataChange := Value;
end;

procedure TJanuaCustomField.SetPrecision(const Value: smallint);
begin
  self.FPrecision := Value;
end;

procedure TJanuaCustomField.WriteToDataset(aDataset: TDataset);
var
  aField: TField;
begin
  if not(FCalculated or FIsReadOnly) then
  begin
    aField := GetFieldByName(aDataset, self.DBField, False);
    if aField <> nil then
    begin
      aField.Value := self.GetAsVariant
    end;
  end;
end;

{ TJanuaStringField }

constructor TJanuaStringField.Create;
begin
  inherited;
  self.FInternalValue := '';
  self.FDefaultValue := '';
end;

procedure TJanuaStringField.Clear;
begin
  self.FInternalValue := ''
end;

constructor TJanuaStringField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptString, aIsMonitored)
end;

procedure TJanuaStringField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaStringField.getAsBoolean: boolean;
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
  if TryStrToCurr(self.FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0.0;

end;

function TJanuaStringField.getAsDateTime: TDateTime;
begin
  if Length(self.FInternalValue) > 0 then
    Result := System.DateUtils.ISO8601ToDate(self.FInternalValue)
  else
    Result := 0.0;
  // poi vedo come gestire il TDateTime .................................
end;

function TJanuaStringField.getAsFloat: Extended;
var
  tmp: Double;
begin
  tmp := 0.0;
  if TryStrToFloat(self.FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0.0;
end;

function TJanuaStringField.getAsInteger: integer;
var
  tmp: integer;
begin
  tmp := 0;
  if TryStrToInt(self.FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0;
end;

function TJanuaStringField.getAsLargeInt: Int64;
var
  tmp: Int64;
begin
  tmp := 0;
  if TryStrToInt64(self.FInternalValue, tmp) then
    Result := tmp
  else
    Result := 0;
end;

function TJanuaStringField.getAsString: String;
begin
  Result := self.FInternalValue
end;

function TJanuaStringField.getAsUTF8Bytes: TBytes;
begin
  Result := TEncoding.UTF8.GetBytes(self.FInternalValue);
end;

function TJanuaStringField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue;
end;

function TJanuaStringField.GetDefault: TValue;
begin
  Result := self.FDefaultValue
end;

function TJanuaStringField.GetJson: string;
begin
  Result := self.GetJsonPair.ToJson
end;

function TJanuaStringField.GetJsonPair: TJsonPair;
begin
  Result := Janua.Core.Json.JsonPair(self.Key, self.FInternalValue)
end;

function TJanuaStringField.GetJsonValue: TJsonValue;
begin
  Result := TJSONString.Create(self.FInternalValue);
end;

function TJanuaStringField.GetModified: boolean;
begin
  Result := self.FOldValue <> self.FFInternalValue
end;

function TJanuaStringField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaStringField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue);
end;

procedure TJanuaStringField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: string;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaStringField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 'true', 'false');
end;

procedure TJanuaStringField.setAsCurrency(const Value: Currency);
begin
  FInternalValue := CurrToStr(Value)
end;

procedure TJanuaStringField.setAsDateTime(const Value: TDateTime);
begin
  self.Value := DateToISO8601(Value)
end;

procedure TJanuaStringField.setAsFloat(const Value: Extended);
begin
  FInternalValue := Value.ToString
end;

procedure TJanuaStringField.setAsInteger(const Value: integer);
begin
  FInternalValue := Value.ToString
end;

procedure TJanuaStringField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;

end;

procedure TJanuaStringField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := Value.ToString
end;

procedure TJanuaStringField.setAsString(const aValue: String);
begin
  FInternalValue := aValue
end;

procedure TJanuaStringField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaStringField.SetDefault(Value: TValue);
begin
  self.FDefaultValue := Value.ToString
end;

procedure TJanuaStringField.SetFInternalValue(const Value: string);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaStringField.SetJson(Value: string);
begin

end;

procedure TJanuaStringField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaStringField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaStringField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaStringField.setValue(const Value: TValue);
begin
  self.FInternalValue := Value.ToString
end;

procedure TJanuaStringField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsString
end;

procedure TJanuaStringField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaBooleanField }

constructor TJanuaBooleanField.Create;
begin
  inherited;
  self.FInternalValue := False;
  self.FDefaultValue := False;
end;

procedure TJanuaBooleanField.Clear;
begin
  self.FInternalValue := False;
end;

constructor TJanuaBooleanField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  self.Create(aKey, aField, TJanuaFieldType.jptBoolean, aIsMonitored)
end;

procedure TJanuaBooleanField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaBooleanField.getAsBoolean: boolean;
begin
  Result := self.FInternalValue
end;

function TJanuaBooleanField.getAsCurrency: Currency;
begin
  Result := IfThen(self.FInternalValue, 1.0, 0.0)
end;

function TJanuaBooleanField.getAsDateTime: TDateTime;
begin
  Result := IfThen(self.FInternalValue, 1.0, 0.0)
end;

function TJanuaBooleanField.getAsFloat: Extended;
begin
  Result := IfThen(self.FInternalValue, 1.0, 0.0)
end;

function TJanuaBooleanField.getAsInteger: integer;
begin
  Result := IfThen(self.FInternalValue, 1, 0)
end;

function TJanuaBooleanField.getAsLargeInt: Int64;
begin
  Result := IfThen(self.FInternalValue, 1, 0)
end;

function TJanuaBooleanField.getAsString: String;
begin
  Result := IfThen(self.FInternalValue, 'true', 'false')
end;

function TJanuaBooleanField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaBooleanField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaBooleanField.GetDefault: TValue;
begin
  Result := TValue(FInternalValue)
end;

function TJanuaBooleanField.GetJson: string;
begin

end;

function TJanuaBooleanField.GetJsonPair: TJsonPair;
begin
  Result := Janua.Core.Json.JsonPair(self.Key, self.FInternalValue)
end;

function TJanuaBooleanField.GetJsonValue: TJsonValue;
begin
  Result := TJsonBool.Create(self.FInternalValue)
end;

function TJanuaBooleanField.GetModified: boolean;
begin
  Result := self.FFInternalValue <> self.FOldValue
end;

function TJanuaBooleanField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaBooleanField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaBooleanField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: boolean;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaBooleanField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := Value
end;

procedure TJanuaBooleanField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := not(Value = 0.0)
end;

procedure TJanuaBooleanField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := not(Value = 0.0)
end;

procedure TJanuaBooleanField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := not(Value = 0.0)
end;

procedure TJanuaBooleanField.setAsInteger(const Value: integer);
begin
  self.FInternalValue := not(Value = 0)
end;

procedure TJanuaBooleanField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;

end;

procedure TJanuaBooleanField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := not(Value = 0.0)
end;

procedure TJanuaBooleanField.setAsString(const aValue: String);
begin
  self.FInternalValue := (aValue = 'true') or (aValue = '1')
end;

procedure TJanuaBooleanField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaBooleanField.SetDefault(Value: TValue);
begin
  self.FDefaultValue := Value.AsBoolean
end;

procedure TJanuaBooleanField.SetFInternalValue(const Value: boolean);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaBooleanField.SetJson(Value: string);
begin

end;

procedure TJanuaBooleanField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaBooleanField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaBooleanField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaBooleanField.setValue(const Value: TValue);
begin
  self.FInternalValue := (Value.AsBoolean)
end;

procedure TJanuaBooleanField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsBoolean
end;

procedure TJanuaBooleanField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaDateTimeField }

constructor TJanuaDateTimeField.Create;
begin
  inherited;
  self.FInternalValue := 0.0;
end;

procedure TJanuaDateTimeField.Clear;
begin
  self.FInternalValue := 0.0
end;

constructor TJanuaDateTimeField.Create(aKey, aField: string; aDefault: TDateTime;
  aIsMonitored: boolean = False);
begin
  self.Create(aKey, aField, TJanuaFieldType.jptDateTime, aIsMonitored);
  self.FDefaultValue := aDefault;
end;

procedure TJanuaDateTimeField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaDateTimeField.getAsBoolean: boolean;
begin
  Result := self.FInternalValue <> 0.0;
end;

function TJanuaDateTimeField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaDateTimeField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue
end;

function TJanuaDateTimeField.getAsFloat: Extended;
begin
  Result := self.FInternalValue
end;

function TJanuaDateTimeField.getAsInteger: integer;
begin
  Result := Trunc(self.FInternalValue)
end;

function TJanuaDateTimeField.getAsLargeInt: Int64;
begin
  Result := Trunc(self.FInternalValue)
end;

function TJanuaDateTimeField.getAsString: String;
begin
  Result := DateToISO8601(FInternalValue)
end;

function TJanuaDateTimeField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaDateTimeField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaDateTimeField.GetDefault: TValue;
begin
  Result := TValue(self.FDefaultValue)
end;

function TJanuaDateTimeField.GetJson: string;
begin

end;

function TJanuaDateTimeField.GetJsonPair: TJsonPair;
begin

end;

function TJanuaDateTimeField.GetJsonValue: TJsonValue;
begin

end;

function TJanuaDateTimeField.GetModified: boolean;
begin
  Result := self.FOldValue <> self.FFInternalValue
end;

function TJanuaDateTimeField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaDateTimeField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaDateTimeField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: TDateTime;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaDateTimeField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1, 0)
end;

procedure TJanuaDateTimeField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDateTimeField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDateTimeField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDateTimeField.setAsInteger(const Value: integer);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDateTimeField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;

end;

procedure TJanuaDateTimeField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDateTimeField.setAsString(const aValue: String);
begin
  if Length(aValue) > 0 then
    FInternalValue := System.DateUtils.ISO8601ToDate(aValue)
  else
    FInternalValue := 0.0;
end;

procedure TJanuaDateTimeField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDateTimeField.SetDefault(Value: TValue);
begin
  self.FDefaultValue := Value.AsDouble
end;

procedure TJanuaDateTimeField.SetFInternalValue(const Value: TDateTime);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaDateTimeField.SetJson(Value: string);
begin

end;

procedure TJanuaDateTimeField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaDateTimeField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaDateTimeField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaDateTimeField.setValue(const Value: TValue);
begin
  FInternalValue := Value.AsDouble
end;

procedure TJanuaDateTimeField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsDouble
end;

procedure TJanuaDateTimeField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaCurrencyField }

constructor TJanuaCurrencyField.Create;
begin
  inherited;
  self.FInternalValue := 0.0;
  self.FDefaultValue := 0.0;
end;

procedure TJanuaCurrencyField.Clear;
begin
  self.FInternalValue := 0.0
end;

constructor TJanuaCurrencyField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptCurrency, aIsMonitored)
end;

procedure TJanuaCurrencyField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaCurrencyField.getAsBoolean: boolean;
begin
  Result := not(self.FInternalValue = 0.0)
end;

function TJanuaCurrencyField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaCurrencyField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue
end;

function TJanuaCurrencyField.getAsFloat: Extended;
begin
  Result := self.FInternalValue
end;

function TJanuaCurrencyField.getAsInteger: integer;
begin
  Result := Round(self.FInternalValue)
end;

function TJanuaCurrencyField.getAsLargeInt: Int64;
begin
  Result := Round(self.FInternalValue)
end;

function TJanuaCurrencyField.getAsString: String;
begin
  Result := self.ToString
end;

function TJanuaCurrencyField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaCurrencyField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaCurrencyField.GetDefault: TValue;
begin
  Result := FDefaultValue
end;

function TJanuaCurrencyField.GetJson: string;
begin
  Result := self.GetJsonPair.ToJson
end;

function TJanuaCurrencyField.GetJsonPair: TJsonPair;
begin
  Result := Janua.Core.Json.JsonPair(self.Key, self.FInternalValue)
end;

function TJanuaCurrencyField.GetJsonValue: TJsonValue;
begin
  Result := TJsonNumber.Create(self.FInternalValue)
end;

function TJanuaCurrencyField.GetModified: boolean;
begin
  Result := self.FInternalValue <> self.FOldValue
end;

function TJanuaCurrencyField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaCurrencyField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaCurrencyField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: Currency;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaCurrencyField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1, 0)
end;

procedure TJanuaCurrencyField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Value
end;

procedure TJanuaCurrencyField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Value
end;

procedure TJanuaCurrencyField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Value
end;

procedure TJanuaCurrencyField.setAsInteger(const Value: integer);
begin
  self.FInternalValue := Value
end;

procedure TJanuaCurrencyField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;

end;

procedure TJanuaCurrencyField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := Value
end;

procedure TJanuaCurrencyField.setAsString(const aValue: String);
begin
  if Janua.Core.Functions.IsNumeric(aValue) then
    self.FInternalValue := StrToCurr(aValue);

end;

procedure TJanuaCurrencyField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaCurrencyField.SetDefault(Value: TValue);
begin
  FDefaultValue := Value.AsExtended
end;

procedure TJanuaCurrencyField.SetFInternalValue(const Value: Currency);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaCurrencyField.SetJson(Value: string);
begin

end;

procedure TJanuaCurrencyField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaCurrencyField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaCurrencyField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaCurrencyField.setValue(const Value: TValue);
begin
  self.FInternalValue := (Value.AsCurrency)
end;

procedure TJanuaCurrencyField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsCurrency
end;

procedure TJanuaCurrencyField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaDoubleField }

constructor TJanuaDoubleField.Create;
begin
  inherited;

end;

procedure TJanuaDoubleField.Clear;
begin
  self.FInternalValue := 0.0
end;

constructor TJanuaDoubleField.Create(aKey, aField: string; aIsMonitored: boolean = False);
begin
  Create(aKey, aField, TJanuaFieldType.jptFloat, aIsMonitored)
end;

procedure TJanuaDoubleField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaDoubleField.getAsBoolean: boolean;
begin
  Result := not(self.FInternalValue = 0.0)
end;

function TJanuaDoubleField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaDoubleField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue
end;

function TJanuaDoubleField.getAsFloat: Extended;
begin
  Result := self.FInternalValue
end;

function TJanuaDoubleField.getAsInteger: integer;
begin
  Result := Round(self.FInternalValue)
end;

function TJanuaDoubleField.getAsLargeInt: Int64;
begin
  Result := Round(self.FInternalValue)
end;

function TJanuaDoubleField.getAsString: String;
begin
  Result := self.FInternalValue.ToString
end;

function TJanuaDoubleField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaDoubleField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaDoubleField.GetDefault: TValue;
begin
  Result := TValue(self.FDefaultValue)
end;

function TJanuaDoubleField.GetJson: string;
begin

end;

function TJanuaDoubleField.GetJsonPair: TJsonPair;
begin

end;

function TJanuaDoubleField.GetJsonValue: TJsonValue;
begin

end;

function TJanuaDoubleField.GetModified: boolean;
begin
  Result := self.FInternalValue <> self.FDefaultValue;
end;

function TJanuaDoubleField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaDoubleField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue)
end;

procedure TJanuaDoubleField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: Double;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaDoubleField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1.0, 0.0);
end;

procedure TJanuaDoubleField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDoubleField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDoubleField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDoubleField.setAsInteger(const Value: integer);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDoubleField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;

end;

procedure TJanuaDoubleField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := Value
end;

procedure TJanuaDoubleField.setAsString(const aValue: String);
begin
  self.FInternalValue := StrToFloat(aValue);
end;

procedure TJanuaDoubleField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value;
end;

procedure TJanuaDoubleField.SetDefault(Value: TValue);
begin
  self.FDefaultValue := Value.AsDouble
end;

procedure TJanuaDoubleField.SetFInternalValue(const Value: Double);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaDoubleField.SetJson(Value: string);
begin

end;

procedure TJanuaDoubleField.SetJsonPair(Value: TJsonPair);
begin

end;

procedure TJanuaDoubleField.SetJsonValue(Value: TJsonValue);
begin

end;

procedure TJanuaDoubleField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaDoubleField.setValue(const Value: TValue);
begin
  FInternalValue := Value.AsDouble
end;

procedure TJanuaDoubleField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsDouble
end;

procedure TJanuaDoubleField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaExtendedField }

constructor TJanuaExtendedField.Create;
begin
  inherited;
  self.FInternalValue := 0.0;
  self.FDefaultValue := 0.0;
end;

procedure TJanuaExtendedField.Clear;
begin
  self.FInternalValue := 0.0
end;

constructor TJanuaExtendedField.Create(aKey, aFiedl: string; aIsMonitored: boolean = False);
begin
  self.Create(aKey, aFiedl, TJanuaFieldType.jptExtended, aIsMonitored)
end;

procedure TJanuaExtendedField.Default;
var
  t: boolean;
begin
  // la procedura imposta sia Internal Value che Default Value ma non lancia nessun evendo di modifica
  // potrebbe lanciare un Evento 'Modified' ma solo se effettivamente fosse stato modificato il Record.
  t := FInternalValue <> self.FDefaultValue;
  if t then
  begin
    self.FInternalValue := self.FDefaultValue;
    if Assigned(self.FOnDataChange) then
      self.FOnDataChange(self as IJanuaField);
  end;
  self.FOldValue := self.FInternalValue;
end;

function TJanuaExtendedField.getAsBoolean: boolean;
begin
  Result := not(self.FInternalValue = 0.0)
end;

function TJanuaExtendedField.getAsCurrency: Currency;
begin
  Result := self.FInternalValue
end;

function TJanuaExtendedField.getAsDateTime: TDateTime;
begin
  Result := self.FInternalValue
end;

function TJanuaExtendedField.getAsFloat: Extended;
begin
  Result := self.FInternalValue
end;

function TJanuaExtendedField.getAsInteger: integer;
begin
  Result := Round(self.FInternalValue)
end;

function TJanuaExtendedField.getAsLargeInt: Int64;
begin
  Result := Round(self.FInternalValue)
end;

function TJanuaExtendedField.getAsString: String;
begin
  Result := self.FInternalValue.ToString
end;

function TJanuaExtendedField.getAsUTF8Bytes: TBytes;
begin

end;

function TJanuaExtendedField.GetAsVariant: Variant;
begin
  Result := self.FInternalValue
end;

function TJanuaExtendedField.GetDefault: TValue;
begin
  Result := self.FInternalValue
end;

function TJanuaExtendedField.GetJson: string;
begin

end;

function TJanuaExtendedField.GetJsonPair: TJsonPair;
begin

end;

function TJanuaExtendedField.GetJsonValue: TJsonValue;
begin

end;

function TJanuaExtendedField.GetModified: boolean;
begin
  Result := self.FOldValue <> self.FFInternalValue
end;

function TJanuaExtendedField.GetOldValue: TValue;
begin
  Result := TValue(self.FOldValue)
end;

function TJanuaExtendedField.getValue: TValue;
begin
  Result := TValue(self.FInternalValue);
end;

procedure TJanuaExtendedField.ReadJsonValue(aJsonObject: TJsonObject);
var
  temp: Extended;
begin
  Janua.Core.Json.JsonValue(aJsonObject, self.Key, temp);
  self.FInternalValue := temp;
end;

procedure TJanuaExtendedField.setAsBoolean(const Value: boolean);
begin
  self.FInternalValue := IfThen(Value, 1.0, 0.0)
end;

procedure TJanuaExtendedField.setAsCurrency(const Value: Currency);
begin
  self.FInternalValue := Value
end;

procedure TJanuaExtendedField.setAsDateTime(const Value: TDateTime);
begin
  self.FInternalValue := Value
end;

procedure TJanuaExtendedField.setAsFloat(const Value: Extended);
begin
  self.FInternalValue := Value
end;

procedure TJanuaExtendedField.setAsInteger(const Value: integer);
begin
  self.FInternalValue := Value
end;

procedure TJanuaExtendedField.SetAsJsonMetadata(const Value: TJsonObject);
begin
  inherited;

end;

procedure TJanuaExtendedField.setAsLargeInt(const Value: Int64);
begin
  self.FInternalValue := Value
end;

procedure TJanuaExtendedField.setAsString(const aValue: String);
begin
  Guard.CheckTrue(Janua.Core.Functions.IsNumeric(aValue), 'TJanuaIntegerField error string is not numeric');
  self.FInternalValue := System.SysUtils.StrToFloat(aValue)

end;

procedure TJanuaExtendedField.SetAsVariant(const Value: Variant);
begin
  self.FInternalValue := Value
end;

procedure TJanuaExtendedField.SetDefault(Value: TValue);
begin
  self.FDefaultValue := Value.AsExtended
end;

procedure TJanuaExtendedField.SetFInternalValue(const Value: Extended);
begin
  if Value <> self.FFInternalValue then
  begin
    FFInternalValue := Value;
    if self.IsMonitored and Assigned(self.OnDataChange) then
      self.OnDataChange(self as IJanuaField);
  end;
end;

procedure TJanuaExtendedField.SetJson(Value: string);
begin

end;

procedure TJanuaExtendedField.SetJsonPair(Value: TJsonPair);
begin
  self.FInternalValue := Value.JsonValue.Value.ToExtended
end;

procedure TJanuaExtendedField.SetJsonValue(Value: TJsonValue);
begin
  self.FInternalValue := Value.Value.ToExtended
end;

procedure TJanuaExtendedField.SetModified(const Value: boolean);
begin
  if (not Value) and self.GetModified then
    self.FOldValue := FFInternalValue
end;

procedure TJanuaExtendedField.setValue(const Value: TValue);
begin
  self.FInternalValue := Value.AsExtended
end;

procedure TJanuaExtendedField.SetValues(const aActualValue, aOldValue: TValue);
begin
  self.setValue(aActualValue);
  self.FOldValue := aOldValue.AsExtended
end;

procedure TJanuaExtendedField.WriteJsonValue(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Key, self.FInternalValue)
end;

{ TJanuaRecordSet }

procedure TJanuaRecordSet.Append;
begin
  FDataSet.AddRecord(self.FRecord.NewRecord);
  self.FRecord.ItemIndex := self.FDataSet.ItemIndex;
  self.FRecord.DoCalcFields;
  self.FGUIDIndex.AddOrSetValue(self.FRecord.GUID, self.FRecord.ItemIndex);
end;

procedure TJanuaRecordSet.Append(aObject: TJsonObject);
begin
  self.Append;
  self.CurrentRecord.AsJsonObject := aObject;
  self.Post;
end;

procedure TJanuaRecordSet.Append(const aRecord:  IJanuaRecord);
begin
  self.Append;
  FRecord.ReadRecord(aRecord.RecordValue);
  // aRecord.WriteRecord(self.FDataSet.CurrentRecord);
  // self.FRecord.ReadRecord(self.FDataSet.CurrentRecord);
  self.Post;
end;

procedure TJanuaRecordSet.ApplyLocalUpdates;
begin
  if Assigned(self.FLocalStorage) then
    if self.FLocalStorage.ApplyUpdates(self as IJanuaRecordSet) then
      self.RefreshFromRecodrdSet(FLocalStorage.UpdatedRecordSet, False);
end;

procedure TJanuaRecordSet.UpdateCurrentRecord;
begin
  if self.FDataSet.ItemIndex > -1 then
    FRecord.ReadRecord(self.FDataSet.CurrentRecord)
  else
    self.FRecord.Clear;
end;

procedure TJanuaRecordSet.ApplyRemoteUpdates;
begin
  if not IsRemoteUpdated then
    if Assigned(self.FRemoteStorage) then
      if FLocalStorage.ApplyUpdates(self as IJanuaRecordSet) then
        RefreshFromRecodrdSet(FLocalStorage.UpdatedRecordSet, False);
end;

procedure TJanuaRecordSet.Assign(aRecordSet: IJanuaRecordSet);
begin
  LoadRecordSet(aRecordSet);
end;

function TJanuaRecordSet.Bof: boolean;
begin
  Result := self.FDataSet.ItemIndex <= 0; // self.FDataSet.RecordCount
end;

constructor TJanuaRecordSet.Create;
begin
  FDataSet := TJanuaSetSerialization.Create;
  FDelRecords := TCollections.CreateList<IJanuaRecord>;
  self.FParams := TCollections.CreateList<IJanuaField>;
  FGUIDIndex := Spring.Collections.TCollections.CreateDictionary<TGUID, integer>;
  self.FEOF := True;
end;

procedure TJanuaRecordSet.Clear;
begin
  self.FDataSet.Clear;
  self.FRecord.Clear;
end;

constructor TJanuaRecordSet.Create(const aName: string; const  aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage);
begin
  self.Create;
  self.FName := aName;
  self.FLocalStorage := aLocalStorage;
  self.FRemoteStorage := aRemoteStorage;
end;

procedure TJanuaRecordSet.Delete;
var
  i: integer;
begin
  // Mi memorizzo il Record Precedente...
  i := self.FDataSet.ItemIndex - 1;
  // se i fosse -1 andrei al Primo Record
  // se i fosse >= Pred(FDataset.Count) allora vado a Last
  self.FDataSet.DelCurrenRecord;
  self.CurrentRecord.Clear;
  UpdateCurrentRecord;
  self.FEOF := (FDataSet.RecordCount = 0);
end;

function TJanuaRecordSet.Eof: boolean;
begin
  Result := self.FEOF
  // self.FDataSet.ItemIndex = Pred(FDataSet.RecordCount)
end;

function TJanuaRecordSet.FieldCount: integer;
begin
  Result := self.FDataSet.RecordCount
end;

procedure TJanuaRecordSet.First;
begin
  FEOF := (FDataSet.RecordCount = 0);
  if not self.FEOF then
  begin
    FDataSet.ItemIndex := 0;
    UpdateCurrentRecord;
  end;
end;

function TJanuaRecordSet.GetActualGUID: TGUID;
begin
  Result := self.FRecord.GUID
end;

function TJanuaRecordSet.GetAsJsonObject: TJsonObject;
var
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'count', self.RecordCount);
  aArray := TJsonArray.Create;
  if self.RecordCount > 0 then
  begin
    self.First;
    while not self.Eof do
    begin
      aArray.AddElement(self.FRecord.AsJsonObject);
      self.Next
    end;
  end;
  Janua.Core.Json.JsonPair(Result, 'items', aArray);
end;

function TJanuaRecordSet.GetCurrentRecord: IJanuaRecord;
begin
  Result := self.FRecord
end;

function TJanuaRecordSet.GetDataset: TDataset;
begin
  Result := FRefDataSet
end;

function TJanuaRecordSet.GetDelRecords: IList<IJanuaRecord>;
begin
  Result := self.FDelRecords
end;

function TJanuaRecordSet.GetItemIndex: integer;
begin
  Result := self.FDataSet.ItemIndex
end;

function TJanuaRecordSet.GetModified: boolean;
begin
  self.First;
  Result := False;
  while not self.Eof do
  begin
    if self.CurrentRecord.Modified then
      Exit(True);
    self.Next;
  end;

end;

function TJanuaRecordSet.GetName: string;
begin
  Result := self.FName
end;

function TJanuaRecordSet.GetOnScroll: TNotifyEvent;
begin
  Result := self.FOnScroll;
end;

function TJanuaRecordSet.GetParameters: TJanuaFields;
begin
  Result := self.FParams
end;

function TJanuaRecordSet.IsLocalUpdated: boolean;
begin

end;

function TJanuaRecordSet.IsRemoteUpdated: boolean;
begin

end;

function TJanuaRecordSet.IsSetLocalStorage: boolean;
begin
  Result := Assigned(self.FLocalStorage)
end;

function TJanuaRecordSet.IsSetRemoteStorage: boolean;
begin
  Result := Assigned(self.FRemoteStorage);
end;

procedure TJanuaRecordSet.Last;
begin
  self.FEOF := FDataSet.RecordCount = 0;
  if not self.FEOF then
  begin
    FDataSet.ItemIndex := Pred(FDataSet.RecordCount);
    // self.FRecord.ReadRecord(self.FDataSet.CurrentRecord);
    UpdateCurrentRecord;
  end;
end;

procedure TJanuaRecordSet.LoadFromDataset;
begin
  Guard.CheckNotNull(FRecord, 'TJanuaRecordSet.LoadFromDataset FRecord is null');
  Guard.CheckNotNull(FRecord.StoreDataset, 'TJanuaRecordSet.LoadFromDataset FRecord.StoreDataset is null');
  try
    if FRecord.StoreDataset.Active and (FRecord.StoreDataset.RecordCount > 0) then
    begin
      FRecord.StoreDataset.First;
      while not FRecord.StoreDataset.Eof do
      begin
        self.Append;
        // avendo gi? impostato il Record allora posso eseguire il carico.
        self.FRecord.LoadFromDataset;
        self.Post;
        FRecord.StoreDataset.Next;
      end;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaRecordSet.LoadFromDataset: ' + e.Message);
  end;
end;

procedure TJanuaRecordSet.LoadFromDataset(aMainDataset: TDataset; aDatasets: TArray<TDataset>);
begin
  self.Clear;
  self.FRecord.StoreDataset := aMainDataset;
  self.FRecord.SetupDataset(aMainDataset, aDatasets);
  self.LoadFromDataset;
end;

procedure TJanuaRecordSet.LoadFromLocalStorage;
begin
  Guard.CheckNotNull(FRemoteStorage, 'TJanuaRecordSet.LoadFromRemoteStorage FLocalStorage is null');
  self.LoadFromStorage(self.FLocalStorage);
end;

procedure TJanuaRecordSet.LoadFromRemoteStorage;
begin
  Guard.CheckNotNull(FRemoteStorage, 'TJanuaRecordSet.LoadFromRemoteStorage FRemoteStorage is null');
  self.LoadFromStorage(self.FRemoteStorage);
end;

procedure TJanuaRecordSet.LoadFromStorage(aStorage: IJanuaRecordSetStorage);
var
  i, j, k: integer;
begin
  Guard.CheckNotNull(aStorage, 'TJanuaRecordSet.LoadFromStorage aStorage is null ');
  Guard.CheckNotNull(FParams, 'TJanuaRecordSet.LoadFromStorage FParams is null ');
  try
    if self.FParams.Count > 0 then
      for i := 0 to Pred(FParams.Count) do
        aStorage.ParamByName(FParams[i].DBField).Value := FParams[i].Value;
    Guard.CheckNotNull(aStorage.UpdatedRecordSet,
      'TJanuaRecordSet.LoadFromStorage FPaStorage.UpdatedRecordSet is null');
    if aStorage.LoadData then
    begin
      j := aStorage.UpdatedRecordSet.RecordCount;
      LoadRecordSet(aStorage.UpdatedRecordSet);
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaRecordSet.LoadFromStorage ' + e.Message);

  end;

end;

procedure TJanuaRecordSet.LoadRecordSet(aRecordSet: IJanuaRecordSet);
begin
  Guard.CheckNotNull(aRecordSet, 'TJanuaRecordSet.LoadRecordSet aRecordSet is null ');
  self.Clear;
  if aRecordSet.RecordCount > 0 then
  begin
    aRecordSet.First;
    while not aRecordSet.Eof do
    begin
      self.Append;
      self.CurrentRecord.Assign(aRecordSet.CurrentRecord);
      self.Post;
      aRecordSet.Next;
    end;
  end;
end;

procedure TJanuaRecordSet.Next;
begin
  self.FEOF := (FDataSet.RecordCount = 0) or (FDataSet.ItemIndex = Pred(self.FDataSet.RecordCount));
  if not self.Eof then
  begin
    FDataSet.ItemIndex := FDataSet.ItemIndex + 1;
    // FRecord.ReadRecord(self.FDataSet.CurrentRecord);
    UpdateCurrentRecord;
  end;
end;

procedure TJanuaRecordSet.Post;
begin
  Guard.CheckNotNull(self.FRecord, 'TJanuaRecordSet.Post Error FRecord is Null');
  if FDataSet.RecordCount > 0 then // Se ? stato fatto un Append allora ha un senso fare un post
  // se non ? stato fatto un Append allora FDataset ha RcordCount = 0;
  begin
    Guard.CheckNotNull(self.FDataSet.CurrentRecord,
      'TJanuaRecordSet.Post Error FDataSet.CurrentRecord is Null');
    if (FRecord.GUID <> System.Types.GUID_NULL) then
    begin
      Guard.CheckTrue(self.FDataSet.RecordCount > 0, 'TJanuaRecordSet.Post Error FDataSet.RecordCount = 0');
      FRecord.WriteRecord(self.FDataSet.CurrentRecord);
      if (FRecord.ItemIndex > -1) then
        self.FGUIDIndex.AddOrSetValue(FRecord.GUID, FRecord.ItemIndex);
      // Automatically Does a Post Action on all Sub-Records of the master Record
    end;
    // self.FRecord.ReadRecord(self.FDataSet.CurrentRecord);
  end;
end;

procedure TJanuaRecordSet.Prev;
begin
  if (self.FDataSet.RecordCount > 0) and not self.Bof then
    FDataSet.ItemIndex := FDataSet.ItemIndex - 1;
  UpdateCurrentRecord;
end;

procedure TJanuaRecordSet.ReadFromJson(aJson: string);
begin
  self.SetAsJsonObject(Janua.Core.Json.JsonParse(aJson));
end;

procedure TJanuaRecordSet.ReadFromJsonObject(aJsonObject: TJsonObject; aFree: boolean = False);
begin
  self.SetAsJsonObject(Janua.Core.Json.JsonObject(self.FName.ToLower, aJsonObject));
  if aFree then
    aJsonObject.Free;
end;

procedure TJanuaRecordSet.ReadFromSerialization(aSerialization: ISetSerialization);
var
  i: integer;
begin
  Guard.CheckNotNull(aSerialization, 'TJanuaRecordSet.WriteToSerialization aSerialization is null');
  self.Clear;
  for i := 0 to Pred(aSerialization.RecordCount) do
  begin
    // FRecord.ReadRecord(self.FDataSet.CurrentRecord);
    self.Append;
    // per ogni i mi limito a leggere il record della List
    self.FRecord.ReadRecord(aSerialization.RecList[i]);
    self.Post;
  end;
  self.First;
end;

function TJanuaRecordSet.RecordCount: integer;
begin
  Result := FDataSet.RecordCount
end;

procedure TJanuaRecordSet.RefreshFromRecodrdSet(aRecordSet: IJanuaRecordSet; bRemote: boolean);
var
  i: integer;
begin
  // questa procedura ricevento un RecordSet in risposta ad un Salvataggio aggiorna tutti i record locali
  // ed imposta il campo modified a False avendoli oramai registrati.
  self.First;
  while not self.Eof do
  begin
    if (self.CurrentRecord.Modified) or (not CurrentRecord.IsRemoteStored and bRemote) or
      (not CurrentRecord.IsLocalStored) or CurrentRecord.IsNewRecord then
    begin
      if aRecordSet.SearchByGUID(self.CurrentRecord.GUID) then
        self.CurrentRecord.Assign(aRecordSet.CurrentRecord);
      self.CurrentRecord.Modified := False;
      if bRemote then
        self.CurrentRecord.IsRemoteStored := True
      else
        self.CurrentRecord.IsLocalStored := True;
    end;
    self.Next;
  end;
end;

procedure TJanuaRecordSet.SaveToDataset(aDataset: TDataset; aDatasets: TArray<TDataset>);
var
  vDataset: TDataset;
begin
  self.FRecord.SetupDataset(aDataset, aDatasets);
end;

procedure TJanuaRecordSet.SaveToDataset(aDataset: TDataset);
begin
  self.FRecord.SetupDataset(aDataset, []);
end;

function TJanuaRecordSet.SearchByGUID(aGUID: TGUID): boolean;
var
  i: integer;
begin
  Result := self.CurrentRecord.GUID = aGUID;
  if not Result then
  begin
    Result := FGUIDIndex.TryGetValue(aGUID, i);
    if Result and (i <> FDataSet.ItemIndex) then
    begin
      FDataSet.ItemIndex := i;
      // Aggiorno il valore del record all'attuale record selezionato nella serializzazione.........
      FRecord.ReadRecord(self.FDataSet.CurrentRecord);
      if Assigned(self.FOnScroll) then
        self.FOnScroll(self);
    end;
  end;
end;

procedure TJanuaRecordSet.SetActualGUID(const Value: TGUID);
begin
  if (self.FRecord.GUID <> Value) and (Value <> System.Types.GUID_NULL) and not SearchByGUID(Value) then
  begin
    self.FRecord.GUID := Value;
  end;
end;

procedure TJanuaRecordSet.SetAsJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
  aPair: TJsonPair;
  aObject: TJsonObject;
  aTest: integer;
begin
  self.Clear;
  Janua.Core.Json.JsonValue(Value, 'count', aTest);
  if aTest > 0 then
  begin
    aPair := Value.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        self.Append(aObject);
      end;
  end;

end;

procedure TJanuaRecordSet.SetCurrentRecord(const Value: IJanuaRecord);
begin
  self.FRecord.Assign(Value)
end;

procedure TJanuaRecordSet.SetDataset(const Value: TDataset);
begin
  FRefDataSet := Value;
end;

procedure TJanuaRecordSet.SetDelRecords(const Value: IList<IJanuaRecord>);
begin
  self.FDelRecords := Value
end;

procedure TJanuaRecordSet.SetFromJsonObject(aJsonObject: TJsonObject; aFree: boolean);
begin
  SetAsJsonObject(aJsonObject);
  if aFree then
    aJsonObject.Free;

end;

procedure TJanuaRecordSet.SetItemIndex(const Value: integer);
begin
  if (self.FDataSet.RecordCount > 0) then
    self.FDataSet.ItemIndex := Value
end;

procedure TJanuaRecordSet.SetJanuaFields(const Value: TJanuaFields);
begin
  self.FRecord.Fields := Value
end;

procedure TJanuaRecordSet.SetModified(Value: boolean);
begin
  if not Value and self.GetModified then
  begin
    self.First;
    while not self.Eof do
    begin
      self.CurrentRecord.Modified := False;
      self.Post;
      self.Next;
    end;
  end;
end;

procedure TJanuaRecordSet.SetName(const Value: string);
begin
  self.FName := Value
end;

procedure TJanuaRecordSet.SetOnScroll(Value: TNotifyEvent);
begin
  FOnScroll := Value;
end;

procedure TJanuaRecordSet.SetParameters(const Value: TJanuaFields);
begin
  self.FParams := Value;
end;

procedure TJanuaRecordSet.SetRecord(const aRecord:  IJanuaRecord);
begin
  self.FRecord := aRecord
end;

function TJanuaRecordSet.ToJson: string;
begin
  Result := self.AsJsonObject.ToJson
end;

function TJanuaRecordSet.ToJsonPretty: string;
begin
  Result := Janua.Core.Json.JsonPretty(self.AsJsonObject)
end;

procedure TJanuaRecordSet.UpdateIndexGUID(const aOld, aNew: TGUID);
begin
  self.FGUIDIndex.Remove(aOld);
  self.FGUIDIndex.AddOrSetValue(aNew, self.ItemIndex);
end;

procedure TJanuaRecordSet.WriteToJsonObject(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.FName.ToLower, self.AsJsonObject)
end;

procedure TJanuaRecordSet.WriteToSerialization(aSerialization: ISetSerialization);
begin
  Guard.CheckNotNull(aSerialization, 'TJanuaRecordSet.WriteToSerialization aSerialization is null');
  aSerialization.Clear;
  if (self.RecordCount > 0) then
  begin
    self.First;
    while not self.Eof do
    begin
      // Serialization pu? essere incrementata del valore di un singolo Record con l'operazione di serializzazione
      // dei singoli Record del dataset che deve essere serializzato .............................................
      // nota: questo permette di 'annidare' la serializzazione e deserializzazione dei recordset contenuti nei record
      aSerialization.AddRecord(self.FRecord.RecordValue);
      self.Next
    end;
  end;
end;

procedure TJanuaRecordSet.SaveToDataset;
begin
  if Assigned(self.FRecord.StoreDataset) then
  begin
    self.First;
    while not self.Eof do
    begin

    end;
  end;
end;

{ TJanuaRecord }

function TJanuaRecord.AddCalcField(aField: IJanuaField): integer;
begin
  Result := self.AddField(aField);
  self.FFields[Result].Calculated := True;
  self.FCalcFields.Add(FFields[Result]);
end;

function TJanuaRecord.AddField(aField: IJanuaField): integer;
var
  i: integer;
begin
  Guard.CheckNotNull(aField, 'TJanuaRecord.AddField aField is Null');
  Guard.CheckNotNull(FFields, 'TJanuaRecord.AddField aField is Null');
  for i := 0 to Pred(self.FFields.Count) do
    if self.FFields[i].Key = aField.Key then
      raise exception.Create('TJanuaRecord.AddField Key already exists: ' + aField.Key);
  self.FFields.Add(aField);
  self.FFields[Pred(self.FFields.Count)].OnDataChange := self.DoDataChange;
  // self.FOldRecord.AddField(aField);
  // Guard.CheckTrue(self.FieldCount = self.FOldRecord.FieldCount,
  // 'TJanuaRecord.AddField aField Old FCount not match');
  Result := Pred(FFields.Count)
end;

procedure TJanuaRecord.AddMasterField(aMaster, aDetail: IJanuaField);
begin
  // 2018-0052  TMasterFields = TArray<TMasterField>;
  Guard.CheckNotNull(aMaster, 'TJanuaRecord.AddMasterField aMaster is null');
  Guard.CheckNotNull(aDetail, 'TJanuaRecord.AddMasterField aDetail is null');
  SetLength(self.FMasterFields, Length(self.FMasterFields) + 1);
  self.FMasterFields[Pred(Length(FMasterFields))] := TMasterField.Create(aMaster, aDetail);
end;

procedure TJanuaRecord.AddRecordDef(const aRecordDef: IJanuaRecord);
begin
  Guard.CheckNotNull(FRecords, 'TJanuaRecord.AddRecordDef FRecords is Null');
  Guard.CheckNotNull(aRecordDef, 'TJanuaRecord.AddRecordDef aRecordDef is Null');
  if Assigned(aRecordDef) then
    self.FRecords.Add(aRecordDef);
end;

function TJanuaRecord.AddRecordSet(aRecordSet: IJanuaRecordSet): integer;
var
  i: integer;
begin
  Guard.CheckNotNull(aRecordSet, 'TJanuaRecord.AddRecordSet aRecordSet is Null');
  Guard.CheckNotNull(FRecordSets, 'TJanuaRecord.AddRecordSet aRecordSet is Null');
  // Verifico che il Recordset non sia gi? presente o omonimo ...................
  for i := 0 to Pred(self.FRecordSets.Count) do
    if self.FRecordSets[i].Name = aRecordSet.Name then
      raise exception.Create('TJanuaRecord.AddField Key already exists');
  // Aggiungo il Recorset all'insieme quindi il Count ? incrementato di un elemento
  self.FRecordSets.Add(aRecordSet);
  // Rispondo quindi con RecordSetIndex = Pred(Count).
  self.FRecordSetIndex := Pred(FRecordSets.Count);
  Result := FRecordSetIndex;

end;

procedure TJanuaRecord.Append;
var
  i: integer;
  aMasterField: TMasterField;
begin
  CreateGUID(FGUID);
  // 2018-0052 Eredito anche MasterGUID.
  if self.FHasMasterRecord then
    FMasterGUID := self.FMasterRecord.GUID
  else
    FMasterGUID := System.Types.GUID_NULL;

  Guard.CheckNotNull(self.FFields, 'TJanuaRecord.Append FFields is null');

  if FFields.Count > 0 then
    for i := 0 to Pred(FFields.Count) do
      // if not(self.FFields[i].IsReadOnly or self.FFields[i].Calculated) then
      self.FFields[i].Default;

  for i := 0 to Pred(FRecords.Count) do
    // if not(self.FFields[i].IsReadOnly or self.FFields[i].Calculated) then
    self.FRecords[i].Append;

  // se il record ha un 'master' per default 'eredito' i dati del master nel Dataset.
  if self.FHasMasterRecord and (Length(FMasterFields) > 0) then
    for aMasterField in FMasterFields do
      aMasterField.Detail.Value := aMasterField.Master.Value;
  self.DoCalcFields;
end;

procedure TJanuaRecord.ApplyLocalUpdates;
begin

end;

procedure TJanuaRecord.ApplyRemoteUpdates;
begin

end;

procedure TJanuaRecord.Assign(const aRecord:  IJanuaRecord);
var
  i: integer;
begin
  self.Clear;
  Guard.CheckTrue(aRecord.FieldCount = self.FieldCount);
  for i := 0 to Pred(self.FieldCount) do
    self.FFields[i].Value := aRecord.Fields[i].Value;
  Guard.CheckTrue(aRecord.RecordCount = self.RecordCount);
  for i := 0 to Pred(self.RecordCount) do
    self.FRecords[i].Assign(aRecord.Records[i]);
  Guard.CheckTrue(aRecord.RecordSetCount = self.RecordSetCount);
  for i := 0 to Pred(self.RecordSetCount) do
    self.FRecordSets[i].Assign(aRecord.RecordSets[i]);
end;

procedure TJanuaRecord.Clear;
var
  i: integer;
begin
  i := -1;
  try
    self.Initialize;
    // se sono presenti dei sub-records (nested records) allora dobbiamo a cascate eseguire un clear anche su di loro
    if self.FRecords.Count > 0 then
      for i := 0 to Pred(FRecords.Count) do
        FRecords[i].Clear;
    // lo stesso vale per gli eventuali 'nested recordsets' .........................................................
    if self.FRecordSets.Count > 0 then
      for i := 0 to Pred(FRecordSets.Count) do
        FRecordSets[i].Clear;
  except
    on e: exception do
      raise exception.Create('TJanuaRecord.Clear: i=' + i.ToString + ' error=' + e.Message);

  end;
end;

constructor TJanuaRecord.Create(const aName: string);
begin
  self.Create;
  self.FName := aName
end;

procedure TJanuaRecord.DoCalcFields;
begin
  if FOnChangeActive and Assigned(self.FNotifyEvent) then
    self.FNotifyEvent(self);
end;

procedure TJanuaRecord.DoDataChange(aField: IJanuaField);
begin
  if self.FOnChangeActive and aField.IsMonitored then
    self.DoCalcFields
end;

constructor TJanuaRecord.Create;
begin
  FOnChangeActive := False;
  FFields := TCollections.CreateList<IJanuaField>;
  FRecordSets := TCollections.CreateList<IJanuaRecordSet>;
  FRecords := TCollections.CreateList<IJanuaRecord>;
  FCalcFields := TCollections.CreateList<IJanuaField>;
  FTriggerFields := TCollections.CreateList<IJanuaField>;
  self.Initialize;
  self.GUID := GUID_NULL;
  // FOldRecord := TJanuaRecord.Create;
end;

function TJanuaRecord.FieldByName(aName: string): IJanuaField;
var
  i: integer;
begin
  Result := nil;
  for i := 0 to Pred(FFields.Count) do
    if self.FFields[i].Key = aName.ToLower then
    begin
      Result := self.FFields[i];
      Exit
    end;
  raise exception.Create('TJanuaRecord.FieldByName Field ' + aName + ' not found');
end;

function TJanuaRecord.FieldCount: integer;
begin
  Result := self.FFields.Count
end;

function TJanuaRecord.GetAsJsonObject: TJsonObject;
var
  i: integer;
begin
  Result := TJsonObject.Create;

  Janua.Core.Json.JsonPair(Result, 'jguid', self.FGUID.ToString);

  for i := 0 to Pred(self.FFields.Count) do
    self.FFields[i].WriteJsonValue(Result);

  for i := 0 to Pred(self.FRecords.Count) do
    self.FRecords[i].WriteToJson(Result);

  for i := 0 to Pred(self.FRecordSets.Count) do
    self.FRecordSets[i].WriteToJsonObject(Result);
end;

function TJanuaRecord.GetGUID: TGUID;
begin
  Result := self.FGUID
end;

function TJanuaRecord.GetIsLocalStored: boolean;
begin

end;

function TJanuaRecord.GetIsNewRecod: boolean;
begin

end;

function TJanuaRecord.GetIsRemoteStored: boolean;
begin

end;

function TJanuaRecord.GetItemIndex: integer;
begin
  Result := self.FItemIndex
end;

function TJanuaRecord.GetJanuaFields: TJanuaFields;
begin
  Result := self.FFields
end;

function TJanuaRecord.GetMasterRecord: IJanuaRecord;
begin
  Result := self.FMasterRecord;
end;

function TJanuaRecord.GetModified: boolean;
var
  i: integer;
begin
  Result := False;
  for i := 0 to Pred(self.FFields.Count) do
    if FFields[i].Modified then
      Exit(True);
  for i := 0 to Pred(self.FRecords.Count) do
    if self.FRecords[i].Modified then
      Exit(True);
  for i := 0 to Pred(self.FRecordSets.Count) do
    if self.FRecordSets[i].Modified then
      Exit(True)
end;

function TJanuaRecord.GetName: string;
begin
  Result := self.FName
end;

function TJanuaRecord.GetNotifyEvent: TNotifyEvent;
begin
  Result := self.FNotifyEvent
end;

function TJanuaRecord.GetRecords: IList<IJanuaRecord>;
begin
  Result := self.FRecords
end;

function TJanuaRecord.GetRecordSets: IList<IJanuaRecordSet>;
begin
  Result := self.FRecordSets
end;

function TJanuaRecord.GetStoreDataset: TDataset;
begin
  Result := self.FStoreDataset
end;

function TJanuaRecord.GetUpdatesPending: boolean;
begin
  Result := self.FIsNewRecord or not self.FIsLocalStored or not self.FIsRemoteStored or self.RecordModified
end;

procedure TJanuaRecord.Initialize;
var
  i: integer;
begin
  // FFields: IList<IJanuaField>;
  for i := 0 to Pred(FFields.Count) do
    FFields[i].Clear;
  FGUID := System.Types.GUID_NULL;
  self.FItemIndex := -1;
end;

procedure TJanuaRecord.LoadFromDataset(aMainDataset: TDataset; aDatasets: TArray<TDataset>);
begin
  self.SetupDataset(aMainDataset, aDatasets);
  self.LoadFromDataset;
end;

procedure TJanuaRecord.LoadFromDataset;
var
  aField: TField;
  tmp: string;
  i, j: integer;
begin
  i := -1;
  try
    j := self.ItemIndex;
    self.Clear;
    self.ItemIndex := j; // reimposto ItemIndex ma Eredito il differente GUID.
    // nota il 'post' dovrebbe registrare il record sul DataSet in una posizione equivalente al sui GUID.
    // quindi se il Dataset ha un numero di Record bisogna 'scorrerlo' fino all'ID
    // mentre su un Append non ci sono problemi di sorta dopo un Delete ItemIndex dei Record Va rifatto .....
    self.LoadRecord; // Si occupa di caricare semplicemente questo Record (usato ad esempio x un refresh dati)
    for i := 0 to Pred(FRecordSets.Count) do
      self.FRecordSets[i].LoadFromDataset;
  except
    on e: exception do
      raise exception.Create('TJanuaRecord.LoadFromDataset: i = ' + i.ToString + ' ' + e.Message);
  end;
end;

procedure TJanuaRecord.LoadFromLocalStorage;
begin

end;

procedure TJanuaRecord.LoadFromRemoteStorage;
begin

end;

procedure TJanuaRecord.LoadRecord;
var
  aField: TField;
  tmp: string;
  i: integer;
begin
  Guard.CheckNotNull(FStoreDataset, ' TJanuaRecord.LoadRecord FStoreDataset is null');
  try
    if Assigned(self.FStoreDataset) then
    begin
      if Janua.Core.Functions.GetFieldByName(FStoreDataset, 'jguid', aField) then
        self.FGUID := System.SysUtils.StringToGUID(aField.AsString);
      for i := 0 to Pred(FFields.Count) do
      begin
        tmp := FFields[i].DBField;
        if (tmp <> 'jguid') and not(FFields[i].Calculated) and GetFieldByName(FStoreDataset, tmp, aField) then
        begin
          case FFields[i].FieldType of
            TJanuaFieldType.jptCurrency:
              FFields[i].AsCurrency := FStoreDataset.FieldByName(tmp).AsCurrency;
            TJanuaFieldType.jptInteger:
              FFields[i].AsInteger := FStoreDataset.FieldByName(tmp).AsInteger;
            TJanuaFieldType.jptDateTime:
              FFields[i].AsDateTime := FStoreDataset.FieldByName(tmp).AsDateTime;
            TJanuaFieldType.jptString:
              FFields[i].AsString := FStoreDataset.FieldByName(tmp).AsWideString;
            TJanuaFieldType.jptFloat:
              FFields[i].AsFloat := FStoreDataset.FieldByName(tmp).AsFloat;
            TJanuaFieldType.jptBoolean:
              FFields[i].AsBoolean := FStoreDataset.FieldByName(tmp).AsBoolean;
            TJanuaFieldType.jptLargeInt:
              FFields[i].AsLargeInt := FStoreDataset.FieldByName(tmp).AsLargeInt;
            TJanuaFieldType.jptExtended:
              FFields[i].AsFloat := FStoreDataset.FieldByName(tmp).AsExtended;
            TJanuaFieldType.jptDate:
              FFields[i].AsDateTime := FStoreDataset.FieldByName(tmp).AsDateTime;
          end;
        end;
      end;
      for i := 0 to Pred(FRecords.Count) do
        self.FRecords[i].LoadRecord;
    end;
  except
    on e: exception do
      raise exception.Create('TJanuaRecord.LoadRecord ');

  end;

end;

function TJanuaRecord.NewRecord: IRecSerialization;
begin
  SetDefault;
  self.Append;
  Result := TJanuaRecSerialization.Create(self);
end;

procedure TJanuaRecord.OnFieldsChange(Sender: Tobject);
begin
  self.DoCalcFields
end;

procedure TJanuaRecord.SaveToDataset(aDataset: TDataset; aDatasets: TArray<TDataset>);
begin
  self.SaveToDataset(aDataset);
end;

procedure TJanuaRecord.SaveToDataset;
begin

end;

procedure TJanuaRecord.SetAsJsonObject(const Value: TJsonObject);
var
  i: integer;
  // tmp: string;
begin
  Guard.CheckNotNull(Value, 'TJanuaRecord.SetAsJsonObject Null Value Json');
  Janua.Core.Json.JsonValue(Value, 'jguid', FGUID);

  for i := 0 to Pred(self.FFields.Count) do
    if not(self.FFields[i].Calculated) then
      self.FFields[i].ReadJsonValue(Value);

  // testo la funzione Read From Json dei singoli Record che compongono il Record Principale.
  if FRecords.Count > 0 then
    for i := 0 to Pred(self.FRecords.Count) do
      self.FRecords[i].ReadFromJson(Value);

  {
    for i := 0 to Pred(self.FFields.Count) do
    self.FFields[i].WriteJsonValue(Result);


    for i := 0 to Pred(self.FRecordSets.Count) do
    self.FRecordSets[i].WriteToJsonObject(Result);
  }
  if self.FRecordSets.Count > 0 then
    for i := 0 to Pred(self.FRecordSets.Count) do
      FRecordSets[i].ReadFromJsonObject(Value);

end;

procedure TJanuaRecord.SetDefault;
begin
  // Da Implementare ..........................
  // Result := TCollections.CreateList<TValue>;
  FGUID := System.Types.GUID_NULL;
end;

procedure TJanuaRecord.SetGUID(Value: TGUID);
begin
  self.FGUID := Value;
end;

procedure TJanuaRecord.SetIsLocalStored(Value: boolean);
begin

end;

procedure TJanuaRecord.SetIsNewReoord(Value: boolean);
begin

end;

procedure TJanuaRecord.SetIsRemoteStored(Value: boolean);
begin

end;

procedure TJanuaRecord.SetItemIndex(Value: integer);
begin
  self.FItemIndex := Value;
end;

procedure TJanuaRecord.ReadData(aDataList: TValueList);
begin
  self.FGUID := StringToGUID(aDataList[0].ToString);
end;

procedure TJanuaRecord.ReadFromJson(aJsonObject: TJsonObject);
begin
  SetAsJsonObject(Janua.Core.Json.JsonObject(self.FName, aJsonObject));
end;

procedure TJanuaRecord.ReadRecord(aDataList: IRecSerialization);
var
  i, t1: integer;
begin
  Guard.CheckNotNull(aDataList, 'TJanuaRecord.ReadRecord aDataList is null');
  Guard.CheckNotNull(aDataList.FieldValues, 'ReadRecord.WriteRecord aDataList.FieldValues is null');

  if FFields.Count > 0 then
  begin
    t1 := aDataList.FieldValues.Count;
    Guard.CheckTrue(t1 = self.FFields.Count, 'TJanuaRecord.ReadRecord Datalist Items = ' +
      aDataList.FieldValues.Count.ToString + ' while fields count = ' + FFields.Count.ToString);
    // in LETTURA DALLA DATALIST NON E' NECESSARIO IMPOSTARE IL VALORE DEI CAMPI CALCOLATI CHE SARA' POI ATTIVATO DA DO
    for i := 0 to Pred(t1) do
      if not(FFields[i].Calculated) then
        FFields[i].Value := aDataList.FieldValues[i];
  end;

  if FRecords.Count > 0 then
  begin
    t1 := aDataList.RecValues.Count;
    Guard.CheckTrue(t1 = FRecords.Count, 'TJanuaRecord.ReadRecord aDataList.RecValues <> Records.Count');
    for i := 0 to Pred(t1) do
    begin
      // risolvere crezione della serializzazione
      if Assigned(aDataList.RecValues[i]) then
        self.FRecords[i].ReadRecord(aDataList.RecValues[i]);
    end;
  end;

  if self.FRecordSets.Count > 0 then
  begin
    t1 := aDataList.RecSetList.Count;
    Guard.CheckTrue(t1 = FRecordSets.Count,
      'TJanuaRecord.ReadRecord aDataList.RecSetList <> FRecordSets.Count');

    for i := 0 to Pred(self.FRecordSets.Count) do
    begin
      // se la DataList (i) non ? ancora Assegnata (andrebbe creata immediatamente) ..............
      if Assigned(aDataList.RecSetList[i]) then
        self.FRecordSets[i].ReadFromSerialization(aDataList.RecSetList[i]);
      // self.FRecordSets[i].WriteToSerialization(aDataList.RecSetList[i]);
    end;
  end;
  self.DoCalcFields
end;

function TJanuaRecord.RecordCount: integer;
begin
  Result := self.FRecords.Count
end;

function TJanuaRecord.RecordModified: boolean;
var
  i: integer;
begin
  Result := False;
  for i := 0 to Pred(self.FFields.Count) do
    if FFields[i].Modified then
      Exit(True);
end;

function TJanuaRecord.RecordSetCount: integer;
begin
  Result := self.FRecordSets.Count
end;

function TJanuaRecord.RecordSetIndex: integer;
begin
  Result := self.FRecordSetIndex
end;

function TJanuaRecord.RecordValue: IRecSerialization;
begin
  // Record Value ha come risultato una Serializzazione di se stesso ..................................................
  Result := TJanuaRecSerialization.Create(self);
  // qui non riesco a ricordare perch? la chiamata a WriteRecord, di norma ? WriteRecord che dovrebbe chiamare ........
  WriteRecord(Result);
end;

procedure TJanuaRecord.SaveToDataset(aDataset: TDataset);
var
  i: integer;
  aField: TField;
begin
  aDataset.Edit;
  for i := 0 to self.FFields.Count do
  begin
    // nel dataset non registro n? i record ReadOnly n? i Record che sono Calcolati perch? assenti o non scrivibili....
    if not(FFields[i].Calculated or FFields[i].IsReadOnly) and GetFieldByName(aDataset, FFields[i].DBField,
      aField) then
    begin
      case FFields[i].FieldType of
        TJanuaFieldType.jptCurrency:
          aField.AsCurrency := FFields[i].AsCurrency;
        TJanuaFieldType.jptInteger:
          aField.AsInteger := FFields[i].AsInteger;
        TJanuaFieldType.jptDateTime:
          aField.AsDateTime := FFields[i].AsDateTime;
        TJanuaFieldType.jptString:
          aField.AsWideString := FFields[i].AsString;
        TJanuaFieldType.jptFloat:
          aField.AsFloat := FFields[i].AsFloat;
        TJanuaFieldType.jptBoolean:
          aField.AsBoolean := FFields[i].AsBoolean;
        TJanuaFieldType.jptLargeInt:
          aField.AsLargeInt := FFields[i].AsLargeInt;
        TJanuaFieldType.jptExtended:
          aField.AsExtended := FFields[i].AsFloat;
        TJanuaFieldType.jptDate:
          aField.AsDateTime := FFields[i].AsDateTime;
      end;
    end;
  end;
  aDataset.Post;
  self.DoCalcFields;
end;

procedure TJanuaRecord.SetJanuaFields(const Value: TJanuaFields);
begin
  self.FFields := Value;
  self.DoCalcFields
end;

procedure TJanuaRecord.SetMasterRecord(Value: IJanuaRecord);
begin
  self.FMasterRecord := Value;
  self.FHasMasterRecord := Assigned(self.FMasterRecord);
end;

procedure TJanuaRecord.SetModified(const Value: boolean);
var
  i: integer;
begin
  for i := 0 to Pred(FFields.Count) do
    self.FFields[i].Modified := False;
end;

procedure TJanuaRecord.SetName(const Value: string);
begin
  self.FName := Value;
  self.DoCalcFields
end;

procedure TJanuaRecord.SetNotifyEvent(Value: TNotifyEvent);
begin
  self.FNotifyEvent := Value;
  self.DoCalcFields
end;

procedure TJanuaRecord.SetOldRecord(Value: IJanuaRecord);
begin

end;

procedure TJanuaRecord.SetOldValue(const Value: IJanuaField);
begin

end;

procedure TJanuaRecord.SetRecords(const Value: IList<IJanuaRecord>);
begin
  self.FRecords := Value;
  self.DoCalcFields
end;

procedure TJanuaRecord.SetRecordSets(const Value: IList<IJanuaRecordSet>);
begin
  self.FRecordSets := Value
end;

procedure TJanuaRecord.SetRefField(aField: IJanuaField);
begin
  // This procedure Controls the reference Fields for Calc-Fields procedures from the ORM Dataset
end;

procedure TJanuaRecord.SetStoreDataset(const Value: TDataset);
begin
  // Store Dataset ? alla base del sistema di registrazione dati sia locale che remota.
  // a Livello 'locale' i dati potrebbero essere registrati su DB ma anche su semplici Files.
  FStoreDataset := Value;
end;

procedure TJanuaRecord.SetupDataset(aMainDataset: TDataset; aDatasets: TArray<TDataset>);
var
  bDatasets: TArray<TDataset>;
  i: integer;
begin
  self.FStoreDataset := aMainDataset;
  if (Length(aDatasets) > 0) and (self.FRecordSets.Count > 0) then
  begin
    bDatasets := [];
    // Tecnica efficace in caso di un albero avente pressoche sempre un sotto-livello ..........
    if Length(aDatasets) > FRecordSets.Count then
      bDatasets := Copy(aDatasets, Pred(FRecordSets.Count), FRecordSets.Count - Length(aDatasets));

    for i := Low(aDatasets) to High(aDatasets) do
    begin
      { TODO : LoadFromDataset funziona solo se i dataset sono in perfetto "ordine" e non gestisce bene i sotto-livelli }
      if i <= Pred(self.FRecordSets.Count) then
        FRecordSets[i].CurrentRecord.SetupDataset(aDatasets[i], bDatasets);
      // FRecordSets[i].CurrentRecord.StoreDataset := aDatasets[i];
      // self.FRecordSets[i].LoadFromDataset(aDatasets[i], bDatasets);
    end;
  end;

end;

procedure TJanuaRecord.SetUpdatesPending(Value: boolean);
begin

end;

procedure TJanuaRecord.UndoUpdates;
begin

end;

procedure TJanuaRecord.WriteData(aDataList: TValueList);
begin
  aDataList[0] := self.FGUID.ToString;
end;

procedure TJanuaRecord.WriteRecord(aDataList: IRecSerialization);
var
  i, t1: integer;
begin
  // nella serializzazione registro comunque i valori anche dei readonly e dei campi calcolati
  // in quanto la serializzazione ? un valore inteno al dataset stesso e definito dal record medesimo
  Guard.CheckNotNull(aDataList, 'TJanuaRecord.WriteRecord aDataList is null');
  Guard.CheckNotNull(aDataList.FieldValues, 'TJanuaRecord.WriteRecord aDataList.FieldValues is null');

  // Se il Record ha GUID nulla imposta la GUID ad un valore unico. GUID ? un valore a 128 bit.
  if IsEqualGUID(self.FGUID, System.Types.GUID_NULL) then
    CreateGUID(FGUID);

  // dopo la verifica della GUID la prima cosa che faccio ? scrivere nella serializzzione il dato.
  // la DataList dovrebbe contenere due Dati per la Cached Updates sia il valore attuale che il valore
  // passato dei Record.
  aDataList.GUID := self.FGUID;

  if FFields.Count > 0 then
  begin
    t1 := aDataList.FieldValues.Count;
    Guard.CheckTrue(t1 = FFields.Count, 'TJanuaRecord.WriteRecord Datalist Items = ' + t1.ToString +
      ' while fields count = ' + FFields.Count.ToString);
    // NOTA IMPORTANTE NELLA DATALIST INTERNA REGISTRO ANCHE I CAMPI IN 'SOLA LETTURA' E I CAMPI CALCOLATI POI RICALCOLO
    for i := 0 to Pred(t1) do
    begin
      aDataList.FieldValues[i] := FFields[i].Value;
      aDataList.OldValues[i] := FFields[i].GetOldValue;
    end;
  end;

  if FRecords.Count > 0 then
    for i := 0 to Pred(self.FRecords.Count) do
    begin
      // risolvere crezione della serializzazione
      if Assigned(aDataList.RecValues[i]) then
        self.FRecords[i].WriteRecord(aDataList.RecValues[i]);
    end;

  if self.FRecordSets.Count > 0 then
    for i := 0 to Pred(self.FRecordSets.Count) do
    begin
      // Esegue un Post sul RecordSet[i] per mantenerne la serializzazione interna.
      // FRecordSets[i].Post;
      // se la DataList (i) non ? ancora Assegnata (andrebbe creata immediatamente) ..............
      if (aDataList.RecSetList.Count < Succ(i)) then
        aDataList.RecSetList.Add(TJanuaSetSerialization.Create);
      self.FRecordSets[i].WriteToSerialization(aDataList.RecSetList[i]);
    end;
  self.DoCalcFields
end;

procedure TJanuaRecord.WriteToJson(aJsonObject: TJsonObject);
begin
  Janua.Core.Json.JsonPair(aJsonObject, self.Name, self.AsJsonObject)
end;

{ TJanuaRecSerialization }

procedure TJanuaRecSerialization.Clear;
begin
  self.FValues.Clear;
  self.FRecords.Clear;
  self.FRecSets.Clear;
  self.FGUID := System.Types.GUID_NULL;
end;

constructor TJanuaRecSerialization.Create(const aRecord:  IJanuaRecord);
var
  i: integer;
begin
  { TRecList = IList<IRecSerialization>;
    TSetList = IList<ISetSerialization>; }
  Guard.CheckNotNull(aRecord, 'Errore aRecord non assegnato, TJanuaRecSerialization.Create');
  FRecords := TCollections.CreateList<IRecSerialization>;
  FRecSets := TCollections.CreateList<ISetSerialization>;
  FValues := TCollections.CreateList<TValue>;
  FOldValues := TCollections.CreateList<TValue>;
  self.FGUID := aRecord.GUID;

  for i := 0 to Pred(aRecord.FieldCount) do
  begin
    self.FValues.Add(aRecord.Fields[i].Value);
    self.FOldValues.Add(aRecord.Fields[i].GetOldValue);
  end;

  if aRecord.Records.Count > 0 then
    for i := 0 to Pred(aRecord.Records.Count) do
      self.FRecords.Add(TJanuaRecSerialization.Create(aRecord.Records[i]));

end;

function TJanuaRecSerialization.GetFieldValues: TValueList;
begin
  Result := self.FValues
end;

function TJanuaRecSerialization.GetGUID: TGUID;
begin
  Result := self.FGUID
end;

function TJanuaRecSerialization.GetIndex: integer;
begin
  Result := self.FIndex
end;

function TJanuaRecSerialization.GetIsModified: boolean;
var
  i: integer;
begin
  Result := False;
  for i := 0 to Pred(self.FValues.Count) do
  begin
    if FValues[i].Equals(FOldValues[i]) then
      Exit(True)
  end;

end;

function TJanuaRecSerialization.GetOldValues: TValueList;
begin
  Result := self.FOldValues
end;

function TJanuaRecSerialization.GetRecSetList: TSetList;
begin
  Result := self.FRecSets
end;

function TJanuaRecSerialization.GetRecValues: TRecList;
begin
  Result := self.FRecords
end;

procedure TJanuaRecSerialization.SetFieldValues(const Value: TValueList);
begin
  self.FValues := Value
end;

procedure TJanuaRecSerialization.SetGUID(const Value: TGUID);
begin
  self.FGUID := Value
end;

procedure TJanuaRecSerialization.SetIndex(const Value: integer);
begin
  self.FIndex := Value
end;

procedure TJanuaRecSerialization.SetOldValues(const Value: TValueList);
begin
  self.FOldValues := Value
end;

procedure TJanuaRecSerialization.SetRecSetList(const Value: TSetList);
begin
  self.FRecSets := Value
end;

procedure TJanuaRecSerialization.SetRecValues(const Value: TRecList);
begin
  self.FRecords := Value
end;

{ TJanuaSetSerialization }

procedure TJanuaSetSerialization.AddRecord(aSerialization: IRecSerialization);
begin
  // Aggiunge un record alla serializzazione ...............................
  self.FRecords.Add(aSerialization);
  self.FItemIndex := Pred(FRecords.Count);
  self.FRecords[FItemIndex].ItemIndex := FItemIndex;
end;

procedure TJanuaSetSerialization.Clear;
var
  i: integer;
begin
  self.FItemIndex := -1;
  for i := 0 to Pred(FRecords.Count) do
    self.FRecords[i].Clear;
  self.FRecords.Clear;
end;

constructor TJanuaSetSerialization.Create;
begin
  self.FRecords := TCollections.CreateList<IRecSerialization>;
  self.FItemIndex := -1;
  // FDataRecords: IList<IRecSerialization>;
end;

function TJanuaSetSerialization.CurrentRecord: IRecSerialization;
begin
  Result := nil;
  if (self.FRecords.Count > 0) and (FItemIndex > -1) then
    Result := FRecords[FItemIndex]

end;

procedure TJanuaSetSerialization.DelCurrenRecord;
var
  i, j, k: integer;
begin
  if (self.FRecords.Count > 0) and (self.FItemIndex > -1) then
  begin
    j := FItemIndex;
    FRecords.Delete(FItemIndex);
    k := Pred(FRecords.Count);
    // se ci sono dei record li reindicizzo
    if k > -1 then
      for i := 0 to k do
        self.FRecords[i].ItemIndex := i;
    // se ho cancellato l'ultimo record allora ItemIndex = .1
    self.FItemIndex := Min(i, k);
  end;
end;

function TJanuaSetSerialization.GetItemIndex: integer;
begin
  Result := self.FItemIndex
end;

function TJanuaSetSerialization.GetRecList: TRecList;
begin
  Result := FRecords
end;

function TJanuaSetSerialization.RecordCount: integer;
begin
  Result := FRecords.Count
end;

procedure TJanuaSetSerialization.SetItemIndex(const Value: integer);
begin
  if (self.FRecords.Count > 0) and (Value < FRecords.Count) then
    self.FItemIndex := Value
end;

procedure TJanuaSetSerialization.SetRecList(const Value: TRecList);
begin
  FRecords := Value;
end;

{ TJanuaRecordSetStorage }

procedure TJanuaDatasetStorage.AddParam(aParam: IJanuaField);
begin
  self.FParameters.Add(aParam)
end;

function TJanuaDatasetStorage.ApplyUpdates(aRecordSet: IJanuaRecordSet): boolean;
begin
  Result := False;
  // imposto il RecordSet.
  self.FStorage.CreateDataset;
  self.InternalAssignDatasets;
  aRecordSet.SaveToDataset;
  // Aggiorno il RecordSet e lo Carico
  aRecordSet.Clear;
  aRecordSet.LoadFromDataset;
  // imposto la variabile interna RecordSet al puntatore del RecordSet Ricevuto:
  self.FRecordSet := aRecordSet;
  Result := True;
  self.FStorage.DestroyDataset;
end;

procedure TJanuaDatasetStorage.AsyncApplyUpdates(aRecordSet: IJanuaRecordSet);
begin
  Async.Run<boolean>(
    function: boolean
    begin
      // This is the "background" anonymous method. Runs in the
      // background thread, and its result is passed
      // to the "success" callback.
      // In this case the result is a String.
      Result := self.ApplyUpdates(aRecordSet);
    end,
    procedure(const Value: boolean)
    begin
      // This is the "success" callback. Runs in the UI thread and
      // gets the result of the "background" anonymous method.
      if Value and Assigned(self.FOnUpdateSuccess) then
        self.FOnUpdateSuccess(self)
      else if not Value and Assigned(self.FOnUpdateError) then
        self.FOnUpdateError(self)
    end,
    procedure(const Ex: exception)
    begin
      // This is the "error" callback.
      // Runs in the UI thread and is called only if the
      // "background" anonymous method raises an exception.
      if Assigned(self.FOnUpdateError) then
        self.FOnUpdateError(self)
    end);
end;

procedure TJanuaDatasetStorage.AsyncLoadData;
begin

end;

constructor TJanuaDatasetStorage.Create(aRecordSetModel: IJanuaRecordSet);
begin
  FParameters := TCollections.CreateList<IJanuaField>;
  self.FRecordSet := aRecordSetModel;
end;

function TJanuaDatasetStorage.GetKeepAlive: boolean;
begin
  if Assigned(self.FStorage) then
    Result := self.FStorage.KeepAlive;
end;

function TJanuaDatasetStorage.GetMaxRecords: integer;
begin
  Result := self.FMaxRecords
end;

function TJanuaDatasetStorage.GetOnUpdateError: TNotifyEvent;
begin
  Result := self.FOnUpdateError
end;

function TJanuaDatasetStorage.GetOnUpdateSuccess: TNotifyEvent;
begin
  Result := self.FOnUpdateSuccess
end;

function TJanuaDatasetStorage.GetParameters: TJanuaFields;
begin
  Result := self.FParameters
end;

function TJanuaDatasetStorage.GetUpdatedRecordSet: IJanuaRecordSet;
begin
  Result := self.FRecordSet;
end;

function TJanuaDatasetStorage.LoadData: boolean;
begin
  Result := False;
  Guard.CheckNotNull(FRecordSet, 'TJanuaDatasetStorage.LoadData FRecordSet is null');
  Guard.CheckNotNull(FStorage, 'TJanuaDatasetStorage.LoadData FStorage is null');
  // Creo il Dataset dallo Storage se non ? ancora stato Creato
  FStorage.CreateDataset;
  // Lancio la procedura di Assegnazione dei Dataset se presente
  InternalAssignDatasets;
  // Svuoto il Dataset e lo preparo per il caricamento dei dati
  Guard.CheckNotNull(FRecordSet.CurrentRecord.StoreDataset,
    'TJanuaDatasetStorage.LoadData StoreDataset is null');
  FRecordSet.Clear;
  // Carico i Dati
  self.FRecordSet.LoadFromDataset;
  // Elimino il Dataset dallo Storage se presente
  self.FStorage.DestroyDataset;
  Result := self.FRecordSet.RecordCount > 0;
end;

function TJanuaDatasetStorage.ParamByName(aName: string): IJanuaField;
var
  i: integer;
begin
  Result := nil;
  for i := 0 to Pred(self.Parameters.Count) do
    if LowerCase(FParameters[i].DBField) = aName.ToLower then
      Exit(FParameters[i])
end;

procedure TJanuaDatasetStorage.SetKeepAlive(const Value: boolean);
begin
  FKeepAlive := Value;
end;

procedure TJanuaDatasetStorage.SetMaxRecords(const Value: integer);
begin
  self.FMaxRecords := Value
end;

procedure TJanuaDatasetStorage.SetOnUpdateError(const Value: TNotifyEvent);
begin
  self.FOnUpdateError := Value
end;

procedure TJanuaDatasetStorage.SetOnUpdateSuccess(const Value: TNotifyEvent);
begin
  self.FOnUpdateSuccess := Value
end;

procedure TJanuaDatasetStorage.SetParameters(const Value: TJanuaFields);
begin
  self.FParameters := Value;
end;

{ TJanuaStorage }

constructor TJanuaStorage.Create;
begin
  self.FKeepAlive := False; // Default per KeepAlive
end;

procedure TJanuaStorage.CreateDataset;
begin
  self.InternalCreateDataset
end;

procedure TJanuaStorage.DestroyDataset;
begin
  if not self.FKeepAlive then
    self.InternalDestroyDataset

end;

function TJanuaStorage.GetKeepAlive: boolean;
begin
  Result := self.FKeepAlive
end;

procedure TJanuaStorage.SetKeepAlive(const Value: boolean);
begin
  if Value and not self.FKeepAlive then
    self.InternalCreateDataset;

  self.FKeepAlive := Value;

end;

end.
