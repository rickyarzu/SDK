unit Janua.Core.Types;

interface

{$I JANUACORE.INC}

uses
{$IFDEF FPC}
{$IFDEF LINUX} unixtype, linux, {$ENDIF LINUX}
  Classes, Types, TypInfo, SysUtils, DB, fpjson, SyncObjs, Generics.Collections,
{$ELSE}
  System.Classes, System.Types, System.TypInfo, System.SysUtils, System.IOUtils, System.Json,
  System.Bindings.Expression, System.Bindings.Helper, System.Rtti, System.Generics.Collections,
  System.DateUtils, System.SyncObjs, System.UITypes,
  System.Diagnostics, // For TStopWatch Record
  FireDAC.Comp.Client, // FireDac Client for MemTable
  Spring, Spring.Collections, Data.DB;
{$ENDIF}

type
  TJanuaPoint = record
    X: Single;
    Y: Single;
    constructor Create(aX, aY: Single);
  end;

  /// <summary>Draw is simply a Collection of Points (NOTE: it uses relative coordinates) </summary>
  TJanuaDraw = record
    Points: Tarray<TJanuaPoint>;
    constructor Create(aX, aY: Single);
    procedure AddPoint(aPoint: TJanuaPoint); overload;
    procedure AddPoint(aX, aY: Single); overload;
    procedure DelPoint;
    function ActualX: Single;
    function ActualY: Single;
  end;

  /// <summary>This is not only a collection of Draws it contains (also) relative image Dimensions </summary>
  TJanuaImageDraws = record
    Width: Single;
    Heigth: Single;
    Items: Tarray<TJanuaDraw>;
    constructor Create(aWidth, aHeigth: Single);
    procedure AddDraw(aDraw: TJanuaDraw);
    procedure DelDraw;
    function Serialize: string;
    procedure DeSerialize(const aJson: string);
  end;

type
  TJanuaDBEngine = (jdbOracle, jdbPostgres, jdbMySql, jdbMongoDB, jdbODBC, jdbInterbase, jdbFirebird,
    jdbTmsRemoteDB, jdbMSAccess);

const
  JanuaDBEngineCode: array [TJanuaDBEngine] of string = ('Oracle', 'Postgres', 'MySql', 'MongoDB', 'ODBC',
    'Interbase', 'Firebird', 'TMS RemoteDB', 'MSAccess');

type
  TMessageProc = TProc<string, string>;
  // <summary> Anonymous Log Procedure used to log a procedure an event or an error message </summary>
  TMessageLogProc = TProc<string { aProcName } , string { aLogMessage } , TObject { aObject } >;

  TJanuaArray<T> = record
  strict private
    function GetHasValues: Boolean;
    function GetCount: Integer;
    function GetItems(Index: Integer): T;
    procedure SetItems(Index: Integer; Value: T);
  public
    FArray: Tarray<T>;
    property ItemArray[Index: Integer]: T read GetItems { write SetItems }; default;
    property Count: Integer read GetCount;
    property HasValues: Boolean read GetHasValues;
    property Items: Tarray<T> read FArray;
    function Inc: Integer;
    procedure Clear;
  public
    constructor Create(aArray: Tarray<T>);
    procedure Assign(aArray: TJanuaArray<T>);
    procedure Remove(Index: Integer);
  end;

  TJanuaConfCustomField = record
    Key: string;
    Value: string;
    constructor Create(const aField, aValue: string);
  end;

  TStringArray = Tarray<string>;
  TJanuaIntegerArray = TJanuaArray<Integer>;
  TJanuaStringArray = TJanuaArray<string>;

type
  TNullableColor = Nullable<TColor>;
  TNullableDate = Nullable<TDate>;
  TNullableDateTime = Nullable<TDateTime>;

const
  c_UnassignedDate = -693594;

{$IFDEF FPC} type
  UINT = Longword; {$ENDIF FPC}

type
  TJanuaServerLog = Record
    EMessage: UnicodeString;
    Application: UnicodeString;
    Form: UnicodeString;
    ProcedureName: UnicodeString;
    ETime: TDateTime;
  End;

  TJanuaTheme = (jtLight, jtDark);

  /// <summary> List to add to a Field in a Business Logic Model. Can be In-Memory, db, files, ... </summary>
  TJanuaLookupID = (lklNone, lklTestComboList, lklTestLUList, lklTestDataset);

{$IFDEF FPC}

type
  TJsonValue = class(TJsonData)

  end;

type
  { TStopWatch }
  TStopWatch = record
  private const
    C_THOUSAND = 1000;
    C_MILLION = C_THOUSAND * C_THOUSAND;
    C_BILLION = C_THOUSAND * C_THOUSAND * C_THOUSAND;
    TicksPerNanoSecond = 100;
    TicksPerMilliSecond = 10000;
    TicksPerSecond = C_BILLION div 100;

  Type
    TBaseMesure = {$IFDEF LINUX} TTimeSpec; {$ELSE} Int64; {$ENDIF LINUX}
  strict private
    class var FFrequency: Int64;
    class var FIsHighResolution: Boolean;
  strict private
    FElapsed: Int64;
    FRunning: Boolean;
    FStartPosition: TBaseMesure;
  strict private
    procedure CheckInitialization(); inline;
    function GetElapsedMilliseconds: Int64;
    function GetElapsedTicks: Int64;
  public
    class function Create(): TStopWatch; static;
    class function StartNew(): TStopWatch; static;
    class property Frequency: Int64 read FFrequency;
    class property IsHighResolution: Boolean read FIsHighResolution;
    procedure Reset();
    procedure Start();
    procedure Stop();
    property ElapsedMilliseconds: Int64 read GetElapsedMilliseconds;
    property ElapsedTicks: Int64 read GetElapsedTicks;
    property IsRunning: Boolean read FRunning;
  end;

resourcestring
  sStopWatchNotInitialized = 'The StopWatch is not initialized.';
{$ENDIF}

type
  /// <summary> An interface to easily build a string list with some extra functions </summary>
  IStringBuilder = Interface
    ['{922F982E-CFA3-4CC4-A545-ACFCB33A5C0E}']
    /// <summary> Clears all the content of the builder </summary>
    function Clear: IStringBuilder;
    /// <summary> Appends a new line to the builder </summary>
    function AppendLine(aLine: string): IStringBuilder;
    /// <summary> uses XSF_SqlAdd before adding a string to the Builder </summary>
    function AppendSQL(aSQL: string): IStringBuilder;
    /// <summary> Outputs content as a string with Line-Separators </summary>
    function ToString: string;
    /// <summary> Outputs content as a string with Line-Separators syntax compatible with TStrings </summary>
    function Text: string;
    /// <summary> Appends an array of Variants converted to SQL Strings uses format Pascal function </summary>
    function AppendVars(aSQL: string; const aVars: array of variant): IStringBuilder;
    /// <summary> Compatible with Original TStringBuilder function </summary>
    function Append(const Value: Boolean): IStringBuilder; overload;
    function Append(const Value: Byte): IStringBuilder; overload;
    function Append(const Value: Char): IStringBuilder; overload;
    function Append(const Value: Currency): IStringBuilder; overload;
    function Append(const Value: Double): IStringBuilder; overload;
    function Append(const Value: Smallint): IStringBuilder; overload;
    function Append(const Value: Integer): IStringBuilder; overload;
    function Append(const Value: Int64): IStringBuilder; overload;
    function Append(const Value: TObject): IStringBuilder; overload;
    function Append(const Value: Shortint): IStringBuilder; overload;
    function Append(const Value: Single): IStringBuilder; overload;
    function Append(const Value: string): IStringBuilder; overload;
    function Append(const Value: UInt64): IStringBuilder; overload;
    function Append(const Value: TCharArray): IStringBuilder; overload;
    function Append(const Value: Word): IStringBuilder; overload;
    function Append(const Value: Cardinal): IStringBuilder; overload;
{$IFDEF mswindows}
    function Append(const Value: PAnsiChar): IStringBuilder; overload;
{$ENDIF}
    function Append(const Value: RawByteString): IStringBuilder; overload;
    function Append(const Value: Char; RepeatCount: Integer): IStringBuilder; overload;
    function Append(const Value: TCharArray; StartIndex: Integer; CharCount: Integer)
      : IStringBuilder; overload;
    function Append(const Value: string; StartIndex: Integer; Count: Integer): IStringBuilder; overload;
    /// <summary> Compatible with Original IStringBuilder function </summary>
    function Add(aString: string): IStringBuilder;
  End;

type
  TJanuaStringBuilder = class(TInterfacedObject, IStringBuilder)
  private
{$IFDEF DELPHIXE}FBuilder: TStringBuilder; {$ELSE} FBuilder: TStrings; {$ENDIF}
  public
    function Clear: IStringBuilder;
    function AppendLine(aLine: string): IStringBuilder;
    function Add(aString: string): IStringBuilder;
    function ToString: string; override;
    function Text: string;
    function AppendSQL(aSQL: string): IStringBuilder;
    function AppendVars(aSQL: string; const aVars: array of variant): IStringBuilder;
    function Append(const Value: Boolean): IStringBuilder; overload;
    function Append(const Value: Byte): IStringBuilder; overload;
    function Append(const Value: Char): IStringBuilder; overload;
    function Append(const Value: Currency): IStringBuilder; overload;
    function Append(const Value: Double): IStringBuilder; overload;
    function Append(const Value: Smallint): IStringBuilder; overload;
    function Append(const Value: Integer): IStringBuilder; overload;
    function Append(const Value: Int64): IStringBuilder; overload;
    function Append(const Value: TObject): IStringBuilder; overload;
    function Append(const Value: Shortint): IStringBuilder; overload;
    function Append(const Value: Single): IStringBuilder; overload;
    function Append(const Value: string): IStringBuilder; overload;
    function Append(const Value: UInt64): IStringBuilder; overload;
    function Append(const Value: TCharArray): IStringBuilder; overload;
    function Append(const Value: Word): IStringBuilder; overload;
    function Append(const Value: Cardinal): IStringBuilder; overload;
{$IFDEF mswindows}
    function Append(const Value: PAnsiChar): IStringBuilder; overload;
{$ENDIF mswindows}
    function Append(const Value: RawByteString): IStringBuilder; overload;
    function Append(const Value: Char; RepeatCount: Integer): IStringBuilder; overload;
    function Append(const Value: TCharArray; StartIndex: Integer; CharCount: Integer)
      : IStringBuilder; overload;
    function Append(const Value: string; StartIndex: Integer; Count: Integer): IStringBuilder; overload;

  public
    Constructor Create; overload;
    Destructor Destroy; override;
  end;

type
  TKeyFields = Tarray<string>;
  TJanuaVariantArray = Tarray<variant>;
  TValueArray = Tarray<TValue>;

  /// <summary>
  /// This are the possibile Types of properties managed by The System.
  /// </summary>
  TJanuaFieldType = (
    /// <summary> 0 Not set or Unknown Property </summary>
    jptUnknown,
    /// <summary> 1 Delphi currency datatype can store internally values to correct rounding procedures on Money </summary>
    jptCurrency,
    /// <summary>
    /// 2 Delphi currency datatype can store internally values to correct rounding procedures on Money
    /// </summary>
    jptExtended,
    /// <summary>
    /// 3 Date or just TDateTime property
    /// </summary>
    jptDate,
    /// <summary>
    /// 4 Date or just TDateTime property
    /// </summary>
    jptDateTime,
    /// <summary>
    /// 5 Integer Number Property
    /// </summary>
    jptInteger,
    /// <summary>6 Unsigned Integer Number Property</summary>
    jptCardinal,
    /// <summary> 7 Int64 Number Property</summary>
    jptLargeInt,
    /// <summary> 8 Int64 Number Property with Auto Increment </summary>
    jptAutoInc,
    /// <summary> 9 SmallInt Number Property</summary>
    jptSmallint,
    /// <summary> 10 Shortint Number Property </summary>
    jptShortint,

    /// <summary> 11 Byte Number Property
    /// </summary>
    jptByte,

    /// <summary>
    /// 12 Word Number Property
    /// </summary>
    jptWord,

    /// <summary>
    /// 13 Filename descendant of TFileName property
    /// </summary>
    jptFilename,

    /// <summary>
    /// 14 Standard UTF String (UTF16 Win and UTF8 Unix)
    /// </summary>
    jptString,
    /// <summary>
    /// 15 Floating Point Number
    /// </summary>
    jptFloat,
    /// <summary>
    /// 16 Single Precision Number
    /// </summary>
    jptSingle,
    /// <summary>
    /// 17 Html formatted Text just a special Text Property
    /// </summary>
    jptHtmlText,
    /// <summary>
    /// 18 Rich Text formatted Text can be a Blob
    /// </summary>
    jptRichText,
    /// <summary>
    /// 19 Delphi Boolean Field (True False Maps to a Byte
    /// </summary>
    jptBoolean,
    /// <summary>
    /// Delphi Memo or just Text or CBlob Field in Postgres / Oracle
    /// </summary>
    jptText,
    /// <summary>
    /// 21 Blob in Delphi are usually used to manage file content such as Images, Pdf Documents and so on
    /// </summary>
    jptBlob,
    /// <summary>
    /// 22 Bytes in Delphi are usually used to manage non UTF16 Text like a Web Page in UTF8 Format
    /// </summary>
    jptBytes,
    /// <summary>
    /// 23 A Variant Field.
    /// </summary>
    jptVariant,
    /// <summary>
    /// 24 A 128bit TGUID based Field.
    /// </summary>
    jptGUID,
    /// <summary>
    /// 25 An array of Data mutuating from arrays of variants in Postgres
    /// </summary>
    jptArray,
    /// <summary>
    /// 26 Abstract Data Type o Data Table in Delphi, is a composite Field
    /// </summary>
    jptADT,
    /// <summary>
    /// 27 A standard URL can be absolute or just relative
    /// </summary>
    jptUrl,
    /// <summary>
    /// 28 A standard XML can be mapped (and Checked to a Field);
    /// </summary>
    jptXML,
    /// <summary>
    /// 29 Delphi Memo or just Text or CBlob Field in Postgres / Oracle
    /// </summary>
    jptJson);

const
  JanuaProperty: array [jptUnknown .. jptJson] of string = (
    /// mapping field to strings
    '' { jptUnknown 0 } , 'currency' { jptCurrency 1 } , 'extended' { 2 jptExtended } , 'date' { 3 jptDate } ,
    { 4 jptDateTime } 'datetime', 'integer' { 5 jptInteger } , 'cardinal' { 6 jptCardinal } ,
    'largeint' { 7 jptLargeInt } , 'autoinc' { 8 jptAutoInc } , 'smallint' { 9 jptSmallint } ,
    'shortint' { 10 jptShortint } , 'byte' { 11 jptByte } , 'word' { 12 jptWord } ,
    'filename' { 13 jptFilename } , 'string' { 14 jptString } , 'float' { 15 jptFloat } ,
    'sigle' { 16 jptSinglehg } , 'html' { 17 jptHtmlText } , 'rtf' { 18 jptRichText } ,
    'boolean' { 19 jptBoolean } , 'text' { 20 jptText } , 'blob' { 21 jptBlob } , 'bytes' { 22 jptBytes } ,
    'variant' { 23 jptVariant } , 'guid' { 24 jptGUID } , 'array' { 25 jptArray } , 'ADT' { 26 jptADT } ,
    'url' { 27 jptUrl } , 'xml' { 28 jptXML } , 'json' { 29 jptJson } );

  {
    ftCurrency, ftBCD, ftDate, ftTime, , // 5..11
    , ftVarBytes,  , ftMemo, ftGraphic, ftFmtMemo, // 12..18
    ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar,  // 19..24
    ftLargeint,, , ftReference, ftDataSet, ftOraBlob, ftOraClob, // 25..31
    , ftInterface, ftIDispatch, , ftTimeStamp, ftFMTBcd, // 32..37
    ftFixedWideChar, , ftOraTimeStamp, ftOraInterval, // 38..41
    ftLongWord, , ftByte, ftExtended, ftConnection, ftParams, ftStream, //42..48
    ftTimeStampOffset, ftObject, ); //49..51
  }

  JanuaPropertyToField: array [jptUnknown .. jptXML] of TFieldType = (
    /// mapping field to strings
    ftUnknown { jptUnknown 0 } , ftCurrency { jptCurrency 1 } , ftExtended { 2 jptExtended } ,
    ftDate { 3 jptDate } ,
    { 4 jptDateTime } ftDateTime, ftInteger { 5 jptInteger } , ftLargeint { 6 jptCardinal } ,
    ftLargeint { 7 jptLargeInt } , ftAutoInc { 8 jptAutoInc } , ftSmallint { 9 jptSmallint } ,
    ftShortint { 10 jptShortint } , ftBytes { 11 jptByte } , ftWord { 12 jptWord } ,
    ftString { 13 jptFilename } , ftWideString { 14 jptString } , ftFloat { 15 jptFloat } ,
    ftSingle { 16 jptSinglehg } , ftWideMemo { 17 jptHtmlText } , ftBlob { 18 jptRichText } ,
    ftBoolean { 19 jptBoolean } , ftWideMemo { 20 jptText } , ftBlob { 21 jptBlob } ,
    ftBytes { 22 jptBytes } , ftVariant { 23 jptVariant } , ftGuid { 24 jptGUID } , ftArray { 25 jptArray } ,
    ftADT { 26 jptADT } , ftString { 27 jptUrl } , ftWideMemo { 28 jptXML } );

  // 2020-07-30 Set a List of 'conversion' from FieldType Or ParamType to JanuaProperty
  JanuaFieldToPropertyType: array [TFieldType.ftUnknown .. TFieldType.ftSingle] of TJanuaFieldType =
    (jptUnknown, jptString, jptSmallint, jptInteger, jptWord, // 0..4
    jptBoolean, jptFloat, jptCurrency, jptCurrency { BCD } , jptDate, jptDateTime { Time } , jptDateTime,
    jptBytes, jptBlob { VarBytes } , jptAutoInc, jptBlob, jptText, jptBlob { Graphic } , jptText { FmtMemo } ,
    jptBlob, jptBlob, jptBlob { TypedBinary } , jptUnknown { Cursor } , jptString { FixedChar } ,
    jptString { WideString } , // 19..24
    jptLargeInt, jptADT, jptArray, jptUnknown { Reference } , jptUnknown { DataSet } , jptBlob, jptText,
    jptVariant, jptUnknown { Interface } , jptUnknown { IDispatch } , jptGUID, jptDateTime { TimeStamp } ,
    jptCurrency { FMTBcd } , jptString { FixedWideChar } , jptText { WideMemo } ,
    jptDateTime { OraTimeStamp } , jptUnknown { OraInterval } , jptCardinal { LongWord } , jptShortint,
    jptByte, jptExtended, jptUnknown { Connection } , jptUnknown { Params } , jptUnknown { Stream } ,
    // 42..48
    jptUnknown { TimeStampOffset } , jptUnknown { Object } , jptSingle // 49..51
    );
  (*
    FieldDefaultProperty: array [TJanuaFieldType] of string = ('', 'AsCurrency', 'AsFloat', 'AsDate',
    'AsDateTime', 'AsInteger', 'AsLargeInt', 'AsString', 'AsString', 'AsFloat', 'AsString', 'AsString',
    'AsBoolean', 'AsString', 'AsString', 'AsString', 'AsString');
  *)

