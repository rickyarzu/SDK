inherited dmJanuaPgConnections: TdmJanuaPgConnections
  OldCreateOrder = True
  Height = 126
  Width = 227
  object PgErgoConnection: TPgConnection
    Username = 'ergo'
    Server = 'sbs2011'
    LoginPrompt = False
    BeforeConnect = PgErgoConnectionBeforeConnect
    Database = 'ergomercator'
    Schema = 'football'
    Left = 40
    Top = 48
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PgSQLMonitor1: TPgSQLMonitor
    Left = 144
    Top = 24
  end
end
