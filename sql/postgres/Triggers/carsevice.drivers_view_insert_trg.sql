-- FUNCTION: anagraph.anagraph_view_insert_trg()

-- DROP FUNCTION IF EXISTS anagraph.anagraph_view_insert_trg();

CREATE OR REPLACE FUNCTION carservice.drivers_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  v_count integer; 
  v_vessel_id integer; 
  v_db_schema  integer; 
BEGIN
  v_count := 0; 
  
  if New.anagraph_id is null or New.anagraph_id = 0 then
    New.anagraph_id:=nextval('anagraph.an_anagraph_seq');
  end if; 
  
  /* db Schema management using global variable */
  if New.db_schema_id is null or New.db_schema_id = 0 then
    New.db_schema_id := system.get_schema_id();
  end if; 
  

  if New.jguid is null then
     New.jguid :=  public.uuid_generate_v1mc();
  end if; 
  
  New.an_main_group_id := 29; 
 
 
  IF New.drive_license_number IS NULL THEN New.drive_license_number := 'n.a.'; END IF; 
  
  INSERT INTO anagraph.anagraphs_view (
    db_schema_id,	
    anagraph_id,
    an_title,
    an_name,
    an_second_name,
    an_last_name,
    an_notes,
    an_address,
    an_town,
    an_postal_code,
    an_iso_country_code,
    an_state_province,
    an_phone,
    an_phone2,
    an_fax,
    an_cellular,
    an_code,
    an_vat_numeric,
    an_email,
    an_web,
    an_contact_id,
    an_bank_account,
    an_payment_des,
    an_discount,
    an_distance,
    an_distance_mesunit,
    an_sex,
    an_cod_comune,
    an_cod_provincia,
    an_credit_line,
    an_currency_id,
    an_cat_id,
    an_notes2,
    an_notes3,
    an_edi,
    an_privacy,
    an_office_id,
    an_cod_prov_rif,
    an_data_fido,
    an_user_insert,
    an_user_update,
    an_area_id,
    an_agent_id,
    an_area_code,
    an_zone_id,
    an_ins_id,
    an_upd_id,
    an_documents,
    an_last_date,
    an_birthdate,
    an_office_type_id,
    an_searchname,
    an_extra_ue_flag,
    an_external_code,
    an_vat_id,
    an_personal_fiscal_code,
    an_privacy_print,
    an_sms,
    an_encrypted_fiscal_code,
    an_vat_purcentage,
    an_status,
    an_ownsite,
    an_insurance_id,
    an_anagraphs_anagraph_id,
    an_main_language_code,
    an_main_culture_code,
    an_fiscal_code,
    an_main_group_id,
    an_image_id,
    latitude,
    longitude,
    test,
    search_index,
    an_birthplace,
    an_birthplace_code,
    anagraph64,
    main_category_id,
    osm_id,
    an_description,
    an_address_number,
    anag_jguid,
    anag_deleted,
    insert_date,
    update_date,
    user_insert,
    jguid,
    custom_field_1,
    custom_field_2,
    custom_field_3,
    custom_float_1,
    custom_float_2,
    custom_int_1,
    custom_int_2,
    supplier_id,
    vessel_id,
    an_country_id,
    an_iso_country_code2
  )
  values( 
    New.db_schema_id,
    case when New.anagraph_id = 0 then NULL else New.anagraph_id end,
    new.an_title,
    new.an_name,
    new.an_second_name,
    new.an_last_name,
    new.an_notes,
    new.an_address,
    new.an_town,
    new.an_postal_code,
    new.an_iso_country_code,
    new.an_state_province,
    new.an_phone,
    new.an_phone2,
    new.an_fax,
    new.an_cellular,
    new.an_code,
    new.an_vat_numeric,
    new.an_email,
    new.an_web,
    case when new.an_contact_id = 0 then NULL else new.an_contact_id end,
    new.an_bank_account,
    new.an_payment_des,
    new.an_discount,
    new.an_distance,
    new.an_distance_mesunit,
    new.an_sex,
    new.an_cod_comune,
    new.an_cod_provincia,
    new.an_credit_line,
    case when new.an_currency_id = 0 then NULL else new.an_currency_id end,
    case when new.an_cat_id = 0 then NULL else new.an_cat_id end,
    new.an_notes2,
    new.an_notes3,
    new.an_edi,
    new.an_privacy,
    case when new.an_office_id = 0 then NULL else new.an_office_id end,
    new.an_cod_prov_rif,
    new.an_data_fido,
    new.an_user_insert,
    new.an_user_update,
    case when new.an_area_id = 0 then NULL else new.an_area_id end,
    case when new.an_agent_id = 0 then NULL else new.an_agent_id end,
    new.an_area_code,
    case when new.an_zone_id = '' then NULL else new.an_zone_id end,
    case when new.an_ins_id = 0 then NULL else new.an_ins_id end,
    case when new.an_upd_id = 0 then NULL else new.an_upd_id end,
    new.an_documents,
    new.an_last_date,
    new.an_birthdate,
    case when new.an_office_type_id = 0 then NULL else new.an_office_type_id end,
    new.an_searchname,
    new.an_extra_ue_flag,
    new.an_external_code,
    case when new.an_vat_id = 0 then NULL else new.an_vat_id end,
    new.an_personal_fiscal_code,
    new.an_privacy_print,
    new.an_sms,
    new.an_encrypted_fiscal_code,
    new.an_vat_purcentage,
    new.an_status,
    new.an_ownsite,
    case when new.an_insurance_id = 0 then NULL else new.an_insurance_id end,
    case when new.an_anagraphs_anagraph_id = 0 then NULL else new.an_anagraphs_anagraph_id end,
    new.an_main_language_code,
    new.an_main_culture_code,
    new.an_fiscal_code,
    new.an_main_group_id,
    case when new.an_image_id = 0 then NULL else new.an_image_id end,
    new.latitude,
    new.longitude,
    new.test,
    new.search_index,
    new.an_birthplace,
    new.an_birthplace_code,
    new.anagraph64,
    case when new.main_category_id = 0 then NULL else new.main_category_id end,
    case when new.osm_id = 0 then NULL else new.osm_id end,
    new.an_description,
    new.an_address_number,
    new.anag_jguid,
    new.anag_deleted,
    new.insert_date,
    new.update_date,
    new.user_insert,
    New.jguid,
    new.custom_field_1,
    new.custom_field_2,
    new.custom_field_3,
    new.custom_float_1,
    new.custom_float_2,
    new.custom_int_1,
    new.custom_int_2,
    case when new.supplier_id = 0 then NULL else new.supplier_id end,
    case when New.vessel_id = 0 then NULL else New.vessel_id end,
    case when new.an_country_id = 0 then NULL else new.an_country_id end,
    new.an_iso_country_code2
	)
  ;
  
  INSERT INTO carservice.drivers (anagraph_id, drive_license_number, drive_license__expiry, db_schema_id)
  	VALUES (New.anagraph_id, New.drive_license_number, New.drive_license__expiry, New.db_schema_id);
	
  RETURN New; 
end; 
$BODY$;

ALTER FUNCTION anagraph.anagraph_view_insert_trg()
    OWNER TO ergo;