type
  TVCLStyle = record
  public const
    WIN10IDE_DARK = 'Win10IDE_Dark';
    WIN10IDE_LIGHT = 'Win10IDE_Light';

    DARKARRAY: array [0 .. 1] of string = ('', 'Win10IDE_Dark');
    LIGHTARRAY: array [0 .. 1] of string = ('', 'Win10IDE_Light');
  end;
{$IFDEF FPC}

type
  { Guard }
  Guard = class
  public
    /// <summary>
    /// Raises an <see cref="EArgumentException" /> exception.
    /// </summary>
    /// <param name="msg">
    /// The general error message.
    /// </param>
    class procedure RaiseArgumentException(const msg: string); overload; static;
    /// <summary>
    /// Raises an <see cref="EArgumentNullException" /> exception.
    /// </summary>
    class procedure RaiseArgumentNullException(const argumentName: string); overload; static;
  public
    class procedure CheckTrue(condition: Boolean; const msg: string = ''); static; inline;
    class procedure CheckFalse(condition: Boolean; const msg: string = ''); static; inline;
    class procedure CheckNotNull(const aObjectValue: TObject; const aObjectMessage: string);
  end;
{$ENDIF}

type
  TJanuaProperty = record
  private
    FPropertyType: TJanuaFieldType;
    function getName: string;
    procedure SetPropertyType(const Value: TJanuaFieldType);
    procedure SetName(const Value: string);
  public
    constructor Create(const aName: string); overload;
    constructor Create(aType: TJanuaFieldType); overload;
    property PropertyType: TJanuaFieldType read FPropertyType write SetPropertyType;
    property Name: string read getName write SetName;
  end;

  // Janua Applications & Application Packages

  // TJsonStringList serve per le proprietà di tipo Json. Che sono di fatto dei 'Text'
type
  // <summary> A Json Formatted String to be connected to the proper Editor </summary>
  TJanuaJsonString = string;
  TJanuaSQLString = string;
  TJanuaJSString = string;
  TJanuaHtmlString = string;

  TJanuaBlob = record
  private
    FBlob: TBytes;
    FIsUnicode: Boolean;
    FAsByteDynArray: TByteDynArray;
    function GetAsBytes: TBytes;
    function GetEncoded64: string;
    procedure SetEncoded64(const Value: string);
    procedure SetAsBytes(const Value: TBytes);
    procedure Setup;
    function GetAsByteDynArray: TByteDynArray;
    procedure SetAsByteDynArray(const Value: TByteDynArray);
    function GetAsBoolean: Boolean;
    procedure SetAsBoolean(const Value: Boolean);
    function GetAsInteger: Integer;
    procedure SetAsInteger(const Value: Integer);
    function GetAsSmallint: Smallint;
    procedure SetAsSmallint(const Value: Smallint);
    function GetAsLargeint: Largeint;
    procedure SetAsLargeint(const Value: Largeint);
  public
    Constructor Create(aFileName: string); overload;
    Constructor Create(aStream: TStream); overload;
    Constructor Create(aIsUnicode: Boolean); overload;
    procedure LoadFromStream(aStream: TStream);
    procedure SaveToStream(aStream: TStream);
    procedure LoadFromFile(aFile: string);
    procedure SaveToFile(aFile: string);
    procedure Clear;
    procedure Assign(aBlob: TJanuaBlob); overload;
    procedure Assign(aBytes: TBytes); overload;
    function size: Int64;
    procedure SetNil;
    function IsEqual(aBlob: TJanuaBlob): Boolean;
  public
    property Encoded64: string read GetEncoded64 write SetEncoded64;
    property AsInteger: Integer read GetAsInteger Write SetAsInteger;
    property AsSmallInt: Smallint read GetAsSmallint write SetAsSmallint;
    property AsLargeInt: Largeint read GetAsLargeint write SetAsLargeint;
    property AsBytes: TBytes read GetAsBytes write SetAsBytes;
    property AsByteDynArray: TByteDynArray read FAsByteDynArray write SetAsByteDynArray;
    property AsBoolean: Boolean read GetAsBoolean write SetAsBoolean;
  end;

type
  TJanuaPlatform = (josWindows, josWin64, josAndroid, josAndroid64, josIOS32, josiOS64, josWin32, josLinux64);

type
  TJanuaLoginError = (jleWrongPassword, jleWrongUsername, JleWrongEmail, jleSystemError);

  TJanuaRegisterError = (jreNone, jreUserAlreadyRegistered, jreWrongUsername, jreWrongEmail, jreSystemError);

  TJanuaApplType = (apNone, japAttorneys, japCloud, japHealth, japErgo, japLawyer, japFootball, japMarket,
    japUniBoard, japSwapush);

  TJanuaScriptType = (jstUnknown, jstJson, jstJavascript, jstPython, jstSQL, jstHtml, jstPascal, jstCSS,
    jstCSharp, jstBasic);

const
  JanuaApplicationCode: array [TJanuaApplType] of string = ('None', 'Attorneys', 'Cloud', 'Health', 'Ergo',
    'Lawyer', 'Football', 'Market', 'UnibBoard', 'Swapush');

type
  TJanuaApplicationType = (jatConsoleSrv, jatConsoleClient, jatWinService, jatWebBroker, jatClientWin,
    jatIntraweb, jatClientTablet, jatLinuxService, jatWinWebBrokerService, jatLinuxWebBrokerService,
    jatLinuxApacheModule, jatWinApacheModule, jatDefault);

  TJanuaAppBinary = (jafWin32, jafWin64, jafAndroid32, jafAndroid64, jafLinux64, jafMac32, jafMac64, jafIOS32,
    jafIOS64);

  TJanuaApplicationFramework = (jafServerDatasnap, jafServerWebBroker, jafWebBrokerLinux, jafFMXLinux, jafFMX,
    jafFMXMac, jafFMXIOS, jafVCLWin32, jafVCLWin64, jafFMXIOSTablet, jafFMXIOSPhone, jafFMXAndroid,
    jafFMXAndroidTablet, jafFMXAndroidPhone, jafDefault);

  TJanuaControlFramework = (jcfVCL, jcfVLCWin32, jcfVLCWin64, jcfFMX, jcfIntraweb, jcfCGDevTools);

type
  TPrintType = (ptPdf, ptPreview, ptPrint, ptPdfPreview, ptPdfSaveFile);
  TCallerType = (ctReservation, ctTicketing);

  TJanuaFileType = (jftXml, jftText, jftBinary, jftImage);

  TjanuaCashFormKind = (jfkStandard, jfkReso, jfkDelete);

  TJanuaBarcodeLabel = (jblL7161_A4, jblL7161_A4_gioielli, jblCopyBasic_LP4MS_3821, jbl7161_A4_3,
    jblAveryClan, jblL7161_A4_2, jblL7159_A4, jblLabel5230, jblL5230Buffetti, jblDymoHorizontal,
    jblDymoVertical);

type
  TJanuaPaymentMethod = (jppPaypal, jppCreditCard, jppCash, jppWireTransfer);
  TJanuaPaymentSpec = (jpsMaestro, jpsVisa, jpsPaypal, jpsMasterCard, jpsAmex);
  TJanuaCurrencyType = (jctEur, jctUSD, jctCHF);

const
  TJanuaCurrencyCode: array [TJanuaCurrencyType] of string = ('EUR', 'USD', 'CHF');

type
  TJanuaIntervalType = (jitYears, jitMonths, jitDays, jitQuarters, jitMinutes);

  // *************************************** Janua Main Type Definitions *************************************************
  // ISO COUNTRIES

type
  TJanuaISOCountries = (jicNone, jicItalia, jicFrance, jicEngland, jicUnitedStates, jicEspana, jicPortugal,
    jicBrazil, jicArgentina, jicRussia, jicWorld, jicDeutschland);

const
  JanuaIsoCountry2Code: array [TJanuaISOCountries] of string = ('nn', 'it', 'fr', 'en', 'us', 'es', 'po',
    'br', 'ar', 'ru', 'ww', 'de');

  JanuaIsoCountry3Code: array [TJanuaISOCountries] of string = ('nnn', 'ita', 'fra', 'eng', 'usa', 'esp',
    'por', 'bra', 'arg', 'rus', 'www', 'deu');

Type

  TJanuaisoCountryCode = (jicNNN, jicITA, jicGBR, jicUSA, jicFRA, jicPOR, jicESP, jicARG, jicBRA, jicDEU);

  TJanuaisoCultureCode = (jilNone, jilITA_ITA, jilENG_ENG, jilEN_US, jilFRA_FRA, jilPOR_POR, jilPOR_BRA,
    jilESP_ESP, jilESP_ARG, jilESP_MEX, jilDEU, jilHOL);

  TJanuaLanguage = (jlaNone, jlaItalian, jlaEnglish, jlaFrancais, jlaEspanol, jlaPortugues, jlaRussian,
    jlaGerman);

const
  JanuaLanguageCode: array [TJanuaLanguage] of string = ('', 'it', 'en', 'fr', 'es', 'po', 'ru', 'de');

type

  TJanuaCultures = (jicNone_None, jicItalian_Italy, jicEnglish_England, jicEnglish_USA, jicFrancais_France,
    jicEspanol_Espana, jicEspanol_Argentina, jicPortugues_Portugal, jicPortugues_Brazil,
    jicDeutsch_Deutschland);

  TPaymentType = (ptCheque, ptCash, ptDraft, ptCreditCard, ptDeferred, ptWireTranfer);

  TReportType = (rtInvoice, rtBof, rtShippingVoucher, rtShippingStatement);

  TDocumentType = (jdtOrder, jdtDocument);

  TRowInsert = (riInsert, riUpdate, riInsertSilent);

  TJanuaDocumentPrintType = (jdtSalesInvoice, jdtBillOfLading);

  TJanuaRSSFeedType = (jrtWordpress, jrtStandard, jrtAIFA, jrtEmbarcadero);

  TJanuaCMSArticleType = (jcaNews, jcaDataSearch);

  TJanuaRoleLevel = (jrlSysAdmin, jrlAppAdmin, jrlAdmin, jrlUser, jrlOperator);

  TJanuaLogType = (jltLog, jltWarning, jltError);

const
  JanuaLogType: array [TJanuaLogType] of string = ('Message', 'Warning', 'Error');

  // TJanuaRecordStatus is used to tell the State of a Record just to instruct the CRUD procedures how to operate
  // CRUD : acronym of Create, Read, Update, Delete and is used in both Database and Web Services recordset procedures

type
  TJanuaGenderType = (Male, Female, Company, Corporate, NotSet);

const
  JanuaGenderIndex: array [TJanuaGenderType.Male .. TJanuaGenderType.NotSet] of Smallint = (0, 1, 2, 3, -1);
  JanuaGenderCode: array [TJanuaGenderType.Male .. TJanuaGenderType.NotSet] of string = ('M', 'F', 'C',
    'S', 'N');
  JanuaGenderName: array [TJanuaGenderType.Male .. TJanuaGenderType.NotSet] of string = ('Male', 'Female',
    'Company', 'Corporate', 'NotSet');

type
  TJanuaGender = record
  private
    FGenderType: TJanuaGenderType;
    function getGenderCode: string;
    function getGenderIndex: Smallint;
    procedure SetGenderCode(const Value: string);
    procedure SetGenderIndex(const Value: Smallint);
    procedure SetGenderType(const Value: TJanuaGenderType);
    function GetGenderName: string;
  public
    Constructor Create(aType: TJanuaGenderType); overload;
    Constructor Create(aCode: string); overload;
    property GenderIndex: Smallint read getGenderIndex write SetGenderIndex;
    property GenderType: TJanuaGenderType read FGenderType write SetGenderType;
    property GenderCode: string read getGenderCode write SetGenderCode;
    property GenderName: string read GetGenderName;

  end;

type
  TJanuaInterval = record
    FromDate: TDate;
    IntervalType: TJanuaIntervalType;
    Duration: Word;
  public
    function ExpirationDate: TDate;
  end;

type
  TJanuaPayment = record
    Amount: Currency;
    Currency: TJanuaCurrencyType;
    Method: TJanuaPaymentMethod;
    Specification: TJanuaPaymentSpec;
    PaymentDuration: TJanuaInterval;
  end;

type
  TJanuaRecordCoordinates = record
    Latitude: Double;
    Longitude: Double;
    Address: string;
  public
    constructor Create(aLatitude, aLongitude: Double; aAddress: string = '');
    function AsJsonObject: TJsonObject;
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    function AsJson: string;
    procedure LoadFromDataset(aDataset: TDataset);
    procedure LoadFromJson(aJson: string);
    procedure Clear;
  end;

  TLocalCoordinates = class
  strict private
    FCoordinates: TJanuaRecordCoordinates;
    FIsUpdating: Boolean;
    procedure SetCoordinates(const Value: TJanuaRecordCoordinates);
    procedure SetIsUpdating(const Value: Boolean);
  public
    constructor Create; overload;
  public
    property Coordinates: TJanuaRecordCoordinates read FCoordinates write SetCoordinates;
    property IsUpdating: Boolean read FIsUpdating write SetIsUpdating;
  end;

  // Organizations sono le organizzazioni della sanità di solito organizzazioni
  // Territoriali, una organizzazione Sanitaria può avere sotto di sè diverse
  // Branche e Branche Specialistiche suppongo

type
  TJanuaCase = (jcNone, jcLower, jcUpper);

  TJanuaRecAlign = (jaNone, jaLeft, jaRight, jaCenter);

type
  /// <summary>
  /// Record Definition for Export/Import procedures
  /// </summary>
  TRecFieldDef = record
  private
    FCharCase: TJanuaCase;
    FFieldName: string;
    FAlign: TJanuaRecAlign;
    procedure SetCharCase(const Value: TJanuaCase);
    procedure SetFieldName(const Value: string);
    procedure SetAlign(const Value: TJanuaRecAlign);
  public
    Constructor Create(aFieldName: string; aCase: TJanuaCase = jcNone; aAlign: TJanuaRecAlign = jaNone;
      aFixedWidth: Smallint = -1);
  public
    property CharCase: TJanuaCase read FCharCase write SetCharCase;
    property FieldName: string read FFieldName write SetFieldName;
    property Align: TJanuaRecAlign read FAlign write SetAlign;
  end;

  TRecFieldDefArray = Tarray<TRecFieldDef>;

  TRecFieldDefList = record
  private
    FTableName: string;
    FItems: TRecFieldDefArray;
    procedure SetItems(const Value: TRecFieldDefArray);
    procedure SetTableName(const Value: string);
  public
    property Items: TRecFieldDefArray read FItems write SetItems;
    property TableName: string read FTableName write SetTableName;
  public
    constructor Create(const aName: string);
    function Clear: TRecFieldDefList;
    function Count: Integer;
    function Add(aFieldDef: TRecFieldDef): TRecFieldDefList; overload;
    function Add(aFieldName: string; aCase: TJanuaCase = jcNone; aAlign: TJanuaRecAlign = jaNone;
      aFixedWidth: Smallint = -1): TRecFieldDefList; overload;
  end;

type
  TJanuaOrganizationsTypes = (jotItalianASL, jotHospital);

  TJanuaAnagraphType = (jatCustomer, jatAgent, jatSupplier, jatUnknown, jatCustom, jatMinilink, jatNoProfit,
    jatMarketCustomer, JatMarketCompany, jatMarketWorker, jatSchoolCustomer, jatSchoolSupplier,
    jatSchoolWorker, jatSchoolStudent, jatSchoolGroup, jatSchoolTeacher);

{$REGION 'Logger'}

