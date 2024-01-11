inherited dmPgAnagraph: TdmPgAnagraph
  Height = 550
  Width = 496
  inherited PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end
      item
        DBType = 520
        FieldType = ftDateTime
      end>
    Port = 5432
    Server = 'pg.januaservers.com'
    Left = 48
    Top = 24
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited tbUserSessionRoles: TUniTable
    Left = 48
    Top = 192
  end
  inherited dsUserSession: TDataSource
    Left = 48
    Top = 136
  end
  inherited qryUserSession: TUniQuery
    Left = 48
    Top = 80
  end
  inherited qryUserProfile: TUniQuery
    Left = 48
    Top = 248
  end
  inherited qryUser: TUniQuery
    Left = 48
  end
  inherited qryTowns: TUniQuery
    Left = 48
  end
  inherited testTable: TUniTable
    Left = 48
  end
  inherited PgUni: TPostgreSQLUniProvider
    Left = 48
    Top = 488
  end
  inherited spSetSchemaID: TUniStoredProc
    Left = 144
    Top = 456
    CommandStoredProcName = 'system.set_schema_id'
  end
  object qrySearchAddress: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT s.*'
      '  FROM system.db_users_profiles s'
      
        '  where upper(first_name || '#39' '#39' || last_name) like upper(:p_sear' +
        'ch)')
    Left = 144
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_search'
        Value = nil
      end>
    object qrySearchAddressdb_user_id: TIntegerField
      FieldName = 'db_user_id'
      Required = True
    end
    object qrySearchAddresscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object qrySearchAddressregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qrySearchAddressdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qrySearchAddresstown_id: TIntegerField
      FieldName = 'town_id'
    end
    object qrySearchAddressfirst_name: TWideStringField
      FieldName = 'first_name'
      Size = 128
    end
    object qrySearchAddresslast_name: TWideStringField
      FieldName = 'last_name'
      Size = 128
    end
    object qrySearchAddressaddress_street: TWideStringField
      FieldName = 'address_street'
      Size = 128
    end
    object qrySearchAddressaddress_number: TWideStringField
      FieldName = 'address_number'
      Size = 12
    end
    object qrySearchAddressaddress_postal_code: TWideStringField
      FieldName = 'address_postal_code'
    end
    object qrySearchAddressphone: TWideStringField
      FieldName = 'phone'
    end
    object qrySearchAddresscellular_phone: TWideStringField
      FieldName = 'cellular_phone'
    end
    object qrySearchAddresswork_phone: TWideStringField
      FieldName = 'work_phone'
    end
    object qrySearchAddressfax_number: TWideStringField
      FieldName = 'fax_number'
    end
    object qrySearchAddressgender_code: TWideStringField
      FieldName = 'gender_code'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySearchAddressbirth_date: TDateField
      FieldName = 'birth_date'
    end
    object qrySearchAddressbirth_country_id: TSmallintField
      FieldName = 'birth_country_id'
    end
    object qrySearchAddressbirth_region_id: TSmallintField
      FieldName = 'birth_region_id'
    end
    object qrySearchAddressbirth_district_id: TSmallintField
      FieldName = 'birth_district_id'
    end
    object qrySearchAddressbirth_town_id: TIntegerField
      FieldName = 'birth_town_id'
    end
    object qrySearchAddresspublic_email: TWideStringField
      FieldName = 'public_email'
      Size = 256
    end
    object qrySearchAddresstitle: TWideStringField
      FieldName = 'title'
      Size = 30
    end
    object qrySearchAddresssearch_name: TWideStringField
      FieldName = 'search_name'
      Size = 256
    end
    object qrySearchAddressreverse_search: TWideStringField
      FieldName = 'reverse_search'
      Size = 256
    end
    object qrySearchAddressaddress_full: TWideStringField
      FieldName = 'address_full'
      Size = 2048
    end
    object qrySearchAddresslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySearchAddresslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySearchAddressfiscal_code: TWideStringField
      FieldName = 'fiscal_code'
    end
    object qrySearchAddresssmssent: TBooleanField
      FieldName = 'smssent'
    end
    object qrySearchAddresssmsconfirmed: TBooleanField
      FieldName = 'smsconfirmed'
    end
    object qrySearchAddresssmsdate: TDateTimeField
      FieldName = 'smsdate'
    end
    object qrySearchAddresssmschecknumber: TWideStringField
      FieldName = 'smschecknumber'
      Size = 4
    end
    object qrySearchAddressaddress_town: TWideStringField
      FieldName = 'address_town'
      Size = 256
    end
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
        'sel_id, an_country_id, an_iso_country_code2, deleted)'
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
        'ountry_code2, :deleted)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.anagraphs'
      'WHERE'
      '  jguid = :Old_jguid')
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
        ' :an_iso_country_code2, deleted = :deleted'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.anagraphs'
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
        ' vessel_id, an_country_id, an_iso_country_code2, deleted FROM an' +
        'agraph.anagraphs'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select a.*, i.* '
      'from anagraph.anagraphs a, anagraph.identities i '
      'where '
      'a.anagraph_id = i.anagraph_id'
      'and'
      '(a.db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      'i.an_group_id = :an_group_id'
      'and'
      '(upper(an_last_name) like upper(:last_name) or :last_name = '#39'%'#39')'
      'and'
      '(a.anagraph_id = :anagraph_id or :anagraph_id = 0)'
      'and not a.deleted'
      'order by a.an_last_name')
    MasterSource = dsGroups
    BeforeOpen = qryAnagraphsBeforeOpen
    AfterOpen = qryAnagraphsAfterOpen
    AfterPost = qryAnagraphsAfterPost
    AfterScroll = qryAnagraphsAfterScroll
    OnNewRecord = qryAnagraphsNewRecord
    Left = 144
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftSmallint
        Name = 'an_group_id'
        ParamType = ptInput
        Value = 5
      end
      item
        DataType = ftString
        Name = 'last_name'
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
      Size = 8
    end
    object qryAnagraphsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryAnagraphsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryAnagraphsan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qryAnagraphsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryAnagraphsan_fax: TWideStringField
      FieldName = 'an_fax'
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
      Size = 16
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
    object qryAnagraphsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
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
    object qryAnagraphslkpCategory: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpCategory'
      LookupDataSet = lkpCategories
      LookupKeyFields = 'category_id'
      LookupResultField = 'category_name'
      KeyFields = 'main_category_id'
      Size = 128
      Lookup = True
    end
    object qryAnagraphsan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
    object qryAnagraphsanag_jguid: TWideStringField
      FieldName = 'anag_jguid'
      Required = True
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
      Required = True
      Size = 38
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
    object qryAnagraphsdeleted: TBooleanField
      FieldName = 'deleted'
      Required = True
    end
    object qryAnagraphsadnt_jguid: TWideStringField
      FieldName = 'adnt_jguid'
      ReadOnly = True
      Required = True
      Size = 40
    end
    object qryAnagraphsadnt_deleted: TBooleanField
      FieldName = 'adnt_deleted'
      ReadOnly = True
    end
  end
  object qryGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.groups'
      
        '  (db_schema_id, an_group_id, group_des, contact_group, sub_grou' +
        'p, sub_group_des, settings, position, accounting, cod_account, l' +
        'ocal, group_cod, ledger_cod, subledger_cod, grouping, descriptio' +
        'n)'
      'VALUES'
      
        '  (:db_schema_id, :an_group_id, :group_des, :contact_group, :sub' +
        '_group, :sub_group_des, :settings, :position, :accounting, :cod_' +
        'account, :local, :group_cod, :ledger_cod, :subledger_cod, :group' +
        'ing, :description)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.groups'
      'SET'
      
        '  db_schema_id = :db_schema_id, an_group_id = :an_group_id, grou' +
        'p_des = :group_des, contact_group = :contact_group, sub_group = ' +
        ':sub_group, sub_group_des = :sub_group_des, settings = :settings' +
        ', position = :position, accounting = :accounting, cod_account = ' +
        ':cod_account, local = :local, group_cod = :group_cod, ledger_cod' +
        ' = :ledger_cod, subledger_cod = :subledger_cod, grouping = :grou' +
        'ping, description = :description'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, an_group_id, group_des, contact_group, sub_' +
        'group, sub_group_des, settings, position, accounting, cod_accoun' +
        't, local, group_cod, ledger_cod, subledger_cod, grouping, descri' +
        'ption FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '      g.* '
      'from '
      '    anagraph.groups g'
      'where '
      '     (db_schema_id = :db_schema_id or db_schema_id = 0)')
    AfterScroll = qryGroupsAfterScroll
    Left = 144
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end>
    object qryGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryGroupsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object qryGroupsgroup_des: TWideStringField
      FieldName = 'group_des'
      Required = True
    end
    object qryGroupscontact_group: TSmallintField
      FieldName = 'contact_group'
    end
    object qryGroupssub_group: TSmallintField
      FieldName = 'sub_group'
    end
    object qryGroupssub_group_des: TWideStringField
      FieldName = 'sub_group_des'
    end
    object qryGroupssettings: TWideStringField
      FieldName = 'settings'
    end
    object qryGroupsposition: TSmallintField
      FieldName = 'position'
    end
    object qryGroupsaccounting: TBooleanField
      FieldName = 'accounting'
      Required = True
    end
    object qryGroupscod_account: TWideStringField
      FieldName = 'cod_account'
      Size = 10
    end
    object qryGroupslocal: TBooleanField
      FieldName = 'local'
    end
    object qryGroupsgroup_cod: TWideStringField
      FieldName = 'group_cod'
      Size = 2
    end
    object qryGroupsledger_cod: TWideStringField
      FieldName = 'ledger_cod'
      Size = 3
    end
    object qryGroupssubledger_cod: TWideStringField
      FieldName = 'subledger_cod'
      Size = 10
    end
    object qryGroupsgrouping: TWideStringField
      FieldName = 'grouping'
      Size = 3
    end
    object qryGroupsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 30
    end
  end
  object dsGroups: TDataSource
    DataSet = qryGroups
    Left = 144
    Top = 160
  end
  object sqlInsertIdentity: TUniSQL
    Connection = PgErgoConnection
    SQL.Strings = (
      'INSERT INTO anagraph.identities('
      
        '            db_schema_id, anagraph_id, an_group_id, an_agent_id,' +
        ' an_agent_group_id, '
      
        '            an_credit_limit, an_credit_days, an_credit, an_credi' +
        't_notes, '
      '            an_credit_used, an_overdue_credit)'
      
        '    VALUES (:db_schema_id, :anagraph_id, :an_group_id, :an_agent' +
        '_id, :an_agent_group_id, '
      
        '            :an_credit_limit, :an_credit_days, :an_credit, :an_c' +
        'redit_notes, '
      '            :an_credit_used, :an_overdue_credit);')
    Left = 392
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_group_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_agent_id'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_agent_group_id'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_limit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_days'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_notes'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_credit_used'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'an_overdue_credit'
        Value = nil
      end>
  end
  object qryIdentities: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.identities'
      
        '  (db_schema_id, anagraph_id, an_group_id, an_agent_id, an_agent' +
        '_group_id, an_credit_limit, an_credit_days, an_credit, an_credit' +
        '_notes, an_credit_used, an_overdue_credit)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_group_id, :an_agent_id, :an_' +
        'agent_group_id, :an_credit_limit, :an_credit_days, :an_credit, :' +
        'an_credit_notes, :an_credit_used, :an_overdue_credit)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.identities'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_g' +
        'roup_id = :an_group_id, an_agent_id = :an_agent_id, an_agent_gro' +
        'up_id = :an_agent_group_id, an_credit_limit = :an_credit_limit, ' +
        'an_credit_days = :an_credit_days, an_credit = :an_credit, an_cre' +
        'dit_notes = :an_credit_notes, an_credit_used = :an_credit_used, ' +
        'an_overdue_credit = :an_overdue_credit'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_group_id, an_agent_id, an_a' +
        'gent_group_id, an_credit_limit, an_credit_days, an_credit, an_cr' +
        'edit_notes, an_credit_used, an_overdue_credit FROM anagraph.iden' +
        'tities'
      'WHERE'
      '  anagraph_id = :anagraph_id AND an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.identities'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from anagraph.identities'
      'where anagraph_id = :anagraph_id and an_group_id = :an_group_id')
    MasterFields = 'anagraph_id;an_group_id'
    DetailFields = 'anagraph_id;an_group_id'
    BeforeOpen = qryIdentitiesBeforeOpen
    Left = 280
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_group_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryIdentitiesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryIdentitiesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryIdentitiesan_group_id: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object qryIdentitiesan_agent_id: TIntegerField
      FieldName = 'an_agent_id'
      Required = True
    end
    object qryIdentitiesan_agent_group_id: TIntegerField
      FieldName = 'an_agent_group_id'
      Required = True
    end
    object qryIdentitiesan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
      Required = True
    end
    object qryIdentitiesan_credit_days: TSmallintField
      FieldName = 'an_credit_days'
      Required = True
    end
    object qryIdentitiesan_credit: TBooleanField
      FieldName = 'an_credit'
      Required = True
    end
    object qryIdentitiesan_credit_notes: TWideStringField
      FieldName = 'an_credit_notes'
      Size = 128
    end
    object qryIdentitiesan_credit_used: TFloatField
      FieldName = 'an_credit_used'
    end
    object qryIdentitiesan_overdue_credit: TFloatField
      FieldName = 'an_overdue_credit'
    end
  end
  object lkpGroups: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.groups'
      
        '  (db_schema_id, an_group_id, group_des, contact_group, sub_grou' +
        'p, sub_group_des, settings, position, accounting, cod_account, l' +
        'ocal, group_cod, ledger_cod, subledger_cod, grouping, descriptio' +
        'n)'
      'VALUES'
      
        '  (:db_schema_id, :an_group_id, :group_des, :contact_group, :sub' +
        '_group, :sub_group_des, :settings, :position, :accounting, :cod_' +
        'account, :local, :group_cod, :ledger_cod, :subledger_cod, :group' +
        'ing, :description)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.groups'
      'SET'
      
        '  db_schema_id = :db_schema_id, an_group_id = :an_group_id, grou' +
        'p_des = :group_des, contact_group = :contact_group, sub_group = ' +
        ':sub_group, sub_group_des = :sub_group_des, settings = :settings' +
        ', position = :position, accounting = :accounting, cod_account = ' +
        ':cod_account, local = :local, group_cod = :group_cod, ledger_cod' +
        ' = :ledger_cod, subledger_cod = :subledger_cod, grouping = :grou' +
        'ping, description = :description'
      'WHERE'
      '  an_group_id = :Old_an_group_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :Old_an_group_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, an_group_id, group_des, contact_group, sub_' +
        'group, sub_group_des, settings, position, accounting, cod_accoun' +
        't, local, group_cod, ledger_cod, subledger_cod, grouping, descri' +
        'ption FROM anagraph.groups'
      'WHERE'
      '  an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.groups'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '      g.* '
      'from '
      '    anagraph.groups g'
      'where '
      '     (db_schema_id = :db_schema_id or db_schema_id = 0)')
    AfterScroll = qryGroupsAfterScroll
    Left = 280
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end>
    object lkpGroupsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object lkpGroupsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object lkpGroupsgroup_des: TWideStringField
      FieldName = 'group_des'
      Required = True
    end
    object lkpGroupscontact_group: TSmallintField
      FieldName = 'contact_group'
    end
    object lkpGroupssub_group: TSmallintField
      FieldName = 'sub_group'
    end
    object lkpGroupssub_group_des: TWideStringField
      FieldName = 'sub_group_des'
    end
    object lkpGroupssettings: TWideStringField
      FieldName = 'settings'
    end
    object lkpGroupsposition: TSmallintField
      FieldName = 'position'
    end
    object lkpGroupsaccounting: TBooleanField
      FieldName = 'accounting'
      Required = True
    end
    object lkpGroupscod_account: TWideStringField
      FieldName = 'cod_account'
      Size = 10
    end
    object lkpGroupslocal: TBooleanField
      FieldName = 'local'
    end
    object lkpGroupsgroup_cod: TWideStringField
      FieldName = 'group_cod'
      Size = 2
    end
    object lkpGroupsledger_cod: TWideStringField
      FieldName = 'ledger_cod'
      Size = 3
    end
    object lkpGroupssubledger_cod: TWideStringField
      FieldName = 'subledger_cod'
      Size = 10
    end
    object lkpGroupsgrouping: TWideStringField
      FieldName = 'grouping'
      Size = 3
    end
    object lkpGroupsdescription: TWideStringField
      FieldName = 'description'
      Required = True
      Size = 30
    end
  end
  object qrySubAnagraphs: TUniQuery
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
        'l_code, an_main_group_id, an_image_id)'
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
        'scal_code, :an_main_group_id, :an_image_id)')
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
        '_id = :an_image_id'
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
        'iscal_code, an_main_group_id, an_image_id FROM anagraph.anagraph' +
        's'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select a.*, i.* '
      'from anagraph.anagraphs a, anagraph.identities i '
      'where '
      '(a.db_schema_id = :db_schema_id or :db_schema_id = 0)'
      'and'
      'a.anagraph_id = i.anagraph_id'
      'and'
      'i.an_group_id = :an_group_id'
      'and'
      '(upper(an_last_name) like upper(:last_name) or :last_name = '#39'%'#39')'
      'and'
      '(a.anagraph_id = :anagraph_id or :anagraph_id = 0)'
      'order by an_last_name, an_name')
    MasterFields = 'anagraph_id'
    DetailFields = 'an_contact_id'
    BeforeOpen = qrySubAnagraphsBeforeOpen
    AfterOpen = qrySubAnagraphsAfterOpen
    AfterPost = qrySubAnagraphsAfterPost
    Left = 280
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_group_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'last_name'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = 0
      end>
    object qrySubAnagraphslkpGroupDes: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpGroupDes'
      LookupDataSet = lkpGroups
      LookupKeyFields = 'an_group_id'
      LookupResultField = 'group_des'
      KeyFields = 'an_group_id'
      Size = 128
      Lookup = True
    end
    object qrySubAnagraphsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qrySubAnagraphsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qrySubAnagraphsan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qrySubAnagraphsan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qrySubAnagraphsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qrySubAnagraphsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qrySubAnagraphsan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qrySubAnagraphsan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qrySubAnagraphsan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qrySubAnagraphsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qrySubAnagraphsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qrySubAnagraphsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qrySubAnagraphsan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qrySubAnagraphsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qrySubAnagraphsan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qrySubAnagraphsan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qrySubAnagraphsan_code: TWideStringField
      FieldName = 'an_code'
      Size = 15
    end
    object qrySubAnagraphsan_vat_numeric: TWideStringField
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qrySubAnagraphsan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qrySubAnagraphsan_web: TWideStringField
      FieldName = 'an_web'
      Size = 128
    end
    object qrySubAnagraphsan_contact_id: TIntegerField
      FieldName = 'an_contact_id'
    end
    object qrySubAnagraphsan_bank_account: TWideStringField
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qrySubAnagraphsan_payment_des: TWideStringField
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qrySubAnagraphsan_discount: TFloatField
      FieldName = 'an_discount'
    end
    object qrySubAnagraphsan_distance: TIntegerField
      FieldName = 'an_distance'
    end
    object qrySubAnagraphsan_distance_mesunit: TSmallintField
      FieldName = 'an_distance_mesunit'
    end
    object qrySubAnagraphsan_sex: TWideStringField
      FieldName = 'an_sex'
      Required = True
      Size = 1
    end
    object qrySubAnagraphsan_cod_comune: TWideStringField
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qrySubAnagraphsan_cod_provincia: TWideStringField
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qrySubAnagraphsan_credit_line: TFloatField
      FieldName = 'an_credit_line'
    end
    object qrySubAnagraphsan_currency_id: TSmallintField
      FieldName = 'an_currency_id'
      Required = True
    end
    object qrySubAnagraphsan_notes2: TWideStringField
      FieldName = 'an_notes2'
      Size = 40
    end
    object qrySubAnagraphsan_notes3: TWideMemoField
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qrySubAnagraphsan_edi: TBooleanField
      FieldName = 'an_edi'
    end
    object qrySubAnagraphsan_privacy: TBooleanField
      FieldName = 'an_privacy'
    end
    object qrySubAnagraphsan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
    object qrySubAnagraphsan_cod_prov_rif: TWideStringField
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qrySubAnagraphsan_data_fido: TDateField
      FieldName = 'an_data_fido'
    end
    object qrySubAnagraphsan_user_insert: TWideStringField
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qrySubAnagraphsan_user_update: TWideStringField
      FieldName = 'an_user_update'
      Size = 30
    end
    object qrySubAnagraphsan_area_id: TSmallintField
      FieldName = 'an_area_id'
    end
    object qrySubAnagraphsan_agent_id: TSmallintField
      FieldName = 'an_agent_id'
    end
    object qrySubAnagraphsan_area_code: TWideStringField
      FieldName = 'an_area_code'
      Size = 1
    end
    object qrySubAnagraphsan_zone_id: TWideStringField
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qrySubAnagraphsan_ins_id: TLargeintField
      FieldName = 'an_ins_id'
    end
    object qrySubAnagraphsan_upd_id: TLargeintField
      FieldName = 'an_upd_id'
    end
    object qrySubAnagraphsan_documents: TSmallintField
      FieldName = 'an_documents'
    end
    object qrySubAnagraphsan_last_date: TDateField
      FieldName = 'an_last_date'
    end
    object qrySubAnagraphsan_birthdate: TDateField
      FieldName = 'an_birthdate'
    end
    object qrySubAnagraphsan_office_type_id: TSmallintField
      FieldName = 'an_office_type_id'
    end
    object qrySubAnagraphsan_searchname: TWideStringField
      FieldName = 'an_searchname'
      Size = 128
    end
    object qrySubAnagraphsan_extra_ue_flag: TBooleanField
      FieldName = 'an_extra_ue_flag'
    end
    object qrySubAnagraphsan_external_code: TWideStringField
      FieldName = 'an_external_code'
    end
    object qrySubAnagraphsan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qrySubAnagraphsan_personal_fiscal_code: TWideStringField
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qrySubAnagraphsan_privacy_print: TSmallintField
      FieldName = 'an_privacy_print'
    end
    object qrySubAnagraphsan_sms: TBooleanField
      FieldName = 'an_sms'
    end
    object qrySubAnagraphsan_encrypted_fiscal_code: TWideStringField
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qrySubAnagraphsan_vat_purcentage: TSmallintField
      FieldName = 'an_vat_purcentage'
    end
    object qrySubAnagraphsan_status: TSmallintField
      FieldName = 'an_status'
    end
    object qrySubAnagraphsan_ownsite: TBooleanField
      FieldName = 'an_ownsite'
    end
    object qrySubAnagraphsan_insurance_id: TLargeintField
      FieldName = 'an_insurance_id'
    end
    object qrySubAnagraphsan_anagraphs_anagraph_id: TIntegerField
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qrySubAnagraphsan_main_language_code: TWideStringField
      FieldName = 'an_main_language_code'
      Required = True
      Size = 2
    end
    object qrySubAnagraphsan_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qrySubAnagraphsan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qrySubAnagraphsan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qrySubAnagraphsan_image_id: TLargeintField
      FieldName = 'an_image_id'
    end
    object qrySubAnagraphsan_cat_id: TSmallintField
      FieldName = 'an_cat_id'
    end
    object qrySubAnagraphslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qrySubAnagraphslongitude: TFloatField
      FieldName = 'longitude'
    end
    object qrySubAnagraphstest: TFloatField
      FieldName = 'test'
    end
    object qrySubAnagraphssearch_index: TWideStringField
      FieldName = 'search_index'
      Size = 2048
    end
    object qrySubAnagraphsan_birthplace: TWideStringField
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qrySubAnagraphsan_birthplace_code: TWideStringField
      FieldName = 'an_birthplace_code'
    end
    object qrySubAnagraphsanagraph64: TWideStringField
      FieldName = 'anagraph64'
      Size = 64
    end
    object qrySubAnagraphsdb_schema_id_1: TIntegerField
      FieldName = 'db_schema_id_1'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsanagraph_id_1: TIntegerField
      FieldName = 'anagraph_id_1'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_group_id: TSmallintField
      FieldName = 'an_group_id'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_agent_id_1: TIntegerField
      FieldName = 'an_agent_id_1'
      ReadOnly = True
    end
    object qrySubAnagraphsan_agent_group_id: TIntegerField
      FieldName = 'an_agent_group_id'
      ReadOnly = True
    end
    object qrySubAnagraphsan_credit_limit: TFloatField
      FieldName = 'an_credit_limit'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_credit_days: TSmallintField
      FieldName = 'an_credit_days'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_credit: TBooleanField
      FieldName = 'an_credit'
      ReadOnly = True
      Required = True
    end
    object qrySubAnagraphsan_credit_notes: TWideStringField
      FieldName = 'an_credit_notes'
      ReadOnly = True
      Size = 128
    end
    object qrySubAnagraphsan_credit_used: TFloatField
      FieldName = 'an_credit_used'
      ReadOnly = True
    end
    object qrySubAnagraphsan_overdue_credit: TFloatField
      FieldName = 'an_overdue_credit'
      ReadOnly = True
    end
  end
  object dsSubAngraphs: TDataSource
    DataSet = qrySubAnagraphs
    Left = 280
    Top = 152
  end
  object qrySubIdentities: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO anagraph.identities'
      
        '  (db_schema_id, anagraph_id, an_group_id, an_agent_id, an_agent' +
        '_group_id, an_credit_limit, an_credit_days, an_credit, an_credit' +
        '_notes, an_credit_used, an_overdue_credit)'
      'VALUES'
      
        '  (:db_schema_id, :anagraph_id, :an_group_id, :an_agent_id, :an_' +
        'agent_group_id, :an_credit_limit, :an_credit_days, :an_credit, :' +
        'an_credit_notes, :an_credit_used, :an_overdue_credit)')
    SQLDelete.Strings = (
      'DELETE FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLUpdate.Strings = (
      'UPDATE anagraph.identities'
      'SET'
      
        '  db_schema_id = :db_schema_id, anagraph_id = :anagraph_id, an_g' +
        'roup_id = :an_group_id, an_agent_id = :an_agent_id, an_agent_gro' +
        'up_id = :an_agent_group_id, an_credit_limit = :an_credit_limit, ' +
        'an_credit_days = :an_credit_days, an_credit = :an_credit, an_cre' +
        'dit_notes = :an_credit_notes, an_credit_used = :an_credit_used, ' +
        'an_overdue_credit = :an_overdue_credit'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id')
    SQLLock.Strings = (
      'SELECT * FROM anagraph.identities'
      'WHERE'
      
        '  anagraph_id = :Old_anagraph_id AND an_group_id = :Old_an_group' +
        '_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT db_schema_id, anagraph_id, an_group_id, an_agent_id, an_a' +
        'gent_group_id, an_credit_limit, an_credit_days, an_credit, an_cr' +
        'edit_notes, an_credit_used, an_overdue_credit FROM anagraph.iden' +
        'tities'
      'WHERE'
      '  anagraph_id = :anagraph_id AND an_group_id = :an_group_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.identities'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from anagraph.identities'
      'where anagraph_id = :anagraph_id and an_group_id = :an_group_id')
    MasterSource = dsSubAngraphs
    MasterFields = 'anagraph_id;an_group_id'
    DetailFields = 'anagraph_id;an_group_id'
    Left = 280
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_group_id'
        ParamType = ptInput
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'an_group_id'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'an_agent_id'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'an_agent_group_id'
      Required = True
    end
    object FloatField1: TFloatField
      FieldName = 'an_credit_limit'
      Required = True
    end
    object SmallintField2: TSmallintField
      FieldName = 'an_credit_days'
      Required = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'an_credit'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'an_credit_notes'
      Size = 128
    end
    object FloatField2: TFloatField
      FieldName = 'an_credit_used'
    end
    object FloatField3: TFloatField
      FieldName = 'an_overdue_credit'
    end
  end
  object qryAnagraphCategoriesMView: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from  anagraph.anagraphs_categories_mview ')
    Left = 280
    Top = 264
    object qryAnagraphCategoriesMViewmaster_category_name: TWideStringField
      DisplayWidth = 25
      FieldName = 'master_category_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewmaster_image_id: TSmallintField
      DisplayWidth = 13
      FieldName = 'master_image_id'
    end
    object qryAnagraphCategoriesMViewcategory_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'category_id'
    end
    object qryAnagraphCategoriesMViewcategory_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'category_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewimage_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'image_id'
    end
    object qryAnagraphCategoriesMViewculture_code: TWideStringField
      DisplayWidth = 10
      FieldName = 'culture_code'
      FixedChar = True
      Size = 5
    end
    object qryAnagraphCategoriesMViewtrans_category_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'trans_category_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewdb_schema_id: TIntegerField
      DisplayWidth = 11
      FieldName = 'db_schema_id'
    end
    object qryAnagraphCategoriesMViewanagraph_id: TIntegerField
      DisplayWidth = 10
      FieldName = 'anagraph_id'
    end
    object qryAnagraphCategoriesMViewan_title: TWideStringField
      DisplayWidth = 32
      FieldName = 'an_title'
      Size = 32
    end
    object qryAnagraphCategoriesMViewan_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_second_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_last_name: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_notes: TWideStringField
      DisplayWidth = 512
      FieldName = 'an_notes'
      Size = 512
    end
    object qryAnagraphCategoriesMViewan_address: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_address'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_town: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_town'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_postal_code: TWideStringField
      DisplayWidth = 12
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryAnagraphCategoriesMViewan_iso_country_code: TWideStringField
      DisplayWidth = 17
      FieldName = 'an_iso_country_code'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_state_province: TWideStringField
      DisplayWidth = 30
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryAnagraphCategoriesMViewan_phone: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_phone'
    end
    object qryAnagraphCategoriesMViewan_phone2: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_phone2'
    end
    object qryAnagraphCategoriesMViewan_fax: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_fax'
    end
    object qryAnagraphCategoriesMViewan_cellular: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_cellular'
    end
    object qryAnagraphCategoriesMViewan_code: TWideStringField
      DisplayWidth = 15
      FieldName = 'an_code'
      Size = 15
    end
    object qryAnagraphCategoriesMViewan_vat_numeric: TWideStringField
      DisplayWidth = 16
      FieldName = 'an_vat_numeric'
      Size = 16
    end
    object qryAnagraphCategoriesMViewan_email: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_email'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_web: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_web'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_contact_id: TIntegerField
      DisplayWidth = 11
      FieldName = 'an_contact_id'
    end
    object qryAnagraphCategoriesMViewan_bank_account: TWideStringField
      DisplayWidth = 255
      FieldName = 'an_bank_account'
      Size = 255
    end
    object qryAnagraphCategoriesMViewan_payment_des: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_payment_des'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_discount: TFloatField
      DisplayWidth = 10
      FieldName = 'an_discount'
    end
    object qryAnagraphCategoriesMViewan_distance: TIntegerField
      DisplayWidth = 10
      FieldName = 'an_distance'
    end
    object qryAnagraphCategoriesMViewan_distance_mesunit: TSmallintField
      DisplayWidth = 16
      FieldName = 'an_distance_mesunit'
    end
    object qryAnagraphCategoriesMViewan_sex: TWideStringField
      DisplayWidth = 5
      FieldName = 'an_sex'
      Size = 1
    end
    object qryAnagraphCategoriesMViewan_cod_comune: TWideStringField
      DisplayWidth = 13
      FieldName = 'an_cod_comune'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_cod_provincia: TWideStringField
      DisplayWidth = 14
      FieldName = 'an_cod_provincia'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_credit_line: TFloatField
      DisplayWidth = 11
      FieldName = 'an_credit_line'
    end
    object qryAnagraphCategoriesMViewan_currency_id: TSmallintField
      DisplayWidth = 12
      FieldName = 'an_currency_id'
    end
    object qryAnagraphCategoriesMViewan_cat_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_cat_id'
    end
    object qryAnagraphCategoriesMViewan_notes2: TWideStringField
      DisplayWidth = 40
      FieldName = 'an_notes2'
      Size = 40
    end
    object qryAnagraphCategoriesMViewan_notes3: TWideMemoField
      DisplayWidth = 10
      FieldName = 'an_notes3'
      BlobType = ftWideMemo
    end
    object qryAnagraphCategoriesMViewan_edi: TBooleanField
      DisplayWidth = 5
      FieldName = 'an_edi'
    end
    object qryAnagraphCategoriesMViewan_privacy: TBooleanField
      DisplayWidth = 8
      FieldName = 'an_privacy'
    end
    object qryAnagraphCategoriesMViewan_office_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_office_id'
    end
    object qryAnagraphCategoriesMViewan_cod_prov_rif: TWideStringField
      DisplayWidth = 13
      FieldName = 'an_cod_prov_rif'
      Size = 3
    end
    object qryAnagraphCategoriesMViewan_data_fido: TDateField
      DisplayWidth = 10
      FieldName = 'an_data_fido'
    end
    object qryAnagraphCategoriesMViewan_user_insert: TWideStringField
      DisplayWidth = 30
      FieldName = 'an_user_insert'
      Size = 30
    end
    object qryAnagraphCategoriesMViewan_user_update: TWideStringField
      DisplayWidth = 30
      FieldName = 'an_user_update'
      Size = 30
    end
    object qryAnagraphCategoriesMViewan_area_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_area_id'
    end
    object qryAnagraphCategoriesMViewan_agent_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_agent_id'
    end
    object qryAnagraphCategoriesMViewan_area_code: TWideStringField
      DisplayWidth = 11
      FieldName = 'an_area_code'
      Size = 1
    end
    object qryAnagraphCategoriesMViewan_zone_id: TWideStringField
      DisplayWidth = 9
      FieldName = 'an_zone_id'
      Size = 1
    end
    object qryAnagraphCategoriesMViewan_ins_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_ins_id'
    end
    object qryAnagraphCategoriesMViewan_upd_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_upd_id'
    end
    object qryAnagraphCategoriesMViewan_documents: TSmallintField
      DisplayWidth = 11
      FieldName = 'an_documents'
    end
    object qryAnagraphCategoriesMViewan_last_date: TDateField
      DisplayWidth = 10
      FieldName = 'an_last_date'
    end
    object qryAnagraphCategoriesMViewan_birthdate: TDateField
      DisplayWidth = 10
      FieldName = 'an_birthdate'
    end
    object qryAnagraphCategoriesMViewan_office_type_id: TSmallintField
      DisplayWidth = 14
      FieldName = 'an_office_type_id'
    end
    object qryAnagraphCategoriesMViewan_searchname: TWideStringField
      DisplayWidth = 128
      FieldName = 'an_searchname'
      Size = 128
    end
    object qryAnagraphCategoriesMViewan_extra_ue_flag: TBooleanField
      DisplayWidth = 14
      FieldName = 'an_extra_ue_flag'
    end
    object qryAnagraphCategoriesMViewan_external_code: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_external_code'
    end
    object qryAnagraphCategoriesMViewan_vat_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_vat_id'
    end
    object qryAnagraphCategoriesMViewan_personal_fiscal_code: TWideStringField
      DisplayWidth = 19
      FieldName = 'an_personal_fiscal_code'
      Size = 16
    end
    object qryAnagraphCategoriesMViewan_privacy_print: TSmallintField
      DisplayWidth = 13
      FieldName = 'an_privacy_print'
    end
    object qryAnagraphCategoriesMViewan_sms: TBooleanField
      DisplayWidth = 6
      FieldName = 'an_sms'
    end
    object qryAnagraphCategoriesMViewan_encrypted_fiscal_code: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_encrypted_fiscal_code'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_vat_purcentage: TSmallintField
      DisplayWidth = 15
      FieldName = 'an_vat_purcentage'
    end
    object qryAnagraphCategoriesMViewan_status: TSmallintField
      DisplayWidth = 10
      FieldName = 'an_status'
    end
    object qryAnagraphCategoriesMViewan_ownsite: TBooleanField
      DisplayWidth = 9
      FieldName = 'an_ownsite'
    end
    object qryAnagraphCategoriesMViewan_insurance_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_insurance_id'
    end
    object qryAnagraphCategoriesMViewan_anagraphs_anagraph_id: TIntegerField
      DisplayWidth = 22
      FieldName = 'an_anagraphs_anagraph_id'
    end
    object qryAnagraphCategoriesMViewan_main_language_code: TWideStringField
      DisplayWidth = 19
      FieldName = 'an_main_language_code'
      Size = 2
    end
    object qryAnagraphCategoriesMViewan_main_culture_code: TWideStringField
      DisplayWidth = 18
      FieldName = 'an_main_culture_code'
      Size = 6
    end
    object qryAnagraphCategoriesMViewan_fiscal_code: TWideStringField
      DisplayWidth = 16
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryAnagraphCategoriesMViewan_main_group_id: TIntegerField
      DisplayWidth = 14
      FieldName = 'an_main_group_id'
    end
    object qryAnagraphCategoriesMViewan_image_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'an_image_id'
    end
    object qryAnagraphCategoriesMViewlatitude: TFloatField
      DisplayWidth = 10
      FieldName = 'latitude'
    end
    object qryAnagraphCategoriesMViewlongitude: TFloatField
      DisplayWidth = 10
      FieldName = 'longitude'
    end
    object qryAnagraphCategoriesMViewtest: TFloatField
      DisplayWidth = 10
      FieldName = 'test'
    end
    object qryAnagraphCategoriesMViewsearch_index: TWideStringField
      DisplayWidth = 2048
      FieldName = 'search_index'
      Size = 2048
    end
    object qryAnagraphCategoriesMViewan_birthplace: TWideStringField
      DisplayWidth = 256
      FieldName = 'an_birthplace'
      Size = 256
    end
    object qryAnagraphCategoriesMViewan_birthplace_code: TWideStringField
      DisplayWidth = 20
      FieldName = 'an_birthplace_code'
    end
    object qryAnagraphCategoriesMViewanagraph64: TWideStringField
      DisplayWidth = 64
      FieldName = 'anagraph64'
      Size = 64
    end
    object qryAnagraphCategoriesMViewmain_category_id: TSmallintField
      DisplayWidth = 14
      FieldName = 'main_category_id'
    end
    object qryAnagraphCategoriesMViewosm_id: TLargeintField
      DisplayWidth = 15
      FieldName = 'osm_id'
    end
    object qryAnagraphCategoriesMViewan_description: TWideStringField
      DisplayWidth = 512
      FieldName = 'an_description'
      Size = 512
    end
    object qryAnagraphCategoriesMViewmaster_category_id: TSmallintField
      DisplayWidth = 16
      FieldName = 'master_category_id'
    end
    object qryAnagraphCategoriesMViewdistance: TFloatField
      DisplayWidth = 10
      FieldName = 'distance'
    end
    object qryAnagraphCategoriesMViewan_address_number: TWideStringField
      FieldName = 'an_address_number'
    end
  end
  object lkpCategories: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT category_id, culture_code, category_name'
      #9'FROM anagraph.categories_translations where culture_code = '#39'it'#39
      'order by category_name')
    Left = 392
    Top = 400
    object lkpCategoriescategory_id: TSmallintField
      FieldName = 'category_id'
      Required = True
    end
    object lkpCategoriesculture_code: TWideStringField
      FieldName = 'culture_code'
      Required = True
      FixedChar = True
      Size = 5
    end
    object lkpCategoriescategory_name: TWideStringField
      FieldName = 'category_name'
      Required = True
      Size = 128
    end
  end
  object dsAnagraph: TDataSource
    DataSet = qryAnagraphs
    Left = 144
    Top = 288
  end
  object qryLocations: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT category_id, osm_cat_id, osm_id, name, visible, creation,' +
        ' uid, lat, lon, distance, mapgroup, address, description, brand,' +
        ' mapoperator, phone, website, email, fax, addressfull, addr_city' +
        ', addr_number, addr_street, addr_postcode, tags, version, cuisin' +
        'e'
      #9'FROM anagraph.osm_location_categories'
      '        where category_id = :category_id')
    Left = 392
    Top = 456
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'category_id'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryAnLocations: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT * FROM anagraph.locations where anagraph_id = :anagraph_i' +
        'd')
    Left = 280
    Top = 376
    ParamData = <
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInput
        Value = nil
      end>
    object qryAnLocationsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryAnLocationsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryAnLocationslocation_id: TLargeintField
      FieldName = 'location_id'
      Required = True
    end
    object qryAnLocationsosm_id: TLargeintField
      FieldName = 'osm_id'
      Required = True
    end
    object qryAnLocationsjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryAnLocationsosm_jguid: TGuidField
      FieldName = 'osm_jguid'
      Size = 38
    end
    object qryAnLocationsanagraph_jguid: TGuidField
      FieldName = 'anagraph_jguid'
      Size = 38
    end
    object qryAnLocationsan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryAnLocationsan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryAnLocationsan_second_name: TWideStringField
      FieldName = 'an_second_name'
      Size = 128
    end
    object qryAnLocationsan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryAnLocationsan_notes: TWideStringField
      FieldName = 'an_notes'
      Size = 512
    end
    object qryAnLocationsan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryAnLocationsan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryAnLocationsan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryAnLocationsan_iso_country_code: TWideStringField
      FieldName = 'an_iso_country_code'
      Required = True
      Size = 3
    end
    object qryAnLocationsan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 128
    end
    object qryAnLocationsan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryAnLocationsan_phone2: TWideStringField
      FieldName = 'an_phone2'
    end
    object qryAnLocationsan_fax: TWideStringField
      FieldName = 'an_fax'
      Size = 30
    end
    object qryAnLocationsan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
  end
  object qryAdressess: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT db_schema_id, id, address_name, postal_code, state_provin' +
        'ce, town_name, town_code, '
      '       address, address_number, phone, full_address, '
      
        '       insert_date, update_date, upd_id, ins_id, user_insert, us' +
        'er_update, local, deleted, jguid, '
      
        '       country_code, email, anagraph_id, maps_json, pos, longitu' +
        'de, latitude'
      'FROM '
      '    anagraph.an_addresses'
      'WHERE'
      '    anagraph_id = :anagraph_id')
    MasterSource = dsAnagraph
    Left = 144
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anagraph_id'
        Value = nil
      end>
  end
end
