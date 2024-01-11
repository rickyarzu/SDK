object FRMWhatsApp: TFRMWhatsApp
  Left = 0
  Top = 0
  Caption = 'WhatsApp Cloud API Client - sgcWebSockets'
  ClientHeight = 717
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 751
    Height = 254
    Align = alTop
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 11
      Top = 11
      Width = 728
      Height = 86
      Caption = 'WhatsApp Options'
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 87
        Height = 13
        Caption = 'Phone Number Id:'
      end
      object Label2: TLabel
        Left = 78
        Top = 51
        Width = 33
        Height = 13
        Caption = 'Token:'
      end
      object txtPhoneNumberId: TEdit
        Left = 117
        Top = 21
        Width = 217
        Height = 21
        TabOrder = 0
      end
      object txtToken: TEdit
        Left = 117
        Top = 48
        Width = 580
        Height = 21
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 103
      Width = 728
      Height = 138
      Caption = 'Server Options'
      TabOrder = 1
      object Label5: TLabel
        Left = 55
        Top = 24
        Width = 56
        Height = 13
        Caption = 'IP Address:'
      end
      object Label6: TLabel
        Left = 87
        Top = 51
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label7: TLabel
        Left = 57
        Top = 79
        Width = 54
        Height = 13
        Caption = 'Certificate:'
      end
      object Label8: TLabel
        Left = 52
        Top = 107
        Width = 59
        Height = 13
        Caption = 'Private Key:'
      end
      object Label9: TLabel
        Left = 415
        Top = 24
        Width = 94
        Height = 13
        Caption = 'Webhook Endpoint:'
      end
      object Label10: TLabel
        Left = 428
        Top = 51
        Width = 81
        Height = 13
        Caption = 'Webhook Token:'
      end
      object txtServerIP: TEdit
        Left = 117
        Top = 21
        Width = 100
        Height = 21
        TabOrder = 0
        Text = '127.0.0.1'
      end
      object txtServerPort: TEdit
        Left = 117
        Top = 48
        Width = 60
        Height = 21
        TabOrder = 1
        Text = '1337'
      end
      object chkServerSSL: TCheckBox
        Left = 183
        Top = 50
        Width = 50
        Height = 17
        Caption = 'SSL'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object txtServerCertificate: TEdit
        Left = 117
        Top = 76
        Width = 188
        Height = 21
        TabOrder = 3
      end
      object txtServerKeyFile: TEdit
        Left = 117
        Top = 104
        Width = 188
        Height = 21
        TabOrder = 4
      end
      object txtServerWebhookEndpoint: TEdit
        Left = 515
        Top = 21
        Width = 182
        Height = 21
        TabOrder = 5
        Text = '/webhook'
      end
      object txtServerWebhookToken: TEdit
        Left = 515
        Top = 48
        Width = 182
        Height = 21
        TabOrder = 6
      end
      object btnStartServer: TButton
        Left = 515
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Start Server'
        TabOrder = 7
        OnClick = btnStartServerClick
      end
      object btnStopServer: TButton
        Left = 622
        Top = 96
        Width = 75
        Height = 25
        Caption = 'Stop Server'
        TabOrder = 8
        OnClick = btnStopServerClick
      end
    end
  end
  object pnlBody: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 263
    Width = 751
    Height = 363
    Align = alClient
    TabOrder = 1
    object memoLog: TMemo
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 743
      Height = 355
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 632
    Width = 751
    Height = 82
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      751
      82)
    object Label3: TLabel
      Left = 21
      Top = 18
      Width = 61
      Height = 13
      Caption = 'Message To:'
    end
    object Label4: TLabel
      Left = 11
      Top = 45
      Width = 71
      Height = 13
      Caption = 'Message Text:'
    end
    object btnSendMessage: TButton
      Left = 664
      Top = 40
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'Send'
      TabOrder = 0
      OnClick = btnSendMessageClick
    end
    object txtMessageText: TEdit
      Left = 88
      Top = 42
      Width = 570
      Height = 21
      TabOrder = 1
    end
    object txtMessagePhone: TEdit
      Left = 88
      Top = 15
      Width = 169
      Height = 21
      TabOrder = 2
    end
  end
  object whatsapp: TsgcWhatsApp_Client
    OnMessageReceived = whatsappMessageReceived
    OnMessageSent = whatsappMessageSent
    Log = False
    TLSOptions.VerifyCertificate = False
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.OpenSSL_Options.LibPath = oslpNone
    TLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    ServerOptions.ApplicationOptions.VerifySignature = False
    ServerOptions.IP = '127.0.0.1'
    ServerOptions.LogOptions.Enabled = False
    ServerOptions.Port = 1337
    ServerOptions.SSL = False
    ServerOptions.SSLOptions.VerifyCertificate = False
    ServerOptions.SSLOptions.VerifyDepth = 0
    ServerOptions.SSLOptions.Version = tlsUndefined
    ServerOptions.SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    ServerOptions.SSLOptions.OpenSSL_Options.LibPath = oslpNone
    ServerOptions.SSLOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    ServerOptions.SSLOptions.OpenSSL_Options.ECDHE = False
    ServerOptions.SSLOptions.Port = 0
    ServerOptions.WebhookOptions.Endpoint = '/webhook'
    NotifyEvents = neNoSync
    Left = 712
    Top = 16
  end
end
