inherited dmPgCarServiceBookingDrivers: TdmPgCarServiceBookingDrivers
  Height = 296
  Width = 352
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    Left = 48
    Top = 48
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Left = 48
    Top = 112
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT *'
      'FROM carservice.timetable_booking_view  '
      'where jguid = :jguid'
      '')
    Left = 144
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'jguid'
        Value = nil
      end>
    object qryBookingpickup_an_id: TIntegerField
      FieldName = 'pickup_an_id'
    end
    object qryBookingpickup_first_name: TWideStringField
      FieldName = 'pickup_first_name'
      Size = 128
    end
    object qryBookingpickup_vat_id: TSmallintField
      FieldName = 'pickup_vat_id'
    end
    object qryBookingpickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 256
    end
    object qryBookingpickup_postal_code: TWideStringField
      FieldName = 'pickup_postal_code'
    end
    object qryBookingpickup_fiscal_code: TWideStringField
      FieldName = 'pickup_fiscal_code'
      Size = 16
    end
    object qryBookingpickup_town: TWideStringField
      FieldName = 'pickup_town'
      Size = 128
    end
    object qryBookingpickup_last_name: TWideStringField
      FieldName = 'pickup_last_name'
      Size = 128
    end
    object qryBookingpickup_full_address: TWideMemoField
      FieldName = 'pickup_full_address'
      BlobType = ftWideMemo
    end
    object qryBookingpickup_phone: TWideStringField
      FieldName = 'pickup_phone'
      Size = 30
    end
    object qryBookingpickup_email: TWideStringField
      FieldName = 'pickup_email'
      Size = 256
    end
    object qryBookingpickup_cellular: TWideStringField
      FieldName = 'pickup_cellular'
    end
    object qryBookingdelivery_an_id: TIntegerField
      FieldName = 'delivery_an_id'
    end
    object qryBookingdelivery_first_name: TWideStringField
      FieldName = 'delivery_first_name'
      Size = 128
    end
    object qryBookingdelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryBookingdelivery_address: TWideStringField
      FieldName = 'delivery_address'
      Size = 256
    end
    object qryBookingdelivery_postal_code: TWideStringField
      FieldName = 'delivery_postal_code'
    end
    object qryBookingdelivery_fiscal_code: TWideStringField
      FieldName = 'delivery_fiscal_code'
      Size = 16
    end
    object qryBookingdelivery_town: TWideStringField
      FieldName = 'delivery_town'
      Size = 128
    end
    object qryBookingdelivery_last_name: TWideStringField
      FieldName = 'delivery_last_name'
      Size = 128
    end
    object qryBookingdelivery_full_address: TWideMemoField
      FieldName = 'delivery_full_address'
      BlobType = ftWideMemo
    end
    object qryBookingdelivery_phone: TWideStringField
      FieldName = 'delivery_phone'
      Size = 30
    end
    object qryBookingdelivery_email: TWideStringField
      FieldName = 'delivery_email'
      Size = 256
    end
    object qryBookingdelivery_cellular: TWideStringField
      FieldName = 'delivery_cellular'
    end
    object qryBookingjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryBookingpickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryBookingpickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryBookingdriver_id: TIntegerField
      FieldName = 'driver_id'
    end
    object qryBookingbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryBookingdriver_email: TWideStringField
      FieldName = 'driver_email'
      Size = 256
    end
    object qryBookingdriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryBookingdriver_jguid: TGuidField
      FieldName = 'driver_jguid'
      Size = 38
    end
    object qryBookingslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryBookingvehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryBookingvehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryBookingvehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
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
  end
  object spChangeBookDriver: TUniStoredProc
    StoredProcName = 'ergomercator.carservice.change_book_driver'
    SQL.Strings = (
      
        'SELECT ergomercator.carservice.change_book_driver(:p_day, :p_slo' +
        't_id, :p_booking_id, :p_driver_id)')
    Connection = PgErgoConnection
    Left = 144
    Top = 80
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
        DataType = ftLargeint
        Name = 'p_booking_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'p_driver_id'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ergomercator.carservice.change_book_driver'
  end
  object qryAlternativeTimeTable: TUniQuery
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
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM carservice.timetable_booking_view  '
      'where '
      'booking_id = :booking_id'
      '')
    Left = 144
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'booking_id'
        Value = nil
      end>
    object qryAlternativeTimeTablepickup_an_id: TIntegerField
      FieldName = 'pickup_an_id'
    end
    object qryAlternativeTimeTablepickup_first_name: TWideStringField
      FieldName = 'pickup_first_name'
      Size = 128
    end
    object qryAlternativeTimeTablepickup_vat_id: TSmallintField
      FieldName = 'pickup_vat_id'
    end
    object qryAlternativeTimeTablepickup_address: TWideStringField
      FieldName = 'pickup_address'
      Size = 256
    end
    object qryAlternativeTimeTablepickup_postal_code: TWideStringField
      FieldName = 'pickup_postal_code'
      Size = 30
    end
    object qryAlternativeTimeTablepickup_fiscal_code: TWideStringField
      FieldName = 'pickup_fiscal_code'
      Size = 16
    end
    object qryAlternativeTimeTablepickup_town: TWideStringField
      FieldName = 'pickup_town'
      Size = 128
    end
    object qryAlternativeTimeTablepickup_last_name: TWideStringField
      FieldName = 'pickup_last_name'
      Size = 128
    end
    object qryAlternativeTimeTablepickup_full_address: TWideMemoField
      FieldName = 'pickup_full_address'
      BlobType = ftWideMemo
    end
    object qryAlternativeTimeTablepickup_phone: TWideStringField
      FieldName = 'pickup_phone'
      Size = 30
    end
    object qryAlternativeTimeTablepickup_email: TWideStringField
      FieldName = 'pickup_email'
      Size = 128
    end
    object qryAlternativeTimeTablepickup_cellular: TWideStringField
      FieldName = 'pickup_cellular'
    end
    object qryAlternativeTimeTabledelivery_an_id: TIntegerField
      FieldName = 'delivery_an_id'
    end
    object qryAlternativeTimeTabledelivery_first_name: TWideStringField
      FieldName = 'delivery_first_name'
      Size = 128
    end
    object qryAlternativeTimeTabledelivery_vat_id: TSmallintField
      FieldName = 'delivery_vat_id'
    end
    object qryAlternativeTimeTabledelivery_address: TWideStringField
      FieldName = 'delivery_address'
      Size = 256
    end
    object qryAlternativeTimeTabledelivery_postal_code: TWideStringField
      FieldName = 'delivery_postal_code'
      Size = 30
    end
    object qryAlternativeTimeTabledelivery_fiscal_code: TWideStringField
      FieldName = 'delivery_fiscal_code'
      Size = 16
    end
    object qryAlternativeTimeTabledelivery_town: TWideStringField
      FieldName = 'delivery_town'
      Size = 128
    end
    object qryAlternativeTimeTabledelivery_last_name: TWideStringField
      FieldName = 'delivery_last_name'
      Size = 128
    end
    object qryAlternativeTimeTabledelivery_full_address: TWideMemoField
      FieldName = 'delivery_full_address'
      BlobType = ftWideMemo
    end
    object qryAlternativeTimeTabledelivery_phone: TWideStringField
      FieldName = 'delivery_phone'
      Size = 30
    end
    object qryAlternativeTimeTabledelivery_email: TWideStringField
      FieldName = 'delivery_email'
      Size = 128
    end
    object qryAlternativeTimeTabledelivery_cellular: TWideStringField
      FieldName = 'delivery_cellular'
    end
    object qryAlternativeTimeTablejguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryAlternativeTimeTablepickup_time: TWideStringField
      FieldName = 'pickup_time'
      Size = 6
    end
    object qryAlternativeTimeTablepickup_date: TDateField
      FieldName = 'pickup_date'
    end
    object qryAlternativeTimeTabledriver_id: TIntegerField
      FieldName = 'driver_id'
    end
    object qryAlternativeTimeTablebooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryAlternativeTimeTabledriver_email: TWideStringField
      FieldName = 'driver_email'
      Size = 256
    end
    object qryAlternativeTimeTabledriver1_cellular: TWideStringField
      FieldName = 'driver1_cellular'
    end
    object qryAlternativeTimeTabledriver_jguid: TGuidField
      FieldName = 'driver_jguid'
      Size = 38
    end
    object qryAlternativeTimeTableslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryAlternativeTimeTablevehicle_numberplate: TWideStringField
      FieldName = 'vehicle_numberplate'
      Size = 24
    end
    object qryAlternativeTimeTablevehicle_model: TWideStringField
      FieldName = 'vehicle_model'
      Size = 128
    end
    object qryAlternativeTimeTablevehicle_color: TWideStringField
      FieldName = 'vehicle_color'
      Size = 64
    end
    object qryAlternativeTimeTablepickup_day: TDateField
      FieldName = 'pickup_day'
    end
    object qryAlternativeTimeTablepickup_slot_id: TSmallintField
      FieldName = 'pickup_slot_id'
    end
    object qryAlternativeTimeTablereturn_day: TDateField
      FieldName = 'return_day'
    end
  end
  object spConfirmBooking: TUniStoredProc
    StoredProcName = 'ergomercator.carservice.book_confirmation'
    SQL.Strings = (
      'SELECT ergomercator.carservice.book_confirmation(:p_guid)')
    Connection = PgErgoConnection
    Left = 144
    Top = 224
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'p_guid'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'ergomercator.carservice.book_confirmation'
  end
  object qryDriverCalendar: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO carservice.timetable_booking_driver'
      '  (state_id)'
      'VALUES'
      '  (:state_id)')
    SQLDelete.Strings = (
      'DELETE FROM carservice.timetable_booking_driver'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLUpdate.Strings = (
      'UPDATE carservice.timetable_booking_driver'
      'SET'
      '  state_id = :state_id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_booking_driver'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT state_id FROM carservice.timetable_booking_driver'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_booking_driver'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'insert_date'
        FieldType = ftDateTime
      end
      item
        FieldName = 'title'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'delivery_first_name'
        FieldType = ftWideString
        FieldLength = 128
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'workingday || '#39' '#39' || slot_des|| '#39' '#39' || from_name as Title,'
      
        'count(*) OVER (ORDER BY state_id ASC, workingday ASC, slot_id AS' +
        'C , jguid ) ROWNUM,  '
      'v.* '
      'FROM '
      'carservice.timetable_booking_driver v  '
      'where '
      'booking_id is not null and '
      'driver_anagraph_id = :driver_id'
      'and'
      'workingday >= CURRENT_DATE - 15'
      'order by state_id ASC, workingday ASC, slot_id ASC , jguid'
      'limit 100')
    Left = 264
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'driver_id'
        Value = 253907
      end>
    object qryDriverCalendartitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 128
    end
    object qryDriverCalendarrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryDriverCalendarjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryDriverCalendarworkingday: TDateField
      FieldName = 'workingday'
    end
    object qryDriverCalendarslot_id: TSmallintField
      FieldName = 'slot_id'
    end
    object qryDriverCalendarbooking_id: TLargeintField
      FieldName = 'booking_id'
    end
    object qryDriverCalendarfrom_id: TIntegerField
      FieldName = 'from_id'
    end
    object qryDriverCalendarto_id: TIntegerField
      FieldName = 'to_id'
    end
    object qryDriverCalendarstate_id: TSmallintField
      FieldName = 'state_id'
    end
    object qryDriverCalendarslot_des: TWideStringField
      FieldName = 'slot_des'
      Size = 6
    end
    object qryDriverCalendarbooked: TBooleanField
      FieldName = 'booked'
    end
    object qryDriverCalendardriver_anagraph_id: TIntegerField
      FieldName = 'driver_anagraph_id'
    end
    object qryDriverCalendaran_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryDriverCalendardriver_name: TWideMemoField
      FieldName = 'driver_name'
      BlobType = ftWideMemo
    end
    object qryDriverCalendaran_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryDriverCalendarfrom_latitude: TFloatField
      FieldName = 'from_latitude'
    end
    object qryDriverCalendarfrom_longitude: TFloatField
      FieldName = 'from_longitude'
    end
    object qryDriverCalendarfrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      Size = 256
    end
    object qryDriverCalendarto_latitude: TFloatField
      FieldName = 'to_latitude'
    end
    object qryDriverCalendarto_longitude: TFloatField
      FieldName = 'to_longitude'
    end
    object qryDriverCalendarto_full_address: TWideStringField
      FieldName = 'to_full_address'
      Size = 256
    end
    object qryDriverCalendarfrom_cellular: TWideStringField
      FieldName = 'from_cellular'
    end
    object qryDriverCalendarfrom_email: TWideStringField
      FieldName = 'from_email'
      Size = 256
    end
    object qryDriverCalendarfrom_name: TWideMemoField
      FieldName = 'from_name'
      BlobType = ftWideMemo
    end
    object qryDriverCalendarto_cellular: TWideStringField
      FieldName = 'to_cellular'
    end
    object qryDriverCalendarto_email: TWideStringField
      FieldName = 'to_email'
      Size = 256
    end
    object qryDriverCalendarto_name: TWideMemoField
      FieldName = 'to_name'
      BlobType = ftWideMemo
    end
  end
  object qryMessages: TUniQuery
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
      'UPDATE carservice.timetable_booking_driver'
      'SET'
      '  state_id = :state_id'
      'WHERE'
      '  jguid = :Old_jguid')
    SQLLock.Strings = (
      'SELECT * FROM carservice.timetable_booking_driver'
      'WHERE'
      '  jguid = :Old_jguid'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT state_id FROM carservice.timetable_booking_driver'
      'WHERE'
      '  jguid = :jguid')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM carservice.timetable_booking_driver'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'insert_date'
        FieldType = ftDateTime
      end
      item
        FieldName = 'title'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'delivery_first_name'
        FieldType = ftWideString
        FieldLength = 128
      end
      item
        FieldName = 'subtitle'
        FieldType = ftWideString
        FieldLength = 256
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT '
      'count(*) OVER (ORDER BY m.insert_date DESC, m.jguid ) ROWNUM ,'
      '    TO_CHAR('
      '        m.insert_date,'
      '        '#39'DD/MM/YYYY HH24:MI'#39' '
      '    ) || '#39' '#39' ||'
      '     CASE WHEN'
      '          msgtype = 2 THEN '#39'SMS'#39' else '#39'eMail'#39' '
      '     END'
      '  as Title,'
      'a.an_name || '#39' '#39' || a.an_last_name as Subtitle,'
      'm.*'
      ''
      'FROM '
      
        'carservice.messages m JOIN anagraph.anagraphs a ON m.anagraph_id' +
        ' = a.anagraph_id '
      'where msgtext > '#39#39
      'ORDER BY m.insert_date desc'
      'limit 20')
    Left = 264
    Top = 184
    object qryMessagesrownum: TLargeintField
      FieldName = 'rownum'
      ReadOnly = True
    end
    object qryMessagestitle: TWideStringField
      FieldName = 'title'
      ReadOnly = True
      Size = 128
    end
    object qryMessagessubtitle: TWideStringField
      FieldName = 'subtitle'
      ReadOnly = True
      Size = 256
    end
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
    object qryMessagesmsgtext: TWideMemoField
      FieldName = 'msgtext'
      BlobType = ftWideMemo
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
  object spUpdateCalendar: TUniStoredProc
    StoredProcName = 'carservice.update_timetable_state'
    SQL.Strings = (
      'SELECT carservice.update_timetable_state(:p_state_id, :p_guid)')
    Connection = PgErgoConnection
    Left = 264
    Top = 48
    ParamData = <
      item
        DataType = ftBoolean
        Name = 'result'
        ParamType = ptResult
        Value = nil
      end
      item
        DataType = ftLargeint
        Name = 'p_state_id'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftGuid
        Name = 'p_guid'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'carservice.update_timetable_state'
  end
end
