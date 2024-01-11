object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 630
  ClientWidth = 872
  Caption = 'Grid Grouping + Summary + Grand Total Demo'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  DesignSize = (
    872
    630)
  TextHeight = 15
  object UniDBGrid1: TUniDBGrid
    Left = 8
    Top = 8
    Width = 856
    Height = 511
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
    Exporter.Enabled = True
    Exporter.IncludeGroups = True
    Exporter.IncludeSummary = True
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
  object UniButton1: TUniButton
    Left = 216
    Top = 597
    Width = 137
    Height = 25
    Hint = ''
    Caption = 'Export Grid'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 8
    Top = 527
    Width = 185
    Height = 90
    Hint = ''
    Items.Strings = (
      'Excel XLSX'
      'CSV File'
      'HTML'
      'XML File')
    ItemIndex = 0
    Caption = 'Export Type'
    TabOrder = 2
    Columns = 2
  end
  object UniCheckBox1: TUniCheckBox
    Left = 224
    Top = 536
    Width = 129
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Include Groups'
    TabOrder = 3
  end
  object UniCheckBox2: TUniCheckBox
    Left = 224
    Top = 559
    Width = 129
    Height = 17
    Hint = ''
    Checked = True
    Caption = 'Include Summary'
    TabOrder = 4
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      730000009619E0BD010000001800000004000000000003000000730004497465
      6D010049000000010005574944544802000200140009556E6974507269636508
      00040000000000085175616E7469747904000100000000000843617465676F72
      7901004900000001000557494454480200020019000000}
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = ClientDataSet1NewRecord
    Left = 208
    Top = 328
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
    Left = 328
    Top = 360
  end
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 208
    Top = 168
  end
  object UniGridCSVExporter1: TUniGridCSVExporter
    FileExtention = 'csv'
    MimeType = 'text/csv'
    CharSet = 'UTF-8'
    Left = 344
    Top = 168
  end
  object UniGridXMLExporter1: TUniGridXMLExporter
    FileExtention = 'xml'
    MimeType = 'text/xml'
    CharSet = 'UTF-8'
    Left = 200
    Top = 256
  end
  object UniGridHTMLExporter1: TUniGridHTMLExporter
    FileExtention = 'html'
    MimeType = 'text/html'
    CharSet = 'UTF-8'
    Left = 336
    Top = 272
  end
end
