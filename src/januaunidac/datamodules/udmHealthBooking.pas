unit udmHealthBooking;

interface

uses
  System.SysUtils, System.Classes,

  // Januaproject
  Janua.Core.Functions, Janua.Core.Classes, Janua.Core.Cloud, Janua.Core.Health, Janua.Core.Types,

  // Data Modules
  udmJanuaPostgresModel,

  // Database
  Data.DB, DBAccess, Uni, MemDS, Datasnap.Provider, Datasnap.DBClient, Janua.Core.Exceptions, UniProvider,
  PostgreSQLUniProvider, Janua.Unidac.Connection;

{$METHODINFO ON}

type
  TdmHealthBooking = class(TdmJanuaPostgresModel)
    qryCompanies: TUniQuery;
    qryInstitutes: TUniQuery;
    dsCompanies: TDataSource;
    dsInstitutes: TDataSource;
    qryInstitutesDisciplines: TUniQuery;
    qryInstitutesDisciplinesanagraph_id: TIntegerField;
    qryInstitutesDisciplinesdiscipline_id: TSmallintField;
    dsInstitutesDisciplines: TDataSource;
    qryLkpItems: TUniQuery;
    qryLkpItemsid: TLargeintField;
    qryInstitutesServices: TUniQuery;
    qryInstitutesServicesid: TLargeintField;
    qryInstitutesServicesanagraph_id: TIntegerField;
    qryInstitutesServicesdiscipline_id: TSmallintField;
    qryInstitutesServicesitem_id: TLargeintField;
    qryInstitutesServiceslkpItem: TStringField;
    dsInstitutesServices: TDataSource;
    qryInstitutesServicestitle: TWideStringField;
    qryInstitutesServicesspecification: TWideStringField;
    qryInstitutesDisciplinesdiscipline_name: TWideStringField;
    qryInstitutesDisciplinesphone: TWideStringField;
    qryInstitutesDisciplinesemail: TWideStringField;
    qryInstitutesDisciplinesmain_doctor_id: TIntegerField;
    qryLkpItemsmodel: TWideStringField;
    qryInstitutesServicesdescription: TWideStringField;
    qrySearch: TUniQuery;
    qrySearchdisciplina: TWideStringField;
    qrySearchesame: TWideMemoField;
    dsSearch: TDataSource;
    qrySearchprestazione: TWideStringField;
    qrySearchServices: TUniQuery;
    qrySearchInstitutes: TUniQuery;
    dsSearchInstitutes: TDataSource;
    qrySearchItem: TUniQuery;
    qrySearchItemdisciplina: TWideStringField;
    qrySearchItemprestazione: TWideStringField;
    qrySearchItemitem_id: TLargeintField;
    qrySearchItemesame: TWideStringField;
    qryLkpDisciplines: TUniQuery;
    qryLkpDisciplinesdiscipline_id: TSmallintField;
    qryLkpDisciplinesbranch_id: TSmallintField;
    qryLkpDisciplinesdiscipline_name: TWideStringField;
    qryInstitutesDisciplineslkpDisciplineName: TStringField;
    qryServicesNextVal: TUniQuery;
    qryAnagraphNextVal: TUniQuery;
    qryServicesNextValnextval: TLargeintField;
    qryAnagraphNextValnextval: TLargeintField;
    qrySearchServicesitem_id: TLargeintField;
    qrySearchServicesdiscipline_id: TSmallintField;
    qrySearchServicesdiscipline_name: TWideStringField;
    qryInstitutesItems: TUniQuery;
    PgQuery2: TUniQuery;
    qryInstitutesItemsdistance: TFloatField;
    qryInstitutesItemsanagraph_id: TIntegerField;
    qryInstitutesItemsan_title: TWideStringField;
    qryInstitutesItemsan_address: TWideStringField;
    qryInstitutesItemsan_last_name: TWideStringField;
    qryInstitutesItemsfull_address: TWideStringField;
    qryInstitutesItemsan_phone: TWideStringField;
    qryInstitutesItemsan_fax: TWideStringField;
    qryInstitutesItemsan_email: TWideStringField;
    qryInstitutesItemsan_postal_code: TWideStringField;
    qryInstitutesItemsan_town: TWideStringField;
    qryInstitutesItemsan_state_province: TWideStringField;
    qryInstitutesItemslatitude: TFloatField;
    qryInstitutesItemslongitude: TFloatField;
    qryInstitutesItemsid: TLargeintField;
    qryBookings: TUniQuery;
    dsBookings: TDataSource;
    qryBookingRows: TUniQuery;
    qrySearchAnagraph: TUniQuery;
    qryInstitutesServicesspeciality: TWideStringField;
    spBooking: TUniStoredProc;
    spAssignBooking: TUniStoredProc;
    qryBookingInstitutes: TUniQuery;
    spbookingInstitutes: TUniStoredProc;
    qrySearchServicessearch: TWideStringField;
    qrySearchServicesid: TLargeintField;
    spBookingFinalisation: TUniStoredProc;
    qryInstitutesItemsselected: TBooleanField;
    qryLkpServices: TUniQuery;
    qryBookingPrescription: TUniQuery;
    qryRelative: TUniQuery;
    qrySearchServicestitle: TWideStringField;
    qrySearchServicesdescription: TWideMemoField;
    qrySearchServicesprestazione: TWideStringField;
    spInstituteConfirmation: TUniStoredProc;
    PgQuery2item_id: TIntegerField;
    PgQuery2discipline_id: TSmallintField;
    PgQuery2discipline_name: TWideStringField;
    PgQuery2prestazione: TWideStringField;
    spUserCheckOut: TUniStoredProc;
    qrySearchAnagraphan_group_id: TSmallintField;
    qrySearchAnagraphdb_schema_id: TIntegerField;
    qrySearchAnagraphanagraph_id: TIntegerField;
    qrySearchAnagraphan_title: TWideStringField;
    qrySearchAnagraphan_name: TWideStringField;
    qrySearchAnagraphan_second_name: TWideStringField;
    qrySearchAnagraphan_last_name: TWideStringField;
    qrySearchAnagraphan_notes: TWideStringField;
    qrySearchAnagraphan_address: TWideStringField;
    qrySearchAnagraphan_town: TWideStringField;
    qrySearchAnagraphan_postal_code: TWideStringField;
    qrySearchAnagraphan_iso_country_code: TWideStringField;
    qrySearchAnagraphan_state_province: TWideStringField;
    qrySearchAnagraphan_phone: TWideStringField;
    qrySearchAnagraphan_phone2: TWideStringField;
    qrySearchAnagraphan_fax: TWideStringField;
    qrySearchAnagraphan_cellular: TWideStringField;
    qrySearchAnagraphan_code: TWideStringField;
    qrySearchAnagraphan_vat_numeric: TWideStringField;
    qrySearchAnagraphan_email: TWideStringField;
    qrySearchAnagraphan_web: TWideStringField;
    qrySearchAnagraphan_contact_id: TIntegerField;
    qrySearchAnagraphan_bank_account: TWideStringField;
    qrySearchAnagraphan_payment_des: TWideStringField;
    qrySearchAnagraphan_discount: TFloatField;
    qrySearchAnagraphan_distance: TIntegerField;
    qrySearchAnagraphan_distance_mesunit: TSmallintField;
    qrySearchAnagraphan_sex: TWideStringField;
    qrySearchAnagraphan_cod_comune: TWideStringField;
    qrySearchAnagraphan_cod_provincia: TWideStringField;
    qrySearchAnagraphan_credit_line: TFloatField;
    qrySearchAnagraphan_currency_id: TSmallintField;
    qrySearchAnagraphan_cat_id: TSmallintField;
    qrySearchAnagraphan_notes2: TWideStringField;
    qrySearchAnagraphan_notes3: TWideMemoField;
    qrySearchAnagraphan_edi: TBooleanField;
    qrySearchAnagraphan_privacy: TBooleanField;
    qrySearchAnagraphan_office_id: TSmallintField;
    qrySearchAnagraphan_cod_prov_rif: TWideStringField;
    qrySearchAnagraphan_data_fido: TDateField;
    qrySearchAnagraphan_user_insert: TWideStringField;
    qrySearchAnagraphan_user_update: TWideStringField;
    qrySearchAnagraphan_area_id: TSmallintField;
    qrySearchAnagraphan_agent_id: TSmallintField;
    qrySearchAnagraphan_area_code: TWideStringField;
    qrySearchAnagraphan_zone_id: TWideStringField;
    qrySearchAnagraphan_ins_id: TLargeintField;
    qrySearchAnagraphan_upd_id: TLargeintField;
    qrySearchAnagraphan_documents: TSmallintField;
    qrySearchAnagraphan_last_date: TDateField;
    qrySearchAnagraphan_birthdate: TDateField;
    qrySearchAnagraphan_office_type_id: TSmallintField;
    qrySearchAnagraphan_searchname: TWideStringField;
    qrySearchAnagraphan_extra_ue_flag: TBooleanField;
    qrySearchAnagraphan_external_code: TWideStringField;
    qrySearchAnagraphan_vat_id: TSmallintField;
    qrySearchAnagraphan_personal_fiscal_code: TWideStringField;
    qrySearchAnagraphan_privacy_print: TSmallintField;
    qrySearchAnagraphan_sms: TBooleanField;
    qrySearchAnagraphan_encrypted_fiscal_code: TWideStringField;
    qrySearchAnagraphan_vat_purcentage: TSmallintField;
    qrySearchAnagraphan_status: TSmallintField;
    qrySearchAnagraphan_ownsite: TBooleanField;
    qrySearchAnagraphan_insurance_id: TLargeintField;
    qrySearchAnagraphan_anagraphs_anagraph_id: TIntegerField;
    qrySearchAnagraphan_main_language_code: TWideStringField;
    qrySearchAnagraphan_main_culture_code: TWideStringField;
    qrySearchAnagraphan_fiscal_code: TWideStringField;
    qrySearchAnagraphan_main_group_id: TIntegerField;
    qrySearchAnagraphan_image_id: TLargeintField;
    qrySearchAnagraphlatitude: TFloatField;
    qrySearchAnagraphlongitude: TFloatField;
    qrySearchAnagraphtest: TFloatField;
    qrySearchAnagraphsearch_index: TWideStringField;
    qrySearchAnagraphan_birthplace: TWideStringField;
    qrySearchAnagraphan_birthplace_code: TWideStringField;
    qrySearchAnagraphanagraph64: TWideStringField;
    qrySearchAnagraphgroup_des: TWideStringField;
    qrySearchInstitutesdistance: TFloatField;
    qrySearchInstitutesdb_schema_id: TIntegerField;
    qrySearchInstitutesanagraph_id: TIntegerField;
    qrySearchInstitutesan_title: TWideStringField;
    qrySearchInstitutesan_name: TWideStringField;
    qrySearchInstitutesan_second_name: TWideStringField;
    qrySearchInstitutesan_last_name: TWideStringField;
    qrySearchInstitutesan_notes: TWideStringField;
    qrySearchInstitutesan_address: TWideStringField;
    qrySearchInstitutesan_town: TWideStringField;
    qrySearchInstitutesan_postal_code: TWideStringField;
    qrySearchInstitutesan_iso_country_code: TWideStringField;
    qrySearchInstitutesan_state_province: TWideStringField;
    qrySearchInstitutesan_phone: TWideStringField;
    qrySearchInstitutesan_phone2: TWideStringField;
    qrySearchInstitutesan_fax: TWideStringField;
    qrySearchInstitutesan_cellular: TWideStringField;
    qrySearchInstitutesan_code: TWideStringField;
    qrySearchInstitutesan_vat_numeric: TWideStringField;
    qrySearchInstitutesan_email: TWideStringField;
    qrySearchInstitutesan_web: TWideStringField;
    qrySearchInstitutesan_contact_id: TIntegerField;
    qrySearchInstitutesan_bank_account: TWideStringField;
    qrySearchInstitutesan_payment_des: TWideStringField;
    qrySearchInstitutesan_discount: TFloatField;
    qrySearchInstitutesan_distance: TIntegerField;
    qrySearchInstitutesan_distance_mesunit: TSmallintField;
    qrySearchInstitutesan_sex: TWideStringField;
    qrySearchInstitutesan_cod_comune: TWideStringField;
    qrySearchInstitutesan_cod_provincia: TWideStringField;
    qrySearchInstitutesan_credit_line: TFloatField;
    qrySearchInstitutesan_currency_id: TSmallintField;
    qrySearchInstitutesan_cat_id: TSmallintField;
    qrySearchInstitutesan_notes2: TWideStringField;
    qrySearchInstitutesan_notes3: TWideMemoField;
    qrySearchInstitutesan_edi: TBooleanField;
    qrySearchInstitutesan_privacy: TBooleanField;
    qrySearchInstitutesan_office_id: TSmallintField;
    qrySearchInstitutesan_cod_prov_rif: TWideStringField;
    qrySearchInstitutesan_data_fido: TDateField;
    qrySearchInstitutesan_user_insert: TWideStringField;
    qrySearchInstitutesan_user_update: TWideStringField;
    qrySearchInstitutesan_area_id: TSmallintField;
    qrySearchInstitutesan_agent_id: TSmallintField;
    qrySearchInstitutesan_area_code: TWideStringField;
    qrySearchInstitutesan_zone_id: TWideStringField;
    qrySearchInstitutesan_ins_id: TLargeintField;
    qrySearchInstitutesan_upd_id: TLargeintField;
    qrySearchInstitutesan_documents: TSmallintField;
    qrySearchInstitutesan_last_date: TDateField;
    qrySearchInstitutesan_birthdate: TDateField;
    qrySearchInstitutesan_office_type_id: TSmallintField;
    qrySearchInstitutesan_searchname: TWideStringField;
    qrySearchInstitutesan_extra_ue_flag: TBooleanField;
    qrySearchInstitutesan_external_code: TWideStringField;
    qrySearchInstitutesan_vat_id: TSmallintField;
    qrySearchInstitutesan_personal_fiscal_code: TWideStringField;
    qrySearchInstitutesan_privacy_print: TSmallintField;
    qrySearchInstitutesan_sms: TBooleanField;
    qrySearchInstitutesan_encrypted_fiscal_code: TWideStringField;
    qrySearchInstitutesan_vat_purcentage: TSmallintField;
    qrySearchInstitutesan_status: TSmallintField;
    qrySearchInstitutesan_ownsite: TBooleanField;
    qrySearchInstitutesan_insurance_id: TLargeintField;
    qrySearchInstitutesan_anagraphs_anagraph_id: TIntegerField;
    qrySearchInstitutesan_main_language_code: TWideStringField;
    qrySearchInstitutesan_main_culture_code: TWideStringField;
    qrySearchInstitutesan_fiscal_code: TWideStringField;
    qrySearchInstitutesan_main_group_id: TIntegerField;
    qrySearchInstitutesan_image_id: TLargeintField;
    qrySearchInstituteslatitude: TFloatField;
    qrySearchInstituteslongitude: TFloatField;
    qrySearchInstitutestest: TFloatField;
    qrySearchInstitutessearch_index: TWideStringField;
    qrySearchInstitutesan_birthplace: TWideStringField;
    qrySearchInstitutesan_birthplace_code: TWideStringField;
    qrySearchInstitutesanagraph64: TWideStringField;
    qryBookingsbooking_id: TLargeintField;
    qryBookingsdb_user_id: TIntegerField;
    qryBookingsdb_session_id: TLargeintField;
    qryBookingsdiscipline_id: TSmallintField;
    qryBookingsitem_id: TLargeintField;
    qryBookingsbook_since: TDateField;
    qryBookingsbook_until: TDateField;
    qryBookingsnotes: TWideStringField;
    qryBookingsconfirmed: TBooleanField;
    qryBookingsopened: TBooleanField;
    qryBookingsdb_operator_id: TIntegerField;
    qryBookingsclosed: TBooleanField;
    qryBookingsclosed_date: TDateTimeField;
    qryBookingssent: TBooleanField;
    qryBookingssent_date: TDateTimeField;
    qryBookingsreceived: TBooleanField;
    qryBookingsreceived_date: TDateTimeField;
    qryBookingsactive: TBooleanField;
    qryBookingscancelled_by_user: TBooleanField;
    qryBookingslevel: TSmallintField;
    qryBookingsother_person: TBooleanField;
    qryBookingsother_person_id: TIntegerField;
    qryBookingsservice_id: TIntegerField;
    qryBookingsprescription: TBooleanField;
    qryBookingsrelative: TBooleanField;
    qryBookingssearch_id: TLargeintField;
    qryBookingsinsurance: TWideStringField;
    qryBookingsagreement: TWideStringField;
    qryBookingsoperator_notes: TWideStringField;
    qryBookingsuser_notes: TWideStringField;
    qryBookingsinsert_date: TDateTimeField;
    qryBookingsupdate_date: TDateTimeField;
    qryBookingsbooking64: TWideStringField;
    qryBookingsactive_1: TBooleanField;
    qryBookingsemail: TWideStringField;
    qryBookingsdb_user_id_1: TIntegerField;
    qryBookingspassword: TWideStringField;
    qryBookingsusername: TWideStringField;
    qryBookingsisactive: TBooleanField;
    qryBookingsverify_token: TWideStringField;
    qryBookingsverified: TBooleanField;
    qryBookingsdefault_schema_id: TIntegerField;
    qryBookingsispublic: TBooleanField;
    qryBookingsinternal_key: TWideStringField;
    qryBookingsdefault_role_id: TSmallintField;
    qryBookingssearch_name: TWideStringField;
    qryBookingsreverse_search: TWideStringField;
    qryBookingsinsert_date_1: TDateTimeField;
    qryBookingscountry_id: TSmallintField;
    qryBookingsmain_profile_type_id: TSmallintField;
    qryBookingsmain_profile_id: TWideStringField;
    qryBookingsimage_id: TLargeintField;
    qryBookingsimage_url: TWideStringField;
    qryBookingsiso_language_code: TWideStringField;
    qryBookingsiso_culture_code: TWideStringField;
    qryBookingsuser_first_name: TWideStringField;
    qryBookingsuser_family_name: TWideStringField;
    qryBookingsemailsent: TBooleanField;
    qryBookingsemailconfirmed: TBooleanField;
    qryBookingsemaildate: TDateTimeField;
    qryBookingsid: TLargeintField;
    qryBookingsanagraph_id: TIntegerField;
    qryBookingsdiscipline_id_1: TSmallintField;
    qryBookingstitle: TWideStringField;
    qryBookingsdescription: TWideMemoField;
    qryBookingsitem_id_1: TLargeintField;
    qryBookingsspecification: TWideStringField;
    qryBookingsspeciality: TWideStringField;
    qryBookingssearch_index: TWideStringField;
    qryBookingsold_item_id: TLargeintField;
    qryBookingssearchstring: TWideStringField;
    qryBookingsdb_user_id_2: TIntegerField;
    qryBookingscountry_id_1: TSmallintField;
    qryBookingsregion_id: TSmallintField;
    qryBookingsdistrict_id: TSmallintField;
    qryBookingstown_id: TIntegerField;
    qryBookingsfirst_name: TWideStringField;
    qryBookingslast_name: TWideStringField;
    qryBookingsaddress_street: TWideStringField;
    qryBookingsaddress_number: TWideStringField;
    qryBookingsaddress_postal_code: TWideStringField;
    qryBookingsphone: TWideStringField;
    qryBookingscellular_phone: TWideStringField;
    qryBookingswork_phone: TWideStringField;
    qryBookingsfax_number: TWideStringField;
    qryBookingsgender_code: TWideStringField;
    qryBookingsbirth_date: TDateField;
    qryBookingsbirth_country_id: TSmallintField;
    qryBookingsbirth_region_id: TSmallintField;
    qryBookingsbirth_district_id: TSmallintField;
    qryBookingsbirth_town_id: TIntegerField;
    qryBookingspublic_email: TWideStringField;
    qryBookingstitle_1: TWideStringField;
    qryBookingssearch_name_1: TWideStringField;
    qryBookingsreverse_search_1: TWideStringField;
    qryBookingsaddress_full: TWideStringField;
    qryBookingslatitude: TFloatField;
    qryBookingslongitude: TFloatField;
    qryBookingsfiscal_code: TWideStringField;
    qryBookingssmssent: TBooleanField;
    qryBookingssmsconfirmed: TBooleanField;
    qryBookingssmsdate: TDateTimeField;
    qryBookingssmschecknumber: TWideStringField;
    qryBookingsaddress_town: TWideStringField;
    qryBookingsitem_description: TWideStringField;
    qryBookingscode: TWideStringField;
    qryBookingRowsselected: TBooleanField;
    qryBookingRowsbooking_id: TLargeintField;
    qryBookingRowsanagraph_id: TIntegerField;
    qryBookingRowssince: TDateField;
    qryBookingRowsuntil: TDateField;
    qryBookingRowsnotes: TWideStringField;
    qryBookingRowsconfirmed: TBooleanField;
    qryBookingRowsopened: TBooleanField;
    qryBookingRowsdb_operator_id: TIntegerField;
    qryBookingRowsclosed: TBooleanField;
    qryBookingRowsclosed_date: TDateTimeField;
    qryBookingRowsbooked: TBooleanField;
    qryBookingRowsbooking_date: TDateField;
    qryBookingRowsbooking_hour: TSmallintField;
    qryBookingRowsbooking_mins: TSmallintField;
    qryBookingRowssent: TBooleanField;
    qryBookingRowssent_date: TDateTimeField;
    qryBookingRowsreceived: TBooleanField;
    qryBookingRowsreceived_date: TDateTimeField;
    qryBookingRowsalarm_sent: TSmallintField;
    qryBookingRowsalarm_read: TSmallintField;
    qryBookingRowsdistance: TFloatField;
    qryBookingRowsck_confirmed: TBooleanField;
    qryBookingRowsinsurance_confirmed: TBooleanField;
    qryBookingRowsagreement_confirmed: TBooleanField;
    qryBookingRowsck_has_code: TBooleanField;
    qryBookingRowsck_code: TWideStringField;
    qryBookingRowsck_has_price: TBooleanField;
    qryBookingRowsck_price: TFloatField;
    qryBookingRowsck_fast: TBooleanField;
    qryBookingRowsck_different_address: TBooleanField;
    qryBookingRowsck_address: TWideStringField;
    qryBookingRowsck_has_place: TBooleanField;
    qryBookingRowsck_place: TWideStringField;
    qryBookingRowsck_take_list: TBooleanField;
    qryBookingRowsck_notes: TWideMemoField;
    qryBookingRowscall_center_notes: TWideMemoField;
    qryBookingRowsinsert_date: TDateTimeField;
    qryBookingRowsupdate_date: TDateTimeField;
    qryBookingRowscancelled: TBooleanField;
    qryBookingRowsbooking64: TWideStringField;
    qryBookingRowsdb_schema_id: TIntegerField;
    qryBookingRowsanagraph_id_1: TIntegerField;
    qryBookingRowsan_title: TWideStringField;
    qryBookingRowsan_name: TWideStringField;
    qryBookingRowsan_second_name: TWideStringField;
    qryBookingRowsan_last_name: TWideStringField;
    qryBookingRowsan_notes: TWideStringField;
    qryBookingRowsan_address: TWideStringField;
    qryBookingRowsan_town: TWideStringField;
    qryBookingRowsan_postal_code: TWideStringField;
    qryBookingRowsan_iso_country_code: TWideStringField;
    qryBookingRowsan_state_province: TWideStringField;
    qryBookingRowsan_phone: TWideStringField;
    qryBookingRowsan_phone2: TWideStringField;
    qryBookingRowsan_fax: TWideStringField;
    qryBookingRowsan_cellular: TWideStringField;
    qryBookingRowsan_code: TWideStringField;
    qryBookingRowsan_vat_numeric: TWideStringField;
    qryBookingRowsan_email: TWideStringField;
    qryBookingRowsan_web: TWideStringField;
    qryBookingRowsan_contact_id: TIntegerField;
    qryBookingRowsan_bank_account: TWideStringField;
    qryBookingRowsan_payment_des: TWideStringField;
    qryBookingRowsan_discount: TFloatField;
    qryBookingRowsan_distance: TIntegerField;
    qryBookingRowsan_distance_mesunit: TSmallintField;
    qryBookingRowsan_sex: TWideStringField;
    qryBookingRowsan_cod_comune: TWideStringField;
    qryBookingRowsan_cod_provincia: TWideStringField;
    qryBookingRowsan_credit_line: TFloatField;
    qryBookingRowsan_currency_id: TSmallintField;
    qryBookingRowsan_cat_id: TSmallintField;
    qryBookingRowsan_notes2: TWideStringField;
    qryBookingRowsan_notes3: TWideMemoField;
    qryBookingRowsan_edi: TBooleanField;
    qryBookingRowsan_privacy: TBooleanField;
    qryBookingRowsan_office_id: TSmallintField;
    qryBookingRowsan_cod_prov_rif: TWideStringField;
    qryBookingRowsan_data_fido: TDateField;
    qryBookingRowsan_user_insert: TWideStringField;
    qryBookingRowsan_user_update: TWideStringField;
    qryBookingRowsan_area_id: TSmallintField;
    qryBookingRowsan_agent_id: TSmallintField;
    qryBookingRowsan_area_code: TWideStringField;
    qryBookingRowsan_zone_id: TWideStringField;
    qryBookingRowsan_ins_id: TLargeintField;
    qryBookingRowsan_upd_id: TLargeintField;
    qryBookingRowsan_documents: TSmallintField;
    qryBookingRowsan_last_date: TDateField;
    qryBookingRowsan_birthdate: TDateField;
    qryBookingRowsan_office_type_id: TSmallintField;
    qryBookingRowsan_searchname: TWideStringField;
    qryBookingRowsan_extra_ue_flag: TBooleanField;
    qryBookingRowsan_external_code: TWideStringField;
    qryBookingRowsan_vat_id: TSmallintField;
    qryBookingRowsan_personal_fiscal_code: TWideStringField;
    qryBookingRowsan_privacy_print: TSmallintField;
    qryBookingRowsan_sms: TBooleanField;
    qryBookingRowsan_encrypted_fiscal_code: TWideStringField;
    qryBookingRowsan_vat_purcentage: TSmallintField;
    qryBookingRowsan_status: TSmallintField;
    qryBookingRowsan_ownsite: TBooleanField;
    qryBookingRowsan_insurance_id: TLargeintField;
    qryBookingRowsan_anagraphs_anagraph_id: TIntegerField;
    qryBookingRowsan_main_language_code: TWideStringField;
    qryBookingRowsan_main_culture_code: TWideStringField;
    qryBookingRowsan_fiscal_code: TWideStringField;
    qryBookingRowsan_main_group_id: TIntegerField;
    qryBookingRowsan_image_id: TLargeintField;
    qryBookingRowslatitude: TFloatField;
    qryBookingRowslongitude: TFloatField;
    qryBookingRowstest: TFloatField;
    qryBookingRowssearch_index: TWideStringField;
    qryBookingRowsan_birthplace: TWideStringField;
    qryBookingRowsan_birthplace_code: TWideStringField;
    qryBookingRowsanagraph64: TWideStringField;
    qryBookingRowsfull_address: TWideMemoField;
    qryBookingPrescriptionid: TLargeintField;
    qryBookingPrescriptionfirst_code: TWideStringField;
    qryBookingPrescriptionsecond_code: TWideStringField;
    qryBookingPrescriptionprovince: TWideStringField;
    qryBookingPrescriptionfirst_name: TWideStringField;
    qryBookingPrescriptionlast_name: TWideStringField;
    qryBookingPrescriptionfiscal_code: TWideStringField;
    qryBookingPrescriptionexemption: TBooleanField;
    qryBookingPrescriptionexemption_code: TWideStringField;
    qryBookingPrescriptionexemption_income: TBooleanField;
    qryBookingPrescriptionservices: TSmallintField;
    qryBookingPrescriptiondate: TDateField;
    qryBookingPrescriptionpriority: TWideStringField;
    qryBookingPrescriptionbooking_id: TLargeintField;
    qryRelativedb_schema_id: TIntegerField;
    qryRelativeanagraph_id: TIntegerField;
    qryRelativean_title: TWideStringField;
    qryRelativean_name: TWideStringField;
    qryRelativean_second_name: TWideStringField;
    qryRelativean_last_name: TWideStringField;
    qryRelativean_notes: TWideStringField;
    qryRelativean_address: TWideStringField;
    qryRelativean_town: TWideStringField;
    qryRelativean_postal_code: TWideStringField;
    qryRelativean_iso_country_code: TWideStringField;
    qryRelativean_state_province: TWideStringField;
    qryRelativean_phone: TWideStringField;
    qryRelativean_phone2: TWideStringField;
    qryRelativean_fax: TWideStringField;
    qryRelativean_cellular: TWideStringField;
    qryRelativean_code: TWideStringField;
    qryRelativean_vat_numeric: TWideStringField;
    qryRelativean_email: TWideStringField;
    qryRelativean_web: TWideStringField;
    qryRelativean_contact_id: TIntegerField;
    qryRelativean_bank_account: TWideStringField;
    qryRelativean_payment_des: TWideStringField;
    qryRelativean_discount: TFloatField;
    qryRelativean_distance: TIntegerField;
    qryRelativean_distance_mesunit: TSmallintField;
    qryRelativean_sex: TWideStringField;
    qryRelativean_cod_comune: TWideStringField;
    qryRelativean_cod_provincia: TWideStringField;
    qryRelativean_credit_line: TFloatField;
    qryRelativean_currency_id: TSmallintField;
    qryRelativean_cat_id: TSmallintField;
    qryRelativean_notes2: TWideStringField;
    qryRelativean_notes3: TWideMemoField;
    qryRelativean_edi: TBooleanField;
    qryRelativean_privacy: TBooleanField;
    qryRelativean_office_id: TSmallintField;
    qryRelativean_cod_prov_rif: TWideStringField;
    qryRelativean_data_fido: TDateField;
    qryRelativean_user_insert: TWideStringField;
    qryRelativean_user_update: TWideStringField;
    qryRelativean_area_id: TSmallintField;
    qryRelativean_agent_id: TSmallintField;
    qryRelativean_area_code: TWideStringField;
    qryRelativean_zone_id: TWideStringField;
    qryRelativean_ins_id: TLargeintField;
    qryRelativean_upd_id: TLargeintField;
    qryRelativean_documents: TSmallintField;
    qryRelativean_last_date: TDateField;
    qryRelativean_birthdate: TDateField;
    qryRelativean_office_type_id: TSmallintField;
    qryRelativean_searchname: TWideStringField;
    qryRelativean_extra_ue_flag: TBooleanField;
    qryRelativean_external_code: TWideStringField;
    qryRelativean_vat_id: TSmallintField;
    qryRelativean_personal_fiscal_code: TWideStringField;
    qryRelativean_privacy_print: TSmallintField;
    qryRelativean_sms: TBooleanField;
    qryRelativean_encrypted_fiscal_code: TWideStringField;
    qryRelativean_vat_purcentage: TSmallintField;
    qryRelativean_status: TSmallintField;
    qryRelativean_ownsite: TBooleanField;
    qryRelativean_insurance_id: TLargeintField;
    qryRelativean_anagraphs_anagraph_id: TIntegerField;
    qryRelativean_main_language_code: TWideStringField;
    qryRelativean_main_culture_code: TWideStringField;
    qryRelativean_fiscal_code: TWideStringField;
    qryRelativean_main_group_id: TIntegerField;
    qryRelativean_image_id: TLargeintField;
    qryRelativelatitude: TFloatField;
    qryRelativelongitude: TFloatField;
    qryRelativetest: TFloatField;
    qryRelativesearch_index: TWideStringField;
    qryRelativean_birthplace: TWideStringField;
    qryRelativean_birthplace_code: TWideStringField;
    qryRelativeanagraph64: TWideStringField;
    qryBookingInstitutesbooking_id: TLargeintField;
    qryBookingInstitutesanagraph_id: TIntegerField;
    qryBookingInstitutessince: TDateField;
    qryBookingInstitutesuntil: TDateField;
    qryBookingInstitutesnotes: TWideStringField;
    qryBookingInstitutesconfirmed: TBooleanField;
    qryBookingInstitutesopened: TBooleanField;
    qryBookingInstitutesdb_operator_id: TIntegerField;
    qryBookingInstitutesclosed: TBooleanField;
    qryBookingInstitutesclosed_date: TDateTimeField;
    qryBookingInstitutesbooked: TBooleanField;
    qryBookingInstitutesbooking_date: TDateField;
    qryBookingInstitutesbooking_hour: TSmallintField;
    qryBookingInstitutesbooking_mins: TSmallintField;
    qryBookingInstitutessent: TBooleanField;
    qryBookingInstitutessent_date: TDateTimeField;
    qryBookingInstitutesreceived: TBooleanField;
    qryBookingInstitutesreceived_date: TDateTimeField;
    qryBookingInstitutesalarm_sent: TSmallintField;
    qryBookingInstitutesalarm_read: TSmallintField;
    qryBookingInstitutesdistance: TFloatField;
    qryBookingInstitutesck_confirmed: TBooleanField;
    qryBookingInstitutesinsurance_confirmed: TBooleanField;
    qryBookingInstitutesagreement_confirmed: TBooleanField;
    qryBookingInstitutesck_has_code: TBooleanField;
    qryBookingInstitutesck_code: TWideStringField;
    qryBookingInstitutesck_has_price: TBooleanField;
    qryBookingInstitutesck_price: TFloatField;
    qryBookingInstitutesck_fast: TBooleanField;
    qryBookingInstitutesck_different_address: TBooleanField;
    qryBookingInstitutesck_address: TWideStringField;
    qryBookingInstitutesck_has_place: TBooleanField;
    qryBookingInstitutesck_place: TWideStringField;
    qryBookingInstitutesck_take_list: TBooleanField;
    qryBookingInstitutesck_notes: TWideMemoField;
    qryBookingInstitutescall_center_notes: TWideMemoField;
    qryBookingInstitutesinsert_date: TDateTimeField;
    qryBookingInstitutesupdate_date: TDateTimeField;
    qryBookingInstitutescancelled: TBooleanField;
    qryBookingInstitutesbooking64: TWideStringField;
    qryBookingInstitutesselected: TBooleanField;
    qryBookingInstitutesfull_address: TWideMemoField;
    qryBookingInstitutesdb_schema_id: TIntegerField;
    qryBookingInstitutesanagraph_id_1: TIntegerField;
    qryBookingInstitutesan_title: TWideStringField;
    qryBookingInstitutesan_name: TWideStringField;
    qryBookingInstitutesan_second_name: TWideStringField;
    qryBookingInstitutesan_last_name: TWideStringField;
    qryBookingInstitutesan_notes: TWideStringField;
    qryBookingInstitutesan_address: TWideStringField;
    qryBookingInstitutesan_town: TWideStringField;
    qryBookingInstitutesan_postal_code: TWideStringField;
    qryBookingInstitutesan_iso_country_code: TWideStringField;
    qryBookingInstitutesan_state_province: TWideStringField;
    qryBookingInstitutesan_phone: TWideStringField;
    qryBookingInstitutesan_phone2: TWideStringField;
    qryBookingInstitutesan_fax: TWideStringField;
    qryBookingInstitutesan_cellular: TWideStringField;
    qryBookingInstitutesan_code: TWideStringField;
    qryBookingInstitutesan_vat_numeric: TWideStringField;
    qryBookingInstitutesan_email: TWideStringField;
    qryBookingInstitutesan_web: TWideStringField;
    qryBookingInstitutesan_contact_id: TIntegerField;
    qryBookingInstitutesan_bank_account: TWideStringField;
    qryBookingInstitutesan_payment_des: TWideStringField;
    qryBookingInstitutesan_discount: TFloatField;
    qryBookingInstitutesan_distance: TIntegerField;
    qryBookingInstitutesan_distance_mesunit: TSmallintField;
    qryBookingInstitutesan_sex: TWideStringField;
    qryBookingInstitutesan_cod_comune: TWideStringField;
    qryBookingInstitutesan_cod_provincia: TWideStringField;
    qryBookingInstitutesan_credit_line: TFloatField;
    qryBookingInstitutesan_currency_id: TSmallintField;
    qryBookingInstitutesan_cat_id: TSmallintField;
    qryBookingInstitutesan_notes2: TWideStringField;
    qryBookingInstitutesan_notes3: TWideMemoField;
    qryBookingInstitutesan_edi: TBooleanField;
    qryBookingInstitutesan_privacy: TBooleanField;
    qryBookingInstitutesan_office_id: TSmallintField;
    qryBookingInstitutesan_cod_prov_rif: TWideStringField;
    qryBookingInstitutesan_data_fido: TDateField;
    qryBookingInstitutesan_user_insert: TWideStringField;
    qryBookingInstitutesan_user_update: TWideStringField;
    qryBookingInstitutesan_area_id: TSmallintField;
    qryBookingInstitutesan_agent_id: TSmallintField;
    qryBookingInstitutesan_area_code: TWideStringField;
    qryBookingInstitutesan_zone_id: TWideStringField;
    qryBookingInstitutesan_ins_id: TLargeintField;
    qryBookingInstitutesan_upd_id: TLargeintField;
    qryBookingInstitutesan_documents: TSmallintField;
    qryBookingInstitutesan_last_date: TDateField;
    qryBookingInstitutesan_birthdate: TDateField;
    qryBookingInstitutesan_office_type_id: TSmallintField;
    qryBookingInstitutesan_searchname: TWideStringField;
    qryBookingInstitutesan_extra_ue_flag: TBooleanField;
    qryBookingInstitutesan_external_code: TWideStringField;
    qryBookingInstitutesan_vat_id: TSmallintField;
    qryBookingInstitutesan_personal_fiscal_code: TWideStringField;
    qryBookingInstitutesan_privacy_print: TSmallintField;
    qryBookingInstitutesan_sms: TBooleanField;
    qryBookingInstitutesan_encrypted_fiscal_code: TWideStringField;
    qryBookingInstitutesan_vat_purcentage: TSmallintField;
    qryBookingInstitutesan_status: TSmallintField;
    qryBookingInstitutesan_ownsite: TBooleanField;
    qryBookingInstitutesan_insurance_id: TLargeintField;
    qryBookingInstitutesan_anagraphs_anagraph_id: TIntegerField;
    qryBookingInstitutesan_main_language_code: TWideStringField;
    qryBookingInstitutesan_main_culture_code: TWideStringField;
    qryBookingInstitutesan_fiscal_code: TWideStringField;
    qryBookingInstitutesan_main_group_id: TIntegerField;
    qryBookingInstitutesan_image_id: TLargeintField;
    qryBookingInstituteslatitude: TFloatField;
    qryBookingInstituteslongitude: TFloatField;
    qryBookingInstitutestest: TFloatField;
    qryBookingInstitutessearch_index: TWideStringField;
    qryBookingInstitutesan_birthplace: TWideStringField;
    qryBookingInstitutesan_birthplace_code: TWideStringField;
    qryBookingInstitutesanagraph64: TWideStringField;
    qryCompaniesan_group_id: TSmallintField;
    qryCompaniesdb_schema_id: TIntegerField;
    qryCompaniesanagraph_id: TIntegerField;
    qryCompaniesan_title: TWideStringField;
    qryCompaniesan_name: TWideStringField;
    qryCompaniesan_second_name: TWideStringField;
    qryCompaniesan_last_name: TWideStringField;
    qryCompaniesan_notes: TWideStringField;
    qryCompaniesan_address: TWideStringField;
    qryCompaniesan_town: TWideStringField;
    qryCompaniesan_postal_code: TWideStringField;
    qryCompaniesan_iso_country_code: TWideStringField;
    qryCompaniesan_state_province: TWideStringField;
    qryCompaniesan_phone: TWideStringField;
    qryCompaniesan_phone2: TWideStringField;
    qryCompaniesan_fax: TWideStringField;
    qryCompaniesan_cellular: TWideStringField;
    qryCompaniesan_code: TWideStringField;
    qryCompaniesan_vat_numeric: TWideStringField;
    qryCompaniesan_email: TWideStringField;
    qryCompaniesan_web: TWideStringField;
    qryCompaniesan_contact_id: TIntegerField;
    qryCompaniesan_bank_account: TWideStringField;
    qryCompaniesan_payment_des: TWideStringField;
    qryCompaniesan_discount: TFloatField;
    qryCompaniesan_distance: TIntegerField;
    qryCompaniesan_distance_mesunit: TSmallintField;
    qryCompaniesan_sex: TWideStringField;
    qryCompaniesan_cod_comune: TWideStringField;
    qryCompaniesan_cod_provincia: TWideStringField;
    qryCompaniesan_credit_line: TFloatField;
    qryCompaniesan_currency_id: TSmallintField;
    qryCompaniesan_cat_id: TSmallintField;
    qryCompaniesan_notes2: TWideStringField;
    qryCompaniesan_notes3: TWideMemoField;
    qryCompaniesan_edi: TBooleanField;
    qryCompaniesan_privacy: TBooleanField;
    qryCompaniesan_office_id: TSmallintField;
    qryCompaniesan_cod_prov_rif: TWideStringField;
    qryCompaniesan_data_fido: TDateField;
    qryCompaniesan_user_insert: TWideStringField;
    qryCompaniesan_user_update: TWideStringField;
    qryCompaniesan_area_id: TSmallintField;
    qryCompaniesan_agent_id: TSmallintField;
    qryCompaniesan_area_code: TWideStringField;
    qryCompaniesan_zone_id: TWideStringField;
    qryCompaniesan_ins_id: TLargeintField;
    qryCompaniesan_upd_id: TLargeintField;
    qryCompaniesan_documents: TSmallintField;
    qryCompaniesan_last_date: TDateField;
    qryCompaniesan_birthdate: TDateField;
    qryCompaniesan_office_type_id: TSmallintField;
    qryCompaniesan_searchname: TWideStringField;
    qryCompaniesan_extra_ue_flag: TBooleanField;
    qryCompaniesan_external_code: TWideStringField;
    qryCompaniesan_vat_id: TSmallintField;
    qryCompaniesan_personal_fiscal_code: TWideStringField;
    qryCompaniesan_privacy_print: TSmallintField;
    qryCompaniesan_sms: TBooleanField;
    qryCompaniesan_encrypted_fiscal_code: TWideStringField;
    qryCompaniesan_vat_purcentage: TSmallintField;
    qryCompaniesan_status: TSmallintField;
    qryCompaniesan_ownsite: TBooleanField;
    qryCompaniesan_insurance_id: TLargeintField;
    qryCompaniesan_anagraphs_anagraph_id: TIntegerField;
    qryCompaniesan_main_language_code: TWideStringField;
    qryCompaniesan_main_culture_code: TWideStringField;
    qryCompaniesan_fiscal_code: TWideStringField;
    qryCompaniesan_main_group_id: TIntegerField;
    qryCompaniesan_image_id: TLargeintField;
    qryCompanieslatitude: TFloatField;
    qryCompanieslongitude: TFloatField;
    qryCompaniestest: TFloatField;
    qryCompaniessearch_index: TWideStringField;
    qryCompaniesan_birthplace: TWideStringField;
    qryCompaniesan_birthplace_code: TWideStringField;
    qryCompaniesanagraph64: TWideStringField;
    qryInstitutesan_group_id: TSmallintField;
    qryInstitutesdb_schema_id: TIntegerField;
    qryInstitutesanagraph_id: TIntegerField;
    qryInstitutesan_title: TWideStringField;
    qryInstitutesan_name: TWideStringField;
    qryInstitutesan_second_name: TWideStringField;
    qryInstitutesan_last_name: TWideStringField;
    qryInstitutesan_notes: TWideStringField;
    qryInstitutesan_address: TWideStringField;
    qryInstitutesan_town: TWideStringField;
    qryInstitutesan_postal_code: TWideStringField;
    qryInstitutesan_iso_country_code: TWideStringField;
    qryInstitutesan_state_province: TWideStringField;
    qryInstitutesan_phone: TWideStringField;
    qryInstitutesan_phone2: TWideStringField;
    qryInstitutesan_fax: TWideStringField;
    qryInstitutesan_cellular: TWideStringField;
    qryInstitutesan_code: TWideStringField;
    qryInstitutesan_vat_numeric: TWideStringField;
    qryInstitutesan_email: TWideStringField;
    qryInstitutesan_web: TWideStringField;
    qryInstitutesan_contact_id: TIntegerField;
    qryInstitutesan_bank_account: TWideStringField;
    qryInstitutesan_payment_des: TWideStringField;
    qryInstitutesan_discount: TFloatField;
    qryInstitutesan_distance: TIntegerField;
    qryInstitutesan_distance_mesunit: TSmallintField;
    qryInstitutesan_sex: TWideStringField;
    qryInstitutesan_cod_comune: TWideStringField;
    qryInstitutesan_cod_provincia: TWideStringField;
    qryInstitutesan_credit_line: TFloatField;
    qryInstitutesan_currency_id: TSmallintField;
    qryInstitutesan_cat_id: TSmallintField;
    qryInstitutesan_notes2: TWideStringField;
    qryInstitutesan_notes3: TWideMemoField;
    qryInstitutesan_edi: TBooleanField;
    qryInstitutesan_privacy: TBooleanField;
    qryInstitutesan_office_id: TSmallintField;
    qryInstitutesan_cod_prov_rif: TWideStringField;
    qryInstitutesan_data_fido: TDateField;
    qryInstitutesan_user_insert: TWideStringField;
    qryInstitutesan_user_update: TWideStringField;
    qryInstitutesan_area_id: TSmallintField;
    qryInstitutesan_agent_id: TSmallintField;
    qryInstitutesan_area_code: TWideStringField;
    qryInstitutesan_zone_id: TWideStringField;
    qryInstitutesan_ins_id: TLargeintField;
    qryInstitutesan_upd_id: TLargeintField;
    qryInstitutesan_documents: TSmallintField;
    qryInstitutesan_last_date: TDateField;
    qryInstitutesan_birthdate: TDateField;
    qryInstitutesan_office_type_id: TSmallintField;
    qryInstitutesan_searchname: TWideStringField;
    qryInstitutesan_extra_ue_flag: TBooleanField;
    qryInstitutesan_external_code: TWideStringField;
    qryInstitutesan_vat_id: TSmallintField;
    qryInstitutesan_personal_fiscal_code: TWideStringField;
    qryInstitutesan_privacy_print: TSmallintField;
    qryInstitutesan_sms: TBooleanField;
    qryInstitutesan_encrypted_fiscal_code: TWideStringField;
    qryInstitutesan_vat_purcentage: TSmallintField;
    qryInstitutesan_status: TSmallintField;
    qryInstitutesan_ownsite: TBooleanField;
    qryInstitutesan_insurance_id: TLargeintField;
    qryInstitutesan_anagraphs_anagraph_id: TIntegerField;
    qryInstitutesan_main_language_code: TWideStringField;
    qryInstitutesan_main_culture_code: TWideStringField;
    qryInstitutesan_fiscal_code: TWideStringField;
    qryInstitutesan_main_group_id: TIntegerField;
    qryInstitutesan_image_id: TLargeintField;
    qryInstituteslatitude: TFloatField;
    qryInstituteslongitude: TFloatField;
    qryInstitutestest: TFloatField;
    qryInstitutessearch_index: TWideStringField;
    qryInstitutesan_birthplace: TWideStringField;
    qryInstitutesan_birthplace_code: TWideStringField;
    qryInstitutesanagraph64: TWideStringField;
    qryLkpServicesOld: TUniQuery;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    SmallintField1: TSmallintField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    qryNotifications: TUniQuery;
    qryLkpServicesid: TLargeintField;
    qryLkpServicesitem_id: TLargeintField;
    qryLkpServicesdiscipline_name: TWideStringField;
    qryLkpServicesprestazione: TWideStringField;
    qryLkpServicessearchkey: TWideStringField;
    qryLkpServicessearch: TWideStringField;
    qryLkpServicestitle: TWideStringField;
    qryLkpServicesdiscipline_id: TIntegerField;
    qryNotificationsid: TLargeintField;
    qryNotificationstype_id: TSmallintField;
    qryNotificationstitle: TWideStringField;
    qryNotificationsmessage: TWideMemoField;
    qryNotificationsdb_schema_id: TIntegerField;
    qryNotificationsdb_user_id: TIntegerField;
    qryNotificationsdatetime: TDateTimeField;
    qryNotificationsread: TBooleanField;
    qryNotificationsbooking_id: TLargeintField;
    qryNotificationssolved: TBooleanField;
    qryNotificationsfrom_user_id: TIntegerField;
    qryNotificationsbooking_action: TSmallintField;
    qryBookingNotifications: TUniQuery;
    qryBookingNotificationsid: TLargeintField;
    qryBookingNotificationstype_id: TSmallintField;
    qryBookingNotificationstitle: TWideStringField;
    qryBookingNotificationsmessage: TWideMemoField;
    qryBookingNotificationsdb_schema_id: TIntegerField;
    qryBookingNotificationsdb_user_id: TIntegerField;
    qryBookingNotificationsdatetime: TDateTimeField;
    qryBookingNotificationsread: TBooleanField;
    qryBookingNotificationsbooking_id: TLargeintField;
    qryBookingNotificationssolved: TBooleanField;
    qryBookingNotificationsfrom_user_id: TIntegerField;
    qryBookingNotificationsbooking_action: TSmallintField;
    qryNotification: TUniQuery;
    qryNotificationid: TLargeintField;
    qryNotificationtype_id: TSmallintField;
    qryNotificationtitle: TWideStringField;
    qryNotificationmessage: TWideMemoField;
    qryNotificationdb_schema_id: TIntegerField;
    qryNotificationdb_user_id: TIntegerField;
    qryNotificationdatetime: TDateTimeField;
    qryNotificationread: TBooleanField;
    qryNotificationbooking_id: TLargeintField;
    qryNotificationsolved: TBooleanField;
    qryNotificationfrom_user_id: TIntegerField;
    qryNotificationbooking_action: TSmallintField;
    qryMeetings: TUniQuery;
    qryMeetingsbooking_id: TLargeintField;
    qryMeetingsanagraph_id: TIntegerField;
    qryMeetingssince: TDateField;
    qryMeetingsuntil: TDateField;
    qryMeetingsnotes: TWideStringField;
    qryMeetingsconfirmed: TBooleanField;
    qryMeetingsopened: TBooleanField;
    qryMeetingsdb_operator_id: TIntegerField;
    qryMeetingsclosed: TBooleanField;
    qryMeetingsclosed_date: TDateTimeField;
    qryMeetingsbooked: TBooleanField;
    qryMeetingsbooking_date: TDateField;
    qryMeetingsbooking_hour: TSmallintField;
    qryMeetingsbooking_mins: TSmallintField;
    qryMeetingssent: TBooleanField;
    qryMeetingssent_date: TDateTimeField;
    qryMeetingsreceived: TBooleanField;
    qryMeetingsreceived_date: TDateTimeField;
    qryMeetingsalarm_sent: TSmallintField;
    qryMeetingsalarm_read: TSmallintField;
    qryMeetingsdistance: TFloatField;
    qryMeetingsck_confirmed: TBooleanField;
    qryMeetingsinsurance_confirmed: TBooleanField;
    qryMeetingsagreement_confirmed: TBooleanField;
    qryMeetingsck_has_code: TBooleanField;
    qryMeetingsck_code: TWideStringField;
    qryMeetingsck_has_price: TBooleanField;
    qryMeetingsck_price: TFloatField;
    qryMeetingsck_fast: TBooleanField;
    qryMeetingsck_different_address: TBooleanField;
    qryMeetingsck_address: TWideStringField;
    qryMeetingsck_has_place: TBooleanField;
    qryMeetingsck_place: TWideStringField;
    qryMeetingsck_take_list: TBooleanField;
    qryMeetingsck_notes: TWideMemoField;
    qryMeetingscall_center_notes: TWideMemoField;
    qryMeetingsinsert_date: TDateTimeField;
    qryMeetingsupdate_date: TDateTimeField;
    qryMeetingscancelled: TBooleanField;
    qryMeetingsbooking64: TWideStringField;
    qryMeetingsdb_schema_id: TIntegerField;
    qryMeetingsanagraph_id_1: TIntegerField;
    qryMeetingsan_title: TWideStringField;
    qryMeetingsan_name: TWideStringField;
    qryMeetingsan_second_name: TWideStringField;
    qryMeetingsan_last_name: TWideStringField;
    qryMeetingsan_notes: TWideStringField;
    qryMeetingsan_address: TWideStringField;
    qryMeetingsan_town: TWideStringField;
    qryMeetingsan_postal_code: TWideStringField;
    qryMeetingsan_iso_country_code: TWideStringField;
    qryMeetingsan_state_province: TWideStringField;
    qryMeetingsan_phone: TWideStringField;
    qryMeetingsan_phone2: TWideStringField;
    qryMeetingsan_fax: TWideStringField;
    qryMeetingsan_cellular: TWideStringField;
    qryMeetingsan_code: TWideStringField;
    qryMeetingsan_vat_numeric: TWideStringField;
    qryMeetingsan_email: TWideStringField;
    qryMeetingsan_web: TWideStringField;
    qryMeetingsan_contact_id: TIntegerField;
    qryMeetingsan_bank_account: TWideStringField;
    qryMeetingsan_payment_des: TWideStringField;
    qryMeetingsan_discount: TFloatField;
    qryMeetingsan_distance: TIntegerField;
    qryMeetingsan_distance_mesunit: TSmallintField;
    qryMeetingsan_sex: TWideStringField;
    qryMeetingsan_cod_comune: TWideStringField;
    qryMeetingsan_cod_provincia: TWideStringField;
    qryMeetingsan_credit_line: TFloatField;
    qryMeetingsan_currency_id: TSmallintField;
    qryMeetingsan_cat_id: TSmallintField;
    qryMeetingsan_notes2: TWideStringField;
    qryMeetingsan_notes3: TWideMemoField;
    qryMeetingsan_edi: TBooleanField;
    qryMeetingsan_privacy: TBooleanField;
    qryMeetingsan_office_id: TSmallintField;
    qryMeetingsan_cod_prov_rif: TWideStringField;
    qryMeetingsan_data_fido: TDateField;
    qryMeetingsan_user_insert: TWideStringField;
    qryMeetingsan_user_update: TWideStringField;
    qryMeetingsan_area_id: TSmallintField;
    qryMeetingsan_agent_id: TSmallintField;
    qryMeetingsan_area_code: TWideStringField;
    qryMeetingsan_zone_id: TWideStringField;
    qryMeetingsan_ins_id: TLargeintField;
    qryMeetingsan_upd_id: TLargeintField;
    qryMeetingsan_documents: TSmallintField;
    qryMeetingsan_last_date: TDateField;
    qryMeetingsan_birthdate: TDateField;
    qryMeetingsan_office_type_id: TSmallintField;
    qryMeetingsan_searchname: TWideStringField;
    qryMeetingsan_extra_ue_flag: TBooleanField;
    qryMeetingsan_external_code: TWideStringField;
    qryMeetingsan_vat_id: TSmallintField;
    qryMeetingsan_personal_fiscal_code: TWideStringField;
    qryMeetingsan_privacy_print: TSmallintField;
    qryMeetingsan_sms: TBooleanField;
    qryMeetingsan_encrypted_fiscal_code: TWideStringField;
    qryMeetingsan_vat_purcentage: TSmallintField;
    qryMeetingsan_status: TSmallintField;
    qryMeetingsan_ownsite: TBooleanField;
    qryMeetingsan_insurance_id: TLargeintField;
    qryMeetingsan_anagraphs_anagraph_id: TIntegerField;
    qryMeetingsan_main_language_code: TWideStringField;
    qryMeetingsan_main_culture_code: TWideStringField;
    qryMeetingsan_fiscal_code: TWideStringField;
    qryMeetingsan_main_group_id: TIntegerField;
    qryMeetingsan_image_id: TLargeintField;
    qryMeetingslatitude: TFloatField;
    qryMeetingslongitude: TFloatField;
    qryMeetingstest: TFloatField;
    qryMeetingssearch_index: TWideStringField;
    qryMeetingsan_birthplace: TWideStringField;
    qryMeetingsan_birthplace_code: TWideStringField;
    qryMeetingsanagraph64: TWideStringField;
    qryMeetingsbooking_id_1: TLargeintField;
    qryMeetingsdb_user_id: TIntegerField;
    qryMeetingsdb_session_id: TLargeintField;
    qryMeetingsdiscipline_id: TSmallintField;
    qryMeetingsitem_id: TLargeintField;
    qryMeetingsbook_since: TDateField;
    qryMeetingsbook_until: TDateField;
    qryMeetingsnotes_1: TWideStringField;
    qryMeetingsconfirmed_1: TBooleanField;
    qryMeetingsopened_1: TBooleanField;
    qryMeetingsdb_operator_id_1: TIntegerField;
    qryMeetingsclosed_1: TBooleanField;
    qryMeetingsclosed_date_1: TDateTimeField;
    qryMeetingssent_1: TBooleanField;
    qryMeetingssent_date_1: TDateTimeField;
    qryMeetingsreceived_1: TBooleanField;
    qryMeetingsreceived_date_1: TDateTimeField;
    qryMeetingsactive: TBooleanField;
    qryMeetingscancelled_by_user: TBooleanField;
    qryMeetingslevel: TSmallintField;
    qryMeetingsother_person: TBooleanField;
    qryMeetingsother_person_id: TIntegerField;
    qryMeetingsservice_id: TIntegerField;
    qryMeetingsprescription: TBooleanField;
    qryMeetingsrelative: TBooleanField;
    qryMeetingssearch_id: TLargeintField;
    qryMeetingsinsurance: TWideStringField;
    qryMeetingsagreement: TWideStringField;
    qryMeetingsoperator_notes: TWideStringField;
    qryMeetingsuser_notes: TWideStringField;
    qryMeetingsinsert_date_1: TDateTimeField;
    qryMeetingsupdate_date_1: TDateTimeField;
    qryMeetingsbooking64_1: TWideStringField;
    qryMeetingsid: TLargeintField;
    qryMeetingsanagraph_id_2: TIntegerField;
    qryMeetingsdiscipline_id_1: TSmallintField;
    qryMeetingstitle: TWideStringField;
    qryMeetingsdescription: TWideMemoField;
    qryMeetingsitem_id_1: TLargeintField;
    qryMeetingsspecification: TWideStringField;
    qryMeetingsspeciality: TWideStringField;
    qryMeetingssearch_index_1: TWideStringField;
    qryMeetingsold_item_id: TLargeintField;
    qryMeetingssearchstring: TWideStringField;
    qryMeetingstsv: TWideMemoField;
    qryIndexSearc: TUniQuery;
    qryIndexSearcid: TLargeintField;
    qryIndexSearcprestazione: TWideStringField;
    spNotificationRead: TUniStoredProc;
    procedure qryCompaniesNewRecord(DataSet: TDataSet);
    procedure qryInstitutesNewRecord(DataSet: TDataSet);
    procedure qryInstitutesAfterOpen(DataSet: TDataSet);
    procedure qryInstitutesDisciplinesAfterOpen(DataSet: TDataSet);
    procedure qryInstitutesServicesBeforePost(DataSet: TDataSet);
    procedure qryCompaniesBeforePost(DataSet: TDataSet);
    procedure qryInstitutesDisciplinesBeforePost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject); override;
    procedure qryBookingsAfterOpen(DataSet: TDataSet);
    procedure qryBookingsAfterScroll(DataSet: TDataSet);
    procedure qryRelativeBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    FInstitutesGroup: integer;
    FCompaniesGroup: integer;
    FCoordinates: TJanuaCoordinates;
    FBookingID: Int64;
    FSearchID: Int64;
    FInstitutesCount: integer;
    FSelect2: integer;
    FSelect3: integer;
    FSelect1: integer;
    FBooking: TJanuaHealthBooking;
    procedure SetBookingID(const Value: Int64);
    procedure SetSearchID(const Value: Int64);
    procedure SetCompaniesGroup(const Value: integer);
    procedure SetInstitutesGroup(const Value: integer);
    procedure SetCoordinates(const Value: TJanuaCoordinates);
    procedure SetInstitutesCount(const Value: integer);
    procedure SetSelect1(const Value: integer);
    procedure SetSelect2(const Value: integer);
    procedure SetSelect3(const Value: integer);
    procedure RefreshBookingRows;
    procedure SetBooking(const Value: TJanuaHealthBooking);
  public
    function BookingFinalisation(aBooking: Janua.Core.Health.TJanuaHealthBooking): boolean;
    function NotificationRead(aNotificationID: Int64): boolean;
    procedure setGeoCoding;
    procedure OpenSearchServices;
    procedure SearchServices(aSearch: string);
    procedure SearchInstitutes(aSessionID: Int64; aUserID, aServiceID: integer;
      aCoordinates: TJanuaCoordinates; const iLimit: integer = 10; const iPage: integer = 1);
    procedure ActivateAnagraph;
    procedure DatasetGeoCoding(aDataset: TDataSet);
    function getGeoCoding(const sAddress: string): TJanuaRecordCoordinates;
    function DoBooking(aSearchID: Int64; bAuto: boolean): Int64;
    procedure GetBooking(aBookingID: Int64);
    procedure OpenBooking(aBookingID: Int64);
    function AssignBooking(aSession: string; aBookingID: Int64): boolean;
    function BookingInstitutes(aInstitute1, aInstitute2, aInstitute3: integer; aBookingID: Int64): Int64;
    function InstituteConfirmation(const vBookingID: Int64; const vInstituteID: integer): boolean;
    function SearchNotifications(const aUserID: integer; const aLimit: integer = 100): integer;
    function SearchMeetings(const aUserID: integer; const aLimit: integer = 20): integer;
    function SearchNotification(const aID: Int64): boolean;
    { Private declarations }
  public
    { Public declarations }
    property CompaniesGroup: integer read FCompaniesGroup write SetCompaniesGroup default 6;
    property InstitutesGroup: integer read FInstitutesGroup write SetInstitutesGroup default 7;
    property Coordinates: TJanuaCoordinates read FCoordinates write SetCoordinates;
    property BookingID: Int64 read FBookingID write SetBookingID;
    property SearchID: Int64 read FSearchID write SetSearchID;
    property InstitutesCount: integer read FInstitutesCount write SetInstitutesCount;
    property Select1: integer read FSelect1 write SetSelect1;
    property Select2: integer read FSelect2 write SetSelect2;
    property Select3: integer read FSelect3 write SetSelect3;
    property Booking: TJanuaHealthBooking read FBooking write SetBooking;
  end;

