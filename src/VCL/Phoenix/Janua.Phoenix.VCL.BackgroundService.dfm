object srvPhoenixVCLBackgroundService: TsrvPhoenixVCLBackgroundService
  DisplayName = 'Phoenix Background Service'
  AfterInstall = ServiceAfterInstall
  OnContinue = ServiceContinue
  OnExecute = ServiceExecute
  OnPause = ServicePause
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 480
  Width = 640
end
