unit JOrm.Documents.Rows.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.Rows.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomDocRow = class(TJanuaRecord, ICustomDocRow)
  private
    FId: IJanuaField;
    FDocId: IJanuaField;
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

  end;

  TCustomDocRows = class(TJanuaRecordSet, IJanuaRecordSet, ICustomDocRows)
  strict protected
    function GetCustomDocRow: ICustomDocRow;
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
  end;

implementation

// ------------------------------------------ Impl Trow -------------------------------

{ TCustomDocRow }

constructor TCustomDocRow.Create;
begin
  inherited;
  FPrefix := 'drws';
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FDocId := AddCreateField(TJanuaFieldType.jptLargeint, 'doc_id', 'doc_id');
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
  // Campo non Gestitojguid Type= ftGuid
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
  FDocOriginNumber := AddCreateField(TJanuaFieldType.jptString, 'doc_origin__number', 'doc_origin__number');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  // Campo non Gestitodoc_head_jguid Type= ftGuid
  // Campo non Gestitoitem_jguid Type= ftGuid
  FContainerStatus := AddCreateField(TJanuaFieldType.jptString, 'container_status', 'container_status');
  FRights := AddCreateField(TJanuaFieldType.jptCurrency, 'rights', 'rights');
  FInvoiceNumber := AddCreateField(TJanuaFieldType.jptString, 'invoice_number', 'invoice_number');
  FCustomField1 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_1', 'custom_field_1');
  FCustomField2 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_2', 'custom_field_2');
  FInvoiceAmount := AddCreateField(TJanuaFieldType.jptCurrency, 'invoice_amount', 'invoice_amount');
  FCustomField3 := AddCreateField(TJanuaFieldType.jptString, 'custom_field_3', 'custom_field_3');
  // Campo non Gestitojson_nested_table Type= ftWideMemo
  FInvoiceDate := AddCreateField(TJanuaFieldType.jptDate, 'invoice_date', 'invoice_date');
  FImportexport := AddCreateField(TJanuaFieldType.jptSmallint, 'importexport', 'importexport');
  FTypeId := AddCreateField(TJanuaFieldType.jptSmallint, 'type_id', 'type_id');
  FIsDescription := AddCreateField(TJanuaFieldType.jptBoolean, 'is_description', 'is_description');
  FExchangeRage := AddCreateField(TJanuaFieldType.jptCurrency, 'exchange_rage', 'exchange_rage');
  FFreightQty := AddCreateField(TJanuaFieldType.jptFloat, 'freight_qty', 'freight_qty');
  FAmount := AddCreateField(TJanuaFieldType.jptCurrency, 'amount', 'amount');
  FVatCode := AddCreateField(TJanuaFieldType.jptString, 'vat_code', 'vat_code');
  FFreightRate := AddCreateField(TJanuaFieldType.jptInteger, 'freight_rate', 'freight_rate');
  FVatDescription := AddCreateField(TJanuaFieldType.jptString, 'vat_description', 'vat_description');
  FCurrencyCode := AddCreateField(TJanuaFieldType.jptString, 'currency_code', 'currency_code');
  FCurrencyDescription := AddCreateField(TJanuaFieldType.jptString, 'currency_description', 'currency_description');
  FFlgDescription := AddCreateField(TJanuaFieldType.jptBoolean, 'flg_description', 'flg_description');
end;

function TCustomDocRow.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomDocRow.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomDocRow.GetDocId: IJanuaField;
begin
  Result := FDocId;
end;

procedure TCustomDocRow.SetDocId(const Value: IJanuaField);
begin
  FDocId := Value;
end;

function TCustomDocRow.GetItemId: IJanuaField;
begin
  Result := FItemId;
end;

procedure TCustomDocRow.SetItemId(const Value: IJanuaField);
begin
  FItemId := Value;
end;

function TCustomDocRow.GetRowDate: IJanuaField;
begin
  Result := FRowDate;
end;

procedure TCustomDocRow.SetRowDate(const Value: IJanuaField);
begin
  FRowDate := Value;
end;

function TCustomDocRow.GetInout: IJanuaField;
begin
  Result := FInout;
end;

procedure TCustomDocRow.SetInout(const Value: IJanuaField);
begin
  FInout := Value;
end;

function TCustomDocRow.GetModel: IJanuaField;
begin
  Result := FModel;
end;

procedure TCustomDocRow.SetModel(const Value: IJanuaField);
begin
  FModel := Value;
end;

function TCustomDocRow.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomDocRow.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomDocRow.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomDocRow.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomDocRow.GetPrice: IJanuaField;
begin
  Result := FPrice;
end;

procedure TCustomDocRow.SetPrice(const Value: IJanuaField);
begin
  FPrice := Value;
end;

function TCustomDocRow.GetVatId: IJanuaField;
begin
  Result := FVatId;
end;

procedure TCustomDocRow.SetVatId(const Value: IJanuaField);
begin
  FVatId := Value;
end;

function TCustomDocRow.GetVatRate: IJanuaField;
begin
  Result := FVatRate;
end;

procedure TCustomDocRow.SetVatRate(const Value: IJanuaField);
begin
  FVatRate := Value;
end;

function TCustomDocRow.GetDiscountRate: IJanuaField;
begin
  Result := FDiscountRate;