{$METHODINFO OFF}

var
  dmHealthBooking: TdmHealthBooking;

implementation

{$R *.dfm}

procedure TdmHealthBooking.ActivateAnagraph;
begin
  SetCompaniesGroup(6);
  SetInstitutesGroup(7);
  self.SetSchemaID(31);
  ServerFunctions.OpenDataset(qryLkpItems);
  ServerFunctions.OpenDataset(qrySearchServices);
  ServerFunctions.OpenDataset(qryLkpDisciplines);
end;

procedure TdmHealthBooking.DataModuleCreate(Sender: TObject);
begin
  inherited;
  FCoordinates := TJanuaCoordinates.Create(0.0, 0.0);
  self.Select1 := 0;
  self.Select2 := 0;
  self.Select3 := 0;
end;

procedure TdmHealthBooking.DataModuleDestroy(Sender: TObject);
begin
  inherited;
  FCoordinates.Free;
end;

procedure TdmHealthBooking.DatasetGeoCoding(aDataset: TDataSet);
begin
  with aDataset do
  begin
    self.FCoordinates.Coordinates := getGeoCoding(aDataset.FieldByName('an_address').AsWideString + ' ' +
      aDataset.FieldByName('an_postal_code').AsWideString + ' ' + aDataset.FieldByName('an_town')
      .AsWideString);
    aDataset.Edit;
    aDataset.FieldByName('latitude').AsFloat := FCoordinates.Latitude;
    aDataset.FieldByName('longitude').AsFloat := FCoordinates.Longitude;
    aDataset.Post;
  end;
