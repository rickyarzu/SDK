inherited dmPgStatistics: TdmPgStatistics
  inherited PgErgoConnection: TJanuaUniConnection
    EncryptedPassword = '99FFCBFF91FF94FF8AFF93FFCFFF'
  end
  object qryTemp: TUniQuery
    Connection = PgErgoConnection
    Left = 184
    Top = 64
  end
  object qryQueriesSchemas: TUniQuery
    Connection = PgErgoConnection
    SQL.Strings = (
      'SELECT db_schema_id, schema_id, schema_name, schema_json'
      #9'FROM analytics.queries_schemas'
      'where '
      '   db_schema_id = :db_schema_id, ')
    Left = 184
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'db_schema_id'
        Value = nil
      end>
  end
  object qryQueriesGroups: TUniQuery
    Connection = PgErgoConnection
    MasterSource = dsQueriesSchemas
    Left = 184
    Top = 248
  end
  object qryQueries: TUniQuery
    Connection = PgErgoConnection
    Left = 184
    Top = 368
  end
  object dsQueriesSchemas: TDataSource
    DataSet = qryQueriesSchemas
    Left = 184
    Top = 184
  end
  object dsQueriesGroups: TDataSource
    DataSet = qryUserSession
    Left = 184
    Top = 304
  end
end
