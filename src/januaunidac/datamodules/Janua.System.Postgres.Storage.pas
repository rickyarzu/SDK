unit Janua.System.Postgres.Storage;

interface

uses
  // Rtl
  System.SysUtils, System.Classes,
  // Uni DB
  Data.DB, MemDS, DBAccess, Uni, UniProvider,
  // Janua
  udmPgStorage, Janua.Core.Types, Janua.Uni.Intf, PostgreSQLUniProvider,
  // Search Engines
  Janua.Search.ViewModels.Intf, Janua.Search.ViewModels.Engines.Impl, Janua.Search.ViewModels.Engines.Intf,
  // View Models
  Janua.System.ViewModel.Intf, Janua.System.Model.Impl, Janua.Orm.Intf, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Janua.Unidac.Connection;

type
  TdmPgSystemStorage = class(TdmPgStorage)
    tbUserSessionRoles: TUniTable;
    dsUserSession: TDataSource;
    qryUserSession: TUniQuery;
    qryUserProfile: TUniQuery;
    qryUser: TUniQuery;
    spCreatePersonalSchema: TUniStoredProc;
    spUserTest: TUniStoredProc;
    spUserAdd: TUniStoredProc;
    spLogin: TUniStoredProc;
    qrySearchUserProfile: TUniQuery;
    qrySearchUsers: TUniQuery;
    qryGetUserByKey: TUniQuery;
    qryGetUserByKeyactive: TBooleanField;
    qryGetUserByKeyemail: TWideStringField;
    qryGetUserByKeydb_user_id: TIntegerField;
    qryGetUserByKeypassword: TWideStringField;
    qryGetUserByKeyusername: TWideStringField;
    qryGetUserByKeyisactive: TBooleanField;
    qryGetUserByKeyverify_token: TWideStringField;
    qryGetUserByKeyverified: TBooleanField;
    qryGetUserByKeydefault_schema_id: TIntegerField;
    qryGetUserByKeyispublic: TBooleanField;
    qryGetUserByKeyinternal_key: TWideStringField;
    qryGetUserByKeydefault_role_id: TSmallintField;
    qryGetUserByKeysearch_name: TWideStringField;
    qryGetUserByKeyreverse_search: TWideStringField;
    qryGetUserByKeyinsert_date: TDateTimeField;
    qryGetUserByKeycountry_id: TSmallintField;
    qryGetUserByKeymain_profile_type_id: TSmallintField;
    qryGetUserByKeymain_profile_id: TWideStringField;
    qryGetUserByKeyimage_id: TLargeintField;
    qryGetUserByKeyimage_url: TWideStringField;
    qryGetUserByKeyiso_language_code: TWideStringField;
    qryGetUserByKeyiso_culture_code: TWideStringField;
    qryGetUserByKeyuser_first_name: TWideStringField;
    qryGetUserByKeyuser_family_name: TWideStringField;
    qryGetUserByKeyemailsent: TBooleanField;
    qryGetUserByKeyemailconfirmed: TBooleanField;
    qryGetUserByKeyemaildate: TDateTimeField;
    qrydbUserSchemas: TUniQuery;
    qrydbUserSchemasdb_schema_id: TIntegerField;
    qrydbUserSchemasdb_schema_name: TWideStringField;
    qrydbUserSchemasschema_des: TWideStringField;
    qrydbUserSchemaspersonal: TBooleanField;
    qrydbUserSchemasdb_schema_key: TWideStringField;
    qrydbUserSchemascountry_id: TSmallintField;
    qrydbUserSchemaslanguage_id: TSmallintField;
    qrydbUserSchemasdefault_user_id: TIntegerField;
    spSetUserDefaultSchema: TUniStoredProc;
    spUserTestSocial: TUniStoredProc;
    spUserAddSocial: TUniStoredProc;
    spLoginSocial: TUniStoredProc;
    spStartSessionByUrl: TUniStoredProc;
    qrySessionByUrl: TUniQuery;
    qrySessionByUrlstartsessionbyurl: TWideStringField;
    spUserPayment: TUniStoredProc;
    qrySession: TUniQuery;
    qrySearchDBUsersProfiles: TUniQuery;
    spRevokePayment: TUniStoredProc;
    spUserPaymentEmail: TUniStoredProc;
    spUserDel: TUniStoredProc;
    qrySearchDBUserSessions: TUniQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    qryLogin: TUniQuery;
    qryUserAdd: TUniQuery;
    qryUserAdduseradd: TWideMemoField;
    qryUserTest: TUniQuery;
    qryCreatePersonalSchema: TUniQuery;
    qryUserTestresult: TIntegerField;
    qryCreatePersonalSchemaresult: TWideMemoField;
    qryLoginresult: TWideStringField;
    spAssignAnagraphIDToUser: TUniStoredProc;
    qryAnagraphProfile: TUniQuery;
    qryUserSessiondb_user_id: TIntegerField;
    qryUserSessiondb_schema_id: TIntegerField;
    qryUserSessiondb_session_key: TWideStringField;
    qryUserSessiondb_session_id: TLargeintField;
    qryUserSessionlanguage_id: TSmallintField;
    qryUserSessionispublic: TBooleanField;
    qryUserSessionusse_jguid: TWideStringField;
    qryUserSessionsurs_jguid: TWideStringField;
    qryUserSessionsurs_deleted: TBooleanField;
    qrySchemaAppsConf: TUniQuery;
    qrySchemaAppsConfdb_schema_id: TIntegerField;
    qrySchemaAppsConfconf: TWideMemoField;
    qrySchemaAppsConfjguid: TGuidField;
    qrySchemaAppsConfdeleted: TBooleanField;
    qrySchemaAppsConfkey: TWideStringField;
    spUserAddWithProfile: TUniStoredProc;
    qryListSchemas: TUniQuery;
    WideStringField66: TWideStringField;
    qryUserSessioninsert_date: TDateTimeField;
    qryUserSessionstart_time: TDateTimeField;
    qryUseractive: TBooleanField;
    qryUseremail: TWideStringField;
    qryUserdb_user_id: TIntegerField;
    qryUserpassword: TWideStringField;
    qryUserusername: TWideStringField;
    qryUserisactive: TBooleanField;
    qryUserverify_token: TWideStringField;
    qryUserverified: TBooleanField;
    qryUserdefault_schema_id: TIntegerField;
    qryUserispublic: TBooleanField;
    qryUserinternal_key: TWideStringField;
    qryUserdefault_role_id: TSmallintField;
    qryUsersearch_name: TWideStringField;
    qryUserreverse_search: TWideStringField;
    qryUserinsert_date: TDateTimeField;
    qryUsercountry_id: TSmallintField;
    qryUsermain_profile_type_id: TSmallintField;
    qryUsermain_profile_id: TWideStringField;
    qryUserimage_id: TLargeintField;
    qryUserimage_url: TWideStringField;
    qryUseriso_language_code: TWideStringField;
    qryUseriso_culture_code: TWideStringField;
    qryUseruser_first_name: TWideStringField;
    qryUseruser_family_name: TWideStringField;
    qryUseremailsent: TBooleanField;
    qryUseremailconfirmed: TBooleanField;
    qryUseremaildate: TDateTimeField;
    qryUserpayment: TBooleanField;
    qryUserpayment_expiration_date: TDateField;
    qryUseruser_deleted: TBooleanField;
    qryUserdb_schema_id: TIntegerField;
    qryUsersuse_jguid: TWideStringField;
    qryUsersuse_deleted: TBooleanField;
    qryUsersocial_id: TWideStringField;
    qryUsersocial_type: TWideStringField;
    qryUserjguid: TGuidField;
    qryUserProfiledb_user_id: TIntegerField;
    qryUserProfilecountry_id: TSmallintField;
    qryUserProfileregion_id: TSmallintField;
    qryUserProfiledistrict_id: TSmallintField;
    qryUserProfiletown_id: TIntegerField;
    qryUserProfilefirst_name: TWideStringField;
    qryUserProfilelast_name: TWideStringField;
    qryUserProfileaddress_street: TWideStringField;
    qryUserProfileaddress_number: TWideStringField;
    qryUserProfileaddress_postal_code: TWideStringField;
    qryUserProfilephone: TWideStringField;
    qryUserProfilecellular_phone: TWideStringField;
    qryUserProfilework_phone: TWideStringField;
    qryUserProfilefax_number: TWideStringField;
    qryUserProfilegender_code: TWideStringField;
    qryUserProfilebirth_date: TDateField;
    qryUserProfilebirth_country_id: TSmallintField;
    qryUserProfilebirth_region_id: TSmallintField;
    qryUserProfilebirth_district_id: TSmallintField;
    qryUserProfilebirth_town_id: TIntegerField;
    qryUserProfilepublic_email: TWideStringField;
    qryUserProfiletitle: TWideStringField;
    qryUserProfilesearch_name: TWideStringField;
    qryUserProfilereverse_search: TWideStringField;
    qryUserProfileaddress_full: TWideStringField;
    qryUserProfilelatitude: TFloatField;
    qryUserProfilelongitude: TFloatField;
    qryUserProfilefiscal_code: TWideStringField;
    qryUserProfilesmssent: TBooleanField;
    qryUserProfilesmsconfirmed: TBooleanField;
    qryUserProfilesmsdate: TDateTimeField;
    qryUserProfilesmschecknumber: TWideStringField;
    qryUserProfileaddress_town: TWideStringField;
    qryUserProfilep_facebook_json: TWideMemoField;
    qryUserProfilefacebook_json: TWideMemoField;
    qryUserProfileaddress_state_province: TWideStringField;
    qryUserProfileuspr_jguid: TWideStringField;
    qryUserProfiledb_schema_id: TIntegerField;
    qryUserProfilesupr_jguid: TWideStringField;
    qryUserProfilesupr_deleted: TBooleanField;
    qryUserProfileanagraph_id: TIntegerField;
    qryUserProfilejguid: TGuidField;
    qrySearchDBUsersProfilesactive: TBooleanField;
    qrySearchDBUsersProfilesemail: TWideStringField;
    qrySearchDBUsersProfilesdb_user_id: TIntegerField;
    qrySearchDBUsersProfilespassword: TWideStringField;
    qrySearchDBUsersProfilesusername: TWideStringField;
    qrySearchDBUsersProfilesisactive: TBooleanField;
    qrySearchDBUsersProfilesverify_token: TWideStringField;
    qrySearchDBUsersProfilesverified: TBooleanField;
    qrySearchDBUsersProfilesdefault_schema_id: TIntegerField;
    qrySearchDBUsersProfilesispublic: TBooleanField;
    qrySearchDBUsersProfilesinternal_key: TWideStringField;
    qrySearchDBUsersProfilesdefault_role_id: TSmallintField;
    qrySearchDBUsersProfilessearch_name: TWideStringField;
    qrySearchDBUsersProfilesreverse_search: TWideStringField;
    qrySearchDBUsersProfilesinsert_date: TDateTimeField;
    qrySearchDBUsersProfilescountry_id: TSmallintField;
    qrySearchDBUsersProfilesmain_profile_type_id: TSmallintField;
    qrySearchDBUsersProfilesmain_profile_id: TWideStringField;
    qrySearchDBUsersProfilesimage_id: TLargeintField;
    qrySearchDBUsersProfilesimage_url: TWideStringField;
    qrySearchDBUsersProfilesiso_language_code: TWideStringField;
    qrySearchDBUsersProfilesiso_culture_code: TWideStringField;
    qrySearchDBUsersProfilesuser_first_name: TWideStringField;
    qrySearchDBUsersProfilesuser_family_name: TWideStringField;
    qrySearchDBUsersProfilesemailsent: TBooleanField;
    qrySearchDBUsersProfilesemailconfirmed: TBooleanField;
    qrySearchDBUsersProfilesemaildate: TDateTimeField;
    qrySearchDBUsersProfilespayment: TBooleanField;
    qrySearchDBUsersProfilespayment_expiration_date: TDateField;
    qrySearchDBUsersProfilesuser_deleted: TBooleanField;
    qrySearchDBUsersProfilesdb_schema_id: TIntegerField;
    qrySearchDBUsersProfilessuse_jguid: TWideStringField;
    qrySearchDBUsersProfilessuse_deleted: TBooleanField;
    qrySearchDBUsersProfilessocial_id: TWideStringField;
    qrySearchDBUsersProfilessocial_type: TWideStringField;
    qrySearchDBUsersProfilesjguid: TGuidField;
    qrySearchDBUsersProfilespublic_email: TWideStringField;
    qrySearchDBUsersProfilestitle: TWideStringField;
    qrySearchDBUsersProfilesfirst_name: TWideStringField;
    qrySearchDBUsersProfileslast_name: TWideStringField;
    qrySearchDBUsersProfilesfull_name: TWideStringField;
    qrySearchDBUsersProfilescountry_id_1: TSmallintField;
    qrySearchDBUsersProfilesregion_id: TSmallintField;
    qrySearchDBUsersProfilesdistrict_id: TSmallintField;
    qrySearchDBUsersProfilestown_id: TIntegerField;
    qrySearchDBUsersProfilesaddress_street: TWideStringField;
    qrySearchDBUsersProfilesaddress_number: TWideStringField;
    qrySearchDBUsersProfilesaddress_postal_code: TWideStringField;
    qrySearchDBUsersProfilesphone: TWideStringField;
    qrySearchDBUsersProfilescellular_phone: TWideStringField;
    qrySearchDBUsersProfileswork_phone: TWideStringField;
    qrySearchDBUsersProfilesfax_number: TWideStringField;
    qrySearchDBUsersProfilesgender_code: TWideStringField;
    qrySearchDBUsersProfilesbirth_date: TDateField;
    qrySearchDBUsersProfilesbirth_country_id: TSmallintField;
    qrySearchDBUsersProfilesbirth_region_id: TSmallintField;
    qrySearchDBUsersProfilesbirth_district_id: TSmallintField;
    qrySearchDBUsersProfilesbirth_town_id: TIntegerField;
    qrySearchDBUsersProfilespublic_email_1: TWideStringField;
    qrySearchDBUsersProfilestitle_1: TWideStringField;
    qrySearchDBUsersProfilesaddress_full: TWideStringField;
    qrySearchDBUsersProfileslatitude: TFloatField;
    qrySearchDBUsersProfileslongitude: TFloatField;
    qrySearchDBUsersProfilesfiscal_code: TWideStringField;
    qrySearchDBUsersProfilessmssent: TBooleanField;
    qrySearchDBUsersProfilessmsconfirmed: TBooleanField;
    qrySearchDBUsersProfilessmsdate: TDateTimeField;
    qrySearchDBUsersProfilessmschecknumber: TWideStringField;
    qrySearchDBUsersProfilesaddress_town: TWideStringField;
    qryAnagraphProfiledb_schema_id: TIntegerField;
    qryAnagraphProfileanagraph_id: TIntegerField;
    qryAnagraphProfilean_title: TWideStringField;
    qryAnagraphProfilean_name: TWideStringField;
    qryAnagraphProfilean_second_name: TWideStringField;
    qryAnagraphProfilean_last_name: TWideStringField;
    qryAnagraphProfilean_notes: TWideStringField;
    qryAnagraphProfilean_address: TWideStringField;
    qryAnagraphProfilean_town: TWideStringField;
    qryAnagraphProfilean_postal_code: TWideStringField;
    qryAnagraphProfilean_iso_country_code: TWideStringField;
    qryAnagraphProfilean_state_province: TWideStringField;
    qryAnagraphProfilean_phone: TWideStringField;
    qryAnagraphProfilean_phone2: TWideStringField;
    qryAnagraphProfilean_fax: TWideStringField;
    qryAnagraphProfilean_cellular: TWideStringField;
    qryAnagraphProfilean_code: TWideStringField;
    qryAnagraphProfilean_vat_numeric: TWideStringField;
    qryAnagraphProfilean_email: TWideStringField;
    qryAnagraphProfilean_web: TWideStringField;
    qryAnagraphProfilean_contact_id: TIntegerField;
    qryAnagraphProfilean_bank_account: TWideStringField;
    qryAnagraphProfilean_payment_des: TWideStringField;
    qryAnagraphProfilean_discount: TFloatField;
    qryAnagraphProfilean_distance: TIntegerField;
    qryAnagraphProfilean_distance_mesunit: TSmallintField;
    qryAnagraphProfilean_sex: TWideStringField;
    qryAnagraphProfilean_cod_comune: TWideStringField;
    qryAnagraphProfilean_cod_provincia: TWideStringField;
    qryAnagraphProfilean_credit_line: TFloatField;
    qryAnagraphProfilean_currency_id: TSmallintField;
    qryAnagraphProfilean_cat_id: TSmallintField;
    qryAnagraphProfilean_notes2: TWideStringField;
    qryAnagraphProfilean_notes3: TWideMemoField;
    qryAnagraphProfilean_edi: TBooleanField;
    qryAnagraphProfilean_privacy: TBooleanField;
    qryAnagraphProfilean_office_id: TIntegerField;
    qryAnagraphProfilean_cod_prov_rif: TWideStringField;
    qryAnagraphProfilean_data_fido: TDateField;
    qryAnagraphProfilean_user_insert: TWideStringField;
    qryAnagraphProfilean_user_update: TWideStringField;
    qryAnagraphProfilean_area_id: TSmallintField;
    qryAnagraphProfilean_agent_id: TSmallintField;
    qryAnagraphProfilean_area_code: TWideStringField;
    qryAnagraphProfilean_zone_id: TWideStringField;
    qryAnagraphProfilean_ins_id: TLargeintField;
    qryAnagraphProfilean_upd_id: TLargeintField;
    qryAnagraphProfilean_documents: TSmallintField;
    qryAnagraphProfilean_last_date: TDateField;
    qryAnagraphProfilean_birthdate: TDateField;
    qryAnagraphProfilean_office_type_id: TSmallintField;
    qryAnagraphProfilean_searchname: TWideStringField;
    qryAnagraphProfilean_extra_ue_flag: TBooleanField;
    qryAnagraphProfilean_external_code: TWideStringField;
    qryAnagraphProfilean_vat_id: TSmallintField;
    qryAnagraphProfilean_personal_fiscal_code: TWideStringField;
    qryAnagraphProfilean_privacy_print: TSmallintField;
    qryAnagraphProfilean_sms: TBooleanField;
    qryAnagraphProfilean_encrypted_fiscal_code: TWideStringField;
    qryAnagraphProfilean_vat_purcentage: TSmallintField;
    qryAnagraphProfilean_status: TSmallintField;
    qryAnagraphProfilean_ownsite: TBooleanField;
    qryAnagraphProfilean_insurance_id: TLargeintField;
    qryAnagraphProfilean_anagraphs_anagraph_id: TIntegerField;
    qryAnagraphProfilean_main_language_code: TWideStringField;
    qryAnagraphProfilean_main_culture_code: TWideStringField;
    qryAnagraphProfilean_fiscal_code: TWideStringField;
    qryAnagraphProfilean_main_group_id: TIntegerField;
    qryAnagraphProfilean_image_id: TLargeintField;
    qryAnagraphProfilelatitude: TFloatField;
    qryAnagraphProfilelongitude: TFloatField;
    qryAnagraphProfiletest: TFloatField;
    qryAnagraphProfilesearch_index: TWideStringField;
    qryAnagraphProfilean_birthplace: TWideStringField;
    qryAnagraphProfilean_birthplace_code: TWideStringField;
    qryAnagraphProfileanagraph64: TWideStringField;
    qryAnagraphProfilemain_category_id: TSmallintField;
    qryAnagraphProfileosm_id: TLargeintField;
    qryAnagraphProfilean_description: TWideStringField;
    qryAnagraphProfilean_address_number: TWideStringField;
    qryAnagraphProfileanag_jguid: TWideStringField;
    qryAnagraphProfileanag_deleted: TBooleanField;
    qryAnagraphProfileinsert_date: TDateTimeField;
    qryAnagraphProfileupdate_date: TDateTimeField;
    qryAnagraphProfileuser_insert: TIntegerField;
    qryAnagraphProfilejguid: TStringField;
    qryAnagraphProfilecustom_field_1: TWideStringField;
    qryAnagraphProfilecustom_field_2: TWideStringField;
    qryAnagraphProfilecustom_field_3: TWideStringField;
    qryAnagraphProfilecustom_float_1: TFloatField;
    qryAnagraphProfilecustom_float_2: TFloatField;
    qryAnagraphProfilecustom_int_1: TIntegerField;
    qryAnagraphProfilecustom_int_2: TIntegerField;
    qryAnagraphProfilesupplier_id: TIntegerField;
    qryAnagraphProfilevessel_id: TSmallintField;
    qryAnagraphProfilean_country_id: TIntegerField;
    qryAnagraphProfilean_iso_country_code2: TWideStringField;
    qryAnagraphProfiledeleted: TBooleanField;
    qryAnagraphProfilean_group_id: TSmallintField;
    qryAnagraphProfilean_credit_limit: TFloatField;
    qryAnagraphProfilean_credit: TBooleanField;
    qryAnagraphProfileshipment_name: TWideStringField;
    qryAnagraphProfileshipment_postal_code: TWideStringField;
    qryAnagraphProfileshipment_town: TWideStringField;
    qryAnagraphProfileshipment_address: TWideStringField;
    qryAnagraphProfileshipment_phone: TWideStringField;
    qryAnagraphProfileshipment_state_province: TWideStringField;
    qryAnagraphProfilebilling_name: TWideStringField;
    qryAnagraphProfilebilling_postal_code: TWideStringField;
    qryAnagraphProfilebilling_town: TWideStringField;
    qryAnagraphProfilebilling_address: TWideStringField;
    qryAnagraphProfilebilling_phone: TWideStringField;
    qryAnagraphProfilebilling_state_province: TWideStringField;
    qryAnagraphProfilean_full_address: TWideStringField;
    qrySearchUserProfiledb_user_id: TIntegerField;
    qrySearchUserProfilecountry_id: TSmallintField;
    qrySearchUserProfileregion_id: TSmallintField;
    qrySearchUserProfiledistrict_id: TSmallintField;
    qrySearchUserProfiletown_id: TIntegerField;
    qrySearchUserProfilefirst_name: TWideStringField;
    qrySearchUserProfilelast_name: TWideStringField;
    qrySearchUserProfileaddress_street: TWideStringField;
    qrySearchUserProfileaddress_number: TWideStringField;
    qrySearchUserProfileaddress_postal_code: TWideStringField;
    qrySearchUserProfilephone: TWideStringField;
    qrySearchUserProfilecellular_phone: TWideStringField;
    qrySearchUserProfilework_phone: TWideStringField;
    qrySearchUserProfilefax_number: TWideStringField;
    qrySearchUserProfilegender_code: TWideStringField;
    qrySearchUserProfilebirth_date: TDateField;
    qrySearchUserProfilebirth_country_id: TSmallintField;
    qrySearchUserProfilebirth_region_id: TSmallintField;
    qrySearchUserProfilebirth_district_id: TSmallintField;
    qrySearchUserProfilebirth_town_id: TIntegerField;
    qrySearchUserProfilepublic_email: TWideStringField;
    qrySearchUserProfiletitle: TWideStringField;
    qrySearchUserProfilesearch_name: TWideStringField;
    qrySearchUserProfilereverse_search: TWideStringField;
    qrySearchUserProfileaddress_full: TWideStringField;
    qrySearchUserProfilelatitude: TFloatField;
    qrySearchUserProfilelongitude: TFloatField;
    qrySearchUserProfilefiscal_code: TWideStringField;
    qrySearchUserProfilesmssent: TBooleanField;
    qrySearchUserProfilesmsconfirmed: TBooleanField;
    qrySearchUserProfilesmsdate: TDateTimeField;
    qrySearchUserProfilesmschecknumber: TWideStringField;
    qrySearchUserProfileaddress_town: TWideStringField;
    qrySearchUserProfilep_facebook_json: TWideMemoField;
    qrySearchUserProfilefacebook_json: TWideMemoField;
    qrySearchUserProfileaddress_state_province: TWideStringField;
    qrySearchUserProfileuspr_jguid: TWideStringField;
    qrySearchUserProfiledb_schema_id: TIntegerField;
    qrySearchUserProfilesupr_jguid: TWideStringField;
    qrySearchUserProfilesupr_deleted: TBooleanField;
    qrySearchUserProfileanagraph_id: TIntegerField;
    qrySearchUserProfilejguid: TGuidField;
    qrySearchUsersactive: TBooleanField;
    qrySearchUsersemail: TWideStringField;
    qrySearchUsersdb_user_id: TIntegerField;
    qrySearchUserspassword: TWideStringField;
    qrySearchUsersusername: TWideStringField;
    qrySearchUsersisactive: TBooleanField;
    qrySearchUsersverify_token: TWideStringField;
    qrySearchUsersverified: TBooleanField;
    qrySearchUsersdefault_schema_id: TIntegerField;
    qrySearchUsersispublic: TBooleanField;
    qrySearchUsersinternal_key: TWideStringField;
    qrySearchUsersdefault_role_id: TSmallintField;
    qrySearchUserssearch_name: TWideStringField;
    qrySearchUsersreverse_search: TWideStringField;
    qrySearchUsersinsert_date: TDateTimeField;
    qrySearchUserscountry_id: TSmallintField;
    qrySearchUsersmain_profile_type_id: TSmallintField;
    qrySearchUsersmain_profile_id: TWideStringField;
    qrySearchUsersimage_id: TLargeintField;
    qrySearchUsersimage_url: TWideStringField;
    qrySearchUsersiso_language_code: TWideStringField;
    qrySearchUsersiso_culture_code: TWideStringField;
    qrySearchUsersuser_first_name: TWideStringField;
    qrySearchUsersuser_family_name: TWideStringField;
    qrySearchUsersemailsent: TBooleanField;
    qrySearchUsersemailconfirmed: TBooleanField;
    qrySearchUsersemaildate: TDateTimeField;
    qrySearchUserspayment: TBooleanField;
    qrySearchUserspayment_expiration_date: TDateField;
    qrySearchUsersuser_deleted: TBooleanField;
    qrySearchUsersdb_schema_id: TIntegerField;
    qrySearchUserssuse_jguid: TWideStringField;
    qrySearchUserssuse_deleted: TBooleanField;
    qrySearchUserssocial_id: TWideStringField;
    qrySearchUserssocial_type: TWideStringField;
    qrySearchUsersjguid: TGuidField;
    qrySessiondb_user_id: TIntegerField;
    qrySessiondb_schema_id: TIntegerField;
    qrySessiondb_session_key: TWideStringField;
    qrySessiondb_session_id: TLargeintField;
    qrySessionlanguage_id: TSmallintField;
    qrySessionstart_time: TDateTimeField;
    qrySessioninsert_date: TDateTimeField;
    qrySessionispublic: TBooleanField;
    qrySessionusse_jguid: TWideStringField;
    qrySessionsurs_jguid: TWideStringField;
    qrySessionsurs_deleted: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrySearchDBUsersProfilesAfterOpen(DataSet: TDataSet);
    procedure qrySearchDBUsersProfilesAfterScroll(DataSet: TDataSet);
    procedure qrySearchUserProfileBeforePost(DataSet: TDataSet);
    procedure qryUserProfileAfterOpen(DataSet: TDataSet);
    procedure qryUserSessionBeforeOpen(DataSet: TDataSet);
    procedure qryUserSessionAfterOpen(DataSet: TDataSet);
    procedure qrySchemaAppsConfBeforeOpen(DataSet: TDataSet);
    procedure qrySchemaAppsConfBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    destructor Destroy; override;
  public
    procedure RefreshDetails; override;
    function UserPayment(const aUserID: Integer; const aPayment: Currency; const aDate: TDateTime;
      const aIntervalType: TDBTimeIntervalType = TDBTimeIntervalType.dbiYear;
      const aDuration: Int16 = 1): boolean;
  end;

