object UniMainModule: TUniMainModule
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnHandleRequest = UniGUIMainModuleHandleRequest
  Height = 310
  Width = 432
  object CS: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'time_stamp'
        DataType = ftDateTime
      end
      item
        Name = 'event_name'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'js_name'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'component_name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'component_class'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'parameters'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'CSIndex1'
        Fields = 'time_stamp'
        Options = [ixDescending]
      end>
    IndexName = 'CSIndex1'
    Params = <>
    StoreDefs = True
    Left = 64
    Top = 32
    Data = {
      CE0000009619E0BD010000001800000006000000000003000000CE000A74696D
      655F7374616D7008000800000000000A6576656E745F6E616D65010049000000
      0100055749445448020002001E00076A735F6E616D6501004900000001000557
      494454480200020014000E636F6D706F6E656E745F6E616D6501004900000001
      000557494454480200020032000F636F6D706F6E656E745F636C617373010049
      00000001000557494454480200020019000A706172616D657465727301004900
      000001000557494454480200020064000000}
    object CStime_stamp: TDateTimeField
      FieldName = 'time_stamp'
    end
    object CSevent_name: TStringField
      FieldName = 'event_name'
      Size = 30
    end
    object CSjs_name: TStringField
      FieldName = 'js_name'
    end
    object CScomponent_name: TStringField
      FieldName = 'component_name'
      Size = 50
    end
    object CSparameters: TStringField
      FieldName = 'parameters'
      Size = 100
    end
    object CScomponent_class: TStringField
      FieldName = 'component_class'
      Size = 25
    end
  end
  object DataSource1: TDataSource
    DataSet = CS
    Left = 128
    Top = 104
  end
end