end;

procedure TCustomDocRow.SetDiscountRate(const Value: IJanuaField);
begin
  FDiscountRate := Value;
end;

function TCustomDocRow.GetDiscountCommRate: IJanuaField;
begin
  Result := FDiscountCommRate;
end;

procedure TCustomDocRow.SetDiscountCommRate(const Value: IJanuaField);
begin
  FDiscountCommRate := Value;
end;

function TCustomDocRow.GetDiscountExtRate: IJanuaField;
begin
  Result := FDiscountExtRate;
end;

procedure TCustomDocRow.SetDiscountExtRate(const Value: IJanuaField);
begin
  FDiscountExtRate := Value;
end;

function TCustomDocRow.GetQuantity: IJanuaField;
begin
  Result := FQuantity;
end;

procedure TCustomDocRow.SetQuantity(const Value: IJanuaField);
begin
  FQuantity := Value;
end;

function TCustomDocRow.GetSecondhand: IJanuaField;
begin
  Result := FSecondhand;
end;

procedure TCustomDocRow.SetSecondhand(const Value: IJanuaField);
begin
  FSecondhand := Value;
end;

function TCustomDocRow.GetDimensionId1: IJanuaField;
begin
  Result := FDimensionId1;
end;

procedure TCustomDocRow.SetDimensionId1(const Value: IJanuaField);
begin
  FDimensionId1 := Value;
end;

function TCustomDocRow.GetDimensionId2: IJanuaField;
begin
  Result := FDimensionId2;
end;

procedure TCustomDocRow.SetDimensionId2(const Value: IJanuaField);
begin
  FDimensionId2 := Value;
end;

function TCustomDocRow.GetDimensionsId3: IJanuaField;
begin
  Result := FDimensionsId3;
end;

procedure TCustomDocRow.SetDimensionsId3(const Value: IJanuaField);
begin
  FDimensionsId3 := Value;
end;

function TCustomDocRow.GetCurrencyId: IJanuaField;
begin
  Result := FCurrencyId;
end;

procedure TCustomDocRow.SetCurrencyId(const Value: IJanuaField);
begin
  FCurrencyId := Value;
end;

function TCustomDocRow.GetExchangeRate: IJanuaField;
begin
  Result := FExchangeRate;
end;

procedure TCustomDocRow.SetExchangeRate(const Value: IJanuaField);
begin
  FExchangeRate := Value;
end;

function TCustomDocRow.GetPosition: IJanuaField;
begin
  Result := FPosition;
end;

procedure TCustomDocRow.SetPosition(const Value: IJanuaField);
begin
  FPosition := Value;
end;

function TCustomDocRow.GetDeliveryDate: IJanuaField;
begin
  Result := FDeliveryDate;
end;

procedure TCustomDocRow.SetDeliveryDate(const Value: IJanuaField);
begin
  FDeliveryDate := Value;
end;

function TCustomDocRow.GetBarcode: IJanuaField;
begin
  Result := FBarcode;
end;

procedure TCustomDocRow.SetBarcode(const Value: IJanuaField);
begin
  FBarcode := Value;
end;

function TCustomDocRow.GetDeliveredQty: IJanuaField;
begin
  Result := FDeliveredQty;
end;

procedure TCustomDocRow.SetDeliveredQty(const Value: IJanuaField);
begin
  FDeliveredQty := Value;
end;

function TCustomDocRow.GetSampleQty: IJanuaField;
begin
  Result := FSampleQty;
end;

procedure TCustomDocRow.SetSampleQty(const Value: IJanuaField);
begin
  FSampleQty := Value;
end;

function TCustomDocRow.GetIsSample: IJanuaField;
begin
  Result := FIsSample;
end;

procedure TCustomDocRow.SetIsSample(const Value: IJanuaField);
begin
  FIsSample := Value;
end;

function TCustomDocRow.GetRefCode: IJanuaField;
begin
  Result := FRefCode;
end;

procedure TCustomDocRow.SetRefCode(const Value: IJanuaField);
begin
  FRefCode := Value;
end;

function TCustomDocRow.GetDocOriginId: IJanuaField;
begin
  Result := FDocOriginId;
end;

procedure TCustomDocRow.SetDocOriginId(const Value: IJanuaField);
begin
  FDocOriginId := Value;
end;

function TCustomDocRow.GetRowOriginId: IJanuaField;
begin
  Result := FRowOriginId;
end;

procedure TCustomDocRow.SetRowOriginId(const Value: IJanuaField);
begin
  FRowOriginId := Value;
end;

function TCustomDocRow.GetAnagramsRefId: IJanuaField;
begin
  Result := FAnagramsRefId;
end;

procedure TCustomDocRow.SetAnagramsRefId(const Value: IJanuaField);
begin
  FAnagramsRefId := Value;
end;

function TCustomDocRow.GetCollectorPoints: IJanuaField;
begin
  Result := FCollectorPoints;
end;

procedure TCustomDocRow.SetCollectorPoints(const Value: IJanuaField);
begin
  FCollectorPoints := Value;
end;

function TCustomDocRow.GetCollectorPointsForfait: IJanuaField;
begin
  Result := FCollectorPointsForfait;
end;

