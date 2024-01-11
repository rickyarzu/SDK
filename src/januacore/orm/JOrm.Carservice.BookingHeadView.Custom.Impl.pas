unit JOrm.Carservice.BookingHeadView.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Carservice.BookingHeadView.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomBookingHeadView = class(TJanuaRecord, ICustomBookingHeadView)
  private
    FId: IJanuaField;
    FOfficeId: IJanuaField;
    FJguid: IJanuaField;
    FDbSchemaId: IJanuaField;
    FUserInsert: IJanuaField;
    FInsertDate: IJanuaField;
    FCustomerId: IJanuaField;
    FStateId: IJanuaField;
    FBranchId: IJanuaField;
    FVehicleModel: IJanuaField;
    FVehicleColor: IJanuaField;
    FVehicleNumberplate: IJanuaField;
    FPickupDay: IJanuaField;
    FPickupSlotId: IJanuaField;
    FReturnDay: IJanuaField;
    FReturnSlotId: IJanuaField;
    FAnLastName: IJanuaField;
    FAnVatId: IJanuaField;
    FAnAddress: IJanuaField;
    FAnPostalCode: IJanuaField;
    FAnFiscalCode: IJanuaField;
    FAnTown: IJanuaField;
    FServiceName: IJanuaField;
    FServiceAddress: IJanuaField;
    FAnPhone: IJanuaField;
    FAnEmail: IJanuaField;
    FAnCellular: IJanuaField;
    FBranchAddress: IJanuaField;
    FBranchPostalCode: IJanuaField;
    FBranchTown: IJanuaField;
    FBranchPhone: IJanuaField;
    FCustFirstName: IJanuaField;
    FCustLastName: IJanuaField;
    FFullAddress: IJanuaField;
    FCustCellular: IJanuaField;
    FCustEmail: IJanuaField;
    FPickupAddress: IJanuaField;
    FReturnAddress: IJanuaField;
    FPickupTime: IJanuaField;
    FReturnTime: IJanuaField;
    FPickupDate: IJanuaField;
    FReturnDate: IJanuaField;
    FDriver1Id: IJanuaField;
    FDriver2Id: IJanuaField;
    FDriver1Email: IJanuaField;
    FDriver2Email: IJanuaField;
    FDriver1Cellular: IJanuaField;
    FDriver2Cellular: IJanuaField;
    FPickupJguid: IJanuaField;
    FReturnJguid: IJanuaField;
    FPickup2Address: IJanuaField;
    FReturn2Address: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    function GetVehicleModel: IJanuaField;
    procedure SetVehicleModel(const Value: IJanuaField);
    function GetVehicleColor: IJanuaField;
    procedure SetVehicleColor(const Value: IJanuaField);
    function GetVehicleNumberplate: IJanuaField;
    procedure SetVehicleNumberplate(const Value: IJanuaField);
    function GetPickupDay: IJanuaField;
    procedure SetPickupDay(const Value: IJanuaField);
    function GetPickupSlotId: IJanuaField;
    procedure SetPickupSlotId(const Value: IJanuaField);
    function GetReturnDay: IJanuaField;
    procedure SetReturnDay(const Value: IJanuaField);
    function GetReturnSlotId: IJanuaField;
    procedure SetReturnSlotId(const Value: IJanuaField);
    function GetAnLastName: IJanuaField;
    procedure SetAnLastName(const Value: IJanuaField);
    function GetAnVatId: IJanuaField;
    procedure SetAnVatId(const Value: IJanuaField);
    function GetAnAddress: IJanuaField;
    procedure SetAnAddress(const Value: IJanuaField);
    function GetAnPostalCode: IJanuaField;
    procedure SetAnPostalCode(const Value: IJanuaField);
    function GetAnFiscalCode: IJanuaField;
    procedure SetAnFiscalCode(const Value: IJanuaField);
    function GetAnTown: IJanuaField;
    procedure SetAnTown(const Value: IJanuaField);
    function GetServiceName: IJanuaField;
    procedure SetServiceName(const Value: IJanuaField);
    function GetServiceAddress: IJanuaField;
    procedure SetServiceAddress(const Value: IJanuaField);
    function GetAnPhone: IJanuaField;
    procedure SetAnPhone(const Value: IJanuaField);
    function GetAnEmail: IJanuaField;
    procedure SetAnEmail(const Value: IJanuaField);
    function GetAnCellular: IJanuaField;
    procedure SetAnCellular(const Value: IJanuaField);
    function GetBranchAddress: IJanuaField;
    procedure SetBranchAddress(const Value: IJanuaField);
    function GetBranchPostalCode: IJanuaField;
    procedure SetBranchPostalCode(const Value: IJanuaField);
    function GetBranchTown: IJanuaField;
    procedure SetBranchTown(const Value: IJanuaField);
    function GetBranchPhone: IJanuaField;
    procedure SetBranchPhone(const Value: IJanuaField);
    function GetCustFirstName: IJanuaField;
    procedure SetCustFirstName(const Value: IJanuaField);
    function GetCustLastName: IJanuaField;
    procedure SetCustLastName(const Value: IJanuaField);
    function GetFullAddress: IJanuaField;
    procedure SetFullAddress(const Value: IJanuaField);
    function GetCustCellular: IJanuaField;
    procedure SetCustCellular(const Value: IJanuaField);
    function GetCustEmail: IJanuaField;
    procedure SetCustEmail(const Value: IJanuaField);
    function GetPickupAddress: IJanuaField;
    procedure SetPickupAddress(const Value: IJanuaField);
    function GetReturnAddress: IJanuaField;
    procedure SetReturnAddress(const Value: IJanuaField);
    function GetPickupTime: IJanuaField;
    procedure SetPickupTime(const Value: IJanuaField);
    function GetReturnTime: IJanuaField;
    procedure SetReturnTime(const Value: IJanuaField);
    function GetPickupDate: IJanuaField;
    procedure SetPickupDate(const Value: IJanuaField);
    function GetReturnDate: IJanuaField;
    procedure SetReturnDate(const Value: IJanuaField);
    function GetDriver1Id: IJanuaField;
    procedure SetDriver1Id(const Value: IJanuaField);
    function GetDriver2Id: IJanuaField;
    procedure SetDriver2Id(const Value: IJanuaField);
    function GetDriver1Email: IJanuaField;
    procedure SetDriver1Email(const Value: IJanuaField);
    function GetDriver2Email: IJanuaField;
    procedure SetDriver2Email(const Value: IJanuaField);
    function GetDriver1Cellular: IJanuaField;
    procedure SetDriver1Cellular(const Value: IJanuaField);
    function GetDriver2Cellular: IJanuaField;
    procedure SetDriver2Cellular(const Value: IJanuaField);
    function GetPickupJguid: IJanuaField;
    procedure SetPickupJguid(const Value: IJanuaField);
    function GetReturnJguid: IJanuaField;
    procedure SetReturnJguid(const Value: IJanuaField);
    function GetPickup2Address: IJanuaField;
    function GetReturn2Address: IJanuaField;
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    property StateId: IJanuaField read GetStateId write SetStateId;
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    property VehicleModel: IJanuaField read GetVehicleModel write SetVehicleModel;
    property VehicleColor: IJanuaField read GetVehicleColor write SetVehicleColor;
    property VehicleNumberplate: IJanuaField read GetVehicleNumberplate write SetVehicleNumberplate;
    property PickupDay: IJanuaField read GetPickupDay write SetPickupDay;
    property PickupSlotId: IJanuaField read GetPickupSlotId write SetPickupSlotId;
    property ReturnDay: IJanuaField read GetReturnDay write SetReturnDay;
    property ReturnSlotId: IJanuaField read GetReturnSlotId write SetReturnSlotId;
    property AnLastName: IJanuaField read GetAnLastName write SetAnLastName;
    property AnVatId: IJanuaField read GetAnVatId write SetAnVatId;
    property AnAddress: IJanuaField read GetAnAddress write SetAnAddress;
    property AnPostalCode: IJanuaField read GetAnPostalCode write SetAnPostalCode;
    property AnFiscalCode: IJanuaField read GetAnFiscalCode write SetAnFiscalCode;
    property AnTown: IJanuaField read GetAnTown write SetAnTown;
    property ServiceName: IJanuaField read GetServiceName write SetServiceName;
    property ServiceAddress: IJanuaField read GetServiceAddress write SetServiceAddress;
    property AnPhone: IJanuaField read GetAnPhone write SetAnPhone;
    property AnEmail: IJanuaField read GetAnEmail write SetAnEmail;
    property AnCellular: IJanuaField read GetAnCellular write SetAnCellular;
    property BranchAddress: IJanuaField read GetBranchAddress write SetBranchAddress;
    property BranchPostalCode: IJanuaField read GetBranchPostalCode write SetBranchPostalCode;
    property BranchTown: IJanuaField read GetBranchTown write SetBranchTown;
    property BranchPhone: IJanuaField read GetBranchPhone write SetBranchPhone;
    property CustFirstName: IJanuaField read GetCustFirstName write SetCustFirstName;
    property CustLastName: IJanuaField read GetCustLastName write SetCustLastName;
    property FullAddress: IJanuaField read GetFullAddress write SetFullAddress;
    property CustCellular: IJanuaField read GetCustCellular write SetCustCellular;
    property CustEmail: IJanuaField read GetCustEmail write SetCustEmail;
    property PickupAddress: IJanuaField read GetPickupAddress write SetPickupAddress;
    property ReturnAddress: IJanuaField read GetReturnAddress write SetReturnAddress;
    property PickupTime: IJanuaField read GetPickupTime write SetPickupTime;
    property ReturnTime: IJanuaField read GetReturnTime write SetReturnTime;
    property PickupDate: IJanuaField read GetPickupDate write SetPickupDate;
    property ReturnDate: IJanuaField read GetReturnDate write SetReturnDate;
    property Driver1Id: IJanuaField read GetDriver1Id write SetDriver1Id;
    property Driver2Id: IJanuaField read GetDriver2Id write SetDriver2Id;
    property Driver1Email: IJanuaField read GetDriver1Email write SetDriver1Email;
    property Driver2Email: IJanuaField read GetDriver2Email write SetDriver2Email;
    property Driver1Cellular: IJanuaField read GetDriver1Cellular write SetDriver1Cellular;
    property Driver2Cellular: IJanuaField read GetDriver2Cellular write SetDriver2Cellular;
    property PickupJguid: IJanuaField read GetPickupJguid write SetPickupJguid;
    property ReturnJguid: IJanuaField read GetReturnJguid write SetReturnJguid;
    property Pickup2Address: IJanuaField read GetPickup2Address;
    property Return2Address: IJanuaField read GetReturn2Address;
  end;

  TCustomBookingHeadViews = class(TJanuaRecordSet, IJanuaRecordSet, ICustomBookingHeadViews)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    function GetStateId: IJanuaField;
    procedure SetStateId(const Value: IJanuaField);
    function GetBranchId: IJanuaField;
    procedure SetBranchId(const Value: IJanuaField);
    function GetVehicleModel: IJanuaField;
    procedure SetVehicleModel(const Value: IJanuaField);
    function GetVehicleColor: IJanuaField;
    procedure SetVehicleColor(const Value: IJanuaField);
    function GetVehicleNumberplate: IJanuaField;
    procedure SetVehicleNumberplate(const Value: IJanuaField);
    function GetPickupDay: IJanuaField;
    procedure SetPickupDay(const Value: IJanuaField);
    function GetPickupSlotId: IJanuaField;
    procedure SetPickupSlotId(const Value: IJanuaField);
    function GetReturnDay: IJanuaField;
    procedure SetReturnDay(const Value: IJanuaField);
    function GetReturnSlotId: IJanuaField;
    procedure SetReturnSlotId(const Value: IJanuaField);
    function GetAnLastName: IJanuaField;
    procedure SetAnLastName(const Value: IJanuaField);
    function GetAnVatId: IJanuaField;
    procedure SetAnVatId(const Value: IJanuaField);
    function GetAnAddress: IJanuaField;
    procedure SetAnAddress(const Value: IJanuaField);
    function GetAnPostalCode: IJanuaField;
    procedure SetAnPostalCode(const Value: IJanuaField);
    function GetAnFiscalCode: IJanuaField;
    procedure SetAnFiscalCode(const Value: IJanuaField);
    function GetAnTown: IJanuaField;
    procedure SetAnTown(const Value: IJanuaField);
    function GetServiceName: IJanuaField;
    procedure SetServiceName(const Value: IJanuaField);
    function GetServiceAddress: IJanuaField;
    procedure SetServiceAddress(const Value: IJanuaField);
    function GetAnPhone: IJanuaField;
    procedure SetAnPhone(const Value: IJanuaField);
    function GetAnEmail: IJanuaField;
    procedure SetAnEmail(const Value: IJanuaField);
    function GetAnCellular: IJanuaField;
    procedure SetAnCellular(const Value: IJanuaField);
    function GetBranchAddress: IJanuaField;
    procedure SetBranchAddress(const Value: IJanuaField);
    function GetBranchPostalCode: IJanuaField;
    procedure SetBranchPostalCode(const Value: IJanuaField);
    function GetBranchTown: IJanuaField;
    procedure SetBranchTown(const Value: IJanuaField);
    function GetBranchPhone: IJanuaField;
    procedure SetBranchPhone(const Value: IJanuaField);
    function GetCustFirstName: IJanuaField;
    procedure SetCustFirstName(const Value: IJanuaField);
    function GetCustLastName: IJanuaField;
    procedure SetCustLastName(const Value: IJanuaField);
    function GetFullAddress: IJanuaField;
    procedure SetFullAddress(const Value: IJanuaField);
    function GetCustCellular: IJanuaField;
    procedure SetCustCellular(const Value: IJanuaField);
    function GetCustEmail: IJanuaField;
    procedure SetCustEmail(const Value: IJanuaField);
    function GetPickupAddress: IJanuaField;
    procedure SetPickupAddress(const Value: IJanuaField);
    function GetReturnAddress: IJanuaField;
    procedure SetReturnAddress(const Value: IJanuaField);
    function GetPickupTime: IJanuaField;
    procedure SetPickupTime(const Value: IJanuaField);
    function GetReturnTime: IJanuaField;
    procedure SetReturnTime(const Value: IJanuaField);
    function GetPickupDate: IJanuaField;
    procedure SetPickupDate(const Value: IJanuaField);
    function GetReturnDate: IJanuaField;
    procedure SetReturnDate(const Value: IJanuaField);
    function GetDriver1Id: IJanuaField;
    procedure SetDriver1Id(const Value: IJanuaField);
    function GetDriver2Id: IJanuaField;
    procedure SetDriver2Id(const Value: IJanuaField);
    function GetDriver1Email: IJanuaField;
    procedure SetDriver1Email(const Value: IJanuaField);
    function GetDriver2Email: IJanuaField;
    procedure SetDriver2Email(const Value: IJanuaField);
    function GetDriver1Cellular: IJanuaField;
    procedure SetDriver1Cellular(const Value: IJanuaField);
    function GetDriver2Cellular: IJanuaField;
    procedure SetDriver2Cellular(const Value: IJanuaField);
    function GetPickupJguid: IJanuaField;
    procedure SetPickupJguid(const Value: IJanuaField);
    function GetReturnJguid: IJanuaField;
    procedure SetReturnJguid(const Value: IJanuaField);
    function GetPickup2Address: IJanuaField;
    function GetReturn2Address: IJanuaField;
  strict protected
    // procedure SetCustomBookingHeadView();
    function GetCustomBookingHeadView: TCustomBookingHeadView;
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    property StateId: IJanuaField read GetStateId write SetStateId;
    property BranchId: IJanuaField read GetBranchId write SetBranchId;
    property VehicleModel: IJanuaField read GetVehicleModel write SetVehicleModel;
    property VehicleColor: IJanuaField read GetVehicleColor write SetVehicleColor;
    property VehicleNumberplate: IJanuaField read GetVehicleNumberplate write SetVehicleNumberplate;
    property PickupDay: IJanuaField read GetPickupDay write SetPickupDay;
    property PickupSlotId: IJanuaField read GetPickupSlotId write SetPickupSlotId;
    property ReturnDay: IJanuaField read GetReturnDay write SetReturnDay;
    property ReturnSlotId: IJanuaField read GetReturnSlotId write SetReturnSlotId;
    property AnLastName: IJanuaField read GetAnLastName write SetAnLastName;
    property AnVatId: IJanuaField read GetAnVatId write SetAnVatId;
    property AnAddress: IJanuaField read GetAnAddress write SetAnAddress;
    property AnPostalCode: IJanuaField read GetAnPostalCode write SetAnPostalCode;
    property AnFiscalCode: IJanuaField read GetAnFiscalCode write SetAnFiscalCode;
    property AnTown: IJanuaField read GetAnTown write SetAnTown;
    property ServiceName: IJanuaField read GetServiceName write SetServiceName;
    property ServiceAddress: IJanuaField read GetServiceAddress write SetServiceAddress;
    property AnPhone: IJanuaField read GetAnPhone write SetAnPhone;
    property AnEmail: IJanuaField read GetAnEmail write SetAnEmail;
    property AnCellular: IJanuaField read GetAnCellular write SetAnCellular;
    property BranchAddress: IJanuaField read GetBranchAddress write SetBranchAddress;
    property BranchPostalCode: IJanuaField read GetBranchPostalCode write SetBranchPostalCode;
    property BranchTown: IJanuaField read GetBranchTown write SetBranchTown;
    property BranchPhone: IJanuaField read GetBranchPhone write SetBranchPhone;
    property CustFirstName: IJanuaField read GetCustFirstName write SetCustFirstName;
    property CustLastName: IJanuaField read GetCustLastName write SetCustLastName;
    property FullAddress: IJanuaField read GetFullAddress write SetFullAddress;
    property CustCellular: IJanuaField read GetCustCellular write SetCustCellular;
    property CustEmail: IJanuaField read GetCustEmail write SetCustEmail;
    property PickupAddress: IJanuaField read GetPickupAddress write SetPickupAddress;
    property ReturnAddress: IJanuaField read GetReturnAddress write SetReturnAddress;
    property PickupTime: IJanuaField read GetPickupTime write SetPickupTime;
    property ReturnTime: IJanuaField read GetReturnTime write SetReturnTime;
    property PickupDate: IJanuaField read GetPickupDate write SetPickupDate;
    property ReturnDate: IJanuaField read GetReturnDate write SetReturnDate;
    property Driver1Id: IJanuaField read GetDriver1Id write SetDriver1Id;
    property Driver2Id: IJanuaField read GetDriver2Id write SetDriver2Id;
    property Driver1Email: IJanuaField read GetDriver1Email write SetDriver1Email;
    property Driver2Email: IJanuaField read GetDriver2Email write SetDriver2Email;
    property Driver1Cellular: IJanuaField read GetDriver1Cellular write SetDriver1Cellular;
    property Driver2Cellular: IJanuaField read GetDriver2Cellular write SetDriver2Cellular;
    property PickupJguid: IJanuaField read GetPickupJguid write SetPickupJguid;
    property ReturnJguid: IJanuaField read GetReturnJguid write SetReturnJguid;
    property Pickup2Address: IJanuaField read GetPickup2Address;
    property Return2Address: IJanuaField read GetReturn2Address;
  end;

