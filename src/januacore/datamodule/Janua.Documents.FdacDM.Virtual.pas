unit Janua.Documents.FdacDM.Virtual;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // FDAC
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Januaproject
  Janua.Core.Classes, Janua.Core.Classes.Intf, Janua.Bindings.Intf, Janua.Controls.Intf, Janua.Orm.Intf,
  Janua.Orm.Types,
  // Lookup Interface
  Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  // DataModule
  Janua.Core.DataModule,
  Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Intf;

type
  TdmVirtualDocuments = class(TJanuaCoreDataModule, IJanuaDataModule, IJanuaBindable)
    vtDocHeads: TFDMemTable;
    vtDocHeadsid: TLargeintField;
    vtDocHeadstype_id: TSmallintField;
    vtDocHeadsin_out: TSmallintField;
    vtDocHeadsdoc_date: TDateField;
    vtDocHeadsdoc_number: TWideStringField;
    vtDocHeadsreason: TSmallintField;
    vtDocHeadsdest_address: TWideStringField;
    vtDocHeadsdest_postal_code: TWideStringField;
    vtDocHeadsdest_town: TWideStringField;
    vtDocHeadsdest_state_province: TWideStringField;
    vtDocHeadsdest_country_iso: TWideStringField;
    vtDocHeadsdeparture_date: TDateField;
    vtDocHeadsdelivery_methos: TWideStringField;
    vtDocHeadsgoods_description: TWideStringField;
    vtDocHeadspackages_number: TSmallintField;
    vtDocHeadstotal_weight: TFloatField;
    vtDocHeadsincoterms: TWideStringField;
    vtDocHeadsdelivery_charges: TFloatField;
    vtDocHeadsdiscount_rate: TFloatField;
    vtDocHeadsanagraph_id: TIntegerField;
    vtDocHeadscarrier_id: TIntegerField;
    vtDocHeadsdest_state_province_id: TIntegerField;
    vtDocHeadsdest_region_id: TIntegerField;
    vtDocHeadsdest_town_id: TIntegerField;
    vtDocHeadscurrency_id: TSmallintField;
    vtDocHeadspayment_terms_id: TSmallintField;
    vtDocHeadspayment_terms_des: TWideStringField;
    vtDocHeadspackage_description: TWideStringField;
    vtDocHeadspayment_term_code: TWideStringField;
    vtDocHeadsfolder_id: TLargeintField;
    vtDocHeadsdoc_state: TSmallintField;
    vtDocHeadsholder_name: TWideStringField;
    vtDocHeadsholder_id: TIntegerField;
    vtDocHeadsholder_vat_id: TWideStringField;
    vtDocHeadsholder_address: TWideStringField;
    vtDocHeadsholder_postal_code: TWideStringField;
    vtDocHeadsholder_town: TWideStringField;
    vtDocHeadsholder_state_province: TWideStringField;
    vtDocHeadsholder_country_iso: TWideStringField;
    vtDocHeadsdelivery_rate_expense: TFloatField;
    vtDocHeadsholder_group_id: TSmallintField;
    vtDocHeadsamount: TFloatField;
    vtDocHeadsnet_amount: TFloatField;
    vtDocHeadsfinancial_year: TWideStringField;
    vtDocHeadsdoc_origin_id: TFloatField;
    vtDocHeadsdelivery_vat_id: TSmallintField;
    vtDocHeadsdelivery_vat_rate: TFloatField;
    vtDocHeadsaccounted: TBooleanField;
    vtDocHeadsinsert_date: TDateField;
    vtDocHeadsupdate_date: TDateField;
    vtDocHeadsdelivery_due_date: TDateField;
    vtDocHeadssent: TBooleanField;
    vtDocHeadsarrival_date: TDateField;
    vtDocHeadspayment_due_date: TDateField;
    vtDocHeadsduties: TFloatField;
    vtDocHeadspaid: TBooleanField;
    vtDocHeadsdoc_fine: TFloatField;
    vtDocHeadsuser_insert: TIntegerField;
    vtDocHeadsuser_update: TIntegerField;
    vtDocHeadsdoc_year: TFloatField;
    vtDocHeadspo_number_id: TLargeintField;
    vtDocHeadspo_number: TWideStringField;
    vtDocHeadsprinted: TBooleanField;
    vtDocHeadscontact_name: TWideStringField;
    vtDocHeadscontact_email: TWideStringField;
    vtDocHeadscontact_phone: TWideStringField;
    vtDocHeadsoffice_id: TIntegerField;
    vtDocHeadswarehouse_location_id: TIntegerField;
    vtDocHeadsjguid: TGuidField;
    vtDocHeadsnotes1: TWideMemoField;
    vtDocHeadsnotes2: TWideMemoField;
    vtDocHeadsnotes3: TWideMemoField;
    vtDocHeadsdb_schema_id: TIntegerField;
    vtDocHeadspurchase_order_number: TWideStringField;
    vtDocHeadscustom_field_1: TWideStringField;
    vtDocHeadscustom_field_2: TWideStringField;
    vtDocHeadscustom_field_3: TWideStringField;
    vtDocHeadscustom_int_1: TIntegerField;
    vtDocHeadscustom_int_2: TIntegerField;
    vtDocHeadscustom_int_3: TIntegerField;
    vtDocHeadsdoc_ref_code: TWideStringField;
    vtDocHeadscarrier_expenses: TFloatField;
    vtDocHeadsregistry_code: TWideStringField;
    vtDocHeadscarrier_tracking_number: TWideStringField;
    vtDocHeadscarrier_expenses_currency_id: TSmallintField;
    vtDocHeadssearch_index: TWideStringField;
    vtDocHeadsdest_name: TWideStringField;
    vtDocHeadscarrier_name: TWideStringField;
    vtDocHeadslocation_name: TWideStringField;
    vtDocHeadsgoods_type_id: TSmallintField;
    vtDocHeadsimportexport: TSmallintField;
    vtDocHeadscarrier_invoice_number: TWideStringField;
    vtDocHeadscarrier_invoice_date: TDateField;
    vtDocHeadsworkflow_id: TLargeintField;
    vtDocHeadsvessel_department_id: TSmallintField;
    vtDocHeadspayment_term_id: TSmallintField;
    vtDocHeadsan_code: TWideStringField;
    vtDocHeadsref_date: TDateField;
    vtDocHeadsref_code: TWideStringField;
    vtDocHeadsstamp_duty: TCurrencyField;
    vtDocHeadsexchange_rate: TFloatField;
    vtDocHeadsconversion_date: TDateField;
    vtDocHeadswork_code: TWideStringField;
    vtDocHeadswork_date: TDateField;
    vtDocHeadsdeleted: TBooleanField;
    vtDocHeadsdest_vat_number: TWideStringField;
    vtDocHeadsholder_vat_number: TWideStringField;
    vtDocHeadscurrency_code: TWideStringField;
    vtDocHeadscurrency_description: TWideMemoField;
    vtDocHeadstaxable_amount: TCurrencyField;
    vtDocHeadsvat_taxes: TCurrencyField;
    vtDocHeadsindex_guid: TStringField;
    vtDocRowsOld: TFDMemTable;
    vtDocRows: TFDMemTable;
    vtDocRowsid: TLargeintField;
    vtDocRowsdoc_id: TLargeintField;
    vtDocRowsitem_id: TLargeintField;
    vtDocRowsrow_date: TDateField;
    vtDocRowsinout: TSmallintField;
    vtDocRowsmodel: TWideStringField;
    vtDocRowscode: TWideStringField;
    vtDocRowsdescription: TWideMemoField;
    vtDocRowsprice: TFloatField;
    vtDocRowsvat_id: TSmallintField;
    vtDocRowsvat_rate: TFloatField;
    vtDocRowsdiscount_rate: TFloatField;
    vtDocRowsdiscount_comm_rate: TFloatField;
    vtDocRowsdiscount_ext_rate: TFloatField;
    vtDocRowsquantity: TFloatField;
    vtDocRowssecondhand: TBooleanField;
    vtDocRowsdimension_id1: TSmallintField;
    vtDocRowsdimension_id2: TSmallintField;
    vtDocRowsdimensions_id3: TSmallintField;
    vtDocRowscurrency_id: TSmallintField;
    vtDocRowsexchange_rate: TFloatField;
    vtDocRowsposition: TSmallintField;
    vtDocRowsdelivery_date: TSQLTimeStampField;
    vtDocRowsbarcode: TWideStringField;
    vtDocRowsdelivered_qty: TFloatField;
    vtDocRowssample_qty: TFloatField;
    vtDocRowsis_sample: TBooleanField;
    vtDocRowsref_code: TWideStringField;
    vtDocRowsdoc_origin_id: TLargeintField;
    vtDocRowsrow_origin_id: TLargeintField;
    vtDocRowsanagrams_ref_id: TIntegerField;
    vtDocRowscollector_points: TSmallintField;
    vtDocRowscollector_points_forfait: TSmallintField;
    vtDocRowspackage_type_id: TSmallintField;
    vtDocRowsjguid: TGuidField;
    vtDocRowsordered_qty: TFloatField;
    vtDocRowspallets: TSmallintField;
    vtDocRowsweight_on_delivery: TFloatField;
    vtDocRowsweight_on_order: TFloatField;
    vtDocRowsweight_on_shipping: TFloatField;
    vtDocRowsvolume: TFloatField;
    vtDocRowsdoc_origin_number: TWideStringField;
    vtDocRowsdoc_origin_date: TDateField;
    vtDocRowscustoms_doc_ref: TWideStringField;
    vtDocRowscustoms_doc_type_id: TSmallintField;
    vtDocRowspurchase_order: TWideStringField;
    vtDocRowsinsert_date: TSQLTimeStampField;
    vtDocRowsupdate_date: TSQLTimeStampField;
    vtDocRowsuser_insert: TIntegerField;
    vtDocRowsuser_update: TIntegerField;
    vtDocRowssize_weight: TFloatField;
    vtDocRowssize_length: TFloatField;
    vtDocRowssize_height: TFloatField;
    vtDocRowsinventory_qty: TFloatField;
    vtDocRowsinventory_weight: TFloatField;
    vtDocRowscustoms_doc_cin: TWideStringField;
    vtDocRowscustoms_doc_date: TDateField;
    vtDocRowssupplier_id: TIntegerField;
    vtDocRowsdoc_origin__number: TWideStringField;
    vtDocRowsdb_schema_id: TIntegerField;
    vtDocRowsdoc_head_jguid: TGuidField;
    vtDocRowsitem_jguid: TGuidField;
    vtDocRowscontainer_status: TWideStringField;
    vtDocRowsrights: TCurrencyField;
    vtDocRowsinvoice_number: TWideStringField;
    vtDocRowscustom_field_1: TWideStringField;
    vtDocRowscustom_field_2: TWideStringField;
    vtDocRowsinvoice_amount: TCurrencyField;
    vtDocRowscustom_field_3: TWideStringField;
    vtDocRowsjson_nested_table: TWideMemoField;
    vtDocRowsinvoice_date: TDateField;
    vtDocRowsimportexport: TSmallintField;
    vtDocRowstype_id: TSmallintField;
    vtDocRowsis_description: TBooleanField;
    vtDocRowsexchange_rage: TCurrencyField;
    vtDocRowsfreight_qty: TFloatField;
    vtDocRowsamount: TCurrencyField;
    vtDocRowsvat_code: TWideStringField;
    vtDocRowsfreight_rate: TIntegerField;
    vtDocRowsvat_description: TWideStringField;
    vtDocRowscurrency_description: TWideStringField;
    vtDocRowscurrency_code: TWideStringField;
    vtDocRowsflg_description: TBooleanField;
    vtDocType: TFDMemTable;
    vtDocAttachments: TFDMemTable;
    vtDocAttachmentsdoc_id: TLargeintField;
    vtDocAttachmentsblob_id: TLargeintField;
    vtDocAttachmentsblob_jguid: TGuidField;
    vtDocCharges: TFDMemTable;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    DateField1: TDateField;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideMemoField1: TWideMemoField;
    FloatField1: TFloatField;
    SmallintField2: TSmallintField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    BooleanField1: TBooleanField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    SmallintField5: TSmallintField;
    SmallintField6: TSmallintField;
    FloatField7: TFloatField;
    SmallintField7: TSmallintField;
    SQLTimeStampField1: TSQLTimeStampField;
    WideStringField3: TWideStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    BooleanField2: TBooleanField;
    WideStringField4: TWideStringField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    IntegerField1: TIntegerField;
    SmallintField8: TSmallintField;
    SmallintField9: TSmallintField;
    SmallintField10: TSmallintField;
    GuidField1: TGuidField;
    FloatField10: TFloatField;
    SmallintField11: TSmallintField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    WideStringField5: TWideStringField;
    DateField2: TDateField;
    WideStringField6: TWideStringField;
    SmallintField12: TSmallintField;
    WideStringField7: TWideStringField;
    SQLTimeStampField2: TSQLTimeStampField;
    SQLTimeStampField3: TSQLTimeStampField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    WideStringField8: TWideStringField;
    DateField3: TDateField;
    IntegerField4: TIntegerField;
    WideStringField9: TWideStringField;
    IntegerField5: TIntegerField;
    GuidField2: TGuidField;
    GuidField3: TGuidField;
    WideStringField10: TWideStringField;
    CurrencyField1: TCurrencyField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    CurrencyField2: TCurrencyField;
    WideStringField14: TWideStringField;
    WideMemoField2: TWideMemoField;
    DateField4: TDateField;
    SmallintField13: TSmallintField;
    SmallintField14: TSmallintField;
    BooleanField3: TBooleanField;
    CurrencyField3: TCurrencyField;
    FloatField20: TFloatField;
    CurrencyField4: TCurrencyField;
    WideStringField15: TWideStringField;
    IntegerField6: TIntegerField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    BooleanField4: TBooleanField;
    fdmVatAmounts: TFDMemTable;
    fdmVatAmountsdoc_id: TLargeintField;
    fdmVatAmountsvat_id: TSmallintField;
    fdmVatAmountstaxable_amount: TCurrencyField;
    fdmVatAmountstaxes: TCurrencyField;
    fdmVatAmountsvat_rate: TFloatField;
    fdmVatAmountsamount: TCurrencyField;
    fdmVatAmountsvat_description: TWideStringField;
    fdmVatAmountsjguid: TGuidField;
    fdmVatAmountsvat_code: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

