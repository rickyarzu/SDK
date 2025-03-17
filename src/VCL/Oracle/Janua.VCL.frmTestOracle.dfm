object frmVCLTestOracle: TfrmVCLTestOracle
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Test Oracle Connection'
  ClientHeight = 315
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lbPort: TLabel
    Left = 729
    Top = 100
    Width = 65
    Height = 15
    Caption = 'Porta Oracle'
  end
  object edServerName: TLabeledEdit
    Left = 8
    Top = 48
    Width = 857
    Height = 23
    EditLabel.Width = 67
    EditLabel.Height = 15
    EditLabel.Caption = 'Server Name'
    TabOrder = 0
    Text = ''
    OnExit = editConnectionString
  end
  object edServiceName: TLabeledEdit
    Left = 8
    Top = 96
    Width = 521
    Height = 23
    EditLabel.Width = 72
    EditLabel.Height = 15
    EditLabel.Caption = 'Service Name'
    TabOrder = 1
    Text = ''
    OnExit = editConnectionString
  end
  object edPort: TSpinEdit
    Left = 800
    Top = 96
    Width = 65
    Height = 24
    MaxValue = 65535
    MinValue = 1
    TabOrder = 2
    Value = 1521
    OnChange = editConnectionString
    OnExit = editConnectionString
  end
  object edConnectionString: TLabeledEdit
    Left = 8
    Top = 152
    Width = 857
    Height = 23
    EditLabel.Width = 96
    EditLabel.Height = 15
    EditLabel.Caption = 'Connection String'
    TabOrder = 3
    Text = ''
  end
  object edUserName: TLabeledEdit
    Left = 8
    Top = 208
    Width = 433
    Height = 23
    EditLabel.Width = 58
    EditLabel.Height = 15
    EditLabel.Caption = 'User Name'
    TabOrder = 4
    Text = ''
  end
  object edPassword: TLabeledEdit
    Left = 447
    Top = 208
    Width = 418
    Height = 23
    EditLabel.Width = 50
    EditLabel.Height = 15
    EditLabel.Caption = 'Password'
    TabOrder = 5
    Text = ''
  end
  object btnTestConnection: TButton
    Left = 8
    Top = 256
    Width = 857
    Height = 41
    Caption = 'Connection Test'
    TabOrder = 6
    OnClick = btnTestConnectionClick
  end
  object ckbSid: TCheckBox
    Left = 536
    Top = 99
    Width = 137
    Height = 17
    Caption = 'Use SID not Service'
    TabOrder = 7
    OnClick = editConnectionString
  end
  object UniConnection1: TUniConnection
    ProviderName = 'oracle'
    SpecificOptions.Strings = (
      'oracle.Direct=True')
    Username = 'ASSNE_INVALIDI'
    Server = 'ora.januaservers.com:58521/XE'
    LoginPrompt = False
    Left = 320
    Top = 8
    EncryptedPassword = '9DFF9AFF93FF93FF96FF9EFF'
  end
  object OracleUniProvider1: TOracleUniProvider
    Left = 408
    Top = 40
  end
end
