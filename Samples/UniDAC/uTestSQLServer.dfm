object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 's'
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
  object UniConnection1: TUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Server = 'localhost'
    ConnectDialog = UniConnectDialog1
    Left = 168
    Top = 144
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 192
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
    Left = 304
    Top = 224
  end
end
