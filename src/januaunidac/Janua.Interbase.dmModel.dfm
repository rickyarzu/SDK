object dmJanuaInterbaseModel: TdmJanuaInterbaseModel
  Height = 545
  Width = 759
  object JanuaUniConnection1: TJanuaUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    Username = 'SYSDBA'
    Server = '192.168.1.200'
    LoginPrompt = False
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 112
    Top = 32
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object InterBaseUniProvider1: TInterBaseUniProvider
    Left = 112
    Top = 104
  end
end
