unit JOrm.Documents.Types.Custom.Impl;

interface

uses Janua.Orm.Intf, Janua.Orm.Impl, Janua.Core.Types, JOrm.Documents.Types.Intf;

// ------------------------------------------ Impl object interface ----------------------------------

type
  TCustomDocType = class(TJanuaRecord, IDocType)
  private
    FId: IJanuaField;
    FDbSchemaId: IJanuaField;
    FCode: IJanuaField;
    FInOut: IJanuaField;
    FCash: IJanuaField;
    FCredit: IJanuaField;
    FDescription: IJanuaField;
    FFlgOrder: IJanuaField;
    FFlgQuotation: IJanuaField;
    FFlgCustomers: IJanuaField;
    FFlgSuppliers: IJanuaField;
    FCurrencyId: IJanuaField;
    FIsAccouting: IJanuaField;
    FAcGroupCode: IJanuaField;
    FAcLedgerCode: IJanuaField;
    FAcSubledgerCode: IJanuaField;
    FAcGroupVatCode: IJanuaField;
    FAcLedgerVatCode: IJanuaField;
    FAcSubledgerVatCode: IJanuaField;
    FAcGroupTaxableAmntCode: IJanuaField;
    FAcLedgerTaxableAmntCode: IJanuaField;
    FAcSubledgerTaxableAmntCode: IJanuaField;
    FAcText: IJanuaField;
    FAcEntry: IJanuaField;
    FAcEntryPos: IJanuaField;
    FAcVatEntryPos: IJanuaField;
    FAcTaxableAmntEntryPos: IJanuaField;
    FGroupTransFeesCod: IJanuaField;
    FLedgerTransFeesCod: IJanuaField;
    FSubledgerTransFeesCod: IJanuaField;
    FAcTransFeesEntry: IJanuaField;
    FIsoDescription: IJanuaField;
    FAnGroupId: IJanuaField;
    FInsertDate: IJanuaField;
    FUpdateDate: IJanuaField;
    FUserInsert: IJanuaField;
    FUserUpdate: IJanuaField;
    FLocal: IJanuaField;
    FDtVatRegistry: IJanuaField;
    FBillBook: IJanuaField;
    FTypeGroup: IJanuaField;
    FTypeAnagraphId: IJanuaField;
    FShortDescription: IJanuaField;
    FNOSTRODOC: IJanuaField;
    FCASSA: IJanuaField;
    FWarehouseRegister: IJanuaField;
    FReverseDocType: IJanuaField;
    FTypeGroupId: IJanuaField;
    FJguid: IJanuaField;
    FCustomsDocDate: IJanuaField;
    FCustomsDocCin: IJanuaField;
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetInOut: IJanuaField;
    procedure SetInOut(const Value: IJanuaField);
    function GetCash: IJanuaField;
    procedure SetCash(const Value: IJanuaField);
    function GetCredit: IJanuaField;
    procedure SetCredit(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetFlgOrder: IJanuaField;
    procedure SetFlgOrder(const Value: IJanuaField);
    function GetFlgQuotation: IJanuaField;
    procedure SetFlgQuotation(const Value: IJanuaField);
    function GetFlgCustomers: IJanuaField;
    procedure SetFlgCustomers(const Value: IJanuaField);
    function GetFlgSuppliers: IJanuaField;
    procedure SetFlgSuppliers(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetIsAccouting: IJanuaField;
    procedure SetIsAccouting(const Value: IJanuaField);
    function GetAcGroupCode: IJanuaField;
    procedure SetAcGroupCode(const Value: IJanuaField);
    function GetAcLedgerCode: IJanuaField;
    procedure SetAcLedgerCode(const Value: IJanuaField);
    function GetAcSubledgerCode: IJanuaField;
    procedure SetAcSubledgerCode(const Value: IJanuaField);
    function GetAcGroupVatCode: IJanuaField;
    procedure SetAcGroupVatCode(const Value: IJanuaField);
    function GetAcLedgerVatCode: IJanuaField;
    procedure SetAcLedgerVatCode(const Value: IJanuaField);
    function GetAcSubledgerVatCode: IJanuaField;
    procedure SetAcSubledgerVatCode(const Value: IJanuaField);
    function GetAcGroupTaxableAmntCode: IJanuaField;
    procedure SetAcGroupTaxableAmntCode(const Value: IJanuaField);
    function GetAcLedgerTaxableAmntCode: IJanuaField;
    procedure SetAcLedgerTaxableAmntCode(const Value: IJanuaField);
    function GetAcSubledgerTaxableAmntCode: IJanuaField;
    procedure SetAcSubledgerTaxableAmntCode(const Value: IJanuaField);
    function GetAcText: IJanuaField;
    procedure SetAcText(const Value: IJanuaField);
    function GetAcEntry: IJanuaField;
    procedure SetAcEntry(const Value: IJanuaField);
    function GetAcEntryPos: IJanuaField;
    procedure SetAcEntryPos(const Value: IJanuaField);
    function GetAcVatEntryPos: IJanuaField;
    procedure SetAcVatEntryPos(const Value: IJanuaField);
    function GetAcTaxableAmntEntryPos: IJanuaField;
    procedure SetAcTaxableAmntEntryPos(const Value: IJanuaField);
    function GetGroupTransFeesCod: IJanuaField;
    procedure SetGroupTransFeesCod(const Value: IJanuaField);
    function GetLedgerTransFeesCod: IJanuaField;
    procedure SetLedgerTransFeesCod(const Value: IJanuaField);
    function GetSubledgerTransFeesCod: IJanuaField;
    procedure SetSubledgerTransFeesCod(const Value: IJanuaField);
    function GetAcTransFeesEntry: IJanuaField;
    procedure SetAcTransFeesEntry(const Value: IJanuaField);
    function GetIsoDescription: IJanuaField;
    procedure SetIsoDescription(const Value: IJanuaField);
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetDtVatRegistry: IJanuaField;
    procedure SetDtVatRegistry(const Value: IJanuaField);
    function GetBillBook: IJanuaField;
    procedure SetBillBook(const Value: IJanuaField);
    function GetTypeGroup: IJanuaField;
    procedure SetTypeGroup(const Value: IJanuaField);
    function GetTypeAnagraphId: IJanuaField;
    procedure SetTypeAnagraphId(const Value: IJanuaField);
    function GetShortDescription: IJanuaField;
    procedure SetShortDescription(const Value: IJanuaField);
    function GetNOSTRODOC: IJanuaField;
    procedure SetNOSTRODOC(const Value: IJanuaField);
    function GetCASSA: IJanuaField;
    procedure SetCASSA(const Value: IJanuaField);
    function GetWarehouseRegister: IJanuaField;
    procedure SetWarehouseRegister(const Value: IJanuaField);
    function GetReverseDocType: IJanuaField;
    procedure SetReverseDocType(const Value: IJanuaField);
    function GetTypeGroupId: IJanuaField;
    procedure SetTypeGroupId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCustomsDocDate: IJanuaField;
    procedure SetCustomsDocDate(const Value: IJanuaField);
    function GetCustomsDocCin: IJanuaField;
    procedure SetCustomsDocCin(const Value: IJanuaField);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Code: IJanuaField read GetCode write SetCode;
    property InOut: IJanuaField read GetInOut write SetInOut;
    property Cash: IJanuaField read GetCash write SetCash;
    property Credit: IJanuaField read GetCredit write SetCredit;
    property Description: IJanuaField read GetDescription write SetDescription;
    property FlgOrder: IJanuaField read GetFlgOrder write SetFlgOrder;
    property FlgQuotation: IJanuaField read GetFlgQuotation write SetFlgQuotation;
    property FlgCustomers: IJanuaField read GetFlgCustomers write SetFlgCustomers;
    property FlgSuppliers: IJanuaField read GetFlgSuppliers write SetFlgSuppliers;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property IsAccouting: IJanuaField read GetIsAccouting write SetIsAccouting;
    property AcGroupCode: IJanuaField read GetAcGroupCode write SetAcGroupCode;
    property AcLedgerCode: IJanuaField read GetAcLedgerCode write SetAcLedgerCode;
    property AcSubledgerCode: IJanuaField read GetAcSubledgerCode write SetAcSubledgerCode;
    property AcGroupVatCode: IJanuaField read GetAcGroupVatCode write SetAcGroupVatCode;
    property AcLedgerVatCode: IJanuaField read GetAcLedgerVatCode write SetAcLedgerVatCode;
    property AcSubledgerVatCode: IJanuaField read GetAcSubledgerVatCode write SetAcSubledgerVatCode;
    property AcGroupTaxableAmntCode: IJanuaField read GetAcGroupTaxableAmntCode write SetAcGroupTaxableAmntCode;
    property AcLedgerTaxableAmntCode: IJanuaField read GetAcLedgerTaxableAmntCode write SetAcLedgerTaxableAmntCode;
    property AcSubledgerTaxableAmntCode: IJanuaField read GetAcSubledgerTaxableAmntCode
      write SetAcSubledgerTaxableAmntCode;
    property AcText: IJanuaField read GetAcText write SetAcText;
    property AcEntry: IJanuaField read GetAcEntry write SetAcEntry;
    property AcEntryPos: IJanuaField read GetAcEntryPos write SetAcEntryPos;
    property AcVatEntryPos: IJanuaField read GetAcVatEntryPos write SetAcVatEntryPos;
    property AcTaxableAmntEntryPos: IJanuaField read GetAcTaxableAmntEntryPos write SetAcTaxableAmntEntryPos;
    property GroupTransFeesCod: IJanuaField read GetGroupTransFeesCod write SetGroupTransFeesCod;
    property LedgerTransFeesCod: IJanuaField read GetLedgerTransFeesCod write SetLedgerTransFeesCod;
    property SubledgerTransFeesCod: IJanuaField read GetSubledgerTransFeesCod write SetSubledgerTransFeesCod;
    property AcTransFeesEntry: IJanuaField read GetAcTransFeesEntry write SetAcTransFeesEntry;
    property IsoDescription: IJanuaField read GetIsoDescription write SetIsoDescription;
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Local: IJanuaField read GetLocal write SetLocal;
    property DtVatRegistry: IJanuaField read GetDtVatRegistry write SetDtVatRegistry;
    property BillBook: IJanuaField read GetBillBook write SetBillBook;
    property TypeGroup: IJanuaField read GetTypeGroup write SetTypeGroup;
    property TypeAnagraphId: IJanuaField read GetTypeAnagraphId write SetTypeAnagraphId;
    property ShortDescription: IJanuaField read GetShortDescription write SetShortDescription;
    property NOSTRODOC: IJanuaField read GetNOSTRODOC write SetNOSTRODOC;
    property CASSA: IJanuaField read GetCASSA write SetCASSA;
    property WarehouseRegister: IJanuaField read GetWarehouseRegister write SetWarehouseRegister;
    property ReverseDocType: IJanuaField read GetReverseDocType write SetReverseDocType;
    property TypeGroupId: IJanuaField read GetTypeGroupId write SetTypeGroupId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CustomsDocDate: IJanuaField read GetCustomsDocDate write SetCustomsDocDate;
    property CustomsDocCin: IJanuaField read GetCustomsDocCin write SetCustomsDocCin;

  end;

  TCustomDocTypes = class(TJanuaRecordSet, IJanuaRecordSet, IDocTypes)
  private
    function GetId: IJanuaField;
    procedure SetId(const Value: IJanuaField);
    function GetDbSchemaId: IJanuaField;
    procedure SetDbSchemaId(const Value: IJanuaField);
    function GetCode: IJanuaField;
    procedure SetCode(const Value: IJanuaField);
    function GetInOut: IJanuaField;
    procedure SetInOut(const Value: IJanuaField);
    function GetCash: IJanuaField;
    procedure SetCash(const Value: IJanuaField);
    function GetCredit: IJanuaField;
    procedure SetCredit(const Value: IJanuaField);
    function GetDescription: IJanuaField;
    procedure SetDescription(const Value: IJanuaField);
    function GetFlgOrder: IJanuaField;
    procedure SetFlgOrder(const Value: IJanuaField);
    function GetFlgQuotation: IJanuaField;
    procedure SetFlgQuotation(const Value: IJanuaField);
    function GetFlgCustomers: IJanuaField;
    procedure SetFlgCustomers(const Value: IJanuaField);
    function GetFlgSuppliers: IJanuaField;
    procedure SetFlgSuppliers(const Value: IJanuaField);
    function GetCurrencyId: IJanuaField;
    procedure SetCurrencyId(const Value: IJanuaField);
    function GetIsAccouting: IJanuaField;
    procedure SetIsAccouting(const Value: IJanuaField);
    function GetAcGroupCode: IJanuaField;
    procedure SetAcGroupCode(const Value: IJanuaField);
    function GetAcLedgerCode: IJanuaField;
    procedure SetAcLedgerCode(const Value: IJanuaField);
    function GetAcSubledgerCode: IJanuaField;
    procedure SetAcSubledgerCode(const Value: IJanuaField);
    function GetAcGroupVatCode: IJanuaField;
    procedure SetAcGroupVatCode(const Value: IJanuaField);
    function GetAcLedgerVatCode: IJanuaField;
    procedure SetAcLedgerVatCode(const Value: IJanuaField);
    function GetAcSubledgerVatCode: IJanuaField;
    procedure SetAcSubledgerVatCode(const Value: IJanuaField);
    function GetAcGroupTaxableAmntCode: IJanuaField;
    procedure SetAcGroupTaxableAmntCode(const Value: IJanuaField);
    function GetAcLedgerTaxableAmntCode: IJanuaField;
    procedure SetAcLedgerTaxableAmntCode(const Value: IJanuaField);
    function GetAcSubledgerTaxableAmntCode: IJanuaField;
    procedure SetAcSubledgerTaxableAmntCode(const Value: IJanuaField);
    function GetAcText: IJanuaField;
    procedure SetAcText(const Value: IJanuaField);
    function GetAcEntry: IJanuaField;
    procedure SetAcEntry(const Value: IJanuaField);
    function GetAcEntryPos: IJanuaField;
    procedure SetAcEntryPos(const Value: IJanuaField);
    function GetAcVatEntryPos: IJanuaField;
    procedure SetAcVatEntryPos(const Value: IJanuaField);
    function GetAcTaxableAmntEntryPos: IJanuaField;
    procedure SetAcTaxableAmntEntryPos(const Value: IJanuaField);
    function GetGroupTransFeesCod: IJanuaField;
    procedure SetGroupTransFeesCod(const Value: IJanuaField);
    function GetLedgerTransFeesCod: IJanuaField;
    procedure SetLedgerTransFeesCod(const Value: IJanuaField);
    function GetSubledgerTransFeesCod: IJanuaField;
    procedure SetSubledgerTransFeesCod(const Value: IJanuaField);
    function GetAcTransFeesEntry: IJanuaField;
    procedure SetAcTransFeesEntry(const Value: IJanuaField);
    function GetIsoDescription: IJanuaField;
    procedure SetIsoDescription(const Value: IJanuaField);
    function GetAnGroupId: IJanuaField;
    procedure SetAnGroupId(const Value: IJanuaField);
    function GetInsertDate: IJanuaField;
    procedure SetInsertDate(const Value: IJanuaField);
    function GetUpdateDate: IJanuaField;
    procedure SetUpdateDate(const Value: IJanuaField);
    function GetUserInsert: IJanuaField;
    procedure SetUserInsert(const Value: IJanuaField);
    function GetUserUpdate: IJanuaField;
    procedure SetUserUpdate(const Value: IJanuaField);
    function GetLocal: IJanuaField;
    procedure SetLocal(const Value: IJanuaField);
    function GetDtVatRegistry: IJanuaField;
    procedure SetDtVatRegistry(const Value: IJanuaField);
    function GetBillBook: IJanuaField;
    procedure SetBillBook(const Value: IJanuaField);
    function GetTypeGroup: IJanuaField;
    procedure SetTypeGroup(const Value: IJanuaField);
    function GetTypeAnagraphId: IJanuaField;
    procedure SetTypeAnagraphId(const Value: IJanuaField);
    function GetShortDescription: IJanuaField;
    procedure SetShortDescription(const Value: IJanuaField);
    function GetNOSTRODOC: IJanuaField;
    procedure SetNOSTRODOC(const Value: IJanuaField);
    function GetCASSA: IJanuaField;
    procedure SetCASSA(const Value: IJanuaField);
    function GetWarehouseRegister: IJanuaField;
    procedure SetWarehouseRegister(const Value: IJanuaField);
    function GetReverseDocType: IJanuaField;
    procedure SetReverseDocType(const Value: IJanuaField);
    function GetTypeGroupId: IJanuaField;
    procedure SetTypeGroupId(const Value: IJanuaField);
    function GetJguid: IJanuaField;
    procedure SetJguid(const Value: IJanuaField);
    function GetCustomsDocDate: IJanuaField;
    procedure SetCustomsDocDate(const Value: IJanuaField);
    function GetCustomsDocCin: IJanuaField;
    procedure SetCustomsDocCin(const Value: IJanuaField);
    function GetDocType: IDocType;
    procedure SetDocType(const Value: IDocType);
  public
    constructor Create; override;
    property Id: IJanuaField read GetId write SetId;
    property DbSchemaId: IJanuaField read GetDbSchemaId write SetDbSchemaId;
    property Code: IJanuaField read GetCode write SetCode;
    property InOut: IJanuaField read GetInOut write SetInOut;
    property Cash: IJanuaField read GetCash write SetCash;
    property Credit: IJanuaField read GetCredit write SetCredit;
    property Description: IJanuaField read GetDescription write SetDescription;
    property FlgOrder: IJanuaField read GetFlgOrder write SetFlgOrder;
    property FlgQuotation: IJanuaField read GetFlgQuotation write SetFlgQuotation;
    property FlgCustomers: IJanuaField read GetFlgCustomers write SetFlgCustomers;
    property FlgSuppliers: IJanuaField read GetFlgSuppliers write SetFlgSuppliers;
    property CurrencyId: IJanuaField read GetCurrencyId write SetCurrencyId;
    property IsAccouting: IJanuaField read GetIsAccouting write SetIsAccouting;
    property AcGroupCode: IJanuaField read GetAcGroupCode write SetAcGroupCode;
    property AcLedgerCode: IJanuaField read GetAcLedgerCode write SetAcLedgerCode;
    property AcSubledgerCode: IJanuaField read GetAcSubledgerCode write SetAcSubledgerCode;
    property AcGroupVatCode: IJanuaField read GetAcGroupVatCode write SetAcGroupVatCode;
    property AcLedgerVatCode: IJanuaField read GetAcLedgerVatCode write SetAcLedgerVatCode;
    property AcSubledgerVatCode: IJanuaField read GetAcSubledgerVatCode write SetAcSubledgerVatCode;
    property AcGroupTaxableAmntCode: IJanuaField read GetAcGroupTaxableAmntCode write SetAcGroupTaxableAmntCode;
    property AcLedgerTaxableAmntCode: IJanuaField read GetAcLedgerTaxableAmntCode write SetAcLedgerTaxableAmntCode;
    property AcSubledgerTaxableAmntCode: IJanuaField read GetAcSubledgerTaxableAmntCode
      write SetAcSubledgerTaxableAmntCode;
    property AcText: IJanuaField read GetAcText write SetAcText;
    property AcEntry: IJanuaField read GetAcEntry write SetAcEntry;
    property AcEntryPos: IJanuaField read GetAcEntryPos write SetAcEntryPos;
    property AcVatEntryPos: IJanuaField read GetAcVatEntryPos write SetAcVatEntryPos;
    property AcTaxableAmntEntryPos: IJanuaField read GetAcTaxableAmntEntryPos write SetAcTaxableAmntEntryPos;
    property GroupTransFeesCod: IJanuaField read GetGroupTransFeesCod write SetGroupTransFeesCod;
    property LedgerTransFeesCod: IJanuaField read GetLedgerTransFeesCod write SetLedgerTransFeesCod;
    property SubledgerTransFeesCod: IJanuaField read GetSubledgerTransFeesCod write SetSubledgerTransFeesCod;
    property AcTransFeesEntry: IJanuaField read GetAcTransFeesEntry write SetAcTransFeesEntry;
    property IsoDescription: IJanuaField read GetIsoDescription write SetIsoDescription;
    property AnGroupId: IJanuaField read GetAnGroupId write SetAnGroupId;
    property InsertDate: IJanuaField read GetInsertDate write SetInsertDate;
    property UpdateDate: IJanuaField read GetUpdateDate write SetUpdateDate;
    property UserInsert: IJanuaField read GetUserInsert write SetUserInsert;
    property UserUpdate: IJanuaField read GetUserUpdate write SetUserUpdate;
    property Local: IJanuaField read GetLocal write SetLocal;
    property DtVatRegistry: IJanuaField read GetDtVatRegistry write SetDtVatRegistry;
    property BillBook: IJanuaField read GetBillBook write SetBillBook;
    property TypeGroup: IJanuaField read GetTypeGroup write SetTypeGroup;
    property TypeAnagraphId: IJanuaField read GetTypeAnagraphId write SetTypeAnagraphId;
    property ShortDescription: IJanuaField read GetShortDescription write SetShortDescription;
    property NOSTRODOC: IJanuaField read GetNOSTRODOC write SetNOSTRODOC;
    property CASSA: IJanuaField read GetCASSA write SetCASSA;
    property WarehouseRegister: IJanuaField read GetWarehouseRegister write SetWarehouseRegister;
    property ReverseDocType: IJanuaField read GetReverseDocType write SetReverseDocType;
    property TypeGroupId: IJanuaField read GetTypeGroupId write SetTypeGroupId;
    property Jguid: IJanuaField read GetJguid write SetJguid;
    property CustomsDocDate: IJanuaField read GetCustomsDocDate write SetCustomsDocDate;
    property CustomsDocCin: IJanuaField read GetCustomsDocCin write SetCustomsDocCin;
    property DocType: IDocType read GetDocType write SetDocType;
  end;

  TDocTypeFactory = class
    class function CreateRecord(const aKey: string): IDocType; overload;
    class function CreateRecordset(const aName: string; const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage)
      : IDocTypes; overload;
  end;

implementation

// ------------------------------------------ Impl TDocType -------------------------------

{ TCustomDocType }

constructor TCustomDocType.Create;
begin
  inherited;
  FPrefix := 'dtps';
  FId := AddCreateField(TJanuaFieldType.jptSmallint, 'id', 'id');
  FDbSchemaId := AddCreateField(TJanuaFieldType.jptInteger, 'db_schema_id', 'db_schema_id');
  FCode := AddCreateField(TJanuaFieldType.jptString, 'code', 'code');
  FInOut := AddCreateField(TJanuaFieldType.jptFloat, 'in_out', 'in_out');
  FCash := AddCreateField(TJanuaFieldType.jptFloat, 'cash', 'cash');
  FCredit := AddCreateField(TJanuaFieldType.jptFloat, 'credit', 'credit');
  FDescription := AddCreateField(TJanuaFieldType.jptString, 'description', 'description');
  FFlgOrder := AddCreateField(TJanuaFieldType.jptFloat, 'flg_order', 'flg_order');
  FFlgQuotation := AddCreateField(TJanuaFieldType.jptFloat, 'flg_quotation', 'flg_quotation');
  FFlgCustomers := AddCreateField(TJanuaFieldType.jptFloat, 'flg_customers', 'flg_customers');
  FFlgSuppliers := AddCreateField(TJanuaFieldType.jptFloat, 'flg_suppliers', 'flg_suppliers');
  FCurrencyId := AddCreateField(TJanuaFieldType.jptSmallint, 'currency_id', 'currency_id');
  FIsAccouting := AddCreateField(TJanuaFieldType.jptBoolean, 'is_accouting', 'is_accouting');
  FAcGroupCode := AddCreateField(TJanuaFieldType.jptString, 'ac_group_code', 'ac_group_code');
  FAcLedgerCode := AddCreateField(TJanuaFieldType.jptString, 'ac_ledger_code', 'ac_ledger_code');
  FAcSubledgerCode := AddCreateField(TJanuaFieldType.jptString, 'ac_subledger_code', 'ac_subledger_code');
  FAcGroupVatCode := AddCreateField(TJanuaFieldType.jptString, 'ac_group_vat_code', 'ac_group_vat_code');
  FAcLedgerVatCode := AddCreateField(TJanuaFieldType.jptString, 'ac_ledger_vat_code', 'ac_ledger_vat_code');
  FAcSubledgerVatCode := AddCreateField(TJanuaFieldType.jptString, 'ac_subledger_vat_code', 'ac_subledger_vat_code');
  FAcGroupTaxableAmntCode := AddCreateField(TJanuaFieldType.jptString, 'ac_group_taxable_amnt_code',
    'ac_group_taxable_amnt_code');
  FAcLedgerTaxableAmntCode := AddCreateField(TJanuaFieldType.jptString, 'ac_ledger_taxable_amnt_code',
    'ac_ledger_taxable_amnt_code');
  FAcSubledgerTaxableAmntCode := AddCreateField(TJanuaFieldType.jptString, 'ac_subledger_taxable_amnt_code',
    'ac_subledger_taxable_amnt_code');
  FAcText := AddCreateField(TJanuaFieldType.jptString, 'ac_text', 'ac_text');
  FAcEntry := AddCreateField(TJanuaFieldType.jptBoolean, 'ac_entry', 'ac_entry');
  FAcEntryPos := AddCreateField(TJanuaFieldType.jptString, 'ac_entry_pos', 'ac_entry_pos');
  FAcVatEntryPos := AddCreateField(TJanuaFieldType.jptString, 'ac_vat_entry_pos', 'ac_vat_entry_pos');
  FAcTaxableAmntEntryPos := AddCreateField(TJanuaFieldType.jptString, 'ac_taxable_amnt_entry_pos',
    'ac_taxable_amnt_entry_pos');
  FGroupTransFeesCod := AddCreateField(TJanuaFieldType.jptString, 'group_trans_fees_cod', 'group_trans_fees_cod');
  FLedgerTransFeesCod := AddCreateField(TJanuaFieldType.jptString, 'ledger_trans_fees_cod', 'ledger_trans_fees_cod');
  FSubledgerTransFeesCod := AddCreateField(TJanuaFieldType.jptString, 'subledger_trans_fees_cod',
    'subledger_trans_fees_cod');
  FAcTransFeesEntry := AddCreateField(TJanuaFieldType.jptBoolean, 'ac_trans_fees_entry', 'ac_trans_fees_entry');
  FIsoDescription := AddCreateField(TJanuaFieldType.jptString, 'iso_description', 'iso_description');
  FAnGroupId := AddCreateField(TJanuaFieldType.jptSmallint, 'an_group_id', 'an_group_id');
  FInsertDate := AddCreateField(TJanuaFieldType.jptDateTime, 'insert_date', 'insert_date');
  FUpdateDate := AddCreateField(TJanuaFieldType.jptDateTime, 'update_date', 'update_date');
  FUserInsert := AddCreateField(TJanuaFieldType.jptInteger, 'user_insert', 'user_insert');
  FUserUpdate := AddCreateField(TJanuaFieldType.jptInteger, 'user_update', 'user_update');
  FLocal := AddCreateField(TJanuaFieldType.jptBoolean, 'local', 'local');
  FDtVatRegistry := AddCreateField(TJanuaFieldType.jptString, 'dt_vat_registry', 'dt_vat_registry');
  FBillBook := AddCreateField(TJanuaFieldType.jptBoolean, 'bill_book', 'bill_book');
  FTypeGroup := AddCreateField(TJanuaFieldType.jptSmallint, 'type_group', 'type_group');
  FTypeAnagraphId := AddCreateField(TJanuaFieldType.jptInteger, 'type_anagraph_id', 'type_anagraph_id');
  FShortDescription := AddCreateField(TJanuaFieldType.jptString, 'short_description', 'short_description');
  FNOSTRODOC := AddCreateField(TJanuaFieldType.jptString, 'nostrodoc', 'nostrodoc');
  FCASSA := AddCreateField(TJanuaFieldType.jptString, 'cassa', 'cassa');
  FWarehouseRegister := AddCreateField(TJanuaFieldType.jptFloat, 'warehouse_register', 'warehouse_register');
  FReverseDocType := AddCreateField(TJanuaFieldType.jptSmallint, 'reverse_doc_type', 'reverse_doc_type');
  FTypeGroupId := AddCreateField(TJanuaFieldType.jptSmallint, 'type_group_id', 'type_group_id');
  // Campo non Gestitojguid Type= ftGuid
  FCustomsDocDate := AddCreateField(TJanuaFieldType.jptDate, 'customs_doc_date', 'customs_doc_date');
  FCustomsDocCin := AddCreateField(TJanuaFieldType.jptString, 'customs_doc_cin', 'customs_doc_cin');
end;

function TCustomDocType.GetId: IJanuaField;
begin
  Result := FId;
end;

procedure TCustomDocType.SetId(const Value: IJanuaField);
begin
  FId := Value;
end;

function TCustomDocType.GetDbSchemaId: IJanuaField;
begin
  Result := FDbSchemaId;
end;

procedure TCustomDocType.SetDbSchemaId(const Value: IJanuaField);
begin
  FDbSchemaId := Value;
end;

function TCustomDocType.GetCode: IJanuaField;
begin
  Result := FCode;
end;

procedure TCustomDocType.SetCode(const Value: IJanuaField);
begin
  FCode := Value;
end;

function TCustomDocType.GetInOut: IJanuaField;
begin
  Result := FInOut;
end;

procedure TCustomDocType.SetInOut(const Value: IJanuaField);
begin
  FInOut := Value;
end;

function TCustomDocType.GetCash: IJanuaField;
begin
  Result := FCash;
end;

procedure TCustomDocType.SetCash(const Value: IJanuaField);
begin
  FCash := Value;
end;

function TCustomDocType.GetCredit: IJanuaField;
begin
  Result := FCredit;
end;

procedure TCustomDocType.SetCredit(const Value: IJanuaField);
begin
  FCredit := Value;
end;

function TCustomDocType.GetDescription: IJanuaField;
begin
  Result := FDescription;
end;

procedure TCustomDocType.SetDescription(const Value: IJanuaField);
begin
  FDescription := Value;
end;

function TCustomDocType.GetFlgOrder: IJanuaField;
begin
  Result := FFlgOrder;
end;

procedure TCustomDocType.SetFlgOrder(const Value: IJanuaField);
begin
  FFlgOrder := Value;
end;

function TCustomDocType.GetFlgQuotation: IJanuaField;
begin
  Result := FFlgQuotation;
end;

procedure TCustomDocType.SetFlgQuotation(const Value: IJanuaField);
begin
  FFlgQuotation := Value;
end;

function TCustomDocType.GetFlgCustomers: IJanuaField;
begin
  Result := FFlgCustomers;
end;

procedure TCustomDocType.SetFlgCustomers(const Value: IJanuaField);
begin
  FFlgCustomers := Value;
end;

function TCustomDocType.GetFlgSuppliers: IJanuaField;
begin
  Result := FFlgSuppliers;
end;

procedure TCustomDocType.SetFlgSuppliers(const Value: IJanuaField);
begin
  FFlgSuppliers := Value;
end;

function TCustomDocType.GetCurrencyId: IJanuaField;
begin
  Result := FCurrencyId;
end;

procedure TCustomDocType.SetCurrencyId(const Value: IJanuaField);
begin
  FCurrencyId := Value;
end;

function TCustomDocType.GetIsAccouting: IJanuaField;
begin
  Result := FIsAccouting;
end;

procedure TCustomDocType.SetIsAccouting(const Value: IJanuaField);
begin
  FIsAccouting := Value;
end;

function TCustomDocType.GetAcGroupCode: IJanuaField;
begin
  Result := FAcGroupCode;
end;

procedure TCustomDocType.SetAcGroupCode(const Value: IJanuaField);
begin
  FAcGroupCode := Value;
end;

function TCustomDocType.GetAcLedgerCode: IJanuaField;
begin
  Result := FAcLedgerCode;
end;

procedure TCustomDocType.SetAcLedgerCode(const Value: IJanuaField);
begin
  FAcLedgerCode := Value;
end;

function TCustomDocType.GetAcSubledgerCode: IJanuaField;
begin
  Result := FAcSubledgerCode;
end;

procedure TCustomDocType.SetAcSubledgerCode(const Value: IJanuaField);
begin
  FAcSubledgerCode := Value;
end;

function TCustomDocType.GetAcGroupVatCode: IJanuaField;
begin
  Result := FAcGroupVatCode;
end;

procedure TCustomDocType.SetAcGroupVatCode(const Value: IJanuaField);
begin
  FAcGroupVatCode := Value;
end;

function TCustomDocType.GetAcLedgerVatCode: IJanuaField;
begin
  Result := FAcLedgerVatCode;
end;

procedure TCustomDocType.SetAcLedgerVatCode(const Value: IJanuaField);
begin
  FAcLedgerVatCode := Value;
end;

function TCustomDocType.GetAcSubledgerVatCode: IJanuaField;
begin
  Result := FAcSubledgerVatCode;
end;

procedure TCustomDocType.SetAcSubledgerVatCode(const Value: IJanuaField);
begin
  FAcSubledgerVatCode := Value;
end;

function TCustomDocType.GetAcGroupTaxableAmntCode: IJanuaField;
begin
  Result := FAcGroupTaxableAmntCode;
end;

procedure TCustomDocType.SetAcGroupTaxableAmntCode(const Value: IJanuaField);
begin
  FAcGroupTaxableAmntCode := Value;
end;

function TCustomDocType.GetAcLedgerTaxableAmntCode: IJanuaField;
begin
  Result := FAcLedgerTaxableAmntCode;
end;

procedure TCustomDocType.SetAcLedgerTaxableAmntCode(const Value: IJanuaField);
begin
  FAcLedgerTaxableAmntCode := Value;
end;

function TCustomDocType.GetAcSubledgerTaxableAmntCode: IJanuaField;
begin
  Result := FAcSubledgerTaxableAmntCode;
end;

procedure TCustomDocType.SetAcSubledgerTaxableAmntCode(const Value: IJanuaField);
begin
  FAcSubledgerTaxableAmntCode := Value;
end;

function TCustomDocType.GetAcText: IJanuaField;
begin
  Result := FAcText;
end;

procedure TCustomDocType.SetAcText(const Value: IJanuaField);
begin
  FAcText := Value;
end;

function TCustomDocType.GetAcEntry: IJanuaField;
begin
  Result := FAcEntry;
end;

procedure TCustomDocType.SetAcEntry(const Value: IJanuaField);
begin
  FAcEntry := Value;
end;

function TCustomDocType.GetAcEntryPos: IJanuaField;
begin
  Result := FAcEntryPos;
end;

procedure TCustomDocType.SetAcEntryPos(const Value: IJanuaField);
begin
  FAcEntryPos := Value;
end;

function TCustomDocType.GetAcVatEntryPos: IJanuaField;
begin
  Result := FAcVatEntryPos;
end;

procedure TCustomDocType.SetAcVatEntryPos(const Value: IJanuaField);
begin
  FAcVatEntryPos := Value;
end;

function TCustomDocType.GetAcTaxableAmntEntryPos: IJanuaField;
begin
  Result := FAcTaxableAmntEntryPos;
end;

procedure TCustomDocType.SetAcTaxableAmntEntryPos(const Value: IJanuaField);
begin
  FAcTaxableAmntEntryPos := Value;
end;

function TCustomDocType.GetGroupTransFeesCod: IJanuaField;
begin
  Result := FGroupTransFeesCod;
end;

procedure TCustomDocType.SetGroupTransFeesCod(const Value: IJanuaField);
begin
  FGroupTransFeesCod := Value;
end;

function TCustomDocType.GetLedgerTransFeesCod: IJanuaField;
begin
  Result := FLedgerTransFeesCod;
end;

procedure TCustomDocType.SetLedgerTransFeesCod(const Value: IJanuaField);
begin
  FLedgerTransFeesCod := Value;
end;

function TCustomDocType.GetSubledgerTransFeesCod: IJanuaField;
begin
  Result := FSubledgerTransFeesCod;
end;

procedure TCustomDocType.SetSubledgerTransFeesCod(const Value: IJanuaField);
begin
  FSubledgerTransFeesCod := Value;
end;

function TCustomDocType.GetAcTransFeesEntry: IJanuaField;
begin
  Result := FAcTransFeesEntry;
end;

procedure TCustomDocType.SetAcTransFeesEntry(const Value: IJanuaField);
begin
  FAcTransFeesEntry := Value;
end;

function TCustomDocType.GetIsoDescription: IJanuaField;
begin
  Result := FIsoDescription;
end;

procedure TCustomDocType.SetIsoDescription(const Value: IJanuaField);
begin
  FIsoDescription := Value;
end;

function TCustomDocType.GetAnGroupId: IJanuaField;
begin
  Result := FAnGroupId;
end;

procedure TCustomDocType.SetAnGroupId(const Value: IJanuaField);
begin
  FAnGroupId := Value;
end;

function TCustomDocType.GetInsertDate: IJanuaField;
begin
  Result := FInsertDate;
end;

procedure TCustomDocType.SetInsertDate(const Value: IJanuaField);
begin
  FInsertDate := Value;
end;

function TCustomDocType.GetUpdateDate: IJanuaField;
begin
  Result := FUpdateDate;
end;

procedure TCustomDocType.SetUpdateDate(const Value: IJanuaField);
begin
  FUpdateDate := Value;
end;

function TCustomDocType.GetUserInsert: IJanuaField;
begin
  Result := FUserInsert;
end;

procedure TCustomDocType.SetUserInsert(const Value: IJanuaField);
begin
  FUserInsert := Value;
end;

function TCustomDocType.GetUserUpdate: IJanuaField;
begin
  Result := FUserUpdate;
end;

procedure TCustomDocType.SetUserUpdate(const Value: IJanuaField);
begin
  FUserUpdate := Value;
end;

function TCustomDocType.GetLocal: IJanuaField;
begin
  Result := FLocal;
end;

procedure TCustomDocType.SetLocal(const Value: IJanuaField);
begin
  FLocal := Value;
end;

function TCustomDocType.GetDtVatRegistry: IJanuaField;
begin
  Result := FDtVatRegistry;
end;

procedure TCustomDocType.SetDtVatRegistry(const Value: IJanuaField);
begin
  FDtVatRegistry := Value;
end;

function TCustomDocType.GetBillBook: IJanuaField;
begin
  Result := FBillBook;
end;

procedure TCustomDocType.SetBillBook(const Value: IJanuaField);
begin
  FBillBook := Value;
end;

function TCustomDocType.GetTypeGroup: IJanuaField;
begin
  Result := FTypeGroup;
end;

procedure TCustomDocType.SetTypeGroup(const Value: IJanuaField);
begin
  FTypeGroup := Value;
end;

function TCustomDocType.GetTypeAnagraphId: IJanuaField;
begin
  Result := FTypeAnagraphId;
end;

procedure TCustomDocType.SetTypeAnagraphId(const Value: IJanuaField);
begin
  FTypeAnagraphId := Value;
end;

function TCustomDocType.GetShortDescription: IJanuaField;
begin
  Result := FShortDescription;
end;

procedure TCustomDocType.SetShortDescription(const Value: IJanuaField);
begin
  FShortDescription := Value;
end;

function TCustomDocType.GetNOSTRODOC: IJanuaField;
begin
  Result := FNOSTRODOC;
end;

procedure TCustomDocType.SetNOSTRODOC(const Value: IJanuaField);
begin
  FNOSTRODOC := Value;
end;

function TCustomDocType.GetCASSA: IJanuaField;
begin
  Result := FCASSA;
end;

procedure TCustomDocType.SetCASSA(const Value: IJanuaField);
begin
  FCASSA := Value;
end;

function TCustomDocType.GetWarehouseRegister: IJanuaField;
begin
  Result := FWarehouseRegister;
end;

procedure TCustomDocType.SetWarehouseRegister(const Value: IJanuaField);
begin
  FWarehouseRegister := Value;
end;

function TCustomDocType.GetReverseDocType: IJanuaField;
begin
  Result := FReverseDocType;
end;

procedure TCustomDocType.SetReverseDocType(const Value: IJanuaField);
begin
  FReverseDocType := Value;
end;

function TCustomDocType.GetTypeGroupId: IJanuaField;
begin
  Result := FTypeGroupId;
end;

procedure TCustomDocType.SetTypeGroupId(const Value: IJanuaField);
begin
  FTypeGroupId := Value;
end;

function TCustomDocType.GetJguid: IJanuaField;
begin
  Result := FJguid;
end;

procedure TCustomDocType.SetJguid(const Value: IJanuaField);
begin
  FJguid := Value;
end;

function TCustomDocType.GetCustomsDocDate: IJanuaField;
begin
  Result := FCustomsDocDate;
end;

procedure TCustomDocType.SetCustomsDocDate(const Value: IJanuaField);
begin
  FCustomsDocDate := Value;
end;

function TCustomDocType.GetCustomsDocCin: IJanuaField;
begin
  Result := FCustomsDocCin;
end;

procedure TCustomDocType.SetCustomsDocCin(const Value: IJanuaField);
begin
  FCustomsDocCin := Value;
end;

{ TCustomDocTypes }
constructor TCustomDocTypes.Create;
begin
  inherited;
  self.FRecord := TDocTypeFactory.CreateRecord('DocType');
end;

function TCustomDocTypes.GetId: IJanuaField;
begin
  Result := self.DocType.Id;
end;

procedure TCustomDocTypes.SetId(const Value: IJanuaField);
begin
  self.DocType.Id := Value;
end;

function TCustomDocTypes.GetDbSchemaId: IJanuaField;
begin
  Result := self.DocType.DbSchemaId;
end;

procedure TCustomDocTypes.SetDbSchemaId(const Value: IJanuaField);
begin
  self.DocType.DbSchemaId := Value;
end;

function TCustomDocTypes.GetCode: IJanuaField;
begin
  Result := self.DocType.Code;
end;

procedure TCustomDocTypes.SetCode(const Value: IJanuaField);
begin
  self.DocType.Code := Value;
end;

function TCustomDocTypes.GetInOut: IJanuaField;
begin
  Result := self.DocType.InOut;
end;

procedure TCustomDocTypes.SetInOut(const Value: IJanuaField);
begin
  self.DocType.InOut := Value;
end;

function TCustomDocTypes.GetCash: IJanuaField;
begin
  Result := self.DocType.Cash;
end;

procedure TCustomDocTypes.SetCash(const Value: IJanuaField);
begin
  self.DocType.Cash := Value;
end;

function TCustomDocTypes.GetCredit: IJanuaField;
begin
  Result := self.DocType.Credit;
end;

procedure TCustomDocTypes.SetCredit(const Value: IJanuaField);
begin
  self.DocType.Credit := Value;
end;

function TCustomDocTypes.GetDescription: IJanuaField;
begin
  Result := self.DocType.Description;
end;

procedure TCustomDocTypes.SetDescription(const Value: IJanuaField);
begin
  self.DocType.Description := Value;
end;

function TCustomDocTypes.GetFlgOrder: IJanuaField;
begin
  Result := self.DocType.FlgOrder;
end;

procedure TCustomDocTypes.SetFlgOrder(const Value: IJanuaField);
begin
  self.DocType.FlgOrder := Value;
end;

function TCustomDocTypes.GetFlgQuotation: IJanuaField;
begin
  Result := self.DocType.FlgQuotation;
end;

procedure TCustomDocTypes.SetFlgQuotation(const Value: IJanuaField);
begin
  self.DocType.FlgQuotation := Value;
end;

function TCustomDocTypes.GetFlgCustomers: IJanuaField;
begin
  Result := self.DocType.FlgCustomers;
end;

procedure TCustomDocTypes.SetFlgCustomers(const Value: IJanuaField);
begin
  self.DocType.FlgCustomers := Value;
end;

function TCustomDocTypes.GetFlgSuppliers: IJanuaField;
begin
  Result := self.DocType.FlgSuppliers;
end;

procedure TCustomDocTypes.SetFlgSuppliers(const Value: IJanuaField);
begin
  self.DocType.FlgSuppliers := Value;
end;

function TCustomDocTypes.GetCurrencyId: IJanuaField;
begin
  Result := self.DocType.CurrencyId;
end;

procedure TCustomDocTypes.SetCurrencyId(const Value: IJanuaField);
begin
  self.DocType.CurrencyId := Value;
end;

function TCustomDocTypes.GetIsAccouting: IJanuaField;
begin
  Result := self.DocType.IsAccouting;
end;

procedure TCustomDocTypes.SetIsAccouting(const Value: IJanuaField);
begin
  self.DocType.IsAccouting := Value;
end;

function TCustomDocTypes.GetAcGroupCode: IJanuaField;
begin
  Result := self.DocType.AcGroupCode;
end;

procedure TCustomDocTypes.SetAcGroupCode(const Value: IJanuaField);
begin
  self.DocType.AcGroupCode := Value;
end;

function TCustomDocTypes.GetAcLedgerCode: IJanuaField;
begin
  Result := self.DocType.AcLedgerCode;
end;

procedure TCustomDocTypes.SetAcLedgerCode(const Value: IJanuaField);
begin
  self.DocType.AcLedgerCode := Value;
end;

function TCustomDocTypes.GetAcSubledgerCode: IJanuaField;
begin
  Result := self.DocType.AcSubledgerCode;
end;

procedure TCustomDocTypes.SetAcSubledgerCode(const Value: IJanuaField);
begin
  self.DocType.AcSubledgerCode := Value;
end;

function TCustomDocTypes.GetAcGroupVatCode: IJanuaField;
begin
  Result := self.DocType.AcGroupVatCode;
end;

procedure TCustomDocTypes.SetAcGroupVatCode(const Value: IJanuaField);
begin
  self.DocType.AcGroupVatCode := Value;
end;

function TCustomDocTypes.GetAcLedgerVatCode: IJanuaField;
begin
  Result := self.DocType.AcLedgerVatCode;
end;

procedure TCustomDocTypes.SetAcLedgerVatCode(const Value: IJanuaField);
begin
  self.DocType.AcLedgerVatCode := Value;
end;

function TCustomDocTypes.GetAcSubledgerVatCode: IJanuaField;
begin
  Result := self.DocType.AcSubledgerVatCode;
end;

procedure TCustomDocTypes.SetAcSubledgerVatCode(const Value: IJanuaField);
begin
  self.DocType.AcSubledgerVatCode := Value;
end;

function TCustomDocTypes.GetAcGroupTaxableAmntCode: IJanuaField;
begin
  Result := self.DocType.AcGroupTaxableAmntCode;
end;

procedure TCustomDocTypes.SetAcGroupTaxableAmntCode(const Value: IJanuaField);
begin
  self.DocType.AcGroupTaxableAmntCode := Value;
end;

function TCustomDocTypes.GetAcLedgerTaxableAmntCode: IJanuaField;
begin
  Result := self.DocType.AcLedgerTaxableAmntCode;
end;

procedure TCustomDocTypes.SetAcLedgerTaxableAmntCode(const Value: IJanuaField);
begin
  self.DocType.AcLedgerTaxableAmntCode := Value;
end;

function TCustomDocTypes.GetAcSubledgerTaxableAmntCode: IJanuaField;
begin
  Result := self.DocType.AcSubledgerTaxableAmntCode;
end;

procedure TCustomDocTypes.SetAcSubledgerTaxableAmntCode(const Value: IJanuaField);
begin
  self.DocType.AcSubledgerTaxableAmntCode := Value;
end;

function TCustomDocTypes.GetAcText: IJanuaField;
begin
  Result := self.DocType.AcText;
end;

procedure TCustomDocTypes.SetAcText(const Value: IJanuaField);
begin
  self.DocType.AcText := Value;
end;

function TCustomDocTypes.GetAcEntry: IJanuaField;
begin
  Result := self.DocType.AcEntry;
end;

procedure TCustomDocTypes.SetAcEntry(const Value: IJanuaField);
begin
  self.DocType.AcEntry := Value;
end;

function TCustomDocTypes.GetAcEntryPos: IJanuaField;
begin
  Result := self.DocType.AcEntryPos;
end;

procedure TCustomDocTypes.SetAcEntryPos(const Value: IJanuaField);
begin
  self.DocType.AcEntryPos := Value;
end;

function TCustomDocTypes.GetAcVatEntryPos: IJanuaField;
begin
  Result := self.DocType.AcVatEntryPos;
end;

procedure TCustomDocTypes.SetAcVatEntryPos(const Value: IJanuaField);
begin
  self.DocType.AcVatEntryPos := Value;
end;

function TCustomDocTypes.GetAcTaxableAmntEntryPos: IJanuaField;
begin
  Result := self.DocType.AcTaxableAmntEntryPos;
end;

procedure TCustomDocTypes.SetAcTaxableAmntEntryPos(const Value: IJanuaField);
begin
  self.DocType.AcTaxableAmntEntryPos := Value;
end;

function TCustomDocTypes.GetGroupTransFeesCod: IJanuaField;
begin
  Result := self.DocType.GroupTransFeesCod;
end;

procedure TCustomDocTypes.SetGroupTransFeesCod(const Value: IJanuaField);
begin
  self.DocType.GroupTransFeesCod := Value;
end;

function TCustomDocTypes.GetLedgerTransFeesCod: IJanuaField;
begin
  Result := self.DocType.LedgerTransFeesCod;
end;

procedure TCustomDocTypes.SetLedgerTransFeesCod(const Value: IJanuaField);
begin
  self.DocType.LedgerTransFeesCod := Value;
end;

function TCustomDocTypes.GetSubledgerTransFeesCod: IJanuaField;
begin
  Result := self.DocType.SubledgerTransFeesCod;
end;

procedure TCustomDocTypes.SetSubledgerTransFeesCod(const Value: IJanuaField);
begin
  self.DocType.SubledgerTransFeesCod := Value;
end;

function TCustomDocTypes.GetAcTransFeesEntry: IJanuaField;
begin
  Result := self.DocType.AcTransFeesEntry;
end;

procedure TCustomDocTypes.SetAcTransFeesEntry(const Value: IJanuaField);
begin
  self.DocType.AcTransFeesEntry := Value;
end;

function TCustomDocTypes.GetIsoDescription: IJanuaField;
begin
  Result := self.DocType.IsoDescription;
end;

procedure TCustomDocTypes.SetIsoDescription(const Value: IJanuaField);
begin
  self.DocType.IsoDescription := Value;
end;

function TCustomDocTypes.GetAnGroupId: IJanuaField;
begin
  Result := self.DocType.AnGroupId;
end;

procedure TCustomDocTypes.SetAnGroupId(const Value: IJanuaField);
begin
  self.DocType.AnGroupId := Value;
end;

function TCustomDocTypes.GetInsertDate: IJanuaField;
begin
  Result := self.DocType.InsertDate;
end;

procedure TCustomDocTypes.SetInsertDate(const Value: IJanuaField);
begin
  self.DocType.InsertDate := Value;
end;

function TCustomDocTypes.GetUpdateDate: IJanuaField;
begin
  Result := self.DocType.UpdateDate;
end;

procedure TCustomDocTypes.SetUpdateDate(const Value: IJanuaField);
begin
  self.DocType.UpdateDate := Value;
end;

function TCustomDocTypes.GetUserInsert: IJanuaField;
begin
  Result := self.DocType.UserInsert;
end;

procedure TCustomDocTypes.SetUserInsert(const Value: IJanuaField);
begin
  self.DocType.UserInsert := Value;
end;

function TCustomDocTypes.GetUserUpdate: IJanuaField;
begin
  Result := self.DocType.UserUpdate;
end;

procedure TCustomDocTypes.SetUserUpdate(const Value: IJanuaField);
begin
  self.DocType.UserUpdate := Value;
end;

function TCustomDocTypes.GetLocal: IJanuaField;
begin
  Result := self.DocType.Local;
end;

procedure TCustomDocTypes.SetLocal(const Value: IJanuaField);
begin
  self.DocType.Local := Value;
end;

function TCustomDocTypes.GetDtVatRegistry: IJanuaField;
begin
  Result := self.DocType.DtVatRegistry;
end;

procedure TCustomDocTypes.SetDtVatRegistry(const Value: IJanuaField);
begin
  self.DocType.DtVatRegistry := Value;
end;

function TCustomDocTypes.GetBillBook: IJanuaField;
begin
  Result := self.DocType.BillBook;
end;

procedure TCustomDocTypes.SetBillBook(const Value: IJanuaField);
begin
  self.DocType.BillBook := Value;
end;

function TCustomDocTypes.GetTypeGroup: IJanuaField;
begin
  Result := self.DocType.TypeGroup;
end;

procedure TCustomDocTypes.SetTypeGroup(const Value: IJanuaField);
begin
  self.DocType.TypeGroup := Value;
end;

function TCustomDocTypes.GetTypeAnagraphId: IJanuaField;
begin
  Result := self.DocType.TypeAnagraphId;
end;

procedure TCustomDocTypes.SetTypeAnagraphId(const Value: IJanuaField);
begin
  self.DocType.TypeAnagraphId := Value;
end;

function TCustomDocTypes.GetShortDescription: IJanuaField;
begin
  Result := self.DocType.ShortDescription;
end;

procedure TCustomDocTypes.SetShortDescription(const Value: IJanuaField);
begin
  self.DocType.ShortDescription := Value;
end;

function TCustomDocTypes.GetNOSTRODOC: IJanuaField;
begin
  Result := self.DocType.NOSTRODOC;
end;

procedure TCustomDocTypes.SetNOSTRODOC(const Value: IJanuaField);
begin
  self.DocType.NOSTRODOC := Value;
end;

function TCustomDocTypes.GetCASSA: IJanuaField;
begin
  Result := self.DocType.CASSA;
end;

procedure TCustomDocTypes.SetCASSA(const Value: IJanuaField);
begin
  self.DocType.CASSA := Value;
end;

function TCustomDocTypes.GetWarehouseRegister: IJanuaField;
begin
  Result := self.DocType.WarehouseRegister;
end;

procedure TCustomDocTypes.SetWarehouseRegister(const Value: IJanuaField);
begin
  self.DocType.WarehouseRegister := Value;
end;

function TCustomDocTypes.GetReverseDocType: IJanuaField;
begin
  Result := self.DocType.ReverseDocType;
end;

procedure TCustomDocTypes.SetReverseDocType(const Value: IJanuaField);
begin
  self.DocType.ReverseDocType := Value;
end;

function TCustomDocTypes.GetTypeGroupId: IJanuaField;
begin
  Result := self.DocType.TypeGroupId;
end;

procedure TCustomDocTypes.SetTypeGroupId(const Value: IJanuaField);
begin
  self.DocType.TypeGroupId := Value;
end;

function TCustomDocTypes.GetJguid: IJanuaField;
begin
  Result := self.DocType.Jguid;
end;

procedure TCustomDocTypes.SetJguid(const Value: IJanuaField);
begin
  self.DocType.Jguid := Value;
end;

function TCustomDocTypes.GetCustomsDocDate: IJanuaField;
begin
  Result := self.DocType.CustomsDocDate;
end;

procedure TCustomDocTypes.SetCustomsDocDate(const Value: IJanuaField);
begin
  self.DocType.CustomsDocDate := Value;
end;

function TCustomDocTypes.GetCustomsDocCin: IJanuaField;
begin
  Result := self.DocType.CustomsDocCin;
end;

procedure TCustomDocTypes.SetCustomsDocCin(const Value: IJanuaField);
begin
  self.DocType.CustomsDocCin := Value;
end;

function TCustomDocTypes.GetDocType: IDocType;
begin
  Result := self.FRecord as IDocType;
end;

procedure TCustomDocTypes.SetDocType(const Value: IDocType);
begin
  self.FRecord := Value;
end;

{ TDocTypeFactory }

class function TDocTypeFactory.CreateRecord(const aKey: string): IDocType;
begin
  Result := TCustomDocType.Create;
end;

class function TDocTypeFactory.CreateRecordset(const aName: string;
  const aLocalStorage, aRemoteStorage: IJanuaRecordSetStorage): IDocTypes;
begin
  Result := TCustomDocTypes.Create(aName, aLocalStorage, aRemoteStorage);
end;

end.
