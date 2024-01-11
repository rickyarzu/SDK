object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 353
  ClientWidth = 640
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  DesignOrientation = True
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 640
    Height = 353
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = UniMainModule.DataSource1
    OnColumnSort = UnimDBGrid1ColumnSort
    Columns = <
      item
        Alignment = taRightJustify
        Title.Caption = 'CustNo'
        Title.Font.Height = -21
        FieldName = 'CustNo'
        Width = 114
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Company'
        Title.Font.Height = -21
        FieldName = 'Company'
        Width = 334
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Addr1'
        Title.Font.Height = -21
        FieldName = 'Addr1'
        Width = 334
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Addr2'
        Title.Font.Height = -21
        FieldName = 'Addr2'
        Width = 334
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'City'
        Title.Font.Height = -21
        FieldName = 'City'
        Width = 169
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'State'
        Title.Font.Height = -21
        FieldName = 'State'
        Width = 224
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Zip'
        Title.Font.Height = -21
        FieldName = 'Zip'
        Width = 114
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Country'
        Title.Font.Height = -21
        FieldName = 'Country'
        Width = 224
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Phone'
        Title.Font.Height = -21
        FieldName = 'Phone'
        Width = 169
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'FAX'
        Title.Font.Height = -21
        FieldName = 'FAX'
        Width = 169
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Alignment = taRightJustify
        Title.Caption = 'TaxRate'
        Title.Font.Height = -21
        FieldName = 'TaxRate'
        Width = 114
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'Contact'
        Title.Font.Height = -21
        FieldName = 'Contact'
        Width = 224
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end
      item
        Title.Caption = 'LastInvoiceDate'
        Title.Font.Height = -21
        FieldName = 'LastInvoiceDate'
        Width = 202
        CheckBoxField.FieldValues = 'true;false'
        Sortable = True
      end>
  end
end
