object JanuaWhatsAppTwilioWebBrokerService: TJanuaWhatsAppTwilioWebBrokerService
  OnDestroy = ServiceDestroy
  AllowPause = False
  DisplayName = 'Janua WhatsApp Twilio Log'
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 480
  Width = 640
  object JanuaWebBrokerServerManager1: TJanuaWebBrokerServerManager
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    IsServer = True
    TestMode = False
    OnBeforeStartServer = JanuaWebBrokerServerManager1BeforeStartServer
    Port = 8180
    ServerName = 'TwilioWebHook'
    Left = 304
    Top = 216
  end
end
