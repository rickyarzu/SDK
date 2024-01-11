object UniGridsRowGrouping: TUniGridsRowGrouping
  Left = 0
  Top = 0
  Width = 910
  Height = 508
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 508
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 904
      Height = 502
      Hint = ''
      HeaderTitle = 'Grid Grouping Demo'
      HeaderTitleAlign = taCenter
      DataSource = DataSource1
      Grouping.FieldName = 'Country'
      Grouping.FieldCaption = 'Country Group'
      Grouping.Enabled = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
      OnColumnSort = UniDBGrid1ColumnSort
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
        end
        item
          FieldName = 'State'
          Title.Caption = 'State'
          Width = 124
        end
        item
          FieldName = 'Phone'
          Title.Caption = 'Phone'
          Width = 94
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 184
    Top = 144
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 80
  end
end
