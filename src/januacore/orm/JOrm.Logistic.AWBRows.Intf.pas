unit JOrm.Logistic.AWBRows.Intf;

interface

uses Janua.Orm.Intf;

type

  ILogisticAWBRow = interface(IJanuaRecord)
    ['{4C6D1F48-E491-416E-B0A8-C83AD69FB349}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetAwbId: IJanuaField;
    procedure SetAwbId(const Value: IJanuaField);
    property AwbId: IJanuaField read GetAwbId write SetAwbId;
    function GetRowPos: IJanuaField;
    procedure SetRowPos(const Value: IJanuaField);
    property RowPos: IJanuaField read GetRowPos write SetRowPos;
    function GetField19a: IJanuaField;
    procedure SetField19a(const Value: IJanuaField);
    property Field19a: IJanuaField read GetField19a write SetField19a;
    function GetField20a: IJanuaField;
    procedure SetField20a(const Value: IJanuaField);
    property Field20a: IJanuaField read GetField20a write SetField20a;
    function GetField21: IJanuaField;
    procedure SetField21(const Value: IJanuaField);
    property Field21: IJanuaField read GetField21 write SetField21;
    function GetField22: IJanuaField;
    procedure SetField22(const Value: IJanuaField);
    property Field22: IJanuaField read GetField22 write SetField22;
    function GetField23: IJanuaField;
    procedure SetField23(const Value: IJanuaField);
    property Field23: IJanuaField read GetField23 write SetField23;
    function GetField24: IJanuaField;
    procedure SetField24(const Value: IJanuaField);
    property Field24: IJanuaField read GetField24 write SetField24;
    function GetField25: IJanuaField;
    procedure SetField25(const Value: IJanuaField);
    property Field25: IJanuaField read GetField25 write SetField25;
    function GetField26a: IJanuaField;
    procedure SetField26a(const Value: IJanuaField);
    property Field26a: IJanuaField read GetField26a write SetField26a;
    function GetField27: IJanuaField;
    procedure SetField27(const Value: IJanuaField);
    property Field27: IJanuaField read GetField27 write SetField27;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
  end;

  ILogisticAWBRows = interface(IJanuaRecordSet)
    ['{7C3A1B9D-0491-4D11-BF4B-732B7AA454A0}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetAwbId: IJanuaField;
    procedure SetAwbId(const Value: IJanuaField);
    property AwbId: IJanuaField read GetAwbId write SetAwbId;
    function GetRowPos: IJanuaField;
    procedure SetRowPos(const Value: IJanuaField);
    property RowPos: IJanuaField read GetRowPos write SetRowPos;
    function GetField19a: IJanuaField;
    procedure SetField19a(const Value: IJanuaField);
    property Field19a: IJanuaField read GetField19a write SetField19a;
    function GetField20a: IJanuaField;
    procedure SetField20a(const Value: IJanuaField);
    property Field20a: IJanuaField read GetField20a write SetField20a;
    function GetField21: IJanuaField;
    procedure SetField21(const Value: IJanuaField);
    property Field21: IJanuaField read GetField21 write SetField21;
    function GetField22: IJanuaField;
    procedure SetField22(const Value: IJanuaField);
    property Field22: IJanuaField read GetField22 write SetField22;
    function GetField23: IJanuaField;
    procedure SetField23(const Value: IJanuaField);
    property Field23: IJanuaField read GetField23 write SetField23;
    function GetField24: IJanuaField;
    procedure SetField24(const Value: IJanuaField);
    property Field24: IJanuaField read GetField24 write SetField24;
    function GetField25: IJanuaField;
    procedure SetField25(const Value: IJanuaField);
    property Field25: IJanuaField read GetField25 write SetField25;
    function GetField26a: IJanuaField;
    procedure SetField26a(const Value: IJanuaField);
    property Field26a: IJanuaField read GetField26a write SetField26a;
    function GetField27: IJanuaField;
    procedure SetField27(const Value: IJanuaField);
    property Field27: IJanuaField read GetField27 write SetField27;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetLogisticAWBRow: ILogisticAWBRow;
    procedure SetLogisticAWBRow(const Value: ILogisticAWBRow);
    property LogisticAWBRow: ILogisticAWBRow read GetLogisticAWBRow write SetLogisticAWBRow;

  end;

implementation

end.
