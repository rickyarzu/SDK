object JanuaframeWebServerManager: TJanuaframeWebServerManager
  Left = 0
  Top = 0
  Width = 374
  Height = 43
  TabOrder = 0
  object Label1: TLabel
    Left = 16
    Top = 10
    Width = 22
    Height = 15
    Caption = 'Port'
  end
  object btnStartServer: TButton
    Left = 152
    Top = 5
    Width = 89
    Height = 25
    Caption = 'Start Server'
    TabOrder = 0
    OnClick = btnStartServerClick
  end
  object btnStopServer: TButton
    Left = 256
    Top = 5
    Width = 89
    Height = 25
    Caption = 'Stop Server'
    TabOrder = 1
    OnClick = btnStopServerClick
  end
  object sedPort: TSpinEdit
    Left = 64
    Top = 5
    Width = 65
    Height = 24
    MaxValue = 65535
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Port = 0
    Left = 192
    Top = 8
  end
end