type
  TJanuaSystemDataModule = class(TJanuaCustomSystemDataModule, IJanuaSystemDataModule)
    // set of IJanuaDBDataset and IJanuaDBStoredProcedure
  private
    { Private declarations }
    FDM: TdmPgSystemStorage;
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
  TJanuaPgSearchSystem = class(TJanuaSearchSystemUsersModel, ISearchModelUsers, ISearchModel)
  protected
    function InternalCreateDataset: IJanuaDBDataset; override;
  end;

var
  dmPgSystemStorage: TdmPgSystemStorage;

implementation

uses System.Bindings.Helper, Janua.Orm.UniDac, Janua.Orm.Types, Janua.Application.Framework;
{%CLASSGROUP 'System.Classes.TPersistent'}
{$R *.dfm}

procedure TdmPgSystemStorage.DataModuleCreate(Sender: TObject);
begin
  inherited;
end;

{ TdmPgSystemStorage }
destructor TdmPgSystemStorage.Destroy;
begin

  inherited;
end;

procedure TdmPgSystemStorage.qrySchemaAppsConfBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qrySchemaAppsConf.ParamByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
end;

procedure TdmPgSystemStorage.qrySchemaAppsConfBeforePost(DataSet: TDataSet);
begin
  inherited;
  qrySchemaAppsConf.FieldByName('db_schema_id').AsInteger := TJanuaApplication.DBSchemaID;
