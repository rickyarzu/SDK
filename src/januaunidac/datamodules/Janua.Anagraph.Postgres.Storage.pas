unit Janua.Anagraph.Postgres.Storage;

interface

uses
  System.SysUtils, System.Classes,
  // UniDAC
  UniProvider, PostgreSQLUniProvider, Data.DB, DBAccess, Uni, MemDS,
  // Januaproject
  udmPgStorage,
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, Janua.Anagraph.Model.Impl,
  Janua.Search.ViewModels.Engines.Intf, Janua.Anagraph.ViewModel.Intf, Janua.Orm.Intf,
  Janua.Unidac.Connection;

type
  /// <summary>
  /// Generic Anagraph Module that contains all anagraphs in one specific
  /// schema in database.
  /// </summary>
  TdmJanuaPgAnagraphStorage = class(TdmPgStorage)
    lkpGroups: TUniQuery;
    lkpGroupsdb_schema_id: TIntegerField;
    lkpGroupsan_group_id: TSmallintField;
    lkpGroupsgroup_des: TWideStringField;
    lkpGroupscontact_group: TSmallintField;
    lkpGroupssub_group: TSmallintField;
    lkpGroupssub_group_des: TWideStringField;
    lkpGroupssettings: TWideStringField;
    lkpGroupsposition: TSmallintField;
    lkpGroupsaccounting: TBooleanField;
    lkpGroupscod_account: TWideStringField;
    lkpGroupslocal: TBooleanField;
    lkpGroupsgroup_cod: TWideStringField;
    lkpGroupsledger_cod: TWideStringField;
    lkpGroupssubledger_cod: TWideStringField;
    lkpGroupsgrouping: TWideStringField;
    lkpGroupsdescription: TWideStringField;
    dsAnagraph: TDataSource;
    lkpCategories: TUniQuery;
    lkpCategoriescategory_id: TSmallintField;
    lkpCategoriesculture_code: TWideStringField;
    lkpCategoriescategory_name: TWideStringField;
    qryAnagraphCategoriesMView: TUniQuery;
    qryAnagraphCategoriesMViewmaster_category_name: TWideStringField;
    qryAnagraphCategoriesMViewmaster_image_id: TSmallintField;
    qryAnagraphCategoriesMViewcategory_id: TSmallintField;
    qryAnagraphCategoriesMViewcategory_name: TWideStringField;
    qryAnagraphCategoriesMViewimage_id: TSmallintField;
    qryAnagraphCategoriesMViewculture_code: TWideStringField;
    qryAnagraphCategoriesMViewtrans_category_name: TWideStringField;
    qryAnagraphCategoriesMViewdb_schema_id: TIntegerField;
    qryAnagraphCategoriesMViewanagraph_id: TIntegerField;
    qryAnagraphCategoriesMViewan_title: TWideStringField;
    qryAnagraphCategoriesMViewan_name: TWideStringField;
    qryAnagraphCategoriesMViewan_second_name: TWideStringField;
    qryAnagraphCategoriesMViewan_last_name: TWideStringField;
    qryAnagraphCategoriesMViewan_notes: TWideStringField;
    qryAnagraphCategoriesMViewan_address: TWideStringField;
    qryAnagraphCategoriesMViewan_town: TWideStringField;
    qryAnagraphCategoriesMViewan_postal_code: TWideStringField;
    qryAnagraphCategoriesMViewan_iso_country_code: TWideStringField;
    qryAnagraphCategoriesMViewan_state_province: TWideStringField;
    qryAnagraphCategoriesMViewan_phone: TWideStringField;
    qryAnagraphCategoriesMViewan_phone2: TWideStringField;
    qryAnagraphCategoriesMViewan_fax: TWideStringField;
    qryAnagraphCategoriesMViewan_cellular: TWideStringField;
    qryAnagraphCategoriesMViewan_code: TWideStringField;
    qryAnagraphCategoriesMViewan_vat_numeric: TWideStringField;
    qryAnagraphCategoriesMViewan_email: TWideStringField;
    qryAnagraphCategoriesMViewan_web: TWideStringField;
    qryAnagraphCategoriesMViewan_contact_id: TIntegerField;
    qryAnagraphCategoriesMViewan_bank_account: TWideStringField;
    qryAnagraphCategoriesMViewan_payment_des: TWideStringField;
    qryAnagraphCategoriesMViewan_discount: TFloatField;
    qryAnagraphCategoriesMViewan_distance: TIntegerField;
    qryAnagraphCategoriesMViewan_distance_mesunit: TSmallintField;
    qryAnagraphCategoriesMViewan_sex: TWideStringField;
    qryAnagraphCategoriesMViewan_cod_comune: TWideStringField;
    qryAnagraphCategoriesMViewan_cod_provincia: TWideStringField;
    qryAnagraphCategoriesMViewan_credit_line: TFloatField;
    qryAnagraphCategoriesMViewan_currency_id: TSmallintField;
    qryAnagraphCategoriesMViewan_cat_id: TSmallintField;
    qryAnagraphCategoriesMViewan_notes2: TWideStringField;
    qryAnagraphCategoriesMViewan_notes3: TWideMemoField;
    qryAnagraphCategoriesMViewan_edi: TBooleanField;
    qryAnagraphCategoriesMViewan_privacy: TBooleanField;
    qryAnagraphCategoriesMViewan_office_id: TSmallintField;
    qryAnagraphCategoriesMViewan_cod_prov_rif: TWideStringField;
    qryAnagraphCategoriesMViewan_data_fido: TDateField;
    qryAnagraphCategoriesMViewan_user_insert: TWideStringField;
    qryAnagraphCategoriesMViewan_user_update: TWideStringField;
    qryAnagraphCategoriesMViewan_area_id: TSmallintField;
    qryAnagraphCategoriesMViewan_agent_id: TSmallintField;
    qryAnagraphCategoriesMViewan_area_code: TWideStringField;
    qryAnagraphCategoriesMViewan_zone_id: TWideStringField;
    qryAnagraphCategoriesMViewan_ins_id: TLargeintField;
    qryAnagraphCategoriesMViewan_upd_id: TLargeintField;
    qryAnagraphCategoriesMViewan_documents: TSmallintField;
    qryAnagraphCategoriesMViewan_last_date: TDateField;
    qryAnagraphCategoriesMViewan_birthdate: TDateField;
    qryAnagraphCategoriesMViewan_office_type_id: TSmallintField;
    qryAnagraphCategoriesMViewan_searchname: TWideStringField;
    qryAnagraphCategoriesMViewan_extra_ue_flag: TBooleanField;
    qryAnagraphCategoriesMViewan_external_code: TWideStringField;
    qryAnagraphCategoriesMViewan_vat_id: TSmallintField;
    qryAnagraphCategoriesMViewan_personal_fiscal_code: TWideStringField;
    qryAnagraphCategoriesMViewan_privacy_print: TSmallintField;
    qryAnagraphCategoriesMViewan_sms: TBooleanField;
    qryAnagraphCategoriesMViewan_encrypted_fiscal_code: TWideStringField;
    qryAnagraphCategoriesMViewan_vat_purcentage: TSmallintField;
    qryAnagraphCategoriesMViewan_status: TSmallintField;
    qryAnagraphCategoriesMViewan_ownsite: TBooleanField;
    qryAnagraphCategoriesMViewan_insurance_id: TLargeintField;
    qryAnagraphCategoriesMViewan_anagraphs_anagraph_id: TIntegerField;
    qryAnagraphCategoriesMViewan_main_language_code: TWideStringField;
    qryAnagraphCategoriesMViewan_main_culture_code: TWideStringField;
    qryAnagraphCategoriesMViewan_fiscal_code: TWideStringField;
    qryAnagraphCategoriesMViewan_main_group_id: TIntegerField;
    qryAnagraphCategoriesMViewan_image_id: TLargeintField;
    qryAnagraphCategoriesMViewlatitude: TFloatField;
    qryAnagraphCategoriesMViewlongitude: TFloatField;
    qryAnagraphCategoriesMViewtest: TFloatField;
    qryAnagraphCategoriesMViewsearch_index: TWideStringField;
    qryAnagraphCategoriesMViewan_birthplace: TWideStringField;
    qryAnagraphCategoriesMViewan_birthplace_code: TWideStringField;
    qryAnagraphCategoriesMViewanagraph64: TWideStringField;
    qryAnagraphCategoriesMViewmain_category_id: TSmallintField;
    qryAnagraphCategoriesMViewosm_id: TLargeintField;
    qryAnagraphCategoriesMViewan_description: TWideStringField;
    qryAnagraphCategoriesMViewmaster_category_id: TSmallintField;
    qryAnagraphCategoriesMViewdistance: TFloatField;
    qryAnagraphCategoriesMViewan_address_number: TWideStringField;
    qrySubIdentities: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField1: TFloatField;
    SmallintField2: TSmallintField;
    BooleanField1: TBooleanField;
    WideStringField1: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    dsSubAngraphs: TDataSource;
    qrySubAnagraphs: TUniQuery;
    qrySubAnagraphslkpGroupDes: TStringField;
    qrySubAnagraphsdb_schema_id: TIntegerField;
    qrySubAnagraphsanagraph_id: TIntegerField;
    qrySubAnagraphsan_title: TWideStringField;
    qrySubAnagraphsan_name: TWideStringField;
    qrySubAnagraphsan_second_name: TWideStringField;
    qrySubAnagraphsan_last_name: TWideStringField;
    qrySubAnagraphsan_notes: TWideStringField;
    qrySubAnagraphsan_address: TWideStringField;
    qrySubAnagraphsan_town: TWideStringField;
    qrySubAnagraphsan_postal_code: TWideStringField;
    qrySubAnagraphsan_iso_country_code: TWideStringField;
    qrySubAnagraphsan_state_province: TWideStringField;
    qrySubAnagraphsan_phone: TWideStringField;
    qrySubAnagraphsan_phone2: TWideStringField;
    qrySubAnagraphsan_fax: TWideStringField;
    qrySubAnagraphsan_cellular: TWideStringField;
    qrySubAnagraphsan_code: TWideStringField;
    qrySubAnagraphsan_vat_numeric: TWideStringField;
    qrySubAnagraphsan_email: TWideStringField;
    qrySubAnagraphsan_web: TWideStringField;
    qrySubAnagraphsan_contact_id: TIntegerField;
    qrySubAnagraphsan_bank_account: TWideStringField;
    qrySubAnagraphsan_payment_des: TWideStringField;
    qrySubAnagraphsan_discount: TFloatField;
    qrySubAnagraphsan_distance: TIntegerField;
    qrySubAnagraphsan_distance_mesunit: TSmallintField;
    qrySubAnagraphsan_sex: TWideStringField;
    qrySubAnagraphsan_cod_comune: TWideStringField;
    qrySubAnagraphsan_cod_provincia: TWideStringField;
    qrySubAnagraphsan_credit_line: TFloatField;
    qrySubAnagraphsan_currency_id: TSmallintField;
    qrySubAnagraphsan_notes2: TWideStringField;
    qrySubAnagraphsan_notes3: TWideMemoField;
    qrySubAnagraphsan_edi: TBooleanField;
    qrySubAnagraphsan_privacy: TBooleanField;
    qrySubAnagraphsan_office_id: TSmallintField;
    qrySubAnagraphsan_cod_prov_rif: TWideStringField;
    qrySubAnagraphsan_data_fido: TDateField;
    qrySubAnagraphsan_user_insert: TWideStringField;
    qrySubAnagraphsan_user_update: TWideStringField;
    qrySubAnagraphsan_area_id: TSmallintField;
    qrySubAnagraphsan_agent_id: TSmallintField;
    qrySubAnagraphsan_area_code: TWideStringField;
    qrySubAnagraphsan_zone_id: TWideStringField;
    qrySubAnagraphsan_ins_id: TLargeintField;
    qrySubAnagraphsan_upd_id: TLargeintField;
    qrySubAnagraphsan_documents: TSmallintField;
    qrySubAnagraphsan_last_date: TDateField;
    qrySubAnagraphsan_birthdate: TDateField;
    qrySubAnagraphsan_office_type_id: TSmallintField;
    qrySubAnagraphsan_searchname: TWideStringField;
    qrySubAnagraphsan_extra_ue_flag: TBooleanField;
    qrySubAnagraphsan_external_code: TWideStringField;
    qrySubAnagraphsan_vat_id: TSmallintField;
    qrySubAnagraphsan_personal_fiscal_code: TWideStringField;
    qrySubAnagraphsan_privacy_print: TSmallintField;
    qrySubAnagraphsan_sms: TBooleanField;
    qrySubAnagraphsan_encrypted_fiscal_code: TWideStringField;
    qrySubAnagraphsan_vat_purcentage: TSmallintField;
    qrySubAnagraphsan_status: TSmallintField;
    qrySubAnagraphsan_ownsite: TBooleanField;
    qrySubAnagraphsan_insurance_id: TLargeintField;
    qrySubAnagraphsan_anagraphs_anagraph_id: TIntegerField;
    qrySubAnagraphsan_main_language_code: TWideStringField;
    qrySubAnagraphsan_main_culture_code: TWideStringField;
    qrySubAnagraphsan_fiscal_code: TWideStringField;
    qrySubAnagraphsan_main_group_id: TIntegerField;
    qrySubAnagraphsan_image_id: TLargeintField;
    qrySubAnagraphsan_cat_id: TSmallintField;
    qrySubAnagraphslatitude: TFloatField;
    qrySubAnagraphslongitude: TFloatField;
    qrySubAnagraphstest: TFloatField;
    qrySubAnagraphssearch_index: TWideStringField;
    qrySubAnagraphsan_birthplace: TWideStringField;
    qrySubAnagraphsan_birthplace_code: TWideStringField;
    qrySubAnagraphsanagraph64: TWideStringField;
    qrySubAnagraphsan_group_id: TSmallintField;
    qrySubAnagraphsan_agent_group_id: TIntegerField;
    qrySubAnagraphsan_credit_limit: TFloatField;
    qrySubAnagraphsan_credit_days: TSmallintField;
    qrySubAnagraphsan_credit: TBooleanField;
    qrySubAnagraphsan_credit_notes: TWideStringField;
    qrySubAnagraphsan_credit_used: TFloatField;
    qrySubAnagraphsan_overdue_credit: TFloatField;
    qryIdentities: TUniQuery;
    qryIdentitiesdb_schema_id: TIntegerField;
    qryIdentitiesanagraph_id: TIntegerField;
    qryIdentitiesan_group_id: TSmallintField;
    qryIdentitiesan_agent_id: TIntegerField;
    qryIdentitiesan_agent_group_id: TIntegerField;
    qryIdentitiesan_credit_limit: TFloatField;
    qryIdentitiesan_credit_days: TSmallintField;
    qryIdentitiesan_credit: TBooleanField;
    qryIdentitiesan_credit_notes: TWideStringField;
    qryIdentitiesan_credit_used: TFloatField;
    qryIdentitiesan_overdue_credit: TFloatField;
    sqlInsertIdentity: TUniSQL;
    dsGroups: TDataSource;
    qryGroups: TUniQuery;
    qryGroupsdb_schema_id: TIntegerField;
    qryGroupsan_group_id: TSmallintField;
    qryGroupsgroup_des: TWideStringField;
    qryGroupscontact_group: TSmallintField;
    qryGroupssub_group: TSmallintField;
    qryGroupssub_group_des: TWideStringField;
    qryGroupssettings: TWideStringField;
    qryGroupsposition: TSmallintField;
    qryGroupsaccounting: TBooleanField;
    qryGroupscod_account: TWideStringField;
    qryGroupslocal: TBooleanField;
    qryGroupsgroup_cod: TWideStringField;
    qryGroupsledger_cod: TWideStringField;
    qryGroupssubledger_cod: TWideStringField;
    qryGroupsgrouping: TWideStringField;
    qryGroupsdescription: TWideStringField;
    qryAnagraphs: TUniQuery;
    qrySearchAddress: TUniQuery;
    qryGroupsangr_jguid: TWideStringField;
    qryGroupsangr_deleted: TBooleanField;
    qryGroupsicon_id: TSmallintField;
    lkpGroupsangr_jguid: TWideStringField;
    lkpGroupsangr_deleted: TBooleanField;
    lkpGroupsicon_id: TSmallintField;
    qryLkpAnagraphs: TUniQuery;
    qryLkpAnagraphsanagraph_id: TIntegerField;
    qryLkpAnagraphsan_title: TWideStringField;
    qryLkpAnagraphsan_name: TWideStringField;
    qryLkpAnagraphsan_second_name: TWideStringField;
    qryLkpAnagraphsan_last_name: TWideStringField;
    qryLkpAnagraphsan_notes: TWideStringField;
    qryLkpAnagraphsan_address: TWideStringField;
    qryLkpAnagraphsan_town: TWideStringField;
    qryLkpAnagraphsan_postal_code: TWideStringField;
    qryLkpAnagraphsan_iso_country_code: TWideStringField;
    qryLkpAnagraphsan_state_province: TWideStringField;
    qryLkpAnagraphsan_phone: TWideStringField;
    qryLkpAnagraphsan_phone2: TWideStringField;
    qryLkpAnagraphsan_fax: TWideStringField;
    qryLkpAnagraphsan_cellular: TWideStringField;
    qryLkpAnagraphsan_code: TWideStringField;
    qryLkpAnagraphsan_vat_numeric: TWideStringField;
    qryLkpAnagraphsan_email: TWideStringField;
    qryLkpAnagraphsan_web: TWideStringField;
    qryLkpAnagraphsan_group_id: TSmallintField;
    qryLkpAnagraphssearch_index: TWideStringField;
    qryLkpAnagraphsdisplay_index: TWideStringField;
    qryLkpAnagraphspos: TIntegerField;
    qryLkpAnagraphslookup_field: TWideStringField;
    qryLkpAnagraphslookup_display: TWideStringField;
    qryAnagraphsdb_schema_id: TIntegerField;
    qryAnagraphsanagraph_id: TIntegerField;
    qryAnagraphsan_title: TWideStringField;
    qryAnagraphsan_name: TWideStringField;
    qryAnagraphsan_second_name: TWideStringField;
    qryAnagraphsan_last_name: TWideStringField;
    qryAnagraphsan_notes: TWideStringField;
    qryAnagraphsan_address: TWideStringField;
    qryAnagraphsan_town: TWideStringField;
    qryAnagraphsan_postal_code: TWideStringField;
    qryAnagraphsan_iso_country_code: TWideStringField;
    qryAnagraphsan_state_province: TWideStringField;
    qryAnagraphsan_phone: TWideStringField;
    qryAnagraphsan_phone2: TWideStringField;
    qryAnagraphsan_fax: TWideStringField;
    qryAnagraphsan_cellular: TWideStringField;
    qryAnagraphsan_code: TWideStringField;
    qryAnagraphsan_vat_numeric: TWideStringField;
    qryAnagraphsan_email: TWideStringField;
    qryAnagraphsan_web: TWideStringField;
    qryAnagraphsan_contact_id: TIntegerField;
    qryAnagraphsan_bank_account: TWideStringField;
    qryAnagraphsan_payment_des: TWideStringField;
    qryAnagraphsan_discount: TFloatField;
    qryAnagraphsan_distance: TIntegerField;
    qryAnagraphsan_distance_mesunit: TSmallintField;
    qryAnagraphsan_sex: TWideStringField;
    qryAnagraphsan_cod_comune: TWideStringField;
    qryAnagraphsan_cod_provincia: TWideStringField;
    qryAnagraphsan_credit_line: TFloatField;
    qryAnagraphsan_currency_id: TSmallintField;
    qryAnagraphsan_cat_id: TSmallintField;
    qryAnagraphsan_notes2: TWideStringField;
    qryAnagraphsan_notes3: TWideMemoField;
    qryAnagraphsan_edi: TBooleanField;
    qryAnagraphsan_privacy: TBooleanField;
    qryAnagraphsan_office_id: TSmallintField;
    qryAnagraphsan_cod_prov_rif: TWideStringField;
    qryAnagraphsan_data_fido: TDateField;
    qryAnagraphsan_user_insert: TWideStringField;
    qryAnagraphsan_user_update: TWideStringField;
    qryAnagraphsan_area_id: TSmallintField;
    qryAnagraphsan_agent_id: TSmallintField;
    qryAnagraphsan_area_code: TWideStringField;
    qryAnagraphsan_zone_id: TWideStringField;
    qryAnagraphsan_ins_id: TLargeintField;
    qryAnagraphsan_upd_id: TLargeintField;
    qryAnagraphsan_documents: TSmallintField;
    qryAnagraphsan_last_date: TDateField;
    qryAnagraphsan_birthdate: TDateField;
    qryAnagraphsan_office_type_id: TSmallintField;
    qryAnagraphsan_searchname: TWideStringField;
    qryAnagraphsan_extra_ue_flag: TBooleanField;
    qryAnagraphsan_external_code: TWideStringField;
    qryAnagraphsan_vat_id: TSmallintField;
    qryAnagraphsan_personal_fiscal_code: TWideStringField;
    qryAnagraphsan_privacy_print: TSmallintField;
    qryAnagraphsan_sms: TBooleanField;
    qryAnagraphsan_encrypted_fiscal_code: TWideStringField;
    qryAnagraphsan_vat_purcentage: TSmallintField;
    qryAnagraphsan_status: TSmallintField;
    qryAnagraphsan_ownsite: TBooleanField;
    qryAnagraphsan_insurance_id: TLargeintField;
    qryAnagraphsan_anagraphs_anagraph_id: TIntegerField;
    qryAnagraphsan_main_language_code: TWideStringField;
    qryAnagraphsan_main_culture_code: TWideStringField;
    qryAnagraphsan_fiscal_code: TWideStringField;
    qryAnagraphsan_main_group_id: TIntegerField;
    qryAnagraphsan_image_id: TLargeintField;
    qryAnagraphslatitude: TFloatField;
    qryAnagraphslongitude: TFloatField;
    qryAnagraphstest: TFloatField;
    qryAnagraphssearch_index: TWideStringField;
    qryAnagraphsan_birthplace: TWideStringField;
    qryAnagraphsan_birthplace_code: TWideStringField;
    qryAnagraphsanagraph64: TWideStringField;
    qryAnagraphsmain_category_id: TSmallintField;
    qryAnagraphsosm_id: TLargeintField;
    qryAnagraphsan_description: TWideStringField;
    qryAnagraphsan_address_number: TWideStringField;
    qryAnagraphsanag_jguid: TWideStringField;
    qryAnagraphsanag_deleted: TBooleanField;
    qryAnagraphsinsert_date: TDateTimeField;
    qryAnagraphsupdate_date: TDateTimeField;
    qryAnagraphsuser_insert: TIntegerField;
    qryAnagraphscustom_field_1: TWideStringField;
    qryAnagraphscustom_field_2: TWideStringField;
    qryAnagraphscustom_field_3: TWideStringField;
    qryAnagraphscustom_float_1: TFloatField;
    qryAnagraphscustom_float_2: TFloatField;
    qryAnagraphscustom_int_1: TIntegerField;
    qryAnagraphscustom_int_2: TIntegerField;
    qryAnagraphssupplier_id: TIntegerField;
    qryAnagraphsvessel_id: TSmallintField;
    qryAnagraphsan_country_id: TIntegerField;
    qryAnagraphsan_iso_country_code2: TWideStringField;
    qryAnagraphsan_group_id: TSmallintField;
    qryAnagraphsan_credit_limit: TFloatField;
    qryAnagraphsan_credit: TBooleanField;
    qryAnagraphsshipment_name: TWideStringField;
    qryAnagraphsshipment_postal_code: TWideStringField;
    qryAnagraphsshipment_town: TWideStringField;
    qryAnagraphsshipment_address: TWideStringField;
    qryAnagraphsshipment_phone: TWideStringField;
    qryAnagraphsshipment_state_province: TWideStringField;
    qryAnagraphsbilling_name: TWideStringField;
    qryAnagraphsbilling_postal_code: TWideStringField;
    qryAnagraphsbilling_town: TWideStringField;
    qryAnagraphsbilling_address: TWideStringField;
    qryAnagraphsbilling_phone: TWideStringField;
    qryAnagraphsbilling_state_province: TWideStringField;
    qryAnagraphsjguid: TStringField;
    lkpGroupsjguid: TStringField;
    qrySubAnagraphsmain_category_id: TSmallintField;
    qrySubAnagraphsosm_id: TLargeintField;
    qrySubAnagraphsan_description: TWideStringField;
    qrySubAnagraphsan_address_number: TWideStringField;
    qrySubAnagraphsanag_jguid: TWideStringField;
    qrySubAnagraphsanag_deleted: TBooleanField;
    qrySubAnagraphsinsert_date: TDateTimeField;
    qrySubAnagraphsupdate_date: TDateTimeField;
    qrySubAnagraphsuser_insert: TIntegerField;
    qrySubAnagraphsjguid: TStringField;
    qrySubAnagraphscustom_field_1: TWideStringField;
    qrySubAnagraphscustom_field_2: TWideStringField;
    qrySubAnagraphscustom_field_3: TWideStringField;
    qrySubAnagraphscustom_float_1: TFloatField;
    qrySubAnagraphscustom_float_2: TFloatField;
    qrySubAnagraphscustom_int_1: TIntegerField;
    qrySubAnagraphscustom_int_2: TIntegerField;
    qrySubAnagraphssupplier_id: TIntegerField;
    qrySubAnagraphsvessel_id: TSmallintField;
    qrySubAnagraphsan_country_id: TIntegerField;
    qrySubAnagraphsan_iso_country_code2: TWideStringField;
    qrySubAnagraphsadnt_jguid: TWideStringField;
    qrySubAnagraphsadnt_deleted: TBooleanField;
    qryLkpAnagraphsjguid: TStringField;
    qryGroupsjguid: TStringField;
    qryAnagraphsdeleted: TBooleanField;
    qrySingleAnagraphOld: TUniQuery;
    qrySingleAnagraphOlddb_schema_id: TIntegerField;
    qrySingleAnagraphOldanagraph_id: TIntegerField;
    qrySingleAnagraphOldan_title: TWideStringField;
    qrySingleAnagraphOldan_name: TWideStringField;
    qrySingleAnagraphOldan_second_name: TWideStringField;
    qrySingleAnagraphOldan_last_name: TWideStringField;
    qrySingleAnagraphOldan_notes: TWideStringField;
    qrySingleAnagraphOldan_address: TWideStringField;
    qrySingleAnagraphOldan_town: TWideStringField;
    qrySingleAnagraphOldan_postal_code: TWideStringField;
    qrySingleAnagraphOldan_iso_country_code: TWideStringField;
    qrySingleAnagraphOldan_state_province: TWideStringField;
    qrySingleAnagraphOldan_phone: TWideStringField;
    qrySingleAnagraphOldan_phone2: TWideStringField;
    qrySingleAnagraphOldan_fax: TWideStringField;
    qrySingleAnagraphOldan_cellular: TWideStringField;
    qrySingleAnagraphOldan_code: TWideStringField;
    qrySingleAnagraphOldan_vat_numeric: TWideStringField;
    qrySingleAnagraphOldan_email: TWideStringField;
    qrySingleAnagraphOldan_web: TWideStringField;
    qrySingleAnagraphOldan_contact_id: TIntegerField;
    qrySingleAnagraphOldan_bank_account: TWideStringField;
    qrySingleAnagraphOldan_payment_des: TWideStringField;
    qrySingleAnagraphOldan_discount: TFloatField;
    qrySingleAnagraphOldan_distance: TIntegerField;
    qrySingleAnagraphOldan_distance_mesunit: TSmallintField;
    qrySingleAnagraphOldan_sex: TWideStringField;
    qrySingleAnagraphOldan_cod_comune: TWideStringField;
    qrySingleAnagraphOldan_cod_provincia: TWideStringField;
    qrySingleAnagraphOldan_credit_line: TFloatField;
    qrySingleAnagraphOldan_currency_id: TSmallintField;
    qrySingleAnagraphOldan_cat_id: TSmallintField;
    qrySingleAnagraphOldan_notes2: TWideStringField;
    qrySingleAnagraphOldan_notes3: TWideMemoField;
    qrySingleAnagraphOldan_edi: TBooleanField;
    qrySingleAnagraphOldan_privacy: TBooleanField;
    qrySingleAnagraphOldan_office_id: TSmallintField;
    qrySingleAnagraphOldan_cod_prov_rif: TWideStringField;
    qrySingleAnagraphOldan_data_fido: TDateField;
    qrySingleAnagraphOldan_user_insert: TWideStringField;
    qrySingleAnagraphOldan_user_update: TWideStringField;
    qrySingleAnagraphOldan_area_id: TSmallintField;
    qrySingleAnagraphOldan_agent_id: TSmallintField;
    qrySingleAnagraphOldan_area_code: TWideStringField;
    qrySingleAnagraphOldan_zone_id: TWideStringField;
    qrySingleAnagraphOldan_ins_id: TLargeintField;
    qrySingleAnagraphOldan_upd_id: TLargeintField;
    qrySingleAnagraphOldan_documents: TSmallintField;
    qrySingleAnagraphOldan_last_date: TDateField;
    qrySingleAnagraphOldan_birthdate: TDateField;
    qrySingleAnagraphOldan_office_type_id: TSmallintField;
    qrySingleAnagraphOldan_searchname: TWideStringField;
    qrySingleAnagraphOldan_extra_ue_flag: TBooleanField;
    qrySingleAnagraphOldan_external_code: TWideStringField;
    qrySingleAnagraphOldan_vat_id: TSmallintField;
    qrySingleAnagraphOldan_personal_fiscal_code: TWideStringField;
    qrySingleAnagraphOldan_privacy_print: TSmallintField;
    qrySingleAnagraphOldan_sms: TBooleanField;
    qrySingleAnagraphOldan_encrypted_fiscal_code: TWideStringField;
    qrySingleAnagraphOldan_vat_purcentage: TSmallintField;
    qrySingleAnagraphOldan_status: TSmallintField;
    qrySingleAnagraphOldan_ownsite: TBooleanField;
    qrySingleAnagraphOldan_insurance_id: TLargeintField;
    qrySingleAnagraphOldan_anagraphs_anagraph_id: TIntegerField;
    qrySingleAnagraphOldan_main_language_code: TWideStringField;
    qrySingleAnagraphOldan_main_culture_code: TWideStringField;
    qrySingleAnagraphOldan_fiscal_code: TWideStringField;
    qrySingleAnagraphOldan_main_group_id: TIntegerField;
    qrySingleAnagraphOldan_image_id: TLargeintField;
    qrySingleAnagraphOldlatitude: TFloatField;
    qrySingleAnagraphOldlongitude: TFloatField;
    qrySingleAnagraphOldtest: TFloatField;
    qrySingleAnagraphOldsearch_index: TWideStringField;
    qrySingleAnagraphOldan_birthplace: TWideStringField;
    qrySingleAnagraphOldan_birthplace_code: TWideStringField;
    qrySingleAnagraphOldanagraph64: TWideStringField;
    qrySingleAnagraphOldmain_category_id: TSmallintField;
    qrySingleAnagraphOldosm_id: TLargeintField;
    qrySingleAnagraphOldan_description: TWideStringField;
    qrySingleAnagraphOldan_address_number: TWideStringField;
    qrySingleAnagraphOldanag_jguid: TWideStringField;
    qrySingleAnagraphOldanag_deleted: TBooleanField;
    qrySingleAnagraphOldinsert_date: TDateTimeField;
    qrySingleAnagraphOldupdate_date: TDateTimeField;
    qrySingleAnagraphOlduser_insert: TIntegerField;
    qrySingleAnagraphOldjguid: TStringField;
    qrySingleAnagraphOldcustom_field_1: TWideStringField;
    qrySingleAnagraphOldcustom_field_2: TWideStringField;
    qrySingleAnagraphOldcustom_field_3: TWideStringField;
    qrySingleAnagraphOldcustom_float_1: TFloatField;
    qrySingleAnagraphOldcustom_float_2: TFloatField;
    qrySingleAnagraphOldcustom_int_1: TIntegerField;
    qrySingleAnagraphOldcustom_int_2: TIntegerField;
    qrySingleAnagraphOldsupplier_id: TIntegerField;
    qrySingleAnagraphOldvessel_id: TSmallintField;
    qrySingleAnagraphOldan_country_id: TIntegerField;
    qrySingleAnagraphOldan_iso_country_code2: TWideStringField;
    qrySingleAnagraphOlddeleted: TBooleanField;
    qrySingleAnagraphOldan_group_id: TSmallintField;
    qrySingleAnagraphOldan_credit_limit: TFloatField;
    qrySingleAnagraphOldan_credit: TBooleanField;
    qrySingleAnagraphOldshipment_name: TWideStringField;
    qrySingleAnagraphOldshipment_postal_code: TWideStringField;
    qrySingleAnagraphOldshipment_town: TWideStringField;
    qrySingleAnagraphOldshipment_address: TWideStringField;
    qrySingleAnagraphOldshipment_phone: TWideStringField;
    qrySingleAnagraphOldshipment_state_province: TWideStringField;
    qrySingleAnagraphOldbilling_name: TWideStringField;
    qrySingleAnagraphOldbilling_postal_code: TWideStringField;
    qrySingleAnagraphOldbilling_town: TWideStringField;
    qrySingleAnagraphOldbilling_address: TWideStringField;
    qrySingleAnagraphOldbilling_phone: TWideStringField;
    qrySingleAnagraphOldbilling_state_province: TWideStringField;
    dsSingleAnagraph: TDataSource;
    qrySAMainAdress: TUniQuery;
    qrySAMainAdressdb_schema_id: TIntegerField;
    qrySAMainAdressid: TLargeintField;
    qrySAMainAdressaddress_name: TWideStringField;
    qrySAMainAdresspostal_code: TWideStringField;
    qrySAMainAdressstate_province: TWideStringField;
    qrySAMainAdresstown_name: TWideStringField;
    qrySAMainAdresstown_code: TWideStringField;
    qrySAMainAdressaddress: TWideStringField;
    qrySAMainAdressaddress_number: TWideStringField;
    qrySAMainAdressphone: TWideStringField;
    qrySAMainAdressfull_address: TWideStringField;
    qrySAMainAdressinsert_date: TDateTimeField;
    qrySAMainAdressupdate_date: TDateTimeField;
    qrySAMainAdressupd_id: TLargeintField;
    qrySAMainAdressins_id: TLargeintField;
    qrySAMainAdressuser_insert: TWideStringField;
    qrySAMainAdressuser_update: TWideStringField;
    qrySAMainAdresslocal: TBooleanField;
    qrySAMainAdressdeleted: TBooleanField;
    qrySAMainAdressjguid: TStringField;
    qrySAMainAdresscountry_code: TWideStringField;
    qrySAMainAdressemail: TWideStringField;
    qrySAMainAdressanagraph_id: TIntegerField;
    qrySAMainAdressmaps_json: TWideMemoField;
    qrySAMainAdresspos: TSmallintField;
    qrySAMainAdresslongitude: TFloatField;
    qrySAMainAdresslatitude: TFloatField;
    qryBranches: TUniQuery;
    qryBranchesjguid: TGuidField;
    qryBranchesanagraph_id: TIntegerField;
    qryBranchesan_name: TWideStringField;
    qryBranchesan_last_name: TWideStringField;
    qryBranchesan_address: TWideStringField;
    qryBranchesan_cellular: TWideStringField;
    qryBranchesan_email: TWideStringField;
    qryBranchesan_main_group_id: TIntegerField;
    qryBranchesan_office_id: TIntegerField;
    qryNextVal: TUniQuery;
    qryNextValid: TLargeintField;
    qrySAMainAdressmaster_jguid: TStringField;
    qrySingleAnagraph: TUniQuery;
    qrySingleAnagraphdb_schema_id: TIntegerField;
    qrySingleAnagraphanagraph_id: TIntegerField;
    qrySingleAnagraphan_title: TWideStringField;
    qrySingleAnagraphan_name: TWideStringField;
    qrySingleAnagraphan_second_name: TWideStringField;
    qrySingleAnagraphan_last_name: TWideStringField;
    qrySingleAnagraphan_notes: TWideStringField;
    qrySingleAnagraphan_address: TWideStringField;
    qrySingleAnagraphan_town: TWideStringField;
    qrySingleAnagraphan_postal_code: TWideStringField;
    qrySingleAnagraphan_iso_country_code: TWideStringField;
    qrySingleAnagraphan_state_province: TWideStringField;
    qrySingleAnagraphan_phone: TWideStringField;
    qrySingleAnagraphan_phone2: TWideStringField;
    qrySingleAnagraphan_fax: TWideStringField;
    qrySingleAnagraphan_cellular: TWideStringField;
    qrySingleAnagraphan_code: TWideStringField;
    qrySingleAnagraphan_vat_numeric: TWideStringField;
    qrySingleAnagraphan_email: TWideStringField;
    qrySingleAnagraphan_web: TWideStringField;
    qrySingleAnagraphan_contact_id: TIntegerField;
    qrySingleAnagraphan_bank_account: TWideStringField;
    qrySingleAnagraphan_payment_des: TWideStringField;
    qrySingleAnagraphan_discount: TFloatField;
    qrySingleAnagraphan_distance: TIntegerField;
    qrySingleAnagraphan_distance_mesunit: TSmallintField;
    qrySingleAnagraphan_sex: TWideStringField;
    qrySingleAnagraphan_cod_comune: TWideStringField;
    qrySingleAnagraphan_cod_provincia: TWideStringField;
    qrySingleAnagraphan_credit_line: TFloatField;
    qrySingleAnagraphan_currency_id: TSmallintField;
    qrySingleAnagraphan_cat_id: TSmallintField;
    qrySingleAnagraphan_notes2: TWideStringField;
    qrySingleAnagraphan_notes3: TWideMemoField;
    qrySingleAnagraphan_edi: TBooleanField;
    qrySingleAnagraphan_privacy: TBooleanField;
    qrySingleAnagraphan_office_id: TIntegerField;
    qrySingleAnagraphan_cod_prov_rif: TWideStringField;
    qrySingleAnagraphan_data_fido: TDateField;
    qrySingleAnagraphan_user_insert: TWideStringField;
    qrySingleAnagraphan_user_update: TWideStringField;
    qrySingleAnagraphan_area_id: TSmallintField;
    qrySingleAnagraphan_agent_id: TSmallintField;
    qrySingleAnagraphan_area_code: TWideStringField;
    qrySingleAnagraphan_zone_id: TWideStringField;
    qrySingleAnagraphan_ins_id: TLargeintField;
    qrySingleAnagraphan_upd_id: TLargeintField;
    qrySingleAnagraphan_documents: TSmallintField;
    qrySingleAnagraphan_last_date: TDateField;
    qrySingleAnagraphan_birthdate: TDateField;
    qrySingleAnagraphan_office_type_id: TSmallintField;
    qrySingleAnagraphan_searchname: TWideStringField;
    qrySingleAnagraphan_extra_ue_flag: TBooleanField;
    qrySingleAnagraphan_external_code: TWideStringField;
    qrySingleAnagraphan_vat_id: TSmallintField;
    qrySingleAnagraphan_personal_fiscal_code: TWideStringField;
    qrySingleAnagraphan_privacy_print: TSmallintField;
    qrySingleAnagraphan_sms: TBooleanField;
    qrySingleAnagraphan_encrypted_fiscal_code: TWideStringField;
    qrySingleAnagraphan_vat_purcentage: TSmallintField;
    qrySingleAnagraphan_status: TSmallintField;
    qrySingleAnagraphan_ownsite: TBooleanField;
    qrySingleAnagraphan_insurance_id: TLargeintField;
    qrySingleAnagraphan_anagraphs_anagraph_id: TIntegerField;
    qrySingleAnagraphan_main_language_code: TWideStringField;
    qrySingleAnagraphan_main_culture_code: TWideStringField;
    qrySingleAnagraphan_fiscal_code: TWideStringField;
    qrySingleAnagraphan_main_group_id: TIntegerField;
    qrySingleAnagraphan_image_id: TLargeintField;
    qrySingleAnagraphlatitude: TFloatField;
    qrySingleAnagraphlongitude: TFloatField;
    qrySingleAnagraphtest: TFloatField;
    qrySingleAnagraphsearch_index: TWideStringField;
    qrySingleAnagraphan_birthplace: TWideStringField;
    qrySingleAnagraphan_birthplace_code: TWideStringField;
    qrySingleAnagraphanagraph64: TWideStringField;
    qrySingleAnagraphmain_category_id: TSmallintField;
    qrySingleAnagraphosm_id: TLargeintField;
    qrySingleAnagraphan_description: TWideStringField;
    qrySingleAnagraphan_address_number: TWideStringField;
    qrySingleAnagraphanag_jguid: TWideStringField;
    qrySingleAnagraphanag_deleted: TBooleanField;
    qrySingleAnagraphinsert_date: TDateTimeField;
    qrySingleAnagraphupdate_date: TDateTimeField;
    qrySingleAnagraphuser_insert: TIntegerField;
    qrySingleAnagraphjguid: TStringField;
    qrySingleAnagraphcustom_field_1: TWideStringField;
    qrySingleAnagraphcustom_field_2: TWideStringField;
    qrySingleAnagraphcustom_field_3: TWideStringField;
    qrySingleAnagraphcustom_float_1: TFloatField;
    qrySingleAnagraphcustom_float_2: TFloatField;
    qrySingleAnagraphcustom_int_1: TIntegerField;
    qrySingleAnagraphcustom_int_2: TIntegerField;
    qrySingleAnagraphsupplier_id: TIntegerField;
    qrySingleAnagraphvessel_id: TSmallintField;
    qrySingleAnagraphan_country_id: TIntegerField;
    qrySingleAnagraphan_iso_country_code2: TWideStringField;
    qrySingleAnagraphdeleted: TBooleanField;
    qrySingleAnagraphan_group_id: TSmallintField;
    qrySingleAnagraphan_credit_limit: TFloatField;
    qrySingleAnagraphan_credit: TBooleanField;
    qrySingleAnagraphshipment_name: TWideStringField;
    qrySingleAnagraphshipment_postal_code: TWideStringField;
    qrySingleAnagraphshipment_town: TWideStringField;
    qrySingleAnagraphshipment_address: TWideStringField;
    qrySingleAnagraphshipment_phone: TWideStringField;
    qrySingleAnagraphshipment_state_province: TWideStringField;
    qrySingleAnagraphbilling_name: TWideStringField;
    qrySingleAnagraphbilling_postal_code: TWideStringField;
    qrySingleAnagraphbilling_town: TWideStringField;
    qrySingleAnagraphbilling_address: TWideStringField;
    qrySingleAnagraphbilling_phone: TWideStringField;
    qrySingleAnagraphbilling_state_province: TWideStringField;
    qrySingleAnagraphan_full_address: TWideStringField;
    qryAddressNextVal: TUniQuery;
    qryAddressNextValid: TLargeintField;
    qryAddresses: TUniQuery;
    qryAddressesdb_schema_id: TIntegerField;
    qryAddressesid: TLargeintField;
    qryAddressesaddress_name: TWideStringField;
    qryAddressespostal_code: TWideStringField;
    qryAddressesstate_province: TWideStringField;
    qryAddressestown_name: TWideStringField;
    qryAddressestown_code: TWideStringField;
    qryAddressesaddress: TWideStringField;
    qryAddressesaddress_number: TWideStringField;
    qryAddressesphone: TWideStringField;
    qryAddressesfull_address: TWideStringField;
    qryAddressesinsert_date: TDateTimeField;
    qryAddressesupdate_date: TDateTimeField;
    qryAddressesupd_id: TLargeintField;
    qryAddressesins_id: TLargeintField;
    qryAddressesuser_insert: TWideStringField;
    qryAddressesuser_update: TWideStringField;
    qryAddresseslocal: TBooleanField;
    qryAddressesdeleted: TBooleanField;
    qryAddressesjguid: TStringField;
    qryAddressescountry_code: TWideStringField;
    qryAddressesemail: TWideStringField;
    qryAddressesanagraph_id: TIntegerField;
    qryAddressesmaps_json: TWideMemoField;
    qryAddresseslongitude: TFloatField;
    qryAddresseslatitude: TFloatField;
    qryAddressespos: TSmallintField;
    qryAddressesmaster_jguid: TStringField;
    qrySearchAddressdb_user_id: TIntegerField;
    qrySearchAddresscountry_id: TSmallintField;
    qrySearchAddressregion_id: TSmallintField;
    qrySearchAddressdistrict_id: TSmallintField;
    qrySearchAddresstown_id: TIntegerField;
    qrySearchAddressfirst_name: TWideStringField;
    qrySearchAddresslast_name: TWideStringField;
    qrySearchAddressaddress_street: TWideStringField;
    qrySearchAddressaddress_number: TWideStringField;
    qrySearchAddressaddress_postal_code: TWideStringField;
    qrySearchAddressphone: TWideStringField;
    qrySearchAddresscellular_phone: TWideStringField;
    qrySearchAddresswork_phone: TWideStringField;
    qrySearchAddressfax_number: TWideStringField;
    qrySearchAddressgender_code: TWideStringField;
    qrySearchAddressbirth_date: TDateField;
    qrySearchAddressbirth_country_id: TSmallintField;
    qrySearchAddressbirth_region_id: TSmallintField;
    qrySearchAddressbirth_district_id: TSmallintField;
    qrySearchAddressbirth_town_id: TIntegerField;
    qrySearchAddresspublic_email: TWideStringField;
    qrySearchAddresstitle: TWideStringField;
    qrySearchAddresssearch_name: TWideStringField;
    qrySearchAddressreverse_search: TWideStringField;
    qrySearchAddressaddress_full: TWideStringField;
    qrySearchAddresslatitude: TFloatField;
    qrySearchAddresslongitude: TFloatField;
    qrySearchAddressfiscal_code: TWideStringField;
    qrySearchAddresssmssent: TBooleanField;
    qrySearchAddresssmsconfirmed: TBooleanField;
    qrySearchAddresssmsdate: TDateTimeField;
    qrySearchAddresssmschecknumber: TWideStringField;
    qrySearchAddressaddress_town: TWideStringField;
    qrySearchAddressp_facebook_json: TWideMemoField;
    qrySearchAddressfacebook_json: TWideMemoField;
    qrySearchAddressaddress_state_province: TWideStringField;
    qrySearchAddressuspr_jguid: TWideStringField;
    qrySearchAddressdb_schema_id: TIntegerField;
    qrySearchAddresssupr_jguid: TWideStringField;
    qrySearchAddresssupr_deleted: TBooleanField;
    qrySearchAddressanagraph_id: TIntegerField;
    qrySearchAddressjguid: TStringField;
    procedure qryAnagraphsBeforeOpen(DataSet: TDataSet);
    procedure qryGroupsBeforeOpen(DataSet: TDataSet);
    procedure qrySingleAnagraphOldAfterOpen(DataSet: TDataSet);
    procedure qrySAMainAdressBeforePost(DataSet: TDataSet);
    procedure qrySingleAnagraphOldAfterPost(DataSet: TDataSet);
    procedure qrySingleAnagraphOldBeforePost(DataSet: TDataSet);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
    procedure qrySingleAnagraphAfterOpen(DataSet: TDataSet);
    procedure qrySingleAnagraphAfterPost(DataSet: TDataSet);
    procedure qrySingleAnagraphBeforePost(DataSet: TDataSet);
    procedure qryAddressesBeforePost(DataSet: TDataSet);
  private

    { Private declarations }
  public
    { Public declarations }
    procedure RefreshDetails; override;
  end;

  TJanuaPgAnagraphModel = class(TJanuaCustomAnagraphDataModule, IJanuaAnagraphDataModule)
  private
    { Private declarations }
    FDM: TdmJanuaPgAnagraphStorage;
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

