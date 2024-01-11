object FRMUDPServer: TFRMUDPServer
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets UDP Server'
  ClientHeight = 561
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object pnlLeft: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 8
    Width = 113
    Height = 232
    TabOrder = 0
    object btnStart: TButton
      Left = 16
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 16
      Top = 192
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlOptions: TPanel
    Left = 127
    Top = 8
    Width = 385
    Height = 232
    TabOrder = 1
    object Default: TLabel
      Left = 160
      Top = 50
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 43
      Height = 13
      Caption = 'Options'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label3: TLabel
      Left = 155
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label4: TLabel
      Left = 34
      Top = 123
      Width = 37
      Height = 13
      Caption = 'CertFile'
    end
    object Label5: TLabel
      Left = 37
      Top = 150
      Width = 34
      Height = 13
      Caption = 'KeyFile'
    end
    object Label6: TLabel
      Left = 11
      Top = 177
      Width = 60
      Height = 13
      Caption = 'RootCertFile'
    end
    object txtDefaultPort: TEdit
      Left = 201
      Top = 47
      Width = 57
      Height = 21
      TabOrder = 0
      Text = '5430'
    end
    object txtHost: TEdit
      Left = 16
      Top = 47
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '127.0.0.1'
    end
    object chkDTLS: TCheckBox
      Left = 34
      Top = 97
      Width = 97
      Height = 17
      Caption = 'DTLS'
      TabOrder = 2
    end
    object txtCertFile: TEdit
      Left = 77
      Top = 120
      Width = 200
      Height = 21
      TabOrder = 3
      Text = 'sgc.pem'
    end
    object txtKeyFile: TEdit
      Left = 77
      Top = 147
      Width = 200
      Height = 21
      TabOrder = 4
      Text = 'sgc.pem'
    end
    object txtRootCertFile: TEdit
      Left = 77
      Top = 174
      Width = 200
      Height = 21
      TabOrder = 5
    end
  end
  object memoLog: TMemo
    Left = 8
    Top = 246
    Width = 504
    Height = 307
    TabOrder = 2
  end
  object server: TsgcUDPServer
    Active = False
    Port = 5430
    IPVersion = Id_IPv4
    Bindings = <>
    LogFile.Enabled = False
    NotifyEvents = neNoSync
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    WatchDog.Monitor.Enabled = False
    WatchDog.Monitor.TimeOut = 10
    DTLS = False
    DTLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_1
    DTLSOptions.OpenSSL_Options.LibPath = oslpNone
    DTLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    OnStartup = serverStartup
    OnShutdown = serverShutdown
    OnUDPRead = serverUDPRead
    OnUDPException = serverUDPException
    Left = 24
    Top = 72
  end
end
