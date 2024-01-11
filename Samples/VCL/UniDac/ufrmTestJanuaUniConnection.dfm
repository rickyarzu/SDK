object frmTestJanuaUniConnection: TfrmTestJanuaUniConnection
  Left = 0
  Top = 0
  Caption = 'Test JanuaUniConnection'
  ClientHeight = 345
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnTestBaseConnect: TButton
    Left = 112
    Top = 32
    Width = 177
    Height = 25
    Caption = 'Test Base Connection'
    TabOrder = 0
    OnClick = btnTestBaseConnectClick
  end
  object btnTestSchemaConnect: TButton
    Left = 112
    Top = 88
    Width = 177
    Height = 25
    Caption = 'Test SchemaConnection'
    TabOrder = 1
    OnClick = btnTestSchemaConnectClick
  end
  object btnTestParamConnection: TButton
    Left = 112
    Top = 144
    Width = 177
    Height = 25
    Caption = 'Test Params Connection'
    TabOrder = 2
    OnClick = btnTestParamConnectionClick
  end
  object JanuaUniConnection1: TJanuaUniConnection
    ProviderName = 'postgreSQL'
    Port = 5432
    Database = 'ergomercator'
    Username = 'ergo'
    Server = 'pg.januaservers.com'
    ConnectDialog = UniConnectDialog1
    SchemaParamKey = 'system.db_schema_id'
    SchemaParams = <>
    Left = 120
    Top = 264
    EncryptedPassword = 'CCFF8DFF98FFCFFF92FFCCFF8DFF9CFFCBFF8BFFCFFF8DFF'
  end
  object PostgreSQLUniProvider1: TPostgreSQLUniProvider
    Left = 208
    Top = 288
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    SavePassword = True
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 296
    Top = 272
  end
end
