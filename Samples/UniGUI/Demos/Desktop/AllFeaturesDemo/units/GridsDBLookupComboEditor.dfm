object UniGridsDBLookupComboEditor: TUniGridsDBLookupComboEditor
  Left = 0
  Top = 0
  Width = 842
  Height = 541
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    842
    541)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 830
    Height = 526
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      830
      526)
    object UniDBNavigator1: TUniDBNavigator
      Left = 113
      Top = 4
      Width = 240
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = []
      TabOrder = 0
    end
    object UniLabel1: TUniLabel
      Left = 8
      Top = 16
      Width = 38
      Height = 13
      Hint = ''
      Caption = 'Orders'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniDBGrid1: TUniDBGrid
      Left = 10
      Top = 35
      Width = 817
      Height = 486
      Hint = ''
      HeaderTitle = 'Grid With DBLookupComboBox'
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      Anchors = []
      TabOrder = 2
      Columns = <
        item
          FieldName = 'OrderNo'
          Title.Caption = 'OrderNo'
          Width = 64
        end
        item
          FieldName = 'CustNo'
          Title.Caption = 'CustNo'
          Width = 64
        end
        item
          FieldName = 'ShipToCountry'
          Title.Caption = 'ShipToCountry'
          Width = 128
          Color = 12320733
          Editor = UniDBLookupComboBox1
        end
        item
          FieldName = 'SaleDate'
          Title.Caption = 'SaleDate'
          Width = 112
        end
        item
          FieldName = 'ShipDate'
          Title.Caption = 'ShipDate'
          Width = 112
        end
        item
          FieldName = 'EmpNo'
          Title.Caption = 'EmpNo'
          Width = 64
        end
        item
          FieldName = 'Terms'
          Title.Caption = 'Terms'
          Width = 40
        end
        item
          FieldName = 'PaymentMethod'
          Title.Caption = 'PaymentMethod'
          Width = 82
        end>
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 568
      Top = 144
      Width = 201
      Height = 265
      Hint = ''
      Visible = True
      DesignSize = (
        201
        265)
      object UniDBLookupComboBox1: TUniDBLookupComboBox
        Left = 24
        Top = 24
        Width = 145
        Hint = ''
        ListFormat = '%s (%s - %s)'
        ListField = 'Name;Capital;Continent'
        ListSource = DataSource2
        KeyField = 'Name'
        ListFieldIndex = 0
        Anchors = []
        TabOrder = 0
        Color = clWindow
        MatchFieldWidth = False
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 355
    Top = 91
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 347
    Top = 187
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 192
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
    Top = 120
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
end
