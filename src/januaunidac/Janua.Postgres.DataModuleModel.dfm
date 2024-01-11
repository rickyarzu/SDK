object PostgresDataModuleModel: TPostgresDataModuleModel
  OldCreateOrder = False
  Height = 381
  Width = 525
  object JanuaPostgresSystem1: TJanuaPostgresSystem
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Connected = False
    KeepAlive = False
    SessionID = 0
    LoadedProfile = False
    Left = 72
    Top = 40
  end
  object JanuaCoreOS1: TJanuaCoreOS
    Left = 72
    Top = 96
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 72
    Top = 160
  end
end
