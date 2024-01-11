inherited dmShippingVessels: TdmShippingVessels
  Height = 206
  Width = 286
  inherited PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
        IgnoreErrors = True
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
        IgnoreErrors = True
      end
      item
        DBType = 517
        FieldType = ftWideString
        FieldLength = 4096
        IgnoreErrors = True
      end>
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryLkpVessels: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'search_index'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select v.jguid, v.code, v.name, v.vessel_id'
      ', row_number() over()::integer as pos'
      ', upper(v.code || '#39'-'#39' || v.name) as search_index '
      ', upper(v.code || '#39' - '#39' || v.name) as display_index '
      'from shipping.vessels v'
      '  where trim(name) > '#39#39' and name is not null'
      '  order by name')
    Left = 72
    Top = 136
    object qryLkpVesselscode: TWideStringField
      FieldName = 'code'
      Size = 15
    end
    object qryLkpVesselsname: TWideStringField
      FieldName = 'name'
      Size = 128
    end
    object qryLkpVesselsvessel_id: TIntegerField
      FieldName = 'vessel_id'
      Required = True
    end
    object qryLkpVesselssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 1024
    end
    object qryLkpVesselsdisplay_index: TWideStringField
      FieldName = 'display_index'
      ReadOnly = True
      Size = 4096
    end
    object qryLkpVesselsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryLkpVesselspos: TIntegerField
      FieldName = 'pos'
      ReadOnly = True
    end
  end
  object qryLkpDepartments: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'search_index'
        FieldType = ftWideString
        FieldLength = 1024
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM shipping.vessel_departments'
      'ORDER BY description')
    Left = 184
    Top = 40
    object qryLkpDepartmentsid: TSmallintField
      FieldName = 'id'
      Required = True
    end
    object qryLkpDepartmentsdescription: TWideStringField
      FieldName = 'description'
      Size = 128
    end
    object qryLkpDepartmentsguid: TGuidField
      FieldName = 'guid'
      Size = 38
    end
  end
  object qryVessels: TUniQuery
    DataTypeMap = <
      item
        FieldName = 'search_index'
        FieldType = ftWideString
        FieldLength = 1024
        IgnoreErrors = True
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select v.*,  upper(v.name || '#39'-'#39' || v.name) as search_index '
      'from shipping.vessels_view v'
      '  where trim(name) > '#39#39' and name is not null'
      '  order by name')
    Left = 184
    Top = 104
    object qryVesselsvessel_id: TIntegerField
      FieldName = 'vessel_id'
    end
    object qryVesselsname: TWideStringField
      FieldName = 'name'
      Size = 128
    end
    object qryVesselscode: TWideStringField
      FieldName = 'code'
      Size = 15
    end
    object qryVesselsnet_tonnage: TFloatField
      FieldName = 'net_tonnage'
    end
    object qryVesselsgross_tonnage: TFloatField
      FieldName = 'gross_tonnage'
    end
    object qryVesselsdeadweight: TFloatField
      FieldName = 'deadweight'
    end
    object qryVesselsinsert_date: TDateField
      FieldName = 'insert_date'
    end
    object qryVesselsupdate_date: TDateField
      FieldName = 'update_date'
    end
    object qryVesselsins_id: TLargeintField
      FieldName = 'ins_id'
    end
    object qryVesselsupd_id: TLargeintField
      FieldName = 'upd_id'
    end
    object qryVesselsuser_insert_id: TIntegerField
      FieldName = 'user_insert_id'
    end
    object qryVesselsuser_update_id: TIntegerField
      FieldName = 'user_update_id'
    end
    object qryVesselslocal: TBooleanField
      FieldName = 'local'
    end
    object qryVesselspassenger_limit: TSmallintField
      FieldName = 'passenger_limit'
    end
    object qryVesselsdb_schema_id: TIntegerField
      FieldName = 'db_schema_id'
    end
    object qryVesselsjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
    object qryVesselsdeleted: TBooleanField
      FieldName = 'deleted'
    end
    object qryVesselsnotes: TWideStringField
      FieldName = 'notes'
      Size = 128
    end
    object qryVesselscustom_char_1: TWideStringField
      FieldName = 'custom_char_1'
      Size = 128
    end
    object qryVesselscustom_char_2: TWideStringField
      FieldName = 'custom_char_2'
      Size = 128
    end
    object qryVesselscustom_char_3: TWideStringField
      FieldName = 'custom_char_3'
      Size = 128
    end
    object qryVesselscustom_int_1: TIntegerField
      FieldName = 'custom_int_1'
    end
    object qryVesselscustom_int_2: TIntegerField
      FieldName = 'custom_int_2'
    end
    object qryVesselscustom_int_3: TIntegerField
      FieldName = 'custom_int_3'
    end
    object qryVesselsanagraph_id: TIntegerField
      FieldName = 'anagraph_id'
    end
    object qryVesselsshipowner_name: TWideStringField
      FieldName = 'shipowner_name'
      Size = 128
    end
    object qryVesselssearch_index: TWideStringField
      FieldName = 'search_index'
      ReadOnly = True
      Size = 1024
    end
  end
end