type
  TJanuaLogRecord = record
  private
    FObjectClass: TObject;
    FClassName: string;
    FOwnerName: string;
    FLogType: TJanuaLogType;
    FMilliseconds: Int64;
    FDateTime: TDateTime;
    FProcedureName: string;
    FLogMessage: string;
    FErrorMessage: string;
    procedure SetClassName(const Value: string);
    procedure SetDateTime(const Value: TDateTime);
    procedure SetErrorMessage(const Value: string);
    procedure SetLogMessage(const Value: string);
    procedure SetLogType(const Value: TJanuaLogType);
    procedure SetMilliseconds(const Value: Int64);
    procedure SetObjectClass(const Value: TObject);
    procedure SetOwnerName(const Value: string);
    procedure SetProcedureName(const Value: string);
  public
{$IFNDEF FPC} procedure CreateDataset(aDataset: TFdMemTable); {$ENDIF}
    procedure SaveToDataset(aDataset: TDataset);
    procedure AppendToDataset(aDataset: TDataset);
    procedure Clear;
    function LogText: string;
    function LogCsv: string;
    constructor Create(const aProcedure, aMessage: string; aClass: TObject;
      const aType: TJanuaLogType = jltLog; const aMS: Int64 = 0; aError: Exception = nil);
    function ToString: string;
  public
    property DateTime: TDateTime read FDateTime write SetDateTime;
    property ClassName: string read FClassName write SetClassName;
    property OwnerName: string read FOwnerName write SetOwnerName;
    property ProcedureName: string read FProcedureName write SetProcedureName;
    property LogMessage: string read FLogMessage write SetLogMessage;
    property ErrorMessage: string read FErrorMessage write SetErrorMessage;
    property LogType: TJanuaLogType read FLogType write SetLogType;
    property Milliseconds: Int64 read FMilliseconds write SetMilliseconds;
    property ObjectClass: TObject read FObjectClass write SetObjectClass;
  end;

  TLogArray = array of TJanuaLogRecord;

  TJanuaLogRecords = record
    Items: TLogArray;
    ItemIndex: Integer;
  private
    FWatchStarted: Boolean;
    sw: TStopWatch;
    FDefaultClass: TObject;
    FDefaultProcedure: string;
  public
    procedure Add(aItem: TJanuaLogRecord); overload;
    /// <param name="aProcedure"> name of the procedure </param>
    /// <param name="aMessage"> message to log </param>
    /// <param name="aClass"> class reference to log </param>
    /// <param name="aType"> sets the kind of log we need to store (std, warn, error) </param>
    procedure Add(const aProcedure, aMessage: string; aClass: TObject;
      const aType: TJanuaLogType = jltLog); overload;
    procedure Add(const aProcedure, aMessage: string; aClass: TObject; e: Exception); overload;

    function Count: Integer;
    function SelectedItem: TJanuaLogRecord;
    function LogString(const aObject: TObject = nil): string;
    function TailLog: string;
    procedure ExportToCSV(const aFileName: string);
    procedure Clear(const aLog: string = '');
    procedure StartWatch;
    procedure StopWatch;
    procedure ResetWatch;
    /// <summary> Clears the log content. Can do it selectively if a log name is given </summary>
    /// <param name="aLog"> name of the log </param>
    procedure ClearLog(aLog: string = '');
    procedure ClearLocalLog(aClass: TObject; const aProcedure: string = '');
    /// <summary> Appends another log to the main log, should be used to trace 'local' object log </summary>
    procedure Append(aLog: TJanuaLogRecords);
  public
    property WatchStarted: Boolean read FWatchStarted;
    property DefaultClass: TObject read FDefaultClass write FDefaultClass;
    property DefaultProcedure: string read FDefaultProcedure write FDefaultProcedure;
  public
    constructor Create(const aWatchStarted: Boolean);
  end;

  // Declare an event type. It looks allot like a normal method declaration except
  // it suffixed by "of object". That "of object" tells Delphi the variable of this
  // type needs to be assigned a method of an object, not just any global function
  // with the correct signature.
  TJanuaLogEvent = procedure(const Sender: TObject; const aLog: TJanuaLogRecord) of object;

{$ENDREGION 'Logger'}
{$REGION 'JanuaOS'}
  TJanuaOSHomeDir = (johDefault, johUser, johCustom, johCurrent);

  TJanuaOSProfile = record
    AppName: string;
    SharedDocumentsPath: string;
    Directory: String;
    LinuxHome: string;
    Title: String;
    LastErrorMessage: string;
    CustomServer: Boolean;
    ResolveToFile: Boolean;
    UseCurrentDir: Boolean;
    HomeDirectory: TJanuaOSHomeDir;
  public
    procedure Initialize;
    function GetConfiguration: string;
  end;

type
  TJanuaServerRecordConf = record
  private
    FUsername: string;
    FSchema: string;
    FPassword: string;
    function GetEngineName: string;
    procedure SetEngineName(const Value: string);
    procedure SetSchema(const Value: string);
    procedure SetUsername(const Value: string);
    procedure SetPassword(const Value: string);
  public
    Port: Word;
    DatabaseName: string;
    Direct: Boolean;
    Address: string;
    Success: Boolean;
    IP: string;
    TestMessage: string;
    DBEngine: TJanuaDBEngine;
    Pooling: Boolean;
    ItemIndex: Integer;
  public
    procedure Initialize;
    constructor Create(const aAddress: string); overload;
    function Conf: String;
    function TestAddress: Boolean;
    function GetConfiguration: string;
    function Equals(aConf: TJanuaServerRecordConf): Boolean;
    procedure LoadFromFile(aFileName: string);
    procedure SaveToFile(aFileName: string);
    procedure Assign(aConf: TJanuaServerRecordConf);
    constructor Create(aConf: TJanuaServerRecordConf); overload;
    constructor Create(aDBEngine: TJanuaDBEngine); overload;
    property Username: string read FUsername write SetUsername;
    property Schema: string read FSchema write SetSchema;
    property Password: string read FPassword write SetPassword;
  public
    property EngineName: string read GetEngineName write SetEngineName;
  end;

type
  TJanuaServerRecordConfs = record
    Items: array of TJanuaServerRecordConf;
  private
    FasJsonObject: TJsonObject;
    function GetAsJson: string;
    function GetasJsonPretty: string;
    procedure SetasJson(const Value: string);
    procedure SetasJsonObject(const Value: TJsonObject);
    procedure setasJsonPretty(const Value: string);
  public
    constructor Create(aItem: TJanuaServerRecordConf); overload;
    constructor Create(aItems: Integer); overload;
    function Count: Integer;
    procedure Add(aItem: TJanuaServerRecordConf);
    function find(aItem: TJanuaServerRecordConf): Boolean;
    procedure delete(aItem: TJanuaServerRecordConf); overload;
    procedure delete(aIndex: Integer); overload;
    property AsJsonObject: TJsonObject read FasJsonObject write SetasJsonObject;
    property AsJson: string read GetAsJson write SetasJson;
    property asJsonPretty: string read GetasJsonPretty write setasJsonPretty;
    function Equals(aConf: TJanuaServerRecordConfs): Boolean;
    function AsText: string;
  end;

{$ENDREGION 'JanuaOS'}
{$REGION 'JanuaServerSession'}

type
  TJanuaContentType = (jctString, jctJsonObject, jctXml, jctFile, jctImageFile, jctMemo, jctInteger,
    jctCurrency, jctParams, jctMemTable, jctBlob, jctHtml, jctNotSet);

const
  JanuaContentTypeString: array [jctString .. jctNotSet] of string = ('string', 'json', 'xml', 'file',
    'image', 'memo', 'integeger', 'currency', 'params', 'virtualtable', 'html', 'blob', 'notset');

type
  TJanuaRecordSchema = record
    ID: Integer;
    Name: string;
    schema_des: string;
    /// <summary>
    /// -- This column tell us if this schema is linked to a person as a
    /// personal schema to store owner's data, password, and profiles
    /// </summary>
    personal: Boolean;
    db_schema_key: string;
    country_id: Shortint;
    language_id: Shortint;
    /// <summary>
    /// Defa
    /// </summary>
    default_user_id: Integer;
  public
    procedure Clear;
  end;

type
  TJanuaServerSession = record
    FKey: string;
    Email: string;
    Schema_id: Integer;
    Session_id: Int64;
    User_id: Integer;
    Social_ID: string;
    Social_Kind: string;
    UserSchemas: array of TJanuaRecordSchema;
    SelectedSchema: TJanuaRecordSchema;
    isPublic: Boolean;
    CustomServer: Boolean;
    CustomServerUrl: string;
    CustomServerPort: string;
    CustomServerSchema: string;
    CustomServerPassword: string;
    CustomServerUser: string;
  private
    procedure SetasJsonObject(aJsonObject: TJsonObject);
    function getAsJsonObject: TJsonObject;
    procedure SetKey(const Value: string);
    function GetAsJson: string;
  public
    property Key: string read FKey write SetKey;
    property AsJsonObject: TJsonObject read getAsJsonObject write SetasJsonObject;
    property AsJson: string read GetAsJson;
  public
    function ToString: string;
    procedure LoadFromJsonObject(aJsonObject: TJsonObject);
    procedure LoadFromDataset(aDataset: TDataset);
    procedure Clear;
    /// <summary>
    /// Thi method retrieves a schema by its id, if the id provided is not in
    /// the schema list the result is false, else the funcion sets the
    /// Selected Schema and the schema_id field.
    /// </summary>
    /// <param name="aID">
    /// the unique id of the schema
    /// </param>
    /// <returns>
    /// False means not found, True means it is now Set ....
    /// </returns>
    function setSchemaByID(aID: Integer): Boolean;
    function asJsonPretty: string;
  end;

{$ENDREGION 'JanuaServerSession'}
{$REGION 'DB'}

type
  TJanuaDatasetType = (jdtProcedure, jdtQuery, jdtSmartQuery, jdtTable, jdtSQL, jdtClientDataset, jdtDataset);

  // TJanuaDatasetType = (jdtRecordSet, jdtStoredProcedure, jdtSQL);
const
  JanuaDatasetType: array [TJanuaDatasetType] of string = ('Procedure', 'Query', 'SmartQuery', 'Table', 'SQL',
    'ClientDataset', 'Dataset');

{$ENDREGION 'DB'}

type
  TJanuaBarcodeType = (jbtEAN13, jbtEAN8, jbtOther);

const
  Masks: array [0 .. 7] of Byte = (1, 2, 4, 8, 16, 32, 64, 128);

var
  JanuaPlatforms: set of TJanuaPlatform;
  /// <summary>  Used for unit testing is connected to system variable GITHUB</summary>
  /// <example>  FilePath :) sGitHubHome + '\SDK\Testing\res\images\file.jpg'; </example>
  sGitHubHome: string;
  sJanuaHome: string;

{$IFNDEF FPC}

type
  ISmartReference<T: class> = reference to function: T;

  /// <summary>
  /// TSmartReference è una classe 'wrapper' di un oggetto di tipo T:class.
  /// Sfrutta il fatto che una reference to function è di fatto un discendente di IInterface
  /// Quanto la variabile di riferimento all'istanza di TSmartFerence è deferenziata viene
  /// eseguito il metodo 'Destroy'.
  /// A smart pointer is a sort of transparent wrapper round an underlying object
  /// that frees the object when the wrapper itself goes out of scope:
  /// </summary>
  TSmartReference<T: class> = class(TInterfacedObject, ISmartReference<T>)
  strict private
    FObject: T;
  protected
    function Invoke: T;
  public
    /// <summary>
    /// Il costruttore richiede una istanza create dell'oggetto di tipo T:class
    /// </summary>
    /// <param name="aObject">
    /// Istanza (TObject.Create) di un oggetto di classe T
    /// </param>
    constructor Create(aObject: T);
    destructor Destroy; override;
  end;
{$ENDIF}
{$REGION 'EnumConvertor'}

type
  TEnumSet<T> = record
  strict private
    class function TypeInfo: PTypeInfo; inline; static;
  public
    class function IsSet: Boolean; static;
    class function Cardinality(const Value: T): Integer; static;
  end;

type
  TEnumConvertor<T: record > = record
    class function TryFromInteger(aOrdValue: Integer; var EnumValue: T): Boolean; static;
    class function TryFromStringArray(S: string; const a: array of string; var EnumValue: T): Boolean; static;
    /// <summary> tries to retrieve enumerator from a string array </summary>
    /// <example> if TEnumConvertor<TJanuaFieldType>.TryFromString(LSType, LType) then </example>
    class function TryFromString(const Str: string; var EnumValue: T): Boolean; static;
    class function ToString(Value: T): string; static;
  end;

  // How can I get the number of elements of any variable of type set?
  // https://stackoverflow.com/questions/34442102/how-can-i-get-the-number-of-elements-of-any-variable-of-type-set
  // This is a Class to Test a SET and check if SET is a Set and its cardinality
  // It uses only  Class functions so its Usage is Writeln(TSet<SomeSet>.Cardinality(Value));
  ERuntimeTypeError = class(Exception);

{$ENDREGION 'EnumConvertor'}

type
  TJanuaRole = record
    ID: Smallint;
    Name: string;
    Index: Smallint;
    Level: TJanuaRoleLevel;
  end;

{$REGION 'Configuration'}

type
  TJanuaUserType = (jutND, jutNewUser, jutRegisteredUser);

  /// <summary>
  /// This is a List of all generic objects that will be used in forms and
  /// webforms or webpages
  /// </summary>
  TJanuaComponentTypes = (
    /// <summary>
    /// A Form
    /// </summary>
    jotForm,

    /// <summary>
    /// A Button that can be just a Button or a Switch
    /// </summary>
    jotButton,

    /// <summary>
    /// Normal Label or html Label or Mixed Label
    /// </summary>
    jotLabel,

    /// <summary>
    /// Edit box containing Text or password or whatever else
    /// </summary>
    jotEdit,

    /// <summary>
    /// Text displayer with no editable capabilities can be dynamic (linked to
    /// database) or completely static
    /// </summary>
    jotText,

    /// <summary>
    /// The memo is usually connected as part of an editor
    /// </summary>
    jotMemo,

    /// <summary>
    /// A Container: Panel, Region or Shader
    /// </summary>
    jotRegionPanel,

    /// <summary>
    /// a Standard Link component to a Url
    /// </summary>
    jotLinkUrl,

    /// <summary>
    /// An Html Formatted Text
    /// </summary>
    jotHtmlText,

    /// <summary>
    /// An Image Component
    /// </summary>
    jotImage);

  TJanuaFormDef = (
    /// <summary>
    /// Non selezionato
    /// </summary>
    jwsNone,

    /// <summary>
    /// Unibacheca Home
    /// </summary>
    jwsUniHome,

    /// <summary>
    /// Unibacheca Intro
    /// </summary>
    jwsUniIntro,

    /// <summary>
    /// Virtual Classroom
    /// </summary>
    jwsVirtualClassRoom,

    jwsUniLogin,

    jwsUniBookSearch,

    jwsUniBookInsert,

    jwsUniBookManage,

    jwsUniBookShow,

    jwsUniRoomSearch,

    jwsUniRoomInsert,

    jwsUniRoomManage,

    jwsUniRoomShow,

    jwsRegisterStart,

    jwsRegisterStudent,

    jwsRegisterPrivate,

    jwsRegisterCompany,

    jwsRegisterEnd,

    jwsUniHtmlPage,

    jwsUniNews,

    jwsUniWriteArticle,

    jwsUniPublish,

    jwsUniSearch,

    jwsUniAbout,

    jwsHayHome,

    jwsHayAbout,

    jwsHealthLogin,

    jwsHealthRegistration,

    jwsHealthHome

    );

type
  TJanuaConfType = (jfcUnknown, jcfString, jcfBoolean, jcfInteger, jcfLargeInt, jcfDouble, jcfDate,
    jcfDateTime, jcfServerConf);

const
  JanuaConfType: array [TJanuaConfType] of string = ('', 'String', 'Boolean', 'Integer', 'LargeInt', 'Double',
    'Date', 'DateTime', 'ServerConf');

type
  TJanuaProcedureType = (jprProcedure, jprScript, jprPage, jprStoredProcedure, jprDSSelect, jprDSInsert,
    jprDSUpdate, jprDSDelete, jprUnknown);


  // type
  // TJanuaWebMethodType = (, , , , , , , );

const
  JanuaProcedureTypeString: array [jprProcedure .. jprUnknown] of string = ('procedure', 'script', 'page',
    'storedproc', 'dsselect', 'dsinsert', 'dsupdate', 'dsdelete', 'notset');

function DecodeJanuaConfType(sType: string): TJanuaConfType;
function DecodeProcedureTypeString(aType: string): TJanuaProcedureType;
function DecodeGenderCode(GenderCode: string): TJanuaGenderType;
function DecodeGenderType(Gender: TJanuaGenderType): string;
function DecodeGenderIndex(GenderIndex: Smallint): TJanuaGenderType;

type
  TJanuaConfValue = Class
  public
    Key: string;
    ValueType: TJanuaConfType;
  private
    iValue: Integer;
    bValue: Boolean;
    lValue: Int64;
    dValue: Double;
    dtValue: TDate;
    dttValue: TDateTime;
    rcValue: TJanuaServerRecordConfs;
  private
    FsValue: string;
    function GetAsInteger: Integer;
    function getAsString: string;
    function getAsJsonObject: TJsonObject;
    procedure SetAsInteger(const Value: Integer);
    procedure SetasJsonObject(const Value: TJsonObject);
    procedure setAsString(const Value: string);
    procedure SetsValue(const Value: string);
  public
    property AsInteger: Integer read GetAsInteger write SetAsInteger;
    property AsString: string read getAsString write setAsString;
    property AsJsonObject: TJsonObject read getAsJsonObject write SetasJsonObject;
    property sValue: string read FsValue write SetsValue;
  public
    procedure Clear;
    constructor Create; overload;
    constructor Create(const aKey: string; aValue: Boolean); overload;
    constructor Create(const aKey, aValue: string); overload;
    constructor Create(const aKey: string; aValue: Int64); overload;
    constructor Create(const aKey: string; aValue: Integer); overload;
    constructor Create(const aKey: string; aValue: TDate); overload;
    constructor Create(const aKey: string; aValue: TDateTime); overload;
    constructor Create(const aKey: string; aValue: TJsonObject); overload;
    constructor Create(aValue: TJsonObject); overload;
    constructor Create(const aKey: string; aValue: TJanuaServerRecordConfs); overload;
  end;

type
  TJanuaConfKey = class
  private
    Key: string;
    FItems: IDictionary<string, TJanuaConfValue>;
  protected
    function GetItems: IDictionary<string, TJanuaConfValue>;
  private
    function getAsJsonObject: TJsonObject;
    procedure SetasJsonObject(const Value: TJsonObject);
  public
    property Items: IDictionary<string, TJanuaConfValue> read GetItems;
  public
    procedure AddItem(aItem: TJanuaConfValue); overload;
    procedure AddItem(aObject: TJsonObject); overload;
    procedure AddItem(const aKey, aValue: string); overload;
    procedure AddItem(const aKey: string; aValue: Int64); overload;
    procedure AddItem(const aKey: string; aValue: Integer); overload;
    procedure AddDate(const aKey: string; aValue: TDate); overload;
    procedure AddItem(const aKey: string; aValue: TDateTime); overload;
    procedure AddItem(const aKey: string; aValue: Boolean); overload;
    procedure AddItem(const aKey: string; aValue: TJsonObject); overload;
    procedure AddItem(const aKey: string; aValue: TJanuaServerRecordConfs); overload;
    procedure SetItem(const aKey, aValue: string); overload;
    procedure SetItem(const aKey: string; aValue: Int64); overload;
    procedure SetItem(const aKey: string; aValue: Integer); overload;
    procedure SetItem(const aKey: string; aValue: TDate); overload;
    procedure SetItem(const aKey: string; aValue: TDateTime); overload;
    procedure SetItem(const aKey: string; aValue: Boolean); overload;
    procedure SetItem(const aKey: string; aValue: TJsonObject); overload;
    procedure SetItem(const aKey: string; aValue: TJanuaServerRecordConfs); overload;
  public
    procedure Clear;
    function Count: Integer;
    constructor Create(const aKey: string); overload;
    constructor Create(const aKey: string; aItem: TJanuaConfValue); overload;
    constructor Create(aJsonObject: TJsonObject); overload;
    destructor Destroy; override;
    function FindValue(const aKey: string): Boolean;
  public
    property AsJsonObject: TJsonObject read getAsJsonObject write SetasJsonObject;
  end;

