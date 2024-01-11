object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  Height = 231
  Width = 269
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'DateTime'
        DataType = ftDateTime
      end
      item
        Name = 'No'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'EClass'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Message'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Component'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'xForm'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 96
    Top = 40
    Data = {
      D00000009619E0BD010000001800000006000000000003000000D00008446174
      6554696D650800080000000000024E6F04000100020001000753554254595045
      0200490008004175746F696E63000645436C6173730100490000000100055749
      445448020002001400074D657373616765010049000000010005574944544802
      000200640009436F6D706F6E656E740100490000000100055749445448020002
      001E000578466F726D010049000000010005574944544802000200140001000C
      4155544F494E4356414C55450400010001000000}
    object ClientDataSet1DateTime: TDateTimeField
      FieldName = 'DateTime'
    end
    object ClientDataSet1No: TAutoIncField
      FieldName = 'No'
    end
    object ClientDataSet1EClass: TStringField
      FieldName = 'EClass'
    end
    object ClientDataSet1Message: TStringField
      FieldName = 'Message'
      Size = 100
    end
    object ClientDataSet1Component: TStringField
      FieldName = 'Component'
      Size = 30
    end
    object ClientDataSet1xForm: TStringField
      FieldName = 'xForm'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 96
    Top = 128
  end
end
