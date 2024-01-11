object Form16: TForm16
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'GroupsUsers Client'
  ClientHeight = 286
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label3: TLabel
    Left = 114
    Top = 8
    Width = 26
    Height = 13
    Caption = 'Host:'
  end
  object Label4: TLabel
    Left = 241
    Top = 8
    Width = 24
    Height = 13
    Caption = 'Port:'
  end
  object Label6: TLabel
    Left = 22
    Top = 56
    Width = 17
    Height = 13
    Caption = 'Log'
  end
  object Label1: TLabel
    Left = 320
    Top = 8
    Width = 26
    Height = 13
    Caption = 'User:'
  end
  object btnConnect: TButton
    Left = 24
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 0
    OnClick = btnConnectClick
  end
  object btnDisconnect: TButton
    Left = 552
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    Enabled = False
    TabOrder = 1
    OnClick = btnDisconnectClick
  end
  object txtHost: TEdit
    Left = 114
    Top = 27
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '127.0.0.1'
  end
  object txtPort: TEdit
    Left = 241
    Top = 27
    Width = 64
    Height = 21
    TabOrder = 3
    Text = '5422'
  end
  object Log: TMemo
    Left = 24
    Top = 75
    Width = 603
    Height = 190
    TabOrder = 4
  end
  object cboUser: TComboBox
    Left = 320
    Top = 27
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'user-1 (Sales)'
    Items.Strings = (
      'user-1 (Sales)'
      'user-2 (Sales)'
      'user-3 (Accounting)'
      'user-4 (Accounting)')
  end
  object btnReqInfo: TButton
    Left = 471
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Info'
    TabOrder = 6
    OnClick = btnReqInfoClick
  end
  object Client: TsgcWebSocketClient
    Port = 80
    ConnectTimeout = 0
    ReadTimeout = -1
    WriteTimeout = 0
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    OnConnect = ClientConnect
    OnMessage = ClientMessage
    OnDisconnect = ClientDisconnect
    OnError = ClientError
    OnException = ClientException
    Authentication.Enabled = True
    Authentication.URL.Enabled = False
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = True
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 1
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    Options.CleanDisconnect = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.Parameters = '/'
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    Specifications.Drafts.Hixie76 = False
    Specifications.RFC6455 = True
    NotifyEvents = neAsynchronous
    LogFile.Enabled = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 10
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    TLSOptions.VerifyCertificate = False
    TLSOptions.VerifyDepth = 0
    TLSOptions.Version = tlsUndefined
    TLSOptions.IOHandler = iohOpenSSL
    TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    TLSOptions.OpenSSL_Options.LibPath = oslpNone
    TLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    TLSOptions.SChannel_Options.CertStoreName = scsnMY
    TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    Left = 584
    Top = 88
  end
end
