object ClientModuleFMXFootballREST: TClientModuleFMXFootballREST
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 506
  Width = 779
  object DSRestConnection1: TDSRestConnection
    Host = 'apps.ergomercator.com'
    Port = 8081
    LoginPrompt = False
    PreserveSessionID = False
    Left = 72
    Top = 40
    UniqueId = '{6ADAFE1D-148A-4D09-B3E2-8C9C0A756CD3}'
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 232
    Top = 56
  end
  object NotificationCenter1: TNotificationCenter
    Left = 224
    Top = 312
  end
  object TMSFMXWebGMapsGeocoding1: TTMSFMXWebGMapsGeocoding
    Version = '1.0.2.0'
    Left = 72
    Top = 272
  end
  object LocationSensor1: TLocationSensor
    Left = 72
    Top = 212
  end
  object JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding
    Verbose = False
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    Language = jlaNone
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
    GoogleKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 229
    Top = 176
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Asynchronous = False
    ConnectionTimeout = 60000
    ResponseTimeout = 60000
    Client = NetHTTPClient1
    Left = 72
    Top = 152
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
  object JanuaCoreOS1: TJanuaCoreOS
    Left = 232
    Top = 112
  end
  object vrtRestMatchDetail: TVirtualTable
    Left = 664
    Top = 81
    Data = {04000000000000000000}
  end
  object dsRestMatchDetail: TDataSource
    DataSet = vrtRestMatchDetail
    Left = 664
    Top = 33
  end
  object dsRestGoalRankings: TDataSource
    DataSet = vrtGoalRankings
    Left = 552
    Top = 89
  end
  object vrtGoalRankings: TVirtualTable
    Left = 552
    Top = 153
    Data = {04000000000000000000}
  end
  object dsRestMatches: TDataSource
    DataSet = vrtRestMatches
    Left = 552
    Top = 217
  end
  object vrtRestMatches: TVirtualTable
    Left = 552
    Top = 281
    Data = {04000000000000000000}
  end
  object vrtRestRankings: TVirtualTable
    Left = 440
    Top = 362
    Data = {04000000000000000000}
  end
  object dsRestRankings: TDataSource
    DataSet = vrtRestRankings
    Left = 440
    Top = 305
  end
  object vrtRestChampionships: TVirtualTable
    Left = 440
    Top = 241
    Data = {04000000000000000000}
  end
  object dsRestChampionships: TDataSource
    DataSet = vrtRestChampionships
    Left = 440
    Top = 177
  end
  object vrtRestSeasons: TVirtualTable
    Left = 432
    Top = 113
    Data = {04000000000000000000}
  end
  object dsRESTSeasons: TDataSource
    DataSet = vrtRestSeasons
    Left = 432
    Top = 57
  end
  object dsRestMatchDetailEvents: TDataSource
    DataSet = vrtRestMatchDetailEvents
    Left = 664
    Top = 137
  end
  object vrtRestMatchDetailEvents: TVirtualTable
    Left = 664
    Top = 193
    Data = {04000000000000000000}
  end
  object dsRestMatchHome: TDataSource
    DataSet = vrtRestMatchHome
    Left = 664
    Top = 249
  end
  object vrtRestMatchHome: TVirtualTable
    Left = 664
    Top = 313
    Data = {04000000000000000000}
  end
  object vrtRestMatchVisitors: TVirtualTable
    Left = 664
    Top = 378
    Data = {04000000000000000000}
  end
  object dsRestMatchVisitors: TDataSource
    DataSet = vrtRestMatchVisitors
    Left = 664
    Top = 377
  end
end