end;

function TdmHealthBooking.getGeoCoding(const sAddress: string): TJanuaRecordCoordinates;
var
  GeoCoding: TJanuaMapComponent;
begin
  GeoCoding := { TJanuaStreetMap.Create(self) } TJanuaCloudFactory.CreateJanuaStreetMap(self);
  try
    GeoCoding.Address := sAddress;
    if GeoCoding.GetCoordinates then
    begin
      Result := GeoCoding.Coordinates.Coordinates;
    end;
    self.Coordinates.Coordinates := Result;
  finally
    JanuaFree(GeoCoding);
  end;
end;

function TdmHealthBooking.InstituteConfirmation(const vBookingID: Int64; const vInstituteID: integer)
  : boolean;
begin
  // Specifiche 2017-0009 Booking Institute Confirmation.
  // SELECT health.booking_anagraph_confirmation(:p_anagraph_id, :p_booking_id)

  self.spInstituteConfirmation.ParamByName('p_anagraph_id').AsInteger := vInstituteID;
  self.spInstituteConfirmation.ParamByName('p_booking_id').AsLargeInt := vBookingID;
  self.spInstituteConfirmation.Execute;

  Result := self.spInstituteConfirmation.ParamByName('result').AsWideString = '';

end;

function TdmHealthBooking.NotificationRead(aNotificationID: Int64): boolean;
begin
  // 2017-11-14 Spec. 2017-0029 Notifications
  // SELECT health.notification_read(:p_notification_id)
  spNotificationRead.ParamByName('p_notification_id').AsLargeInt := aNotificationID;
  spNotificationRead.ExecProc;
  Result := spNotificationRead.ParamByName('result').AsBoolean;