end;

procedure TdmPgSystemStorage.qrySearchDBUsersProfilesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  // TBindings.Notify(qrySearchDBUsersProfilesdb_user_id, 'AsInteger');
end;

procedure TdmPgSystemStorage.qrySearchDBUsersProfilesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  // TBindings.Notify(qrySearchDBUsersProfilesdb_user_id, 'AsInteger');
end;

procedure TdmPgSystemStorage.qrySearchUserProfileBeforePost(DataSet: TDataSet);
begin
  inherited;
  if qrySearchUserProfilegender_code.IsNull then
    qrySearchUserProfilegender_code.AsString := 'C'; // Company
end;

procedure TdmPgSystemStorage.qryUserProfileAfterOpen(DataSet: TDataSet);
begin
  inherited;
  qryAnagraphProfile.Close;
  qryAnagraphProfile.ParamByName('anagraph_id').AsInteger := self.qryUserProfileanagraph_id.AsInteger;
  qryAnagraphProfile.Open;
end;

procedure TdmPgSystemStorage.qryUserSessionAfterOpen(DataSet: TDataSet);
{$IFDEF DEBUG}
var
  lSessionID: string;
  lCount: Integer;
{$ENDIF}
begin
  inherited;
{$IFDEF DEBUG}
  lSessionID := qryUserSession.ParamByName('db_session_key').AsString;
  if qryUserSession.Active then
    lCount := qryUserSession.RecordCount;
  qrySession.Close;
  qrySession.ParamByName('db_session_key').AsString := lSessionID;
  qrySession.Open;
  if qrySession.Active then
    lCount := qrySession.RecordCount;
{$ENDIF}
  { SELECT   u.* FROM  system.db_users u WHERE u.db_user_id = :db_user_id }
  qryUser.Close;
  qryUser.ParamByName('db_user_id').AsInteger := qryUserSessiondb_user_id.AsInteger;
  qryUser.Open;
{$IFDEF DEBUG} lCount := qryUser.RecordCount; {$ENDIF}
  { SELECT  s.* FROM system.db_users_profiles s where s.db_user_id = :db_user_id }
  qryUserProfile.Close;
  qryUserProfile.ParamByName('db_user_id').AsInteger := qryUserSessiondb_user_id.AsInteger;
  qryUserProfile.Open;
{$IFDEF DEBUG} lCount := qryUserProfile.RecordCount; {$ENDIF}
end;

