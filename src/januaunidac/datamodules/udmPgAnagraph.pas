unit udmPgAnagraph;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  // Devart.
  MemDS, DBAccess, Uni,
  // FireDac
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Intf, FireDAC.Stan.StorageBin, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  // Janua
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.System, udmJanuaPostgresModel,
  Janua.Core.Exceptions, UniProvider, PostgreSQLUniProvider, Janua.Unidac.Connection;

type
  /// <summary>
  /// Generic Anagraph Module that contains all anagraphs in one specific schema in database.
  /// </summary>
  TdmPgAnagraph = class(TdmJanuaPostgresModel)
    qrySearchAddress: TUniQuery;
    qryAnagraphs: TUniQuery;
    qryGroups: TUniQuery;
    dsGroups: TDataSource;
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
    sqlInsertIdentity: TUniSQL;
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
    qrySubAnagraphs: TUniQuery;
    qrySubAnagraphslkpGroupDes: TStringField;
    dsSubAngraphs: TDataSource;
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
    qrySubAnagraphsdb_schema_id_1: TIntegerField;
    qrySubAnagraphsanagraph_id_1: TIntegerField;
    qrySubAnagraphsan_group_id: TSmallintField;
    qrySubAnagraphsan_agent_id_1: TIntegerField;
    qrySubAnagraphsan_agent_group_id: TIntegerField;
    qrySubAnagraphsan_credit_limit: TFloatField;
    qrySubAnagraphsan_credit_days: TSmallintField;
    qrySubAnagraphsan_credit: TBooleanField;
    qrySubAnagraphsan_credit_notes: TWideStringField;
    qrySubAnagraphsan_credit_used: TFloatField;
    qrySubAnagraphsan_overdue_credit: TFloatField;
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
    qryAnagraphsan_cat_id: TSmallintField;
    qryAnagraphslatitude: TFloatField;
    qryAnagraphslongitude: TFloatField;
    qryAnagraphstest: TFloatField;
    qryAnagraphssearch_index: TWideStringField;
    qryAnagraphsan_birthplace: TWideStringField;
    qryAnagraphsan_birthplace_code: TWideStringField;
    qryAnagraphsanagraph64: TWideStringField;
    qryAnagraphsdb_schema_id_1: TIntegerField;
    qryAnagraphsanagraph_id_1: TIntegerField;
    qryAnagraphsan_group_id: TSmallintField;
    qryAnagraphsan_agent_id_1: TIntegerField;
    qryAnagraphsan_agent_group_id: TIntegerField;
    qryAnagraphsan_credit_limit: TFloatField;
    qryAnagraphsan_credit_days: TSmallintField;
    qryAnagraphsan_credit: TBooleanField;
    qryAnagraphsan_credit_notes: TWideStringField;
    qryAnagraphsan_credit_used: TFloatField;
    qryAnagraphsan_overdue_credit: TFloatField;
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
    qryAnagraphsmain_category_id: TSmallintField;
    qryAnagraphsosm_id: TLargeintField;
    qryAnagraphsan_description: TWideStringField;
    lkpCategories: TUniQuery;
    qryAnagraphslkpCategory: TStringField;
    lkpCategoriescategory_id: TSmallintField;
    lkpCategoriesculture_code: TWideStringField;
    lkpCategoriescategory_name: TWideStringField;
    qryAnagraphsan_address_number: TWideStringField;
    dsAnagraph: TDataSource;
    qryAnagraphCategoriesMViewan_address_number: TWideStringField;
    qryLocations: TUniQuery;
    qryAnLocations: TUniQuery;
    qryAnLocationsdb_schema_id: TIntegerField;
    qryAnLocationsanagraph_id: TIntegerField;
    qryAnLocationslocation_id: TLargeintField;
    qryAnLocationsosm_id: TLargeintField;
    qryAnLocationsjguid: TGuidField;
    qryAnLocationsosm_jguid: TGuidField;
    qryAnLocationsanagraph_jguid: TGuidField;
    qryAnLocationsan_title: TWideStringField;
    qryAnLocationsan_name: TWideStringField;
    qryAnLocationsan_second_name: TWideStringField;
    qryAnLocationsan_last_name: TWideStringField;
    qryAnLocationsan_notes: TWideStringField;
    qryAnLocationsan_address: TWideStringField;
    qryAnLocationsan_town: TWideStringField;
    qryAnLocationsan_postal_code: TWideStringField;
    qryAnLocationsan_iso_country_code: TWideStringField;
    qryAnLocationsan_state_province: TWideStringField;
    qryAnLocationsan_phone: TWideStringField;
    qryAnLocationsan_phone2: TWideStringField;
    qryAnLocationsan_fax: TWideStringField;
    qryAnLocationsan_cellular: TWideStringField;
    qryAnagraphsanag_jguid: TWideStringField;
    qryAnagraphsanag_deleted: TBooleanField;
    qryAnagraphsinsert_date: TDateTimeField;
    qryAnagraphsupdate_date: TDateTimeField;
    qryAnagraphsuser_insert: TIntegerField;
    qryAnagraphsjguid: TGuidField;
    qryAnagraphssupplier_id: TIntegerField;
    qryAnagraphsvessel_id: TSmallintField;
    qryAnagraphsan_country_id: TIntegerField;
    qryAnagraphsan_iso_country_code2: TWideStringField;
    qryAnagraphsdeleted: TBooleanField;
    qryAnagraphsadnt_jguid: TWideStringField;
    qryAnagraphsadnt_deleted: TBooleanField;
    qryAdressess: TUniQuery;
    procedure qryAnagraphsBeforeOpen(DataSet: TDataSet);
    procedure qryAnagraphsAfterPost(DataSet: TDataSet);
    procedure qryGroupsAfterScroll(DataSet: TDataSet);
    procedure qryAnagraphsAfterOpen(DataSet: TDataSet);
    procedure qrySubAnagraphsAfterPost(DataSet: TDataSet);
    procedure qrySubAnagraphsAfterOpen(DataSet: TDataSet);
    procedure qrySubAnagraphsBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
    procedure qryAnagraphsNewRecord(DataSet: TDataSet);
    procedure qryAnagraphsAfterScroll(DataSet: TDataSet);
    procedure qryIdentitiesBeforeOpen(DataSet: TDataSet);
    procedure PgErgoConnectionBeforeConnect(Sender: TObject);
  private
    FGroup_id: integer;
    FAnagraph_id: integer;
    Fdb_schema_id: integer;
    procedure SetAnagraph_id(const Value: integer);
    procedure Setdb_schema_id(const Value: integer);
    procedure SetGroup_id(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    function FindAddresbyID(aID: integer): boolean;
    function FindAddress(sSearch: string): integer;
    function SearchAnagraphByName(aName: string): integer;
    procedure OpenAnagraphByGroup(gID: integer);
    function SearchAnagraphByID(aID: integer): boolean;
    function SetAnagraphGroupByID(gID: integer): boolean;
  public
    property Anagraph_id: integer read FAnagraph_id write SetAnagraph_id;
    property Group_id: integer read FGroup_id write SetGroup_id;
    property db_schema_id: integer read Fdb_schema_id write Setdb_schema_id;
  end;

var
  dmPgAnagraph: TdmPgAnagraph;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmPgAnagraph.DataModuleCreate(Sender: TObject);
begin
  inherited;
  // Verifico che sia stato creato il datamodule anagrafica .......
end;

function TdmPgAnagraph.FindAddresbyID(aID: integer): boolean;
begin
  qrySearchAddress.Close;
  qrySearchAddress.ParamByName('p_search').Value := '%';
  qrySearchAddress.ParamByName('p_anagrafica_id').Value := aID;
  ServerFunctions.OpenDataset(qrySearchAddress);
  Result := qrySearchAddress.RecordCount = 1;
end;

function TdmPgAnagraph.FindAddress(sSearch: string): integer;
begin
  qrySearchAddress.Close;
  qrySearchAddress.ParamByName('p_search').Value := sSearch;
  qrySearchAddress.ParamByName('p_anagrafica_id').Value := 0;
  ServerFunctions.OpenDataset(qrySearchAddress);
  Result := qrySearchAddress.RecordCount;
end;

procedure TdmPgAnagraph.OpenAnagraphByGroup(gID: integer);
begin
  SetAnagraphGroupByID(gID);
  ServerFunctions.OpenDataset(self.qryAnagraphs);
  ServerFunctions.OpenDataset(self.lkpCategories);
end;

procedure TdmPgAnagraph.PgErgoConnectionBeforeConnect(Sender: TObject);
begin
  inherited;
  // inherited
end;

procedure TdmPgAnagraph.qryAnagraphsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ServerFunctions.OpenDataset(qryIdentities);
  ServerFunctions.OpenDataset(qrySubAnagraphs);
  ServerFunctions.OpenDataset(qryAdressess);
end;

procedure TdmPgAnagraph.qryAnagraphsAfterPost(DataSet: TDataSet);
begin
  inherited;
  qryIdentities.Close;
  qryIdentities.Open;
  if self.qryIdentities.RecordCount = 0 then
  begin
    sqlInsertIdentity.ParamByName('db_schema_id').Value := ServerSession.schema_id;
    sqlInsertIdentity.ParamByName('anagraph_id').Value := qryAnagraphsanagraph_id.AsInteger;
    sqlInsertIdentity.ParamByName('an_group_id').Value := self.qryAnagraphsan_group_id.AsInteger;
    self.sqlInsertIdentity.Execute;
    self.qryIdentities.Close;
    ServerFunctions.OpenDataset(qryIdentities);
  end;
end;

procedure TdmPgAnagraph.qryAnagraphsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if qryIdentities.ParamByName('anagraph_id').AsInteger <> self.qryAnagraphsanagraph_id.AsInteger then
  begin
    qryIdentities.Close;
    self.qryIdentities.ParamByName('anagraph_id').AsInteger := self.qryAnagraphsanagraph_id.AsInteger;
    ServerFunctions.OpenDataset(qryIdentities);
  end;
end;

procedure TdmPgAnagraph.qryAnagraphsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qryAnagraphs.ParamByName('db_schema_id').Value := self.ServerSession.schema_id;
end;

procedure TdmPgAnagraph.qryAnagraphsNewRecord(DataSet: TDataSet);
begin
  inherited;
  qryAnagraphsdb_schema_id.AsInteger := FSchemaID;
  qryAnagraphsan_group_id.AsInteger := self.FGroup_id;
  qryAnagraphsan_iso_country_code.AsWideString := 'ITA';
  qryAnagraphsan_sex.AsWideString := 'S';
  qryAnagraphsan_currency_id.AsInteger := 1;
  qryAnagraphsan_main_language_code.AsWideString := 'it';
  qryAnagraphsan_main_culture_code.AsWideString := 'it_IT';
  qryAnagraphsan_main_group_id.AsInteger := self.FGroup_id;
end;

procedure TdmPgAnagraph.qryGroupsAfterScroll(DataSet: TDataSet);
begin
  inherited;

  if qryAnagraphs.ParamByName('an_group_id').AsInteger <> self.qryGroupsan_group_id.AsInteger then
  begin
    qryAnagraphs.Close;
    self.qryAnagraphs.ParamByName('an_group_id').AsInteger := self.qryGroupsan_group_id.AsInteger;
  end;

  if qryIdentities.ParamByName('an_group_id').AsInteger <> self.qryGroupsan_group_id.AsInteger then
  begin
    qryIdentities.Close;
    self.qryIdentities.ParamByName('an_group_id').AsInteger := self.qryGroupsan_group_id.AsInteger;
  end;

  if not self.qryIdentities.Active then
    ServerFunctions.OpenDataset(qryIdentities);
  if not self.qryAnagraphs.Active then
    ServerFunctions.OpenDataset(qryAnagraphs);

end;

procedure TdmPgAnagraph.qryIdentitiesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  // :anagraph_id and an_group_id = :an_group_id
  qryIdentities.ParamByName('anagraph_id').AsInteger := self.qryAnagraphsanagraph_id.AsInteger;
  qryIdentities.ParamByName('an_group_id').AsInteger := self.qryAnagraphsan_group_id.AsInteger;
end;

procedure TdmPgAnagraph.qrySubAnagraphsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  ServerFunctions.OpenDataset(qrySubIdentities);
end;

procedure TdmPgAnagraph.qrySubAnagraphsAfterPost(DataSet: TDataSet);
begin
  inherited;
  if self.qrySubIdentities.RecordCount = 0 then
  begin
    sqlInsertIdentity.ParamByName('db_schema_id').Value := ServerSession.schema_id;
    sqlInsertIdentity.ParamByName('anagraph_id').Value := qryAnagraphsanagraph_id.AsInteger;
    self.sqlInsertIdentity.Execute;
    self.qrySubIdentities.Close;
    ServerFunctions.OpenDataset(qrySubIdentities);
  end;
end;

procedure TdmPgAnagraph.qrySubAnagraphsBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrySubAnagraphs.ParamByName('db_schema_id').Value := self.ServerSession.schema_id;
end;

function TdmPgAnagraph.SearchAnagraphByID(aID: integer): boolean;
begin
  // ricerca scheda anagrafica usando l'id ma deve anche impiegare il gusto gruppo anagrafico
  { select a.*, i.*
    from anagraph.anagraphs a, anagraph.identities i
    where
    a.db_schema_id = :db_schema_id
    and
    a.anagraph_id = i.anagraph_id
    and
    i.an_group_id = :an_group_id
    and
    (upper(an_last_name) like upper(:last_name) or :last_name = '%')
    and
    (a.anagraph_id = :anagraph_id or :anagraph_id = 0)
    order by an_last_name, an_name }
  self.qryAnagraphs.Close;
  self.qryAnagraphs.ParamByName('anagraph_id').AsInteger := aID;
  ServerFunctions.OpenDataset(qryAnagraphs);
  Result := self.qryAnagraphs.RecordCount > 0;
end;

function TdmPgAnagraph.SearchAnagraphByName(aName: string): integer;
begin
  qryAnagraphs.ParamByName('last_name').Value := '%' + StripString(aName) + '%';
  ServerFunctions.OpenDataset(qryAnagraphs);
  Result := qryAnagraphs.RecordCount;
end;

function TdmPgAnagraph.SetAnagraphGroupByID(gID: integer): boolean;
var
  aTest, bTest: boolean;
begin
  if not self.qryGroups.Active then
    ServerFunctions.OpenDataset(qryGroups);
  Result := (qryGroupsan_group_id.AsInteger = gID) or qryGroups.Locate([self.qryGroupsan_group_id], gID, []);

  if Result and (self.qryAnagraphs.ParamByName('an_group_id').AsInteger <> FGroup_id) then
  begin
    aTest := self.qryAnagraphs.Active;
    bTest := self.qryIdentities.Active;
    self.qryAnagraphs.Close;
    self.qryAnagraphs.ParamByName('an_group_id').AsInteger := FGroup_id;
    if aTest then
      ServerFunctions.OpenDataset(qryAnagraphs);
    if bTest then
      ServerFunctions.OpenDataset(qryIdentities);
  end;

end;

procedure TdmPgAnagraph.SetAnagraph_id(const Value: integer);
begin
  FAnagraph_id := Value;
  self.SearchAnagraphByID(Value)
end;

procedure TdmPgAnagraph.Setdb_schema_id(const Value: integer);
begin
  Fdb_schema_id := Value;
end;

procedure TdmPgAnagraph.SetGroup_id(const Value: integer);
begin
  FGroup_id := Value;
  self.SetAnagraphGroupByID(Value);
end;

end.
