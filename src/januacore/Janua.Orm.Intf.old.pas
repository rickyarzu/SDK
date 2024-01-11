unit Janua.Orm.Intf;

{$I JANUACORE.INC}

interface

uses
{$IFDEF DELPHIXE}
  Spring.Collections, System.Classes, System.JSON, Data.DB, System.SysUtils, System.Bindings.Helper,
  System.RTTI,
{$ENDIF}
{$IFDEF FPC}
  RtlConsts, Classes, SysUtils, Generics.Collections, fpjson, DB, Generics.MemoryExpanders, Generics.Defaults,
  Generics.Helpers, Generics.Strings,
{$ENDIF}
  // januaproject
  Janua.Html.Intf, Janua.Orm.Types, Janua.Core.Types, Janua.Core.Classes.Intf;

{$IFDEF fpc}

type
  TProc = procedure;
{$ENDIF}

type
  IJanuaField = interface;

  TFieldChangeEvent = procedure(const aField: IJanuaField) of object;

  IJanuaDBCustomDataset = interface; // Forward Declaration
  IJanuaDBDataset = interface; // forward declaration

  IJanuaLookUp = interface(IJanuaInterface)
    ['{F87C5595-20C2-4E48-B55B-996C4E3BBCBF}']
    function GetDataset: IJanuaDBCustomDataset; stdcall;
    function GetKeyField: string; stdcall;
    function GetLookupField: string; stdcall;
    function GetLookupID: TJanuaLookupID; stdcall;
    function GetLookupList: TStrings; stdcall;
    function GetRecordCount: Integer; stdcall;
    procedure SetDataset(const Value: IJanuaDBCustomDataset); stdcall;
    procedure SetKeyField(const Value: string); stdcall;
    procedure SetLookupField(const Value: string); stdcall;
    procedure SetLookupID(const Value: TJanuaLookupID); stdcall;
    procedure SetLookupList(const Value: TStrings); stdcall;
    property Dataset: IJanuaDBCustomDataset read GetDataset;
    property KeyField: string read GetKeyField write SetKeyField;
    property LookupField: string read GetLookupField write SetLookupField;
    property LookupID: TJanuaLookupID read GetLookupID write SetLookupID;
    property LookupList: TStrings read GetLookupList write SetLookupList;
    property RecordCount: Integer read GetRecordCount;
  end;

  IJanuaField = interface(IJanuaInterface)
    ['{343CEA9C-FE65-45D3-97D7-96E675165950}']
    procedure SetKey(const Value: string);
    function GetKey: string;
    function GetDBField: string;
    function GetFieldType: TJanuaFieldType;
    function GetMaxLength: Integer;
    function GetMinLength: smallint;
    function GetPrecision: smallint;
    procedure SetAsJsonMetadata(const Value: TJsonObject);
    procedure SetFieldType(const Value: TJanuaFieldType);
    procedure SetMaxLength(const Value: Integer);
    procedure SetMinLength(const Value: smallint);
    procedure SetPrecision(const Value: smallint);
    procedure SetDBField(const Value: string);
    // Field Related procedures ........................................................................................
    function getAsBoolean: boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsCurrency: Currency;
    function getAsInteger: Integer;
    function getAsString: String;
    function getAsLargeInt: Int64;
{$IFDEF DELPHIXE}
    function getValue: TValue;
    procedure setValue(const Value: TValue);
    // json transformation procedures...........................................................................
    function GetJsonValue: TJsonValue;
    function GetJsonDefault: TJsonValue;
    procedure SetJsonValue(Value: TJsonValue);
    procedure SetJsonDefault(Value: TJsonValue);
    function GetJsonPair: TJsonPair;
    procedure SetJsonPair(Value: TJsonPair);
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property Value: TValue read getValue write setValue;
    // Default Value Management
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
    property DefaultValue: TValue read GetDefault write SetDefault;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
{$ENDIF DELPHIXE}
    function GetAsVariant: Variant;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsCurrency(const Value: Currency);
    procedure setAsInteger(const Value: Integer);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);

    procedure SetAsVariant(const Value: Variant);

    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetAsJsonMetadata: TJsonObject;
    // Read Only and Calculated Properties
    function GetCalculated: boolean;
    procedure SetCalculated(Value: boolean);
    function GeIsReadOnly: boolean;
    procedure SetIsReadOnly(Value: boolean);

    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsCurrency: Currency read getAsCurrency write setAsCurrency;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;

    property AsVariant: Variant read GetAsVariant write SetAsVariant;
    // Data Type Management
    property MinLength: smallint read GetMinLength write SetMinLength;
    property MaxLength: Integer read GetMaxLength write SetMaxLength;
    property Precision: smallint read GetPrecision write SetPrecision;
    property Key: string read GetKey write SetKey;
    property FieldType: TJanuaFieldType read GetFieldType write SetFieldType;
    property DBField: string read GetDBField write SetDBField;
    // Calculate / Read Only
    property Calculated: boolean read GetCalculated write SetCalculated;
    property IsReadOnly: boolean read GeIsReadOnly write SetIsReadOnly;
    // I/O Management
    procedure WriteJsonValue(const aJsonObject: TJsonObject);
    procedure ReadJsonValue(const aJsonObject: TJsonObject);
    procedure WriteToDataset(const aDataset: TDataSet);
    procedure ReadFromDataset(const aDataset: TDataSet);
    // Procedure Clear imposta il valore del record al valore 'base' per il tipo di dati impostato (non è Default).
    procedure Clear;
    // On Data Change Management For Field Interface
    // Sets the Default Value and Sets Modified to none.
    procedure Default;
    function GetOnDataChange: TFieldChangeEvent;
    procedure SetOnDataChage(const Value: TFieldChangeEvent);
    property OnDataChange: TFieldChangeEvent read GetOnDataChange write SetOnDataChage;
    function GetIsMonitored: boolean;
    procedure SetIsMonitored(const Value: boolean);
    property IsMonitored: boolean read GetIsMonitored write SetIsMonitored;
    function GetModified: boolean;
    procedure SetModified(const Value: boolean);
    property Modified: boolean read GetModified write SetModified;
    function DifferDefault: boolean;
    procedure SaveToStream(aStream: TStream);
    procedure LoadFromStream(aStream: TStream);
    function GetHtmlObject: IJanuaHtmlObject;
    procedure SetHtmlObject(const Value: IJanuaHtmlObject);
    property HtmlObject: IJanuaHtmlObject read GetHtmlObject write SetHtmlObject;
    function GetFieldIndex: Integer;
    procedure SetFieldIndex(const Value: Integer);
    property FieldIndex: Integer read GetFieldIndex write SetFieldIndex;
    function Format(aFormat: string): string;
    function Size: Int64;
    /// <summary>Set its Value from a Standard TParam (from Data.DB) accordig to Field's Type </summary>
    /// <param name="aParam">Standard DB Field passed to procedure should not be nil </param>
    procedure SetFromParam(const aParam: TParam);
    /// <summary>Set its Value from a Standard DB Field (from Data.DB) accordig to Field's Type < </summary>
    /// <param name="aField">Standard DB Field passed to procedure should not be nil </param>
    procedure SetFromField(const aField: TField);
    function GetTitle: string;
    procedure SetTitle(const Value: string);
    property Title: string read GetTitle write SetTitle;
    function HasLookupList: boolean;
    function GetLookupList: TJanuaLookupID;
    procedure SetLookupList(const Value: TJanuaLookupID);
    property LookupList: TJanuaLookupID read GetLookupList write SetLookupList;

  end;

  IJanuaIntegerField = interface(IJanuaField)
    ['{FF8E6EA6-B0B3-4AEC-A8F5-4089B1D85D8F}']
  end;

  IJanuaBooleanField = interface(IJanuaField)
    ['{5A1D7C1C-5304-4DD1-ABB0-0F0E840041A9}']
  end;

  IJanuaSmallIntField = interface(IJanuaField)
    ['{DCDC510B-41DD-416F-A2A3-5110D42F88C1}']
  end;

  IJanuaStringField = interface(IJanuaField)
    ['{DA56DFC2-77E8-4364-9A57-5D998B641D1A}']
  end;

  IJanuaDateField = interface(IJanuaField)
    ['{CE9CD06E-7CD0-4241-BDB9-D650661E7E5B}']
  end;

  IJanuaDateTimeField = interface(IJanuaField)
    ['{90E53EFC-FA5C-4162-87BE-007620D0AD7E}']
  end;

  IJanuaBlobField = interface(IJanuaField)
    ['{E5A3D1AB-0D7C-4115-B86B-311350E2C298}']
  end;

