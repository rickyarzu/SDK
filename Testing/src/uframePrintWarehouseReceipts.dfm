object framePrintWarehouseReceipts: TframePrintWarehouseReceipts
  Left = 0
  Top = 0
  Width = 1392
  Height = 605
  TabOrder = 0
  PixelsPerInch = 96
  DesignSize = (
    1392
    605)
  object btnStartTest: TButton
    Left = 26
    Top = 3
    Width = 111
    Height = 33
    Caption = 'Start Test'
    TabOrder = 0
    OnClick = btnStartTestClick
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 81
    Width = 1348
    Height = 306
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsHeads
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_date'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_year'
        Title.Caption = 'Year'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_number'
        Title.Caption = 'Number'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dest_name'
        Title.Caption = 'Warehouse'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'location_name'
        Title.Caption = 'Location (Vessel)'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'holder_name'
        Title.Caption = 'Supplier (Shipper)'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'package_description'
        Title.Caption = 'Package Description'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'po_number'
        Title.Caption = 'P.O. Number'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'carrier_expenses'
        Title.Caption = 'Carrier Expense'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'carrier_tracking_number'
        Title.Caption = 'Tracking Number'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'search_index'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'carrier_name'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'goods_type_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'importexport'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'holder_town'
        Width = 64
        Visible = True
      end>
  end
  object grdRows: TDBGrid
    Left = 24
    Top = 432
    Width = 977
    Height = 155
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dsRows
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'position'
        Title.Caption = 'Pos.'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'row_date'
        Title.Caption = 'Date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'code'
        Title.Caption = 'Code'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = 'Item Name (Model)'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = 'Unit Price'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vat_description'
        Title.Caption = 'Vat Code'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vat_rate'
        Title.Caption = 'Vat. Rate'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'disc. %'
        Title.Caption = 'Disc. %'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'quantity'
        Title.Caption = 'Qty.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 1016
    Top = 432
    Width = 356
    Height = 155
    Anchors = [akRight, akBottom]
    DataSource = dsVAT
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'vat_code'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vat_description'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'taxable_amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'taxes'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'vat_rate'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Width = 64
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 26
    Top = 42
    Width = 250
    Height = 33
    DataSource = dsHeads
    TabOrder = 4
  end
  object btnPrint: TButton
    Left = 143
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Print'
    Enabled = False
    TabOrder = 5
    OnClick = btnPrintClick
  end
  object DBMemo1: TDBMemo
    Left = 416
    Top = 3
    Width = 441
    Height = 72
    DataField = 'calc_holder_full_address'
    DataSource = dsHeads
    TabOrder = 6
  end
  object DBEdit1: TDBEdit
    Left = 282
    Top = 54
    Width = 128
    Height = 21
    DataField = 'calc_number'
    DataSource = dsHeads
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 863
    Top = 54
    Width = 508
    Height = 21
    Anchors = [akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 8
    TextHint = 'Enter Search Text'
    OnChange = Edit1Change
  end
  object DBNavigator2: TDBNavigator
    Left = 26
    Top = 393
    Width = 224
    Height = 33
    DataSource = dsHeads
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Anchors = [akLeft, akBottom]
    TabOrder = 9
  end
  object btnEditDocument: TButton
    Left = 282
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Edit'
    Enabled = False
    TabOrder = 10
  end
  object btnAddDocument: TButton
    Left = 351
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Add'
    Enabled = False
    TabOrder = 11
  end
  object btnDel: TButton
    Left = 213
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Del'
    Enabled = False
    TabOrder = 12
    OnClick = btnPrintClick
  end
  object DBMemo3: TDBMemo
    Left = 863
    Top = 3
    Width = 508
    Height = 45
    Anchors = [akLeft, akTop, akRight]
    DataField = 'location_name'
    DataSource = dsHeads
    TabOrder = 13
  end
  object DBNavigator3: TDBNavigator
    Left = 1016
    Top = 393
    Width = 224
    Height = 33
    DataSource = dsHeads
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Anchors = [akLeft, akBottom]
    TabOrder = 14
  end
  object dsHeads: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocHeads
    Left = 392
    Top = 384
  end
  object dsRows: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocRows
    Left = 312
    Top = 384
  end
  object dsVAT: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryVatAmounts
    Left = 488
    Top = 384
  end
  object dsDocumentTypes: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocType
    Left = 576
    Top = 384
  end
end
