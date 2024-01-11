object UniMainModule: TUniMainModule
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnHandleRequest = UniGUIMainModuleHandleRequest
  Height = 150
  Width = 215
  object CDS: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 56
    Data = {
      B40000009619E0BD010000001800000005000000000003000000B4000954696D
      655374616D70080008000000000004416A617802000300000000000650617261
      6D7304004B000000020007535542545950450200490005005465787400055749
      445448020002008000074865616465727304004B000000020007535542545950
      450200490005005465787400055749445448020002008000094576656E744E61
      6D6501004900000001000557494454480200020019000000}
    object CDSTimeStamp: TDateTimeField
      FieldName = 'TimeStamp'
    end
    object CDSAjax: TBooleanField
      FieldName = 'Ajax'
    end
    object CDSParams: TMemoField
      FieldName = 'Params'
      BlobType = ftMemo
      Size = 128
    end
    object CDSHeaders: TMemoField
      FieldName = 'Headers'
      BlobType = ftMemo
      Size = 128
    end
    object CDSEventName: TStringField
      FieldName = 'EventName'
      Size = 25
    end
  end
end
