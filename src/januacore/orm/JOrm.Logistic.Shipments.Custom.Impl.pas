unit JOrm.Logistic.Shipments.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.Shipments.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomShipment = class(TJanuaRecord, IShipment)
  private
    FId: IJanuaField;
    FJguid: IJanuaField;
    FCreationDate: IJanuaField;
    FPickupDate: IJanuaField;
    FDeliveryDate: IJanuaField;
    FOfficeId: IJanuaField;
    FWorkflowUid: IJanuaField;
    FAgentId: IJanuaField;
    FShipperId: IJanuaField;
    FShipperAddress: IJanuaField;
    FPickupAddress: IJanuaField;
    FYear: IJanuaField;
    FGroupageNumber: IJanuaField;
    FExportTypeId: IJanuaField;
    FFullcontainer: IJanuaField;
    FVesselId: IJanuaField;
    FWorkCode: IJanuaField;
    FTravelIdentificationCode: IJanuaField;
    FCarrierId: IJanuaField;
    FCarrierCode: IJanuaField;
    FWorkflowId: IJanuaField;
    FPolId: IJanuaField;
    FPolCode: IJanuaField;
    FPolName: IJanuaField;
    FPodId: IJanuaField;
    FPodName: IJanuaField;
    FPodCode: IJanuaField;
    FCustomerId: IJanuaField;
    FNotes: IJanuaField;
    FWarehouseId: IJanuaField;
    FWorkDate: IJanuaField;
    FOrderState: IJanuaField;
    FAirportId: IJanuaField;
    FAirportCode: IJanuaField;
    FAwbNumber: IJanuaField;
    FInternalNotes: IJanuaField;
    FInternalNotes2: IJanuaField;
    FWarehouseNotes: IJanuaField;
    FRouteType: IJanuaField;
    FInternetVisible: IJanuaField;
    FFlagAir: IJanuaField;
    FFlagGround: IJanuaField;
    FDepartureDate: IJanuaField;
    FArrivalDate: IJanuaField;
    FPoState: IJanuaField;
    FPoLevel: IJanuaField;
    FFinalDate: IJanuaField;
    FFlgHouse: IJanuaField;
    FFlgMaster: IJanuaField;
    FDelivered: IJanuaField;
    FFlgBillable: IJanuaField;
    FCustomsDeclearer: IJanuaField;
    FCustomsDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FInsertDate: IJanuaField;
    FDeleted: IJanuaField;
    FDbSchemaId: IJanuaField;
    FWorkNumber: IJanuaField; // work_number
    FPoNumber: IJanuaField; // po_number
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCreationDate: IJanuaField;
    procedure SetCreationDate(const Value: IJanuaField);
    function GetPickupDate: IJanuaField;
    procedure SetPickupDate(const Value: IJanuaField);
    function GetDeliveryDate: IJanuaField;
    procedure SetDeliveryDate(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetWorkflowUid: IJanuaField;
    procedure SetWorkflowUid(const Value: IJanuaField);
    function GetAgentId: IJanuaField;
    procedure SetAgentId(const Value: IJanuaField);
    function GetShipperId: IJanuaField;
    procedure SetShipperId(const Value: IJanuaField);
    function GetShipperAddress: IJanuaField;
    procedure SetShipperAddress(const Value: IJanuaField);
    function GetPickupAddress: IJanuaField;
    procedure SetPickupAddress(const Value: IJanuaField);
    function GetYear: IJanuaField;
    procedure SetYear(const Value: IJanuaField);
    function GetGroupageNumber: IJanuaField;
    procedure SetGroupageNumber(const Value: IJanuaField);
    function GetExportTypeId: IJanuaField;
    procedure SetExportTypeId(const Value: IJanuaField);
    function GetFullcontainer: IJanuaField;
    procedure SetFullcontainer(const Value: IJanuaField);
    function GetVesselId: IJanuaField;
    procedure SetVesselId(const Value: IJanuaField);
    function GetWorkCode: IJanuaField;
    procedure SetWorkCode(const Value: IJanuaField);
    function GetTravelIdentificationCode: IJanuaField;
    procedure SetTravelIdentificationCode(const Value: IJanuaField);
    function GetCarrierId: IJanuaField;
    procedure SetCarrierId(const Value: IJanuaField);
    function GetCarrierCode: IJanuaField;
    procedure SetCarrierCode(const Value: IJanuaField);
    function GetWorkflowId: IJanuaField;
    procedure SetWorkflowId(const Value: IJanuaField);
    function GetPolId: IJanuaField;
    procedure SetPolId(const Value: IJanuaField);
    function GetPolCode: IJanuaField;
    procedure SetPolCode(const Value: IJanuaField);
    function GetPolName: IJanuaField;
    procedure SetPolName(const Value: IJanuaField);
    function GetPodId: IJanuaField;
    procedure SetPodId(const Value: IJanuaField);
    function GetPodName: IJanuaField;
    procedure SetPodName(const Value: IJanuaField);
    function GetPodCode: IJanuaField;
    procedure SetPodCode(const Value: IJanuaField);
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetWarehouseId: IJanuaField;
    procedure SetWarehouseId(const Value: IJanuaField);
    function GetWorkDate: IJanuaField;
    procedure SetWorkDate(const Value: IJanuaField);
    function GetOrderState: IJanuaField;
    procedure SetOrderState(const Value: IJanuaField);
    function GetAirportId: IJanuaField;
    procedure SetAirportId(const Value: IJanuaField);
    function GetAirportCode: IJanuaField;
    procedure SetAirportCode(const Value: IJanuaField);
    function GetAwbNumber: IJanuaField;
    procedure SetAwbNumber(const Value: IJanuaField);
    function GetInternalNotes: IJanuaField;
    procedure SetInternalNotes(const Value: IJanuaField);
    function GetInternalNotes2: IJanuaField;
    procedure SetInternalNotes2(const Value: IJanuaField);
    function GetWarehouseNotes: IJanuaField;
    procedure SetWarehouseNotes(const Value: IJanuaField);
    function GetRouteType: IJanuaField;
    procedure SetRouteType(const Value: IJanuaField);
    function GetInternetVisible: IJanuaField;
    procedure SetInternetVisible(const Value: IJanuaField);
    function GetFlagAir: IJanuaField;
    procedure SetFlagAir(const Value: IJanuaField);
    function GetFlagGround: IJanuaField;
    procedure SetFlagGround(const Value: IJanuaField);
    function GetDepartureDate: IJanuaField;
    procedure SetDepartureDate(const Value: IJanuaField);
    function GetArrivalDate: IJanuaField;
    procedure SetArrivalDate(const Value: IJanuaField);
    function GetPoState: IJanuaField;
    procedure SetPoState(const Value: IJanuaField);
    function GetPoLevel: IJanuaField;
    procedure SetPoLevel(const Value: IJanuaField);
    function GetFinalDate: IJanuaField;
    procedure SetFinalDate(const Value: IJanuaField);
    function GetFlgHouse: IJanuaField;
    procedure SetFlgHouse(const Value: IJanuaField);
    function GetFlgMaster: IJanuaField;
    procedure SetFlgMaster(const Value: IJanuaField);
    function GetDelivered: IJanuaField;
    procedure SetDelivered(const Value: IJanuaField);
    function GetFlgBillable: IJanuaField;
    procedure SetFlgBillable(const Value: IJanuaField);
    function GetCustomsDeclearer: IJanuaField;
    procedure SetCustomsDeclearer(const Value: IJanuaField);
    function GetCustomsDate: IJanuaField;
    procedure SetCustomsDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    // work_number
    function GetWorkNumber: IJanuaField;
    procedure SetWorkNumber(const Value: IJanuaField);
    // po_number
    function GetPoNumber: IJanuaField;
    procedure SetPoNumber(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CreationDate: IJanuaField read GetCreationDate write SetCreationDate;
    property PickupDate: IJanuaField read GetPickupDate write SetPickupDate;
    property DeliveryDate: IJanuaField read GetDeliveryDate write SetDeliveryDate;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property WorkflowUid: IJanuaField read GetWorkflowUid write SetWorkflowUid;
    property AgentId: IJanuaField read GetAgentId write SetAgentId;
    property ShipperId: IJanuaField read GetShipperId write SetShipperId;
    property ShipperAddress: IJanuaField read GetShipperAddress write SetShipperAddress;
    property PickupAddress: IJanuaField read GetPickupAddress write SetPickupAddress;
    property Year: IJanuaField read GetYear write SetYear;
    property GroupageNumber: IJanuaField read GetGroupageNumber write SetGroupageNumber;
    property ExportTypeId: IJanuaField read GetExportTypeId write SetExportTypeId;
    property Fullcontainer: IJanuaField read GetFullcontainer write SetFullcontainer;
    property VesselId: IJanuaField read GetVesselId write SetVesselId;
    property WorkCode: IJanuaField read GetWorkCode write SetWorkCode;
    property TravelIdentificationCode: IJanuaField read GetTravelIdentificationCode write SetTravelIdentificationCode;
    property CarrierId: IJanuaField read GetCarrierId write SetCarrierId;
    property CarrierCode: IJanuaField read GetCarrierCode write SetCarrierCode;
    property WorkflowId: IJanuaField read GetWorkflowId write SetWorkflowId;
    property PolId: IJanuaField read GetPolId write SetPolId;
    property PolCode: IJanuaField read GetPolCode write SetPolCode;
    property PolName: IJanuaField read GetPolName write SetPolName;
    property PodId: IJanuaField read GetPodId write SetPodId;
    property PodName: IJanuaField read GetPodName write SetPodName;
    property PodCode: IJanuaField read GetPodCode write SetPodCode;
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property WarehouseId: IJanuaField read GetWarehouseId write SetWarehouseId;
    property WorkDate: IJanuaField read GetWorkDate write SetWorkDate;
    property OrderState: IJanuaField read GetOrderState write SetOrderState;
    property AirportId: IJanuaField read GetAirportId write SetAirportId;
    property AirportCode: IJanuaField read GetAirportCode write SetAirportCode;
    property AwbNumber: IJanuaField read GetAwbNumber write SetAwbNumber;
    property InternalNotes: IJanuaField read GetInternalNotes write SetInternalNotes;
    property InternalNotes2: IJanuaField read GetInternalNotes2 write SetInternalNotes2;
    property WarehouseNotes: IJanuaField read GetWarehouseNotes write SetWarehouseNotes;
    property RouteType: IJanuaField read GetRouteType write SetRouteType;
    property InternetVisible: IJanuaField read GetInternetVisible write SetInternetVisible;
    property FlagAir: IJanuaField read GetFlagAir write SetFlagAir;
    property FlagGround: IJanuaField read GetFlagGround write SetFlagGround;
    property DepartureDate: IJanuaField read GetDepartureDate write SetDepartureDate;
    property ArrivalDate: IJanuaField read GetArrivalDate write SetArrivalDate;
    property PoState: IJanuaField read GetPoState write SetPoState;
    property PoLevel: IJanuaField read GetPoLevel write SetPoLevel;
    property FinalDate: IJanuaField read GetFinalDate write SetFinalDate;
    property FlgHouse: IJanuaField read GetFlgHouse write SetFlgHouse;
    property FlgMaster: IJanuaField read GetFlgMaster write SetFlgMaster;
    property Delivered: IJanuaField read GetDelivered write SetDelivered;
    property FlgBillable: IJanuaField read GetFlgBillable write SetFlgBillable;
    property CustomsDeclearer: IJanuaField read GetCustomsDeclearer write SetCustomsDeclearer;
    property CustomsDate: IJanuaField read GetCustomsDate write SetCustomsDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property WorkNumber: IJanuaField read GetWorkNumber write SetWorkNumber;
  end;

  TCustomShipments = class(TJanuaRecordSet, IJanuaRecordSet, IShipments)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCreationDate: IJanuaField;
    procedure SetCreationDate(const Value: IJanuaField);
    function GetPickupDate: IJanuaField;
    procedure SetPickupDate(const Value: IJanuaField);
    function GetDeliveryDate: IJanuaField;
    procedure SetDeliveryDate(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetWorkflowUid: IJanuaField;
    procedure SetWorkflowUid(const Value: IJanuaField);
    function GetAgentId: IJanuaField;
    procedure SetAgentId(const Value: IJanuaField);
    function GetShipperId: IJanuaField;
    procedure SetShipperId(const Value: IJanuaField);
    function GetShipperAddress: IJanuaField;
    procedure SetShipperAddress(const Value: IJanuaField);
    function GetPickupAddress: IJanuaField;
    procedure SetPickupAddress(const Value: IJanuaField);
    function GetYear: IJanuaField;
    procedure SetYear(const Value: IJanuaField);
    function GetGroupageNumber: IJanuaField;
    procedure SetGroupageNumber(const Value: IJanuaField);
    function GetExportTypeId: IJanuaField;
    procedure SetExportTypeId(const Value: IJanuaField);
    function GetFullcontainer: IJanuaField;
    procedure SetFullcontainer(const Value: IJanuaField);
    function GetVesselId: IJanuaField;
    procedure SetVesselId(const Value: IJanuaField);
    function GetWorkCode: IJanuaField;
    procedure SetWorkCode(const Value: IJanuaField);
    function GetTravelIdentificationCode: IJanuaField;
    procedure SetTravelIdentificationCode(const Value: IJanuaField);
    function GetCarrierId: IJanuaField;
    procedure SetCarrierId(const Value: IJanuaField);
    function GetCarrierCode: IJanuaField;
    procedure SetCarrierCode(const Value: IJanuaField);
    function GetWorkflowId: IJanuaField;
    procedure SetWorkflowId(const Value: IJanuaField);
    function GetPolId: IJanuaField;
    procedure SetPolId(const Value: IJanuaField);
    function GetPolCode: IJanuaField;
    procedure SetPolCode(const Value: IJanuaField);
    function GetPolName: IJanuaField;
    procedure SetPolName(const Value: IJanuaField);
    function GetPodId: IJanuaField;
    procedure SetPodId(const Value: IJanuaField);
    function GetPodName: IJanuaField;
    procedure SetPodName(const Value: IJanuaField);
    function GetPodCode: IJanuaField;
    procedure SetPodCode(const Value: IJanuaField);
    function GetCustomerId: IJanuaField;
    procedure SetCustomerId(const Value: IJanuaField);
    function GetNotes: IJanuaField;
    procedure SetNotes(const Value: IJanuaField);
    function GetWarehouseId: IJanuaField;
    procedure SetWarehouseId(const Value: IJanuaField);
    function GetWorkDate: IJanuaField;
    procedure SetWorkDate(const Value: IJanuaField);
    function GetOrderState: IJanuaField;
    procedure SetOrderState(const Value: IJanuaField);
    function GetAirportId: IJanuaField;
    procedure SetAirportId(const Value: IJanuaField);
    function GetAirportCode: IJanuaField;
    procedure SetAirportCode(const Value: IJanuaField);
    function GetAwbNumber: IJanuaField;
    procedure SetAwbNumber(const Value: IJanuaField);
    function GetInternalNotes: IJanuaField;
    procedure SetInternalNotes(const Value: IJanuaField);
    function GetInternalNotes2: IJanuaField;
    procedure SetInternalNotes2(const Value: IJanuaField);
    function GetWarehouseNotes: IJanuaField;
    procedure SetWarehouseNotes(const Value: IJanuaField);
    function GetRouteType: IJanuaField;
    procedure SetRouteType(const Value: IJanuaField);
    function GetInternetVisible: IJanuaField;
    procedure SetInternetVisible(const Value: IJanuaField);
    function GetFlagAir: IJanuaField;
    procedure SetFlagAir(const Value: IJanuaField);
    function GetFlagGround: IJanuaField;
    procedure SetFlagGround(const Value: IJanuaField);
    function GetDepartureDate: IJanuaField;
    procedure SetDepartureDate(const Value: IJanuaField);
    function GetArrivalDate: IJanuaField;
    procedure SetArrivalDate(const Value: IJanuaField);
    function GetPoState: IJanuaField;
    procedure SetPoState(const Value: IJanuaField);
    function GetPoLevel: IJanuaField;
    procedure SetPoLevel(const Value: IJanuaField);
    function GetFinalDate: IJanuaField;
    procedure SetFinalDate(const Value: IJanuaField);
    function GetFlgHouse: IJanuaField;
    procedure SetFlgHouse(const Value: IJanuaField);
    function GetFlgMaster: IJanuaField;
    procedure SetFlgMaster(const Value: IJanuaField);
    function GetDelivered: IJanuaField;
    procedure SetDelivered(const Value: IJanuaField);
    function GetFlgBillable: IJanuaField;
    procedure SetFlgBillable(const Value: IJanuaField);
    function GetCustomsDeclearer: IJanuaField;
    procedure SetCustomsDeclearer(const Value: IJanuaField);
    function GetCustomsDate: IJanuaField;
    procedure SetCustomsDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetDeleted: IJanuaField;
    procedure SetDeleted(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetShipment: IShipment;
    procedure SetShipment(const Value: IShipment);
    function GetWorkNumber: IJanuaField;
    procedure SetWorkNumber(const Value: IJanuaField);
    function GetPoNumber: IJanuaField;
    procedure SetPoNumber(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CreationDate: IJanuaField read GetCreationDate write SetCreationDate;
    property PickupDate: IJanuaField read GetPickupDate write SetPickupDate;
    property DeliveryDate: IJanuaField read GetDeliveryDate write SetDeliveryDate;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property WorkflowUid: IJanuaField read GetWorkflowUid write SetWorkflowUid;
    property AgentId: IJanuaField read GetAgentId write SetAgentId;
    property ShipperId: IJanuaField read GetShipperId write SetShipperId;
    property ShipperAddress: IJanuaField read GetShipperAddress write SetShipperAddress;
    property PickupAddress: IJanuaField read GetPickupAddress write SetPickupAddress;
    property Year: IJanuaField read GetYear write SetYear;
    property GroupageNumber: IJanuaField read GetGroupageNumber write SetGroupageNumber;
    property ExportTypeId: IJanuaField read GetExportTypeId write SetExportTypeId;
    property Fullcontainer: IJanuaField read GetFullcontainer write SetFullcontainer;
    property VesselId: IJanuaField read GetVesselId write SetVesselId;
    property WorkCode: IJanuaField read GetWorkCode write SetWorkCode;
    property TravelIdentificationCode: IJanuaField read GetTravelIdentificationCode write SetTravelIdentificationCode;
    property CarrierId: IJanuaField read GetCarrierId write SetCarrierId;
    property CarrierCode: IJanuaField read GetCarrierCode write SetCarrierCode;
    property WorkflowId: IJanuaField read GetWorkflowId write SetWorkflowId;
    property PolId: IJanuaField read GetPolId write SetPolId;
    property PolCode: IJanuaField read GetPolCode write SetPolCode;
    property PolName: IJanuaField read GetPolName write SetPolName;
    property PodId: IJanuaField read GetPodId write SetPodId;
    property PodName: IJanuaField read GetPodName write SetPodName;
    property PodCode: IJanuaField read GetPodCode write SetPodCode;
    property CustomerId: IJanuaField read GetCustomerId write SetCustomerId;
    property Notes: IJanuaField read GetNotes write SetNotes;
    property WarehouseId: IJanuaField read GetWarehouseId write SetWarehouseId;
    property WorkDate: IJanuaField read GetWorkDate write SetWorkDate;
    property OrderState: IJanuaField read GetOrderState write SetOrderState;
    property AirportId: IJanuaField read GetAirportId write SetAirportId;
    property AirportCode: IJanuaField read GetAirportCode write SetAirportCode;
    property AwbNumber: IJanuaField read GetAwbNumber write SetAwbNumber;
    property InternalNotes: IJanuaField read GetInternalNotes write SetInternalNotes;
    property InternalNotes2: IJanuaField read GetInternalNotes2 write SetInternalNotes2;
    property WarehouseNotes: IJanuaField read GetWarehouseNotes write SetWarehouseNotes;
    property RouteType: IJanuaField read GetRouteType write SetRouteType;
    property InternetVisible: IJanuaField read GetInternetVisible write SetInternetVisible;
    property FlagAir: IJanuaField read GetFlagAir write SetFlagAir;
    property FlagGround: IJanuaField read GetFlagGround write SetFlagGround;
    property DepartureDate: IJanuaField read GetDepartureDate write SetDepartureDate;
    property ArrivalDate: IJanuaField read GetArrivalDate write SetArrivalDate;
    property PoState: IJanuaField read GetPoState write SetPoState;
    property PoLevel: IJanuaField read GetPoLevel write SetPoLevel;
    property FinalDate: IJanuaField read GetFinalDate write SetFinalDate;
    property FlgHouse: IJanuaField read GetFlgHouse write SetFlgHouse;
    property FlgMaster: IJanuaField read GetFlgMaster write SetFlgMaster;
    property Delivered: IJanuaField read GetDelivered write SetDelivered;
    property FlgBillable: IJanuaField read GetFlgBillable write SetFlgBillable;
    property CustomsDeclearer: IJanuaField read GetCustomsDeclearer write SetCustomsDeclearer;
    property CustomsDate: IJanuaField read GetCustomsDate write SetCustomsDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property Deleted: IJanuaField read GetDeleted write SetDeleted;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Shipment: IShipment read GetShipment write SetShipment;
    property WorkNumber: IJanuaField read GetWorkNumber write SetWorkNumber;
    property PoNumber: IJanuaField read GetPoNumber write SetPoNumber;
  end;

  TShipmentFactory = class
    class function CreateRecord(const aKey: string): IShipment; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IShipments; overload;
  end;

implementation

// ------------------------------------------ Impl TShipment -------------------------------

{ TCustomShipment }

constructor TCustomShipment.Create;
begin
  inherited;
  FPrefix := 'lpck';
  FId := AddCreateField(TJanuaFieldType.jptSmallint, 'id', 'id');
  // Campo non Gestitojguid Type= ftGuid
  FCreationDate := AddCreateField(TJanuaFieldType.jptDateTime, 'creation_date', 'creation_date');
  FPickupDate := AddCreateField(TJanuaFieldType.jptDate, 'pickup_date', 'pickup_date');
  FDeliveryDate := AddCreateField(TJanuaFieldType.jptDate, 'delivery_date', 'delivery_date');
  FOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
  // Campo non Gestitoworkflow_uid Type= ftGuid
  FAgentId := AddCreateField(TJanuaFieldType.jptInteger, 'agent_id', 'agent_id');
  FShipperId := AddCreateField(TJanuaFieldType.jptInteger, 'shipper_id', 'shipper_id');
  // Campo non Gestitoshipper_address Type= ftWideMemo
  // Campo non Gestitopickup_address Type= ftWideMemo
  FYear := AddCreateField(TJanuaFieldType.jptSmallint, 'year', 'year');
  FGroupageNumber := AddCreateField(TJanuaFieldType.jptSmallint, 'groupage_number', 'groupage_number');
  FExportTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'export_type_id', 'export_type_id');
  FFullcontainer := AddCreateField(TJanuaFieldType.jptString, 'fullcontainer', 'fullcontainer');
  FVesselId := AddCreateField(TJanuaFieldType.jptInteger, 'vessel_id', 'vessel_id');
  FWorkCode := AddCreateField(TJanuaFieldType.jptString, 'work_code', 'work_code');
  FTravelIdentificationCode := AddCreateField(TJanuaFieldType.jptString, 'travel_identification_code',
    'travel_identification_code');
  FCarrierId := AddCreateField(TJanuaFieldType.jptInteger, 'carrier_id', 'carrier_id');
  FCarrierCode := AddCreateField(TJanuaFieldType.jptString, 'carrier_code', 'carrier_code');
  FWorkflowId := AddCreateField(TJanuaFieldType.jptSmallint, 'workflow_id', 'workflow_id');
  FPolId := AddCreateField(TJanuaFieldType.jptInteger, 'pol_id', 'pol_id');
  FPolCode := AddCreateField(TJanuaFieldType.jptString, 'pol_code', 'pol_code');
  FPolName := AddCreateField(TJanuaFieldType.jptString, 'pol_name', 'pol_name');
  FPodId := AddCreateField(TJanuaFieldType.jptInteger, 'pod_id', 'pod_id');
  FPodName := AddCreateField(TJanuaFieldType.jptString, 'pod_name', 'pod_name');
  FPodCode := AddCreateField(TJanuaFieldType.jptString, 'pod_code', 'pod_code');
  FCustomerId := AddCreateField(TJanuaFieldType.jptInteger, 'customer_id', 'customer_id');
  // Campo non Gestitonotes Type= ftWideMemo
  FWarehouseId := AddCreateField(TJanuaFieldType.jptInteger, 'warehouse_id', 'warehouse_id');
  FWorkDate := AddCreateField(TJanuaFieldType.jptDate, 'work_date', 'work_date');
  FOrderState := AddCreateField(TJanuaFieldType.jptSmallint, 'order_state', 'order_state');
  FAirportId := AddCreateField(TJanuaFieldType.jptInteger, 'airport_id', 'airport_id');
  FAirportCode := AddCreateField(TJanuaFieldType.jptString, 'airport_code', 'airport_code');
  FAwbNumber := AddCreateField(TJanuaFieldType.jptString, 'awb_number', 'awb_number');
  // Campo non Gestitointernal_notes Type= ftWideMemo
  // Campo non Gestitointernal_notes2 Type= ftWideMemo
  // Campo non Gestitowarehouse_notes Type= ftWideMemo
  FRouteType := AddCreateField(TJanuaFieldType.jptString, 'route_type', 'route_type');
  FInternetVisible := AddCreateField(TJanuaFieldType.jptBoolean, 'internet_visible', 'internet_visible');
  FFlagAir := AddCreateField(TJanuaFieldType.jptBoolean, 'flag_air', 'flag_air');
  FFlagGround := AddCreateField(TJanuaFieldType.jptBoolean, 'flag_ground', 'flag_ground');
  FDepartureDate := AddCreateField(TJanuaFieldType.jptDate, 'departure_date', 'departure_date');
  FArrivalDate := AddCreateField(TJanuaFieldType.jptDate, 'arrival_date', 'arrival_date');
  FPoState := AddCreateField(TJanuaFieldType.jptSmallint, 'po_state', 'po_state');
  FPoLevel := AddCreateField(TJanuaFieldType.jptSmallint, 'po_level', 'po_level');
  FFinalDate := AddCreateField(TJanuaFieldType.jptDate, 'final_date', 'final_date');
  FFlgHouse := AddCreateField(TJanuaFieldType.jptBoolean, 'flg_house', 'flg_house');
  FFlgMaster := AddCreateField(TJanuaFieldType.jptBoolean, 'flg_master', 'flg_master');
  FDelivered := AddCreateField(TJanuaFieldType.jptBoolean, 'delivered', 'delivered');
  FFlgBillable := AddCreateField(TJanuaFieldType.jptBoolean, 'flg_billable', 'flg_billable');
  FCustomsDeclearer := AddCreateField(TJanuaFieldType.jptString, 'customs_declearer', 'customs_declearer');
  FCustomsDate := AddCreateField(TJanuaFieldType.jptDate, 'customs_date', 'customs_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FDeleted := AddCreateField(TJanuaFieldType.jptBoolean, 'deleted', 'deleted');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FWorkNumber := AddCreateField(TJanuaFieldType.jptInteger, 'work_number', 'work_number'); //
  FPoNumber := AddCreateField(TJanuaFieldType.jptInteger, 'po_number', 'po_number'); //
end;

function TCustomShipment.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomShipment.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomShipment.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomShipment.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomShipment.GetCreationDate: IJanuaField;
begin
  Result := FCreationDate;
end;

procedure TCustomShipment.SetCreationDate(const Value: IJanuaField);
begin
  FCreationDate := Value;
end;

function TCustomShipment.GetPickupDate: IJanuaField;
begin
  Result := FPickupDate;
end;

procedure TCustomShipment.SetPickupDate(const Value: IJanuaField);
begin
  FPickupDate := Value;
end;

function TCustomShipment.GetDeliveryDate: IJanuaField;
begin
  Result := FDeliveryDate;
end;

procedure TCustomShipment.SetDeliveryDate(const Value: IJanuaField);
begin
  FDeliveryDate := Value;
end;

function TCustomShipment.GetOfficeId: IJanuaField;
begin
  Result := FOfficeId;
end;

procedure TCustomShipment.SetOfficeId(const Value: IJanuaField);
begin
  FOfficeId := Value;
end;

function TCustomShipment.GetWorkflowUid: IJanuaField;
begin
  Result := FWorkflowUid;
end;

function TCustomShipment.GetWorkNumber: IJanuaField;
begin
  Result := FWorkNumber
end;

procedure TCustomShipment.SetWorkflowUid(const Value: IJanuaField);
begin
  FWorkflowUid := Value;
end;

procedure TCustomShipment.SetWorkNumber(const Value: IJanuaField);
begin
  FWorkNumber := Value
end;

function TCustomShipment.GetAgentId: IJanuaField;
begin
  Result := FAgentId;
end;

procedure TCustomShipment.SetAgentId(const Value: IJanuaField);
begin
  FAgentId := Value;
end;

function TCustomShipment.GetShipperId: IJanuaField;
begin
  Result := FShipperId;
end;

procedure TCustomShipment.SetShipperId(const Value: IJanuaField);
begin
  FShipperId := Value;
end;

function TCustomShipment.GetShipperAddress: IJanuaField;
begin
  Result := FShipperAddress;
end;

procedure TCustomShipment.SetShipperAddress(const Value: IJanuaField);
begin
  FShipperAddress := Value;
end;

function TCustomShipment.GetPickupAddress: IJanuaField;
begin
  Result := FPickupAddress;
end;

procedure TCustomShipment.SetPickupAddress(const Value: IJanuaField);
begin
  FPickupAddress := Value;
end;

function TCustomShipment.GetYear: IJanuaField;
begin
  Result := FYear;
end;

procedure TCustomShipment.SetYear(const Value: IJanuaField);
begin
  FYear := Value;
end;

function TCustomShipment.GetGroupageNumber: IJanuaField;
begin
  Result := FGroupageNumber;
end;

procedure TCustomShipment.SetGroupageNumber(const Value: IJanuaField);
begin
  FGroupageNumber := Value;
end;

function TCustomShipment.GetExportTypeId: IJanuaField;
begin
  Result := FExportTypeId;
end;

procedure TCustomShipment.SetExportTypeId(const Value: IJanuaField);
begin
  FExportTypeId := Value;
end;

function TCustomShipment.GetFullcontainer: IJanuaField;
begin
  Result := FFullcontainer;
end;

procedure TCustomShipment.SetFullcontainer(const Value: IJanuaField);
begin
  FFullcontainer := Value;
end;

function TCustomShipment.GetVesselId: IJanuaField;
begin
  Result := FVesselId;
end;

procedure TCustomShipment.SetVesselId(const Value: IJanuaField);
begin
  FVesselId := Value;
end;

function TCustomShipment.GetWorkCode: IJanuaField;
begin
  Result := FWorkCode;
end;

procedure TCustomShipment.SetWorkCode(const Value: IJanuaField);
begin
  FWorkCode := Value;
end;

function TCustomShipment.GetTravelIdentificationCode: IJanuaField;
begin
  Result := FTravelIdentificationCode;
end;

procedure TCustomShipment.SetTravelIdentificationCode(const Value: IJanuaField);
begin
  FTravelIdentificationCode := Value;
end;

function TCustomShipment.GetCarrierId: IJanuaField;
begin
  Result := FCarrierId;
end;

procedure TCustomShipment.SetCarrierId(const Value: IJanuaField);
begin
  FCarrierId := Value;
end;

function TCustomShipment.GetCarrierCode: IJanuaField;
begin
  Result := FCarrierCode;
end;

procedure TCustomShipment.SetCarrierCode(const Value: IJanuaField);
begin
  FCarrierCode := Value;
end;

function TCustomShipment.GetWorkflowId: IJanuaField;
begin
  Result := FWorkflowId;
end;

procedure TCustomShipment.SetWorkflowId(const Value: IJanuaField);
begin
  FWorkflowId := Value;
end;

function TCustomShipment.GetPolId: IJanuaField;
begin
  Result := FPolId;
end;

procedure TCustomShipment.SetPolId(const Value: IJanuaField);
begin
  FPolId := Value;
end;

function TCustomShipment.GetPolCode: IJanuaField;
begin
  Result := FPolCode;
end;

procedure TCustomShipment.SetPolCode(const Value: IJanuaField);
begin
  FPolCode := Value;
end;

function TCustomShipment.GetPolName: IJanuaField;
begin
  Result := FPolName;
end;

function TCustomShipment.GetPoNumber: IJanuaField;
begin
  Result := FPoNumber
end;

procedure TCustomShipment.SetPolName(const Value: IJanuaField);
begin
  FPolName := Value;
end;

procedure TCustomShipment.SetPoNumber(const Value: IJanuaField);
begin
  FPoNumber := Value;
end;

function TCustomShipment.GetPodId: IJanuaField;
begin
  Result := FPodId;
end;

procedure TCustomShipment.SetPodId(const Value: IJanuaField);
begin
  FPodId := Value;
end;

function TCustomShipment.GetPodName: IJanuaField;
begin
  Result := FPodName;
end;

procedure TCustomShipment.SetPodName(const Value: IJanuaField);
begin
  FPodName := Value;
end;

function TCustomShipment.GetPodCode: IJanuaField;
begin
  Result := FPodCode;
end;

procedure TCustomShipment.SetPodCode(const Value: IJanuaField);
begin
  FPodCode := Value;
end;

function TCustomShipment.GetCustomerId: IJanuaField;
begin
  Result := FCustomerId;
end;

procedure TCustomShipment.SetCustomerId(const Value: IJanuaField);
begin
  FCustomerId := Value;
end;

function TCustomShipment.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TCustomShipment.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TCustomShipment.GetWarehouseId: IJanuaField;
begin
  Result := FWarehouseId;
end;

procedure TCustomShipment.SetWarehouseId(const Value: IJanuaField);
begin
  FWarehouseId := Value;
end;

function TCustomShipment.GetWorkDate: IJanuaField;
begin
  Result := FWorkDate;
end;

procedure TCustomShipment.SetWorkDate(const Value: IJanuaField);
begin
  FWorkDate := Value;
end;

function TCustomShipment.GetOrderState: IJanuaField;
begin
  Result := FOrderState;
end;

procedure TCustomShipment.SetOrderState(const Value: IJanuaField);
begin
  FOrderState := Value;
end;

function TCustomShipment.GetAirportId: IJanuaField;
begin
  Result := FAirportId;
end;

procedure TCustomShipment.SetAirportId(const Value: IJanuaField);
begin
  FAirportId := Value;
end;

function TCustomShipment.GetAirportCode: IJanuaField;
begin
  Result := FAirportCode;
end;

procedure TCustomShipment.SetAirportCode(const Value: IJanuaField);
begin
  FAirportCode := Value;
end;

function TCustomShipment.GetAwbNumber: IJanuaField;
begin
  Result := FAwbNumber;
end;

procedure TCustomShipment.SetAwbNumber(const Value: IJanuaField);
begin
  FAwbNumber := Value;
end;

function TCustomShipment.GetInternalNotes: IJanuaField;
begin
  Result := FInternalNotes;
end;

procedure TCustomShipment.SetInternalNotes(const Value: IJanuaField);
begin
  FInternalNotes := Value;
end;

function TCustomShipment.GetInternalNotes2: IJanuaField;
begin
  Result := FInternalNotes2;
end;

procedure TCustomShipment.SetInternalNotes2(const Value: IJanuaField);
begin
  FInternalNotes2 := Value;
end;

function TCustomShipment.GetWarehouseNotes: IJanuaField;
begin
  Result := FWarehouseNotes;
end;

procedure TCustomShipment.SetWarehouseNotes(const Value: IJanuaField);
begin
  FWarehouseNotes := Value;
end;

function TCustomShipment.GetRouteType: IJanuaField;
begin
  Result := FRouteType;
end;

procedure TCustomShipment.SetRouteType(const Value: IJanuaField);
begin
  FRouteType := Value;
end;

function TCustomShipment.GetInternetVisible: IJanuaField;
begin
  Result := FInternetVisible;
end;

procedure TCustomShipment.SetInternetVisible(const Value: IJanuaField);
begin
  FInternetVisible := Value;
end;

function TCustomShipment.GetFlagAir: IJanuaField;
begin
  Result := FFlagAir;
end;

procedure TCustomShipment.SetFlagAir(const Value: IJanuaField);
begin
  FFlagAir := Value;
end;

function TCustomShipment.GetFlagGround: IJanuaField;
begin
  Result := FFlagGround;
end;

procedure TCustomShipment.SetFlagGround(const Value: IJanuaField);
begin
  FFlagGround := Value;
end;

function TCustomShipment.GetDepartureDate: IJanuaField;
begin
  Result := FDepartureDate;
end;

procedure TCustomShipment.SetDepartureDate(const Value: IJanuaField);
begin
  FDepartureDate := Value;
end;

function TCustomShipment.GetArrivalDate: IJanuaField;
begin
  Result := FArrivalDate;
end;

procedure TCustomShipment.SetArrivalDate(const Value: IJanuaField);
begin
  FArrivalDate := Value;
end;

function TCustomShipment.GetPoState: IJanuaField;
begin
  Result := FPoState;
end;

procedure TCustomShipment.SetPoState(const Value: IJanuaField);
begin
  FPoState := Value;
end;

function TCustomShipment.GetPoLevel: IJanuaField;
begin
  Result := FPoLevel;
end;

procedure TCustomShipment.SetPoLevel(const Value: IJanuaField);
begin
  FPoLevel := Value;
end;

function TCustomShipment.GetFinalDate: IJanuaField;
begin
  Result := FFinalDate;
end;

procedure TCustomShipment.SetFinalDate(const Value: IJanuaField);
begin
  FFinalDate := Value;
end;

function TCustomShipment.GetFlgHouse: IJanuaField;
begin
  Result := FFlgHouse;
end;

procedure TCustomShipment.SetFlgHouse(const Value: IJanuaField);
begin
  FFlgHouse := Value;
end;

function TCustomShipment.GetFlgMaster: IJanuaField;
begin
  Result := FFlgMaster;
end;

procedure TCustomShipment.SetFlgMaster(const Value: IJanuaField);
begin
  FFlgMaster := Value;
end;

function TCustomShipment.GetDelivered: IJanuaField;
begin
  Result := FDelivered;
end;

procedure TCustomShipment.SetDelivered(const Value: IJanuaField);
begin
  FDelivered := Value;
end;

function TCustomShipment.GetFlgBillable: IJanuaField;
begin
  Result := FFlgBillable;
end;

procedure TCustomShipment.SetFlgBillable(const Value: IJanuaField);
begin
  FFlgBillable := Value;
end;

function TCustomShipment.GetCustomsDeclearer: IJanuaField;
begin
  Result := FCustomsDeclearer;
end;

procedure TCustomShipment.SetCustomsDeclearer(const Value: IJanuaField);
begin
  FCustomsDeclearer := Value;
end;

function TCustomShipment.GetCustomsDate: IJanuaField;
begin
  Result := FCustomsDate;
end;

procedure TCustomShipment.SetCustomsDate(const Value: IJanuaField);
begin
  FCustomsDate := Value;
end;

function TCustomShipment.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomShipment.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomShipment.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomShipment.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomShipment.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomShipment.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TCustomShipment.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomShipment.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

{ TCustomShipments }
constructor TCustomShipments.Create;
begin
  inherited;
  self.FRecord := TShipmentFactory.CreateRecord('Shipment');
end;

function TCustomShipments.GetId: IJanuaField;
begin
  Result := self.Shipment.Id;
end;

procedure TCustomShipments.SetId(const Value: IJanuaField);
begin
  self.Shipment.Id := Value;
end;

function TCustomShipments.GetJguid: IJanuaField;
begin
  Result := self.Shipment.Jguid;
end;

procedure TCustomShipments.SetJguid(const Value: IJanuaField);
begin
  self.Shipment.Jguid := Value;
end;

function TCustomShipments.GetCreationDate: IJanuaField;
begin
  Result := self.Shipment.CreationDate;
end;

procedure TCustomShipments.SetCreationDate(const Value: IJanuaField);
begin
  self.Shipment.CreationDate := Value;
end;

function TCustomShipments.GetPickupDate: IJanuaField;
begin
  Result := self.Shipment.PickupDate;
end;

procedure TCustomShipments.SetPickupDate(const Value: IJanuaField);
begin
  self.Shipment.PickupDate := Value;
end;

function TCustomShipments.GetDeliveryDate: IJanuaField;
begin
  Result := self.Shipment.DeliveryDate;
end;

procedure TCustomShipments.SetDeliveryDate(const Value: IJanuaField);
begin
  self.Shipment.DeliveryDate := Value;
end;

function TCustomShipments.GetOfficeId: IJanuaField;
begin
  Result := self.Shipment.OfficeId;
end;

procedure TCustomShipments.SetOfficeId(const Value: IJanuaField);
begin
  self.Shipment.OfficeId := Value;
end;

function TCustomShipments.GetWorkflowUid: IJanuaField;
begin
  Result := self.Shipment.WorkflowUid;
end;

function TCustomShipments.GetWorkNumber: IJanuaField;
begin
  { Result := self.Shipment.WorkNumber; }
end;

procedure TCustomShipments.SetWorkflowUid(const Value: IJanuaField);
begin
  self.Shipment.WorkflowUid := Value;
end;

procedure TCustomShipments.SetWorkNumber(const Value: IJanuaField);
begin
  { self.Shipment.WorkNumber := Value; }
end;

function TCustomShipments.GetAgentId: IJanuaField;
begin
  Result := self.Shipment.AgentId;
end;

procedure TCustomShipments.SetAgentId(const Value: IJanuaField);
begin
  self.Shipment.AgentId := Value;
end;

function TCustomShipments.GetShipperId: IJanuaField;
begin
  Result := self.Shipment.ShipperId;
end;

procedure TCustomShipments.SetShipperId(const Value: IJanuaField);
begin
  self.Shipment.ShipperId := Value;
end;

function TCustomShipments.GetShipperAddress: IJanuaField;
begin
  Result := self.Shipment.ShipperAddress;
end;

procedure TCustomShipments.SetShipperAddress(const Value: IJanuaField);
begin
  self.Shipment.ShipperAddress := Value;
end;

function TCustomShipments.GetPickupAddress: IJanuaField;
begin
  Result := self.Shipment.PickupAddress;
end;

procedure TCustomShipments.SetPickupAddress(const Value: IJanuaField);
begin
  self.Shipment.PickupAddress := Value;
end;

function TCustomShipments.GetYear: IJanuaField;
begin
  Result := self.Shipment.Year;
end;

procedure TCustomShipments.SetYear(const Value: IJanuaField);
begin
  self.Shipment.Year := Value;
end;

function TCustomShipments.GetGroupageNumber: IJanuaField;
begin
  Result := self.Shipment.GroupageNumber;
end;

procedure TCustomShipments.SetGroupageNumber(const Value: IJanuaField);
begin
  self.Shipment.GroupageNumber := Value;
end;

function TCustomShipments.GetExportTypeId: IJanuaField;
begin
  Result := self.Shipment.ExportTypeId;
end;

procedure TCustomShipments.SetExportTypeId(const Value: IJanuaField);
begin
  self.Shipment.ExportTypeId := Value;
end;

function TCustomShipments.GetFullcontainer: IJanuaField;
begin
  Result := self.Shipment.Fullcontainer;
end;

procedure TCustomShipments.SetFullcontainer(const Value: IJanuaField);
begin
  self.Shipment.Fullcontainer := Value;
end;

function TCustomShipments.GetVesselId: IJanuaField;
begin
  Result := self.Shipment.VesselId;
end;

procedure TCustomShipments.SetVesselId(const Value: IJanuaField);
begin
  self.Shipment.VesselId := Value;
end;

function TCustomShipments.GetWorkCode: IJanuaField;
begin
  Result := self.Shipment.WorkCode;
end;

procedure TCustomShipments.SetWorkCode(const Value: IJanuaField);
begin
  self.Shipment.WorkCode := Value;
end;

function TCustomShipments.GetTravelIdentificationCode: IJanuaField;
begin
  Result := self.Shipment.TravelIdentificationCode;
end;

procedure TCustomShipments.SetTravelIdentificationCode(const Value: IJanuaField);
begin
  self.Shipment.TravelIdentificationCode := Value;
end;

function TCustomShipments.GetCarrierId: IJanuaField;
begin
  Result := self.Shipment.CarrierId;
end;

procedure TCustomShipments.SetCarrierId(const Value: IJanuaField);
begin
  self.Shipment.CarrierId := Value;
end;

function TCustomShipments.GetCarrierCode: IJanuaField;
begin
  Result := self.Shipment.CarrierCode;
end;

procedure TCustomShipments.SetCarrierCode(const Value: IJanuaField);
begin
  self.Shipment.CarrierCode := Value;
end;

function TCustomShipments.GetWorkflowId: IJanuaField;
begin
  Result := self.Shipment.WorkflowId;
end;

procedure TCustomShipments.SetWorkflowId(const Value: IJanuaField);
begin
  self.Shipment.WorkflowId := Value;
end;

function TCustomShipments.GetPolId: IJanuaField;
begin
  Result := self.Shipment.PolId;
end;

procedure TCustomShipments.SetPolId(const Value: IJanuaField);
begin
  self.Shipment.PolId := Value;
end;

function TCustomShipments.GetPolCode: IJanuaField;
begin
  Result := self.Shipment.PolCode;
end;

procedure TCustomShipments.SetPolCode(const Value: IJanuaField);
begin
  self.Shipment.PolCode := Value;
end;

function TCustomShipments.GetPolName: IJanuaField;
begin
  Result := self.Shipment.PolName;
end;

function TCustomShipments.GetPoNumber: IJanuaField;
begin
  { Result := self.Shipment.PoNumber }
end;

procedure TCustomShipments.SetPolName(const Value: IJanuaField);
begin
  self.Shipment.PolName := Value;
end;

procedure TCustomShipments.SetPoNumber(const Value: IJanuaField);
begin
  { self.Shipment.PoNumber := Value; }
end;

function TCustomShipments.GetPodId: IJanuaField;
begin
  Result := self.Shipment.PodId;
end;

procedure TCustomShipments.SetPodId(const Value: IJanuaField);
begin
  self.Shipment.PodId := Value;
end;

function TCustomShipments.GetPodName: IJanuaField;
begin
  Result := self.Shipment.PodName;
end;

procedure TCustomShipments.SetPodName(const Value: IJanuaField);
begin
  self.Shipment.PodName := Value;
end;

function TCustomShipments.GetPodCode: IJanuaField;
begin
  Result := self.Shipment.PodCode;
end;

procedure TCustomShipments.SetPodCode(const Value: IJanuaField);
begin
  self.Shipment.PodCode := Value;
end;

function TCustomShipments.GetCustomerId: IJanuaField;
begin
  Result := self.Shipment.CustomerId;
end;

procedure TCustomShipments.SetCustomerId(const Value: IJanuaField);
begin
  self.Shipment.CustomerId := Value;
end;

function TCustomShipments.GetNotes: IJanuaField;
begin
  Result := self.Shipment.Notes;
end;

procedure TCustomShipments.SetNotes(const Value: IJanuaField);
begin
  self.Shipment.Notes := Value;
end;

function TCustomShipments.GetWarehouseId: IJanuaField;
begin
  Result := self.Shipment.WarehouseId;
end;

procedure TCustomShipments.SetWarehouseId(const Value: IJanuaField);
begin
  self.Shipment.WarehouseId := Value;
end;

function TCustomShipments.GetWorkDate: IJanuaField;
begin
  Result := self.Shipment.WorkDate;
end;

procedure TCustomShipments.SetWorkDate(const Value: IJanuaField);
begin
  self.Shipment.WorkDate := Value;
end;

function TCustomShipments.GetOrderState: IJanuaField;
begin
  Result := self.Shipment.OrderState;
end;

procedure TCustomShipments.SetOrderState(const Value: IJanuaField);
begin
  self.Shipment.OrderState := Value;
end;

function TCustomShipments.GetAirportId: IJanuaField;
begin
  Result := self.Shipment.AirportId;
end;

procedure TCustomShipments.SetAirportId(const Value: IJanuaField);
begin
  self.Shipment.AirportId := Value;
end;

function TCustomShipments.GetAirportCode: IJanuaField;
begin
  Result := self.Shipment.AirportCode;
end;

procedure TCustomShipments.SetAirportCode(const Value: IJanuaField);
begin
  self.Shipment.AirportCode := Value;
end;

function TCustomShipments.GetAwbNumber: IJanuaField;
begin
  Result := self.Shipment.AwbNumber;
end;

procedure TCustomShipments.SetAwbNumber(const Value: IJanuaField);
begin
  self.Shipment.AwbNumber := Value;
end;

function TCustomShipments.GetInternalNotes: IJanuaField;
begin
  Result := self.Shipment.InternalNotes;
end;

procedure TCustomShipments.SetInternalNotes(const Value: IJanuaField);
begin
  self.Shipment.InternalNotes := Value;
end;

function TCustomShipments.GetInternalNotes2: IJanuaField;
begin
  Result := self.Shipment.InternalNotes2;
end;

procedure TCustomShipments.SetInternalNotes2(const Value: IJanuaField);
begin
  self.Shipment.InternalNotes2 := Value;
end;

function TCustomShipments.GetWarehouseNotes: IJanuaField;
begin
  Result := self.Shipment.WarehouseNotes;
end;

procedure TCustomShipments.SetWarehouseNotes(const Value: IJanuaField);
begin
  self.Shipment.WarehouseNotes := Value;
end;

function TCustomShipments.GetRouteType: IJanuaField;
begin
  Result := self.Shipment.RouteType;
end;

procedure TCustomShipments.SetRouteType(const Value: IJanuaField);
begin
  self.Shipment.RouteType := Value;
end;

function TCustomShipments.GetInternetVisible: IJanuaField;
begin
  Result := self.Shipment.InternetVisible;
end;

procedure TCustomShipments.SetInternetVisible(const Value: IJanuaField);
begin
  self.Shipment.InternetVisible := Value;
end;

function TCustomShipments.GetFlagAir: IJanuaField;
begin
  Result := self.Shipment.FlagAir;
end;

procedure TCustomShipments.SetFlagAir(const Value: IJanuaField);
begin
  self.Shipment.FlagAir := Value;
end;

function TCustomShipments.GetFlagGround: IJanuaField;
begin
  Result := self.Shipment.FlagGround;
end;

procedure TCustomShipments.SetFlagGround(const Value: IJanuaField);
begin
  self.Shipment.FlagGround := Value;
end;

function TCustomShipments.GetDepartureDate: IJanuaField;
begin
  Result := self.Shipment.DepartureDate;
end;

procedure TCustomShipments.SetDepartureDate(const Value: IJanuaField);
begin
  self.Shipment.DepartureDate := Value;
end;

function TCustomShipments.GetArrivalDate: IJanuaField;
begin
  Result := self.Shipment.ArrivalDate;
end;

procedure TCustomShipments.SetArrivalDate(const Value: IJanuaField);
begin
  self.Shipment.ArrivalDate := Value;
end;

function TCustomShipments.GetPoState: IJanuaField;
begin
  Result := self.Shipment.PoState;
end;

procedure TCustomShipments.SetPoState(const Value: IJanuaField);
begin
  self.Shipment.PoState := Value;
end;

function TCustomShipments.GetPoLevel: IJanuaField;
begin
  Result := self.Shipment.PoLevel;
end;

procedure TCustomShipments.SetPoLevel(const Value: IJanuaField);
begin
  self.Shipment.PoLevel := Value;
end;

function TCustomShipments.GetFinalDate: IJanuaField;
begin
  Result := self.Shipment.FinalDate;
end;

procedure TCustomShipments.SetFinalDate(const Value: IJanuaField);
begin
  self.Shipment.FinalDate := Value;
end;

function TCustomShipments.GetFlgHouse: IJanuaField;
begin
  Result := self.Shipment.FlgHouse;
end;

procedure TCustomShipments.SetFlgHouse(const Value: IJanuaField);
begin
  self.Shipment.FlgHouse := Value;
end;

function TCustomShipments.GetFlgMaster: IJanuaField;
begin
  Result := self.Shipment.FlgMaster;
end;

procedure TCustomShipments.SetFlgMaster(const Value: IJanuaField);
begin
  self.Shipment.FlgMaster := Value;
end;

function TCustomShipments.GetDelivered: IJanuaField;
begin
  Result := self.Shipment.Delivered;
end;

procedure TCustomShipments.SetDelivered(const Value: IJanuaField);
begin
  self.Shipment.Delivered := Value;
end;

function TCustomShipments.GetFlgBillable: IJanuaField;
begin
  Result := self.Shipment.FlgBillable;
end;

procedure TCustomShipments.SetFlgBillable(const Value: IJanuaField);
begin
  self.Shipment.FlgBillable := Value;
end;

function TCustomShipments.GetCustomsDeclearer: IJanuaField;
begin
  Result := self.Shipment.CustomsDeclearer;
end;

procedure TCustomShipments.SetCustomsDeclearer(const Value: IJanuaField);
begin
  self.Shipment.CustomsDeclearer := Value;
end;

function TCustomShipments.GetCustomsDate: IJanuaField;
begin
  Result := self.Shipment.CustomsDate;
end;

procedure TCustomShipments.SetCustomsDate(const Value: IJanuaField);
begin
  self.Shipment.CustomsDate := Value;
end;

function TCustomShipments.GetUpdateDate: IJanuaField;
begin
  Result := self.Shipment.UpdateDate;
end;

procedure TCustomShipments.SetUpdateDate(const Value: IJanuaField);
begin
  self.Shipment.UpdateDate := Value;
end;

function TCustomShipments.GetInsertDate: IJanuaField;
begin
  Result := self.Shipment.InsertDate;
end;

procedure TCustomShipments.SetInsertDate(const Value: IJanuaField);
begin
  self.Shipment.InsertDate := Value;
end;

function TCustomShipments.GetDeleted: IJanuaField;
begin
  Result := self.Shipment.Deleted;
end;

procedure TCustomShipments.SetDeleted(const Value: IJanuaField);
begin
  self.Shipment.Deleted := Value;
end;

function TCustomShipments.GetDbSchemaId: IJanuaField;
begin
  Result := self.Shipment.DbSchemaId;
end;

procedure TCustomShipments.SetDbSchemaId(const Value: IJanuaField);
begin
  self.Shipment.DbSchemaId := Value;
end;

function TCustomShipments.GetShipment: IShipment;
begin
  Result := self.FRecord as IShipment;
end;

procedure TCustomShipments.SetShipment(const Value: IShipment);
begin
  self.FRecord := Value;
end;

{ TShipmentFactory }

class function TShipmentFactory.CreateRecord(const aKey: string): IShipment;
begin
  Result := TCustomShipment.Create;
end;

class function TShipmentFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IShipments;
begin
  Result := TCustomShipments.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