implementation

// ------------------------------------------ Impl Tbooking_head_view -------------------------------

{ TCustomBookingHeadView }

constructor TCustomBookingHeadView.Create;
begin
  inherited;
  FPrefix := 'bkn';
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FUserInsert := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FCustomerId := AddCreateField(TJanuaFieldType.jptInteger, 'customer_id', 'customer_id');
  FStateId := AddCreateField(TJanuaFieldType.jptSmallint, 'state_id', 'state_id');
  FBranchId := AddCreateField(TJanuaFieldType.jptInteger, 'branch_id', 'branch_id');
  FVehicleModel := AddCreateField(TJanuaFieldType.jptString, 'vehicle_model', 'vehicle_model');
  FVehicleColor := AddCreateField(TJanuaFieldType.jptString, 'vehicle_color', 'vehicle_color');
  FVehicleNumberplate := AddCreateField(TJanuaFieldType.jptString, 'vehicle_numberplate',
    'vehicle_numberplate');
  FPickupDay := AddCreateField(TJanuaFieldType.jptDate, 'pickup_day', 'pickup_day');
  FPickupSlotId := AddCreateField(TJanuaFieldType.jptSmallint, 'pickup_slot_id', 'pickup_slot_id');
  FReturnDay := AddCreateField(TJanuaFieldType.jptDate, 'return_day', 'return_day');
  FReturnSlotId := AddCreateField(TJanuaFieldType.jptSmallint, 'return_slot_id', 'return_slot_id');
  FAnLastName := AddCreateField(TJanuaFieldType.jptString, 'an_last_name', 'an_last_name');
  FAnVatId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_vat_id', 'an_vat_id');
  FAnAddress := AddCreateField(TJanuaFieldType.jptString, 'an_address', 'an_address');
  FAnPostalCode := AddCreateField(TJanuaFieldType.jptString, 'an_postal_code', 'an_postal_code');
  FAnFiscalCode := AddCreateField(TJanuaFieldType.jptString, 'an_fiscal_code', 'an_fiscal_code');
  FAnTown := AddCreateField(TJanuaFieldType.jptString, 'an_town', 'an_town');
  FServiceName := AddCreateField(TJanuaFieldType.jptString, 'service_name', 'service_name');
  FServiceAddress := AddCreateField(TJanuaFieldType.jptText, 'service_address', 'service_address');
  FAnPhone := AddCreateField(TJanuaFieldType.jptString, 'an_phone', 'an_phone');
  FAnEmail := AddCreateField(TJanuaFieldType.jptString, 'an_email', 'an_email');
  FAnCellular := AddCreateField(TJanuaFieldType.jptString, 'an_cellular', 'an_cellular');
  FBranchAddress := AddCreateField(TJanuaFieldType.jptString, 'branch_address', 'branch_address');
  FBranchPostalCode := AddCreateField(TJanuaFieldType.jptString, 'branch_postal_code', 'branch_postal_code');
  FBranchTown := AddCreateField(TJanuaFieldType.jptString, 'branch_town', 'branch_town');
  FBranchPhone := AddCreateField(TJanuaFieldType.jptString, 'branch_phone', 'branch_phone');
  FCustFirstName := AddCreateField(TJanuaFieldType.jptString, 'cust_first_name', 'cust_first_name');
  FCustLastName := AddCreateField(TJanuaFieldType.jptString, 'cust_last_name', 'cust_last_name');
  FFullAddress := AddCreateField(TJanuaFieldType.jptString, 'full_address', 'full_address');
  FCustCellular := AddCreateField(TJanuaFieldType.jptString, 'cust_cellular', 'cust_cellular');
  FCustEmail := AddCreateField(TJanuaFieldType.jptString, 'cust_email', 'cust_email');
  FPickupAddress := AddCreateField(TJanuaFieldType.jptText, 'pickup_address', 'pickup_address');
  FReturnAddress := AddCreateField(TJanuaFieldType.jptText, 'return_address', 'return_address');
  FPickupTime := AddCreateField(TJanuaFieldType.jptString, 'pickup_time', 'pickup_time');
  FReturnTime := AddCreateField(TJanuaFieldType.jptString, 'return_time', 'return_time');
  FPickupDate := AddCreateField(TJanuaFieldType.jptDate, 'pickup_date', 'pickup_date');
  FReturnDate := AddCreateField(TJanuaFieldType.jptDate, 'return_date', 'return_date');
  FDriver1Id := AddCreateField(TJanuaFieldType.jptInteger, 'driver1_id', 'driver1_id');
  FDriver2Id := AddCreateField(TJanuaFieldType.jptInteger, 'driver2_id', 'driver2_id');
  FDriver1Email := AddCreateField(TJanuaFieldType.jptString, 'driver1_email', 'driver1_email');
  FDriver2Email := AddCreateField(TJanuaFieldType.jptString, 'driver2_email', 'driver2_email');
  FDriver1Cellular := AddCreateField(TJanuaFieldType.jptString, 'driver1_cellular', 'driver1_cellular');
  FDriver2Cellular := AddCreateField(TJanuaFieldType.jptString, 'driver2_cellular', 'driver2_cellular');
  FPickupJguid := AddCreateField(TJanuaFieldType.jptGUID, 'pickup_jguid', 'pickup_jguid');
  FReturnJguid := AddCreateField(TJanuaFieldType.jptGUID, 'return_jguid', 'return_jguid');
  FPickup2Address := AddCreateField(TJanuaFieldType.jptString, 'pickup2_address', 'pickup2_address');
  FReturn2Address := AddCreateField(TJanuaFieldType.jptString, 'return2_address', 'return2_address');
