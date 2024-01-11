object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 503
  ClientWidth = 864
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniStringGrid1: TUniStringGrid
    Left = 136
    Top = 8
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
    Left = 136
    Top = 232
    Width = 529
    Height = 231
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    TabOrder = 1
    OnFieldImage = UniDBGrid1FieldImage
    OnDrawColumnCell = UniDBGrid1DrawColumnCell
    Columns = <
      item
        FieldName = 'Item'
        Title.Caption = 'Item'
        Width = 124
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'UnitPrice'
        Title.Caption = 'UnitPrice'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        FieldName = 'Quantity'
        Title.Caption = 'Quantity'
        Width = 128
        ReadOnly = True
        CheckBoxField.FieldValues = 'true;false'
        ImageOptions.Visible = True
        ImageOptions.Width = 128
      end>
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 320
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
    Left = 464
    Top = 312
  end
end
