object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnConnect: TButton
    Left = 24
    Top = 24
    Width = 177
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConnectClick
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
    Left = 296
    Top = 184
  end
  object UniConnection1: TUniConnection
    ProviderName = 'DB2'
    Port = 446
    Server = 'localhost'
    ConnectDialog = UniConnectDialog1
    Left = 176
    Top = 144
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 176
    Top = 72
  end
  object DB2UniProvider1: TDB2UniProvider
    Left = 296
    Top = 104
  end
end