end;

function TCustomBookingHeadView.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomBookingHeadView.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomBookingHeadView.GetOfficeId: IJanuaField;
begin
  Result := FOfficeId;
end;

procedure TCustomBookingHeadView.SetOfficeId(const Value: IJanuaField);
begin
  FOfficeId := Value;
end;

function TCustomBookingHeadView.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomBookingHeadView.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomBookingHeadView.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomBookingHeadView.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomBookingHeadView.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomBookingHeadView.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomBookingHeadView.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomBookingHeadView.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomBookingHeadView.GetCustomerId: IJanuaField;
begin
  Result := FCustomerId;
end;

procedure TCustomBookingHeadView.SetCustomerId(const Value: IJanuaField);
begin
  FCustomerId := Value;
end;

function TCustomBookingHeadView.GetStateId: IJanuaField;
begin
  Result := FStateId;
end;

procedure TCustomBookingHeadView.SetStateId(const Value: IJanuaField);
begin
  FStateId := Value;
end;

function TCustomBookingHeadView.GetBranchId: IJanuaField;
begin
  Result := FBranchId;
end;

procedure TCustomBookingHeadView.SetBranchId(const Value: IJanuaField);
begin
  FBranchId := Value;
end;

function TCustomBookingHeadView.GetVehicleModel: IJanuaField;
begin
  Result := FVehicleModel;
