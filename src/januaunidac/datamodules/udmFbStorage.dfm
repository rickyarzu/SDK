inherited dmFbStorage: TdmFbStorage
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 220
  Width = 214
  object InterBaseUniProvider: TInterBaseUniProvider
    Left = 72
    Top = 88
  end
  object FbPhoenixConnection: TUniConnection
    ProviderName = 'interBase'
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    SpecificOptions.Strings = (
      'interBase.UseUnicode=True')
    Options.DisconnectedMode = True
    Username = 'SYSDBA'
    Server = '192.168.1.200'
    LoginPrompt = False
    BeforeConnect = FbPhoenixConnectionBeforeConnect
    OnError = FbPhoenixConnectionError
    Left = 72
    Top = 24
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
end
