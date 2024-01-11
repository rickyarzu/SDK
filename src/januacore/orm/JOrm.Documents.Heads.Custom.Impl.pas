unit JOrm.Documents.Heads.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.Heads.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomDocHead = class(TJanuaRecord, ICustomDocHead)
  private
    FId: IJanuaField;
    FTypeId: IJanuaField;
    FInOut: IJanuaField;
    FDocDate: IJanuaField;
    FDocNumber: IJanuaField;
    FReason: IJanuaField;
    FDestAddress: IJanuaField;
    FDestPostalCode: IJanuaField;
    FDestTown: IJanuaField;
    FDestStateProvince: IJanuaField;
    FDestCountryIso: IJanuaField;
    FDepartureDate: IJanuaField;
    FDeliveryMethos: IJanuaField;
    FGoodsDescription: IJanuaField;
    FPackagesNumber: IJanuaField;
    FTotalWeight: IJanuaField;
    FIncoterms: IJanuaField;
    FDeliveryCharges: IJanuaField;
    FDiscountRate: IJanuaField;
    FAnagraphId: IJanuaField;
    FCarrierId: IJanuaField;
    FDestStateProvinceId: IJanuaField;
    FDestRegionId: IJanuaField;
    FDestTownId: IJanuaField;
    FCurrencyId: IJanuaField;
    FPaymentTermsId: IJanuaField;
    FPaymentTermsDes: IJanuaField;
    FPackageDescription: IJanuaField;
    FPaymentTermCode: IJanuaField;
    FFolderId: IJanuaField;
    FDocState: IJanuaField;
    FHolderName: IJanuaField;
    FHolderId: IJanuaField;
    FHolderVatId: IJanuaField;
    FHolderAddress: IJanuaField;
    FHolderPostalCode: IJanuaField;
    FHolderTown: IJanuaField;
    FHolderStateProvince: IJanuaField;
    FHolderCountryIso: IJanuaField;
    FDeliveryRateExpense: IJanuaField;
    FHolderGroupId: IJanuaField;
    FAmount: IJanuaField;
    FNetAmount: IJanuaField;
    FFinancialYear: IJanuaField;
    FDocOriginId: IJanuaField;
    FDeliveryVatId: IJanuaField;
    FDeliveryVatRate: IJanuaField;
    FAccounted: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FDeliveryDueDate: IJanuaField;
    FSent: IJanuaField;
    FArrivalDate: IJanuaField;
    FPaymentDueDate: IJanuaField;
    FDuties: IJanuaField;
    FPaid: IJanuaField;
    FDocFine: IJanuaField;
    FUserInsert: IJanuaField;
    FUserUpdate: IJanuaField;
    FDocYear: IJanuaField;
    FPoNumberId: IJanuaField;
    FPoNumber: IJanuaField;
    FPrinted: IJanuaField;
    FContactName: IJanuaField;
    FContactEmail: IJanuaField;
    FContactPhone: IJanuaField;
    FOfficeId: IJanuaField;
    FWarehouseLocationId: IJanuaField;
    FJguid: IJanuaField;
    FNotes1: IJanuaField;
    FNotes2: IJanuaField;
    FNotes3: IJanuaField;
    FDbSchemaId: IJanuaField;
    FPurchaseOrderNumber: IJanuaField;
    FCustomField1: IJanuaField;
    FCustomField2: IJanuaField;
    FCustomField3: IJanuaField;
    FCustomInt1: IJanuaField;
    FCustomInt2: IJanuaField;
    FCustomInt3: IJanuaField;
    FDocRefCode: IJanuaField;
    FCarrierExpenses: IJanuaField;
    FRegistryCode: IJanuaField;
    FCarrierTrackingNumber: IJanuaField;
    FCarrierExpensesCurrencyId: IJanuaField;
    FSearchIndex: IJanuaField;
    FDestName: IJanuaField;
    FCarrierName: IJanuaField;
    FLocationName: IJanuaField;
    FGoodsTypeId: IJanuaField;
    FImportexport: IJanuaField;
    FCarrierInvoiceNumber: IJanuaField;
    FCarrierInvoiceDate: IJanuaField;
    FVesselDepartmentId: IJanuaField;
    // vessel_id
    FVesselID: IJanuaField;
    // vessel_name
    FVesselName: IJanuaField;
    // vessel_code
    FVesselCode: IJanuaField;
    // location_code
    FLocationCode: IJanuaField;
    FShipmentDes: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetInOut: IJanuaField;
    procedure SetInOut(const Value: IJanuaField);
    function GetDocDate: IJanuaField;
    procedure SetDocDate(const Value: IJanuaField);
    function GetDocNumber: IJanuaField;
    procedure SetDocNumber(const Value: IJanuaField);
    function GetReason: IJanuaField;
    procedure SetReason(const Value: IJanuaField);
    function GetDestAddress: IJanuaField;
    procedure SetDestAddress(const Value: IJanuaField);
    function GetDestPostalCode: IJanuaField;
    procedure SetDestPostalCode(const Value: IJanuaField);
    function GetDestTown: IJanuaField;
    procedure SetDestTown(const Value: IJanuaField);
    function GetDestStateProvince: IJanuaField;
    procedure SetDestStateProvince(const Value: IJanuaField);
    function GetDestCountryIso: IJanuaField;
    procedure SetDestCountryIso(const Value: IJanuaField);
    function GetDepartureDate: IJanuaField;
    procedure SetDepartureDate(const Value: IJanuaField);
    function GetDeliveryMethos: IJanuaField;
    procedure SetDeliveryMethos(const Value: IJanuaField);
    function GetGoodsDescription: IJanuaField;
    procedure SetGoodsDescription(const Value: IJanuaField);
    function GetPackagesNumber: IJanuaField;
    procedure SetPackagesNumber(const Value: IJanuaField);
    function GetTotalWeight: IJanuaField;
    procedure SetTotalWeight(const Value: IJanuaField);
    function GetIncoterms: IJanuaField;
    procedure SetIncoterms(const Value: IJanuaField);
    function GetDeliveryCharges: IJanuaField;
    procedure SetDeliveryCharges(const Value: IJanuaField);
    function GetDiscountRate: IJanuaField;
    procedure SetDiscountRate(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetCarrierId: IJanuaField;
    procedure SetCarrierId(const Value: IJanuaField);
    function GetDestStateProvinceId: IJanuaField;
    procedure SetDestStateProvinceId(const Value: IJanuaField);
    function GetDestRegionId: IJanuaField;
    procedure SetDestRegionId(const Value: IJanuaField);
    function GetDestTownId: IJanuaField;
    procedure SetDestTownId(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetPaymentTermsId: IJanuaField;
    procedure SetPaymentTermsId(const Value: IJanuaField);
    function GetPaymentTermsDes: IJanuaField;
    procedure SetPaymentTermsDes(const Value: IJanuaField);
    function GetPackageDescription: IJanuaField;
    procedure SetPackageDescription(const Value: IJanuaField);
    function GetPaymentTermCode: IJanuaField;
    procedure SetPaymentTermCode(const Value: IJanuaField);
    function GetFolderId: IJanuaField;
    procedure SetFolderId(const Value: IJanuaField);
    function GetDocState: IJanuaField;
    procedure SetDocState(const Value: IJanuaField);
    function GetHolderName: IJanuaField;
    procedure SetHolderName(const Value: IJanuaField);
    function GetHolderId: IJanuaField;
    procedure SetHolderId(const Value: IJanuaField);
    function GetHolderVatId: IJanuaField;
    procedure SetHolderVatId(const Value: IJanuaField);
    function GetHolderAddress: IJanuaField;
    procedure SetHolderAddress(const Value: IJanuaField);
    function GetHolderPostalCode: IJanuaField;
    procedure SetHolderPostalCode(const Value: IJanuaField);
    function GetHolderTown: IJanuaField;
    procedure SetHolderTown(const Value: IJanuaField);
    function GetHolderStateProvince: IJanuaField;
    procedure SetHolderStateProvince(const Value: IJanuaField);
    function GetHolderCountryIso: IJanuaField;
    procedure SetHolderCountryIso(const Value: IJanuaField);
    function GetDeliveryRateExpense: IJanuaField;
    procedure SetDeliveryRateExpense(const Value: IJanuaField);
    function GetHolderGroupId: IJanuaField;
    procedure SetHolderGroupId(const Value: IJanuaField);
    function GetAmount: IJanuaField;
    procedure SetAmount(const Value: IJanuaField);
    function GetNetAmount: IJanuaField;
    procedure SetNetAmount(const Value: IJanuaField);
    function GetFinancialYear: IJanuaField;
    procedure SetFinancialYear(const Value: IJanuaField);
    function GetDocOriginId: IJanuaField;
    procedure SetDocOriginId(const Value: IJanuaField);
    function GetDeliveryVatId: IJanuaField;
    procedure SetDeliveryVatId(const Value: IJanuaField);
    function GetDeliveryVatRate: IJanuaField;
    procedure SetDeliveryVatRate(const Value: IJanuaField);
    function GetAccounted: IJanuaField;
    procedure SetAccounted(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetDeliveryDueDate: IJanuaField;
    procedure SetDeliveryDueDate(const Value: IJanuaField);
    function GetSent: IJanuaField;
    procedure SetSent(const Value: IJanuaField);
    function GetArrivalDate: IJanuaField;
    procedure SetArrivalDate(const Value: IJanuaField);
    function GetPaymentDueDate: IJanuaField;
    procedure SetPaymentDueDate(const Value: IJanuaField);
    function GetDuties: IJanuaField;
    procedure SetDuties(const Value: IJanuaField);
    function GetPaid: IJanuaField;
    procedure SetPaid(const Value: IJanuaField);
    function GetDocFine: IJanuaField;
    procedure SetDocFine(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetDocYear: IJanuaField;
    procedure SetDocYear(const Value: IJanuaField);
    function GetPoNumberId: IJanuaField;
    procedure SetPoNumberId(const Value: IJanuaField);
    function GetPoNumber: IJanuaField;
    procedure SetPoNumber(const Value: IJanuaField);
    function GetPrinted: IJanuaField;
    procedure SetPrinted(const Value: IJanuaField);
    function GetContactName: IJanuaField;
    procedure SetContactName(const Value: IJanuaField);
    function GetContactEmail: IJanuaField;
    procedure SetContactEmail(const Value: IJanuaField);
    function GetContactPhone: IJanuaField;
    procedure SetContactPhone(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetWarehouseLocationId: IJanuaField;
    procedure SetWarehouseLocationId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetNotes1: IJanuaField;
    procedure SetNotes1(const Value: IJanuaField);
    function GetNotes2: IJanuaField;
    procedure SetNotes2(const Value: IJanuaField);
    function GetNotes3: IJanuaField;
    procedure SetNotes3(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetPurchaseOrderNumber: IJanuaField;
    procedure SetPurchaseOrderNumber(const Value: IJanuaField);
    function GetCustomField1: IJanuaField;
    procedure SetCustomField1(const Value: IJanuaField);
    function GetCustomField2: IJanuaField;
    procedure SetCustomField2(const Value: IJanuaField);
    function GetCustomField3: IJanuaField;
    procedure SetCustomField3(const Value: IJanuaField);
    function GetCustomInt1: IJanuaField;
    procedure SetCustomInt1(const Value: IJanuaField);
    function GetCustomInt2: IJanuaField;
    procedure SetCustomInt2(const Value: IJanuaField);
    function GetCustomInt3: IJanuaField;
    procedure SetCustomInt3(const Value: IJanuaField);
    function GetDocRefCode: IJanuaField;
    procedure SetDocRefCode(const Value: IJanuaField);
    function GetCarrierExpenses: IJanuaField;
    procedure SetCarrierExpenses(const Value: IJanuaField);
    function GetRegistryCode: IJanuaField;
    procedure SetRegistryCode(const Value: IJanuaField);
    function GetCarrierTrackingNumber: IJanuaField;
    procedure SetCarrierTrackingNumber(const Value: IJanuaField);
    function GetCarrierExpensesCurrencyId: IJanuaField;
    procedure SetCarrierExpensesCurrencyId(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetDestName: IJanuaField;
    procedure SetDestName(const Value: IJanuaField);
    function GetCarrierName: IJanuaField;
    procedure SetCarrierName(const Value: IJanuaField);
    function GetLocationName: IJanuaField;
    procedure SetLocationName(const Value: IJanuaField);
    function GetGoodsTypeId: IJanuaField;
    procedure SetGoodsTypeId(const Value: IJanuaField);
    function GetImportexport: IJanuaField;
    procedure SetImportexport(const Value: IJanuaField);
    function GetCarrierInvoiceNumber: IJanuaField;
    procedure SetCarrierInvoiceNumber(const Value: IJanuaField);
    function GetCarrierInvoiceDate: IJanuaField;
    procedure SetCarrierInvoiceDate(const Value: IJanuaField);
    function GetVesselDepartmentId: IJanuaField;
    procedure SetVesselDepartmentId(const Value: IJanuaField);
    // vessel_id
    function GetVesselID: IJanuaField;
    procedure SetVesselID(const Value: IJanuaField);
    // vessel_name
    function GetVesselName: IJanuaField;
    procedure SetVesselName(const Value: IJanuaField);
    // vessel_code
    function GetVesselCode: IJanuaField;
    procedure SetVesselCode(const Value: IJanuaField);
    // location_code
    function GetLocationCode: IJanuaField;
    procedure SetLocationCode(const Value: IJanuaField);
    // shipment_des
    function GetShipmentDes: IJanuaField;
    procedure SetShipmentDes(const Value: IJanuaField);
  public
    constructor Create; override;
    property ShipmentDes: IJanuaField read GetShipmentDes write SetShipmentDes;
    property Id: IJanuaField read GetId write SetId;
    property VesselID: IJanuaField read GetVesselID write SetVesselID;
    property VesselName: IJanuaField read GetVesselName write SetVesselName;
    property VesselCode: IJanuaField read GetVesselCode write SetVesselCode;
    property LocationCode: IJanuaField read GetLocationCode write SetLocationCode;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property InOut: IJanuaField read GetInOut write SetInOut;
    property DocDate: IJanuaField read GetDocDate write SetDocDate;
    property DocNumber: IJanuaField read GetDocNumber write SetDocNumber;
    property Reason: IJanuaField read GetReason write SetReason;
    property DestAddress: IJanuaField read GetDestAddress write SetDestAddress;
    property DestPostalCode: IJanuaField read GetDestPostalCode write SetDestPostalCode;
    property DestTown: IJanuaField read GetDestTown write SetDestTown;
    property DestStateProvince: IJanuaField read GetDestStateProvince write SetDestStateProvince;
    property DestCountryIso: IJanuaField read GetDestCountryIso write SetDestCountryIso;
    property DepartureDate: IJanuaField read GetDepartureDate write SetDepartureDate;
    property DeliveryMethos: IJanuaField read GetDeliveryMethos write SetDeliveryMethos;
    property GoodsDescription: IJanuaField read GetGoodsDescription write SetGoodsDescription;
    property PackagesNumber: IJanuaField read GetPackagesNumber write SetPackagesNumber;
    property TotalWeight: IJanuaField read GetTotalWeight write SetTotalWeight;
    property Incoterms: IJanuaField read GetIncoterms write SetIncoterms;
    property DeliveryCharges: IJanuaField read GetDeliveryCharges write SetDeliveryCharges;
    property DiscountRate: IJanuaField read GetDiscountRate write SetDiscountRate;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property CarrierId: IJanuaField read GetCarrierId write SetCarrierId;
    property DestStateProvinceId: IJanuaField read GetDestStateProvinceId write SetDestStateProvinceId;
    property DestRegionId: IJanuaField read GetDestRegionId write SetDestRegionId;
    property DestTownId: IJanuaField read GetDestTownId write SetDestTownId;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property PaymentTermsId: IJanuaField read GetPaymentTermsId write SetPaymentTermsId;
    property PaymentTermsDes: IJanuaField read GetPaymentTermsDes write SetPaymentTermsDes;
    property PackageDescription: IJanuaField read GetPackageDescription write SetPackageDescription;
    property PaymentTermCode: IJanuaField read GetPaymentTermCode write SetPaymentTermCode;
    property FolderId: IJanuaField read GetFolderId write SetFolderId;
    property DocState: IJanuaField read GetDocState write SetDocState;
    property HolderName: IJanuaField read GetHolderName write SetHolderName;
    property HolderId: IJanuaField read GetHolderId write SetHolderId;
    property HolderVatId: IJanuaField read GetHolderVatId write SetHolderVatId;
    property HolderAddress: IJanuaField read GetHolderAddress write SetHolderAddress;
    property HolderPostalCode: IJanuaField read GetHolderPostalCode write SetHolderPostalCode;
    property HolderTown: IJanuaField read GetHolderTown write SetHolderTown;
    property HolderStateProvince: IJanuaField read GetHolderStateProvince write SetHolderStateProvince;
    property HolderCountryIso: IJanuaField read GetHolderCountryIso write SetHolderCountryIso;
    property DeliveryRateExpense: IJanuaField read GetDeliveryRateExpense write SetDeliveryRateExpense;
    property HolderGroupId: IJanuaField read GetHolderGroupId write SetHolderGroupId;
    property Amount: IJanuaField read GetAmount write SetAmount;
    property NetAmount: IJanuaField read GetNetAmount write SetNetAmount;
    property FinancialYear: IJanuaField read GetFinancialYear write SetFinancialYear;
    property DocOriginId: IJanuaField read GetDocOriginId write SetDocOriginId;
    property DeliveryVatId: IJanuaField read GetDeliveryVatId write SetDeliveryVatId;
    property DeliveryVatRate: IJanuaField read GetDeliveryVatRate write SetDeliveryVatRate;
    property Accounted: IJanuaField read GetAccounted write SetAccounted;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property DeliveryDueDate: IJanuaField read GetDeliveryDueDate write SetDeliveryDueDate;
    property Sent: IJanuaField read GetSent write SetSent;
    property ArrivalDate: IJanuaField read GetArrivalDate write SetArrivalDate;
    property PaymentDueDate: IJanuaField read GetPaymentDueDate write SetPaymentDueDate;
    property Duties: IJanuaField read GetDuties write SetDuties;
    property Paid: IJanuaField read GetPaid write SetPaid;
    property DocFine: IJanuaField read GetDocFine write SetDocFine;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property DocYear: IJanuaField read GetDocYear write SetDocYear;
    property PoNumberId: IJanuaField read GetPoNumberId write SetPoNumberId;
    property PoNumber: IJanuaField read GetPoNumber write SetPoNumber;
    property Printed: IJanuaField read GetPrinted write SetPrinted;
    property ContactName: IJanuaField read GetContactName write SetContactName;
    property ContactEmail: IJanuaField read GetContactEmail write SetContactEmail;
    property ContactPhone: IJanuaField read GetContactPhone write SetContactPhone;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property WarehouseLocationId: IJanuaField read GetWarehouseLocationId write SetWarehouseLocationId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Notes1: IJanuaField read GetNotes1 write SetNotes1;
    property Notes2: IJanuaField read GetNotes2 write SetNotes2;
    property Notes3: IJanuaField read GetNotes3 write SetNotes3;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property PurchaseOrderNumber: IJanuaField read GetPurchaseOrderNumber write SetPurchaseOrderNumber;
    property CustomField1: IJanuaField read GetCustomField1 write SetCustomField1;
    property CustomField2: IJanuaField read GetCustomField2 write SetCustomField2;
    property CustomField3: IJanuaField read GetCustomField3 write SetCustomField3;
    property CustomInt1: IJanuaField read GetCustomInt1 write SetCustomInt1;
    property CustomInt2: IJanuaField read GetCustomInt2 write SetCustomInt2;
    property CustomInt3: IJanuaField read GetCustomInt3 write SetCustomInt3;
    property DocRefCode: IJanuaField read GetDocRefCode write SetDocRefCode;
    property CarrierExpenses: IJanuaField read GetCarrierExpenses write SetCarrierExpenses;
    property RegistryCode: IJanuaField read GetRegistryCode write SetRegistryCode;
    property CarrierTrackingNumber: IJanuaField read GetCarrierTrackingNumber write SetCarrierTrackingNumber;
    property CarrierExpensesCurrencyId: IJanuaField read GetCarrierExpensesCurrencyId
      write SetCarrierExpensesCurrencyId;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property DestName: IJanuaField read GetDestName write SetDestName;
    property CarrierName: IJanuaField read GetCarrierName write SetCarrierName;
    property LocationName: IJanuaField read GetLocationName write SetLocationName;
    property GoodsTypeId: IJanuaField read GetGoodsTypeId write SetGoodsTypeId;
    property Importexport: IJanuaField read GetImportexport write SetImportexport;
    property CarrierInvoiceNumber: IJanuaField read GetCarrierInvoiceNumber write SetCarrierInvoiceNumber;
    property CarrierInvoiceDate: IJanuaField read GetCarrierInvoiceDate write SetCarrierInvoiceDate;
    property VesselDepartmentId: IJanuaField read GetVesselDepartmentId write SetVesselDepartmentId;

  end;

  TCustomDocHeads = class(TJanuaRecordSet, IJanuaRecordSet, ICustomDocHeads)
  strict protected
    function GetCustomDocHead: ICustomDocHead;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetInOut: IJanuaField;
    procedure SetInOut(const Value: IJanuaField);
    function GetDocDate: IJanuaField;
    procedure SetDocDate(const Value: IJanuaField);
    function GetDocNumber: IJanuaField;
    procedure SetDocNumber(const Value: IJanuaField);
    function GetReason: IJanuaField;
    procedure SetReason(const Value: IJanuaField);
    function GetDestAddress: IJanuaField;
    procedure SetDestAddress(const Value: IJanuaField);
    function GetDestPostalCode: IJanuaField;
    procedure SetDestPostalCode(const Value: IJanuaField);
    function GetDestTown: IJanuaField;
    procedure SetDestTown(const Value: IJanuaField);
    function GetDestStateProvince: IJanuaField;
    procedure SetDestStateProvince(const Value: IJanuaField);
    function GetDestCountryIso: IJanuaField;
    procedure SetDestCountryIso(const Value: IJanuaField);
    function GetDepartureDate: IJanuaField;
    procedure SetDepartureDate(const Value: IJanuaField);
    function GetDeliveryMethos: IJanuaField;
    procedure SetDeliveryMethos(const Value: IJanuaField);
    function GetGoodsDescription: IJanuaField;
    procedure SetGoodsDescription(const Value: IJanuaField);
    function GetPackagesNumber: IJanuaField;
    procedure SetPackagesNumber(const Value: IJanuaField);
    function GetTotalWeight: IJanuaField;
    procedure SetTotalWeight(const Value: IJanuaField);
    function GetIncoterms: IJanuaField;
    procedure SetIncoterms(const Value: IJanuaField);
    function GetDeliveryCharges: IJanuaField;
    procedure SetDeliveryCharges(const Value: IJanuaField);
    function GetDiscountRate: IJanuaField;
    procedure SetDiscountRate(const Value: IJanuaField);
    function GetAnagraphId: IJanuaField;
    procedure SetAnagraphId(const Value: IJanuaField);
    function GetCarrierId: IJanuaField;
    procedure SetCarrierId(const Value: IJanuaField);
    function GetDestStateProvinceId: IJanuaField;
    procedure SetDestStateProvinceId(const Value: IJanuaField);
    function GetDestRegionId: IJanuaField;
    procedure SetDestRegionId(const Value: IJanuaField);
    function GetDestTownId: IJanuaField;
    procedure SetDestTownId(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetPaymentTermsId: IJanuaField;
    procedure SetPaymentTermsId(const Value: IJanuaField);
    function GetPaymentTermsDes: IJanuaField;
    procedure SetPaymentTermsDes(const Value: IJanuaField);
    function GetPackageDescription: IJanuaField;
    procedure SetPackageDescription(const Value: IJanuaField);
    function GetPaymentTermCode: IJanuaField;
    procedure SetPaymentTermCode(const Value: IJanuaField);
    function GetFolderId: IJanuaField;
    procedure SetFolderId(const Value: IJanuaField);
    function GetDocState: IJanuaField;
    procedure SetDocState(const Value: IJanuaField);
    function GetHolderName: IJanuaField;
    procedure SetHolderName(const Value: IJanuaField);
    function GetHolderId: IJanuaField;
    procedure SetHolderId(const Value: IJanuaField);
    function GetHolderVatId: IJanuaField;
    procedure SetHolderVatId(const Value: IJanuaField);
    function GetHolderAddress: IJanuaField;
    procedure SetHolderAddress(const Value: IJanuaField);
    function GetHolderPostalCode: IJanuaField;
    procedure SetHolderPostalCode(const Value: IJanuaField);
    function GetHolderTown: IJanuaField;
    procedure SetHolderTown(const Value: IJanuaField);
    function GetHolderStateProvince: IJanuaField;
    procedure SetHolderStateProvince(const Value: IJanuaField);
    function GetHolderCountryIso: IJanuaField;
    procedure SetHolderCountryIso(const Value: IJanuaField);
    function GetDeliveryRateExpense: IJanuaField;
    procedure SetDeliveryRateExpense(const Value: IJanuaField);
    function GetHolderGroupId: IJanuaField;
    procedure SetHolderGroupId(const Value: IJanuaField);
    function GetAmount: IJanuaField;
    procedure SetAmount(const Value: IJanuaField);
    function GetNetAmount: IJanuaField;
    procedure SetNetAmount(const Value: IJanuaField);
    function GetFinancialYear: IJanuaField;
    procedure SetFinancialYear(const Value: IJanuaField);
    function GetDocOriginId: IJanuaField;
    procedure SetDocOriginId(const Value: IJanuaField);
    function GetDeliveryVatId: IJanuaField;
    procedure SetDeliveryVatId(const Value: IJanuaField);
    function GetDeliveryVatRate: IJanuaField;
    procedure SetDeliveryVatRate(const Value: IJanuaField);
    function GetAccounted: IJanuaField;
    procedure SetAccounted(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetDeliveryDueDate: IJanuaField;
    procedure SetDeliveryDueDate(const Value: IJanuaField);
    function GetSent: IJanuaField;
    procedure SetSent(const Value: IJanuaField);
    function GetArrivalDate: IJanuaField;
    procedure SetArrivalDate(const Value: IJanuaField);
    function GetPaymentDueDate: IJanuaField;
    procedure SetPaymentDueDate(const Value: IJanuaField);
    function GetDuties: IJanuaField;
    procedure SetDuties(const Value: IJanuaField);
    function GetPaid: IJanuaField;
    procedure SetPaid(const Value: IJanuaField);
    function GetDocFine: IJanuaField;
    procedure SetDocFine(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetDocYear: IJanuaField;
    procedure SetDocYear(const Value: IJanuaField);
    function GetPoNumberId: IJanuaField;
    procedure SetPoNumberId(const Value: IJanuaField);
    function GetPoNumber: IJanuaField;
    procedure SetPoNumber(const Value: IJanuaField);
    function GetPrinted: IJanuaField;
    procedure SetPrinted(const Value: IJanuaField);
    function GetContactName: IJanuaField;
    procedure SetContactName(const Value: IJanuaField);
    function GetContactEmail: IJanuaField;
    procedure SetContactEmail(const Value: IJanuaField);
    function GetContactPhone: IJanuaField;
    procedure SetContactPhone(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetWarehouseLocationId: IJanuaField;
    procedure SetWarehouseLocationId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetNotes1: IJanuaField;
    procedure SetNotes1(const Value: IJanuaField);
    function GetNotes2: IJanuaField;
    procedure SetNotes2(const Value: IJanuaField);
    function GetNotes3: IJanuaField;
    procedure SetNotes3(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetPurchaseOrderNumber: IJanuaField;
    procedure SetPurchaseOrderNumber(const Value: IJanuaField);
    function GetCustomField1: IJanuaField;
    procedure SetCustomField1(const Value: IJanuaField);
    function GetCustomField2: IJanuaField;
    procedure SetCustomField2(const Value: IJanuaField);
    function GetCustomField3: IJanuaField;
    procedure SetCustomField3(const Value: IJanuaField);
    function GetCustomInt1: IJanuaField;
    procedure SetCustomInt1(const Value: IJanuaField);
    function GetCustomInt2: IJanuaField;
    procedure SetCustomInt2(const Value: IJanuaField);
    function GetCustomInt3: IJanuaField;
    procedure SetCustomInt3(const Value: IJanuaField);
    function GetDocRefCode: IJanuaField;
    procedure SetDocRefCode(const Value: IJanuaField);
    function GetCarrierExpenses: IJanuaField;
    procedure SetCarrierExpenses(const Value: IJanuaField);
    function GetRegistryCode: IJanuaField;
    procedure SetRegistryCode(const Value: IJanuaField);
    function GetCarrierTrackingNumber: IJanuaField;
    procedure SetCarrierTrackingNumber(const Value: IJanuaField);
    function GetCarrierExpensesCurrencyId: IJanuaField;
    procedure SetCarrierExpensesCurrencyId(const Value: IJanuaField);
    function GetSearchIndex: IJanuaField;
    procedure SetSearchIndex(const Value: IJanuaField);
    function GetDestName: IJanuaField;
    procedure SetDestName(const Value: IJanuaField);
    function GetCarrierName: IJanuaField;
    procedure SetCarrierName(const Value: IJanuaField);
    function GetLocationName: IJanuaField;
    procedure SetLocationName(const Value: IJanuaField);
    function GetGoodsTypeId: IJanuaField;
    procedure SetGoodsTypeId(const Value: IJanuaField);
    function GetImportexport: IJanuaField;
    procedure SetImportexport(const Value: IJanuaField);
    function GetCarrierInvoiceNumber: IJanuaField;
    procedure SetCarrierInvoiceNumber(const Value: IJanuaField);
    function GetCarrierInvoiceDate: IJanuaField;
    procedure SetCarrierInvoiceDate(const Value: IJanuaField);
    function GetVesselDepartmentId: IJanuaField;
    procedure SetVesselDepartmentId(const Value: IJanuaField);
    function GetShipmentDes: IJanuaField;
    procedure SetShipmentDes(const Value: IJanuaField);
  public
    constructor Create; override;
    property ShipmentDes: IJanuaField read GetShipmentDes write SetShipmentDes;
    property Id: IJanuaField read GetId write SetId;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property InOut: IJanuaField read GetInOut write SetInOut;
    property DocDate: IJanuaField read GetDocDate write SetDocDate;
    property DocNumber: IJanuaField read GetDocNumber write SetDocNumber;
    property Reason: IJanuaField read GetReason write SetReason;
    property DestAddress: IJanuaField read GetDestAddress write SetDestAddress;
    property DestPostalCode: IJanuaField read GetDestPostalCode write SetDestPostalCode;
    property DestTown: IJanuaField read GetDestTown write SetDestTown;
    property DestStateProvince: IJanuaField read GetDestStateProvince write SetDestStateProvince;
    property DestCountryIso: IJanuaField read GetDestCountryIso write SetDestCountryIso;
    property DepartureDate: IJanuaField read GetDepartureDate write SetDepartureDate;
    property DeliveryMethos: IJanuaField read GetDeliveryMethos write SetDeliveryMethos;
    property GoodsDescription: IJanuaField read GetGoodsDescription write SetGoodsDescription;
    property PackagesNumber: IJanuaField read GetPackagesNumber write SetPackagesNumber;
    property TotalWeight: IJanuaField read GetTotalWeight write SetTotalWeight;
    property Incoterms: IJanuaField read GetIncoterms write SetIncoterms;
    property DeliveryCharges: IJanuaField read GetDeliveryCharges write SetDeliveryCharges;
    property DiscountRate: IJanuaField read GetDiscountRate write SetDiscountRate;
    property AnagraphId: IJanuaField read GetAnagraphId write SetAnagraphId;
    property CarrierId: IJanuaField read GetCarrierId write SetCarrierId;
    property DestStateProvinceId: IJanuaField read GetDestStateProvinceId write SetDestStateProvinceId;
    property DestRegionId: IJanuaField read GetDestRegionId write SetDestRegionId;
    property DestTownId: IJanuaField read GetDestTownId write SetDestTownId;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property PaymentTermsId: IJanuaField read GetPaymentTermsId write SetPaymentTermsId;
    property PaymentTermsDes: IJanuaField read GetPaymentTermsDes write SetPaymentTermsDes;
    property PackageDescription: IJanuaField read GetPackageDescription write SetPackageDescription;
    property PaymentTermCode: IJanuaField read GetPaymentTermCode write SetPaymentTermCode;
    property FolderId: IJanuaField read GetFolderId write SetFolderId;
    property DocState: IJanuaField read GetDocState write SetDocState;
    property HolderName: IJanuaField read GetHolderName write SetHolderName;
    property HolderId: IJanuaField read GetHolderId write SetHolderId;
    property HolderVatId: IJanuaField read GetHolderVatId write SetHolderVatId;
    property HolderAddress: IJanuaField read GetHolderAddress write SetHolderAddress;
    property HolderPostalCode: IJanuaField read GetHolderPostalCode write SetHolderPostalCode;
    property HolderTown: IJanuaField read GetHolderTown write SetHolderTown;
    property HolderStateProvince: IJanuaField read GetHolderStateProvince write SetHolderStateProvince;
    property HolderCountryIso: IJanuaField read GetHolderCountryIso write SetHolderCountryIso;
    property DeliveryRateExpense: IJanuaField read GetDeliveryRateExpense write SetDeliveryRateExpense;
    property HolderGroupId: IJanuaField read GetHolderGroupId write SetHolderGroupId;
    property Amount: IJanuaField read GetAmount write SetAmount;
    property NetAmount: IJanuaField read GetNetAmount write SetNetAmount;
    property FinancialYear: IJanuaField read GetFinancialYear write SetFinancialYear;
    property DocOriginId: IJanuaField read GetDocOriginId write SetDocOriginId;
    property DeliveryVatId: IJanuaField read GetDeliveryVatId write SetDeliveryVatId;
    property DeliveryVatRate: IJanuaField read GetDeliveryVatRate write SetDeliveryVatRate;
    property Accounted: IJanuaField read GetAccounted write SetAccounted;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property DeliveryDueDate: IJanuaField read GetDeliveryDueDate write SetDeliveryDueDate;
    property Sent: IJanuaField read GetSent write SetSent;
    property ArrivalDate: IJanuaField read GetArrivalDate write SetArrivalDate;
    property PaymentDueDate: IJanuaField read GetPaymentDueDate write SetPaymentDueDate;
    property Duties: IJanuaField read GetDuties write SetDuties;
    property Paid: IJanuaField read GetPaid write SetPaid;
    property DocFine: IJanuaField read GetDocFine write SetDocFine;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property DocYear: IJanuaField read GetDocYear write SetDocYear;
    property PoNumberId: IJanuaField read GetPoNumberId write SetPoNumberId;
    property PoNumber: IJanuaField read GetPoNumber write SetPoNumber;
    property Printed: IJanuaField read GetPrinted write SetPrinted;
    property ContactName: IJanuaField read GetContactName write SetContactName;
    property ContactEmail: IJanuaField read GetContactEmail write SetContactEmail;
    property ContactPhone: IJanuaField read GetContactPhone write SetContactPhone;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property WarehouseLocationId: IJanuaField read GetWarehouseLocationId write SetWarehouseLocationId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Notes1: IJanuaField read GetNotes1 write SetNotes1;
    property Notes2: IJanuaField read GetNotes2 write SetNotes2;
    property Notes3: IJanuaField read GetNotes3 write SetNotes3;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property PurchaseOrderNumber: IJanuaField read GetPurchaseOrderNumber write SetPurchaseOrderNumber;
    property CustomField1: IJanuaField read GetCustomField1 write SetCustomField1;
    property CustomField2: IJanuaField read GetCustomField2 write SetCustomField2;
    property CustomField3: IJanuaField read GetCustomField3 write SetCustomField3;
    property CustomInt1: IJanuaField read GetCustomInt1 write SetCustomInt1;
    property CustomInt2: IJanuaField read GetCustomInt2 write SetCustomInt2;
    property CustomInt3: IJanuaField read GetCustomInt3 write SetCustomInt3;
    property DocRefCode: IJanuaField read GetDocRefCode write SetDocRefCode;
    property CarrierExpenses: IJanuaField read GetCarrierExpenses write SetCarrierExpenses;
    property RegistryCode: IJanuaField read GetRegistryCode write SetRegistryCode;
    property CarrierTrackingNumber: IJanuaField read GetCarrierTrackingNumber write SetCarrierTrackingNumber;
    property CarrierExpensesCurrencyId: IJanuaField read GetCarrierExpensesCurrencyId
      write SetCarrierExpensesCurrencyId;
    property SearchIndex: IJanuaField read GetSearchIndex write SetSearchIndex;
    property DestName: IJanuaField read GetDestName write SetDestName;
    property CarrierName: IJanuaField read GetCarrierName write SetCarrierName;
    property LocationName: IJanuaField read GetLocationName write SetLocationName;
    property GoodsTypeId: IJanuaField read GetGoodsTypeId write SetGoodsTypeId;
    property Importexport: IJanuaField read GetImportexport write SetImportexport;
    property CarrierInvoiceNumber: IJanuaField read GetCarrierInvoiceNumber write SetCarrierInvoiceNumber;
    property CarrierInvoiceDate: IJanuaField read GetCarrierInvoiceDate write SetCarrierInvoiceDate;
  end;

implementation

// ------------------------------------------ Impl TDocHead -------------------------------

{ TCustomDocHead }

constructor TCustomDocHead.Create;
begin
  inherited;
  FPrefix := 'dhds';
  FId := AddCreateField(TJanuaFieldType.jptLargeInt, 'id', 'id');
  FVesselDepartmentId := AddCreateField(TJanuaFieldType.jptSmallInt, 'vessel_department_id',
    'vessel_department_id');
  FShipmentDes := AddCreateField(TJanuaFieldType.jptString, 'shipment_des', 'shipment_des');
  FTypeId := AddCreateField(TJanuaFieldType.jptSmallInt, 'type_id', 'type_id');
  FInOut := AddCreateField(TJanuaFieldType.jptSmallInt, 'in_out', 'in_out');
  FDocDate := AddCreateField(TJanuaFieldType.jptDate, 'doc_date', 'doc_date');
  FDocNumber := AddCreateField(TJanuaFieldType.jptString, 'doc_number', 'doc_number');
  FReason := AddCreateField(TJanuaFieldType.jptSmallInt, 'reason', 'reason');
  FDestAddress := AddCreateField(TJanuaFieldType.jptString, 'dest_address', 'dest_address');
  FDestPostalCode := AddCreateField(TJanuaFieldType.jptString, 'dest_postal_code', 'dest_postal_code');
  FDestTown := AddCreateField(TJanuaFieldType.jptString, 'dest_town', 'dest_town');
  FDestStateProvince := AddCreateField(TJanuaFieldType.jptString, 'dest_state_province',
    'dest_state_province');
  FDestCountryIso := AddCreateField(TJanuaFieldType.jptString, 'dest_country_iso', 'dest_country_iso');
  FDepartureDate := AddCreateField(TJanuaFieldType.jptDate, 'departure_date', 'departure_date');
  FDeliveryMethos := AddCreateField(TJanuaFieldType.jptString, 'delivery_methos', 'delivery_methos');
  FGoodsDescription := AddCreateField(TJanuaFieldType.jptString, 'goods_description', 'goods_description');
  FPackagesNumber := AddCreateField(TJanuaFieldType.jptSmallInt, 'packages_number', 'packages_number');
  FTotalWeight := AddCreateField(TJanuaFieldType.jptFloat, 'total_weight', 'total_weight');
  FIncoterms := AddCreateField(TJanuaFieldType.jptString, 'incoterms', 'incoterms');
  FDeliveryCharges := AddCreateField(TJanuaFieldType.jptFloat, 'delivery_charges', 'delivery_charges');
  FDiscountRate := AddCreateField(TJanuaFieldType.jptFloat, 'discount_rate', 'discount_rate');
  FAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'anagraph_id', 'anagraph_id');
  FCarrierId := AddCreateField(TJanuaFieldType.jptInteger, 'carrier_id', 'carrier_id');
  FDestStateProvinceId := AddCreateField(TJanuaFieldType.jptInteger, 'dest_state_province_id',
    'dest_state_province_id');
  FDestRegionId := AddCreateField(TJanuaFieldType.jptInteger, 'dest_region_id', 'dest_region_id');
  FDestTownId := AddCreateField(TJanuaFieldType.jptInteger, 'dest_town_id', 'dest_town_id');
  FCurrencyId := AddCreateField(TJanuaFieldType.jptSmallInt, 'currency_id', 'currency_id');
  FPaymentTermsId := AddCreateField(TJanuaFieldType.jptSmallInt, 'payment_terms_id', 'payment_terms_id');
  FPaymentTermsDes := AddCreateField(TJanuaFieldType.jptString, 'payment_terms_des', 'payment_terms_des');
  FPackageDescription := AddCreateField(TJanuaFieldType.jptString, 'package_description',
    'package_description');
  FPaymentTermCode := AddCreateField(TJanuaFieldType.jptString, 'payment_term_code', 'payment_term_code');
  FFolderId := AddCreateField(TJanuaFieldType.jptLargeInt, 'folder_id', 'folder_id');
  FDocState := AddCreateField(TJanuaFieldType.jptSmallInt, 'doc_state', 'doc_state');
  FHolderName := AddCreateField(TJanuaFieldType.jptString, 'holder_name', 'holder_name');
  FHolderId := AddCreateField(TJanuaFieldType.jptInteger, 'holder_id', 'holder_id');
  FHolderVatId := AddCreateField(TJanuaFieldType.jptString, 'holder_vat_id', 'holder_vat_id');
  FHolderAddress := AddCreateField(TJanuaFieldType.jptString, 'holder_address', 'holder_address');
  FHolderPostalCode := AddCreateField(TJanuaFieldType.jptString, 'holder_postal_code', 'holder_postal_code');
  FHolderTown := AddCreateField(TJanuaFieldType.jptString, 'holder_town', 'holder_town');
  FHolderStateProvince := AddCreateField(TJanuaFieldType.jptString, 'holder_state_province',
    'holder_state_province');
  FHolderCountryIso := AddCreateField(TJanuaFieldType.jptString, 'holder_country_iso', 'holder_country_iso');
  FDeliveryRateExpense := AddCreateField(TJanuaFieldType.jptFloat, 'delivery_rate_expense',
    'delivery_rate_expense');
  FHolderGroupId := AddCreateField(TJanuaFieldType.jptSmallInt, 'holder_group_id', 'holder_group_id');
  FAmount := AddCreateField(TJanuaFieldType.jptFloat, 'amount', 'amount');
  FNetAmount := AddCreateField(TJanuaFieldType.jptFloat, 'net_amount', 'net_amount');
  FFinancialYear := AddCreateField(TJanuaFieldType.jptString, 'financial_year', 'financial_year');
  FDocOriginId := AddCreateField(TJanuaFieldType.jptFloat, 'doc_origin_id', 'doc_origin_id');
  FDeliveryVatId := AddCreateField(TJanuaFieldType.jptSmallInt, 'delivery_vat_id', 'delivery_vat_id');
  FDeliveryVatRate := AddCreateField(TJanuaFieldType.jptFloat, 'delivery_vat_rate', 'delivery_vat_rate');
  FAccounted := AddCreateField(TJanuaFieldType.jptBoolean, 'accounted', 'accounted');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDate, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDate, 'update_date', 'update_date');
  FDeliveryDueDate := AddCreateField(TJanuaFieldType.jptDate, 'delivery_due_date', 'delivery_due_date');
  FSent := AddCreateField(TJanuaFieldType.jptBoolean, 'sent', 'sent');
  FArrivalDate := AddCreateField(TJanuaFieldType.jptDate, 'arrival_date', 'arrival_date');
  FPaymentDueDate := AddCreateField(TJanuaFieldType.jptDate, 'payment_due_date', 'payment_due_date');
  FDuties := AddCreateField(TJanuaFieldType.jptFloat, 'duties', 'duties');
  FPaid := AddCreateField(TJanuaFieldType.jptBoolean, 'paid', 'paid');
  FDocFine := AddCreateField(TJanuaFieldType.jptFloat, 'doc_fine', 'doc_fine');
  FUserInsert := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptInteger, 'user_update', 'user_update');
  FDocYear := AddCreateField(TJanuaFieldType.jptFloat, 'doc_year', 'doc_year');
  FPoNumberId := AddCreateField(TJanuaFieldType.jptLargeInt, 'po_number_id', 'po_number_id');
  FPoNumber := AddCreateField(TJanuaFieldType.jptString, 'po_number', 'po_number');
  FPrinted := AddCreateField(TJanuaFieldType.jptBoolean, 'printed', 'printed');
  FContactName := AddCreateField(TJanuaFieldType.jptString, 'contact_name', 'contact_name');
  FContactEmail := AddCreateField(TJanuaFieldType.jptString, 'contact_email', 'contact_email');
  FContactPhone := AddCreateField(TJanuaFieldType.jptString, 'contact_phone', 'contact_phone');
  FOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
  FWarehouseLocationId := AddCreateField(TJanuaFieldType.jptInteger, 'warehouse_location_id',
    'warehouse_location_id');
  // Campo non Gestitojguid Type= ftGuid
  FNotes1 := AddCreateField(TJanuaFieldType.jptText, 'notes1', 'notes1');
  FNotes2 := AddCreateField(TJanuaFieldType.jptText, 'notes2', 'notes2');
  FNotes3 := AddCreateField(TJanuaFieldType.jptText, 'notes3', 'notes3');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FPurchaseOrderNumber := AddCreateField(TJanuaFieldType.jptString, 'purchase_order_number',
    'purchase_order_number');
  FCustomField1 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_1', 'custom_field_1');
  FCustomField2 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_2', 'custom_field_2');
  FCustomField3 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_3', 'custom_field_3');
  FCustomInt1 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_1', 'custom_int_1');
  FCustomInt2 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_2', 'custom_int_2');
  FCustomInt3 := AddCreateField(TJanuaFieldType.jptInteger, 'custom_int_3', 'custom_int_3');
  FDocRefCode := AddCreateField(TJanuaFieldType.jptString, 'doc_ref_code', 'doc_ref_code');
  FCarrierExpenses := AddCreateField(TJanuaFieldType.jptFloat, 'carrier_expenses', 'carrier_expenses');
  FRegistryCode := AddCreateField(TJanuaFieldType.jptString, 'registry_code', 'registry_code');
  FCarrierTrackingNumber := AddCreateField(TJanuaFieldType.jptString, 'carrier_tracking_number',
    'carrier_tracking_number');
  FCarrierExpensesCurrencyId := AddCreateField(TJanuaFieldType.jptSmallInt, 'carrier_expenses_currency_id',
    'carrier_expenses_currency_id');
  FSearchIndex := AddCreateField(TJanuaFieldType.jptString, 'search_index', 'search_index');
  FDestName := AddCreateField(TJanuaFieldType.jptString, 'dest_name', 'dest_name');
  FCarrierName := AddCreateField(TJanuaFieldType.jptString, 'carrier_name', 'carrier_name');
  FLocationName := AddCreateField(TJanuaFieldType.jptString, 'location_name', 'location_name');
  FGoodsTypeId := AddCreateField(TJanuaFieldType.jptSmallInt, 'goods_type_id', 'goods_type_id');
  FImportexport := AddCreateField(TJanuaFieldType.jptSmallInt, 'importexport', 'importexport');
  FCarrierInvoiceNumber := AddCreateField(TJanuaFieldType.jptString, 'carrier_invoice_number',
    'carrier_invoice_number');
  FCarrierInvoiceDate := AddCreateField(TJanuaFieldType.jptDate, 'carrier_invoice_date',
    'carrier_invoice_date');

  // vessel_id
  FVesselID := AddCreateField(TJanuaFieldType.jptString, 'vessel_id', 'vessel_id');
  // vessel_name
  FVesselName := AddCreateField(TJanuaFieldType.jptString, 'vessel_name', 'vessel_name');
  // vessel_code
  FVesselCode := AddCreateField(TJanuaFieldType.jptString, 'vessel_code', 'vessel_code');
  // location_code
  FLocationCode := AddCreateField(TJanuaFieldType.jptString, 'location_code', 'location_code');
end;

function TCustomDocHead.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomDocHead.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomDocHead.GetTypeId: IJanuaField;
begin
  Result := FTypeId;
end;

procedure TCustomDocHead.SetTypeId(const Value: IJanuaField);
begin
  FTypeId := Value;
end;

function TCustomDocHead.GetInOut: IJanuaField;
begin
  Result := FInOut;
end;

procedure TCustomDocHead.SetInOut(const Value: IJanuaField);
begin
  FInOut := Value;
end;

function TCustomDocHead.GetDocDate: IJanuaField;
begin
  Result := FDocDate;
end;

procedure TCustomDocHead.SetDocDate(const Value: IJanuaField);
begin
  FDocDate := Value;
end;

function TCustomDocHead.GetDocNumber: IJanuaField;
begin
  Result := FDocNumber;
end;

procedure TCustomDocHead.SetDocNumber(const Value: IJanuaField);
begin
  FDocNumber := Value;
end;

function TCustomDocHead.GetReason: IJanuaField;
begin
  Result := FReason;
end;

procedure TCustomDocHead.SetReason(const Value: IJanuaField);
begin
  FReason := Value;
end;

function TCustomDocHead.GetDestAddress: IJanuaField;
begin
  Result := FDestAddress;
end;

procedure TCustomDocHead.SetDestAddress(const Value: IJanuaField);
begin
  FDestAddress := Value;
end;

function TCustomDocHead.GetDestPostalCode: IJanuaField;
begin
  Result := FDestPostalCode;
end;

procedure TCustomDocHead.SetDestPostalCode(const Value: IJanuaField);
begin
  FDestPostalCode := Value;
end;

function TCustomDocHead.GetDestTown: IJanuaField;
begin
  Result := FDestTown;
end;

procedure TCustomDocHead.SetDestTown(const Value: IJanuaField);
begin
  FDestTown := Value;
end;

function TCustomDocHead.GetDestStateProvince: IJanuaField;
begin
  Result := FDestStateProvince;
end;

procedure TCustomDocHead.SetDestStateProvince(const Value: IJanuaField);
begin
  FDestStateProvince := Value;
end;

function TCustomDocHead.GetDestCountryIso: IJanuaField;
begin
  Result := FDestCountryIso;
end;

procedure TCustomDocHead.SetDestCountryIso(const Value: IJanuaField);
begin
  FDestCountryIso := Value;
end;

function TCustomDocHead.GetDepartureDate: IJanuaField;
begin
  Result := FDepartureDate;
end;

procedure TCustomDocHead.SetDepartureDate(const Value: IJanuaField);
begin
  FDepartureDate := Value;
end;

function TCustomDocHead.GetDeliveryMethos: IJanuaField;
begin
  Result := FDeliveryMethos;
end;

procedure TCustomDocHead.SetDeliveryMethos(const Value: IJanuaField);
begin
  FDeliveryMethos := Value;
end;

function TCustomDocHead.GetGoodsDescription: IJanuaField;
begin
  Result := FGoodsDescription;
end;

procedure TCustomDocHead.SetGoodsDescription(const Value: IJanuaField);
begin
  FGoodsDescription := Value;
end;

function TCustomDocHead.GetPackagesNumber: IJanuaField;
begin
  Result := FPackagesNumber;
end;

procedure TCustomDocHead.SetPackagesNumber(const Value: IJanuaField);
begin
  FPackagesNumber := Value;
end;

function TCustomDocHead.GetTotalWeight: IJanuaField;
begin
  Result := FTotalWeight;
end;

procedure TCustomDocHead.SetTotalWeight(const Value: IJanuaField);
begin
  FTotalWeight := Value;
end;

function TCustomDocHead.GetIncoterms: IJanuaField;
begin
  Result := FIncoterms;
end;

procedure TCustomDocHead.SetIncoterms(const Value: IJanuaField);
begin
  FIncoterms := Value;
end;

function TCustomDocHead.GetDeliveryCharges: IJanuaField;
begin
  Result := FDeliveryCharges;
end;

procedure TCustomDocHead.SetDeliveryCharges(const Value: IJanuaField);
begin
  FDeliveryCharges := Value;
end;

function TCustomDocHead.GetDiscountRate: IJanuaField;
begin
  Result := FDiscountRate;
end;

procedure TCustomDocHead.SetDiscountRate(const Value: IJanuaField);
begin
  FDiscountRate := Value;
end;

function TCustomDocHead.GetAnagraphId: IJanuaField;
begin
  Result := FAnagraphId;
end;

procedure TCustomDocHead.SetAnagraphId(const Value: IJanuaField);
begin
  FAnagraphId := Value;
end;

function TCustomDocHead.GetCarrierId: IJanuaField;
begin
  Result := FCarrierId;
end;

procedure TCustomDocHead.SetCarrierId(const Value: IJanuaField);
begin
  FCarrierId := Value;
end;

function TCustomDocHead.GetDestStateProvinceId: IJanuaField;
begin
  Result := FDestStateProvinceId;
end;

procedure TCustomDocHead.SetDestStateProvinceId(const Value: IJanuaField);
begin
  FDestStateProvinceId := Value;
end;

function TCustomDocHead.GetDestRegionId: IJanuaField;
begin
  Result := FDestRegionId;
end;

procedure TCustomDocHead.SetDestRegionId(const Value: IJanuaField);
begin
  FDestRegionId := Value;
end;

function TCustomDocHead.GetDestTownId: IJanuaField;
begin
  Result := FDestTownId;
end;

procedure TCustomDocHead.SetDestTownId(const Value: IJanuaField);
begin
  FDestTownId := Value;
end;

function TCustomDocHead.GetCurrencyId: IJanuaField;
begin
  Result := FCurrencyId;
end;

procedure TCustomDocHead.SetCurrencyId(const Value: IJanuaField);
begin
  FCurrencyId := Value;
end;

function TCustomDocHead.GetPaymentTermsId: IJanuaField;
begin
  Result := FPaymentTermsId;
end;

procedure TCustomDocHead.SetPaymentTermsId(const Value: IJanuaField);
begin
  FPaymentTermsId := Value;
end;

function TCustomDocHead.GetPaymentTermsDes: IJanuaField;
begin
  Result := FPaymentTermsDes;
end;

procedure TCustomDocHead.SetPaymentTermsDes(const Value: IJanuaField);
begin
  FPaymentTermsDes := Value;
end;

function TCustomDocHead.GetPackageDescription: IJanuaField;
begin
  Result := FPackageDescription;
end;

procedure TCustomDocHead.SetPackageDescription(const Value: IJanuaField);
begin
  FPackageDescription := Value;
end;

function TCustomDocHead.GetPaymentTermCode: IJanuaField;
begin
  Result := FPaymentTermCode;
end;

procedure TCustomDocHead.SetPaymentTermCode(const Value: IJanuaField);
begin
  FPaymentTermCode := Value;
end;

function TCustomDocHead.GetFolderId: IJanuaField;
begin
  Result := FFolderId;
end;

procedure TCustomDocHead.SetFolderId(const Value: IJanuaField);
begin
  FFolderId := Value;
end;

function TCustomDocHead.GetDocState: IJanuaField;
begin
  Result := FDocState;
end;

procedure TCustomDocHead.SetDocState(const Value: IJanuaField);
begin
  FDocState := Value;
end;

function TCustomDocHead.GetHolderName: IJanuaField;
begin
  Result := FHolderName;
end;

procedure TCustomDocHead.SetHolderName(const Value: IJanuaField);
begin
  FHolderName := Value;
end;

function TCustomDocHead.GetHolderId: IJanuaField;
begin
  Result := FHolderId;
end;

procedure TCustomDocHead.SetHolderId(const Value: IJanuaField);
begin
  FHolderId := Value;
end;

function TCustomDocHead.GetHolderVatId: IJanuaField;
begin
  Result := FHolderVatId;
end;

procedure TCustomDocHead.SetHolderVatId(const Value: IJanuaField);
begin
  FHolderVatId := Value;
end;

function TCustomDocHead.GetHolderAddress: IJanuaField;
begin
  Result := FHolderAddress;
end;

procedure TCustomDocHead.SetHolderAddress(const Value: IJanuaField);
begin
  FHolderAddress := Value;
end;

function TCustomDocHead.GetHolderPostalCode: IJanuaField;
begin
  Result := FHolderPostalCode;
end;

procedure TCustomDocHead.SetHolderPostalCode(const Value: IJanuaField);
begin
  FHolderPostalCode := Value;
end;

function TCustomDocHead.GetHolderTown: IJanuaField;
begin
  Result := FHolderTown;
end;

procedure TCustomDocHead.SetHolderTown(const Value: IJanuaField);
begin
  FHolderTown := Value;
end;

function TCustomDocHead.GetHolderStateProvince: IJanuaField;
begin
  Result := FHolderStateProvince;
end;

procedure TCustomDocHead.SetHolderStateProvince(const Value: IJanuaField);
begin
  FHolderStateProvince := Value;
end;

function TCustomDocHead.GetHolderCountryIso: IJanuaField;
begin
  Result := FHolderCountryIso;
end;

procedure TCustomDocHead.SetHolderCountryIso(const Value: IJanuaField);
begin
  FHolderCountryIso := Value;
end;

function TCustomDocHead.GetDeliveryRateExpense: IJanuaField;
begin
  Result := FDeliveryRateExpense;
end;

procedure TCustomDocHead.SetDeliveryRateExpense(const Value: IJanuaField);
begin
  FDeliveryRateExpense := Value;
end;

function TCustomDocHead.GetHolderGroupId: IJanuaField;
begin
  Result := FHolderGroupId;
end;

procedure TCustomDocHead.SetHolderGroupId(const Value: IJanuaField);
begin
  FHolderGroupId := Value;
end;

function TCustomDocHead.GetAmount: IJanuaField;
begin
  Result := FAmount;
end;

procedure TCustomDocHead.SetAmount(const Value: IJanuaField);
begin
  FAmount := Value;
end;

function TCustomDocHead.GetNetAmount: IJanuaField;
begin
  Result := FNetAmount;
end;

procedure TCustomDocHead.SetNetAmount(const Value: IJanuaField);
begin
  FNetAmount := Value;
end;

function TCustomDocHead.GetFinancialYear: IJanuaField;
begin
  Result := FFinancialYear;
end;

procedure TCustomDocHead.SetFinancialYear(const Value: IJanuaField);
begin
  FFinancialYear := Value;
end;

function TCustomDocHead.GetDocOriginId: IJanuaField;
begin
  Result := FDocOriginId;
end;

procedure TCustomDocHead.SetDocOriginId(const Value: IJanuaField);
begin
  FDocOriginId := Value;
end;

function TCustomDocHead.GetDeliveryVatId: IJanuaField;
begin
  Result := FDeliveryVatId;
end;

procedure TCustomDocHead.SetDeliveryVatId(const Value: IJanuaField);
begin
  FDeliveryVatId := Value;
end;

function TCustomDocHead.GetDeliveryVatRate: IJanuaField;
begin
  Result := FDeliveryVatRate;
end;

procedure TCustomDocHead.SetDeliveryVatRate(const Value: IJanuaField);
begin
  FDeliveryVatRate := Value;
end;

function TCustomDocHead.GetAccounted: IJanuaField;
begin
  Result := FAccounted;
end;

procedure TCustomDocHead.SetAccounted(const Value: IJanuaField);
begin
  FAccounted := Value;
end;

function TCustomDocHead.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomDocHead.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomDocHead.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomDocHead.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomDocHead.GetDeliveryDueDate: IJanuaField;
begin
  Result := FDeliveryDueDate;
end;

procedure TCustomDocHead.SetDeliveryDueDate(const Value: IJanuaField);
begin
  FDeliveryDueDate := Value;
end;

function TCustomDocHead.GetSent: IJanuaField;
begin
  Result := FSent;
end;

function TCustomDocHead.GetShipmentDes: IJanuaField;
begin
  Result := FShipmentDes;
end;

procedure TCustomDocHead.SetSent(const Value: IJanuaField);
begin
  FSent := Value;
end;

procedure TCustomDocHead.SetShipmentDes(const Value: IJanuaField);
begin
  FShipmentDes :=    Value
end;

function TCustomDocHead.GetArrivalDate: IJanuaField;
begin
  Result := FArrivalDate;
end;

procedure TCustomDocHead.SetArrivalDate(const Value: IJanuaField);
begin
  FArrivalDate := Value;
end;

function TCustomDocHead.GetPaymentDueDate: IJanuaField;
begin
  Result := FPaymentDueDate;
end;

procedure TCustomDocHead.SetPaymentDueDate(const Value: IJanuaField);
begin
  FPaymentDueDate := Value;
end;

function TCustomDocHead.GetDuties: IJanuaField;
begin
  Result := FDuties;
end;

procedure TCustomDocHead.SetDuties(const Value: IJanuaField);
begin
  FDuties := Value;
end;

function TCustomDocHead.GetPaid: IJanuaField;
begin
  Result := FPaid;
end;

procedure TCustomDocHead.SetPaid(const Value: IJanuaField);
begin
  FPaid := Value;
end;

function TCustomDocHead.GetDocFine: IJanuaField;
begin
  Result := FDocFine;
end;

procedure TCustomDocHead.SetDocFine(const Value: IJanuaField);
begin
  FDocFine := Value;
end;

function TCustomDocHead.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomDocHead.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomDocHead.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

function TCustomDocHead.GetVesselCode: IJanuaField;
begin
  Result := FVesselCode
end;

function TCustomDocHead.GetVesselDepartmentId: IJanuaField;
begin
  Result := FVesselDepartmentId
end;

function TCustomDocHead.GetVesselID: IJanuaField;
begin
  Result := FVesselID
end;

function TCustomDocHead.GetVesselName: IJanuaField;
begin
  Result := FVesselName
end;

procedure TCustomDocHead.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

procedure TCustomDocHead.SetVesselCode(const Value: IJanuaField);
begin
  FVesselCode := Value;
end;

procedure TCustomDocHead.SetVesselDepartmentId(const Value: IJanuaField);
begin
  FVesselDepartmentId := Value;
end;

procedure TCustomDocHead.SetVesselID(const Value: IJanuaField);
begin
  FVesselID := Value
end;

procedure TCustomDocHead.SetVesselName(const Value: IJanuaField);
begin
  FVesselName := Value;
end;

function TCustomDocHead.GetDocYear: IJanuaField;
begin
  Result := FDocYear;
end;

procedure TCustomDocHead.SetDocYear(const Value: IJanuaField);
begin
  FDocYear := Value;
end;

function TCustomDocHead.GetPoNumberId: IJanuaField;
begin
  Result := FPoNumberId;
end;

procedure TCustomDocHead.SetPoNumberId(const Value: IJanuaField);
begin
  FPoNumberId := Value;
end;

function TCustomDocHead.GetPoNumber: IJanuaField;
begin
  Result := FPoNumber;
end;

procedure TCustomDocHead.SetPoNumber(const Value: IJanuaField);
begin
  FPoNumber := Value;
end;

function TCustomDocHead.GetPrinted: IJanuaField;
begin
  Result := FPrinted;
end;

procedure TCustomDocHead.SetPrinted(const Value: IJanuaField);
begin
  FPrinted := Value;
end;

function TCustomDocHead.GetContactName: IJanuaField;
begin
  Result := FContactName;
end;

procedure TCustomDocHead.SetContactName(const Value: IJanuaField);
begin
  FContactName := Value;
end;

function TCustomDocHead.GetContactEmail: IJanuaField;
begin
  Result := FContactEmail;
end;

procedure TCustomDocHead.SetContactEmail(const Value: IJanuaField);
begin
  FContactEmail := Value;
end;

function TCustomDocHead.GetContactPhone: IJanuaField;
begin
  Result := FContactPhone;
end;

procedure TCustomDocHead.SetContactPhone(const Value: IJanuaField);
begin
  FContactPhone := Value;
end;

function TCustomDocHead.GetOfficeId: IJanuaField;
begin
  Result := FOfficeId;
end;

procedure TCustomDocHead.SetOfficeId(const Value: IJanuaField);
begin
  FOfficeId := Value;
end;

function TCustomDocHead.GetWarehouseLocationId: IJanuaField;
begin
  Result := FWarehouseLocationId;
end;

procedure TCustomDocHead.SetWarehouseLocationId(const Value: IJanuaField);
begin
  FWarehouseLocationId := Value;
end;

function TCustomDocHead.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomDocHead.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomDocHead.GetNotes1: IJanuaField;
begin
  Result := FNotes1;
end;

procedure TCustomDocHead.SetNotes1(const Value: IJanuaField);
begin
  FNotes1 := Value;
end;

function TCustomDocHead.GetNotes2: IJanuaField;
begin
  Result := FNotes2;
end;

procedure TCustomDocHead.SetNotes2(const Value: IJanuaField);
begin
  FNotes2 := Value;
end;

function TCustomDocHead.GetNotes3: IJanuaField;
begin
  Result := FNotes3;
end;

procedure TCustomDocHead.SetNotes3(const Value: IJanuaField);
begin
  FNotes3 := Value;
end;

function TCustomDocHead.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomDocHead.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomDocHead.GetPurchaseOrderNumber: IJanuaField;
begin
  Result := FPurchaseOrderNumber;
end;

procedure TCustomDocHead.SetPurchaseOrderNumber(const Value: IJanuaField);
begin
  FPurchaseOrderNumber := Value;
end;

function TCustomDocHead.GetCustomField1: IJanuaField;
begin
  Result := FCustomField1;
end;

procedure TCustomDocHead.SetCustomField1(const Value: IJanuaField);
begin
  FCustomField1 := Value;
end;

function TCustomDocHead.GetCustomField2: IJanuaField;
begin
  Result := FCustomField2;
end;

procedure TCustomDocHead.SetCustomField2(const Value: IJanuaField);
begin
  FCustomField2 := Value;
end;

function TCustomDocHead.GetCustomField3: IJanuaField;
begin
  Result := FCustomField3;
end;

procedure TCustomDocHead.SetCustomField3(const Value: IJanuaField);
begin
  FCustomField3 := Value;
end;

function TCustomDocHead.GetCustomInt1: IJanuaField;
begin
  Result := FCustomInt1;
end;

procedure TCustomDocHead.SetCustomInt1(const Value: IJanuaField);
begin
  FCustomInt1 := Value;
end;

function TCustomDocHead.GetCustomInt2: IJanuaField;
begin
  Result := FCustomInt2;
end;

procedure TCustomDocHead.SetCustomInt2(const Value: IJanuaField);
begin
  FCustomInt2 := Value;
end;

function TCustomDocHead.GetCustomInt3: IJanuaField;
begin
  Result := FCustomInt3;
end;

procedure TCustomDocHead.SetCustomInt3(const Value: IJanuaField);
begin
  FCustomInt3 := Value;
end;

function TCustomDocHead.GetDocRefCode: IJanuaField;
begin
  Result := FDocRefCode;
end;

procedure TCustomDocHead.SetDocRefCode(const Value: IJanuaField);
begin
  FDocRefCode := Value;
end;

function TCustomDocHead.GetCarrierExpenses: IJanuaField;
begin
  Result := FCarrierExpenses;
end;

procedure TCustomDocHead.SetCarrierExpenses(const Value: IJanuaField);
begin
  FCarrierExpenses := Value;
end;

function TCustomDocHead.GetRegistryCode: IJanuaField;
begin
  Result := FRegistryCode;
end;

procedure TCustomDocHead.SetRegistryCode(const Value: IJanuaField);
begin
  FRegistryCode := Value;
end;

function TCustomDocHead.GetCarrierTrackingNumber: IJanuaField;
begin
  Result := FCarrierTrackingNumber;
end;

procedure TCustomDocHead.SetCarrierTrackingNumber(const Value: IJanuaField);
begin
  FCarrierTrackingNumber := Value;
end;

function TCustomDocHead.GetCarrierExpensesCurrencyId: IJanuaField;
begin
  Result := FCarrierExpensesCurrencyId;
end;

procedure TCustomDocHead.SetCarrierExpensesCurrencyId(const Value: IJanuaField);
begin
  FCarrierExpensesCurrencyId := Value;
end;

function TCustomDocHead.GetSearchIndex: IJanuaField;
begin
  Result := FSearchIndex;
end;

procedure TCustomDocHead.SetSearchIndex(const Value: IJanuaField);
begin
  FSearchIndex := Value;
end;

function TCustomDocHead.GetDestName: IJanuaField;
begin
  Result := FDestName;
end;

procedure TCustomDocHead.SetDestName(const Value: IJanuaField);
begin
  FDestName := Value;
end;

function TCustomDocHead.GetCarrierName: IJanuaField;
begin
  Result := FCarrierName;
end;

procedure TCustomDocHead.SetCarrierName(const Value: IJanuaField);
begin
  FCarrierName := Value;
end;

function TCustomDocHead.GetLocationCode: IJanuaField;
begin
  Result := FLocationCode;
end;

function TCustomDocHead.GetLocationName: IJanuaField;
begin
  Result := FLocationName;
end;

procedure TCustomDocHead.SetLocationCode(const Value: IJanuaField);
begin
  FLocationCode := Value;
end;

procedure TCustomDocHead.SetLocationName(const Value: IJanuaField);
begin
  FLocationName := Value;
end;

function TCustomDocHead.GetGoodsTypeId: IJanuaField;
begin
  Result := FGoodsTypeId;
end;

procedure TCustomDocHead.SetGoodsTypeId(const Value: IJanuaField);
begin
  FGoodsTypeId := Value;
end;

function TCustomDocHead.GetImportexport: IJanuaField;
begin
  Result := FImportexport;
end;

procedure TCustomDocHead.SetImportexport(const Value: IJanuaField);
begin
  FImportexport := Value;
end;

function TCustomDocHead.GetCarrierInvoiceNumber: IJanuaField;
begin
  Result := FCarrierInvoiceNumber;
end;

procedure TCustomDocHead.SetCarrierInvoiceNumber(const Value: IJanuaField);
begin
  FCarrierInvoiceNumber := Value;
end;

function TCustomDocHead.GetCarrierInvoiceDate: IJanuaField;
begin
  Result := FCarrierInvoiceDate;
end;

procedure TCustomDocHead.SetCarrierInvoiceDate(const Value: IJanuaField);
begin
  FCarrierInvoiceDate := Value;
end;

{ TCustomDocHeads }
constructor TCustomDocHeads.Create;
begin
  inherited;
  // deve essere implementato a 'valle'
  // FRecord := TDocHeadFactory.CreateRecord('GetCustomDocHead');
end;

function TCustomDocHeads.GetId: IJanuaField;
begin
  Result := GetCustomDocHead.Id;
end;

procedure TCustomDocHeads.SetId(const Value: IJanuaField);
begin
  GetCustomDocHead.Id := Value;
end;

function TCustomDocHeads.GetTypeId: IJanuaField;
begin
  Result := GetCustomDocHead.TypeId;
end;

procedure TCustomDocHeads.SetTypeId(const Value: IJanuaField);
begin
  GetCustomDocHead.TypeId := Value;
end;

function TCustomDocHeads.GetInOut: IJanuaField;
begin
  Result := self.GetCustomDocHead.InOut;
end;

procedure TCustomDocHeads.SetInOut(const Value: IJanuaField);
begin
  self.GetCustomDocHead.InOut := Value;
end;

function TCustomDocHeads.GetDocDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocDate;
end;

procedure TCustomDocHeads.SetDocDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocDate := Value;
end;

function TCustomDocHeads.GetDocNumber: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocNumber;
end;

procedure TCustomDocHeads.SetDocNumber(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocNumber := Value;
end;

function TCustomDocHeads.GetReason: IJanuaField;
begin
  Result := self.GetCustomDocHead.Reason;
end;

procedure TCustomDocHeads.SetReason(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Reason := Value;
end;

function TCustomDocHeads.GetDestAddress: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestAddress;
end;

procedure TCustomDocHeads.SetDestAddress(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestAddress := Value;
end;

function TCustomDocHeads.GetDestPostalCode: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestPostalCode;
end;

procedure TCustomDocHeads.SetDestPostalCode(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestPostalCode := Value;
end;

function TCustomDocHeads.GetDestTown: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestTown;
end;

procedure TCustomDocHeads.SetDestTown(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestTown := Value;
end;

function TCustomDocHeads.GetDestStateProvince: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestStateProvince;
end;

procedure TCustomDocHeads.SetDestStateProvince(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestStateProvince := Value;
end;

function TCustomDocHeads.GetDestCountryIso: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestCountryIso;
end;

procedure TCustomDocHeads.SetDestCountryIso(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestCountryIso := Value;
end;

function TCustomDocHeads.GetDepartureDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.DepartureDate;
end;

procedure TCustomDocHeads.SetDepartureDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DepartureDate := Value;
end;

function TCustomDocHeads.GetDeliveryMethos: IJanuaField;
begin
  Result := self.GetCustomDocHead.DeliveryMethos;
end;

procedure TCustomDocHeads.SetDeliveryMethos(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DeliveryMethos := Value;
end;

function TCustomDocHeads.GetGoodsDescription: IJanuaField;
begin
  Result := self.GetCustomDocHead.GoodsDescription;
end;

procedure TCustomDocHeads.SetGoodsDescription(const Value: IJanuaField);
begin
  self.GetCustomDocHead.GoodsDescription := Value;
end;

function TCustomDocHeads.GetPackagesNumber: IJanuaField;
begin
  Result := self.GetCustomDocHead.PackagesNumber;
end;

procedure TCustomDocHeads.SetPackagesNumber(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PackagesNumber := Value;
end;

function TCustomDocHeads.GetTotalWeight: IJanuaField;
begin
  Result := self.GetCustomDocHead.TotalWeight;
end;

procedure TCustomDocHeads.SetTotalWeight(const Value: IJanuaField);
begin
  self.GetCustomDocHead.TotalWeight := Value;
end;

function TCustomDocHeads.GetIncoterms: IJanuaField;
begin
  Result := self.GetCustomDocHead.Incoterms;
end;

procedure TCustomDocHeads.SetIncoterms(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Incoterms := Value;
end;

function TCustomDocHeads.GetDeliveryCharges: IJanuaField;
begin
  Result := self.GetCustomDocHead.DeliveryCharges;
end;

procedure TCustomDocHeads.SetDeliveryCharges(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DeliveryCharges := Value;
end;

function TCustomDocHeads.GetDiscountRate: IJanuaField;
begin
  Result := self.GetCustomDocHead.DiscountRate;
end;

procedure TCustomDocHeads.SetDiscountRate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DiscountRate := Value;
end;

function TCustomDocHeads.GetAnagraphId: IJanuaField;
begin
  Result := self.GetCustomDocHead.AnagraphId;
end;

procedure TCustomDocHeads.SetAnagraphId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.AnagraphId := Value;
end;

function TCustomDocHeads.GetCarrierId: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierId;
end;

procedure TCustomDocHeads.SetCarrierId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierId := Value;
end;

function TCustomDocHeads.GetDestStateProvinceId: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestStateProvinceId;
end;

procedure TCustomDocHeads.SetDestStateProvinceId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestStateProvinceId := Value;
end;

function TCustomDocHeads.GetDestRegionId: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestRegionId;
end;

procedure TCustomDocHeads.SetDestRegionId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestRegionId := Value;
end;

function TCustomDocHeads.GetDestTownId: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestTownId;
end;

procedure TCustomDocHeads.SetDestTownId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestTownId := Value;
end;

function TCustomDocHeads.GetCurrencyId: IJanuaField;
begin
  Result := self.GetCustomDocHead.CurrencyId;
end;

procedure TCustomDocHeads.SetCurrencyId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CurrencyId := Value;
end;

function TCustomDocHeads.GetPaymentTermsId: IJanuaField;
begin
  Result := self.GetCustomDocHead.PaymentTermsId;
end;

procedure TCustomDocHeads.SetPaymentTermsId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PaymentTermsId := Value;
end;

function TCustomDocHeads.GetPaymentTermsDes: IJanuaField;
begin
  Result := self.GetCustomDocHead.PaymentTermsDes;
end;

procedure TCustomDocHeads.SetPaymentTermsDes(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PaymentTermsDes := Value;
end;

function TCustomDocHeads.GetPackageDescription: IJanuaField;
begin
  Result := self.GetCustomDocHead.PackageDescription;
end;

procedure TCustomDocHeads.SetPackageDescription(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PackageDescription := Value;
end;

function TCustomDocHeads.GetPaymentTermCode: IJanuaField;
begin
  Result := self.GetCustomDocHead.PaymentTermCode;
end;

procedure TCustomDocHeads.SetPaymentTermCode(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PaymentTermCode := Value;
end;

function TCustomDocHeads.GetFolderId: IJanuaField;
begin
  Result := self.GetCustomDocHead.FolderId;
end;

procedure TCustomDocHeads.SetFolderId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.FolderId := Value;
end;

function TCustomDocHeads.GetDocState: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocState;
end;

procedure TCustomDocHeads.SetDocState(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocState := Value;
end;

function TCustomDocHeads.GetHolderName: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderName;
end;

procedure TCustomDocHeads.SetHolderName(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderName := Value;
end;

function TCustomDocHeads.GetHolderId: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderId;
end;

procedure TCustomDocHeads.SetHolderId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderId := Value;
end;

function TCustomDocHeads.GetHolderVatId: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderVatId;
end;

procedure TCustomDocHeads.SetHolderVatId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderVatId := Value;
end;

function TCustomDocHeads.GetHolderAddress: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderAddress;
end;

procedure TCustomDocHeads.SetHolderAddress(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderAddress := Value;
end;

function TCustomDocHeads.GetHolderPostalCode: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderPostalCode;
end;

procedure TCustomDocHeads.SetHolderPostalCode(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderPostalCode := Value;
end;

function TCustomDocHeads.GetHolderTown: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderTown;
end;

procedure TCustomDocHeads.SetHolderTown(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderTown := Value;
end;

function TCustomDocHeads.GetHolderStateProvince: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderStateProvince;
end;

procedure TCustomDocHeads.SetHolderStateProvince(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderStateProvince := Value;
end;

function TCustomDocHeads.GetHolderCountryIso: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderCountryIso;
end;

procedure TCustomDocHeads.SetHolderCountryIso(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderCountryIso := Value;
end;

function TCustomDocHeads.GetDeliveryRateExpense: IJanuaField;
begin
  Result := self.GetCustomDocHead.DeliveryRateExpense;
end;

procedure TCustomDocHeads.SetDeliveryRateExpense(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DeliveryRateExpense := Value;
end;

function TCustomDocHeads.GetHolderGroupId: IJanuaField;
begin
  Result := self.GetCustomDocHead.HolderGroupId;
end;

procedure TCustomDocHeads.SetHolderGroupId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.HolderGroupId := Value;
end;

function TCustomDocHeads.GetAmount: IJanuaField;
begin
  Result := self.GetCustomDocHead.Amount;
end;

procedure TCustomDocHeads.SetAmount(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Amount := Value;
end;

function TCustomDocHeads.GetNetAmount: IJanuaField;
begin
  Result := self.GetCustomDocHead.NetAmount;
end;

procedure TCustomDocHeads.SetNetAmount(const Value: IJanuaField);
begin
  self.GetCustomDocHead.NetAmount := Value;
end;

function TCustomDocHeads.GetFinancialYear: IJanuaField;
begin
  Result := self.GetCustomDocHead.FinancialYear;
end;

procedure TCustomDocHeads.SetFinancialYear(const Value: IJanuaField);
begin
  self.GetCustomDocHead.FinancialYear := Value;
end;

function TCustomDocHeads.GetDocOriginId: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocOriginId;
end;

procedure TCustomDocHeads.SetDocOriginId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocOriginId := Value;
end;

function TCustomDocHeads.GetDeliveryVatId: IJanuaField;
begin
  Result := self.GetCustomDocHead.DeliveryVatId;
end;

procedure TCustomDocHeads.SetDeliveryVatId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DeliveryVatId := Value;
end;

function TCustomDocHeads.GetDeliveryVatRate: IJanuaField;
begin
  Result := self.GetCustomDocHead.DeliveryVatRate;
end;

procedure TCustomDocHeads.SetDeliveryVatRate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DeliveryVatRate := Value;
end;

function TCustomDocHeads.GetAccounted: IJanuaField;
begin
  Result := self.GetCustomDocHead.Accounted;
end;

procedure TCustomDocHeads.SetAccounted(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Accounted := Value;
end;

function TCustomDocHeads.GetInsertDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.InsertDate;
end;

procedure TCustomDocHeads.SetInsertDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.InsertDate := Value;
end;

function TCustomDocHeads.GetUpdateDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.UpdateDate;
end;

procedure TCustomDocHeads.SetUpdateDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.UpdateDate := Value;
end;

function TCustomDocHeads.GetDeliveryDueDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.DeliveryDueDate;
end;

procedure TCustomDocHeads.SetDeliveryDueDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DeliveryDueDate := Value;
end;

function TCustomDocHeads.GetSent: IJanuaField;
begin
  Result := self.GetCustomDocHead.Sent;
end;

function TCustomDocHeads.GetShipmentDes: IJanuaField;
begin
   Result := GetCustomDocHead.ShipmentDes;
end;

procedure TCustomDocHeads.SetSent(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Sent := Value;
end;

procedure TCustomDocHeads.SetShipmentDes(const Value: IJanuaField);
begin
  GetCustomDocHead.ShipmentDes := Value;
end;

function TCustomDocHeads.GetArrivalDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.ArrivalDate;
end;

procedure TCustomDocHeads.SetArrivalDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.ArrivalDate := Value;
end;

function TCustomDocHeads.GetPaymentDueDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.PaymentDueDate;
end;

procedure TCustomDocHeads.SetPaymentDueDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PaymentDueDate := Value;
end;

function TCustomDocHeads.GetDuties: IJanuaField;
begin
  Result := self.GetCustomDocHead.Duties;
end;

procedure TCustomDocHeads.SetDuties(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Duties := Value;
end;

function TCustomDocHeads.GetPaid: IJanuaField;
begin
  Result := self.GetCustomDocHead.Paid;
end;

procedure TCustomDocHeads.SetPaid(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Paid := Value;
end;

function TCustomDocHeads.GetDocFine: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocFine;
end;

procedure TCustomDocHeads.SetDocFine(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocFine := Value;
end;

function TCustomDocHeads.GetUserInsert: IJanuaField;
begin
  Result := self.GetCustomDocHead.UserInsert;
end;

procedure TCustomDocHeads.SetUserInsert(const Value: IJanuaField);
begin
  self.GetCustomDocHead.UserInsert := Value;
end;

function TCustomDocHeads.GetUserUpdate: IJanuaField;
begin
  Result := self.GetCustomDocHead.UserUpdate;
end;

function TCustomDocHeads.GetVesselDepartmentId: IJanuaField;
begin
  Result := GetCustomDocHead.VesselDepartmentId
end;

procedure TCustomDocHeads.SetUserUpdate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.UserUpdate := Value;
end;

procedure TCustomDocHeads.SetVesselDepartmentId(const Value: IJanuaField);
begin
  GetCustomDocHead.VesselDepartmentId := Value;
end;

function TCustomDocHeads.GetDocYear: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocYear;
end;

procedure TCustomDocHeads.SetDocYear(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocYear := Value;
end;

function TCustomDocHeads.GetPoNumberId: IJanuaField;
begin
  Result := self.GetCustomDocHead.PoNumberId;
end;

procedure TCustomDocHeads.SetPoNumberId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PoNumberId := Value;
end;

function TCustomDocHeads.GetPoNumber: IJanuaField;
begin
  Result := self.GetCustomDocHead.PoNumber;
end;

procedure TCustomDocHeads.SetPoNumber(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PoNumber := Value;
end;

function TCustomDocHeads.GetPrinted: IJanuaField;
begin
  Result := self.GetCustomDocHead.Printed;
end;

procedure TCustomDocHeads.SetPrinted(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Printed := Value;
end;

function TCustomDocHeads.GetContactName: IJanuaField;
begin
  Result := self.GetCustomDocHead.ContactName;
end;

procedure TCustomDocHeads.SetContactName(const Value: IJanuaField);
begin
  self.GetCustomDocHead.ContactName := Value;
end;

function TCustomDocHeads.GetContactEmail: IJanuaField;
begin
  Result := self.GetCustomDocHead.ContactEmail;
end;

procedure TCustomDocHeads.SetContactEmail(const Value: IJanuaField);
begin
  self.GetCustomDocHead.ContactEmail := Value;
end;

function TCustomDocHeads.GetContactPhone: IJanuaField;
begin
  Result := self.GetCustomDocHead.ContactPhone;
end;

procedure TCustomDocHeads.SetContactPhone(const Value: IJanuaField);
begin
  self.GetCustomDocHead.ContactPhone := Value;
end;

function TCustomDocHeads.GetOfficeId: IJanuaField;
begin
  Result := self.GetCustomDocHead.OfficeId;
end;

procedure TCustomDocHeads.SetOfficeId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.OfficeId := Value;
end;

function TCustomDocHeads.GetWarehouseLocationId: IJanuaField;
begin
  Result := self.GetCustomDocHead.WarehouseLocationId;
end;

procedure TCustomDocHeads.SetWarehouseLocationId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.WarehouseLocationId := Value;
end;

function TCustomDocHeads.GetJguid: IJanuaField;
begin
  Result := self.GetCustomDocHead.Jguid;
end;

procedure TCustomDocHeads.SetJguid(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Jguid := Value;
end;

function TCustomDocHeads.GetNotes1: IJanuaField;
begin
  Result := self.GetCustomDocHead.Notes1;
end;

procedure TCustomDocHeads.SetNotes1(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Notes1 := Value;
end;

function TCustomDocHeads.GetNotes2: IJanuaField;
begin
  Result := self.GetCustomDocHead.Notes2;
end;

procedure TCustomDocHeads.SetNotes2(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Notes2 := Value;
end;

function TCustomDocHeads.GetNotes3: IJanuaField;
begin
  Result := self.GetCustomDocHead.Notes3;
end;

procedure TCustomDocHeads.SetNotes3(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Notes3 := Value;
end;

function TCustomDocHeads.GetDbSchemaId: IJanuaField;
begin
  Result := self.GetCustomDocHead.DbSchemaId;
end;

procedure TCustomDocHeads.SetDbSchemaId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DbSchemaId := Value;
end;

function TCustomDocHeads.GetPurchaseOrderNumber: IJanuaField;
begin
  Result := self.GetCustomDocHead.PurchaseOrderNumber;
end;

procedure TCustomDocHeads.SetPurchaseOrderNumber(const Value: IJanuaField);
begin
  self.GetCustomDocHead.PurchaseOrderNumber := Value;
end;

function TCustomDocHeads.GetCustomDocHead: ICustomDocHead;
begin
  Result := FRecord as ICustomDocHead;
end;

function TCustomDocHeads.GetCustomField1: IJanuaField;
begin
  Result := self.GetCustomDocHead.CustomField1;
end;

procedure TCustomDocHeads.SetCustomField1(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CustomField1 := Value;
end;

function TCustomDocHeads.GetCustomField2: IJanuaField;
begin
  Result := self.GetCustomDocHead.CustomField2;
end;

procedure TCustomDocHeads.SetCustomField2(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CustomField2 := Value;
end;

function TCustomDocHeads.GetCustomField3: IJanuaField;
begin
  Result := self.GetCustomDocHead.CustomField3;
end;

procedure TCustomDocHeads.SetCustomField3(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CustomField3 := Value;
end;

function TCustomDocHeads.GetCustomInt1: IJanuaField;
begin
  Result := self.GetCustomDocHead.CustomInt1;
end;

procedure TCustomDocHeads.SetCustomInt1(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CustomInt1 := Value;
end;

function TCustomDocHeads.GetCustomInt2: IJanuaField;
begin
  Result := self.GetCustomDocHead.CustomInt2;
end;

procedure TCustomDocHeads.SetCustomInt2(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CustomInt2 := Value;
end;

function TCustomDocHeads.GetCustomInt3: IJanuaField;
begin
  Result := self.GetCustomDocHead.CustomInt3;
end;

procedure TCustomDocHeads.SetCustomInt3(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CustomInt3 := Value;
end;

function TCustomDocHeads.GetDocRefCode: IJanuaField;
begin
  Result := self.GetCustomDocHead.DocRefCode;
end;

procedure TCustomDocHeads.SetDocRefCode(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DocRefCode := Value;
end;

function TCustomDocHeads.GetCarrierExpenses: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierExpenses;
end;

procedure TCustomDocHeads.SetCarrierExpenses(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierExpenses := Value;
end;

function TCustomDocHeads.GetRegistryCode: IJanuaField;
begin
  Result := self.GetCustomDocHead.RegistryCode;
end;

procedure TCustomDocHeads.SetRegistryCode(const Value: IJanuaField);
begin
  self.GetCustomDocHead.RegistryCode := Value;
end;

function TCustomDocHeads.GetCarrierTrackingNumber: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierTrackingNumber;
end;

procedure TCustomDocHeads.SetCarrierTrackingNumber(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierTrackingNumber := Value;
end;

function TCustomDocHeads.GetCarrierExpensesCurrencyId: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierExpensesCurrencyId;
end;

procedure TCustomDocHeads.SetCarrierExpensesCurrencyId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierExpensesCurrencyId := Value;
end;

function TCustomDocHeads.GetSearchIndex: IJanuaField;
begin
  Result := self.GetCustomDocHead.SearchIndex;
end;

procedure TCustomDocHeads.SetSearchIndex(const Value: IJanuaField);
begin
  self.GetCustomDocHead.SearchIndex := Value;
end;

function TCustomDocHeads.GetDestName: IJanuaField;
begin
  Result := self.GetCustomDocHead.DestName;
end;

procedure TCustomDocHeads.SetDestName(const Value: IJanuaField);
begin
  self.GetCustomDocHead.DestName := Value;
end;

function TCustomDocHeads.GetCarrierName: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierName;
end;

procedure TCustomDocHeads.SetCarrierName(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierName := Value;
end;

function TCustomDocHeads.GetLocationName: IJanuaField;
begin
  Result := self.GetCustomDocHead.LocationName;
end;

procedure TCustomDocHeads.SetLocationName(const Value: IJanuaField);
begin
  self.GetCustomDocHead.LocationName := Value;
end;

function TCustomDocHeads.GetGoodsTypeId: IJanuaField;
begin
  Result := self.GetCustomDocHead.GoodsTypeId;
end;

procedure TCustomDocHeads.SetGoodsTypeId(const Value: IJanuaField);
begin
  self.GetCustomDocHead.GoodsTypeId := Value;
end;

function TCustomDocHeads.GetImportexport: IJanuaField;
begin
  Result := self.GetCustomDocHead.Importexport;
end;

procedure TCustomDocHeads.SetImportexport(const Value: IJanuaField);
begin
  self.GetCustomDocHead.Importexport := Value;
end;

function TCustomDocHeads.GetCarrierInvoiceNumber: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierInvoiceNumber;
end;

procedure TCustomDocHeads.SetCarrierInvoiceNumber(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierInvoiceNumber := Value;
end;

function TCustomDocHeads.GetCarrierInvoiceDate: IJanuaField;
begin
  Result := self.GetCustomDocHead.CarrierInvoiceDate;
end;

procedure TCustomDocHeads.SetCarrierInvoiceDate(const Value: IJanuaField);
begin
  self.GetCustomDocHead.CarrierInvoiceDate := Value;
end;

end.
