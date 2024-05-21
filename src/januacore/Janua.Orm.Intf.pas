unit Janua.Orm.Intf;

{$I JANUACORE.INC}

interface

uses
{$IFDEF DELPHIXE}
  Spring.Collections, System.Classes, System.JSON, Data.DB, System.SysUtils, System.Bindings.Helper,
  System.RTTI,
{$ENDIF}
{$IFDEF fpc}
  RtlConsts, Classes, SysUtils, Generics.Collections, fpjson, DB, Generics.MemoryExpanders, Generics.Defaults,
  Generics.Helpers, Generics.Strings,
{$ENDIF}
  // januaproject
  Janua.Orm.Types, Janua.Core.Types, Janua.Rest.Types, Janua.Core.DB.Types,
  Janua.Bindings.Intf, Janua.Html.Intf, Janua.Core.Classes.Intf;

{$IFDEF fpc}

type
  TProc = procedure;
{$ENDIF}

type
  IJanuaOrderByFields = interface
    ['{35761B73-B3FA-4F89-BFD3-ED7D7857DB38}']
    /// <summary> ClearBindings can be called externally when the object is no longer needed </summary>
    procedure ClearBindings;
    procedure ClearFields;
    function GetFields: IList<TJanuaOrderByField>;
    function FieldCount: Integer;
    procedure AddField(const aFieldName: string; const aOrderBy: TOrderByEnum = jobASC;
      const aCompare: TOrderByCompare = jocDefault);
    property Fields: IList<TJanuaOrderByField> read GetFields;
    function GetOrderByClause: string;
    property IndexFieldNames: string read GetOrderByClause;
  end;

  IJanuaField = interface;

  TFieldChangeEvent = procedure(const aField: IJanuaField) of object;

  IJanuaDBCustomDataset = interface; // Forward Declaration
  IJanuaDBDataset = interface; // forward declaration

  IJanuaLookUp = interface(IJanuaInterface)
    ['{F87C5595-20C2-4E48-B55B-996C4E3BBCBF}']
    function GetDataset: IJanuaDBCustomDataset;
    function GetKeyField: string;
    function GetLookupField: string;
    function GetLookupID: TJanuaLookupID;
    function GetLookupList: TStrings;
    function GetRecordCount: Integer;
    procedure SetDataset(const Value: IJanuaDBCustomDataset);
    procedure SetKeyField(const Value: string);
    procedure SetLookupField(const Value: string);
    procedure SetLookupID(const Value: TJanuaLookupID);
    procedure SetLookupList(const Value: TStrings);
    property Dataset: IJanuaDBCustomDataset read GetDataset;
    property KeyField: string read GetKeyField write SetKeyField;
    property LookupField: string read GetLookupField write SetLookupField;
    property LookupID: TJanuaLookupID read GetLookupID write SetLookupID;
    property LookupList: TStrings read GetLookupList write SetLookupList;
    property RecordCount: Integer read GetRecordCount;
  end;

  IJanuaDBDatasetRESTRemoter = interface
    procedure SetJanuaDataset(const Value: IJanuaDBDataset);
    function GetJanuaDataset: IJanuaDBDataset;
    procedure SetAPIUrl(const Value: string);
    function GetAPIUrl: string;

    property JanuaDataset: IJanuaDBDataset read GetJanuaDataset write SetJanuaDataset;
    property ApiUrl: string read GetAPIUrl write SetAPIUrl;

    function LoadData: Boolean;
    function DeleteRecord: Boolean;
    function UpdateRecord: Boolean;
    function AppendRecord: Boolean;
    function GetMeta: Boolean;
  end;

  TSearchContainerType = (jscLookupList, jscRadioList, jscLookupDataset, jscSearchModel, jscStringList,
    jscRecordset);

  IJanuaSearchContainer = interface(IJanuaInterface)
    ['{F28F0AB4-DB9E-4251-B087-48C19AA2945B}']
    function GetContainerType: TSearchContainerType;
    function GetFieldOwner: IJanuaField;
    function GetGroupID: Integer;
    function GetKeyField: string;
    function GetValueField: string;
    procedure SetKeyField(const Value: string);
    procedure SetValueField(const Value: string);
    property ContainerType: TSearchContainerType read GetContainerType;
    property FieldOwner: IJanuaField read GetFieldOwner { write SetFieldOwner };
    property GroupID: Integer read GetGroupID { write SetGroupID };
    property KeyField: string read GetKeyField write SetKeyField;
    property ValueField: string read GetValueField write SetValueField;
    procedure SetCallBackSearch(const Value: TProc<Integer>);
    function GetCallBackSearch: TProc<Integer>;
    property CallBackSearch: TProc<Integer> read GetCallBackSearch write SetCallBackSearch;
    function GetKeyValue: string;
    procedure SetKeyValue(const Value: string);
    function GetLookUpValue: string;
    procedure SetLookupValue(const Value: string);
    property KeyValue: string read GetKeyValue write SetKeyValue;
    property LookupValue: string read GetLookUpValue write SetLookupValue;
  end;

  TKeyValue = Record
    Key: string;
    Value: string;
  public
    Constructor Create(const aKey, aValue: string);
  End;

  IJanuaSearchListContainer = interface(IJanuaSearchContainer)
    ['{40B5C4B2-BDED-49AC-A81F-6338C03C41D5}']
    function GetLookupList: IList<TKeyValue>;
    property LookupList: IList<TKeyValue> read GetLookupList;

    procedure AddKeyValue(const aKey, aValue: string); overload;
    procedure AddKeyValue(const aKeyValue: TKeyValue); overload;

    function GetKeyCount: Integer;
    property KeyCount: Integer read GetKeyCount;
  end;

  IJanuaSearchRadioContainer = interface(IJanuaSearchListContainer)
    ['{77E156EC-11B1-45D2-ACB0-7D62E4AA526B}']
  end;

  IJanuaSearchDatasetContainer = interface(IJanuaSearchContainer)
    ['{FF4DB0A1-4DBC-4D9A-B066-A78FC974372D}']
    function GetJanuaDBDataset: IJanuaDBDataset;
    property JanuaDBDataset: IJanuaDBDataset read GetJanuaDBDataset;
  end;

  IJanuaField = interface(IJanuaBindableObject)
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
    function getAsBoolean: Boolean;
    function getAsDateTime: TDateTime;
    function getAsFloat: Extended;
    function getAsCurrency: Currency;
    function getAsInteger: Integer;
    function getAsSmallint: smallint;
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
    function GetDataString: string;
    procedure SetDataString(const aValue: string);
    // Json Data Management
    property AsJsonValue: TJsonValue read GetJsonValue write SetJsonValue;
    property AsJsonPair: TJsonPair read GetJsonPair write SetJsonPair;
    property Value: TValue read getValue write setValue;
    property AsDataString: string read GetDataString write SetDataString;
    // Default Value Management
    function GetDefault: TValue;
    procedure SetDefault(Value: TValue);
    /// <summary>TValue: Default Value on New Record but also used to exclude a parameter field from filter  </summary>
    property DefaultValue: TValue read GetDefault write SetDefault;
    function IsDefault: Boolean;
    function GetOldValue: TValue;
    procedure SetValues(const aActualValue, aOldValue: TValue);
{$ENDIF DELPHIXE}
    function GetAsVariant: Variant;
    // setter ..........................................................................................................
    procedure setAsBoolean(const Value: Boolean);
    procedure setAsDateTime(const Value: TDateTime);
    procedure setAsFloat(const Value: Extended);
    procedure setAsCurrency(const Value: Currency);
    procedure setAsInteger(const Value: Integer);
    procedure setAsSmallint(const Value: smallint);
    procedure setAsString(const aValue: String);
    procedure setAsLargeInt(const Value: Int64);
    procedure SetAsGUID(const Value: TGUID);
    function GetAsGUID: TGUID;
    procedure SetAsVariant(const Value: Variant);

    function GetJson: string;
    procedure SetJson(Value: string);
    function getAsUTF8Bytes: TBytes;
    function GetAsJsonMetadata: TJsonObject;
    // Read Only and Calculated Properties
    function GetCalculated: Boolean;
    procedure SetCalculated(Value: Boolean);
    function GeIsReadOnly: Boolean;
    procedure SetIsReadOnly(Value: Boolean);

    property asJson: string read GetJson write SetJson;
    property AsUTF8Bytes: TBytes read getAsUTF8Bytes;
    property AsJsonMetadata: TJsonObject read GetAsJsonMetadata write SetAsJsonMetadata;
    // Value Management
    property AsSmallint: smallint read getAsSmallint write setAsSmallint;
    property AsInteger: Integer read getAsInteger write setAsInteger;
    property AsString: String read getAsString write setAsString;
    property AsDateTime: TDateTime read getAsDateTime write setAsDateTime;
    property AsBoolean: Boolean read getAsBoolean write setAsBoolean;
    property AsFloat: Extended read getAsFloat write setAsFloat;
    property AsCurrency: Currency read getAsCurrency write setAsCurrency;
    property AsLargeInt: Int64 read getAsLargeInt write setAsLargeInt;
    property AsGUID: TGUID read GetAsGUID write SetAsGUID;
    property AsVariant: Variant read GetAsVariant write SetAsVariant;
    // Data Type Management
    property MinLength: smallint read GetMinLength write SetMinLength;
    property MaxLength: Integer read GetMaxLength write SetMaxLength;
    property Precision: smallint read GetPrecision write SetPrecision;
    property Key: string read GetKey write SetKey;
    property FieldType: TJanuaFieldType read GetFieldType write SetFieldType;
    property DBField: string read GetDBField write SetDBField;
    // Calculate / Read Only
    property Calculated: Boolean read GetCalculated write SetCalculated;
    property IsReadOnly: Boolean read GeIsReadOnly write SetIsReadOnly;
    // I/O Management
    procedure WriteJsonValue(const aJsonObject: TJsonObject);
    procedure ReadJsonValue(const aJsonObject: TJsonObject);
    procedure WriteToDataset(const aDataset: TDataSet);
    function EqualsField(const aField: IJanuaField): Boolean;
    function EqualsDataset(const aDataset: TDataSet): Boolean; overload;
    function EqualsDataset(const aDataset: IJanuaDBDataset): Boolean; overload;
    procedure ReadFromDataset(const aDataset: TDataSet);
    procedure SaveToStream(aStream: TStream);
    procedure LoadFromStream(aStream: TStream);
    procedure SaveToFile(aFile: TFileName; aAppend: Boolean = false);
    procedure LoadFromFile(aFile: TFileName);
    // Procedure Clear imposta il valore del record al valore 'base' per il tipo di dati impostato (non ? Default).
    procedure Clear;
    // On Data Change Management For Field Interface
    /// <summary> Sets the Default Value and Sets Modified to none.</summary>
    procedure Default;
    function GetOnFieldDataChange: TFieldChangeEvent;
    procedure SetOnDataChage(const Value: TFieldChangeEvent);
    property OnFieldDataChange: TFieldChangeEvent read GetOnFieldDataChange write SetOnDataChage;
    function GetIsMonitored: Boolean;
    procedure SetIsMonitored(const Value: Boolean);
    property IsMonitored: Boolean read GetIsMonitored write SetIsMonitored;
    function GetModified: Boolean;
    procedure SetModified(const Value: Boolean);
    property Modified: Boolean read GetModified write SetModified;
    function DifferDefault: Boolean;
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
    function HasLookupList: Boolean;
    function GetLookupList: TJanuaLookupID;
    function GetMappedField: TField;
    procedure SetLookupList(const Value: TJanuaLookupID);
    procedure SetMappedField(const Value: TField);
    property LookupList: TJanuaLookupID read GetLookupList write SetLookupList;
    /// <summary> Maps a Relation 1 to 1 from JanuaField to Db.TField for faster Updates </summary>
    property MappedField: TField read GetMappedField write SetMappedField;
    /// <summary> Directly use a mapped TField for faster Updates </summary>
    procedure SetFromMappedField;
    /// <summary> Maps a Field from a Dataset to MappedField for faster Updates </summary>
    procedure MapDataset(const aDataset: TDataSet);
    /// <summary> Clear Fields Dataset Mapping for Memory Management </summary>
    procedure UnMapDatasets;
    /// -------------- Params Properties -------------------------------------------------
    function GetEnabled: Boolean;
    function GetOperator: TJanuaOperator;
    procedure SetEnabled(const Value: Boolean);
    procedure SetOperator(const Value: TJanuaOperator);
    property Enabled: Boolean read GetEnabled write SetEnabled;
    property ParamOperator: TJanuaOperator read GetOperator write SetOperator;
    function FilterText: string;
    function GetFieldGUID: TGUID;
    procedure SetFieldGUID(const Value: TGUID);
    property FieldGUID: TGUID read GetFieldGUID write SetFieldGUID;
    function GetGridFieldDef: TJanuaGridFieldDef;
    procedure SetGridFieldDef(const Value: TJanuaGridFieldDef);
    property GridFieldDef: TJanuaGridFieldDef read GetGridFieldDef write SetGridFieldDef;
    //

    function GetFieldKind: TJanuaFieldKind;
    procedure SetFieldKind(const Value: TJanuaFieldKind);
    /// <summary> TJanuaFieldKind: Field Kind identifys the behaviour of the field and how data is managed / storaged and retrieved </summary>
    /// type:TJanuaFieldKind
    /// <remarks> it usually defaults to jfkData </remarks>
    property FieldKind: TJanuaFieldKind read GetFieldKind write SetFieldKind;

    function GetSearchContainer: IJanuaSearchContainer;
    procedure SetSearchContainer(const Value: IJanuaSearchContainer);

    /// <summary>Search container can be used for Lookup Fields for Lists and Search ViewModels  </summary>
    /// type:IJanuaSearchContainer
    property SearchContainer: IJanuaSearchContainer read GetSearchContainer write SetSearchContainer;

    function GetVisible: Boolean;
    procedure SetVisible(const Value: Boolean);
    /// A Field or a Parameter can be invisible that means not displayed in a Grid or a List
    property Visible: Boolean read GetVisible write SetVisible;

    function GetIsNull: Boolean;
    procedure SetIsNull(const Value: Boolean);
    property IsNull: Boolean read GetIsNull write SetIsNull;

    function GetIsEntityKey: Boolean;
    procedure SetIsEntityKey(const Value: Boolean);
    property IsEntityKey: Boolean read GetIsEntityKey write SetIsEntityKey;

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
    function GetOrderedList: TJanuaFields;
    property OrderedList: TJanuaFields read GetOrderedList;
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
    /// <summary> Adds a param to the List. It must implement IJanuaField and be created (not nil). </summary>
    function AddParam(aParam: IJanuaField): IJanuaField; overload;
    /// <summary> Removes a param according to its name (if found) </summary>
    procedure DelParam(const aName: string);
    /// <summary> Createa and adds a param to the Items list. Setting its type, name and Value. </summary>
    /// <param name="aName"> The name of the param. Will be used also as paramname to resolve REST http request </param>
    /// <param name="aType">Params will be created according to the type and its value converted and tested. </param>
    /// <param name="aValue">Is the Value assigned to the param. A 'generic' TValue Type. Should be Overloaded according to Type.</param>
    /// <param name="aVisible"> If False param is not (auto)displayed on screen when View is implemented </param>
{$IFDEF DELPHIXE}
    function AddParam(const aName: string; aType: TJanuaFieldType; aValue: TValue;
      const aVisible: Boolean = True): IJanuaField; overload;
{$ELSE  DELPHIXE}
    function AddParam(const aName: string; aType: TJanuaFieldType; aValue: Variant): IJanuaField; overload;
{$ENDIF DELPHIXE}
    function ParamByName(const aName: string): IJanuaField;
    function FindParam(const aParamName: string; out aParam: IJanuaField): Boolean;
    function ParamCount: Integer;
    /// <summary> Compare a param set with another param set. Comparing both structure and data</summary>
    function ContentEquals(const aParams: IJanuaParams): Boolean;
    /// <summary> Assigns a set of parameters from another params collections. Overwrites definitions and data </summary>
    procedure Assign(const aParams: IJanuaParams); overload;
    procedure Assign(const aParams: TParams); overload;
    procedure Assign(const aJson: string); overload;
    /// <summary> Assigns Values from a set of parameters to parameters if found. Overwrites definitions and data </summary>
    procedure AssignValues(const aParams: IJanuaParams); overload;
    procedure AssignValues(const aParams: TParams); overload;
    procedure AssignValues(const aParams: string); overload;

    function GetAsMetaDataOnly: Boolean;
    procedure SetAsMetaDataOnly(const Value: Boolean);
    /// <summary> Outputs parameters and their values as a Json Object composed by MetaDataOnly Only </summary>
    property AsMetaDataOnly: Boolean read GetAsMetaDataOnly write SetAsMetaDataOnly;
    /// <summary> Outputs parameters and their values as key=value pairs semicolon separated </summary>
    function getAsString: string;
    property AsString: string read getAsString;

    procedure ClearParams;
    function GetItem(const aIndex: Integer): IJanuaField;
    /// <summary> Indexed property based on the internal Array </summary>
    property Params[const aIndex: Integer]: IJanuaField read GetItem; default;

    function GetText: string;
    function GetParamsList: TStrings;
    /// <summary> ParamList can be Used to create a Combo or a Selection of Items in a  View </summary>
    property ParamsList: TStrings read GetParamsList;
    /// <summary> Text is a List of Params by Title-Kind-Value. read only property </summary>
    /// <value>  TStringList of Title, Kind, Value </value>
    property Text: string read GetText;
    /// <summary> FilterText is the Query Text to apply a filter to a Mem Table </summary>
    function FilterText: string;

    function GetAsJson: string;
    procedure SetAsJson(const Value: string);
    /// <summary> Reads and Writes params to and from a json string </summary>
    property asJson: string read GetAsJson write SetAsJson;

    function GetHasPagination: Boolean;
    function GetPage: Word;
    function GetPageSize: UInt32;
    procedure SetHasPagination(const Value: Boolean);
    procedure SetPage(const Value: Word);
    procedure SetPageSize(const Value: UInt32);
    /// <summary>Boolean: if True pagination is Active, Defaults to False </summary>
    property HasPagination: Boolean read GetHasPagination write SetHasPagination;
    /// <summary>Word: Actual Page to Retrieve if  </summary>
    property Page: Word read GetPage write SetPage;
    /// <summary>UInt32: Maximum number of Records per Page  </summary>
    property PageSize: UInt32 read GetPageSize write SetPageSize;

    procedure SetAsBase64Url(const Value: string);
    function GetAsBase64Url: string;
    /// <summary> Reads and Writes params to and from a json base64 url encoded string </summary>
    property AsBase64Url: string read GetAsBase64Url write SetAsBase64Url;
  End;

  TMasterField = record
    Master: IJanuaField;
    Detail: IJanuaField;
  public
    constructor Create(aMaster, aDetail: IJanuaField);
  end;

  TMasterFields = TArray<TMasterField>;

  IJanuaRecordSet = interface;
  IJanuaRecord = interface;

  TJanuaRecordChangeEvent = procedure(const aRecord: IJanuaRecord) of object;

  IJanuaSearchRecordSetContainer = interface(IJanuaSearchContainer)
    ['{24294D4F-A53A-4A27-9A40-27741AECFA50}']
    function GetRecordSet: IJanuaRecordSet;
    property RecordSet: IJanuaRecordSet read GetRecordSet;
  end;

