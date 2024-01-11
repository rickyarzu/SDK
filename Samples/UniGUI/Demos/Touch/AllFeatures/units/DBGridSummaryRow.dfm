object UniDBGridSummaryRow: TUniDBGridSummaryRow
  Left = 0
  Top = 0
  Width = 480
  Height = 506
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 480
    Height = 506
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    Summary.Enabled = True
    OnColumnSummary = UnimDBGrid1ColumnSummary
    OnColumnSummaryResult = UnimDBGrid1ColumnSummaryResult
    Columns = <
      item
        Title.Caption = 'Item'
        Title.Font.Height = -21
        FieldName = 'Item'
        Width = 156
        ReadOnly = True
        CheckBoxField.FieldValues = 'true;false'
      end
      item
        Title.Caption = 'UnitPrice'
        Title.Font.Height = -21
        FieldName = 'UnitPrice'
        Width = 170
        CheckBoxField.FieldValues = 'true;false'
        ShowSummary = True
      end
      item
        Title.Caption = 'Quantity'
        Title.Font.Height = -21
        FieldName = 'Quantity'
        Width = 148
        CheckBoxField.FieldValues = 'true;false'
        ShowSummary = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 208
    Top = 189
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
    Left = 272
    Top = 181
  end
end
