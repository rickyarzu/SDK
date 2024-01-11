unit JOrm.Football.Season.Intf;

interface

uses Janua.Orm.Intf;

type

  ISeason = interface(IJanuaRecord)
    ['{DCF45FAE-9267-498C-9861-027C2FC578D6}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetSeasonDes: IJanuaField;
    procedure SetSeasonDes(const Value: IJanuaField);
    property SeasonDes: IJanuaField read GetSeasonDes write SetSeasonDes;
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetOrderNumber: IJanuaField;
    procedure SetOrderNumber(const Value: IJanuaField);
    property OrderNumber: IJanuaField read GetOrderNumber write SetOrderNumber;
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
  end;

  ISeasons = interface(IJanuaRecordSet)
    ['{E016A545-5C8F-4577-9918-2C396215A15B}']
    function GetSeasonId: IJanuaField;
    procedure SetSeasonId(const Value: IJanuaField);
    property SeasonId: IJanuaField read GetSeasonId write SetSeasonId;
    function GetSeasonDes: IJanuaField;
    procedure SetSeasonDes(const Value: IJanuaField);
    property SeasonDes: IJanuaField read GetSeasonDes write SetSeasonDes;
    function GetSeasonCode: IJanuaField;
    procedure SetSeasonCode(const Value: IJanuaField);
    property SeasonCode: IJanuaField read GetSeasonCode write SetSeasonCode;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetOrderNumber: IJanuaField;
    procedure SetOrderNumber(const Value: IJanuaField);
    property OrderNumber: IJanuaField read GetOrderNumber write SetOrderNumber;
    function GetRemoteId: IJanuaField;
    procedure SetRemoteId(const Value: IJanuaField);
    property RemoteId: IJanuaField read GetRemoteId write SetRemoteId;
    function GetSeason: ISeason;
    procedure SetSeason(const Value: ISeason);
    property Season: ISeason read GetSeason write SetSeason;

  end;

implementation

end.