end;

procedure TCustomBookingHeadView.SetVehicleModel(const Value: IJanuaField);
begin
  FVehicleModel := Value;
end;

function TCustomBookingHeadView.GetVehicleColor: IJanuaField;
begin
  Result := FVehicleColor;
end;

procedure TCustomBookingHeadView.SetVehicleColor(const Value: IJanuaField);
begin
  FVehicleColor := Value;
end;

function TCustomBookingHeadView.GetVehicleNumberplate: IJanuaField;
begin
  Result := FVehicleNumberplate;
end;

procedure TCustomBookingHeadView.SetVehicleNumberplate(const Value: IJanuaField);
begin
  FVehicleNumberplate := Value;
end;

function TCustomBookingHeadView.GetPickupDay: IJanuaField;
begin
  Result := FPickupDay;
end;

procedure TCustomBookingHeadView.SetPickupDay(const Value: IJanuaField);
begin
  FPickupDay := Value;
end;

function TCustomBookingHeadView.GetPickupSlotId: IJanuaField;
begin
  Result := FPickupSlotId;
end;

procedure TCustomBookingHeadView.SetPickupSlotId(const Value: IJanuaField);
begin
  FPickupSlotId := Value;
end;

function TCustomBookingHeadView.GetReturnDay: IJanuaField;
begin
  Result := FReturnDay;
