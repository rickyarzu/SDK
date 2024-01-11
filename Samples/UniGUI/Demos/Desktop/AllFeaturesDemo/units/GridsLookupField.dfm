object UniGridsLookupField: TUniGridsLookupField
  Left = 0
  Top = 0
  Width = 1016
  Height = 729
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 729
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 83
    ExplicitTop = 87
    ExplicitWidth = 857
    ExplicitHeight = 555
    DesignSize = (
      1016
      729)
    object UniDBNavigator1: TUniDBNavigator
      Left = 773
      Top = 3
      Width = 240
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = [akTop, akRight]
      TabOrder = 0
    end
    object UniLabel1: TUniLabel
      Left = 8
      Top = 15
      Width = 38
      Height = 13
      Hint = ''
      Caption = 'Orders'
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 34
      Width = 1010
      Height = 692
      Hint = ''
      HeaderTitle = 'Grid LookUp Field'
      DataSource = DataSource1
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Columns = <
        item
          FieldName = 'OrderNo'
          Title.Caption = 'OrderNo'
          Width = 64
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'CustNo'
          Title.Caption = 'CustNo'
          Width = 64
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Lookup'
          Title.Caption = 'Lookup Field (Capital)'
          Width = 124
          Color = 12713921
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'ShipToCountry'
          Title.Caption = 'ShipToCountry'
          Width = 124
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'SaleDate'
          Title.Caption = 'SaleDate'
          Width = 112
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'ShipDate'
          Title.Caption = 'ShipDate'
          Width = 126
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'EmpNo'
          Title.Caption = 'EmpNo'
          Width = 64
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Terms'
          Title.Caption = 'Terms'
          Width = 40
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'PaymentMethod'
          Title.Caption = 'PaymentMethod'
          Width = 82
          Menu.MenuEnabled = False
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 355
    Top = 139
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 379
    Top = 267
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 256
    object ClientDataSet2Name: TStringField
      FieldName = 'Name'
      Size = 24
    end
    object ClientDataSet2Capital: TStringField
      FieldName = 'Capital'
      Size = 24
    end
    object ClientDataSet2Continent: TStringField
      FieldName = 'Continent'
      Size = 24
    end
    object ClientDataSet2Area: TFloatField
      FieldName = 'Area'
    end
    object ClientDataSet2Population: TFloatField
      FieldName = 'Population'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 184
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
    object ClientDataSet1Lookup: TStringField
      FieldKind = fkLookup
      FieldName = 'Lookup'
      LookupDataSet = ClientDataSet2
      LookupKeyFields = 'Name'
      LookupResultField = 'Capital'
      KeyFields = 'ShipToCountry'
      Lookup = True
    end
  end
end
