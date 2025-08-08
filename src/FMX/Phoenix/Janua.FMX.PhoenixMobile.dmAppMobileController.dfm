object dmFMXPhoenixAppMobileController: TdmFMXPhoenixAppMobileController
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object TimerDaily: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 368
    Top = 128
  end
end