type
  TJanuaPgSearchAnagraph = class(TJanuaSearchAnagraphModel, ISearchModelAnagraph, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmJanuaPgAnagraphStorage: TdmJanuaPgAnagraphStorage;

implementation

uses Janua.Core.Types, Janua.Orm.Types, Janua.Application.Framework, Janua.Orm.UniDac;

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}
{ TJanuaPgAnagraphModel }

constructor TJanuaPgAnagraphModel.Create;
begin
  inherited;
end;

destructor TJanuaPgAnagraphModel.Destroy;
begin
  try
    if Assigned(FDM) then
      FreeAndNil(FDM);
    inherited;
  except
    on e: Exception do
      LogException('Destroy', e, self);
  end;
end;

procedure TJanuaPgAnagraphModel.GetInternalCreate;
begin
  FInternalCreate := procedure
    begin
      FDM := TdmJanuaPgAnagraphStorage.Create(nil);
      try
        SetMainDataModule(FDM);
        FjdsBranches := TJanuaPgDataset.Create(FDM.qryBranches, [TJanuaEntity.AnagraphAnagraphs]);
        jdsAnagraphs := TJanuaPgDataset.Create(FDM.qryAnagraphs, [TJanuaEntity.AnagraphAnagraphs]);
        jdsGroups := TJanuaPgDataset.Create(FDM.qryGroups, [TJanuaEntity.AnagraphGroups]);
        FjdsIdentities := (TJanuaPgDataset.Create(FDM.qryIdentities, [TJanuaEntity.AnagraphIdentities]));
        jdsSingleAnagraph := TJanuaPgDataset.Create(FDM.qrySingleAnagraph, [TJanuaEntity.AnagraphGroups]);
        SetjdsAddresses(TJanuaPgDataset.Create(FDM.qryAddresses, [TJanuaEntity.AnagraphAddresses]));
        SetjdsMainAddress(TJanuaPgDataset.Create(FDM.qrySAMainAdress, [TJanuaEntity.AnagraphAddresses]));
      except
        on e: Exception do
          RaiseException('FInternalCreate', e, self);
      end;
    end;
