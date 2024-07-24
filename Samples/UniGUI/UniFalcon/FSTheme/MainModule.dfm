object UniMainModule: TUniMainModule
  Theme = 'triton'
  MonitoredKeys.Keys = <>
  OnBeforeLogin = UniGUIMainModuleBeforeLogin
  Height = 300
  Width = 317
  object FSTheme: TUniFSTheme
    Style = Hulk
    Enabled = True
    Left = 144
    Top = 128
  end
end
