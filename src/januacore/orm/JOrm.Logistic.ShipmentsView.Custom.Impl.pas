unit JOrm.Logistic.ShipmentsView.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.ShipmentsView.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomShipmentView = class(TJanuaRecord, ICustomShipmentView)
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
    FCarrierName: IJanuaField;
    FCode: IJanuaField;
    FTypeId: IJanuaField;
    FLevelId: IJanuaField;
    FAgentName: IJanuaField;
    FAgentCode: IJanuaField;
    FAgentTown: IJanuaField;
    FShipperName: IJanuaField;
    FShipperCode: IJanuaField;
    FShipperTown: IJanuaField;
    FVesselName: IJanuaField;
    FAirportName: IJanuaField;
    FCarrierTown: IJanuaField;
    FCustomerName: IJanuaField;
    FCustomerCode: IJanuaField;
    FCustomerTown: IJanuaField;
    FCustomerAddress: IJanuaField;
    FCustomerPostalCode: IJanuaField;
    FCustomerPhone: IJanuaField;
    FWorkNumber: IJanuaField; // work_number
    FPoNumber: IJanuaField;  // po_number
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
    function GetCarrierName: IJanuaField;
    procedure SetCarrierName(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetLevelId: IJanuaField;
    procedure SetLevelId(const Value: IJanuaField);
    function GetAgentName: IJanuaField;
    procedure SetAgentName(const Value: IJanuaField);
    function GetAgentCode: IJanuaField;
    procedure SetAgentCode(const Value: IJanuaField);
    function GetAgentTown: IJanuaField;
    procedure SetAgentTown(const Value: IJanuaField);
    function GetShipperName: IJanuaField;
    procedure SetShipperName(const Value: IJanuaField);
    function GetShipperCode: IJanuaField;
    procedure SetShipperCode(const Value: IJanuaField);
    function GetShipperTown: IJanuaField;
    procedure SetShipperTown(const Value: IJanuaField);
    function GetVesselName: IJanuaField;
    procedure SetVesselName(const Value: IJanuaField);
    function GetAirportName: IJanuaField;
    procedure SetAirportName(const Value: IJanuaField);
    function GetCarrierTown: IJanuaField;
    procedure SetCarrierTown(const Value: IJanuaField);
    function GetCustomerName: IJanuaField;
    procedure SetCustomerName(const Value: IJanuaField);
    function GetCustomerCode: IJanuaField;
    procedure SetCustomerCode(const Value: IJanuaField);
    function GetCustomerTown: IJanuaField;
    procedure SetCustomerTown(const Value: IJanuaField);
    function GetCustomerAddress: IJanuaField;
    procedure SetCustomerAddress(const Value: IJanuaField);
    function GetCustomerPostalCode: IJanuaField;
    procedure SetCustomerPostalCode(const Value: IJanuaField);
    function GetCustomerPhone: IJanuaField;
    procedure SetCustomerPhone(const Value: IJanuaField);
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
    property CarrierName: IJanuaField read GetCarrierName write SetCarrierName;
    property Code: IJanuaField read GetCode write SetCode;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property LevelId: IJanuaField read GetLevelId write SetLevelId;
    property AgentName: IJanuaField read GetAgentName write SetAgentName;
    property AgentCode: IJanuaField read GetAgentCode write SetAgentCode;
    property AgentTown: IJanuaField read GetAgentTown write SetAgentTown;
    property ShipperName: IJanuaField read GetShipperName write SetShipperName;
    property ShipperCode: IJanuaField read GetShipperCode write SetShipperCode;
    property ShipperTown: IJanuaField read GetShipperTown write SetShipperTown;
    property VesselName: IJanuaField read GetVesselName write SetVesselName;
    property AirportName: IJanuaField read GetAirportName write SetAirportName;
    property CarrierTown: IJanuaField read GetCarrierTown write SetCarrierTown;
    property CustomerName: IJanuaField read GetCustomerName write SetCustomerName;
    property CustomerCode: IJanuaField read GetCustomerCode write SetCustomerCode;
    property CustomerTown: IJanuaField read GetCustomerTown write SetCustomerTown;
    property CustomerAddress: IJanuaField read GetCustomerAddress write SetCustomerAddress;
    property CustomerPostalCode: IJanuaField read GetCustomerPostalCode write SetCustomerPostalCode;
    property CustomerPhone: IJanuaField read GetCustomerPhone write SetCustomerPhone;
    property WorkNumber: IJanuaField read GetWorkNumber write SetWorkNumber;
    property PoNumber: IJanuaField read GetPoNumber write SetPoNumber;
  end;

  TCustomShipmentsView = class(TJanuaRecordSet, IJanuaRecordSet, ICustomShipmentsView)
  protected
    function GetCustomShipmentView: ICustomShipmentsView;
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
    function GetCarrierName: IJanuaField;
    procedure SetCarrierName(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetLevelId: IJanuaField;
    procedure SetLevelId(const Value: IJanuaField);
    function GetAgentName: IJanuaField;
    procedure SetAgentName(const Value: IJanuaField);
    function GetAgentCode: IJanuaField;
    procedure SetAgentCode(const Value: IJanuaField);
    function GetAgentTown: IJanuaField;
    procedure SetAgentTown(const Value: IJanuaField);
    function GetShipperName: IJanuaField;
    procedure SetShipperName(const Value: IJanuaField);
    function GetShipperCode: IJanuaField;
    procedure SetShipperCode(const Value: IJanuaField);
    function GetShipperTown: IJanuaField;
    procedure SetShipperTown(const Value: IJanuaField);
    function GetVesselName: IJanuaField;
    procedure SetVesselName(const Value: IJanuaField);
    function GetAirportName: IJanuaField;
    procedure SetAirportName(const Value: IJanuaField);
    function GetCarrierTown: IJanuaField;
    procedure SetCarrierTown(const Value: IJanuaField);
    function GetCustomerName: IJanuaField;
    procedure SetCustomerName(const Value: IJanuaField);
    function GetCustomerCode: IJanuaField;
    procedure SetCustomerCode(const Value: IJanuaField);
    function GetCustomerTown: IJanuaField;
    procedure SetCustomerTown(const Value: IJanuaField);
    function GetCustomerAddress: IJanuaField;
    procedure SetCustomerAddress(const Value: IJanuaField);
    function GetCustomerPostalCode: IJanuaField;
    procedure SetCustomerPostalCode(const Value: IJanuaField);
    function GetCustomerPhone: IJanuaField;
    procedure SetCustomerPhone(const Value: IJanuaField);
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
    property CarrierName: IJanuaField read GetCarrierName write SetCarrierName;
    property Code: IJanuaField read GetCode write SetCode;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property LevelId: IJanuaField read GetLevelId write SetLevelId;
    property AgentName: IJanuaField read GetAgentName write SetAgentName;
    property AgentCode: IJanuaField read GetAgentCode write SetAgentCode;
    property AgentTown: IJanuaField read GetAgentTown write SetAgentTown;
    property ShipperName: IJanuaField read GetShipperName write SetShipperName;
    property ShipperCode: IJanuaField read GetShipperCode write SetShipperCode;
    property ShipperTown: IJanuaField read GetShipperTown write SetShipperTown;
    property VesselName: IJanuaField read GetVesselName write SetVesselName;
    property AirportName: IJanuaField read GetAirportName write SetAirportName;
    property CarrierTown: IJanuaField read GetCarrierTown write SetCarrierTown;
    property CustomerName: IJanuaField read GetCustomerName write SetCustomerName;
    property CustomerCode: IJanuaField read GetCustomerCode write SetCustomerCode;
    property CustomerTown: IJanuaField read GetCustomerTown write SetCustomerTown;
    property CustomerAddress: IJanuaField read GetCustomerAddress write SetCustomerAddress;
    property CustomerPostalCode: IJanuaField read GetCustomerPostalCode write SetCustomerPostalCode;
    property CustomerPhone: IJanuaField read GetCustomerPhone write SetCustomerPhone;
  end;

  TShipmentViewFactory = class
    class function CreateRecord(const aKey: string): ICustomShipmentView; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : ICustomShipmentsView; overload;
  end;

implementation

// ------------------------------------------ Impl TShipmentView -------------------------------

{ TCustomShipmentView }

constructor TCustomShipmentView.Create;
begin
  inherited;
  FPrefix := 'shpv';
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FCreationDate := AddCreateField(TJanuaFieldType.jptDateTime, 'creation_date', 'creation_date');
  FPickupDate := AddCreateField(TJanuaFieldType.jptDate, 'pickup_date', 'pickup_date');
  FDeliveryDate := AddCreateField(TJanuaFieldType.jptDate, 'delivery_date', 'delivery_date');
  FOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
  FWorkflowUid := AddCreateField(TJanuaFieldType.jptGUID, 'workflow_uid', 'workflow_uid');
  FAgentId := AddCreateField(TJanuaFieldType.jptInteger, 'agent_id', 'agent_id');
  FShipperId := AddCreateField(TJanuaFieldType.jptInteger, 'shipper_id', 'shipper_id');
  FShipperAddress := AddCreateField(TJanuaFieldType.jptText, 'shipper_address', 'shipper_address');
  FPickupAddress := AddCreateField(TJanuaFieldType.jptText, 'pickup_address', 'pickup_address');
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
  FWorkflowId := AddCreateField(TJanuaFieldType.jptLargeint, 'workflow_id', 'workflow_id');
  FPolId := AddCreateField(TJanuaFieldType.jptInteger, 'pol_id', 'pol_id');
  FPolCode := AddCreateField(TJanuaFieldType.jptString, 'pol_code', 'pol_code');
  FPolName := AddCreateField(TJanuaFieldType.jptString, 'pol_name', 'pol_name');
  FPodId := AddCreateField(TJanuaFieldType.jptInteger, 'pod_id', 'pod_id');
  FPodName := AddCreateField(TJanuaFieldType.jptString, 'pod_name', 'pod_name');
  FPodCode := AddCreateField(TJanuaFieldType.jptString, 'pod_code', 'pod_code');
  FCustomerId := AddCreateField(TJanuaFieldType.jptInteger, 'customer_id', 'customer_id');
  FNotes := AddCreateField(TJanuaFieldType.jptText, 'notes', 'notes');
  FWarehouseId := AddCreateField(TJanuaFieldType.jptInteger, 'warehouse_id', 'warehouse_id');
  FWorkDate := AddCreateField(TJanuaFieldType.jptDate, 'work_date', 'work_date');
  FOrderState := AddCreateField(TJanuaFieldType.jptSmallint, 'order_state', 'order_state');
  FAirportId := AddCreateField(TJanuaFieldType.jptInteger, 'airport_id', 'airport_id');
  FAirportCode := AddCreateField(TJanuaFieldType.jptString, 'airport_code', 'airport_code');
  FAwbNumber := AddCreateField(TJanuaFieldType.jptString, 'awb_number', 'awb_number');
  FInternalNotes := AddCreateField(TJanuaFieldType.jptText, 'internal_notes', 'internal_notes');
  FInternalNotes2 := AddCreateField(TJanuaFieldType.jptText, 'internal_notes2', 'internal_notes2');
  FWarehouseNotes := AddCreateField(TJanuaFieldType.jptText, 'warehouse_notes', 'warehouse_notes');
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
  FCarrierName := AddCreateField(TJanuaFieldType.jptString, 'carrier_name', 'carrier_name');
  FWorkDate := AddCreateField(TJanuaFieldType.jptDateTime, 'workdate', 'workdate');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'type_id', 'type_id');
  FLevelId := AddCreateField(TJanuaFieldType.jptSmallint, 'level_id', 'level_id');
  FAgentName := AddCreateField(TJanuaFieldType.jptString, 'agent_name', 'agent_name');
  FAgentCode := AddCreateField(TJanuaFieldType.jptString, 'agent_code', 'agent_code');
  FAgentTown := AddCreateField(TJanuaFieldType.jptString, 'agent_town', 'agent_town');
  FShipperName := AddCreateField(TJanuaFieldType.jptString, 'shipper_name', 'shipper_name');
  FShipperCode := AddCreateField(TJanuaFieldType.jptString, 'shipper_code', 'shipper_code');
  FShipperTown := AddCreateField(TJanuaFieldType.jptString, 'shipper_town', 'shipper_town');
  FVesselName := AddCreateField(TJanuaFieldType.jptString, 'vessel_name', 'vessel_name');
  FAirportName := AddCreateField(TJanuaFieldType.jptString, 'airport_name', 'airport_name');
  FCarrierTown := AddCreateField(TJanuaFieldType.jptString, 'carrier_town', 'carrier_town');
  FCustomerName := AddCreateField(TJanuaFieldType.jptString, 'customer_name', 'customer_name');
  FCustomerCode := AddCreateField(TJanuaFieldType.jptString, 'customer_code', 'customer_code');
  FCustomerTown := AddCreateField(TJanuaFieldType.jptString, 'customer_town', 'customer_town');
  FCustomerAddress := AddCreateField(TJanuaFieldType.jptString, 'customer_address', 'customer_address');
  FCustomerPostalCode := AddCreateField(TJanuaFieldType.jptString, 'customer_postal_code', 'customer_postal_code');
  FCustomerPhone := AddCreateField(TJanuaFieldType.jptString, 'customer_phone', 'customer_phone');
  FWorkNumber := AddCreateField(TJanuaFieldType.jptInteger, 'work_number', 'work_number'); //
  FPoNumber :=  AddCreateField(TJanuaFieldType.jptInteger, 'po_number', 'po_number'); //
end;

function TCustomShipmentView.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomShipmentView.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomShipmentView.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomShipmentView.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomShipmentView.GetCreationDate: IJanuaField;
begin
  Result := FCreationDate;
end;

procedure TCustomShipmentView.SetCreationDate(const Value: IJanuaField);
begin
  FCreationDate := Value;
end;

function TCustomShipmentView.GetPickupDate: IJanuaField;
begin
  Result := FPickupDate;
end;

procedure TCustomShipmentView.SetPickupDate(const Value: IJanuaField);
begin
  FPickupDate := Value;
end;

function TCustomShipmentView.GetDeliveryDate: IJanuaField;
begin
  Result := FDeliveryDate;
end;

procedure TCustomShipmentView.SetDeliveryDate(const Value: IJanuaField);
begin
  FDeliveryDate := Value;
end;

function TCustomShipmentView.GetOfficeId: IJanuaField;
begin
  Result := FOfficeId;
end;

procedure TCustomShipmentView.SetOfficeId(const Value: IJanuaField);
begin
  FOfficeId := Value;
end;

function TCustomShipmentView.GetWorkflowUid: IJanuaField;
begin
  Result := FWorkflowUid;
end;

function TCustomShipmentView.GetWorkNumber: IJanuaField;
begin
  Result := FWorkNumber
end;

procedure TCustomShipmentView.SetWorkflowUid(const Value: IJanuaField);
begin
  FWorkflowUid := Value;
end;

procedure TCustomShipmentView.SetWorkNumber(const Value: IJanuaField);
begin
  FWorkNumber := Value
end;

function TCustomShipmentView.GetAgentId: IJanuaField;
begin
  Result := FAgentId;
end;

procedure TCustomShipmentView.SetAgentId(const Value: IJanuaField);
begin
  FAgentId := Value;
end;

function TCustomShipmentView.GetShipperId: IJanuaField;
begin
  Result := FShipperId;
end;

procedure TCustomShipmentView.SetShipperId(const Value: IJanuaField);
begin
  FShipperId := Value;
end;

function TCustomShipmentView.GetShipperAddress: IJanuaField;
begin
  Result := FShipperAddress;
end;

procedure TCustomShipmentView.SetShipperAddress(const Value: IJanuaField);
begin
  FShipperAddress := Value;
end;

function TCustomShipmentView.GetPickupAddress: IJanuaField;
begin
  Result := FPickupAddress;
end;

procedure TCustomShipmentView.SetPickupAddress(const Value: IJanuaField);
begin
  FPickupAddress := Value;
end;

function TCustomShipmentView.GetYear: IJanuaField;
begin
  Result := FYear;
end;

procedure TCustomShipmentView.SetYear(const Value: IJanuaField);
begin
  FYear := Value;
end;

function TCustomShipmentView.GetGroupageNumber: IJanuaField;
begin
  Result := FGroupageNumber;
end;

procedure TCustomShipmentView.SetGroupageNumber(const Value: IJanuaField);
begin
  FGroupageNumber := Value;
end;

function TCustomShipmentView.GetExportTypeId: IJanuaField;
begin
  Result := FExportTypeId;
end;

procedure TCustomShipmentView.SetExportTypeId(const Value: IJanuaField);
begin
  FExportTypeId := Value;
end;

function TCustomShipmentView.GetFullcontainer: IJanuaField;
begin
  Result := FFullcontainer;
end;

procedure TCustomShipmentView.SetFullcontainer(const Value: IJanuaField);
begin
  FFullcontainer := Value;
end;

function TCustomShipmentView.GetVesselId: IJanuaField;
begin
  Result := FVesselId;
end;

procedure TCustomShipmentView.SetVesselId(const Value: IJanuaField);
begin
  FVesselId := Value;
end;

function TCustomShipmentView.GetWorkCode: IJanuaField;
begin
  Result := FWorkCode;
end;

procedure TCustomShipmentView.SetWorkCode(const Value: IJanuaField);
begin
  FWorkCode := Value;
end;

function TCustomShipmentView.GetTravelIdentificationCode: IJanuaField;
begin
  Result := FTravelIdentificationCode;
end;

procedure TCustomShipmentView.SetTravelIdentificationCode(const Value: IJanuaField);
begin
  FTravelIdentificationCode := Value;
end;

function TCustomShipmentView.GetCarrierId: IJanuaField;
begin
  Result := FCarrierId;
end;

procedure TCustomShipmentView.SetCarrierId(const Value: IJanuaField);
begin
  FCarrierId := Value;
end;

function TCustomShipmentView.GetCarrierCode: IJanuaField;
begin
  Result := FCarrierCode;
end;

procedure TCustomShipmentView.SetCarrierCode(const Value: IJanuaField);
begin
  FCarrierCode := Value;
end;

function TCustomShipmentView.GetWorkflowId: IJanuaField;
begin
  Result := FWorkflowId;
end;

procedure TCustomShipmentView.SetWorkflowId(const Value: IJanuaField);
begin
  FWorkflowId := Value;
end;

function TCustomShipmentView.GetPolId: IJanuaField;
begin
  Result := FPolId;
end;

procedure TCustomShipmentView.SetPolId(const Value: IJanuaField);
begin
  FPolId := Value;
end;

function TCustomShipmentView.GetPolCode: IJanuaField;
begin
  Result := FPolCode;
end;

procedure TCustomShipmentView.SetPolCode(const Value: IJanuaField);
begin
  FPolCode := Value;
end;

function TCustomShipmentView.GetPolName: IJanuaField;
begin
  Result := FPolName;
end;

function TCustomShipmentView.GetPoNumber: IJanuaField;
begin
   Result := FPoNumber
end;

procedure TCustomShipmentView.SetPolName(const Value: IJanuaField);
begin
  FPolName := Value;
end;

procedure TCustomShipmentView.SetPoNumber(const Value: IJanuaField);
begin
  FPoNumber := Value
end;

function TCustomShipmentView.GetPodId: IJanuaField;
begin
  Result := FPodId;
end;

procedure TCustomShipmentView.SetPodId(const Value: IJanuaField);
begin
  FPodId := Value;
end;

function TCustomShipmentView.GetPodName: IJanuaField;
begin
  Result := FPodName;
end;

procedure TCustomShipmentView.SetPodName(const Value: IJanuaField);
begin
  FPodName := Value;
end;

function TCustomShipmentView.GetPodCode: IJanuaField;
begin
  Result := FPodCode;
end;

procedure TCustomShipmentView.SetPodCode(const Value: IJanuaField);
begin
  FPodCode := Value;
end;

function TCustomShipmentView.GetCustomerId: IJanuaField;
begin
  Result := FCustomerId;
end;

procedure TCustomShipmentView.SetCustomerId(const Value: IJanuaField);
begin
  FCustomerId := Value;
end;

function TCustomShipmentView.GetNotes: IJanuaField;
begin
  Result := FNotes;
end;

procedure TCustomShipmentView.SetNotes(const Value: IJanuaField);
begin
  FNotes := Value;
end;

function TCustomShipmentView.GetWarehouseId: IJanuaField;
begin
  Result := FWarehouseId;
end;

procedure TCustomShipmentView.SetWarehouseId(const Value: IJanuaField);
begin
  FWarehouseId := Value;
end;

function TCustomShipmentView.GetWorkDate: IJanuaField;
begin
  Result := FWorkDate;
end;

procedure TCustomShipmentView.SetWorkDate(const Value: IJanuaField);
begin
  FWorkDate := Value;
end;

function TCustomShipmentView.GetOrderState: IJanuaField;
begin
  Result := FOrderState;
end;

procedure TCustomShipmentView.SetOrderState(const Value: IJanuaField);
begin
  FOrderState := Value;
end;

function TCustomShipmentView.GetAirportId: IJanuaField;
begin
  Result := FAirportId;
end;

procedure TCustomShipmentView.SetAirportId(const Value: IJanuaField);
begin
  FAirportId := Value;
end;

function TCustomShipmentView.GetAirportCode: IJanuaField;
begin
  Result := FAirportCode;
end;

procedure TCustomShipmentView.SetAirportCode(const Value: IJanuaField);
begin
  FAirportCode := Value;
end;

function TCustomShipmentView.GetAwbNumber: IJanuaField;
begin
  Result := FAwbNumber;
end;

procedure TCustomShipmentView.SetAwbNumber(const Value: IJanuaField);
begin
  FAwbNumber := Value;
end;

function TCustomShipmentView.GetInternalNotes: IJanuaField;
begin
  Result := FInternalNotes;
end;

procedure TCustomShipmentView.SetInternalNotes(const Value: IJanuaField);
begin
  FInternalNotes := Value;
end;

function TCustomShipmentView.GetInternalNotes2: IJanuaField;
begin
  Result := FInternalNotes2;
end;

procedure TCustomShipmentView.SetInternalNotes2(const Value: IJanuaField);
begin
  FInternalNotes2 := Value;
end;

function TCustomShipmentView.GetWarehouseNotes: IJanuaField;
begin
  Result := FWarehouseNotes;
end;

procedure TCustomShipmentView.SetWarehouseNotes(const Value: IJanuaField);
begin
  FWarehouseNotes := Value;
end;

function TCustomShipmentView.GetRouteType: IJanuaField;
begin
  Result := FRouteType;
end;

procedure TCustomShipmentView.SetRouteType(const Value: IJanuaField);
begin
  FRouteType := Value;
end;

function TCustomShipmentView.GetInternetVisible: IJanuaField;
begin
  Result := FInternetVisible;
end;

procedure TCustomShipmentView.SetInternetVisible(const Value: IJanuaField);
begin
  FInternetVisible := Value;
end;

function TCustomShipmentView.GetFlagAir: IJanuaField;
begin
  Result := FFlagAir;
end;

procedure TCustomShipmentView.SetFlagAir(const Value: IJanuaField);
begin
  FFlagAir := Value;
end;

function TCustomShipmentView.GetFlagGround: IJanuaField;
begin
  Result := FFlagGround;
end;

procedure TCustomShipmentView.SetFlagGround(const Value: IJanuaField);
begin
  FFlagGround := Value;
end;

function TCustomShipmentView.GetDepartureDate: IJanuaField;
begin
  Result := FDepartureDate;
end;

procedure TCustomShipmentView.SetDepartureDate(const Value: IJanuaField);
begin
  FDepartureDate := Value;
end;

function TCustomShipmentView.GetArrivalDate: IJanuaField;
begin
  Result := FArrivalDate;
end;

procedure TCustomShipmentView.SetArrivalDate(const Value: IJanuaField);
begin
  FArrivalDate := Value;
end;

function TCustomShipmentView.GetPoState: IJanuaField;
begin
  Result := FPoState;
end;

procedure TCustomShipmentView.SetPoState(const Value: IJanuaField);
begin
  FPoState := Value;
end;

function TCustomShipmentView.GetPoLevel: IJanuaField;
begin
  Result := FPoLevel;
end;

procedure TCustomShipmentView.SetPoLevel(const Value: IJanuaField);
begin
  FPoLevel := Value;
end;

function TCustomShipmentView.GetFinalDate: IJanuaField;
begin
  Result := FFinalDate;
end;

procedure TCustomShipmentView.SetFinalDate(const Value: IJanuaField);
begin
  FFinalDate := Value;
end;

function TCustomShipmentView.GetFlgHouse: IJanuaField;
begin
  Result := FFlgHouse;
end;

procedure TCustomShipmentView.SetFlgHouse(const Value: IJanuaField);
begin
  FFlgHouse := Value;
end;

function TCustomShipmentView.GetFlgMaster: IJanuaField;
begin
  Result := FFlgMaster;
end;

procedure TCustomShipmentView.SetFlgMaster(const Value: IJanuaField);
begin
  FFlgMaster := Value;
end;

function TCustomShipmentView.GetDelivered: IJanuaField;
begin
  Result := FDelivered;
end;

procedure TCustomShipmentView.SetDelivered(const Value: IJanuaField);
begin
  FDelivered := Value;
end;

function TCustomShipmentView.GetFlgBillable: IJanuaField;
begin
  Result := FFlgBillable;
end;

procedure TCustomShipmentView.SetFlgBillable(const Value: IJanuaField);
begin
  FFlgBillable := Value;
end;

function TCustomShipmentView.GetCustomsDeclearer: IJanuaField;
begin
  Result := FCustomsDeclearer;
end;

procedure TCustomShipmentView.SetCustomsDeclearer(const Value: IJanuaField);
begin
  FCustomsDeclearer := Value;
end;

function TCustomShipmentView.GetCustomsDate: IJanuaField;
begin
  Result := FCustomsDate;
end;

procedure TCustomShipmentView.SetCustomsDate(const Value: IJanuaField);
begin
  FCustomsDate := Value;
end;

function TCustomShipmentView.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomShipmentView.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomShipmentView.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomShipmentView.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomShipmentView.GetDeleted: IJanuaField;
begin
  Result := FDeleted;
end;

procedure TCustomShipmentView.SetDeleted(const Value: IJanuaField);
begin
  FDeleted := Value;
end;

function TCustomShipmentView.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomShipmentView.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomShipmentView.GetCarrierName: IJanuaField;
begin
  Result := FCarrierName;
end;

procedure TCustomShipmentView.SetCarrierName(const Value: IJanuaField);
begin
  FCarrierName := Value;
end;

function TCustomShipmentView.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomShipmentView.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomShipmentView.GetTypeId: IJanuaField;
begin
  Result := FTypeId;
end;

procedure TCustomShipmentView.SetTypeId(const Value: IJanuaField);
begin
  FTypeId := Value;
end;

function TCustomShipmentView.GetLevelId: IJanuaField;
begin
  Result := FLevelId;
end;

procedure TCustomShipmentView.SetLevelId(const Value: IJanuaField);
begin
  FLevelId := Value;
end;

function TCustomShipmentView.GetAgentName: IJanuaField;
begin
  Result := FAgentName;
end;

procedure TCustomShipmentView.SetAgentName(const Value: IJanuaField);
begin
  FAgentName := Value;
end;

function TCustomShipmentView.GetAgentCode: IJanuaField;
begin
  Result := FAgentCode;
end;

procedure TCustomShipmentView.SetAgentCode(const Value: IJanuaField);
begin
  FAgentCode := Value;
end;

function TCustomShipmentView.GetAgentTown: IJanuaField;
begin
  Result := FAgentTown;
end;

procedure TCustomShipmentView.SetAgentTown(const Value: IJanuaField);
begin
  FAgentTown := Value;
end;

function TCustomShipmentView.GetShipperName: IJanuaField;
begin
  Result := FShipperName;
end;

procedure TCustomShipmentView.SetShipperName(const Value: IJanuaField);
begin
  FShipperName := Value;
end;

function TCustomShipmentView.GetShipperCode: IJanuaField;
begin
  Result := FShipperCode;
end;

procedure TCustomShipmentView.SetShipperCode(const Value: IJanuaField);
begin
  FShipperCode := Value;
end;

function TCustomShipmentView.GetShipperTown: IJanuaField;
begin
  Result := FShipperTown;
end;

procedure TCustomShipmentView.SetShipperTown(const Value: IJanuaField);
begin
  FShipperTown := Value;
end;

function TCustomShipmentView.GetVesselName: IJanuaField;
begin
  Result := FVesselName;
end;

procedure TCustomShipmentView.SetVesselName(const Value: IJanuaField);
begin
  FVesselName := Value;
end;

function TCustomShipmentView.GetAirportName: IJanuaField;
begin
  Result := FAirportName;
end;

procedure TCustomShipmentView.SetAirportName(const Value: IJanuaField);
begin
  FAirportName := Value;
end;

function TCustomShipmentView.GetCarrierTown: IJanuaField;
begin
  Result := FCarrierTown;
end;

procedure TCustomShipmentView.SetCarrierTown(const Value: IJanuaField);
begin
  FCarrierTown := Value;
end;

function TCustomShipmentView.GetCustomerName: IJanuaField;
begin
  Result := FCustomerName;
end;

procedure TCustomShipmentView.SetCustomerName(const Value: IJanuaField);
begin
  FCustomerName := Value;
end;

function TCustomShipmentView.GetCustomerCode: IJanuaField;
begin
  Result := FCustomerCode;
end;

procedure TCustomShipmentView.SetCustomerCode(const Value: IJanuaField);
begin
  FCustomerCode := Value;
end;

function TCustomShipmentView.GetCustomerTown: IJanuaField;
begin
  Result := FCustomerTown;
end;

procedure TCustomShipmentView.SetCustomerTown(const Value: IJanuaField);
begin
  FCustomerTown := Value;
end;

function TCustomShipmentView.GetCustomerAddress: IJanuaField;
begin
  Result := FCustomerAddress;
end;

procedure TCustomShipmentView.SetCustomerAddress(const Value: IJanuaField);
begin
  FCustomerAddress := Value;
end;

function TCustomShipmentView.GetCustomerPostalCode: IJanuaField;
begin
  Result := FCustomerPostalCode;
end;

procedure TCustomShipmentView.SetCustomerPostalCode(const Value: IJanuaField);
begin
  FCustomerPostalCode := Value;
end;

function TCustomShipmentView.GetCustomerPhone: IJanuaField;
begin
  Result := FCustomerPhone;
end;

procedure TCustomShipmentView.SetCustomerPhone(const Value: IJanuaField);
begin
  FCustomerPhone := Value;
end;

{ TCustomShipmentsView }
constructor TCustomShipmentsView.Create;
begin
  inherited;
  self.FRecord := TShipmentViewFactory.CreateRecord('ShipmentView');
end;

function TCustomShipmentsView.GetId: IJanuaField;
begin
  Result := GetCustomShipmentView.Id;
end;

procedure TCustomShipmentsView.SetId(const Value: IJanuaField);
begin
  GetCustomShipmentView.Id := Value;
end;

function TCustomShipmentsView.GetJguid: IJanuaField;
begin
  Result := GetCustomShipmentView.Jguid;
end;

procedure TCustomShipmentsView.SetJguid(const Value: IJanuaField);
begin
  GetCustomShipmentView.Jguid := Value;
end;

function TCustomShipmentsView.GetCreationDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CreationDate;
end;

procedure TCustomShipmentsView.SetCreationDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CreationDate := Value;
end;

function TCustomShipmentsView.GetPickupDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PickupDate;
end;

procedure TCustomShipmentsView.SetPickupDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PickupDate := Value;
end;

function TCustomShipmentsView.GetDeliveryDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.DeliveryDate;
end;

procedure TCustomShipmentsView.SetDeliveryDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.DeliveryDate := Value;
end;

function TCustomShipmentsView.GetOfficeId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.OfficeId;
end;

procedure TCustomShipmentsView.SetOfficeId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.OfficeId := Value;
end;

function TCustomShipmentsView.GetWorkflowUid: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WorkflowUid;
end;

function TCustomShipmentsView.GetWorkNumber: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WorkNumber;
end;

procedure TCustomShipmentsView.SetWorkflowUid(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.WorkflowUid := Value;
end;

procedure TCustomShipmentsView.SetWorkNumber(const Value: IJanuaField);
begin
   GetCustomShipmentView.WorkNumber := Value
end;

function TCustomShipmentsView.GetAgentId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AgentId;
end;

procedure TCustomShipmentsView.SetAgentId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AgentId := Value;
end;

function TCustomShipmentsView.GetShipperId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ShipperId;
end;

procedure TCustomShipmentsView.SetShipperId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ShipperId := Value;
end;

function TCustomShipmentsView.GetShipperAddress: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ShipperAddress;
end;

procedure TCustomShipmentsView.SetShipperAddress(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ShipperAddress := Value;
end;

function TCustomShipmentsView.GetPickupAddress: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PickupAddress;
end;

procedure TCustomShipmentsView.SetPickupAddress(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PickupAddress := Value;
end;

function TCustomShipmentsView.GetYear: IJanuaField;
begin
  Result := self.GetCustomShipmentView.Year;
end;

procedure TCustomShipmentsView.SetYear(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.Year := Value;
end;

function TCustomShipmentsView.GetGroupageNumber: IJanuaField;
begin
  Result := self.GetCustomShipmentView.GroupageNumber;
end;

procedure TCustomShipmentsView.SetGroupageNumber(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.GroupageNumber := Value;
end;

function TCustomShipmentsView.GetExportTypeId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ExportTypeId;
end;

procedure TCustomShipmentsView.SetExportTypeId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ExportTypeId := Value;
end;

function TCustomShipmentsView.GetFullcontainer: IJanuaField;
begin
  Result := self.GetCustomShipmentView.Fullcontainer;
end;

procedure TCustomShipmentsView.SetFullcontainer(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.Fullcontainer := Value;
end;

function TCustomShipmentsView.GetVesselId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.VesselId;
end;

procedure TCustomShipmentsView.SetVesselId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.VesselId := Value;
end;

function TCustomShipmentsView.GetWorkCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WorkCode;
end;

procedure TCustomShipmentsView.SetWorkCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.WorkCode := Value;
end;

function TCustomShipmentsView.GetTravelIdentificationCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.TravelIdentificationCode;
end;

procedure TCustomShipmentsView.SetTravelIdentificationCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.TravelIdentificationCode := Value;
end;

function TCustomShipmentsView.GetCarrierId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CarrierId;
end;

procedure TCustomShipmentsView.SetCarrierId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CarrierId := Value;
end;

function TCustomShipmentsView.GetCarrierCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CarrierCode;
end;

procedure TCustomShipmentsView.SetCarrierCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CarrierCode := Value;
end;

function TCustomShipmentsView.GetWorkflowId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WorkflowId;
end;

procedure TCustomShipmentsView.SetWorkflowId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.WorkflowId := Value;
end;

function TCustomShipmentsView.GetPolId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PolId;
end;

procedure TCustomShipmentsView.SetPolId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PolId := Value;
end;

function TCustomShipmentsView.GetPolCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PolCode;
end;

procedure TCustomShipmentsView.SetPolCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PolCode := Value;
end;

function TCustomShipmentsView.GetPolName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PolName;
end;

function TCustomShipmentsView.GetPoNumber: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PoNumber
end;

procedure TCustomShipmentsView.SetPolName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PolName := Value;
end;

procedure TCustomShipmentsView.SetPoNumber(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PoNumber := Value
end;

function TCustomShipmentsView.GetPodId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PodId;
end;

procedure TCustomShipmentsView.SetPodId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PodId := Value;
end;

function TCustomShipmentsView.GetPodName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PodName;
end;

procedure TCustomShipmentsView.SetPodName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PodName := Value;
end;

function TCustomShipmentsView.GetPodCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PodCode;
end;

procedure TCustomShipmentsView.SetPodCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PodCode := Value;
end;

function TCustomShipmentsView.GetCustomerId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerId;
end;

procedure TCustomShipmentsView.SetCustomerId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerId := Value;
end;

function TCustomShipmentsView.GetNotes: IJanuaField;
begin
  Result := self.GetCustomShipmentView.Notes;
end;

procedure TCustomShipmentsView.SetNotes(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.Notes := Value;
end;

function TCustomShipmentsView.GetWarehouseId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WarehouseId;
end;

procedure TCustomShipmentsView.SetWarehouseId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.WarehouseId := Value;
end;

function TCustomShipmentsView.GetWorkDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WorkDate;
end;

procedure TCustomShipmentsView.SetWorkDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.WorkDate := Value;
end;

function TCustomShipmentsView.GetOrderState: IJanuaField;
begin
  Result := self.GetCustomShipmentView.OrderState;
end;

procedure TCustomShipmentsView.SetOrderState(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.OrderState := Value;
end;

function TCustomShipmentsView.GetAirportId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AirportId;
end;

procedure TCustomShipmentsView.SetAirportId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AirportId := Value;
end;

function TCustomShipmentsView.GetAirportCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AirportCode;
end;

procedure TCustomShipmentsView.SetAirportCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AirportCode := Value;
end;

function TCustomShipmentsView.GetAwbNumber: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AwbNumber;
end;

procedure TCustomShipmentsView.SetAwbNumber(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AwbNumber := Value;
end;

function TCustomShipmentsView.GetInternalNotes: IJanuaField;
begin
  Result := self.GetCustomShipmentView.InternalNotes;
end;

procedure TCustomShipmentsView.SetInternalNotes(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.InternalNotes := Value;
end;

function TCustomShipmentsView.GetInternalNotes2: IJanuaField;
begin
  Result := self.GetCustomShipmentView.InternalNotes2;
end;

procedure TCustomShipmentsView.SetInternalNotes2(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.InternalNotes2 := Value;
end;

function TCustomShipmentsView.GetWarehouseNotes: IJanuaField;
begin
  Result := self.GetCustomShipmentView.WarehouseNotes;
end;

procedure TCustomShipmentsView.SetWarehouseNotes(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.WarehouseNotes := Value;
end;

function TCustomShipmentsView.GetRouteType: IJanuaField;
begin
  Result := self.GetCustomShipmentView.RouteType;
end;

procedure TCustomShipmentsView.SetRouteType(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.RouteType := Value;
end;

function TCustomShipmentsView.GetInternetVisible: IJanuaField;
begin
  Result := self.GetCustomShipmentView.InternetVisible;
end;

procedure TCustomShipmentsView.SetInternetVisible(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.InternetVisible := Value;
end;

function TCustomShipmentsView.GetFlagAir: IJanuaField;
begin
  Result := self.GetCustomShipmentView.FlagAir;
end;

procedure TCustomShipmentsView.SetFlagAir(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.FlagAir := Value;
end;

function TCustomShipmentsView.GetFlagGround: IJanuaField;
begin
  Result := self.GetCustomShipmentView.FlagGround;
end;

procedure TCustomShipmentsView.SetFlagGround(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.FlagGround := Value;
end;

function TCustomShipmentsView.GetDepartureDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.DepartureDate;
end;

procedure TCustomShipmentsView.SetDepartureDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.DepartureDate := Value;
end;

function TCustomShipmentsView.GetArrivalDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ArrivalDate;
end;

procedure TCustomShipmentsView.SetArrivalDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ArrivalDate := Value;
end;

function TCustomShipmentsView.GetPoState: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PoState;
end;

procedure TCustomShipmentsView.SetPoState(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PoState := Value;
end;

function TCustomShipmentsView.GetPoLevel: IJanuaField;
begin
  Result := self.GetCustomShipmentView.PoLevel;
end;

procedure TCustomShipmentsView.SetPoLevel(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.PoLevel := Value;
end;

function TCustomShipmentsView.GetFinalDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.FinalDate;
end;

procedure TCustomShipmentsView.SetFinalDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.FinalDate := Value;
end;

function TCustomShipmentsView.GetFlgHouse: IJanuaField;
begin
  Result := self.GetCustomShipmentView.FlgHouse;
end;

procedure TCustomShipmentsView.SetFlgHouse(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.FlgHouse := Value;
end;

function TCustomShipmentsView.GetFlgMaster: IJanuaField;
begin
  Result := self.GetCustomShipmentView.FlgMaster;
end;

procedure TCustomShipmentsView.SetFlgMaster(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.FlgMaster := Value;
end;

function TCustomShipmentsView.GetDelivered: IJanuaField;
begin
  Result := self.GetCustomShipmentView.Delivered;
end;

procedure TCustomShipmentsView.SetDelivered(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.Delivered := Value;
end;

function TCustomShipmentsView.GetFlgBillable: IJanuaField;
begin
  Result := self.GetCustomShipmentView.FlgBillable;
end;

procedure TCustomShipmentsView.SetFlgBillable(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.FlgBillable := Value;
end;

function TCustomShipmentsView.GetCustomsDeclearer: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomsDeclearer;
end;

function TCustomShipmentsView.GetCustomShipmentView: ICustomShipmentsView;
begin
  Result := FRecord as ICustomShipmentsView
end;

procedure TCustomShipmentsView.SetCustomsDeclearer(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomsDeclearer := Value;
end;

function TCustomShipmentsView.GetCustomsDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomsDate;
end;

procedure TCustomShipmentsView.SetCustomsDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomsDate := Value;
end;

function TCustomShipmentsView.GetUpdateDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.UpdateDate;
end;

procedure TCustomShipmentsView.SetUpdateDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.UpdateDate := Value;
end;

function TCustomShipmentsView.GetInsertDate: IJanuaField;
begin
  Result := self.GetCustomShipmentView.InsertDate;
end;

procedure TCustomShipmentsView.SetInsertDate(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.InsertDate := Value;
end;

function TCustomShipmentsView.GetDeleted: IJanuaField;
begin
  Result := self.GetCustomShipmentView.Deleted;
end;

procedure TCustomShipmentsView.SetDeleted(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.Deleted := Value;
end;

function TCustomShipmentsView.GetDbSchemaId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.DbSchemaId;
end;

procedure TCustomShipmentsView.SetDbSchemaId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.DbSchemaId := Value;
end;

function TCustomShipmentsView.GetCarrierName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CarrierName;
end;

procedure TCustomShipmentsView.SetCarrierName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CarrierName := Value;
end;

function TCustomShipmentsView.GetCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.Code;
end;

procedure TCustomShipmentsView.SetCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.Code := Value;
end;

function TCustomShipmentsView.GetTypeId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.TypeId;
end;

procedure TCustomShipmentsView.SetTypeId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.TypeId := Value;
end;

function TCustomShipmentsView.GetLevelId: IJanuaField;
begin
  Result := self.GetCustomShipmentView.LevelId;
end;

procedure TCustomShipmentsView.SetLevelId(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.LevelId := Value;
end;

function TCustomShipmentsView.GetAgentName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AgentName;
end;

procedure TCustomShipmentsView.SetAgentName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AgentName := Value;
end;

function TCustomShipmentsView.GetAgentCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AgentCode;
end;

procedure TCustomShipmentsView.SetAgentCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AgentCode := Value;
end;

function TCustomShipmentsView.GetAgentTown: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AgentTown;
end;

procedure TCustomShipmentsView.SetAgentTown(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AgentTown := Value;
end;

function TCustomShipmentsView.GetShipperName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ShipperName;
end;

procedure TCustomShipmentsView.SetShipperName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ShipperName := Value;
end;

function TCustomShipmentsView.GetShipperCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ShipperCode;
end;

procedure TCustomShipmentsView.SetShipperCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ShipperCode := Value;
end;

function TCustomShipmentsView.GetShipperTown: IJanuaField;
begin
  Result := self.GetCustomShipmentView.ShipperTown;
end;

procedure TCustomShipmentsView.SetShipperTown(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.ShipperTown := Value;
end;

function TCustomShipmentsView.GetVesselName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.VesselName;
end;

procedure TCustomShipmentsView.SetVesselName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.VesselName := Value;
end;

function TCustomShipmentsView.GetAirportName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.AirportName;
end;

procedure TCustomShipmentsView.SetAirportName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.AirportName := Value;
end;

function TCustomShipmentsView.GetCarrierTown: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CarrierTown;
end;

procedure TCustomShipmentsView.SetCarrierTown(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CarrierTown := Value;
end;

function TCustomShipmentsView.GetCustomerName: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerName;
end;

procedure TCustomShipmentsView.SetCustomerName(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerName := Value;
end;

function TCustomShipmentsView.GetCustomerCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerCode;
end;

procedure TCustomShipmentsView.SetCustomerCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerCode := Value;
end;

function TCustomShipmentsView.GetCustomerTown: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerTown;
end;

procedure TCustomShipmentsView.SetCustomerTown(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerTown := Value;
end;

function TCustomShipmentsView.GetCustomerAddress: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerAddress;
end;

procedure TCustomShipmentsView.SetCustomerAddress(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerAddress := Value;
end;

function TCustomShipmentsView.GetCustomerPostalCode: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerPostalCode;
end;

procedure TCustomShipmentsView.SetCustomerPostalCode(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerPostalCode := Value;
end;

function TCustomShipmentsView.GetCustomerPhone: IJanuaField;
begin
  Result := self.GetCustomShipmentView.CustomerPhone;
end;

procedure TCustomShipmentsView.SetCustomerPhone(const Value: IJanuaField);
begin
  self.GetCustomShipmentView.CustomerPhone := Value;
end;

{ TShipmentViewFactory }

class function TShipmentViewFactory.CreateRecord(const aKey: string): ICustomShipmentView;
begin
  Result := TCustomShipmentView.Create;
end;

class function TShipmentViewFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): ICustomShipmentsView;
begin
  Result := TCustomShipmentsView.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
