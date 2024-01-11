object dmCarserviceFMXDriverClient: TdmCarserviceFMXDriverClient
  Height = 243
  Width = 383
  object JanuaGoogleGeoCoding1: TJanuaGoogleGeoCoding
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaItalian
    TestMode = False
    ISOLanguage.Verbose = False
    ISOLanguage.ID = 1
    ISOLanguage.LanguageName = 'Italiano'
    ISOLanguage.Code = 'it'
    ISOLanguage.IsoCode3 = 'ita'
    ISOLanguage.Language = jlaItalian
    ISOCountry.Verbose = False
    ISOCountry.isoCountry = jicItalia
    NetHTTPRequest = NetHTTPRequest1
    GoogleKey = 'AIzaSyDaRjs-9ynGPpQ3Naxn_dwDcZZrg-lyC9c'
    Left = 104
    Top = 56
  end
  object NetHTTPRequest1: TNetHTTPRequest
    Client = NetHTTPClient1
    Left = 104
    Top = 128
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 248
    Top = 96
  end
  object LocationSensor1: TLocationSensor
    ActivityType = Other
    UsageAuthorization = WhenInUse
    Left = 248
    Top = 176
  end
end