type
  TJanuaDisclaimer = record
    About: string;
    Terms: string;
    Privacy: string;
    LastErrorMessage: string;
  public
    function AsJsonObject: TJsonObject;
    procedure LoadFromDataset(aDataset: TDataset);
    function SaveToDataset(aDataset: TDataset): Boolean;
  end;

type
  TJanuaConfiguration = class(TObject)
  strict private
    FKeys: IDictionary<string, TJanuaConfKey>;
    FileName: TFileName;
    LastErrorMessage: string;
    HasErrors: Boolean;
    FIsLoaded: Boolean;
  private
    function GetKeys: IDictionary<string, TJanuaConfKey>;
    function getAsJsonObject: TJsonObject;
    procedure SetasJsonObject(const Value: TJsonObject);
    procedure ClearKeys;
  public
    constructor Create(aFileName: TFileName); overload;
    destructor Destroy; override;
    property Keys: IDictionary<string, TJanuaConfKey> read GetKeys;
  public
    procedure Initialize(const aFileName: string);
    procedure Clear;
    function isLoaded: Boolean;
    procedure UnLoad;
    procedure LoadConfiguration; overload;
    procedure LoadConfiguration(aFileName: TFileName); overload;
    procedure SaveConfiguration; overload;
    procedure SaveConfiguration(aFileName: TFileName); overload;
    function Count: Integer;
    function FindValue(aKey, aValue: string): Boolean;
    function FindKey(const aKey: string): Boolean;
    procedure AddKey(sKey: string); overload;
    procedure AddKey(const aKey: TJanuaConfKey); overload;
    procedure AddKey(const aKey: TJsonObject); overload;
    procedure LoadFromFile(aFileName: TFileName);
    function asJsonPretty: string;
    function AsJson: string;
    function AsJsonString: string;
    function setValue(aKey, aName, aDefault: string): string; overload;
    function setValue(aKey, aName: string; aDefault: Boolean): Boolean; overload;
    function setValue(aKey, aName: string; aDefault: Integer): Integer; overload;
    function setValue(aKey, aName: string; aDefault: Int64): Int64; overload;
    function setValue(aKey, aName: string; aDefault: Double): Double; overload;
    function setValue(aKey, aName: string; aDefault: TDate): TDate; overload;
    function setValue(aKey, aName: string; aDefault: TDateTime): TDateTime; overload;
    function setValue(aKey, aName: string; aDefault: TJsonObject): TJsonObject; overload;
    function setValue(aKey, aName: string; aDefault: TJanuaServerRecordConfs)
      : TJanuaServerRecordConfs; overload;
    function getValue(aKey, aName, aDefault: string): string; overload;
    function getValue(aKey, aName: string; aDefault: Boolean): Boolean; overload;
    function getValue(aKey, aName: string; aDefault: Integer): Integer; overload;
    function getValue(aKey, aName: string; aDefault: Int64): Int64; overload;
    function getValue(aKey, aName: string; aDefault: Double): Double; overload;
    function getValue(aKey, aName: string; aDefault: TDate): TDate; overload;
    function getValue(aKey, aName: string; aDefault: TDateTime): TDateTime; overload;
    function getValue(aKey, aName: string; aDefault: TJsonObject): TJsonObject; overload;
    function getValue(aKey, aName: string; aDefault: TJanuaServerRecordConfs)
      : TJanuaServerRecordConfs; overload;
  public
    property AsJsonObject: TJsonObject read getAsJsonObject write SetasJsonObject;
  end;

{$ENDREGION 'Configuration'}



  // ------------------- Janua Core OS Definitions -------------------------------

function CheckDigitBarcode(var aBarcode: string; aBarcodeType: TJanuaBarcodeType): Boolean;
function GetCardinality(const PSet: PByteArray; const SizeOfSet (* in bytes *) : Integer): Integer; inline;

// Interface RTTI

procedure RegisterInterface(InterfaceType: PTypeInfo);
function GetInterfaceType(Guid: TGUID): PTypeInfo;
function GetInterfaceName(Guid: TGUID): string;
function TryGetInterfaceType(Guid: TGUID; out aTypeInfo: PTypeInfo): Boolean;
//
function JanuaSupports(const Instance: IInterface; const IID: TGUID; out Intf; const aName: string = '';
  const aRaise: Boolean = True): Boolean; overload;
function JanuaSupports(const Instance: TObject; const IID: TGUID; out Intf; CONST aRaise: Boolean = True)
  : Boolean; overload;

const
  sl = sLineBreak;

implementation

uses
{$IFNDEF FPC}
  Soap.EncdDecd, System.StrUtils, System.Math, REST.Utils, System.NetEncoding,
{$IFDEF MSWINDOWS}
  Winapi.Winsock,
{$ENDIF}
{$ELSE}
{$IFDEF LINUX}
  unixtype, linux,
{$ENDIF LINUX}
  StrUtils, Math, DateUtils,
{$ENDIF}
  IdIcmpClient,
  Janua.Core.Json;

var
  FIntfDictioary: TDictionary<TGUID, PTypeInfo>;

function JanuaSupports(const Instance: IInterface; const IID: TGUID; out Intf; const aName: string;
  const aRaise: Boolean): Boolean; overload;
begin
  Result := Supports(Instance, IID, Intf);
  if not Result and aRaise then
    raise Exception.Create(aName + ' Interface not supported ' + GetInterfaceName(IID));
end;

function JanuaSupports(const Instance: TObject; const IID: TGUID; out Intf; const aRaise: Boolean = True)
  : Boolean; overload;
begin
  Result := Supports(Instance, IID, Intf);
  if not Result and aRaise then
    raise Exception.Create(Instance.ClassName + ' does not support ' + GetInterfaceName(IID));
end;

procedure RegisterInterface(InterfaceType: PTypeInfo);
begin
  FIntfDictioary.AddOrSetValue(GetTypeData(InterfaceType).Guid, InterfaceType)
end;

function GetInterfaceType(Guid: TGUID): PTypeInfo;
begin
  if not FIntfDictioary.TryGetValue(Guid, Result) then
    Result := nil;
end;

function TryGetInterfaceType(Guid: TGUID; out aTypeInfo: PTypeInfo): Boolean;
begin
  Result := FIntfDictioary.TryGetValue(Guid, aTypeInfo)
end;

function GetInterfaceName(Guid: TGUID): string;
var
  lTypeInfo: PTypeInfo;
begin
  if TryGetInterfaceType(Guid, lTypeInfo) then
    Result := GetTypeName(lTypeInfo)
  else
    Result := Guid.ToString;
end;

function DecodeJanuaConfType(sType: string): TJanuaConfType;
var
  i: TJanuaConfType;
begin
  Result := TJanuaConfType.jfcUnknown;

  for i := Low(TJanuaConfType) to High(TJanuaConfType) do
    if sType.ToLower = JanuaConfType[i].ToLower then
      Result := i;
end;

function DecodeProcedureTypeString(aType: string): TJanuaProcedureType;
var
  aProcedureType: TJanuaProcedureType;
begin

  Result := jprUnknown;
  for aProcedureType := jprProcedure to jprUnknown do
    if (LowerCase(JanuaProcedureTypeString[aProcedureType]) = LowerCase(aType)) then
      Result := aProcedureType;

end;

function DecodeGenderIndex(GenderIndex: Smallint): TJanuaGenderType;
begin
  case GenderIndex of
    0:
      Result := TJanuaGenderType.Male;
    1:
      Result := TJanuaGenderType.Female;
  else
    Result := TJanuaGenderType.Male;
  end;
end;

function DecodeGenderCode(GenderCode: string): TJanuaGenderType;
begin
  if GenderCode = 'M' then
    Result := TJanuaGenderType.Male
  else
    Result := TJanuaGenderType.Female;
end;

function DecodeGenderType(Gender: TJanuaGenderType): string;
begin
  if Gender = TJanuaGenderType.Male then
    Result := 'M'
  else
    Result := 'F';
end;

{$IFDEF MSWINDOWS}
{ ************************************** }

// Function to get the IP Address from a Host

function GetIPFromHost(

  const HostName: String): string;
type
  TaPInAddr = array [0 .. 10] of PInAddr;
  PaPInAddr = ^TaPInAddr;
var
  phe: PHostEnt;
  pptr: PaPInAddr;
  i: Integer;
  GInitData: TWSAData;
begin
  WSAStartup($101, GInitData);
  Result := '';
  phe := GetHostByName(PAnsiChar(AnsiString(HostName)));
  if phe = nil then
    Exit('0.0.0.0');
  pptr := PaPInAddr(phe^.h_addr_list);
  i := 0;
  while pptr^[i] <> nil do
  begin
    Result := String(inet_ntoa(pptr^[i]^));
    Inc(i);
  end;
  WSACleanup;
end;
{$ELSE}

function GetIPFromHost(

  const HostName: string): string;
begin
  Result := '0.0.0.0';
end;
{$ENDIF}

function Ping(const aServer: string): Boolean;
var
  ICMP: TIdIcmpClient;
  Rec: Integer;
begin
  try
    ICMP := TIdIcmpClient.Create(nil);
    try
      ICMP.Host := aServer;
      ICMP.Ping();
      Sleep(2000);
      Rec := ICMP.ReplyStatus.BytesReceived;
      if Rec > 0 then
        Result := True
      else
        Result := false;
    finally
      ICMP.Free;
    end;
  except
    Result := false;
  end;
end;

function CheckDigitBarcode(var aBarcode: string; aBarcodeType: TJanuaBarcodeType): Boolean;
var
  numero, totale_pari, totale_dispari, totale, multiplo: Integer;
  check_digit, stringa: string;
begin
  Result := false;
  Case aBarcodeType of
    TJanuaBarcodeType.jbtEAN8:
      begin
        stringa := copy(aBarcode, 1, 7);
        totale_pari := 0;
        numero := strtoint(aBarcode[2]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[4]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[6]);
        totale_pari := totale_pari + numero;
        // totale_pari := totale_pari * 3;

        totale_dispari := 0;
        numero := strtoint(aBarcode[1]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[3]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[5]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[7]);
        totale_dispari := totale_dispari + numero;
        totale_dispari := totale_dispari * 3;

        totale := totale_pari + totale_dispari;
        multiplo := trunc(totale / 10);
        multiplo := multiplo * 10 + 10;
        multiplo := multiplo - totale;
        if multiplo > 9 then
        begin
          multiplo := multiplo - 10;
        end;
        check_digit := inttostr(multiplo);

        if Length(aBarcode) = 8 then
        begin
          Result := copy(aBarcode, 8, 1) = check_digit;
        end
        else
        begin
          Result := True;
          aBarcode := stringa + check_digit;
        end;
      end;
    TJanuaBarcodeType.jbtEAN13:
      begin
        stringa := copy(aBarcode, 1, 12);
        totale_pari := 0;
        numero := strtoint(aBarcode[2]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[4]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[6]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[8]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[10]);
        totale_pari := totale_pari + numero;
        numero := strtoint(aBarcode[12]);
        totale_pari := totale_pari + numero;
        totale_pari := totale_pari * 3;

        totale_dispari := 0;
        numero := strtoint(aBarcode[1]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[3]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[5]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[7]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[9]);
        totale_dispari := totale_dispari + numero;
        numero := strtoint(aBarcode[11]);
        totale_dispari := totale_dispari + numero;

        totale := totale_pari + totale_dispari;
        multiplo := trunc(totale / 10);
        multiplo := multiplo * 10 + 10;
        multiplo := multiplo - totale;
        if multiplo > 9 then
        begin
          multiplo := multiplo - 10;
        end;
        check_digit := inttostr(multiplo);
        if Length(aBarcode) = 13 then
        begin
          Result := copy(aBarcode, 13, 1) = check_digit;
        end
        else
        begin
          Result := True;
          aBarcode := stringa + check_digit;
        end;
      end;
    TJanuaBarcodeType.jbtOther:
      Result := True;
  end;

end;

{ TJanuaStringBuilder }

function TJanuaStringBuilder.Append(const Value: Integer): IStringBuilder;
begin
{$IFDEF DELPHIXE}
{$ELSE}
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Smallint): IStringBuilder;
begin
{$IFDEF DELPHIXE}
{$ELSE}
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Int64): IStringBuilder;
begin
{$IFDEF DELPHIXE}
{$ELSE}
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: TObject): IStringBuilder;
begin
{$IFDEF DELPHIXE}
{$ELSE}
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Shortint): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Boolean): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Byte): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Char): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Currency): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Double): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

{$IFDEF mswindows}

function TJanuaStringBuilder.Append(const Value: PAnsiChar): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;
{$ENDIF mswindows}

function TJanuaStringBuilder.Append(const Value: RawByteString): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Char; RepeatCount: Integer): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: TCharArray; StartIndex, CharCount: Integer): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: string; StartIndex, Count: Integer): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: string): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
{$IFDEF FPC}
  FBuilder.Add(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Single): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: UInt64): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: TCharArray): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Word): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.Append(const Value: Cardinal): IStringBuilder;
begin
{$IFDEF DELPHIXE}
  FBuilder.Append(Value);
{$ENDIF}
  Result := self;
end;

function TJanuaStringBuilder.AppendLine(aLine: string): IStringBuilder;
begin
  FBuilder.{$IFDEF DELPHIXE}AppendLine{$ELSE}Add{$ENDIF}(aLine);
  GetInterface(IStringBuilder, Result);
end;

function TJanuaStringBuilder.AppendSQL(aSQL: string): IStringBuilder;
var
  aLine: string;
begin
  // aLine := SF_SqlAdd(aSQL);
  FBuilder.{$IFDEF DELPHIXE}AppendLine{$ELSE}Add{$ENDIF}(aLine);
  GetInterface(IStringBuilder, Result);
  // Supports(Result, self, IStringBuilder);
end;

function TJanuaStringBuilder.AppendVars(aSQL: string; const aVars: array of variant): IStringBuilder;
var
  i: Integer;
  LStrArr: array of string;
begin
  SetLength(LStrArr, Length(aVars));

  for i := 0 to Pred(Length(aVars)) do
  begin
    LStrArr[i] := String(aVars[i]);
    aSQL := StringReplace(aSQL, '%' + inttostr(i), LStrArr[i], []);
  end;

  AppendLine(aSQL);

  GetInterface(IStringBuilder, Result);
end;

function TJanuaStringBuilder.ToString: string;
begin
  Result := FBuilder.{$IFDEF DELPHIXE}ToString{$ELSE}Text{$ENDIF};
end;

function TJanuaStringBuilder.Clear: IStringBuilder;
begin
  FBuilder.Clear;
  GetInterface(IStringBuilder, Result);
end;

constructor TJanuaStringBuilder.Create;
begin
  inherited;
  FBuilder :=
{$IFDEF DELPHIXE} TStringBuilder.Create; {$ELSE} TStringList.Create; {$ENDIF}
end;

destructor TJanuaStringBuilder.Destroy;
begin
  FBuilder.Free;
  inherited;
end;

function TJanuaStringBuilder.Text: string;
begin
  Result := ToString
end;

{ TStopWatch }

{$IFDEF FPC}

class function TStopWatch.Create(): TStopWatch;
{$IFDEF LINUX}
var
  r: TBaseMesure;
{$ENDIF LINUX}
begin
  if (FFrequency = 0) then
  begin
{$IFDEF WINDOWS}
    FIsHighResolution := QueryPerformanceFrequency(FFrequency);
{$ENDIF WINDOWS}
{$IFDEF LINUX}
    FIsHighResolution := (clock_getres(CLOCK_MONOTONIC, @r) = 0);
    FIsHighResolution := FIsHighResolution and (r.tv_nsec <> 0);
    if (r.tv_nsec <> 0) then
      FFrequency := C_BILLION div r.tv_nsec;
{$ENDIF LINUX}
  end;
  FillChar(Result, SizeOf(Result), 0);
end;

class function TStopWatch.StartNew(): TStopWatch;
begin
  Result := TStopWatch.Create();
  Result.Start();
end;

procedure TStopWatch.CheckInitialization();
begin
  if (FFrequency = 0) then
    raise Exception.Create(sStopWatchNotInitialized);
end;

function TStopWatch.GetElapsedMilliseconds: Int64;
begin
{$IFDEF WINDOWS}
  Result := ElapsedTicks * TicksPerMilliSecond;
{$ENDIF WINDOWS}
{$IFDEF LINUX}
  Result := FElapsed div C_MILLION;
{$ENDIF LINUX}
end;

function TStopWatch.GetElapsedTicks: Int64;
begin
  CheckInitialization();
{$IFDEF WINDOWS}
  Result := (FElapsed * TicksPerSecond) div FFrequency;
{$ENDIF WINDOWS}
{$IFDEF LINUX}
  Result := FElapsed div TicksPerNanoSecond;
{$ENDIF LINUX}
end;

procedure TStopWatch.Reset();
begin
  Stop();
  FElapsed := 0;
  FillChar(FStartPosition, SizeOf(FStartPosition), 0);
end;

procedure TStopWatch.Start();
begin
  if FRunning then
    Exit;
  FRunning := True;
{$IFDEF WINDOWS}
  QueryPerformanceCounter(FStartPosition);
{$ENDIF WINDOWS}
{$IFDEF LINUX}
  clock_gettime(CLOCK_MONOTONIC, @FStartPosition);
{$ENDIF LINUX}
end;

procedure TStopWatch.Stop();
var
  locEnd: TBaseMesure;
  S, n: Int64;
