object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  OnNewComponent = UniGUIMainModuleNewComponent
  Height = 300
  Width = 478
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 144
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 80
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 136
    Top = 160
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 184
    Top = 104
  end
end