end;

procedure TdmHealthBooking.OpenBooking(aBookingID: Int64);
begin
  // procedura che apre per modifica un Booking.
  self.qryBookings.Close;
  self.qryBookings.ParamByName('booking_id').AsLargeInt := aBookingID;
  ServerFunctions.OpenDataset(qryBookings);
end;

procedure TdmHealthBooking.OpenSearchServices;
begin
  ServerFunctions.OpenDataset(self.qrySearchServices);
end;

procedure TdmHealthBooking.qryBookingsAfterOpen(DataSet: TDataSet);
begin
  inherited;
  RefreshBookingRows;

end;

procedure TdmHealthBooking.qryBookingsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshBookingRows;

end;

procedure TdmHealthBooking.qryCompaniesBeforePost(DataSet: TDataSet);
begin
  if (self.qryCompaniesanagraph_id.AsInteger = 0) then
  begin
    self.qryAnagraphNextVal.Close;
    ServerFunctions.OpenDataset(qryAnagraphNextVal);
    self.qryCompaniesanagraph_id.AsInteger := self.qryAnagraphNextValnextval.AsInteger;
    self.qryAnagraphNextVal.Close;
  end;
end;

procedure TdmHealthBooking.qryCompaniesNewRecord(DataSet: TDataSet);
begin
  // code for Group
  qryCompaniesdb_schema_id.AsInteger := FSchemaID;
  qryCompaniesan_group_id.AsInteger := self.FCompaniesGroup;
  qryCompaniesan_iso_country_code.AsWideString := 'ITA';
  qryCompaniesan_sex.AsWideString := 'S';
  qryCompaniesan_currency_id.AsInteger := 1;
  qryCompaniesan_main_language_code.AsWideString := 'it';
  qryCompaniesan_main_culture_code.AsWideString := 'it_IT';
  qryCompaniesan_main_group_id.AsInteger := self.FCompaniesGroup;
  qryAnagraphNextVal.Close;
  ServerFunctions.OpenDataset(qryAnagraphNextVal);
  self.qryCompaniesanagraph_id.AsInteger := qryAnagraphNextValnextval.AsInteger;
  qryAnagraphNextVal.Close;