begin
  if not FRunning then
    Exit;
  FRunning := false;
{$IFDEF WINDOWS}
  QueryPerformanceCounter(locEnd);
  FElapsed := FElapsed + (UInt64(locEnd) - UInt64(FStartPosition));
{$ENDIF WINDOWS}
{$IFDEF LINUX}
  clock_gettime(CLOCK_MONOTONIC, @locEnd);
  if (locEnd.tv_nsec < FStartPosition.tv_nsec) then
  begin
    S := locEnd.tv_sec - FStartPosition.tv_sec - 1;
    n := C_BILLION + locEnd.tv_nsec - FStartPosition.tv_nsec;
  end
  else
  begin
    S := locEnd.tv_sec - FStartPosition.tv_sec;
    n := locEnd.tv_nsec - FStartPosition.tv_nsec;
  end;
  FElapsed := FElapsed + (S * C_BILLION) + n;
{$ENDIF LINUX}
end;

{ Guard }

class procedure Guard.RaiseArgumentException(const msg: string);
begin

end;

class procedure Guard.RaiseArgumentNullException(const argumentName: string);
begin

end;

class procedure Guard.CheckTrue(condition: Boolean; const msg: string);
begin

end;

class procedure Guard.CheckFalse(condition: Boolean; const msg: string);
begin

end;

class procedure Guard.CheckNotNull(const aObjectValue: TObject; const aObjectMessage: string);
begin

end;

{$ENDIF FPC}
{$REGION 'Logger'}

function TJanuaStringBuilder.Add(aString: string): IStringBuilder;
begin

end;

{ TJanuaLogRecord }

procedure TJanuaLogRecord.AppendToDataset(aDataset: TDataset);
begin
  if Assigned(aDataset) then
  begin
{$IFNDEF FPC}
    if (aDataset is TFdMemTable) and not aDataset.Active then
      CreateDataset(aDataset as TFdMemTable);
{$ELSE}
{$ENDIF FPC}
    aDataset.Append;
    SaveToDataset(aDataset);
  end;
end;

procedure TJanuaLogRecord.Clear;
begin
  DateTime := 0.0;
  ClassName := '';
  OwnerName := '';
  LogMessage := '';
  LogType := TJanuaLogType.jltLog;
  FObjectClass := nil;
end;

constructor TJanuaLogRecord.Create(const aProcedure, aMessage: string; aClass: TObject;
  const aType: TJanuaLogType = jltLog; const aMS: Int64 = 0; aError: Exception = nil);
begin
  DateTime := Now();
  ProcedureName := aProcedure;
  LogMessage := aMessage;
  Milliseconds := aMS;
  if Assigned(aError) then
    ErrorMessage := aError.Message;

  SetObjectClass(aClass);
end;
{$IFNDEF FPC}

procedure TJanuaLogRecord.CreateDataset(aDataset: TFdMemTable);
begin
  aDataset.Close;
  aDataset.FieldDefs.Clear;
  aDataset.FieldDefs.Add('DateTime', TFieldType.ftDateTime, 0, True);
  aDataset.FieldDefs.Add('ClassName', TFieldType.ftWideString, 1024, True);
  aDataset.FieldDefs.Add('OwnerName', TFieldType.ftWideString, 1024, false);
  aDataset.FieldDefs.Add('LogMessage', TFieldType.ftWideString, 8192, True);
  aDataset.FieldDefs.Add('LogType', TFieldType.ftSmallint, 0, True);
  aDataset.FieldDefs.Add('ProcName', TFieldType.ftWideString, 1024, True);
  aDataset.FieldDefs.Add('ErrorMessage', TFieldType.ftWideString, 1024, True);
  aDataset.FieldDefs.Add('Duration', TFieldType.ftLargeint, 0, false);
  aDataset.Open;
end;
{$ENDIF FPC}

function TJanuaLogRecord.LogCsv: string;
begin
  Result := '';
  Result := Result + FormatDateTime('yyy-mm-dd hh:nn:ss', DateTime) + ';';
  Result := Result + (Milliseconds.ToString) + ';';
  Result := Result + '"' + ClassName + '"' + ';';
  Result := Result + '"' + ProcedureName + '"' + ';';
  Result := Result + '"' + LogMessage + '"' + ';';
end;

function TJanuaLogRecord.LogText: string;
begin
  Result := '{ ' + sLineBreak;
  Result := Result + '"datetime" : "' + FormatDateTime('yyy-mm-dd hh:nn:ss', DateTime) + '", ';
  if Milliseconds > 0 then
    Result := Result + '"elapsed ms" : "' + Milliseconds.ToString + '", ';
  if OwnerName > '' then
    Result := Result + '"owner" : "' + OwnerName + '", ';

  Result := Result + '"' + ClassName + IfThen(ClassName <> '', '.', '') + ProcedureName + '" : ';

  if (LogMessage.IndexOf('{') > -1) and (LogMessage.IndexOf('}') > -1) then
    Result := Result + LogMessage
  else
    Result := Result + '"' + LogMessage + '"';

  if ErrorMessage <> '' then
    Result := Result + ', "error" : "' + StringToJsonString(ErrorMessage) + '"';
  Result := Result + sLineBreak + ' }';
end;

procedure TJanuaLogRecord.SaveToDataset(aDataset: TDataset);
var
  LField: TField;
  function CheckField(const aName: string): Boolean;
  begin
    Result := false;
    try
      LField := aDataset.FindField(aName);
      Result := Assigned(LField);
    except
      on e: Exception do
        Raise Exception.Create('TJanuaLogRecord.SaveToDataset.CheckField'); // , e, nil);
    end;
  end;

begin
  Guard.CheckNotNull(aDataset, ' TDataset not set');
  aDataset.Edit;
  if CheckField('DateTime') then
    LField.AsDateTime := DateTime;
  if CheckField('ClassName') then
    LField.AsString := ClassName;
  if CheckField('OwnerName') then
    LField.AsString := OwnerName;
  if CheckField('LogMessage') then
    LField.AsString := LogMessage;
  if CheckField('LogType') then
    LField.AsInteger := Ord(LogType);
  if CheckField('DateTime') then
    LField.AsDateTime := DateTime;
  aDataset.Post;
end;

procedure TJanuaLogRecord.SetClassName(const Value: string);
begin
  FClassName := Value;
end;

procedure TJanuaLogRecord.SetDateTime(const Value: TDateTime);
begin
  FDateTime := Value;
end;

procedure TJanuaLogRecord.SetErrorMessage(const Value: string);
begin
  FErrorMessage := Value;
end;

procedure TJanuaLogRecord.SetLogMessage(const Value: string);
begin
  FLogMessage := Value;
end;

procedure TJanuaLogRecord.SetLogType(const Value: TJanuaLogType);
begin
  FLogType := Value;
end;

procedure TJanuaLogRecord.SetMilliseconds(const Value: Int64);
begin
  FMilliseconds := Value;
end;

procedure TJanuaLogRecord.SetObjectClass(const Value: TObject);
begin
  FObjectClass := Value;
  if Assigned(FObjectClass) then
  begin
    if (FObjectClass is TComponent) then
    begin
      ClassName := FObjectClass.ClassName + '.' + (FObjectClass as TComponent).Name;;
      if Assigned((FObjectClass as TComponent).Owner) then
        OwnerName := (FObjectClass as TComponent).Owner.ClassName + '.' + (FObjectClass as TComponent)
          .Owner.Name;
    end
    else
      ClassName := FObjectClass.ClassName;
  end;
end;

procedure TJanuaLogRecord.SetOwnerName(const Value: string);
begin
  FOwnerName := Value;
end;

procedure TJanuaLogRecord.SetProcedureName(const Value: string);
begin
  FProcedureName := Value;
end;

function TJanuaLogRecord.ToString: string;
begin
  Result := LogText;
end;

{ TJanuaLogRecords }

procedure TJanuaLogRecords.Add(aItem: TJanuaLogRecord);
begin
  ItemIndex := Count;
  SetLength(Items, Succ(ItemIndex));
  Items[ItemIndex] := aItem;
end;

procedure TJanuaLogRecords.Add(const aProcedure, aMessage: string; aClass: TObject;
  const aType: TJanuaLogType);
begin
  if sw.IsRunning then
  begin
    sw.Stop;
    Add(TJanuaLogRecord.Create(aProcedure, aMessage, aClass, aType, sw.ElapsedMilliseconds));
    sw := TStopWatch.StartNew;
  end
  else
  begin
    Add(TJanuaLogRecord.Create(aProcedure, aMessage, aClass, aType, 0));
  end;
end;

procedure TJanuaLogRecords.Add(const aProcedure, aMessage: string; aClass: TObject; e: Exception);
begin
  if sw.IsRunning then
  begin
    sw.Stop;
    Add(TJanuaLogRecord.Create(aProcedure, aMessage, aClass, TJanuaLogType.jltError,
      sw.ElapsedMilliseconds, e));
  end
  else
  begin
    Add(TJanuaLogRecord.Create(aProcedure, aMessage, aClass, TJanuaLogType.jltError, 0, e));
  end;
end;

procedure TJanuaLogRecords.Append(aLog: TJanuaLogRecords);
begin
  StopWatch;
  sw.Reset;
end;

procedure TJanuaLogRecords.Clear(const aLog: string);
begin
  if aLog = '' then
    SetLength(Items, 0)
  else
    ClearLog(aLog);
end;

procedure TJanuaLogRecords.ClearLocalLog(aClass: TObject; const aProcedure: string);
begin

end;

procedure TJanuaLogRecords.ClearLog(aLog: string = '');
var
  lItem: TJanuaLogRecord;
  lLength: Smallint;
  i: Integer;
  procedure DeleteX(const Index: Smallint);
  var
    i: Smallint;
  begin
    lLength := Length(Items);
    Assert(Index < lLength);
    for i := Index + 1 to lLength - 1 do
      Items[i - 1] := Items[i];
    SetLength(Items, lLength - 1);
    lLength := Length(Items);
  end;

begin
  if aLog = '' then
    SetLength(Items, 0)
  else
  begin
    i := 0;
    aLog := aLog.ToLower;
    while i < lLength do
    begin
      if Items[i].ProcedureName = aLog then
        DeleteX(i)
      else
        Inc(i);
    end;
  end;
end;

function TJanuaLogRecords.Count: Integer;
begin
  Result := Length(Items);
end;

constructor TJanuaLogRecords.Create(const aWatchStarted: Boolean);
begin
  if aWatchStarted then
    sw.Start;
end;

procedure TJanuaLogRecords.ExportToCSV(const aFileName: string);
var
  Stream: TFileStream;
  OutLine: string;
  aRecord: TJanuaLogRecord;
  Lsl: string;
begin
  Stream := TFileStream.Create(aFileName, fmCreate);
  try
    for aRecord in Items do
    begin
      // You'll need to add your special handling here where OutLine is built
      OutLine := aRecord.LogCsv;
      // Remove final unnecessary ';'
      SetLength(OutLine, Length(OutLine) - 1);
      // Write line to file
      Stream.Write(OutLine[1], Length(OutLine) * SizeOf(Char));
      // Write line ending
      Lsl := sLineBreak;
      Stream.Write(Lsl, Length(sLineBreak));
    end;
  finally
    Stream.Free; // Saves the file
  end;

end;

function TJanuaLogRecords.LogString(const aObject: TObject = nil): string;
var
  aRecord: TJanuaLogRecord;
begin
  Result := '';
  if Count > 0 then
    if Assigned(aObject) then
    begin
      for aRecord in Items do
        if Assigned(aRecord.ObjectClass) and (aRecord.ObjectClass = aObject) then
          Result := Result + aRecord.LogText + sl;
    end
    else
      for aRecord in Items do
        Result := Result + (aRecord.LogText) + sl;
end;

procedure TJanuaLogRecords.ResetWatch;
begin
  sw.Stop;
  sw.Reset;
end;

function TJanuaLogRecords.SelectedItem: TJanuaLogRecord;
begin
  if Count > 0 then
    Result := Items[ItemIndex];
end;

procedure TJanuaLogRecords.StartWatch;
begin
  if not sw.IsRunning then
  begin
    sw.Start;
  end;
end;

procedure TJanuaLogRecords.StopWatch;
begin
  FWatchStarted := false;

end;

function TJanuaLogRecords.TailLog: string;
var
  i: Integer;
begin
  if Length(Items) > 0 then
    for i := High(Items) downto IfThen(Length(Items) > 10, High(Items) - 10, 0) do
      Result := Result + IfThen(i = 0, '', sl) + Items[i].LogText;
end;

{ TSmartReference }

{$IFNDEF FPC}

constructor TSmartReference<T>.Create(aObject: T);
begin
  inherited Create;
  FObject := aObject;
end;

destructor TSmartReference<T>.Destroy;
begin
  FObject.Free;
  inherited;
end;

function TSmartReference<T>.Invoke: T;
begin
  Result := FObject;
end;

{$ENDIF FPC}
// -------------------- Test Smart Reference ---------------------------------------------

{ TSet<T> }

class function TEnumSet<T>.TypeInfo: PTypeInfo;
begin
  Result := System.TypeInfo(T);
end;

class function TEnumSet<T>.IsSet: Boolean;
begin
  Result := TypeInfo.Kind = tkSet;
end;

function GetCardinality(const PSet: PByteArray; const SizeOfSet (* in bytes *) : Integer): Integer; inline;
var
  i, J: Integer;
begin
  Result := 0;
  for i := 0 to SizeOfSet - 1 do
    for J := 0 to 7 do
      if (PSet^[i] and Masks[J]) > 0 then
        Inc(Result);
end;

class function TEnumSet<T>.Cardinality(const Value: T): Integer;
var
  EnumTypeData: PTypeData;
begin
  if not IsSet then
    raise ERuntimeTypeError.Create('Invalid type in TSet<T>, T must be a set');
  Result := GetCardinality(PByteArray(@Value), SizeOf(Value));
end;

{ TJanuaGender }

constructor TJanuaGender.Create(aType: TJanuaGenderType);
begin
  GenderType := aType;
end;

constructor TJanuaGender.Create(aCode: string);
var
  sCode: string;
begin
  if aCode.Length = 1 then
    sCode := aCode
  else if aCode.ToLower = 'male' then
    sCode := 'M'
  else if aCode.ToLower = 'female' then
    sCode := 'F'
  else if aCode.ToLower = 'company' then
    sCode := 'C';
  GenderCode := sCode;
end;

function TJanuaGender.getGenderCode: string;
begin
  Result := JanuaGenderCode[GenderType]
end;

function TJanuaGender.getGenderIndex: Smallint;
begin
  Result := JanuaGenderIndex[GenderType]
end;

function TJanuaGender.GetGenderName: string;
begin
  Result := JanuaGenderName[FGenderType]
end;

procedure TJanuaGender.SetGenderCode(const Value: string);
var
  aGenderType: TJanuaGenderType;
begin
  if Value <> '' then
  begin
{$IFNDEF FPC}
    if TEnumConvertor<TJanuaGenderType>.TryFromStringArray(Value, JanuaGenderCode, aGenderType) then
      GenderType := aGenderType
    else
{$ENDIF FPC}
      raise Exception.Create('TJanuaGender unexpected value for gender code: ' + Value);
  end
  else
    GenderType := TJanuaGenderType.NotSet;

end;

procedure TJanuaGender.SetGenderIndex(const Value: Smallint);
begin
  case Value of
    0:
      FGenderType := TJanuaGenderType.Male;
    1:
      FGenderType := TJanuaGenderType.Female;
    2:
      FGenderType := TJanuaGenderType.Company;
    -1:
      FGenderType := TJanuaGenderType.NotSet;
  else
    Exception.Create('TJanuaGender unexpected value for gender Index: ' + Value.ToString);
  end;
end;

procedure TJanuaGender.SetGenderType(const Value: TJanuaGenderType);
begin
  FGenderType := Value;
end;

{ TJanuaRecordCoordinates }

function TJanuaRecordCoordinates.AsJson: string;
var
  JsonObject: TJsonObject;
begin
  JsonObject := AsJsonObject;
  Result := JsonObject.{$IFNDEF FPC}ToJSON{$ELSE}AsJson{$ENDIF FPC};
  JsonObject.Free;
end;

function TJanuaRecordCoordinates.AsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'latitude', Latitude);
  Janua.Core.Json.JsonPair(Result, 'longitude', Longitude);
  Janua.Core.Json.JsonPair(Result, 'address', Address);
end;

procedure TJanuaRecordCoordinates.Clear;
begin
  Latitude := 0.0;
  Longitude := 0.0;
  Address := '';
end;

constructor TJanuaRecordCoordinates.Create(aLatitude, aLongitude: Double; aAddress: string = '');
begin
  Latitude := aLatitude;
  Longitude := aLongitude;
  Address := aAddress;
end;

procedure TJanuaRecordCoordinates.LoadFromDataset(aDataset: TDataset);
begin
  Latitude := aDataset.FieldByName('latitude').AsFloat;
  Longitude := aDataset.FieldByName('longitude').AsFloat;
  Address := aDataset.FieldByName('fulladdress').AsString;
end;

procedure TJanuaRecordCoordinates.LoadFromJson(aJson: string);
begin
{$IFNDEF FPC} LoadFromJsonObject(Janua.Core.Json.JsonParse(aJson)); {$ENDIF FPC}
end;

procedure TJanuaRecordCoordinates.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
{$IFNDEF FPC}
  Janua.Core.Json.JsonValue(aJsonObject, 'latitude', Latitude);
  Janua.Core.Json.JsonValue(aJsonObject, 'longitude', Longitude);
  Janua.Core.Json.JsonValue(aJsonObject, 'address', Address);
{$ENDIF FPC}
end;

{ TEnumConvertor<T> }

class function TEnumConvertor<T>.ToString(Value: T): string;
var
  IntValue: Integer;
begin
  IntValue := 0;
  Move(Value, IntValue, SizeOf(T));
  Result := GetEnumName(TypeInfo(T), IntValue)
end;

class function TEnumConvertor<T>.TryFromInteger(aOrdValue: Integer; var EnumValue: T): Boolean;
var
  // Pointer to Type Info
  aInfo: PTypeInfo;
  // Pointer to Type Data
  aData: PTypeData;
