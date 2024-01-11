
   create or replace view  system.db_user_sessions_view as 
   SELECT  
   s.db_user_id, s.db_schema_id, db_session_key, db_session_id, language_id, start_time, s.insert_date, usse_jguid, surs_jguid, surs_deleted,
   u.country_id, region_id, district_id, town_id, first_name, last_name, address_street, address_number, address_postal_code, phone, 
   cellular_phone, work_phone, fax_number, gender_code, birth_date, birth_country_id, birth_region_id, birth_district_id, birth_town_id, public_email, title, 
   address_full, a.latitude, a.longitude, fiscal_code, smssent, smsconfirmed, smsdate, smschecknumber, address_town, p_facebook_json, facebook_json, 
   address_state_province, uspr_jguid,  supr_jguid, supr_deleted,
   active, u.email, password, username, isactive, verify_token, verified, default_schema_id,  internal_key, default_role_id,  
    main_profile_type_id, main_profile_id, image_id, image_url, iso_language_code, iso_culture_code, user_first_name, user_family_name, emailsent, 
   emailconfirmed, emaildate, payment, payment_expiration_date, user_deleted,  suse_jguid, suse_deleted, social_id, social_type,
   a.anagraph_id, an_title, an_name, an_second_name, an_last_name, an_notes, an_address, an_town, an_postal_code, an_iso_country_code, 
   an_state_province, an_phone, an_phone2, an_fax, an_cellular, an_code, an_vat_numeric, an_email, an_web, an_contact_id, an_bank_account, an_payment_des, 
   an_discount, an_distance, an_distance_mesunit, an_sex, an_cod_comune, an_cod_provincia, an_credit_line, an_currency_id, an_cat_id, an_notes2, an_notes3, 
   an_edi, an_privacy, an_office_id, an_cod_prov_rif, an_data_fido, an_user_insert, an_user_update, an_area_id, an_agent_id, an_area_code, an_zone_id, an_ins_id, 
   an_upd_id, an_documents, an_last_date, an_birthdate, an_office_type_id, an_searchname, an_extra_ue_flag, an_external_code, an_vat_id, an_personal_fiscal_code, 
   an_privacy_print, an_sms, an_encrypted_fiscal_code, an_vat_purcentage, an_status, an_ownsite, an_insurance_id, an_anagraphs_anagraph_id, an_main_language_code, 
   an_main_culture_code, an_fiscal_code, an_main_group_id, an_image_id,  search_index, an_birthplace, an_birthplace_code, anagraph64, 
   main_category_id, osm_id, an_description, an_address_number, anag_jguid, anag_deleted,   jguid, custom_field_1, custom_field_2, 
   custom_field_3, custom_float_1, custom_float_2, custom_int_1, custom_int_2, supplier_id, vessel_id, an_country_id, an_iso_country_code2, deleted
   FROM system.db_user_sessions s
   inner join  system.db_users u on  s.db_user_id = u.db_user_id  
   inner join  system.db_users_profiles p on s.db_user_id = p.db_user_id
   left outer join anagraph.anagraphs_view a on p.anagraph_id = a.anagraph_id