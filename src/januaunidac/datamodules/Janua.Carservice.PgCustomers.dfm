inherited dmPgCarServiceCustomers: TdmPgCarServiceCustomers
  Height = 209
  Width = 330
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    Left = 40
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited PgUniProv: TPostgreSQLUniProvider
    Left = 40
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
      'select * from carservice.booking_head_view'
      'where jguid = :jguid'
      '')
    Left = 184
    Top = 48
    ParamData = <
      item
        DataType = ftGuid
        Name = 'jguid'
        Value = nil
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
    object qryBookingan_phone: TWideStringField
      FieldName = 'an_phone'
      Size = 30
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
    object qryBookingservice_name: TWideStringField
      FieldName = 'service_name'
      Size = 128
    end
    object qryBookingservice_address: TWideMemoField
      FieldName = 'service_address'
      BlobType = ftWideMemo
    end
    object qryBookingan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryBookingan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryBookingpickup_address: TWideMemoField
      FieldName = 'pickup_address'
      BlobType = ftWideMemo
    end
    object qryBookingreturn_address: TWideMemoField
      FieldName = 'return_address'
      BlobType = ftWideMemo
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
    object qryBookingpickup2_address: TWideMemoField
      FieldName = 'pickup2_address'
      BlobType = ftWideMemo
    end
    object qryBookingreturn2_address: TWideMemoField
      FieldName = 'return2_address'
      BlobType = ftWideMemo
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
      '  (/*booked and*/ booking_id = :booking_id)'
      'order by workingday ASC, slot_id ASC'
      'limit 1')
    Left = 112
    Top = 88
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 137
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
    end
    object qryPickupan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryPickupan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryPickupfrom_latitude: TFloatField
      FieldName = 'from_latitude'
    end
    object qryPickupfrom_longitude: TFloatField
      FieldName = 'from_longitude'
    end
    object qryPickupfrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      Size = 256
    end
    object qryPickupto_latitude: TFloatField
      FieldName = 'to_latitude'
    end
    object qryPickupto_longitude: TFloatField
      FieldName = 'to_longitude'
    end
    object qryPickupto_full_address: TWideStringField
      FieldName = 'to_full_address'
      Size = 256
    end
    object qryPickupslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
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
      '  (/*booked and*/ booking_id = :booking_id)'
      'and :hasreturn'
      'order by workingday DESC, slot_id DESC'
      'limit 1'
      '')
    Left = 256
    Top = 88
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 212
      end
      item
        DataType = ftBoolean
        Name = 'hasreturn'
        ParamType = ptInput
        Value = True
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
    end
    object qryDeliveryan_cellular: TWideStringField
      FieldName = 'an_cellular'
    end
    object qryDeliveryan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryDeliveryfrom_latitude: TFloatField
      FieldName = 'from_latitude'
    end
    object qryDeliveryfrom_longitude: TFloatField
      FieldName = 'from_longitude'
    end
    object qryDeliveryfrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      Size = 256
    end
    object qryDeliveryto_latitude: TFloatField
      FieldName = 'to_latitude'
    end
    object qryDeliveryto_longitude: TFloatField
      FieldName = 'to_longitude'
    end
    object qryDeliveryto_full_address: TWideStringField
      FieldName = 'to_full_address'
      Size = 256
    end
    object qryDeliveryslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      Size = 12
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
      'select * from carservice.timetable_view v1'
      'where '
      ' booking_id = :id')
    Active = True
    Left = 184
    Top = 128
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'id'
        ParamType = ptInput
        Value = 253911
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
    object qryTimeTablean_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryTimeTablefrom_latitude: TFloatField
      FieldName = 'from_latitude'
    end
    object qryTimeTablefrom_longitude: TFloatField
      FieldName = 'from_longitude'
    end
    object qryTimeTablefrom_full_address: TWideStringField
      FieldName = 'from_full_address'
      Size = 256
    end
    object qryTimeTableto_latitude: TFloatField
      FieldName = 'to_latitude'
    end
    object qryTimeTableto_longitude: TFloatField
      FieldName = 'to_longitude'
    end
    object qryTimeTableto_full_address: TWideStringField
      FieldName = 'to_full_address'
      Size = 256
    end
    object qryTimeTableslot_delivery: TWideStringField
      FieldName = 'slot_delivery'
      Size = 12
    end
  end
end
