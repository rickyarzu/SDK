object frmClientPROTOCOL: TfrmClientPROTOCOL
  Left = 0
  Top = 0
  Caption = 'AMQP Client - sgcWebSockets'
  ClientHeight = 871
  ClientWidth = 1068
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 1068
    Height = 871
    Align = alClient
    TabOrder = 0
    object memoLog: TMemo
      Left = 8
      Top = 599
      Width = 1048
      Height = 266
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object pnlClientActive: TPanel
    Left = 8
    Top = 8
    Width = 106
    Height = 129
    TabOrder = 1
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
      Top = 93
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
      OnClick = btnStopClick
    end
  end
  object pnlClientOptions: TPanel
    Left = 120
    Top = 8
    Width = 940
    Height = 129
    TabOrder = 2
    object Label3: TLabel
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
    object Label4: TLabel
      Left = 16
      Top = 30
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label7: TLabel
      Left = 511
      Top = 26
      Width = 52
      Height = 13
      Caption = 'Username:'
    end
    object Label5: TLabel
      Left = 171
      Top = 26
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label6: TLabel
      Left = 178
      Top = 75
      Width = 17
      Height = 13
      Caption = 'SSL'
    end
    object Default: TLabel
      Left = 160
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Default'
    end
    object Label8: TLabel
      Left = 511
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Password:'
    end
    object Label10: TLabel
      Left = 376
      Top = 72
      Width = 24
      Height = 13
      Caption = 'Port:'
    end
    object Label9: TLabel
      Left = 376
      Top = 26
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label11: TLabel
      Left = 16
      Top = 76
      Width = 22
      Height = 13
      Caption = 'User'
    end
    object Label13: TLabel
      Left = 96
      Top = 76
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object chkTLS: TCheckBox
      Left = 272
      Top = 47
      Width = 105
      Height = 17
      Caption = 'TLS'
      TabOrder = 0
    end
    object txtHost: TEdit
      Left = 16
      Top = 45
      Width = 126
      Height = 21
      TabOrder = 1
      Text = 'www.esegece.com'
    end
    object txtSSLPort: TEdit
      Left = 201
      Top = 72
      Width = 57
      Height = 21
      TabOrder = 2
      Text = '5671'
    end
    object txtDefaultPort: TEdit
      Left = 201
      Top = 45
      Width = 57
      Height = 21
      TabOrder = 3
      Text = '5672'
    end
    object chkProxy: TCheckBox
      Left = 359
      Top = 7
      Width = 58
      Height = 17
      Caption = 'Proxy'
      TabOrder = 4
    end
    object txtProxyUsername: TEdit
      Left = 511
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object txtProxyPassword: TEdit
      Left = 511
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object txtProxyHost: TEdit
      Left = 376
      Top = 45
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object txtProxyPort: TEdit
      Left = 376
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object Edit1: TEdit
      Left = 16
      Top = 91
      Width = 74
      Height = 21
      TabOrder = 9
      Text = 'sgc'
    end
    object txtPassword: TEdit
      Left = 96
      Top = 91
      Width = 65
      Height = 21
      PasswordChar = '*'
      TabOrder = 10
      Text = 'sgc'
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 143
    Width = 1052
    Height = 450
    ActivePage = tabChannelExchangesQueues
    TabOrder = 3
    object tabChannelExchangesQueues: TTabSheet
      Caption = 'Channels - Exchanges - Queues'
      object Label14: TLabel
        Left = 12
        Top = 3
        Width = 87
        Height = 23
        Caption = 'Channels'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 311
        Top = 3
        Width = 101
        Height = 23
        Caption = 'Exchanges'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 614
        Top = 3
        Width = 71
        Height = 23
        Caption = 'Queues'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object listChannels: TListView
        Left = 12
        Top = 32
        Width = 134
        Height = 185
        Columns = <
          item
            Caption = 'Channel'
          end>
        PopupMenu = popupChannels
        SortType = stText
        TabOrder = 0
        ViewStyle = vsList
        OnClick = listChannelsClick
      end
      object btnChannelOpen: TButton
        Left = 152
        Top = 32
        Width = 121
        Height = 25
        Caption = 'Open Channel'
        TabOrder = 1
        OnClick = btnChannelOpenClick
      end
      object txtChannelName: TEdit
        Left = 152
        Top = 63
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'MyChannel'
      end
      object listExchanges: TListView
        Left = 311
        Top = 32
        Width = 134
        Height = 194
        Columns = <
          item
            Caption = 'Channel'
          end>
        PopupMenu = popupExchanges
        SortType = stText
        TabOrder = 3
        ViewStyle = vsList
        OnClick = listExchangesClick
      end
      object btnExchangeDeclare: TButton
        Left = 451
        Top = 32
        Width = 121
        Height = 25
        Caption = 'Declare Exchange'
        TabOrder = 4
        OnClick = btnExchangeDeclareClick
      end
      object txtExchangeName: TEdit
        Left = 451
        Top = 63
        Width = 121
        Height = 21
        TabOrder = 5
        Text = 'MyExchange'
      end
      object chkExchangePassive: TCheckBox
        Left = 468
        Top = 117
        Width = 97
        Height = 17
        Caption = 'Passive'
        TabOrder = 6
      end
      object chkExchangeDurable: TCheckBox
        Left = 468
        Top = 140
        Width = 97
        Height = 17
        Caption = 'Durable'
        TabOrder = 7
      end
      object chkExchangeAutoDelete: TCheckBox
        Left = 468
        Top = 163
        Width = 97
        Height = 17
        Caption = 'AutoDelete'
        TabOrder = 8
      end
      object chkExchangeInternal: TCheckBox
        Left = 468
        Top = 186
        Width = 97
        Height = 17
        Caption = 'Internal'
        TabOrder = 9
      end
      object chkExchangeNoWait: TCheckBox
        Left = 468
        Top = 209
        Width = 97
        Height = 17
        Caption = 'No Wait'
        TabOrder = 10
      end
      object txtExchangeType: TEdit
        Left = 468
        Top = 90
        Width = 97
        Height = 21
        TabOrder = 11
        Text = 'direct'
      end
      object listQueues: TListView
        Left = 614
        Top = 27
        Width = 134
        Height = 199
        Columns = <
          item
            Caption = 'Channel'
          end>
        PopupMenu = popupQueues
        SortType = stText
        TabOrder = 12
        ViewStyle = vsList
        OnClick = listQueuesClick
      end
      object btnQueueDeclare: TButton
        Left = 754
        Top = 32
        Width = 121
        Height = 25
        Caption = 'Declare Queue'
        TabOrder = 13
        OnClick = btnQueueDeclareClick
      end
      object txtQueueName: TEdit
        Left = 754
        Top = 63
        Width = 121
        Height = 21
        TabOrder = 14
        Text = 'MyQueue'
      end
      object chkQueuePassive: TCheckBox
        Left = 766
        Top = 90
        Width = 97
        Height = 17
        Caption = 'Passive'
        TabOrder = 15
      end
      object chkQueueDurable: TCheckBox
        Left = 766
        Top = 113
        Width = 97
        Height = 17
        Caption = 'Durable'
        TabOrder = 16
      end
      object chkQueueExclusive: TCheckBox
        Left = 766
        Top = 136
        Width = 97
        Height = 17
        Caption = 'Exclusive'
        TabOrder = 17
      end
      object chkQueueAutoDelete: TCheckBox
        Left = 766
        Top = 159
        Width = 97
        Height = 17
        Caption = 'AutoDelete'
        TabOrder = 18
      end
      object chkQueueNoWait: TCheckBox
        Left = 766
        Top = 182
        Width = 97
        Height = 17
        Caption = 'No Wait'
        TabOrder = 19
      end
      object btnQueueBind: TButton
        Left = 890
        Top = 32
        Width = 121
        Height = 25
        Caption = 'Bind Queue'
        TabOrder = 20
        OnClick = btnQueueBindClick
      end
      object txtQueueRoutingKey: TEdit
        Left = 890
        Top = 63
        Width = 121
        Height = 21
        TabOrder = 21
        Text = 'direct'
      end
      object btnQueueUnBind: TButton
        Left = 890
        Top = 90
        Width = 121
        Height = 25
        Caption = 'UnBind Queue'
        TabOrder = 22
        OnClick = btnQueueUnBindClick
      end
      object btnQueuePurge: TButton
        Left = 890
        Top = 176
        Width = 121
        Height = 25
        Caption = 'Purge Queue'
        TabOrder = 23
        OnClick = btnQueuePurgeClick
      end
      object PageControl2: TPageControl
        Left = 16
        Top = 232
        Width = 993
        Height = 177
        ActivePage = tabPublish
        TabOrder = 24
        object tabPublish: TTabSheet
          Caption = 'Publish Messages'
          ImageIndex = 2
          object Label1: TLabel
            Left = 40
            Top = 48
            Width = 58
            Height = 13
            Caption = 'Routing Key'
          end
          object txtPublishMessage: TEdit
            Left = 168
            Top = 18
            Width = 687
            Height = 21
            TabOrder = 0
          end
          object btnPublishMessage: TButton
            Left = 26
            Top = 16
            Width = 121
            Height = 25
            Caption = 'Publish Message'
            TabOrder = 1
            OnClick = btnPublishMessageClick
          end
          object txtRoutingKey: TEdit
            Left = 40
            Top = 67
            Width = 121
            Height = 21
            TabOrder = 2
          end
          object chkMandatory: TCheckBox
            Left = 40
            Top = 94
            Width = 97
            Height = 17
            Caption = 'Mandatory'
            TabOrder = 3
          end
          object chkImmediate: TCheckBox
            Left = 40
            Top = 117
            Width = 97
            Height = 17
            Caption = 'Immediate'
            TabOrder = 4
          end
        end
        object tabReceiveMessages: TTabSheet
          Caption = 'Receive Messages'
          ImageIndex = 3
          object Label2: TLabel
            Left = 464
            Top = 3
            Width = 61
            Height = 13
            Caption = 'Delivery-Tag'
          end
          object btnGetMessage: TButton
            Left = 26
            Top = 20
            Width = 121
            Height = 25
            Caption = 'Get Message'
            TabOrder = 0
            OnClick = btnGetMessageClick
          end
          object chkGetMessageNoWait: TCheckBox
            Left = 33
            Top = 51
            Width = 97
            Height = 17
            Caption = 'No Wait'
            TabOrder = 1
          end
          object btnAckMessage: TButton
            Left = 320
            Top = 20
            Width = 121
            Height = 25
            Caption = 'Ack Message'
            TabOrder = 2
            OnClick = btnAckMessageClick
          end
          object txtDeliveryTag: TEdit
            Left = 464
            Top = 22
            Width = 187
            Height = 21
            TabOrder = 3
          end
          object btnRejectMessage: TButton
            Left = 320
            Top = 74
            Width = 121
            Height = 25
            Caption = 'Reject Message'
            TabOrder = 4
            OnClick = btnRejectMessageClick
          end
          object chkAckMultiple: TCheckBox
            Left = 328
            Top = 51
            Width = 97
            Height = 17
            Caption = 'Multiple'
            TabOrder = 5
          end
          object chkRejectRequeue: TCheckBox
            Left = 328
            Top = 105
            Width = 97
            Height = 17
            Caption = 'Requeue'
            TabOrder = 6
          end
          object btnRecoverMessage: TButton
            Left = 712
            Top = 20
            Width = 121
            Height = 25
            Caption = 'Recover Message'
            TabOrder = 7
            OnClick = btnRecoverMessageClick
          end
          object chkRecoverRequeue: TCheckBox
            Left = 856
            Top = 27
            Width = 97
            Height = 17
            Caption = 'Requeue'
            TabOrder = 8
          end
          object btnRecoverAsyncMessage: TButton
            Left = 712
            Top = 51
            Width = 121
            Height = 25
            Caption = 'RecoverAsync Message'
            TabOrder = 9
            OnClick = btnRecoverAsyncMessageClick
          end
        end
        object tabConsume: TTabSheet
          Caption = 'Consume'
          ImageIndex = 1
          object Label19: TLabel
            Left = 32
            Top = 24
            Width = 69
            Height = 13
            Caption = 'Consumer Tag'
          end
          object chkConsumeNoLocal: TCheckBox
            Left = 107
            Top = 48
            Width = 97
            Height = 17
            Caption = 'NoLocal'
            TabOrder = 0
          end
          object chkConsumeExclusive: TCheckBox
            Left = 107
            Top = 94
            Width = 97
            Height = 17
            Caption = 'Exclusive'
            TabOrder = 1
          end
          object chkConsumeNoWait: TCheckBox
            Left = 107
            Top = 117
            Width = 97
            Height = 17
            Caption = 'No Wait'
            TabOrder = 2
          end
          object chkConsumeNoAck: TCheckBox
            Left = 107
            Top = 71
            Width = 97
            Height = 17
            Caption = 'NoAck'
            TabOrder = 3
          end
          object txtConsumeConsumerTag: TEdit
            Left = 107
            Top = 21
            Width = 121
            Height = 21
            TabOrder = 4
          end
          object btnConsume: TButton
            Left = 248
            Top = 18
            Width = 121
            Height = 25
            Caption = 'Consume'
            TabOrder = 5
            OnClick = btnConsumeClick
          end
          object btnCancelConsume: TButton
            Left = 248
            Top = 49
            Width = 121
            Height = 25
            Caption = 'Cancel Consume'
            TabOrder = 6
            OnClick = btnCancelConsumeClick
          end
        end
        object tabQoS: TTabSheet
          Caption = 'QoS'
          object Label17: TLabel
            Left = 24
            Top = 16
            Width = 63
            Height = 13
            Caption = 'Prefetch Size'
          end
          object Label18: TLabel
            Left = 14
            Top = 43
            Width = 73
            Height = 13
            Caption = 'Prefetch Count'
          end
          object btnSetQoS: TButton
            Left = 93
            Top = 90
            Width = 121
            Height = 25
            Caption = 'Set QoS'
            TabOrder = 0
            OnClick = btnSetQoSClick
          end
          object txtQoSPrefetchSize: TEdit
            Left = 93
            Top = 13
            Width = 121
            Height = 21
            TabOrder = 1
            Text = '0'
          end
          object txtQoSPrefetchCount: TEdit
            Left = 93
            Top = 40
            Width = 121
            Height = 21
            TabOrder = 2
            Text = '0'
          end
          object chkQoSGlobal: TCheckBox
            Left = 93
            Top = 67
            Width = 97
            Height = 17
            Caption = 'Global'
            TabOrder = 3
          end
        end
        object tabTransactions: TTabSheet
          Caption = 'Transactions'
          ImageIndex = 4
          object btnSelectTransaction: TButton
            Left = 34
            Top = 24
            Width = 121
            Height = 25
            Caption = 'Select Transaction'
            TabOrder = 0
            OnClick = btnSelectTransactionClick
          end
          object btnCommitTransaction: TButton
            Left = 34
            Top = 55
            Width = 121
            Height = 25
            Caption = 'Commit Transaction'
            TabOrder = 1
            OnClick = btnCommitTransactionClick
          end
          object btnRollbackTransaction: TButton
            Left = 34
            Top = 86
            Width = 121
            Height = 25
            Caption = 'Rollback Transaction'
            TabOrder = 2
            OnClick = btnRollbackTransactionClick
          end
        end
      end
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = 'www.esegece.com'
    Port = 5672
    ConnectTimeout = 0
    ReadTimeout = -1
    WriteTimeout = 0
    TLS = False
    Proxy.Enabled = False
    Proxy.Port = 8080
    Proxy.ProxyType = pxyHTTP
    HeartBeat.Enabled = True
    HeartBeat.Interval = 30
    HeartBeat.Timeout = 0
    IPVersion = Id_IPv4
    OnException = WSClientException
    Authentication.Enabled = False
    Authentication.URL.Enabled = True
    Authentication.Session.Enabled = True
    Authentication.Basic.Enabled = False
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
    Options.Parameters = '/ws'
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
    Left = 32
    Top = 56
  end
  object AMQP: TsgcWSPClient_AMQP
    OnAMQPConnect = AMQPAMQPConnect
    OnAMQPAuthentication = AMQPAMQPAuthentication
    OnAMQPHeartBeat = AMQPAMQPHeartBeat
    OnAMQPChannelOpen = AMQPAMQPChannelOpen
    OnAMQPChannelClose = AMQPAMQPChannelClose
    OnAMQPExchangeDeclare = AMQPAMQPExchangeDeclare
    OnAMQPExchangeDelete = AMQPAMQPExchangeDelete
    OnAMQPQueueDeclare = AMQPAMQPQueueDeclare
    OnAMQPQueueBind = AMQPAMQPQueueBind
    OnAMQPQueueUnBind = AMQPAMQPQueueUnBind
    OnAMQPQueuePurge = AMQPAMQPQueuePurge
    OnAMQPQueueDelete = AMQPAMQPQueueDelete
    OnAMQPBasicQoS = AMQPAMQPBasicQoS
    OnAMQPBasicConsume = AMQPAMQPBasicConsume
    OnAMQPBasicCancelConsume = AMQPAMQPBasicCancelConsume
    OnAMQPBasicReturn = AMQPAMQPBasicReturn
    OnAMQPBasicDeliver = AMQPAMQPBasicDeliver
    OnAMQPBasicGetOk = AMQPAMQPBasicGetOk
    OnAMQPBasicGetEmpty = AMQPAMQPBasicGetEmpty
    OnAMQPBasicRecoverOk = AMQPAMQPBasicRecoverOk
    OnAMQPTransactionOk = AMQPAMQPTransactionOk
    OnAMQPDisconnect = AMQPAMQPDisconnect
    OnAMQPException = AMQPAMQPException
    AMQPOptions.Locale = 'en_US'
    AMQPOptions.MaxChannels = 65535
    AMQPOptions.MaxFrameSize = 2147483647
    AMQPOptions.VirtualHost = '/'
    HeartBeat.Enabled = True
    HeartBeat.Interval = 60
    HeartBeat.Timeout = 0
    Client = WSClient
    Left = 72
    Top = 56
  end
  object popupChannels: TPopupMenu
    Left = 88
    Top = 216
    object ChannelClose1: TMenuItem
      Caption = 'Close Channel'
      OnClick = ChannelClose1Click
    end
    object ChannelEnable1: TMenuItem
      Caption = 'Enable Channel'
      OnClick = ChannelEnable1Click
    end
    object ChannelDisable1: TMenuItem
      Caption = 'Disable Channel'
      OnClick = ChannelDisable1Click
    end
  end
  object popupExchanges: TPopupMenu
    Left = 392
    Top = 216
    object DeleteExchange1: TMenuItem
      Caption = 'Delete Exchange'
      OnClick = DeleteExchange1Click
    end
  end
  object popupQueues: TPopupMenu
    Left = 680
    Top = 224
    object DeleteQueue1: TMenuItem
      Caption = 'Delete Queue'
      OnClick = DeleteQueue1Click
    end
  end
end