procedure TCustomDocRow.SetCollectorPointsForfait(const Value: IJanuaField);
begin
  FCollectorPointsForfait := Value;
end;

function TCustomDocRow.GetPackageTypeId: IJanuaField;
begin
  Result := FPackageTypeId;
end;

procedure TCustomDocRow.SetPackageTypeId(const Value: IJanuaField);
begin
  FPackageTypeId := Value;
end;

function TCustomDocRow.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomDocRow.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomDocRow.GetOrderedQty: IJanuaField;
begin
  Result := FOrderedQty;
end;

procedure TCustomDocRow.SetOrderedQty(const Value: IJanuaField);
begin
  FOrderedQty := Value;
end;

function TCustomDocRow.GetPallets: IJanuaField;
begin
  Result := FPallets;
end;

procedure TCustomDocRow.SetPallets(const Value: IJanuaField);
begin
  FPallets := Value;
end;

function TCustomDocRow.GetWeightOnDelivery: IJanuaField;
begin
  Result := FWeightOnDelivery;
end;

procedure TCustomDocRow.SetWeightOnDelivery(const Value: IJanuaField);
begin
  FWeightOnDelivery := Value;
end;

function TCustomDocRow.GetWeightOnOrder: IJanuaField;
begin
  Result := FWeightOnOrder;
end;

procedure TCustomDocRow.SetWeightOnOrder(const Value: IJanuaField);
begin
  FWeightOnOrder := Value;
end;

function TCustomDocRow.GetWeightOnShipping: IJanuaField;
begin
  Result := FWeightOnShipping;
end;

procedure TCustomDocRow.SetWeightOnShipping(const Value: IJanuaField);
begin
  FWeightOnShipping := Value;
end;

function TCustomDocRow.GetVolume: IJanuaField;
begin
  Result := FVolume;
end;

procedure TCustomDocRow.SetVolume(const Value: IJanuaField);
begin
  FVolume := Value;
end;

function TCustomDocRow.GetDocOriginNumber: IJanuaField;
begin
  Result := FDocOriginNumber;
end;

procedure TCustomDocRow.SetDocOriginNumber(const Value: IJanuaField);
begin
  FDocOriginNumber := Value;
end;

function TCustomDocRow.GetDocOriginDate: IJanuaField;
begin
  Result := FDocOriginDate;
end;

procedure TCustomDocRow.SetDocOriginDate(const Value: IJanuaField);
begin
  FDocOriginDate := Value;
end;

function TCustomDocRow.GetCustomsDocRef: IJanuaField;
begin
  Result := FCustomsDocRef;
end;

procedure TCustomDocRow.SetCustomsDocRef(const Value: IJanuaField);
begin
  FCustomsDocRef := Value;
end;

function TCustomDocRow.GetCustomsDocTypeId: IJanuaField;
begin
  Result := FCustomsDocTypeId;
end;

procedure TCustomDocRow.SetCustomsDocTypeId(const Value: IJanuaField);
begin
  FCustomsDocTypeId := Value;
end;

function TCustomDocRow.GetPurchaseOrder: IJanuaField;
begin
  Result := FPurchaseOrder;
end;

procedure TCustomDocRow.SetPurchaseOrder(const Value: IJanuaField);
begin
  FPurchaseOrder := Value;
end;

function TCustomDocRow.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomDocRow.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomDocRow.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomDocRow.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomDocRow.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomDocRow.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomDocRow.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TCustomDocRow.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TCustomDocRow.GetSizeWeight: IJanuaField;
begin
  Result := FSizeWeight;
end;

procedure TCustomDocRow.SetSizeWeight(const Value: IJanuaField);
begin
  FSizeWeight := Value;
end;

function TCustomDocRow.GetSizeLength: IJanuaField;
begin
  Result := FSizeLength;
end;

procedure TCustomDocRow.SetSizeLength(const Value: IJanuaField);
begin
  FSizeLength := Value;
end;

function TCustomDocRow.GetSizeHeight: IJanuaField;
begin
  Result := FSizeHeight;
end;

procedure TCustomDocRow.SetSizeHeight(const Value: IJanuaField);
begin
  FSizeHeight := Value;
end;

function TCustomDocRow.GetInventoryQty: IJanuaField;
begin
  Result := FInventoryQty;
end;

procedure TCustomDocRow.SetInventoryQty(const Value: IJanuaField);
begin
  FInventoryQty := Value;
end;

function TCustomDocRow.GetInventoryWeight: IJanuaField;
begin
  Result := FInventoryWeight;
end;

procedure TCustomDocRow.SetInventoryWeight(const Value: IJanuaField);
begin
  FInventoryWeight := Value;
end;

function TCustomDocRow.GetCustomsDocCin: IJanuaField;
begin
  Result := FCustomsDocCin;
end;

procedure TCustomDocRow.SetCustomsDocCin(const Value: IJanuaField);
begin
  FCustomsDocCin := Value;
end;

function TCustomDocRow.GetCustomsDocDate: IJanuaField;
begin
  Result := FCustomsDocDate;
end;

procedure TCustomDocRow.SetCustomsDocDate(const Value: IJanuaField);
begin
  FCustomsDocDate := Value;
end;

