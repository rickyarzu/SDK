object UniGridsHeaderMultipleLevelGrouping: TUniGridsHeaderMultipleLevelGrouping
  Left = 0
  Top = 0
  Width = 896
  Height = 611
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 896
    Height = 611
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    DesignSize = (
      896
      611)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 890
      Height = 574
      Hint = ''
      HeaderTitle = 'Grid Header Multiple Level Grouping'
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
          Alignment = taRightJustify
          GroupHeader = 'Level-0;'
        end
        item
          FieldName = 'Company'
          Title.Caption = 'Company'
          Width = 156
          GroupHeader = 'Level-0'
        end
        item
          FieldName = 'Country'
          Title.Caption = 'Country'
          Width = 124
          GroupHeader = 'Level-0;Level-1;Location'
        end
        item
          FieldName = 'Contact'
          Title.Caption = 'Name'
          Width = 124
          GroupHeader = 'Level-0;Level-1;Level-2;Contact'
        end
        item
          FieldName = 'Addr1'
          Title.Caption = 'Addr1'
          Width = 184
          GroupHeader = 'Level-0;Level-1'
        end
        item
          FieldName = 'Addr2'
          Title.Caption = 'Addr2'
          Width = 184
          GroupHeader = 'Level-0'
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 94
          GroupHeader = 'Level-0;Level-1;Location'
        end
        item
          FieldName = 'State'
          Title.Caption = 'State'
          Width = 124
          GroupHeader = 'Level-0;Level-1;Level-2;Location'
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
          GroupHeader = 'Level-0;Level-1;Contact'
        end
        item
          FieldName = 'FAX'
          Title.Caption = 'FAX'
          Width = 94
          GroupHeader = 'Level-0;Contact'
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
    object UniDBNavigator1: TUniDBNavigator
      Left = 652
      Top = 583
      Width = 241
      Height = 25
      Hint = ''
      DataSource = DataSource1
      IconSet = icsFontAwesome
      Anchors = []
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
    Left = 251
    Top = 51
  end
end
