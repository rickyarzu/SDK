inherited dmPgPlannerStorage: TdmPgPlannerStorage
  Height = 301
  Width = 413
  inherited PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
      end
      item
        DBType = 518
        FieldType = ftDateTime
      end>
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryAnagraphs: TUniQuery
    KeyFields = 'anagraph_id'
    SQLInsert.Strings = (
      'INSERT INTO anagraph.anagraphs'
      
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
        'sel_id, an_country_id, an_iso_country_code2)'
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
        'ountry_code2)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.anagraphs'
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
        ' :an_iso_country_code2'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
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
        ' vessel_id, an_country_id, an_iso_country_code2 FROM anagraph.an' +
        'agraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'an_full_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select a.*, i.*, a.an_name || '#39' '#39' || a.an_last_name as an_full_n' +
        'ame'
      'from anagraph.anagraphs a, anagraph.identities i '
      'where '
      'a.anagraph_id = i.anagraph_id'
      'and'
      '(a.db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      '(i.an_group_id = :p_group_id or :p_group_id = 0)'
      'and'
      
        '(upper(search_index) like upper(:p_search_name) or :p_search_nam' +
        'e = '#39'%'#39')'
      '-- and'
      
        '-- (upper(an_phone || an_cellular || an_fax ) like upper(:p_sear' +
        'ch_phone) or :p_search_phone = '#39'%'#39')'
      '-- and'
      
        '-- (upper(an_email ) like upper(:p_search_email) or :p_search_em' +
        'ail = '#39'%'#39')'
      'and'
      '(a.anagraph_id = :anagraph_id or :anagraph_id = 0)'
      'order by a.an_last_name')
    BeforeOpen = qryAnagraphsBeforeOpen
    BeforePost = qryAnagraphsBeforePost
    OnNewRecord = qryAnagraphsNewRecord
    Left = 72
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 34
      end
      item
        DataType = ftInteger
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 21
      end
      item
        DataType = ftWideString
        Name = 'p_search_name'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 0
      end>
    object qryAnagraphsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryAnagraphsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryAnagraphsan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryAnagraphsan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryAnagraphsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryAnagraphsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryAnagraphsan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryAnagraphsan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryAnagraphsan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryAnagraphsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryAnagraphsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryAnagraphsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qryAnagraphsan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryAnagraphsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryAnagraphsan_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qryAnagraphsan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryAnagraphsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryAnagraphsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 128
    end
    object qryAnagraphsan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryAnagraphsan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryAnagraphsan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryAnagraphsan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryAnagraphsan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryAnagraphsan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryAnagraphsan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryAnagraphsan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryAnagraphsan_sex: TWideStringField
      FieldName = 'an_sex'
      Size = 1
    end
    object qryAnagraphsan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryAnagraphsan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryAnagraphsan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryAnagraphsan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
    end
    object qryAnagraphsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryAnagraphsan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryAnagraphsan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryAnagraphsan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryAnagraphsan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryAnagraphsan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryAnagraphsan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryAnagraphsan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryAnagraphsan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryAnagraphsan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryAnagraphsan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryAnagraphsan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryAnagraphsan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryAnagraphsan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryAnagraphsan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryAnagraphsan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryAnagraphsan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryAnagraphsan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryAnagraphsan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryAnagraphsan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryAnagraphsan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryAnagraphsan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryAnagraphsan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryAnagraphsan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryAnagraphsan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryAnagraphsan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryAnagraphsan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryAnagraphsan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryAnagraphsan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryAnagraphsan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryAnagraphsan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryAnagraphsan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryAnagraphsan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryAnagraphsan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qryAnagraphsan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qryAnagraphsan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryAnagraphsan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
    end
    object qryAnagraphsan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryAnagraphslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryAnagraphslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryAnagraphstest: TFloatField
      FieldName = 'test'
    end
    object qryAnagraphssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryAnagraphsan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryAnagraphsan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryAnagraphsanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qryAnagraphsmain_category_id: TSmallintField
      FieldName = 'main_category_id'
    end
    object qryAnagraphsosm_id: TLargeintField
      FieldName = 'osm_id'
    end
    object qryAnagraphsan_description: TWideStringField
      FieldName = 'an_description'
      Size = 512
    end
    object qryAnagraphsan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qryAnagraphsanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Size = 40
    end
    object qryAnagraphsanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qryAnagraphsinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryAnagraphsupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryAnagraphsuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryAnagraphsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryAnagraphscustom_field_1: TWideStringField
      FieldName = 'custom_field_1'
      Size = 128
    end
    object qryAnagraphscustom_field_2: TWideStringField
      FieldName = 'custom_field_2'
      Size = 128
    end
    object qryAnagraphscustom_field_3: TWideStringField
      FieldName = 'custom_field_3'
      Size = 128
    end
    object qryAnagraphscustom_float_1: TFloatField
      FieldName = 'custom_float_1'
    end
    object qryAnagraphscustom_float_2: TFloatField
      FieldName = 'custom_float_2'
    end
    object qryAnagraphscustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryAnagraphscustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryAnagraphssupplier_id: TIntegerField
      FieldName = 'supplier_id'
    end
    object qryAnagraphsvessel_id: TSmallintField
      FieldName = 'vessel_id'
    end
    object qryAnagraphsan_country_id: TIntegerField
      FieldName = 'an_country_id'
    end
    object qryAnagraphsan_iso_country_code2: TWideStringField
      FieldName = 'an_iso_country_code2'
      FixedChar = True
      Size = 2
    end
    object qryAnagraphsdb_schema_id_1: TIntegerField
      FieldName = 'db_schema_id_1'
    end
    object qryAnagraphsanagraph_id_1: TIntegerField
      FieldName = 'anagraph_id_1'
    end
    object qryAnagraphsan_group_id: TSmallintField
      FieldName = 'an_group_id'
    end
    object qryAnagraphsan_agent_id_1: TIntegerField
      FieldName = 'an_agent_id_1'
    end
    object qryAnagraphsan_agent_group_id: TIntegerField
      FieldName = 'an_agent_group_id'
    end
    object qryAnagraphsan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
    end
    object qryAnagraphsan_credit_days: TSmallintField
      FieldName = 'an_credit_days'
    end
    object qryAnagraphsan_credit: TBooleanField
      FieldName = 'an_credit'
    end
    object qryAnagraphsan_credit_notes: TWideStringField
      FieldName = 'an_credit_notes'
      Size = 128
    end
    object qryAnagraphsan_credit_used: TFloatField
      FieldName = 'an_credit_used'
    end
    object qryAnagraphsan_overdue_credit: TFloatField
      FieldName = 'an_overdue_credit'
    end
    object qryAnagraphsadnt_jguid: TWideStringField
      FieldName = 'adnt_jguid'
      Size = 40
    end
    object qryAnagraphsadnt_deleted: TBooleanField
      FieldName = 'adnt_deleted'
    end
    object qryAnagraphsjguid_1: TGuidField
      FieldName = 'jguid_1'
      Size = 38
    end
    object qryAnagraphsan_full_name: TWideStringField
      FieldName = 'an_full_name'
      ReadOnly = True
      Size = 128
    end
  end
  object qryActivitiesGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO planner.activities_groups'
      '  (name, jguid, db_schema_id)'
      'VALUES'
      '  (:name, :jguid, :db_schema_id)')
    SQLDelete.Strings = (
      'DELETE FROM planner.activities_groups'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE planner.activities_groups'
      'SET'
      '  name = :name, jguid = :jguid, db_schema_id = :db_schema_id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM planner.activities_groups'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT name, jguid, db_schema_id FROM planner.activities_groups'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM planner.activities_groups'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'tjguid'
        FieldType = ftString
        FieldLength = 40
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT g.*, '#39'{'#39' || jguid::character varying ||'#39'}'#39' as tjguid'
      #9'FROM planner.activities_groups g'
      'WHERE'
      '  g.db_schema_id = :db_schema_id'
      #9'order by g.name')
    AfterOpen = qryActivitiesGroupsAfterOpen
    BeforePost = qryActivitiesGroupsBeforePost
    OnNewRecord = qryActivitiesGroupsNewRecord
    Left = 176
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 34
      end>
    object qryActivitiesGroupsname: TWideStringField
      FieldName = 'name'
      Required = True
      Size = 128
    end
    object qryActivitiesGroupsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryActivitiesGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryActivitiesGroupstjguid: TStringField
      FieldName = 'tjguid'
      Size = 40
    end
  end
  object dsAnagraph: TUniDataSource
    DataSet = qryAnagraphs
    Left = 72
    Top = 200
  end
  object dsActivitiesGroups: TUniDataSource
    DataSet = qryActivitiesGroups
    Left = 176
    Top = 96
  end
  object qryActivities: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO planner.activities'
      '  (name, jguid, master_jguid, db_schema_id)'
      'VALUES'
      '  (:name, :jguid, :master_jguid, :db_schema_id)')
    SQLDelete.Strings = (
      'DELETE FROM planner.activities'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE planner.activities'
      'SET'
      
        '  name = :name, jguid = :jguid, master_jguid = :master_jguid, db' +
        '_schema_id = :db_schema_id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM planner.activities'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT name, jguid, master_jguid, db_schema_id FROM planner.acti' +
        'vities'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM planner.activities'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'tjguid'
        FieldType = ftString
        FieldLength = 40
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT a.*,  '#39'{'#39' || a.jguid::character varying ||'#39'}'#39' as tjguid'
      #9'FROM planner.activities a'
      '        where master_jguid = :jguid'
      #9'order by a.name')
    MasterSource = dsActivitiesGroups
    MasterFields = 'jguid'
    DetailFields = 'master_jguid'
    BeforePost = qryActivitiesBeforePost
    OnNewRecord = qryActivitiesNewRecord
    Left = 176
    Top = 160
    ParamData = <
      item
        DataType = ftGuid
        Name = 'jguid'
        Value = nil
      end>
    object qryActivitiesname: TWideStringField
      FieldName = 'name'
      Size = 128
    end
    object qryActivitiesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryActivitiesmaster_jguid: TGuidField
      FieldName = 'master_jguid'
      Required = True
      Size = 38
    end
    object qryActivitiesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryActivitiestjguid: TStringField
      FieldName = 'tjguid'
      Size = 40
    end
  end
  object dsActivities: TUniDataSource
    DataSet = qryActivities
    Left = 176
    Top = 224
  end
  object qryTimeTable: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO planner.timetable'
      
        '  (jguid, anagraph_id, starttime, endtime, notes, subject, image' +
        ', color, activity_group_jguid, activity_jguid, db_schema_id, tmt' +
        '_jguid, caption)'
      'VALUES'
      
        '  (:jguid, :anagraph_id, :starttime, :endtime, :notes, :subject,' +
        ' :image, :color, :activity_group_jguid, :activity_jguid, :db_sch' +
        'ema_id, :tmt_jguid, :caption)')
    SQLDelete.Strings = (
      'DELETE FROM planner.timetable'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE planner.timetable'
      'SET'
      
        '  jguid = :jguid, anagraph_id = :anagraph_id, starttime = :start' +
        'time, endtime = :endtime, notes = :notes, subject = :subject, im' +
        'age = :image, color = :color, activity_group_jguid = :activity_g' +
        'roup_jguid, activity_jguid = :activity_jguid, db_schema_id = :db' +
        '_schema_id, tmt_jguid = :tmt_jguid, caption = :caption'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM planner.timetable'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT jguid, anagraph_id, starttime, endtime, notes, subject, i' +
        'mage, color, activity_group_jguid, activity_jguid, db_schema_id,' +
        ' tmt_jguid, caption FROM planner.timetable'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM planner.timetable'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'starttime'
        FieldType = ftDateTime
      end
      item
        FieldName = 'endtime'
        FieldType = ftDateTime
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT t.*'
      #9'FROM planner.timetable t'
      'WHERE'
      '  t.db_schema_id = :db_schema_id'
      '  and '
      '  t.anagraph_id = :anagraph_id '
      'order by '
      '   t.starttime')
    MasterSource = dsAnagraph
    MasterFields = 'anagraph_id'
    DetailFields = 'anagraph_id'
    BeforePost = qryTimeTableBeforePost
    OnNewRecord = qryTimeTableNewRecord
    Left = 264
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 34
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 251768
      end>
    object qryTimeTablejguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryTimeTableanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryTimeTablestarttime: TDateTimeField
      FieldName = 'starttime'
    end
    object qryTimeTableendtime: TDateTimeField
      FieldName = 'endtime'
    end
    object qryTimeTablenotes: TWideMemoField
      FieldName = 'notes'
      BlobType = ftWideMemo
    end
    object qryTimeTablesubject: TWideStringField
      FieldName = 'subject'
      Size = 50
    end
    object qryTimeTableimage: TIntegerField
      FieldName = 'image'
    end
    object qryTimeTablecolor: TLargeintField
      FieldName = 'color'
    end
    object qryTimeTableactivity_group_jguid: TGuidField
      FieldName = 'activity_group_jguid'
      Size = 38
    end
    object qryTimeTableactivity_jguid: TGuidField
      FieldName = 'activity_jguid'
      Size = 38
    end
    object qryTimeTabledb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryTimeTabletmt_jguid: TWideStringField
      FieldName = 'tmt_jguid'
      Size = 40
    end
    object qryTimeTablecaption: TBooleanField
      FieldName = 'caption'
    end
  end
  object dsTimeTable: TUniDataSource
    DataSet = qryTimeTable
    Left = 264
    Top = 72
  end
end