end;

procedure TCustomBookingHeadView.SetReturnDay(const Value: IJanuaField);
begin
  FReturnDay := Value;
end;

function TCustomBookingHeadView.GetReturnSlotId: IJanuaField;
begin
  Result := FReturnSlotId;
end;

procedure TCustomBookingHeadView.SetReturnSlotId(const Value: IJanuaField);
begin
  FReturnSlotId := Value;
end;

function TCustomBookingHeadView.GetAnLastName: IJanuaField;
begin
  Result := FAnLastName;
end;

procedure TCustomBookingHeadView.SetAnLastName(const Value: IJanuaField);
begin
  FAnLastName := Value;
end;

function TCustomBookingHeadView.GetAnVatId: IJanuaField;
begin
  Result := FAnVatId;
end;

procedure TCustomBookingHeadView.SetAnVatId(const Value: IJanuaField);
begin
  FAnVatId := Value;
end;

function TCustomBookingHeadView.GetAnAddress: IJanuaField;
begin
  Result := FAnAddress;
end;

procedure TCustomBookingHeadView.SetAnAddress(const Value: IJanuaField);
begin
  FAnAddress := Value;
end;

function TCustomBookingHeadView.GetAnPostalCode: IJanuaField;
begin
  Result := FAnPostalCode;
end;

procedure TCustomBookingHeadView.SetAnPostalCode(const Value: IJanuaField);
begin
  FAnPostalCode := Value;
end;

function TCustomBookingHeadView.GetAnFiscalCode: IJanuaField;
begin
  Result := FAnFiscalCode;
end;

procedure TCustomBookingHeadView.SetAnFiscalCode(const Value: IJanuaField);
begin
  FAnFiscalCode := Value;