{$IFDEF DELPHIXE}

  TJanuaRecords = IList<IJanuaRecord>;
  TJanuaRecordSets = IList<IJanuaRecordSet>;
{$ELSE  DELPHIXE}
  TJanuaRecords = TList<IJanuaRecord>;
  TJanuaRecordSets = TList<IJanuaRecordSet>;
{$ENDIF DELPHIXE}
  TJanuaDatasetEvent = procedure(aDataset: IJanuaDBCustomDataset) of Object;
  TJanuaRecordEvent = procedure(aRecord: IJanuaRecord) of Object;

  IJanuaDBField = interface
    ['{B2224064-56F4-43C7-9705-3963A499EA02}']
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);

    function GetDBField: TField;
    function GetGridFieldDef: TJanuaGridFieldDef;
    procedure SetDBField(const Value: TField);
    procedure SetGridFieldDef(const Value: TJanuaGridFieldDef);
    property DBField: TField read GetDBField write SetDBField;
    property GridFieldDef: TJanuaGridFieldDef read GetGridFieldDef write SetGridFieldDef;
  end;

  IJanuaDBFields = interface
    ['{FF059048-704A-4FE0-AF0C-27B1331507B4}']
    function GetItems(Index: String): IJanuaDBField;
    procedure SetItems(Index: String; const Value: IJanuaDBField);
    function GetFieldCount: Integer;
    function GetGridFields: IList<IJanuaDBField>;
    property FieldCount: Integer read GetFieldCount;
    property GridFields: IList<IJanuaDBField> read GetGridFields;
    function GetDBFields: IDictionary<string, IJanuaDBField>;
    property Fields: IDictionary<string, IJanuaDBField> read GetDBFields;
    function Add(const aField: IJanuaDBField): IJanuaDBField; overload;
    function Add(const aField: TField; const aAddToGrid: Boolean): IJanuaDBField; overload;
    procedure AddFieldToGrid(const aField: IJanuaDBField); overload;
    procedure AddFieldToGrid(const aFieldName: string); overload;
    procedure MoveUP(const aField: IJanuaDBField); overload;
    procedure MoveUP(const aFieldName: string); overload;
    procedure ChangePos(const aField: IJanuaDBField; const aFieldPos: Integer);
    property Items[Index: String]: IJanuaDBField read GetItems write SetItems; default;
  end;

  IJanuaDBCustomDataset = interface(IJanuaInterface)
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
    function FindParam(const aParamName: string; out aParam: IJanuaField): Boolean;

    // 2021-04-22 Added Filter Management to CustomDataset ---------------------------------------------------
    procedure GenerateFilter;
    function GetFiltered: Boolean;
    procedure SetFiltered(const Value: Boolean);
    function getFilterParams: IJanuaParams;
    function AddFilterParam(aParam: IJanuaField): IJanuaField; overload;
    function FilterByName(const aName: string): IJanuaField;
    function FindFilter(const aFilterName: string; out aFilter: IJanuaField): Boolean;
    procedure SetSearchFilter(const aSQLFilter: string);
    procedure ApplyFilter;
    property Filtered: Boolean read GetFiltered write SetFiltered;
    /// <summary> Act like Params but operate a Filter using in memory filter settings for dataset </summary>
    property FilterParams: IJanuaParams read getFilterParams;

    procedure Open;
    procedure OpenThreaded(aProc: TProc = nil);
    procedure Close;
    function RecordCount: Integer;
    function GetDataset: TDataSet;
    procedure SetDataset(const Value: TDataSet);
    property Dataset: TDataSet read GetDataset write SetDataset;
    procedure First;
    procedure Next;
    procedure Prior;
    procedure Last;
    function EOF: Boolean;
    function BOF: Boolean;
    procedure AddEntity(const aEntity: string); overload;
    procedure AddEntity(const aEntity: TJanuaEntity); overload;
    procedure AddEntities(const AEntities: TJanuaEntities); overload;
    procedure AddEntityNames(const AEntities: TJanuaEntityNames); overload;
    function GetEntities: TJanuaEntities;
    procedure SetEntities(const AEntities: TJanuaEntities);
    property Entities: TJanuaEntities read GetEntities write SetEntities;
    function GetActive: Boolean;
    function GetEntityNames: TJanuaEntityNames;
    procedure SetActive(const Value: Boolean);
    property Active: Boolean read GetActive write SetActive;
    property EntityNames: TJanuaEntityNames read GetEntityNames;
    function GetPage: Integer;
    procedure SetPage(const Value: Integer);
    /// <summary>Connected with LImit property Fetches records per page with a 'limit' window </summary>
    /// <example> <code lang="Delphi">begin
    /// jsDataset.LImit := 100;
    /// jdsDataset.Page :=2;
    /// jdsDataset.Open;
    /// end; </code> </example>
    property Page: Integer read GetPage write SetPage;
    function GetOnScroll: TJanuaDatasetEvent;
    procedure SetOnScroll(const Value: TJanuaDatasetEvent);
    /// <summary>  After Scroll Event Fired if not BeginScroll procedure is triggere </summary>
    property OnScroll: TJanuaDatasetEvent read GetOnScroll write SetOnScroll;
    /// <summary>   Stops OnScroll Event useful for Long Loops can disable Events and Thread </summary>
    procedure BeginScroll(const DisableDataSource: Boolean = false);
    procedure EndScroll;

    function GetGUID: TGUID;
    property GUID: TGUID read GetGUID;
    function GetGUIDString: string;
    property GUIDString: string read GetGUIDString;
    function LocateGUID(const aGUID: TGUID): Boolean;

    function GetGUIDField: TField;
    procedure SetGUIDField(const Value: TField);
    /// <summary>  Enable a fast Search For GUID Field (mapped at creation time) </summary>
    property GUIDField: TField read GetGUIDField write SetGUIDField;
    /// <summary>  Used to clean data from a VirtualDataset. If not Virtual it should Delete all Records </summary>
    procedure ClearDataset;

    function GetName: String;
    procedure SetName(const Value: String);
    property Name: String read GetName write SetName;

    function GetOrdered: Boolean;
    procedure SetOrdered(const Value: Boolean);
    property Ordered: Boolean read GetOrdered write SetOrdered;

    // Grid Management ---------------------------------------------------------------------------------------------
    function GetGridColumns: IList<TJanuaGridColumnField>;
    function AddGridColumn(aField: TField; aCharWidth: Integer = 0; aTitle: string = ''): Integer; overload;
    function AddGridColumn(const aFieldName: string; aCharWidth: Integer = 0; aTitle: string = '';
      aMask: string = ''): Integer; overload;
    property GridColumns: IList<TJanuaGridColumnField> read GetGridColumns;

    function GetAppendFirst: Boolean;
    procedure SetAppendFirst(const Value: Boolean);
    /// <summary> Boolean: used for Master Dataset to append new record First (executes a Firs+Insert) </summary>
    property AppendFirst: Boolean read GetAppendFirst write SetAppendFirst;

    function GetJsonMetadata: TJsonObject;
    procedure SetJsonMetadata(const Value: TJsonObject);
    /// <summary> Can export/import all dataset metadata settings in Json format to store them on db </summary>
    property AsJsonMetadata: TJsonObject read GetJsonMetadata write SetJsonMetadata;

    // Field Management
    function FieldByName(const FieldName: string): TField;
    function FindField(const FieldName: string): TField;
    function GetFieldCount: Integer;
    property FieldCount: Integer read GetFieldCount;
    function GetFieldDefs: TFieldDefs;
    procedure SetFieldDefs(const Value: TFieldDefs);
    property FieldDefs: TFieldDefs read GetFieldDefs write SetFieldDefs;
    function GetOrderByFields: IJanuaOrderByFields;
    property OrderByFields: IJanuaOrderByFields read GetOrderByFields;
    procedure CreateFields(const aRecord: IJanuaRecord);

    // Detail Datasets Management
    function GetDetailDatasets: IList<IJanuaDBDataset>;
    function GetDatasetCount: Integer;
    procedure SetDetailDatasets(const Value: IList<IJanuaDBDataset>);
    property DatasetCount: Integer read GetDatasetCount;
    property DetailDatasets: IList<IJanuaDBDataset> read GetDetailDatasets write SetDetailDatasets;
    procedure AddDataset(const aDataset: IJanuaDBDataset);
    procedure RemoveDataset(const aDataset: IJanuaDBDataset);
  end;

  /// <summary> Extends IJanuaDBCustomDataset with the ability to create a read only SQL Dataset </summary>
  IJanuaSQLDynDataset = interface(IJanuaDBCustomDataset)
    ['{AF715676-CFDC-4A22-828B-FBCF9FC6A0CC}']
    function GetSQL: TStrings;
    procedure SetSQL(const Value: TStrings);
    /// <summary> The SQL string that generates the dataset </summary>
    property SQL: TStrings read GetSQL write SetSQL;
    /// <summary> Fluently adds a line to the local SQL Select </summary>
    function AddLine(const aSQLLine: string): IJanuaSQLDynDataset;
    /// <summary> Generates a Dataset from local SQL Select </summary>
    function GenerateDataset: TDataSet;
  end;

  IDatasetSerializer = interface
    ['{D371E964-AC90-490E-979E-DB6D2A6ADC95}']
    procedure SetJanuaDataset(const Value: IJanuaDBDataset);
    function GetJanuaDataset: IJanuaDBDataset;
    procedure SetDatasetURL(const Value: string);
    function GetDatasetURL: string;
    property JanuaDataset: IJanuaDBDataset read GetJanuaDataset write SetJanuaDataset;
    property DatasetURL: string read GetDatasetURL write SetDatasetURL;

    function GetDataFormat: TRestFormat;
    procedure SetDataFormat(const Value: TRestFormat);
    property DataFormat: TRestFormat read GetDataFormat write SetDataFormat;

    function LoadData: Boolean;
    function DeleteRecord: Boolean;
    function UpdateRecord: Boolean;
    function AppendRecord: Boolean;
    function GetMeta: Boolean;
  end;

  TJanuaDBDataSetNotifyEvent = procedure(Dataset: IJanuaDBDataset) of object;

  IRemoteDatasetClient = interface
    ['{577BFB18-1354-46D4-B15D-B3282409038F}']
    procedure SetJanuaDataset(const Value: IJanuaDBDataset);
    function GetJanuaDataset: IJanuaDBDataset;
    procedure SetDatasetURL(const Value: string);
    function GetDatasetURL: string;
    property JanuaDataset: IJanuaDBDataset read GetJanuaDataset write SetJanuaDataset;
    property DatasetURL: string read GetDatasetURL write SetDatasetURL;

    function GetDataFormat: TRestFormat;
    procedure SetDataFormat(const Value: TRestFormat);
    property DataFormat: TRestFormat read GetDataFormat write SetDataFormat;

    function LoadData: Boolean;
    function DeleteRecord: Boolean;
    function UpdateRecord: Boolean;
    function AppendRecord: Boolean;
    function GetMeta: Boolean;
  end;

  /// <summary> Extends IJanuaDBCustomDataset with read write procedure to c/s or local DB </summary>
  IJanuaDBDataset = interface(IJanuaDBCustomDataset)
    ['{8AE372EA-785E-4234-81AF-EEEF8904B93A}']
    // 2022-02-08 Added Filter Parameters
    function getFilterParams: IJanuaParams; // IList<IJanuaField>;
    // procedure setFilterParams(const Value: IJanuaParams { IList<IJanuaField> } );
    property FilterParams: IJanuaParams { IList<IJanuaField> } read getFilterParams;
    function AddFilterParam(aParam: IJanuaField): IJanuaField; overload;
    // function FilterText: string;
    procedure Edit;
    procedure SetSearchFilter(const aSQLFilter: string);
    function GetFiltered: Boolean;
    procedure SetFiltered(const Value: Boolean);
    property Filtered: Boolean read GetFiltered write SetFiltered;
    procedure ApplyFilter;
    function DeleteFromDataset(const aGUID: TGUID): Boolean; overload;
    function DeleteFromDataset(const aRecord: IJanuaRecord): Boolean; overload;
    procedure DeleteCurrentRecord;
    function UpdateRecord(const aRecord: IJanuaRecord): Boolean;
    function InsertRecord(const aRecord: IJanuaRecord): Boolean;
    function getGUIDPrefix: string;
    procedure setGUIDPrefix(const Value: string);
    property GUIDPrefix: string read getGUIDPrefix write setGUIDPrefix;
    function SearchRecord(const aGUID: TGUID): Boolean;
    function GUIDFieldName: string;
    function getLimit: Integer;
    procedure setLimit(const Value: Integer);
    property Limit: Integer read getLimit write setLimit;
    { JF-29 Replaced string property with IJanuaOrderByFields }
    // function GetIndexFieldNames: string;
    // procedure SetIndexFieldNames(const Value: string);
    // property IndexFieldNames: string read GetIndexFieldNames write SetIndexFieldNames;
    function AddField(const aName: string; const aFieldType: TJanuaFieldType;
      const aSize, aPrecision: smallint): TField; overload;
    function AddField(const aField: IJanuaField): TField; overload;
    function Locate(const KeyFields: string; const KeyValues: Variant; Options: TLocateOptions): Boolean;
    procedure Open; overload;
    procedure Post;
    procedure Refresh;
    procedure Append;
    function GetFieldByName(const FieldName: string; out aField: TField): Boolean;
    function GetAfterScroll: TJanuaDBDataSetNotifyEvent;
    function GetBeforeCancel: TJanuaDBDataSetNotifyEvent;
    function GetAfterOpen: TJanuaDBDataSetNotifyEvent;
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
    property OnCalcFields: TJanuaDBDataSetNotifyEvent read GetOnCalcFields write SetOnCalcFields;
    property AfterScroll: TJanuaDBDataSetNotifyEvent read GetAfterScroll write SetAfterScroll;
    property AfterOpen: TJanuaDBDataSetNotifyEvent read GetAfterOpen write SetAfterOpen;
    property BeforeCancel: TJanuaDBDataSetNotifyEvent read GetBeforeCancel write SetBeforeCancel;
    property BeforeInsert: TJanuaDBDataSetNotifyEvent read GetBeforeInsert write SetBeforeInsert;
    property BeforePost: TJanuaDBDataSetNotifyEvent read GetBeforePost write SetBeforePost;
    property BeforeDelete: TJanuaDBDataSetNotifyEvent read GetBeforeDelete write SetBeforeDelete;
    property OnNewRecord: TJanuaDBDataSetNotifyEvent read GetOnNewRecord write SetOnNewRecord;

    function GetAsBase64: string;
    function GetAsJson: string;
    procedure SetAsBase64(const Value: string);
    procedure SetAsJson(const Value: string);
    property asJson: string read GetAsJson write SetAsJson;
    property AsBase64: string read GetAsBase64 write SetAsBase64;

    function GetSerializeFormat: TRestFormat;
    procedure SetSerializeFormat(const Value: TRestFormat);
    property SerializeFormat: TRestFormat read GetSerializeFormat write SetSerializeFormat;

    /// <summary> Dataset Serialization according to the requested Format </summary>
    function Serialize(const aFormat: string): string;
    /// <summary> Dataset Deserialization according to the requested Format </summary>
    procedure DeSerialize(const aFormat, aPayload: string);

    // ----------------------------- Remoting -------------------------------------------------------
    procedure SetRemoteClient(const Value: IRemoteDatasetClient);
    function GetRemoteClient: IRemoteDatasetClient;
    procedure SetDatasetURL(const Value: string);
    function GetDatasetURL: string;
    property RemoteClient: IRemoteDatasetClient read GetRemoteClient write SetRemoteClient;
    property DatasetURL: string read GetDatasetURL write SetDatasetURL;

    function GetRemoteFormat: TRestFormat;
    procedure SetRemoteFormat(const Value: TRestFormat);
    property RemoteFormat: TRestFormat read GetRemoteFormat write SetRemoteFormat;

    function RemoteLoad: Boolean;
    function RemoteDelete: Boolean;
    function RemoteUpdate: Boolean;
    function RemoteAppend: Boolean;
    function RemoteGetMeta: Boolean;

    function GetState: TDatasetState;
    property State: TDatasetState read GetState;
  end;

  /// <summary> Extends IJanuaDBCustomDataset with the ability to create a read only SQL Dataset </summary>
  IJanuaDynDBDataset = interface(IJanuaDBDataset)
    ['{CCCD5FAC-4CBA-43DF-A989-000DB1E28DDC}']
  end;

  IJanuaVirtualDBDataset = interface(IJanuaDBDataset)
    ['{17CB8A62-ADB3-40AD-8915-03BE3251204C}']
    procedure EmptyDataSet;
    procedure ClearDetails;
    function Activate: Boolean;
  end;

  IJanuaFiredacDBDataset = interface(IJanuaVirtualDBDataset)
    ['{1E31DF35-AAA9-4741-A925-096A3139CA7B}']
  end;

  IJanuaUniDBDataset = interface(IJanuaVirtualDBDataset)
    ['{935A3B72-3C03-4406-ABC1-051EC07D94BB}']
  end;

  /// <summary> Extends DBDataset Interface with Stored Procedure features. Prepare and Exec and Result </summary>
  IJanuaDBStoredProcedure = interface(IJanuaDBDataset)
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

  IJanuaRecordSetStorage = interface
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
    function ApplyUpdates(const aRecordSet: IJanuaRecordSet): Boolean;
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
    function LoadData: Boolean;
    /// <summary>
    /// Check if parameters are set and if so it Manages to pass them to the underlying data engin then
    /// Lauches the LoadData procedure returing the Updated RecordSet Count
    /// </summary>
    function Open: NativeUInt;
    procedure AsyncLoadData(aProcResult: TProc<Integer, Boolean>; aProcError: TProc<Exception>);
    function GetRecordCount: NativeUInt;
    /// <summary>
    /// Number of records stored. Usually the Record Set Count
    /// </summary>
    property RecordCount: NativeUInt read GetRecordCount;
  end;

  IJanuaRecordStorage = interface
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
    function ApplyUpdates(const aRecord: IJanuaRecord): Boolean;
    procedure AsyncApplyUpdates(const aRecord: IJanuaRecord);
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    function GetMaxRecords: Integer;
    procedure SetMaxRecords(const Value: Integer);
    property MaxRecords: Integer read GetMaxRecords Write SetMaxRecords;
    function ParamByName(const aName: string): IJanuaField;
    function LoadData: Boolean;
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

  /// <summary> This factory is uased as SyncDataset or Dataset Serialization Builder. It can belong to different
  /// Libraries such as FireDac or VirtualDAC and so on. At the Moment VirtualDAC is the standard. </summary>
  IJanuaDBDatasetFactory = interface
    ['{B60ADFA4-6E9D-47CB-B014-2ADC666D5A89}']
    /// <summary>This procedure Create a IJanuaDBDataset that reflects the structure of aRecord IJanuaRecord Parameter </summary>
    function CreateDataset(const aRecord: IJanuaRecord): IJanuaVirtualDBDataset; overload;
    function CreateDataset: IJanuaVirtualDBDataset; overload;
  end;

  IRemoteRecordClient = interface
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    function GetJanuaRecord: IJanuaRecord;
    /// <summary> Stores current record to the Server creating a new Record with new GUID </summary>
    function CreateRecord: Boolean;
    /// <summary> Updates current record to the Server using GUID as unique ID Parameter </summary>
    function Update: Boolean;
    /// <summary> Deletes a Record from the Server using a GUID as parameter </summary>
    function Delete(const aGUID: TGUID): Boolean; overload;
    /// <summary> Deletes current Record from the Server using its GUID as parameter </summary>
    function Delete: Boolean; overload;
    /// <summary> Retrieves a Record in Json Format from the Server and Stores it into Record Field </summary>
    function Retrieve(const aGUID: TGUID): Boolean;
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
    procedure SetGUID(const Value: TGUID);
    function GetGUID: TGUID;
    property GUID: TGUID read GetGUID write SetGUID;
  end;

  IJanuaRecord = interface(IJanuaBindableObject)
    ['{F5898A65-ED1E-48A9-A0B3-B1428F295872}']
    /// <summary> This property contains the key Field(s) Spec. 2018-0058 Save to Dataset </summary>
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
    function CheckIsStored: Boolean;
    procedure SetDeleted(val: Boolean);
    function GetDeleted(): Boolean;
    property Deleted: Boolean read GetDeleted write SetDeleted;
    // Simple Fields .....................................................
    function FieldCount: Integer;
    function AddField(const aField: IJanuaField): Integer;
    function GetJanuaFields: TJanuaFields;
    procedure SetJanuaFields(const Value: TJanuaFields);
    /// <summary> IList(IJanuaField): A list of Fields for the record </summary>
    property Fields: TJanuaFields read GetJanuaFields write SetJanuaFields;
    function FindField(const aName: string): Boolean;
    function FieldByName(const aName: string): IJanuaField;
    // Nested RecordSets ...................................................
    function AddRecordSet(const aRecordSet: IJanuaRecordSet): IJanuaRecordSet;
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
    procedure SetupDataset(const aMainDataset: IJanuaDBDataset; const aDatasets: TArray<IJanuaDBDataset>;
      aMapToDataset: Boolean = True);
    procedure LoadRecord(const aRecursively: Boolean = True);
    /// <summary> Loads one record from a IJanuaDBDataset and Assigns it to Record property. Must be set</summary>
    /// <param name="aMainDataset">The IJanuaDBDataset to be assigned to the 'Master' Record object</param>
    /// <param name="aMapToDataset">If True IJanuaDBDataset is permanently assiged as StoreDataet</param>
    procedure LoadFromDataset(const aMainDataset: IJanuaDBDataset; aMapToDataset: Boolean = True;
      const aRecursively: Boolean = True); overload;
    /// <summary> Loads one record from a IJanuaDBDataset and a Recordset for each 'child' dataset in array</summary>
    /// <param name="aMainDataset">The IJanuaDBDataset to be assigned to the 'Master' Record object</param>
    /// <param name="aMapToDataset">If True IJanuaDBDataset is permanently assiged as StoreDataet</param>
    /// <param name="aDatasets">An Array of Datasets that will be assigned to sub-records accordingly</param>
    procedure LoadFromDataset(const aMainDataset: IJanuaDBDataset; const aDatasets: TArray<IJanuaDBDataset>;
      aMapToDataset: Boolean = True); overload;
    /// <summary> Loads one record from a IJanuaDBDataset or TDataset. StoreDataset or DBDataset must be set </summary>
    procedure LoadFromDataset(const aRecursively: Boolean = True); overload;
    /// <summary> Tries to locate in the Dataset its jguid using locatejguid procedure then reloads record
    /// usually after an Insert/Update procedure or to Undo Changes to this Record. </summary>
    procedure RefreshFromDataset(const aRecursively: Boolean = True);
    procedure AssignDatasets(aDatasets: TArray<TDataSet>); overload;
    procedure MapDataset(const aMainDataset: IJanuaDBDataset);
    procedure UnMapDatasets;
    procedure AssignDataset(const aDataset: IJanuaDBDataset);
    /// <summary> Checks the equality between a JanuaRecord and a Dataset Record
    /// <returns> True if the content of the dataset record equals the one of the janua record, False elsewhere.
    /// </returns> </summary>
    function EqualsDataset(const aDataset: TDataSet): Boolean; overload;
    /// <summary> Checks the equality between a JanuaRecord and a IJanuaDBDataset Record
    /// <returns> True if the content of the DBDataset record equals the one of the janua record, False elsewhere.</returns>
    /// </summary>
    function EqualsDataset(const aDataset: IJanuaDBDataset): Boolean; overload;
    /// <summary>
    /// Copies all the Fields' content to the Dataset then 'loops' to Nested Sub Records and Nested Sub Recordsets
    /// 2018-0058 Save to Dataset salva i dati del Record direttamente su un dataset mappato dal campo DBField
    /// Dataset is not exactly a TDataset Class, it is, instead, a IJanuaDBDataset Object that is a collection
    /// of TDataset and Procedures, scripts or Delphi functions to store Data into the target Database that can
    /// be a simple file, a remote location, a SQL database or NoSql Database or ... whatever ...
    /// </summary>
    procedure SaveToDataset(Force: Boolean = false; aRecursive: Boolean = True); overload;
    /// <summary> Calls the Insert procedure of its IJanuaDataset Object </summary>
    procedure AppendToDataset;
    /// <summary> Calls the Update procedure of its IJanuaDataset Object </summary>
    procedure UpdateToDataset;
    /// <summary>Checks if a record with the same GUID is in Dataset </summary>
    function CheckInDataset: Boolean;
    // Deserialize .....................................
    procedure ReadRecord(aDataList: IRecSerialization);
    // Serialize .......................................
    procedure WriteRecord(aDataList: IRecSerialization);
    /// <summary> Append Procedure Generates all Default Values for all Fields in a Record. Set its State as
    /// New Record but not Modified Record. Does not Generate an IRecSerialization
    /// Append Generate a New GUID for the record while Clear sets the GUID to GUID_NULL </summary>
    procedure Append;
    /// <summary> This procedure simply checks if GUID is nulla and sets it and check mandatory fields are filled </summary>
    procedure Post;
    /// <summary> Generate New Record and Create its Serialization to be sent to RecordSet </summary>
    function NewRecord: IRecSerialization;
    /// <summary>
    /// Current Record Serialization
    /// </summary>
    function RecordValue: IRecSerialization;
    /// <summary>RecordSetIndex (Index of the Last Inserted Recordset) </summary>
    function RecordSetIndex: Integer;
    /// <summary>
    /// Record Count of all Records Last Record Index + 1
    /// </summary>
    function RecordCount: Integer;
    /// <summary> RecordSetCount Count of all Recordsets Last RecordSet Index + 1 </summary>
    function RecordSetCount(aRecursive: Boolean = false): Integer;
    /// <summary> Clear viene usato per 'annullare' un record e toglire 'tracce' di vecchi dati. </summary>
    /// <description> Clear non inizializza i valori a Default (questo lo fa invece NewRecord)
    /// It initialize the GUID Value to GUID_NULL. Requires Append to start a New Record</description>
    procedure Clear(const aRecursively: Boolean = True);
    /// <summary> Compares another record, first checks its strucuture then the content. True if both are Equal </summary>
    /// <param name="aRecord">The record to Compare</param>
    function ContentEquals(const aRecord: IJanuaRecord): Boolean;
    /// <summary> Executes on Field Change Events that can trigger Calculated Fields. </summary>
    procedure DoCalcFields;
    procedure SetNotifyEvent(Value: TNotifyEvent);
    function GetNotifyEvent: TNotifyEvent;
    /// <summary> Notify Event To Calculate Fields </summary>
    /// <remarks>A field can have a property that sets it as 'modified' This triggers an event that can set values for one or more calculated Fields. </remark>
    property OnCalcFields: TNotifyEvent read GetNotifyEvent write SetNotifyEvent;

    procedure SetGUID(Value: TGUID);
    function GetGUID: TGUID;
    /// <summary> Contains a 128bit GUID unique identifier for the record or the Resource. </summary>
    /// <remarks> This GUID is used as a common PK for object all around the network
    /// This allows synchronization between local and remote istances </remarks>
    property GUID: TGUID read GetGUID write SetGUID;

    procedure SetMasterGUID(Value: TGUID);
    function GetMasterGUID: TGUID;
    /// <summary> Contains a 128bit GUID unique identifier for the Master record or the Resource. </summary>
    /// <remarks> This GUID is used as a common PK  to manage relationships with DB all around the network
    /// This allows synchronization between Local and Remote Objects and their Serialization on DB </remarks>
    property MasterGUID: TGUID read GetMasterGUID write SetMasterGUID;

    /// <summary> ItemIndex is the index of the record when it is contained in a List inside a recordset.
    /// It should be connected with GUID and is useful to locate a record insied an ILIst </summary>
    procedure SetItemIndex(Value: Integer);
    function GetItemIndex: Integer;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(Value: IJanuaRecord);
    /// <summary> IJanuaRecord: Used to manage a master-detail relationship. Detail can attach master events
    /// and link to master-detail fields using AddMasterFields </summary>
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;
    /// <summary> Adds a Master-Detail Fields relationship. Can be used on Default or NewRecord to set M/D Values </summary>
    procedure AddMasterField(aMaster, aDetail: IJanuaField);
    /// <summary> This procedure Undoes all caches updates recursively on any RecordSet or sub-Record </summary>
    procedure UndoUpdates;
    function GetModified: Boolean;
    procedure SetModified(const Value: Boolean);
    property Modified: Boolean read GetModified write SetModified;
    function GetIsNewRecord: Boolean;
    // procedure SetIsNewReoord(Value: boolean);
    property IsNewRecord: Boolean read GetIsNewRecord; // write SetIsNewReoord;
    function GetIsRemoteStored: Boolean;
    procedure SetIsRemoteStored(Value: Boolean);
    function GetIsLocalStored: Boolean;
    procedure SetIsLocalStored(Value: Boolean);
    property IsLocalStored: Boolean read GetIsLocalStored write SetIsLocalStored;
    property IsRemoteStored: Boolean read GetIsRemoteStored write SetIsRemoteStored;
    function GetUpdatesPending: Boolean;
    procedure SetUpdatesPending(Value: Boolean);
    property UpdatesPending: Boolean read GetUpdatesPending write SetUpdatesPending;
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
    function GetIsDeleted: Boolean;
    procedure SetIsDeleted(const Value: Boolean);
    property IsDeleted: Boolean read GetIsDeleted write SetIsDeleted;
    function GetPrefix: string;
    procedure SetPrefix(const Value: string);
    property Prefix: string read GetPrefix write SetPrefix;
    // Direct Dataset
    procedure DirectLoadFromDataset(const aDataset: TDataSet; const aRelease: Boolean = false;
      const aRecursively: Boolean = True); overload;
    procedure DirectLoadFromDataset(const aDatasets: TArray<TDataSet>); overload;
    procedure DirectSaveToDataset(const aDataset: TDataSet; Force: Boolean = false); overload;
    procedure DirectSaveToDataset(const aDatasets: TArray<TDataSet>; Force: Boolean = false); overload;
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
    function GetEntity: TJanuaEntity;
    function GetEntityName: string;
    procedure SetEntity(const Value: TJanuaEntity);
    procedure SetEntityName(const Value: string);
    property Entity: TJanuaEntity read GetEntity write SetEntity;
    property EntityName: string read GetEntityName write SetEntityName;
    /// <summary>   Loops through its Recordsets and Records to connect every entity with its phisical dataset
    /// Returns True if all records are assigned, false if not all records are assigned  </summary>
    /// <param name="aDatasets">  List of Datasets to be assigned </param>
    /// <param name="aRaiseException">
    // check if an exception is to be raised if not all Record Definitions can be Assigned to Datasets
    /// </param>
    function AssignJanuaDatasets(const aDatasets: TJanuaDBDatasets; const aRaiseException: Boolean): Boolean;
    /// <summary> Check if a DAtaset is Mapped or not comparing the objects
    /// <returns> Boolean: True if it's mapped and false else </returns> </summary>
    /// <param name="aDataset">Dataset to be checked if Mapped </param>
    function IsMappedDataset(const aDataset: TDataSet): Boolean;
    function GetMapToDataset: Boolean;
    procedure SetMapToDataset(const Value: Boolean);
    /// <summary> If set to true directly uses the underlying dataset and not SQL Procedures </summary>
    property MapToDataset: Boolean read GetMapToDataset write SetMapToDataset;
    function GetGUIDString: string;
    function GetState: TJanuaRecordState;
    property GUIDString: string read GetGUIDString;
    property State: TJanuaRecordState read GetState;

    function GetOnNewRecord: TNotifyEvent;
    procedure SetOnNewRecord(const Value: TNotifyEvent);
    property OnNewRecord: TNotifyEvent read GetOnNewRecord write SetOnNewRecord;

    /// <summary>TJanuaRecordChangeEvent when a change on a monitored record occurs the change Event is called
    /// AFTER calc fields is done </summary>
    function GetOnRecordChange: TJanuaRecordChangeEvent;
    procedure SetOnRecordChange(const Value: TJanuaRecordChangeEvent);
    property OnRecordChange: TJanuaRecordChangeEvent read GetOnRecordChange write SetOnRecordChange;
    /// <summary> Fills a template following a patter that is $$<fieldname>$$
    /// <returns> String: Template after elaboration </returns> </summary>
    function FillTemplate(const aTemplate: string): string;
    function GetJson: string;
    procedure SetJson(aValue: string);
    /// <summary> String: a record serialization in Json format for storing or REST use  </summary>
    property asJson: string read GetJson write SetJson;
    function GetNotStored: Boolean;
    procedure SetNotStored(const Value: Boolean);
    /// <summary> Boolean: If True record can be loaded from Database but should not be Saved (stored) </summary>
    property NotStored: Boolean read GetNotStored write SetNotStored;
    function GetAsJsonWithMeta: string;
    procedure SetAsJsonWithMeta(const Value: string);
    /// <summary> This Property is used to store and retrieve a record structure from and to a TJsonObject
    /// It can be used to create an exact clone of the Record </summary>
    property AsJsonWithMeta: string read GetAsJsonWithMeta write SetAsJsonWithMeta;

    function RemotePostRecord: Boolean;
    function RemoteUpdate: Boolean;
    function RemoteLoad: Boolean;
    function RemoteDelete: Boolean;

    function GetRemoteClient: IRemoteRecordClient;
    procedure SetRemoteClient(const Value: IRemoteRecordClient);
    /// <summary> Remote Client connects Record with a Remote Server managaing the CRUD Matrix </summary>
    property RemoteClient: IRemoteRecordClient read GetRemoteClient write SetRemoteClient;

    procedure SetCheckDataset(const Value: Boolean);
    function GetCheckDataset: Boolean;
    /// <summary> Set True by Default checks if a Record can be Saved to a Dataset e.g. if Dataset is assigned </summary>
    property DoCheckDataset: Boolean read GetCheckDataset write SetCheckDataset;
  end;

  IJanuaRecordEnumerator = interface
    ['{22FD9697-FD9D-429E-871F-D71789E3AE69}']
    function GetCurrent: IJanuaRecord;
    function MoveNext: Boolean;
    property Current: IJanuaRecord read GetCurrent;
  end;

  ISetSerialization = interface;
{$IFDEF DELPHIXE}
  TRecList = IList<IRecSerialization>;
  TSetList = IList<ISetSerialization>;
  TGUIDDict = IDictionary<TGUID, Integer>;
{$ELSE  DELPHIXE}
  TRecList = TList<IRecSerialization>;
  TSetList = TList<ISetSerialization>;
  TGUIDDict = TDictionary<TGUID, Integer>;
{$ENDIF DELPHIXE}
  TGUIDUpdateProc = procedure(const newValue, oldValue: TGUID) of object;

  IRecSerialization = interface
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

    function GetGUIDUpdateProc: TGUIDUpdateProc;
    procedure SetGUIDUpdateProc(const Value: TGUIDUpdateProc);
    property GUIDUpdateProc: TGUIDUpdateProc read GetGUIDUpdateProc Write SetGUIDUpdateProc;

    // Inded ..................................................................
    function GetIndex: Integer;
    procedure SetIndex(const Value: Integer);
    property ItemIndex: Integer read GetIndex Write SetIndex;
  end;

  IJanuaRecMetaSerialization = interface
    function GetJanuaRecord: IJanuaRecord;
    procedure SetJanuaRecord(const Value: IJanuaRecord);
    procedure LoadGridMeta;
    procedure SaveGridMeta;
    procedure LoadLocalGridMeta;
    procedure SaveLocalGridMeta;
    property JanuaRecord: IJanuaRecord read GetJanuaRecord write SetJanuaRecord;
  end;

  ISetSerialization = interface
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
    function RecordCount: Integer;
    // Data Management
    procedure Clear;
    // GUID LIST AND SEARCH
    function GetGUIDDict: TGUIDDict;
    property GUIDDict: TGUIDDict read GetGUIDDict;
    function LocateGUID(const aGUID: TGUID): Boolean;
  end;

