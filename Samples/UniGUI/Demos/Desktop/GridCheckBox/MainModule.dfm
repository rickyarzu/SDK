object UniMainModule: TUniMainModule
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  Height = 150
  Width = 215
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 71
    Top = 40
    Data = {
      A00000009619E0BD010000001800000006000000000003000000A00005456D70
      4E6F0400010000000000084C6173744E616D6501004900000001000557494454
      480200020014000946697273744E616D65010049000000010005574944544802
      0002000F00055368696674020003000000000007426F6F6C496E740200010000
      0000000A426F6F6C537472696E67010049000000010005574944544802000200
      0A000000}
    object ClientDataSet1EmpNo: TIntegerField
      FieldName = 'EmpNo'
    end
    object ClientDataSet1LastName: TStringField
      FieldName = 'LastName'
    end
    object ClientDataSet1FirstName: TStringField
      FieldName = 'FirstName'
      Size = 15
    end
    object ClientDataSet1Shift: TBooleanField
      FieldName = 'Shift'
      DisplayValues = 'Day;Night'
    end
    object ClientDataSet1BoolInt: TSmallintField
      FieldName = 'BoolInt'
    end
    object ClientDataSet1BoolString: TStringField
      FieldName = 'BoolString'
      Size = 10
    end
  end
end
