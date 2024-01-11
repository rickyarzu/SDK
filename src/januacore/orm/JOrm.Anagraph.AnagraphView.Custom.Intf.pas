unit JOrm.Anagraph.AnagraphView.Custom.Intf;

interface

uses Janua.Orm.Intf, JOrm.Anagraph.Anagraphs.Custom.Intf;

type

  ICustomAnagraphView = interface(ICustomAnagraph)
    ['{4C47A426-43D7-4AD2-AE65-7CD86BE3B5A6}']
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    function GetAnCreditLimit: IJanuaField;
    procedure SetAnCreditLimit(const Value: IJanuaField);
    property AnCreditLimit: IJanuaField read GetAnCreditLimit write SetAnCreditLimit;
    function GetAnCredit: IJanuaField;
    procedure SetAnCredit(const Value: IJanuaField);
    property AnCredit: IJanuaField read GetAnCredit write SetAnCredit;
    function GetShipmentName: IJanuaField;
    procedure SetShipmentName(const Value: IJanuaField);
    property ShipmentName: IJanuaField read GetShipmentName write SetShipmentName;
    function GetShipmentPostalCode: IJanuaField;
    procedure SetShipmentPostalCode(const Value: IJanuaField);
    property ShipmentPostalCode: IJanuaField read GetShipmentPostalCode write SetShipmentPostalCode;
    function GetShipmentTown: IJanuaField;
    procedure SetShipmentTown(const Value: IJanuaField);
    property ShipmentTown: IJanuaField read GetShipmentTown write SetShipmentTown;
    function GetShipmentAddress: IJanuaField;
    procedure SetShipmentAddress(const Value: IJanuaField);
    property ShipmentAddress: IJanuaField read GetShipmentAddress write SetShipmentAddress;
    function GetShipmentPhone: IJanuaField;
    procedure SetShipmentPhone(const Value: IJanuaField);
    property ShipmentPhone: IJanuaField read GetShipmentPhone write SetShipmentPhone;
    function GetShipmentStateProvince: IJanuaField;
    procedure SetShipmentStateProvince(const Value: IJanuaField);
    property ShipmentStateProvince: IJanuaField read GetShipmentStateProvince write SetShipmentStateProvince;
    function GetBillingName: IJanuaField;
    procedure SetBillingName(const Value: IJanuaField);
    property BillingName: IJanuaField read GetBillingName write SetBillingName;
    function GetBillingPostalCode: IJanuaField;
    procedure SetBillingPostalCode(const Value: IJanuaField);
    property BillingPostalCode: IJanuaField read GetBillingPostalCode write SetBillingPostalCode;
    function GetBillingTown: IJanuaField;
    procedure SetBillingTown(const Value: IJanuaField);
    property BillingTown: IJanuaField read GetBillingTown write SetBillingTown;
    function GetBillingAddress: IJanuaField;
    procedure SetBillingAddress(const Value: IJanuaField);
    property BillingAddress: IJanuaField read GetBillingAddress write SetBillingAddress;
    function GetBillingPhone: IJanuaField;
    procedure SetBillingPhone(const Value: IJanuaField);
    property BillingPhone: IJanuaField read GetBillingPhone write SetBillingPhone;
    function GetBillingStateProvince: IJanuaField;
    procedure SetBillingStateProvince(const Value: IJanuaField);
    property BillingStateProvince: IJanuaField read GetBillingStateProvince write SetBillingStateProvince;
  end;

  ICustomAnagraphViews = interface(ICustomAnagraphs)
    ['{B5788155-33E7-4F67-ADFB-440289155891}']
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    function GetAnCreditLimit: IJanuaField;
    procedure SetAnCreditLimit(const Value: IJanuaField);
    property AnCreditLimit: IJanuaField read GetAnCreditLimit write SetAnCreditLimit;
    function GetAnCredit: IJanuaField;
    procedure SetAnCredit(const Value: IJanuaField);
    property AnCredit: IJanuaField read GetAnCredit write SetAnCredit;
    function GetShipmentName: IJanuaField;
    procedure SetShipmentName(const Value: IJanuaField);
    property ShipmentName: IJanuaField read GetShipmentName write SetShipmentName;
    function GetShipmentPostalCode: IJanuaField;
    procedure SetShipmentPostalCode(const Value: IJanuaField);
    property ShipmentPostalCode: IJanuaField read GetShipmentPostalCode write SetShipmentPostalCode;
    function GetShipmentTown: IJanuaField;
    procedure SetShipmentTown(const Value: IJanuaField);
    property ShipmentTown: IJanuaField read GetShipmentTown write SetShipmentTown;
    function GetShipmentAddress: IJanuaField;
    procedure SetShipmentAddress(const Value: IJanuaField);
    property ShipmentAddress: IJanuaField read GetShipmentAddress write SetShipmentAddress;
    function GetShipmentPhone: IJanuaField;
    procedure SetShipmentPhone(const Value: IJanuaField);
    property ShipmentPhone: IJanuaField read GetShipmentPhone write SetShipmentPhone;
    function GetShipmentStateProvince: IJanuaField;
    procedure SetShipmentStateProvince(const Value: IJanuaField);
    property ShipmentStateProvince: IJanuaField read GetShipmentStateProvince write SetShipmentStateProvince;
    function GetBillingName: IJanuaField;
    procedure SetBillingName(const Value: IJanuaField);
    property BillingName: IJanuaField read GetBillingName write SetBillingName;
    function GetBillingPostalCode: IJanuaField;
    procedure SetBillingPostalCode(const Value: IJanuaField);
    property BillingPostalCode: IJanuaField read GetBillingPostalCode write SetBillingPostalCode;
    function GetBillingTown: IJanuaField;
    procedure SetBillingTown(const Value: IJanuaField);
    property BillingTown: IJanuaField read GetBillingTown write SetBillingTown;
    function GetBillingAddress: IJanuaField;
    procedure SetBillingAddress(const Value: IJanuaField);
    property BillingAddress: IJanuaField read GetBillingAddress write SetBillingAddress;
    function GetBillingPhone: IJanuaField;
    procedure SetBillingPhone(const Value: IJanuaField);
    property BillingPhone: IJanuaField read GetBillingPhone write SetBillingPhone;
    function GetBillingStateProvince: IJanuaField;
    procedure SetBillingStateProvince(const Value: IJanuaField);
    property BillingStateProvince: IJanuaField read GetBillingStateProvince write SetBillingStateProvince;
  end;

implementation

end.
