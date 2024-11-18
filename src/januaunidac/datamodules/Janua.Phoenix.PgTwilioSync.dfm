inherited dmPgStorage1: TdmPgStorage1
  Height = 236
  Width = 377
  inherited PgErgoConnection: TJanuaUniConnection
    Port = 5432
    Server = 'pg.januaservers.com'
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object FbPhoenixConnection: TUniConnection
    ProviderName = 'interBase'
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    Username = 'SYSDBA'
    Server = '192.168.1.200'
    LoginPrompt = False
    Left = 176
    Top = 48
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 168
    Top = 112
  end
end
