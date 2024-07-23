object UniMainModule: TUniMainModule
  OnCreate = UniGUIMainModuleCreate
  OnDestroy = UniGUIMainModuleDestroy
  Theme = 'triton'
  MonitoredKeys.Keys = <>
  Height = 150
  Width = 215
  object FSTheme: TUniFSTheme
    Style = Crystal
    Enabled = True
    Left = 88
    Top = 48
  end
end
