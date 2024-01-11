object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 632
  ClientWidth = 703
  Caption = 'Grid Grouping + Summary + Grand Total Demo'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    703
    632)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 8
    Width = 687
    Height = 587
    Hint = ''
    HeaderTitle = 'Grid with Grouping & Summary'
    HeaderTitleAlign = taCenter
    TitleFont.Style = [fsBold]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    Grouping.FieldName = 'Category'
    Grouping.Enabled = True
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Summary.Enabled = True
    Summary.GrandTotal = True
    Summary.GrandTotalAlign = taBottom
    OnColumnSort = UniDBGrid1ColumnSort
    OnColumnSummary = UniDBGrid1ColumnSummary
    OnColumnSummaryResult = UniDBGrid1ColumnSummaryResult
    OnColumnSummaryTotal = UniDBGrid1ColumnSummaryTotal
    Columns = <
      item
        FieldName = 'Item'
        Title.Caption = 'Item'
        Title.Font.Style = [fsBold]
        Width = 190
      end
      item
        FieldName = 'UnitPrice'
        Title.Caption = 'UnitPrice'
        Title.Font.Style = [fsBold]
        Width = 194
        ShowSummary = True
      end
      item
        FieldName = 'Quantity'
        Title.Caption = 'Quantity'
        Title.Font.Style = [fsBold]
        Width = 151
        ShowSummary = True
      end
      item
        FieldName = 'Category'
        Title.Caption = 'Category'
        Title.Font.Style = [fsBold]
        Width = 0
        Visible = False
      end>
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 540
    Top = 601
    Width = 155
    Height = 25
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbInsert, nbDelete, nbPost, nbCancel]
    Anchors = [akRight, akBottom]
    TabOrder = 1
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = ClientDataSet1NewRecord
    Left = 304
    Top = 368
    Data = {
      730000009619E0BD010000001800000004000000000003000000730004497465
      6D010049000000010005574944544802000200140009556E6974507269636508
      00040000000000085175616E7469747904000100000000000843617465676F72
      7901004900000001000557494454480200020019000000}
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
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 344
    Top = 368
  end
end