{$IFDEF DELPHIXE}

  TJanuaFields = IList<IJanuaField>;
  TValueList = IList<TValue>;
{$ELSE}
  TJanuaFields = TList<IJanuaField>;
  TValueList = TList<Variant>;
{$ENDIF DELPHIXE}

  IJanuaParams = Interface(IJanuaInterface)
    ['{6E2FD044-2460-4341-83EB-C89A5CAA6296}']
{$IFDEF DELPHIXE}
    function GetItems: IDictionary<string, IJanuaField>;
    procedure SetItems(const Value: IDictionary<string, IJanuaField>);
    /// <summary>Items is a Collection of IJanuaField used to store parameters in any supported type</summary>
    property Items: IDictionary<string, IJanuaField> read GetItems write SetItems;
    function GetOrderedList: TArray<IJanuaField>;
    property OrderedList: TArray<IJanuaField> read GetOrderedList;
{$ELSE}
    function GetItems: TDictionary<string, IJanuaField>;
    procedure SetItems(const Value: TDictionary<string, IJanuaField>);
    /// <summary>Items is a Collection of IJanuaField used to store parameters in any supported type</summary>
    property Items: TDictionary<string, IJanuaField> read GetItems write SetItems;
{$ENDIF DELPHIXE}
    function GetAsJsonObject: TJsonObject;
    procedure SetAsJsonObject(const Value: TJsonObject);
    /// <summary> Outputs parameters and their values as a Json Object </summary>
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;

    function GetAsMetaData: TJsonObject;
    procedure SetAsMetaData(const Value: TJsonObject);
    /// <summary>Outputs parameters and their values as a Json Object composed by MetaData Only </summary>
    property AsMetaData: TJsonObject read GetAsMetaData write SetAsMetaData;
    /// <summary>
    /// Adds a param to the List. It must implement IJanuaField and be created (not nil).
    /// </summary>
    function AddParam(aParam: IJanuaField): IJanuaField; overload;
    /// <summary>
    /// Removes a param according to its name (if found)
    /// </summary>
    procedure DelParam(const aName: string);
    /// Createa and adds a param to the Items list. Setting its type, name and Value.
    /// <param name="aName">
    /// The name of the param. Will be used also as paramname to resolve REST http request
    /// </param>
    /// <param name="aType">Params will be created according to the type and its value converted and tested. </param>
    /// <param name="aValue">
    /// Is the Value assigned to the param. A 'generic' TValue Type. Should be Overloaded according to Type.
    /// </param>
    /// </summary>
{$IFDEF DELPHIXE}
    function AddParam(const aName: string; aType: TJanuaFieldType; aValue: TValue): IJanuaField; overload;
{$ELSE  DELPHIXE}
    function AddParam(const aName: string; aType: TJanuaFieldType; aValue: Variant): IJanuaField; overload;
{$ENDIF DELPHIXE}
    function ParamByName(const aName: string): IJanuaField;
    function ParamCount: Integer;
    /// <summary>
    /// Compare a param set with another param set. Comparing both structure and data
    /// </summary>
    function ContentEquals(const aParams: IJanuaParams): boolean;
    /// <summary>
    /// Assigns a set of parameters from another params collections. Overwrites definitions and data
    /// </summary>
    procedure Assign(const aParams: IJanuaParams); overload;
    procedure Assign(const aParams: TParams); overload;
    /// <summary>
    /// Assigns Values from a set of parameters to parameters if found. Overwrites definitions and data
    /// </summary>
    procedure AssignValues(const aParams: IJanuaParams); overload;
    procedure AssignValues(const aParams: TParams); overload;

    function GetAsMetaDataOnly: boolean;
    procedure SetAsMetaDataOnly(const Value: boolean);
    /// <summary>
    /// Outputs parameters and their values as a Json Object composed by MetaDataOnly Only
    /// </summary>
    property AsMetaDataOnly: boolean read GetAsMetaDataOnly write SetAsMetaDataOnly;
    /// <summary> Outputs parameters and their values as key=value pairs semicolon separated </summary>
    function getAsString: string;
    property AsString: string read getAsString;

    procedure ClearParams;
    function GetItem(const aIndex: Integer): IJanuaField;
    /// <summary> Indexed property based on the internal Array </summary>
    property Params[const aIndex: Integer]: IJanuaField read GetItem; default;

    function GetText: string;
    function GetParamsList: TStrings;
    /// <summary> ParamList can be Used to create a Combo or a Selection of Items in a View </summary>
    property ParamsList: TStrings read GetParamsList;
    /// <summary> Text is a List of Params by Title it is ParamsList.Text read only   property </summary>
    property Text: string read GetText;
  End;

  TMasterField = record
    Master: IJanuaField;
    Detail: IJanuaField;
  public
    constructor create(aMaster, aDetail: IJanuaField);
  end;

  TMasterFields = TArray<TMasterField>;

  IJanuaRecordSet = interface;
  IJanuaRecord = interface;