function TCustomDocRow.GetSupplierId: IJanuaField;
begin
  Result := FSupplierId;
end;

procedure TCustomDocRow.SetSupplierId(const Value: IJanuaField);
begin
  FSupplierId := Value;
end;

function TCustomDocRow.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomDocRow.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomDocRow.GetDocHeadJguid: IJanuaField;
begin
  Result := FDocHeadJguid;
end;

procedure TCustomDocRow.SetDocHeadJguid(const Value: IJanuaField);
begin
  FDocHeadJguid := Value;
end;

function TCustomDocRow.GetItemJguid: IJanuaField;
begin
  Result := FItemJguid;
end;

procedure TCustomDocRow.SetItemJguid(const Value: IJanuaField);
begin
  FItemJguid := Value;
end;

function TCustomDocRow.GetContainerStatus: IJanuaField;
begin
  Result := FContainerStatus;
end;

procedure TCustomDocRow.SetContainerStatus(const Value: IJanuaField);
begin
  FContainerStatus := Value;
end;

function TCustomDocRow.GetRights: IJanuaField;
begin
  Result := FRights;
end;

procedure TCustomDocRow.SetRights(const Value: IJanuaField);
begin
  FRights := Value;
end;

function TCustomDocRow.GetInvoiceNumber: IJanuaField;
begin
  Result := FInvoiceNumber;
end;

procedure TCustomDocRow.SetInvoiceNumber(const Value: IJanuaField);
begin
  FInvoiceNumber := Value;
end;

function TCustomDocRow.GetCustomField1: IJanuaField;
begin
  Result := FCustomField1;
end;

procedure TCustomDocRow.SetCustomField1(const Value: IJanuaField);
begin
  FCustomField1 := Value;
end;

function TCustomDocRow.GetCustomField2: IJanuaField;
begin
  Result := FCustomField2;
end;

procedure TCustomDocRow.SetCustomField2(const Value: IJanuaField);
begin
  FCustomField2 := Value;
end;

function TCustomDocRow.GetInvoiceAmount: IJanuaField;
begin
  Result := FInvoiceAmount;
end;

procedure TCustomDocRow.SetInvoiceAmount(const Value: IJanuaField);
begin
  FInvoiceAmount := Value;
end;

function TCustomDocRow.GetCustomField3: IJanuaField;
begin
  Result := FCustomField3;
end;

procedure TCustomDocRow.SetCustomField3(const Value: IJanuaField);
begin
  FCustomField3 := Value;
end;

function TCustomDocRow.GetJsonNestedTable: IJanuaField;
begin
  Result := FJsonNestedTable;
end;

procedure TCustomDocRow.SetJsonNestedTable(const Value: IJanuaField);
begin
  FJsonNestedTable := Value;
end;

function TCustomDocRow.GetInvoiceDate: IJanuaField;
begin
  Result := FInvoiceDate;
end;

procedure TCustomDocRow.SetInvoiceDate(const Value: IJanuaField);
begin
  FInvoiceDate := Value;
end;

function TCustomDocRow.GetImportexport: IJanuaField;
begin
  Result := FImportexport;
end;

procedure TCustomDocRow.SetImportexport(const Value: IJanuaField);
begin
  FImportexport := Value;
end;

function TCustomDocRow.GetTypeId: IJanuaField;
begin
  Result := FTypeId;
end;

procedure TCustomDocRow.SetTypeId(const Value: IJanuaField);
begin
  FTypeId := Value;
end;

function TCustomDocRow.GetIsDescription: IJanuaField;
begin
  Result := FIsDescription;
end;

procedure TCustomDocRow.SetIsDescription(const Value: IJanuaField);
begin
  FIsDescription := Value;
end;

function TCustomDocRow.GetExchangeRage: IJanuaField;
begin
  Result := FExchangeRage;
end;

procedure TCustomDocRow.SetExchangeRage(const Value: IJanuaField);
begin
  FExchangeRage := Value;
end;

function TCustomDocRow.GetFreightQty: IJanuaField;
begin
  Result := FFreightQty;
end;

procedure TCustomDocRow.SetFreightQty(const Value: IJanuaField);
begin
  FFreightQty := Value;
end;

function TCustomDocRow.GetAmount: IJanuaField;
begin
  Result := FAmount;
end;

procedure TCustomDocRow.SetAmount(const Value: IJanuaField);
begin
  FAmount := Value;
end;

function TCustomDocRow.GetVatCode: IJanuaField;
begin
  Result := FVatCode;
end;

procedure TCustomDocRow.SetVatCode(const Value: IJanuaField);
begin
  FVatCode := Value;
end;

function TCustomDocRow.GetFreightRate: IJanuaField;
begin
  Result := FFreightRate;
end;

procedure TCustomDocRow.SetFreightRate(const Value: IJanuaField);
begin
  FFreightRate := Value;
end;

function TCustomDocRow.GetVatDescription: IJanuaField;
begin
  Result := FVatDescription;
end;

procedure TCustomDocRow.SetVatDescription(const Value: IJanuaField);
begin
  FVatDescription := Value;
end;

function TCustomDocRow.GetCurrencyCode: IJanuaField;
begin
  Result := FCurrencyCode;
end;

procedure TCustomDocRow.SetCurrencyCode(const Value: IJanuaField);
begin
  FCurrencyCode := Value;
