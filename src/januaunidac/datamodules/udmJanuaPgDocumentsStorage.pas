unit udmJanuaPgDocumentsStorage;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  // Lookup Interface
  Janua.Orm.Intf, Janua.Search.ViewModels.Engines.Intf, Janua.Search.ViewModels.Intf,
  Janua.Controls.Forms.Intf, Janua.Search.ViewModels.Engines.Impl,
  // Documents Module
  udmPgStorage, Janua.Documents.Model.Impl, Janua.Documents.ViewModel.Intf, Janua.Unidac.Connection;

type
  /// <summary> Generic Anagraph Module that contains all anagraphs in one specific schema in database. </summary>
  TdmJanuaPgDocumentsStorage = class(TdmPgStorage, IJanuaDataModule)
    qryDocHeads: TUniQuery;
    qryDocRows: TUniQuery;
    qryDocType: TUniQuery;
    qryDocTypeid: TSmallintField;
    qryDocHeadsid: TLargeintField;
    qryDocHeadstype_id: TSmallintField;
    qryDocHeadsin_out: TSmallintField;
    qryDocHeadsdoc_date: TDateField;
    qryDocHeadsdoc_number: TWideStringField;
    qryDocHeadsreason: TSmallintField;
    qryDocHeadsdest_address: TWideStringField;
    qryDocHeadsdest_postal_code: TWideStringField;
    qryDocHeadsdest_town: TWideStringField;
    qryDocHeadsdest_state_province: TWideStringField;
    qryDocHeadsdest_country_iso: TWideStringField;
    qryDocHeadsdeparture_date: TDateField;
    qryDocHeadsdelivery_methos: TWideStringField;
    qryDocHeadsgoods_description: TWideStringField;
    qryDocHeadspackages_number: TSmallintField;
    qryDocHeadstotal_weight: TFloatField;
    qryDocHeadsincoterms: TWideStringField;
    qryDocHeadsdelivery_charges: TFloatField;
    qryDocHeadsdiscount_rate: TFloatField;
    qryDocHeadsanagraph_id: TIntegerField;
    qryDocHeadscarrier_id: TIntegerField;
    qryDocHeadsdest_state_province_id: TIntegerField;
    qryDocHeadsdest_region_id: TIntegerField;
    qryDocHeadsdest_town_id: TIntegerField;
    qryDocHeadscurrency_id: TSmallintField;
    qryDocHeadspayment_terms_id: TSmallintField;
    qryDocHeadspayment_terms_des: TWideStringField;
    qryDocHeadspackage_description: TWideStringField;
    qryDocHeadspayment_term_code: TWideStringField;
    qryDocHeadsfolder_id: TLargeintField;
    qryDocHeadsdoc_state: TSmallintField;
    qryDocHeadsholder_name: TWideStringField;
    qryDocHeadsholder_id: TIntegerField;
    qryDocHeadsholder_vat_id: TWideStringField;
    qryDocHeadsholder_address: TWideStringField;
    qryDocHeadsholder_postal_code: TWideStringField;
    qryDocHeadsholder_town: TWideStringField;
    qryDocHeadsholder_state_province: TWideStringField;
    qryDocHeadsholder_country_iso: TWideStringField;
    qryDocHeadsdelivery_rate_expense: TFloatField;
    qryDocHeadsholder_group_id: TSmallintField;
    qryDocHeadsamount: TFloatField;
    qryDocHeadsnet_amount: TFloatField;
    qryDocHeadsfinancial_year: TWideStringField;
    qryDocHeadsdoc_origin_id: TFloatField;
    qryDocHeadsdelivery_vat_id: TSmallintField;
    qryDocHeadsdelivery_vat_rate: TFloatField;
    qryDocHeadsaccounted: TBooleanField;
    qryDocHeadsinsert_date: TDateField;
    qryDocHeadsupdate_date: TDateField;
    qryDocHeadsdelivery_due_date: TDateField;
    qryDocHeadssent: TBooleanField;
    qryDocHeadsarrival_date: TDateField;
    qryDocHeadspayment_due_date: TDateField;
    qryDocHeadsduties: TFloatField;
    qryDocHeadspaid: TBooleanField;
    qryDocHeadsdoc_fine: TFloatField;
    qryDocHeadsuser_insert: TIntegerField;
    qryDocHeadsuser_update: TIntegerField;
    qryDocHeadsdoc_year: TFloatField;
    qryDocHeadspo_number_id: TLargeintField;
    qryDocHeadspo_number: TWideStringField;
    qryDocHeadsprinted: TBooleanField;
    qryDocHeadscontact_name: TWideStringField;
    qryDocHeadscontact_email: TWideStringField;
    qryDocHeadscontact_phone: TWideStringField;
    qryDocHeadsoffice_id: TIntegerField;
    qryDocHeadswarehouse_location_id: TIntegerField;
    qryDocHeadsjguid: TGuidField;
    qryDocHeadsnotes1: TWideMemoField;
    qryDocHeadsnotes2: TWideMemoField;
    qryDocHeadsnotes3: TWideMemoField;
    qryDocHeadsdb_schema_id: TIntegerField;
    qryDocHeadspurchase_order_number: TWideStringField;
    qryDocHeadscustom_field_1: TWideStringField;
    qryDocHeadscustom_field_2: TWideStringField;
    qryDocHeadscustom_field_3: TWideStringField;
    qryDocHeadscustom_int_1: TIntegerField;
    qryDocHeadscustom_int_2: TIntegerField;
    qryDocHeadscustom_int_3: TIntegerField;
    qryDocHeadsdoc_ref_code: TWideStringField;
    qryDocHeadscarrier_expenses: TFloatField;
    qryDocHeadsregistry_code: TWideStringField;
    qryDocHeadscarrier_tracking_number: TWideStringField;
    qryDocHeadscarrier_expenses_currency_id: TSmallintField;
    qryDocHeadssearch_index: TWideStringField;
    qryDocTypedb_schema_id: TIntegerField;
    qryDocTypecode: TWideStringField;
    qryDocTypein_out: TFloatField;
    qryDocTypecash: TFloatField;
    qryDocTypecredit: TFloatField;
    qryDocTypedescription: TWideStringField;
    qryDocTypeflg_order: TFloatField;
    qryDocTypeflg_quotation: TFloatField;
    qryDocTypeflg_customers: TFloatField;
    qryDocTypeflg_suppliers: TFloatField;
    qryDocTypecurrency_id: TSmallintField;
    qryDocTypeis_accouting: TBooleanField;
    qryDocTypeac_group_code: TWideStringField;
    qryDocTypeac_ledger_code: TWideStringField;
    qryDocTypeac_subledger_code: TWideStringField;
    qryDocTypeac_group_vat_code: TWideStringField;
    qryDocTypeac_ledger_vat_code: TWideStringField;
    qryDocTypeac_subledger_vat_code: TWideStringField;
    qryDocTypeac_group_taxable_amnt_code: TWideStringField;
    qryDocTypeac_ledger_taxable_amnt_code: TWideStringField;
    qryDocTypeac_subledger_taxable_amnt_code: TWideStringField;
    qryDocTypeac_text: TWideStringField;
    qryDocTypeac_entry: TBooleanField;
    qryDocTypeac_entry_pos: TWideStringField;
    qryDocTypeac_vat_entry_pos: TWideStringField;
    qryDocTypeac_taxable_amnt_entry_pos: TWideStringField;
    qryDocTypegroup_trans_fees_cod: TWideStringField;
    qryDocTypeledger_trans_fees_cod: TWideStringField;
    qryDocTypesubledger_trans_fees_cod: TWideStringField;
    qryDocTypeac_trans_fees_entry: TBooleanField;
    qryDocTypeiso_description: TWideStringField;
    qryDocTypean_group_id: TSmallintField;
    qryDocTypeuser_insert: TIntegerField;
    qryDocTypeuser_update: TIntegerField;
    qryDocTypelocal: TBooleanField;
    qryDocTypedt_vat_registry: TWideStringField;
    qryDocTypebill_book: TBooleanField;
    qryDocTypetype_group: TSmallintField;
    qryDocTypetype_anagraph_id: TIntegerField;
    qryDocTypeshort_description: TWideStringField;
    qryDocTypeNOSTRODOC: TWideStringField;
    qryDocTypeCASSA: TWideStringField;
    qryDocTypewarehouse_register: TFloatField;
    qryDocTypereverse_doc_type: TSmallintField;
    qryDocTypetype_group_id: TSmallintField;
    qryDocTypejguid: TGuidField;
    qryDocTypecustoms_doc_date: TDateField;
    qryDocTypecustoms_doc_cin: TWideStringField;
    qryDocAttachments: TUniQuery;
    qryDocAttachmentsdoc_id: TLargeintField;
    qryDocAttachmentsblob_id: TLargeintField;
    qryDocAttachmentsblob_jguid: TGuidField;
    qryDocHeadsdest_name: TWideStringField;
    qryDocHeadscarrier_name: TWideStringField;
    qryDocHeadslocation_name: TWideStringField;
    qryDocHeadsgoods_type_id: TSmallintField;
    qryDocHeadsimportexport: TSmallintField;
    qryInventory: TUniQuery;
    qryVatAmounts: TUniQuery;
    qryVatAmountsdoc_id: TLargeintField;
    qryVatAmountsvat_id: TSmallintField;
    qryVatAmountstaxable_amount: TCurrencyField;
    qryVatAmountstaxes: TCurrencyField;
    qryVatAmountsvat_rate: TFloatField;
    qryVatAmountsamount: TCurrencyField;
    qryVatAmountsvat_description: TWideStringField;
    qryVatAmountsjguid: TGuidField;
    qryVatAmountsvat_code: TWideStringField;
    qryDocHeadscalc_number: TStringField;
    qryDocHeadsdest_town_postalcode: TStringField;
    qryDocHeadscarrier_invoice_number: TWideStringField;
    qryDocHeadscarrier_invoice_date: TDateField;
    qryDocHeadsworkflow_id: TLargeintField;
    qryDocHeadsvessel_department_id: TSmallintField;
    qryDocHeadspayment_term_id: TSmallintField;
    qryDocHeadsan_code: TWideStringField;
    qryDocHeadsref_date: TDateField;
    qryDocHeadsref_code: TWideStringField;
    qryDocHeadsstamp_duty: TCurrencyField;
    qryDocHeadsexchange_rate: TFloatField;
    qryDocHeadsconversion_date: TDateField;
    qryDocHeadswork_code: TWideStringField;
    qryDocHeadswork_date: TDateField;
    qryDocHeadsdeleted: TBooleanField;
    qryDocHeadscalc_desc_full_Address: TWideStringField;
    qryDocHeadsdest_vat_number: TWideStringField;
    qryDocHeadsholder_vat_number: TWideStringField;
    qryDocHeadscurrency_code: TWideStringField;
    qryDocHeadscurrency_description: TWideMemoField;
    qryDocHeadstaxable_amount: TCurrencyField;
    qryDocHeadsvat_taxes: TCurrencyField;
    qryDocHeadscalc_holder_full_address: TWideStringField;
    qryDocHeadsHolder_town_postalcode: TWideStringField;
    qryDocHeadsindex_guid: TStringField;
    lkpDocTypes: TUniQuery;
    lkpSystemUsers: TUniQuery;
    lkpSystemUsersdb_user_id: TIntegerField;
    lkpSystemUsersemail: TWideStringField;
    lkpSystemUsersusername: TWideStringField;
    qryHeadNextval: TUniQuery;
    qryHeadNextvalnextval: TLargeintField;
    qryRowsNextval: TUniQuery;
    qryRowsNextvalnextval: TLargeintField;
    qryDocHeadsassigned: TSmallintField;
    qryDocHeadsinventory: TBooleanField;
    qryDocHeadscarrier_currency_code: TWideStringField;
    qryDocHeadscarrier_currency_name: TWideStringField;
    qryDocAttachmentslocation: TWideStringField;
    qryDocAttachmentsfilename: TWideStringField;
    qryDocAttachmentsdescription: TWideMemoField;
    qryDocAttachmentscontext: TWideMemoField;
    qryDocAttachmentsextension: TWideStringField;
    qryDocAttachmentsdb_schema_id: TIntegerField;
    qryDocAttachmentsflg_internet: TBooleanField;
    qryDocAttachmentsblob_file: TBlobField;
    qryDocAttachmentsblob_size: TLargeintField;
    qryDocAttachmentsblob_key: TWideStringField;
    qryDocAttachmentsblob_filename: TWideStringField;
    qryDocAttachmentsis_external: TBooleanField;
    qryDocAttachmentsisresource: TBooleanField;
    qryDocAttachmentsjguid: TGuidField;
    qryDocAttachmentsdirectory_id: TLargeintField;
    qryDocAttachmentsdirectory_path: TWideStringField;
    qryDocAttachmentsdb_user_id: TIntegerField;
    qryDocCharges: TUniQuery;
    qryDocAttachmentsdeleted: TBooleanField;
    qryAttachmentsNextVal: TUniQuery;
    qryAttachmentsNextValnextval: TLargeintField;
    qryDocTypeinsert_date: TDateTimeField;
    qryDocTypeupdate_date: TDateTimeField;
    qryDocRowsid: TLargeintField;
    qryDocRowsdoc_id: TLargeintField;
    qryDocRowsitem_id: TLargeintField;
    qryDocRowsrow_date: TDateField;
    qryDocRowsinout: TSmallintField;
    qryDocRowsmodel: TWideStringField;
    qryDocRowscode: TWideStringField;
    qryDocRowsdescription: TWideMemoField;
    qryDocRowsprice: TFloatField;
    qryDocRowsvat_id: TSmallintField;
    qryDocRowsvat_rate: TFloatField;
    qryDocRowsdiscount_rate: TFloatField;
    qryDocRowsdiscount_comm_rate: TFloatField;
    qryDocRowsdiscount_ext_rate: TFloatField;
    qryDocRowsquantity: TFloatField;
    qryDocRowssecondhand: TBooleanField;
    qryDocRowsdimension_id1: TSmallintField;
    qryDocRowsdimension_id2: TSmallintField;
    qryDocRowsdimensions_id3: TSmallintField;
    qryDocRowscurrency_id: TSmallintField;
    qryDocRowsexchange_rate: TFloatField;
    qryDocRowsposition: TSmallintField;
    qryDocRowsdelivery_date: TDateTimeField;
    qryDocRowsbarcode: TWideStringField;
    qryDocRowsdelivered_qty: TFloatField;
    qryDocRowssample_qty: TFloatField;
    qryDocRowsis_sample: TBooleanField;
    qryDocRowsref_code: TWideStringField;
    qryDocRowsdoc_origin_id: TLargeintField;
    qryDocRowsrow_origin_id: TLargeintField;
    qryDocRowsanagrams_ref_id: TIntegerField;
    qryDocRowscollector_points: TSmallintField;
    qryDocRowscollector_points_forfait: TSmallintField;
    qryDocRowspackage_type_id: TSmallintField;
    qryDocRowsjguid: TGuidField;
    qryDocRowsordered_qty: TFloatField;
    qryDocRowspallets: TSmallintField;
    qryDocRowsweight_on_delivery: TFloatField;
    qryDocRowsweight_on_order: TFloatField;
    qryDocRowsweight_on_shipping: TFloatField;
    qryDocRowsvolume: TFloatField;
    qryDocRowsdoc_origin_number: TWideStringField;
    qryDocRowsdoc_origin_date: TDateField;
    qryDocRowscustoms_doc_ref: TWideStringField;
    qryDocRowscustoms_doc_type_id: TSmallintField;
    qryDocRowspurchase_order: TWideStringField;
    qryDocRowsuser_insert: TIntegerField;
    qryDocRowsuser_update: TIntegerField;
    qryDocRowssize_weight: TFloatField;
    qryDocRowssize_length: TFloatField;
    qryDocRowssize_height: TFloatField;
    qryDocRowsinventory_qty: TFloatField;
    qryDocRowsinventory_weight: TFloatField;
    qryDocRowscustoms_doc_cin: TWideStringField;
    qryDocRowscustoms_doc_date: TDateField;
    qryDocRowssupplier_id: TIntegerField;
    qryDocRowsdoc_origin__number: TWideStringField;
    qryDocRowsdb_schema_id: TIntegerField;
    qryDocRowsdoc_head_jguid: TGuidField;
    qryDocRowsitem_jguid: TGuidField;
    qryDocRowscontainer_status: TWideStringField;
    qryDocRowsrights: TFloatField;
    qryDocRowsinvoice_number: TWideStringField;
    qryDocRowscustom_field_1: TWideStringField;
    qryDocRowscustom_field_2: TWideStringField;
    qryDocRowsinvoice_amount: TFloatField;
    qryDocRowscustom_field_3: TWideStringField;
    qryDocRowsjson_nested_table: TWideMemoField;
    qryDocRowsinvoice_date: TDateField;
    qryDocRowsimportexport: TSmallintField;
    qryDocRowstype_id: TSmallintField;
    qryDocRowsis_description: TBooleanField;
    qryDocRowsexchange_rage: TFloatField;
    qryDocRowsfreight_qty: TFloatField;
    qryDocRowsamount: TCurrencyField;
    qryDocRowsvat_code: TWideStringField;
    qryDocRowsfreight_rate: TIntegerField;
    qryDocRowsvat_description: TWideStringField;
    qryDocRowscurrency_code: TWideStringField;
    qryDocRowscurrency_description: TWideStringField;
    qryDocRowsflg_description: TBooleanField;
    qryDocRowssupplier_name: TWideStringField;
    qryInventoryid: TLargeintField;
    qryInventorydoc_id: TLargeintField;
    qryInventoryitem_id: TLargeintField;
    qryInventoryrow_date: TDateField;
    qryInventoryinout: TSmallintField;
    qryInventorymodel: TWideStringField;
    qryInventorycode: TWideStringField;
    qryInventorydescription: TWideMemoField;
    qryInventoryprice: TFloatField;
    qryInventoryvat_id: TSmallintField;
    qryInventoryvat_rate: TFloatField;
    qryInventorydiscount_rate: TFloatField;
    qryInventorydiscount_comm_rate: TFloatField;
    qryInventorydiscount_ext_rate: TFloatField;
    qryInventoryquantity: TFloatField;
    qryInventorysecondhand: TBooleanField;
    qryInventorydimension_id1: TSmallintField;
    qryInventorydimension_id2: TSmallintField;
    qryInventorydimensions_id3: TSmallintField;
    qryInventorycurrency_id: TSmallintField;
    qryInventoryexchange_rate: TFloatField;
    qryInventoryposition: TSmallintField;
    qryInventorydelivery_date: TDateTimeField;
    qryInventorybarcode: TWideStringField;
    qryInventorydelivered_qty: TFloatField;
    qryInventorysample_qty: TFloatField;
    qryInventoryis_sample: TBooleanField;
    qryInventoryref_code: TWideStringField;
    qryInventorydoc_origin_id: TLargeintField;
    qryInventoryrow_origin_id: TLargeintField;
    qryInventoryanagrams_ref_id: TIntegerField;
    qryInventorycollector_points: TSmallintField;
    qryInventorycollector_points_forfait: TSmallintField;
    qryInventorypackage_type_id: TSmallintField;
    qryInventoryjguid: TGuidField;
    qryInventoryordered_qty: TFloatField;
    qryInventorypallets: TSmallintField;
    qryInventoryweight_on_delivery: TFloatField;
    qryInventoryweight_on_order: TFloatField;
    qryInventoryweight_on_shipping: TFloatField;
    qryInventoryvolume: TFloatField;
    qryInventorydoc_origin_number: TWideStringField;
    qryInventorydoc_origin_date: TDateField;
    qryInventorycustoms_doc_ref: TWideStringField;
    qryInventorycustoms_doc_type_id: TSmallintField;
    qryInventorypurchase_order: TWideStringField;
    qryInventoryinsert_date: TDateTimeField;
    qryInventoryupdate_date: TDateTimeField;
    qryInventoryuser_insert: TIntegerField;
    qryInventoryuser_update: TIntegerField;
    qryInventorysize_weight: TFloatField;
    qryInventorysize_length: TFloatField;
    qryInventorysize_height: TFloatField;
    qryInventoryinventory_qty: TFloatField;
    qryInventoryinventory_weight: TFloatField;
    qryInventorycustoms_doc_cin: TWideStringField;
    qryInventorycustoms_doc_date: TDateField;
    qryInventorysupplier_id: TIntegerField;
    qryInventorydoc_origin__number: TWideStringField;
    qryInventorydb_schema_id: TIntegerField;
    qryInventorydoc_head_jguid: TGuidField;
    qryInventoryitem_jguid: TGuidField;
    qryInventorycontainer_status: TWideStringField;
    qryInventoryrights: TFloatField;
    qryInventoryinvoice_number: TWideStringField;
    qryInventorycustom_field_1: TWideStringField;
    qryInventorycustom_field_2: TWideStringField;
    qryInventoryinvoice_amount: TFloatField;
    qryInventorycustom_field_3: TWideStringField;
    qryInventoryjson_nested_table: TWideMemoField;
    qryInventoryinvoice_date: TDateField;
    qryInventoryimportexport: TSmallintField;
    qryInventorytype_id: TSmallintField;
    qryInventoryis_description: TBooleanField;
    qryInventoryexchange_rage: TFloatField;
    qryInventoryfreight_qty: TFloatField;
    qryInventoryamount: TCurrencyField;
    qryInventoryvat_code: TWideStringField;
    qryInventoryfreight_rate: TIntegerField;
    qryInventoryvat_description: TWideStringField;
    qryInventorycurrency_code: TWideStringField;
    qryInventorycurrency_description: TWideStringField;
    qryInventoryflg_description: TBooleanField;
    qryInventoryid_1: TLargeintField;
    qryInventorytype_id_1: TSmallintField;
    qryInventoryin_out: TSmallintField;
    qryInventorydoc_date: TDateField;
    qryInventorydoc_number: TWideStringField;
    qryInventoryreason: TSmallintField;
    qryInventorydest_address: TWideStringField;
    qryInventorydest_postal_code: TWideStringField;
    qryInventorydest_town: TWideStringField;
    qryInventorydest_state_province: TWideStringField;
    qryInventorydest_country_iso: TWideStringField;
    qryInventorydeparture_date: TDateField;
    qryInventorydelivery_methos: TWideStringField;
    qryInventorygoods_description: TWideStringField;
    qryInventorypackages_number: TSmallintField;
    qryInventorytotal_weight: TFloatField;
    qryInventoryincoterms: TWideStringField;
    qryInventorydelivery_charges: TFloatField;
    qryInventorydiscount_rate_1: TFloatField;
    qryInventoryanagraph_id: TIntegerField;
    qryInventorycarrier_id: TIntegerField;
    qryInventorydest_state_province_id: TIntegerField;
    qryInventorydest_region_id: TIntegerField;
    qryInventorydest_town_id: TIntegerField;
    qryInventorycurrency_id_1: TSmallintField;
    qryInventorypayment_terms_id: TSmallintField;
    qryInventorypayment_terms_des: TWideStringField;
    qryInventorypackage_description: TWideStringField;
    qryInventorypayment_term_code: TWideStringField;
    qryInventoryfolder_id: TLargeintField;
    qryInventorydoc_state: TSmallintField;
    qryInventoryholder_name: TWideStringField;
    qryInventoryholder_id: TIntegerField;
    qryInventoryholder_vat_id: TWideStringField;
    qryInventoryholder_address: TWideStringField;
    qryInventoryholder_postal_code: TWideStringField;
    qryInventoryholder_town: TWideStringField;
    qryInventoryholder_state_province: TWideStringField;
    qryInventoryholder_country_iso: TWideStringField;
    qryInventorydelivery_rate_expense: TFloatField;
    qryInventoryholder_group_id: TSmallintField;
    qryInventoryamount_1: TFloatField;
    qryInventorynet_amount: TFloatField;
    qryInventoryfinancial_year: TWideStringField;
    qryInventorydoc_origin_id_1: TFloatField;
    qryInventorydelivery_vat_id: TSmallintField;
    qryInventorydelivery_vat_rate: TFloatField;
    qryInventoryaccounted: TBooleanField;
    qryInventoryinsert_date_1: TDateField;
    qryInventoryupdate_date_1: TDateField;
    qryInventorydelivery_due_date: TDateField;
    qryInventorysent: TBooleanField;
    qryInventoryarrival_date: TDateField;
    qryInventorypayment_due_date: TDateField;
    qryInventoryduties: TFloatField;
    qryInventorypaid: TBooleanField;
    qryInventorydoc_fine: TFloatField;
    qryInventoryuser_insert_1: TIntegerField;
    qryInventoryuser_update_1: TIntegerField;
    qryInventorydoc_year: TFloatField;
    qryInventorypo_number_id: TLargeintField;
    qryInventorypo_number: TWideStringField;
    qryInventoryprinted: TBooleanField;
    qryInventorycontact_name: TWideStringField;
    qryInventorycontact_email: TWideStringField;
    qryInventorycontact_phone: TWideStringField;
    qryInventoryoffice_id: TIntegerField;
    qryInventorywarehouse_location_id: TIntegerField;
    qryInventoryjguid_1: TGuidField;
    qryInventorynotes1: TWideMemoField;
    qryInventorynotes2: TWideMemoField;
    qryInventorynotes3: TWideMemoField;
    qryInventorydb_schema_id_1: TIntegerField;
    qryInventorypurchase_order_number: TWideStringField;
    qryInventorycustom_field_1_1: TWideStringField;
    qryInventorycustom_field_2_1: TWideStringField;
    qryInventorycustom_field_3_1: TWideStringField;
    qryInventorycustom_int_1: TIntegerField;
    qryInventorycustom_int_2: TIntegerField;
    qryInventorycustom_int_3: TIntegerField;
    qryInventorydoc_ref_code: TWideStringField;
    qryInventorycarrier_expenses: TFloatField;
    qryInventoryregistry_code: TWideStringField;
    qryInventorycarrier_tracking_number: TWideStringField;
    qryInventorycarrier_expenses_currency_id: TSmallintField;
    qryInventorysearch_index: TWideStringField;
    qryInventorydest_name: TWideStringField;
    qryInventorycarrier_name: TWideStringField;
    qryInventorylocation_name: TWideStringField;
    qryInventorygoods_type_id: TSmallintField;
    qryInventoryimportexport_1: TSmallintField;
    qryInventorycarrier_invoice_number: TWideStringField;
    qryInventorycarrier_invoice_date: TDateField;
    qryInventoryworkflow_id: TLargeintField;
    qryInventoryvessel_department_id: TSmallintField;
    qryInventorypayment_term_id: TSmallintField;
    qryInventoryan_code: TWideStringField;
    qryInventoryref_date: TDateField;
    qryInventoryref_code_1: TWideStringField;
    qryInventorystamp_duty: TFloatField;
    qryInventoryexchange_rate_1: TFloatField;
    qryInventoryconversion_date: TDateField;
    qryInventorywork_code: TWideStringField;
    qryInventorywork_date: TDateField;
    qryInventorydeleted: TBooleanField;
    qryInventorydest_vat_number: TWideStringField;
    qryInventoryholder_vat_number: TWideStringField;
    qryInventorycurrency_code_1: TWideStringField;
    qryInventorycurrency_description_1: TWideMemoField;
    qryInventorytaxable_amount: TFloatField;
    qryInventoryvat_taxes: TFloatField;
    qryInventoryassigned: TSmallintField;
    qryInventoryinventory: TBooleanField;
    qryDocChargesid: TLargeintField;
    qryDocChargesdoc_id: TLargeintField;
    qryDocChargesitem_id: TLargeintField;
    qryDocChargesrow_date: TDateField;
    qryDocChargesinout: TSmallintField;
    qryDocChargesmodel: TWideStringField;
    qryDocChargescode: TWideStringField;
    qryDocChargesdescription: TWideMemoField;
    qryDocChargesprice: TFloatField;
    qryDocChargesvat_id: TSmallintField;
    qryDocChargesvat_rate: TFloatField;
    qryDocChargesdiscount_rate: TFloatField;
    qryDocChargesdiscount_comm_rate: TFloatField;
    qryDocChargesdiscount_ext_rate: TFloatField;
    qryDocChargesquantity: TFloatField;
    qryDocChargessecondhand: TBooleanField;
    qryDocChargesdimension_id1: TSmallintField;
    qryDocChargesdimension_id2: TSmallintField;
    qryDocChargesdimensions_id3: TSmallintField;
    qryDocChargescurrency_id: TSmallintField;
    qryDocChargesexchange_rate: TFloatField;
    qryDocChargesposition: TSmallintField;
    qryDocChargesdelivery_date: TDateTimeField;
    qryDocChargesbarcode: TWideStringField;
    qryDocChargesdelivered_qty: TFloatField;
    qryDocChargessample_qty: TFloatField;
    qryDocChargesis_sample: TBooleanField;
    qryDocChargesref_code: TWideStringField;
    qryDocChargesdoc_origin_id: TLargeintField;
    qryDocChargesrow_origin_id: TLargeintField;
    qryDocChargesanagrams_ref_id: TIntegerField;
    qryDocChargescollector_points: TSmallintField;
    qryDocChargescollector_points_forfait: TSmallintField;
    qryDocChargespackage_type_id: TSmallintField;
    qryDocChargesjguid: TGuidField;
    qryDocChargesordered_qty: TFloatField;
    qryDocChargespallets: TSmallintField;
    qryDocChargesweight_on_delivery: TFloatField;
    qryDocChargesweight_on_order: TFloatField;
    qryDocChargesweight_on_shipping: TFloatField;
    qryDocChargesvolume: TFloatField;
    qryDocChargesdoc_origin_number: TWideStringField;
    qryDocChargesdoc_origin_date: TDateField;
    qryDocChargescustoms_doc_ref: TWideStringField;
    qryDocChargescustoms_doc_type_id: TSmallintField;
    qryDocChargespurchase_order: TWideStringField;
    qryDocChargesuser_insert: TIntegerField;
    qryDocChargesuser_update: TIntegerField;
    qryDocChargessize_weight: TFloatField;
    qryDocChargessize_length: TFloatField;
    qryDocChargessize_height: TFloatField;
    qryDocChargesinventory_qty: TFloatField;
    qryDocChargesinventory_weight: TFloatField;
    qryDocChargescustoms_doc_cin: TWideStringField;
    qryDocChargescustoms_doc_date: TDateField;
    qryDocChargessupplier_id: TIntegerField;
    qryDocChargesdoc_origin__number: TWideStringField;
    qryDocChargesdb_schema_id: TIntegerField;
    qryDocChargesdoc_head_jguid: TGuidField;
    qryDocChargesitem_jguid: TGuidField;
    qryDocChargescontainer_status: TWideStringField;
    qryDocChargesrights: TFloatField;
    qryDocChargesinvoice_number: TWideStringField;
    qryDocChargescustom_field_1: TWideStringField;
    qryDocChargescustom_field_2: TWideStringField;
    qryDocChargesinvoice_amount: TFloatField;
    qryDocChargescustom_field_3: TWideStringField;
    qryDocChargesjson_nested_table: TWideMemoField;
    qryDocChargesinvoice_date: TDateField;
    qryDocChargesimportexport: TSmallintField;
    qryDocChargestype_id: TSmallintField;
    qryDocChargesis_description: TBooleanField;
    qryDocChargesexchange_rage: TFloatField;
    qryDocChargesfreight_qty: TFloatField;
    qryDocChargesamount: TCurrencyField;
    qryDocChargesvat_code: TWideStringField;
    qryDocChargesfreight_rate: TIntegerField;
    qryDocChargesvat_description: TWideStringField;
    qryDocChargescurrency_code: TWideStringField;
    qryDocChargescurrency_description: TWideStringField;
    qryDocChargesflg_description: TBooleanField;
    qryDocChargessupplier_name: TWideStringField;
    lkpDocTypesid: TSmallintField;
    lkpDocTypesdb_schema_id: TIntegerField;
    lkpDocTypescode: TWideStringField;
    lkpDocTypesin_out: TFloatField;
    lkpDocTypescash: TFloatField;
    lkpDocTypescredit: TFloatField;
    lkpDocTypesdescription: TWideStringField;
    lkpDocTypesflg_order: TFloatField;
    lkpDocTypesflg_quotation: TFloatField;
    lkpDocTypesflg_customers: TFloatField;
    lkpDocTypesflg_suppliers: TFloatField;
    lkpDocTypescurrency_id: TSmallintField;
    lkpDocTypesis_accouting: TBooleanField;
    lkpDocTypesac_group_code: TWideStringField;
    lkpDocTypesac_ledger_code: TWideStringField;
    lkpDocTypesac_subledger_code: TWideStringField;
    lkpDocTypesac_group_vat_code: TWideStringField;
    lkpDocTypesac_ledger_vat_code: TWideStringField;
    lkpDocTypesac_subledger_vat_code: TWideStringField;
    lkpDocTypesac_group_taxable_amnt_code: TWideStringField;
    lkpDocTypesac_ledger_taxable_amnt_code: TWideStringField;
    lkpDocTypesac_subledger_taxable_amnt_code: TWideStringField;
    lkpDocTypesac_text: TWideStringField;
    lkpDocTypesac_entry: TBooleanField;
    lkpDocTypesac_entry_pos: TWideStringField;
    lkpDocTypesac_vat_entry_pos: TWideStringField;
    lkpDocTypesac_taxable_amnt_entry_pos: TWideStringField;
    lkpDocTypesgroup_trans_fees_cod: TWideStringField;
    lkpDocTypesledger_trans_fees_cod: TWideStringField;
    lkpDocTypessubledger_trans_fees_cod: TWideStringField;
    lkpDocTypesac_trans_fees_entry: TBooleanField;
    lkpDocTypesiso_description: TWideStringField;
    lkpDocTypesan_group_id: TSmallintField;
    lkpDocTypesinsert_date: TDateTimeField;
    lkpDocTypesupdate_date: TDateTimeField;
    lkpDocTypesuser_insert: TIntegerField;
    lkpDocTypesuser_update: TIntegerField;
    lkpDocTypeslocal: TBooleanField;
    lkpDocTypesdt_vat_registry: TWideStringField;
    lkpDocTypesbill_book: TBooleanField;
    lkpDocTypestype_group: TSmallintField;
    lkpDocTypestype_anagraph_id: TIntegerField;
    lkpDocTypesshort_description: TWideStringField;
    lkpDocTypesNOSTRODOC: TWideStringField;
    lkpDocTypesCASSA: TWideStringField;
    lkpDocTypeswarehouse_register: TFloatField;
    lkpDocTypesreverse_doc_type: TSmallintField;
    lkpDocTypestype_group_id: TSmallintField;
    lkpDocTypesjguid: TGuidField;
    lkpDocTypescustoms_doc_date: TDateField;
    lkpDocTypescustoms_doc_cin: TWideStringField;
    qryDocRowscalc_size_description: TStringField;
    lkpVatRates: TUniQuery;
    lkpVatRatesid: TSmallintField;
    lkpVatRatesjguid: TGuidField;
    lkpVatRatesdb_schema_id: TIntegerField;
    lkpVatRatescode: TWideStringField;
    lkpVatRatesdescription: TWideStringField;
    lkpVatRatesvat_rate: TFloatField;
    lkpVatRatesnon_deductible_rate: TFloatField;
    lkpVatRatesvat_group_id: TSmallintField;
    lkpVatRatesvat_separation: TBooleanField;
    lkpVatRatesvat_separtion_rate: TFloatField;
    lkpVatRatesvat_translation_id: TSmallintField;
    lkpVatRatesvat_enabled: TBooleanField;
    lkpHazmatD: TUniQuery;
    lkpHazmatDcode: TWideStringField;
    qryDocRowshaz_class: TWideStringField;
    qryDocHeadslocation_code: TWideStringField;
    qryDocHeadsvessel_id: TIntegerField;
    qryDocHeadsvessel_name: TWideStringField;
    qryDocHeadsvessel_code: TWideStringField;
    qryDocHeadsshipment_des: TWideStringField;
    procedure lkpSystemUsersBeforeOpen(DataSet: TDataSet);
    procedure qryDocAttachmentsBeforePost(DataSet: TDataSet);
    procedure qryDocChargesBeforePost(DataSet: TDataSet);
    procedure qryDocHeadsAfterOpen(DataSet: TDataSet);
    procedure qryDocHeadsAfterScroll(DataSet: TDataSet);
    procedure qryDocHeadsBeforeOpen(DataSet: TDataSet);
    procedure qryDocHeadsBeforePost(DataSet: TDataSet);
    procedure qryDocHeadsCalcFields(DataSet: TDataSet);
    procedure qryDocRowsCalcFields(DataSet: TDataSet);
    procedure qryDocRowsBeforePost(DataSet: TDataSet);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  private
    FDocTypeID: integer;
    FMainSearchText: string;
    procedure SetDocTypeID(const Value: integer);
    procedure SetMainSearchText(const Value: string);
    { Private declarations }
  protected
    procedure RefreshDetails; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    property MainSearchText: string read FMainSearchText write SetMainSearchText;
    property DocTypeID: integer read FDocTypeID write SetDocTypeID;
  end;

  TJanuaPgDocumentsDataModule = class(TJanuaCustomDocumentDataModule, IJanuaDocumentsDataModule)
  private
    { Private declarations }
    FDM: TdmJanuaPgDocumentsStorage;
  protected
    procedure GetInternalCreate; override;
    { Private declarations }
  public
    { Public declarations }
  public
    destructor Destroy; override;
    constructor Create; override;
  end;

