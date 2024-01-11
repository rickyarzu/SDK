object UniDBGridColumnSorting: TUniDBGridColumnSorting
  Left = 0
  Top = 0
  Width = 685
  Height = 455
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 685
    Height = 455
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    OnColumnSort = UnimDBGrid1ColumnSort
    Columns = <
      item
        Title.Caption = 'CustNo'
        Title.Font.Height = -21
        FieldName = 'CustNo'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Company'
        Title.Font.Height = -21
        FieldName = 'Company'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Addr1'
        Title.Font.Height = -21
        FieldName = 'Addr1'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Addr2'
        Title.Font.Height = -21
        FieldName = 'Addr2'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'City'
        Title.Font.Height = -21
        FieldName = 'City'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'State'
        Title.Font.Height = -21
        FieldName = 'State'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Zip'
        Title.Font.Height = -21
        FieldName = 'Zip'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Country'
        Title.Font.Height = -21
        FieldName = 'Country'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Phone'
        Title.Font.Height = -21
        FieldName = 'Phone'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'FAX'
        Title.Font.Height = -21
        FieldName = 'FAX'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'TaxRate'
        Title.Font.Height = -21
        FieldName = 'TaxRate'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Contact'
        Title.Font.Height = -21
        FieldName = 'Contact'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'LastInvoiceDate'
        Title.Font.Height = -21
        FieldName = 'LastInvoiceDate'
        Width = 64
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end>
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CustNo'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Company'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Addr1'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Addr2'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'City'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'State'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Zip'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Country'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Phone'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'FAX'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TaxRate'
        Attributes = [faUnNamed]
        DataType = ftFloat
      end
      item
        Name = 'Contact'
        Attributes = [faUnNamed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LastInvoiceDate'
        Attributes = [faUnNamed]
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 128
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 200
    Top = 166
  end
end
