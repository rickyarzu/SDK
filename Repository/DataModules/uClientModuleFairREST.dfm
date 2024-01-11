object ClientModuleHealthREST: TClientModuleHealthREST
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 382
  Width = 451
  object DSRestConnection1: TDSRestConnection
    Host = 'canaria.pasolutions.ru'
    Port = 8081
    LoginPrompt = False
    PreserveSessionID = False
    Left = 72
    Top = 40
    UniqueId = '{3CE72F3A-7BF7-4794-8C5F-0CB6BA5853DC}'
  end
  object JanuaCoreOS1: TJanuaCoreOS
    Left = 224
    Top = 112
  end
  object NetHTTPClient1: TNetHTTPClient
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    AllowCookies = True
    HandleRedirects = True
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 72
    Top = 96
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    Client = NetHTTPClient1
    Left = 72
    Top = 152
  end
  object LocationSensor1: TLocationSensor
    Left = 72
    Top = 212
  end
  object TMSFMXWebGMapsGeocoding1: TTMSFMXWebGMapsGeocoding
    APIKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Version = '1.0.2.0'
    Left = 72
    Top = 272
  end
  object NotificationCenter1: TNotificationCenter
    Left = 216
    Top = 312
  end
  object vrtLog: TVirtualTable
    Left = 336
    Top = 72
    Data = {04000000000000000000}
  end
  object JanuaConf1: TJanuaConf
    ApplicationType = jatClientTablet
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaItalian
    TestMode = False
    JanuaOSConfiguration.Verbose = False
    JanuaOSConfiguration.CustomServer = False
    JanuaOSConfiguration.ResolveToFile = False
    JanuaOSConfiguration.UseCurrentDir = False
    JanuaOSConfiguration.HomeDirectory = johDefault
    Protocol = jptNone
    AssetsUrl = 'cdn.ergomercator.com'
    AppUrl = 'dico33.com'
    JanuaServerConf.Verbose = False
    JanuaServerConf.Port = 0
    JanuaServerConf.Direct = False
    Left = 336
    Top = 136
  end
  object JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaItalian
    TestMode = False
    ISOCountry.Verbose = False
    ISOCountry.isoCountry = jicItalia
    ISOLanguage.Verbose = False
    ISOLanguage.ID = 1
    ISOLanguage.LanguageName = 'Italiano'
    ISOLanguage.Code = 'it'
    ISOLanguage.IsoCode3 = 'ita'
    ISOLanguage.Language = jlaItalian
    NetHTTPRequest = NetHTTPRequest1
    Address = 'Com'
    GoogleKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 221
    Top = 176
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Dataset = vrtLog
    Left = 224
    Top = 48
  end
end
