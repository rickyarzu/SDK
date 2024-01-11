object dmJanuaOraModel: TdmJanuaOraModel
  OnCreate = DataModuleCreate
  Height = 387
  Width = 685
  object dsUserSession: TDataSource
    Left = 64
    Top = 136
  end
  object OraErgoSession: TJanuaUniConnection
    Pooling = True
    Username = 'januaguest'
    Server = 'host1.januaservers.com:1521:ergo'
    LoginPrompt = False
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 64
    Top = 304
    EncryptedPassword = '9AFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
end
