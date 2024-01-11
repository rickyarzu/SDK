unit JOrm.Documents.RowViews.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.RowViews.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomRowView = class(TJanuaRecord, IDocRowCustomView)
  private
    FId: IJanuaField;
    FDocId: IJanuaField;
    FHazClass: IJanuaField;
    FItemId: IJanuaField;
    FRowDate: IJanuaField;
    FInout: IJanuaField;
    FModel: IJanuaField;
    FCode: IJanuaField;
    FDescription: IJanuaField;
    FPrice: IJanuaField;
    FVatId: IJanuaField;
    FVatRate: IJanuaField;
    FDiscountRate: IJanuaField;
    FDiscountCommRate: IJanuaField;
    FDiscountExtRate: IJanuaField;
    FQuantity: IJanuaField;
    FSecondhand: IJanuaField;
    FDimensionId1: IJanuaField;
    FDimensionId2: IJanuaField;
    FDimensionsId3: IJanuaField;
    FCurrencyId: IJanuaField;
    FExchangeRate: IJanuaField;
    FPosition: IJanuaField;
    FDeliveryDate: IJanuaField;
    FBarcode: IJanuaField;
    FDeliveredQty: IJanuaField;
    FSampleQty: IJanuaField;
    FIsSample: IJanuaField;
    FRefCode: IJanuaField;
    FDocOriginId: IJanuaField;
    FRowOriginId: IJanuaField;
    FAnagramsRefId: IJanuaField;
    FCollectorPoints: IJanuaField;
    FCollectorPointsForfait: IJanuaField;
    FPackageTypeId: IJanuaField;
    FJguid: IJanuaField;
    FOrderedQty: IJanuaField;
    FPallets: IJanuaField;
    FWeightOnDelivery: IJanuaField;
    FWeightOnOrder: IJanuaField;
    FWeightOnShipping: IJanuaField;
    FVolume: IJanuaField;
    FDocOriginNumber: IJanuaField;
    FDocOriginDate: IJanuaField;
    FCustomsDocRef: IJanuaField;
    FCustomsDocTypeId: IJanuaField;
    FPurchaseOrder: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FUserInsert: IJanuaField;
    FUserUpdate: IJanuaField;
    FSizeWeight: IJanuaField;
    FSizeLength: IJanuaField;
    FSizeHeight: IJanuaField;
    FInventoryQty: IJanuaField;
    FInventoryWeight: IJanuaField;
    FCustomsDocCin: IJanuaField;
    FCustomsDocDate: IJanuaField;
    FSupplierId: IJanuaField;
    FDbSchemaId: IJanuaField;
    FDocHeadJguid: IJanuaField;
    FItemJguid: IJanuaField;
    FContainerStatus: IJanuaField;
    FRights: IJanuaField;
    FInvoiceNumber: IJanuaField;
    FCustomField1: IJanuaField;
    FCustomField2: IJanuaField;
    FInvoiceAmount: IJanuaField;
    FCustomField3: IJanuaField;
    FJsonNestedTable: IJanuaField;
    FInvoiceDate: IJanuaField;
    FImportexport: IJanuaField;
    FTypeId: IJanuaField;
    FIsDescription: IJanuaField;
    FExchangeRage: IJanuaField;
    FFreightQty: IJanuaField;
    FAmount: IJanuaField;
    FVatCode: IJanuaField;
    FFreightRate: IJanuaField;
    FVatDescription: IJanuaField;
    FCurrencyCode: IJanuaField;
    FCurrencyDescription: IJanuaField;
    FFlgDescription: IJanuaField;
    FSupplierName: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetDocId: IJanuaField;
    procedure SetDocId(const Value: IJanuaField);
    function GetItemId: IJanuaField;
    procedure SetItemId(const Value: IJanuaField);
    function GetRowDate: IJanuaField;
    procedure SetRowDate(const Value: IJanuaField);
    function GetInout: IJanuaField;
    procedure SetInout(const Value: IJanuaField);
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetPrice: IJanuaField;
    procedure SetPrice(const Value: IJanuaField);
    function GetVatId: IJanuaField;
    procedure SetVatId(const Value: IJanuaField);
    function GetVatRate: IJanuaField;
    procedure SetVatRate(const Value: IJanuaField);
    function GetDiscountRate: IJanuaField;
    procedure SetDiscountRate(const Value: IJanuaField);
    function GetDiscountCommRate: IJanuaField;
    procedure SetDiscountCommRate(const Value: IJanuaField);
    function GetDiscountExtRate: IJanuaField;
    procedure SetDiscountExtRate(const Value: IJanuaField);
    function GetQuantity: IJanuaField;
    procedure SetQuantity(const Value: IJanuaField);
    function GetSecondhand: IJanuaField;
    procedure SetSecondhand(const Value: IJanuaField);
    function GetDimensionId1: IJanuaField;
    procedure SetDimensionId1(const Value: IJanuaField);
    function GetDimensionId2: IJanuaField;
    procedure SetDimensionId2(const Value: IJanuaField);
    function GetDimensionsId3: IJanuaField;
    procedure SetDimensionsId3(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetExchangeRate: IJanuaField;
    procedure SetExchangeRate(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetDeliveryDate: IJanuaField;
    procedure SetDeliveryDate(const Value: IJanuaField);
    function GetBarcode: IJanuaField;
    procedure SetBarcode(const Value: IJanuaField);
    function GetDeliveredQty: IJanuaField;
    procedure SetDeliveredQty(const Value: IJanuaField);
    function GetSampleQty: IJanuaField;
    procedure SetSampleQty(const Value: IJanuaField);
    function GetIsSample: IJanuaField;
    procedure SetIsSample(const Value: IJanuaField);
    function GetRefCode: IJanuaField;
    procedure SetRefCode(const Value: IJanuaField);
    function GetDocOriginId: IJanuaField;
    procedure SetDocOriginId(const Value: IJanuaField);
    function GetRowOriginId: IJanuaField;
    procedure SetRowOriginId(const Value: IJanuaField);
    function GetAnagramsRefId: IJanuaField;
    procedure SetAnagramsRefId(const Value: IJanuaField);
    function GetCollectorPoints: IJanuaField;
    procedure SetCollectorPoints(const Value: IJanuaField);
    function GetCollectorPointsForfait: IJanuaField;
    procedure SetCollectorPointsForfait(const Value: IJanuaField);
    function GetPackageTypeId: IJanuaField;
    procedure SetPackageTypeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetOrderedQty: IJanuaField;
    procedure SetOrderedQty(const Value: IJanuaField);
    function GetPallets: IJanuaField;
    procedure SetPallets(const Value: IJanuaField);
    function GetWeightOnDelivery: IJanuaField;
    procedure SetWeightOnDelivery(const Value: IJanuaField);
    function GetWeightOnOrder: IJanuaField;
    procedure SetWeightOnOrder(const Value: IJanuaField);
    function GetWeightOnShipping: IJanuaField;
    procedure SetWeightOnShipping(const Value: IJanuaField);
    function GetVolume: IJanuaField;
    procedure SetVolume(const Value: IJanuaField);
    function GetDocOriginNumber: IJanuaField;
    procedure SetDocOriginNumber(const Value: IJanuaField);
    function GetDocOriginDate: IJanuaField;
    procedure SetDocOriginDate(const Value: IJanuaField);
    function GetCustomsDocRef: IJanuaField;
    procedure SetCustomsDocRef(const Value: IJanuaField);
    function GetCustomsDocTypeId: IJanuaField;
    procedure SetCustomsDocTypeId(const Value: IJanuaField);
    function GetPurchaseOrder: IJanuaField;
    procedure SetPurchaseOrder(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetSizeWeight: IJanuaField;
    procedure SetSizeWeight(const Value: IJanuaField);
    function GetSizeLength: IJanuaField;
    procedure SetSizeLength(const Value: IJanuaField);
    function GetSizeHeight: IJanuaField;
    procedure SetSizeHeight(const Value: IJanuaField);
    function GetInventoryQty: IJanuaField;
    procedure SetInventoryQty(const Value: IJanuaField);
    function GetInventoryWeight: IJanuaField;
    procedure SetInventoryWeight(const Value: IJanuaField);
    function GetCustomsDocCin: IJanuaField;
    procedure SetCustomsDocCin(const Value: IJanuaField);
    function GetCustomsDocDate: IJanuaField;
    procedure SetCustomsDocDate(const Value: IJanuaField);
    function GetSupplierId: IJanuaField;
    procedure SetSupplierId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetDocHeadJguid: IJanuaField;
    procedure SetDocHeadJguid(const Value: IJanuaField);
    function GetItemJguid: IJanuaField;
    procedure SetItemJguid(const Value: IJanuaField);
    function GetContainerStatus: IJanuaField;
    procedure SetContainerStatus(const Value: IJanuaField);
    function GetRights: IJanuaField;
    procedure SetRights(const Value: IJanuaField);
    function GetInvoiceNumber: IJanuaField;
    procedure SetInvoiceNumber(const Value: IJanuaField);
    function GetCustomField1: IJanuaField;
    procedure SetCustomField1(const Value: IJanuaField);
    function GetCustomField2: IJanuaField;
    procedure SetCustomField2(const Value: IJanuaField);
    function GetInvoiceAmount: IJanuaField;
    procedure SetInvoiceAmount(const Value: IJanuaField);
    function GetCustomField3: IJanuaField;
    procedure SetCustomField3(const Value: IJanuaField);
    function GetJsonNestedTable: IJanuaField;
    procedure SetJsonNestedTable(const Value: IJanuaField);
    function GetInvoiceDate: IJanuaField;
    procedure SetInvoiceDate(const Value: IJanuaField);
    function GetImportexport: IJanuaField;
    procedure SetImportexport(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetIsDescription: IJanuaField;
    procedure SetIsDescription(const Value: IJanuaField);
    function GetExchangeRage: IJanuaField;
    procedure SetExchangeRage(const Value: IJanuaField);
    function GetFreightQty: IJanuaField;
    procedure SetFreightQty(const Value: IJanuaField);
    function GetAmount: IJanuaField;
    procedure SetAmount(const Value: IJanuaField);
    function GetVatCode: IJanuaField;
    procedure SetVatCode(const Value: IJanuaField);
    function GetFreightRate: IJanuaField;
    procedure SetFreightRate(const Value: IJanuaField);
    function GetVatDescription: IJanuaField;
    procedure SetVatDescription(const Value: IJanuaField);
    function GetCurrencyCode: IJanuaField;
    procedure SetCurrencyCode(const Value: IJanuaField);
    function GetCurrencyDescription: IJanuaField;
    procedure SetCurrencyDescription(const Value: IJanuaField);
    function GetFlgDescription: IJanuaField;
    procedure SetFlgDescription(const Value: IJanuaField);
    function GetSupplierName: IJanuaField;
    procedure SetSupplierName(const Value: IJanuaField);
        function GetHazClass: IJanuaField;
    procedure SetHazClass(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property DocId: IJanuaField read GetDocId write SetDocId;
    property HazClass: IJanuaField read GetHazClass write SetHazClass;
    property ItemId: IJanuaField read GetItemId write SetItemId;
    property RowDate: IJanuaField read GetRowDate write SetRowDate;
    property Inout: IJanuaField read GetInout write SetInout;
    property Model: IJanuaField read GetModel write SetModel;
    property Code: IJanuaField read GetCode write SetCode;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Price: IJanuaField read GetPrice write SetPrice;
    property VatId: IJanuaField read GetVatId write SetVatId;
    property VatRate: IJanuaField read GetVatRate write SetVatRate;
    property DiscountRate: IJanuaField read GetDiscountRate write SetDiscountRate;
    property DiscountCommRate: IJanuaField read GetDiscountCommRate write SetDiscountCommRate;
    property DiscountExtRate: IJanuaField read GetDiscountExtRate write SetDiscountExtRate;
    property Quantity: IJanuaField read GetQuantity write SetQuantity;
    property Secondhand: IJanuaField read GetSecondhand write SetSecondhand;
    property DimensionId1: IJanuaField read GetDimensionId1 write SetDimensionId1;
    property DimensionId2: IJanuaField read GetDimensionId2 write SetDimensionId2;
    property DimensionsId3: IJanuaField read GetDimensionsId3 write SetDimensionsId3;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property ExchangeRate: IJanuaField read GetExchangeRate write SetExchangeRate;
    property Position: IJanuaField read GetPosition write SetPosition;
    property DeliveryDate: IJanuaField read GetDeliveryDate write SetDeliveryDate;
    property Barcode: IJanuaField read GetBarcode write SetBarcode;
    property DeliveredQty: IJanuaField read GetDeliveredQty write SetDeliveredQty;
    property SampleQty: IJanuaField read GetSampleQty write SetSampleQty;
    property IsSample: IJanuaField read GetIsSample write SetIsSample;
    property RefCode: IJanuaField read GetRefCode write SetRefCode;
    property DocOriginId: IJanuaField read GetDocOriginId write SetDocOriginId;
    property RowOriginId: IJanuaField read GetRowOriginId write SetRowOriginId;
    property AnagramsRefId: IJanuaField read GetAnagramsRefId write SetAnagramsRefId;
    property CollectorPoints: IJanuaField read GetCollectorPoints write SetCollectorPoints;
    property CollectorPointsForfait: IJanuaField read GetCollectorPointsForfait write SetCollectorPointsForfait;
    property PackageTypeId: IJanuaField read GetPackageTypeId write SetPackageTypeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property OrderedQty: IJanuaField read GetOrderedQty write SetOrderedQty;
    property Pallets: IJanuaField read GetPallets write SetPallets;
    property WeightOnDelivery: IJanuaField read GetWeightOnDelivery write SetWeightOnDelivery;
    property WeightOnOrder: IJanuaField read GetWeightOnOrder write SetWeightOnOrder;
    property WeightOnShipping: IJanuaField read GetWeightOnShipping write SetWeightOnShipping;
    property Volume: IJanuaField read GetVolume write SetVolume;
    property DocOriginNumber: IJanuaField read GetDocOriginNumber write SetDocOriginNumber;
    property DocOriginDate: IJanuaField read GetDocOriginDate write SetDocOriginDate;
    property CustomsDocRef: IJanuaField read GetCustomsDocRef write SetCustomsDocRef;
    property CustomsDocTypeId: IJanuaField read GetCustomsDocTypeId write SetCustomsDocTypeId;
    property PurchaseOrder: IJanuaField read GetPurchaseOrder write SetPurchaseOrder;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property SizeWeight: IJanuaField read GetSizeWeight write SetSizeWeight;
    property SizeLength: IJanuaField read GetSizeLength write SetSizeLength;
    property SizeHeight: IJanuaField read GetSizeHeight write SetSizeHeight;
    property InventoryQty: IJanuaField read GetInventoryQty write SetInventoryQty;
    property InventoryWeight: IJanuaField read GetInventoryWeight write SetInventoryWeight;
    property CustomsDocCin: IJanuaField read GetCustomsDocCin write SetCustomsDocCin;
    property CustomsDocDate: IJanuaField read GetCustomsDocDate write SetCustomsDocDate;
    property SupplierId: IJanuaField read GetSupplierId write SetSupplierId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property DocHeadJguid: IJanuaField read GetDocHeadJguid write SetDocHeadJguid;
    property ItemJguid: IJanuaField read GetItemJguid write SetItemJguid;
    property ContainerStatus: IJanuaField read GetContainerStatus write SetContainerStatus;
    property Rights: IJanuaField read GetRights write SetRights;
    property InvoiceNumber: IJanuaField read GetInvoiceNumber write SetInvoiceNumber;
    property CustomField1: IJanuaField read GetCustomField1 write SetCustomField1;
    property CustomField2: IJanuaField read GetCustomField2 write SetCustomField2;
    property InvoiceAmount: IJanuaField read GetInvoiceAmount write SetInvoiceAmount;
    property CustomField3: IJanuaField read GetCustomField3 write SetCustomField3;
    property JsonNestedTable: IJanuaField read GetJsonNestedTable write SetJsonNestedTable;
    property InvoiceDate: IJanuaField read GetInvoiceDate write SetInvoiceDate;
    property Importexport: IJanuaField read GetImportexport write SetImportexport;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property IsDescription: IJanuaField read GetIsDescription write SetIsDescription;
    property ExchangeRage: IJanuaField read GetExchangeRage write SetExchangeRage;
    property FreightQty: IJanuaField read GetFreightQty write SetFreightQty;
    property Amount: IJanuaField read GetAmount write SetAmount;
    property VatCode: IJanuaField read GetVatCode write SetVatCode;
    property FreightRate: IJanuaField read GetFreightRate write SetFreightRate;
    property VatDescription: IJanuaField read GetVatDescription write SetVatDescription;
    property CurrencyCode: IJanuaField read GetCurrencyCode write SetCurrencyCode;
    property CurrencyDescription: IJanuaField read GetCurrencyDescription write SetCurrencyDescription;
    property FlgDescription: IJanuaField read GetFlgDescription write SetFlgDescription;
    property SupplierName: IJanuaField read GetSupplierName write SetSupplierName;

  end;

  TCustomRowViews = class(TJanuaRecordSet, IJanuaRecordSet, IDocRowCustomViews)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetDocId: IJanuaField;
    procedure SetDocId(const Value: IJanuaField);
    function GetItemId: IJanuaField;
    procedure SetItemId(const Value: IJanuaField);
    function GetRowDate: IJanuaField;
    procedure SetRowDate(const Value: IJanuaField);
    function GetInout: IJanuaField;
    procedure SetInout(const Value: IJanuaField);
    function GetModel: IJanuaField;
    procedure SetModel(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetPrice: IJanuaField;
    procedure SetPrice(const Value: IJanuaField);
    function GetVatId: IJanuaField;
    procedure SetVatId(const Value: IJanuaField);
    function GetVatRate: IJanuaField;
    procedure SetVatRate(const Value: IJanuaField);
    function GetDiscountRate: IJanuaField;
    procedure SetDiscountRate(const Value: IJanuaField);
    function GetDiscountCommRate: IJanuaField;
    procedure SetDiscountCommRate(const Value: IJanuaField);
    function GetDiscountExtRate: IJanuaField;
    procedure SetDiscountExtRate(const Value: IJanuaField);
    function GetQuantity: IJanuaField;
    procedure SetQuantity(const Value: IJanuaField);
    function GetSecondhand: IJanuaField;
    procedure SetSecondhand(const Value: IJanuaField);
    function GetDimensionId1: IJanuaField;
    procedure SetDimensionId1(const Value: IJanuaField);
    function GetDimensionId2: IJanuaField;
    procedure SetDimensionId2(const Value: IJanuaField);
    function GetDimensionsId3: IJanuaField;
    procedure SetDimensionsId3(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetExchangeRate: IJanuaField;
    procedure SetExchangeRate(const Value: IJanuaField);
    function GetPosition: IJanuaField;
    procedure SetPosition(const Value: IJanuaField);
    function GetDeliveryDate: IJanuaField;
    procedure SetDeliveryDate(const Value: IJanuaField);
    function GetBarcode: IJanuaField;
    procedure SetBarcode(const Value: IJanuaField);
    function GetDeliveredQty: IJanuaField;
    procedure SetDeliveredQty(const Value: IJanuaField);
    function GetSampleQty: IJanuaField;
    procedure SetSampleQty(const Value: IJanuaField);
    function GetIsSample: IJanuaField;
    procedure SetIsSample(const Value: IJanuaField);
    function GetRefCode: IJanuaField;
    procedure SetRefCode(const Value: IJanuaField);
    function GetDocOriginId: IJanuaField;
    procedure SetDocOriginId(const Value: IJanuaField);
    function GetRowOriginId: IJanuaField;
    procedure SetRowOriginId(const Value: IJanuaField);
    function GetAnagramsRefId: IJanuaField;
    procedure SetAnagramsRefId(const Value: IJanuaField);
    function GetCollectorPoints: IJanuaField;
    procedure SetCollectorPoints(const Value: IJanuaField);
    function GetCollectorPointsForfait: IJanuaField;
    procedure SetCollectorPointsForfait(const Value: IJanuaField);
    function GetPackageTypeId: IJanuaField;
    procedure SetPackageTypeId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetOrderedQty: IJanuaField;
    procedure SetOrderedQty(const Value: IJanuaField);
    function GetPallets: IJanuaField;
    procedure SetPallets(const Value: IJanuaField);
    function GetWeightOnDelivery: IJanuaField;
    procedure SetWeightOnDelivery(const Value: IJanuaField);
    function GetWeightOnOrder: IJanuaField;
    procedure SetWeightOnOrder(const Value: IJanuaField);
    function GetWeightOnShipping: IJanuaField;
    procedure SetWeightOnShipping(const Value: IJanuaField);
    function GetVolume: IJanuaField;
    procedure SetVolume(const Value: IJanuaField);
    function GetDocOriginNumber: IJanuaField;
    procedure SetDocOriginNumber(const Value: IJanuaField);
    function GetDocOriginDate: IJanuaField;
    procedure SetDocOriginDate(const Value: IJanuaField);
    function GetCustomsDocRef: IJanuaField;
    procedure SetCustomsDocRef(const Value: IJanuaField);
    function GetCustomsDocTypeId: IJanuaField;
    procedure SetCustomsDocTypeId(const Value: IJanuaField);
    function GetPurchaseOrder: IJanuaField;
    procedure SetPurchaseOrder(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetSizeWeight: IJanuaField;
    procedure SetSizeWeight(const Value: IJanuaField);
    function GetSizeLength: IJanuaField;
    procedure SetSizeLength(const Value: IJanuaField);
    function GetSizeHeight: IJanuaField;
    procedure SetSizeHeight(const Value: IJanuaField);
    function GetInventoryQty: IJanuaField;
    procedure SetInventoryQty(const Value: IJanuaField);
    function GetInventoryWeight: IJanuaField;
    procedure SetInventoryWeight(const Value: IJanuaField);
    function GetCustomsDocCin: IJanuaField;
    procedure SetCustomsDocCin(const Value: IJanuaField);
    function GetCustomsDocDate: IJanuaField;
    procedure SetCustomsDocDate(const Value: IJanuaField);
    function GetSupplierId: IJanuaField;
    procedure SetSupplierId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetDocHeadJguid: IJanuaField;
    procedure SetDocHeadJguid(const Value: IJanuaField);
    function GetItemJguid: IJanuaField;
    procedure SetItemJguid(const Value: IJanuaField);
    function GetContainerStatus: IJanuaField;
    procedure SetContainerStatus(const Value: IJanuaField);
    function GetRights: IJanuaField;
    procedure SetRights(const Value: IJanuaField);
    function GetInvoiceNumber: IJanuaField;
    procedure SetInvoiceNumber(const Value: IJanuaField);
    function GetCustomField1: IJanuaField;
    procedure SetCustomField1(const Value: IJanuaField);
    function GetCustomField2: IJanuaField;
    procedure SetCustomField2(const Value: IJanuaField);
    function GetInvoiceAmount: IJanuaField;
    procedure SetInvoiceAmount(const Value: IJanuaField);
    function GetCustomField3: IJanuaField;
    procedure SetCustomField3(const Value: IJanuaField);
    function GetJsonNestedTable: IJanuaField;
    procedure SetJsonNestedTable(const Value: IJanuaField);
    function GetInvoiceDate: IJanuaField;
    procedure SetInvoiceDate(const Value: IJanuaField);
    function GetImportexport: IJanuaField;
    procedure SetImportexport(const Value: IJanuaField);
    function GetTypeId: IJanuaField;
    procedure SetTypeId(const Value: IJanuaField);
    function GetIsDescription: IJanuaField;
    procedure SetIsDescription(const Value: IJanuaField);
    function GetExchangeRage: IJanuaField;
    procedure SetExchangeRage(const Value: IJanuaField);
    function GetFreightQty: IJanuaField;
    procedure SetFreightQty(const Value: IJanuaField);
    function GetAmount: IJanuaField;
    procedure SetAmount(const Value: IJanuaField);
    function GetVatCode: IJanuaField;
    procedure SetVatCode(const Value: IJanuaField);
    function GetFreightRate: IJanuaField;
    procedure SetFreightRate(const Value: IJanuaField);
    function GetVatDescription: IJanuaField;
    procedure SetVatDescription(const Value: IJanuaField);
    function GetCurrencyCode: IJanuaField;
    procedure SetCurrencyCode(const Value: IJanuaField);
    function GetCurrencyDescription: IJanuaField;
    procedure SetCurrencyDescription(const Value: IJanuaField);
    function GetFlgDescription: IJanuaField;
    procedure SetFlgDescription(const Value: IJanuaField);
    function GetSupplierName: IJanuaField;
    procedure SetSupplierName(const Value: IJanuaField);
    function GetRowView: IDocRowCustomView;
    procedure SetRowView(const Value: IDocRowCustomView);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property DocId: IJanuaField read GetDocId write SetDocId;
    property ItemId: IJanuaField read GetItemId write SetItemId;
    property RowDate: IJanuaField read GetRowDate write SetRowDate;
    property Inout: IJanuaField read GetInout write SetInout;
    property Model: IJanuaField read GetModel write SetModel;
    property Code: IJanuaField read GetCode write SetCode;
    property Description: IJanuaField read GetDescription write SetDescription;
    property Price: IJanuaField read GetPrice write SetPrice;
    property VatId: IJanuaField read GetVatId write SetVatId;
    property VatRate: IJanuaField read GetVatRate write SetVatRate;
    property DiscountRate: IJanuaField read GetDiscountRate write SetDiscountRate;
    property DiscountCommRate: IJanuaField read GetDiscountCommRate write SetDiscountCommRate;
    property DiscountExtRate: IJanuaField read GetDiscountExtRate write SetDiscountExtRate;
    property Quantity: IJanuaField read GetQuantity write SetQuantity;
    property Secondhand: IJanuaField read GetSecondhand write SetSecondhand;
    property DimensionId1: IJanuaField read GetDimensionId1 write SetDimensionId1;
    property DimensionId2: IJanuaField read GetDimensionId2 write SetDimensionId2;
    property DimensionsId3: IJanuaField read GetDimensionsId3 write SetDimensionsId3;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property ExchangeRate: IJanuaField read GetExchangeRate write SetExchangeRate;
    property Position: IJanuaField read GetPosition write SetPosition;
    property DeliveryDate: IJanuaField read GetDeliveryDate write SetDeliveryDate;
    property Barcode: IJanuaField read GetBarcode write SetBarcode;
    property DeliveredQty: IJanuaField read GetDeliveredQty write SetDeliveredQty;
    property SampleQty: IJanuaField read GetSampleQty write SetSampleQty;
    property IsSample: IJanuaField read GetIsSample write SetIsSample;
    property RefCode: IJanuaField read GetRefCode write SetRefCode;
    property DocOriginId: IJanuaField read GetDocOriginId write SetDocOriginId;
    property RowOriginId: IJanuaField read GetRowOriginId write SetRowOriginId;
    property AnagramsRefId: IJanuaField read GetAnagramsRefId write SetAnagramsRefId;
    property CollectorPoints: IJanuaField read GetCollectorPoints write SetCollectorPoints;
    property CollectorPointsForfait: IJanuaField read GetCollectorPointsForfait write SetCollectorPointsForfait;
    property PackageTypeId: IJanuaField read GetPackageTypeId write SetPackageTypeId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property OrderedQty: IJanuaField read GetOrderedQty write SetOrderedQty;
    property Pallets: IJanuaField read GetPallets write SetPallets;
    property WeightOnDelivery: IJanuaField read GetWeightOnDelivery write SetWeightOnDelivery;
    property WeightOnOrder: IJanuaField read GetWeightOnOrder write SetWeightOnOrder;
    property WeightOnShipping: IJanuaField read GetWeightOnShipping write SetWeightOnShipping;
    property Volume: IJanuaField read GetVolume write SetVolume;
    property DocOriginNumber: IJanuaField read GetDocOriginNumber write SetDocOriginNumber;
    property DocOriginDate: IJanuaField read GetDocOriginDate write SetDocOriginDate;
    property CustomsDocRef: IJanuaField read GetCustomsDocRef write SetCustomsDocRef;
    property CustomsDocTypeId: IJanuaField read GetCustomsDocTypeId write SetCustomsDocTypeId;
    property PurchaseOrder: IJanuaField read GetPurchaseOrder write SetPurchaseOrder;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property SizeWeight: IJanuaField read GetSizeWeight write SetSizeWeight;
    property SizeLength: IJanuaField read GetSizeLength write SetSizeLength;
    property SizeHeight: IJanuaField read GetSizeHeight write SetSizeHeight;
    property InventoryQty: IJanuaField read GetInventoryQty write SetInventoryQty;
    property InventoryWeight: IJanuaField read GetInventoryWeight write SetInventoryWeight;
    property CustomsDocCin: IJanuaField read GetCustomsDocCin write SetCustomsDocCin;
    property CustomsDocDate: IJanuaField read GetCustomsDocDate write SetCustomsDocDate;
    property SupplierId: IJanuaField read GetSupplierId write SetSupplierId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property DocHeadJguid: IJanuaField read GetDocHeadJguid write SetDocHeadJguid;
    property ItemJguid: IJanuaField read GetItemJguid write SetItemJguid;
    property ContainerStatus: IJanuaField read GetContainerStatus write SetContainerStatus;
    property Rights: IJanuaField read GetRights write SetRights;
    property InvoiceNumber: IJanuaField read GetInvoiceNumber write SetInvoiceNumber;
    property CustomField1: IJanuaField read GetCustomField1 write SetCustomField1;
    property CustomField2: IJanuaField read GetCustomField2 write SetCustomField2;
    property InvoiceAmount: IJanuaField read GetInvoiceAmount write SetInvoiceAmount;
    property CustomField3: IJanuaField read GetCustomField3 write SetCustomField3;
    property JsonNestedTable: IJanuaField read GetJsonNestedTable write SetJsonNestedTable;
    property InvoiceDate: IJanuaField read GetInvoiceDate write SetInvoiceDate;
    property Importexport: IJanuaField read GetImportexport write SetImportexport;
    property TypeId: IJanuaField read GetTypeId write SetTypeId;
    property IsDescription: IJanuaField read GetIsDescription write SetIsDescription;
    property ExchangeRage: IJanuaField read GetExchangeRage write SetExchangeRage;
    property FreightQty: IJanuaField read GetFreightQty write SetFreightQty;
    property Amount: IJanuaField read GetAmount write SetAmount;
    property VatCode: IJanuaField read GetVatCode write SetVatCode;
    property FreightRate: IJanuaField read GetFreightRate write SetFreightRate;
    property VatDescription: IJanuaField read GetVatDescription write SetVatDescription;
    property CurrencyCode: IJanuaField read GetCurrencyCode write SetCurrencyCode;
    property CurrencyDescription: IJanuaField read GetCurrencyDescription write SetCurrencyDescription;
    property FlgDescription: IJanuaField read GetFlgDescription write SetFlgDescription;
    property SupplierName: IJanuaField read GetSupplierName write SetSupplierName;
    property RowView: IDocRowCustomView read GetRowView write SetRowView;
  end;

  TRowViewFactory = class
    class function CreateRecord(const aKey: string): IDocRowCustomView; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IDocRowCustomViews; overload;
  end;

implementation

// ------------------------------------------ Impl TRowView -------------------------------

{ TCustomRowView }

constructor TCustomRowView.Create;
begin
  inherited;
  FPrefix := 'rwsv';
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FDocId := AddCreateField(TJanuaFieldType.jptLargeint, 'doc_id', 'doc_id');
  FHazClass := AddCreateField(TJanuaFieldType.jptString, 'haz_class', 'haz_class');
  FItemId := AddCreateField(TJanuaFieldType.jptLargeint, 'item_id', 'item_id');
  FRowDate := AddCreateField(TJanuaFieldType.jptDate, 'row_date', 'row_date');
  FInout := AddCreateField(TJanuaFieldType.jptSmallint, 'inout', 'inout');
  FModel := AddCreateField(TJanuaFieldType.jptString, 'model', 'model');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FDescription := AddCreateField(TJanuaFieldType.jptText, 'description', 'description');
  FPrice := AddCreateField(TJanuaFieldType.jptFloat, 'price', 'price');
  FVatId := AddCreateField(TJanuaFieldType.jptSmallint, 'vat_id', 'vat_id');
  FVatRate := AddCreateField(TJanuaFieldType.jptFloat, 'vat_rate', 'vat_rate');
  FDiscountRate := AddCreateField(TJanuaFieldType.jptFloat, 'discount_rate', 'discount_rate');
  FDiscountCommRate := AddCreateField(TJanuaFieldType.jptFloat, 'discount_comm_rate', 'discount_comm_rate');
  FDiscountExtRate := AddCreateField(TJanuaFieldType.jptFloat, 'discount_ext_rate', 'discount_ext_rate');
  FQuantity := AddCreateField(TJanuaFieldType.jptFloat, 'quantity', 'quantity');
  FSecondhand := AddCreateField(TJanuaFieldType.jptBoolean, 'secondhand', 'secondhand');
  FDimensionId1 := AddCreateField(TJanuaFieldType.jptSmallint, 'dimension_id1', 'dimension_id1');
  FDimensionId2 := AddCreateField(TJanuaFieldType.jptSmallint, 'dimension_id2', 'dimension_id2');
  FDimensionsId3 := AddCreateField(TJanuaFieldType.jptSmallint, 'dimensions_id3', 'dimensions_id3');
  FCurrencyId := AddCreateField(TJanuaFieldType.jptSmallint, 'currency_id', 'currency_id');
  FExchangeRate := AddCreateField(TJanuaFieldType.jptFloat, 'exchange_rate', 'exchange_rate');
  FPosition := AddCreateField(TJanuaFieldType.jptSmallint, 'position', 'position');
  FDeliveryDate := AddCreateField(TJanuaFieldType.jptDateTime, 'delivery_date', 'delivery_date');
  FBarcode := AddCreateField(TJanuaFieldType.jptString, 'barcode', 'barcode');
  FDeliveredQty := AddCreateField(TJanuaFieldType.jptFloat, 'delivered_qty', 'delivered_qty');
  FSampleQty := AddCreateField(TJanuaFieldType.jptFloat, 'sample_qty', 'sample_qty');
  FIsSample := AddCreateField(TJanuaFieldType.jptBoolean, 'is_sample', 'is_sample');
  FRefCode := AddCreateField(TJanuaFieldType.jptString, 'ref_code', 'ref_code');
  FDocOriginId := AddCreateField(TJanuaFieldType.jptLargeint, 'doc_origin_id', 'doc_origin_id');
  FRowOriginId := AddCreateField(TJanuaFieldType.jptLargeint, 'row_origin_id', 'row_origin_id');
  FAnagramsRefId := AddCreateField(TJanuaFieldType.jptInteger, 'anagrams_ref_id', 'anagrams_ref_id');
  FCollectorPoints := AddCreateField(TJanuaFieldType.jptSmallint, 'collector_points', 'collector_points');
  FCollectorPointsForfait := AddCreateField(TJanuaFieldType.jptSmallint, 'collector_points_forfait',
    'collector_points_forfait');
  FPackageTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'package_type_id', 'package_type_id');
  FOrderedQty := AddCreateField(TJanuaFieldType.jptFloat, 'ordered_qty', 'ordered_qty');
  FPallets := AddCreateField(TJanuaFieldType.jptSmallint, 'pallets', 'pallets');
  FWeightOnDelivery := AddCreateField(TJanuaFieldType.jptFloat, 'weight_on_delivery', 'weight_on_delivery');
  FWeightOnOrder := AddCreateField(TJanuaFieldType.jptFloat, 'weight_on_order', 'weight_on_order');
  FWeightOnShipping := AddCreateField(TJanuaFieldType.jptFloat, 'weight_on_shipping', 'weight_on_shipping');
  FVolume := AddCreateField(TJanuaFieldType.jptFloat, 'volume', 'volume');
  FDocOriginNumber := AddCreateField(TJanuaFieldType.jptString, 'doc_origin_number', 'doc_origin_number');
  FDocOriginDate := AddCreateField(TJanuaFieldType.jptDate, 'doc_origin_date', 'doc_origin_date');
  FCustomsDocRef := AddCreateField(TJanuaFieldType.jptString, 'customs_doc_ref', 'customs_doc_ref');
  FCustomsDocTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'customs_doc_type_id', 'customs_doc_type_id');
  FPurchaseOrder := AddCreateField(TJanuaFieldType.jptString, 'purchase_order', 'purchase_order');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FUserInsert := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptInteger, 'user_update', 'user_update');
  FSizeWeight := AddCreateField(TJanuaFieldType.jptFloat, 'size_weight', 'size_weight');
  FSizeLength := AddCreateField(TJanuaFieldType.jptFloat, 'size_length', 'size_length');
  FSizeHeight := AddCreateField(TJanuaFieldType.jptFloat, 'size_height', 'size_height');
  FInventoryQty := AddCreateField(TJanuaFieldType.jptFloat, 'inventory_qty', 'inventory_qty');
  FInventoryWeight := AddCreateField(TJanuaFieldType.jptFloat, 'inventory_weight', 'inventory_weight');
  FCustomsDocCin := AddCreateField(TJanuaFieldType.jptString, 'customs_doc_cin', 'customs_doc_cin');
  FCustomsDocDate := AddCreateField(TJanuaFieldType.jptDate, 'customs_doc_date', 'customs_doc_date');
  FSupplierId := AddCreateField(TJanuaFieldType.jptInteger, 'supplier_id', 'supplier_id');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FDocHeadJguid := AddCreateField(TJanuaFieldType.jptGUID, 'doc_head_jguid', 'doc_head_jguid');
  FItemJguid := AddCreateField(TJanuaFieldType.jptGUID, 'item_jguid', 'item_jguid');
  FContainerStatus := AddCreateField(TJanuaFieldType.jptString, 'container_status', 'container_status');
  FRights := AddCreateField(TJanuaFieldType.jptFloat, 'rights', 'rights');
  FInvoiceNumber := AddCreateField(TJanuaFieldType.jptString, 'invoice_number', 'invoice_number');
  FCustomField1 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_1', 'custom_field_1');
  FCustomField2 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_2', 'custom_field_2');
  FInvoiceAmount := AddCreateField(TJanuaFieldType.jptFloat, 'invoice_amount', 'invoice_amount');
  FCustomField3 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_3', 'custom_field_3');
  FJsonNestedTable := AddCreateField(TJanuaFieldType.jptText, 'json_nested_table', 'json_nested_table');
  FInvoiceDate := AddCreateField(TJanuaFieldType.jptDate, 'invoice_date', 'invoice_date');
  FImportexport := AddCreateField(TJanuaFieldType.jptSmallint, 'importexport', 'importexport');
  FTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'type_id', 'type_id');
  FIsDescription := AddCreateField(TJanuaFieldType.jptBoolean, 'is_description', 'is_description');
  FExchangeRage := AddCreateField(TJanuaFieldType.jptFloat, 'exchange_rage', 'exchange_rage');
  FFreightQty := AddCreateField(TJanuaFieldType.jptFloat, 'freight_qty', 'freight_qty');
  FAmount := AddCreateField(TJanuaFieldType.jptCurrency, 'amount', 'amount');
  FVatCode := AddCreateField(TJanuaFieldType.jptString, 'vat_code', 'vat_code');
  FFreightRate := AddCreateField(TJanuaFieldType.jptInteger, 'freight_rate', 'freight_rate');
  FVatDescription := AddCreateField(TJanuaFieldType.jptString, 'vat_description', 'vat_description');
  FCurrencyCode := AddCreateField(TJanuaFieldType.jptString, 'currency_code', 'currency_code');
  FCurrencyDescription := AddCreateField(TJanuaFieldType.jptString, 'currency_description', 'currency_description');
  FFlgDescription := AddCreateField(TJanuaFieldType.jptBoolean, 'flg_description', 'flg_description');
  FSupplierName := AddCreateField(TJanuaFieldType.jptString, 'supplier_name', 'supplier_name');
end;

function TCustomRowView.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomRowView.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomRowView.GetDocId: IJanuaField;
begin
  Result := FDocId;
end;

procedure TCustomRowView.SetDocId(const Value: IJanuaField);
begin
  FDocId := Value;
end;

function TCustomRowView.GetItemId: IJanuaField;
begin
  Result := FItemId;
end;

procedure TCustomRowView.SetItemId(const Value: IJanuaField);
begin
  FItemId := Value;
end;

function TCustomRowView.GetRowDate: IJanuaField;
begin
  Result := FRowDate;
end;

procedure TCustomRowView.SetRowDate(const Value: IJanuaField);
begin
  FRowDate := Value;
end;

function TCustomRowView.GetInout: IJanuaField;
begin
  Result := FInout;
end;

procedure TCustomRowView.SetInout(const Value: IJanuaField);
begin
  FInout := Value;
end;

function TCustomRowView.GetModel: IJanuaField;
begin
  Result := FModel;
end;

procedure TCustomRowView.SetModel(const Value: IJanuaField);
begin
  FModel := Value;
end;

function TCustomRowView.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomRowView.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomRowView.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomRowView.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomRowView.GetPrice: IJanuaField;
begin
  Result := FPrice;
end;

procedure TCustomRowView.SetPrice(const Value: IJanuaField);
begin
  FPrice := Value;
end;

function TCustomRowView.GetVatId: IJanuaField;
begin
  Result := FVatId;
end;

procedure TCustomRowView.SetVatId(const Value: IJanuaField);
begin
  FVatId := Value;
end;

function TCustomRowView.GetVatRate: IJanuaField;
begin
  Result := FVatRate;
end;

procedure TCustomRowView.SetVatRate(const Value: IJanuaField);
begin
  FVatRate := Value;
end;

function TCustomRowView.GetDiscountRate: IJanuaField;
begin
  Result := FDiscountRate;
end;

procedure TCustomRowView.SetDiscountRate(const Value: IJanuaField);
begin
  FDiscountRate := Value;
end;

function TCustomRowView.GetDiscountCommRate: IJanuaField;
begin
  Result := FDiscountCommRate;
end;

procedure TCustomRowView.SetDiscountCommRate(const Value: IJanuaField);
begin
  FDiscountCommRate := Value;
end;

function TCustomRowView.GetDiscountExtRate: IJanuaField;
begin
  Result := FDiscountExtRate;
end;

procedure TCustomRowView.SetDiscountExtRate(const Value: IJanuaField);
begin
  FDiscountExtRate := Value;
end;

function TCustomRowView.GetQuantity: IJanuaField;
begin
  Result := FQuantity;
end;

procedure TCustomRowView.SetQuantity(const Value: IJanuaField);
begin
  FQuantity := Value;
end;

function TCustomRowView.GetSecondhand: IJanuaField;
begin
  Result := FSecondhand;
end;

procedure TCustomRowView.SetSecondhand(const Value: IJanuaField);
begin
  FSecondhand := Value;
end;

function TCustomRowView.GetDimensionId1: IJanuaField;
begin
  Result := FDimensionId1;
end;

procedure TCustomRowView.SetDimensionId1(const Value: IJanuaField);
begin
  FDimensionId1 := Value;
end;

function TCustomRowView.GetDimensionId2: IJanuaField;
begin
  Result := FDimensionId2;
end;

procedure TCustomRowView.SetDimensionId2(const Value: IJanuaField);
begin
  FDimensionId2 := Value;
end;

function TCustomRowView.GetDimensionsId3: IJanuaField;
begin
  Result := FDimensionsId3;
end;

procedure TCustomRowView.SetDimensionsId3(const Value: IJanuaField);
begin
  FDimensionsId3 := Value;
end;

function TCustomRowView.GetCurrencyId: IJanuaField;
begin
  Result := FCurrencyId;
end;

procedure TCustomRowView.SetCurrencyId(const Value: IJanuaField);
begin
  FCurrencyId := Value;
end;

function TCustomRowView.GetExchangeRate: IJanuaField;
begin
  Result := FExchangeRate;
end;

procedure TCustomRowView.SetExchangeRate(const Value: IJanuaField);
begin
  FExchangeRate := Value;
end;

function TCustomRowView.GetPosition: IJanuaField;
begin
  Result := FPosition;
end;

procedure TCustomRowView.SetPosition(const Value: IJanuaField);
begin
  FPosition := Value;
end;

function TCustomRowView.GetDeliveryDate: IJanuaField;
begin
  Result := FDeliveryDate;
end;

procedure TCustomRowView.SetDeliveryDate(const Value: IJanuaField);
begin
  FDeliveryDate := Value;
end;

function TCustomRowView.GetBarcode: IJanuaField;
begin
  Result := FBarcode;
end;

procedure TCustomRowView.SetBarcode(const Value: IJanuaField);
begin
  FBarcode := Value;
end;

function TCustomRowView.GetDeliveredQty: IJanuaField;
begin
  Result := FDeliveredQty;
end;

procedure TCustomRowView.SetDeliveredQty(const Value: IJanuaField);
begin
  FDeliveredQty := Value;
end;

function TCustomRowView.GetSampleQty: IJanuaField;
begin
  Result := FSampleQty;
end;

procedure TCustomRowView.SetSampleQty(const Value: IJanuaField);
begin
  FSampleQty := Value;
end;

function TCustomRowView.GetIsSample: IJanuaField;
begin
  Result := FIsSample;
end;

procedure TCustomRowView.SetIsSample(const Value: IJanuaField);
begin
  FIsSample := Value;
end;

function TCustomRowView.GetRefCode: IJanuaField;
begin
  Result := FRefCode;
end;

procedure TCustomRowView.SetRefCode(const Value: IJanuaField);
begin
  FRefCode := Value;
end;

function TCustomRowView.GetDocOriginId: IJanuaField;
begin
  Result := FDocOriginId;
end;

procedure TCustomRowView.SetDocOriginId(const Value: IJanuaField);
begin
  FDocOriginId := Value;
end;

function TCustomRowView.GetRowOriginId: IJanuaField;
begin
  Result := FRowOriginId;
end;

procedure TCustomRowView.SetRowOriginId(const Value: IJanuaField);
begin
  FRowOriginId := Value;
end;

function TCustomRowView.GetAnagramsRefId: IJanuaField;
begin
  Result := FAnagramsRefId;
end;

procedure TCustomRowView.SetAnagramsRefId(const Value: IJanuaField);
begin
  FAnagramsRefId := Value;
end;

function TCustomRowView.GetCollectorPoints: IJanuaField;
begin
  Result := FCollectorPoints;
end;

procedure TCustomRowView.SetCollectorPoints(const Value: IJanuaField);
begin
  FCollectorPoints := Value;
end;

function TCustomRowView.GetCollectorPointsForfait: IJanuaField;
begin
  Result := FCollectorPointsForfait;
end;

procedure TCustomRowView.SetCollectorPointsForfait(const Value: IJanuaField);
begin
  FCollectorPointsForfait := Value;
end;

function TCustomRowView.GetPackageTypeId: IJanuaField;
begin
  Result := FPackageTypeId;
end;

procedure TCustomRowView.SetPackageTypeId(const Value: IJanuaField);
begin
  FPackageTypeId := Value;
end;

function TCustomRowView.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomRowView.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomRowView.GetOrderedQty: IJanuaField;
begin
  Result := FOrderedQty;
end;

procedure TCustomRowView.SetOrderedQty(const Value: IJanuaField);
begin
  FOrderedQty := Value;
end;

function TCustomRowView.GetPallets: IJanuaField;
begin
  Result := FPallets;
end;

procedure TCustomRowView.SetPallets(const Value: IJanuaField);
begin
  FPallets := Value;
end;

function TCustomRowView.GetWeightOnDelivery: IJanuaField;
begin
  Result := FWeightOnDelivery;
end;

procedure TCustomRowView.SetWeightOnDelivery(const Value: IJanuaField);
begin
  FWeightOnDelivery := Value;
end;

function TCustomRowView.GetWeightOnOrder: IJanuaField;
begin
  Result := FWeightOnOrder;
end;

procedure TCustomRowView.SetWeightOnOrder(const Value: IJanuaField);
begin
  FWeightOnOrder := Value;
end;

function TCustomRowView.GetWeightOnShipping: IJanuaField;
begin
  Result := FWeightOnShipping;
end;

procedure TCustomRowView.SetWeightOnShipping(const Value: IJanuaField);
begin
  FWeightOnShipping := Value;
end;

function TCustomRowView.GetVolume: IJanuaField;
begin
  Result := FVolume;
end;

procedure TCustomRowView.SetVolume(const Value: IJanuaField);
begin
  FVolume := Value;
end;

function TCustomRowView.GetDocOriginNumber: IJanuaField;
begin
  Result := FDocOriginNumber;
end;

procedure TCustomRowView.SetDocOriginNumber(const Value: IJanuaField);
begin
  FDocOriginNumber := Value;
end;

function TCustomRowView.GetDocOriginDate: IJanuaField;
begin
  Result := FDocOriginDate;
end;

procedure TCustomRowView.SetDocOriginDate(const Value: IJanuaField);
begin
  FDocOriginDate := Value;
end;

function TCustomRowView.GetCustomsDocRef: IJanuaField;
begin
  Result := FCustomsDocRef;
end;

procedure TCustomRowView.SetCustomsDocRef(const Value: IJanuaField);
begin
  FCustomsDocRef := Value;
end;

function TCustomRowView.GetCustomsDocTypeId: IJanuaField;
begin
  Result := FCustomsDocTypeId;
end;

procedure TCustomRowView.SetCustomsDocTypeId(const Value: IJanuaField);
begin
  FCustomsDocTypeId := Value;
end;

function TCustomRowView.GetPurchaseOrder: IJanuaField;
begin
  Result := FPurchaseOrder;
end;

procedure TCustomRowView.SetPurchaseOrder(const Value: IJanuaField);
begin
  FPurchaseOrder := Value;
end;

function TCustomRowView.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomRowView.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomRowView.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomRowView.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomRowView.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomRowView.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomRowView.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TCustomRowView.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TCustomRowView.GetSizeWeight: IJanuaField;
begin
  Result := FSizeWeight;
end;

procedure TCustomRowView.SetSizeWeight(const Value: IJanuaField);
begin
  FSizeWeight := Value;
end;

function TCustomRowView.GetSizeLength: IJanuaField;
begin
  Result := FSizeLength;
end;

procedure TCustomRowView.SetSizeLength(const Value: IJanuaField);
begin
  FSizeLength := Value;
end;

function TCustomRowView.GetSizeHeight: IJanuaField;
begin
  Result := FSizeHeight;
end;

procedure TCustomRowView.SetSizeHeight(const Value: IJanuaField);
begin
  FSizeHeight := Value;
end;

function TCustomRowView.GetInventoryQty: IJanuaField;
begin
  Result := FInventoryQty;
end;

procedure TCustomRowView.SetInventoryQty(const Value: IJanuaField);
begin
  FInventoryQty := Value;
end;

function TCustomRowView.GetInventoryWeight: IJanuaField;
begin
  Result := FInventoryWeight;
end;

procedure TCustomRowView.SetInventoryWeight(const Value: IJanuaField);
begin
  FInventoryWeight := Value;
end;

function TCustomRowView.GetCustomsDocCin: IJanuaField;
begin
  Result := FCustomsDocCin;
end;

procedure TCustomRowView.SetCustomsDocCin(const Value: IJanuaField);
begin
  FCustomsDocCin := Value;
end;

function TCustomRowView.GetCustomsDocDate: IJanuaField;
begin
  Result := FCustomsDocDate;
end;

procedure TCustomRowView.SetCustomsDocDate(const Value: IJanuaField);
begin
  FCustomsDocDate := Value;
end;

function TCustomRowView.GetSupplierId: IJanuaField;
begin
  Result := FSupplierId;
end;

procedure TCustomRowView.SetSupplierId(const Value: IJanuaField);
begin
  FSupplierId := Value;
end;

function TCustomRowView.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomRowView.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomRowView.GetDocHeadJguid: IJanuaField;
begin
  Result := FDocHeadJguid;
end;

procedure TCustomRowView.SetDocHeadJguid(const Value: IJanuaField);
begin
  FDocHeadJguid := Value;
end;

function TCustomRowView.GetItemJguid: IJanuaField;
begin
  Result := FItemJguid;
end;

procedure TCustomRowView.SetItemJguid(const Value: IJanuaField);
begin
  FItemJguid := Value;
end;

function TCustomRowView.GetContainerStatus: IJanuaField;
begin
  Result := FContainerStatus;
end;

procedure TCustomRowView.SetContainerStatus(const Value: IJanuaField);
begin
  FContainerStatus := Value;
end;

function TCustomRowView.GetRights: IJanuaField;
begin
  Result := FRights;
end;

procedure TCustomRowView.SetRights(const Value: IJanuaField);
begin
  FRights := Value;
end;

function TCustomRowView.GetInvoiceNumber: IJanuaField;
begin
  Result := FInvoiceNumber;
end;

procedure TCustomRowView.SetInvoiceNumber(const Value: IJanuaField);
begin
  FInvoiceNumber := Value;
end;

function TCustomRowView.GetCustomField1: IJanuaField;
begin
  Result := FCustomField1;
end;

procedure TCustomRowView.SetCustomField1(const Value: IJanuaField);
begin
  FCustomField1 := Value;
end;

function TCustomRowView.GetCustomField2: IJanuaField;
begin
  Result := FCustomField2;
end;

procedure TCustomRowView.SetCustomField2(const Value: IJanuaField);
begin
  FCustomField2 := Value;
end;

function TCustomRowView.GetInvoiceAmount: IJanuaField;
begin
  Result := FInvoiceAmount;
end;

procedure TCustomRowView.SetInvoiceAmount(const Value: IJanuaField);
begin
  FInvoiceAmount := Value;
end;

function TCustomRowView.GetCustomField3: IJanuaField;
begin
  Result := FCustomField3;
end;

procedure TCustomRowView.SetCustomField3(const Value: IJanuaField);
begin
  FCustomField3 := Value;
end;

function TCustomRowView.GetJsonNestedTable: IJanuaField;
begin
  Result := FJsonNestedTable;
end;

procedure TCustomRowView.SetJsonNestedTable(const Value: IJanuaField);
begin
  FJsonNestedTable := Value;
end;

function TCustomRowView.GetInvoiceDate: IJanuaField;
begin
  Result := FInvoiceDate;
end;

procedure TCustomRowView.SetInvoiceDate(const Value: IJanuaField);
begin
  FInvoiceDate := Value;
end;

function TCustomRowView.GetImportexport: IJanuaField;
begin
  Result := FImportexport;
end;

procedure TCustomRowView.SetImportexport(const Value: IJanuaField);
begin
  FImportexport := Value;
end;

function TCustomRowView.GetTypeId: IJanuaField;
begin
  Result := FTypeId;
end;

procedure TCustomRowView.SetTypeId(const Value: IJanuaField);
begin
  FTypeId := Value;
end;

function TCustomRowView.GetIsDescription: IJanuaField;
begin
  Result := FIsDescription;
end;

procedure TCustomRowView.SetIsDescription(const Value: IJanuaField);
begin
  FIsDescription := Value;
end;

function TCustomRowView.GetExchangeRage: IJanuaField;
begin
  Result := FExchangeRage;
end;

procedure TCustomRowView.SetExchangeRage(const Value: IJanuaField);
begin
  FExchangeRage := Value;
end;

function TCustomRowView.GetFreightQty: IJanuaField;
begin
  Result := FFreightQty;
end;

procedure TCustomRowView.SetFreightQty(const Value: IJanuaField);
begin
  FFreightQty := Value;
end;

function TCustomRowView.GetAmount: IJanuaField;
begin
  Result := FAmount;
end;

procedure TCustomRowView.SetAmount(const Value: IJanuaField);
begin
  FAmount := Value;
end;

function TCustomRowView.GetVatCode: IJanuaField;
begin
  Result := FVatCode;
end;

procedure TCustomRowView.SetVatCode(const Value: IJanuaField);
begin
  FVatCode := Value;
end;

function TCustomRowView.GetFreightRate: IJanuaField;
begin
  Result := FFreightRate;
end;

function TCustomRowView.GetHazClass: IJanuaField;
begin
   Result := FHazClass
end;

procedure TCustomRowView.SetFreightRate(const Value: IJanuaField);
begin
  FFreightRate := Value;
end;

procedure TCustomRowView.SetHazClass(const Value: IJanuaField);
begin
  FHazClass := Value;
end;

function TCustomRowView.GetVatDescription: IJanuaField;
begin
  Result := FVatDescription;
end;

procedure TCustomRowView.SetVatDescription(const Value: IJanuaField);
begin
  FVatDescription := Value;
end;

function TCustomRowView.GetCurrencyCode: IJanuaField;
begin
  Result := FCurrencyCode;
end;

procedure TCustomRowView.SetCurrencyCode(const Value: IJanuaField);
begin
  FCurrencyCode := Value;
end;

function TCustomRowView.GetCurrencyDescription: IJanuaField;
begin
  Result := FCurrencyDescription;
end;

procedure TCustomRowView.SetCurrencyDescription(const Value: IJanuaField);
begin
  FCurrencyDescription := Value;
end;

function TCustomRowView.GetFlgDescription: IJanuaField;
begin
  Result := FFlgDescription;
end;

procedure TCustomRowView.SetFlgDescription(const Value: IJanuaField);
begin
  FFlgDescription := Value;
end;

function TCustomRowView.GetSupplierName: IJanuaField;
begin
  Result := FSupplierName;
end;

procedure TCustomRowView.SetSupplierName(const Value: IJanuaField);
begin
  FSupplierName := Value;
end;

{ TCustomRowViews }
constructor TCustomRowViews.Create;
begin
  inherited;
end;

function TCustomRowViews.GetId: IJanuaField;
begin
  Result := self.RowView.Id;
end;

procedure TCustomRowViews.SetId(const Value: IJanuaField);
begin
  self.RowView.Id := Value;
end;

function TCustomRowViews.GetDocId: IJanuaField;
begin
  Result := self.RowView.DocId;
end;

procedure TCustomRowViews.SetDocId(const Value: IJanuaField);
begin
  self.RowView.DocId := Value;
end;

function TCustomRowViews.GetItemId: IJanuaField;
begin
  Result := self.RowView.ItemId;
end;

procedure TCustomRowViews.SetItemId(const Value: IJanuaField);
begin
  self.RowView.ItemId := Value;
end;

function TCustomRowViews.GetRowDate: IJanuaField;
begin
  Result := self.RowView.RowDate;
end;

procedure TCustomRowViews.SetRowDate(const Value: IJanuaField);
begin
  self.RowView.RowDate := Value;
end;

function TCustomRowViews.GetInout: IJanuaField;
begin
  Result := self.RowView.Inout;
end;

procedure TCustomRowViews.SetInout(const Value: IJanuaField);
begin
  self.RowView.Inout := Value;
end;

function TCustomRowViews.GetModel: IJanuaField;
begin
  Result := self.RowView.Model;
end;

procedure TCustomRowViews.SetModel(const Value: IJanuaField);
begin
  self.RowView.Model := Value;
end;

function TCustomRowViews.GetCode: IJanuaField;
begin
  Result := self.RowView.Code;
end;

procedure TCustomRowViews.SetCode(const Value: IJanuaField);
begin
  self.RowView.Code := Value;
end;

function TCustomRowViews.GetDescription: IJanuaField;
begin
  Result := self.RowView.Description;
end;

procedure TCustomRowViews.SetDescription(const Value: IJanuaField);
begin
  self.RowView.Description := Value;
end;

function TCustomRowViews.GetPrice: IJanuaField;
begin
  Result := self.RowView.Price;
end;

procedure TCustomRowViews.SetPrice(const Value: IJanuaField);
begin
  self.RowView.Price := Value;
end;

function TCustomRowViews.GetVatId: IJanuaField;
begin
  Result := self.RowView.VatId;
end;

procedure TCustomRowViews.SetVatId(const Value: IJanuaField);
begin
  self.RowView.VatId := Value;
end;

function TCustomRowViews.GetVatRate: IJanuaField;
begin
  Result := self.RowView.VatRate;
end;

procedure TCustomRowViews.SetVatRate(const Value: IJanuaField);
begin
  self.RowView.VatRate := Value;
end;

function TCustomRowViews.GetDiscountRate: IJanuaField;
begin
  Result := self.RowView.DiscountRate;
end;

procedure TCustomRowViews.SetDiscountRate(const Value: IJanuaField);
begin
  self.RowView.DiscountRate := Value;
end;

function TCustomRowViews.GetDiscountCommRate: IJanuaField;
begin
  Result := self.RowView.DiscountCommRate;
end;

procedure TCustomRowViews.SetDiscountCommRate(const Value: IJanuaField);
begin
  self.RowView.DiscountCommRate := Value;
end;

function TCustomRowViews.GetDiscountExtRate: IJanuaField;
begin
  Result := self.RowView.DiscountExtRate;
end;

procedure TCustomRowViews.SetDiscountExtRate(const Value: IJanuaField);
begin
  self.RowView.DiscountExtRate := Value;
end;

function TCustomRowViews.GetQuantity: IJanuaField;
begin
  Result := self.RowView.Quantity;
end;

procedure TCustomRowViews.SetQuantity(const Value: IJanuaField);
begin
  self.RowView.Quantity := Value;
end;

function TCustomRowViews.GetSecondhand: IJanuaField;
begin
  Result := self.RowView.Secondhand;
end;

procedure TCustomRowViews.SetSecondhand(const Value: IJanuaField);
begin
  self.RowView.Secondhand := Value;
end;

function TCustomRowViews.GetDimensionId1: IJanuaField;
begin
  Result := self.RowView.DimensionId1;
end;

procedure TCustomRowViews.SetDimensionId1(const Value: IJanuaField);
begin
  self.RowView.DimensionId1 := Value;
end;

function TCustomRowViews.GetDimensionId2: IJanuaField;
begin
  Result := self.RowView.DimensionId2;
end;

procedure TCustomRowViews.SetDimensionId2(const Value: IJanuaField);
begin
  self.RowView.DimensionId2 := Value;
end;

function TCustomRowViews.GetDimensionsId3: IJanuaField;
begin
  Result := self.RowView.DimensionsId3;
end;

procedure TCustomRowViews.SetDimensionsId3(const Value: IJanuaField);
begin
  self.RowView.DimensionsId3 := Value;
end;

function TCustomRowViews.GetCurrencyId: IJanuaField;
begin
  Result := self.RowView.CurrencyId;
end;

procedure TCustomRowViews.SetCurrencyId(const Value: IJanuaField);
begin
  self.RowView.CurrencyId := Value;
end;

function TCustomRowViews.GetExchangeRate: IJanuaField;
begin
  Result := self.RowView.ExchangeRate;
end;

procedure TCustomRowViews.SetExchangeRate(const Value: IJanuaField);
begin
  self.RowView.ExchangeRate := Value;
end;

function TCustomRowViews.GetPosition: IJanuaField;
begin
  Result := self.RowView.Position;
end;

procedure TCustomRowViews.SetPosition(const Value: IJanuaField);
begin
  self.RowView.Position := Value;
end;

function TCustomRowViews.GetDeliveryDate: IJanuaField;
begin
  Result := self.RowView.DeliveryDate;
end;

procedure TCustomRowViews.SetDeliveryDate(const Value: IJanuaField);
begin
  self.RowView.DeliveryDate := Value;
end;

function TCustomRowViews.GetBarcode: IJanuaField;
begin
  Result := self.RowView.Barcode;
end;

procedure TCustomRowViews.SetBarcode(const Value: IJanuaField);
begin
  self.RowView.Barcode := Value;
end;

function TCustomRowViews.GetDeliveredQty: IJanuaField;
begin
  Result := self.RowView.DeliveredQty;
end;

procedure TCustomRowViews.SetDeliveredQty(const Value: IJanuaField);
begin
  self.RowView.DeliveredQty := Value;
end;

function TCustomRowViews.GetSampleQty: IJanuaField;
begin
  Result := self.RowView.SampleQty;
end;

procedure TCustomRowViews.SetSampleQty(const Value: IJanuaField);
begin
  self.RowView.SampleQty := Value;
end;

function TCustomRowViews.GetIsSample: IJanuaField;
begin
  Result := self.RowView.IsSample;
end;

procedure TCustomRowViews.SetIsSample(const Value: IJanuaField);
begin
  self.RowView.IsSample := Value;
end;

function TCustomRowViews.GetRefCode: IJanuaField;
begin
  Result := self.RowView.RefCode;
end;

procedure TCustomRowViews.SetRefCode(const Value: IJanuaField);
begin
  self.RowView.RefCode := Value;
end;

function TCustomRowViews.GetDocOriginId: IJanuaField;
begin
  Result := self.RowView.DocOriginId;
end;

procedure TCustomRowViews.SetDocOriginId(const Value: IJanuaField);
begin
  self.RowView.DocOriginId := Value;
end;

function TCustomRowViews.GetRowOriginId: IJanuaField;
begin
  Result := self.RowView.RowOriginId;
end;

procedure TCustomRowViews.SetRowOriginId(const Value: IJanuaField);
begin
  self.RowView.RowOriginId := Value;
end;

function TCustomRowViews.GetAnagramsRefId: IJanuaField;
begin
  Result := self.RowView.AnagramsRefId;
end;

procedure TCustomRowViews.SetAnagramsRefId(const Value: IJanuaField);
begin
  self.RowView.AnagramsRefId := Value;
end;

function TCustomRowViews.GetCollectorPoints: IJanuaField;
begin
  Result := self.RowView.CollectorPoints;
end;

procedure TCustomRowViews.SetCollectorPoints(const Value: IJanuaField);
begin
  self.RowView.CollectorPoints := Value;
end;

function TCustomRowViews.GetCollectorPointsForfait: IJanuaField;
begin
  Result := self.RowView.CollectorPointsForfait;
end;

procedure TCustomRowViews.SetCollectorPointsForfait(const Value: IJanuaField);
begin
  self.RowView.CollectorPointsForfait := Value;
end;

function TCustomRowViews.GetPackageTypeId: IJanuaField;
begin
  Result := self.RowView.PackageTypeId;
end;

procedure TCustomRowViews.SetPackageTypeId(const Value: IJanuaField);
begin
  self.RowView.PackageTypeId := Value;
end;

function TCustomRowViews.GetJguid: IJanuaField;
begin
  Result := self.RowView.Jguid;
end;

procedure TCustomRowViews.SetJguid(const Value: IJanuaField);
begin
  self.RowView.Jguid := Value;
end;

function TCustomRowViews.GetOrderedQty: IJanuaField;
begin
  Result := self.RowView.OrderedQty;
end;

procedure TCustomRowViews.SetOrderedQty(const Value: IJanuaField);
begin
  self.RowView.OrderedQty := Value;
end;

function TCustomRowViews.GetPallets: IJanuaField;
begin
  Result := self.RowView.Pallets;
end;

procedure TCustomRowViews.SetPallets(const Value: IJanuaField);
begin
  self.RowView.Pallets := Value;
end;

function TCustomRowViews.GetWeightOnDelivery: IJanuaField;
begin
  Result := self.RowView.WeightOnDelivery;
end;

procedure TCustomRowViews.SetWeightOnDelivery(const Value: IJanuaField);
begin
  self.RowView.WeightOnDelivery := Value;
end;

function TCustomRowViews.GetWeightOnOrder: IJanuaField;
begin
  Result := self.RowView.WeightOnOrder;
end;

procedure TCustomRowViews.SetWeightOnOrder(const Value: IJanuaField);
begin
  self.RowView.WeightOnOrder := Value;
end;

function TCustomRowViews.GetWeightOnShipping: IJanuaField;
begin
  Result := self.RowView.WeightOnShipping;
end;

procedure TCustomRowViews.SetWeightOnShipping(const Value: IJanuaField);
begin
  self.RowView.WeightOnShipping := Value;
end;

function TCustomRowViews.GetVolume: IJanuaField;
begin
  Result := self.RowView.Volume;
end;

procedure TCustomRowViews.SetVolume(const Value: IJanuaField);
begin
  self.RowView.Volume := Value;
end;

function TCustomRowViews.GetDocOriginNumber: IJanuaField;
begin
  Result := self.RowView.DocOriginNumber;
end;

procedure TCustomRowViews.SetDocOriginNumber(const Value: IJanuaField);
begin
  self.RowView.DocOriginNumber := Value;
end;

function TCustomRowViews.GetDocOriginDate: IJanuaField;
begin
  Result := self.RowView.DocOriginDate;
end;

procedure TCustomRowViews.SetDocOriginDate(const Value: IJanuaField);
begin
  self.RowView.DocOriginDate := Value;
end;

function TCustomRowViews.GetCustomsDocRef: IJanuaField;
begin
  Result := self.RowView.CustomsDocRef;
end;

procedure TCustomRowViews.SetCustomsDocRef(const Value: IJanuaField);
begin
  self.RowView.CustomsDocRef := Value;
end;

function TCustomRowViews.GetCustomsDocTypeId: IJanuaField;
begin
  Result := self.RowView.CustomsDocTypeId;
end;

procedure TCustomRowViews.SetCustomsDocTypeId(const Value: IJanuaField);
begin
  self.RowView.CustomsDocTypeId := Value;
end;

function TCustomRowViews.GetPurchaseOrder: IJanuaField;
begin
  Result := self.RowView.PurchaseOrder;
end;

procedure TCustomRowViews.SetPurchaseOrder(const Value: IJanuaField);
begin
  self.RowView.PurchaseOrder := Value;
end;

function TCustomRowViews.GetInsertDate: IJanuaField;
begin
  Result := self.RowView.InsertDate;
end;

procedure TCustomRowViews.SetInsertDate(const Value: IJanuaField);
begin
  self.RowView.InsertDate := Value;
end;

function TCustomRowViews.GetUpdateDate: IJanuaField;
begin
  Result := self.RowView.UpdateDate;
end;

procedure TCustomRowViews.SetUpdateDate(const Value: IJanuaField);
begin
  self.RowView.UpdateDate := Value;
end;

function TCustomRowViews.GetUserInsert: IJanuaField;
begin
  Result := self.RowView.UserInsert;
end;

procedure TCustomRowViews.SetUserInsert(const Value: IJanuaField);
begin
  self.RowView.UserInsert := Value;
end;

function TCustomRowViews.GetUserUpdate: IJanuaField;
begin
  Result := self.RowView.UserUpdate;
end;

procedure TCustomRowViews.SetUserUpdate(const Value: IJanuaField);
begin
  self.RowView.UserUpdate := Value;
end;

function TCustomRowViews.GetSizeWeight: IJanuaField;
begin
  Result := self.RowView.SizeWeight;
end;

procedure TCustomRowViews.SetSizeWeight(const Value: IJanuaField);
begin
  self.RowView.SizeWeight := Value;
end;

function TCustomRowViews.GetSizeLength: IJanuaField;
begin
  Result := self.RowView.SizeLength;
end;

procedure TCustomRowViews.SetSizeLength(const Value: IJanuaField);
begin
  self.RowView.SizeLength := Value;
end;

function TCustomRowViews.GetSizeHeight: IJanuaField;
begin
  Result := self.RowView.SizeHeight;
end;

procedure TCustomRowViews.SetSizeHeight(const Value: IJanuaField);
begin
  self.RowView.SizeHeight := Value;
end;

function TCustomRowViews.GetInventoryQty: IJanuaField;
begin
  Result := self.RowView.InventoryQty;
end;

procedure TCustomRowViews.SetInventoryQty(const Value: IJanuaField);
begin
  self.RowView.InventoryQty := Value;
end;

function TCustomRowViews.GetInventoryWeight: IJanuaField;
begin
  Result := self.RowView.InventoryWeight;
end;

procedure TCustomRowViews.SetInventoryWeight(const Value: IJanuaField);
begin
  self.RowView.InventoryWeight := Value;
end;

function TCustomRowViews.GetCustomsDocCin: IJanuaField;
begin
  Result := self.RowView.CustomsDocCin;
end;

procedure TCustomRowViews.SetCustomsDocCin(const Value: IJanuaField);
begin
  self.RowView.CustomsDocCin := Value;
end;

function TCustomRowViews.GetCustomsDocDate: IJanuaField;
begin
  Result := self.RowView.CustomsDocDate;
end;

procedure TCustomRowViews.SetCustomsDocDate(const Value: IJanuaField);
begin
  self.RowView.CustomsDocDate := Value;
end;

function TCustomRowViews.GetSupplierId: IJanuaField;
begin
  Result := self.RowView.SupplierId;
end;

procedure TCustomRowViews.SetSupplierId(const Value: IJanuaField);
begin
  self.RowView.SupplierId := Value;
end;


function TCustomRowViews.GetDbSchemaId: IJanuaField;
begin
  Result := self.RowView.DbSchemaId;
end;

procedure TCustomRowViews.SetDbSchemaId(const Value: IJanuaField);
begin
  self.RowView.DbSchemaId := Value;
end;

function TCustomRowViews.GetDocHeadJguid: IJanuaField;
begin
  Result := self.RowView.DocHeadJguid;
end;

procedure TCustomRowViews.SetDocHeadJguid(const Value: IJanuaField);
begin
  self.RowView.DocHeadJguid := Value;
end;

function TCustomRowViews.GetItemJguid: IJanuaField;
begin
  Result := self.RowView.ItemJguid;
end;

procedure TCustomRowViews.SetItemJguid(const Value: IJanuaField);
begin
  self.RowView.ItemJguid := Value;
end;

function TCustomRowViews.GetContainerStatus: IJanuaField;
begin
  Result := self.RowView.ContainerStatus;
end;

procedure TCustomRowViews.SetContainerStatus(const Value: IJanuaField);
begin
  self.RowView.ContainerStatus := Value;
end;

function TCustomRowViews.GetRights: IJanuaField;
begin
  Result := self.RowView.Rights;
end;

procedure TCustomRowViews.SetRights(const Value: IJanuaField);
begin
  self.RowView.Rights := Value;
end;

function TCustomRowViews.GetInvoiceNumber: IJanuaField;
begin
  Result := self.RowView.InvoiceNumber;
end;

procedure TCustomRowViews.SetInvoiceNumber(const Value: IJanuaField);
begin
  self.RowView.InvoiceNumber := Value;
end;

function TCustomRowViews.GetCustomField1: IJanuaField;
begin
  Result := self.RowView.CustomField1;
end;

procedure TCustomRowViews.SetCustomField1(const Value: IJanuaField);
begin
  self.RowView.CustomField1 := Value;
end;

function TCustomRowViews.GetCustomField2: IJanuaField;
begin
  Result := self.RowView.CustomField2;
end;

procedure TCustomRowViews.SetCustomField2(const Value: IJanuaField);
begin
  self.RowView.CustomField2 := Value;
end;

function TCustomRowViews.GetInvoiceAmount: IJanuaField;
begin
  Result := self.RowView.InvoiceAmount;
end;

procedure TCustomRowViews.SetInvoiceAmount(const Value: IJanuaField);
begin
  self.RowView.InvoiceAmount := Value;
end;

function TCustomRowViews.GetCustomField3: IJanuaField;
begin
  Result := self.RowView.CustomField3;
end;

procedure TCustomRowViews.SetCustomField3(const Value: IJanuaField);
begin
  self.RowView.CustomField3 := Value;
end;

function TCustomRowViews.GetJsonNestedTable: IJanuaField;
begin
  Result := self.RowView.JsonNestedTable;
end;

procedure TCustomRowViews.SetJsonNestedTable(const Value: IJanuaField);
begin
  self.RowView.JsonNestedTable := Value;
end;

function TCustomRowViews.GetInvoiceDate: IJanuaField;
begin
  Result := self.RowView.InvoiceDate;
end;

procedure TCustomRowViews.SetInvoiceDate(const Value: IJanuaField);
begin
  self.RowView.InvoiceDate := Value;
end;

function TCustomRowViews.GetImportexport: IJanuaField;
begin
  Result := self.RowView.Importexport;
end;

procedure TCustomRowViews.SetImportexport(const Value: IJanuaField);
begin
  self.RowView.Importexport := Value;
end;

function TCustomRowViews.GetTypeId: IJanuaField;
begin
  Result := self.RowView.TypeId;
end;

procedure TCustomRowViews.SetTypeId(const Value: IJanuaField);
begin
  self.RowView.TypeId := Value;
end;

function TCustomRowViews.GetIsDescription: IJanuaField;
begin
  Result := self.RowView.IsDescription;
end;

procedure TCustomRowViews.SetIsDescription(const Value: IJanuaField);
begin
  self.RowView.IsDescription := Value;
end;

function TCustomRowViews.GetExchangeRage: IJanuaField;
begin
  Result := self.RowView.ExchangeRage;
end;

procedure TCustomRowViews.SetExchangeRage(const Value: IJanuaField);
begin
  self.RowView.ExchangeRage := Value;
end;

function TCustomRowViews.GetFreightQty: IJanuaField;
begin
  Result := self.RowView.FreightQty;
end;

procedure TCustomRowViews.SetFreightQty(const Value: IJanuaField);
begin
  self.RowView.FreightQty := Value;
end;

function TCustomRowViews.GetAmount: IJanuaField;
begin
  Result := self.RowView.Amount;
end;

procedure TCustomRowViews.SetAmount(const Value: IJanuaField);
begin
  self.RowView.Amount := Value;
end;

function TCustomRowViews.GetVatCode: IJanuaField;
begin
  Result := self.RowView.VatCode;
end;

procedure TCustomRowViews.SetVatCode(const Value: IJanuaField);
begin
  self.RowView.VatCode := Value;
end;

function TCustomRowViews.GetFreightRate: IJanuaField;
begin
  Result := self.RowView.FreightRate;
end;

procedure TCustomRowViews.SetFreightRate(const Value: IJanuaField);
begin
  self.RowView.FreightRate := Value;
end;

function TCustomRowViews.GetVatDescription: IJanuaField;
begin
  Result := self.RowView.VatDescription;
end;

procedure TCustomRowViews.SetVatDescription(const Value: IJanuaField);
begin
  self.RowView.VatDescription := Value;
end;

function TCustomRowViews.GetCurrencyCode: IJanuaField;
begin
  Result := self.RowView.CurrencyCode;
end;

procedure TCustomRowViews.SetCurrencyCode(const Value: IJanuaField);
begin
  self.RowView.CurrencyCode := Value;
end;

function TCustomRowViews.GetCurrencyDescription: IJanuaField;
begin
  Result := self.RowView.CurrencyDescription;
end;

procedure TCustomRowViews.SetCurrencyDescription(const Value: IJanuaField);
begin
  self.RowView.CurrencyDescription := Value;
end;

function TCustomRowViews.GetFlgDescription: IJanuaField;
begin
  Result := self.RowView.FlgDescription;
end;

procedure TCustomRowViews.SetFlgDescription(const Value: IJanuaField);
begin
  self.RowView.FlgDescription := Value;
end;

function TCustomRowViews.GetSupplierName: IJanuaField;
begin
  Result := self.RowView.SupplierName;
end;

procedure TCustomRowViews.SetSupplierName(const Value: IJanuaField);
begin
  self.RowView.SupplierName := Value;
end;

function TCustomRowViews.GetRowView: IDocRowCustomView;
begin
  Result := self.FRecord as IDocRowCustomView;
end;

procedure TCustomRowViews.SetRowView(const Value: IDocRowCustomView);
begin
  self.FRecord := Value;
end;

{ TRowViewFactory }

class function TRowViewFactory.CreateRecord(const aKey: string): IDocRowCustomView;
begin
  Result := TCustomRowView.Create;
end;

class function TRowViewFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocRowCustomViews;
begin
  Result := TCustomRowViews.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
