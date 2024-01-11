object UniMainModule: TUniMainModule
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  Height = 158
  Width = 258
  PixelsPerInch = 96
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
    PoolingOptions.MaxPoolSize = 10000
    PoolingOptions.MinPoolSize = 100
    PoolingOptions.ConnectionLifetime = 300000
    Pooling = True
    Username = 'ergo'
    Server = 'local.januaservers.com'
    LoginPrompt = False
    BeforeConnect = PgErgoConnectionBeforeConnect
    Left = 72
    Top = 16
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgUniProv: TPostgreSQLUniProvider
    Left = 72
    Top = 72
  end
end