procedure TdmPgSystemStorage.qryUserSessionBeforeOpen(DataSet: TDataSet);
{$IFDEF DEBUG}
var
  lSessionID: string;
{$ENDIF}
begin
  inherited;
{$IFDEF DEBUG}
  lSessionID := qryUserSession.ParamByName('db_session_key').AsString;
{$ENDIF}
end;

procedure TdmPgSystemStorage.RefreshDetails;
begin
  { TODO Implement System Storage Refres }
end;

function TdmPgSystemStorage.UserPayment(const aUserID: Integer; const aPayment: Currency;
  const aDate: TDateTime; const aIntervalType: TDBTimeIntervalType; const aDuration: Int16): boolean;
begin
  Result := False;
  // (:p_user_id, :p_schema_id, :p_amount, :p_interval_type, :p_interval_duration, :p_payment_date)
  self.spUserPayment.ParamByName('p_user_id').AsInteger := aUserID;
  self.spUserPayment.ParamByName('p_amounth').AsCurrency := aPayment;
  self.spUserPayment.ParamByName('p_interval_type').AsString := pgTimeInterval[aIntervalType];
  self.spUserPayment.ParamByName('p_interval_duration').AsInteger := aDuration;
  self.spUserPayment.ParamByName('p_payment_date').AsDateTime := Date();
  spUserPayment.ExecProc;
  Result := spUserPayment.ParamByName('Result').AsInteger > 0;
