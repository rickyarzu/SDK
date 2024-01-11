object FRMUDP_Client: TFRMUDP_Client
  Left = 0
  Top = 0
  Caption = 'sgcWebSocket UDP Client'
  ClientHeight = 652
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object Button1: TButton
    Left = 528
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 632
    Height = 158
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Default: TLabel
      Left = 160
      Top = 26
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object Label4: TLabel
      Left = 357
      Top = 26
      Width = 37
      Height = 13
      Caption = 'CertFile'
    end
    object Label5: TLabel
      Left = 360
      Top = 53
      Width = 34
      Height = 13
      Caption = 'KeyFile'
    end
    object Label6: TLabel
      Left = 334
      Top = 80
      Width = 60
      Height = 13
      Caption = 'RootCertFile'
    end
    object btnSendMessage: TButton
      Left = 525
      Top = 123
      Width = 99
      Height = 25
      Caption = 'Send Message'
      TabOrder = 0
      OnClick = btnSendMessageClick
    end
    object txtMessage: TEdit
      Left = 16
      Top = 125
      Width = 495
      Height = 21
      TabOrder = 1
      Text = 'Hello from sgcWebSockets!!!'
    end
    object txtHost: TEdit
      Left = 16
      Top = 23
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 201
      Top = 23
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '5430'
    end
    object txtCertFile: TEdit
      Left = 400
      Top = 23
      Width = 200
      Height = 21
      TabOrder = 4
      Text = 'sgc.pem'
    end
    object txtKeyFile: TEdit
      Left = 400
      Top = 50
      Width = 200
      Height = 21
      TabOrder = 5
      Text = 'sgc.pem'
    end
    object txtRootCertFile: TEdit
      Left = 400
      Top = 77
      Width = 200
      Height = 21
      TabOrder = 6
    end
    object chkDTLS: TCheckBox
      Left = 303
      Top = 25
      Width = 48
      Height = 17
      Caption = 'DTLS'
      TabOrder = 7
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 167
    Width = 632
    Height = 482
    Align = alClient
    TabOrder = 2
  end
  object client: TsgcUDPCLient
    Host = '127.0.0.1'
    Port = 5430
    IPVersion = Id_IPv4
    LogFile.Enabled = False
    Proxy.Enabled = False
    Proxy.Port = 0
    Proxy.ProxyType = pxySocks5
    NotifyEvents = neAsynchronous
    DTLS = False
    DTLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_1
    DTLSOptions.OpenSSL_Options.LibPath = oslpNone
    DTLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    DTLSOptions.ConnectTimeout = 1000
    OnUDPRead = clientUDPRead
    OnUDPException = clientUDPException
    Left = 584
    Top = 8
  end
end
