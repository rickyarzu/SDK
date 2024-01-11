object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 548
  ClientWidth = 699
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 312
    Top = 24
    Width = 64
    Height = 16
    Hint = ''
    Caption = 'StringGrid'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniLabel2: TUniLabel
    Left = 312
    Top = 269
    Width = 42
    Height = 16
    Hint = ''
    Caption = 'DBGrid'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object UniStringGrid1: TUniStringGrid
    Left = 72
    Top = 48
    Width = 529
    Height = 209
    Hint = ''
    FixedCols = 0
    FixedRows = 0
    RowCount = 8
    ColCount = 8
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    Columns = <>
    OnDrawCell = UniStringGrid1DrawCell
    TabOrder = 0
  end
  object UniDBGrid1: TUniDBGrid
    Left = 72
    Top = 288
    Width = 529
    Height = 221
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    TabOrder = 1
    OnDrawColumnCell = UniDBGrid1DrawColumnCell
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 481
    Top = 515
    Width = 120
    Height = 25
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 2
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 368
    Data = {
      560000009619E0BD010000001800000003000000000003000000560004497465
      6D010049000000010005574944544802000200140009556E6974507269636508
      00040000000000085175616E7469747904000100000000000000}
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
