object FRMOAuth2Server: TFRMOAuth2Server
  Left = 0
  Top = 0
  Caption = 'sgcWebSockets OAuth2 Server'
  ClientHeight = 566
  ClientWidth = 691
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlServerActive: TPanel
    Left = 16
    Top = 14
    Width = 106
    Height = 260
    TabOrder = 0
    object btnStart: TButton
      Left = 16
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Start'
      TabOrder = 0
      OnClick = btnStartClick
    end
    object btnStop: TButton
      Left = 16
      Top = 221
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlServerOptions: TPanel
    Left = 128
    Top = 14
    Width = 425
    Height = 260
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 11
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
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label3: TLabel
      Left = 152
      Top = 26
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Default: TLabel
      Left = 160
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object txtHost: TEdit
      Left = 16
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '127.0.0.1'
    end
    object txtDefaultPort: TEdit
      Left = 200
      Top = 45
      Width = 57
      Height = 21
      TabOrder = 1
      Text = '443'
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 83
      Width = 393
      Height = 163
      Caption = 'OAuth2 Options'
      TabOrder = 2
      object Label4: TLabel
        Left = 98
        Top = 15
        Width = 34
        Height = 13
        Caption = 'Tenant'
      end
      object Label6: TLabel
        Left = 98
        Top = 61
        Width = 40
        Height = 13
        Caption = 'Client Id'
      end
      object Label7: TLabel
        Left = 225
        Top = 61
        Width = 61
        Height = 13
        Caption = 'Client Secret'
      end
      object Label5: TLabel
        Left = 17
        Top = 61
        Width = 29
        Height = 13
        Caption = 'Scope'
      end
      object Label8: TLabel
        Left = 17
        Top = 107
        Width = 70
        Height = 13
        Caption = 'Login Endpoint'
      end
      object Label9: TLabel
        Left = 184
        Top = 107
        Width = 70
        Height = 13
        Caption = 'Azure Callback'
      end
      object txtClientId: TEdit
        Left = 98
        Top = 80
        Width = 104
        Height = 21
        TabOrder = 0
      end
      object txtClientSecret: TEdit
        Left = 224
        Top = 80
        Width = 153
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object txtTenant: TEdit
        Left = 98
        Top = 34
        Width = 279
        Height = 21
        TabOrder = 2
      end
      object chkOAuth2: TCheckBox
        Left = 17
        Top = 34
        Width = 75
        Height = 17
        Caption = 'Enabled'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object txtScope: TEdit
        Left = 17
        Top = 80
        Width = 64
        Height = 21
        TabOrder = 4
        Text = 'user.read'
      end
      object txtURL: TEdit
        Left = 17
        Top = 126
        Width = 143
        Height = 21
        TabOrder = 5
        Text = '/login'
      end
      object txtCallbackURL: TEdit
        Left = 184
        Top = 126
        Width = 192
        Height = 21
        TabOrder = 6
        Text = 'https://localhost/callback'
      end
    end
  end
  object memoLog: TMemo
    Left = 16
    Top = 280
    Width = 657
    Height = 273
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object pnlBrowsers: TPanel
    Left = 566
    Top = 14
    Width = 107
    Height = 260
    Locked = True
    TabOrder = 3
    object btnPublicPage: TButton
      Left = 14
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Public Page'
      TabOrder = 0
      OnClick = btnPublicPageClick
    end
    object btnPrivatePage: TButton
      Left = 17
      Top = 207
      Width = 75
      Height = 25
      Caption = 'Private Page'
      TabOrder = 1
      OnClick = btnPrivatePageClick
    end
  end
  object WSServer: TsgcWebSocketHTTPServer
    Port = 443
    OnStartup = WSServerStartup
    OnShutdown = WSServerShutdown
    OnConnect = WSServerConnect
    OnMessage = WSServerMessage
    OnDisconnect = WSServerDisconnect
    OnError = WSServerError
    OnCommandGet = WSServerCommandGet
    LoadBalancer.AutoRegisterBindings = False
    LoadBalancer.AutoRestart = 0
    LoadBalancer.Enabled = False
    LoadBalancer.Port = 0
    Authentication.Enabled = True
    Authentication.AllowNonAuth = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
    Authentication.OAuth.OAuth2Provider = OAuth2Provider
    AutoStartSession = False
    Bindings = <>
    HeartBeat.Enabled = False
    HeartBeat.Interval = 300
    HeartBeat.Timeout = 0
    KeepAlive = False
    MaxConnections = 0
    SessionState = False
    SessionTimeOut = 0
    SSL = True
    SSLOptions.VerifyCertificate = False
    SSLOptions.VerifyDepth = 0
    SSLOptions.Version = tlsUndefined
    SSLOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    SSLOptions.OpenSSL_Options.LibPath = oslpNone
    SSLOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    SSLOptions.OpenSSL_Options.ECDHE = False
    SSLOptions.Port = 443
    ThreadPool = False
    ThreadPoolOptions.MaxThreads = 0
    ThreadPoolOptions.PoolSize = 32
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 9
    Extensions.PerMessage_Deflate.ServerMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ServerNoContextTakeOver = False
    FallBack.Flash.Domain = '*'
    FallBack.Flash.Enabled = False
    FallBack.Flash.Ports = '*'
    FallBack.ServerSentEvents.Enabled = False
    FallBack.ServerSentEvents.Retry = 3000
    Options.CleanDisconnect = False
    Options.FragmentedMessages = frgOnlyBuffer
    Options.HTMLFiles = True
    Options.JavascriptFiles = True
    Options.ReadTimeOut = 10
    Options.WriteTimeOut = 0
    Options.RaiseDisconnectExceptions = True
    Options.ValidateUTF8 = False
    QueueOptions.Binary.Level = qmNone
    QueueOptions.Ping.Level = qmNone
    QueueOptions.Text.Level = qmNone
    Specifications.Drafts.Hixie76 = True
    Specifications.RFC6455 = True
    NotifyEvents = neNoSync
    LogFile.Enabled = False
    Throttle.BitsPerSec = 0
    Throttle.Enabled = False
    WatchDog.Attempts = 0
    WatchDog.Enabled = False
    WatchDog.Interval = 60
    WatchDog.Monitor.Enabled = False
    WatchDog.Monitor.Timeout = 10
    IOHandlerOptions.IOCP.IOCPThreads = 0
    IOHandlerOptions.IOCP.TimeOut = 10000
    IOHandlerOptions.IOCP.WorkOpThreads = 0
    IOHandlerOptions.IOHandlerType = iohDefault
    HTTP2Options.AltSvc.Enabled = True
    HTTP2Options.Enabled = False
    HTTP2Options.Events.OnConnect = False
    HTTP2Options.Events.OnDisconnect = False
    HTTP2Options.FragmentedData = h2fdOnlyBuffer
    HTTP2Options.Settings.EnablePush = True
    HTTP2Options.Settings.HeaderTableSize = 4096
    HTTP2Options.Settings.InitialWindowSize = 65535
    HTTP2Options.Settings.MaxConcurrentStreams = 2147483647
    HTTP2Options.Settings.MaxFrameSize = 16384
    HTTP2Options.Settings.MaxHeaderListSize = 2147483647
    HTTPUploadFiles.MinSize = 0
    HTTPUploadFiles.RemoveBoundaries = True
    HTTPUploadFiles.StreamType = pstMemoryStream
    Left = 32
    Top = 88
  end
  object OAuth2Provider: TsgcHTTP_OAuth2_Server_Provider
    OAuth2Options.Cookies.CookieName = 'sgcOAuth2Token'
    OAuth2Options.Cookies.Enabled = True
    OAuth2Options.Cookies.HttpOnly = True
    OAuth2Options.Cookies.MaxAge = 600
    OAuth2Options.Cookies.Secure = True
    OAuth2Options.HTTPClientOptions.TLSOptions.VerifyCertificate = False
    OAuth2Options.HTTPClientOptions.TLSOptions.VerifyDepth = 0
    OAuth2Options.HTTPClientOptions.TLSOptions.Version = tlsUndefined
    OAuth2Options.HTTPClientOptions.TLSOptions.IOHandler = iohOpenSSL
    OAuth2Options.HTTPClientOptions.TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_0
    OAuth2Options.HTTPClientOptions.TLSOptions.OpenSSL_Options.LibPath = oslpNone
    OAuth2Options.HTTPClientOptions.TLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    OAuth2Options.HTTPClientOptions.TLSOptions.SChannel_Options.CertStoreName = scsnMY
    OAuth2Options.HTTPClientOptions.TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    OnOAuth2ProviderTokenValid = OAuth2ProviderOAuth2ProviderTokenValid
    OnOAuth2ProviderTokenUnknown = OAuth2ProviderOAuth2ProviderTokenUnknown
    OnOAuth2IsPrivateEndpoint = OAuth2ProviderOAuth2IsPrivateEndpoint
    Left = 80
    Top = 88
  end
end
