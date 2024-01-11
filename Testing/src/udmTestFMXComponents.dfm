object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 512
  Width = 668
  object JanuaServerHealth1: TJanuaServerHealth
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    ApplicationType = jatDefault
    Language = jlaNone
    TestMode = False
    JanuaOS = JanuaCoreOS1
    KeepAlive = False
    SessionID = 0
    NumArticles = 0
    Left = 112
    Top = 64
  end
  object JanuaPostgresSystem1: TJanuaPostgresSystem
    LogToFile = False
    JanuaLogger = JanuaCoreLogger1
    ApplicationType = jatDefault
    Language = jlaNone
    TestMode = False
    JanuaOS = JanuaCoreOS1
    KeepAlive = False
    SessionID = 0
    ServerUrl = 'ergomercator.com'
    ServerSchema = 'ergomercator'
    LoadedProfile = False
    Left = 112
    Top = 128
  end
  object JanuaCoreOS1: TJanuaCoreOS
    Directory = '.'
    Log.Strings = (
      '19/04/2017 12:35:23'
      'Separator =\'
      '19/04/2017 12:35:23'
      'FDocDirectory =C:\Users\ergom\Documents'
      '19/04/2017 12:35:23'
      'FTempPath =C:\Users\ergom\AppData\Local\Temp\'
      '19/04/2017 12:35:23'
      'FHomePath =C:\Users\ergom\AppData\Roaming')
    HasErrors = False
    CustomServer = False
    Active = False
    Left = 112
    Top = 192
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    ApplicationType = jatDefault
    Left = 112
    Top = 256
  end
end
