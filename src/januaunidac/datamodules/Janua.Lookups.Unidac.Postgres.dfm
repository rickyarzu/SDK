inherited dmPgLookupsStorage: TdmPgLookupsStorage
  inherited PgErgoConnection: TJanuaUniConnection
    AutoCommit = False
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object qryCountries: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      
        'SELECT iso_country_code, iso_country_code2, country_year, countr' +
        'y_name, iso_currency_id, country_id, iso_country_number,  jguid'
      #9'FROM jpublic.countries'
      #9'order by country_name')
    Left = 72
    Top = 136
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
    object qryCountriesjguid: TGuidField
      FieldName = 'jguid'
      Size = 38
    end
  end
  object qryCountryCodes: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT iso_country_code, country_id'
      #9'FROM jpublic.countries'
      #9'order by iso_country_code')
    Left = 72
    Top = 200
    object qryCountryCodesiso_country_code: TWideStringField
      FieldName = 'iso_country_code'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryCountryCodescountry_id: TSmallintField
      FieldName = 'country_id'
      Required = True
    end
  end
  object qryCurrencies: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select currency_id, currency_code, currency_name '
      'from jpublic.currencies cc order by cc.currency_code')
    Left = 184
    Top = 32
    object qryCurrenciescurrency_id: TSmallintField
      FieldName = 'currency_id'
      Required = True
    end
    object qryCurrenciescurrency_code: TWideStringField
      FieldName = 'currency_code'
      Size = 3
    end
    object qryCurrenciescurrency_name: TWideStringField
      FieldName = 'currency_name'
      Size = 60
    end
  end
  object qryHazmat: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'select currency_id, currency_code, currency_name '
      'from jpublic.currencies cc order by cc.currency_code')
    Left = 184
    Top = 96
    object SmallintField1: TSmallintField
      FieldName = 'currency_id'
      Required = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'currency_code'
      Size = 3
    end
    object WideStringField2: TWideStringField
      FieldName = 'currency_name'
      Size = 60
    end
  end
  object qryLookup: TUniQuery
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
    Top = 168
  end
end
