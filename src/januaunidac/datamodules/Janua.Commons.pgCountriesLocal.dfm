inherited dmPgCountriesLocal: TdmPgCountriesLocal
  Width = 729
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  inherited qryTowns: TUniQuery
    SQL.Strings = (
      
        'SELECT town_id, town_name, town_iso_code, town_local_code, town_' +
        'postal_code, district_id'
      #9'FROM jpublic.towns '
      'where '
      '   (town_postal_code like :postal_code or :postal_code = '#39'%'#39')'
      '   and'
      '   (town_name like :town_name or :town_name = '#39'%'#39')'
      ''
      'limit :limit')
    ParamData = <
      item
        DataType = ftString
        Name = 'postal_code'
        ParamType = ptInput
        Value = '201%'
      end
      item
        DataType = ftWideString
        Name = 'town_name'
        ParamType = ptInput
        Value = '%'
      end
      item
        DataType = ftInteger
        Name = 'LIMIT'
        ParamType = ptInput
        Value = 10
      end>
  end
  inherited spSetSchemaID: TUniStoredProc
    CommandStoredProcName = 'system.set_schema_id'
  end
  object dsRegions: TDataSource
    DataSet = tbRegions
    Left = 312
    Top = 168
  end
  object tbDistricts: TUniTable
    TableName = 'jpublic.districts'
    OrderFields = 'district_name'
    Connection = PgErgoConnection
    MasterSource = dsRegions
    MasterFields = 'region_id'
    DetailFields = 'region_id'
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 312
    Top = 224
    object tbDistrictsdistrict_id: TSmallintField
      FieldName = 'district_id'
      Required = True
    end
    object tbDistrictsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object tbDistrictsiso_district_code: TWideStringField
      FieldName = 'iso_district_code'
      Size = 6
    end
    object tbDistrictsdistrict_name: TWideStringField
      FieldName = 'district_name'
      Size = 256
    end
    object tbDistrictslocal_district_code: TWideStringField
      FieldName = 'local_district_code'
      Size = 10
    end
    object tbDistrictsnumberplate_code: TWideStringField
      FieldName = 'numberplate_code'
      Size = 4
    end
  end
  object dsDistricts: TDataSource
    DataSet = tbDistricts
    Left = 312
    Top = 280
  end
  object tbTowns: TUniTable
    TableName = 'jpublic.towns'
    Connection = PgErgoConnection
    MasterSource = dsDistricts
    MasterFields = 'district_id'
    DetailFields = 'district_id'
    Options.AutoPrepare = True
    Options.DefaultValues = True
    Left = 312
    Top = 336
    object tbTownstown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
    object tbTownstown_name: TWideStringField
      FieldName = 'town_name'
      Size = 256
    end
    object tbTownstown_iso_code: TWideStringField
      FieldName = 'town_iso_code'
      Size = 10
    end
    object tbTownstown_local_code: TWideStringField
      FieldName = 'town_local_code'
      Size = 10
    end
    object tbTownstown_postal_code: TWideStringField
      FieldName = 'town_postal_code'
    end
    object tbTownsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
  end
  object qryDistricts: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT district_id, region_id, iso_district_code, '
      '       district_name, local_district_code, '
      '       numberplate_code'
      '  FROM jpublic.districts;')
    Left = 192
    Top = 88
    object qryDistrictsdistrict_id: TSmallintField
      FieldName = 'district_id'
      Required = True
    end
    object qryDistrictsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qryDistrictsiso_district_code: TWideStringField
      FieldName = 'iso_district_code'
      Size = 6
    end
    object qryDistrictsdistrict_name: TWideStringField
      FieldName = 'district_name'
      Size = 256
    end
    object qryDistrictslocal_district_code: TWideStringField
      FieldName = 'local_district_code'
      Size = 10
    end
    object qryDistrictsnumberplate_code: TWideStringField
      FieldName = 'numberplate_code'
      Size = 4
    end
  end
  object dsTowns: TDataSource
    DataSet = tbTowns
    Left = 312
    Top = 392
  end
  object qryCountries: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO jpublic.countries'
      
        '  (iso_country_code, iso_country_code2, country_year, country_na' +
        'me, iso_currency_id, country_id, iso_country_number, country_fla' +
        'g, country_key)'
      'VALUES'
      
        '  (:iso_country_code, :iso_country_code2, :country_year, :countr' +
        'y_name, :iso_currency_id, :country_id, :iso_country_number, :cou' +
        'ntry_flag, :country_key)')
    SQLDelete.Strings = (
      'DELETE FROM jpublic.countries'
      'WHERE'
      '  country_id = :Old_country_id')
    SQLUpdate.Strings = (
      'UPDATE jpublic.countries'
      'SET'
      
        '  iso_country_code = :iso_country_code, iso_country_code2 = :iso' +
        '_country_code2, country_year = :country_year, country_name = :co' +
        'untry_name, iso_currency_id = :iso_currency_id, country_id = :co' +
        'untry_id, iso_country_number = :iso_country_number, country_flag' +
        ' = :country_flag, country_key = :country_key'
      'WHERE'
      '  country_id = :Old_country_id')
    SQLLock.Strings = (
      'SELECT * FROM jpublic.countries'
      'WHERE'
      '  country_id = :Old_country_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT iso_country_code, iso_country_code2, country_year, countr' +
        'y_name, iso_currency_id, country_id, iso_country_number, country' +
        '_flag, country_key FROM jpublic.countries'
      'WHERE'
      '  country_id = :country_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM jpublic.countries'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'creation_date'
        FieldType = ftTimeStamp
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      'select * from  jpublic.countries '
      '     where'
      '         (country_id = :country_id or :country_id = 0)'
      '     and'
      
        '         (iso_country_code = :country_code or :country_code = '#39'*' +
        #39')'
      '     and'
      
        '         (Upper(country_name) = Upper(:country_name) or :country' +
        '_name = '#39'*'#39')')
    Left = 312
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'country_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'country_code'
        ParamType = ptInput
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'country_name'
        ParamType = ptInput
        Value = '*'
      end>
    object qryCountriesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryCountriesiso_country_code2: TWideStringField
      FieldName = 'iso_country_code2'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryCountriescountry_year: TSmallintField
      FieldName = 'country_year'
      Required = True
    end
    object qryCountriescountry_name: TWideStringField
      FieldName = 'country_name'
      Required = True
      Size = 128
    end
    object qryCountriesiso_currency_id: TSmallintField
      FieldName = 'iso_currency_id'
      Required = True
    end
    object qryCountriescountry_id: TSmallintField
      FieldName = 'country_id'
      Required = True
    end
    object qryCountriesiso_country_number: TWideStringField
      FieldName = 'iso_country_number'
      FixedChar = True
      Size = 3
    end
    object qryCountriescountry_key: TWideStringField
      FieldName = 'country_key'
      Size = 64
    end
  end
  object dspCountries: TDataSetProvider
    DataSet = qryCountries
    Constraints = False
    Options = [poReadOnly, poUseQuoteChar]
    Left = 192
    Top = 144
  end
  object tbRegions: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT * FROM jpublic.regions'
      'WHERE country_id = :country_id '
      'ORDER BY region_name')
    MasterSource = dsCountries
    MasterFields = 'country_id'
    DetailFields = 'country_id'
    Left = 312
    Top = 112
    ParamData = <
      item
        DataType = ftSmallint
        Name = 'country_id'
        ParamType = ptInput
        Value = 0
      end>
    object tbRegionsregion_id: TSmallintField
      FieldName = 'region_id'
      Required = True
    end
    object tbRegionsregion_name: TWideStringField
      FieldName = 'region_name'
      Required = True
      Size = 128
    end
    object tbRegionsiso_region_code: TWideStringField
      FieldName = 'iso_region_code'
    end
    object tbRegionslocal_region_code: TWideStringField
      FieldName = 'local_region_code'
    end
    object tbRegionscountry_id: TSmallintField
      FieldName = 'country_id'
    end
  end
  object qryLanguages: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO jpublic.languages'
      
        '  (iso_language_code, iso_language_code2, language_name, languag' +
        'e_id)'
      'VALUES'
      
        '  (:iso_language_code, :iso_language_code2, :language_name, :lan' +
        'guage_id)')
    SQLDelete.Strings = (
      'DELETE FROM jpublic.languages'
      'WHERE'
      '  language_id = :Old_language_id')
    SQLUpdate.Strings = (
      'UPDATE jpublic.languages'
      'SET'
      
        '  iso_language_code = :iso_language_code, iso_language_code2 = :' +
        'iso_language_code2, language_name = :language_name, language_id ' +
        '= :language_id'
      'WHERE'
      '  language_id = :Old_language_id')
    SQLLock.Strings = (
      'SELECT * FROM jpublic.languages'
      'WHERE'
      '  language_id = :Old_language_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT iso_language_code, iso_language_code2, language_name, lan' +
        'guage_id FROM jpublic.languages'
      'WHERE'
      '  language_id = :language_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM jpublic.languages'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT iso_language_code, iso_language_code2, language_name, lan' +
        'guage_id'
      '  FROM jpublic.languages;')
    Left = 192
    Top = 200
    object qryLanguagesiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryLanguagesiso_language_code2: TWideStringField
      FieldName = 'iso_language_code2'
      Required = True
      FixedChar = True
      Size = 2
    end
    object qryLanguageslanguage_name: TWideStringField
      FieldName = 'language_name'
      Required = True
      Size = 128
    end
    object qryLanguageslanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
  end
  object qryCultures: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO jpublic.cultures'
      
        '  (iso_country_code, iso_language_code, country_id, iso_culture_' +
        'code, language_id)'
      'VALUES'
      
        '  (:iso_country_code, :iso_language_code, :country_id, :iso_cult' +
        'ure_code, :language_id)')
    SQLDelete.Strings = (
      'DELETE FROM jpublic.cultures'
      'WHERE'
      
        '  country_id = :Old_country_id AND language_id = :Old_language_i' +
        'd')
    SQLUpdate.Strings = (
      'UPDATE jpublic.cultures'
      'SET'
      
        '  iso_country_code = :iso_country_code, iso_language_code = :iso' +
        '_language_code, country_id = :country_id, iso_culture_code = :is' +
        'o_culture_code, language_id = :language_id'
      'WHERE'
      
        '  country_id = :Old_country_id AND language_id = :Old_language_i' +
        'd')
    SQLLock.Strings = (
      'SELECT * FROM jpublic.cultures'
      'WHERE'
      
        '  country_id = :Old_country_id AND language_id = :Old_language_i' +
        'd'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT iso_country_code, iso_language_code, country_id, iso_cult' +
        'ure_code, language_id FROM jpublic.cultures'
      'WHERE'
      '  country_id = :country_id AND language_id = :language_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM jpublic.cultures'
      ''
      ') t')
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT iso_country_code, iso_language_code, country_id, iso_cult' +
        'ure_code, '
      '       language_id'
      '  FROM jpublic.cultures;')
    Left = 192
    Top = 256
    object qryCulturesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryCulturesiso_language_code: TWideStringField
      FieldName = 'iso_language_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryCulturescountry_id: TSmallintField
      FieldName = 'country_id'
      Required = True
    end
    object qryCulturesiso_culture_code: TWideStringField
      FieldName = 'iso_culture_code'
      Required = True
      Size = 6
    end
    object qryCultureslanguage_id: TSmallintField
      FieldName = 'language_id'
      Required = True
    end
  end
  object qryLkpCountryName: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO jpublic.countries'
      
        '  (iso_country_code, iso_country_code2, country_year, country_na' +
        'me, iso_currency_id, country_id, iso_country_number, country_fla' +
        'g, country_key)'
      'VALUES'
      
        '  (:iso_country_code, :iso_country_code2, :country_year, :countr' +
        'y_name, :iso_currency_id, :country_id, :iso_country_number, :cou' +
        'ntry_flag, :country_key)')
    SQLDelete.Strings = (
      'DELETE FROM jpublic.countries'
      'WHERE'
      '  country_id = :Old_country_id')
    SQLUpdate.Strings = (
      'UPDATE jpublic.countries'
      'SET'
      
        '  iso_country_code = :iso_country_code, iso_country_code2 = :iso' +
        '_country_code2, country_year = :country_year, country_name = :co' +
        'untry_name, iso_currency_id = :iso_currency_id, country_id = :co' +
        'untry_id, iso_country_number = :iso_country_number, country_flag' +
        ' = :country_flag, country_key = :country_key'
      'WHERE'
      '  country_id = :Old_country_id')
    SQLLock.Strings = (
      'SELECT * FROM jpublic.countries'
      'WHERE'
      '  country_id = :Old_country_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT iso_country_code, iso_country_code2, country_year, countr' +
        'y_name, iso_currency_id, country_id, iso_country_number, country' +
        '_flag, country_key FROM jpublic.countries'
      'WHERE'
      '  country_id = :country_id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM jpublic.countries'
      ''
      ') t')
    DataTypeMap = <
      item
        FieldName = 'creation_date'
        FieldType = ftTimeStamp
      end>
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'select country_name, country_id from  jpublic.countries order by' +
        ' country_name')
    Left = 192
    Top = 32
    object qryLkpCountryNamecountry_name: TWideStringField
      FieldName = 'country_name'
      Required = True
      Size = 128
    end
    object qryLkpCountryNamecountry_id: TSmallintField
      FieldName = 'country_id'
      Required = True
    end
  end
  object cdsRegions: TClientDataSet
    Aggregates = <>
    DataSetField = cdsCountriestbRegions
    Params = <
      item
        DataType = ftSmallint
        Name = 'country_id'
        ParamType = ptInput
        Value = 1
      end>
    Left = 408
    Top = 96
    object cdsRegionsregion_id: TSmallintField
      FieldName = 'region_id'
      Required = True
    end
    object cdsRegionsregion_name: TWideStringField
      FieldName = 'region_name'
      Required = True
      Size = 128
    end
    object cdsRegionsiso_region_code: TWideStringField
      FieldName = 'iso_region_code'
    end
    object cdsRegionslocal_region_code: TWideStringField
      FieldName = 'local_region_code'
    end
    object cdsRegionscountry_id: TSmallintField
      FieldName = 'country_id'
    end
    object cdsRegionstbDistricts: TDataSetField
      FieldName = 'tbDistricts'
    end
  end
  object cdsDistricts: TClientDataSet
    Aggregates = <>
    DataSetField = cdsRegionstbDistricts
    Params = <>
    Left = 408
    Top = 152
    object cdsDistrictsdistrict_id: TSmallintField
      FieldName = 'district_id'
      Required = True
    end
    object cdsDistrictsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object cdsDistrictsiso_district_code: TWideStringField
      FieldName = 'iso_district_code'
      Size = 6
    end
    object cdsDistrictsdistrict_name: TWideStringField
      FieldName = 'district_name'
      Size = 256
    end
    object cdsDistrictslocal_district_code: TWideStringField
      FieldName = 'local_district_code'
      Size = 10
    end
    object cdsDistrictsnumberplate_code: TWideStringField
      FieldName = 'numberplate_code'
      Size = 4
    end
    object cdsDistrictstbTowns: TDataSetField
      FieldName = 'tbTowns'
    end
  end
  object dsCountries: TDataSource
    DataSet = qryCountries
    Left = 312
    Top = 64
  end
  object cdsCountries: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'country_id'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'country_code'
        ParamType = ptInput
        Value = '*'
      end
      item
        DataType = ftString
        Name = 'country_name'
        ParamType = ptInput
        Value = '*'
      end>
    Left = 408
    Top = 40
    object cdsCountriesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsCountriesiso_country_code2: TWideStringField
      FieldName = 'iso_country_code2'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsCountriescountry_year: TSmallintField
      FieldName = 'country_year'
      Required = True
    end
    object cdsCountriescountry_name: TWideStringField
      FieldName = 'country_name'
      Required = True
      Size = 128
    end
    object cdsCountriesiso_currency_id: TSmallintField
      FieldName = 'iso_currency_id'
      Required = True
    end
    object cdsCountriescountry_id: TSmallintField
      FieldName = 'country_id'
      Required = True
    end
    object cdsCountriesiso_country_number: TWideStringField
      FieldName = 'iso_country_number'
      FixedChar = True
      Size = 3
    end
    object cdsCountriescountry_key: TWideStringField
      FieldName = 'country_key'
      Size = 64
    end
    object cdsCountriestbRegions: TDataSetField
      FieldName = 'tbRegions'
    end
  end
  object dsLkpTowns: TUniDataSource
    DataSet = qryLkpTowns
    Left = 192
    Top = 376
  end
  object qryLkpTowns: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT town_id, town_name, town_iso_code, town_local_code, town_' +
        'postal_code, t.district_id, '
      
        '      region_id, iso_district_code, district_name, local_distric' +
        't_code, numberplate_code'
      '  FROM jpublic.districts d,  jpublic.towns t'
      'where t.district_id = d.district_id'
      'order by town_name')
    Left = 192
    Top = 320
    object qryLkpTownstown_id: TIntegerField
      FieldName = 'town_id'
      Required = True
    end
    object qryLkpTownstown_name: TWideStringField
      FieldName = 'town_name'
      Size = 256
    end
    object qryLkpTownstown_iso_code: TWideStringField
      FieldName = 'town_iso_code'
      Size = 10
    end
    object qryLkpTownstown_local_code: TWideStringField
      FieldName = 'town_local_code'
      Size = 10
    end
    object qryLkpTownstown_postal_code: TWideStringField
      FieldName = 'town_postal_code'
    end
    object qryLkpTownsdistrict_id: TSmallintField
      FieldName = 'district_id'
    end
    object qryLkpTownsregion_id: TSmallintField
      FieldName = 'region_id'
    end
    object qryLkpTownsiso_district_code: TWideStringField
      FieldName = 'iso_district_code'
      Size = 6
    end
    object qryLkpTownsdistrict_name: TWideStringField
      FieldName = 'district_name'
      Size = 256
    end
    object qryLkpTownslocal_district_code: TWideStringField
      FieldName = 'local_district_code'
      Size = 10
    end
    object qryLkpTownsnumberplate_code: TWideStringField
      FieldName = 'numberplate_code'
      Size = 4
    end
  end
end
