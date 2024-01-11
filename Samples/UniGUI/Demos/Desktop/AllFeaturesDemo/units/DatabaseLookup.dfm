object UniDatabaseLookup: TUniDatabaseLookup
  Left = 0
  Top = 0
  Width = 774
  Height = 605
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    774
    605)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 768
    Height = 599
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      768
      599)
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
      TabOrder = 0
    end
    object UniLabel2: TUniLabel
      Left = 510
      Top = 16
      Width = 171
      Height = 13
      Hint = ''
      Caption = 'Customer No  (Lookup Combo)'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniLabel3: TUniLabel
      Left = 510
      Top = 75
      Width = 149
      Height = 13
      Hint = ''
      Caption = 'Customer No (Lookup List)'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 2
    end
    object UniLabel4: TUniLabel
      Left = 8
      Top = 339
      Width = 155
      Height = 13
      Hint = ''
      Caption = 'Customers  (Lookup Table )'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 3
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Left = 510
      Top = 35
      Width = 246
      Hint = ''
      ListField = 'CustNo;Contact'
      ListSource = DataSource2
      KeyField = 'CustNo'
      ListFieldIndex = 0
      DataField = 'CustNo'
      DataSource = DataSource1
      Anchors = []
      TabOrder = 4
      Color = clWindow
    end
    object UniDBLookupListBox1: TUniDBLookupListBox
      Left = 510
      Top = 94
      Width = 246
      Height = 446
      Hint = ''
      ListField = 'CustNo;Contact'
      ListSource = DataSource2
      KeyField = 'CustNo'
      ListFieldIndex = 0
      DataField = 'CustNo'
      DataSource = DataSource1
      Anchors = []
      TabOrder = 5
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 113
      Top = 4
      Width = 240
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = []
      TabOrder = 6
    end
    object UniDBGrid2: TUniDBGrid
      Left = 8
      Top = 358
      Width = 496
      Height = 184
      Hint = ''
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      Anchors = []
      TabOrder = 7
      Columns = <
        item
          FieldName = 'CustNo'
          Title.Caption = 'CustNo'
          Width = 64
          Alignment = taRightJustify
        end
        item
          FieldName = 'Company'
          Title.Caption = 'Company'
          Width = 184
        end
        item
          FieldName = 'Contact'
          Title.Caption = 'Contact'
          Width = 124
        end>
    end
    object UniDBGrid1: TUniDBGrid
      Left = 8
      Top = 35
      Width = 496
      Height = 291
      Hint = ''
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      Anchors = []
      TabOrder = 8
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
        end
        item
          FieldName = 'ItemsTotal'
          Title.Caption = 'ItemsTotal'
          Width = 64
        end
        item
          FieldName = 'TaxRate'
          Title.Caption = 'TaxRate'
          Width = 64
        end
        item
          FieldName = 'Freight'
          Title.Caption = 'Freight'
          Width = 64
        end
        item
          FieldName = 'AmountPaid'
          Title.Caption = 'AmountPaid'
          Width = 64
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 323
    Top = 115
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 323
    Top = 203
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 216
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 144
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