end;

function TCustomBookingHeadView.GetAnTown: IJanuaField;
begin
  Result := FAnTown;
end;

procedure TCustomBookingHeadView.SetAnTown(const Value: IJanuaField);
begin
  FAnTown := Value;
end;

function TCustomBookingHeadView.GetServiceName: IJanuaField;
begin
  Result := FServiceName;
end;

procedure TCustomBookingHeadView.SetServiceName(const Value: IJanuaField);
begin
  FServiceName := Value;
end;

function TCustomBookingHeadView.GetServiceAddress: IJanuaField;
begin
  Result := FServiceAddress;
end;

procedure TCustomBookingHeadView.SetServiceAddress(const Value: IJanuaField);
begin
  FServiceAddress := Value;
end;

function TCustomBookingHeadView.GetAnPhone: IJanuaField;
begin
  Result := FAnPhone;
end;

procedure TCustomBookingHeadView.SetAnPhone(const Value: IJanuaField);
begin
  FAnPhone := Value;
end;

function TCustomBookingHeadView.GetAnEmail: IJanuaField;
begin
  Result := FAnEmail;
end;

procedure TCustomBookingHeadView.SetAnEmail(const Value: IJanuaField);
begin
  FAnEmail := Value;
end;

function TCustomBookingHeadView.GetAnCellular: IJanuaField;
begin
  Result := FAnCellular;
end;

procedure TCustomBookingHeadView.SetAnCellular(const Value: IJanuaField);
begin
  FAnCellular := Value;
end;

function TCustomBookingHeadView.GetBranchAddress: IJanuaField;
begin
  Result := FBranchAddress;
end;

procedure TCustomBookingHeadView.SetBranchAddress(const Value: IJanuaField);
begin
  FBranchAddress := Value;
end;

function TCustomBookingHeadView.GetBranchPostalCode: IJanuaField;
begin
  Result := FBranchPostalCode;
end;

procedure TCustomBookingHeadView.SetBranchPostalCode(const Value: IJanuaField);
begin
  FBranchPostalCode := Value;
end;

function TCustomBookingHeadView.GetBranchTown: IJanuaField;
begin
  Result := FBranchTown;
end;

procedure TCustomBookingHeadView.SetBranchTown(const Value: IJanuaField);
begin
  FBranchTown := Value;
end;

function TCustomBookingHeadView.GetBranchPhone: IJanuaField;
begin
  Result := FBranchPhone;
end;

procedure TCustomBookingHeadView.SetBranchPhone(const Value: IJanuaField);
begin
  FBranchPhone := Value;
end;

function TCustomBookingHeadView.GetCustFirstName: IJanuaField;
begin
  Result := FCustFirstName;
end;

procedure TCustomBookingHeadView.SetCustFirstName(const Value: IJanuaField);
begin
  FCustFirstName := Value;
end;

function TCustomBookingHeadView.GetCustLastName: IJanuaField;
begin
  Result := FCustLastName;
end;

procedure TCustomBookingHeadView.SetCustLastName(const Value: IJanuaField);
begin
  FCustLastName := Value;
end;

function TCustomBookingHeadView.GetFullAddress: IJanuaField;
begin
  Result := FFullAddress;
end;

procedure TCustomBookingHeadView.SetFullAddress(const Value: IJanuaField);
begin
  FFullAddress := Value;
end;

function TCustomBookingHeadView.GetCustCellular: IJanuaField;
begin
  Result := FCustCellular;
end;

procedure TCustomBookingHeadView.SetCustCellular(const Value: IJanuaField);
begin
  FCustCellular := Value;
end;

function TCustomBookingHeadView.GetCustEmail: IJanuaField;
begin
  Result := FCustEmail;
end;

procedure TCustomBookingHeadView.SetCustEmail(const Value: IJanuaField);
begin
  FCustEmail := Value;
end;

function TCustomBookingHeadView.GetPickup2Address: IJanuaField;
begin
  Result := FPickup2Address;
end;

function TCustomBookingHeadView.GetPickupAddress: IJanuaField;
begin
  Result := FPickupAddress;
end;

procedure TCustomBookingHeadView.SetPickupAddress(const Value: IJanuaField);
begin
  FPickupAddress := Value;
end;

function TCustomBookingHeadView.GetReturn2Address: IJanuaField;
begin
  Result := FReturn2Address;
end;

function TCustomBookingHeadView.GetReturnAddress: IJanuaField;
begin
  Result := FReturnAddress;
end;

procedure TCustomBookingHeadView.SetReturnAddress(const Value: IJanuaField);
begin
  FReturnAddress := Value;
end;

function TCustomBookingHeadView.GetPickupTime: IJanuaField;
begin
  Result := FPickupTime;
end;

procedure TCustomBookingHeadView.SetPickupTime(const Value: IJanuaField);
begin
  FPickupTime := Value;
end;

function TCustomBookingHeadView.GetReturnTime: IJanuaField;
begin
  Result := FReturnTime;
end;

procedure TCustomBookingHeadView.SetReturnTime(const Value: IJanuaField);
begin
  FReturnTime := Value;
end;

function TCustomBookingHeadView.GetPickupDate: IJanuaField;
begin
  Result := FPickupDate;
end;

procedure TCustomBookingHeadView.SetPickupDate(const Value: IJanuaField);
begin
  FPickupDate := Value;
end;

function TCustomBookingHeadView.GetReturnDate: IJanuaField;
begin
  Result := FReturnDate;
end;

procedure TCustomBookingHeadView.SetReturnDate(const Value: IJanuaField);
begin
  FReturnDate := Value;
end;

function TCustomBookingHeadView.GetDriver1Id: IJanuaField;
begin
  Result := FDriver1Id;
end;

procedure TCustomBookingHeadView.SetDriver1Id(const Value: IJanuaField);
begin
  FDriver1Id := Value;
end;