begin
  aInfo := TypeInfo(T);
  // check we have a valid type
  if (aInfo = nil) or (aInfo.Kind <> tkEnumeration) then
    raise EArgumentException.Create('TEnumConvertor not instatiated with a valid type');
  // do the actual range test
  aData := GetTypeData(aInfo);
  Result := (aOrdValue >= aData.MinValue) and (aOrdValue <= aData.MaxValue);
  // check the reusult and returns convertion (and True) or Default value (and False)
  if Result then
    Move(aOrdValue, EnumValue, SizeOf(T));
end;

{ TEnumArrayConvertor<T, S> }

class function TEnumConvertor<T>.TryFromString(const Str: string; var EnumValue: T): Boolean;
var
  Info: PTypeInfo;
  IntValue: Integer;
begin
  IntValue := GetEnumValue(TypeInfo(T), Str);
  Result := (IntValue <> -1);
  if Result then
    Move(IntValue, EnumValue, SizeOf(T));
end;

class function TEnumConvertor<T>.TryFromStringArray(S: string; const a: array of string;
  var EnumValue: T): Boolean;
var
  // Pointer to Type Info
  tInfo: PTypeInfo;
  // Pointer to Type Data
  tData: PTypeData;
  // Pointer to Type Info
  i: Integer;
begin
  tInfo := TypeInfo(T);
  if (tInfo = nil) or (tInfo.Kind <> tkEnumeration) then
    raise EArgumentException.Create('TEnumConvertor not instatiated with a valid type');
  tData := GetTypeData(tInfo);
  Result := false;
  for i := tData.MinValue to tData.MaxValue do
    if a[i].ToLower = S.ToLower then
    begin
      Result := True;
      Break
    end;
  if Result then
    Move(i, EnumValue, SizeOf(T));

end;

{ TJanuaOSProfile }

function TJanuaOSProfile.GetConfiguration: string;
var
  a: IStringBuilder;
begin
  { AppName: string;
    SharedDocumentsPath: string;
    Directory: String;
    LinuxHome: string;
    Title: String;
    LastErrorMessage: string;
    CustomServer: boolean;
    ResolveToFile: boolean;
    UseCurrentDir: boolean;
    HomeDirectory: TJanuaOSHomeDir;
  }
  a := TJanuaStringBuilder.Create;
  a.AppendLine('AppName: ' + AppName);
  a.AppendLine('SharedDocumentsPath: ' + SharedDocumentsPath);
  a.AppendLine('Directory: ' + Directory);
  a.AppendLine('HomeDirectory: ' + GetEnumName(TypeInfo(TJanuaOSHomeDir), Ord(HomeDirectory)));
  a.AppendLine('LinuxHome: ' + LinuxHome);
  a.AppendLine('Title: ' + Title);
  a.AppendLine('ResolveToFile: ' + ResolveToFile.ToString(True));
  a.AppendLine('UseCurrentDir: ' + UseCurrentDir.ToString(True));
  Result := a.ToString;
end;

procedure TJanuaOSProfile.Initialize;
begin
  SharedDocumentsPath := '';
  Directory := '';
  Title := '';
  LastErrorMessage := '';
  CustomServer := false;
  ResolveToFile := false;
  UseCurrentDir := false;
  LinuxHome := '';
  HomeDirectory := TJanuaOSHomeDir.johDefault;
  AppName := 'test.ergomercator.com';
end;

{ TJanuaInterval }

function TJanuaInterval.ExpirationDate: TDate;
begin
  Result := 0;

  case IntervalType of
    jitYears:
      Result := IncYear(FromDate, Duration);
    jitMonths:
      Result := IncMonth(FromDate, Duration);
    jitDays:
      Result := IncDay(FromDate, Duration);
    jitQuarters:
      Result := IncMonth(FromDate, Duration * 3);
    jitMinutes:
      Result := IncYear(FromDate, Duration);
  end;
end;

{ TJanuaBlob }

constructor TJanuaBlob.Create(aFileName: string);
begin
  LoadFromFile(aFileName);
end;

procedure TJanuaBlob.Assign(aBlob: TJanuaBlob);
begin
  Assign(aBlob.AsBytes);
end;

procedure TJanuaBlob.Assign(aBytes: TBytes);
begin
  FBlob := copy(aBytes, 0, High(Integer));
end;

procedure TJanuaBlob.Clear;
begin
  SetLength(FBlob, 0);
end;

constructor TJanuaBlob.Create(aIsUnicode: Boolean);
begin
  Setup;
  FIsUnicode := aIsUnicode;
end;

constructor TJanuaBlob.Create(aStream: TStream);
begin
  Setup;
  LoadFromStream(aStream);
end;

function TJanuaBlob.GetAsBoolean: Boolean;
begin
  Result := (Length(FBlob) = 1) and (FBlob[1] = 1);
end;

function TJanuaBlob.GetAsByteDynArray: TByteDynArray;
begin
  Result := TByteDynArray(FBlob);
end;

function TJanuaBlob.GetAsBytes: TBytes;
begin
  Result := FBlob
end;

function TJanuaBlob.GetAsInteger: Integer;
var
  i: Integer;
  tmp: TBytes;
begin
  Result := 0;

  if Length(FBlob) = 4 then
    Result := PInteger(@FBlob)^
  else if Length(FBlob) = 0 then
    Result := 0
  else if Length(FBlob) < 4 then
  begin
    i := Pred(4 - Length(FBlob));
    SetLength(FBlob, 4);
    while i < 4 do
    begin
      FBlob[i] := 0;
      Inc(i);
    end;
    Result := PInteger(@FBlob)^
  end
  else if Length(FBlob) > 4 then
  begin
    SetLength(tmp, 4);
    for i := 0 to 3 do
      tmp[i] := FBlob[i];
    Result := PInteger(@tmp)^
  end;
end;

function TJanuaBlob.GetAsLargeint: Largeint;
var
  i: Integer;
  tmp: TBytes;
begin
  Result := 0;
  if Length(FBlob) = 8 then
    Result := PInt64(@FBlob)^
  else if Length(FBlob) = 0 then
    Result := 0
  else if Length(FBlob) < 8 then
  begin
    i := Pred(8 - Length(FBlob));
    SetLength(FBlob, 8);
    while i < 8 do
    begin
      FBlob[i] := 0;
      Inc(i);
    end;
    Result := PInt64(@FBlob)^
  end
  else if Length(FBlob) > 4 then
  begin
    SetLength(tmp, 4);
    for i := 0 to 3 do
      tmp[i] := FBlob[i];
    Result := PInt64(@tmp)^
  end;

end;

function TJanuaBlob.GetAsSmallint: Smallint;
begin
  Result := 0;
  if Length(FBlob) = 2 then
    Result := PSmallint(@FBlob)^
  else if Length(FBlob) = 1 then
  begin
    SetLength(FBlob, 2);
    FBlob[1] := 0;
    Result := PSmallint(@FBlob)^
  end;
end;

function TJanuaBlob.GetEncoded64: string;
var
  aStream: TBytesStream;
begin
  aStream := TBytesStream.Create(FBlob);
  try
    aStream.Position := 0;
{$IFNDEF FPC}Result := String(EncodeBase64(aStream.Memory, aStream.size)); {$ENDIF FPC}
  finally
    aStream.Free;
  end;
end;

function TJanuaBlob.IsEqual(aBlob: TJanuaBlob): Boolean;
var
  p1, p2: PByteArray;
  a, b: TByteDynArray;
begin
  Result := Length(FBlob) = Length(aBlob.AsBytes);
  a := copy(GetAsByteDynArray, Low(GetAsByteDynArray), Length(GetAsByteDynArray));
  p1 := @a;
  p2 := @b;
  if Result then
    Result := CompareMem(p1, p2, Length(FBlob));
end;

procedure TJanuaBlob.LoadFromFile(aFile: string);
var
  Stream: TFileStream;
begin
  Stream := TFileStream.Create(aFile, fmOpenRead);
  try
    Stream.Position := 0;
    LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TJanuaBlob.LoadFromStream(aStream: TStream);
begin
  aStream.Position := 0;
  SetLength(FBlob, aStream.size);
  if aStream.size > 0 then
    aStream.Read(FBlob[0], aStream.size);
end;

procedure TJanuaBlob.SaveToFile(aFile: string);
var
  Stream: TFileStream;
begin
  Stream := TFileStream.Create(aFile, fmCreate);
  try
    SaveToStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TJanuaBlob.SaveToStream(aStream: TStream);
begin
  if FBlob <> nil then
    aStream.WriteBuffer(FBlob[0], Length(FBlob));
end;

procedure TJanuaBlob.SetAsBoolean(const Value: Boolean);
begin

end;

procedure TJanuaBlob.SetAsByteDynArray(const Value: TByteDynArray);
begin
  FAsByteDynArray := Value;
end;

procedure TJanuaBlob.SetAsBytes(const Value: TBytes);
begin
  FBlob := Value;
end;

procedure TJanuaBlob.SetAsInteger(const Value: Integer);
var
  i: Integer;
begin
  if Length(FBlob) <> SizeOf(Integer) then
    SetLength(FBlob, SizeOf(Integer));
  for i := 0 to 3 do
    FBlob[i] := 0;
  { PInteger(@FBlob)^ := Value; }
  for i := 0 to 3 do
    FBlob[i] := Byte(Value shr 8 * 3 - i);
end;

procedure TJanuaBlob.SetAsLargeint(const Value: Largeint);
begin

end;

procedure TJanuaBlob.SetAsSmallint(const Value: Smallint);
begin

end;

procedure TJanuaBlob.SetEncoded64(const Value: string);
begin
  if Value <> '' then
{$IFDEF DELPHIXE}
{$IFNDEF NEXTGEN} FBlob := DecodeBase64(AnsiString(Value)) {$ENDIF NEXTGEN}
  else
{$ENDIF DELPHIXE}
{$IFDEF fpc}
    // FBlob :=  TIdDecoderMIME.DecodeString(Value, IndyUTF8Encoding, Indy8BitEncoding);
{$ENDIF}
    SetLength(FBlob, 0);
end;

procedure TJanuaBlob.SetNil;
begin
  FBlob := nil;
end;

procedure TJanuaBlob.Setup;
begin
  FIsUnicode := false;
  Clear;
end;

function TJanuaBlob.size: Int64;
var
  Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  try
    SaveToStream(Stream);
    Result := Stream.size;
    Stream.Position := 0;
  finally
    Stream.Free;
  end;
end;

{ TJanuaServerRecordConf }

procedure TJanuaServerRecordConf.Assign(aConf: TJanuaServerRecordConf);
begin
  Port := aConf.Port;
  DatabaseName := aConf.DatabaseName;
  Password := aConf.Password;
  Direct := aConf.Direct;
  Address := aConf.Address;
  Username := aConf.Username;
end;

function TJanuaServerRecordConf.Conf: String;
var
  aList: IStringBuilder;
begin
  aList := TJanuaStringBuilder.Create;
  aList.AppendLine('Address:' + Address);
  aList.AppendLine('DatabaseName:' + DatabaseName);
  aList.AppendLine('Schema:' + Schema);
  aList.AppendLine('Port:' + Port.ToString);
  Result := aList.ToString;
end;

constructor TJanuaServerRecordConf.Create(const aAddress: string);
begin
  Initialize;
  Address := aAddress;
end;

constructor TJanuaServerRecordConf.Create(aDBEngine: TJanuaDBEngine);
begin
  Initialize;
  DBEngine := aDBEngine;
end;

constructor TJanuaServerRecordConf.Create(aConf: TJanuaServerRecordConf);
begin
  Initialize;
  Assign(aConf);
end;

function TJanuaServerRecordConf.Equals(aConf: TJanuaServerRecordConf): Boolean;
begin
  Result := (Port = aConf.Port) and (DatabaseName = aConf.DatabaseName) and (Password = aConf.Password) and
    (Direct = aConf.Direct) and (Address = aConf.Address) and (Username = aConf.Username);
end;

function TJanuaServerRecordConf.GetConfiguration: string;
var
  a: IStringBuilder;
begin
  a := TJanuaStringBuilder.Create;
  a.AppendLine('Port: ' + Port.ToString);
  a.AppendLine('Address: ' + Address);
  a.AppendLine('IP: ' + IP);
  a.AppendLine('Direct: ' + Direct.ToString(True));
  a.AppendLine('DatabaseName: ' + DatabaseName);
  a.AppendLine('Schema: ' + Schema);
  a.AppendLine('Username: ' + Username);
  a.AppendLine('Passowrd: ' + Password);
  a.AppendLine('Success: ' + Success.ToString(True));
  a.AppendLine('DBEngine: ' + JanuaDBEngineCode[DBEngine]);
  (*
    {$IFDEF delphixe}
    a.AppendLine('DBEngine: ' + System.TypInfo.GetEnumName(TypeInfo(TJanuaDBEngine), Ord(DBEngine)));
    {$ENDIF delphixe}
  *)
  Result := a.ToString;
end;

function TJanuaServerRecordConf.GetEngineName: string;
begin
  Result := JanuaDBEngineCode[DBEngine]
end;

procedure TJanuaServerRecordConf.Initialize;
begin
  Port := 0;
  DatabaseName := '';
  Password := '';
  Direct := false;
  Address := '';
  Username := '';
  Schema := '';
  Success := false;
  IP := '';
  TestMessage := '';
  DBEngine := TJanuaDBEngine.jdbPostgres;
end;

procedure TJanuaServerRecordConf.LoadFromFile(aFileName: string);
var
  LObject: TJsonObject;
  LStrings: TStrings;
begin
  { TODO : Realizzare lo Unit Testing di TJanuaServerRecordConf.LoadFromFile }
  LStrings := TStringList.Create;
  try
    LStrings.LoadFromFile(aFileName);
    LObject := Janua.Core.Json.JsonParse(LStrings.Text);
    try
      Janua.Core.Json.JsonValue(LObject, 'username', FUsername);
      Janua.Core.Json.JsonValue(LObject, 'password', FPassword);
    finally
      LObject.Free
    end;
  finally
    LStrings.Free;
  end;
end;

procedure TJanuaServerRecordConf.SaveToFile(aFileName: string);
var
  LObject: TJsonObject;
  LStrings: TStrings;
begin
  { TODO : Realizzare lo Unit Testing di TJanuaServerRecordConf.SaveToFile }
  LObject := TJsonObject.Create;
  try
    Janua.Core.Json.JsonPair(LObject, 'username', Username);
    Janua.Core.Json.JsonPair(LObject, 'password', Password);
    LStrings := TStringList.Create;
    try
      LStrings.Text := LObject.{$IFDEF FPC}AsJson{$ELSE}ToJSON{$ENDIF FPC};
      LStrings.SaveToFile(aFileName);
    finally
      LStrings.Free;
    end;
  finally
    LObject.Free
  end;
end;

procedure TJanuaServerRecordConf.SetEngineName(const Value: string);
var
  aEngine: TJanuaDBEngine;
begin
  // JanuaDBEngineCode[DBEngine]
  if TEnumConvertor<TJanuaDBEngine>.TryFromStringArray(Value, JanuaDBEngineCode, aEngine) then
    DBEngine := aEngine
end;

procedure TJanuaServerRecordConf.SetPassword(const Value: string);
begin
  FPassword := Value;
end;

procedure TJanuaServerRecordConf.SetSchema(const Value: string);
begin
  FSchema := Value;
end;

procedure TJanuaServerRecordConf.SetUsername(const Value: string);
begin
  FUsername := Value;
end;

function TJanuaServerRecordConf.TestAddress: Boolean;
begin
  Result := false;
  IP := GetIPFromHost(Address);
  if IP = '0.0.0.0' then
    TestMessage := 'Host Unknown'
  else if Ping(Address) then
  begin
    TestMessage := 'Ping Is OK';
    Result := True;
  end
  else
    TestMessage := 'Host not respond to Ping';

  Success := Result;
end;

{ TJanuaServerRecordConfs }

procedure TJanuaServerRecordConfs.Add(aItem: TJanuaServerRecordConf);
begin
  SetLength(Items, Count + 1);
  Items[Count - 1] := aItem;
end;

function TJanuaServerRecordConfs.AsText: string;
var
  aItem: TJanuaServerRecordConf;
begin
  for aItem in Items do
    Result := Result + aItem.DatabaseName + sLineBreak;

end;

function TJanuaServerRecordConfs.Count: Integer;
begin
  Result := Length(Items);
end;

constructor TJanuaServerRecordConfs.Create(aItems: Integer);
begin
  SetLength(Items, 0);
end;

constructor TJanuaServerRecordConfs.Create(aItem: TJanuaServerRecordConf);
begin
  SetLength(Items, 0);
  Add(aItem);
end;

procedure TJanuaServerRecordConfs.delete(aItem: TJanuaServerRecordConf);
begin

end;

procedure TJanuaServerRecordConfs.delete(aIndex: Integer);
var
  i: Cardinal;
begin
  if Count > aIndex then
  begin
    for i := aIndex + 1 to Count - 1 do
      Items[i - 1] := Items[i];
    SetLength(Items, Count - 1);
  end;
end;

function TJanuaServerRecordConfs.Equals(aConf: TJanuaServerRecordConfs): Boolean;
var
  i: Integer;
begin
  Result := Count = aConf.Count;
  if Result and (Count > 0) then
  begin
    for i := Low(Items) to High(Items) do
      if not Items[i].Equals(aConf.Items[i]) then
        Exit(false);
  end;

end;

function TJanuaServerRecordConfs.find(aItem: TJanuaServerRecordConf): Boolean;
var
  lItem: TJanuaServerRecordConf;
begin
  Result := false;
  for lItem in Items do
    if (lItem.DatabaseName = aItem.DatabaseName) and (lItem.Address = aItem.Address) then
      Exit(True)

end;

function TJanuaServerRecordConfs.GetAsJson: string;
begin

end;

function TJanuaServerRecordConfs.GetasJsonPretty: string;
begin

end;

procedure TJanuaServerRecordConfs.SetasJson(const Value: string);
begin
  { TODO : Adapt Neon Json to manage only Fields and Public/Published properties }
end;

procedure TJanuaServerRecordConfs.SetasJsonObject(const Value: TJsonObject);
begin
  FasJsonObject := Value;
end;

procedure TJanuaServerRecordConfs.setasJsonPretty(const Value: string);
begin

end;

{ TRecFieldDef }

constructor TRecFieldDef.Create(aFieldName: string; aCase: TJanuaCase; aAlign: TJanuaRecAlign;
  aFixedWidth: Smallint);