end;

procedure TdmHealthBooking.qryInstitutesAfterOpen(DataSet: TDataSet);
begin
  ServerFunctions.OpenDataset(qryInstitutesDisciplines);
end;

procedure TdmHealthBooking.qryInstitutesDisciplinesAfterOpen(DataSet: TDataSet);
begin
  ServerFunctions.OpenDataset(qryInstitutesServices);
end;

procedure TdmHealthBooking.qryInstitutesDisciplinesBeforePost(DataSet: TDataSet);
begin
  qryInstitutesDisciplinesanagraph_id.AsInteger := qryInstitutesanagraph_id.AsInteger;
end;

procedure TdmHealthBooking.qryInstitutesNewRecord(DataSet: TDataSet);
begin
  qryInstitutesdb_schema_id.AsInteger := FSchemaID;
  qryInstitutesan_contact_id.AsInteger := qryCompaniesanagraph_id.AsInteger;
  qryInstitutesan_group_id.AsInteger := self.FInstitutesGroup;
  qryInstitutesan_iso_country_code.AsWideString := 'ITA';
  qryInstitutesan_sex.AsWideString := 'S';
  qryInstitutesan_currency_id.AsInteger := 1;
  qryInstitutesan_main_language_code.AsWideString := 'it';
  qryInstitutesan_main_culture_code.AsWideString := 'it_IT';
  qryInstitutesan_main_group_id.AsInteger := self.FCompaniesGroup;
  qryAnagraphNextVal.Close;
  ServerFunctions.OpenDataset(qryAnagraphNextVal);
  self.qryInstitutesanagraph_id.AsInteger := qryAnagraphNextValnextval.AsInteger;
  qryAnagraphNextVal.Close;