function TCustomBookingHeadView.GetDriver2Id: IJanuaField;
begin
  Result := FDriver2Id;
end;

procedure TCustomBookingHeadView.SetDriver2Id(const Value: IJanuaField);
begin
  FDriver2Id := Value;
end;

function TCustomBookingHeadView.GetDriver1Email: IJanuaField;
begin
  Result := FDriver1Email;
end;

procedure TCustomBookingHeadView.SetDriver1Email(const Value: IJanuaField);
begin
  FDriver1Email := Value;
end;

function TCustomBookingHeadView.GetDriver2Email: IJanuaField;
begin
  Result := FDriver2Email;
end;

procedure TCustomBookingHeadView.SetDriver2Email(const Value: IJanuaField);
begin
  FDriver2Email := Value;
end;

function TCustomBookingHeadView.GetDriver1Cellular: IJanuaField;
begin
  Result := FDriver1Cellular;
end;

procedure TCustomBookingHeadView.SetDriver1Cellular(const Value: IJanuaField);
begin
  FDriver1Cellular := Value;
end;

function TCustomBookingHeadView.GetDriver2Cellular: IJanuaField;
begin
  Result := FDriver2Cellular;
end;

procedure TCustomBookingHeadView.SetDriver2Cellular(const Value: IJanuaField);
begin
  FDriver2Cellular := Value;
end;

function TCustomBookingHeadView.GetPickupJguid: IJanuaField;
begin
  Result := FPickupJguid;
end;

procedure TCustomBookingHeadView.SetPickupJguid(const Value: IJanuaField);
begin
  FPickupJguid := Value;
end;

function TCustomBookingHeadView.GetReturnJguid: IJanuaField;
begin
  Result := FReturnJguid;
end;

procedure TCustomBookingHeadView.SetReturnJguid(const Value: IJanuaField);
begin
  FReturnJguid := Value;
end;

{ TCustomBookingHeadViews }
constructor TCustomBookingHeadViews.Create;
begin
  inherited;
end;

function TCustomBookingHeadViews.GetId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Id;
end;

procedure TCustomBookingHeadViews.SetId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Id := Value;
end;

function TCustomBookingHeadViews.GetOfficeId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.OfficeId;
end;

procedure TCustomBookingHeadViews.SetOfficeId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.OfficeId := Value;
end;

function TCustomBookingHeadViews.GetJguid: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Jguid;
end;

