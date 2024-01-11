inherited frmVCLLogisticWarehouseList: TfrmVCLLogisticWarehouseList
  Caption = 'Warehouse List'
  ClientHeight = 628
  ClientWidth = 1242
  Font.Height = -12
  OnCreate = FormCreate
  ExplicitWidth = 1258
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 15
  object pnlWarehouseList: TPanel
    Left = 0
    Top = 0
    Width = 1242
    Height = 57
    Align = alTop
    TabOrder = 0
    object lbWarehouse: TLabel
      Left = 407
      Top = 8
      Width = 59
      Height = 15
      Caption = 'Warehouse'
    end
    object navWarehouseList: TDBNavigator
      Left = 1
      Top = 1
      Width = 264
      Height = 55
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
    object lkpWarehouses: TJvDBLookupCombo
      Left = 407
      Top = 29
      Width = 225
      Height = 22
      LookupField = 'anagraph_id'
      LookupDisplay = 'an_last_name'
      LookupSource = dsWarehouses
      TabOrder = 1
    end
    object lkpShipperSuppliers: TJvDBLookupCombo
      Left = 638
      Top = 29
      Width = 281
      Height = 22
      LookupField = 'anagraph_id'
      LookupDisplay = 'an_last_name'
      LookupSource = dsSuppliers
      TabOrder = 2
    end
    object lkpVesselsLocations: TJvDBLookupCombo
      Left = 925
      Top = 29
      Width = 201
      Height = 22
      LookupField = 'location_name'
      LookupDisplay = 'location_name'
      LookupSource = dsVesselsLocations
      TabOrder = 3
    end
    object Button1: TButton
      Left = 265
      Top = 1
      Width = 69
      Height = 55
      Align = alLeft
      Caption = 'Filter'
      TabOrder = 4
      OnClick = Button1Click
    end
    object btnPrint: TButton
      Left = 334
      Top = 1
      Width = 67
      Height = 55
      Align = alLeft
      Caption = 'Print'
      TabOrder = 5
      OnClick = btnPrintClick
    end
    object ckbShipperSupplier: TCheckBox
      Left = 638
      Top = 6
      Width = 281
      Height = 17
      Caption = 'Supplier (Shipper)'
      TabOrder = 6
    end
    object ckbVesselLocation: TCheckBox
      Left = 925
      Top = 6
      Width = 201
      Height = 17
      Caption = 'Vessel (Location)'
      TabOrder = 7
    end
    object ckbInInventory: TCheckBox
      Left = 1141
      Top = 20
      Width = 84
      Height = 17
      Caption = 'In Inventory'
      TabOrder = 8
    end
  end
  object grdWarehouseList: TCRDBGrid
    Left = 0
    Top = 57
    Width = 1242
    Height = 571
    Align = alClient
    DataSource = dsInventoryList
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'row_date'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'model'
        Title.Caption = 'Item / Commodity Description'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'price'
        Title.Caption = 'Price'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'delivered_qty'
        Title.Caption = 'Deliv. Qty.'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'inventory_qty'
        Title.Caption = 'Inv. Qty.'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'holder_name'
        Title.Caption = 'Supplier (Shipper) Name'
        Width = 304
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'location_name'
        Title.Caption = 'Location / Vessel'
        Width = 772
        Visible = True
      end>
  end
  object dsWarehouses: TDataSource
    DataSet = dmPgWarehouseList.qryWarehouses
    Left = 464
    Top = 120
  end
  object dsInventoryList: TDataSource
    DataSet = dmPgWarehouseList.qryInventoryList
    Left = 352
    Top = 160
  end
  object dsSuppliers: TDataSource
    DataSet = dmPgWarehouseList.qrySuppliers
    Left = 464
    Top = 208
  end
  object dsVesselsLocations: TDataSource
    DataSet = dmPgWarehouseList.qryLocations
    Left = 584
    Top = 176
  end
end