{$IFDEF fpc}

  TJanuaRecordProc = procedure(const aRecord: IJanuaRecord);
{$ENDIF}

  IJanuaRecordSet = interface(IJanuaBindable)
    ['{372C849A-DC84-420A-A0D1-8C84F404613E}']
    function ToJsonPretty: string;
    procedure LoadFromDataset(const aRecursively: Boolean = True); overload;
    procedure LoadFromDataset(aMainDataset: IJanuaDBDataset; aDatasets: TArray<IJanuaDBDataset>); overload;
    procedure SaveToDataset; overload;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset); overload;
    procedure SaveToDataset(const aDataset: IJanuaDBDataset; aDatasets: TJanuaDBDatasets); overload;
    function RecordCount: Integer;

    function GetItemIndex: Integer;
    procedure SetItemIndex(const Value: Integer);
    /// <summary>
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;

    function GetListFields: TArray<IJanuaField>;
    procedure SetListFields(const Value: TArray<IJanuaField>);
    property ListFields: TArray<IJanuaField> read GetListFields write SetListFields;

    function GetListFieldNames: TArray<string>;
    procedure SetListFieldNames(const Value: TArray<string>);
    property ListFieldNames: TArray<string> read GetListFieldNames write SetListFieldNames;

    function GetStringList: TStrings;
    property AsStringList: TStrings read GetStringList;

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
    procedure Cancel;
    function BOF: Boolean;
    function EOF: Boolean;
    procedure Clear;
    /// <summary>
    /// Compares another record, first checks its strucuture then the content. True if both are Equals
    /// </summary>
    /// <param name="aRecord">The recordset to Compare</param>
    function ContentEquals(const aRecord: IJanuaRecordSet): Boolean;
    /// <summary>Json Serialization </summary>
    procedure WriteToJsonObject(const aJsonObject: TJsonObject);
    /// <summary> Read From Json Object 'reads' this object as a nested one  </summary>
    procedure ReadFromJsonObject(const aJsonObject: TJsonObject; aFree: Boolean = false);
    /// <summary> Set from Json Object is used when our Recordset is the 'root' Object.  </summary>
    procedure SetFromJsonObject(const aJsonObject: TJsonObject; aFree: Boolean = false);
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
    function GetSyncDataset: IJanuaDBDataset;
    /// <summary> A Recordset can Generate and be linked to a standard IJanuaDBDataset (a Virtual or Memory SyncDataset)
    /// that can be used as a bridge to bind list controls with Recordset, </summary>
    property SyncDataset: IJanuaDBDataset read GetSyncDataset;
    // GUID
    function GetActualGUID: TGUID;
    procedure SetActualGUID(const Value: TGUID);
    property ActualGUID: TGUID read GetActualGUID write SetActualGUID;
    // Set Serialization - Serialize - Deserialize
    procedure WriteToSerialization(aSerialization: ISetSerialization);
    procedure ReadFromSerialization(aSerialization: ISetSerialization);
    // Record Structure
    // Events
    function SearchByGUID(aGUID: TGUID): Boolean;
    function GetOnScroll: TNotifyEvent;
    procedure SetOnScroll(Value: TNotifyEvent);
    property OnScroll: TNotifyEvent read GetOnScroll write SetOnScroll;
    function GetOnRecordPost: TJanuaRecordEvent;
    procedure SetOnRecordPost(const Value: TJanuaRecordEvent);
    property OnRecordPost: TJanuaRecordEvent read GetOnRecordPost write SetOnRecordPost;
    function GetOnClearDataset: TProc;
    procedure SetOnClearDataset(const Value: TProc);
    property OnClearDataset: TProc read GetOnClearDataset write SetOnClearDataset;
    /// <summary>   Loops through its Recordsets and Records to connect every entity with its phisical dataset
    /// Returns True if all records are assigned, false if not all records are assigned  </summary>
    /// <param name="aDatasets">  List of Datasets to be assigned </param>
    /// <param name="aRaiseException">
    // check if an exception is to be raised if not all Record Definitions can be Assigned to Datasets
    /// </param>
    function AssignDatasets(const aDatasets: TJanuaDBDatasets; const aRaiseException: Boolean): Boolean;

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
    function GetModified: Boolean;
    procedure SetModified(Value: Boolean);
    property Modified: Boolean read GetModified write SetModified;
    function GetParameters: TJanuaFields;
    procedure SetParameters(const Value: TJanuaFields);
    property Parameters: TJanuaFields read GetParameters write SetParameters;
    function IsLocalUpdated: Boolean;
    function IsRemoteUpdated: Boolean;
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
    /// <summary> delete Datasets from internal
    procedure UnMapDatasets;
    function GetStoreDataset: IJanuaDBDataset;
    procedure SetStoreDataset(aValue: IJanuaDBDataset);
    property StoreDataset: IJanuaDBDataset read GetStoreDataset write SetStoreDataset;
    procedure DirectLoadFromDataset(const aDataset: IJanuaDBDataset; const aRelease: Boolean = false;
      const aRecursively: Boolean = True); overload;
    // Tradistional Dataset
    procedure DirectLoadFromDataset(const aDataset: TDataSet; const aRelease: Boolean = false;
      const aRecursively: Boolean = True); overload;
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
    function GetLazyLoading: Boolean;
    procedure SetLazyLoading(const Value: Boolean);
    property LazyLoading: Boolean read GetLazyLoading write SetLazyLoading;
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
    function Locate(const aField: IJanuaField; const aValue: Integer): Boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: string): Boolean; overload;
    function Locate(const aField: IJanuaField; const aValue: Variant): Boolean; overload;
{$IFNDEF fpc} function Locate(const aField: IJanuaField; const aValue: TValue): Boolean; overload; {$ENDIF}
    // GUID ..................................................................
    function GetGUID: TGUID;
    procedure SetGUID(const Value: TGUID);
    property GUID: TGUID read GetGUID Write SetGUID;
    // GUIDString ..................................................................
    function GetGUIDString: string;
    procedure SetGUIDString(const Value: string);
    property GUIDString: string read GetGUIDString Write SetGUIDString;

    function GetEnumerator: IJanuaRecordEnumerator;

    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(const Value: IJanuaRecord);
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;

    function GetForceRefresh: Boolean;
    procedure SetForceRefresh(const aValue: Boolean);
    property ForceRefresh: Boolean read GetForceRefresh write SetForceRefresh;

    function GetRecordSetState: TRecordSetState;
    // <summary> State is important to manage cancel, inserting and posting in a Recordset  </summary>
    property State: TRecordSetState read GetRecordSetState;
  end;