end;

procedure TdmHealthBooking.qryInstitutesServicesBeforePost(DataSet: TDataSet);
begin
  if self.qryInstitutesServicesid.AsInteger = 0 then
  begin
    ServerFunctions.OpenDataset(qryServicesNextVal);
    self.qryInstitutesServicesid.AsInteger := self.qryServicesNextValnextval.AsInteger;
    self.qryServicesNextVal.Close;
  end;
  qryInstitutesServicesanagraph_id.Value := qryInstitutesanagraph_id.AsInteger;
end;

procedure TdmHealthBooking.qryRelativeBeforePost(DataSet: TDataSet);
begin
  inherited;
  if self.qryRelative.State = dsInsert then
  begin
    self.qryBookings.Edit;
    self.qryBookingsother_person_id.AsInteger := self.qryRelativeanagraph_id.AsInteger;
    self.qryBookings.Post;
  end;
end;

procedure TdmHealthBooking.SetCompaniesGroup(const Value: integer);
begin
  FCompaniesGroup := Value;
  if self.qryCompanies.ParamByName('p_group_id').AsInteger <> FCompaniesGroup then
  begin
    self.qryCompanies.Close;
    self.qryCompanies.ParamByName('p_group_id').AsInteger := FCompaniesGroup;

  end;
  ServerFunctions.OpenDataset(qryCompanies);
