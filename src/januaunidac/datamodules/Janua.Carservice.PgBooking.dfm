inherited dmPgCarServiceBookingStorage: TdmPgCarServiceBookingStorage
  Height = 438
  Width = 810
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
        FieldLength = 4096
      end>
    Port = 5432
    Server = 'pg.januaservers.com'
    SchemaID = 36
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryBooking: TUniQuery
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.booking_head_view'
      'where jguid = :jguid'
      '')
    BeforePost = qryBookingBeforePost
    OnPostError = qryBookingPostError
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
      Size = 4096
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
      Size = 4096
    end
    object qryBookingreturn_address: TWideStringField
      FieldName = 'return_address'
      Size = 4096
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
    object qryBookingpickup2_address: TWideStringField
      FieldName = 'pickup2_address'
      Size = 4096
    end
    object qryBookingreturn2_address: TWideStringField
      FieldName = 'return2_address'
      Size = 4096
    end
    object qryBookingpickup_slot_delivery: TWideStringField
      FieldName = 'pickup_slot_delivery'
      Size = 12
    end
    object qryBookingreturn_slot_delivery: TWideStringField
      FieldName = 'return_slot_delivery'
      Size = 12
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
    Top = 144
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
        #39#39', '#39#39)
    BeforeOpen = qryLookupUsersBeforeOpen
    Left = 472
    Top = 40
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 253911
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
    object qryLookupUsersan_address_1: TWideMemoField
      FieldName = 'an_address_1'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryLookupUsersan_address_number: TWideStringField
      FieldName = 'an_address_number'
      ReadOnly = True
      Size = 128
    end
    object qryLookupUsersan_full_address: TWideStringField
      FieldName = 'an_full_address'
      ReadOnly = True
      Size = 256
    end
    object qryLookupUsersan_town: TWideStringField
      FieldName = 'an_town'
      ReadOnly = True
      Size = 128
    end
    object qryLookupUsersan_state_province: TWideStringField
      FieldName = 'an_state_province'
      ReadOnly = True
      Size = 128
    end
    object qryLookupUsersan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      ReadOnly = True
      Size = 128
    end
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
    Left = 472
    Top = 240
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
    object qryPickupfrom_latitude: TFloatField
      FieldName = 'from_latitude'
      ReadOnly = True
    end
    object qryPickupfrom_longitude: TFloatField
      FieldName = 'from_longitude'
      ReadOnly = True
    end
    object qryPickupfrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      ReadOnly = True
      Size = 256
    end
    object qryPickupto_latitude: TFloatField
      FieldName = 'to_latitude'
      ReadOnly = True
    end
    object qryPickupto_longitude: TFloatField
      FieldName = 'to_longitude'
      ReadOnly = True
    end
    object qryPickupto_full_address: TWideStringField
      FieldName = 'to_full_address'
      ReadOnly = True
      Size = 256
    end
    object qryPickupslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      ReadOnly = True
      Size = 12
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
    object qryDeliveryjguid: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
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
      ReadOnly = True
    end
    object qryDeliveryfrom_id: TIntegerField
      FieldName = 'from_id'
      ReadOnly = True
    end
    object qryDeliveryto_id: TIntegerField
      FieldName = 'to_id'
      ReadOnly = True
    end
    object qryDeliverystate_id: TSmallintField
      FieldName = 'state_id'
      ReadOnly = True
    end
    object qryDeliveryslot_des: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Size = 6
    end
    object qryDeliverybooked: TBooleanField
      FieldName = 'booked'
      ReadOnly = True
    end
    object qryDeliverydriver_anagraph_id: TIntegerField
      FieldName = 'driver_anagraph_id'
      ReadOnly = True
    end
    object qryDeliveryan_cellular: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
    object qryDeliverycolumn: TWideStringField
      FieldName = '?column?'
      ReadOnly = True
      Size = 4096
    end
    object qryDeliveryan_email: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 256
    end
    object qryDeliveryfrom_latitude: TFloatField
      FieldName = 'from_latitude'
      ReadOnly = True
    end
    object qryDeliveryfrom_longitude: TFloatField
      FieldName = 'from_longitude'
      ReadOnly = True
    end
    object qryDeliveryfrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      ReadOnly = True
      Size = 256
    end
    object qryDeliveryto_latitude: TFloatField
      FieldName = 'to_latitude'
      ReadOnly = True
    end
    object qryDeliveryto_longitude: TFloatField
      FieldName = 'to_longitude'
      ReadOnly = True
    end
    object qryDeliveryto_full_address: TWideStringField
      FieldName = 'to_full_address'
      ReadOnly = True
      Size = 256
    end
    object qryDeliveryslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      ReadOnly = True
      Size = 12
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
    StoredProcName = 'carservice.carservice_book_jguid_address'
    SQL.Strings = (
      
        'SELECT carservice.carservice_book_jguid_address(:p_day, :p_slot_' +
        'id, :p_pickup, :p_jguid, :p_from_latitude, :p_from_longitude, :p' +
        '_from_full_address, :p_to_latitude, :p_to_longitude, :p_to_full_' +
        'address, :p_from_id, :p_to_id)')
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
      end
      item
        DataType = ftFloat
        Name = 'p_from_latitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_from_longitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_from_full_address'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_to_latitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_to_longitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_to_full_address'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_from_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_to_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.carservice_book_jguid_address'
  end
  object qryPickupSlots: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT workingday, p.slot_id,  slot_des, places, booked, free_pl' +
        'aces, free,'
      '                   s.delivery_time, s.slot_delivery'
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
    object qryPickupSlotsdelivery_time: TTimeField
      FieldName = 'delivery_time'
      ReadOnly = True
    end
    object qryPickupSlotsslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      ReadOnly = True
      Size = 12
    end
  end
  object qryReturnSlots: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT workingday, p.slot_id,  slot_des, places, booked, free_pl' +
        'aces, free,'
      '        s.delivery_time, s.slot_delivery'
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
    object qryReturnSlotsworkingday: TDateField
      FieldName = 'workingday'
    end
    object qryReturnSlotsslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryReturnSlotsslot_des: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object qryReturnSlotsplaces: TLargeintField
      FieldName = 'places'
    end
    object qryReturnSlotsbooked: TLargeintField
      FieldName = 'booked'
    end
    object qryReturnSlotsfree_places: TLargeintField
      FieldName = 'free_places'
    end
    object qryReturnSlotsfree: TBooleanField
      FieldName = 'free'
    end
    object qryReturnSlotsdelivery_time: TTimeField
      FieldName = 'delivery_time'
      ReadOnly = True
    end
    object qryReturnSlotsslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      ReadOnly = True
      Size = 12
    end
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
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM anagraph.anagraphs_view'
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
      '  anagraph.anagraphs_view'
      'where '
      '  (an_office_id = :office_id or :office_id = 0)'
      '  and'
      '  an_main_group_id = 26'
      '--union '
      '--select '
      '--'#39'{00000000-0000-0000-0000-000000000000}'#39', 0'
      '--, '#39#39'::character varying, '#39#39', '#39#39', '#39#39', '#39#39',  0, 0')
    BeforeOpen = qryLookupBranchesBeforeOpen
    BeforePost = qryLookupBranchesBeforePost
    Left = 472
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'office_id'
        ParamType = ptInput
        Value = 0
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
  object spInsertBranches: TUniStoredProc
    StoredProcName = 'anagraph.anagraphs_insert_update'
    SQL.Strings = (
      
        'SELECT * FROM anagraph.anagraphs_insert_update(:an_group_id, :db' +
        '_schema_id, :anagraph_id, :an_title, :an_name, :an_second_name, ' +
        ':an_last_name, :an_notes, :an_address, :an_town, :an_postal_code' +
        ', :an_iso_country_code, :an_state_province, :an_phone, :an_phone' +
        '2, :an_fax, :an_cellular, :an_code, :an_vat_numeric, :an_email, ' +
        ':an_web, :an_contact_id, :an_bank_account, :an_payment_des, :an_' +
        'discount, :an_distance, :an_distance_mesunit, :an_sex, :an_cod_c' +
        'omune, :an_cod_provincia, :an_credit_line, :an_currency_id, :an_' +
        'cat_id, :an_notes2, :an_notes3, :an_edi, :an_privacy, :an_office' +
        '_id, :an_cod_prov_rif, :an_data_fido, :an_user_insert, :an_user_' +
        'update, :an_area_id, :an_agent_id, :an_area_code, :an_zone_id, :' +
        'an_ins_id, :an_upd_id, :an_documents, :an_last_date, :an_birthda' +
        'te, :an_office_type_id, :an_searchname, :an_extra_ue_flag, :an_e' +
        'xternal_code, :an_vat_id, :an_personal_fiscal_code, :an_privacy_' +
        'print, :an_sms, :an_encrypted_fiscal_code, :an_vat_purcentage, :' +
        'an_status, :an_ownsite, :an_insurance_id, :an_anagraphs_anagraph' +
        '_id, :an_main_language_code, :an_main_culture_code, :an_fiscal_c' +
        'ode, :an_main_group_id, :an_image_id, :latitude, :longitude)')
    Connection = PgErgoConnection
    Left = 472
    Top = 168
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'an_group_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'db_schema_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'anagraph_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_title'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_name'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_second_name'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_last_name'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_notes'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_address'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_town'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_postal_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_iso_country_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_state_province'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_phone'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_phone2'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_fax'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_cellular'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_vat_numeric'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_email'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_web'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_contact_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_bank_account'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_payment_des'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'an_discount'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_distance'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_distance_mesunit'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_sex'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_cod_comune'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_cod_provincia'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'an_credit_line'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_currency_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_cat_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_notes2'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'an_notes3'
        ParamType = ptInputOutput
        Value = Null
      end
      item
        DataType = ftBoolean
        Name = 'an_edi'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'an_privacy'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_office_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_cod_prov_rif'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'an_data_fido'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_user_insert'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_user_update'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_area_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_agent_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_area_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_zone_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'an_ins_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'an_upd_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_documents'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'an_last_date'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'an_birthdate'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_office_type_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_searchname'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'an_extra_ue_flag'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_external_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_vat_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_personal_fiscal_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_privacy_print'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'an_sms'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_encrypted_fiscal_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_vat_purcentage'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftSmallint
        Name = 'an_status'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftBoolean
        Name = 'an_ownsite'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'an_insurance_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_anagraphs_anagraph_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_main_language_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_main_culture_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'an_fiscal_code'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'an_main_group_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'an_image_id'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'latitude'
        ParamType = ptInputOutput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'longitude'
        ParamType = ptInputOutput
        Value = nil
      end>
    CommandStoredProcName = 'anagraph.anagraphs_insert_update'
  end
  object qryMessages: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from carservice.messages'
      'where booking_jguid = :jguid')
    MasterSource = dsBooking
    Left = 264
    Top = 368
    ParamData = <
      item
        DataType = ftGuid
        Name = 'jguid'
        Value = nil
      end>
    object qryMessagesid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qryMessagesdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryMessagesjguid: TGuidField
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
    object qryMessagesdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryMessagesinsert_date: TDateTimeField
      FieldName = 'insert_date'
    end
    object qryMessagesupdate_date: TDateTimeField
      FieldName = 'update_date'
    end
    object qryMessagesuser_insert: TWideStringField
      FieldName = 'user_insert'
      Size = 128
    end
    object qryMessagesuser_update: TWideStringField
      FieldName = 'user_update'
      Size = 128
    end
    object qryMessagesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryMessagesdb_user_id: TIntegerField
      FieldName = 'db_user_id'
    end
    object qryMessagesmsgtype: TIntegerField
      FieldName = 'msgtype'
    end
    object qryMessagesmsgtext: TWideStringField
      FieldName = 'msgtext'
      Size = 1024
    end
    object qryMessagesjson: TWideMemoField
      FieldName = 'json'
      BlobType = ftWideMemo
    end
    object qryMessagesbooking_jguid: TGuidField
      FieldName = 'booking_jguid'
      Size = 38
    end
    object qryMessagestimetable_jguid: TGuidField
      FieldName = 'timetable_jguid'
      Size = 38
    end
  end
  object dsBooking: TUniDataSource
    DataSet = qryBooking
    Left = 264
    Top = 304
  end
  object spInsertMessage: TUniStoredProc
    StoredProcName = 'carservice.insert_message'
    SQL.Strings = (
      
        'SELECT * FROM carservice.insert_message(:p_json, :p_message, :p_' +
        'anagraph_id, :p_booking_jguid, :p_timetable_jguid, :p_user_id, :' +
        'p_msgtype)')
    Connection = PgErgoConnection
    Left = 472
    Top = 304
    ParamData = <
      item
        DataType = ftWideString
        Name = 'p_json'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideMemo
        Name = 'p_message'
        ParamType = ptInput
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'p_anagraph_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'p_booking_jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'p_timetable_jguid'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_user_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_msgtype'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.insert_message'
  end
  object qryPickupTimeTable: TUniQuery
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
      '  booking_id = :booking_id and slot_id = :pickup_slot_id')
    BeforeOpen = qryPickupTimeTableBeforeOpen
    Left = 184
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'pickup_slot_id'
        Value = nil
      end>
    object DateField1: TDateField
      FieldName = 'workingday'
      ReadOnly = True
    end
    object SmallintField1: TSmallintField
      FieldName = 'slot_id'
      ReadOnly = True
    end
    object LargeintField1: TLargeintField
      FieldName = 'booking_id'
    end
    object IntegerField1: TIntegerField
      FieldName = 'from_id'
    end
    object IntegerField2: TIntegerField
      FieldName = 'to_id'
    end
    object SmallintField2: TSmallintField
      FieldName = 'state_id'
    end
    object BooleanField1: TBooleanField
      FieldName = 'booked'
    end
    object WideStringField1: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Size = 6
    end
    object GuidField1: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object IntegerField3: TIntegerField
      FieldName = 'driver_anagraph_id'
      ReadOnly = True
    end
    object WideStringField2: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
    object WideStringField3: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 256
    end
    object qryPickupTimeTablecolumn: TWideStringField
      FieldName = '?column?'
      Size = 4096
    end
    object qryPickupTimeTablefrom_latitude: TFloatField
      FieldName = 'from_latitude'
    end
    object qryPickupTimeTablefrom_longitude: TFloatField
      FieldName = 'from_longitude'
    end
    object qryPickupTimeTablefrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      Size = 256
    end
    object qryPickupTimeTableto_latitude: TFloatField
      FieldName = 'to_latitude'
    end
    object qryPickupTimeTableto_longitude: TFloatField
      FieldName = 'to_longitude'
    end
    object qryPickupTimeTableto_full_address: TWideStringField
      FieldName = 'to_full_address'
      Size = 256
    end
    object qryPickupTimeTableslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      Size = 12
    end
  end
  object qryReturnTimeTable: TUniQuery
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
      '  booking_id = :booking_id and slot_id = :return_slot_id')
    BeforeOpen = qryReturnTimeTableBeforeOpen
    Left = 344
    Top = 264
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'return_slot_id'
        Value = nil
      end>
    object DateField2: TDateField
      FieldName = 'workingday'
      ReadOnly = True
    end
    object SmallintField3: TSmallintField
      FieldName = 'slot_id'
      ReadOnly = True
    end
    object LargeintField2: TLargeintField
      FieldName = 'booking_id'
    end
    object IntegerField4: TIntegerField
      FieldName = 'from_id'
    end
    object IntegerField5: TIntegerField
      FieldName = 'to_id'
    end
    object SmallintField4: TSmallintField
      FieldName = 'state_id'
    end
    object BooleanField2: TBooleanField
      FieldName = 'booked'
    end
    object WideStringField4: TWideStringField
      FieldName = 'slot_des'
      ReadOnly = True
      Size = 6
    end
    object GuidField2: TGuidField
      FieldName = 'jguid'
      ReadOnly = True
      Size = 38
    end
    object IntegerField6: TIntegerField
      FieldName = 'driver_anagraph_id'
      ReadOnly = True
    end
    object WideStringField5: TWideStringField
      FieldName = 'an_cellular'
      ReadOnly = True
    end
    object WideStringField6: TWideStringField
      FieldName = 'an_email'
      ReadOnly = True
      Size = 256
    end
    object qryReturnTimeTablecolumn: TWideStringField
      FieldName = '?column?'
      Size = 4096
    end
    object qryReturnTimeTablefrom_latitude: TFloatField
      FieldName = 'from_latitude'
    end
    object qryReturnTimeTablefrom_longitude: TFloatField
      FieldName = 'from_longitude'
    end
    object qryReturnTimeTablefrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      Size = 256
    end
    object qryReturnTimeTableto_latitude: TFloatField
      FieldName = 'to_latitude'
    end
    object qryReturnTimeTableto_longitude: TFloatField
      FieldName = 'to_longitude'
    end
    object qryReturnTimeTableto_full_address: TWideStringField
      FieldName = 'to_full_address'
      Size = 256
    end
    object qryReturnTimeTableslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      Size = 12
    end
  end
  object spUpdatePickup: TUniStoredProc
    StoredProcName = 'carservice.carservice_book_jguid_upd_address'
    SQL.Strings = (
      
        'SELECT carservice.carservice_book_jguid_upd_address(:p_day, :p_s' +
        'lot_id, :p_pickup, :p_jguid, :p_from_latitude, :p_from_longitude' +
        ', :p_from_full_address, :p_to_latitude, :p_to_longitude, :p_to_f' +
        'ull_address, :p_from_id, :p_to_id)')
    Connection = PgErgoConnection
    Left = 344
    Top = 120
    ParamData = <
      item
        DataType = ftBoolean
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
      end
      item
        DataType = ftFloat
        Name = 'p_from_latitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_from_longitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_from_full_address'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_to_latitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'p_to_longitude'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftWideString
        Name = 'p_to_full_address'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_from_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_to_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.carservice_book_jguid_upd_address'
  end
  object qryCustomerVehicles: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select distinct vehicle_model, vehicle_color, vehicle_numberplat' +
        'e'
      'from carservice.booking_head_view '
      'where customer_id = :customer_id; ')
    BeforeOpen = qryCustomerVehiclesBeforeOpen
    Left = 472
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'customer_id'
        ParamType = ptInput
        Value = 253923
      end>
    object qryCustomerVehiclesvehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryCustomerVehiclesvehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryCustomerVehiclesvehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
  end
  object spAccountFunding: TUniStoredProc
    StoredProcName = 'carservice.account_funding'
    SQL.Strings = (
      'SELECT carservice.account_funding(:p_customer_id, :p_amount)')
    Connection = PgErgoConnection
    Left = 592
    Top = 16
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
  object spAccountBalance: TUniStoredProc
    StoredProcName = 'carservice.account_balance'
    SQL.Strings = (
      'SELECT carservice.account_balance(:p_customer_id)')
    Connection = PgErgoConnection
    Left = 592
    Top = 80
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
      end>
    CommandStoredProcName = 'carservice.account_balance'
  end
  object spBookingAmount: TUniStoredProc
    StoredProcName = 'carservice.booking_amount'
    SQL.Strings = (
      'SELECT * FROM carservice.booking_amount(:p_booking_id)')
    Connection = PgErgoConnection
    Left = 592
    Top = 144
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'q'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftCurrency
        Name = 'net_amount'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftCurrency
        Name = 'tax_amount'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftCurrency
        Name = 'full_amount'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.booking_amount'
  end
  object spBookingPayment: TUniStoredProc
    StoredProcName = 'carservice.booking_payment'
    SQL.Strings = (
      'SELECT carservice.booking_payment(:p_booking_id)')
    Connection = PgErgoConnection
    Left = 592
    Top = 216
    ParamData = <
      item
        DataType = ftCurrency
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
    CommandStoredProcName = 'carservice.booking_payment'
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
    BeforeOpen = qryLookupUsersBeforeOpen
    Left = 704
    Top = 48
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
      'SELECT * from carservice.account_balance(:p_customer_id)')
    BeforeOpen = qryAccountBalanceBeforeOpen
    Left = 704
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'p_customer_id'
        ParamType = ptInput
        Value = 253911
      end>
    object qryAccountBalanceaccount_balance: TCurrencyField
      FieldName = 'account_balance'
      ReadOnly = True
    end
  end
  object qryBookingAmount: TUniQuery
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
      'SELECT * FROM carservice.booking_amount(:p_booking_id)')
    BeforeOpen = qryBookingAmountBeforeOpen
    Left = 704
    Top = 184
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = 166
      end>
    object qryBookingAmountq: TIntegerField
      FieldName = 'q'
      ReadOnly = True
    end
    object qryBookingAmountnet_amount: TCurrencyField
      FieldName = 'net_amount'
      ReadOnly = True
    end
    object qryBookingAmounttax_amount: TCurrencyField
      FieldName = 'tax_amount'
      ReadOnly = True
    end
    object qryBookingAmountfull_amount: TCurrencyField
      FieldName = 'full_amount'
      ReadOnly = True
    end
  end
  object qryBookingPayment: TUniQuery
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
      'SELECT * from carservice.booking_payment(:p_booking_id)')
    BeforeOpen = qryBookingPaymentBeforeOpen
    Left = 704
    Top = 256
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = 166
      end>
    object qryBookingPaymentbooking_payment: TCurrencyField
      FieldName = 'booking_payment'
      ReadOnly = True
    end
  end
end
