object UniGridsHeaderGrouping: TUniGridsHeaderGrouping
  Left = 0
  Top = 0
  Width = 960
  Height = 629
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 629
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 954
      Height = 623
      Hint = ''
      HeaderTitle = 'Grid Header Grouping'
      HeaderTitleAlign = taCenter
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
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
          Width = 156
        end
        item
          FieldName = 'Country'
          Title.Caption = 'Country'
          Width = 124
          GroupHeader = 'Location'
        end
        item
          FieldName = 'Contact'
          Title.Caption = 'Name'
          Width = 124
          GroupHeader = 'Contact'
        end
        item
          FieldName = 'Addr1'
          Title.Caption = 'Addr1'
          Width = 184
        end
        item
          FieldName = 'Addr2'
          Title.Caption = 'Addr2'
          Width = 184
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 94
          GroupHeader = 'Location'
        end
        item
          FieldName = 'State'
          Title.Caption = 'State'
          Width = 124
          GroupHeader = 'Location'
        end
        item
          FieldName = 'Zip'
          Title.Caption = 'Zip'
          Width = 64
        end
        item
          FieldName = 'Phone'
          Title.Caption = 'Phone'
          Width = 94
          GroupHeader = 'Contact'
        end
        item
          FieldName = 'FAX'
          Title.Caption = 'FAX'
          Width = 94
          GroupHeader = 'Contact'
        end
        item
          FieldName = 'TaxRate'
          Title.Caption = 'TaxRate'
          Width = 64
          Alignment = taRightJustify
        end
        item
          FieldName = 'LastInvoiceDate'
          Title.Caption = 'LastInvoiceDate'
          Width = 112
        end>
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
    Left = 235
    Top = 67
  end
end
