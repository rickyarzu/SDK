object frmWebSocketClient: TfrmWebSocketClient
  Left = 0
  Top = 0
  Caption = 'WebSocket Client'
  ClientHeight = 802
  ClientWidth = 1192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  TextHeight = 13
  object pnlTop: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1186
    Height = 150
    Align = alTop
    TabOrder = 0
    object pnlClientActive: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 106
      Height = 142
      Align = alLeft
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
        Top = 93
        Width = 75
        Height = 25
        Caption = 'Stop'
        TabOrder = 1
        OnClick = btnStopClick
      end
    end
    object pnlClientOptions: TPanel
      AlignWithMargins = True
      Left = 116
      Top = 4
      Width = 1066
      Height = 142
      Align = alClient
      TabOrder = 1
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
        Left = 502
        Top = 26
        Width = 52
        Height = 13
        Caption = 'Username:'
      end
      object Label5: TLabel
        Left = 143
        Top = 26
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label8: TLabel
        Left = 502
        Top = 72
        Width = 50
        Height = 13
        Caption = 'Password:'
      end
      object Label10: TLabel
        Left = 367
        Top = 72
        Width = 24
        Height = 13
        Caption = 'Port:'
      end
      object Label9: TLabel
        Left = 367
        Top = 26
        Width = 26
        Height = 13
        Caption = 'Host:'
      end
      object Label14: TLabel
        Left = 191
        Top = 26
        Width = 59
        Height = 13
        Caption = 'Parameters:'
      end
      object chkCompressed: TCheckBox
        Left = 64
        Top = 76
        Width = 81
        Height = 17
        Caption = 'Compressed'
        TabOrder = 0
      end
      object chkTLS: TCheckBox
        Left = 16
        Top = 76
        Width = 34
        Height = 17
        Caption = 'TLS'
        TabOrder = 1
      end
      object txtHost: TEdit
        Left = 16
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 2
        Text = 'www.esegece.com'
      end
      object txtPort: TEdit
        Left = 143
        Top = 45
        Width = 42
        Height = 21
        TabOrder = 3
        Text = '2052'
      end
      object chkProxy: TCheckBox
        Left = 367
        Top = 10
        Width = 58
        Height = 17
        Caption = 'Proxy'
        TabOrder = 4
      end
      object txtProxyUsername: TEdit
        Left = 502
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 5
      end
      object txtProxyPassword: TEdit
        Left = 502
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object txtProxyHost: TEdit
        Left = 367
        Top = 45
        Width = 121
        Height = 21
        TabOrder = 7
      end
      object txtProxyPort: TEdit
        Left = 367
        Top = 91
        Width = 121
        Height = 21
        TabOrder = 8
      end
      object txtParameters: TEdit
        Left = 191
        Top = 45
        Width = 123
        Height = 21
        TabOrder = 9
        Text = '/'
      end
      object chkOverWebSocket: TCheckBox
        Left = 16
        Top = 99
        Width = 98
        Height = 17
        Caption = 'Over WebSocket'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
    end
  end
  object pnlClient: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 1186
    Height = 394
    Align = alTop
    TabOrder = 1
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1178
      Height = 386
      ActivePage = tabWebSocket
      Align = alClient
      TabOrder = 0
      object tabWebSocket: TTabSheet
        Caption = 'WebSocket'
        OnShow = tabWebSocketShow
        object Label11: TLabel
          Left = 3
          Top = 21
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object Label13: TLabel
          Left = 25
          Top = 59
          Width = 46
          Height = 13
          Caption = 'Message:'
        end
        object cboServerWebSocket: TComboBox
          Left = 77
          Top = 18
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'esegece.com'
          OnChange = cboServerWebSocketChange
          Items.Strings = (
            'esegece.com'
            'esegece.com TLS')
        end
        object txtMessage: TEdit
          Left = 77
          Top = 56
          Width = 373
          Height = 21
          TabOrder = 1
        end
        object btnSend: TButton
          Left = 456
          Top = 54
          Width = 75
          Height = 25
          Caption = 'Send'
          TabOrder = 2
          OnClick = btnSendClick
        end
      end
      object tabMQTT: TTabSheet
        Caption = 'MQTT'
        ImageIndex = 1
        OnShow = tabMQTTShow
        object Label1: TLabel
          Left = 299
          Top = 49
          Width = 326
          Height = 13
          Caption = 
            'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
            't'
        end
        object Label12: TLabel
          Left = 516
          Top = 82
          Width = 200
          Height = 26
          Caption = 'Broadcast text to all clients subscribed to custom channel.'
          WordWrap = True
        end
        object Label2: TLabel
          Left = 84
          Top = 113
          Width = 103
          Height = 13
          Caption = 'Send a ping to server'
        end
        object Label15: TLabel
          Left = 3
          Top = 21
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object btnSubscribeMQTT: TButton
          Left = 3
          Top = 45
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 0
          OnClick = btnSubscribeMQTTClick
        end
        object btnUnsubscribeMQTT: TButton
          Left = 84
          Top = 45
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 1
          OnClick = btnUnsubscribeMQTTClick
        end
        object txtChannelMQTT: TEdit
          Left = 165
          Top = 47
          Width = 121
          Height = 21
          Hint = 'Channel name'
          TabOrder = 2
          Text = 'sgc:test'
        end
        object btnPublishMQTT: TButton
          Left = 3
          Top = 77
          Width = 75
          Height = 25
          Caption = 'Publish'
          TabOrder = 3
          OnClick = btnPublishMQTTClick
        end
        object txtPublishChannelMQTT: TEdit
          Left = 84
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Channel Name'
          TabOrder = 4
          Text = 'sgc:test'
        end
        object txtPublishMessageMQTT: TEdit
          Left = 211
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Text to Broadcast to all clients subscribed'
          TabOrder = 5
          Text = 'Hello World!'
        end
        object cboQoSMQTT: TComboBox
          Left = 338
          Top = 79
          Width = 106
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'mtqsAtMostOnce'
          OnChange = cboServerMQTTChange
          Items.Strings = (
            'mtqsAtMostOnce'
            'mtqsAtLeastOnce'
            'mtqsExactlyOnce')
        end
        object chkRetainMQTT: TCheckBox
          Left = 450
          Top = 81
          Width = 50
          Height = 17
          Caption = 'Retain'
          TabOrder = 7
        end
        object btnPingMQTT: TButton
          Left = 3
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Ping'
          TabOrder = 8
          OnClick = btnPingMQTTClick
        end
        object cboServerMQTT: TComboBox
          Left = 84
          Top = 18
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 9
          Text = 'www.esegece.com'
          OnChange = cboServerMQTTChange
          Items.Strings = (
            'www.esegece.com'
            'test.mosquitto.org'
            'mqtt.fluux.io (MQTT 5)'
            'broker.hivemq.com (MQTT 5)')
        end
      end
      object tabSTOMP: TTabSheet
        Caption = 'STOMP'
        ImageIndex = 2
        OnShow = tabSTOMPShow
        object Label6: TLabel
          Left = 3
          Top = 21
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object Label16: TLabel
          Left = 299
          Top = 49
          Width = 326
          Height = 13
          Caption = 
            'Subscribe / UnSubscribe to custom channel to receive data OnEven' +
            't'
        end
        object Label17: TLabel
          Left = 338
          Top = 82
          Width = 278
          Height = 13
          Caption = 'Broadcast text to all clients subscribed to custom channel.'
          WordWrap = True
        end
        object Label18: TLabel
          Left = 84
          Top = 113
          Width = 103
          Height = 13
          Caption = 'Send a ping to server'
        end
        object cboServerSTOMP: TComboBox
          Left = 84
          Top = 18
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 0
          Text = 'www.esegece.com'
          OnChange = cboServerSTOMPChange
          Items.Strings = (
            'www.esegece.com')
        end
        object btnSubscribeSTOMP: TButton
          Left = 3
          Top = 45
          Width = 75
          Height = 25
          Caption = 'Subscribe'
          TabOrder = 1
          OnClick = btnSubscribeSTOMPClick
        end
        object btnUnSubscribeSTOMP: TButton
          Left = 84
          Top = 45
          Width = 75
          Height = 25
          Caption = 'UnSubscribe'
          TabOrder = 2
          OnClick = btnUnSubscribeSTOMPClick
        end
        object txtChannelSTOMP: TEdit
          Left = 165
          Top = 47
          Width = 121
          Height = 21
          Hint = 'Channel name'
          TabOrder = 3
          Text = 'sgc'
        end
        object btnPublishSTOMP: TButton
          Left = 3
          Top = 77
          Width = 75
          Height = 25
          Caption = 'Publish'
          TabOrder = 4
          OnClick = btnPublishSTOMPClick
        end
        object txtPublishChannelSTOMP: TEdit
          Left = 84
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Channel Name'
          TabOrder = 5
          Text = 'sgc'
        end
        object txtPublishMessageSTOMP: TEdit
          Left = 211
          Top = 79
          Width = 121
          Height = 21
          Hint = 'Text to Broadcast to all clients subscribed'
          TabOrder = 6
          Text = 'Hello World!'
        end
        object btnPingSTOMP: TButton
          Left = 3
          Top = 108
          Width = 75
          Height = 25
          Caption = 'Ping'
          TabOrder = 7
        end
      end
      object tabSIGNALR: TTabSheet
        Caption = 'SIGNALR'
        ImageIndex = 4
        OnShow = tabSIGNALRShow
        object txtSignalRUser: TEdit
          Left = 124
          Top = 58
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'sgcUSER'
        end
        object btnSignalRNewUser: TButton
          Left = 27
          Top = 56
          Width = 91
          Height = 25
          Caption = 'New User'
          TabOrder = 1
          OnClick = btnSignalRNewUserClick
        end
        object btnSignalRSendMessage: TButton
          Left = 27
          Top = 87
          Width = 91
          Height = 25
          Caption = 'Send Message'
          TabOrder = 2
          OnClick = btnSignalRSendMessageClick
        end
        object txtSignalRMessage: TEdit
          Left = 124
          Top = 89
          Width = 397
          Height = 21
          TabOrder = 3
          Text = 'Hello SignalR Users!!!'
        end
        object btnSignalROpenBrowser: TButton
          Left = 27
          Top = 16
          Width = 91
          Height = 25
          Caption = 'Open Browser'
          TabOrder = 4
          OnClick = btnSignalROpenBrowserClick
        end
      end
      object tabSOCKETIO: TTabSheet
        Caption = 'SOCKET IO'
        ImageIndex = 6
        OnShow = tabSOCKETIOShow
        object txtSocketIOUserName: TEdit
          Left = 22
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'sgcWebSockets'
        end
        object btnSocketIONewUser: TButton
          Left = 180
          Top = 14
          Width = 75
          Height = 25
          Caption = 'New User'
          TabOrder = 1
          OnClick = btnSocketIONewUserClick
        end
        object txtSocketIOMessage: TEdit
          Left = 22
          Top = 61
          Width = 233
          Height = 21
          TabOrder = 2
          Text = 'Hello!!!'
        end
        object btnSocketIOMessage: TButton
          Left = 261
          Top = 59
          Width = 75
          Height = 25
          Caption = 'Message'
          TabOrder = 3
          OnClick = btnSocketIOMessageClick
        end
      end
      object tabPUSHER: TTabSheet
        Caption = 'PUSHER'
        ImageIndex = 8
        OnShow = tabPUSHERShow
        object Label24: TLabel
          Left = 27
          Top = 64
          Width = 34
          Height = 13
          Caption = 'Cluster'
        end
        object Label25: TLabel
          Left = 44
          Top = 91
          Width = 17
          Height = 13
          Caption = 'API'
        end
        object Label26: TLabel
          Left = 34
          Top = 118
          Width = 27
          Height = 13
          Caption = 'Name'
        end
        object Label27: TLabel
          Left = 26
          Top = 145
          Width = 35
          Height = 13
          Caption = 'Version'
        end
        object Label28: TLabel
          Left = 44
          Top = 174
          Width = 17
          Height = 13
          Caption = 'TLS'
        end
        object Label29: TLabel
          Left = 30
          Top = 199
          Width = 31
          Height = 13
          Caption = 'Secret'
        end
        object Label84: TLabel
          Left = 27
          Top = 37
          Width = 32
          Height = 13
          Caption = 'App Id'
        end
        object txtClusterPUSHER: TEdit
          Left = 75
          Top = 61
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'eu'
        end
        object txtKeyPUSHER: TEdit
          Left = 75
          Top = 88
          Width = 166
          Height = 21
          TabOrder = 1
          Text = '4b2ac9f7fb0c0a967a95'
        end
        object txtNamePUSHER: TEdit
          Left = 75
          Top = 115
          Width = 166
          Height = 21
          TabOrder = 2
          Text = 'js'
        end
        object txtVersionPUSHER: TEdit
          Left = 75
          Top = 142
          Width = 166
          Height = 21
          TabOrder = 3
          Text = '4.5.2'
        end
        object txtSecretPUSHER: TEdit
          Left = 75
          Top = 196
          Width = 166
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
          Text = '269916abb6dd500572a0'
        end
        object chkTLSPUSHER: TCheckBox
          Left = 75
          Top = 173
          Width = 97
          Height = 17
          Checked = True
          State = cbChecked
          TabOrder = 5
        end
        object txtAppIdPUSHER: TEdit
          Left = 75
          Top = 34
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '1267885'
        end
        object PageControl6: TPageControl
          Left = 378
          Top = 0
          Width = 792
          Height = 358
          ActivePage = tabPusherWebsocket
          Align = alRight
          TabOrder = 7
          object tabPusherWebsocket: TTabSheet
            Caption = 'WebSocket'
            object Label91: TLabel
              Left = 19
              Top = 11
              Width = 70
              Height = 13
              Caption = 'Channel Type:'
            end
            object Label92: TLabel
              Left = 177
              Top = 11
              Width = 43
              Height = 13
              Caption = 'Channel:'
            end
            object Label93: TLabel
              Left = 304
              Top = 13
              Width = 32
              Height = 13
              Caption = 'Event:'
            end
            object btnSubscribePUSHER: TButton
              Left = 19
              Top = 67
              Width = 75
              Height = 25
              Caption = 'Subscribe'
              TabOrder = 0
              OnClick = btnSubscribePUSHERClick
            end
            object btnUnSubscribePUSHER: TButton
              Left = 19
              Top = 100
              Width = 75
              Height = 25
              Caption = 'UnSubscribe'
              TabOrder = 1
              OnClick = btnUnSubscribePUSHERClick
            end
            object txtChannelPUSHER: TEdit
              Left = 177
              Top = 28
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 2
              Text = 'sgc-channel'
            end
            object btnPublishPUSHER: TButton
              Left = 19
              Top = 129
              Width = 75
              Height = 25
              Caption = 'Publish'
              TabOrder = 3
              OnClick = btnPublishPUSHERClick
            end
            object txtEventPUSHER: TEdit
              Left = 304
              Top = 28
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 4
              Text = 'sgc-event'
            end
            object txtPublishPUSHER: TEdit
              Left = 100
              Top = 131
              Width = 325
              Height = 21
              TabOrder = 5
              Text = 'Hello from sgcWebSockets!!!'
            end
            object cboPUSHERChannelTypes: TComboBox
              Left = 19
              Top = 28
              Width = 145
              Height = 21
              Style = csDropDownList
              ItemIndex = 1
              TabOrder = 6
              Text = 'Private'
              Items.Strings = (
                'Public'
                'Private'
                'Presence'
                'Cache'
                'Private-Cache')
            end
          end
          object tabPusherREST: TTabSheet
            Caption = 'REST'
            ImageIndex = 1
            object Label94: TLabel
              Left = 15
              Top = 13
              Width = 43
              Height = 13
              Caption = 'Channel:'
            end
            object Label95: TLabel
              Left = 142
              Top = 15
              Width = 32
              Height = 13
              Caption = 'Event:'
            end
            object txtPUSHERChannelREST: TEdit
              Left = 15
              Top = 30
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 0
              Text = 'sgc-channel'
            end
            object txtPUSHEREventREST: TEdit
              Left = 142
              Top = 30
              Width = 121
              Height = 21
              Hint = 'Channel name'
              TabOrder = 1
              Text = 'sgc-event'
            end
            object btnPUSHERTriggerEvent: TButton
              Left = 16
              Top = 72
              Width = 75
              Height = 25
              Caption = 'Trigger Event'
              TabOrder = 2
              OnClick = btnPUSHERTriggerEventClick
            end
            object txtPUSHERDataREST: TEdit
              Left = 97
              Top = 74
              Width = 456
              Height = 21
              TabOrder = 3
              Text = 'Hello from sgcWebSockets!!!!'
            end
            object btnPUSHERGetChannels: TButton
              Left = 16
              Top = 103
              Width = 75
              Height = 25
              Caption = 'Get Channels'
              TabOrder = 4
              OnClick = btnPUSHERGetChannelsClick
            end
            object btnPUSHERGetUsers: TButton
              Left = 16
              Top = 134
              Width = 75
              Height = 25
              Caption = 'Get Users'
              TabOrder = 5
              OnClick = btnPUSHERGetUsersClick
            end
          end
        end
      end
      object tabSIGNALRCORE: TTabSheet
        Caption = 'SIGNALRCORE'
        ImageIndex = 12
        OnShow = tabSIGNALRCOREShow
        object Label42: TLabel
          Left = 19
          Top = 13
          Width = 68
          Height = 13
          Caption = 'Select Server:'
        end
        object btnSignalRCoreClose: TButton
          Left = 24
          Top = 176
          Width = 105
          Height = 26
          Caption = 'Close'
          TabOrder = 0
          OnClick = btnSignalRCoreCloseClick
        end
        object btnSignalRCoreSendMessage: TButton
          Left = 24
          Top = 95
          Width = 105
          Height = 27
          Caption = 'Send Message'
          TabOrder = 1
          OnClick = btnSignalRCoreSendMessageClick
        end
        object btnSignalRCoreOpenBrowser: TButton
          Left = 24
          Top = 56
          Width = 105
          Height = 25
          Caption = 'Open Browser'
          TabOrder = 2
          OnClick = btnSignalRCoreOpenBrowserClick
        end
        object txtSignalRCoreUser: TEdit
          Left = 146
          Top = 98
          Width = 121
          Height = 21
          TabOrder = 3
          Text = 'John'
        end
        object txtSignalRCoreMessage: TEdit
          Left = 273
          Top = 98
          Width = 182
          Height = 21
          TabOrder = 4
          Text = 'My SignalRCore Message!'
        end
        object btnSignalRCoreStartStreaming: TButton
          Left = 24
          Top = 139
          Width = 105
          Height = 24
          Caption = 'Start Streaming'
          TabOrder = 5
          OnClick = btnSignalRCoreStartStreamingClick
        end
        object cboSignalRCoreServer: TComboBox
          Left = 93
          Top = 10
          Width = 145
          Height = 21
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 6
          Text = 'SignalRCore Chat'
          OnChange = cboSignalRCoreServerChange
          Items.Strings = (
            'SignalRCore Chat'
            'SignalRCore Authentication')
        end
      end
      object tabAWSAppSync: TTabSheet
        Caption = 'AWS AppSync'
        ImageIndex = 14
        OnShow = tabAWSAppSyncShow
        object Label39: TLabel
          Left = 41
          Top = 16
          Width = 39
          Height = 13
          Caption = 'API URL'
        end
        object Label40: TLabel
          Left = 42
          Top = 43
          Width = 38
          Height = 13
          Caption = 'API KEY'
        end
        object Label41: TLabel
          Left = 17
          Top = 70
          Width = 63
          Height = 13
          Caption = 'Subscritpions'
        end
        object txtAWSAppSyncAPIURL: TEdit
          Left = 86
          Top = 13
          Width = 537
          Height = 21
          TabOrder = 0
        end
        object txtAWSAppSyncAPIKEY: TEdit
          Left = 86
          Top = 40
          Width = 249
          Height = 21
          TabOrder = 1
        end
        object txtAWSAppSyncSubscription: TEdit
          Left = 86
          Top = 67
          Width = 249
          Height = 21
          TabOrder = 2
        end
      end
      object tabDiscord: TTabSheet
        Caption = 'DISCORD'
        ImageIndex = 16
        OnShow = tabDiscordShow
        object Label45: TLabel
          Left = 23
          Top = 51
          Width = 43
          Height = 13
          Caption = 'BotName'
        end
        object Label46: TLabel
          Left = 31
          Top = 78
          Width = 35
          Height = 13
          Caption = 'BotURL'
        end
        object Label47: TLabel
          Left = 21
          Top = 24
          Width = 45
          Height = 13
          Caption = 'BotToken'
        end
        object txtDiscordBotName: TEdit
          Left = 72
          Top = 48
          Width = 211
          Height = 21
          TabOrder = 0
          Text = 'DiscordBot'
        end
        object txtDiscordBotURL: TEdit
          Left = 72
          Top = 75
          Width = 211
          Height = 21
          TabOrder = 1
          Text = 'none'
        end
        object txtDiscordBotToken: TEdit
          Left = 72
          Top = 21
          Width = 393
          Height = 21
          TabOrder = 2
          OnChange = txtDiscordBotTokenChange
        end
        object btnDiscordGetUser: TButton
          Left = 72
          Top = 112
          Width = 75
          Height = 25
          Caption = 'Get User'
          TabOrder = 3
          OnClick = btnDiscordGetUserClick
        end
      end
    end
  end
  object pnlMemo: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 559
    Width = 1186
    Height = 240
    Align = alClient
    TabOrder = 2
    object memoLog: TMemo
      Left = 1
      Top = 1
      Width = 1184
      Height = 238
      Align = alClient
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object WSClient: TsgcWebSocketClient
    Host = 'echo.websocket.org'
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
    OnConnect = WSClientConnect
    OnMessage = WSClientMessage
    OnDisconnect = WSClientDisconnect
    OnError = WSClientError
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
    Left = 24
    Top = 56
  end
  object MQTT: TsgcWSPClient_MQTT
    OnMQTTBeforeConnect = MQTTMQTTBeforeConnect
    OnMQTTConnect = MQTTMQTTConnect
    OnMQTTPing = MQTTMQTTPing
    OnMQTTPublish = MQTTMQTTPublish
    OnMQTTPubAck = MQTTMQTTPubAck
    OnMQTTPubRec = MQTTMQTTPubRec
    OnMQTTPubComp = MQTTMQTTPubComp
    OnMQTTSubscribe = MQTTMQTTSubscribe
    OnMQTTUnSubscribe = MQTTMQTTUnSubscribe
    OnMQTTDisconnect = MQTTMQTTDisconnect
    Authentication.Enabled = True
    Authentication.Password = 'sgc'
    Authentication.UserName = 'sgc'
    HeartBeat.Enabled = True
    HeartBeat.Interval = 5
    HeartBeat.Timeout = 0
    LastWillTestament.Enabled = False
    LastWillTestament.QoS = mtqsAtMostOnce
    LastWillTestament.Retain = False
    LastWillTestament.WillProperties.MessageExpiryInterval = 0
    LastWillTestament.WillProperties.PayloadFormat = mqpfUnspecified
    LastWillTestament.WillProperties.WillDelayInterval = 0
    QoS.Level = mtqsExactlyOnce
    QoS.Interval = 60
    QoS.Timeout = 300
    ConnectProperties.Enabled = False
    ConnectProperties.MaximumPacketSize = 2147483647
    ConnectProperties.ReceiveMaximum = 65535
    ConnectProperties.RequestProblemInformation = True
    ConnectProperties.RequestResponseInformation = False
    ConnectProperties.SessionExpiryInterval = 0
    ConnectProperties.TopicAliasMaximum = 0
    MQTTVersion = mqtt311
    Left = 776
    Top = 24
  end
  object STOMP: TsgcWSPClient_STOMP_RabbitMQ
    OnRabbitMQConnected = STOMPRabbitMQConnected
    OnRabbitMQMessage = STOMPRabbitMQMessage
    OnRabbitMQError = STOMPRabbitMQError
    OnRabbitMQDisconnected = STOMPRabbitMQDisconnected
    Authentication.Enabled = False
    HeartBeat.Enabled = True
    HeartBeat.Incoming = 0
    HeartBeat.Outgoing = 0
    Versions.V1_2 = True
    Versions.V1_0 = True
    Versions.V1_1 = True
    Options.VirtualHost = '/'
    Left = 832
    Top = 24
  end
  object SIGNALR: TsgcWSAPI_SignalR
    OnSignalRConnect = SIGNALRSignalRConnect
    OnSignalRMessage = SIGNALRSignalRMessage
    OnSignalRKeepAlive = SIGNALRSignalRKeepAlive
    OnSignalRResult = SIGNALRSignalRResult
    OnSignalRError = SIGNALRSignalRError
    OnSignalRDisconnect = SIGNALRSignalRDisconnect
    SignalR.ProtocolVersion = srpt1_2
    Left = 888
    Top = 24
  end
  object SOCKETIO: TsgcWSAPI_SocketIO
    SocketIO.HandShakeTimestamp = False
    SocketIO.API = ioAPI2
    SocketIO.Base64 = False
    SocketIO.EncodeParameters = False
    SocketIO.Polling = True
    SocketIO.UserAgent = 'Mozilla/5.0 (sgcWebSockets 4.2.7)'
    Left = 1032
    Top = 24
  end
  object PUSHER: TsgcWSAPI_Pusher
    OnDisconnect = PUSHERDisconnect
    OnPusherConnect = PUSHERPusherConnect
    OnPusherError = PUSHERPusherError
    OnPusherEvent = PUSHERPusherEvent
    OnPusherSubscribe = PUSHERPusherSubscribe
    Pusher.Name = 'sgcWebSockets'
    Pusher.TLS = False
    Pusher.Version = '4.5.2'
    Left = 776
    Top = 88
  end
  object SIGNALRCORE: TsgcWSAPI_SignalRCore
    OnSignalRCoreConnect = SIGNALRCORESignalRCoreConnect
    OnSignalRCoreInvocation = SIGNALRCORESignalRCoreInvocation
    OnSignalRCoreStreamInvocation = SIGNALRCORESignalRCoreStreamInvocation
    OnSignalRCoreStreamItem = SIGNALRCORESignalRCoreStreamItem
    OnSignalRCoreCompletion = SIGNALRCORESignalRCoreCompletion
    OnSignalRCoreCancelInvocation = SIGNALRCORESignalRCoreCancelInvocation
    OnSignalRCoreKeepAlive = SIGNALRCORESignalRCoreKeepAlive
    OnSignalRCoreError = SIGNALRCORESignalRCoreError
    OnSignalRCoreClose = SIGNALRCORESignalRCoreClose
    OnSignalRCoreDisconnect = SIGNALRCORESignalRCoreDisconnect
    SignalRCore.Authentication.Authentication = srcaRequestToken
    SignalRCore.Authentication.RequestToken.PostFieldPassword = 'password'
    SignalRCore.Authentication.RequestToken.PostFieldToken = 'token'
    SignalRCore.Authentication.RequestToken.URL = '/account/token'
    SignalRCore.Authentication.RequestToken.PostFieldUsername = 'username'
    SignalRCore.Authentication.RequestToken.QueryFieldToken = 'access_token'
    SignalRCore.Authentication.Enabled = True
    SignalRCore.Authentication.Password = 'secret'
    SignalRCore.Authentication.Username = 'mail@mail.com'
    SignalRCore.Protocol = srcpJSON
    SignalRCore.Version = srcv1_0
    Left = 952
    Top = 24
  end
  object DISCORD: TsgcWSAPI_Discord
    OnConnect = DISCORDConnect
    OnDiscordReady = DISCORDDiscordReady
    OnDiscordDispatch = DISCORDDiscordDispatch
    OnDisconnect = DISCORDDisconnect
    DiscordOptions.BotOptions.BotName = 'DiscordBot'
    DiscordOptions.BotOptions.BotURL = 'none'
    DiscordOptions.Intents = 0
    DiscordOptions.Version = 6
    Left = 831
    Top = 87
  end
end
