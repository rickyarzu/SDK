object dmFirebirdOrmGenerator: TdmFirebirdOrmGenerator
  Height = 480
  Width = 640
  object UniConnection1: TUniConnection
    ProviderName = 'InterBase'
    Database = 'C:\PhoenixDB\PHOENIX.FDB'
    Username = 'SYSDBA'
    Server = 'localhost'
    Connected = True
    ConnectDialog = dlgConnect
    Left = 144
    Top = 40
    EncryptedPassword = '92FF9EFF8CFF8BFF9AFF8DFF94FF9AFF86FF'
  end
  object dlgConnect: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    LabelSet = lsCustom
    Left = 144
    Top = 104
  end
  object qryTables: TUniQuery
    Connection = UniConnection1
    SQL.Strings = (
      'SELECT  a.RDB$RELATION_NAME AS TABLE_NAME'
      'FROM RDB$RELATIONS a'
      'WHERE RDB$SYSTEM_FLAG <> 1'
      'AND  a.RDB$RELATION_NAME NOT LIKE '#39'%$%'#39
      'ORDER BY a.RDB$RELATION_NAME')
    Left = 144
    Top = 176
    object qryTablesTABLE_NAME: TStringField
      FieldName = 'TABLE_NAME'
      FixedChar = True
      Size = 93
    end
  end
  object dsTables: TUniDataSource
    DataSet = qryTables
    Left = 144
    Top = 248
  end
  object tbFields: TUniTable
    Connection = UniConnection1
    Left = 144
    Top = 320
  end
end
