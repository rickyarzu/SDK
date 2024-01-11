object UniGridsRowGroupingSummary: TUniGridsRowGroupingSummary
  Left = 0
  Top = 0
  Width = 833
  Height = 720
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 833
    Height = 720
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 139
    ExplicitTop = 19
    ExplicitWidth = 529
    ExplicitHeight = 654
    DesignSize = (
      833
      720)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 827
      Height = 680
      Hint = ''
      HeaderTitle = 'Grid with Grouping & Summary'
      HeaderTitleAlign = taCenter
      TitleFont.Style = [fsBold]
      DataSource = DataSource1
      WebOptions.Paged = False
      Grouping.FieldName = 'Category'
      Grouping.Enabled = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Summary.Enabled = True
      OnColumnSort = UniDBGrid1ColumnSort
      OnColumnSummary = UniDBGrid1ColumnSummary
      OnColumnSummaryResult = UniDBGrid1ColumnSummaryResult
      Columns = <
        item
          FieldName = 'Item'
          Title.Caption = 'Item'
          Title.Font.Style = [fsBold]
          Width = 148
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'UnitPrice'
          Title.Caption = 'UnitPrice'
          Title.Font.Style = [fsBold]
          Width = 160
          ShowSummary = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Quantity'
          Title.Caption = 'Quantity'
          Title.Font.Style = [fsBold]
          Width = 151
          ShowSummary = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Category'
          Title.Caption = 'Category'
          Title.Font.Style = [fsBold]
          Width = 0
          Visible = False
          Menu.MenuEnabled = False
        end>
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 672
      Top = 690
      Width = 155
      Height = 25
      Hint = ''
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabOrder = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 384
    Top = 392
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = ClientDataSet1NewRecord
    Left = 304
    Top = 368
    object ClientDataSet1Col1: TStringField
      DisplayWidth = 24
      FieldName = 'Item'
    end
    object ClientDataSet1UnitPrice: TFloatField
      DisplayWidth = 22
      FieldName = 'UnitPrice'
      currency = True
    end
    object ClientDataSet1Quantity: TIntegerField
      DisplayWidth = 22
      FieldName = 'Quantity'
    end
    object ClientDataSet1Category: TStringField
      FieldName = 'Category'
      Size = 25
    end
  end
end