begin
  FFieldName := aFieldName;
end;

procedure TRecFieldDef.SetAlign(const Value: TJanuaRecAlign);
begin
  FAlign := Value;
end;

procedure TRecFieldDef.SetCharCase(const Value: TJanuaCase);
begin
  FCharCase := Value;
end;

procedure TRecFieldDef.SetFieldName(const Value: string);
begin
  FFieldName := Value;
end;

{ TRecFieldDefList }

function TRecFieldDefList.Add(aFieldName: string; aCase: TJanuaCase; aAlign: TJanuaRecAlign;
  aFixedWidth: Smallint): TRecFieldDefList;
begin
  Result := Add(TRecFieldDef.Create(aFieldName, aCase, aAlign, aFixedWidth))
end;

function TRecFieldDefList.Clear: TRecFieldDefList;
begin
  SetLength(FItems, 0);
  Result := self;
end;

function TRecFieldDefList.Count: Integer;
begin
  Result := Length(FItems)
end;

constructor TRecFieldDefList.Create(const aName: string);
begin
  Clear;
  FTableName := LowerCase(aName);
end;

function TRecFieldDefList.Add(aFieldDef: TRecFieldDef): TRecFieldDefList;
begin
{$IFDEF DELPHIXE} Guard.CheckNotNull(aFieldDef, 'TRecFieldDefList.Add: aFieldDef is niil'); {$ENDIF}
  SetLength(FItems, Succ(Count));
  FItems[Pred(Count)] := aFieldDef;
end;

procedure TRecFieldDefList.SetItems(const Value: TRecFieldDefArray);
begin
  FItems := Value;
end;

procedure TRecFieldDefList.SetTableName(const Value: string);
begin
  FTableName := Value;
end;

{ TJanuaProperty }

constructor TJanuaProperty.Create(const aName: string);
begin
  SetName(aName);
end;

constructor TJanuaProperty.Create(aType: TJanuaFieldType);
begin
  SetPropertyType(aType);
end;

function TJanuaProperty.getName: string;
begin
  Result := JanuaProperty[FPropertyType]
end;

procedure TJanuaProperty.SetPropertyType(const Value: TJanuaFieldType);
begin
  FPropertyType := Value;
end;

procedure TJanuaProperty.SetName(const Value: string);
var
  a: TJanuaFieldType;
  Found: Boolean;
begin
  Found := false;
  if Value <> '' then
    for a in [TJanuaFieldType.jptUnknown .. TJanuaFieldType.jptUrl] do
      if LowerCase(JanuaProperty[a]) = LowerCase(Value) then
      begin
        FPropertyType := a;
        Found := True;
        Exit;
      end;
  if not Found then
  begin
    FPropertyType := TJanuaFieldType.jptUnknown;
    raise Exception.Create('TJanuaProperty, property Name: ' + Value + ' not found');
  end;
end;

{$REGION 'JanuaServerSession'}
{ TJanuaServerSession }

function TJanuaServerSession.getAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'key', Key);
  Janua.Core.Json.JsonPair(Result, 'email', Email);
  Janua.Core.Json.JsonPair(Result, 'session_id', Session_id);
  Janua.Core.Json.JsonPair(Result, 'user_id', User_id);
  Janua.Core.Json.JsonPair(Result, 'ispublic', isPublic);
end;

procedure TJanuaServerSession.LoadFromDataset(aDataset: TDataset);
begin
  Email := aDataset.FieldByName('email').AsString;
  Schema_id := aDataset.FieldByName('db_schema_id').AsLargeInt;
  Session_id := aDataset.FieldByName('db_session_id').AsLargeInt;
  User_id := aDataset.FieldByName('db_user_id').AsInteger;
end;

procedure TJanuaServerSession.LoadFromJsonObject(aJsonObject: TJsonObject);
begin
  SetasJsonObject(aJsonObject);
end;

procedure TJanuaServerSession.SetasJsonObject(aJsonObject: TJsonObject);
// var
// aParser: IJanuaJsonParser;
// aObject: TJsonObject;
begin
  if Assigned(aJsonObject) then
  begin
    Clear;
    // if TJanuaApplicationFactory.TryGetInterface(IJanuaJsonParser, aParser) then
    // begin
    // AsJsonObject := aJsonObject;
    JsonValue(aJsonObject, 'key', FKey);
    JsonValue(aJsonObject, 'email', Email);
    JsonValue(aJsonObject, 'ispublic', isPublic);
    JsonValue(aJsonObject, 'session_id', Session_id);
    JsonValue(aJsonObject, 'user_id', User_id);
    // end;
  end;
end;

procedure TJanuaServerSession.SetKey(const Value: string);
begin
  FKey := Value;
end;

function TJanuaServerSession.asJsonPretty: string;
begin
{$IFDEF delphixe}Result := JsonPretty(AsJsonObject.ToJSON); {$ENDIF}
{$IFDEF fpc}Result := JsonPretty(AsJsonObject.AsJson); {$ENDIF}
end;

procedure TJanuaServerSession.Clear;
begin
  FKey := '';
  Email := '';
  Schema_id := 0;
  Session_id := 0;
  User_id := 0;
  Social_ID := '';
  Social_Kind := '';
  SetLength(UserSchemas, 0);
  SelectedSchema.Clear;
  isPublic := false;

  Key := '';
  Email := '';
  Schema_id := 0;
  Session_id := 0;
  User_id := 0;
  Social_ID := '';
  Social_Kind := '';
  CustomServer := false;
  CustomServerUrl := '';
  CustomServerPort := '';
  CustomServerSchema := '';
  CustomServerPassword := '';
  CustomServerUser := '';
  SetLength(UserSchemas, 0);
  SelectedSchema.Clear;
  isPublic := false;
end;

function TJanuaServerSession.GetAsJson: string;
var
  lJson: TJsonObject;
begin
  lJson := AsJsonObject;
  try
    Result := lJson.ToJSON;
  finally
    lJson.Free;
  end;
end;

function TJanuaServerSession.setSchemaByID(aID: Integer): Boolean;
var
  aSchema: TJanuaRecordSchema;
begin
  Result := false;
  for aSchema in UserSchemas do
    if aSchema.ID = aID then
    begin
      Result := True;
      SelectedSchema := aSchema;
      Schema_id := aSchema.ID;
      Exit;
    end;

end;

function TJanuaServerSession.ToString: string;
var
  aLog: TStrings;
begin
  aLog := TStringList.Create;
  try
    aLog.Add('Key: ' + FKey);
    aLog.Add(' Email' + Email);
    aLog.Add(' Schema_id:' + Schema_id.ToString());
    aLog.Add(' Session_id:' + Session_id.ToString());
    aLog.Add(' User_id:' + User_id.ToString());
    Result := aLog.Text;
  finally
    aLog.Free
  end;

end;

(*
  { TJanuaServerSession }

  function TJanuaServerSession.AsJsonObject: TJsonObject;
  begin
  Result := TJsonObject.Create;
  Result.AddPair(TJSONPair.Create('Key', TJSONString.Create(Key)));
  Result.AddPair(TJSONPair.Create('Email', TJSONString.Create(Email)));
  Janua.Core.Json.JsonPair(Result, 'ispublic', isPublic);
  end;

  procedure TJanuaServerSession.Clear;
  begin

  end;

  function TJanuaServerSession.setSchemaByID(aID: Integer): boolean;
  var
  aSchema: TJanuaRecordSchema;
  begin
  Result := false;
  for aSchema in UserSchemas do
  if aSchema.ID = aID then
  begin
  Result := true;
  SelectedSchema := aSchema;
  Schema_id := aSchema.ID;
  Exit;
  end;

  end;

  function TJanuaServerSession.ToString: string;
  begin
  Result := 'Key: ' + Key + ' Email' + Email + ' Schema_id:' + Schema_id.ToString() + ' Session_id:' +
  Session_id.ToString() + ' User_id:' + User_id.ToString() + ' CustomServer:' + CustomServer.ToString +
  ' CustomServerUrl:' + CustomServerUrl + ' CustomServerPort:' + CustomServerPort + ' CustomServerSchema:' +
  CustomServerSchema;

  end;
*)

{ TJanuaRecordSchema }

procedure TJanuaRecordSchema.Clear;
begin
  ID := 0;
  Name := '';
  schema_des := '';
  /// <summary>
  /// -- This column tell us if this schema is linked to a person as a
  /// personal schema to store owner's data, password, and profiles
  /// </summary>
  personal := false;
  db_schema_key := '';
  country_id := 0;
  language_id := 0;
  /// <summary>
  /// Defa
  /// </summary>
  default_user_id := 0;
end;

{$ENDREGION 'JanuaServerSession'}
{ TJanuaConfiguration }

procedure TJanuaConfiguration.AddKey(const aKey: TJanuaConfKey);
begin
  if Assigned(aKey) then
    Keys.Add(aKey.Key.ToLower, aKey);
end;

procedure TJanuaConfiguration.AddKey(const aKey: TJsonObject);
var
  vKey: TJanuaConfKey;
begin
  vKey := TJanuaConfKey.Create(aKey); // vKey.AsJsonObject := aKey;
  AddKey(vKey);
end;

function TJanuaConfiguration.AsJson: string;
var
  aJson: TJsonObject;
begin
  aJson := AsJsonObject;
  Result := aJson.{$IFDEF delphixe}ToJSON{$ELSE}AsJson{$ENDIF};
  aJson.Free;
end;

function TJanuaConfiguration.asJsonPretty: string;
begin
  if Count > 0 then
    Result := JsonPretty(AsJson)
  else
    Result := AsJson;
end;

function TJanuaConfiguration.AsJsonString: string;
begin
  Result := ToJsonFree(AsJsonObject);
end;

procedure TJanuaConfiguration.AddKey(sKey: string);
begin
  if not Keys.ContainsKey(sKey.ToLower) then
    Keys.Add(sKey.ToLower, TJanuaConfKey.Create(sKey.ToLower));

end;

procedure TJanuaConfiguration.Clear;
begin
  ClearKeys;
  FileName := '';
  LastErrorMessage := '';
  HasErrors := false;
end;

function TJanuaConfiguration.Count: Integer;
begin
  Result := Keys.Count;
end;

constructor TJanuaConfiguration.Create(aFileName: TFileName);
begin
  FIsLoaded := false;
  FKeys := TCollections.CreateDictionary<string, TJanuaConfKey>;
  if aFileName <> '' then
    Initialize(aFileName);
end;

destructor TJanuaConfiguration.Destroy;
begin

  inherited;
end;

function TJanuaConfiguration.FindKey(const aKey: string): Boolean;
begin
  Result := Keys.ContainsKey(aKey.ToLower)
end;

function TJanuaConfiguration.FindValue(aKey, aValue: string): Boolean;
begin
  Result := false;
  if FindKey(aKey) then
    Result := Keys[aKey.ToLower].FindValue(aValue.ToLower)
end;

function TJanuaConfiguration.getAsJsonObject: TJsonObject;
var
  aArray: TJsonArray;
  aPair: TPair<string, TJanuaConfKey>;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'count', Count);

  if Count > 0 then
  begin
    aArray := TJsonArray.Create;
    for aPair in Keys do
{$IFDEF delphixe} aArray.AddElement(aPair.Value.AsJsonObject); {$ENDIF}
{$IFDEF fpc} aArray.Add(aPair.Value.AsJsonObject); {$ENDIF}
    Janua.Core.Json.JsonPair(Result, 'items', aArray);
  end;

end;

function TJanuaConfiguration.GetKeys: IDictionary<string, TJanuaConfKey>;
begin
  if not Assigned(FKeys) then
    FKeys := TCollections.CreateDictionary<string, TJanuaConfKey>;
  Result := FKeys;
end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: Int64): Int64;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
        Result := Keys[aKey.ToLower].Items[aName.ToLower].lValue
      else
      begin
        Result := aDefault;
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end

  end;
end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: Integer): Integer;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
        Result := Keys[aKey.ToLower].Items[aName.ToLower].iValue
      else
      begin
        Result := aDefault;
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;
end;

function TJanuaConfiguration.getValue(aKey, aName, aDefault: string): string;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
      begin
        Result := IfThen(Keys[aKey.ToLower].Items[aName.ToLower].sValue = '', aDefault,
          Keys[aKey.ToLower].Items[aName.ToLower].sValue)
      end
      else
      begin
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;
end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: TDateTime): TDateTime;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
        Result := Keys[aKey.ToLower].Items[aName.ToLower].dttValue
      else
      begin
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;
end;

procedure TJanuaConfiguration.ClearKeys;
begin
  Keys.Clear;
end;

procedure TJanuaConfiguration.Initialize(const aFileName: string);
begin
  try
    Clear;
    FileName := aFileName;
    LoadFromFile(aFileName);
    FIsLoaded := True;
  except
    on e: Exception do
      Raise Exception.Create('TJanuaConfiguration.Initialize ' + e.Message) // , nil);
  end;
end;

function TJanuaConfiguration.isLoaded: Boolean;
begin
  Result := FIsLoaded;
end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: Boolean): Boolean;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
        Result := Keys[aKey.ToLower].Items[aName.ToLower].bValue
      else
      begin
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: TDate): TDate;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
        Result := Keys[aKey.ToLower].Items[aName.ToLower].dtValue
      else
      begin
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: Double): Double;
var
  cKey: TJanuaConfKey;
begin
  Result := aDefault;
  if FIsLoaded then
  begin
    if not FindKey(aKey) then
    begin
      cKey := TJanuaConfKey.Create(aKey);
      cKey.AddItem(aName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[aKey.ToLower].FindValue(aName) then
        Result := Keys[aKey.ToLower].Items[aName.ToLower].dValue
      else
      begin
        Keys[aKey.ToLower].AddItem(aName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

procedure TJanuaConfiguration.LoadConfiguration(aFileName: TFileName);
begin
  FileName := aFileName;
  LoadConfiguration;
end;

procedure TJanuaConfiguration.LoadConfiguration;
var
  aList: TStringList;
  aFileName: TFileName;
begin
  aFileName := FileName;
  if FileExists(aFileName) then
  begin
    aList := TStringList.Create;
    try
      aList.LoadFromFile(aFileName);
      if aList.Text <> '' then
        AsJsonObject := Janua.Core.Json.JsonParse(aList.Text);
    finally
      aList.Free;
    end;
  end
  else
    SaveConfiguration;

  FIsLoaded := True;
end;

procedure TJanuaConfiguration.LoadFromFile(aFileName: TFileName);
begin
  FileName := aFileName;
  LoadConfiguration;
end;

procedure TJanuaConfiguration.SaveConfiguration;
{$IFDEF delphixe}
var
  sw: TStreamWriter;
  aFileName: string;
begin
  // sovrascrive il file se esistente .................................................................................
  aFileName := FileName;
  if (aFileName <> '') then
  begin
    if not TDirectory.Exists(TPath.GetDirectoryName(aFileName)) then
      TDirectory.CreateDirectory(TPath.GetDirectoryName(aFileName));
    sw := TStreamWriter.Create(aFileName, false, TEncoding.UTF8);
    try
      try
        sw.WriteLine(asJsonPretty);
      except
        on e: Exception do
        begin
          HasErrors := True;
          LastErrorMessage := e.Message;
        end;
      end;
    finally
      sw.Free;
    end;
  end;
{$ELSE}

begin
{$ENDIF}
end;

procedure TJanuaConfiguration.SaveConfiguration(aFileName: TFileName);
begin
  FileName := aFileName;
  SaveConfiguration;
end;

procedure TJanuaConfiguration.SetasJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
{$IFDEF delphixe} aPair: TJsonPair; {$ENDIF}
  aObject: TJsonObject;
  vTest: Integer;
begin
  ClearKeys;
  Janua.Core.Json.JsonValue(Value, 'count', vTest);
  if vTest > 0 then
  begin
{$IFDEF delphixe}
    aPair := Value.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        AddKey(aObject);
      end;
{$ENDIF}
  end;
end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: Int64): Int64;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey.ToLower].FindValue(lName) then
      begin
        if Keys[lKey.ToLower].Items[lKey.ToLower].lValue <> aDefault then
        begin
          Keys[lKey.ToLower].Items[lKey.ToLower].lValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey.ToLower].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: Integer): Integer;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].iValue <> aDefault then
        begin
          Keys[lKey].Items[lName].iValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.setValue(aKey, aName, aDefault: string): string;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].sValue <> aDefault then
        begin
          Keys[lKey].Items[lName].sValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: TDateTime): TDateTime;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].dttValue <> aDefault then
        begin
          Keys[lKey].Items[lName].dttValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

procedure TJanuaConfiguration.UnLoad;
begin
  FIsLoaded := false;
  Clear;
end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: Boolean): Boolean;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].bValue <> aDefault then
        begin
          Keys[lKey].Items[lName].bValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: TDate): TDate;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].dValue <> aDefault then
        begin
          Keys[lKey].Items[lName].dValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: Double): Double;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].dValue <> aDefault then
        begin
          Keys[lKey].Items[lName].dValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: TJsonObject): TJsonObject;
var
  cKey: TJanuaConfKey;
  aConfValue: TJanuaConfValue;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        aConfValue := Keys[lKey].Items[lName];
        if (aConfValue.sValue <> JsonPretty(aDefault)) then
        begin
          Keys[lKey].Items[lName].sValue := Janua.Core.Json.JsonPretty(aDefault);
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: TJsonObject): TJsonObject;
var
  cKey: TJanuaConfKey;
  aConfValue: TJanuaConfValue;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        aConfValue := Keys[lKey].Items[lName];
        if aConfValue.sValue <> Janua.Core.Json.JsonPretty(aDefault) then
        begin
          Keys[lKey].Items[lName].sValue := Janua.Core.Json.JsonPretty(aDefault);
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;
end;

function TJanuaConfiguration.getValue(aKey, aName: string; aDefault: TJanuaServerRecordConfs)
  : TJanuaServerRecordConfs;
var
  cKey: TJanuaConfKey;
  aConfValue: TJanuaConfValue;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey.ToLower].FindValue(lName.ToLower) then
      begin
        if not Keys[lKey.ToLower].Items[lName.ToLower].rcValue.Equals(aDefault) then
          Keys[lKey.ToLower].AddItem(lName.ToLower, aDefault);
        SaveConfiguration;
      end
      else
      begin
        Keys[lKey.ToLower].Items[lName.ToLower].rcValue := aDefault;
        SaveConfiguration;
      end;
    end;
  end;