end;

function TCustomDocRow.GetCurrencyDescription: IJanuaField;
begin
  Result := FCurrencyDescription;
end;

procedure TCustomDocRow.SetCurrencyDescription(const Value: IJanuaField);
begin
  FCurrencyDescription := Value;
end;

function TCustomDocRow.GetFlgDescription: IJanuaField;
begin
  Result := FFlgDescription;
end;

procedure TCustomDocRow.SetFlgDescription(const Value: IJanuaField);
begin
  FFlgDescription := Value;
end;

{ TCustomDocRows }
constructor TCustomDocRows.Create;
begin
  inherited;
end;

function TCustomDocRows.GetId: IJanuaField;
begin
  Result := self.GetCustomDocRow.Id;
end;

procedure TCustomDocRows.SetId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Id := Value;
end;

function TCustomDocRows.GetDocId: IJanuaField;
begin
  Result := self.GetCustomDocRow.DocId;
end;

procedure TCustomDocRows.SetDocId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DocId := Value;
end;

function TCustomDocRows.GetItemId: IJanuaField;
begin
  Result := self.GetCustomDocRow.ItemId;
end;

procedure TCustomDocRows.SetItemId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.ItemId := Value;
end;

function TCustomDocRows.GetRowDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.RowDate;
end;

procedure TCustomDocRows.SetRowDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.RowDate := Value;
end;

function TCustomDocRows.GetInout: IJanuaField;
begin
  Result := self.GetCustomDocRow.Inout;
end;

