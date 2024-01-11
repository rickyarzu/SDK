inherited dmHealthBooking: TdmHealthBooking
  Height = 669
  Width = 856
  inherited PgErgoConnection: TPgConnection
    Options.LocalFailover = True
    Schema = 'health'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryCompanies: TPgQuery
    KeyFields = 'anagraph_id'
    KeySequence = 'anagraph.an_anagraph_seq'
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
        'l_code, an_main_group_id, an_image_id, latitude, longitude, sear' +
        'ch_index)'
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
        'e, :search_index)')
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
        ', search_index = :search_index'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
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
        'search_index FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select i.an_group_id,  a.* from '
      'anagraph.anagraphs a, anagraph.identities i'
      'where'
      'a.anagraph_id = i.anagraph_id'
      'and'
      'a.db_schema_id in (:p_schema_id, 0)'
      'and'
      'i.an_group_id = :p_group_id'
      'and'
      
        'a.search_index like '#39'%'#39'|| system.nvl(:search::varchar, '#39'%'#39') || '#39 +
        '%'#39)
    IndexFieldNames = 'anagraph_id'
    BeforePost = qryCompaniesBeforePost
    OnNewRecord = qryCompaniesNewRecord
    Left = 776
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_schema_id'
        ParamType = ptInput
        Value = 31
      end
      item
        DataType = ftSmallint
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 6
      end
      item
        DataType = ftWideString
        Name = 'search'
        ParamType = ptInput
        Value = '%'
      end>
    object qryCompaniesan_group_id: TSmallintField
      FieldName = 'an_group_id'
      ReadOnly = True
      Required = True
    end
    object qryCompaniesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryCompaniesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryCompaniesan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryCompaniesan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryCompaniesan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryCompaniesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryCompaniesan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryCompaniesan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryCompaniesan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryCompaniesan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryCompaniesan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qryCompaniesan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryCompaniesan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qryCompaniesan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryCompaniesan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qryCompaniesan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryCompaniesan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryCompaniesan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qryCompaniesan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryCompaniesan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryCompaniesan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryCompaniesan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryCompaniesan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryCompaniesan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryCompaniesan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryCompaniesan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryCompaniesan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qryCompaniesan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryCompaniesan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryCompaniesan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryCompaniesan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qryCompaniesan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryCompaniesan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryCompaniesan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryCompaniesan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryCompaniesan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryCompaniesan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryCompaniesan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryCompaniesan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryCompaniesan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryCompaniesan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryCompaniesan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryCompaniesan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryCompaniesan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryCompaniesan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryCompaniesan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryCompaniesan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryCompaniesan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryCompaniesan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryCompaniesan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryCompaniesan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryCompaniesan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryCompaniesan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryCompaniesan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryCompaniesan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryCompaniesan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryCompaniesan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryCompaniesan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryCompaniesan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryCompaniesan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryCompaniesan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryCompaniesan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryCompaniesan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryCompaniesan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryCompaniesan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qryCompaniesan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qryCompaniesan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryCompaniesan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qryCompaniesan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryCompanieslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryCompanieslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryCompaniestest: TFloatField
      FieldName = 'test'
    end
    object qryCompaniessearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryCompaniesan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryCompaniesan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryCompaniesanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
  end
  object qryInstitutes: TPgQuery
    KeyFields = 'anagraph_id'
    KeySequence = 'anagraph.an_anagraph_seq'
    SQLInsert.Strings = (
      
        'SELECT anagraph.anagraphs_insert(:an_group_id, :db_schema_id, :a' +
        'nagraph_id, :an_title, :an_name, :an_second_name, :an_last_name,' +
        ' :an_notes, :an_address, :an_town, :an_postal_code, :an_iso_coun' +
        'try_code, :an_state_province, :an_phone, :an_phone2, :an_fax, :a' +
        'n_cellular, :an_code, :an_vat_numeric, :an_email, :an_web, :an_c' +
        'ontact_id, :an_bank_account, :an_payment_des, :an_discount, :an_' +
        'distance, :an_distance_mesunit, :an_sex, :an_cod_comune, :an_cod' +
        '_provincia, :an_credit_line, :an_currency_id, :an_cat_id, :an_no' +
        'tes2, :an_notes3, :an_edi, :an_privacy, :an_office_id, :an_cod_p' +
        'rov_rif, :an_data_fido, :an_user_insert, :an_user_update, :an_ar' +
        'ea_id, :an_agent_id, :an_area_code, :an_zone_id, :an_ins_id, :an' +
        '_upd_id, :an_documents, :an_last_date, :an_birthdate, :an_office' +
        '_type_id, :an_searchname, :an_extra_ue_flag, :an_external_code, ' +
        ':an_vat_id, :an_personal_fiscal_code, :an_privacy_print, :an_sms' +
        ', :an_encrypted_fiscal_code, :an_vat_purcentage, :an_status, :an' +
        '_ownsite, :an_insurance_id, :an_anagraphs_anagraph_id, :an_main_' +
        'language_code, :an_main_culture_code, :an_fiscal_code, :an_main_' +
        'group_id, :an_image_id, :latitude, :longitude)')
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
        '_id = :an_image_id, latitude = :latitude, longitude = :longitude'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
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
        'iscal_code, an_main_group_id, an_image_id, latitude, longitude F' +
        'ROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select i.an_group_id,  a.* from '
      'anagraph.anagraphs a, anagraph.identities i'
      'where'
      'a.anagraph_id = i.anagraph_id'
      'and'
      'a.db_schema_id in (:p_schema_id, 0)'
      'and'
      'i.an_group_id = :p_group_id'
      'and'
      'an_contact_id = :anagraph_id')
    MasterFields = 'anagraph_id'
    DetailFields = 'an_contact_id'
    MasterSource = dsCompanies
    AfterOpen = qryInstitutesAfterOpen
    OnNewRecord = qryInstitutesNewRecord
    Left = 776
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_schema_id'
        ParamType = ptInput
        Value = 31
      end
      item
        DataType = ftSmallint
        Name = 'p_group_id'
        ParamType = ptInput
        Value = 7
      end
      item
        DataType = ftUnknown
        Name = 'anagraph_id'
        Value = nil
      end>
    object qryInstitutesan_group_id: TSmallintField
      FieldName = 'an_group_id'
      ReadOnly = True
      Required = True
    end
    object qryInstitutesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryInstitutesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryInstitutesan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryInstitutesan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryInstitutesan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryInstitutesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryInstitutesan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryInstitutesan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryInstitutesan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryInstitutesan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryInstitutesan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qryInstitutesan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryInstitutesan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qryInstitutesan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryInstitutesan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qryInstitutesan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryInstitutesan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryInstitutesan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qryInstitutesan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryInstitutesan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryInstitutesan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryInstitutesan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryInstitutesan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryInstitutesan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryInstitutesan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryInstitutesan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryInstitutesan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qryInstitutesan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryInstitutesan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryInstitutesan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryInstitutesan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qryInstitutesan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryInstitutesan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryInstitutesan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryInstitutesan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryInstitutesan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryInstitutesan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryInstitutesan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryInstitutesan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryInstitutesan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryInstitutesan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryInstitutesan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryInstitutesan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryInstitutesan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryInstitutesan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryInstitutesan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryInstitutesan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryInstitutesan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryInstitutesan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryInstitutesan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryInstitutesan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryInstitutesan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryInstitutesan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryInstitutesan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryInstitutesan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryInstitutesan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryInstitutesan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryInstitutesan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryInstitutesan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryInstitutesan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryInstitutesan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryInstitutesan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryInstitutesan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryInstitutesan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryInstitutesan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qryInstitutesan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qryInstitutesan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryInstitutesan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qryInstitutesan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryInstituteslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryInstituteslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryInstitutestest: TFloatField
      FieldName = 'test'
    end
    object qryInstitutessearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryInstitutesan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryInstitutesan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryInstitutesanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
  end
  object dsCompanies: TDataSource
    DataSet = qryCompanies
    Left = 776
    Top = 152
  end
  object dsInstitutes: TDataSource
    DataSet = qryInstitutes
    Left = 776
    Top = 264
  end
  object qryInstitutesDisciplines: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO health.anagraph_wards'
      '  (anagraph_id, discipline_id, phone, email, main_doctor_id)'
      'VALUES'
      
        '  (:anagraph_id, :discipline_id, :phone, :email, :main_doctor_id' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM health.anagraph_wards'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND discipline_id = :Old_discip' +
        'line_id')
    SQLUpdate.Strings = (
      'UPDATE health.anagraph_wards'
      'SET'
      
        '  anagraph_id = :anagraph_id, discipline_id = :discipline_id, ph' +
        'one = :phone, email = :email, main_doctor_id = :main_doctor_id'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND discipline_id = :Old_discip' +
        'line_id')
    SQLRefresh.Strings = (
      
        'SELECT anagraph_id, discipline_id, phone, email, main_doctor_id ' +
        'FROM health.anagraph_wards'
      'WHERE'
      '  anagraph_id = :anagraph_id AND discipline_id = :discipline_id')
    SQLLock.Strings = (
      'SELECT * FROM health.anagraph_wards'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND discipline_id = :Old_discip' +
        'line_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.anagraph_wards'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select d.discipline_name,  w.*'
      'from health.anagraph_wards w, health.disciplines d'
      'where'
      'w.discipline_id = d.discipline_id'
      'and'
      'w.anagraph_id = :anagraph_id'
      'order by discipline_name')
    MasterFields = 'anagraph_id'
    DetailFields = 'anagraph_id'
    MasterSource = dsInstitutes
    AfterOpen = qryInstitutesDisciplinesAfterOpen
    BeforePost = qryInstitutesDisciplinesBeforePost
    Left = 184
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anagraph_id'
        Value = nil
      end>
    object qryInstitutesDisciplinesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryInstitutesDisciplinesdiscipline_id: TSmallintField
      FieldName = 'discipline_id'
      Required = True
    end
    object qryInstitutesDisciplinesdiscipline_name: TWideStringField
      FieldName = 'discipline_name'
      ReadOnly = True
      Size = 256
    end
    object qryInstitutesDisciplinesphone: TWideStringField
      FieldName = 'phone'
    end
    object qryInstitutesDisciplinesemail: TWideStringField
      FieldName = 'email'
    end
    object qryInstitutesDisciplinesmain_doctor_id: TIntegerField
      FieldName = 'main_doctor_id'
    end
    object qryInstitutesDisciplineslkpDisciplineName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpDisciplineName'
      LookupDataSet = qryLkpDisciplines
      LookupKeyFields = 'discipline_id'
      LookupResultField = 'discipline_name'
      KeyFields = 'discipline_id'
      Size = 256
      Lookup = True
    end
  end
  object dsInstitutesDisciplines: TDataSource
    DataSet = qryInstitutesDisciplines
    Left = 184
    Top = 176
  end
  object qryLkpItems: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'model'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select id, model || '#39' - '#39' ||  code as model'
      'from items.definitions'
      'where'
      'type_id = 1'
      'order by model')
    ReadOnly = True
    Options.QueryRecCount = True
    Left = 304
    Top = 80
    object qryLkpItemsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryLkpItemsmodel: TWideStringField
      FieldName = 'model'
      ReadOnly = True
      Size = 256
    end
  end
  object qryInstitutesServices: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'description'
        FieldType = ftWideString
        FieldLength = 2048
      end>
    SQLInsert.Strings = (
      'INSERT INTO health.anagraph_wards_services'
      
        '  (id, anagraph_id, discipline_id, title, description, item_id, ' +
        'specification)'
      'VALUES'
      
        '  (:id, :anagraph_id, :discipline_id, :title, :description, :ite' +
        'm_id, :specification)')
    SQLDelete.Strings = (
      'DELETE FROM health.anagraph_wards_services'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE health.anagraph_wards_services'
      'SET'
      
        '  id = :id, anagraph_id = :anagraph_id, discipline_id = :discipl' +
        'ine_id, title = :title, description = :description, item_id = :i' +
        'tem_id, specification = :specification'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, anagraph_id, discipline_id, title, description, item_' +
        'id, specification FROM health.anagraph_wards_services'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM health.anagraph_wards_services'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.anagraph_wards_services'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM health.anagraph_wards_services s'
      '  where'
      '  s.anagraph_id = :anagraph_id'
      '  and '
      '  s.discipline_id = :discipline_id')
    MasterFields = 'anagraph_id;discipline_id'
    DetailFields = 'anagraph_id;discipline_id'
    MasterSource = dsInstitutesDisciplines
    BeforePost = qryInstitutesServicesBeforePost
    Left = 184
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'discipline_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryInstitutesServicesid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryInstitutesServicesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryInstitutesServicesdiscipline_id: TSmallintField
      FieldName = 'discipline_id'
      Required = True
    end
    object qryInstitutesServicesitem_id: TLargeintField
      FieldName = 'item_id'
    end
    object qryInstitutesServiceslkpItem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpItem'
      LookupDataSet = qryLkpItems
      LookupKeyFields = 'id'
      LookupResultField = 'model'
      KeyFields = 'item_id'
      Size = 256
      Lookup = True
    end
    object qryInstitutesServicestitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 256
    end
    object qryInstitutesServicesspeciality: TWideStringField
      FieldName = 'speciality'
      Size = 1024
    end
    object qryInstitutesServicesspecification: TWideStringField
      FieldName = 'specification'
      Size = 256
    end
    object qryInstitutesServicesdescription: TWideStringField
      FieldName = 'description'
      Size = 2048
    end
  end
  object dsInstitutesServices: TDataSource
    DataSet = qryInstitutesServices
    Left = 184
    Top = 288
  end
  object qrySearch: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'prestazione'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select distinct * from'
      '('
      'select'
      'discipline_name as disciplina, '
      #39#39' as prestazione, '
      #39#39' as esame '
      'from health.disciplines'
      'union'
      'select'
      'd.discipline_name as disciplina, '
      'i.model as prestazione, '
      #39#39' as esame '
      'from '
      
        'health.disciplines d, items.definitions i, health.disciplines_se' +
        'rvices s'
      'where'
      'i.id = s.item_id and d.discipline_id = s.discipline_id'
      'union'
      'SELECT distinct  '
      'd.discipline_name as disciplina, '
      'Upper(i.title) as prestazione, '
      #39#39' as esame '
      'FROM '
      'health.anagraph_wards_services i, health.disciplines d '
      'where i.item_id is null'
      'and d.discipline_id = i.discipline_id'
      ') a'
      'order by a.disciplina, a.prestazione')
    Left = 304
    Top = 136
    object qrySearchdisciplina: TWideStringField
      FieldName = 'disciplina'
      ReadOnly = True
      Size = 256
    end
    object qrySearchprestazione: TWideStringField
      FieldName = 'prestazione'
      ReadOnly = True
      Size = 1024
    end
    object qrySearchesame: TWideMemoField
      FieldName = 'esame'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object dsSearch: TDataSource
    DataSet = qrySearchServices
    Left = 424
    Top = 416
  end
  object qrySearchServices: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'prestazione'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'search'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'min(i.id) id, '
      'i.item_id, '
      'd.discipline_id, '
      'discipline_name,'
      'i.title,'
      'i.title as prestazione,'
      'min(i.description) as description, '
      
        'Lower(system.stripstringsearch(i.title, d.discipline_name)) as s' +
        'earch'
      'FROM '
      'health.anagraph_wards_services i, health.disciplines d '
      'where'
      ' d.discipline_id = i.discipline_id'
      'and (i.item_id <> 0 or :check = false)'
      'group by '
      'i.item_id, '
      'd.discipline_id, '
      'discipline_name,'
      'i.title  '
      'order by discipline_id, i.title ')
    Filtered = True
    Filter = 'search like '#39'%'#39
    FilterOptions = [foCaseInsensitive]
    Left = 424
    Top = 168
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'check'
        ParamType = ptInput
        Value = True
      end>
    object qrySearchServicesitem_id: TLargeintField
      FieldName = 'item_id'
      ReadOnly = True
    end
    object qrySearchServicesdiscipline_id: TSmallintField
      FieldName = 'discipline_id'
      ReadOnly = True
    end
    object qrySearchServicesdiscipline_name: TWideStringField
      FieldName = 'discipline_name'
      ReadOnly = True
      Size = 256
    end
    object qrySearchServicessearch: TWideStringField
      FieldName = 'search'
      ReadOnly = True
      Size = 1024
    end
    object qrySearchServicesid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object qrySearchServicestitle: TWideStringField
      FieldName = 'title'
      Required = True
      Size = 1024
    end
    object qrySearchServicesdescription: TWideMemoField
      FieldName = 'description'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qrySearchServicesprestazione: TWideStringField
      FieldName = 'prestazione'
      Required = True
      Size = 1024
    end
  end
  object qrySearchInstitutes: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      
        'jpublic.distance(:latitude, :longitude, a.latitude, a.longitude)' +
        ' as distance,'
      'a.* '
      'from anagraph.anagraphs A'
      'where exists '
      '(select 1 from health.anagraph_wards_services_view v '
      '  where  '
      '         A.ANAGRAPH_ID = v.anagraph_id'
      '         and'
      '         ('
      '         disciplina like '#39'%'#39' || :search  || '#39'%'#39
      '         OR'
      '         prestazione like '#39'%'#39' || :search || '#39'%'#39
      '         )'
      ')'
      
        'ORDER BY jpublic.distance(:latitude, :longitude, a.latitude, a.l' +
        'ongitude)')
    Left = 424
    Top = 224
    ParamData = <
      item
        DataType = ftFloat
        Name = 'latitude'
        Value = 45.437807000000000000
      end
      item
        DataType = ftFloat
        Name = 'longitude'
        Value = 9.200336000000000000
      end
      item
        DataType = ftString
        Name = 'search'
        Value = 'RADIOLOGIA'
      end>
    object qrySearchInstitutesdistance: TFloatField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qrySearchInstitutesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySearchInstitutesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qrySearchInstitutesan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qrySearchInstitutesan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qrySearchInstitutesan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qrySearchInstitutesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qrySearchInstitutesan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qrySearchInstitutesan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qrySearchInstitutesan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qrySearchInstitutesan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qrySearchInstitutesan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qrySearchInstitutesan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qrySearchInstitutesan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qrySearchInstitutesan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qrySearchInstitutesan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qrySearchInstitutesan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qrySearchInstitutesan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qrySearchInstitutesan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qrySearchInstitutesan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qrySearchInstitutesan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qrySearchInstitutesan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qrySearchInstitutesan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qrySearchInstitutesan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qrySearchInstitutesan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qrySearchInstitutesan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qrySearchInstitutesan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qrySearchInstitutesan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qrySearchInstitutesan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qrySearchInstitutesan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qrySearchInstitutesan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qrySearchInstitutesan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qrySearchInstitutesan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qrySearchInstitutesan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qrySearchInstitutesan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qrySearchInstitutesan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qrySearchInstitutesan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qrySearchInstitutesan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qrySearchInstitutesan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qrySearchInstitutesan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qrySearchInstitutesan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qrySearchInstitutesan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qrySearchInstitutesan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qrySearchInstitutesan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qrySearchInstitutesan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qrySearchInstitutesan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qrySearchInstitutesan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qrySearchInstitutesan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qrySearchInstitutesan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qrySearchInstitutesan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qrySearchInstitutesan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qrySearchInstitutesan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qrySearchInstitutesan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qrySearchInstitutesan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qrySearchInstitutesan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qrySearchInstitutesan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qrySearchInstitutesan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qrySearchInstitutesan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qrySearchInstitutesan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qrySearchInstitutesan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qrySearchInstitutesan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qrySearchInstitutesan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qrySearchInstitutesan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qrySearchInstitutesan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qrySearchInstitutesan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qrySearchInstitutesan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qrySearchInstitutesan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qrySearchInstitutesan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qrySearchInstitutesan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qrySearchInstitutesan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qrySearchInstituteslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchInstituteslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchInstitutestest: TFloatField
      FieldName = 'test'
    end
    object qrySearchInstitutessearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qrySearchInstitutesan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qrySearchInstitutesan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qrySearchInstitutesanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
  end
  object dsSearchInstitutes: TDataSource
    DataSet = qrySearchInstitutes
    Left = 424
    Top = 480
  end
  object qrySearchItem: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'prestazione'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'esame'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select distinct * from'
      '('
      'select'
      '2712::integer as item_id, '
      'discipline_name as disciplina, '
      #39'visita generale '#39' || discipline_name  as prestazione, '
      #39#39' as esame '
      'from health.disciplines'
      'union'
      'select'
      'i.id as item_id, '
      'd.discipline_name as disciplina, '
      'i.model as prestazione, '
      #39#39' as esame '
      'from '
      
        'health.disciplines d, items.definitions i, health.disciplines_se' +
        'rvices s'
      'where'
      'i.id = s.item_id and d.discipline_id = s.discipline_id'
      'union'
      'SELECT distinct  '
      'i.id as item_id, '
      'd.discipline_name as disciplina, '
      'i.model as prestazione, '
      's.title as esame '
      'FROM '
      
        'health.anagraph_wards_services s, health.disciplines d, items.de' +
        'finitions i'
      'where i.id = s.item_id'
      'and d.discipline_id = s.discipline_id'
      ') a'
      'where '
      'Upper(a.disciplina) like Upper('#39'%'#39' || :search || '#39'%'#39'  ) or '
      'Upper(a.prestazione)like Upper('#39'%'#39' || :search ||'#39'%'#39' ) or '
      'Upper(a.esame) like Upper('#39'%'#39' || :search || '#39'%'#39' ) '
      'order by a.disciplina, a.prestazione')
    Left = 304
    Top = 192
    ParamData = <
      item
        DataType = ftWideString
        Name = 'search'
        ParamType = ptInput
        Value = 'aber'
      end>
    object qrySearchItemdisciplina: TWideStringField
      FieldName = 'disciplina'
      ReadOnly = True
      Size = 256
    end
    object qrySearchItemprestazione: TWideStringField
      FieldName = 'prestazione'
      ReadOnly = True
      Size = 1024
    end
    object qrySearchItemitem_id: TLargeintField
      FieldName = 'item_id'
      ReadOnly = True
    end
    object qrySearchItemesame: TWideStringField
      FieldName = 'esame'
      ReadOnly = True
      Size = 1024
    end
  end
  object qryLkpDisciplines: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'model'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from health.disciplines order by discipline_name')
    ReadOnly = True
    Options.QueryRecCount = True
    Left = 304
    Top = 248
    object qryLkpDisciplinesdiscipline_id: TSmallintField
      FieldName = 'discipline_id'
      Required = True
    end
    object qryLkpDisciplinesbranch_id: TSmallintField
      FieldName = 'branch_id'
    end
    object qryLkpDisciplinesdiscipline_name: TWideStringField
      FieldName = 'discipline_name'
      Size = 256
    end
  end
  object qryServicesNextVal: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select * from nextval('#39'health.anagraph_wards_services_seq'#39') as n' +
        'extval')
    Left = 184
    Top = 344
    object qryServicesNextValnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object qryAnagraphNextVal: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from nextval('#39'anagraph.an_anagraph_seq'#39') as nextval')
    Left = 184
    Top = 408
    object qryAnagraphNextValnextval: TLargeintField
      FieldName = 'nextval'
      ReadOnly = True
    end
  end
  object qryInstitutesItems: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'an_title'
        FieldType = ftWideString
        FieldLength = 255
        IgnoreErrors = True
      end
      item
        FieldName = 'an_address'
        FieldType = ftWideString
        FieldLength = 255
        IgnoreErrors = True
      end
      item
        FieldName = 'an_last_name'
        FieldType = ftWideString
        FieldLength = 255
        IgnoreErrors = True
      end
      item
        FieldName = 'full_address'
        FieldType = ftWideString
        FieldLength = 1024
        IgnoreErrors = True
      end
      item
        FieldName = 'an_phone'
        FieldType = ftWideString
        FieldLength = 40
        IgnoreErrors = True
      end
      item
        FieldName = 'an_fax'
        FieldType = ftWideString
        FieldLength = 40
        IgnoreErrors = True
      end
      item
        FieldName = 'an_email'
        FieldType = ftWideString
        FieldLength = 255
        IgnoreErrors = True
      end
      item
        FieldName = 'an_postal_code'
        FieldType = ftWideString
        FieldLength = 10
        IgnoreErrors = True
      end
      item
        FieldName = 'an_town'
        FieldType = ftWideString
        FieldLength = 128
        IgnoreErrors = True
      end
      item
        FieldName = 'an_state_province'
        FieldType = ftWideString
        FieldLength = 40
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      '/*'
      'select '
      
        'jpublic.distance(:latitude, :longitude, a.latitude, a.longitude)' +
        ' as distance,'
      'a.* '
      'from anagraph.anagraphs A'
      'where exists '
      '(select 1 from health.anagraph_wards_services v '
      '  where  '
      '         A.ANAGRAPH_ID = v.anagraph_id'
      '         and'
      '         ('
      '         item_id = :item_id'
      '         )'
      ')'
      
        'ORDER BY jpublic.distance(:latitude, :longitude, a.latitude, a.l' +
        'ongitude)'
      ''
      #9'p_item_id integer,'
      #9'p_pagination smallint,'
      #9'p_latitude double precision,'
      #9'p_longitude double precision,'
      #9'p_limit smallint,'
      #9'p_user_id integer,'
      #9'p_session_id bigint)'
      '*/'
      ''
      'SELECT * from health.get_institutes('
      '    :item_id::integer,'
      '    :pagination::smallint,'
      '    :latitude::double precision,'
      '    :longitude::double precision,'
      '    :limit::smallint,'
      '    :user_id::integer, '
      '    :session_id::bigint'
      ');'
      '')
    Left = 304
    Top = 312
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'item_id'
        ParamType = ptInput
        Value = 1282
      end
      item
        DataType = ftSmallint
        Name = 'pagination'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftFloat
        Name = 'latitude'
        Value = 45.450000000000000000
      end
      item
        DataType = ftFloat
        Name = 'longitude'
        Value = 9.190000000000000000
      end
      item
        DataType = ftSmallint
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 10
      end
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 266
      end
      item
        DataType = ftLargeint
        Name = 'session_id'
        ParamType = ptInput
        Value = 12275
      end>
    object qryInstitutesItemsdistance: TFloatField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryInstitutesItemsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
    end
    object qryInstitutesItemsan_title: TWideStringField
      FieldName = 'an_title'
      ReadOnly = True
      Size = 255
    end
    object qryInstitutesItemsan_address: TWideStringField
      FieldName = 'an_address'
      ReadOnly = True
      Size = 255
    end
    object qryInstitutesItemsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      ReadOnly = True
      Size = 255
    end
    object qryInstitutesItemsfull_address: TWideStringField
      FieldName = 'full_address'
      ReadOnly = True
      Size = 1024
    end
    object qryInstitutesItemsan_phone: TWideStringField
      FieldName = 'an_phone'
      ReadOnly = True
      Size = 40
    end
    object qryInstitutesItemsan_fax: TWideStringField
      FieldName = 'an_fax'
      ReadOnly = True
      Size = 40
    end
    object qryInstitutesItemsan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 255
    end
    object qryInstitutesItemsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      ReadOnly = True
      Size = 10
    end
    object qryInstitutesItemsan_town: TWideStringField
      FieldName = 'an_town'
      ReadOnly = True
      Size = 128
    end
    object qryInstitutesItemsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      ReadOnly = True
      Size = 40
    end
    object qryInstitutesItemslatitude: TFloatField
      FieldName = 'latitude'
      ReadOnly = True
    end
    object qryInstitutesItemslongitude: TFloatField
      FieldName = 'longitude'
      ReadOnly = True
    end
    object qryInstitutesItemsid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryInstitutesItemsselected: TBooleanField
      FieldName = 'selected'
    end
  end
  object PgQuery2: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'prestazione'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select distinct * from'
      '('
      '/*'
      'select'
      '0 as item_id, '
      'discipline_id, '
      'discipline_name, '
      'discipline_name as prestazione '
      'from health.disciplines d'
      'union'
      'select'
      'i.id as item_id, '
      'd.discipline_id, '
      'd.discipline_name, '
      'i.model as prestazione'
      'from '
      
        'health.disciplines d, items.definitions i, health.disciplines_se' +
        'rvices s'
      'where'
      'i.id = s.item_id and d.discipline_id = s.discipline_id'
      'union'
      '*/'
      'SELECT distinct  '
      '0 as item_id, '
      'd.discipline_id, '
      'discipline_name ,'
      'Upper(i.title) as prestazione'
      'FROM '
      'health.anagraph_wards_services i, health.disciplines d '
      'where i.item_id is null'
      'and d.discipline_id = i.discipline_id'
      ') a'
      'where (a.item_id <> 0 or :check = false)'
      'order by discipline_id, a.prestazione')
    Filtered = True
    Filter = 'prestazione like '#39'%'#39
    Left = 424
    Top = 104
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'check'
        ParamType = ptInput
        Value = True
      end>
    object PgQuery2item_id: TIntegerField
      FieldName = 'item_id'
      ReadOnly = True
    end
    object PgQuery2discipline_id: TSmallintField
      FieldName = 'discipline_id'
      ReadOnly = True
    end
    object PgQuery2discipline_name: TWideStringField
      FieldName = 'discipline_name'
      ReadOnly = True
      Size = 256
    end
    object PgQuery2prestazione: TWideStringField
      FieldName = 'prestazione'
      ReadOnly = True
      Size = 1024
    end
  end
  object qryBookings: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO health.bookings'
      
        '  (booking_id, db_user_id, db_session_id, discipline_id, item_id' +
        ', book_since, book_until, notes, confirmed, opened, db_operator_' +
        'id, closed, closed_date, sent, sent_date, received, received_dat' +
        'e, active, cancelled_by_user, level, other_person, other_person_' +
        'id, service_id, prescription, relative, search_id, insurance, ag' +
        'reement, operator_notes, user_notes, insert_date, update_date)'
      'VALUES'
      
        '  (:booking_id, :db_user_id, :db_session_id, :discipline_id, :it' +
        'em_id, :book_since, :book_until, :notes, :confirmed, :opened, :d' +
        'b_operator_id, :closed, :closed_date, :sent, :sent_date, :receiv' +
        'ed, :received_date, :active, :cancelled_by_user, :level, :other_' +
        'person, :other_person_id, :service_id, :prescription, :relative,' +
        ' :search_id, :insurance, :agreement, :operator_notes, :user_note' +
        's, :insert_date, :update_date)')
    SQLDelete.Strings = (
      'DELETE FROM health.bookings'
      'WHERE'
      '  booking_id = :Old_booking_id')
    SQLUpdate.Strings = (
      'UPDATE health.bookings'
      'SET'
      
        '  booking_id = :booking_id, db_user_id = :db_user_id, db_session' +
        '_id = :db_session_id, discipline_id = :discipline_id, item_id = ' +
        ':item_id, book_since = :book_since, book_until = :book_until, no' +
        'tes = :notes, confirmed = :confirmed, opened = :opened, db_opera' +
        'tor_id = :db_operator_id, closed = :closed, closed_date = :close' +
        'd_date, sent = :sent, sent_date = :sent_date, received = :receiv' +
        'ed, received_date = :received_date, active = :active, cancelled_' +
        'by_user = :cancelled_by_user, level = :level, other_person = :ot' +
        'her_person, other_person_id = :other_person_id, service_id = :se' +
        'rvice_id, prescription = :prescription, relative = :relative, se' +
        'arch_id = :search_id, insurance = :insurance, agreement = :agree' +
        'ment, operator_notes = :operator_notes, user_notes = :user_notes' +
        ', insert_date = :insert_date, update_date = :update_date'
      'WHERE'
      '  booking_id = :Old_booking_id')
    SQLRefresh.Strings = (
      
        'SELECT booking_id, db_user_id, db_session_id, discipline_id, ite' +
        'm_id, book_since, book_until, notes, confirmed, opened, db_opera' +
        'tor_id, closed, closed_date, sent, sent_date, received, received' +
        '_date, active, cancelled_by_user, level, other_person, other_per' +
        'son_id, service_id, prescription, relative, search_id, insurance' +
        ', agreement, operator_notes, user_notes, insert_date, update_dat' +
        'e FROM health.bookings'
      'WHERE'
      '  booking_id = :booking_id')
    SQLLock.Strings = (
      'SELECT * FROM health.bookings'
      'WHERE'
      '  booking_id = :Old_booking_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.bookings'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      ' b.*,'
      ' u.*, '
      ' w.*,'
      ' p.*, '
      ' d.description as item_description, d.code '
      '  FROM '
      'health.bookings b, system.db_users u, '
      'system.db_users_profiles p, items.definitions d,'
      'health.anagraph_wards_services w'
      'where'
      '  b.db_user_id = u.db_user_id and p.db_user_id = u.db_user_id'
      '  and'
      '  d.id = b.item_id'
      '  and'
      
        '  (db_operator_id is null or db_operator_id = :operator_id or :o' +
        'perator_id = 0)'
      '  and '
      '  (b.booking_id = :booking_id or :booking_id = 0)'
      '  and '
      '  w.id = b.service_id'
      ''
      'order by b.level desc,  b.booking_id desc'
      'limit 20'
      '/*'
      ''
      'SELECT '
      ' b.*,'
      ' u.email, '
      ' w.*,'
      ' p.*, '
      ' u.*,'
      ' d.description as item_description, d.code '
      '  FROM '
      'health.bookings b, system.db_users u, '
      'system.db_users_profiles p, items.definitions d,'
      'health.anagraph_wards_services w '
      '---- va sostituita con la nuova tabella dei servizi ----'
      'where'
      '  b.db_user_id = u.db_user_id and p.db_user_id = u.db_user_id'
      '  and'
      '  d.id = b.item_id'
      '  and'
      
        '  (db_operator_id is null or db_operator_id = :operator_id or :o' +
        'perator_id = 0)'
      '  and '
      '  (b.booking_id = :booking_id or :booking_id = 0)'
      '  and '
      '  w.id = b.service_id'
      ''
      'order by b.booking_id desc'
      'limit 20'
      '*/')
    AfterOpen = qryBookingsAfterOpen
    AfterScroll = qryBookingsAfterScroll
    Left = 544
    Top = 136
    ParamData = <
      item
        DataType = ftInteger
        Name = 'operator_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 3450
      end>
    object qryBookingsbooking_id: TLargeintField
      FieldName = 'booking_id'
      Required = True
    end
    object qryBookingsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qryBookingsdb_session_id: TLargeintField
      FieldName = 'db_session_id'
      Required = True
    end
    object qryBookingsdiscipline_id: TSmallintField
      FieldName = 'discipline_id'
      Required = True
    end
    object qryBookingsitem_id: TLargeintField
      FieldName = 'item_id'
      Required = True
    end
    object qryBookingsbook_since: TDateField
      FieldName = 'book_since'
    end
    object qryBookingsbook_until: TDateField
      FieldName = 'book_until'
    end
    object qryBookingsnotes: TWideStringField
      FieldName = 'notes'
      Size = 2048
    end
    object qryBookingsconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryBookingsopened: TBooleanField
      FieldName = 'opened'
    end
    object qryBookingsdb_operator_id: TIntegerField
      FieldName = 'db_operator_id'
    end
    object qryBookingsclosed: TBooleanField
      FieldName = 'closed'
    end
    object qryBookingsclosed_date: TSQLTimeStampField
      FieldName = 'closed_date'
    end
    object qryBookingssent: TBooleanField
      FieldName = 'sent'
    end
    object qryBookingssent_date: TSQLTimeStampField
      FieldName = 'sent_date'
    end
    object qryBookingsreceived: TBooleanField
      FieldName = 'received'
    end
    object qryBookingsreceived_date: TSQLTimeStampField
      FieldName = 'received_date'
    end
    object qryBookingsactive: TBooleanField
      FieldName = 'active'
    end
    object qryBookingscancelled_by_user: TBooleanField
      FieldName = 'cancelled_by_user'
    end
    object qryBookingslevel: TSmallintField
      FieldName = 'level'
      Required = True
    end
    object qryBookingsother_person: TBooleanField
      FieldName = 'other_person'
    end
    object qryBookingsother_person_id: TIntegerField
      FieldName = 'other_person_id'
    end
    object qryBookingsservice_id: TIntegerField
      FieldName = 'service_id'
    end
    object qryBookingsprescription: TBooleanField
      FieldName = 'prescription'
    end
    object qryBookingsrelative: TBooleanField
      FieldName = 'relative'
    end
    object qryBookingssearch_id: TLargeintField
      FieldName = 'search_id'
    end
    object qryBookingsinsurance: TWideStringField
      FieldName = 'insurance'
      Size = 256
    end
    object qryBookingsagreement: TWideStringField
      FieldName = 'agreement'
      Size = 256
    end
    object qryBookingsoperator_notes: TWideStringField
      FieldName = 'operator_notes'
      Size = 1024
    end
    object qryBookingsuser_notes: TWideStringField
      FieldName = 'user_notes'
      Size = 1024
    end
    object qryBookingsinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object qryBookingsupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
    object qryBookingsbooking64: TWideStringField
      FieldName = 'booking64'
      Required = True
      Size = 64
    end
    object qryBookingsactive_1: TBooleanField
      FieldName = 'active_1'
      ReadOnly = True
      Required = True
    end
    object qryBookingsemail: TWideStringField
      FieldName = 'email'
      ReadOnly = True
      Required = True
      Size = 256
    end
    object qryBookingsdb_user_id_1: TIntegerField
      FieldName = 'db_user_id_1'
      ReadOnly = True
      Required = True
    end
    object qryBookingspassword: TWideStringField
      FieldName = 'password'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryBookingsusername: TWideStringField
      FieldName = 'username'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryBookingsisactive: TBooleanField
      FieldName = 'isactive'
      ReadOnly = True
      Required = True
    end
    object qryBookingsverify_token: TWideStringField
      FieldName = 'verify_token'
      ReadOnly = True
      Required = True
      Size = 256
    end
    object qryBookingsverified: TBooleanField
      FieldName = 'verified'
      ReadOnly = True
      Required = True
    end
    object qryBookingsdefault_schema_id: TIntegerField
      FieldName = 'default_schema_id'
      ReadOnly = True
    end
    object qryBookingsispublic: TBooleanField
      FieldName = 'ispublic'
      ReadOnly = True
    end
    object qryBookingsinternal_key: TWideStringField
      FieldName = 'internal_key'
      ReadOnly = True
      Size = 30
    end
    object qryBookingsdefault_role_id: TSmallintField
      FieldName = 'default_role_id'
      ReadOnly = True
    end
    object qryBookingssearch_name: TWideStringField
      FieldName = 'search_name'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsreverse_search: TWideStringField
      FieldName = 'reverse_search'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsinsert_date_1: TSQLTimeStampField
      FieldName = 'insert_date_1'
      ReadOnly = True
    end
    object qryBookingscountry_id: TSmallintField
      FieldName = 'country_id'
      ReadOnly = True
    end
    object qryBookingsmain_profile_type_id: TSmallintField
      FieldName = 'main_profile_type_id'
      ReadOnly = True
    end
    object qryBookingsmain_profile_id: TWideStringField
      FieldName = 'main_profile_id'
      ReadOnly = True
      Size = 64
    end
    object qryBookingsimage_id: TLargeintField
      FieldName = 'image_id'
      ReadOnly = True
    end
    object qryBookingsimage_url: TWideStringField
      FieldName = 'image_url'
      ReadOnly = True
      Size = 2048
    end
    object qryBookingsiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object qryBookingsiso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      ReadOnly = True
      FixedChar = True
      Size = 5
    end
    object qryBookingsuser_first_name: TWideStringField
      FieldName = 'user_first_name'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsuser_family_name: TWideStringField
      FieldName = 'user_family_name'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsemailsent: TBooleanField
      FieldName = 'emailsent'
      ReadOnly = True
    end
    object qryBookingsemailconfirmed: TBooleanField
      FieldName = 'emailconfirmed'
      ReadOnly = True
    end
    object qryBookingsemaildate: TSQLTimeStampField
      FieldName = 'emaildate'
      ReadOnly = True
    end
    object qryBookingsid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object qryBookingsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryBookingsdiscipline_id_1: TSmallintField
      FieldName = 'discipline_id_1'
      ReadOnly = True
      Required = True
    end
    object qryBookingstitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Required = True
      Size = 1024
    end
    object qryBookingsdescription: TWideMemoField
      FieldName = 'description'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryBookingsitem_id_1: TLargeintField
      FieldName = 'item_id_1'
      ReadOnly = True
    end
    object qryBookingsspecification: TWideStringField
      FieldName = 'specification'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingsspeciality: TWideStringField
      FieldName = 'speciality'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingsold_item_id: TLargeintField
      FieldName = 'old_item_id'
      ReadOnly = True
    end
    object qryBookingssearchstring: TWideStringField
      FieldName = 'searchstring'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingsdb_user_id_2: TIntegerField
      FieldName = 'db_user_id_2'
      ReadOnly = True
      Required = True
    end
    object qryBookingscountry_id_1: TSmallintField
      FieldName = 'country_id_1'
      ReadOnly = True
    end
    object qryBookingsregion_id: TSmallintField
      FieldName = 'region_id'
      ReadOnly = True
    end
    object qryBookingsdistrict_id: TSmallintField
      FieldName = 'district_id'
      ReadOnly = True
    end
    object qryBookingstown_id: TIntegerField
      FieldName = 'town_id'
      ReadOnly = True
    end
    object qryBookingsfirst_name: TWideStringField
      FieldName = 'first_name'
      ReadOnly = True
      Size = 128
    end
    object qryBookingslast_name: TWideStringField
      FieldName = 'last_name'
      ReadOnly = True
      Size = 128
    end
    object qryBookingsaddress_street: TWideStringField
      FieldName = 'address_street'
      ReadOnly = True
      Size = 128
    end
    object qryBookingsaddress_number: TWideStringField
      FieldName = 'address_number'
      ReadOnly = True
      Size = 12
    end
    object qryBookingsaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
      ReadOnly = True
    end
    object qryBookingsphone: TWideStringField
      FieldName = 'phone'
      ReadOnly = True
    end
    object qryBookingscellular_phone: TWideStringField
      FieldName = 'cellular_phone'
      ReadOnly = True
    end
    object qryBookingswork_phone: TWideStringField
      FieldName = 'work_phone'
      ReadOnly = True
    end
    object qryBookingsfax_number: TWideStringField
      FieldName = 'fax_number'
      ReadOnly = True
    end
    object qryBookingsgender_code: TWideStringField
      FieldName = 'gender_code'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryBookingsbirth_date: TDateField
      FieldName = 'birth_date'
      ReadOnly = True
    end
    object qryBookingsbirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
      ReadOnly = True
    end
    object qryBookingsbirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
      ReadOnly = True
    end
    object qryBookingsbirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
      ReadOnly = True
    end
    object qryBookingsbirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
      ReadOnly = True
    end
    object qryBookingspublic_email: TWideStringField
      FieldName = 'public_email'
      ReadOnly = True
      Size = 256
    end
    object qryBookingstitle_1: TWideStringField
      FieldName = 'title_1'
      ReadOnly = True
      Size = 30
    end
    object qryBookingssearch_name_1: TWideStringField
      FieldName = 'search_name_1'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsreverse_search_1: TWideStringField
      FieldName = 'reverse_search_1'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsaddress_full: TWideStringField
      FieldName = 'address_full'
      ReadOnly = True
      Size = 2048
    end
    object qryBookingslatitude: TFloatField
      FieldName = 'latitude'
      ReadOnly = True
    end
    object qryBookingslongitude: TFloatField
      FieldName = 'longitude'
      ReadOnly = True
    end
    object qryBookingsfiscal_code: TWideStringField
      FieldName = 'fiscal_code'
      ReadOnly = True
    end
    object qryBookingssmssent: TBooleanField
      FieldName = 'smssent'
      ReadOnly = True
    end
    object qryBookingssmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
      ReadOnly = True
    end
    object qryBookingssmsdate: TSQLTimeStampField
      FieldName = 'smsdate'
      ReadOnly = True
    end
    object qryBookingssmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      ReadOnly = True
      Size = 4
    end
    object qryBookingsaddress_town: TWideStringField
      FieldName = 'address_town'
      ReadOnly = True
      Size = 256
    end
    object qryBookingsitem_description: TWideStringField
      FieldName = 'item_description'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingscode: TWideStringField
      FieldName = 'code'
      ReadOnly = True
      Size = 60
    end
  end
  object dsBookings: TDataSource
    DataSet = qryBookings
    Left = 544
    Top = 80
  end
  object qryBookingRows: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO health.bookings_rows'
      
        '  (booking_id, anagraph_id, since, until, notes, confirmed, open' +
        'ed, db_operator_id, closed, closed_date, booked, booking_date, b' +
        'ooking_hour, booking_mins, sent, sent_date, received, received_d' +
        'ate, alarm_sent, alarm_read, distance, ck_confirmed, insurance_c' +
        'onfirmed, agreement_confirmed, ck_has_code, ck_code, ck_has_pric' +
        'e, ck_price, ck_fast, ck_different_address, ck_address, ck_has_p' +
        'lace, ck_place, ck_take_list, ck_notes, call_center_notes, inser' +
        't_date, update_date, cancelled)'
      'VALUES'
      
        '  (:booking_id, :anagraph_id, :since, :until, :notes, :confirmed' +
        ', :opened, :db_operator_id, :closed, :closed_date, :booked, :boo' +
        'king_date, :booking_hour, :booking_mins, :sent, :sent_date, :rec' +
        'eived, :received_date, :alarm_sent, :alarm_read, :distance, :ck_' +
        'confirmed, :insurance_confirmed, :agreement_confirmed, :ck_has_c' +
        'ode, :ck_code, :ck_has_price, :ck_price, :ck_fast, :ck_different' +
        '_address, :ck_address, :ck_has_place, :ck_place, :ck_take_list, ' +
        ':ck_notes, :call_center_notes, :insert_date, :update_date, :canc' +
        'elled)')
    SQLDelete.Strings = (
      'DELETE FROM health.bookings_rows'
      'WHERE'
      
        '  booking_id = :Old_booking_id AND anagraph_id = :Old_anagraph_i' +
        'd')
    SQLUpdate.Strings = (
      'UPDATE health.bookings_rows'
      'SET'
      
        '  booking_id = :booking_id, anagraph_id = :anagraph_id, since = ' +
        ':since, until = :until, notes = :notes, confirmed = :confirmed, ' +
        'opened = :opened, db_operator_id = :db_operator_id, closed = :cl' +
        'osed, closed_date = :closed_date, booked = :booked, booking_date' +
        ' = :booking_date, booking_hour = :booking_hour, booking_mins = :' +
        'booking_mins, sent = :sent, sent_date = :sent_date, received = :' +
        'received, received_date = :received_date, alarm_sent = :alarm_se' +
        'nt, alarm_read = :alarm_read, distance = :distance, ck_confirmed' +
        ' = :ck_confirmed, insurance_confirmed = :insurance_confirmed, ag' +
        'reement_confirmed = :agreement_confirmed, ck_has_code = :ck_has_' +
        'code, ck_code = :ck_code, ck_has_price = :ck_has_price, ck_price' +
        ' = :ck_price, ck_fast = :ck_fast, ck_different_address = :ck_dif' +
        'ferent_address, ck_address = :ck_address, ck_has_place = :ck_has' +
        '_place, ck_place = :ck_place, ck_take_list = :ck_take_list, ck_n' +
        'otes = :ck_notes, call_center_notes = :call_center_notes, insert' +
        '_date = :insert_date, update_date = :update_date, cancelled = :c' +
        'ancelled'
      'WHERE'
      
        '  booking_id = :Old_booking_id AND anagraph_id = :Old_anagraph_i' +
        'd')
    SQLRefresh.Strings = (
      
        'SELECT booking_id, anagraph_id, since, until, notes, confirmed, ' +
        'opened, db_operator_id, closed, closed_date, booked, booking_dat' +
        'e, booking_hour, booking_mins, sent, sent_date, received, receiv' +
        'ed_date, alarm_sent, alarm_read, distance, ck_confirmed, insuran' +
        'ce_confirmed, agreement_confirmed, ck_has_code, ck_code, ck_has_' +
        'price, ck_price, ck_fast, ck_different_address, ck_address, ck_h' +
        'as_place, ck_place, ck_take_list, ck_notes, call_center_notes, i' +
        'nsert_date, update_date, cancelled FROM health.bookings_rows'
      'WHERE'
      '  booking_id = :booking_id AND anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM health.bookings_rows'
      'WHERE'
      
        '  booking_id = :Old_booking_id AND anagraph_id = :Old_anagraph_i' +
        'd'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.bookings_rows'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select'
      'true as selected, '
      ' r.*, a.*,'
      'round(r.distance::numeric, 2) '
      
        ' || '#39' - '#39' || a.an_address || '#39' '#39' || a.an_town || '#39'('#39' || a.an_sta' +
        'te_province || '#39')'#39' as full_address'
      'from health.bookings_rows r , anagraph.anagraphs a'
      'where '
      'r.booking_id = :booking_id'
      'and'
      'a.anagraph_id = r.anagraph_id'
      'ORDER BY r.distance')
    MasterSource = dsBookings
    Left = 544
    Top = 192
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 3450
      end>
    object qryBookingRowsselected: TBooleanField
      FieldName = 'selected'
      ReadOnly = True
    end
    object qryBookingRowsbooking_id: TLargeintField
      FieldName = 'booking_id'
      Required = True
    end
    object qryBookingRowsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryBookingRowssince: TDateField
      FieldName = 'since'
    end
    object qryBookingRowsuntil: TDateField
      FieldName = 'until'
    end
    object qryBookingRowsnotes: TWideStringField
      FieldName = 'notes'
      Size = 2048
    end
    object qryBookingRowsconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryBookingRowsopened: TBooleanField
      FieldName = 'opened'
    end
    object qryBookingRowsdb_operator_id: TIntegerField
      FieldName = 'db_operator_id'
    end
    object qryBookingRowsclosed: TBooleanField
      FieldName = 'closed'
    end
    object qryBookingRowsclosed_date: TSQLTimeStampField
      FieldName = 'closed_date'
    end
    object qryBookingRowsbooked: TBooleanField
      FieldName = 'booked'
    end
    object qryBookingRowsbooking_date: TDateField
      FieldName = 'booking_date'
    end
    object qryBookingRowsbooking_hour: TSmallintField
      FieldName = 'booking_hour'
    end
    object qryBookingRowsbooking_mins: TSmallintField
      FieldName = 'booking_mins'
    end
    object qryBookingRowssent: TBooleanField
      FieldName = 'sent'
    end
    object qryBookingRowssent_date: TSQLTimeStampField
      FieldName = 'sent_date'
    end
    object qryBookingRowsreceived: TBooleanField
      FieldName = 'received'
    end
    object qryBookingRowsreceived_date: TSQLTimeStampField
      FieldName = 'received_date'
    end
    object qryBookingRowsalarm_sent: TSmallintField
      FieldName = 'alarm_sent'
    end
    object qryBookingRowsalarm_read: TSmallintField
      FieldName = 'alarm_read'
    end
    object qryBookingRowsdistance: TFloatField
      FieldName = 'distance'
    end
    object qryBookingRowsck_confirmed: TBooleanField
      FieldName = 'ck_confirmed'
    end
    object qryBookingRowsinsurance_confirmed: TBooleanField
      FieldName = 'insurance_confirmed'
    end
    object qryBookingRowsagreement_confirmed: TBooleanField
      FieldName = 'agreement_confirmed'
    end
    object qryBookingRowsck_has_code: TBooleanField
      FieldName = 'ck_has_code'
    end
    object qryBookingRowsck_code: TWideStringField
      FieldName = 'ck_code'
    end
    object qryBookingRowsck_has_price: TBooleanField
      FieldName = 'ck_has_price'
    end
    object qryBookingRowsck_price: TFloatField
      FieldName = 'ck_price'
    end
    object qryBookingRowsck_fast: TBooleanField
      FieldName = 'ck_fast'
    end
    object qryBookingRowsck_different_address: TBooleanField
      FieldName = 'ck_different_address'
    end
    object qryBookingRowsck_address: TWideStringField
      FieldName = 'ck_address'
      Size = 1024
    end
    object qryBookingRowsck_has_place: TBooleanField
      FieldName = 'ck_has_place'
    end
    object qryBookingRowsck_place: TWideStringField
      FieldName = 'ck_place'
      Size = 1024
    end
    object qryBookingRowsck_take_list: TBooleanField
      FieldName = 'ck_take_list'
    end
    object qryBookingRowsck_notes: TWideMemoField
      FieldName = 'ck_notes'
      BlobType = ftWideMemo
    end
    object qryBookingRowscall_center_notes: TWideMemoField
      FieldName = 'call_center_notes'
      BlobType = ftWideMemo
    end
    object qryBookingRowsinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object qryBookingRowsupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
    object qryBookingRowscancelled: TBooleanField
      FieldName = 'cancelled'
    end
    object qryBookingRowsbooking64: TWideStringField
      FieldName = 'booking64'
      Size = 64
    end
    object qryBookingRowsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
      Required = True
    end
    object qryBookingRowsanagraph_id_1: TIntegerField
      FieldName = 'anagraph_id_1'
      ReadOnly = True
      Required = True
    end
    object qryBookingRowsan_title: TWideStringField
      FieldName = 'an_title'
      ReadOnly = True
      Size = 32
    end
    object qryBookingRowsan_name: TWideStringField
      FieldName = 'an_name'
      ReadOnly = True
      Size = 128
    end
    object qryBookingRowsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      ReadOnly = True
      Size = 128
    end
    object qryBookingRowsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryBookingRowsan_notes: TWideStringField
      FieldName = 'an_notes'
      ReadOnly = True
      Size = 512
    end
    object qryBookingRowsan_address: TWideStringField
      FieldName = 'an_address'
      ReadOnly = True
      Size = 256
    end
    object qryBookingRowsan_town: TWideStringField
      FieldName = 'an_town'
      ReadOnly = True
      Size = 128
    end
    object qryBookingRowsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      ReadOnly = True
      Size = 8
    end
    object qryBookingRowsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qryBookingRowsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      ReadOnly = True
      Size = 30
    end
    object qryBookingRowsan_phone: TWideStringField
      FieldName = 'an_phone'
      ReadOnly = True
    end
    object qryBookingRowsan_phone2: TWideStringField
      FieldName = 'an_phone2'
      ReadOnly = True
    end
    object qryBookingRowsan_fax: TWideStringField
      FieldName = 'an_fax'
      ReadOnly = True
    end
    object qryBookingRowsan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
    object qryBookingRowsan_code: TWideStringField
      FieldName = 'an_code'
      ReadOnly = True
      Size = 15
    end
    object qryBookingRowsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      ReadOnly = True
      Size = 16
    end
    object qryBookingRowsan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 256
    end
    object qryBookingRowsan_web: TWideStringField
      FieldName = 'an_web'
      ReadOnly = True
      Size = 128
    end
    object qryBookingRowsan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
      ReadOnly = True
    end
    object qryBookingRowsan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      ReadOnly = True
      Size = 255
    end
    object qryBookingRowsan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      ReadOnly = True
      Size = 128
    end
    object qryBookingRowsan_discount: TFloatField
      FieldName = 'an_discount'
      ReadOnly = True
    end
    object qryBookingRowsan_distance: TIntegerField
      FieldName = 'an_distance'
      ReadOnly = True
    end
    object qryBookingRowsan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
      ReadOnly = True
    end
    object qryBookingRowsan_sex: TWideStringField
      FieldName = 'an_sex'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qryBookingRowsan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      ReadOnly = True
      Size = 3
    end
    object qryBookingRowsan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      ReadOnly = True
      Size = 3
    end
    object qryBookingRowsan_credit_line: TFloatField
      FieldName = 'an_credit_line'
      ReadOnly = True
    end
    object qryBookingRowsan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      ReadOnly = True
      Required = True
    end
    object qryBookingRowsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
      ReadOnly = True
    end
    object qryBookingRowsan_notes2: TWideStringField
      FieldName = 'an_notes2'
      ReadOnly = True
      Size = 40
    end
    object qryBookingRowsan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryBookingRowsan_edi: TBooleanField
      FieldName = 'an_edi'
      ReadOnly = True
    end
    object qryBookingRowsan_privacy: TBooleanField
      FieldName = 'an_privacy'
      ReadOnly = True
    end
    object qryBookingRowsan_office_id: TSmallintField
      FieldName = 'an_office_id'
      ReadOnly = True
    end
    object qryBookingRowsan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      ReadOnly = True
      Size = 3
    end
    object qryBookingRowsan_data_fido: TDateField
      FieldName = 'an_data_fido'
      ReadOnly = True
    end
    object qryBookingRowsan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      ReadOnly = True
      Size = 30
    end
    object qryBookingRowsan_user_update: TWideStringField
      FieldName = 'an_user_update'
      ReadOnly = True
      Size = 30
    end
    object qryBookingRowsan_area_id: TSmallintField
      FieldName = 'an_area_id'
      ReadOnly = True
    end
    object qryBookingRowsan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
      ReadOnly = True
    end
    object qryBookingRowsan_area_code: TWideStringField
      FieldName = 'an_area_code'
      ReadOnly = True
      Size = 1
    end
    object qryBookingRowsan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      ReadOnly = True
      Size = 1
    end
    object qryBookingRowsan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
      ReadOnly = True
    end
    object qryBookingRowsan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
      ReadOnly = True
    end
    object qryBookingRowsan_documents: TSmallintField
      FieldName = 'an_documents'
      ReadOnly = True
    end
    object qryBookingRowsan_last_date: TDateField
      FieldName = 'an_last_date'
      ReadOnly = True
    end
    object qryBookingRowsan_birthdate: TDateField
      FieldName = 'an_birthdate'
      ReadOnly = True
    end
    object qryBookingRowsan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
      ReadOnly = True
    end
    object qryBookingRowsan_searchname: TWideStringField
      FieldName = 'an_searchname'
      ReadOnly = True
      Size = 128
    end
    object qryBookingRowsan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
      ReadOnly = True
    end
    object qryBookingRowsan_external_code: TWideStringField
      FieldName = 'an_external_code'
      ReadOnly = True
    end
    object qryBookingRowsan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
      ReadOnly = True
    end
    object qryBookingRowsan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      ReadOnly = True
      Size = 16
    end
    object qryBookingRowsan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
      ReadOnly = True
    end
    object qryBookingRowsan_sms: TBooleanField
      FieldName = 'an_sms'
      ReadOnly = True
    end
    object qryBookingRowsan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      ReadOnly = True
      Size = 256
    end
    object qryBookingRowsan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
      ReadOnly = True
    end
    object qryBookingRowsan_status: TSmallintField
      FieldName = 'an_status'
      ReadOnly = True
    end
    object qryBookingRowsan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
      ReadOnly = True
    end
    object qryBookingRowsan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
      ReadOnly = True
    end
    object qryBookingRowsan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
      ReadOnly = True
    end
    object qryBookingRowsan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object qryBookingRowsan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object qryBookingRowsan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      ReadOnly = True
      Size = 16
    end
    object qryBookingRowsan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      ReadOnly = True
      Required = True
    end
    object qryBookingRowsan_image_id: TLargeintField
      FieldName = 'an_image_id'
      ReadOnly = True
    end
    object qryBookingRowslatitude: TFloatField
      FieldName = 'latitude'
      ReadOnly = True
    end
    object qryBookingRowslongitude: TFloatField
      FieldName = 'longitude'
      ReadOnly = True
    end
    object qryBookingRowstest: TFloatField
      FieldName = 'test'
      ReadOnly = True
    end
    object qryBookingRowssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 2048
    end
    object qryBookingRowsan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      ReadOnly = True
      Size = 256
    end
    object qryBookingRowsan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
      ReadOnly = True
    end
    object qryBookingRowsanagraph64: TWideStringField
      FieldName = 'anagraph64'
      ReadOnly = True
      Size = 64
    end
    object qryBookingRowsfull_address: TWideMemoField
      FieldName = 'full_address'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qrySearchAnagraph: TPgQuery
    KeyFields = 'anagraph_id'
    KeySequence = 'anagraph.an_anagraph_seq'
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
        'l_code, an_main_group_id, an_image_id, latitude, longitude, sear' +
        'ch_index)'
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
        'e, :search_index)')
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
        ', search_index = :search_index'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
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
        'search_index FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select i.an_group_id,  a.*, g.group_des'
      'from '
      'anagraph.anagraphs a, anagraph.identities i, anagraph.groups g'
      'where'
      'a.anagraph_id = i.anagraph_id'
      'and'
      'i.an_group_id = g.an_group_id'
      'and'
      'a.db_schema_id = (:p_schema_id)'
      'and'
      'a.search_index like '#39'%'#39'|| :search || '#39'%'#39)
    IndexFieldNames = 'anagraph_id'
    BeforePost = qryCompaniesBeforePost
    OnNewRecord = qryCompaniesNewRecord
    Left = 304
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_schema_id'
        ParamType = ptInput
        Value = 31
      end
      item
        DataType = ftWideString
        Name = 'search'
        ParamType = ptInput
        Value = 'SACCO'
      end>
    object qrySearchAnagraphan_group_id: TSmallintField
      FieldName = 'an_group_id'
      ReadOnly = True
      Required = True
    end
    object qrySearchAnagraphdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySearchAnagraphanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qrySearchAnagraphan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qrySearchAnagraphan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qrySearchAnagraphan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qrySearchAnagraphan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qrySearchAnagraphan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qrySearchAnagraphan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qrySearchAnagraphan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qrySearchAnagraphan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qrySearchAnagraphan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qrySearchAnagraphan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qrySearchAnagraphan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qrySearchAnagraphan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qrySearchAnagraphan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qrySearchAnagraphan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qrySearchAnagraphan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qrySearchAnagraphan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qrySearchAnagraphan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qrySearchAnagraphan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qrySearchAnagraphan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qrySearchAnagraphan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qrySearchAnagraphan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qrySearchAnagraphan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qrySearchAnagraphan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qrySearchAnagraphan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qrySearchAnagraphan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qrySearchAnagraphan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qrySearchAnagraphan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qrySearchAnagraphan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qrySearchAnagraphan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qrySearchAnagraphan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qrySearchAnagraphan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qrySearchAnagraphan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qrySearchAnagraphan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qrySearchAnagraphan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qrySearchAnagraphan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qrySearchAnagraphan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qrySearchAnagraphan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qrySearchAnagraphan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qrySearchAnagraphan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qrySearchAnagraphan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qrySearchAnagraphan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qrySearchAnagraphan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qrySearchAnagraphan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qrySearchAnagraphan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qrySearchAnagraphan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qrySearchAnagraphan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qrySearchAnagraphan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qrySearchAnagraphan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qrySearchAnagraphan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qrySearchAnagraphan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qrySearchAnagraphan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qrySearchAnagraphan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qrySearchAnagraphan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qrySearchAnagraphan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qrySearchAnagraphan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qrySearchAnagraphan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qrySearchAnagraphan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qrySearchAnagraphan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qrySearchAnagraphan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qrySearchAnagraphan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qrySearchAnagraphan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qrySearchAnagraphan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qrySearchAnagraphan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qrySearchAnagraphan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qrySearchAnagraphan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qrySearchAnagraphan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qrySearchAnagraphan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qrySearchAnagraphlatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchAnagraphlongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchAnagraphtest: TFloatField
      FieldName = 'test'
    end
    object qrySearchAnagraphsearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qrySearchAnagraphan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qrySearchAnagraphan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qrySearchAnagraphanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qrySearchAnagraphgroup_des: TWideStringField
      FieldName = 'group_des'
      ReadOnly = True
      Required = True
    end
  end
  object spBooking: TPgStoredProc
    StoredProcName = 'health.setbooking'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT health.setbooking(:p_storedsearch, :p_auto)')
    Left = 656
    Top = 168
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_storedsearch'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_auto'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.setbooking:0'
  end
  object spAssignBooking: TPgStoredProc
    StoredProcName = 'health.assignbooking'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT health.assignbooking(:p_session_id, :p_booking_id)')
    Left = 656
    Top = 232
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_session_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.assignbooking:0'
  end
  object qryBookingInstitutes: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      'r.* ,'
      'true as selected, '
      'round(r.distance::numeric, 2) '
      
        '      || '#39' - '#39' || a.an_address || '#39' '#39' || a.an_town || '#39'('#39' || a.a' +
        'n_state_province || '#39')'#39' as full_address,'
      'a.*'
      'from anagraph.anagraphs a, health.bookings_rows r'
      
        'where r.anagraph_id = a.anagraph_id and r.booking_id = :booking_' +
        'id'
      'ORDER BY r.distance')
    Left = 544
    Top = 384
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 31
      end>
    object qryBookingInstitutesbooking_id: TLargeintField
      FieldName = 'booking_id'
      ReadOnly = True
      Required = True
    end
    object qryBookingInstitutesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
      Required = True
    end
    object qryBookingInstitutessince: TDateField
      FieldName = 'since'
      ReadOnly = True
    end
    object qryBookingInstitutesuntil: TDateField
      FieldName = 'until'
      ReadOnly = True
    end
    object qryBookingInstitutesnotes: TWideStringField
      FieldName = 'notes'
      ReadOnly = True
      Size = 2048
    end
    object qryBookingInstitutesconfirmed: TBooleanField
      FieldName = 'confirmed'
      ReadOnly = True
    end
    object qryBookingInstitutesopened: TBooleanField
      FieldName = 'opened'
      ReadOnly = True
    end
    object qryBookingInstitutesdb_operator_id: TIntegerField
      FieldName = 'db_operator_id'
      ReadOnly = True
    end
    object qryBookingInstitutesclosed: TBooleanField
      FieldName = 'closed'
      ReadOnly = True
    end
    object qryBookingInstitutesclosed_date: TSQLTimeStampField
      FieldName = 'closed_date'
      ReadOnly = True
    end
    object qryBookingInstitutesbooked: TBooleanField
      FieldName = 'booked'
      ReadOnly = True
    end
    object qryBookingInstitutesbooking_date: TDateField
      FieldName = 'booking_date'
      ReadOnly = True
    end
    object qryBookingInstitutesbooking_hour: TSmallintField
      FieldName = 'booking_hour'
      ReadOnly = True
    end
    object qryBookingInstitutesbooking_mins: TSmallintField
      FieldName = 'booking_mins'
      ReadOnly = True
    end
    object qryBookingInstitutessent: TBooleanField
      FieldName = 'sent'
      ReadOnly = True
    end
    object qryBookingInstitutessent_date: TSQLTimeStampField
      FieldName = 'sent_date'
      ReadOnly = True
    end
    object qryBookingInstitutesreceived: TBooleanField
      FieldName = 'received'
      ReadOnly = True
    end
    object qryBookingInstitutesreceived_date: TSQLTimeStampField
      FieldName = 'received_date'
      ReadOnly = True
    end
    object qryBookingInstitutesalarm_sent: TSmallintField
      FieldName = 'alarm_sent'
      ReadOnly = True
    end
    object qryBookingInstitutesalarm_read: TSmallintField
      FieldName = 'alarm_read'
      ReadOnly = True
    end
    object qryBookingInstitutesdistance: TFloatField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryBookingInstitutesck_confirmed: TBooleanField
      FieldName = 'ck_confirmed'
      ReadOnly = True
    end
    object qryBookingInstitutesinsurance_confirmed: TBooleanField
      FieldName = 'insurance_confirmed'
      ReadOnly = True
    end
    object qryBookingInstitutesagreement_confirmed: TBooleanField
      FieldName = 'agreement_confirmed'
      ReadOnly = True
    end
    object qryBookingInstitutesck_has_code: TBooleanField
      FieldName = 'ck_has_code'
      ReadOnly = True
    end
    object qryBookingInstitutesck_code: TWideStringField
      FieldName = 'ck_code'
      ReadOnly = True
    end
    object qryBookingInstitutesck_has_price: TBooleanField
      FieldName = 'ck_has_price'
      ReadOnly = True
    end
    object qryBookingInstitutesck_price: TFloatField
      FieldName = 'ck_price'
      ReadOnly = True
    end
    object qryBookingInstitutesck_fast: TBooleanField
      FieldName = 'ck_fast'
      ReadOnly = True
    end
    object qryBookingInstitutesck_different_address: TBooleanField
      FieldName = 'ck_different_address'
      ReadOnly = True
    end
    object qryBookingInstitutesck_address: TWideStringField
      FieldName = 'ck_address'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingInstitutesck_has_place: TBooleanField
      FieldName = 'ck_has_place'
      ReadOnly = True
    end
    object qryBookingInstitutesck_place: TWideStringField
      FieldName = 'ck_place'
      ReadOnly = True
      Size = 1024
    end
    object qryBookingInstitutesck_take_list: TBooleanField
      FieldName = 'ck_take_list'
      ReadOnly = True
    end
    object qryBookingInstitutesck_notes: TWideMemoField
      FieldName = 'ck_notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryBookingInstitutescall_center_notes: TWideMemoField
      FieldName = 'call_center_notes'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryBookingInstitutesinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
      ReadOnly = True
    end
    object qryBookingInstitutesupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
      ReadOnly = True
    end
    object qryBookingInstitutescancelled: TBooleanField
      FieldName = 'cancelled'
      ReadOnly = True
    end
    object qryBookingInstitutesbooking64: TWideStringField
      FieldName = 'booking64'
      ReadOnly = True
      Size = 64
    end
    object qryBookingInstitutesselected: TBooleanField
      FieldName = 'selected'
      ReadOnly = True
    end
    object qryBookingInstitutesfull_address: TWideMemoField
      FieldName = 'full_address'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryBookingInstitutesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryBookingInstitutesanagraph_id_1: TIntegerField
      FieldName = 'anagraph_id_1'
      Required = True
    end
    object qryBookingInstitutesan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryBookingInstitutesan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryBookingInstitutesan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryBookingInstitutesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryBookingInstitutesan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryBookingInstitutesan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryBookingInstitutesan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryBookingInstitutesan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryBookingInstitutesan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qryBookingInstitutesan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryBookingInstitutesan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qryBookingInstitutesan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryBookingInstitutesan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qryBookingInstitutesan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryBookingInstitutesan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryBookingInstitutesan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qryBookingInstitutesan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryBookingInstitutesan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryBookingInstitutesan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryBookingInstitutesan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryBookingInstitutesan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryBookingInstitutesan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryBookingInstitutesan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryBookingInstitutesan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryBookingInstitutesan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qryBookingInstitutesan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryBookingInstitutesan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryBookingInstitutesan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryBookingInstitutesan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qryBookingInstitutesan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryBookingInstitutesan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryBookingInstitutesan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryBookingInstitutesan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryBookingInstitutesan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryBookingInstitutesan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryBookingInstitutesan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryBookingInstitutesan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryBookingInstitutesan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryBookingInstitutesan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryBookingInstitutesan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryBookingInstitutesan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryBookingInstitutesan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryBookingInstitutesan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryBookingInstitutesan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryBookingInstitutesan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryBookingInstitutesan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryBookingInstitutesan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryBookingInstitutesan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryBookingInstitutesan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryBookingInstitutesan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryBookingInstitutesan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryBookingInstitutesan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryBookingInstitutesan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryBookingInstitutesan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryBookingInstitutesan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryBookingInstitutesan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryBookingInstitutesan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryBookingInstitutesan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryBookingInstitutesan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryBookingInstitutesan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryBookingInstitutesan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryBookingInstitutesan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryBookingInstitutesan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qryBookingInstitutesan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qryBookingInstitutesan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryBookingInstitutesan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qryBookingInstitutesan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryBookingInstituteslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryBookingInstituteslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryBookingInstitutestest: TFloatField
      FieldName = 'test'
    end
    object qryBookingInstitutessearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryBookingInstitutesan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryBookingInstitutesan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryBookingInstitutesanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
  end
  object spbookingInstitutes: TPgStoredProc
    StoredProcName = 'health.bookinginstitutes'
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT health.bookinginstitutes(:p_session_id, :p_session_key, :' +
        'p_item1, :p_item2, :p_item3, :p_search_id)')
    Left = 656
    Top = 104
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_session_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_item1'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_item2'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_item3'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_search_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.bookinginstitutes:0'
  end
  object spBookingFinalisation: TPgStoredProc
    StoredProcName = 'health.bookingfinalisation'
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT health.bookingfinalisation(:p_booking_id, :p_session_id, ' +
        ':p_session_key, :p_has_prescription, :p_has_relative, :p_book_si' +
        'nce, :p_book_until, :p_insurance, :p_agreement, :p_notes, :perso' +
        'n_firstname, :person_lastname, :person_fiscalcode, :person_addre' +
        'ss, :person_town, :person_postalcode, :person_stateprovince, :pe' +
        'rson_notes, :pr_first_code, :pr_second_code, :pr_province, :pr_f' +
        'irst_name, :pr_last_name, :pr_fiscal_code, :pr_exemption, :pr_ex' +
        'emption_code, :pr_exemption_income, :pr_services, :pr_date, :pr_' +
        'priority)')
    Left = 656
    Top = 304
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_session_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_session_key'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_has_prescription'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_has_relative'
        ParamType = ptInput
        Value = nil
      end
      item
        Name = 'p_book_since'
        ParamType = ptInput
        Value = '01/01/2000'
        ExtDataType = 101
      end
      item
        Name = 'p_book_until'
        ParamType = ptInput
        Value = '01/01/2000'
        ExtDataType = 101
      end
      item
        DataType = ftWideString
        Name = 'p_insurance'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_agreement'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_notes'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_firstname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_lastname'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_fiscalcode'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_address'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_town'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_postalcode'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_stateprovince'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'person_notes'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_first_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_second_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_province'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_first_name'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_last_name'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_fiscal_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'pr_exemption'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'pr_exemption_code'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'pr_exemption_income'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'pr_services'
        ParamType = ptInput
        Value = nil
      end
      item
        Name = 'pr_date'
        ParamType = ptInput
        Value = '01/01/2000'
        ExtDataType = 101
      end
      item
        DataType = ftWideString
        Name = 'pr_priority'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.bookingfinalisation:0'
  end
  object qryLkpServices: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      ' SELECT * from'
      '    ('
      
        '   SELECT *, searchkey as search, prestazione as title, 0::integ' +
        'er as discipline_id'
      #9'FROM health.search_index '
      '    where '
      
        '    '#9'searchkey like '#39'%'#39' || trim(upper(health.stripstring(:search' +
        '))) || '#39'%'#39
      '    order by position ( upper(:search) in searchkey)'
      '    limit :limit'
      '    ) a'
      '    order by a.prestazione'
      ''
      '/*'
      'SELECT * from  health.search_services_index('
      #9':search, '
      #9':limit'
      ')'
      '*/'
      '/*'
      
        'SELECT id, item_id, discipline_id, discipline_name, prestazione,' +
        ' search, prestazione as title'
      #9'FROM health.search_services '
      '        where '
      '           search like  '#39'%'#39' || lower(:search) || '#39'%'#39
      '        and '
      '           item_id is not null'
      '        order by position ( lower(:search) in search)'
      'limit :limit'
      '*/'
      
        '--- sostituire health.wards_services_mview con la tabella static' +
        'a -------')
    Filtered = True
    Left = 424
    Top = 288
    ParamData = <
      item
        DataType = ftWideString
        Name = 'search'
        ParamType = ptInput
        Value = 'Holter'
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
      end>
    object qryLkpServicesid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
    end
    object qryLkpServicesitem_id: TLargeintField
      FieldName = 'item_id'
      ReadOnly = True
    end
    object qryLkpServicesdiscipline_name: TWideStringField
      FieldName = 'discipline_name'
      ReadOnly = True
      Size = 256
    end
    object qryLkpServicesprestazione: TWideStringField
      FieldName = 'prestazione'
      ReadOnly = True
      Size = 1024
    end
    object qryLkpServicessearchkey: TWideStringField
      FieldName = 'searchkey'
      ReadOnly = True
      Size = 1024
    end
    object qryLkpServicessearch: TWideStringField
      FieldName = 'search'
      ReadOnly = True
      Size = 1024
    end
    object qryLkpServicestitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 1024
    end
    object qryLkpServicesdiscipline_id: TIntegerField
      FieldName = 'discipline_id'
      ReadOnly = True
    end
  end
  object qryBookingPrescription: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO locale.it_it_health_prescription'
      
        '  (id, first_code, second_code, province, first_name, last_name,' +
        ' fiscal_code, exemption, exemption_code, exemption_income, servi' +
        'ces, date, priority, booking_id)'
      'VALUES'
      
        '  (:id, :first_code, :second_code, :province, :first_name, :last' +
        '_name, :fiscal_code, :exemption, :exemption_code, :exemption_inc' +
        'ome, :services, :date, :priority, :booking_id)')
    SQLDelete.Strings = (
      'DELETE FROM locale.it_it_health_prescription'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE locale.it_it_health_prescription'
      'SET'
      
        '  id = :id, first_code = :first_code, second_code = :second_code' +
        ', province = :province, first_name = :first_name, last_name = :l' +
        'ast_name, fiscal_code = :fiscal_code, exemption = :exemption, ex' +
        'emption_code = :exemption_code, exemption_income = :exemption_in' +
        'come, services = :services, date = :date, priority = :priority, ' +
        'booking_id = :booking_id'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, first_code, second_code, province, first_name, last_n' +
        'ame, fiscal_code, exemption, exemption_code, exemption_income, s' +
        'ervices, date, priority, booking_id FROM locale.it_it_health_pre' +
        'scription'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM locale.it_it_health_prescription'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM locale.it_it_health_prescription'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, first_code, second_code, province, first_name, last_n' +
        'ame, '
      
        '       fiscal_code, exemption, exemption_code, exemption_income,' +
        ' services, '
      '       date, priority, booking_id'
      '  FROM locale.it_it_health_prescription;')
    MasterSource = dsBookings
    Left = 544
    Top = 256
    object qryBookingPrescriptionid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryBookingPrescriptionfirst_code: TWideStringField
      FieldName = 'first_code'
    end
    object qryBookingPrescriptionsecond_code: TWideStringField
      FieldName = 'second_code'
    end
    object qryBookingPrescriptionprovince: TWideStringField
      FieldName = 'province'
      Size = 2
    end
    object qryBookingPrescriptionfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qryBookingPrescriptionlast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qryBookingPrescriptionfiscal_code: TWideStringField
      FieldName = 'fiscal_code'
      Size = 16
    end
    object qryBookingPrescriptionexemption: TBooleanField
      FieldName = 'exemption'
    end
    object qryBookingPrescriptionexemption_code: TWideStringField
      FieldName = 'exemption_code'
      Size = 6
    end
    object qryBookingPrescriptionexemption_income: TBooleanField
      FieldName = 'exemption_income'
    end
    object qryBookingPrescriptionservices: TSmallintField
      FieldName = 'services'
    end
    object qryBookingPrescriptiondate: TDateField
      FieldName = 'date'
    end
    object qryBookingPrescriptionpriority: TWideStringField
      FieldName = 'priority'
      Size = 1
    end
    object qryBookingPrescriptionbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
  end
  object qryRelative: TPgQuery
    SequenceMode = smInsert
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
        ', search_index, an_birthplace, an_birthplace_code)'
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
        'e, :test, :search_index, :an_birthplace, :an_birthplace_code)')
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
        'n_birthplace, an_birthplace_code = :an_birthplace_code'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id')
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
        'test, search_index, an_birthplace, an_birthplace_code FROM anagr' +
        'aph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
      'WHERE'
      '  anagraph_id = :Old_anagraph_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from anagraph.anagraphs where anagraph_id = :person_id')
    MasterSource = dsBookings
    BeforePost = qryRelativeBeforePost
    Left = 544
    Top = 320
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'person_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryRelativedb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryRelativeanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryRelativean_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryRelativean_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryRelativean_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryRelativean_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryRelativean_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryRelativean_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryRelativean_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryRelativean_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryRelativean_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qryRelativean_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryRelativean_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qryRelativean_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryRelativean_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qryRelativean_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryRelativean_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qryRelativean_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qryRelativean_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryRelativean_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qryRelativean_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qryRelativean_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryRelativean_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryRelativean_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qryRelativean_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qryRelativean_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qryRelativean_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qryRelativean_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryRelativean_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryRelativean_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qryRelativean_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qryRelativean_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qryRelativean_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryRelativean_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryRelativean_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qryRelativean_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qryRelativean_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qryRelativean_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryRelativean_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qryRelativean_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryRelativean_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryRelativean_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qryRelativean_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qryRelativean_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryRelativean_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryRelativean_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qryRelativean_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qryRelativean_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qryRelativean_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qryRelativean_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qryRelativean_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qryRelativean_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryRelativean_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qryRelativean_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qryRelativean_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryRelativean_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryRelativean_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qryRelativean_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qryRelativean_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryRelativean_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qryRelativean_status: TSmallintField
      FieldName = 'an_status'
    end
    object qryRelativean_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qryRelativean_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qryRelativean_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryRelativean_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qryRelativean_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qryRelativean_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryRelativean_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qryRelativean_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qryRelativelatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryRelativelongitude: TFloatField
      FieldName = 'longitude'
    end
    object qryRelativetest: TFloatField
      FieldName = 'test'
    end
    object qryRelativesearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qryRelativean_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryRelativean_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qryRelativeanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
  end
  object spInstituteConfirmation: TPgStoredProc
    StoredProcName = 'health.booking_anagraph_confirmation'
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT health.booking_anagraph_confirmation(:p_anagraph_id, :p_b' +
        'ooking_id)')
    Left = 656
    Top = 416
    ParamData = <
      item
        DataType = ftWideString
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.booking_anagraph_confirmation:0'
  end
  object spUserCheckOut: TPgStoredProc
    StoredProcName = 'health.user_booking_confirmation'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT health.user_booking_confirmation(:p_booking_id)')
    Left = 656
    Top = 360
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.user_booking_confirmation:0'
  end
  object qryLkpServicesOld: TPgQuery
    DataTypeMap = <
      item
        FieldName = 'prestazione'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'search'
        FieldType = ftWideString
        FieldLength = 1024
      end
      item
        FieldName = 'discipline_name'
        FieldType = ftWideString
        FieldLength = 256
      end
      item
        FieldName = 'title'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, item_id, discipline_id, discipline_name, prestazione,' +
        ' search, prestazione as title'
      #9'FROM health.search_services '
      '        where '
      '           search like  '#39'%'#39' || lower(:search) || '#39'%'#39
      '        and '
      '           item_id is not null'
      '        order by position ( lower(:search) in search)'
      'limit :limit'
      ''
      
        '--- sostituire health.wards_services_mview con la tabella static' +
        'a -------')
    Filtered = True
    Left = 424
    Top = 352
    ParamData = <
      item
        DataType = ftWideString
        Name = 'search'
        ParamType = ptInput
        Value = 'aber'
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 20
      end>
    object LargeintField1: TLargeintField
      FieldName = 'id'
    end
    object LargeintField2: TLargeintField
      FieldName = 'item_id'
    end
    object SmallintField1: TSmallintField
      FieldName = 'discipline_id'
    end
    object WideStringField1: TWideStringField
      FieldName = 'discipline_name'
      Size = 256
    end
    object WideStringField2: TWideStringField
      FieldName = 'prestazione'
      Size = 1024
    end
    object WideStringField3: TWideStringField
      FieldName = 'search'
      Size = 1024
    end
    object WideStringField4: TWideStringField
      FieldName = 'title'
      Size = 1024
    end
  end
  object qryNotifications: TPgQuery
    SQLRecCount.Strings = (
      'SELECT count(1)'
      '  FROM health.notifications'
      'where'
      '  db_user_id = :user_id')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, type_id, title, message, db_schema_id, db_user_id, da' +
        'tetime, '
      '       read, booking_id, solved, from_user_id, booking_action'
      '  FROM health.notifications'
      'where'
      '  db_user_id = :user_id'
      'order by solved, type_id'
      'limit :limit')
    ReadOnly = True
    Left = 304
    Top = 440
    ParamData = <
      item
        DataType = ftInteger
        Name = 'user_id'
        ParamType = ptInput
        Value = 256
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 0
      end>
    object qryNotificationsid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryNotificationstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryNotificationstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryNotificationsmessage: TWideMemoField
      FieldName = 'message'
      BlobType = ftWideMemo
    end
    object qryNotificationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryNotificationsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryNotificationsdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryNotificationsread: TBooleanField
      FieldName = 'read'
    end
    object qryNotificationsbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryNotificationssolved: TBooleanField
      FieldName = 'solved'
    end
    object qryNotificationsfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
    object qryNotificationsbooking_action: TSmallintField
      FieldName = 'booking_action'
    end
  end
  object qryBookingNotifications: TPgQuery
    SQLInsert.Strings = (
      'INSERT INTO health.notifications'
      
        '  (id, type_id, title, message, db_schema_id, db_user_id, dateti' +
        'me, read, booking_id, solved, from_user_id, booking_action)'
      'VALUES'
      
        '  (:id, :type_id, :title, :message, :db_schema_id, :db_user_id, ' +
        ':datetime, :read, :booking_id, :solved, :from_user_id, :booking_' +
        'action)')
    SQLDelete.Strings = (
      'DELETE FROM health.notifications'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE health.notifications'
      'SET'
      
        '  id = :id, type_id = :type_id, title = :title, message = :messa' +
        'ge, db_schema_id = :db_schema_id, db_user_id = :db_user_id, date' +
        'time = :datetime, read = :read, booking_id = :booking_id, solved' +
        ' = :solved, from_user_id = :from_user_id, booking_action = :book' +
        'ing_action'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, type_id, title, message, db_schema_id, db_user_id, da' +
        'tetime, read, booking_id, solved, from_user_id, booking_action F' +
        'ROM health.notifications'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'SELECT * FROM health.notifications'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM health.notifications'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, type_id, title, message, db_schema_id, db_user_id, da' +
        'tetime, '
      '       read, booking_id, solved, from_user_id, booking_action'
      '  FROM health.notifications'
      'where'
      '  booking_id = :booking_id'
      'order by solved, type_id')
    MasterFields = 'booking_id'
    DetailFields = 'booking_id'
    MasterSource = dsBookings
    Left = 544
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'booking_id'
        Value = nil
      end>
    object qryBookingNotificationsid: TLargeintField
      FieldName = 'id'
    end
    object qryBookingNotificationstype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryBookingNotificationstitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryBookingNotificationsmessage: TWideMemoField
      FieldName = 'message'
      BlobType = ftWideMemo
    end
    object qryBookingNotificationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBookingNotificationsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryBookingNotificationsdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryBookingNotificationsread: TBooleanField
      FieldName = 'read'
    end
    object qryBookingNotificationsbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryBookingNotificationssolved: TBooleanField
      FieldName = 'solved'
    end
    object qryBookingNotificationsfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
    object qryBookingNotificationsbooking_action: TSmallintField
      FieldName = 'booking_action'
    end
  end
  object qryNotification: TPgQuery
    SQLRecCount.Strings = (
      'SELECT count(1)'
      '  FROM health.notifications'
      'where'
      '  db_user_id = :user_id')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT id, type_id, title, message, db_schema_id, db_user_id, da' +
        'tetime, '
      '       read, booking_id, solved, from_user_id, booking_action'
      '  FROM health.notifications'
      'where'
      '  id = :id')
    ReadOnly = True
    Left = 304
    Top = 496
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 0
      end>
    object qryNotificationid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryNotificationtype_id: TSmallintField
      FieldName = 'type_id'
    end
    object qryNotificationtitle: TWideStringField
      FieldName = 'title'
      Size = 128
    end
    object qryNotificationmessage: TWideMemoField
      FieldName = 'message'
      BlobType = ftWideMemo
    end
    object qryNotificationdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryNotificationdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryNotificationdatetime: TSQLTimeStampField
      FieldName = 'datetime'
    end
    object qryNotificationread: TBooleanField
      FieldName = 'read'
    end
    object qryNotificationbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryNotificationsolved: TBooleanField
      FieldName = 'solved'
    end
    object qryNotificationfrom_user_id: TIntegerField
      FieldName = 'from_user_id'
    end
    object qryNotificationbooking_action: TSmallintField
      FieldName = 'booking_action'
    end
  end
  object qryMeetings: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select r.*, a.*, b.*,  w.*'
      'from health.bookings_rows r, anagraph.anagraphs a, '
      'health.bookings b, health.anagraph_wards_services w'
      'where '
      'r.anagraph_id = a.anagraph_id'
      'and '
      'r.confirmed = true'
      'and'
      'b.booking_id = r.booking_id'
      'and'
      'b.db_user_id = :db_user_id'
      'and'
      'w.id = b.service_id'
      'order by booking_date desc')
    Left = 776
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_user_id'
        ParamType = ptInput
        Value = 256
      end>
    object qryMeetingsbooking_id: TLargeintField
      FieldName = 'booking_id'
      Required = True
    end
    object qryMeetingsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryMeetingssince: TDateField
      FieldName = 'since'
    end
    object qryMeetingsuntil: TDateField
      FieldName = 'until'
    end
    object qryMeetingsnotes: TWideStringField
      FieldName = 'notes'
      Size = 2048
    end
    object qryMeetingsconfirmed: TBooleanField
      FieldName = 'confirmed'
    end
    object qryMeetingsopened: TBooleanField
      FieldName = 'opened'
    end
    object qryMeetingsdb_operator_id: TIntegerField
      FieldName = 'db_operator_id'
    end
    object qryMeetingsclosed: TBooleanField
      FieldName = 'closed'
    end
    object qryMeetingsclosed_date: TSQLTimeStampField
      FieldName = 'closed_date'
    end
    object qryMeetingsbooked: TBooleanField
      FieldName = 'booked'
    end
    object qryMeetingsbooking_date: TDateField
      FieldName = 'booking_date'
    end
    object qryMeetingsbooking_hour: TSmallintField
      FieldName = 'booking_hour'
    end
    object qryMeetingsbooking_mins: TSmallintField
      FieldName = 'booking_mins'
    end
    object qryMeetingssent: TBooleanField
      FieldName = 'sent'
    end
    object qryMeetingssent_date: TSQLTimeStampField
      FieldName = 'sent_date'
    end
    object qryMeetingsreceived: TBooleanField
      FieldName = 'received'
    end
    object qryMeetingsreceived_date: TSQLTimeStampField
      FieldName = 'received_date'
    end
    object qryMeetingsalarm_sent: TSmallintField
      FieldName = 'alarm_sent'
    end
    object qryMeetingsalarm_read: TSmallintField
      FieldName = 'alarm_read'
    end
    object qryMeetingsdistance: TFloatField
      FieldName = 'distance'
    end
    object qryMeetingsck_confirmed: TBooleanField
      FieldName = 'ck_confirmed'
    end
    object qryMeetingsinsurance_confirmed: TBooleanField
      FieldName = 'insurance_confirmed'
    end
    object qryMeetingsagreement_confirmed: TBooleanField
      FieldName = 'agreement_confirmed'
    end
    object qryMeetingsck_has_code: TBooleanField
      FieldName = 'ck_has_code'
    end
    object qryMeetingsck_code: TWideStringField
      FieldName = 'ck_code'
    end
    object qryMeetingsck_has_price: TBooleanField
      FieldName = 'ck_has_price'
    end
    object qryMeetingsck_price: TFloatField
      FieldName = 'ck_price'
    end
    object qryMeetingsck_fast: TBooleanField
      FieldName = 'ck_fast'
    end
    object qryMeetingsck_different_address: TBooleanField
      FieldName = 'ck_different_address'
    end
    object qryMeetingsck_address: TWideStringField
      FieldName = 'ck_address'
      Size = 1024
    end
    object qryMeetingsck_has_place: TBooleanField
      FieldName = 'ck_has_place'
    end
    object qryMeetingsck_place: TWideStringField
      FieldName = 'ck_place'
      Size = 1024
    end
    object qryMeetingsck_take_list: TBooleanField
      FieldName = 'ck_take_list'
    end
    object qryMeetingsck_notes: TWideMemoField
      FieldName = 'ck_notes'
      BlobType = ftWideMemo
    end
    object qryMeetingscall_center_notes: TWideMemoField
      FieldName = 'call_center_notes'
      BlobType = ftWideMemo
    end
    object qryMeetingsinsert_date: TSQLTimeStampField
      FieldName = 'insert_date'
    end
    object qryMeetingsupdate_date: TSQLTimeStampField
      FieldName = 'update_date'
    end
    object qryMeetingscancelled: TBooleanField
      FieldName = 'cancelled'
    end
    object qryMeetingsbooking64: TWideStringField
      FieldName = 'booking64'
      Size = 64
    end
    object qryMeetingsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsanagraph_id_1: TIntegerField
      FieldName = 'anagraph_id_1'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsan_title: TWideStringField
      FieldName = 'an_title'
      ReadOnly = True
      Size = 32
    end
    object qryMeetingsan_name: TWideStringField
      FieldName = 'an_name'
      ReadOnly = True
      Size = 128
    end
    object qryMeetingsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      ReadOnly = True
      Size = 128
    end
    object qryMeetingsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      ReadOnly = True
      Required = True
      Size = 128
    end
    object qryMeetingsan_notes: TWideStringField
      FieldName = 'an_notes'
      ReadOnly = True
      Size = 512
    end
    object qryMeetingsan_address: TWideStringField
      FieldName = 'an_address'
      ReadOnly = True
      Size = 256
    end
    object qryMeetingsan_town: TWideStringField
      FieldName = 'an_town'
      ReadOnly = True
      Size = 128
    end
    object qryMeetingsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      ReadOnly = True
      Size = 8
    end
    object qryMeetingsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object qryMeetingsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      ReadOnly = True
      Size = 30
    end
    object qryMeetingsan_phone: TWideStringField
      FieldName = 'an_phone'
      ReadOnly = True
    end
    object qryMeetingsan_phone2: TWideStringField
      FieldName = 'an_phone2'
      ReadOnly = True
    end
    object qryMeetingsan_fax: TWideStringField
      FieldName = 'an_fax'
      ReadOnly = True
    end
    object qryMeetingsan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
    object qryMeetingsan_code: TWideStringField
      FieldName = 'an_code'
      ReadOnly = True
      Size = 15
    end
    object qryMeetingsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      ReadOnly = True
      Size = 16
    end
    object qryMeetingsan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 256
    end
    object qryMeetingsan_web: TWideStringField
      FieldName = 'an_web'
      ReadOnly = True
      Size = 128
    end
    object qryMeetingsan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
      ReadOnly = True
    end
    object qryMeetingsan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      ReadOnly = True
      Size = 255
    end
    object qryMeetingsan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      ReadOnly = True
      Size = 128
    end
    object qryMeetingsan_discount: TFloatField
      FieldName = 'an_discount'
      ReadOnly = True
    end
    object qryMeetingsan_distance: TIntegerField
      FieldName = 'an_distance'
      ReadOnly = True
    end
    object qryMeetingsan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
      ReadOnly = True
    end
    object qryMeetingsan_sex: TWideStringField
      FieldName = 'an_sex'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object qryMeetingsan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      ReadOnly = True
      Size = 3
    end
    object qryMeetingsan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      ReadOnly = True
      Size = 3
    end
    object qryMeetingsan_credit_line: TFloatField
      FieldName = 'an_credit_line'
      ReadOnly = True
    end
    object qryMeetingsan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
      ReadOnly = True
    end
    object qryMeetingsan_notes2: TWideStringField
      FieldName = 'an_notes2'
      ReadOnly = True
      Size = 40
    end
    object qryMeetingsan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryMeetingsan_edi: TBooleanField
      FieldName = 'an_edi'
      ReadOnly = True
    end
    object qryMeetingsan_privacy: TBooleanField
      FieldName = 'an_privacy'
      ReadOnly = True
    end
    object qryMeetingsan_office_id: TSmallintField
      FieldName = 'an_office_id'
      ReadOnly = True
    end
    object qryMeetingsan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      ReadOnly = True
      Size = 3
    end
    object qryMeetingsan_data_fido: TDateField
      FieldName = 'an_data_fido'
      ReadOnly = True
    end
    object qryMeetingsan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      ReadOnly = True
      Size = 30
    end
    object qryMeetingsan_user_update: TWideStringField
      FieldName = 'an_user_update'
      ReadOnly = True
      Size = 30
    end
    object qryMeetingsan_area_id: TSmallintField
      FieldName = 'an_area_id'
      ReadOnly = True
    end
    object qryMeetingsan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
      ReadOnly = True
    end
    object qryMeetingsan_area_code: TWideStringField
      FieldName = 'an_area_code'
      ReadOnly = True
      Size = 1
    end
    object qryMeetingsan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      ReadOnly = True
      Size = 1
    end
    object qryMeetingsan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
      ReadOnly = True
    end
    object qryMeetingsan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
      ReadOnly = True
    end
    object qryMeetingsan_documents: TSmallintField
      FieldName = 'an_documents'
      ReadOnly = True
    end
    object qryMeetingsan_last_date: TDateField
      FieldName = 'an_last_date'
      ReadOnly = True
    end
    object qryMeetingsan_birthdate: TDateField
      FieldName = 'an_birthdate'
      ReadOnly = True
    end
    object qryMeetingsan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
      ReadOnly = True
    end
    object qryMeetingsan_searchname: TWideStringField
      FieldName = 'an_searchname'
      ReadOnly = True
      Size = 128
    end
    object qryMeetingsan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
      ReadOnly = True
    end
    object qryMeetingsan_external_code: TWideStringField
      FieldName = 'an_external_code'
      ReadOnly = True
    end
    object qryMeetingsan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
      ReadOnly = True
    end
    object qryMeetingsan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      ReadOnly = True
      Size = 16
    end
    object qryMeetingsan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
      ReadOnly = True
    end
    object qryMeetingsan_sms: TBooleanField
      FieldName = 'an_sms'
      ReadOnly = True
    end
    object qryMeetingsan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      ReadOnly = True
      Size = 256
    end
    object qryMeetingsan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
      ReadOnly = True
    end
    object qryMeetingsan_status: TSmallintField
      FieldName = 'an_status'
      ReadOnly = True
    end
    object qryMeetingsan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
      ReadOnly = True
    end
    object qryMeetingsan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
      ReadOnly = True
    end
    object qryMeetingsan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
      ReadOnly = True
    end
    object qryMeetingsan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      ReadOnly = True
      Required = True
      Size = 2
    end
    object qryMeetingsan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object qryMeetingsan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      ReadOnly = True
      Size = 16
    end
    object qryMeetingsan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsan_image_id: TLargeintField
      FieldName = 'an_image_id'
      ReadOnly = True
    end
    object qryMeetingslatitude: TFloatField
      FieldName = 'latitude'
      ReadOnly = True
    end
    object qryMeetingslongitude: TFloatField
      FieldName = 'longitude'
      ReadOnly = True
    end
    object qryMeetingstest: TFloatField
      FieldName = 'test'
      ReadOnly = True
    end
    object qryMeetingssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 2048
    end
    object qryMeetingsan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      ReadOnly = True
      Size = 256
    end
    object qryMeetingsan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
      ReadOnly = True
    end
    object qryMeetingsanagraph64: TWideStringField
      FieldName = 'anagraph64'
      ReadOnly = True
      Size = 64
    end
    object qryMeetingsbooking_id_1: TLargeintField
      FieldName = 'booking_id_1'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsdb_session_id: TLargeintField
      FieldName = 'db_session_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsdiscipline_id: TSmallintField
      FieldName = 'discipline_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsitem_id: TLargeintField
      FieldName = 'item_id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsbook_since: TDateField
      FieldName = 'book_since'
      ReadOnly = True
    end
    object qryMeetingsbook_until: TDateField
      FieldName = 'book_until'
      ReadOnly = True
    end
    object qryMeetingsnotes_1: TWideStringField
      FieldName = 'notes_1'
      ReadOnly = True
      Size = 2048
    end
    object qryMeetingsconfirmed_1: TBooleanField
      FieldName = 'confirmed_1'
      ReadOnly = True
    end
    object qryMeetingsopened_1: TBooleanField
      FieldName = 'opened_1'
      ReadOnly = True
    end
    object qryMeetingsdb_operator_id_1: TIntegerField
      FieldName = 'db_operator_id_1'
      ReadOnly = True
    end
    object qryMeetingsclosed_1: TBooleanField
      FieldName = 'closed_1'
      ReadOnly = True
    end
    object qryMeetingsclosed_date_1: TSQLTimeStampField
      FieldName = 'closed_date_1'
      ReadOnly = True
    end
    object qryMeetingssent_1: TBooleanField
      FieldName = 'sent_1'
      ReadOnly = True
    end
    object qryMeetingssent_date_1: TSQLTimeStampField
      FieldName = 'sent_date_1'
      ReadOnly = True
    end
    object qryMeetingsreceived_1: TBooleanField
      FieldName = 'received_1'
      ReadOnly = True
    end
    object qryMeetingsreceived_date_1: TSQLTimeStampField
      FieldName = 'received_date_1'
      ReadOnly = True
    end
    object qryMeetingsactive: TBooleanField
      FieldName = 'active'
      ReadOnly = True
    end
    object qryMeetingscancelled_by_user: TBooleanField
      FieldName = 'cancelled_by_user'
      ReadOnly = True
    end
    object qryMeetingslevel: TSmallintField
      FieldName = 'level'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsother_person: TBooleanField
      FieldName = 'other_person'
      ReadOnly = True
    end
    object qryMeetingsother_person_id: TIntegerField
      FieldName = 'other_person_id'
      ReadOnly = True
    end
    object qryMeetingsservice_id: TIntegerField
      FieldName = 'service_id'
      ReadOnly = True
    end
    object qryMeetingsprescription: TBooleanField
      FieldName = 'prescription'
      ReadOnly = True
    end
    object qryMeetingsrelative: TBooleanField
      FieldName = 'relative'
      ReadOnly = True
    end
    object qryMeetingssearch_id: TLargeintField
      FieldName = 'search_id'
      ReadOnly = True
    end
    object qryMeetingsinsurance: TWideStringField
      FieldName = 'insurance'
      ReadOnly = True
      Size = 256
    end
    object qryMeetingsagreement: TWideStringField
      FieldName = 'agreement'
      ReadOnly = True
      Size = 256
    end
    object qryMeetingsoperator_notes: TWideStringField
      FieldName = 'operator_notes'
      ReadOnly = True
      Size = 1024
    end
    object qryMeetingsuser_notes: TWideStringField
      FieldName = 'user_notes'
      ReadOnly = True
      Size = 1024
    end
    object qryMeetingsinsert_date_1: TSQLTimeStampField
      FieldName = 'insert_date_1'
      ReadOnly = True
    end
    object qryMeetingsupdate_date_1: TSQLTimeStampField
      FieldName = 'update_date_1'
      ReadOnly = True
    end
    object qryMeetingsbooking64_1: TWideStringField
      FieldName = 'booking64_1'
      ReadOnly = True
      Required = True
      Size = 64
    end
    object qryMeetingsid: TLargeintField
      FieldName = 'id'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsanagraph_id_2: TIntegerField
      FieldName = 'anagraph_id_2'
      ReadOnly = True
      Required = True
    end
    object qryMeetingsdiscipline_id_1: TSmallintField
      FieldName = 'discipline_id_1'
      ReadOnly = True
      Required = True
    end
    object qryMeetingstitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Required = True
      Size = 1024
    end
    object qryMeetingsdescription: TWideMemoField
      FieldName = 'description'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryMeetingsitem_id_1: TLargeintField
      FieldName = 'item_id_1'
      ReadOnly = True
    end
    object qryMeetingsspecification: TWideStringField
      FieldName = 'specification'
      ReadOnly = True
      Size = 1024
    end
    object qryMeetingsspeciality: TWideStringField
      FieldName = 'speciality'
      ReadOnly = True
      Size = 1024
    end
    object qryMeetingssearch_index_1: TWideStringField
      FieldName = 'search_index_1'
      ReadOnly = True
      Size = 1024
    end
    object qryMeetingsold_item_id: TLargeintField
      FieldName = 'old_item_id'
      ReadOnly = True
    end
    object qryMeetingssearchstring: TWideStringField
      FieldName = 'searchstring'
      ReadOnly = True
      Size = 1024
    end
    object qryMeetingstsv: TWideMemoField
      FieldName = 'tsv'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object qryIndexSearc: TPgQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      '   SELECT id, discipline_name, prestazione, row_number() over()::integer as pos,'
      #9'FROM health.search_index ')
    Left = 544
    Top = 512
    object qryIndexSearcid: TLargeintField
      FieldName = 'id'
      Required = True
    end
    object qryIndexSearcprestazione: TWideStringField
      FieldName = 'prestazione'
      Size = 1024
    end
  end
  object spNotificationRead: TPgStoredProc
    StoredProcName = 'health.notification_read'
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT health.notification_read(:p_notification_id)')
    Left = 656
    Top = 472
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_notification_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'health.notification_read:0'
  end
end