end;

function TJanuaConfiguration.setValue(aKey, aName: string; aDefault: TJanuaServerRecordConfs)
  : TJanuaServerRecordConfs;
var
  cKey: TJanuaConfKey;
  lKey, lName: string;
begin
  Result := aDefault;

  lKey := aKey.ToLower;
  lName := aName.ToLower;

  if FIsLoaded then
  begin
    if not FindKey(lKey) then
    begin
      cKey := TJanuaConfKey.Create(lKey);
      cKey.AddItem(lName, aDefault);
      AddKey(cKey);
      SaveConfiguration;
    end
    else
    begin
      if Keys[lKey].FindValue(lName) then
      begin
        if Keys[lKey].Items[lName].rcValue.Equals(aDefault) then
        begin
          Keys[lKey].Items[lKey].rcValue := aDefault;
          SaveConfiguration;
        end;
      end
      else
      begin
        Keys[lKey].AddItem(lName, aDefault);
        SaveConfiguration;
      end;
    end;
  end;

end;

{ TJanuaConfValue }

procedure TJanuaConfValue.Clear;
begin
  Key := '';
  iValue := 0;
  sValue := '';
  dValue := 0.0;
  bValue := false;
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: Int64);
begin
  Clear;
  Key := aKey;
  lValue := aValue;
  ValueType := TJanuaConfType.jcfLargeInt
end;

constructor TJanuaConfValue.Create(const aKey, aValue: string);
begin
  Clear;
  Key := aKey;
  sValue := aValue;
  ValueType := TJanuaConfType.jcfString
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: Integer);
begin
  Clear;
  Key := aKey;
  iValue := aValue;
  ValueType := TJanuaConfType.jcfInteger
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: TDate);
begin
  Clear;
  Key := aKey;
  dtValue := aValue;
  ValueType := TJanuaConfType.jcfDate
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: TDateTime);
begin
  Clear;
  Key := aKey;
  dttValue := aValue;
  ValueType := TJanuaConfType.jcfDateTime
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: Boolean);
begin
  Clear;
  Key := aKey;
  bValue := aValue;
  ValueType := TJanuaConfType.jcfBoolean
end;

function TJanuaConfValue.GetAsInteger: Integer;
begin
  Result := iValue;
end;

function TJanuaConfValue.getAsJsonObject: TJsonObject;
begin
  Result := TJsonObject.Create;

  Janua.Core.Json.JsonPair(Result, 'key', Key);

  Janua.Core.Json.JsonPair(Result, 'type', JanuaConfType[ValueType]);

  case ValueType of
    jcfString:
      Janua.Core.Json.JsonPair(Result, 'value', sValue);
    jcfBoolean:
      Janua.Core.Json.JsonPair(Result, 'value', bValue);
    jcfInteger:
      Janua.Core.Json.JsonPair(Result, 'value', iValue);
    jcfDouble:
      Janua.Core.Json.JsonPair(Result, 'value', dValue);
    jcfDate:
      Janua.Core.Json.JsonPair(Result, 'value', dtValue);
    jcfDateTime:
      Janua.Core.Json.JsonPair(Result, 'value', dttValue);
  end;

end;

function TJanuaConfValue.getAsString: string;
begin
  case ValueType of
    jcfString:
      Result := sValue;
    jcfBoolean:
      Result := bValue.ToString(True);
    jcfInteger:
      Result := iValue.ToString;
    jcfLargeInt:
      Result := lValue.ToString;
    jcfDouble:
      Result := dValue.ToString;
    jcfDate:
      Result := JsonEncodeDate(dtValue);
    jcfDateTime:
      Result := JsonEncodeDate(dttValue);
  end;

end;

procedure TJanuaConfValue.SetAsInteger(const Value: Integer);
begin
  ValueType := TJanuaConfType.jcfInteger;
  iValue := Value;
end;

procedure TJanuaConfValue.SetasJsonObject(const Value: TJsonObject);
var
  sType: string;
begin
  Clear;
  // per prima cosa imposto la 'chiave di ricerca' .....................................................................
  Janua.Core.Json.JsonValue(Value, 'key', Key);
  Janua.Core.Json.JsonValue(Value, 'type', sType);
  ValueType := DecodeJanuaConfType(sType);

  // a seconda del tipo di parametro vado a 'riempire' il giusto valore in casella .....................................
  case ValueType of
    jcfString:
      Janua.Core.Json.JsonValue(Value, 'value', FsValue);
    jcfBoolean:
      Janua.Core.Json.JsonValue(Value, 'value', bValue);
    jcfInteger:
      Janua.Core.Json.JsonValue(Value, 'value', iValue);
    jcfDouble:
      Janua.Core.Json.JsonValue(Value, 'value', dValue);
    jcfDate:
      Janua.Core.Json.JsonValue(Value, 'value', dtValue);
    jcfDateTime:
      Janua.Core.Json.JsonValue(Value, 'value', dttValue);
  end;

end;

procedure TJanuaConfValue.setAsString(const Value: string);
begin

end;

procedure TJanuaConfValue.SetsValue(const Value: string);
begin
  FsValue := Value;
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: TJsonObject);
begin
  Key := aKey;
  SetasJsonObject(aValue);
end;

constructor TJanuaConfValue.Create(const aKey: string; aValue: TJanuaServerRecordConfs);
begin
  rcValue := aValue;
  Key := aKey;
end;

constructor TJanuaConfValue.Create;
begin
  Clear
end;

constructor TJanuaConfValue.Create(aValue: TJsonObject);
begin
  AsJsonObject := aValue;
end;

{ TJanuaConfKey }

procedure TJanuaConfKey.AddItem(const aKey: string; aValue: Integer);
var
  aItem: TJanuaConfValue;
begin
  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfInteger;
    Items[aKey.ToLower].iValue := aValue;
  end;
end;

procedure TJanuaConfKey.AddDate(const aKey: string; aValue: TDate);
var
  aItem: TJanuaConfValue;
begin
  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfDate;
    Items[aKey.ToLower].dtValue := aValue;
  end;

end;

procedure TJanuaConfKey.AddItem(const aKey, aValue: string);
var
  aItem: TJanuaConfValue;
begin
  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfDate;
    Items[aKey.ToLower].sValue := aValue;
  end;

end;

procedure TJanuaConfKey.AddItem(const aKey: string; aValue: Int64);
var
  aItem: TJanuaConfValue;
begin
  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfLargeInt;
    Items[aKey.ToLower].lValue := aValue;
  end;

end;

procedure TJanuaConfKey.AddItem(const aKey: string; aValue: TDateTime);
var
  aItem: TJanuaConfValue;
begin
  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfDateTime;
    Items[aKey.ToLower].dttValue := aValue;
  end;

end;

procedure TJanuaConfKey.AddItem(aItem: TJanuaConfValue);
begin
  Items[aItem.Key.ToLower] := aItem; // .AddOrSetValue(aItem.Key.ToLower, aItem)
end;

procedure TJanuaConfKey.Clear;
var
  aPair: TPair<string, TJanuaConfValue>;
begin
  for aPair in Items do
    aPair.Value.Free;
  Items.Clear;
end;

function TJanuaConfKey.Count: Integer;
begin
  Result := Items.Count;
end;

constructor TJanuaConfKey.Create(aJsonObject: TJsonObject);
begin
  Clear;
  AsJsonObject := aJsonObject;
end;

destructor TJanuaConfKey.Destroy;
begin
  Clear;
  FItems := nil;
  inherited;
end;

constructor TJanuaConfKey.Create(const aKey: string; aItem: TJanuaConfValue);
begin
  Clear;
  Key := aKey;
  AddItem(aItem);
end;

constructor TJanuaConfKey.Create(const aKey: string);
begin
  Clear;
  Key := aKey;
end;

function TJanuaConfKey.FindValue(const aKey: string): Boolean;
var
  i: Integer;
begin
  Result := Items.ContainsKey(aKey.ToLower)
end;

function TJanuaConfKey.getAsJsonObject: TJsonObject;
var
  aPair: TPair<string, TJanuaConfValue>;
  aArray: TJsonArray;
begin
  Result := TJsonObject.Create;
  Janua.Core.Json.JsonPair(Result, 'key', Key);
  Janua.Core.Json.JsonPair(Result, 'count', Count);
  if Count > 0 then
  begin
    aArray := TJsonArray.Create;

    for aPair in Items do
{$IFDEF delphixe}
      aArray.AddElement(aPair.Value.AsJsonObject);
{$ENDIF}
{$IFDEF fpc}
    aArray.Add(aItem.AsJsonObject);
{$ENDIF}
    Janua.Core.Json.JsonPair(Result, 'items', aArray);
  end;

end;

function TJanuaConfKey.GetItems: IDictionary<string, TJanuaConfValue>;
begin
  if not Assigned(FItems) then
    FItems := TCollections.CreateDictionary<string, TJanuaConfValue>;
  Result := FItems;
end;

procedure TJanuaConfKey.SetasJsonObject(const Value: TJsonObject);
var
  aValue: TJsonValue;
{$IFDEF delphixe}aPair: TJsonPair; {$ENDIF}
  aObject: TJsonObject;
  vTest: Integer;
begin
  Clear;
  // temporaneamente movimento solo l'array di items ma non le righe di template
  {
    SecondLineChar := aJson.GetValue('SecondLineChar').Value;
    TemplateHeader := aJson.GetValue('TemplateHeader').Value;
    TemplateRow := aJson.GetValue('TemplateRow').Value;
  }

  Janua.Core.Json.JsonValue(Value, 'key', Key);
  Janua.Core.Json.JsonValue(Value, 'count', vTest);
  if vTest > 0 then
  begin
{$IFDEF delphixe}
    aPair := Value.Get('items');
    if Assigned(aPair) then
      for aValue in (aPair.JsonValue as TJsonArray) do
      begin
        aObject := (aValue as TJsonObject);
        AddItem(aObject);
      end;
{$ENDIF}
  end;

end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: TJsonObject);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].sValue := Janua.Core.Json.JsonPretty(aValue);
end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: Boolean);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].bValue := aValue;
end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: Int64);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].lValue := aValue;
end;

procedure TJanuaConfKey.SetItem(const aKey, aValue: string);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].sValue := aValue;
end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: Integer);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].iValue := aValue;
end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: TDateTime);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].dttValue := aValue;

end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: TDate);
begin
  if FindValue(aKey) then
    Items[aKey.ToLower].dtValue := aValue;
end;

procedure TJanuaConfKey.AddItem(const aKey: string; aValue: Boolean);
var
  aItem: TJanuaConfValue;
begin
  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfBoolean;
    Items[aKey.ToLower].bValue := aValue;
  end;

end;

procedure TJanuaConfKey.AddItem(aObject: TJsonObject);
var
  aItem: TJanuaConfValue;
begin
  aItem := TJanuaConfValue.Create(aObject);
  AddItem(aItem);
end;

procedure TJanuaConfKey.AddItem(const aKey: string; aValue: TJsonObject);
begin

end;

procedure TJanuaConfKey.AddItem(const aKey: string; aValue: TJanuaServerRecordConfs);
var
  aItem: TJanuaConfValue;
begin
  aItem := nil;

  if not FindValue(aKey) then
  begin
    aItem := TJanuaConfValue.Create(aKey, aValue);
    AddItem(aItem);
  end
  else
  begin
    Items[aKey.ToLower].ValueType := TJanuaConfType.jcfServerConf;
    Items[aKey.ToLower].rcValue := aValue;
  end;

  if not Assigned(aItem) then
    aItem := TJanuaConfValue.Create(aKey, aValue);

  aItem.Key := aKey;
  aItem.rcValue := aValue;
  AddItem(aItem);

end;

procedure TJanuaConfKey.SetItem(const aKey: string; aValue: TJanuaServerRecordConfs);
begin

end;

{ TJanuaDisclaimer }

function TJanuaDisclaimer.AsJsonObject: TJsonObject;
var
  a: TJsonObject;
begin
  a := TJsonObject.Create;
  JsonPair(a, 'Terms', Terms);
  JsonPair(a, 'About', About);
  JsonPair(a, 'Privacy', Privacy);
  Result := a;
end;

procedure TJanuaDisclaimer.LoadFromDataset(aDataset: TDataset);
begin
  Terms := aDataset.FieldByName('terms').AsString;
  About := aDataset.FieldByName('about').AsString;
  Privacy := aDataset.FieldByName('privacy').AsString;
end;

function TJanuaDisclaimer.SaveToDataset(aDataset: TDataset): Boolean;
begin
  aDataset.Edit;
  Terms := aDataset.FieldByName('terms').AsString;
  About := aDataset.FieldByName('about').AsString;
  Privacy := aDataset.FieldByName('privacy').AsString;
  Result := True;
end;

procedure TJanuaArray<T>.Assign(aArray: TJanuaArray<T>);
var
  i: Integer;
begin
  FArray := [];
  SetLength(FArray, aArray.Count);
  for i := 0 to Pred(aArray.Count) do
    FArray[i] := aArray[i];
end;

procedure TJanuaArray<T>.Clear;
begin
  SetLength(FArray, 0)
end;

constructor TJanuaArray<T>.Create(aArray: Tarray<T>);
begin
  FArray := aArray
end;

function TJanuaArray<T>.GetCount: Integer;
begin
  Result := Length(FArray)
end;

function TJanuaArray<T>.GetHasValues: Boolean;
begin
  Result := GetCount > 0
end;

function TJanuaArray<T>.GetItems(Index: Integer): T;
begin
  Result := FArray[Index];
end;

function TJanuaArray<T>.Inc: Integer;
begin
  Result := Count;
  SetLength(FArray, Result + 1)
end;

procedure TJanuaArray<T>.Remove(Index: Integer);
begin
  if Index < Pred(GetCount) then { if we want to delete an element inside the array }
    FArray[Index] := FArray[High(FArray)]; { Copy the last element over the 'deleted' element }
  SetLength(FArray, Length(FArray) - 1); { Cut the last element }
end;

procedure TJanuaArray<T>.SetItems(Index: Integer; Value: T);
begin
  if IsManagedType(T) then
  begin
    {
      if GetCount > Index then
      FArray[Index] := T
    }
  end;
end;

{ TLocalCoordinates }

{ TLocalCoordinates }

constructor TLocalCoordinates.Create;
begin
  IsUpdating := True;
end;

procedure TLocalCoordinates.SetCoordinates(const Value: TJanuaRecordCoordinates);
begin
  FCoordinates := Value;
end;

procedure TLocalCoordinates.SetIsUpdating(const Value: Boolean);
begin
  FIsUpdating := Value;
end;

{ TJanuaConfCustomField }

constructor TJanuaConfCustomField.Create(const aField, aValue: string);
begin
  Key := aField;
  Value := aValue;
end;

{ TJanuaDraw }

procedure TJanuaDraw.AddPoint(aPoint: TJanuaPoint);
begin
  SetLength(Points, Length(Points) + 1);
  Points[Length(Points) - 1] := aPoint;
end;

function TJanuaDraw.ActualX: Single;
begin
  Result := Points[Length(Points) - 1].X
end;

function TJanuaDraw.ActualY: Single;
begin
  Result := Points[Length(Points) - 1].Y
end;

procedure TJanuaDraw.AddPoint(aX, aY: Single);
begin
  var
  aPoint := TJanuaPoint.Create(aX, aY);
  var
  lP := Length(Points);
  SetLength(self.Points, lP + 1);
  Points[lP] := aPoint;
end;

constructor TJanuaDraw.Create(aX, aY: Single);
begin
  self.AddPoint(aX, aY)
end;

procedure TJanuaDraw.DelPoint;
begin
  SetLength(Points, Length(Points) - 1);
end;

{ TJanuaImageDraws }

procedure TJanuaImageDraws.AddDraw(aDraw: TJanuaDraw);
begin
  SetLength(Items, Length(Items) + 1)
end;

constructor TJanuaImageDraws.Create(aWidth, aHeigth: Single);
begin
  Width := aWidth;
  Heigth := aHeigth;
end;

procedure TJanuaImageDraws.DelDraw;
begin
  SetLength(Items, Length(Items) - 1)
end;

procedure TJanuaImageDraws.DeSerialize(const aJson: string);
begin
  self := TJanuaJson.DeserializeSimple<TJanuaImageDraws>(aJson);
end;

function TJanuaImageDraws.Serialize: string;
begin
  Result := TJanuaJson.SerializeSimple<TJanuaImageDraws>(self);
end;

{ TJanuaPoint }

constructor TJanuaPoint.Create(aX, aY: Single);
begin
  X := aX;
  Y := aY;
end;

initialization

{$IFDEF DELPHIXE}
try
  // Initialize the unit
  JanuaPlatforms := [];
{$IFDEF MSWINDOWS}
  JanuaPlatforms := JanuaPlatforms + [TJanuaPlatform.josWindows];
  sJanuaHome := 'C:\januaproject\';
  sGitHubHome := GetEnvironmentVariable('GITHUB');
{$ENDIF MSWINDOWS}
{$IFDEF LINUX}
  JanuaPlatforms := JanuaPlatforms + [TJanuaPlatform.josLinux64];
  sJanuaHome := TPath.GetDocumentsPath + TPath.PathSeparator + 'januaproject';
  sGitHubHome := GetEnvironmentVariable('GITHUB');
{$ENDIF LINUX}
{$IFDEF MACOS}
  JanuaPlatforms := JanuaPlatforms + [TJanuaPlatform.josWindows];
  sJanuaHome := TPath.GetDocumentsPath + TPath.PathSeparator + 'januaproject';
  sGitHubHome := GetEnvironmentVariable('GITHUB');
{$ENDIF MACOS}
{$IFDEF ANDROID}
  sGitHubHome := '';
  JanuaPlatforms := JanuaPlatforms + [TJanuaPlatform.josAndroid];
{$ENDIF ANDROID}
  FIntfDictioary := TDictionary<TGUID, PTypeInfo>.Create;
except
  on e: Exception do
    Raise Exception.Create('Janua.Core.Types.initialization' + sLineBreak + e.Message);
end;
{$ENDIF DELPHIXE}

finalization

FIntfDictioary.Free;

end.