end;

procedure TJanuaPgAnagraphModel.RefreshDetails;
begin
  inherited;
  // Sends the Refresh procedure to the DataModule
  FDM.RefreshDetails;
end;

{ TJanuaPgSearchAnagraph }

function TJanuaPgSearchAnagraph.InternalCreateDataset: IJanuaDBDataset;
var
  FDM: TdmJanuaPgAnagraphStorage;
begin
  FDM := TdmJanuaPgAnagraphStorage.Create(nil);
  try
    FDM.qryLkpAnagraphs.ParamByName('p_group_id').AsInteger := GetGroupID;
    FDM.qryLkpAnagraphs.Open;
    FDM.qryLkpAnagraphs.Last;
    Result := TJanuaUniMemTable.CreateWithEntities(FDM.qryLkpAnagraphs, [TJanuaEntity.AnagraphAnagraphs]);
  finally
    FDM.Free;
  end;
end;

procedure TdmJanuaPgAnagraphStorage.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  // to check before connection
  inherited;

end;

procedure TdmJanuaPgAnagraphStorage.qryAddressesBeforePost(DataSet: TDataSet);
begin
  inherited;
  var
  sAddr := qryAddressesaddress.AsString;
  var
  sTest := qryAddressesjguid.AsString;

  begin
    qryAddressNextVal.Close;
    qryAddressNextVal.Open;
    qryAddressesid.AsInteger := qryAddressNextValid.AsInteger;
  end;

  if qryAddressesanagraph_id.AsInteger = 0 then
    qryAddressesanagraph_id.AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
  if qryAddressespos.AsInteger = 0 then
    qryAddressespos.AsInteger := qryAddresses.RecordCount + 1;
