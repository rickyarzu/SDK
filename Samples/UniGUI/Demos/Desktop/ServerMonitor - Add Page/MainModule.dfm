object UniMainModule: TUniMainModule
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnServerMonitorCreate = UniGUIMainModuleServerMonitorCreate
  OnServerMonitorUpdate = UniGUIMainModuleServerMonitorUpdate
  Height = 243
  Width = 428
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 151
    Top = 32
    Data = {
      7A0000009619E0BD0100000018000000040000000000030000007A0009536573
      73696F6E49640100490000000100055749445448020002001900024950010049
      0000000100055749445448020002001400084C61737454696D65080008000000
      0000054D7956617201004900000001000557494454480200020014000000}
    object ClientDataSet1SessionId: TStringField
      FieldName = 'SessionId'
      Size = 25
    end
    object ClientDataSet1IP: TStringField
      FieldName = 'IP'
    end
    object ClientDataSet1LastTime: TDateTimeField
      FieldName = 'LastTime'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 159
    Top = 102
  end
end
