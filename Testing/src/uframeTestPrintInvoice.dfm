object frameTestPrintInvoice: TframeTestPrintInvoice
  Left = 0
  Top = 0
  Width = 1392
  Height = 605
  TabOrder = 0
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
    Height = 290
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsHeads
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'in_out'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_year'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_number'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dest_name'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dest_address'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dest_postal_code'
        Title.Caption = 'zip code'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dest_town'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dest_state_province'
        Title.Caption = 'State/Prov.'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'anagraph_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'currency_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_terms_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_terms_des'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'package_description'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'payment_term_code'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'folder_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'net_amount'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'financial_year'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_origin_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'delivery_vat_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'delivery_vat_rate'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'accounted'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'insert_date'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'update_date'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'delivery_due_date'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'po_number_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'po_number'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'printed'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact_name'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact_email'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'contact_phone'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'office_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'warehouse_location_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jguid'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'db_schema_id'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'purchase_order_number'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'doc_ref_code'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'carrier_expenses'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'registry_code'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'carrier_tracking_number'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'carrier_expenses_currency_id'
        Width = 64
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
        FieldName = 'location_name'
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
        FieldName = 'holder_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'holder_name'
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
    Top = 377
    Width = 753
    Height = 210
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dsRows
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
    Top = 377
    Width = 356
    Height = 210
    Anchors = [akRight, akBottom]
    DataSource = dsVAT
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
    DataField = 'calc_dest_full_Address'
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
    Left = 1214
    Top = 54
    Width = 157
    Height = 21
    Anchors = [akTop, akRight]
    CharCase = ecUpperCase
    TabOrder = 8
    TextHint = 'Enter Search Text'
    OnChange = Edit1Change
    ExplicitLeft = 1249
  end
  object DBMemo2: TDBMemo
    Left = 787
    Top = 498
    Width = 223
    Height = 89
    Anchors = [akRight, akBottom]
    DataField = 'description'
    DataSource = dsRows
    TabOrder = 9
    ExplicitLeft = 821
  end
  object DBNavigator2: TDBNavigator
    Left = 783
    Top = 377
    Width = 224
    Height = 33
    DataSource = dsHeads
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Anchors = [akTop, akRight]
    TabOrder = 10
    ExplicitLeft = 817
  end
  object btnEditDocument: TButton
    Left = 282
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Edit'
    Enabled = False
    TabOrder = 11
  end
  object btnAddDocument: TButton
    Left = 351
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Add'
    Enabled = False
    TabOrder = 12
  end
  object JvDBLookupCombo1: TJvDBLookupCombo
    Left = 1214
    Top = 27
    Width = 157
    Height = 21
    Anchors = [akTop, akRight]
    LookupField = 'id'
    LookupDisplay = 'description'
    LookupSource = dsDocumentTypes
    TabOrder = 13
    OnCloseUp = JvDBLookupCombo1CloseUp
    ExplicitLeft = 1249
  end
  object btnDel: TButton
    Left = 213
    Top = 3
    Width = 63
    Height = 33
    Caption = 'Del'
    Enabled = False
    TabOrder = 14
    OnClick = btnPrintClick
  end
  object DBMemo3: TDBMemo
    Left = 863
    Top = 3
    Width = 346
    Height = 72
    Anchors = [akLeft, akTop, akRight]
    DataField = 'calc_holder_full_address'
    DataSource = dsHeads
    TabOrder = 15
    ExplicitWidth = 380
  end
  object dsHeads: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocHeads
    Left = 312
    Top = 192
  end
  object dsRows: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocRows
    Left = 304
    Top = 408
  end
  object dsVAT: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryVatAmounts
    Left = 600
    Top = 328
  end
  object dsDocumentTypes: TDataSource
    DataSet = dmJanuaPgDocumentsStorage.qryDocType
    Left = 632
    Top = 224
  end
end