end;

procedure TdmJanuaPgAnagraphStorage.qryAnagraphsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryAnagraphs.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
end;

procedure TdmJanuaPgAnagraphStorage.qryGroupsBeforeOpen(DataSet: TDataSet);
var
  lGroupID, lSchemaID: integer;
begin
  inherited;
  lGroupID := TUniQuery(DataSet).ParamByName('p_group_id').AsInteger;
  lSchemaID := TUniQuery(DataSet).ParamByName('db_schema_id').AsInteger;
end;

procedure TdmJanuaPgAnagraphStorage.qrySAMainAdressBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySAMainAdressanagraph_id.AsInteger = 0 then
    qrySAMainAdressanagraph_id.AsInteger := qrySingleAnagraphanagraph_id.AsInteger;

  if qrySAMainAdressid.AsInteger = 0 then
  begin
    qryAddressNextVal.Close;
    qryAddressNextVal.Open;
    qrySAMainAdressid.AsInteger := qryAddressNextValid.AsInteger;
  end;

  qrySAMainAdresspos.AsInteger := 1;
end;

procedure TdmJanuaPgAnagraphStorage.qrySingleAnagraphAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrySAMainAdress.Close;
  qryAddresses.Close;
  if qrySingleAnagraphanagraph_id.AsInteger > 0 then
  begin
    qrySAMainAdress.Params[0].AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
    qrySAMainAdress.Open;
    qryAddresses.Open;
  end;