type
  TLookupPostgresDocumentTypes = class(TLookupModelDocumentTypes, ILookupModelDocumentTypes, ILookupModel)
  private
    FDM: TdmJanuaPgDocumentsStorage;
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmJanuaPgDocumentsStorage: TdmJanuaPgDocumentsStorage;

implementation

uses System.StrUtils, Janua.Orm.UniDac, Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework,
  Janua.Uni.Virtual;
{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

{ TJanuaPgDocumentsDataModule }
constructor TJanuaPgDocumentsDataModule.Create;
begin
  inherited;
end;

destructor TJanuaPgDocumentsDataModule.Destroy;
begin
  if Assigned(self.FDM) then
    FreeAndNil(FDM);
  inherited;
end;

procedure TJanuaPgDocumentsDataModule.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      try
        FDM := TdmJanuaPgDocumentsStorage.Create(nil);
        SetMainDataModule(FDM);
        jdsDocCharges := TJanuaPgDataset.Create(FDM.qryDocCharges, [TJanuaEntity.DocHeads]);
        jdsDocHeads := TJanuaPgDataset.Create(FDM.qryDocHeads, [TJanuaEntity.DocHeads]);
        jdsDocRows := TJanuaPgDataset.Create(FDM.qryDocRows, [TJanuaEntity.DocRows]);
        jdsDocTypes := TJanuaPgDataset.Create(FDM.qryDocType, [TJanuaEntity.DocTypes]);
        jdsDocAttachments := TJanuaPgDataset.Create(FDM.qryDocAttachments, [TJanuaEntity.DocAttachments]);
        jdsVatAmounts := TJanuaPgDataset.Create(FDM.qryVatAmounts, [TJanuaEntity.DocVatAmounts]);
      except
        on e: exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

constructor TdmJanuaPgDocumentsStorage.Create(AOwner: TComponent);
begin
  inherited;
  LazyLoading := True;
end;

procedure TdmJanuaPgDocumentsStorage.lkpSystemUsersBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  lkpSystemUsers.ParambyName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
end;

procedure TdmJanuaPgDocumentsStorage.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  // For Testing purposes
  inherited;

end;

procedure TdmJanuaPgDocumentsStorage.qryDocAttachmentsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocAttachmentsdb_schema_id.AsInteger = 0 then
    qryDocAttachmentsdb_schema_id.AsInteger := TJanuaApplication.UserSessionVM.CurrentRecord.
      Db_schema_id.AsInteger;
  IF qryDocAttachmentsdb_user_id.AsInteger = 0 then
    qryDocAttachmentsdb_user_id.AsInteger := TJanuaApplication.UserSessionVM.CurrentRecord.
      Db_user_id.AsInteger;
  if self.qryDocAttachmentsdoc_id.AsLargeInt = 0 then
    qryDocAttachmentsdoc_id.AsLargeInt := self.qryDocHeadsid.AsLargeInt;


  if self.qryDocAttachmentsblob_id.IsNull or (qryDocAttachmentsblob_id.Value = 0) then
  begin
    qryAttachmentsNextval.Close;
    qryAttachmentsNextval.Open;
    qryDocAttachmentsblob_id.Value := qryAttachmentsNextvalnextval.AsInteger;
    qryAttachmentsNextval.Close;
  end;

end;

procedure TdmJanuaPgDocumentsStorage.qryDocChargesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocChargesamount.IsNull then
    qryDocChargesamount.AsInteger := 0;
  qryDocChargesdoc_head_jguid.AsString := qryDocHeadsjguid.AsString;
  qryDocChargesdoc_id.AsLargeInt := qryDocHeadsid.AsLargeInt;
  if qryDocChargesinout.IsNull then
    qryDocChargesinout.Value := qryDocHeadsin_out.Value;
  if qryDocChargesprice.IsNull then
    qryDocChargesprice.AsFloat := 0.0;
  if qryDocChargesvat_rate.IsNull then
    qryDocChargesvat_rate.Value := 0.0;
  if qryDocChargesquantity.IsNull then
    qryDocChargesquantity.Value := 1;
  if qryDocChargesdiscount_rate.IsNull then
    qryDocChargesdiscount_rate.Value := 0.0;
  if qryDocChargesdiscount_comm_rate.IsNull then
    qryDocChargesdiscount_comm_rate.Value := 0.0;
  if qryDocChargesdiscount_ext_rate.IsNull then
    qryDocChargesdiscount_ext_rate.Value := 0.0;
  if qryDocChargesid.AsInteger = 0 then
  begin
    qryRowsNextval.Close;
    qryRowsNextval.Open;
    qryDocChargesid.Value := qryRowsNextvalnextval.AsInteger;
    qryRowsNextval.Close;
  end;
  if qryDocChargesitem_id.AsInteger = 0 then
    qryDocChargesitem_id.AsInteger := 2;
  if qryDocChargestype_id.AsInteger = 0 then
    qryDocChargestype_id.AsInteger := 4;

  if qryDocChargesrow_date.IsNull or (qryDocChargesrow_date.AsFloat = 0.0) then
    qryDocChargesrow_date.AsDateTime := qryDocHeadsdoc_date.AsDateTime;
end;

procedure TdmJanuaPgDocumentsStorage.qryDocHeadsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if not LazyLoading then
    RefreshDetails;
end;

procedure TdmJanuaPgDocumentsStorage.qryDocHeadsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if not LazyLoading then
    RefreshDetails
end;

procedure TdmJanuaPgDocumentsStorage.qryDocHeadsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  {$IFDEF TESTPOSTGRES}
    //(:test or exists (select 1 from documents.rows r where r.doc_id = h.id))
    qryDocHeads.ParambyName('test').AsBoolean := False;
  {$ENDIF}
  qryDocHeads.ParambyName('p_db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
  if qryDocHeads.ParambyName('p_search_name').AsString = '' then
    qryDocHeads.ParambyName('p_search_name').AsString := '%';
end;

procedure TdmJanuaPgDocumentsStorage.qryDocHeadsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocHeadscurrency_id.IsNull then
    qryDocHeadscurrency_id.AsInteger := 1;
  if qryDocHeadsid.IsNull or (qryDocHeadsid.Value = 0) then
  begin
    qryHeadNextval.Close;
    qryHeadNextval.Open;
    qryDocHeadsid.Value := qryHeadNextvalnextval.AsInteger;
    qryHeadNextval.Close;
  end;
  if qryDocHeadsdoc_number.IsNull then
    qryDocHeadsdoc_number.AsInteger := qryDocHeadsid.AsInteger;
end;

procedure TdmJanuaPgDocumentsStorage.qryDocHeadsCalcFields(DataSet: TDataSet);
var
  bCode, bTown, bState: boolean;
  a: IStringBuilder;
begin
  inherited;
  qryDocHeadscalc_number.AsString := qryDocHeadsdoc_number.AsString + '/' + qryDocHeadsdoc_year.AsString;
  bCode := qryDocHeadsdest_postal_code.AsString <> '';
  bTown := qryDocHeadsdest_town.AsString <> '';
  bState := qryDocHeadsdest_state_province.AsString <> '';
  qryDocHeadsdest_town_postalcode.AsString := qryDocHeadsdest_postal_code.AsString +
    ifThen(bCode and bTown, ', ', '') + qryDocHeadsdest_town.AsString + ifThen(bState and (bTown or bCode),
    ', (', '') + qryDocHeadsdest_state_province.AsString + ifThen(bState, ')', '');
  a := TJanuaStringBuilder.Create;
  a.AppendLine(qryDocHeadsdest_name.AsWideString);
  a.AppendLine(qryDocHeadsdest_town_postalcode.AsWideString);
  if qryDocHeadsdest_vat_number.Value <> '' then
    a.AppendLine('European VAT No: ' + qryDocHeadsdest_country_iso.AsWideString +
      qryDocHeadsdest_vat_number.AsWideString);
  qryDocHeadscalc_desc_full_Address.AsWideString := a.ToString;
  a.Clear;
  bCode := qryDocHeadsholder_postal_code.AsString <> '';
  bTown := qryDocHeadsholder_town.AsString <> '';
  bState := qryDocHeadsholder_state_province.AsString <> '';
  qryDocHeadsHolder_town_postalcode.AsString := qryDocHeadsholder_postal_code.AsString +
    ifThen(bCode and bTown, ', ', '') + qryDocHeadsholder_town.AsString + ifThen(bState and (bTown or bCode),
    ', (', '') + qryDocHeadsholder_state_province.AsString + ifThen(bState, ')', '');
  a := TJanuaStringBuilder.Create;
  a.AppendLine(qryDocHeadsholder_name.AsWideString);
  a.AppendLine(qryDocHeadsHolder_town_postalcode.AsWideString);
  if qryDocHeadsholder_vat_number.Value <> '' then
    a.AppendLine('European VAT No: ' + qryDocHeadsholder_country_iso.AsWideString +
      qryDocHeadsholder_vat_number.AsWideString);
  qryDocHeadscalc_holder_full_address.AsWideString := a.ToString;
  a.Clear;
end;

procedure TdmJanuaPgDocumentsStorage.qryDocRowsBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qryDocRowsamount.IsNull then
    qryDocRowsamount.AsInteger := 0;
  qryDocRowsdoc_head_jguid.AsString := qryDocHeadsjguid.AsString;
  qryDocRowsdoc_id.AsLargeInt := qryDocHeadsid.AsLargeInt;
  if qryDocRowsinout.IsNull then
    qryDocRowsinout.Value := qryDocHeadsin_out.Value;
  if qryDocRowsprice.IsNull then
    qryDocRowsprice.AsFloat := 0.0;
  if qryDocRowsvat_rate.IsNull then
    qryDocRowsvat_rate.Value := 0.0;
  if qryDocRowsquantity.IsNull then
    qryDocRowsquantity.Value := 1;
  if qryDocRowsdiscount_rate.IsNull then
    qryDocRowsdiscount_rate.Value := 0.0;
  if qryDocRowsdiscount_comm_rate.IsNull then
    qryDocRowsdiscount_comm_rate.Value := 0.0;
  if qryDocRowsdiscount_ext_rate.IsNull then
    qryDocRowsdiscount_ext_rate.Value := 0.0;
  if qryDocRowsid.AsInteger = 0 then
  begin
    qryRowsNextval.Close;
    qryRowsNextval.Open;
    qryDocRowsid.Value := qryRowsNextvalnextval.AsInteger;
    qryRowsNextval.Close;
  end;
  if qryDocRowsrow_date.IsNull or (qryDocRowsrow_date.AsFloat = 0.0) then
    qryDocRowsrow_date.AsDateTime := qryDocHeadsdoc_date.AsDateTime;
end;

procedure TdmJanuaPgDocumentsStorage.qryDocRowsCalcFields(DataSet: TDataSet);
begin
  inherited;
  qryDocRowscalc_size_description.AsWideString := qryDocRowssize_height.AsWideString + 'x' +
    qryDocRowssize_length.AsWideString + 'x' + qryDocRowssize_weight.AsString
end;

procedure TdmJanuaPgDocumentsStorage.RefreshDetails;
begin
  if qryDocRows.ParambyName('id').AsInteger <> qryDocHeadsid.AsInteger then
  begin
    qryDocRows.Close;
    qryDocRows.ParambyName('id').AsInteger := qryDocHeadsid.AsInteger;
    qryDocRows.Open;
    qryDocCharges.Close;
    qryDocCharges.ParambyName('id').AsInteger := qryDocHeadsid.AsInteger;
    qryDocCharges.Open;
    qryDocAttachments.Close;
    qryDocAttachments.ParambyName('id').AsInteger := qryDocHeadsid.AsInteger;
    qryDocAttachments.Open;
    qryVatAmounts.Close;
    qryVatAmounts.ParambyName('id').AsInteger := qryDocHeadsid.AsInteger;
    qryVatAmounts.Open;
  end;
end;

procedure TdmJanuaPgDocumentsStorage.SetDocTypeID(const Value: integer);
begin
  FDocTypeID := Value;
  qryDocHeads.ParambyName('p_group_id').AsLargeInt := FDocTypeID;
end;

procedure TdmJanuaPgDocumentsStorage.SetMainSearchText(const Value: string);
begin
  FMainSearchText := Value;
end;

{ TJanuaVirtualSearchDocTypes }
function TLookupPostgresDocumentTypes.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmJanuaPgDocumentsStorage;
begin
  try
    FDM := TdmJanuaPgDocumentsStorage.Create(nil);
    try
      FDM.lkpDocTypes.ParambyName('p_group_id').AsInteger := GetGroupID;
      FDM.lkpDocTypes.Open;
      FDM.lkpDocTypes.Last;
      Result := TJanuaUniMemTable.CreateWithEntities(FDM.lkpDocTypes, [TJanuaEntity.DocTypes]);
    finally
      FDM.Free;
    end;
  except
    on e: exception do
      RaiseException('InternalCreateDataset', e, self);
  end;
end;

end.