{$IFDEF DELPHIXE}
  TJanuaRecords = IList<IJanuaRecord>;
  TJanuaRecordSets = IList<IJanuaRecordSet>;
{$ELSE  DELPHIXE}
  TJanuaRecords = TList<IJanuaRecord>;
  TJanuaRecordSets = TList<IJanuaRecordSet>;
{$ENDIF DELPHIXE}
  TJanuaDatasetEvent = procedure(aDataset: IJanuaDBCustomDataset) of Object;

  IJanuaDBCustomDataset = interface
    ['{7F8BA4E9-ACD8-469E-AB94-8B253BFC5F78}']
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    // 2020-07-30 Replaced IList<IJanuaField> with IJanuaParams = Interface(IInterface)
    function getParams: IJanuaParams; // IList<IJanuaField>;
    procedure setParams(const Value: IJanuaParams { IList<IJanuaField> } );
    property Params: IJanuaParams { IList<IJanuaField> } read getParams write setParams;
    function AddParam(aParam: IJanuaField): IJanuaField; overload;
    // 2020-07-30 Converted to a function returning IJanuaField
    function AddParam(const aName: string; aType: TJanuaFieldType): IJanuaField; overload;
    function ParamByName(const aName: string): IJanuaField;
    function FindParam(const aParamName: string; out aParam: IJanuaField): boolean;
    procedure Open;
    procedure OpenThreaded(aProc: TProc = nil);
    procedure Close;
    function GetRecordCount: Integer;
    property RecordCount: Integer read GetRecordCount;
    function GetDataset: TDataSet;
    procedure SetDataset(const Value: TDataSet);
    property Dataset: TDataSet read GetDataset write SetDataset;
    procedure First;
    procedure Next;
    procedure Prior;
    procedure Last;
    function EOF: boolean;
    function BOF: boolean;
    procedure AddEntity(const aEntity: string); overload;
    procedure AddEntity(const aEntity: TJanuaEntity); overload;
    procedure AddEntities(const AEntities: TJanuaEntities); overload;
    procedure AddEntityNames(const AEntities: TJanuaEntityNames); overload;
    function GetEntities: TJanuaEntities;
    procedure SetEntities(const AEntities: TJanuaEntities);
    property Entities: TJanuaEntities read GetEntities write SetEntities;
    function GetActive: boolean; stdcall;
    function GetEntityNames: TJanuaEntityNames;
    procedure SetActive(const Value: boolean); stdcall;
    property Active: boolean read GetActive write SetActive;
    property EntityNames: TJanuaEntityNames read GetEntityNames;
    function getPage: Integer;
    procedure setPage(const Value: Integer);
    /// <summary>
    /// Connected with LImit property Fetches records per page with a 'limit'
    /// window
    /// </summary>
    /// <example>
    /// <code lang="Delphi">begin
    /// jsDataset.LImit := 100;
    /// jdsDataset.Page :=2;
    /// jdsDataset.Open;
    /// end; </code>
    /// </example>
    property Page: Integer read getPage write setPage;
    function GetOnScroll: TJanuaDatasetEvent; stdcall;
    procedure SetOnScroll(const Value: TJanuaDatasetEvent); stdcall;
    /// <summary>  After Scroll Event Fired if not BeginScroll procedure is triggere </summary>
    property OnScroll: TJanuaDatasetEvent read GetOnScroll write SetOnScroll;
    /// <summary>   Stops OnScroll Event useful for Long Loops can disable Events and Thread </summary>
    procedure BeginScroll;
    procedure EndScroll;

  end;

  /// <summary> Extends IJanuaDBCustomDataset with read write procedure to c/s or local DB </summary>
  IJanuaDBDataset = interface(IJanuaDBCustomDataset)
    ['{8AE372EA-785E-4234-81AF-EEEF8904B93A}']
    // procedure LoadFromDataset(var aRecord: IJanuaRecord);  // Il record dovrebbe essere in grado di fare load da solo
    function DeleteFromDataset(const aGUID: TGUID): boolean; overload;
    function DeleteFromDataset(const aRecord: IJanuaRecord): boolean; overload;
    function UpdateRecord(const aRecord: IJanuaRecord): boolean;
    function InsertRecord(const aRecord: IJanuaRecord): boolean;
    function getGUIDPrefix: string;
    procedure setGUIDPrefix(const Value: string);
    property GUIDPrefix: string read getGUIDPrefix write setGUIDPrefix;
    function SearchRecord(const aGUID: TGUID): boolean;
    function GUIDField: string;
    function getLimit: Integer;
    procedure setLimit(const Value: Integer);
    property Limit: Integer read getLimit write setLimit;
    function FieldByName(const FieldName: string): TField;
    procedure SetSearchFilter(const aSQLFilter: string);
    function GetFiltered: boolean;
    procedure SetFiltered(const Value: boolean);
    property Filtered: boolean read GetFiltered write SetFiltered;
    function GetIndexFieldNames: string;
    procedure SetIndexFieldNames(const Value: string);
    property IndexFieldNames: string read GetIndexFieldNames write SetIndexFieldNames;
    function GetDetailDatasets: IList<IJanuaDBDataset>;
    property DetailDatasets: IList<IJanuaDBDataset> read GetDetailDatasets;
    procedure AddDetailDataset(const aDataset: IJanuaDBDataset);
  end;

  /// <summary> Extends DBDataset Interface with Stored Procedure features. Prepare and Exec and Result </summary>
  IJanuaDBStoredProcedure = interface(IJanuaDBCustomDataset)
    ['{ADD310A0-9ECD-41BB-9598-C2142FB5985E}']
    /// <summary> Describes the parameters of a stored procedure.  </summary>
    procedure PrepareSQL;
    /// <summary> Executes a Stored Procedure on the server.  </summary>
    procedure ExecSQL;
    function GetResult: IJanuaField;
    /// <summary> Store Result into an IJanuaField according to Result Type </summary>
    property Result: IJanuaField read GetResult;
    function GetResultType: TJanuaFieldType;
    procedure SetResultType(const Value: TJanuaFieldType);
    /// <summary> Used to create internally the Result Field </summary>
    property ResultType: TJanuaFieldType read GetResultType write SetResultType;
  end;

  IJanuaRecordSetStorage = interface(IInterface)
    ['{4A021E5F-D9C6-4707-BC64-E428F24D2F50}']
    function GetRecordSet: IJanuaRecordSet;
    /// <summary>
    /// Phisicatl Dataset to be updated and stored or retrieved
    /// </summary>
    property RecordSet: IJanuaRecordSet read GetRecordSet;
    function GetOnUpdateSuccess: TNotifyEvent;
    procedure SetOnUpdateSuccess(const Value: TNotifyEvent);
    /// <summary>
    /// Property On Update Success is Triggered after a Successfull update on Remote Database
    /// </summary>
    property OnUpdateSuccess: TNotifyEvent read GetOnUpdateSuccess write SetOnUpdateSuccess;
    function GetOnUpdateError: TNotifyEvent;
    procedure SetOnUpdateError(const Value: TNotifyEvent);
    property OnUpdateError: TNotifyEvent read GetOnUpdateError write SetOnUpdateError;
    function ApplyUpdates(const aRecordSet: IJanuaRecordSet): boolean;
    procedure AsyncApplyUpdates(const aRecordSet: IJanuaRecordSet);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    /// <summary>
    /// A RecordSetStorage can be 'Published' by a Storage Service Container. It can be accessed or 'Opened'
    /// by settings some parameters to retrieve data from its undelying data container.
    /// </summary>
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    function GetMaxRecords: Integer;
    procedure SetMaxRecords(const Value: Integer);
    property MaxRecords: Integer read GetMaxRecords Write SetMaxRecords;
    function ParamByName(const aName: string): IJanuaField;
    function LoadData: boolean;
    /// <summary>
    /// Check if parameters are set and if so it Manages to pass them to the underlying data engin then
    /// Lauches the LoadData procedure returing the Updated RecordSet Count
    /// </summary>
    function Open: NativeUInt;
    procedure AsyncLoadData(aProcResult: TProc<Integer, boolean>; aProcError: TProc<Exception>);
    function GetRecordCount: NativeUInt;
    /// <summary>
    /// Number of records stored. Usually the Record Set Count
    /// </summary>
    property RecordCount: NativeUInt read GetRecordCount;
  end;

  IJanuaRecordStorage = interface(IInterface)
    ['{AD3E731D-F1E7-4263-A6D3-63F26CC21162}']
    /// <summary>
    /// Property On Update Success is Triggered after a Successfull update on Remote Database
    /// </summary>
    function GetUpdatedRecord: IJanuaRecord;
    property UpdatedRecord: IJanuaRecord read GetUpdatedRecord;
    function GetOnUpdateSuccess: TNotifyEvent;
    procedure SetOnUpdateSuccess(const Value: TNotifyEvent);
    /// <summary>
    /// Property On Update Success is Triggered after a Successfull update on Remote Database
    /// </summary>
    property OnUpdateSuccess: TNotifyEvent read GetOnUpdateSuccess write SetOnUpdateSuccess;
    function GetOnUpdateError: TNotifyEvent;
    procedure SetOnUpdateError(const Value: TNotifyEvent);
    property OnUpdateError: TNotifyEvent read GetOnUpdateError write SetOnUpdateError;
    function ApplyUpdates(const aRecord: IJanuaRecord): boolean;
    procedure AsyncApplyUpdates(const aRecord: IJanuaRecord);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    function GetMaxRecords: Integer;
    procedure SetMaxRecords(const Value: Integer);
    property MaxRecords: Integer read GetMaxRecords Write SetMaxRecords;
    function ParamByName(const aName: string): IJanuaField;
    function LoadData: boolean;
    procedure AsyncLoadData;
  end;

  IJanuaRecordField = interface(IJanuaField)
    ['{B6F1FB87-616F-4666-924B-B0CBEF92B6C5}']
    procedure SetRecord(const Value: IJanuaRecord);
    function GetRecord: IJanuaRecord;
    property JanuaRecord: IJanuaRecord read GetRecord write SetRecord;
  end;

  IJanuaDatasetField = interface(IJanuaField)
    ['{B6F1FB87-616F-4666-924B-B0CBEF92B6C5}']
    procedure SetRecordSet(const Value: IJanuaRecordSet);
    function GetRecordSet: IJanuaRecordSet;
    property RecordSet: IJanuaRecordSet read GetRecordSet write SetRecordSet;
  end;

  IRecSerialization = interface;
  TJanuaDBDatasets = TArray<IJanuaDBDataset>;

  IJanuaRecord = interface(IInterface)
    ['{F5898A65-ED1E-48A9-A0B3-B1428F295872}']
    /// <summary>
    /// This property contains the key Field(s) Spec. 2018-0058 Save to Dataset
    /// </summary>
{$IFDEF DELPHIXE}
    procedure SetKeyFields(val: IList<IJanuaField>);
    function GetKeyFields(): IList<IJanuaField>;
    property KeyFields: IList<IJanuaField> read GetKeyFields write SetKeyFields;
    // Nested RecordSets ...................................................
    function GetRecordSets: IList<IJanuaRecordSet>;
    procedure SetRecordSets(const Value: IList<IJanuaRecordSet>);
    property RecordSets: IList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
    // Nested Records ....................................................
    function GetRecords: IList<IJanuaRecord>;
    procedure SetRecords(const Value: IList<IJanuaRecord>);
    property Records: IList<IJanuaRecord> read GetRecords write SetRecords;
{$ELSE  DELPHIXE}
    procedure SetKeyFields(val: TList<IJanuaField>);
    function GetKeyFields(): TList<IJanuaField>;
    property KeyFields: TList<IJanuaField> read GetKeyFields write SetKeyFields;
    // Nested RecordSets ...................................................
    function GetRecordSets: TList<IJanuaRecordSet>;
    procedure SetRecordSets(const Value: TList<IJanuaRecordSet>);
    property RecordSets: TList<IJanuaRecordSet> read GetRecordSets write SetRecordSets;
    // Nested Records ....................................................
    function GetRecords: TList<IJanuaRecord>;
    procedure SetRecords(const Value: TList<IJanuaRecord>);
    property Records: TList<IJanuaRecord> read GetRecords write SetRecords;
{$ENDIF DELPHIXE}
    procedure AddKeyField(const aField: IJanuaField);
    function CheckIsStored: boolean;
    procedure SetDeleted(val: boolean);
    function GetDeleted(): boolean;
    property Deleted: boolean read GetDeleted write SetDeleted;
    // Simple Fields .....................................................
    function FieldCount: Integer;
    function AddField(const aField: IJanuaField): Integer;
    function GetJanuaFields: TJanuaFields;
    procedure SetJanuaFields(const Value: TJanuaFields);
    property Fields: TJanuaFields read GetJanuaFields write SetJanuaFields;
    function FindField(const aName: string): boolean;
    function FieldByName(const aName: string): IJanuaField;
    // Nested RecordSets ...................................................
    function AddRecordSet(const aRecordSet: IJanuaRecordSet): Integer;
    // Field management
    procedure WriteToJson(const aJsonObject: TJsonObject);
    procedure ReadFromJson(const aJsonObject: TJsonObject);
    // funzione As Json Object in entrata ed in uscita ....................
    procedure SetAsJsonObject(const Value: TJsonObject);
    function GetAsJsonObject: TJsonObject;
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    // Name
    function GetName: string;
    procedure SetName(const Value: string);
    property Name: string read GetName write SetName;
    /// <summary>
    /// This procedures, given the actual Datasets Array Connect all Nested Records to Datasets
    /// Spec. 2018-0058 Save to Dataset
    /// </summary>
    procedure SetupDataset(const aMainDataset: IJanuaDBDataset; const aDatasets: TArray<IJanuaDBDataset>);
    procedure LoadRecord;
    procedure LoadFromDataset(const aMainDataset: IJanuaDBDataset); overload;
    procedure LoadFromDataset(const aMainDataset: IJanuaDBDataset;
      const aDatasets: TArray<IJanuaDBDataset>); overload;
    procedure LoadFromDataset; overload;
    /// <summary>
    /// Copies all the Fields' content to the Dataset then 'loops' to Nested Sub Records and Nested Sub Recordsets
    /// 2018-0058 Save to Dataset salva i dati del Record direttamente su un dataset mappato dal campo DBField
    /// Dataset is not exactly a TDataset Class, it is, instead, a IJanuaDBDataset Object that is a collection
    /// of TDataset and Procedures, scripts or Delphi functions to store Data into the target Database that can
    /// be a simple file, a remote location, a SQL database or NoSql Database or ... whatever ...
    /// </summary>
    procedure SaveToDataset(Force: boolean = False); overload;
    /// <summary>
    /// Calls the Insert procedure of its IJanuaDataset Object
    /// </summary>
    procedure AppendToDataset;
    /// <summary>
    /// Calls the Update procedure of its IJanuaDataset Object
    /// </summary>
    procedure UpdateToDataset;
    /// <summary>
    /// Check if a record with the same GUID is in Dataset
    /// </summary>
    function CheckInDataset: boolean;
    /// <summary>
    /// Refresh record from Dataset usually after an Insert/Update procedure
    /// </summary>
    procedure RefreshFromDataset;
    // Deserialize .....................................
    procedure ReadRecord(aDataList: IRecSerialization);
    // Serialize .......................................
    procedure WriteRecord(aDataList: IRecSerialization);
    /// <summary>
    /// Append Procedure Generates all Default Values for all Fields in a Record. Set its State as
    /// New Record but not Modified Record. Does not Generate an IRecSerialization
    /// Append Generate a New GUID for the record while Clear sets the GUID to GUID_NULL
    /// </summary>
    procedure Append;
    /// <summary>
    /// Generate New Record and Create its Serialization to be sent to RecordSet
    /// </summary>
    function NewRecord: IRecSerialization;
    /// <summary>
    /// Current Record Serialization
    /// </summary>
    function RecordValue: IRecSerialization;
    /// <summary>
    /// RecordSetIndex (Index of the Last Inserted Recordset)
    /// </summary>
    function RecordSetIndex: Integer;
    /// <summary>
    /// Record Count of all Records Last Record Index + 1
    /// </summary>
    function GetRecordCount: Integer;
    /// <summary>
    /// RecordSetCount Count of all Recordsets Last RecordSet Index + 1
    /// </summary>
    function RecordSetCount(aRecursive: boolean = False): Integer;
    /// <summary>
    /// Clear viene usato per 'annullare' un record e toglire 'tracce' di vecchi dati.
    /// </summary>
    /// <description>
    /// Clear non inizializza i valori a Default (questo lo fa invece NewRecord)
    /// It initialize the GUID Value to GUID_NULL. Requires Append to start a New Record
    /// </description>
    procedure Clear;
    /// <summary>
    /// Compares another record, first checks its strucuture then the content. True if both are Equal
    /// </summary>
    /// <param name="aRecord">The record to Compare</param>
    function ContentEquals(const aRecord: IJanuaRecord): boolean;
    /// <summary>
    /// Executes on Field Change Events that can trigger Calculated Fields.
    /// </summary>
    procedure DoCalcFields;
    procedure SetNotifyEvent(Value: TNotifyEvent);
    function GetNotifyEvent: TNotifyEvent;
    /// <summary>
    /// Notify Event To Calculate Fields
    /// </summary>
    /// <remarks>
    /// A field can have a property that sets it as 'modified'
    /// This triggers an event that can set values for one or more calculated Fields.
    /// </remark>
    property OnCalcFields: TNotifyEvent read GetNotifyEvent write SetNotifyEvent;
    procedure SetGUID(Value: TGUID);
    function GetGUID: TGUID;
    /// <summary>
    /// Contains a 128bit GUID unique identifier for the record or the Resource.
    /// </summary>
    /// <remarks>
    /// This GUID is used as a common PK for object all around the network
    /// This allows synchronization between local and remote istances
    /// </remarks>
    property GUID: TGUID read GetGUID write SetGUID;
    /// <summary>
    /// ItemIndex is the index of the record when it is contained in a List inside a recordset.
    /// It should be connected with GUID and is useful to locate a record insied an ILIst
    /// </summary>
    procedure SetItemIndex(Value: Integer);
    function GetItemIndex: Integer;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(Value: IJanuaRecord);
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    procedure AddMasterField(aMaster, aDetail: IJanuaField);
    /// <summary>
    /// This procedure Undoes all caches updates recursively on any RecordSet or sub-Record
    /// </summary>
    procedure UndoUpdates;
    function GetModified: boolean;
    procedure SetModified(const Value: boolean);
    property Modified: boolean read GetModified write SetModified;
    function GetIsNewRecod: boolean;
    procedure SetIsNewReoord(Value: boolean);
    property IsNewRecord: boolean read GetIsNewRecod write SetIsNewReoord;
    function GetIsRemoteStored: boolean;
    procedure SetIsRemoteStored(Value: boolean);
    function GetIsLocalStored: boolean;
    procedure SetIsLocalStored(Value: boolean);
    property IsLocalStored: boolean read GetIsLocalStored write SetIsLocalStored;
    property IsRemoteStored: boolean read GetIsRemoteStored write SetIsRemoteStored;
    function GetUpdatesPending: boolean;
    procedure SetUpdatesPending(Value: boolean);
    property UpdatesPending: boolean read GetUpdatesPending write SetUpdatesPending;
    // Apply Updates
    procedure ApplyRemoteUpdates;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromRemoteStorage;
    // procedura che in parallelo carica i dati dal Remote Storage.
    procedure ApplyLocalUpdates;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromLocalStorage;
    // procedura che in parallelo carica i dati dal Remote Storage.
    procedure Assign(const aRecord: IJanuaRecord);
    function GetStoreDataset: IJanuaDBDataset;
    procedure SetStoreDataset(Value: IJanuaDBDataset);
    /// <summary>
    /// Store Dataset connect the Dataset with a Phisical Record on Server or Client Machines
    /// This is where the procedure Saves all Record Data.
    /// </summary>
    property StoreDataset: IJanuaDBDataset read GetStoreDataset write SetStoreDataset;
    function GetIsDeleted: boolean;
    procedure SetIsDeleted(const Value: boolean);
    property IsDeleted: boolean read GetIsDeleted write SetIsDeleted;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    property Prefix: string read GetPrefix write SetPrefix;
    // Direct Dataset
    procedure DirectLoadFromDataset(const aDataset: TDataSet); overload;
    procedure DirectLoadFromDataset(const aDatasets: TArray<TDataSet>); overload;
    procedure DirectSaveToDataset(const aDataset: TDataSet; Force: boolean = False); overload;
    procedure DirectSaveToDataset(const aDatasets: TArray<TDataSet>; Force: boolean = False); overload;
    function GetDataset: TDataSet;
    procedure SetDataset(const Value: TDataSet);
    /// <summary>
    /// Store Dataset connect the Dataset with a Phisical Record on Database using TDAtaset
    /// from DB.Data namespace in Delphi Library. I used only for direct Dataset Access
    /// and Direct-Save-Load from/to DBDataset procedures Is preferable to use IJanuaDBDataset
    /// </summary>
    property DBDataset: TDataSet read GetDataset write SetDataset;
    function PrefixGUIDField: string;
    function GetAsMetaData: TJsonObject;
    procedure SetAsMetaData(const Value: TJsonObject);
    /// <summary> This Property is used to store and retrieve a record structure from and to a TJsonObject
    /// Its set procedure can be called also by a custom Create(TJsonObject) procedure. </summary>
    property AsMetaData: TJsonObject read GetAsMetaData write SetAsMetaData;
    function GetLastMessage: string;
    procedure SetLastMessage(const Value: string);
    property LastMessage: string read GetLastMessage write SetLastMessage;
    function GetEntity: TJanuaEntity; stdcall;
    function GetEntityName: string; stdcall;
    procedure SetEntity(const Value: TJanuaEntity); stdcall;
    procedure SetEntityName(const Value: string); stdcall;
    property Entity: TJanuaEntity read GetEntity write SetEntity;
    property EntityName: string read GetEntityName write SetEntityName;
    /// <summary>   Loops through its Recordsets and Records to connect every entity with its phisical dataset
    /// Returns True if all records are assigned, false if not all records are assigned  </summary>
    /// <param name="aDatasets">  List of Datasets to be assigned </param>
    /// <param name="aRaiseException">
    // check if an exception is to be raised if not all Record Definitions can be Assigned to Datasets
    /// </param>
    function AssignJanuaDatasets(const aDatasets: TJanuaDBDatasets; const aRaiseException: boolean): boolean;
    procedure AssignDatasets(aDatasets: TArray<TDataSet>);
    property RecordCount: Integer read GetRecordCount;
  end;

  ISetSerialization = interface;
{$IFDEF DELPHIXE}
  TRecList = IList<IRecSerialization>;
  TSetList = IList<ISetSerialization>;
{$ELSE  DELPHIXE}
  TRecList = TList<IRecSerialization>;
  TSetList = TList<ISetSerialization>;
{$ENDIF DELPHIXE}

  IRecSerialization = interface(IInterface)
    ['{C651F372-7A10-4186-83E7-8A2003871CAA}']
    // Values .....................................................................
    function GetFieldValues: TValueList;
    procedure SetFieldValues(const Value: TValueList);
    property FieldValues: TValueList read GetFieldValues Write SetFieldValues;
    // OldValues .....................................................................
    function GetOldValues: TValueList;
    procedure SetOldValues(const Value: TValueList);
    property OldValues: TValueList read GetOldValues Write SetOldValues;
    // Records .....................................................................
    function GetRecValues: TRecList;
    procedure SetRecValues(const Value: TRecList);
    property RecValues: TRecList read GetRecValues Write SetRecValues;
    // RecordSets ..................................................................
    function GetRecSetList: TSetList;
    procedure SetRecSetList(const Value: TSetList);
    property RecSetList: TSetList read GetRecSetList Write SetRecSetList;
    // Data Management
    procedure Clear;
    // GUID ..................................................................
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    property GUID: TGUID read GetGUID Write SetGUID;
    // Inded ..................................................................
    function GetIndex: Integer;
    procedure SetIndex(const Value: Integer);
    property ItemIndex: Integer read GetIndex Write SetIndex;
  end;

  ISetSerialization = interface(IInterface)
    ['{ABE3587E-DE7D-4F38-B36E-D3911FBAF6BE}']
    // List of Records ..............................................................
    function GetRecList: TRecList;
    procedure SetRecList(const Value: TRecList);
    property RecList: TRecList read GetRecList Write SetRecList;
    procedure AddRecord(aSerialization: IRecSerialization);
    function CurrentRecord: IRecSerialization;
    function GetItemIndex: Integer;
    procedure SetItemIndex(const Value: Integer);
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    procedure DelCurrenRecord;
    function GetRecordCount: Integer;
    property RecordCount: Integer read GetRecordCount;
    // Data Management
    procedure Clear;
  end;

