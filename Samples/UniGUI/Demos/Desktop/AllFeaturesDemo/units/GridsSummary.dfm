object UniGridsSummary: TUniGridsSummary
  Left = 0
  Top = 0
  Width = 816
  Height = 628
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 816
    Height = 628
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 131
    ExplicitTop = 32
    ExplicitWidth = 598
    ExplicitHeight = 561
    DesignSize = (
      816
      628)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 810
      Height = 582
      Hint = ''
      HeaderTitle = 'Grid with Summary'
      HeaderTitleAlign = taCenter
      TitleFont.Style = [fsBold]
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      Summary.Enabled = True
      OnColumnSummary = UniDBGrid1ColumnSummary
      OnColumnSummaryResult = UniDBGrid1ColumnSummaryResult
      Columns = <
        item
          FieldName = 'Item'
          Title.Caption = 'Item'
          Title.Font.Style = [fsBold]
          Width = 148
          Font.Color = clBlack
        end
        item
          FieldName = 'UnitPrice'
          Title.Caption = 'Unit Price'
          Title.Font.Style = [fsBold]
          Width = 154
          Font.Color = clBlack
          ShowSummary = True
        end
        item
          FieldName = 'Quantity'
          Title.Caption = 'Quantity'
          Title.Font.Style = [fsBold]
          Width = 136
          Font.Color = clBlack
          ShowSummary = True
        end>
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 658
      Top = 591
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
    Left = 344
    Top = 368
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = ClientDataSet1NewRecord
    Left = 224
    Top = 272
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
