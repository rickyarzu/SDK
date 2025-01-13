object frmVCLWebBrokerServer: TfrmVCLWebBrokerServer
  Left = 271
  Top = 114
  Caption = 'WhatsApp Web Form'
  ClientHeight = 488
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object grpWebBrokerStart: TGroupBox
    Left = 0
    Top = 0
    Width = 529
    Height = 83
    Align = alTop
    Caption = 'Web Broker Server Manager'
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 6
    ExplicitWidth = 515
    inline JanuaframeWebServerManager: TJanuaframeWebServerManager
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 519
      Height = 60
      Align = alClient
      TabOrder = 0
      inherited Label1: TLabel
        Width = 20
        Height = 13
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 20
        ExplicitHeight = 13
      end
      inherited btnStartServer: TButton
        OnClick = JanuaframeWebServerManagerbtnStartServerClick
      end
      inherited btnStopServer: TButton
        OnClick = nil
      end
      inherited sedPort: TSpinEdit
        Height = 22
        StyleElements = [seFont, seClient, seBorder]
        Value = 65535
        ExplicitHeight = 22
      end
      inherited JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager
        OnAfterStartServer = JanuaframeWebServerManagerJanuaWebBrokerServerManager1AfterStartServer
        OnBeforeStartServer = JanuaframeWebServerManagerBeforeStartServer
        Port = 8180
      end
    end
  end
  object Edit1: TEdit
    AlignWithMargins = True
    Left = 3
    Top = 86
    Width = 523
    Height = 21
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 224
    ExplicitTop = 120
    ExplicitWidth = 121
  end
  object TMSFNCEdgeWebBrowser1: TTMSFNCEdgeWebBrowser
    AlignWithMargins = True
    Left = 3
    Top = 113
    Width = 523
    Height = 372
    Align = alClient
    ParentDoubleBuffered = False
    DoubleBuffered = True
    TabOrder = 2
    Settings.EnableContextMenu = True
    Settings.EnableShowDebugConsole = True
    Settings.EnableAcceleratorKeys = True
    Settings.AllowExternalDrop = True
    Settings.UsePopupMenuAsContextMenu = False
    ExplicitLeft = 312
    ExplicitTop = 176
    ExplicitWidth = 500
    ExplicitHeight = 350
  end
end
