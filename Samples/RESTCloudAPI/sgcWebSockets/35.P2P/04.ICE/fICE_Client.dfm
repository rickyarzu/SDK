object FRMICE_Client: TFRMICE_Client
  Left = 0
  Top = 0
  Caption = 'ICE Client - sgcWebSockets'
  ClientHeight = 736
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 708
    Height = 78
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 47
      Height = 13
      Caption = 'ICE Client'
    end
    object Label2: TLabel
      Left = 392
      Top = 16
      Width = 89
      Height = 13
      Caption = 'WebSocket Server'
    end
    object cboICEClient: TComboBox
      Left = 24
      Top = 35
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'Caller'
      Items.Strings = (
        'Caller'
        'Callee')
    end
    object btnGatherCandidates: TButton
      Left = 192
      Top = 33
      Width = 105
      Height = 25
      Caption = 'Gather Candidates'
      TabOrder = 1
      OnClick = btnGatherCandidatesClick
    end
    object txtHost: TEdit
      Left = 392
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 2
      Text = '127.0.0.1'
    end
    object txtPort: TEdit
      Left = 519
      Top = 35
      Width = 50
      Height = 21
      TabOrder = 3
      Text = '5555'
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 87
    Width = 708
    Height = 646
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object ice_client: TsgcICEClient
    TURNClient = turn_client
    ICEOptions.CheckList.MaxCandidatePairs = 100
    ICEOptions.GatherCandidates.STUN = True
    ICEOptions.GatherCandidates.TURN = True
    OnICECandidate = ice_clientICECandidate
    OnICECandidateError = ice_clientICECandidateError
    OnICECandidatePairNominated = ice_clientICECandidatePairNominated
    OnICECandidatePairFailed = ice_clientICECandidatePairFailed
    OnICEReceiveBindingRequest = ice_clientICEReceiveBindingRequest
    OnICEException = ice_clientICEException
    Left = 440
    Top = 128
  end
  object turn_client: TsgcTURNClient
    Host = 'www.esegece.com'
    Port = 3478
    IPVersion = Id_IPv4
    RetransmissionOptions.Enabled = True
    RetransmissionOptions.MaxRetries = 7
    RetransmissionOptions.RTO = 500
    STUNOptions.Fingerprint = False
    STUNOptions.Software = False
    STUNOptions.Authentication.Credentials = stauNone
    Transport = stunUDP
    LogFile.Enabled = False
    NotifyEvents = neNoSync
    TURNOptions.Fingerprint = True
    TURNOptions.Software = False
    TURNOptions.Authentication.Credentials = stauLongTermCredential
    TURNOptions.Authentication.Password = 'secret'
    TURNOptions.Authentication.Username = 'sgc'
    TURNOptions.Allocation.Lifetime = 600
    TURNOptions.AutoRefresh.Allocations.Enabled = True
    TURNOptions.AutoRefresh.Enabled = True
    TURNOptions.AutoRefresh.Permissions.Enabled = True
    TURNOptions.AutoRefresh.Channels.Enabled = True
    Left = 536
    Top = 128
  end
  object ws_client: TsgcWebSocketClient
    Host = '127.0.0.1'
    Port = 5555
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
    OnConnect = ws_clientConnect
    OnMessage = ws_clientMessage
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = False
    Authentication.Basic.Enabled = False
    Authentication.Token.Enabled = False
    Authentication.Token.AuthName = 'Bearer'
    Extensions.DeflateFrame.Enabled = False
    Extensions.DeflateFrame.WindowBits = 15
    Extensions.PerMessage_Deflate.Enabled = False
    Extensions.PerMessage_Deflate.ClientMaxWindowBits = 15
    Extensions.PerMessage_Deflate.ClientNoContextTakeOver = False
    Extensions.PerMessage_Deflate.MemLevel = 9
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
    Left = 616
    Top = 120
  end
end
