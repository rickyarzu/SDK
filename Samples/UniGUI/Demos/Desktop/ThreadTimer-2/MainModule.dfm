object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  Height = 310
  Width = 375
  object UniThreadTimer1: TUniThreadTimer
    OnTimer = UniThreadTimer1Timer
    Left = 168
    Top = 80
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 168
    Data = {
      3C0000009619E0BD0100000018000000020000000000030000003C0002463104
      0001000000000002463201004900000001000557494454480200020032000000}
    object ClientDataSet1F1: TIntegerField
      FieldName = 'F1'
    end
    object ClientDataSet1F2: TStringField
      FieldName = 'F2'
      Size = 50
    end
  end
end