end;

{ TJanuaSystemDataModule }
constructor TJanuaSystemDataModule.Create;
begin
  inherited;
end;

destructor TJanuaSystemDataModule.Destroy;
begin
  try
    if Assigned(FDM) then
    begin
      FDM.Free;
      FDM := nil;
    end;
  except
    on e: exception do
      TJanuaCoreOS.PublicWriteLog(self, 'Destroy', e.Message, True)
  end;
  inherited;
end;

procedure TJanuaSystemDataModule.GetInternalCreate;
begin // occorre che tutti i Dataset siano assegnati verifichiamo
  FInternalCreate := procedure
    begin
      FDM := TdmPgSystemStorage.Create(nil);
      SetMainDataModule(FDM);
      // FjdsAnagraphAddress: IJanuaDBDataset;
      SetjdsLogin(TJanuaPgDataset.Create(FDM.qryLogin, [TJanuaEntity.SysDbUserSessions])); // FjdsLogin
      SetjdsUser(TJanuaPgDataset.Create(FDM.qryUser, [TJanuaEntity.SysDbUsers])); // FjdsUser
      SetjdsUserSession(TJanuaPgDataset.Create(FDM.qryUserSession, [TJanuaEntity.SysDbUserSessions]));
      SetjdsUserProfile(TJanuaPgDataset.Create(FDM.qryUserProfile, [TJanuaEntity.SysDbUsersProfiles]));
      SetjspLogin(TJanuaPgStoredProcedure.Create(FDM.spLogin, [])); // FjspLogin
      SetjspLoginSocial(TJanuaPgStoredProcedure.Create(FDM.spLoginSocial, [])); // FjspLoginSocial
      SetjspUserAdd(TJanuaPgStoredProcedure.Create(FDM.spUserAdd, [])); // FjspUserAdd
      SetjspUserTest(TJanuaPgStoredProcedure.Create(FDM.spUserTest, [])); // FjspUserTest
      SetjdsGetUserByKey(TJanuaPgDataset.Create(FDM.qryGetUserByKey, [TJanuaEntity.SysDbUsers]));
      SetjdsSearchUserProfile(TJanuaPgDataset.Create(FDM.qrySearchUserProfile,
        [TJanuaEntity.SysDbUsersProfiles]));
      SetjspCreatePersonalSchema(TJanuaPgStoredProcedure.Create(FDM.spCreatePersonalSchema, []));
      SetjspSetUserDefaultSchema(TJanuaPgStoredProcedure.Create(FDM.spSetUserDefaultSchema, []));
      SetjspAddAnagraphProfile(TJanuaPgStoredProcedure.Create(FDM.spAssignAnagraphIDToUser, []));
      // spUserD
      SetjspUserDel(TJanuaPgStoredProcedure.Create(FDM.spUserDel, []));
      // FjspUserAddWithProfile
      SetjspUserAddWithProfile(TJanuaPgStoredProcedure.Create(FDM.spUserAddWithProfile, []));
      SetjspUpdateUserAnID(TJanuaPgStoredProcedure.Create(FDM.spAssignAnagraphIDToUser, []));
      SetjdsSchemaConfig(TJanuaPgDataset.Create(FDM.qrySchemaAppsConf, [TJanuaEntity.SysDbSchemaParams]));
    end;
end;

{ TJanuaPgSearchAnagraph }
{ TJanuaPgSearchSystem }
function TJanuaPgSearchSystem.InternalCreateDataset: IJanuaDBDataset;
begin
end;

end.
