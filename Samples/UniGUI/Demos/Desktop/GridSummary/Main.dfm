object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 577
  ClientWidth = 727
  Caption = 'Grid Summary Demo'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    727
    577)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 16
    Width = 711
    Height = 521
    Hint = ''
    HeaderTitle = 'Grid with Summary'
    HeaderTitleAlign = taCenter
    TitleFont.Style = [fsBold]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
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
    Left = 564
    Top = 543
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
      560000009619E0BD010000001800000003000000000003000000560004497465
      6D010049000000010005574944544802000200140009556E6974507269636508
      00040000000000085175616E7469747904000100000000000000}
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
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 344
    Top = 368
  end
end