end;

procedure TdmHealthBooking.SetCoordinates(const Value: TJanuaCoordinates);
begin
  FCoordinates := Value;
end;

procedure TdmHealthBooking.setGeoCoding;
// var
// lCoordinates: TJanuaCoordinates;
begin
  self.qryCompanies.First;
  while not self.qryCompanies.Eof do
  begin
    // if self.qryCompanieslatitude.AsFloat = 0 then
    begin
      DatasetGeoCoding(self.qryCompanies);
      if self.qryInstitutes.RecordCount > 0 then
      begin
        qryInstitutes.First;
        while not self.qryInstitutes.Eof do
        begin
          DatasetGeoCoding(self.qryInstitutes);
          self.qryInstitutes.Next;
        end;
      end;
      self.qryCompanies.Next;
    end;
  end;
end;

procedure TdmHealthBooking.SetInstitutesCount(const Value: integer);
begin
  FInstitutesCount := Value;
end;

procedure TdmHealthBooking.SetInstitutesGroup(const Value: integer);
begin
  FInstitutesGroup := Value;
  if self.qryInstitutes.ParamByName('p_group_id').AsInteger <> FInstitutesGroup then
  begin
    self.qryInstitutes.Close;
    self.qryInstitutes.ParamByName('p_group_id').AsInteger := FInstitutesGroup;

  end;
  ServerFunctions.OpenDataset(qryInstitutes);
end;

function TdmHealthBooking.AssignBooking(aSession: string; aBookingID: Int64): boolean;
begin
  // self.SessionKey := aSession;
  if self.CheckSessionKey(aSession) then
  begin
    // SELECT health.assignbooking(:p_session_id, :p_booking_id)
    self.FBookingID := aBookingID;
    self.spAssignBooking.ParamByName('p_session_id').AsLargeInt := self.SessionUID;
    self.FBookingID := aBookingID;
    self.spAssignBooking.ParamByName('p_booking_id').AsLargeInt := aBookingID;
    self.spAssignBooking.Execute;
    Result := self.spAssignBooking.ParamByName('result').AsBoolean;
    GetBooking(aBookingID);
  end
  else
    Result := False;
end;

function TdmHealthBooking.BookingFinalisation(aBooking: Janua.Core.Health.TJanuaHealthBooking): boolean;
begin
  try
    self.FBooking := aBooking;

    if not self.spBooking.Prepared then
      self.spBooking.Prepare;

    self.spBookingFinalisation.ParamByName('p_booking_id').AsLargeInt := aBooking.id;
    self.spBookingFinalisation.ParamByName('p_session_id').AsLargeInt := aBooking.session_id;
    self.spBookingFinalisation.ParamByName('p_session_key').AsWideString := aBooking.session_key;
    self.spBookingFinalisation.ParamByName('p_has_prescription').AsBoolean := aBooking.HasPrescription;
    self.spBookingFinalisation.ParamByName('p_has_relative').AsBoolean := aBooking.HasRelative;
    self.spBookingFinalisation.ParamByName('p_book_since').AsDate := aBooking.Book_Since;
    self.spBookingFinalisation.ParamByName('p_book_until').AsDate := aBooking.Book_until;
    self.spBookingFinalisation.ParamByName('p_insurance').AsWideString := aBooking.Insurance;
    self.spBookingFinalisation.ParamByName('p_agreement').AsWideString := aBooking.Agreement;
    self.spBookingFinalisation.ParamByName('p_notes').AsWideString := aBooking.Notes;

    // Person parameteres .............................................................................
    self.spBookingFinalisation.ParamByName('person_firstname').AsWideString := aBooking.Relative.FirstName;
    self.spBookingFinalisation.ParamByName('person_lastname').AsWideString := aBooking.Relative.LastName;
    self.spBookingFinalisation.ParamByName('person_fiscalcode').AsWideString := aBooking.Relative.FiscalCode;
    self.spBookingFinalisation.ParamByName('person_address').AsWideString :=
      aBooking.Relative.Address.Address;
    self.spBookingFinalisation.ParamByName('person_town').AsWideString := aBooking.Relative.Address.town;
    self.spBookingFinalisation.ParamByName('person_notes').AsWideString := '';

    // Health Prescription .............................................................................
    self.spBookingFinalisation.ParamByName('pr_first_code').AsWideString :=
      aBooking.HealthPrescription.first_code;
    self.spBookingFinalisation.ParamByName('pr_second_code').AsWideString :=
      aBooking.HealthPrescription.second_code;
    self.spBookingFinalisation.ParamByName('pr_province').AsWideString :=
      aBooking.HealthPrescription.province;
    self.spBookingFinalisation.ParamByName('pr_first_name').AsWideString :=
      aBooking.HealthPrescription.first_name;
    self.spBookingFinalisation.ParamByName('pr_last_name').AsWideString :=
      aBooking.HealthPrescription.last_name;
    self.spBookingFinalisation.ParamByName('pr_fiscal_code').AsWideString :=
      aBooking.HealthPrescription.fiscal_code;
    self.spBookingFinalisation.ParamByName('pr_exemption').AsBoolean := aBooking.HealthPrescription.exemption;
    self.spBookingFinalisation.ParamByName('pr_exemption_code').AsWideString :=
      aBooking.HealthPrescription.exemption_code;
    self.spBookingFinalisation.ParamByName('pr_exemption_income').AsBoolean :=
      aBooking.HealthPrescription.exemption_income;
    self.spBookingFinalisation.ParamByName('pr_services').AsSmallInt := aBooking.HealthPrescription.Services;
    self.spBookingFinalisation.ParamByName('pr_date').AsDate := aBooking.HealthPrescription.date;
    self.spBookingFinalisation.ParamByName('pr_priority').AsWideString :=
      aBooking.HealthPrescription.priority;
    spBookingFinalisation.ExecProc;
    Result := spBookingFinalisation.ParamByName('result').AsBoolean;
  except
    on e: exception do
      raise exception.Create('TdmHealthBooking.BookingFinalisation Booking=' + aBooking.id.ToString +
        sLineBreak + e.Message);
  end;
