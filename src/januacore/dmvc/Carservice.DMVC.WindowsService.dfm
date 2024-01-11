object PickappAPIService: TPickappAPIService
  OnCreate = ServiceCreate
  AllowPause = False
  DisplayName = 'PickApp API Service Windows'
  OnExecute = ServiceExecute
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 208
  Width = 361
end
