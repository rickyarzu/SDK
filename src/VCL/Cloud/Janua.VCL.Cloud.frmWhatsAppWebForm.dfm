object frmVCLWebBrokerWhatsApp: TfrmVCLWebBrokerWhatsApp
  Left = 271
  Top = 114
  Caption = 'WhatsApp Web Form'
  ClientHeight = 165
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object grpLegacy: TGroupBox
    Left = 8
    Top = 96
    Width = 515
    Height = 57
    Caption = 'Legacy Statements'
    TabOrder = 0
    object Label1: TLabel
      Left = 192
      Top = 24
      Width = 20
      Height = 13
      Caption = 'Port'
    end
    object ButtonStart: TButton
      Left = 16
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = ButtonStartClick
    end
    object ButtonStop: TButton
      Left = 97
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = ButtonStopClick
    end
    object EditPort: TEdit
      Left = 232
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '8180'
    end
    object ButtonOpenBrowser: TButton
      Left = 376
      Top = 21
      Width = 107
      Height = 25
      Caption = 'Open Browser'
      TabOrder = 3
      OnClick = ButtonOpenBrowserClick
    end
  end
  object grpWebBrokerStart: TGroupBox
    Left = 8
    Top = 6
    Width = 515
    Height = 59
    Caption = 'Web Broker Server Manager'
    TabOrder = 1
    object JanuaframeWebServerManager1: TJanuaframeWebServerManager
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 505
      Height = 36
      Align = alClient
      TabOrder = 0
      OnBeforeStartServer = JanuaframeWebServerManager1BeforeStartServer
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    Left = 360
    Top = 112
  end
end