procedure TCustomDocRows.SetInout(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Inout := Value;
end;

function TCustomDocRows.GetModel: IJanuaField;
begin
  Result := self.GetCustomDocRow.Model;
end;

procedure TCustomDocRows.SetModel(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Model := Value;
end;

function TCustomDocRows.GetCode: IJanuaField;
begin
  Result := self.GetCustomDocRow.Code;
end;

procedure TCustomDocRows.SetCode(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Code := Value;
end;

function TCustomDocRows.GetDescription: IJanuaField;
begin
  Result := self.GetCustomDocRow.Description;
end;

procedure TCustomDocRows.SetDescription(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Description := Value;
end;

function TCustomDocRows.GetPrice: IJanuaField;
begin
  Result := self.GetCustomDocRow.Price;
end;

procedure TCustomDocRows.SetPrice(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Price := Value;
end;

function TCustomDocRows.GetVatId: IJanuaField;
begin
  Result := self.GetCustomDocRow.VatId;
end;

procedure TCustomDocRows.SetVatId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.VatId := Value;
end;

function TCustomDocRows.GetVatRate: IJanuaField;
begin
  Result := self.GetCustomDocRow.VatRate;
end;

procedure TCustomDocRows.SetVatRate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.VatRate := Value;
end;

function TCustomDocRows.GetDiscountRate: IJanuaField;
begin
  Result := self.GetCustomDocRow.DiscountRate;
end;

procedure TCustomDocRows.SetDiscountRate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DiscountRate := Value;
end;

function TCustomDocRows.GetDiscountCommRate: IJanuaField;
begin
  Result := self.GetCustomDocRow.DiscountCommRate;
end;

procedure TCustomDocRows.SetDiscountCommRate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DiscountCommRate := Value;
end;

function TCustomDocRows.GetDiscountExtRate: IJanuaField;
begin
  Result := self.GetCustomDocRow.DiscountExtRate;
end;

procedure TCustomDocRows.SetDiscountExtRate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DiscountExtRate := Value;
end;

function TCustomDocRows.GetQuantity: IJanuaField;
begin
  Result := self.GetCustomDocRow.Quantity;
end;

procedure TCustomDocRows.SetQuantity(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Quantity := Value;
end;

function TCustomDocRows.GetSecondhand: IJanuaField;
begin
  Result := self.GetCustomDocRow.Secondhand;
end;

procedure TCustomDocRows.SetSecondhand(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Secondhand := Value;
end;

function TCustomDocRows.GetDimensionId1: IJanuaField;
begin
  Result := self.GetCustomDocRow.DimensionId1;
end;

procedure TCustomDocRows.SetDimensionId1(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DimensionId1 := Value;
end;

function TCustomDocRows.GetDimensionId2: IJanuaField;
begin
  Result := self.GetCustomDocRow.DimensionId2;
end;

procedure TCustomDocRows.SetDimensionId2(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DimensionId2 := Value;
end;

function TCustomDocRows.GetDimensionsId3: IJanuaField;
begin
  Result := self.GetCustomDocRow.DimensionsId3;
end;

procedure TCustomDocRows.SetDimensionsId3(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DimensionsId3 := Value;
end;

function TCustomDocRows.GetCurrencyId: IJanuaField;
begin
  Result := self.GetCustomDocRow.CurrencyId;
end;

procedure TCustomDocRows.SetCurrencyId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CurrencyId := Value;
end;

function TCustomDocRows.GetExchangeRate: IJanuaField;
begin
  Result := self.GetCustomDocRow.ExchangeRate;
end;

procedure TCustomDocRows.SetExchangeRate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.ExchangeRate := Value;
end;

function TCustomDocRows.GetPosition: IJanuaField;
begin
  Result := self.GetCustomDocRow.Position;
end;

procedure TCustomDocRows.SetPosition(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Position := Value;
end;

function TCustomDocRows.GetDeliveryDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.DeliveryDate;
end;

procedure TCustomDocRows.SetDeliveryDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DeliveryDate := Value;
end;

function TCustomDocRows.GetBarcode: IJanuaField;
begin
  Result := self.GetCustomDocRow.Barcode;
end;

procedure TCustomDocRows.SetBarcode(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Barcode := Value;
end;

function TCustomDocRows.GetDeliveredQty: IJanuaField;
begin
  Result := self.GetCustomDocRow.DeliveredQty;
end;

procedure TCustomDocRows.SetDeliveredQty(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DeliveredQty := Value;
end;

function TCustomDocRows.GetSampleQty: IJanuaField;
begin
  Result := self.GetCustomDocRow.SampleQty;
end;

procedure TCustomDocRows.SetSampleQty(const Value: IJanuaField);
begin
  self.GetCustomDocRow.SampleQty := Value;
end;

function TCustomDocRows.GetIsSample: IJanuaField;
begin
  Result := self.GetCustomDocRow.IsSample;
end;

procedure TCustomDocRows.SetIsSample(const Value: IJanuaField);
begin
  self.GetCustomDocRow.IsSample := Value;
end;

function TCustomDocRows.GetRefCode: IJanuaField;
begin
  Result := self.GetCustomDocRow.RefCode;
end;

procedure TCustomDocRows.SetRefCode(const Value: IJanuaField);
begin
  self.GetCustomDocRow.RefCode := Value;
end;

function TCustomDocRows.GetDocOriginId: IJanuaField;
begin
  Result := self.GetCustomDocRow.DocOriginId;
end;

procedure TCustomDocRows.SetDocOriginId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DocOriginId := Value;
end;

function TCustomDocRows.GetRowOriginId: IJanuaField;
begin
  Result := self.GetCustomDocRow.RowOriginId;
end;

procedure TCustomDocRows.SetRowOriginId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.RowOriginId := Value;
end;

function TCustomDocRows.GetAnagramsRefId: IJanuaField;
begin
  Result := self.GetCustomDocRow.AnagramsRefId;
end;

procedure TCustomDocRows.SetAnagramsRefId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.AnagramsRefId := Value;
end;

function TCustomDocRows.GetCollectorPoints: IJanuaField;
begin
  Result := self.GetCustomDocRow.CollectorPoints;
end;

procedure TCustomDocRows.SetCollectorPoints(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CollectorPoints := Value;
end;

function TCustomDocRows.GetCollectorPointsForfait: IJanuaField;
begin
  Result := self.GetCustomDocRow.CollectorPointsForfait;
end;

procedure TCustomDocRows.SetCollectorPointsForfait(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CollectorPointsForfait := Value;
end;

function TCustomDocRows.GetPackageTypeId: IJanuaField;
begin
  Result := self.GetCustomDocRow.PackageTypeId;
end;

procedure TCustomDocRows.SetPackageTypeId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.PackageTypeId := Value;
end;

function TCustomDocRows.GetJguid: IJanuaField;
begin
  Result := self.GetCustomDocRow.Jguid;
end;

procedure TCustomDocRows.SetJguid(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Jguid := Value;
end;

function TCustomDocRows.GetOrderedQty: IJanuaField;
begin
  Result := self.GetCustomDocRow.OrderedQty;
end;

procedure TCustomDocRows.SetOrderedQty(const Value: IJanuaField);
begin
  self.GetCustomDocRow.OrderedQty := Value;
end;

function TCustomDocRows.GetPallets: IJanuaField;
begin
  Result := self.GetCustomDocRow.Pallets;
end;

procedure TCustomDocRows.SetPallets(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Pallets := Value;
end;

function TCustomDocRows.GetWeightOnDelivery: IJanuaField;
begin
  Result := self.GetCustomDocRow.WeightOnDelivery;
end;

procedure TCustomDocRows.SetWeightOnDelivery(const Value: IJanuaField);
begin
  self.GetCustomDocRow.WeightOnDelivery := Value;
end;

function TCustomDocRows.GetWeightOnOrder: IJanuaField;
begin
  Result := self.GetCustomDocRow.WeightOnOrder;
end;

procedure TCustomDocRows.SetWeightOnOrder(const Value: IJanuaField);
begin
  self.GetCustomDocRow.WeightOnOrder := Value;
end;

function TCustomDocRows.GetWeightOnShipping: IJanuaField;
begin
  Result := self.GetCustomDocRow.WeightOnShipping;
end;

procedure TCustomDocRows.SetWeightOnShipping(const Value: IJanuaField);
begin
  self.GetCustomDocRow.WeightOnShipping := Value;
end;

function TCustomDocRows.GetVolume: IJanuaField;
begin
  Result := self.GetCustomDocRow.Volume;
end;

procedure TCustomDocRows.SetVolume(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Volume := Value;
end;

function TCustomDocRows.GetDocOriginNumber: IJanuaField;
begin
  Result := self.GetCustomDocRow.DocOriginNumber;
end;

procedure TCustomDocRows.SetDocOriginNumber(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DocOriginNumber := Value;
end;

function TCustomDocRows.GetDocOriginDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.DocOriginDate;
end;

procedure TCustomDocRows.SetDocOriginDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DocOriginDate := Value;
end;

function TCustomDocRows.GetCustomsDocRef: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomsDocRef;
end;

procedure TCustomDocRows.SetCustomsDocRef(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomsDocRef := Value;
end;

function TCustomDocRows.GetCustomsDocTypeId: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomsDocTypeId;
end;

procedure TCustomDocRows.SetCustomsDocTypeId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomsDocTypeId := Value;
end;

function TCustomDocRows.GetPurchaseOrder: IJanuaField;
begin
  Result := self.GetCustomDocRow.PurchaseOrder;
end;

procedure TCustomDocRows.SetPurchaseOrder(const Value: IJanuaField);
begin
  self.GetCustomDocRow.PurchaseOrder := Value;
end;

function TCustomDocRows.GetInsertDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.InsertDate;
end;

procedure TCustomDocRows.SetInsertDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.InsertDate := Value;
end;

function TCustomDocRows.GetUpdateDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.UpdateDate;
end;

procedure TCustomDocRows.SetUpdateDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.UpdateDate := Value;
end;

function TCustomDocRows.GetUserInsert: IJanuaField;
begin
  Result := self.GetCustomDocRow.UserInsert;
end;

procedure TCustomDocRows.SetUserInsert(const Value: IJanuaField);
begin
  self.GetCustomDocRow.UserInsert := Value;
end;

function TCustomDocRows.GetUserUpdate: IJanuaField;
begin
  Result := self.GetCustomDocRow.UserUpdate;
end;

procedure TCustomDocRows.SetUserUpdate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.UserUpdate := Value;
end;

function TCustomDocRows.GetSizeWeight: IJanuaField;
begin
  Result := self.GetCustomDocRow.SizeWeight;
end;

procedure TCustomDocRows.SetSizeWeight(const Value: IJanuaField);
begin
  self.GetCustomDocRow.SizeWeight := Value;
end;

function TCustomDocRows.GetSizeLength: IJanuaField;
begin
  Result := self.GetCustomDocRow.SizeLength;
end;

procedure TCustomDocRows.SetSizeLength(const Value: IJanuaField);
begin
  self.GetCustomDocRow.SizeLength := Value;
end;

function TCustomDocRows.GetSizeHeight: IJanuaField;
begin
  Result := self.GetCustomDocRow.SizeHeight;
end;

procedure TCustomDocRows.SetSizeHeight(const Value: IJanuaField);
begin
  self.GetCustomDocRow.SizeHeight := Value;
end;

function TCustomDocRows.GetInventoryQty: IJanuaField;
begin
  Result := self.GetCustomDocRow.InventoryQty;
end;

procedure TCustomDocRows.SetInventoryQty(const Value: IJanuaField);
begin
  self.GetCustomDocRow.InventoryQty := Value;
end;

function TCustomDocRows.GetInventoryWeight: IJanuaField;
begin
  Result := self.GetCustomDocRow.InventoryWeight;
end;

procedure TCustomDocRows.SetInventoryWeight(const Value: IJanuaField);
begin
  self.GetCustomDocRow.InventoryWeight := Value;
end;

function TCustomDocRows.GetCustomsDocCin: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomsDocCin;
end;

procedure TCustomDocRows.SetCustomsDocCin(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomsDocCin := Value;
end;

function TCustomDocRows.GetCustomsDocDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomsDocDate;
end;

procedure TCustomDocRows.SetCustomsDocDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomsDocDate := Value;
end;

function TCustomDocRows.GetSupplierId: IJanuaField;
begin
  Result := self.GetCustomDocRow.SupplierId;
end;

procedure TCustomDocRows.SetSupplierId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.SupplierId := Value;
end;

function TCustomDocRows.GetDbSchemaId: IJanuaField;
begin
  Result := self.GetCustomDocRow.DbSchemaId;
end;

procedure TCustomDocRows.SetDbSchemaId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DbSchemaId := Value;
end;

function TCustomDocRows.GetDocHeadJguid: IJanuaField;
begin
  Result := self.GetCustomDocRow.DocHeadJguid;
end;

procedure TCustomDocRows.SetDocHeadJguid(const Value: IJanuaField);
begin
  self.GetCustomDocRow.DocHeadJguid := Value;
end;

function TCustomDocRows.GetItemJguid: IJanuaField;
begin
  Result := self.GetCustomDocRow.ItemJguid;
end;

procedure TCustomDocRows.SetItemJguid(const Value: IJanuaField);
begin
  self.GetCustomDocRow.ItemJguid := Value;
end;

function TCustomDocRows.GetContainerStatus: IJanuaField;
begin
  Result := self.GetCustomDocRow.ContainerStatus;
end;

procedure TCustomDocRows.SetContainerStatus(const Value: IJanuaField);
begin
  self.GetCustomDocRow.ContainerStatus := Value;
end;

function TCustomDocRows.GetRights: IJanuaField;
begin
  Result := self.GetCustomDocRow.Rights;
end;

procedure TCustomDocRows.SetRights(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Rights := Value;
end;

function TCustomDocRows.GetInvoiceNumber: IJanuaField;
begin
  Result := self.GetCustomDocRow.InvoiceNumber;
end;

procedure TCustomDocRows.SetInvoiceNumber(const Value: IJanuaField);
begin
  self.GetCustomDocRow.InvoiceNumber := Value;
end;

function TCustomDocRows.GetCustomDocRow: ICustomDocRow;
begin
  Result := FRecord as ICustomDocRow
end;

function TCustomDocRows.GetCustomField1: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomField1;
end;

procedure TCustomDocRows.SetCustomField1(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomField1 := Value;
end;

function TCustomDocRows.GetCustomField2: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomField2;
end;

procedure TCustomDocRows.SetCustomField2(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomField2 := Value;
end;

function TCustomDocRows.GetInvoiceAmount: IJanuaField;
begin
  Result := self.GetCustomDocRow.InvoiceAmount;
end;

procedure TCustomDocRows.SetInvoiceAmount(const Value: IJanuaField);
begin
  self.GetCustomDocRow.InvoiceAmount := Value;
end;

function TCustomDocRows.GetCustomField3: IJanuaField;
begin
  Result := self.GetCustomDocRow.CustomField3;
end;

procedure TCustomDocRows.SetCustomField3(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CustomField3 := Value;
end;

function TCustomDocRows.GetJsonNestedTable: IJanuaField;
begin
  Result := self.GetCustomDocRow.JsonNestedTable;
end;

procedure TCustomDocRows.SetJsonNestedTable(const Value: IJanuaField);
begin
  self.GetCustomDocRow.JsonNestedTable := Value;
end;

function TCustomDocRows.GetInvoiceDate: IJanuaField;
begin
  Result := self.GetCustomDocRow.InvoiceDate;
end;

procedure TCustomDocRows.SetInvoiceDate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.InvoiceDate := Value;
end;

function TCustomDocRows.GetImportexport: IJanuaField;
begin
  Result := self.GetCustomDocRow.Importexport;
end;

procedure TCustomDocRows.SetImportexport(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Importexport := Value;
end;

function TCustomDocRows.GetTypeId: IJanuaField;
begin
  Result := self.GetCustomDocRow.TypeId;
end;

procedure TCustomDocRows.SetTypeId(const Value: IJanuaField);
begin
  self.GetCustomDocRow.TypeId := Value;
end;

function TCustomDocRows.GetIsDescription: IJanuaField;
begin
  Result := self.GetCustomDocRow.IsDescription;
end;

procedure TCustomDocRows.SetIsDescription(const Value: IJanuaField);
begin
  self.GetCustomDocRow.IsDescription := Value;
end;

function TCustomDocRows.GetExchangeRage: IJanuaField;
begin
  Result := self.GetCustomDocRow.ExchangeRage;
end;

procedure TCustomDocRows.SetExchangeRage(const Value: IJanuaField);
begin
  self.GetCustomDocRow.ExchangeRage := Value;
end;

function TCustomDocRows.GetFreightQty: IJanuaField;
begin
  Result := self.GetCustomDocRow.FreightQty;
end;

procedure TCustomDocRows.SetFreightQty(const Value: IJanuaField);
begin
  self.GetCustomDocRow.FreightQty := Value;
end;

function TCustomDocRows.GetAmount: IJanuaField;
begin
  Result := self.GetCustomDocRow.Amount;
end;

procedure TCustomDocRows.SetAmount(const Value: IJanuaField);
begin
  self.GetCustomDocRow.Amount := Value;
end;

function TCustomDocRows.GetVatCode: IJanuaField;
begin
  Result := self.GetCustomDocRow.VatCode;
end;

procedure TCustomDocRows.SetVatCode(const Value: IJanuaField);
begin
  self.GetCustomDocRow.VatCode := Value;
end;

function TCustomDocRows.GetFreightRate: IJanuaField;
begin
  Result := self.GetCustomDocRow.FreightRate;
end;

procedure TCustomDocRows.SetFreightRate(const Value: IJanuaField);
begin
  self.GetCustomDocRow.FreightRate := Value;
end;

function TCustomDocRows.GetVatDescription: IJanuaField;
begin
  Result := self.GetCustomDocRow.VatDescription;
end;

procedure TCustomDocRows.SetVatDescription(const Value: IJanuaField);
begin
  self.GetCustomDocRow.VatDescription := Value;
end;

function TCustomDocRows.GetCurrencyCode: IJanuaField;
begin
  Result := self.GetCustomDocRow.CurrencyCode;
end;

procedure TCustomDocRows.SetCurrencyCode(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CurrencyCode := Value;
end;

function TCustomDocRows.GetCurrencyDescription: IJanuaField;
begin
  Result := self.GetCustomDocRow.CurrencyDescription;
end;

procedure TCustomDocRows.SetCurrencyDescription(const Value: IJanuaField);
begin
  self.GetCustomDocRow.CurrencyDescription := Value;
end;

function TCustomDocRows.GetFlgDescription: IJanuaField;
begin
  Result := self.GetCustomDocRow.FlgDescription;
end;

procedure TCustomDocRows.SetFlgDescription(const Value: IJanuaField);
begin
  self.GetCustomDocRow.FlgDescription := Value;
end;

end.
