unit JOrm.Anagraph.Branch.Custom.Intf;

interface

uses Janua.Orm.Intf;

type

  ICustomBranch = interface(IJanuaRecord)
    ['{719B3D0D-CAE4-4873-B3F0-DCF6707FFBC4}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    function GetAnBranchId: IJanuaField;
    procedure SetAnBranchId(const Value: IJanuaField);
    property AnBranchId: IJanuaField read GetAnBranchId write SetAnBranchId;
    function GetAnBranchName: IJanuaField;
    procedure SetAnBranchName(const Value: IJanuaField);
    property AnBranchName: IJanuaField read GetAnBranchName write SetAnBranchName;
    function GetAnBranchPostalCode: IJanuaField;
    procedure SetAnBranchPostalCode(const Value: IJanuaField);
    property AnBranchPostalCode: IJanuaField read GetAnBranchPostalCode write SetAnBranchPostalCode;
    function GetAnBranchTownName: IJanuaField;
    procedure SetAnBranchTownName(const Value: IJanuaField);
    property AnBranchTownName: IJanuaField read GetAnBranchTownName write SetAnBranchTownName;
    function GetAnBranchTownCode: IJanuaField;
    procedure SetAnBranchTownCode(const Value: IJanuaField);
    property AnBranchTownCode: IJanuaField read GetAnBranchTownCode write SetAnBranchTownCode;
    function GetAnBranchAddress: IJanuaField;
    procedure SetAnBranchAddress(const Value: IJanuaField);
    property AnBranchAddress: IJanuaField read GetAnBranchAddress write SetAnBranchAddress;
    function GetAnInsertDate: IJanuaField;
    procedure SetAnInsertDate(const Value: IJanuaField);
    property AnInsertDate: IJanuaField read GetAnInsertDate write SetAnInsertDate;
    function GetAnUpdateDate: IJanuaField;
    procedure SetAnUpdateDate(const Value: IJanuaField);
    property AnUpdateDate: IJanuaField read GetAnUpdateDate write SetAnUpdateDate;
    function GetAnUpdId: IJanuaField;
    procedure SetAnUpdId(const Value: IJanuaField);
    property AnUpdId: IJanuaField read GetAnUpdId write SetAnUpdId;
    function GetAnInsId: IJanuaField;
    procedure SetAnInsId(const Value: IJanuaField);
    property AnInsId: IJanuaField read GetAnInsId write SetAnInsId;
    function GetAnUserInsert: IJanuaField;
    procedure SetAnUserInsert(const Value: IJanuaField);
    property AnUserInsert: IJanuaField read GetAnUserInsert write SetAnUserInsert;
    function GetAnUserUpdate: IJanuaField;
    procedure SetAnUserUpdate(const Value: IJanuaField);
    property AnUserUpdate: IJanuaField read GetAnUserUpdate write SetAnUserUpdate;
    function GetAnLocal: IJanuaField;
    procedure SetAnLocal(const Value: IJanuaField);
    property AnLocal: IJanuaField read GetAnLocal write SetAnLocal;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetAnBranchPhone: IJanuaField;
    procedure SetAnBranchPhone(const Value: IJanuaField);
    property AnBranchPhone: IJanuaField read GetAnBranchPhone write SetAnBranchPhone;
    function GetAnBranchStateProvince: IJanuaField;
    procedure SetAnBranchStateProvince(const Value: IJanuaField);
    property AnBranchStateProvince: IJanuaField read GetAnBranchStateProvince write SetAnBranchStateProvince;
  end;

  ICustomBranches = interface(IJanuaRecordSet)
    ['{ECE6A1F6-9B58-4A71-9152-19CE77F82585}']
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    function GetAnBranchId: IJanuaField;
    procedure SetAnBranchId(const Value: IJanuaField);
    property AnBranchId: IJanuaField read GetAnBranchId write SetAnBranchId;
    function GetAnBranchName: IJanuaField;
    procedure SetAnBranchName(const Value: IJanuaField);
    property AnBranchName: IJanuaField read GetAnBranchName write SetAnBranchName;
    function GetAnBranchPostalCode: IJanuaField;
    procedure SetAnBranchPostalCode(const Value: IJanuaField);
    property AnBranchPostalCode: IJanuaField read GetAnBranchPostalCode write SetAnBranchPostalCode;
    function GetAnBranchTownName: IJanuaField;
    procedure SetAnBranchTownName(const Value: IJanuaField);
    property AnBranchTownName: IJanuaField read GetAnBranchTownName write SetAnBranchTownName;
    function GetAnBranchTownCode: IJanuaField;
    procedure SetAnBranchTownCode(const Value: IJanuaField);
    property AnBranchTownCode: IJanuaField read GetAnBranchTownCode write SetAnBranchTownCode;
    function GetAnBranchAddress: IJanuaField;
    procedure SetAnBranchAddress(const Value: IJanuaField);
    property AnBranchAddress: IJanuaField read GetAnBranchAddress write SetAnBranchAddress;
    function GetAnInsertDate: IJanuaField;
    procedure SetAnInsertDate(const Value: IJanuaField);
    property AnInsertDate: IJanuaField read GetAnInsertDate write SetAnInsertDate;
    function GetAnUpdateDate: IJanuaField;
    procedure SetAnUpdateDate(const Value: IJanuaField);
    property AnUpdateDate: IJanuaField read GetAnUpdateDate write SetAnUpdateDate;
    function GetAnUpdId: IJanuaField;
    procedure SetAnUpdId(const Value: IJanuaField);
    property AnUpdId: IJanuaField read GetAnUpdId write SetAnUpdId;
    function GetAnInsId: IJanuaField;
    procedure SetAnInsId(const Value: IJanuaField);
    property AnInsId: IJanuaField read GetAnInsId write SetAnInsId;
    function GetAnUserInsert: IJanuaField;
    procedure SetAnUserInsert(const Value: IJanuaField);
    property AnUserInsert: IJanuaField read GetAnUserInsert write SetAnUserInsert;
    function GetAnUserUpdate: IJanuaField;
    procedure SetAnUserUpdate(const Value: IJanuaField);
    property AnUserUpdate: IJanuaField read GetAnUserUpdate write SetAnUserUpdate;
    function GetAnLocal: IJanuaField;
    procedure SetAnLocal(const Value: IJanuaField);
    property AnLocal: IJanuaField read GetAnLocal write SetAnLocal;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetAnBranchPhone: IJanuaField;
    procedure SetAnBranchPhone(const Value: IJanuaField);
    property AnBranchPhone: IJanuaField read GetAnBranchPhone write SetAnBranchPhone;
    function GetAnBranchStateProvince: IJanuaField;
    procedure SetAnBranchStateProvince(const Value: IJanuaField);
    property AnBranchStateProvince: IJanuaField read GetAnBranchStateProvince write SetAnBranchStateProvince;
    function GetCustomBranch: ICustomBranch;
    procedure SetCustomBranch(const Value: ICustomBranch);
    property Branch: ICustomBranch read GetCustomBranch write SetCustomBranch;

  end;

implementation

end.