end;

procedure TdmJanuaPgAnagraphStorage.qrySingleAnagraphAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrySAMainAdress.Close;
  qryAddresses.Close;
  qrySAMainAdress.Params[0].AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
  qryAddresses.Params[0].AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
  qrySAMainAdress.Open;
  qryAddresses.Open;
end;

procedure TdmJanuaPgAnagraphStorage.qrySingleAnagraphBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySingleAnagraphanagraph_id.AsInteger = 0 then
  begin
    qryNextVal.Close;
    qryNextVal.Open;
    qrySingleAnagraphanagraph_id.AsInteger := qryNextValid.AsInteger;
  end;
end;

procedure TdmJanuaPgAnagraphStorage.qrySingleAnagraphOldAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qrySAMainAdress.Close;
  qryAddresses.Close;
  if qrySingleAnagraphanagraph_id.AsInteger > 0 then
  begin
    qrySAMainAdress.Params[0].AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
    qrySAMainAdress.Open;
    qryAddresses.Open;
  end;
end;

procedure TdmJanuaPgAnagraphStorage.qrySingleAnagraphOldAfterPost(DataSet: TDataSet);
begin
  inherited;
  qrySAMainAdress.Close;
  qryAddresses.Close;
  qrySAMainAdress.Params[0].AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
  qryAddresses.Params[0].AsInteger := qrySingleAnagraphanagraph_id.AsInteger;
  qrySAMainAdress.Open;
  qryAddresses.Open;
end;

procedure TdmJanuaPgAnagraphStorage.qrySingleAnagraphOldBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySingleAnagraphanagraph_id.AsInteger = 0 then
  begin
    qryNextVal.Close;
    qryNextVal.Open;
    qrySingleAnagraphanagraph_id.AsInteger := qryNextValid.AsInteger;
  end;
end;

procedure TdmJanuaPgAnagraphStorage.RefreshDetails;
begin
  inherited;
  qryAddresses.Close;

  qrySingleAnagraph.Close;
  qrySingleAnagraph.Params[0].AsAnsiString := qryAnagraphsjguid.Value;
  qrySingleAnagraph.Open;

  if qrySingleAnagraph.RecordCount = 1 then
  begin
    qryAddresses.Params[0].AsInteger := qrySingleAnagraphanagraph_id.Value;
    qryAddresses.Open;
  end;

end;

end.