end;

function TdmHealthBooking.BookingInstitutes(aInstitute1, aInstitute2, aInstitute3: integer;
  aBookingID: Int64): Int64;
begin
  self.FSearchID := aBookingID;
  // SELECT health.bookinginstitutes(:p_session_id, :p_session_key, :p_item1, :p_item2, :p_item3, :p_search_id)
  FSearchID := aBookingID;
  self.spbookingInstitutes.ParamByName('p_search_id').AsLargeInt := aBookingID;
  self.spbookingInstitutes.ParamByName('p_item1').AsLargeInt := aInstitute1;
  self.spbookingInstitutes.ParamByName('p_item2').AsLargeInt := aInstitute2;
  self.spbookingInstitutes.ParamByName('p_item3').AsLargeInt := aInstitute3;
  self.spbookingInstitutes.Execute;
  Result := self.spbookingInstitutes.ParamByName('result').AsLargeInt;
  FBookingID := Result;
end;

procedure TdmHealthBooking.RefreshBookingRows;
// var
// i: integer;
begin
  qryBookingRows.Close;
  qryBookingRows.ParamByName('booking_id').AsLargeInt := self.qryBookingsbooking_id.AsLargeInt;
  ServerFunctions.OpenDataset(qryBookingRows);

  // i := self.qryBookingRows.RecordCount;

  qryBookingInstitutes.Close;
  qryBookingInstitutes.ParamByName('booking_id').AsLargeInt := self.qryBookingsbooking_id.AsLargeInt;
  ServerFunctions.OpenDataset(qryBookingInstitutes);

  // i := qryBookingInstitutes.RecordCount;

  qryBookingPrescription.Close;
  qryBookingRows.ParamByName('booking_id').AsLargeInt := self.qryBookingsbooking_id.AsLargeInt;
  ServerFunctions.OpenDataset(qryBookingPrescription);

  qryRelative.Close;
  qryRelative.ParamByName('person_id').AsLargeInt := self.qryBookingsother_person_id.AsLargeInt;
  ServerFunctions.OpenDataset(qryRelative);
end;

function TdmHealthBooking.DoBooking(aSearchID: Int64; bAuto: boolean): Int64;
begin
  if self.Select1 = 0 then
  begin
    FSearchID := aSearchID;
    self.spBooking.ParamByName('p_storedsearch').AsLargeInt := aSearchID;
    self.spBooking.ParamByName('p_auto').AsBoolean := bAuto;
    self.spBooking.Execute;
    Result := self.spBooking.ParamByName('result').AsLargeInt;
  end
  else
  begin
    // SELECT health.bookinginstitutes(:p_session_id, :p_session_key, :p_item1, :p_item2, :p_item3,
    // :p_search_id)
    FSearchID := aSearchID;
    self.spbookingInstitutes.ParamByName('p_search_id').AsLargeInt := aSearchID;
    self.spbookingInstitutes.ParamByName('p_session_id').AsLargeInt := self.SessionUID;
    self.spbookingInstitutes.ParamByName('p_session_key').AsWideString := self.SessionKey;
    // imposto gli istituti se sono stati selezionati dall'utente .......................
    self.spbookingInstitutes.ParamByName('p_item1').AsInteger := self.Select1;
    self.spbookingInstitutes.ParamByName('p_item2').AsInteger := self.Select2;
    self.spbookingInstitutes.ParamByName('p_item3').AsInteger := self.Select3;

    self.spbookingInstitutes.Execute;
    Result := self.spbookingInstitutes.ParamByName('result').AsLargeInt;
  end;
  FBookingID := Result;
end;

procedure TdmHealthBooking.GetBooking(aBookingID: Int64);
begin
  qryBookingInstitutes.Close;
  self.qryBookingInstitutes.ParamByName('booking_id').AsLargeInt := aBookingID;
  ServerFunctions.OpenDataset(qryBookingInstitutes);
end;

procedure TdmHealthBooking.SearchInstitutes(aSessionID: Int64; aUserID, aServiceID: integer;
  aCoordinates: TJanuaCoordinates; const iLimit: integer = 10; const iPage: integer = 1);
begin
  { SELECT * from health.get_institutes(
    :item_id::integer,
    0::smallint,
    :latitude::double precision,
    :longitude::double precision,
    10::smallint,
    :user_id::integer,
    :session_id::bigint
    ); }
  SessionUID := aSessionID;
  qryInstitutesItems.Close;

  if aCoordinates.Latitude = 0 then
  begin
    self.qryInstitutesItems.ParamByName('latitude').AsFloat := 45.4655236;
    self.qryInstitutesItems.ParamByName('longitude').AsFloat := 9.2080925;
  end
  else
  begin
    self.qryInstitutesItems.ParamByName('latitude').AsFloat := aCoordinates.Latitude;
    self.qryInstitutesItems.ParamByName('longitude').AsFloat := aCoordinates.Longitude;
  end;

  self.qryInstitutesItems.ParamByName('limit').AsInteger := iLimit;
  self.qryInstitutesItems.ParamByName('pagination').AsInteger := iPage;
  self.qryInstitutesItems.ParamByName('item_id').AsInteger := aServiceID;
  self.qryInstitutesItems.ParamByName('user_id').AsInteger := self.UserProfile.User.id;
  self.qryInstitutesItems.ParamByName('session_id').AsLargeInt := SessionUID;
  ServerFunctions.OpenDataset(qryInstitutesItems);
  { TODO : Gestire nella procedura Model-View-Controller SearchID all'interno della Search Session }
  self.FSearchID := self.qryInstitutesItemsid.AsLargeInt;
  self.FInstitutesCount := self.qryInstitutesItems.RecordCount;

end;

function TdmHealthBooking.SearchMeetings(const aUserID, aLimit: integer): integer;
begin
  /// funzione di ricerca delle notifiche ordinamento in base a notifiche non lette ed urgenza di soluzione
  /// delle medesime (quando l'utente deve svolgere un compito preciso sulla notifica).
  ///
  { select r.*, a.*, b.*,  w.*
    from health.bookings_rows r, anagraph.anagraphs a,
    health.bookings b, health.anagraph_wards_services w
    where
    r.anagraph_id = a.anagraph_id
    and
    r.confirmed = true
    and
    b.booking_id = r.booking_id
    and
    b.db_user_id = :db_user_id
    order by booking_date desc }
  Result := 0;
  try
    self.qryMeetings.Close;
    self.qryMeetings.ParamByName('db_user_id').AsLargeInt := aUserID;
    ServerFunctions.OpenDataset(qryMeetings);
    Result := self.qryMeetings.RecordCount;
  except
    on e: exception do
    begin
      Result := -1;
      self.LastErrorMessage := e.Message;
    end;

  end;
end;

function TdmHealthBooking.SearchNotification(const aID: Int64): boolean;
begin
  /// funzione di ricerca delle notifiche ordinamento in base a notifiche non lette ed urgenza di soluzione
  /// delle medesime (quando l'utente deve svolgere un compito preciso sulla notifica).
  ///
  { SELECT id, type_id, title, message, db_schema_id, db_user_id, datetime,
    read, booking_id, solved, from_user_id, booking_action
    FROM health.notifications
    where
    db_user_id = :user_id
    order by solved, type_id }

  self.qryNotification.Close;
  self.qryNotification.ParamByName('id').AsLargeInt := aID;
  ServerFunctions.OpenDataset(qryNotifications);
  Result := self.qryNotifications.RecordCount > 0;
end;

function TdmHealthBooking.SearchNotifications(const aUserID: integer; const aLimit: integer = 100): integer;
begin
  /// funzione di ricerca delle notifiche ordinamento in base a notifiche non lette ed urgenza di soluzione
  /// delle medesime (quando l'utente deve svolgere un compito preciso sulla notifica).
  ///
  { SELECT id, type_id, title, message, db_schema_id, db_user_id, datetime,
    read, booking_id, solved, from_user_id, booking_action
    FROM health.notifications
    where
    db_user_id = :user_id
    order by solved, type_id }

  self.qryNotifications.Close;
  self.qryNotifications.ParamByName('user_id').AsInteger := aUserID;
  self.qryNotifications.ParamByName('limit').AsInteger := aLimit;
  ServerFunctions.OpenDataset(qryNotifications);
  Result := self.qryNotifications.RecordCount;
end;

procedure TdmHealthBooking.SearchServices(aSearch: string);
begin
  qryLkpServices.Close;
  self.qryLkpServices.Params[0].AsWideString := Janua.Core.Functions.StripString(aSearch);
  ServerFunctions.OpenDataset(qryLkpServices);

end;

procedure TdmHealthBooking.SetBooking(const Value: TJanuaHealthBooking);
begin
  FBooking := Value;
end;

procedure TdmHealthBooking.SetBookingID(const Value: Int64);
begin
  FBookingID := Value;
end;

procedure TdmHealthBooking.SetSearchID(const Value: Int64);
begin
  FSearchID := Value;
end;

procedure TdmHealthBooking.SetSelect1(const Value: integer);
begin
  FSelect1 := Value;
end;

procedure TdmHealthBooking.SetSelect2(const Value: integer);
begin
  FSelect2 := Value;
end;

procedure TdmHealthBooking.SetSelect3(const Value: integer);
begin
  FSelect3 := Value;
end;

end.
