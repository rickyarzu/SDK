object UniMainModule: TUniMainModule
  Theme = 'triton'
  MonitoredKeys.Keys = <>
  Height = 240
  Width = 405
  object PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftTimeStamp
      end
      item
        DBType = 520
        FieldType = ftTimeStamp
      end>
    ProviderName = 'PostgreSQL'
    Port = 5432
    Database = 'ergomercator'
    SpecificOptions.Strings = (
      'PostgreSQL.Schema=public'
      'PostgreSQL.UseUnicode=True')
    Options.DisconnectedMode = True
    PoolingOptions.MinPoolSize = 100
    PoolingOptions.MaxPoolSize = 10000
    PoolingOptions.ConnectionLifetime = 300000
    Pooling = True
    Username = 'ergo'
    Server = 'local.januaservers.com'
    LoginPrompt = False
    BeforeConnect = PgErgoConnectionBeforeConnect
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 72
    Top = 16
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgUniProv: TPostgreSQLUniProvider
    Left = 72
    Top = 72
  end
  object FSTheme: TUniFSTheme
    Style = Crystal
    Enabled = True
    Left = 72
    Top = 142
  end
end
