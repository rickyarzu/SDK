object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 553
  ClientWidth = 841
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 841
    Height = 553
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColumnMove, dgColLines, dgRowLines, dgConfirmDelete, dgTabs]
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
    OnColumnSort = UniDBGrid1ColumnSort
    Columns = <
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'Company'
        Title.Caption = 'Company'
        Width = 184
        Sortable = True
      end
      item
        FieldName = 'Addr1'
        Title.Caption = 'Addr1'
        Width = 184
        Sortable = True
      end
      item
        FieldName = 'Addr2'
        Title.Caption = 'Addr2'
        Width = 184
        Sortable = True
      end
      item
        FieldName = 'City'
        Title.Caption = 'City'
        Width = 94
        Sortable = True
      end
      item
        FieldName = 'State'
        Title.Caption = 'State'
        Width = 124
        Sortable = True
      end
      item
        FieldName = 'Zip'
        Title.Caption = 'Zip'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'Country'
        Title.Caption = 'Country'
        Width = 124
        Sortable = True
      end
      item
        FieldName = 'Phone'
        Title.Caption = 'Phone'
        Width = 94
        Sortable = True
      end
      item
        FieldName = 'FAX'
        Title.Caption = 'FAX'
        Width = 94
        Sortable = True
      end
      item
        FieldName = 'TaxRate'
        Title.Caption = 'TaxRate'
        Width = 64
        Sortable = True
      end
      item
        FieldName = 'Contact'
        Title.Caption = 'Contact'
        Width = 124
        Sortable = True
      end
      item
        FieldName = 'LastInvoiceDate'
        Title.Caption = 'LastInvoiceDate'
        Width = 112
        Sortable = True
      end>
  end
end
