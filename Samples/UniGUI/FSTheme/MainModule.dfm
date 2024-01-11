object UniMainModule: TUniMainModule
  Theme = 'triton'
  MonitoredKeys.Keys = <>
  OnBeforeLogin = UniGUIMainModuleBeforeLogin
  Height = 303
  Width = 317
  object FSTheme: TUniFSTheme
    Style = Crystal
    Enabled = True
    Left = 144
    Top = 128
  end
end
