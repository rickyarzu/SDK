unit JOrm.Anagraph.Address.Intf;

interface

uses Janua.Orm.Intf;

type
                                            
  IAddress = interface(IJanuaRecord)
  ['{E1F9C473-88A1-4AE5-8338-3DD31EAD555B}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetAddressName: IJanuaField;
    procedure SetAddressName(const Value: IJanuaField);
    property AddressName: IJanuaField read GetAddressName write SetAddressName;
    function GetPostalCode: IJanuaField;
    procedure SetPostalCode(const Value: IJanuaField);
    property PostalCode: IJanuaField read GetPostalCode write SetPostalCode;
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    function GetTownName: IJanuaField;
    procedure SetTownName(const Value: IJanuaField);
    property TownName: IJanuaField read GetTownName write SetTownName;
    function GetTownCode: IJanuaField;
    procedure SetTownCode(const Value: IJanuaField);
    property TownCode: IJanuaField read GetTownCode write SetTownCode;
    function GetAddress: IJanuaField;
    procedure SetAddress(const Value: IJanuaField);
    property Address: IJanuaField read GetAddress write SetAddress;
    function GetAddressNumber: IJanuaField;
    procedure SetAddressNumber(const Value: IJanuaField);
    property AddressNumber: IJanuaField read GetAddressNumber write SetAddressNumber;
    function GetPhone: IJanuaField;
    procedure SetPhone(const Value: IJanuaField);
    property Phone: IJanuaField read GetPhone write SetPhone;
    function GetFullAddress: IJanuaField;
    procedure SetFullAddress(const Value: IJanuaField);
    property FullAddress: IJanuaField read GetFullAddress write SetFullAddress;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    property InsId: IJanuaField read GetInsId write SetInsId;
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    property Local: IJanuaField read GetLocal write SetLocal;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetCountryCode: IJanuaField;
    procedure SetCountryCode(const Value: IJanuaField);
    property CountryCode: IJanuaField read GetCountryCode write SetCountryCode;
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    property Email: IJanuaField read GetEmail write SetEmail;
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    function GetMapsJson: IJanuaField;
    procedure SetMapsJson(const Value: IJanuaField);
    property MapsJson: IJanuaField read GetMapsJson write SetMapsJson;
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
  end;

  IAddresses = interface(IJanuaRecordSet)
  ['{43F78198-632C-4595-93F6-D21443D3CB39}']
    function GetLatitude: IJanuaField;
    procedure SetLatitude(const Value: IJanuaField);
    function GetLongitude: IJanuaField;
    procedure SetLongitude(const Value: IJanuaField);
    property Latitude: IJanuaField read GetLatitude write SetLatitude;
    property Longitude: IJanuaField read GetLongitude write SetLongitude;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetAddressName: IJanuaField;
    procedure SetAddressName(const Value: IJanuaField);
    property AddressName: IJanuaField read GetAddressName write SetAddressName;
    function GetPostalCode: IJanuaField;
    procedure SetPostalCode(const Value: IJanuaField);
    property PostalCode: IJanuaField read GetPostalCode write SetPostalCode;
    function GetStateProvince: IJanuaField;
    procedure SetStateProvince(const Value: IJanuaField);
    property StateProvince: IJanuaField read GetStateProvince write SetStateProvince;
    function GetTownName: IJanuaField;
    procedure SetTownName(const Value: IJanuaField);
    property TownName: IJanuaField read GetTownName write SetTownName;
    function GetTownCode: IJanuaField;
    procedure SetTownCode(const Value: IJanuaField);
    property TownCode: IJanuaField read GetTownCode write SetTownCode;
    function GetAddress: IJanuaField;
    procedure SetAddress(const Value: IJanuaField);
    property Address: IJanuaField read GetAddress write SetAddress;
    function GetAddressNumber: IJanuaField;
    procedure SetAddressNumber(const Value: IJanuaField);
    property AddressNumber: IJanuaField read GetAddressNumber write SetAddressNumber;
    function GetPhone: IJanuaField;
    procedure SetPhone(const Value: IJanuaField);
    property Phone: IJanuaField read GetPhone write SetPhone;
    function GetFullAddress: IJanuaField;
    procedure SetFullAddress(const Value: IJanuaField);
    property FullAddress: IJanuaField read GetFullAddress write SetFullAddress;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    function GetUpdId: IJanuaField;
    procedure SetUpdId(const Value: IJanuaField);
    property UpdId: IJanuaField read GetUpdId write SetUpdId;
    function GetInsId: IJanuaField;
    procedure SetInsId(const Value: IJanuaField);
    property InsId: IJanuaField read GetInsId write SetInsId;
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    property Local: IJanuaField read GetLocal write SetLocal;
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetCountryCode: IJanuaField;
    procedure SetCountryCode(const Value: IJanuaField);
    property CountryCode: IJanuaField read GetCountryCode write SetCountryCode;
    function GetEmail: IJanuaField;
    procedure SetEmail(const Value: IJanuaField);
    property Email: IJanuaField read GetEmail write SetEmail;

    function GetMapsJson: IJanuaField;
    procedure SetMapsJson(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);

    function GetRecordAddress: IAddress;
    procedure SetRecordAddress(const Value: IAddress);
    property RecordAddress:IAddress read GetRecordAddress write SetRecordAddress;

  end;

implementation

end.

