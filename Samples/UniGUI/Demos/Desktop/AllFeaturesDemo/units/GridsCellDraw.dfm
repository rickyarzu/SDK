object UniGridsCellDraw: TUniGridsCellDraw
  Left = 0
  Top = 0
  Width = 706
  Height = 606
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    706
    606)
  object UniContainerPanel1: TUniContainerPanel
    Left = 40
    Top = 40
    Width = 625
    Height = 537
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 280
      Top = 8
      Width = 64
      Height = 16
      Hint = ''
      Caption = 'StringGrid'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 0
    end
    object UniLabel2: TUniLabel
      Left = 280
      Top = 250
      Width = 42
      Height = 16
      Hint = ''
      Caption = 'DBGrid'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object UniStringGrid1: TUniStringGrid
      Left = 21
      Top = 32
      Width = 529
      Height = 209
      Hint = ''
      FixedCols = 0
      FixedRows = 0
      RowCount = 8
      ColCount = 8
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      Columns = <>
      HeaderTitle = 'Cell Draw StringGrid'
      OnDrawCell = UniStringGrid1DrawCell
      TabOrder = 2
    end
    object UniDBGrid1: TUniDBGrid
      Left = 21
      Top = 267
      Width = 529
      Height = 221
      Hint = ''
      HeaderTitle = 'Cell Draw DbGrid'
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      TabOrder = 3
      OnDrawColumnCell = UniDBGrid1DrawColumnCell
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 430
      Top = 494
      Width = 120
      Height = 25
      Hint = ''
      DataSource = DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
      IconSet = icsFontAwesome
      TabOrder = 4
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 368
    object ClientDataSet1Col1: TStringField
      FieldName = 'Item'
    end
    object ClientDataSet1UnitPrice: TFloatField
      FieldName = 'UnitPrice'
      currency = True
    end
    object ClientDataSet1Quantity: TIntegerField
      FieldName = 'Quantity'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 400
    Top = 360
  end
end
