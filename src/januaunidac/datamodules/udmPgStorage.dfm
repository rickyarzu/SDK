inherited dmPgStorage: TdmPgStorage
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 176
  Width = 171
  object PgErgoConnection: TJanuaUniConnection
    DataTypeMap = <
      item
        DBType = 521
        FieldType = ftDateTime
      end
      item
        DBType = 520
        FieldType = ftDateTime
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
    Server = 'pg.januaservers.com'
    LoginPrompt = False
    BeforeConnect = PgErgoConnectionBeforeConnect
    OnError = PgErgoConnectionError
    SchemaParamKey = 'system.db_schema_id'
    SchemaSQL = 'SET SESSION "%s" = %s; '
    SchemaParams = <>
    Left = 58
    Top = 13
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgUniProv: TPostgreSQLUniProvider
    Left = 58
    Top = 64
  end
end
