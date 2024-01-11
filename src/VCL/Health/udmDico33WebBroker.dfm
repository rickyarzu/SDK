inherited dmDico33WebBroker: TdmDico33WebBroker
  Height = 609
  Width = 458
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  object WebGMapsGeocoding1: TWebGMapsGeocoding
    Version = '1.0.3.0'
    Left = 176
    Top = 136
  end
  object spBooking: TUniStoredProc
    StoredProcName = 'health.setbooking'
    SQL.Strings = (
      'SELECT health.setbooking(:p_storedsearch, :p_auto)')
    Connection = PgErgoConnection
    Left = 176
    Top = 192
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
  object spAssignBooking: TUniStoredProc
    StoredProcName = 'health.assignbooking'
    SQL.Strings = (
      'SELECT health.assignbooking(:p_session_id, :p_booking_id)')
    Connection = PgErgoConnection
    Left = 176
    Top = 256
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
  object qryBookingInstitutes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select '
      'r.distance,'
      'a.anagraph_id, a.an_title, a.an_address, a.an_last_name, '
      'round(r.distance::numeric, 2) '
      
        '      || '#39' - '#39' || a.an_address || '#39' '#39' || a.an_town || '#39'('#39' || a.a' +
        'n_state_province || '#39')'#39' as full_address,'
      
        'a.an_phone, a.an_fax, a.an_email, a.an_postal_code, a.an_town, a' +
        '.an_postal_code, a.an_state_province,  a.latitude, a.longitude'
      'from anagraph.anagraphs a, health.bookings_rows r'
      
        'where r.anagraph_id = a.anagraph_id and r.booking_id = :booking_' +
        'id'
      'ORDER BY r.distance')
    Left = 176
    Top = 312
    ParamData = <
      item
        DataType = ftLargeint
        Name = 'booking_id'
        ParamType = ptInput
        Value = 31
      end>
    object qryBookingInstitutesdistance: TFloatField
      FieldName = 'distance'
      ReadOnly = True
    end
    object qryBookingInstitutesanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
      Required = True
    end
    object qryBookingInstitutesan_title: TWideStringField
      FieldName = 'an_title'
      Size = 32
    end
    object qryBookingInstitutesan_address: TWideStringField
      FieldName = 'an_address'
      Size = 256
    end
    object qryBookingInstitutesan_last_name: TWideStringField
      FieldName = 'an_last_name'
      Required = True
      Size = 128
    end
    object qryBookingInstitutesfull_address: TWideMemoField
      FieldName = 'full_address'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object qryBookingInstitutesan_phone: TWideStringField
      FieldName = 'an_phone'
    end
    object qryBookingInstitutesan_fax: TWideStringField
      FieldName = 'an_fax'
    end
    object qryBookingInstitutesan_email: TWideStringField
      FieldName = 'an_email'
      Size = 256
    end
    object qryBookingInstitutesan_postal_code: TWideStringField
      FieldName = 'an_postal_code'
      Size = 8
    end
    object qryBookingInstitutesan_town: TWideStringField
      FieldName = 'an_town'
      Size = 128
    end
    object qryBookingInstitutesan_postal_code_1: TWideStringField
      FieldName = 'an_postal_code_1'
      Size = 8
    end
    object qryBookingInstitutesan_state_province: TWideStringField
      FieldName = 'an_state_province'
      Size = 30
    end
    object qryBookingInstituteslatitude: TFloatField
      FieldName = 'latitude'
    end
    object qryBookingInstituteslongitude: TFloatField
      FieldName = 'longitude'
    end
  end
end
