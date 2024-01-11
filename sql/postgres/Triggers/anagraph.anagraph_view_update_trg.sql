-- FUNCTION: anagraph.anagraph_view_update_trg()

-- DROP FUNCTION IF EXISTS anagraph.anagraph_view_update_trg();

CREATE OR REPLACE FUNCTION anagraph.anagraph_view_update_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
declare
  v_count bigint; v_id integer; v_jguid uuid;
BEGIN
/* 2023-07-23 updating using jguid */ 

  v_id := new.anagraph_id; 
  v_jguid := new.jguid; 
  
  if  (v_id is null or v_id = 0) then v_id := old.anagraph_id; end if;
  if   v_jguid is null then v_jguid := old.jguid; end if; 
  
  /*
  if (v_id is null or v_id = 0) and (v_jguid is not null) then  
	 select 
         count(1), anagraph_id
     into 
         v_count, v_id
	   from 
          anagraph.anagraphs where jguid = v_jguid 
       group by anagraph_id;  
  end if; 
 */
  
  UPDATE anagraph.anagraphs SET
    db_schema_id = new.db_schema_id,
    an_title = new.an_title,
    an_name = new.an_name,
    an_second_name = new.an_second_name,
    an_last_name = new.an_last_name,
    an_notes = new.an_notes,
    an_address = new.an_address,
    an_town = new.an_town,
    an_postal_code = new.an_postal_code,
    an_iso_country_code = new.an_iso_country_code,
    an_state_province = new.an_state_province,
    an_phone = new.an_phone,
    an_phone2 = new.an_phone2,
    an_fax = new.an_fax,
    an_cellular = new.an_cellular,
    an_code = new.an_code,
    an_vat_numeric = new.an_vat_numeric,
    an_email = new.an_email,
    an_web = new.an_web,
    an_contact_id = new.an_contact_id,
    an_bank_account = new.an_bank_account,
    an_payment_des = new.an_payment_des,
    an_discount = new.an_discount,
    an_distance = new.an_distance,
    an_distance_mesunit = new.an_distance_mesunit,
    an_sex = new.an_sex,
    an_cod_comune = new.an_cod_comune,
    an_cod_provincia = new.an_cod_provincia,
    an_credit_line = new.an_credit_line,
    an_currency_id = new.an_currency_id,
    an_cat_id = new.an_cat_id,
    an_notes2 = new.an_notes2,
    an_notes3 = new.an_notes3,
    an_edi = new.an_edi,
    an_privacy = new.an_privacy,
    an_office_id = new.an_office_id,
    an_cod_prov_rif = new.an_cod_prov_rif,
    an_data_fido = new.an_data_fido,
    an_user_insert = new.an_user_insert,
    an_user_update = new.an_user_update,
    an_area_id = new.an_area_id,
    an_agent_id = new.an_agent_id,
    an_area_code = new.an_area_code,
    an_zone_id = new.an_zone_id,
    an_ins_id = new.an_ins_id,
    an_upd_id = new.an_upd_id,
    an_documents = new.an_documents,
    an_last_date = new.an_last_date,
    an_birthdate = new.an_birthdate,
    an_office_type_id = new.an_office_type_id,
    an_searchname = new.an_searchname,
    an_extra_ue_flag = new.an_extra_ue_flag,
    an_external_code = new.an_external_code,
    an_vat_id = new.an_vat_id,
    an_personal_fiscal_code = new.an_personal_fiscal_code,
    an_privacy_print = new.an_privacy_print,
    an_sms = new.an_sms,
    an_encrypted_fiscal_code = new.an_encrypted_fiscal_code,
    an_vat_purcentage = new.an_vat_purcentage,
    an_status = new.an_status,
    an_ownsite = new.an_ownsite,
    an_insurance_id = new.an_insurance_id,
    an_anagraphs_anagraph_id = new.an_anagraphs_anagraph_id,
    an_main_language_code = new.an_main_language_code,
    an_main_culture_code = new.an_main_culture_code,
    an_fiscal_code = new.an_fiscal_code,
    an_main_group_id = new.an_main_group_id,
    an_image_id = new.an_image_id,
    latitude = new.latitude,
    longitude = new.longitude,
    test = new.test,
    search_index = new.search_index,
    an_birthplace = new.an_birthplace,
    an_birthplace_code = new.an_birthplace_code,
    anagraph64 = new.anagraph64,
    main_category_id = new.main_category_id,
    osm_id = new.osm_id,
    an_description = new.an_description,
    an_address_number = new.an_address_number,
    anag_deleted = new.anag_deleted,
    update_date = now(),
    user_insert = new.user_insert,
    custom_field_1 = new.custom_field_1,
    custom_field_2 = new.custom_field_2,
    custom_field_3 = new.custom_field_3,
    custom_float_1 = new.custom_float_1,
    custom_float_2 = new.custom_float_2,
    custom_int_1 = new.custom_int_1,
    custom_int_2 = new.custom_int_2,
    supplier_id = new.supplier_id,
    vessel_id = new.vessel_id,
    an_country_id = new.an_country_id,
    an_iso_country_code2 = new.an_iso_country_code2,
	deleted = new.deleted,
	an_full_address = new.an_full_address
  WHERE 
    (jguid = old.jguid) ;
	
  return new; 
end; 
$BODY$;

ALTER FUNCTION anagraph.anagraph_view_update_trg()
    OWNER TO ergo;
