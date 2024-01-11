-- FUNCTION: anagraph.anagraph_view_insert_trg()

-- DROP FUNCTION IF EXISTS anagraph.anagraph_view_insert_trg();

CREATE OR REPLACE FUNCTION anagraph.anagraph_view_insert_trg()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
  v_count integer; v_id integer; v_jguid uuid; v_vessel_id integer; 
BEGIN
  v_count := 0; 
  v_id := new.anagraph_id;
  
  if v_id is null or v_id = 0 then
    v_id:=nextval('anagraph.an_anagraph_seq');
  end if; 
  
  v_jguid := new.jguid; 
  
  if v_jguid is null then
     v_jguid := '{' || public.uuid_generate_v1mc() || '}';
  end if; 
  
  if new.vessel_id = 0 then v_vessel_id := null; else v_vessel_id := new.vessel_id; end if; 
  
  
  INSERT INTO anagraph.anagraphs (
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
    an_iso_country_code2,
	an_full_address
  )
  values( 
    new.db_schema_id,
    case when v_id = 0 then NULL else v_id end,
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
    v_jguid,
    new.custom_field_1,
    new.custom_field_2,
    new.custom_field_3,
    new.custom_float_1,
    new.custom_float_2,
    new.custom_int_1,
    new.custom_int_2,
    case when new.supplier_id = 0 then NULL else new.supplier_id end,
    case when v_vessel_id = 0 then NULL else v_vessel_id end,
    case when new.an_country_id = 0 then NULL else new.an_country_id end,
    new.an_iso_country_code2,
	case when new.an_full_address IS NULL THEN
	     new.an_address || ',' || new.an_postal_code || ',' || new.an_town || ',' || new.an_state_province
	  ELSE
	  	new.an_full_address 
	END
	)
  ;
	
	return new; 
end; 
$BODY$;

ALTER FUNCTION anagraph.anagraph_view_insert_trg()
    OWNER TO ergo;


DROP TRIGGER IF EXISTS anagraph_view_ioi_trg ON  anagraph.anagraphs_view; 
	
CREATE TRIGGER anagraph_view_ioi_trg
    INSTEAD OF INSERT
    ON anagraph.anagraphs_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.anagraph_view_insert_trg();