procedure TCustomBookingHeadViews.SetJguid(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Jguid := Value;
end;

function TCustomBookingHeadViews.GetDbSchemaId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.DbSchemaId;
end;

procedure TCustomBookingHeadViews.SetDbSchemaId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.DbSchemaId := Value;
end;

function TCustomBookingHeadViews.GetUserInsert: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.UserInsert;
end;

procedure TCustomBookingHeadViews.SetUserInsert(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.UserInsert := Value;
end;

function TCustomBookingHeadViews.GetInsertDate: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.InsertDate;
end;

procedure TCustomBookingHeadViews.SetInsertDate(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.InsertDate := Value;
end;

function TCustomBookingHeadViews.GetCustomBookingHeadView: TCustomBookingHeadView;
begin
  Result := FRecord as TCustomBookingHeadView
end;

function TCustomBookingHeadViews.GetCustomerId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.CustomerId;
end;

procedure TCustomBookingHeadViews.SetCustomerId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.CustomerId := Value;
end;

function TCustomBookingHeadViews.GetStateId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.StateId;
end;

procedure TCustomBookingHeadViews.SetStateId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.StateId := Value;
end;

function TCustomBookingHeadViews.GetBranchId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.BranchId;
end;

procedure TCustomBookingHeadViews.SetBranchId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.BranchId := Value;
end;

function TCustomBookingHeadViews.GetVehicleModel: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.VehicleModel;
end;

procedure TCustomBookingHeadViews.SetVehicleModel(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.VehicleModel := Value;
end;

function TCustomBookingHeadViews.GetVehicleColor: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.VehicleColor;
end;

procedure TCustomBookingHeadViews.SetVehicleColor(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.VehicleColor := Value;
end;

function TCustomBookingHeadViews.GetVehicleNumberplate: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.VehicleNumberplate;
end;

procedure TCustomBookingHeadViews.SetVehicleNumberplate(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.VehicleNumberplate := Value;
end;

function TCustomBookingHeadViews.GetPickupDay: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.PickupDay;
end;

procedure TCustomBookingHeadViews.SetPickupDay(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.PickupDay := Value;
end;

function TCustomBookingHeadViews.GetPickupSlotId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.PickupSlotId;
end;

procedure TCustomBookingHeadViews.SetPickupSlotId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.PickupSlotId := Value;
end;

function TCustomBookingHeadViews.GetReturnDay: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ReturnDay;
end;

procedure TCustomBookingHeadViews.SetReturnDay(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ReturnDay := Value;
end;

function TCustomBookingHeadViews.GetReturnSlotId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ReturnSlotId;
end;

procedure TCustomBookingHeadViews.SetReturnSlotId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ReturnSlotId := Value;
end;

function TCustomBookingHeadViews.GetAnLastName: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnLastName;
end;

procedure TCustomBookingHeadViews.SetAnLastName(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnLastName := Value;
end;

function TCustomBookingHeadViews.GetAnVatId: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnVatId;
end;

procedure TCustomBookingHeadViews.SetAnVatId(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnVatId := Value;
end;

function TCustomBookingHeadViews.GetAnAddress: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnAddress;
end;

procedure TCustomBookingHeadViews.SetAnAddress(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnAddress := Value;
end;

function TCustomBookingHeadViews.GetAnPostalCode: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnPostalCode;
end;

procedure TCustomBookingHeadViews.SetAnPostalCode(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnPostalCode := Value;
end;

function TCustomBookingHeadViews.GetAnFiscalCode: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnFiscalCode;
end;

procedure TCustomBookingHeadViews.SetAnFiscalCode(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnFiscalCode := Value;
end;

function TCustomBookingHeadViews.GetAnTown: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnTown;
end;

procedure TCustomBookingHeadViews.SetAnTown(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnTown := Value;
end;

function TCustomBookingHeadViews.GetServiceName: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ServiceName;
end;

procedure TCustomBookingHeadViews.SetServiceName(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ServiceName := Value;
end;

function TCustomBookingHeadViews.GetServiceAddress: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ServiceAddress;
end;

procedure TCustomBookingHeadViews.SetServiceAddress(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ServiceAddress := Value;
end;

function TCustomBookingHeadViews.GetAnPhone: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnPhone;
end;

procedure TCustomBookingHeadViews.SetAnPhone(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnPhone := Value;
end;

function TCustomBookingHeadViews.GetAnEmail: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnEmail;
end;

procedure TCustomBookingHeadViews.SetAnEmail(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnEmail := Value;
end;

function TCustomBookingHeadViews.GetAnCellular: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.AnCellular;
end;

procedure TCustomBookingHeadViews.SetAnCellular(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.AnCellular := Value;
end;

function TCustomBookingHeadViews.GetBranchAddress: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.BranchAddress;
end;

procedure TCustomBookingHeadViews.SetBranchAddress(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.BranchAddress := Value;
end;

function TCustomBookingHeadViews.GetBranchPostalCode: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.BranchPostalCode;
end;

procedure TCustomBookingHeadViews.SetBranchPostalCode(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.BranchPostalCode := Value;
end;

function TCustomBookingHeadViews.GetBranchTown: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.BranchTown;
end;

procedure TCustomBookingHeadViews.SetBranchTown(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.BranchTown := Value;
end;

function TCustomBookingHeadViews.GetBranchPhone: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.BranchPhone;
end;

procedure TCustomBookingHeadViews.SetBranchPhone(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.BranchPhone := Value;
end;

function TCustomBookingHeadViews.GetCustFirstName: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.CustFirstName;
end;

procedure TCustomBookingHeadViews.SetCustFirstName(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.CustFirstName := Value;
end;

function TCustomBookingHeadViews.GetCustLastName: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.CustLastName;
end;

procedure TCustomBookingHeadViews.SetCustLastName(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.CustLastName := Value;
end;

function TCustomBookingHeadViews.GetFullAddress: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.FullAddress;
end;

procedure TCustomBookingHeadViews.SetFullAddress(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.FullAddress := Value;
end;

function TCustomBookingHeadViews.GetCustCellular: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.CustCellular;
end;

procedure TCustomBookingHeadViews.SetCustCellular(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.CustCellular := Value;
end;

function TCustomBookingHeadViews.GetCustEmail: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.CustEmail;
end;

procedure TCustomBookingHeadViews.SetCustEmail(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.CustEmail := Value;
end;

function TCustomBookingHeadViews.GetPickup2Address: IJanuaField;
begin
  Result := GetCustomBookingHeadView.Pickup2Address;
end;

function TCustomBookingHeadViews.GetPickupAddress: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.PickupAddress;
end;

procedure TCustomBookingHeadViews.SetPickupAddress(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.PickupAddress := Value;
end;

function TCustomBookingHeadViews.GetReturn2Address: IJanuaField;
begin
  Result := GetCustomBookingHeadView.Return2Address;
end;

function TCustomBookingHeadViews.GetReturnAddress: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ReturnAddress;
end;

procedure TCustomBookingHeadViews.SetReturnAddress(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ReturnAddress := Value;
end;

function TCustomBookingHeadViews.GetPickupTime: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.PickupTime;
end;

procedure TCustomBookingHeadViews.SetPickupTime(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.PickupTime := Value;
end;

function TCustomBookingHeadViews.GetReturnTime: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ReturnTime;
end;

procedure TCustomBookingHeadViews.SetReturnTime(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ReturnTime := Value;
end;

function TCustomBookingHeadViews.GetPickupDate: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.PickupDate;
end;

procedure TCustomBookingHeadViews.SetPickupDate(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.PickupDate := Value;
end;

function TCustomBookingHeadViews.GetReturnDate: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ReturnDate;
end;

procedure TCustomBookingHeadViews.SetReturnDate(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ReturnDate := Value;
end;

function TCustomBookingHeadViews.GetDriver1Id: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Driver1Id;
end;

procedure TCustomBookingHeadViews.SetDriver1Id(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Driver1Id := Value;
end;

function TCustomBookingHeadViews.GetDriver2Id: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Driver2Id;
end;

procedure TCustomBookingHeadViews.SetDriver2Id(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Driver2Id := Value;
end;

function TCustomBookingHeadViews.GetDriver1Email: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Driver1Email;
end;

procedure TCustomBookingHeadViews.SetDriver1Email(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Driver1Email := Value;
end;

function TCustomBookingHeadViews.GetDriver2Email: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Driver2Email;
end;

procedure TCustomBookingHeadViews.SetDriver2Email(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Driver2Email := Value;
end;

function TCustomBookingHeadViews.GetDriver1Cellular: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Driver1Cellular;
end;

procedure TCustomBookingHeadViews.SetDriver1Cellular(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Driver1Cellular := Value;
end;

function TCustomBookingHeadViews.GetDriver2Cellular: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.Driver2Cellular;
end;

procedure TCustomBookingHeadViews.SetDriver2Cellular(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.Driver2Cellular := Value;
end;

function TCustomBookingHeadViews.GetPickupJguid: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.PickupJguid;
end;

procedure TCustomBookingHeadViews.SetPickupJguid(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.PickupJguid := Value;
end;

function TCustomBookingHeadViews.GetReturnJguid: IJanuaField;
begin
  Result := self.GetCustomBookingHeadView.ReturnJguid;
end;

procedure TCustomBookingHeadViews.SetReturnJguid(const Value: IJanuaField);
begin
  self.GetCustomBookingHeadView.ReturnJguid := Value;
end;

end.
