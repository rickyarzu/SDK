object UniGridsColumnLockingAndHeaderGrouping: TUniGridsColumnLockingAndHeaderGrouping
  Left = 0
  Top = 0
  Width = 993
  Height = 580
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 580
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 25
    ExplicitWidth = 929
    ExplicitHeight = 513
    DesignSize = (
      993
      580)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 987
      Height = 531
      Hint = ''
      HeaderTitle = 'Grid Column Locking - Header Grouping'
      HeaderTitleAlign = taCenter
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Columns = <
        item
          FieldName = 'CustNo'
          Title.Caption = 'CustNo'
          Width = 64
          ReadOnly = True
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Company'
          Title.Caption = 'Company'
          Width = 156
          ReadOnly = True
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Country'
          Title.Caption = 'Country'
          Width = 124
          GroupHeader = 'Location'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'IsUS'
          Title.Caption = 'US Company'
          Width = 89
          ReadOnly = True
          CheckBoxField.DisplayValues = 'Yes;No'
          Locked = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Contact'
          Title.Caption = 'Name'
          Width = 124
          GroupHeader = 'Contact'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Addr1'
          Title.Caption = 'Addr1'
          Width = 184
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Addr2'
          Title.Caption = 'Addr2'
          Width = 184
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 94
          GroupHeader = 'Location'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'State'
          Title.Caption = 'State'
          Width = 124
          GroupHeader = 'Location'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Zip'
          Title.Caption = 'Zip'
          Width = 64
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Phone'
          Title.Caption = 'Phone'
          Width = 94
          GroupHeader = 'Contact'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'FAX'
          Title.Caption = 'FAX'
          Width = 94
          GroupHeader = 'Contact'
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'TaxRate'
          Title.Caption = 'TaxRate'
          Width = 64
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'LastInvoiceDate'
          Title.Caption = 'LastInvoiceDate'
          Width = 112
          Menu.MenuEnabled = False
        end>
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 747
      Top = 549
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 296
    Top = 184
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = ClientDataSet1CalcFields
    Left = 232
    Top = 224
    object ClientDataSet1CustNo: TFloatField
      FieldName = 'CustNo'
    end
    object ClientDataSet1Company: TStringField
      FieldName = 'Company'
      Size = 30
    end
    object ClientDataSet1Addr1: TStringField
      FieldName = 'Addr1'
      Size = 30
    end
    object ClientDataSet1Addr2: TStringField
      FieldName = 'Addr2'
      Size = 30
    end
    object ClientDataSet1City: TStringField
      FieldName = 'City'
      Size = 15
    end
    object ClientDataSet1State: TStringField
      FieldName = 'State'
    end
    object ClientDataSet1Zip: TStringField
      FieldName = 'Zip'
      Size = 10
    end
    object ClientDataSet1Country: TStringField
      FieldName = 'Country'
    end
    object ClientDataSet1Phone: TStringField
      FieldName = 'Phone'
      Size = 15
    end
    object ClientDataSet1FAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object ClientDataSet1TaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object ClientDataSet1Contact: TStringField
      FieldName = 'Contact'
    end
    object ClientDataSet1LastInvoiceDate: TDateTimeField
      FieldName = 'LastInvoiceDate'
    end
    object ClientDataSet1IsUS: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'IsUS'
      Calculated = True
    end
  end
end
