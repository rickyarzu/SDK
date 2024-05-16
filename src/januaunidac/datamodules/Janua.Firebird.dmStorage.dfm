inherited dmJanuaFBStorage: TdmJanuaFBStorage
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 226
  Width = 319
  object pgErgoConnection: TJanuaUniConnection
    ProviderName = 'InterBase'
    Port = 3050
    Database = '/opt/firebird/db/phoenix.fdb'
    Username = 'SYSDBA'
    Server = 'sait.pasolutions.ru'
    LoginPrompt = False
    BeforeConnect = pgErgoConnectionBeforeConnect
    OnError = pgErgoConnectionError
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 112
    Top = 32
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object IBUniProvider: TInterBaseUniProvider
    Left = 112
    Top = 104
  end
end
