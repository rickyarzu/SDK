object FRMICE_Client: TFRMICE_Client
  Left = 0
  Top = 0
  Caption = 'RTCPeerConnection - sgcWebSockets'
  ClientHeight = 757
  ClientWidth = 721
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
    Width = 715
    Height = 158
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
      Left = 344
      Top = 16
      Width = 89
      Height = 13
      Caption = 'WebSocket Server'
    end
    object Label3: TLabel
      Left = 575
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Channel'
    end
    object Label4: TLabel
      Left = 344
      Top = 62
      Width = 52
      Height = 13
      Caption = 'ICE Server'
    end
    object Label5: TLabel
      Left = 344
      Top = 108
      Width = 24
      Height = 13
      Caption = 'DTLS'
    end
    object Label6: TLabel
      Left = 407
      Top = 108
      Width = 37
      Height = 13
      Caption = 'CertFile'
    end
    object Label7: TLabel
      Left = 534
      Top = 108
      Width = 34
      Height = 13
      Caption = 'KeyFile'
    end
    object btnGatherCandidates: TButton
      Left = 24
      Top = 35
      Width = 161
      Height = 67
      Caption = 'Gather Candidates'
      TabOrder = 0
      OnClick = btnGatherCandidatesClick
    end
    object txtWebSocketHost: TEdit
      Left = 344
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '127.0.0.1'
    end
    object txtWebSocketPort: TEdit
      Left = 471
      Top = 35
      Width = 50
      Height = 21
      TabOrder = 2
      Text = '5555'
    end
    object txtWebSocketChannel: TEdit
      Left = 575
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'rtc-channel'
    end
    object chkWebSocketSSL: TCheckBox
      Left = 527
      Top = 37
      Width = 42
      Height = 17
      Caption = 'SSL'
      TabOrder = 4
    end
    object txtICEHost: TEdit
      Left = 344
      Top = 81
      Width = 121
      Height = 21
      TabOrder = 5
      Text = 'www.esegece.com'
    end
    object txtICEPort: TEdit
      Left = 471
      Top = 81
      Width = 50
      Height = 21
      TabOrder = 6
      Text = '3478'
    end
    object txtICEUsername: TEdit
      Left = 527
      Top = 81
      Width = 66
      Height = 21
      TabOrder = 7
      Text = 'sgc'
    end
    object txtICEPassword: TEdit
      Left = 599
      Top = 81
      Width = 66
      Height = 21
      PasswordChar = '*'
      TabOrder = 8
      Text = 'secret'
    end
    object chkDTLS: TCheckBox
      Left = 344
      Top = 127
      Width = 73
      Height = 17
      Caption = 'Enabled'
      TabOrder = 9
    end
    object txtCertFile: TEdit
      Left = 407
      Top = 125
      Width = 121
      Height = 21
      TabOrder = 10
      Text = 'sgc.pem'
    end
    object txtKeyFile: TEdit
      Left = 534
      Top = 125
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'sgc.pem'
    end
  end
  object memoLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 167
    Width = 715
    Height = 542
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 712
    Width = 721
    Height = 45
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      721
      45)
    object txtMessage: TEdit
      Left = 14
      Top = 11
      Width = 620
      Height = 21
      TabOrder = 0
    end
    object btnSend: TButton
      Left = 640
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akRight]
      Caption = 'Send'
      Enabled = False
      TabOrder = 1
      OnClick = btnSendClick
    end
  end
  object sgcRTCPeerConnection: TsgcRTCPeerConnection
    RTCOptions.DTLS = False
    RTCOptions.DTLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_1
    RTCOptions.DTLSOptions.OpenSSL_Options.LibPath = oslpNone
    RTCOptions.DTLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    RTCOptions.DTLSOptions.VerifyCertificate = False
    RTCOptions.DTLSOptions.VerifyDepth = 0
    RTCOptions.ICE.Host = '127.0.0.1'
    RTCOptions.ICE.Port = 3478
    RTCOptions.WebSocket.Channel = '/'
    RTCOptions.WebSocket.Host = '127.0.0.1'
    RTCOptions.WebSocket.Port = 80
    RTCOptions.WebSocket.TLS = False
    RTCOptions.WebSocket.TLSOptions.VerifyCertificate = False
    RTCOptions.WebSocket.TLSOptions.VerifyDepth = 0
    RTCOptions.WebSocket.TLSOptions.Version = tlsUndefined
    RTCOptions.WebSocket.TLSOptions.IOHandler = iohOpenSSL
    RTCOptions.WebSocket.TLSOptions.OpenSSL_Options.APIVersion = oslAPI_1_1
    RTCOptions.WebSocket.TLSOptions.OpenSSL_Options.LibPath = oslpNone
    RTCOptions.WebSocket.TLSOptions.OpenSSL_Options.UnixSymLinks = oslsSymLinksDefault
    RTCOptions.WebSocket.TLSOptions.SChannel_Options.CertStoreName = scsnMY
    RTCOptions.WebSocket.TLSOptions.SChannel_Options.CertStorePath = scspStoreCurrentUser
    OnRTCWebSocketConnect = sgcRTCPeerConnectionRTCWebSocketConnect
    OnRTCWebSocketDisconnect = sgcRTCPeerConnectionRTCWebSocketDisconnect
    OnRTCWebSocketRemoteDisconnect = sgcRTCPeerConnectionRTCWebSocketRemoteDisconnect
    OnRTCLocalCandidate = sgcRTCPeerConnectionRTCLocalCandidate
    OnRTCLocalDescription = sgcRTCPeerConnectionRTCLocalDescription
    OnRTCRemoteCandidate = sgcRTCPeerConnectionRTCRemoteCandidate
    OnRTCRemoteDescription = sgcRTCPeerConnectionRTCRemoteDescription
    OnRTCCandidatePairNominated = sgcRTCPeerConnectionRTCCandidatePairNominated
    OnRTCCandidatePairFailed = sgcRTCPeerConnectionRTCCandidatePairFailed
    OnRTCConnect = sgcRTCPeerConnectionRTCConnect
    OnRTCMessage = sgcRTCPeerConnectionRTCMessage
    OnRTCException = sgcRTCPeerConnectionRTCException
    Left = 32
    Top = 112
  end
end
