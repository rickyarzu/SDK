unit JOrm.Logistic.ShipmentsRows.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Logistic.ShipmentRows.Custom.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomShipmentRow = class(TJanuaRecord, ICustomShipmentRow)
  private
    FYear: IJanuaField;
    FShipmentId: IJanuaField;
    FOfficeId: IJanuaField;
    FWarehouseId: IJanuaField;
    FPos: IJanuaField;
    FQuantity: IJanuaField;
    FWeight: IJanuaField;
    FVolume: IJanuaField;
    FBooking: IJanuaField;
    FCntrType: IJanuaField;
    FCntrCode: IJanuaField;
    FCntrSeal: IJanuaField;
    FPkgTypeCode: IJanuaField;
    FPo1: IJanuaField;
    FPo2: IJanuaField;
    FPo3: IJanuaField;
    FPo4: IJanuaField;
    FPo5: IJanuaField;
    FPo6: IJanuaField;
    FPo7: IJanuaField;
    FPo8: IJanuaField;
    FFreightAmount: IJanuaField;
    FMarks: IJanuaField;
    FDescription1: IJanuaField;
    FDescription2: IJanuaField;
    FBol: IJanuaField;
    FBolhouse: IJanuaField;
    FNote: IJanuaField;
    FTemperature: IJanuaField;
    FSupplier: IJanuaField;
    FSupplierCode: IJanuaField;
    FWarehouseReceiptDate: IJanuaField;
    FInvoiceNumber: IJanuaField;
    FInvoiceDate: IJanuaField;
    FTaxableWeight: IJanuaField;
    FMunitId: IJanuaField;
    FValue: IJanuaField;
    FCurrencyId: IJanuaField;
    FInvoiceAmount: IJanuaField;
    FExchangeRate: IJanuaField;
    FDimentions: IJanuaField;
    FRemarks: IJanuaField;
    FWeghtVolumeRatio: IJanuaField;
    FFlgnotaxw: IJanuaField;
    FActualWeight: IJanuaField;
    FActualVolume: IJanuaField;
    FBookingNumber: IJanuaField;
    FCustomsTariff: IJanuaField;
    FSizeWeight: IJanuaField;
    FSizeLength: IJanuaField;
    FSizeHeight: IJanuaField;
    FSupplierWarehouseCode: IJanuaField;
    FSupplierWarehouseId: IJanuaField;
    FJguid: IJanuaField;
    FId: IJanuaField;
    FItemId: IJanuaField;
  private
    function GetYear: IJanuaField;
    procedure SetYear(const Value: IJanuaField);
    function GetShipmentId: IJanuaField;
    procedure SetShipmentId(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetWarehouseId: IJanuaField;
    procedure SetWarehouseId(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetQuantity: IJanuaField;
    procedure SetQuantity(const Value: IJanuaField);
    function GetWeight: IJanuaField;
    procedure SetWeight(const Value: IJanuaField);
    function GetVolume: IJanuaField;
    procedure SetVolume(const Value: IJanuaField);
    function GetBooking: IJanuaField;
    procedure SetBooking(const Value: IJanuaField);
    function GetCntrType: IJanuaField;
    procedure SetCntrType(const Value: IJanuaField);
    function GetCntrCode: IJanuaField;
    procedure SetCntrCode(const Value: IJanuaField);
    function GetCntrSeal: IJanuaField;
    procedure SetCntrSeal(const Value: IJanuaField);
    function GetPkgTypeCode: IJanuaField;
    procedure SetPkgTypeCode(const Value: IJanuaField);
    function GetPo1: IJanuaField;
    procedure SetPo1(const Value: IJanuaField);
    function GetPo2: IJanuaField;
    procedure SetPo2(const Value: IJanuaField);
    function GetPo3: IJanuaField;
    procedure SetPo3(const Value: IJanuaField);
    function GetPo4: IJanuaField;
    procedure SetPo4(const Value: IJanuaField);
    function GetPo5: IJanuaField;
    procedure SetPo5(const Value: IJanuaField);
    function GetPo6: IJanuaField;
    procedure SetPo6(const Value: IJanuaField);
    function GetPo7: IJanuaField;
    procedure SetPo7(const Value: IJanuaField);
    function GetPo8: IJanuaField;
    procedure SetPo8(const Value: IJanuaField);
    function GetFreightAmount: IJanuaField;
    procedure SetFreightAmount(const Value: IJanuaField);
    function GetMarks: IJanuaField;
    procedure SetMarks(const Value: IJanuaField);
    function GetDescription1: IJanuaField;
    procedure SetDescription1(const Value: IJanuaField);
    function GetDescription2: IJanuaField;
    procedure SetDescription2(const Value: IJanuaField);
    function GetBol: IJanuaField;
    procedure SetBol(const Value: IJanuaField);
    function GetBolhouse: IJanuaField;
    procedure SetBolhouse(const Value: IJanuaField);
    function GetNote: IJanuaField;
    procedure SetNote(const Value: IJanuaField);
    function GetTemperature: IJanuaField;
    procedure SetTemperature(const Value: IJanuaField);
    function GetSupplier: IJanuaField;
    procedure SetSupplier(const Value: IJanuaField);
    function GetSupplierCode: IJanuaField;
    procedure SetSupplierCode(const Value: IJanuaField);
    function GetWarehouseReceiptDate: IJanuaField;
    procedure SetWarehouseReceiptDate(const Value: IJanuaField);
    function GetInvoiceNumber: IJanuaField;
    procedure SetInvoiceNumber(const Value: IJanuaField);
    function GetInvoiceDate: IJanuaField;
    procedure SetInvoiceDate(const Value: IJanuaField);
    function GetTaxableWeight: IJanuaField;
    procedure SetTaxableWeight(const Value: IJanuaField);
    function GetMunitId: IJanuaField;
    procedure SetMunitId(const Value: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetInvoiceAmount: IJanuaField;
    procedure SetInvoiceAmount(const Value: IJanuaField);
    function GetExchangeRate: IJanuaField;
    procedure SetExchangeRate(const Value: IJanuaField);
    function GetDimentions: IJanuaField;
    procedure SetDimentions(const Value: IJanuaField);
    function GetRemarks: IJanuaField;
    procedure SetRemarks(const Value: IJanuaField);
    function GetWeghtVolumeRatio: IJanuaField;
    procedure SetWeghtVolumeRatio(const Value: IJanuaField);
    function GetFlgnotaxw: IJanuaField;
    procedure SetFlgnotaxw(const Value: IJanuaField);
    function GetActualWeight: IJanuaField;
    procedure SetActualWeight(const Value: IJanuaField);
    function GetActualVolume: IJanuaField;
    procedure SetActualVolume(const Value: IJanuaField);
    function GetBookingNumber: IJanuaField;
    procedure SetBookingNumber(const Value: IJanuaField);
    function GetCustomsTariff: IJanuaField;
    procedure SetCustomsTariff(const Value: IJanuaField);
    function GetSizeWeight: IJanuaField;
    procedure SetSizeWeight(const Value: IJanuaField);
    function GetSizeLength: IJanuaField;
    procedure SetSizeLength(const Value: IJanuaField);
    function GetSizeHeight: IJanuaField;
    procedure SetSizeHeight(const Value: IJanuaField);
    function GetSupplierWarehouseCode: IJanuaField;
    procedure SetSupplierWarehouseCode(const Value: IJanuaField);
    function GetSupplierWarehouseId: IJanuaField;
    procedure SetSupplierWarehouseId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetItemId: IJanuaField;
    procedure SetItemId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Year: IJanuaField read GetYear write SetYear;
    property ShipmentId: IJanuaField read GetShipmentId write SetShipmentId;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property WarehouseId: IJanuaField read GetWarehouseId write SetWarehouseId;
    property Pos: IJanuaField read GetPos write SetPos;
    property Quantity: IJanuaField read GetQuantity write SetQuantity;
    property Weight: IJanuaField read GetWeight write SetWeight;
    property Volume: IJanuaField read GetVolume write SetVolume;
    property Booking: IJanuaField read GetBooking write SetBooking;
    property CntrType: IJanuaField read GetCntrType write SetCntrType;
    property CntrCode: IJanuaField read GetCntrCode write SetCntrCode;
    property CntrSeal: IJanuaField read GetCntrSeal write SetCntrSeal;
    property PkgTypeCode: IJanuaField read GetPkgTypeCode write SetPkgTypeCode;
    property Po1: IJanuaField read GetPo1 write SetPo1;
    property Po2: IJanuaField read GetPo2 write SetPo2;
    property Po3: IJanuaField read GetPo3 write SetPo3;
    property Po4: IJanuaField read GetPo4 write SetPo4;
    property Po5: IJanuaField read GetPo5 write SetPo5;
    property Po6: IJanuaField read GetPo6 write SetPo6;
    property Po7: IJanuaField read GetPo7 write SetPo7;
    property Po8: IJanuaField read GetPo8 write SetPo8;
    property FreightAmount: IJanuaField read GetFreightAmount write SetFreightAmount;
    property Marks: IJanuaField read GetMarks write SetMarks;
    property Description1: IJanuaField read GetDescription1 write SetDescription1;
    property Description2: IJanuaField read GetDescription2 write SetDescription2;
    property Bol: IJanuaField read GetBol write SetBol;
    property Bolhouse: IJanuaField read GetBolhouse write SetBolhouse;
    property Note: IJanuaField read GetNote write SetNote;
    property Temperature: IJanuaField read GetTemperature write SetTemperature;
    property Supplier: IJanuaField read GetSupplier write SetSupplier;
    property SupplierCode: IJanuaField read GetSupplierCode write SetSupplierCode;
    property WarehouseReceiptDate: IJanuaField read GetWarehouseReceiptDate write SetWarehouseReceiptDate;
    property InvoiceNumber: IJanuaField read GetInvoiceNumber write SetInvoiceNumber;
    property InvoiceDate: IJanuaField read GetInvoiceDate write SetInvoiceDate;
    property TaxableWeight: IJanuaField read GetTaxableWeight write SetTaxableWeight;
    property MunitId: IJanuaField read GetMunitId write SetMunitId;
    property Value: IJanuaField read GetValue write SetValue;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property InvoiceAmount: IJanuaField read GetInvoiceAmount write SetInvoiceAmount;
    property ExchangeRate: IJanuaField read GetExchangeRate write SetExchangeRate;
    property Dimentions: IJanuaField read GetDimentions write SetDimentions;
    property Remarks: IJanuaField read GetRemarks write SetRemarks;
    property WeghtVolumeRatio: IJanuaField read GetWeghtVolumeRatio write SetWeghtVolumeRatio;
    property Flgnotaxw: IJanuaField read GetFlgnotaxw write SetFlgnotaxw;
    property ActualWeight: IJanuaField read GetActualWeight write SetActualWeight;
    property ActualVolume: IJanuaField read GetActualVolume write SetActualVolume;
    property BookingNumber: IJanuaField read GetBookingNumber write SetBookingNumber;
    property CustomsTariff: IJanuaField read GetCustomsTariff write SetCustomsTariff;
    property SizeWeight: IJanuaField read GetSizeWeight write SetSizeWeight;
    property SizeLength: IJanuaField read GetSizeLength write SetSizeLength;
    property SizeHeight: IJanuaField read GetSizeHeight write SetSizeHeight;
    property SupplierWarehouseCode: IJanuaField read GetSupplierWarehouseCode write SetSupplierWarehouseCode;
    property SupplierWarehouseId: IJanuaField read GetSupplierWarehouseId write SetSupplierWarehouseId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Id: IJanuaField read GetId write SetId;
    property ItemId: IJanuaField read GetItemId write SetItemId;

  end;

  TCustomShipmentRows = class(TJanuaRecordSet, IJanuaRecordSet, ICustomShipmentRows)
  strict protected
    function GetCustomShipmentRow: ICustomShipmentRow;
  protected
    function GetYear: IJanuaField;
    procedure SetYear(const Value: IJanuaField);
    function GetShipmentId: IJanuaField;
    procedure SetShipmentId(const Value: IJanuaField);
    function GetOfficeId: IJanuaField;
    procedure SetOfficeId(const Value: IJanuaField);
    function GetWarehouseId: IJanuaField;
    procedure SetWarehouseId(const Value: IJanuaField);
    function GetPos: IJanuaField;
    procedure SetPos(const Value: IJanuaField);
    function GetQuantity: IJanuaField;
    procedure SetQuantity(const Value: IJanuaField);
    function GetWeight: IJanuaField;
    procedure SetWeight(const Value: IJanuaField);
    function GetVolume: IJanuaField;
    procedure SetVolume(const Value: IJanuaField);
    function GetBooking: IJanuaField;
    procedure SetBooking(const Value: IJanuaField);
    function GetCntrType: IJanuaField;
    procedure SetCntrType(const Value: IJanuaField);
    function GetCntrCode: IJanuaField;
    procedure SetCntrCode(const Value: IJanuaField);
    function GetCntrSeal: IJanuaField;
    procedure SetCntrSeal(const Value: IJanuaField);
    function GetPkgTypeCode: IJanuaField;
    procedure SetPkgTypeCode(const Value: IJanuaField);
    function GetPo1: IJanuaField;
    procedure SetPo1(const Value: IJanuaField);
    function GetPo2: IJanuaField;
    procedure SetPo2(const Value: IJanuaField);
    function GetPo3: IJanuaField;
    procedure SetPo3(const Value: IJanuaField);
    function GetPo4: IJanuaField;
    procedure SetPo4(const Value: IJanuaField);
    function GetPo5: IJanuaField;
    procedure SetPo5(const Value: IJanuaField);
    function GetPo6: IJanuaField;
    procedure SetPo6(const Value: IJanuaField);
    function GetPo7: IJanuaField;
    procedure SetPo7(const Value: IJanuaField);
    function GetPo8: IJanuaField;
    procedure SetPo8(const Value: IJanuaField);
    function GetFreightAmount: IJanuaField;
    procedure SetFreightAmount(const Value: IJanuaField);
    function GetMarks: IJanuaField;
    procedure SetMarks(const Value: IJanuaField);
    function GetDescription1: IJanuaField;
    procedure SetDescription1(const Value: IJanuaField);
    function GetDescription2: IJanuaField;
    procedure SetDescription2(const Value: IJanuaField);
    function GetBol: IJanuaField;
    procedure SetBol(const Value: IJanuaField);
    function GetBolhouse: IJanuaField;
    procedure SetBolhouse(const Value: IJanuaField);
    function GetNote: IJanuaField;
    procedure SetNote(const Value: IJanuaField);
    function GetTemperature: IJanuaField;
    procedure SetTemperature(const Value: IJanuaField);
    function GetSupplier: IJanuaField;
    procedure SetSupplier(const Value: IJanuaField);
    function GetSupplierCode: IJanuaField;
    procedure SetSupplierCode(const Value: IJanuaField);
    function GetWarehouseReceiptDate: IJanuaField;
    procedure SetWarehouseReceiptDate(const Value: IJanuaField);
    function GetInvoiceNumber: IJanuaField;
    procedure SetInvoiceNumber(const Value: IJanuaField);
    function GetInvoiceDate: IJanuaField;
    procedure SetInvoiceDate(const Value: IJanuaField);
    function GetTaxableWeight: IJanuaField;
    procedure SetTaxableWeight(const Value: IJanuaField);
    function GetMunitId: IJanuaField;
    procedure SetMunitId(const Value: IJanuaField);
    function GetValue: IJanuaField;
    procedure SetValue(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetInvoiceAmount: IJanuaField;
    procedure SetInvoiceAmount(const Value: IJanuaField);
    function GetExchangeRate: IJanuaField;
    procedure SetExchangeRate(const Value: IJanuaField);
    function GetDimentions: IJanuaField;
    procedure SetDimentions(const Value: IJanuaField);
    function GetRemarks: IJanuaField;
    procedure SetRemarks(const Value: IJanuaField);
    function GetWeghtVolumeRatio: IJanuaField;
    procedure SetWeghtVolumeRatio(const Value: IJanuaField);
    function GetFlgnotaxw: IJanuaField;
    procedure SetFlgnotaxw(const Value: IJanuaField);
    function GetActualWeight: IJanuaField;
    procedure SetActualWeight(const Value: IJanuaField);
    function GetActualVolume: IJanuaField;
    procedure SetActualVolume(const Value: IJanuaField);
    function GetBookingNumber: IJanuaField;
    procedure SetBookingNumber(const Value: IJanuaField);
    function GetCustomsTariff: IJanuaField;
    procedure SetCustomsTariff(const Value: IJanuaField);
    function GetSizeWeight: IJanuaField;
    procedure SetSizeWeight(const Value: IJanuaField);
    function GetSizeLength: IJanuaField;
    procedure SetSizeLength(const Value: IJanuaField);
    function GetSizeHeight: IJanuaField;
    procedure SetSizeHeight(const Value: IJanuaField);
    function GetSupplierWarehouseCode: IJanuaField;
    procedure SetSupplierWarehouseCode(const Value: IJanuaField);
    function GetSupplierWarehouseId: IJanuaField;
    procedure SetSupplierWarehouseId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetItemId: IJanuaField;
    procedure SetItemId(const Value: IJanuaField);
  public
    constructor Create; override;
    property Year: IJanuaField read GetYear write SetYear;
    property ShipmentId: IJanuaField read GetShipmentId write SetShipmentId;
    property OfficeId: IJanuaField read GetOfficeId write SetOfficeId;
    property WarehouseId: IJanuaField read GetWarehouseId write SetWarehouseId;
    property Pos: IJanuaField read GetPos write SetPos;
    property Quantity: IJanuaField read GetQuantity write SetQuantity;
    property Weight: IJanuaField read GetWeight write SetWeight;
    property Volume: IJanuaField read GetVolume write SetVolume;
    property Booking: IJanuaField read GetBooking write SetBooking;
    property CntrType: IJanuaField read GetCntrType write SetCntrType;
    property CntrCode: IJanuaField read GetCntrCode write SetCntrCode;
    property CntrSeal: IJanuaField read GetCntrSeal write SetCntrSeal;
    property PkgTypeCode: IJanuaField read GetPkgTypeCode write SetPkgTypeCode;
    property Po1: IJanuaField read GetPo1 write SetPo1;
    property Po2: IJanuaField read GetPo2 write SetPo2;
    property Po3: IJanuaField read GetPo3 write SetPo3;
    property Po4: IJanuaField read GetPo4 write SetPo4;
    property Po5: IJanuaField read GetPo5 write SetPo5;
    property Po6: IJanuaField read GetPo6 write SetPo6;
    property Po7: IJanuaField read GetPo7 write SetPo7;
    property Po8: IJanuaField read GetPo8 write SetPo8;
    property FreightAmount: IJanuaField read GetFreightAmount write SetFreightAmount;
    property Marks: IJanuaField read GetMarks write SetMarks;
    property Description1: IJanuaField read GetDescription1 write SetDescription1;
    property Description2: IJanuaField read GetDescription2 write SetDescription2;
    property Bol: IJanuaField read GetBol write SetBol;
    property Bolhouse: IJanuaField read GetBolhouse write SetBolhouse;
    property Note: IJanuaField read GetNote write SetNote;
    property Temperature: IJanuaField read GetTemperature write SetTemperature;
    property Supplier: IJanuaField read GetSupplier write SetSupplier;
    property SupplierCode: IJanuaField read GetSupplierCode write SetSupplierCode;
    property WarehouseReceiptDate: IJanuaField read GetWarehouseReceiptDate write SetWarehouseReceiptDate;
    property InvoiceNumber: IJanuaField read GetInvoiceNumber write SetInvoiceNumber;
    property InvoiceDate: IJanuaField read GetInvoiceDate write SetInvoiceDate;
    property TaxableWeight: IJanuaField read GetTaxableWeight write SetTaxableWeight;
    property MunitId: IJanuaField read GetMunitId write SetMunitId;
    property Value: IJanuaField read GetValue write SetValue;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property InvoiceAmount: IJanuaField read GetInvoiceAmount write SetInvoiceAmount;
    property ExchangeRate: IJanuaField read GetExchangeRate write SetExchangeRate;
    property Dimentions: IJanuaField read GetDimentions write SetDimentions;
    property Remarks: IJanuaField read GetRemarks write SetRemarks;
    property WeghtVolumeRatio: IJanuaField read GetWeghtVolumeRatio write SetWeghtVolumeRatio;
    property Flgnotaxw: IJanuaField read GetFlgnotaxw write SetFlgnotaxw;
    property ActualWeight: IJanuaField read GetActualWeight write SetActualWeight;
    property ActualVolume: IJanuaField read GetActualVolume write SetActualVolume;
    property BookingNumber: IJanuaField read GetBookingNumber write SetBookingNumber;
    property CustomsTariff: IJanuaField read GetCustomsTariff write SetCustomsTariff;
    property SizeWeight: IJanuaField read GetSizeWeight write SetSizeWeight;
    property SizeLength: IJanuaField read GetSizeLength write SetSizeLength;
    property SizeHeight: IJanuaField read GetSizeHeight write SetSizeHeight;
    property SupplierWarehouseCode: IJanuaField read GetSupplierWarehouseCode write SetSupplierWarehouseCode;
    property SupplierWarehouseId: IJanuaField read GetSupplierWarehouseId write SetSupplierWarehouseId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property Id: IJanuaField read GetId write SetId;
    property ItemId: IJanuaField read GetItemId write SetItemId;
  end;

implementation

// ------------------------------------------ Impl TShipmentRow -------------------------------

{ TCustomShipmentRow }

constructor TCustomShipmentRow.Create;
begin
  inherited;
  FPrefix := 'shp';
  FYear := AddCreateField(TJanuaFieldType.jptSmallint, 'year', 'year');
  FShipmentId := AddCreateField(TJanuaFieldType.jptLargeint, 'shipment_id', 'shipment_id');
  FOfficeId := AddCreateField(TJanuaFieldType.jptInteger, 'office_id', 'office_id');
  FWarehouseId := AddCreateField(TJanuaFieldType.jptInteger, 'warehouse_id', 'warehouse_id');
  FPos := AddCreateField(TJanuaFieldType.jptSmallint, 'pos', 'pos');
  FQuantity := AddCreateField(TJanuaFieldType.jptSmallint, 'quantity', 'quantity');
  FWeight := AddCreateField(TJanuaFieldType.jptFloat, 'weight', 'weight');
  FVolume := AddCreateField(TJanuaFieldType.jptFloat, 'volume', 'volume');
  FBooking := AddCreateField(TJanuaFieldType.jptString, 'booking', 'booking');
  FCntrType := AddCreateField(TJanuaFieldType.jptString, 'cntr_type', 'cntr_type');
  FCntrCode := AddCreateField(TJanuaFieldType.jptString, 'cntr_code', 'cntr_code');
  FCntrSeal := AddCreateField(TJanuaFieldType.jptString, 'cntr_seal', 'cntr_seal');
  FPkgTypeCode := AddCreateField(TJanuaFieldType.jptString, 'pkg_type_code', 'pkg_type_code');
  FPo1 := AddCreateField(TJanuaFieldType.jptString, 'po1', 'po1');
  FPo2 := AddCreateField(TJanuaFieldType.jptString, 'po2', 'po2');
  FPo3 := AddCreateField(TJanuaFieldType.jptString, 'po3', 'po3');
  FPo4 := AddCreateField(TJanuaFieldType.jptString, 'po4', 'po4');
  FPo5 := AddCreateField(TJanuaFieldType.jptString, 'po5', 'po5');
  FPo6 := AddCreateField(TJanuaFieldType.jptString, 'po6', 'po6');
  FPo7 := AddCreateField(TJanuaFieldType.jptString, 'po7', 'po7');
  FPo8 := AddCreateField(TJanuaFieldType.jptString, 'po8', 'po8');
  FFreightAmount := AddCreateField(TJanuaFieldType.jptFloat, 'freight_amount', 'freight_amount');
  FMarks := AddCreateField(TJanuaFieldType.jptString, 'marks', 'marks');
  FDescription1 := AddCreateField(TJanuaFieldType.jptString, 'description1', 'description1');
  FDescription2 := AddCreateField(TJanuaFieldType.jptString, 'description2', 'description2');
  FBol := AddCreateField(TJanuaFieldType.jptString, 'bol', 'bol');
  FBolhouse := AddCreateField(TJanuaFieldType.jptString, 'bolhouse', 'bolhouse');
  FNote := AddCreateField(TJanuaFieldType.jptString, 'note', 'note');
  FTemperature := AddCreateField(TJanuaFieldType.jptFloat, 'temperature', 'temperature');
  FSupplier := AddCreateField(TJanuaFieldType.jptString, 'supplier', 'supplier');
  FSupplierCode := AddCreateField(TJanuaFieldType.jptString, 'supplier_code', 'supplier_code');
  FWarehouseReceiptDate := AddCreateField(TJanuaFieldType.jptDateTime, 'warehouse_receipt_date',
    'warehouse_receipt_date');
  FInvoiceNumber := AddCreateField(TJanuaFieldType.jptString, 'invoice_number', 'invoice_number');
  FInvoiceDate := AddCreateField(TJanuaFieldType.jptDate, 'invoice_date', 'invoice_date');
  FTaxableWeight := AddCreateField(TJanuaFieldType.jptFloat, 'taxable_weight', 'taxable_weight');
  FMunitId := AddCreateField(TJanuaFieldType.jptInteger, 'munit_id', 'munit_id');
  FValue := AddCreateField(TJanuaFieldType.jptCurrency, 'value', 'value');
  FCurrencyId := AddCreateField(TJanuaFieldType.jptSmallint, 'currency_id', 'currency_id');
  FInvoiceAmount := AddCreateField(TJanuaFieldType.jptFloat, 'invoice_amount', 'invoice_amount');
  FExchangeRate := AddCreateField(TJanuaFieldType.jptFloat, 'exchange_rate', 'exchange_rate');
  FDimentions := AddCreateField(TJanuaFieldType.jptString, 'dimentions', 'dimentions');
  FRemarks := AddCreateField(TJanuaFieldType.jptString, 'remarks', 'remarks');
  FWeghtVolumeRatio := AddCreateField(TJanuaFieldType.jptFloat, 'weght_volume_ratio', 'weght_volume_ratio');
  FFlgnotaxw := AddCreateField(TJanuaFieldType.jptBoolean, 'flgnotaxw', 'flgnotaxw');
  FActualWeight := AddCreateField(TJanuaFieldType.jptFloat, 'actual_weight', 'actual_weight');
  FActualVolume := AddCreateField(TJanuaFieldType.jptFloat, 'actual_volume', 'actual_volume');
  FBookingNumber := AddCreateField(TJanuaFieldType.jptInteger, 'booking_number', 'booking_number');
  FCustomsTariff := AddCreateField(TJanuaFieldType.jptString, 'customs_tariff', 'customs_tariff');
  FSizeWeight := AddCreateField(TJanuaFieldType.jptFloat, 'size_weight', 'size_weight');
  FSizeLength := AddCreateField(TJanuaFieldType.jptFloat, 'size_length', 'size_length');
  FSizeHeight := AddCreateField(TJanuaFieldType.jptFloat, 'size_height', 'size_height');
  FSupplierWarehouseCode := AddCreateField(TJanuaFieldType.jptString, 'supplier_warehouse_code',
    'supplier_warehouse_code');
  FSupplierWarehouseId := AddCreateField(TJanuaFieldType.jptInteger, 'supplier_warehouse_id', 'supplier_warehouse_id');
  FId := AddCreateField(TJanuaFieldType.jptLargeint, 'id', 'id');
  FItemId := AddCreateField(TJanuaFieldType.jptLargeint, 'item_id', 'item_id');
end;

function TCustomShipmentRow.GetYear: IJanuaField;
begin
  Result := FYear;
end;

procedure TCustomShipmentRow.SetYear(const Value: IJanuaField);
begin
  FYear := Value;
end;

function TCustomShipmentRow.GetShipmentId: IJanuaField;
begin
  Result := FShipmentId;
end;

procedure TCustomShipmentRow.SetShipmentId(const Value: IJanuaField);
begin
  FShipmentId := Value;
end;

function TCustomShipmentRow.GetOfficeId: IJanuaField;
begin
  Result := FOfficeId;
end;

procedure TCustomShipmentRow.SetOfficeId(const Value: IJanuaField);
begin
  FOfficeId := Value;
end;

function TCustomShipmentRow.GetWarehouseId: IJanuaField;
begin
  Result := FWarehouseId;
end;

procedure TCustomShipmentRow.SetWarehouseId(const Value: IJanuaField);
begin
  FWarehouseId := Value;
end;

function TCustomShipmentRow.GetPos: IJanuaField;
begin
  Result := FPos;
end;

procedure TCustomShipmentRow.SetPos(const Value: IJanuaField);
begin
  FPos := Value;
end;

function TCustomShipmentRow.GetQuantity: IJanuaField;
begin
  Result := FQuantity;
end;

procedure TCustomShipmentRow.SetQuantity(const Value: IJanuaField);
begin
  FQuantity := Value;
end;

function TCustomShipmentRow.GetWeight: IJanuaField;
begin
  Result := FWeight;
end;

procedure TCustomShipmentRow.SetWeight(const Value: IJanuaField);
begin
  FWeight := Value;
end;

function TCustomShipmentRow.GetVolume: IJanuaField;
begin
  Result := FVolume;
end;

procedure TCustomShipmentRow.SetVolume(const Value: IJanuaField);
begin
  FVolume := Value;
end;

function TCustomShipmentRow.GetBooking: IJanuaField;
begin
  Result := FBooking;
end;

procedure TCustomShipmentRow.SetBooking(const Value: IJanuaField);
begin
  FBooking := Value;
end;

function TCustomShipmentRow.GetCntrType: IJanuaField;
begin
  Result := FCntrType;
end;

procedure TCustomShipmentRow.SetCntrType(const Value: IJanuaField);
begin
  FCntrType := Value;
end;

function TCustomShipmentRow.GetCntrCode: IJanuaField;
begin
  Result := FCntrCode;
end;

procedure TCustomShipmentRow.SetCntrCode(const Value: IJanuaField);
begin
  FCntrCode := Value;
end;

function TCustomShipmentRow.GetCntrSeal: IJanuaField;
begin
  Result := FCntrSeal;
end;

procedure TCustomShipmentRow.SetCntrSeal(const Value: IJanuaField);
begin
  FCntrSeal := Value;
end;

function TCustomShipmentRow.GetPkgTypeCode: IJanuaField;
begin
  Result := FPkgTypeCode;
end;

procedure TCustomShipmentRow.SetPkgTypeCode(const Value: IJanuaField);
begin
  FPkgTypeCode := Value;
end;

function TCustomShipmentRow.GetPo1: IJanuaField;
begin
  Result := FPo1;
end;

procedure TCustomShipmentRow.SetPo1(const Value: IJanuaField);
begin
  FPo1 := Value;
end;

function TCustomShipmentRow.GetPo2: IJanuaField;
begin
  Result := FPo2;
end;

procedure TCustomShipmentRow.SetPo2(const Value: IJanuaField);
begin
  FPo2 := Value;
end;

function TCustomShipmentRow.GetPo3: IJanuaField;
begin
  Result := FPo3;
end;

procedure TCustomShipmentRow.SetPo3(const Value: IJanuaField);
begin
  FPo3 := Value;
end;

function TCustomShipmentRow.GetPo4: IJanuaField;
begin
  Result := FPo4;
end;

procedure TCustomShipmentRow.SetPo4(const Value: IJanuaField);
begin
  FPo4 := Value;
end;

function TCustomShipmentRow.GetPo5: IJanuaField;
begin
  Result := FPo5;
end;

procedure TCustomShipmentRow.SetPo5(const Value: IJanuaField);
begin
  FPo5 := Value;
end;

function TCustomShipmentRow.GetPo6: IJanuaField;
begin
  Result := FPo6;
end;

procedure TCustomShipmentRow.SetPo6(const Value: IJanuaField);
begin
  FPo6 := Value;
end;

function TCustomShipmentRow.GetPo7: IJanuaField;
begin
  Result := FPo7;
end;

procedure TCustomShipmentRow.SetPo7(const Value: IJanuaField);
begin
  FPo7 := Value;
end;

function TCustomShipmentRow.GetPo8: IJanuaField;
begin
  Result := FPo8;
end;

procedure TCustomShipmentRow.SetPo8(const Value: IJanuaField);
begin
  FPo8 := Value;
end;

function TCustomShipmentRow.GetFreightAmount: IJanuaField;
begin
  Result := FFreightAmount;
end;

procedure TCustomShipmentRow.SetFreightAmount(const Value: IJanuaField);
begin
  FFreightAmount := Value;
end;

function TCustomShipmentRow.GetMarks: IJanuaField;
begin
  Result := FMarks;
end;

procedure TCustomShipmentRow.SetMarks(const Value: IJanuaField);
begin
  FMarks := Value;
end;

function TCustomShipmentRow.GetDescription1: IJanuaField;
begin
  Result := FDescription1;
end;

procedure TCustomShipmentRow.SetDescription1(const Value: IJanuaField);
begin
  FDescription1 := Value;
end;

function TCustomShipmentRow.GetDescription2: IJanuaField;
begin
  Result := FDescription2;
end;

procedure TCustomShipmentRow.SetDescription2(const Value: IJanuaField);
begin
  FDescription2 := Value;
end;

function TCustomShipmentRow.GetBol: IJanuaField;
begin
  Result := FBol;
end;

procedure TCustomShipmentRow.SetBol(const Value: IJanuaField);
begin
  FBol := Value;
end;

function TCustomShipmentRow.GetBolhouse: IJanuaField;
begin
  Result := FBolhouse;
end;

procedure TCustomShipmentRow.SetBolhouse(const Value: IJanuaField);
begin
  FBolhouse := Value;
end;

function TCustomShipmentRow.GetNote: IJanuaField;
begin
  Result := FNote;
end;

procedure TCustomShipmentRow.SetNote(const Value: IJanuaField);
begin
  FNote := Value;
end;

function TCustomShipmentRow.GetTemperature: IJanuaField;
begin
  Result := FTemperature;
end;

procedure TCustomShipmentRow.SetTemperature(const Value: IJanuaField);
begin
  FTemperature := Value;
end;

function TCustomShipmentRow.GetSupplier: IJanuaField;
begin
  Result := FSupplier;
end;

procedure TCustomShipmentRow.SetSupplier(const Value: IJanuaField);
begin
  FSupplier := Value;
end;

function TCustomShipmentRow.GetSupplierCode: IJanuaField;
begin
  Result := FSupplierCode;
end;

procedure TCustomShipmentRow.SetSupplierCode(const Value: IJanuaField);
begin
  FSupplierCode := Value;
end;

function TCustomShipmentRow.GetWarehouseReceiptDate: IJanuaField;
begin
  Result := FWarehouseReceiptDate;
end;

procedure TCustomShipmentRow.SetWarehouseReceiptDate(const Value: IJanuaField);
begin
  FWarehouseReceiptDate := Value;
end;

function TCustomShipmentRow.GetInvoiceNumber: IJanuaField;
begin
  Result := FInvoiceNumber;
end;

procedure TCustomShipmentRow.SetInvoiceNumber(const Value: IJanuaField);
begin
  FInvoiceNumber := Value;
end;

function TCustomShipmentRow.GetInvoiceDate: IJanuaField;
begin
  Result := FInvoiceDate;
end;

procedure TCustomShipmentRow.SetInvoiceDate(const Value: IJanuaField);
begin
  FInvoiceDate := Value;
end;

function TCustomShipmentRow.GetTaxableWeight: IJanuaField;
begin
  Result := FTaxableWeight;
end;

procedure TCustomShipmentRow.SetTaxableWeight(const Value: IJanuaField);
begin
  FTaxableWeight := Value;
end;

function TCustomShipmentRow.GetMunitId: IJanuaField;
begin
  Result := FMunitId;
end;

procedure TCustomShipmentRow.SetMunitId(const Value: IJanuaField);
begin
  FMunitId := Value;
end;

function TCustomShipmentRow.GetValue: IJanuaField;
begin
  Result := FValue;
end;

procedure TCustomShipmentRow.SetValue(const Value: IJanuaField);
begin
  FValue := Value;
end;

function TCustomShipmentRow.GetCurrencyId: IJanuaField;
begin
  Result := FCurrencyId;
end;

procedure TCustomShipmentRow.SetCurrencyId(const Value: IJanuaField);
begin
  FCurrencyId := Value;
end;

function TCustomShipmentRow.GetInvoiceAmount: IJanuaField;
begin
  Result := FInvoiceAmount;
end;

procedure TCustomShipmentRow.SetInvoiceAmount(const Value: IJanuaField);
begin
  FInvoiceAmount := Value;
end;

function TCustomShipmentRow.GetExchangeRate: IJanuaField;
begin
  Result := FExchangeRate;
end;

procedure TCustomShipmentRow.SetExchangeRate(const Value: IJanuaField);
begin
  FExchangeRate := Value;
end;

function TCustomShipmentRow.GetDimentions: IJanuaField;
begin
  Result := FDimentions;
end;

procedure TCustomShipmentRow.SetDimentions(const Value: IJanuaField);
begin
  FDimentions := Value;
end;

function TCustomShipmentRow.GetRemarks: IJanuaField;
begin
  Result := FRemarks;
end;

procedure TCustomShipmentRow.SetRemarks(const Value: IJanuaField);
begin
  FRemarks := Value;
end;

function TCustomShipmentRow.GetWeghtVolumeRatio: IJanuaField;
begin
  Result := FWeghtVolumeRatio;
end;

procedure TCustomShipmentRow.SetWeghtVolumeRatio(const Value: IJanuaField);
begin
  FWeghtVolumeRatio := Value;
end;

function TCustomShipmentRow.GetFlgnotaxw: IJanuaField;
begin
  Result := FFlgnotaxw;
end;

procedure TCustomShipmentRow.SetFlgnotaxw(const Value: IJanuaField);
begin
  FFlgnotaxw := Value;
end;

function TCustomShipmentRow.GetActualWeight: IJanuaField;
begin
  Result := FActualWeight;
end;

procedure TCustomShipmentRow.SetActualWeight(const Value: IJanuaField);
begin
  FActualWeight := Value;
end;

function TCustomShipmentRow.GetActualVolume: IJanuaField;
begin
  Result := FActualVolume;
end;

procedure TCustomShipmentRow.SetActualVolume(const Value: IJanuaField);
begin
  FActualVolume := Value;
end;

function TCustomShipmentRow.GetBookingNumber: IJanuaField;
begin
  Result := FBookingNumber;
end;

procedure TCustomShipmentRow.SetBookingNumber(const Value: IJanuaField);
begin
  FBookingNumber := Value;
end;

function TCustomShipmentRow.GetCustomsTariff: IJanuaField;
begin
  Result := FCustomsTariff;
end;

procedure TCustomShipmentRow.SetCustomsTariff(const Value: IJanuaField);
begin
  FCustomsTariff := Value;
end;

function TCustomShipmentRow.GetSizeWeight: IJanuaField;
begin
  Result := FSizeWeight;
end;

procedure TCustomShipmentRow.SetSizeWeight(const Value: IJanuaField);
begin
  FSizeWeight := Value;
end;

function TCustomShipmentRow.GetSizeLength: IJanuaField;
begin
  Result := FSizeLength;
end;

procedure TCustomShipmentRow.SetSizeLength(const Value: IJanuaField);
begin
  FSizeLength := Value;
end;

function TCustomShipmentRow.GetSizeHeight: IJanuaField;
begin
  Result := FSizeHeight;
end;

procedure TCustomShipmentRow.SetSizeHeight(const Value: IJanuaField);
begin
  FSizeHeight := Value;
end;

function TCustomShipmentRow.GetSupplierWarehouseCode: IJanuaField;
begin
  Result := FSupplierWarehouseCode;
end;

procedure TCustomShipmentRow.SetSupplierWarehouseCode(const Value: IJanuaField);
begin
  FSupplierWarehouseCode := Value;
end;

function TCustomShipmentRow.GetSupplierWarehouseId: IJanuaField;
begin
  Result := FSupplierWarehouseId;
end;

procedure TCustomShipmentRow.SetSupplierWarehouseId(const Value: IJanuaField);
begin
  FSupplierWarehouseId := Value;
end;

function TCustomShipmentRow.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomShipmentRow.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomShipmentRow.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomShipmentRow.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomShipmentRow.GetItemId: IJanuaField;
begin
  Result := FItemId;
end;

procedure TCustomShipmentRow.SetItemId(const Value: IJanuaField);
begin
  FItemId := Value;
end;

{ TCustomShipmentRows }
constructor TCustomShipmentRows.Create;
begin
  inherited;

end;

function TCustomShipmentRows.GetYear: IJanuaField;
begin
  Result := GetCustomShipmentRow.Year;
end;

procedure TCustomShipmentRows.SetYear(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Year := Value;
end;

function TCustomShipmentRows.GetShipmentId: IJanuaField;
begin
  Result := GetCustomShipmentRow.ShipmentId;
end;

procedure TCustomShipmentRows.SetShipmentId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.ShipmentId := Value;
end;

function TCustomShipmentRows.GetOfficeId: IJanuaField;
begin
  Result := GetCustomShipmentRow.OfficeId;
end;

procedure TCustomShipmentRows.SetOfficeId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.OfficeId := Value;
end;

function TCustomShipmentRows.GetWarehouseId: IJanuaField;
begin
  Result := GetCustomShipmentRow.WarehouseId;
end;

procedure TCustomShipmentRows.SetWarehouseId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.WarehouseId := Value;
end;

function TCustomShipmentRows.GetPos: IJanuaField;
begin
  Result := GetCustomShipmentRow.Pos;
end;

procedure TCustomShipmentRows.SetPos(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Pos := Value;
end;

function TCustomShipmentRows.GetQuantity: IJanuaField;
begin
  Result := GetCustomShipmentRow.Quantity;
end;

procedure TCustomShipmentRows.SetQuantity(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Quantity := Value;
end;

function TCustomShipmentRows.GetWeight: IJanuaField;
begin
  Result := GetCustomShipmentRow.Weight;
end;

procedure TCustomShipmentRows.SetWeight(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Weight := Value;
end;

function TCustomShipmentRows.GetVolume: IJanuaField;
begin
  Result := GetCustomShipmentRow.Volume;
end;

procedure TCustomShipmentRows.SetVolume(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Volume := Value;
end;

function TCustomShipmentRows.GetBooking: IJanuaField;
begin
  Result := GetCustomShipmentRow.Booking;
end;

procedure TCustomShipmentRows.SetBooking(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Booking := Value;
end;

function TCustomShipmentRows.GetCntrType: IJanuaField;
begin
  Result := GetCustomShipmentRow.CntrType;
end;

procedure TCustomShipmentRows.SetCntrType(const Value: IJanuaField);
begin
  GetCustomShipmentRow.CntrType := Value;
end;

function TCustomShipmentRows.GetCntrCode: IJanuaField;
begin
  Result := GetCustomShipmentRow.CntrCode;
end;

procedure TCustomShipmentRows.SetCntrCode(const Value: IJanuaField);
begin
  GetCustomShipmentRow.CntrCode := Value;
end;

function TCustomShipmentRows.GetCntrSeal: IJanuaField;
begin
  Result := GetCustomShipmentRow.CntrSeal;
end;

procedure TCustomShipmentRows.SetCntrSeal(const Value: IJanuaField);
begin
  GetCustomShipmentRow.CntrSeal := Value;
end;

function TCustomShipmentRows.GetPkgTypeCode: IJanuaField;
begin
  Result := GetCustomShipmentRow.PkgTypeCode;
end;

procedure TCustomShipmentRows.SetPkgTypeCode(const Value: IJanuaField);
begin
  GetCustomShipmentRow.PkgTypeCode := Value;
end;

function TCustomShipmentRows.GetPo1: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po1;
end;

procedure TCustomShipmentRows.SetPo1(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po1 := Value;
end;

function TCustomShipmentRows.GetPo2: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po2;
end;

procedure TCustomShipmentRows.SetPo2(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po2 := Value;
end;

function TCustomShipmentRows.GetPo3: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po3;
end;

procedure TCustomShipmentRows.SetPo3(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po3 := Value;
end;

function TCustomShipmentRows.GetPo4: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po4;
end;

procedure TCustomShipmentRows.SetPo4(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po4 := Value;
end;

function TCustomShipmentRows.GetPo5: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po5;
end;

procedure TCustomShipmentRows.SetPo5(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po5 := Value;
end;

function TCustomShipmentRows.GetPo6: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po6;
end;

procedure TCustomShipmentRows.SetPo6(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po6 := Value;
end;

function TCustomShipmentRows.GetPo7: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po7;
end;

procedure TCustomShipmentRows.SetPo7(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po7 := Value;
end;

function TCustomShipmentRows.GetPo8: IJanuaField;
begin
  Result := GetCustomShipmentRow.Po8;
end;

procedure TCustomShipmentRows.SetPo8(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Po8 := Value;
end;

function TCustomShipmentRows.GetFreightAmount: IJanuaField;
begin
  Result := GetCustomShipmentRow.FreightAmount;
end;

procedure TCustomShipmentRows.SetFreightAmount(const Value: IJanuaField);
begin
  GetCustomShipmentRow.FreightAmount := Value;
end;

function TCustomShipmentRows.GetMarks: IJanuaField;
begin
  Result := GetCustomShipmentRow.Marks;
end;

procedure TCustomShipmentRows.SetMarks(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Marks := Value;
end;

function TCustomShipmentRows.GetDescription1: IJanuaField;
begin
  Result := GetCustomShipmentRow.Description1;
end;

procedure TCustomShipmentRows.SetDescription1(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Description1 := Value;
end;

function TCustomShipmentRows.GetDescription2: IJanuaField;
begin
  Result := GetCustomShipmentRow.Description2;
end;

procedure TCustomShipmentRows.SetDescription2(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Description2 := Value;
end;

function TCustomShipmentRows.GetBol: IJanuaField;
begin
  Result := GetCustomShipmentRow.Bol;
end;

procedure TCustomShipmentRows.SetBol(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Bol := Value;
end;

function TCustomShipmentRows.GetBolhouse: IJanuaField;
begin
  Result := GetCustomShipmentRow.Bolhouse;
end;

procedure TCustomShipmentRows.SetBolhouse(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Bolhouse := Value;
end;

function TCustomShipmentRows.GetNote: IJanuaField;
begin
  Result := GetCustomShipmentRow.Note;
end;

procedure TCustomShipmentRows.SetNote(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Note := Value;
end;

function TCustomShipmentRows.GetTemperature: IJanuaField;
begin
  Result := GetCustomShipmentRow.Temperature;
end;

procedure TCustomShipmentRows.SetTemperature(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Temperature := Value;
end;

function TCustomShipmentRows.GetSupplier: IJanuaField;
begin
  Result := GetCustomShipmentRow.Supplier;
end;

procedure TCustomShipmentRows.SetSupplier(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Supplier := Value;
end;

function TCustomShipmentRows.GetSupplierCode: IJanuaField;
begin
  Result := GetCustomShipmentRow.SupplierCode;
end;

procedure TCustomShipmentRows.SetSupplierCode(const Value: IJanuaField);
begin
  GetCustomShipmentRow.SupplierCode := Value;
end;

function TCustomShipmentRows.GetWarehouseReceiptDate: IJanuaField;
begin
  Result := GetCustomShipmentRow.WarehouseReceiptDate;
end;

procedure TCustomShipmentRows.SetWarehouseReceiptDate(const Value: IJanuaField);
begin
  GetCustomShipmentRow.WarehouseReceiptDate := Value;
end;

function TCustomShipmentRows.GetInvoiceNumber: IJanuaField;
begin
  Result := GetCustomShipmentRow.InvoiceNumber;
end;

procedure TCustomShipmentRows.SetInvoiceNumber(const Value: IJanuaField);
begin
  GetCustomShipmentRow.InvoiceNumber := Value;
end;

function TCustomShipmentRows.GetInvoiceDate: IJanuaField;
begin
  Result := GetCustomShipmentRow.InvoiceDate;
end;

procedure TCustomShipmentRows.SetInvoiceDate(const Value: IJanuaField);
begin
  GetCustomShipmentRow.InvoiceDate := Value;
end;

function TCustomShipmentRows.GetTaxableWeight: IJanuaField;
begin
  Result := GetCustomShipmentRow.TaxableWeight;
end;

procedure TCustomShipmentRows.SetTaxableWeight(const Value: IJanuaField);
begin
  GetCustomShipmentRow.TaxableWeight := Value;
end;

function TCustomShipmentRows.GetMunitId: IJanuaField;
begin
  Result := GetCustomShipmentRow.MunitId;
end;

procedure TCustomShipmentRows.SetMunitId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.MunitId := Value;
end;

function TCustomShipmentRows.GetValue: IJanuaField;
begin
  Result := GetCustomShipmentRow.Value;
end;

procedure TCustomShipmentRows.SetValue(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Value := Value;
end;

function TCustomShipmentRows.GetCurrencyId: IJanuaField;
begin
  Result := GetCustomShipmentRow.CurrencyId;
end;

procedure TCustomShipmentRows.SetCurrencyId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.CurrencyId := Value;
end;

function TCustomShipmentRows.GetInvoiceAmount: IJanuaField;
begin
  Result := GetCustomShipmentRow.InvoiceAmount;
end;

procedure TCustomShipmentRows.SetInvoiceAmount(const Value: IJanuaField);
begin
  GetCustomShipmentRow.InvoiceAmount := Value;
end;

function TCustomShipmentRows.GetExchangeRate: IJanuaField;
begin
  Result := GetCustomShipmentRow.ExchangeRate;
end;

procedure TCustomShipmentRows.SetExchangeRate(const Value: IJanuaField);
begin
  GetCustomShipmentRow.ExchangeRate := Value;
end;

function TCustomShipmentRows.GetDimentions: IJanuaField;
begin
  Result := GetCustomShipmentRow.Dimentions;
end;

procedure TCustomShipmentRows.SetDimentions(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Dimentions := Value;
end;

function TCustomShipmentRows.GetRemarks: IJanuaField;
begin
  Result := GetCustomShipmentRow.Remarks;
end;

procedure TCustomShipmentRows.SetRemarks(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Remarks := Value;
end;

function TCustomShipmentRows.GetWeghtVolumeRatio: IJanuaField;
begin
  Result := GetCustomShipmentRow.WeghtVolumeRatio;
end;

procedure TCustomShipmentRows.SetWeghtVolumeRatio(const Value: IJanuaField);
begin
  GetCustomShipmentRow.WeghtVolumeRatio := Value;
end;

function TCustomShipmentRows.GetFlgnotaxw: IJanuaField;
begin
  Result := GetCustomShipmentRow.Flgnotaxw;
end;

procedure TCustomShipmentRows.SetFlgnotaxw(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Flgnotaxw := Value;
end;

function TCustomShipmentRows.GetActualWeight: IJanuaField;
begin
  Result := GetCustomShipmentRow.ActualWeight;
end;

procedure TCustomShipmentRows.SetActualWeight(const Value: IJanuaField);
begin
  GetCustomShipmentRow.ActualWeight := Value;
end;

function TCustomShipmentRows.GetActualVolume: IJanuaField;
begin
  Result := GetCustomShipmentRow.ActualVolume;
end;

procedure TCustomShipmentRows.SetActualVolume(const Value: IJanuaField);
begin
  GetCustomShipmentRow.ActualVolume := Value;
end;

function TCustomShipmentRows.GetBookingNumber: IJanuaField;
begin
  Result := GetCustomShipmentRow.BookingNumber;
end;

procedure TCustomShipmentRows.SetBookingNumber(const Value: IJanuaField);
begin
  GetCustomShipmentRow.BookingNumber := Value;
end;

function TCustomShipmentRows.GetCustomShipmentRow: ICustomShipmentRow;
begin
  Result := FRecord as ICustomShipmentRow
end;

function TCustomShipmentRows.GetCustomsTariff: IJanuaField;
begin
  Result := GetCustomShipmentRow.CustomsTariff;
end;

procedure TCustomShipmentRows.SetCustomsTariff(const Value: IJanuaField);
begin
  GetCustomShipmentRow.CustomsTariff := Value;
end;

function TCustomShipmentRows.GetSizeWeight: IJanuaField;
begin
  Result := GetCustomShipmentRow.SizeWeight;
end;

procedure TCustomShipmentRows.SetSizeWeight(const Value: IJanuaField);
begin
  GetCustomShipmentRow.SizeWeight := Value;
end;

function TCustomShipmentRows.GetSizeLength: IJanuaField;
begin
  Result := GetCustomShipmentRow.SizeLength;
end;

procedure TCustomShipmentRows.SetSizeLength(const Value: IJanuaField);
begin
  GetCustomShipmentRow.SizeLength := Value;
end;

function TCustomShipmentRows.GetSizeHeight: IJanuaField;
begin
  Result := GetCustomShipmentRow.SizeHeight;
end;

procedure TCustomShipmentRows.SetSizeHeight(const Value: IJanuaField);
begin
  GetCustomShipmentRow.SizeHeight := Value;
end;

function TCustomShipmentRows.GetSupplierWarehouseCode: IJanuaField;
begin
  Result := GetCustomShipmentRow.SupplierWarehouseCode;
end;

procedure TCustomShipmentRows.SetSupplierWarehouseCode(const Value: IJanuaField);
begin
  GetCustomShipmentRow.SupplierWarehouseCode := Value;
end;

function TCustomShipmentRows.GetSupplierWarehouseId: IJanuaField;
begin
  Result := GetCustomShipmentRow.SupplierWarehouseId;
end;

procedure TCustomShipmentRows.SetSupplierWarehouseId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.SupplierWarehouseId := Value;
end;

function TCustomShipmentRows.GetJguid: IJanuaField;
begin
  Result := GetCustomShipmentRow.Jguid;
end;

procedure TCustomShipmentRows.SetJguid(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Jguid := Value;
end;

function TCustomShipmentRows.GetId: IJanuaField;
begin
  Result := GetCustomShipmentRow.Id;
end;

procedure TCustomShipmentRows.SetId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.Id := Value;
end;

function TCustomShipmentRows.GetItemId: IJanuaField;
begin
  Result := GetCustomShipmentRow.ItemId;
end;

procedure TCustomShipmentRows.SetItemId(const Value: IJanuaField);
begin
  GetCustomShipmentRow.ItemId := Value;
end;

end.