type
  TLookupFDacMemDocumentTypes = class(TLookupModelDocumentTypes, ILookupModelDocumentTypes, ILookupModel)
  private
    FDM: TdmVirtualDocuments;
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  public
    destructor Destroy; override;
  end;

  TJanuaVirtualDocumentsDataModule = class(TJanuaCustomDocumentDataModule, IJanuaDocumentsDataModule)
  private
    { Private declarations }
    FDM: TdmVirtualDocuments;
  protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

var
  dmVirtualDocuments: TdmVirtualDocuments;

implementation

uses Janua.Application.Framework, Janua.Orm.Impl, Janua.Orm.Firedac, Janua.Core.Types;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaVirtualDocumentsDataModule }

constructor TJanuaVirtualDocumentsDataModule.Create;
begin
  inherited;

end;

destructor TJanuaVirtualDocumentsDataModule.Destroy;
begin
  if Assigned(FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaVirtualDocumentsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      FDM := nil;
      jdsDocHeads := nil;
      jdsDocRows := nil;
      jdsDocTypes := nil;
      jdsDocAttachments := nil;
      try
        FDM := TdmVirtualDocuments.Create(nil);
        SetMainDataModule(FDM);

        jdsDocHeads := TJanuaVtDataset.Create(FDM.vtDocHeads, [TJanuaEntity.DocHeads]);
        jdsDocHeads.AddParam('p_db_schema_id', TJanuaFieldType.jptInteger);
        jdsDocHeads.AddParam('p_search_name', TJanuaFieldType.jptString);
        jdsDocHeads.AddParam('p_group_id', TJanuaFieldType.jptInteger);
        jdsDocHeads.AddParam('p_doc_id', TJanuaFieldType.jptLargeInt);

        jdsVatAmounts := TJanuaVtDataset.Create(FDM.fdmVatAmounts, [TJanuaEntity.DocVatAmounts]);

        jdsDocRows := TJanuaVtDataset.Create(FDM.vtDocRows, [TJanuaEntity.DocRows]);
        jdsDocCharges := TJanuaVtDataset.Create(FDM.vtDocCharges, [TJanuaEntity.DocRows]);
        jdsDocTypes := TJanuaVtDataset.Create(FDM.vtDocType, [TJanuaEntity.DocTypes]);
        jdsDocTypes.AddParam('p_db_schema_id', TJanuaFieldType.jptInteger);
        jdsDocAttachments := TJanuaVtDataset.Create(FDM.vtDocAttachments, [TJanuaEntity.DocAttachments]);
      except
        on e: Exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;

end;

procedure TJanuaVirtualDocumentsDataModule.RefreshDetails;
begin
  inherited;

end;

{ TdmVirtualDocuments }

procedure TdmVirtualDocuments.RefreshDetails;
begin
  inherited;

end;

{ TLookupFDacMemDocumentTypes }

destructor TLookupFDacMemDocumentTypes.Destroy;
begin
  FDM.Free;
  inherited;
end;

function TLookupFDacMemDocumentTypes.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmVirtualDocuments;
begin
  try
    FDM := TdmVirtualDocuments.Create(nil);
    { FDM.vtDocType.ParambyName('p_group_id').AsInteger := GetGroupID;
      FDM.vtDocType.Open;
      FDM.vtDocType.Last; }
    Result := TJanuaVtMemDataset.Create(FDM.vtDocType, [TJanuaEntity.DocTypes]);
  except
    on e: Exception do
      RaiseException('InternalCreateDataset', e, self);
  end;

end;

end.
