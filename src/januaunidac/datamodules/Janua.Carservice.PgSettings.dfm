inherited dmCarserviceUniPgSettings: TdmCarserviceUniPgSettings
  Height = 400
  Width = 397
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    SchemaID = 36
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryConfigTimetable: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.booking_head_view'
      
        '  (id, office_id, jguid, db_schema_id, user_insert, insert_date,' +
        ' customer_id, state_id, branch_id, vehicle_model, vehicle_color,' +
        ' vehicle_numberplate, an_last_name, an_vat_id, an_address, an_po' +
        'stal_code, an_fiscal_code, an_town, an_phone, branch_address, br' +
        'anch_postal_code, branch_town, branch_phone, cust_first_name, cu' +
        'st_last_name, full_address, cust_cellular, cust_email)'
      'VALUES'
      
        '  (:id, :office_id, :jguid, :db_schema_id, :user_insert, :insert' +
        '_date, :customer_id, :state_id, :branch_id, :vehicle_model, :veh' +
        'icle_color, :vehicle_numberplate, :an_last_name, :an_vat_id, :an' +
        '_address, :an_postal_code, :an_fiscal_code, :an_town, :an_phone,' +
        ' :branch_address, :branch_postal_code, :branch_town, :branch_pho' +
        'ne, :cust_first_name, :cust_last_name, :full_address, :cust_cell' +
        'ular, :cust_email)')
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
        'an_last_name = :an_last_name, an_vat_id = :an_vat_id, an_address' +
        ' = :an_address, an_postal_code = :an_postal_code, an_fiscal_code' +
        ' = :an_fiscal_code, an_town = :an_town, an_phone = :an_phone, br' +
        'anch_address = :branch_address, branch_postal_code = :branch_pos' +
        'tal_code, branch_town = :branch_town, branch_phone = :branch_pho' +
        'ne, cust_first_name = :cust_first_name, cust_last_name = :cust_l' +
        'ast_name, full_address = :full_address, cust_cellular = :cust_ce' +
        'llular, cust_email = :cust_email'
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
        'lor, vehicle_numberplate, an_last_name, an_vat_id, an_address, a' +
        'n_postal_code, an_fiscal_code, an_town, an_phone, branch_address' +
        ', branch_postal_code, branch_town, branch_phone, cust_first_name' +
        ', cust_last_name, full_address, cust_cellular, cust_email FROM c' +
        'arservice.booking_head_view'
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
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM carservice.timetable_booking_view'
      'order by pickup_day desc'
      'limit 10'
      '--where jguid = :jguid'
      '')
    Left = 288
    Top = 288
    object qryConfigTimetablepickup_an_id: TIntegerField
      FieldName = 'pickup_an_id'
    end
    object qryConfigTimetablepickup_first_name: TWideStringField
      FieldName = 'pickup_first_name'
      Size = 128
    end
    object qryConfigTimetablepickup_vat_id: TSmallintField
      FieldName = 'pickup_vat_id'
    end
    object qryConfigTimetablepickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 256
    end
    object qryConfigTimetablepickup_postal_code: TWideStringField
      FieldName = 'pickup_postal_code'
      Size = 30
    end
    object qryConfigTimetablepickup_fiscal_code: TWideStringField
      FieldName = 'pickup_fiscal_code'
      Size = 16
    end
    object qryConfigTimetablepickup_town: TWideStringField
      FieldName = 'pickup_town'
      Size = 128
    end
    object qryConfigTimetablepickup_last_name: TWideStringField
      FieldName = 'pickup_last_name'
      Size = 128
    end
    object qryConfigTimetablepickup_full_address: TWideMemoField
      FieldName = 'pickup_full_address'
      BlobType = ftWideMemo
    end
    object qryConfigTimetablepickup_phone: TWideStringField
      FieldName = 'pickup_phone'
      Size = 30
    end
    object qryConfigTimetablepickup_email: TWideStringField
      FieldName = 'pickup_email'
      Size = 128
    end
    object qryConfigTimetablepickup_cellular: TWideStringField
      FieldName = 'pickup_cellular'
    end
    object qryConfigTimetabledelivery_an_id: TIntegerField
      FieldName = 'delivery_an_id'
    end
    object qryConfigTimetabledelivery_first_name: TWideStringField
      FieldName = 'delivery_first_name'
      Size = 128
    end
    object qryConfigTimetabledelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryConfigTimetabledelivery_address: TWideStringField
      FieldName = 'delivery_address'
      Size = 256
    end
    object qryConfigTimetabledelivery_postal_code: TWideStringField
      FieldName = 'delivery_postal_code'
      Size = 30
    end
    object qryConfigTimetabledelivery_fiscal_code: TWideStringField
      FieldName = 'delivery_fiscal_code'
      Size = 16
    end
    object qryConfigTimetabledelivery_town: TWideStringField
      FieldName = 'delivery_town'
      Size = 128
    end
    object qryConfigTimetabledelivery_last_name: TWideStringField
      FieldName = 'delivery_last_name'
      Size = 128
    end
    object qryConfigTimetabledelivery_full_address: TWideMemoField
      FieldName = 'delivery_full_address'
      BlobType = ftWideMemo
    end
    object qryConfigTimetabledelivery_phone: TWideStringField
      FieldName = 'delivery_phone'
      Size = 30
    end
    object qryConfigTimetabledelivery_email: TWideStringField
      FieldName = 'delivery_email'
      Size = 128
    end
    object qryConfigTimetabledelivery_cellular: TWideStringField
      FieldName = 'delivery_cellular'
    end
    object qryConfigTimetablejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryConfigTimetablepickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryConfigTimetablepickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryConfigTimetabledriver_id: TIntegerField
      FieldName = 'driver_id'
    end
    object qryConfigTimetablebooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryConfigTimetabledriver_email: TWideStringField
      FieldName = 'driver_email'
      Size = 256
    end
    object qryConfigTimetabledriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryConfigTimetabledriver_jguid: TGuidField
      FieldName = 'driver_jguid'
      Size = 38
    end
    object qryConfigTimetableslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryConfigTimetablevehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryConfigTimetablevehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryConfigTimetablevehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryConfigTimetablepickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryConfigTimetablepickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryConfigTimetablereturn_day: TDateField
      FieldName = 'return_day'
    end
  end
  object qryConfiguration: TUniQuery
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
      'SELECT db_schema_id, key, conf, jguid, deleted'
      #9'FROM system.db_schema_config_view;')
    Left = 288
    Top = 208
    object qryConfigurationdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryConfigurationkey: TWideStringField
      FieldName = 'key'
      Size = 128
    end
    object qryConfigurationconf: TWideMemoField
      FieldName = 'conf'
      BlobType = ftWideMemo
    end
    object qryConfigurationjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryConfigurationdeleted: TBooleanField
      FieldName = 'deleted'
    end
  end
  object qryTimeTable: TUniQuery
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
      'select * from carservice.timetable_booking_view v1'
      'where '
      ' booking_id = :id')
    MasterFields = 'id'
    DetailFields = 'booking_id'
    Left = 288
    Top = 136
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 41
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
    object qryTimeTabledriver_anagraph_id: TIntegerField
      FieldName = 'driver_anagraph_id'
    end
    object qryTimeTablean_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryTimeTablepickup_an_id: TIntegerField
      FieldName = 'pickup_an_id'
    end
    object qryTimeTablepickup_first_name: TWideStringField
      FieldName = 'pickup_first_name'
      Size = 128
    end
    object qryTimeTablepickup_vat_id: TSmallintField
      FieldName = 'pickup_vat_id'
    end
    object qryTimeTablepickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 256
    end
    object qryTimeTablepickup_postal_code: TWideStringField
      FieldName = 'pickup_postal_code'
    end
    object qryTimeTablepickup_fiscal_code: TWideStringField
      FieldName = 'pickup_fiscal_code'
      Size = 16
    end
    object qryTimeTablepickup_town: TWideStringField
      FieldName = 'pickup_town'
      Size = 128
    end
    object qryTimeTablepickup_last_name: TWideStringField
      FieldName = 'pickup_last_name'
      Size = 128
    end
    object qryTimeTablepickup_full_address: TWideMemoField
      FieldName = 'pickup_full_address'
      BlobType = ftWideMemo
    end
    object qryTimeTablepickup_phone: TWideStringField
      FieldName = 'pickup_phone'
      Size = 30
    end
    object qryTimeTablepickup_email: TWideStringField
      FieldName = 'pickup_email'
      Size = 256
    end
    object qryTimeTablepickup_cellular: TWideStringField
      FieldName = 'pickup_cellular'
    end
    object qryTimeTabledelivery_an_id: TIntegerField
      FieldName = 'delivery_an_id'
    end
    object qryTimeTabledelivery_first_name: TWideStringField
      FieldName = 'delivery_first_name'
      Size = 128
    end
    object qryTimeTabledelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryTimeTabledelivery_address: TWideStringField
      FieldName = 'delivery_address'
      Size = 256
    end
    object qryTimeTabledelivery_postal_code: TWideStringField
      FieldName = 'delivery_postal_code'
    end
    object qryTimeTabledelivery_fiscal_code: TWideStringField
      FieldName = 'delivery_fiscal_code'
      Size = 16
    end
    object qryTimeTabledelivery_town: TWideStringField
      FieldName = 'delivery_town'
      Size = 128
    end
    object qryTimeTabledelivery_last_name: TWideStringField
      FieldName = 'delivery_last_name'
      Size = 128
    end
    object qryTimeTabledelivery_full_address: TWideMemoField
      FieldName = 'delivery_full_address'
      BlobType = ftWideMemo
    end
    object qryTimeTabledelivery_phone: TWideStringField
      FieldName = 'delivery_phone'
      Size = 30
    end
    object qryTimeTabledelivery_email: TWideStringField
      FieldName = 'delivery_email'
      Size = 256
    end
    object qryTimeTabledelivery_cellular: TWideStringField
      FieldName = 'delivery_cellular'
    end
    object qryTimeTablepickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryTimeTablepickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryTimeTabledriver_id: TIntegerField
      FieldName = 'driver_id'
    end
    object qryTimeTabledriver_email: TWideStringField
      FieldName = 'driver_email'
      Size = 256
    end
    object qryTimeTabledriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryTimeTabledriver_jguid: TGuidField
      FieldName = 'driver_jguid'
      Size = 38
    end
    object qryTimeTablevehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryTimeTablevehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryTimeTablevehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryTimeTablepickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryTimeTablepickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryTimeTablereturn_day: TDateField
      FieldName = 'return_day'
    end
  end
  object qryBooking: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.booking_head_view'
      
        '  (id, office_id, jguid, db_schema_id, user_insert, insert_date,' +
        ' customer_id, state_id, branch_id, vehicle_model, vehicle_color,' +
        ' vehicle_numberplate, an_last_name, an_vat_id, an_address, an_po' +
        'stal_code, an_fiscal_code, an_town, an_phone, branch_address, br' +
        'anch_postal_code, branch_town, branch_phone, cust_first_name, cu' +
        'st_last_name, full_address, cust_cellular, cust_email)'
      'VALUES'
      
        '  (:id, :office_id, :jguid, :db_schema_id, :user_insert, :insert' +
        '_date, :customer_id, :state_id, :branch_id, :vehicle_model, :veh' +
        'icle_color, :vehicle_numberplate, :an_last_name, :an_vat_id, :an' +
        '_address, :an_postal_code, :an_fiscal_code, :an_town, :an_phone,' +
        ' :branch_address, :branch_postal_code, :branch_town, :branch_pho' +
        'ne, :cust_first_name, :cust_last_name, :full_address, :cust_cell' +
        'ular, :cust_email)')
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
        'an_last_name = :an_last_name, an_vat_id = :an_vat_id, an_address' +
        ' = :an_address, an_postal_code = :an_postal_code, an_fiscal_code' +
        ' = :an_fiscal_code, an_town = :an_town, an_phone = :an_phone, br' +
        'anch_address = :branch_address, branch_postal_code = :branch_pos' +
        'tal_code, branch_town = :branch_town, branch_phone = :branch_pho' +
        'ne, cust_first_name = :cust_first_name, cust_last_name = :cust_l' +
        'ast_name, full_address = :full_address, cust_cellular = :cust_ce' +
        'llular, cust_email = :cust_email'
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
        'lor, vehicle_numberplate, an_last_name, an_vat_id, an_address, a' +
        'n_postal_code, an_fiscal_code, an_town, an_phone, branch_address' +
        ', branch_postal_code, branch_town, branch_phone, cust_first_name' +
        ', cust_last_name, full_address, cust_cellular, cust_email FROM c' +
        'arservice.booking_head_view'
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
      'order by id desc'
      '')
    Left = 288
    Top = 56
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
      Size = 2048
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
      Size = 2048
    end
    object qryBookingreturn_address: TWideStringField
      FieldName = 'return_address'
      Size = 2048
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
      Size = 2048
    end
    object qryBookingreturn2_address: TWideStringField
      FieldName = 'return2_address'
      Size = 2048
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
end
