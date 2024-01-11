-- View: anagraph.anagraphs_view

--DROP VIEW anagraph.anagraphs_view;

CREATE OR REPLACE VIEW anagraph.anagraphs_view
 AS
 SELECT a.db_schema_id,
    a.anagraph_id,
    a.an_title,
    a.an_name,
    a.an_second_name,
    a.an_last_name,
    a.an_notes,
    a.an_address,
    a.an_town,
    a.an_postal_code,
    a.an_iso_country_code,
    a.an_state_province,
    a.an_phone,
    a.an_phone2,
    a.an_fax,
    a.an_cellular,
    a.an_code,
    a.an_vat_numeric,
    a.an_email,
    a.an_web,
    a.an_contact_id,
    a.an_bank_account,
    a.an_payment_des,
    a.an_discount,
    a.an_distance,
    a.an_distance_mesunit,
    a.an_sex,
    a.an_cod_comune,
    a.an_cod_provincia,
    a.an_credit_line,
    a.an_currency_id,
    a.an_cat_id,
    a.an_notes2,
    a.an_notes3,
    a.an_edi,
    a.an_privacy,
    a.an_office_id,
    a.an_cod_prov_rif,
    a.an_data_fido,
    a.an_user_insert,
    a.an_user_update,
    a.an_area_id,
    a.an_agent_id,
    a.an_area_code,
    a.an_zone_id,
    a.an_ins_id,
    a.an_upd_id,
    a.an_documents,
    a.an_last_date,
    a.an_birthdate,
    a.an_office_type_id,
    a.an_searchname,
    a.an_extra_ue_flag,
    a.an_external_code,
    a.an_vat_id,
    a.an_personal_fiscal_code,
    a.an_privacy_print,
    a.an_sms,
    a.an_encrypted_fiscal_code,
    a.an_vat_purcentage,
    a.an_status,
    a.an_ownsite,
    a.an_insurance_id,
    a.an_anagraphs_anagraph_id,
    a.an_main_language_code,
    a.an_main_culture_code,
    a.an_fiscal_code,
    a.an_main_group_id,
    a.an_image_id,
    a.latitude,
    a.longitude,
    a.test,
    a.search_index,
    a.an_birthplace,
    a.an_birthplace_code,
    a.anagraph64,
    a.main_category_id,
    a.osm_id,
    a.an_description,
    a.an_address_number,
    a.anag_jguid,
    a.anag_deleted,
    a.insert_date,
    a.update_date,
    a.user_insert,
    a.jguid,
    a.custom_field_1,
    a.custom_field_2,
    a.custom_field_3,
    a.custom_float_1,
    a.custom_float_2,
    a.custom_int_1,
    a.custom_int_2,
    a.supplier_id,
    a.vessel_id,
    a.an_country_id,
    a.an_iso_country_code2,
    a.deleted,
    i.an_group_id,
    i.an_credit_limit,
    i.an_credit,
    s.an_branch_name AS shipment_name,
    s.an_branch_postal_code AS shipment_postal_code,
    s.an_branch_town_name AS shipment_town,
    s.an_branch_address AS shipment_address,
    s.an_branch_phone AS shipment_phone,
    s.an_branch_state_province AS shipment_state_province,
    b.an_branch_name AS billing_name,
    b.an_branch_postal_code AS billing_postal_code,
    b.an_branch_town_name AS billing_town,
    b.an_branch_address AS billing_address,
    b.an_branch_phone AS billing_phone,
    b.an_branch_state_province AS billing_state_province,
	a.an_full_address
	FROM anagraph.anagraphs a
     JOIN anagraph.identities i ON i.anagraph_id = a.anagraph_id
     LEFT JOIN anagraph.branches s ON s.anagraph_id = a.anagraph_id AND s.an_branch_id = 2
     LEFT JOIN anagraph.branches b ON s.anagraph_id = a.anagraph_id AND s.an_branch_id = 1;

ALTER TABLE anagraph.anagraphs_view
    OWNER TO ergo;


CREATE TRIGGER anagraph_view_ioi_trg
    INSTEAD OF INSERT
    ON anagraph.anagraphs_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.anagraph_view_insert_trg();


CREATE TRIGGER anagraphs_view_iou_trg
    INSTEAD OF UPDATE 
    ON anagraph.anagraphs_view
    FOR EACH ROW
    EXECUTE PROCEDURE anagraph.anagraph_view_update_trg();

