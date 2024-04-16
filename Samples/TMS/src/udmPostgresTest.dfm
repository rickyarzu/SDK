object dmPostgresTest: TdmPostgresTest
  Height = 689
  Width = 865
  object pgConnection: TUniConnection
    ProviderName = 'postgreSQL'
    Database = 'ergomercator'
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    ConnectDialog = UniConnectDialog1
    Left = 200
    Top = 56
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 288
    Top = 80
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 200
    Top = 120
  end
  object UniQuery1: TUniQuery
    Connection = pgConnection
    Left = 200
    Top = 192
  end
end
