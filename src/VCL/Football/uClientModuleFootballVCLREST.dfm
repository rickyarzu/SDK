object ClientModuleFootballVCLREST: TClientModuleFootballVCLREST
  OldCreateOrder = False
  Height = 372
  Width = 416
  object DSRestConnection1: TDSRestConnection
    Host = 'localhost'
    Port = 8081
    LoginPrompt = False
    PreserveSessionID = False
    Left = 72
    Top = 48
    UniqueId = '{8832F30D-997A-4A50-B53C-935741B8C9E9}'
  end
  object JanuaCoreOS1: TJanuaCoreOS
    Left = 72
    Top = 168
  end
  object JanuaCoreLogger1: TJanuaCoreLogger
    Component = Owner
    LogType = jltError
    AutoFileName = True
    IsCustomServer = False
    ErrorFileName = 'Error'
    LogFileName = 'Log'
    Left = 72
    Top = 232
  end
end
