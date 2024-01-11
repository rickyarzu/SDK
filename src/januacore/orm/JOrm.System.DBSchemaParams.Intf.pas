unit JOrm.System.DBSchemaParams.Intf;

interface

uses Janua.Orm.Intf;

type

  IDBSchemaParam = interface(IJanuaRecord)
    ['{B346C48F-2A4B-46E6-8A1D-565976C7DFC8}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetKey: IJanuaField;
    procedure SetKey(const Value: IJanuaField);
    property Key: IJanuaField read GetKey write SetKey;
    function GetParam: IJanuaField;
    procedure SetParam(const Value: IJanuaField);
    property Param: IJanuaField read GetParam write SetParam;
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const Value: IJanuaField);
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
  end;

  IDBSchemaParams = interface(IJanuaRecordSet)
    ['{A8154DF5-63B3-4CEF-83F1-EB482B369573}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetKey: IJanuaField;
    procedure SetKey(const Value: IJanuaField);
    property Key: IJanuaField read GetKey write SetKey;
    function GetParam: IJanuaField;
    procedure SetParam(const Value: IJanuaField);
    property Param: IJanuaField read GetParam write SetParam;
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    property Value: IJanuaField read GetValue write SetValue;
    function GetHasTranslation: IJanuaField;
    procedure SetHasTranslation(const Value: IJanuaField);
    property HasTranslation: IJanuaField read GetHasTranslation write SetHasTranslation;
    function GetDBSchemaParam: IDBSchemaParam;
    procedure SetDBSchemaParam(const Value: IDBSchemaParam);
    property DBSchemaParam: IDBSchemaParam read GetDBSchemaParam write SetDBSchemaParam;

  end;

implementation

end.
