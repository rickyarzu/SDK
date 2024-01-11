object UniMainModule: TUniMainModule
  OldCreateOrder = False
  RecallLastTheme = True
  BrowserOptions = [boDisableMouseRightClick]
  MonitoredKeys.Keys = <>
  Height = 276
  Width = 353
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 112
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 40
    object ClientDataSet1OrderNo: TFloatField
      FieldName = 'OrderNo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ClientDataSet1CustNo: TFloatField
      FieldName = 'CustNo'
      Required = True
    end
    object ClientDataSet1SaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object ClientDataSet1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object ClientDataSet1EmpNo: TIntegerField
      FieldName = 'EmpNo'
      Required = True
    end
    object ClientDataSet1ShipToContact: TStringField
      FieldName = 'ShipToContact'
    end
    object ClientDataSet1ShipToAddr1: TStringField
      FieldName = 'ShipToAddr1'
      Size = 30
    end
    object ClientDataSet1ShipToAddr2: TStringField
      FieldName = 'ShipToAddr2'
      Size = 30
    end
    object ClientDataSet1ShipToCity: TStringField
      FieldName = 'ShipToCity'
      Size = 15
    end
    object ClientDataSet1ShipToState: TStringField
      FieldName = 'ShipToState'
    end
    object ClientDataSet1ShipToZip: TStringField
      FieldName = 'ShipToZip'
      Size = 10
    end
    object ClientDataSet1ShipToCountry: TStringField
      FieldName = 'ShipToCountry'
    end
    object ClientDataSet1ShipToPhone: TStringField
      FieldName = 'ShipToPhone'
      Size = 15
    end
    object ClientDataSet1ShipVIA: TStringField
      FieldName = 'ShipVIA'
      Size = 7
    end
    object ClientDataSet1PO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object ClientDataSet1Terms: TStringField
      FieldName = 'Terms'
      Size = 6
    end
    object ClientDataSet1PaymentMethod: TStringField
      FieldName = 'PaymentMethod'
      Size = 7
    end
    object ClientDataSet1ItemsTotal: TCurrencyField
      FieldName = 'ItemsTotal'
    end
    object ClientDataSet1TaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object ClientDataSet1Freight: TCurrencyField
      FieldName = 'Freight'
    end
    object ClientDataSet1AmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 64
    Top = 40
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 64
    Top = 112
  end
end