{$IFDEF fpc}

  TJanuaRecordProc = procedure(const aRecord: IJanuaRecord);
{$ENDIF}

  IJanuaRecordSet = interface(IJanuaBindable)
    ['{372C849A-DC84-420A-A0D1-8C84F404613E}']
    function ToJsonPretty: string;
    procedure LoadFromDataset; overload;
    procedure LoadFromDataset(aMainDataset: IJanuaDBDataset; aDatasets: TArray<IJanuaDBDataset>); overload;
    procedure SaveToDataset; overload;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset); overload;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset; aDatasets: TJanuaDBDatasets); overload;
    function GetRecordCount: Integer;
    property RecordCount: Integer read GetRecordCount;
    function GetItemIndex: Integer;
    procedure SetItemIndex(const Value: Integer);
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    function GetName: string;
    procedure SetName(const Value: string);
    property Name: string read GetName write SetName;
    // Dataset Specific procedures and functions
    procedure Append; overload;
    procedure Append(const aObject: TJsonObject); overload;
    procedure Append(const aRecord: IJanuaRecord); overload;
    procedure Delete;
    procedure Post;
    procedure Next;
    procedure Prev;
    procedure First;
    procedure Last;
    function BOF: boolean;
    function EOF: boolean;
    procedure Clear;
    /// <summary>
    /// Compares another record, first checks its strucuture then the content. True if both are Equals
    /// </summary>
    /// <param name="aRecord">The recordset to Compare</param>
    function ContentEquals(const aRecord: IJanuaRecordSet): boolean;
    /// <summary>Json Serialization </summary>
    procedure WriteToJsonObject(const aJsonObject: TJsonObject);
    /// <summary> Read From Json Object 'reads' this object as a nested one  </summary>
    procedure ReadFromJsonObject(const aJsonObject: TJsonObject; aFree: boolean = False);
    /// <summary> Set from Json Object is used when our Recordset is the 'root' Object.  </summary>
    procedure SetFromJsonObject(const aJsonObject: TJsonObject; aFree: boolean = False);
    /// <summary>  Read from json reads a root object from a json String.   </summary>
    procedure ReadFromJson(aJson: string);
    function ToJson: string;
    // funzione As Json Object in entrata ed in uscita ....................
    procedure SetAsJsonObject(const Value: TJsonObject);
    function GetAsJsonObject: TJsonObject;
    property AsJsonObject: TJsonObject read GetAsJsonObject write SetAsJsonObject;
    // Record
    function GetCurrentRecord: IJanuaRecord;
    procedure SetCurrentRecord(const Value: IJanuaRecord);
    /// <summary>
    /// Current Record represent the record structure of the Recordset and stores record information from
    /// the current pointer in records array (accessed using firt, last, next and prev procedures).
    /// </summary>
    property CurrentRecord: IJanuaRecord read GetCurrentRecord write SetCurrentRecord;
    // DataSet
    function GetDataset: TDataSet;
    procedure SetDataset(const Value: TDataSet);
    /// <summary> A Recordset can Generate and be linked to a standard TDataset (a Virtual or Memory Dataset)
    /// that can be used as a bridge to bind list controls with Recordset </summary>
    property Dataset: TDataSet read GetDataset write SetDataset;
    // GUID
    function GetActualGUID: TGUID;
    procedure SetActualGUID(const Value: TGUID);
    property ActualGUID: TGUID read GetActualGUID write SetActualGUID;
    // Set Serialization - Serialize - Deserialize
    procedure WriteToSerialization(aSerialization: ISetSerialization);
    procedure ReadFromSerialization(aSerialization: ISetSerialization);
    // Record Structure
    // Events
    function SearchByGUID(aGUID: TGUID): boolean;
    function GetOnScroll: TNotifyEvent;
    procedure SetOnScroll(Value: TNotifyEvent);
    property OnScroll: TNotifyEvent read GetOnScroll write SetOnScroll;
    /// <summary>   Loops through its Recordsets and Records to connect every entity with its phisical dataset
    /// Returns True if all records are assigned, false if not all records are assigned  </summary>
    /// <param name="aDatasets">  List of Datasets to be assigned </param>
    /// <param name="aRaiseException">
    // check if an exception is to be raised if not all Record Definitions can be Assigned to Datasets
    /// </param>
    function AssignDatasets(const aDatasets: TJanuaDBDatasets; const aRaiseException: boolean): boolean;

