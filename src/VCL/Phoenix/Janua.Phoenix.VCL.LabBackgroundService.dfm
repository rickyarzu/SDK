object srvPhoenixVCLLabBackgroundService: TsrvPhoenixVCLLabBackgroundService
  DisplayName = 'Phoenix Labs Background Service'
  AfterInstall = ServiceAfterInstall
  OnContinue = ServiceContinue
  OnExecute = ServiceExecute
  OnPause = ServicePause
  OnStart = ServiceStart
  OnStop = ServiceStop
  Height = 480
  Width = 640
end
