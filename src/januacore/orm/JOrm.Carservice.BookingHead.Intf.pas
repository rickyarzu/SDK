unit JOrm.Carservice.BookingHead.Intf;

interface

uses Janua.Orm.Intf;

type                           

  IBookingHead = interface(IJanuaRecord)
  ['{9C554D1F-D546-4FC2-B947-F306C11138FD}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    property StateId: IJanuaField read GetStateId write SetStateId;
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetVehicleNumberplate: IJanuaField;
    procedure SetVehicleNumberplate(const Value: IJanuaField);
    property VehicleNumberplate: IJanuaField read GetVehicleNumberplate write SetVehicleNumberplate;
    function GetVehicleModel: IJanuaField;
    procedure SetVehicleModel(const Value: IJanuaField);
    property VehicleModel: IJanuaField read GetVehicleModel write SetVehicleModel;
    function GetVehicleColor: IJanuaField;
    procedure SetVehicleColor(const Value: IJanuaField);
    property VehicleColor: IJanuaField read GetVehicleColor write SetVehicleColor;
    function GetDriverId: IJanuaField;
    procedure SetDriverId(const Value: IJanuaField);
    property DriverId: IJanuaField read GetDriverId write SetDriverId;
    function GetPickupDay: IJanuaField;
    procedure SetPickupDay(const Value: IJanuaField);
    property PickupDay: IJanuaField read GetPickupDay write SetPickupDay;
    function GetPickupSlotId: IJanuaField;
    procedure SetPickupSlotId(const Value: IJanuaField);
    property PickupSlotId: IJanuaField read GetPickupSlotId write SetPickupSlotId;
    function GetReturnDay: IJanuaField;
    procedure SetReturnDay(const Value: IJanuaField);
    property ReturnDay: IJanuaField read GetReturnDay write SetReturnDay;
    function GetReturnSlotId: IJanuaField;
    procedure SetReturnSlotId(const Value: IJanuaField);
    property ReturnSlotId: IJanuaField read GetReturnSlotId write SetReturnSlotId;
  end;

  IBookingHeads = interface(IJanuaRecordSet)
  ['{D7E2E78A-B579-450A-AF82-289781362654}']
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    property Id: IJanuaField read GetId write SetId;
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    property Jguid: IJanuaField read GetJguid write SetJguid;
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    property StateId: IJanuaField read GetStateId write SetStateId;
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    function GetVehicleNumberplate: IJanuaField;
    procedure SetVehicleNumberplate(const Value: IJanuaField);
    property VehicleNumberplate: IJanuaField read GetVehicleNumberplate write SetVehicleNumberplate;
    function GetVehicleModel: IJanuaField;
    procedure SetVehicleModel(const Value: IJanuaField);
    property VehicleModel: IJanuaField read GetVehicleModel write SetVehicleModel;
    function GetVehicleColor: IJanuaField;
    procedure SetVehicleColor(const Value: IJanuaField);
    property VehicleColor: IJanuaField read GetVehicleColor write SetVehicleColor;
    function GetDriverId: IJanuaField;
    procedure SetDriverId(const Value: IJanuaField);
    property DriverId: IJanuaField read GetDriverId write SetDriverId;
    function GetPickupDay: IJanuaField;
    procedure SetPickupDay(const Value: IJanuaField);
    property PickupDay: IJanuaField read GetPickupDay write SetPickupDay;
    function GetPickupSlotId: IJanuaField;
    procedure SetPickupSlotId(const Value: IJanuaField);
    property PickupSlotId: IJanuaField read GetPickupSlotId write SetPickupSlotId;
    function GetReturnDay: IJanuaField;
    procedure SetReturnDay(const Value: IJanuaField);
    property ReturnDay: IJanuaField read GetReturnDay write SetReturnDay;
    function GetReturnSlotId: IJanuaField;
    procedure SetReturnSlotId(const Value: IJanuaField);
    property ReturnSlotId: IJanuaField read GetReturnSlotId write SetReturnSlotId;
    function GetBookingHead: IBookingHead;
    procedure SetBookingHead(const Value: IBookingHead);
    property BookingHead:IBookingHead read GetBookingHead write SetBookingHead;

  end;

implementation

end.

