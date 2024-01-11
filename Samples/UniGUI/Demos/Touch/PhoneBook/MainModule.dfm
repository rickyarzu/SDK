object UniMainModule: TUniMainModule
  OldCreateOrder = False
  OnCreate = UniGUIMainModuleCreate
  MonitoredKeys.Keys = <>
  Height = 150
  Width = 215
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    FieldDefs = <
      item
        Name = 'Name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Phone_Number'
        DataType = ftString
        Size = 11
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 144
    Top = 40
    Data = {
      540000009619E0BD0100000018000000020000000000030000005400044E616D
      6501004900000001000557494454480200020032000C50686F6E655F4E756D62
      65720100490000000100055749445448020002000B000000}
    object ClientDataSet1Name: TStringField
      FieldName = 'Name'
      Size = 50
    end
    object ClientDataSet1Phone_Number: TStringField
      FieldName = 'Phone_Number'
      Size = 11
    end
  end
end
