object dmFMXPhoenixAppMobileController: TdmFMXPhoenixAppMobileController
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object TimerDaily: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 368
    Top = 128
  end
end
