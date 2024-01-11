unit JOrm.Anagraph.Cars.Intf;

interface

uses Janua.Orm.Intf;


type

  IAnagraphCar = interface(IJanuaRecord)
  ['{E1F9C473-88A1-4AE5-8338-3DD31EAD555B}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetNumberPlate: IJanuaField;
    procedure SetNumberPlate(const Value: IJanuaField);
    property NumberPlate: IJanuaField read GetNumberPlate write SetNumberPlate;
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    property Model: IJanuaField read GetModel write SetModel;
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);
    property Color: IJanuaField read GetColor write SetColor;

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

    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    property Pos: IJanuaField read GetPos write SetPos;
  end;

  IAnagraphCars = interface(IJanuaRecordSet)
  ['{43F78198-632C-4595-93F6-D21443D3CB39}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetNumberPlate: IJanuaField;
    procedure SetNumberPlate(const Value: IJanuaField);
    property NumberPlate: IJanuaField read GetNumberPlate write SetNumberPlate;
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    property Model: IJanuaField read GetModel write SetModel;
    function GetColor: IJanuaField;
    procedure SetColor(const Value: IJanuaField);
    property Color: IJanuaField read GetColor write SetColor;
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
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);

    function GetAnagraphCar: IAnagraphCar;
    procedure SetAnagraphCar(const Value: IAnagraphCar);
    property AnagraphCar:IAnagraphCar read GetAnagraphCar write SetAnagraphCar;

  end;


implementation

end.
