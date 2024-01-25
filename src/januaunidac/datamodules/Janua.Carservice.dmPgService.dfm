inherited dmPgCarServiceMain: TdmPgCarServiceMain
  Height = 420
  Width = 495
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object spAccountFunding: TUniStoredProc
    StoredProcName = 'carservice.account_funding'
    SQL.Strings = (
      'SELECT carservice.account_funding(:p_customer_id, :p_amount)')
    Connection = PgErgoConnection
    Left = 72
    Top = 144
    ParamData = <
      item
        DataType = ftCurrency
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_customer_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftCurrency
        Name = 'p_amount'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.account_funding'
    StoredProcIsQuery = True
  end
  object qryOffice: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs_view'
      
        '  (db_schema_id, anagraph_id, an_title, an_name, an_second_name,' +
        ' an_last_name, an_notes, an_address, an_town, an_postal_code, an' +
        '_iso_country_code, an_state_province, an_phone, an_phone2, an_fa' +
        'x, an_cellular, an_code, an_vat_numeric, an_email, an_web, an_co' +
        'ntact_id, an_bank_account, an_payment_des, an_discount, an_dista' +
        'nce, an_distance_mesunit, an_sex, an_cod_comune, an_cod_provinci' +
        'a, an_credit_line, an_currency_id, an_cat_id, an_notes2, an_note' +
        's3, an_edi, an_privacy, an_office_id, an_cod_prov_rif, an_data_f' +
        'ido, an_user_insert, an_user_update, an_area_id, an_agent_id, an' +
        '_area_code, an_zone_id, an_ins_id, an_upd_id, an_documents, an_l' +
        'ast_date, an_birthdate, an_office_type_id, an_searchname, an_ext' +
        'ra_ue_flag, an_external_code, an_vat_id, an_personal_fiscal_code' +
        ', an_privacy_print, an_sms, an_encrypted_fiscal_code, an_vat_pur' +
        'centage, an_status, an_ownsite, an_insurance_id, an_anagraphs_an' +
        'agraph_id, an_main_language_code, an_main_culture_code, an_fisca' +
        'l_code, an_main_group_id, an_image_id, latitude, longitude, test' +
        ', search_index, an_birthplace, an_birthplace_code, anagraph64, m' +
        'ain_category_id, osm_id, an_description, an_address_number, anag' +
        '_jguid, anag_deleted, insert_date, update_date, user_insert, jgu' +
        'id, custom_field_1, custom_field_2, custom_field_3, custom_float' +
        '_1, custom_float_2, custom_int_1, custom_int_2, supplier_id, ves' +
        'sel_id, an_country_id, an_iso_country_code2, deleted, an_group_i' +
        'd, an_credit_limit, an_credit, shipment_name, shipment_postal_co' +
        'de, shipment_town, shipment_address, shipment_phone, shipment_st' +
        'ate_province, billing_name, billing_postal_code, billing_town, b' +
        'illing_address, billing_phone, billing_state_province)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_title, :an_name, :an_second_' +
        'name, :an_last_name, :an_notes, :an_address, :an_town, :an_posta' +
        'l_code, :an_iso_country_code, :an_state_province, :an_phone, :an' +
        '_phone2, :an_fax, :an_cellular, :an_code, :an_vat_numeric, :an_e' +
        'mail, :an_web, :an_contact_id, :an_bank_account, :an_payment_des' +
        ', :an_discount, :an_distance, :an_distance_mesunit, :an_sex, :an' +
        '_cod_comune, :an_cod_provincia, :an_credit_line, :an_currency_id' +
        ', :an_cat_id, :an_notes2, :an_notes3, :an_edi, :an_privacy, :an_' +
        'office_id, :an_cod_prov_rif, :an_data_fido, :an_user_insert, :an' +
        '_user_update, :an_area_id, :an_agent_id, :an_area_code, :an_zone' +
        '_id, :an_ins_id, :an_upd_id, :an_documents, :an_last_date, :an_b' +
        'irthdate, :an_office_type_id, :an_searchname, :an_extra_ue_flag,' +
        ' :an_external_code, :an_vat_id, :an_personal_fiscal_code, :an_pr' +
        'ivacy_print, :an_sms, :an_encrypted_fiscal_code, :an_vat_purcent' +
        'age, :an_status, :an_ownsite, :an_insurance_id, :an_anagraphs_an' +
        'agraph_id, :an_main_language_code, :an_main_culture_code, :an_fi' +
        'scal_code, :an_main_group_id, :an_image_id, :latitude, :longitud' +
        'e, :test, :search_index, :an_birthplace, :an_birthplace_code, :a' +
        'nagraph64, :main_category_id, :osm_id, :an_description, :an_addr' +
        'ess_number, :anag_jguid, :anag_deleted, :insert_date, :update_da' +
        'te, :user_insert, :jguid, :custom_field_1, :custom_field_2, :cus' +
        'tom_field_3, :custom_float_1, :custom_float_2, :custom_int_1, :c' +
        'ustom_int_2, :supplier_id, :vessel_id, :an_country_id, :an_iso_c' +
        'ountry_code2, :deleted, :an_group_id, :an_credit_limit, :an_cred' +
        'it, :shipment_name, :shipment_postal_code, :shipment_town, :ship' +
        'ment_address, :shipment_phone, :shipment_state_province, :billin' +
        'g_name, :billing_postal_code, :billing_town, :billing_address, :' +
        'billing_phone, :billing_state_province)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs_view'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_t' +
        'itle = :an_title, an_name = :an_name, an_second_name = :an_secon' +
        'd_name, an_last_name = :an_last_name, an_notes = :an_notes, an_a' +
        'ddress = :an_address, an_town = :an_town, an_postal_code = :an_p' +
        'ostal_code, an_iso_country_code = :an_iso_country_code, an_state' +
        '_province = :an_state_province, an_phone = :an_phone, an_phone2 ' +
        '= :an_phone2, an_fax = :an_fax, an_cellular = :an_cellular, an_c' +
        'ode = :an_code, an_vat_numeric = :an_vat_numeric, an_email = :an' +
        '_email, an_web = :an_web, an_contact_id = :an_contact_id, an_ban' +
        'k_account = :an_bank_account, an_payment_des = :an_payment_des, ' +
        'an_discount = :an_discount, an_distance = :an_distance, an_dista' +
        'nce_mesunit = :an_distance_mesunit, an_sex = :an_sex, an_cod_com' +
        'une = :an_cod_comune, an_cod_provincia = :an_cod_provincia, an_c' +
        'redit_line = :an_credit_line, an_currency_id = :an_currency_id, ' +
        'an_cat_id = :an_cat_id, an_notes2 = :an_notes2, an_notes3 = :an_' +
        'notes3, an_edi = :an_edi, an_privacy = :an_privacy, an_office_id' +
        ' = :an_office_id, an_cod_prov_rif = :an_cod_prov_rif, an_data_fi' +
        'do = :an_data_fido, an_user_insert = :an_user_insert, an_user_up' +
        'date = :an_user_update, an_area_id = :an_area_id, an_agent_id = ' +
        ':an_agent_id, an_area_code = :an_area_code, an_zone_id = :an_zon' +
        'e_id, an_ins_id = :an_ins_id, an_upd_id = :an_upd_id, an_documen' +
        'ts = :an_documents, an_last_date = :an_last_date, an_birthdate =' +
        ' :an_birthdate, an_office_type_id = :an_office_type_id, an_searc' +
        'hname = :an_searchname, an_extra_ue_flag = :an_extra_ue_flag, an' +
        '_external_code = :an_external_code, an_vat_id = :an_vat_id, an_p' +
        'ersonal_fiscal_code = :an_personal_fiscal_code, an_privacy_print' +
        ' = :an_privacy_print, an_sms = :an_sms, an_encrypted_fiscal_code' +
        ' = :an_encrypted_fiscal_code, an_vat_purcentage = :an_vat_purcen' +
        'tage, an_status = :an_status, an_ownsite = :an_ownsite, an_insur' +
        'ance_id = :an_insurance_id, an_anagraphs_anagraph_id = :an_anagr' +
        'aphs_anagraph_id, an_main_language_code = :an_main_language_code' +
        ', an_main_culture_code = :an_main_culture_code, an_fiscal_code =' +
        ' :an_fiscal_code, an_main_group_id = :an_main_group_id, an_image' +
        '_id = :an_image_id, latitude = :latitude, longitude = :longitude' +
        ', test = :test, search_index = :search_index, an_birthplace = :a' +
        'n_birthplace, an_birthplace_code = :an_birthplace_code, anagraph' +
        '64 = :anagraph64, main_category_id = :main_category_id, osm_id =' +
        ' :osm_id, an_description = :an_description, an_address_number = ' +
        ':an_address_number, anag_jguid = :anag_jguid, anag_deleted = :an' +
        'ag_deleted, insert_date = :insert_date, update_date = :update_da' +
        'te, user_insert = :user_insert, jguid = :jguid, custom_field_1 =' +
        ' :custom_field_1, custom_field_2 = :custom_field_2, custom_field' +
        '_3 = :custom_field_3, custom_float_1 = :custom_float_1, custom_f' +
        'loat_2 = :custom_float_2, custom_int_1 = :custom_int_1, custom_i' +
        'nt_2 = :custom_int_2, supplier_id = :supplier_id, vessel_id = :v' +
        'essel_id, an_country_id = :an_country_id, an_iso_country_code2 =' +
        ' :an_iso_country_code2, deleted = :deleted, an_group_id = :an_gr' +
        'oup_id, an_credit_limit = :an_credit_limit, an_credit = :an_cred' +
        'it, shipment_name = :shipment_name, shipment_postal_code = :ship' +
        'ment_postal_code, shipment_town = :shipment_town, shipment_addre' +
        'ss = :shipment_address, shipment_phone = :shipment_phone, shipme' +
        'nt_state_province = :shipment_state_province, billing_name = :bi' +
        'lling_name, billing_postal_code = :billing_postal_code, billing_' +
        'town = :billing_town, billing_address = :billing_address, billin' +
        'g_phone = :billing_phone, billing_state_province = :billing_stat' +
        'e_province'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_title, an_name, an_second_n' +
        'ame, an_last_name, an_notes, an_address, an_town, an_postal_code' +
        ', an_iso_country_code, an_state_province, an_phone, an_phone2, a' +
        'n_fax, an_cellular, an_code, an_vat_numeric, an_email, an_web, a' +
        'n_contact_id, an_bank_account, an_payment_des, an_discount, an_d' +
        'istance, an_distance_mesunit, an_sex, an_cod_comune, an_cod_prov' +
        'incia, an_credit_line, an_currency_id, an_cat_id, an_notes2, an_' +
        'notes3, an_edi, an_privacy, an_office_id, an_cod_prov_rif, an_da' +
        'ta_fido, an_user_insert, an_user_update, an_area_id, an_agent_id' +
        ', an_area_code, an_zone_id, an_ins_id, an_upd_id, an_documents, ' +
        'an_last_date, an_birthdate, an_office_type_id, an_searchname, an' +
        '_extra_ue_flag, an_external_code, an_vat_id, an_personal_fiscal_' +
        'code, an_privacy_print, an_sms, an_encrypted_fiscal_code, an_vat' +
        '_purcentage, an_status, an_ownsite, an_insurance_id, an_anagraph' +
        's_anagraph_id, an_main_language_code, an_main_culture_code, an_f' +
        'iscal_code, an_main_group_id, an_image_id, latitude, longitude, ' +
        'test, search_index, an_birthplace, an_birthplace_code, anagraph6' +
        '4, main_category_id, osm_id, an_description, an_address_number, ' +
        'anag_jguid, anag_deleted, insert_date, update_date, user_insert,' +
        ' jguid, custom_field_1, custom_field_2, custom_field_3, custom_f' +
        'loat_1, custom_float_2, custom_int_1, custom_int_2, supplier_id,' +
        ' vessel_id, an_country_id, an_iso_country_code2, deleted, an_gro' +
        'up_id, an_credit_limit, an_credit, shipment_name, shipment_posta' +
        'l_code, shipment_town, shipment_address, shipment_phone, shipmen' +
        't_state_province, billing_name, billing_postal_code, billing_tow' +
        'n, billing_address, billing_phone, billing_state_province FROM a' +
        'nagraph.anagraphs_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_title, an_name, an_second_n' +
        'ame, an_last_name, an_notes, an_address, an_town, an_postal_code' +
        ', an_iso_country_code, an_state_province, an_phone, an_phone2, a' +
        'n_fax, an_cellular, an_code, an_vat_numeric, an_email, an_web, a' +
        'n_contact_id, an_bank_account, an_payment_des, an_discount, an_d' +
        'istance, an_distance_mesunit, an_sex, an_cod_comune, an_cod_prov' +
        'incia, an_credit_line, an_currency_id, an_cat_id, an_notes2, an_' +
        'notes3, an_edi, an_privacy, an_office_id, an_cod_prov_rif, an_da' +
        'ta_fido, an_user_insert, an_user_update, an_area_id, an_agent_id' +
        ', an_area_code, an_zone_id, an_ins_id, an_upd_id, an_documents, ' +
        'an_last_date, an_birthdate, an_office_type_id, an_searchname, an' +
        '_extra_ue_flag, an_external_code, an_vat_id, an_personal_fiscal_' +
        'code, an_privacy_print, an_sms, an_encrypted_fiscal_code, an_vat' +
        '_purcentage, an_status, an_ownsite, an_insurance_id, an_anagraph' +
        's_anagraph_id, an_main_language_code, an_main_culture_code, an_f' +
        'iscal_code, an_main_group_id, an_image_id, latitude, longitude, ' +
        'test, search_index, an_birthplace, an_birthplace_code, anagraph6' +
        '4, main_category_id, osm_id, an_description, an_address_number, ' +
        'anag_jguid, anag_deleted, insert_date, update_date, user_insert,' +
        ' jguid, custom_field_1, custom_field_2, custom_field_3, custom_f' +
        'loat_1, custom_float_2, custom_int_1, custom_int_2, supplier_id,' +
        ' vessel_id, an_country_id, an_iso_country_code2, deleted, an_gro' +
        'up_id, an_credit_limit, an_credit, shipment_name, shipment_posta' +
        'l_code, shipment_town, shipment_address, shipment_phone, shipmen' +
        't_state_province, billing_name, billing_postal_code, billing_tow' +
        'n, billing_address, billing_phone, billing_state_province'
      #9'FROM anagraph.anagraphs_view'
      'WHERE'
      '  anagraph_id = :office_id'
      '')
    Left = 72
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'office_id'
        Value = nil
      end>
    object qryOfficedb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryOfficeanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryOfficean_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryOfficean_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryOfficean_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryOfficean_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryOfficean_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryOfficean_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryOfficean_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryOfficean_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryOfficean_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryOfficean_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qryOfficean_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryOfficean_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryOfficean_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qryOfficean_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryOfficean_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryOfficean_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qryOfficean_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryOfficean_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryOfficean_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryOfficean_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryOfficean_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryOfficean_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryOfficean_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryOfficean_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryOfficean_sex: TWideStringField
      FieldName = 'an_sex'
      Size = 1
    end
    object qryOfficean_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryOfficean_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryOfficean_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryOfficean_currency_id: TSmallintField
      FieldName = 'an_currency_id'
    end
    object qryOfficean_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryOfficean_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryOfficean_notes3: TWideStringField
      FieldName = 'an_notes3'
      Size = 1024
    end
    object qryOfficean_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryOfficean_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryOfficean_office_id: TIntegerField
      FieldName = 'an_office_id'
    end
    object qryOfficean_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryOfficean_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryOfficean_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryOfficean_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryOfficean_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryOfficean_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryOfficean_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryOfficean_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryOfficean_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryOfficean_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryOfficean_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryOfficean_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryOfficean_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryOfficean_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryOfficean_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryOfficean_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryOfficean_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryOfficean_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryOfficean_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryOfficean_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryOfficean_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryOfficean_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryOfficean_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryOfficean_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryOfficean_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryOfficean_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryOfficean_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryOfficean_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qryOfficean_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qryOfficean_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryOfficean_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
    end
    object qryOfficean_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryOfficelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryOfficelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryOfficetest: TFloatField
      FieldName = 'test'
    end
    object qryOfficesearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryOfficean_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryOfficean_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryOfficeanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qryOfficemain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qryOfficeosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qryOfficean_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qryOfficean_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qryOfficeanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Size = 40
    end
    object qryOfficeanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object fldOfficeinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object fldOfficeupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryOfficeuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryOfficejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryOfficecustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryOfficecustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryOfficecustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryOfficecustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qryOfficecustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qryOfficecustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryOfficecustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryOfficesupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryOfficevessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qryOfficean_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qryOfficean_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qryOfficedeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryOfficean_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qryOfficean_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
    end
    object qryOfficean_credit: TBooleanField
      FieldName = 'an_credit'
    end
    object qryOfficeshipment_name: TWideStringField
      FieldName = 'shipment_name'
      Size = 128
    end
    object qryOfficeshipment_postal_code: TWideStringField
      FieldName = 'shipment_postal_code'
    end
    object qryOfficeshipment_town: TWideStringField
      FieldName = 'shipment_town'
      Size = 128
    end
    object qryOfficeshipment_address: TWideStringField
      FieldName = 'shipment_address'
      Size = 256
    end
    object qryOfficeshipment_phone: TWideStringField
      FieldName = 'shipment_phone'
      Size = 30
    end
    object qryOfficeshipment_state_province: TWideStringField
      FieldName = 'shipment_state_province'
      Size = 30
    end
    object qryOfficebilling_name: TWideStringField
      FieldName = 'billing_name'
      Size = 128
    end
    object qryOfficebilling_postal_code: TWideStringField
      FieldName = 'billing_postal_code'
    end
    object qryOfficebilling_town: TWideStringField
      FieldName = 'billing_town'
      Size = 128
    end
    object qryOfficebilling_address: TWideStringField
      FieldName = 'billing_address'
      Size = 256
    end
    object qryOfficebilling_phone: TWideStringField
      FieldName = 'billing_phone'
      Size = 30
    end
    object qryOfficebilling_state_province: TWideStringField
      FieldName = 'billing_state_province'
      Size = 30
    end
  end
  object qryUsers: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs_view'
      
        '  (db_schema_id, anagraph_id, an_name, an_last_name, an_address,' +
        ' an_town, an_postal_code, an_phone, an_cellular, an_email,'
      '   an_main_group_id, an_office_id)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_name, :an_last_name, :an_add' +
        'ress, :an_town, :an_postal_code, :an_phone, :an_cellular, :an_em' +
        'ail,'
      '   :an_main_group_id, :an_office_id)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_n' +
        'ame = :an_name, an_last_name = :an_last_name, an_town = :an_town' +
        ', an_postal_code = :an_postal_code, an_cellular = :an_cellular, ' +
        'an_email = :an_email'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_name, an_last_name, an_town' +
        ', an_postal_code, an_cellular, an_email FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    DataTypeMap = <
      item
        DBType = 508
        DBLengthMin = 256
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_last_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_email'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address_number'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_full_address'
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'an_town'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_state_province'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_postal_code'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      
        '   jguid, anagraph_id, an_name, an_last_name, an_address, an_cel' +
        'lular, an_email,  '
      
        '   an_main_group_id, an_office_id, an_address, an_address_number' +
        ', an_full_address, an_town, '
      '   an_state_province, an_postal_code'
      'from '
      '  anagraph.anagraphs'
      'where '
      '  an_office_id = :office_id'
      '  and'
      '  an_main_group_id = 28'
      'union '
      'select '
      #39'{00000000-0000-0000-0000-000000000000}'#39', 0'
      
        ', '#39#39'::character varying, '#39#39', '#39#39', '#39#39', '#39#39',  0, 0, '#39#39', '#39#39', '#39#39', '#39#39', ' +
        #39#39', '#39#39
      'order by an_last_name, an_name'
      '')
    Left = 72
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 253911
      end>
    object qryUsersjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryUsersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryUsersan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryUsersan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryUsersan_address: TWideStringField
      FieldName = 'an_address'
      Size = 128
    end
    object qryUsersan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryUsersan_email: TWideStringField
      FieldName = 'an_email'
      Size = 128
    end
    object qryUsersan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qryUsersan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryUsersan_address_1: TWideMemoField
      FieldName = 'an_address_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryUsersan_address_number: TWideStringField
      FieldName = 'an_address_number'
      ReadOnly = True
      Size = 128
    end
    object qryUsersan_full_address: TWideStringField
      FieldName = 'an_full_address'
      ReadOnly = True
      Size = 256
    end
    object qryUsersan_town: TWideStringField
      FieldName = 'an_town'
      ReadOnly = True
      Size = 128
    end
    object qryUsersan_state_province: TWideStringField
      FieldName = 'an_state_province'
      ReadOnly = True
      Size = 128
    end
    object qryUsersan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      ReadOnly = True
      Size = 128
    end
  end
  object qryBookingList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.booking_head_view'
      
        '  (id, office_id, jguid, db_schema_id, customer_id, state_id, br' +
        'anch_id, vehicle_model, vehicle_color, vehicle_numberplate, bran' +
        'ch_address, branch_postal_code, branch_town, branch_phone, cust_' +
        'first_name, cust_last_name, full_address, cust_cellular, cust_em' +
        'ail)'
      'VALUES'
      
        '  (:id, :office_id, :jguid, :db_schema_id, :customer_id, :state_' +
        'id, :branch_id, :vehicle_model, :vehicle_color, :vehicle_numberp' +
        'late, :branch_address, :branch_postal_code, :branch_town, :branc' +
        'h_phone, :cust_first_name, :cust_last_name, :full_address, :cust' +
        '_cellular, :cust_email)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.booking_head_view'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE carservice.booking_head_view'
      'SET'
      
        '  id = :id, office_id = :office_id, jguid = :jguid, db_schema_id' +
        ' = :db_schema_id, user_insert = :user_insert, insert_date = :ins' +
        'ert_date, customer_id = :customer_id, state_id = :state_id, bran' +
        'ch_id = :branch_id, vehicle_model = :vehicle_model, vehicle_colo' +
        'r = :vehicle_color, vehicle_numberplate = :vehicle_numberplate, ' +
        'pickup_day = :pickup_day, pickup_slot_id = :pickup_slot_id, retu' +
        'rn_day = :return_day, return_slot_id = :return_slot_id, an_last_' +
        'name = :an_last_name, an_vat_id = :an_vat_id, an_address = :an_a' +
        'ddress, an_postal_code = :an_postal_code, an_fiscal_code = :an_f' +
        'iscal_code, an_town = :an_town, service_name = :service_name, se' +
        'rvice_address = :service_address, an_phone = :an_phone, an_email' +
        ' = :an_email, an_cellular = :an_cellular, branch_address = :bran' +
        'ch_address, branch_postal_code = :branch_postal_code, branch_tow' +
        'n = :branch_town, branch_phone = :branch_phone, cust_first_name ' +
        '= :cust_first_name, cust_last_name = :cust_last_name, full_addre' +
        'ss = :full_address, cust_cellular = :cust_cellular, cust_email =' +
        ' :cust_email, pickup_address = :pickup_address, return_address =' +
        ' :return_address, pickup_time = :pickup_time, return_time = :ret' +
        'urn_time, pickup_date = :pickup_date, return_date = :return_date' +
        ', driver1_id = :driver1_id, driver2_id = :driver2_id, driver1_em' +
        'ail = :driver1_email, driver2_email = :driver2_email, driver1_ce' +
        'llular = :driver1_cellular, driver2_cellular = :driver2_cellular' +
        ', pickup_jguid = :pickup_jguid, return_jguid = :return_jguid'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM carservice.booking_head_view'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, office_id, jguid, db_schema_id, user_insert, insert_d' +
        'ate, customer_id, state_id, branch_id, vehicle_model, vehicle_co' +
        'lor, vehicle_numberplate, pickup_day, pickup_slot_id, return_day' +
        ', return_slot_id, an_last_name, an_vat_id, an_address, an_postal' +
        '_code, an_fiscal_code, an_town, service_name, service_address, a' +
        'n_phone, an_email, an_cellular, branch_address, branch_postal_co' +
        'de, branch_town, branch_phone, cust_first_name, cust_last_name, ' +
        'full_address, cust_cellular, cust_email, pickup_address, return_' +
        'address, pickup_time, return_time, pickup_date, return_date, dri' +
        'ver1_id, driver2_id, driver1_email, driver2_email, driver1_cellu' +
        'lar, driver2_cellular, pickup_jguid, return_jguid FROM carservic' +
        'e.booking_head_view'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.booking_head_view'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'insert_date'
        FieldType = ftDateTime
      end
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 2048
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.booking_head_view'
      'where office_id = :office_id'
      'order by id desc'
      '')
    BeforeOpen = qryBookingListBeforeOpen
    Left = 72
    Top = 336
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 253911
      end>
    object qryBookingListid: TLargeintField
      FieldName = 'id'
    end
    object qryBookingListoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryBookingListjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryBookingListdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBookingListuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryBookingListinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryBookingListcustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryBookingListstate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryBookingListbranch_id: TIntegerField
      FieldName = 'branch_id'
    end
    object qryBookingListvehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryBookingListvehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryBookingListvehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryBookingListpickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryBookingListpickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryBookingListreturn_day: TDateField
      FieldName = 'return_day'
    end
    object qryBookingListreturn_slot_id: TSmallintField
      FieldName = 'return_slot_id'
    end
    object qryBookingListan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryBookingListan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryBookingListan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryBookingListan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryBookingListan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryBookingListan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryBookingListservice_name: TWideStringField
      FieldName = 'service_name'
      Size = 128
    end
    object qryBookingListservice_address: TWideStringField
      FieldName = 'service_address'
      Size = 4096
    end
    object qryBookingListan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryBookingListan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryBookingListan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryBookingListbranch_address: TWideStringField
      FieldName = 'branch_address'
      Size = 256
    end
    object qryBookingListbranch_postal_code: TWideStringField
      FieldName = 'branch_postal_code'
    end
    object qryBookingListbranch_town: TWideStringField
      FieldName = 'branch_town'
      Size = 128
    end
    object qryBookingListbranch_phone: TWideStringField
      FieldName = 'branch_phone'
      Size = 30
    end
    object qryBookingListcust_first_name: TWideStringField
      FieldName = 'cust_first_name'
      Size = 128
    end
    object qryBookingListcust_last_name: TWideStringField
      FieldName = 'cust_last_name'
      Size = 128
    end
    object qryBookingListfull_address: TWideStringField
      FieldName = 'full_address'
      Size = 256
    end
    object qryBookingListcust_cellular: TWideStringField
      FieldName = 'cust_cellular'
    end
    object qryBookingListcust_email: TWideStringField
      FieldName = 'cust_email'
      Size = 256
    end
    object qryBookingListpickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 4096
    end
    object qryBookingListreturn_address: TWideStringField
      FieldName = 'return_address'
      Size = 4096
    end
    object qryBookingListpickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryBookingListreturn_time: TWideStringField
      FieldName = 'return_time'
      Size = 6
    end
    object qryBookingListpickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryBookingListreturn_date: TDateField
      FieldName = 'return_date'
    end
    object qryBookingListdriver1_id: TIntegerField
      FieldName = 'driver1_id'
    end
    object qryBookingListdriver2_id: TIntegerField
      FieldName = 'driver2_id'
    end
    object qryBookingListdriver1_email: TWideStringField
      FieldName = 'driver1_email'
      Size = 256
    end
    object qryBookingListdriver2_email: TWideStringField
      FieldName = 'driver2_email'
      Size = 256
    end
    object qryBookingListdriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryBookingListdriver2_cellular: TWideStringField
      FieldName = 'driver2_cellular'
    end
    object qryBookingListpickup_jguid: TGuidField
      FieldName = 'pickup_jguid'
      Size = 38
    end
    object qryBookingListreturn_jguid: TGuidField
      FieldName = 'return_jguid'
      Size = 38
    end
    object qryBookingListpickup2_address: TWideStringField
      FieldName = 'pickup2_address'
      Size = 4096
    end
    object qryBookingListreturn2_address: TWideStringField
      FieldName = 'return2_address'
      Size = 4096
    end
    object qryBookingListpickup_slot_delivery: TWideStringField
      FieldName = 'pickup_slot_delivery'
      Size = 12
    end
    object qryBookingListreturn_slot_delivery: TWideStringField
      FieldName = 'return_slot_delivery'
      Size = 12
    end
  end
  object qryCurrentAccount: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.current_accounts'
      'where anagraph_id = :office_id ')
    BeforeOpen = qryCurrentAccountBeforeOpen
    Left = 200
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 253911
      end>
    object qryCurrentAccountjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryCurrentAccountid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryCurrentAccountanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryCurrentAccountdescription: TWideStringField
      FieldName = 'description'
      Size = 256
    end
    object qryCurrentAccountaccounting_date: TDateField
      FieldName = 'accounting_date'
    end
    object qryCurrentAccountvalue_date: TDateField
      FieldName = 'value_date'
    end
    object qryCurrentAccountdebit: TCurrencyField
      FieldName = 'debit'
      Required = True
    end
    object qryCurrentAccountcredit: TCurrencyField
      FieldName = 'credit'
      Required = True
    end
    object qryCurrentAccountbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
  end
  object qryAccountFunding: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs_view'
      
        '  (db_schema_id, anagraph_id, an_name, an_last_name, an_address,' +
        ' an_town, an_postal_code, an_phone, an_cellular, an_email,'
      '   an_main_group_id, an_office_id)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_name, :an_last_name, :an_add' +
        'ress, :an_town, :an_postal_code, :an_phone, :an_cellular, :an_em' +
        'ail,'
      '   :an_main_group_id, :an_office_id)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_n' +
        'ame = :an_name, an_last_name = :an_last_name, an_town = :an_town' +
        ', an_postal_code = :an_postal_code, an_cellular = :an_cellular, ' +
        'an_email = :an_email'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_name, an_last_name, an_town' +
        ', an_postal_code, an_cellular, an_email FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    DataTypeMap = <
      item
        DBType = 508
        DBLengthMin = 256
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_last_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_email'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address_number'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_full_address'
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'an_town'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_state_province'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_postal_code'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT carservice.account_funding(:p_customer_id, :p_amount)')
    Left = 200
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_customer_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftCurrency
        Name = 'p_amount'
        ParamType = ptInput
        Value = nil
      end>
    object qryAccountFundingaccount_funding: TCurrencyField
      FieldName = 'account_funding'
      ReadOnly = True
    end
  end
  object qryAccountBalance: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs_view'
      
        '  (db_schema_id, anagraph_id, an_name, an_last_name, an_address,' +
        ' an_town, an_postal_code, an_phone, an_cellular, an_email,'
      '   an_main_group_id, an_office_id)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_name, :an_last_name, :an_add' +
        'ress, :an_town, :an_postal_code, :an_phone, :an_cellular, :an_em' +
        'ail,'
      '   :an_main_group_id, :an_office_id)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_n' +
        'ame = :an_name, an_last_name = :an_last_name, an_town = :an_town' +
        ', an_postal_code = :an_postal_code, an_cellular = :an_cellular, ' +
        'an_email = :an_email'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_name, an_last_name, an_town' +
        ', an_postal_code, an_cellular, an_email FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    DataTypeMap = <
      item
        DBType = 508
        DBLengthMin = 256
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_cellular'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_last_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_email'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_address_number'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_full_address'
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'an_town'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_state_province'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_postal_code'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * from carservice.account_balance(:p_office_id)')
    Left = 200
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_office_id'
        ParamType = ptInput
        Value = 253911
      end>
    object qryAccountBalanceaccount_balance: TCurrencyField
      FieldName = 'account_balance'
      ReadOnly = True
    end
  end
end