{$IFDEF DELPHIXE}
    // Deleted Records ....................................................
    function GetDelRecords: IList<IJanuaRecord>;
    procedure SetDelRecords(const Value: IList<IJanuaRecord>);
    property DelRecords: IList<IJanuaRecord> read GetDelRecords write SetDelRecords;
{$ELSE  DELPHIXE}
    // Deleted Records ....................................................
    function GetDelRecords: TList<IJanuaRecord>;
    procedure SetDelRecords(const Value: TList<IJanuaRecord>);
    property DelRecords: TList<IJanuaRecord> read GetDelRecords write SetDelRecords;
{$ENDIF DELPHIXE}
    // Modified
    function GetModified: boolean;
    procedure SetModified(Value: boolean);
    property Modified: boolean read GetModified write SetModified;
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    function IsLocalUpdated: boolean;
    function IsRemoteUpdated: boolean;
    procedure ApplyRemoteUpdates;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromRemoteStorage;
    // procedura che in parallelo carica i dati dal Remote Storage.
    procedure ApplyLocalUpdates;
    // questa procedura deve pero attivare un 'evento' che viene passato allo Store.
    procedure LoadFromLocalStorage;
    // procedura che in parallelo carica i dati dal Remote Storage.
    procedure Assign(const aRecordSet: IJanuaRecordSet);
    procedure SetRecord(const aRecord: IJanuaRecord);
    // IJanuaDBDataset
    function GetStoreDataset: IJanuaDBDataset;
    procedure SetStoreDataset(Value: IJanuaDBDataset);
    property StoreDataset: IJanuaDBDataset read GetStoreDataset write SetStoreDataset;
    procedure DirectLoadFromDataset(const aDataset: IJanuaDBDataset); overload;
    // Tradistional Dataset
    procedure DirectLoadFromDataset(const aDataset: TDataSet); overload;
    procedure DirectLoadFromDataset(const aDataset: TArray<TDataSet>); overload;
    procedure DirectSaveToDataset(const aDataset: TDataSet);
    procedure GoToBookmark(aBoomarkID: Integer);
{$IFDEF fpc}
    // TJanuaRecordProc
    procedure SetOnNewRecord(const Value: TJanuaRecordProc);
    procedure SetOnRecordChange(const Value: TJanuaRecordProc);
    function GetOnNewRecord: TJanuaRecordProc;
    function GetOnRecordChange: TJanuaRecordProc;
    property OnNewRecord: TJanuaRecordProc read GetOnNewRecord write SetOnNewRecord;
    property OnRecordChange: TJanuaRecordProc read GetOnRecordChange write SetOnRecordChange;
{$ELSE}
    /// <summary>
    /// If Set a change on the RecordSet launches a TProc and passe it currentrecord
    /// </summary>
    procedure SetOnNewRecord(const Value: TProc<IJanuaRecord>);
    procedure SetOnRecordChange(const Value: TProc<IJanuaRecord>);
    function GetOnNewRecord: TProc<IJanuaRecord>;
    function GetOnRecordChange: TProc<IJanuaRecord>;
    property OnNewRecord: TProc<IJanuaRecord> read GetOnNewRecord write SetOnNewRecord;
    property OnRecordChange: TProc<IJanuaRecord> read GetOnRecordChange write SetOnRecordChange;
{$ENDIF fpc}
    // Lazy Loading
    function GetLazyLoading: boolean;
    procedure SetLazyLoading(const Value: boolean);
    property LazyLoading: boolean read GetLazyLoading write SetLazyLoading;
    function GetAsMetaData: TJsonObject;
    procedure SetAsMetaData(const Value: TJsonObject);
    /// <summary>
    /// This Property is used to store and retrieve a record structure from and to a TJsonObject
    /// Its set procedure can be called also by a custom Create(TJsonObject) procedure.
    /// </summary>
    property AsMetaData: TJsonObject read GetAsMetaData write SetAsMetaData;
    /// <summary>
    /// if recordcount > 0 the procedure iterates all records ex executes a procedure for each one
    /// <summary>
    /// <param name="aProc">
    /// the procedure to be executed on eache iteration
    /// </param>
    procedure Iterate(aProc: TProc);
    /// <summary> This procedure iterate the dataset until eof or record found. If Found it sets the record as current record. <summary>
    /// <param name="aField"> the field used to check the value.</param>
    /// <param name="aValue"> the Value to check with field content </param>
    function Locate(const aField: IJanuaField; const aValue: Integer): boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: string): boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: Variant): boolean; overload;
{$IFNDEF fpc} function Locate(const aField: IJanuaField; const aValue: TValue): boolean; overload; {$ENDIF}
  end;

type
  TDatasetList = IList<IJanuaDBDataset>;

Type
  IFiedlFactory = interface
    function CreateField(aKey, aDBField: string; aType: TJanuaFieldType): IJanuaField;
  end;

implementation

uses Spring;

{ TMasterField }

constructor TMasterField.create(aMaster, aDetail: IJanuaField);
begin
  Guard.CheckTrue(aMaster.FieldType = aDetail.FieldType, 'MasterField  Master.FieldType <> Detail.FieldType');
  self.Master := aMaster;
  self.Detail := aDetail;
end;

end.
