object UniGridsExporter: TUniGridsExporter
  Left = 0
  Top = 0
  Width = 951
  Height = 618
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 951
    Height = 618
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    DesignSize = (
      951
      618)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 945
      Height = 516
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
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
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
      Left = 314
      Top = 590
      Width = 137
      Height = 25
      Hint = ''
      Caption = 'Export Grid'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
    end
    object UniRadioGroup1: TUniRadioGroup
      Left = 3
      Top = 525
      Width = 254
      Height = 90
      Hint = ''
      Items.Strings = (
        'Excel XLSX'
        'CSV File'
        'HTML'
        'XML File')
      ItemIndex = 0
      Anchors = [akLeft, akBottom]
      Caption = 'Export Type'
      TabOrder = 3
      Columns = 2
    end
    object UniCheckBox1: TUniCheckBox
      Left = 314
      Top = 544
      Width = 129
      Height = 17
      Hint = ''
      Checked = True
      Caption = 'Include Groups'
      Anchors = [akLeft, akBottom]
      TabOrder = 4
    end
    object UniCheckBox2: TUniCheckBox
      Left = 314
      Top = 567
      Width = 129
      Height = 17
      Hint = ''
      Checked = True
      Caption = 'Include Summary'
      Anchors = [akLeft, akBottom]
      TabOrder = 5
    end
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
