unit JOrm.Logistic.Locations.Custom.Intf;

interface

uses Janua.Orm.Intf;

type

  ICustomLogisticLocation = interface(IJanuaRecord)
    ['{620ADB53-1B6B-482D-A02A-8F744A12632B}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    property Code: IJanuaField read GetCode write SetCode;
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    property Name: IJanuaField read GetName write SetName;
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    function GetCountry: IJanuaField;
    procedure SetCountry(const Value: IJanuaField);
    property Country: IJanuaField read GetCountry write SetCountry;
    function GetAreaCode: IJanuaField;
    procedure SetAreaCode(const Value: IJanuaField);
    property AreaCode: IJanuaField read GetAreaCode write SetAreaCode;
    function GetFlgairport: IJanuaField;
    procedure SetFlgairport(const Value: IJanuaField);
    property Flgairport: IJanuaField read GetFlgairport write SetFlgairport;
    function GetIsoCode: IJanuaField;
    procedure SetIsoCode(const Value: IJanuaField);
    property IsoCode: IJanuaField read GetIsoCode write SetIsoCode;
    function GetIataCode: IJanuaField;
    procedure SetIataCode(const Value: IJanuaField);
    property IataCode: IJanuaField read GetIataCode write SetIataCode;
  end;

  ICustomLogisticLocations = interface(IJanuaRecordSet)
    ['{1102EFDA-19D1-44EF-9516-FA90E2D0D43F}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    property Code: IJanuaField read GetCode write SetCode;
    function GetName: IJanuaField;
    procedure SetName(const Value: IJanuaField);
    property Name: IJanuaField read GetName write SetName;
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    function GetCountry: IJanuaField;
    procedure SetCountry(const Value: IJanuaField);
    property Country: IJanuaField read GetCountry write SetCountry;
    function GetAreaCode: IJanuaField;
    procedure SetAreaCode(const Value: IJanuaField);
    property AreaCode: IJanuaField read GetAreaCode write SetAreaCode;
    function GetFlgairport: IJanuaField;
    procedure SetFlgairport(const Value: IJanuaField);
    property Flgairport: IJanuaField read GetFlgairport write SetFlgairport;
    function GetIsoCode: IJanuaField;
    procedure SetIsoCode(const Value: IJanuaField);
    property IsoCode: IJanuaField read GetIsoCode write SetIsoCode;
    function GetIataCode: IJanuaField;
    procedure SetIataCode(const Value: IJanuaField);
    property IataCode: IJanuaField read GetIataCode write SetIataCode;

  end;


implementation

end.
