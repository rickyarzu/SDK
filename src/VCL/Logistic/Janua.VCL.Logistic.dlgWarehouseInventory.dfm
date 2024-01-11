object dlgVCLWarehouseInventory: TdlgVCLWarehouseInventory
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Warehouse Inventory'
  ClientHeight = 629
  ClientWidth = 1112
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object pnlBottom: TPanel
    Left = 0
    Top = 582
    Width = 1112
    Height = 47
    Align = alBottom
    TabOrder = 0
    object btnOK: TButton
      Left = 992
      Top = 14
      Width = 107
      Height = 25
      Caption = 'OK'
      TabOrder = 0
    end
    object btnCancel: TButton
      Left = 864
      Top = 14
      Width = 107
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
  object grdWarehouseList: TCRDBGrid
    Left = 0
    Top = 57
    Width = 1112
    Height = 525
    Align = alClient
    DataSource = dsInventoryList
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
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
  object pnlWarehouseList: TPanel
    Left = 0
    Top = 0
    Width = 1112
    Height = 57
    Align = alTop
    TabOrder = 2
    object lbWarehouse: TLabel
      Left = 252
      Top = 8
      Width = 65
      Height = 17
      Caption = 'Warehouse'
    end
    object navWarehouseList: TDBNavigator
      Left = 1
      Top = 1
      Width = 176
      Height = 55
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
    object lkpWarehouses: TJvDBLookupCombo
      Left = 252
      Top = 29
      Width = 225
      Height = 27
      LookupField = 'anagraph_id'
      LookupDisplay = 'an_last_name'
      LookupSource = dsWarehouses
      TabOrder = 1
    end
    object lkpShipperSuppliers: TJvDBLookupCombo
      Left = 483
      Top = 29
      Width = 281
      Height = 27
      LookupField = 'anagraph_id'
      LookupDisplay = 'an_last_name'
      LookupSource = dsSuppliers
      TabOrder = 2
    end
    object lkpVesselsLocations: TJvDBLookupCombo
      Left = 770
      Top = 29
      Width = 201
      Height = 27
      LookupField = 'location_name'
      LookupDisplay = 'location_name'
      LookupSource = dsVesselsLocations
      TabOrder = 3
    end
    object Button1: TButton
      Left = 177
      Top = 1
      Width = 69
      Height = 55
      Align = alLeft
      Caption = 'Filter'
      TabOrder = 4
      OnClick = Button1Click
    end
    object ckbShipperSupplier: TCheckBox
      Left = 483
      Top = 6
      Width = 281
      Height = 17
      Caption = 'Supplier (Shipper)'
      TabOrder = 5
    end
    object ckbVesselLocation: TCheckBox
      Left = 770
      Top = 6
      Width = 201
      Height = 17
      Caption = 'Vessel (Location)'
      TabOrder = 6
    end
  end
  object dsWarehouses: TDataSource
    DataSet = dmPgWarehouseList.qryWarehouses
    Left = 464
    Top = 120
  end
  object dsVesselsLocations: TDataSource
    DataSet = dmPgWarehouseList.qryLocations
    Left = 584
    Top = 176
  end
  object dsSuppliers: TDataSource
    DataSet = dmPgWarehouseList.qrySuppliers
    Left = 464
    Top = 208
  end
  object dsInventoryList: TDataSource
    DataSet = dmPgWarehouseList.qryInventoryList
    Left = 352
    Top = 160
  end
end
