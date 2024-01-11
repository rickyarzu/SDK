inherited dmPgCarServiceBookingStorage: TdmPgCarServiceBookingStorage
  Height = 345
  Width = 564
  inherited PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end
      item
        DBType = 520
        FieldType = ftDateTime
      end
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 1024
      end>
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryBooking: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.booking_head_view'
      
        '  (id, office_id, jguid, db_schema_id, user_insert, insert_date,' +
        ' customer_id, state_id, branch_id, vehicle_model, vehicle_color,' +
        ' vehicle_numberplate, pickup_day, pickup_slot_id, return_day, re' +
        'turn_slot_id, an_last_name, an_vat_id, an_address, an_postal_cod' +
        'e, an_fiscal_code, an_town, service_name, service_address, an_ph' +
        'one, an_email, an_cellular, branch_address, branch_postal_code, ' +
        'branch_town, branch_phone, cust_first_name, cust_last_name, full' +
        '_address, cust_cellular, cust_email, pickup_address, return_addr' +
        'ess, pickup_time, return_time, pickup_date, return_date, driver1' +
        '_id, driver2_id, driver1_email, driver2_email, driver1_cellular,' +
        ' driver2_cellular, pickup_jguid, return_jguid)'
      'VALUES'
      
        '  (:id, :office_id, :jguid, :db_schema_id, :user_insert, :insert' +
        '_date, :customer_id, :state_id, :branch_id, :vehicle_model, :veh' +
        'icle_color, :vehicle_numberplate, :pickup_day, :pickup_slot_id, ' +
        ':return_day, :return_slot_id, :an_last_name, :an_vat_id, :an_add' +
        'ress, :an_postal_code, :an_fiscal_code, :an_town, :service_name,' +
        ' :service_address, :an_phone, :an_email, :an_cellular, :branch_a' +
        'ddress, :branch_postal_code, :branch_town, :branch_phone, :cust_' +
        'first_name, :cust_last_name, :full_address, :cust_cellular, :cus' +
        't_email, :pickup_address, :return_address, :pickup_time, :return' +
        '_time, :pickup_date, :return_date, :driver1_id, :driver2_id, :dr' +
        'iver1_email, :driver2_email, :driver1_cellular, :driver2_cellula' +
        'r, :pickup_jguid, :return_jguid)')
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.booking_head_view'
      'where jguid = :jguid'
      '')
    BeforePost = qryBookingBeforePost
    Left = 264
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'jguid'
        Value = '{9864D63A-2E17-4818-8F4A-5D6A285BC2E8}'
      end>
    object qryBookingid: TLargeintField
      FieldName = 'id'
    end
    object qryBookingoffice_id: TIntegerField
      FieldName = 'office_id'
    end
    object qryBookingjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryBookingdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryBookinguser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryBookinginsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryBookingcustomer_id: TIntegerField
      FieldName = 'customer_id'
    end
    object qryBookingstate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryBookingbranch_id: TIntegerField
      FieldName = 'branch_id'
    end
    object qryBookingvehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryBookingvehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryBookingvehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryBookingpickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryBookingpickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryBookingreturn_day: TDateField
      FieldName = 'return_day'
    end
    object qryBookingreturn_slot_id: TSmallintField
      FieldName = 'return_slot_id'
    end
    object qryBookingan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Size = 128
    end
    object qryBookingan_vat_id: TSmallintField
      FieldName = 'an_vat_id'
    end
    object qryBookingan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryBookingan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
    end
    object qryBookingan_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryBookingan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryBookingservice_name: TWideStringField
      FieldName = 'service_name'
      Size = 128
    end
    object qryBookingservice_address: TWideStringField
      FieldName = 'service_address'
      Size = 1024
    end
    object qryBookingan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
    end
    object qryBookingan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryBookingan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryBookingbranch_address: TWideStringField
      FieldName = 'branch_address'
      Size = 256
    end
    object qryBookingbranch_postal_code: TWideStringField
      FieldName = 'branch_postal_code'
    end
    object qryBookingbranch_town: TWideStringField
      FieldName = 'branch_town'
      Size = 128
    end
    object qryBookingbranch_phone: TWideStringField
      FieldName = 'branch_phone'
      Size = 30
    end
    object qryBookingcust_first_name: TWideStringField
      FieldName = 'cust_first_name'
      Size = 128
    end
    object qryBookingcust_last_name: TWideStringField
      FieldName = 'cust_last_name'
      Size = 128
    end
    object qryBookingfull_address: TWideStringField
      FieldName = 'full_address'
      Size = 256
    end
    object qryBookingcust_cellular: TWideStringField
      FieldName = 'cust_cellular'
    end
    object qryBookingcust_email: TWideStringField
      FieldName = 'cust_email'
      Size = 256
    end
    object qryBookingpickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 1024
    end
    object qryBookingreturn_address: TWideStringField
      FieldName = 'return_address'
      Size = 1024
    end
    object qryBookingpickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryBookingreturn_time: TWideStringField
      FieldName = 'return_time'
      Size = 6
    end
    object qryBookingpickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryBookingreturn_date: TDateField
      FieldName = 'return_date'
    end
    object qryBookingdriver1_id: TIntegerField
      FieldName = 'driver1_id'
    end
    object qryBookingdriver2_id: TIntegerField
      FieldName = 'driver2_id'
    end
    object qryBookingdriver1_email: TWideStringField
      FieldName = 'driver1_email'
      Size = 256
    end
    object qryBookingdriver2_email: TWideStringField
      FieldName = 'driver2_email'
      Size = 256
    end
    object qryBookingdriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryBookingdriver2_cellular: TWideStringField
      FieldName = 'driver2_cellular'
    end
    object qryBookingpickup_jguid: TGuidField
      FieldName = 'pickup_jguid'
      Size = 38
    end
    object qryBookingreturn_jguid: TGuidField
      FieldName = 'return_jguid'
      Size = 38
    end
  end
  object tbBookingStates: TUniTable
    TableName = 'carservice.booking_states'
    OrderFields = 'id'
    DataTypeMap = <
      item
        FieldName = 'description'
        FieldType = ftWideString
      end>
    Connection = PgErgoConnection
    Left = 72
    Top = 224
    object tbBookingStatesid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object tbBookingStatesdescription: TWideStringField
      FieldName = 'description'
      Required = True
    end
    object tbBookingStatesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
  end
  object qryLookupUsers: TUniQuery
    DataTypeMap = <
      item
        DBType = 508
        DBLengthMin = 256
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_name'
        FieldType = ftWideString
        FieldLength = 128
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      
        '   jguid, anagraph_id, an_name, an_last_name, an_address, an_cel' +
        'lular, an_email,  '
      '   an_main_group_id, an_office_id'
      'from '
      '  anagraph.anagraphs'
      'where '
      '  an_office_id = :office_id'
      '  and'
      '  an_main_group_id = 28'
      'union '
      'select '
      #39'{00000000-0000-0000-0000-000000000000}'#39', 0'
      ', '#39#39'::character varying, '#39#39', '#39#39', '#39#39', '#39#39',  0, 0')
    Left = 472
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 253223
      end>
    object qryLookupUsersjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryLookupUsersanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryLookupUsersan_name: TWideStringField
      FieldName = 'an_name'
      Size = 128
    end
    object qryLookupUsersan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryLookupUsersan_address: TWideStringField
      FieldName = 'an_address'
      Size = 128
    end
    object qryLookupUsersan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryLookupUsersan_email: TWideStringField
      FieldName = 'an_email'
      Size = 128
    end
    object qryLookupUsersan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
    end
    object qryLookupUsersan_office_id: TSmallintField
      FieldName = 'an_office_id'
    end
  end
  object qryOffice: TUniQuery
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
        ' :an_iso_country_code2, deleted = :deleted'
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
        ' vessel_id, an_country_id, an_iso_country_code2, deleted FROM an' +
        'agraph.anagraphs'
      'WHERE'
      '  anagraph_id = :anagraph_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      '   a.*'
      'from '
      '  anagraph.anagraphs a'
      'where '
      '  anagraph_id = :office_id'
      '')
    Left = 472
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'office_id'
        Value = nil
      end>
    object qryOfficedb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
      Required = True
    end
    object qryOfficeanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
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
      Required = True
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
      Required = True
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
      Required = True
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
      Required = True
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
      Required = True
      Size = 2
    end
    object qryOfficean_main_culture_code: TWideStringField
      FieldName = 'an_main_culture_code'
      Required = True
      Size = 6
    end
    object qryOfficean_fiscal_code: TWideStringField
      FieldName = 'an_fiscal_code'
      Size = 16
    end
    object qryOfficean_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      Required = True
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
      Required = True
      Size = 40
    end
    object qryOfficeanag_deleted: TBooleanField
      FieldName = 'anag_deleted'
    end
    object qryOfficeinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryOfficeupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryOfficeuser_insert: TIntegerField
      FieldName = 'user_insert'
    end
    object qryOfficejguid: TGuidField
      FieldName = 'jguid'
      Required = True
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
      Required = True
    end
  end
  object qryPickup: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.timetable_view'
      
        '  (workingday, slot_id, booking_id, from_id, to_id, state_id, sl' +
        'ot_des, booked)'
      'VALUES'
      
        '  (:workingday, :slot_id, :booking_id, :from_id, :to_id, :state_' +
        'id, :slot_des, :booked)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLUpdate.Strings = (
      'UPDATE carservice.timetable_view'
      'SET'
      
        '  workingday = :workingday, slot_id = :slot_id, booking_id = :bo' +
        'oking_id, from_id = :from_id, to_id = :to_id, state_id = :state_' +
        'id, slot_des = :slot_des, booked = :booked'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT workingday, slot_id, booking_id, from_id, to_id, state_id' +
        ', slot_des, booked FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :workingday AND slot_id = :slot_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.timetable_view v1'
      'where '
      '  (booked and booking_id = :booking_id and from_id = :from_id)'
      '  and workingday = :pickupdate'
      'union'
      'select * from carservice.timetable_view v2'
      'where '
      '  (not booked and not '
      '   exists (select 1 from carservice.timetable_view v3  where '
      
        '           v3.booking_id = :booking_id and v3.workingday = :pick' +
        'update and v3.slot_id = v2.slot_id)'
      '  )'
      '  and workingday = :pickupdate'
      'order by '
      '  slot_id asc'
      
        '/* seleziono tutti i record '#39'non prenotati'#39' ed i record prenotat' +
        'i da noi ovviamente in delphi 1 = :booking_id  */'
      '')
    BeforeOpen = qryPickupBeforeOpen
    BeforePost = qryPickupBeforePost
    Left = 192
    Top = 192
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'from_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftDate
        Name = 'pickupdate'
        ParamType = ptInput
        Value = 44966d
      end>
    object qryPickupworkingday: TDateField
      FieldName = 'workingday'
      ReadOnly = True
    end
    object qryPickupslot_id: TSmallintField
      FieldName = 'slot_id'
      ReadOnly = True
    end
    object qryPickupbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryPickupfrom_id: TIntegerField
      FieldName = 'from_id'
    end
    object qryPickupto_id: TIntegerField
      FieldName = 'to_id'
    end
    object qryPickupstate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryPickupbooked: TBooleanField
      FieldName = 'booked'
    end
    object qryPickupslot_des: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Size = 6
    end
    object qryPickupjguid: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object qryPickupdriver_anagraph_id: TIntegerField
      FieldName = 'driver_anagraph_id'
      ReadOnly = True
    end
    object qryPickupan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
    object qryPickupan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 256
    end
  end
  object qryDelivery: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.timetable_view'
      
        '  (workingday, slot_id, booking_id, from_id, to_id, state_id, sl' +
        'ot_des, booked)'
      'VALUES'
      
        '  (:workingday, :slot_id, :booking_id, :from_id, :to_id, :state_' +
        'id, :slot_des, :booked)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLUpdate.Strings = (
      'UPDATE carservice.timetable_view'
      'SET'
      
        '  workingday = :workingday, slot_id = :slot_id, booking_id = :bo' +
        'oking_id, from_id = :from_id, to_id = :to_id, state_id = :state_' +
        'id, slot_des = :slot_des, booked = :booked'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT workingday, slot_id, booking_id, from_id, to_id, state_id' +
        ', slot_des, booked FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :workingday AND slot_id = :slot_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.timetable_view v1'
      'where '
      '  (booked and booking_id = :booking_id and from_id = :from_id)'
      '  and workingday = :pickupdate'
      'union'
      'select * from carservice.timetable_view v2'
      'where '
      '  (not booked and not '
      '   exists (select 1 from carservice.timetable_view v3  where '
      
        '           v3.booking_id = :booking_id and v3.workingday = :pick' +
        'update and v3.slot_id = v2.slot_id)'
      '  )'
      '  and workingday = :pickupdate'
      'order by '
      '  slot_id asc'
      
        '/* seleziono tutti i record '#39'non prenotati'#39' ed i record prenotat' +
        'i da noi ovviamente in delphi 1 = :booking_id  */'
      '')
    BeforeOpen = qryDeliveryBeforeOpen
    BeforePost = qryDeliveryBeforePost
    Left = 344
    Top = 192
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'from_id'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftDate
        Name = 'pickupdate'
        ParamType = ptInput
        Value = 44527d
      end>
    object qryDeliveryworkingday: TDateField
      FieldName = 'workingday'
      ReadOnly = True
    end
    object qryDeliveryslot_id: TSmallintField
      FieldName = 'slot_id'
      ReadOnly = True
    end
    object qryDeliverybooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryDeliveryfrom_id: TIntegerField
      FieldName = 'from_id'
    end
    object qryDeliveryto_id: TIntegerField
      FieldName = 'to_id'
    end
    object qryDeliverystate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryDeliverybooked: TBooleanField
      FieldName = 'booked'
    end
    object qryDeliveryslot_des: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Size = 6
    end
    object qryDeliveryjguid: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object qryDeliverydriver_anagraph_id: TIntegerField
      FieldName = 'driver_anagraph_id'
      ReadOnly = True
    end
    object qryDeliveryan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
  end
  object qryPickupList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.timetable_view'
      
        '  (workingday, slot_id, booking_id, from_id, to_id, state_id, sl' +
        'ot_des, booked)'
      'VALUES'
      
        '  (:workingday, :slot_id, :booking_id, :from_id, :to_id, :state_' +
        'id, :slot_des, :booked)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLUpdate.Strings = (
      'UPDATE carservice.timetable_view'
      'SET'
      
        '  workingday = :workingday, slot_id = :slot_id, booking_id = :bo' +
        'oking_id, from_id = :from_id, to_id = :to_id, state_id = :state_' +
        'id, slot_des = :slot_des, booked = :booked'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :Old_workingday AND slot_id = :Old_slot_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT workingday, slot_id, booking_id, from_id, to_id, state_id' +
        ', slot_des, booked FROM carservice.timetable_view'
      'WHERE'
      '  workingday = :workingday AND slot_id = :slot_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_view'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.timetable_view v2'
      'where '
      ' v2.workingday = :pickupdate'
      'order by '
      '  v2.slot_id asc'
      
        '/* seleziono tutti i record '#39'non prenotati'#39' ed i record prenotat' +
        'i da noi ovviamente in delphi 1 = :booking_id  */'
      '')
    BeforeOpen = qryPickupBeforeOpen
    BeforePost = qryPickupBeforePost
    Left = 264
    Top = 232
    ParamData = <
      item
        DataType = ftDate
        Name = 'pickupdate'
        ParamType = ptInput
        Value = 44708d
      end>
    object qryPickupListworkingday: TDateField
      FieldName = 'workingday'
    end
    object qryPickupListslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryPickupListbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryPickupListfrom_id: TIntegerField
      FieldName = 'from_id'
    end
    object qryPickupListto_id: TIntegerField
      FieldName = 'to_id'
    end
    object qryPickupListstate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryPickupListslot_des: TWideStringField
      FieldName = 'slot_des'
      Size = 6
    end
    object qryPickupListbooked: TBooleanField
      FieldName = 'booked'
    end
    object qryPickupListjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object spBookPickup: TUniStoredProc
    StoredProcName = 'carservice.carservice_book_jguid'
    SQL.Strings = (
      
        'SELECT carservice.carservice_book_jguid(:p_day, :p_slot_id, :p_p' +
        'ickup, :p_jguid)')
    Connection = PgErgoConnection
    Left = 264
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'p_day'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'p_slot_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'p_pickup'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'p_jguid'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.carservice_book_jguid'
  end
  object qryPickupSlots: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT workingday, p.slot_id,  slot_des, places, booked, free_pl' +
        'aces, free'
      #9'FROM carservice.timetable_places p '
      #9#9'JOIN carservice.timetable_slots s on p.slot_id = s.slot_id  '
      'where workingday = :pickupdate'
      'ORDER BY  p.slot_id')
    Left = 192
    Top = 56
    ParamData = <
      item
        DataType = ftDate
        Name = 'pickupdate'
        ParamType = ptInput
        Value = 44974d
      end>
    object qryPickupSlotsworkingday: TDateField
      FieldName = 'workingday'
    end
    object qryPickupSlotsslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryPickupSlotsslot_des: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object qryPickupSlotsplaces: TLargeintField
      FieldName = 'places'
    end
    object qryPickupSlotsbooked: TLargeintField
      FieldName = 'booked'
    end
    object qryPickupSlotsfree_places: TLargeintField
      FieldName = 'free_places'
    end
    object qryPickupSlotsfree: TBooleanField
      FieldName = 'free'
    end
  end
  object qryReturnSlots: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT workingday, p.slot_id,  slot_des, places, booked, free_pl' +
        'aces, free'
      #9'FROM carservice.timetable_places p '
      #9#9'JOIN carservice.timetable_slots s on p.slot_id = s.slot_id  '
      'where workingday = :pickupdate'
      'ORDER BY p.slot_id')
    Left = 344
    Top = 56
    ParamData = <
      item
        DataType = ftDate
        Name = 'pickupdate'
        ParamType = ptInput
        Value = nil
      end>
  end
  object qryCheckSlots: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT workingday, p.slot_id,  slot_des, places, booked, free_pl' +
        'aces, free'
      #9'FROM carservice.timetable_places p '
      #9#9'JOIN carservice.timetable_slots s on p.slot_id = s.slot_id  '
      'where workingday = :checkdate'
      'ORDER BY p.slot_id')
    Left = 264
    Top = 160
    ParamData = <
      item
        DataType = ftDate
        Name = 'checkdate'
        ParamType = ptInput
        Value = nil
      end>
    object qryCheckSlotsworkingday: TDateField
      FieldName = 'workingday'
    end
    object qryCheckSlotsslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryCheckSlotsslot_des: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object qryCheckSlotsplaces: TLargeintField
      FieldName = 'places'
    end
    object qryCheckSlotsbooked: TLargeintField
      FieldName = 'booked'
    end
    object qryCheckSlotsfree_places: TLargeintField
      FieldName = 'free_places'
    end
    object qryCheckSlotsfree: TBooleanField
      FieldName = 'free'
    end
  end
  object scBookingInsert: TUniScript
    Connection = PgErgoConnection
    Left = 192
    Top = 120
  end
  object qryLookupBranches: TUniQuery
    DataTypeMap = <
      item
        DBType = 508
        DBLengthMin = 256
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'an_name'
        FieldType = ftWideString
        FieldLength = 128
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      
        '   jguid, anagraph_id, an_name, an_last_name, an_address, an_cel' +
        'lular, an_email,  '
      '   an_main_group_id, an_office_id'
      'from '
      '  anagraph.anagraphs'
      'where '
      '  an_office_id = :office_id'
      '  and'
      '  an_main_group_id = 28'
      'union '
      'select '
      #39'{00000000-0000-0000-0000-000000000000}'#39', 0'
      ', '#39#39'::character varying, '#39#39', '#39#39', '#39#39', '#39#39',  0, 0')
    Left = 472
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 253223
      end>
    object qryLookupBranchesjguid: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object qryLookupBranchesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      ReadOnly = True
    end
    object qryLookupBranchesan_name: TWideStringField
      FieldName = 'an_name'
      ReadOnly = True
      Size = 128
    end
    object qryLookupBranchesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      ReadOnly = True
      Size = 128
    end
    object qryLookupBranchesan_address: TWideStringField
      FieldName = 'an_address'
      ReadOnly = True
      Size = 128
    end
    object qryLookupBranchesan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
      Size = 128
    end
    object qryLookupBranchesan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 128
    end
    object qryLookupBranchesan_main_group_id: TIntegerField
      FieldName = 'an_main_group_id'
      ReadOnly = True
    end
    object qryLookupBranchesan_office_id: TIntegerField
      FieldName = 'an_office_id'
      ReadOnly = True
    end
  end
end