type
  TDatasetList = IList<IJanuaDBDataset>;

Type
  IFiedlFactory = interface
    function CreateField(aKey, aDBField: string; aType: TJanuaFieldType): IJanuaField;
  end;

  IRecordCodeGen = Interface
    ['{29C06822-C02C-4953-92FA-13B16C4C5802}']

    function GetMasterRecord: IJanuaRecord;
    procedure SetMasterRecord(const Value: IJanuaRecord);
    property MasterRecord: IJanuaRecord read GetMasterRecord write SetMasterRecord;

    function GetSchemaName: string;
    procedure SetSchemaName(const aValue: string);
    property SchemaName: string read GetSchemaName write SetSchemaName;

    function GetTableName: string;
    procedure SetTableName(const aValue: string);
    property TableName: string read GetTableName write SetTableName;

    function GetCustomMasterFiles: TRecordUnits;
    property CustomMasterFiles: TRecordUnits read GetCustomMasterFiles;

    function GetMasterFiles: TRecordUnits;
    property MasterFiles: TRecordUnits read GetMasterFiles;

    function GetMasterClassConf: TRecordUnitConf;
    property MasterClassConf: TRecordUnitConf read GetMasterClassConf;

    procedure SetDataset(const Value: TDataSet);
    function GetDataset: TDataSet;
    property Dataset: TDataSet read GetDataset write SetDataset;

    procedure SetAskPlurals(const Value: Boolean);
    function GetAskPlurals: Boolean;
    property AskPlurals: Boolean read GetAskPlurals write SetAskPlurals;

    procedure SetIsMaster(const Value: Boolean);
    function GetIsMaster: Boolean;
    property IsMaster: Boolean read GetIsMaster write SetIsMaster;

    function GetDetailGens: IDictionary<string, IRecordCodeGen>;
    property DetailGens: IDictionary<string, IRecordCodeGen> read GetDetailGens;

    procedure Generate;

  End;

  IJanuaRecordsetBindableComboControl = interface(IJanuaBindableComboControl)
    ['{E9E9994A-42E8-44C1-9DDB-EA18EBA68658}']
    procedure BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
      const aFields: TArray<IJanuaField>); overload;
    procedure BindToRecordSet(const aRecordSet: IJanuaRecordSet; const aField: IJanuaField;
      const aFieldNames: TArray<string>); overload;
  end;

implementation

uses Spring;

{ TMasterField }

constructor TMasterField.Create(aMaster, aDetail: IJanuaField);
begin
  Guard.CheckTrue(aMaster.FieldType = aDetail.FieldType, 'MasterField  Master.FieldType <> Detail.FieldType');
  self.Master := aMaster;
  self.Detail := aDetail;
end;

{ TKeyValue }

constructor TKeyValue.Create(const aKey, aValue: string);
begin
  Key := aKey;
  Value := aValue;
end;

initialization

RegisterInterface(TypeInfo(IJanuaOrderByFields));
RegisterInterface(TypeInfo(IJanuaDBDatasetFactory));
RegisterInterface(TypeInfo(IJanuaVirtualDBDataset));
RegisterInterface(TypeInfo(IJanuaUniDBDataset));
RegisterInterface(TypeInfo(IJanuaFiredacDBDataset));
RegisterInterface(TypeInfo(IJanuaDBDatasetRESTRemoter));
RegisterInterface(TypeInfo(IJanuaDBStoredProcedure));

end.
