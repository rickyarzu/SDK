inherited frameVCLLogisticReceipt: TframeVCLLogisticReceipt
  Width = 1306
  Height = 236
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 1306
  ExplicitHeight = 236
  PixelsPerInch = 96
  object grpImportExport: TRadioGroup
    Left = 16
    Top = 3
    Width = 113
    Height = 70
    Caption = 'Operation Type'
    Items.Strings = (
      'Import'
      'Export')
    TabOrder = 0
  end
  object grpTypeOfGoods: TGroupBox
    Left = 135
    Top = 3
    Width = 185
    Height = 70
    Caption = 'Type of Goods'
    TabOrder = 1
    object cboTypeOfGoods: TJvDBLookupCombo
      Left = 5
      Top = 40
      Width = 174
      Height = 24
      LookupField = 'id'
      LookupDisplay = 'description'
      LookupSource = dsTypeOfGoods
      TabOrder = 0
    end
  end
  object grpDocInfo: TGroupBox
    Left = 326
    Top = 3
    Width = 507
    Height = 70
    Caption = 'Document Header'
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 20
      Width = 65
      Height = 17
      Caption = 'Warehouse'
    end
    object Label2: TLabel
      Left = 239
      Top = 20
      Width = 78
      Height = 17
      Caption = 'Receipt Date '
    end
    object Label3: TLabel
      Left = 343
      Top = 20
      Width = 48
      Height = 17
      Caption = 'Number'
    end
    object Label4: TLabel
      Left = 439
      Top = 39
      Width = 6
      Height = 19
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 451
      Top = 20
      Width = 25
      Height = 17
      Caption = 'Year'
    end
    object edWarehouseID: TLabel
      Left = 152
      Top = 20
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'Carrier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object edWarehouseName: TEdit
      Left = 11
      Top = 39
      Width = 198
      Height = 25
      TabOrder = 0
      Text = 'edWarehouseName'
    end
    object edDocDate: TDateTimePicker
      Left = 239
      Top = 39
      Width = 98
      Height = 25
      Date = 44090.000000000000000000
      Time = 0.723429768520873000
      TabOrder = 1
    end
    object edDocNumber: TEdit
      Left = 343
      Top = 39
      Width = 90
      Height = 25
      TabOrder = 2
    end
    object edDocYear: TEdit
      Left = 451
      Top = 39
      Width = 46
      Height = 25
      TabOrder = 3
    end
    object btnWarehouseName: TButton
      Left = 209
      Top = 39
      Width = 25
      Height = 25
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 79
    Width = 1145
    Height = 74
    Caption = 'Document Holder'
    TabOrder = 3
    object lbSupplier: TLabel
      Left = 16
      Top = 21
      Width = 52
      Height = 17
      Caption = 'Supplier '
    end
    object lbVessel: TLabel
      Left = 231
      Top = 21
      Width = 90
      Height = 17
      Caption = 'Location/Vessel'
    end
    object Label9: TLabel
      Left = 478
      Top = 40
      Width = 7
      Height = 21
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 490
      Top = 21
      Width = 69
      Height = 17
      Caption = 'Department'
    end
    object lbPONumber: TLabel
      Left = 663
      Top = 21
      Width = 77
      Height = 17
      Caption = 'P.O. NUmber'
    end
    object Label12: TLabel
      Left = 901
      Top = 21
      Width = 91
      Height = 17
      Caption = 'Workpaper Ref.'
    end
    object edLocationID: TLabel
      Left = 391
      Top = 21
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'Carrier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object edHolderID: TLabel
      Left = 145
      Top = 21
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'Carrier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object edSupplier: TEdit
      Left = 16
      Top = 40
      Width = 185
      Height = 25
      TabOrder = 0
    end
    object edVesselName: TEdit
      Left = 232
      Top = 40
      Width = 215
      Height = 25
      TabOrder = 1
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 490
      Top = 40
      Width = 166
      Height = 24
      LookupField = 'id'
      LookupDisplay = 'name'
      LookupSource = dsDepartments
      TabOrder = 2
    end
    object edPONumber: TEdit
      Left = 662
      Top = 40
      Width = 233
      Height = 25
      TabOrder = 3
    end
    object ButtonedEdit7: TEdit
      Left = 901
      Top = 40
      Width = 119
      Height = 25
      TabOrder = 4
      Text = 'ButtonedEdit1'
    end
    object CheckBox1: TCheckBox
      Left = 1026
      Top = 40
      Width = 151
      Height = 17
      Caption = 'Internet Visible'
      TabOrder = 5
    end
    object btnSupplier: TButton
      Left = 201
      Top = 40
      Width = 25
      Height = 25
      TabOrder = 6
    end
    object btnVesselLocation: TButton
      Left = 447
      Top = 40
      Width = 25
      Height = 25
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 155
    Width = 778
    Height = 78
    Caption = 'Document Transportation References'
    TabOrder = 4
    object lbCarrier: TLabel
      Left = 16
      Top = 21
      Width = 40
      Height = 17
      Caption = 'Carrier'
    end
    object Label14: TLabel
      Left = 232
      Top = 21
      Width = 71
      Height = 17
      Caption = 'Invoice Date'
    end
    object CarrierInvoiceNumber: TLabel
      Left = 336
      Top = 21
      Width = 92
      Height = 17
      Caption = 'Invoice Number'
    end
    object lbTransportInvoice: TLabel
      Left = 503
      Top = 21
      Width = 89
      Height = 17
      Caption = 'Invoice Amount'
    end
    object lbTrackingNumber: TLabel
      Left = 610
      Top = 21
      Width = 100
      Height = 17
      Caption = 'Tracking Number'
    end
    object edCarrierID: TLabel
      Left = 145
      Top = 21
      Width = 56
      Height = 16
      Alignment = taRightJustify
      Caption = 'Carrier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMedGray
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object edCarrier: TEdit
      Left = 16
      Top = 44
      Width = 185
      Height = 25
      TabOrder = 0
    end
    object edCarrierInvoiceDate: TDateTimePicker
      Left = 232
      Top = 44
      Width = 98
      Height = 25
      Date = 44090.000000000000000000
      Time = 0.723429768520873000
      TabOrder = 1
    end
    object edCarrierInvoiceNumber: TEdit
      Left = 336
      Top = 44
      Width = 161
      Height = 25
      TabOrder = 2
    end
    object edTrackingNumber: TEdit
      Left = 610
      Top = 44
      Width = 156
      Height = 25
      TabOrder = 3
    end
    object btnCarrier: TButton
      Left = 201
      Top = 44
      Width = 25
      Height = 25
      TabOrder = 4
    end
  end
  object edCarrierInvoiceAmount: TMoneyEdit
    Left = 519
    Top = 199
    Width = 101
    Height = 25
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    TabOrder = 5
    Version = '1.1.2.0'
  end
  object GroupBox3: TGroupBox
    Left = 800
    Top = 155
    Width = 361
    Height = 78
    Caption = 'Document Invoice Reference'
    TabOrder = 6
    object lbDocAmount: TLabel
      Left = 173
      Top = 21
      Width = 45
      Height = 17
      Caption = 'Amount'
    end
    object lbCurrency: TLabel
      Left = 279
      Top = 21
      Width = 51
      Height = 17
      Caption = 'Currency'
    end
    object lbInvoiceNumber: TLabel
      Left = 16
      Top = 21
      Width = 92
      Height = 17
      Caption = 'Invoice Number'
    end
    object edDocRefNumber: TEdit
      Left = 16
      Top = 44
      Width = 151
      Height = 25
      TabOrder = 0
    end
    object edDocAmount: TMoneyEdit
      Left = 173
      Top = 44
      Width = 101
      Height = 25
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
      TabOrder = 1
      Version = '1.1.2.0'
    end
    object cboInvoiceCurrency: TJvDBLookupCombo
      Left = 280
      Top = 44
      Width = 58
      Height = 24
      LookupField = 'id'
      LookupDisplay = 'name'
      LookupSource = dsDepartments
      TabOrder = 2
    end
  end
  object radioTypeOperation: TRadioGroup
    Left = 839
    Top = 3
    Width = 322
    Height = 70
    Caption = 'Document Type'
    Columns = 3
    ItemIndex = 1
    Items.Strings = (
      'T1'
      'Porto Franco'
      'Porto Ass. ')
    TabOrder = 7
  end
  object vtTypeOfGoods: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftSmallint
      end
      item
        Name = 'description'
        DataType = ftString
        Size = 60
      end>
    Left = 1128
    Top = 16
    Data = {
      040002000200696402000000000000000B006465736372697074696F6E01003C
      0000000000000012000000020000000400030000004261670200000002000600
      000042617272656C02000000050003000000426F780200000011000400000042
      756C6B0200000003000600000042756E646C6502000000100003000000436167
      0200000006000800000043616E69737465720200000009000600000043617274
      6F6E020000000800040000004361736502000000070005000000437261746502
      0000000F000800000043796C696E646572020000000A00040000004472756D02
      00000001000B0000004472756D2C20537465656C020000000B0008000000456E
      76656C6F7065020000000C00070000005061636B616765020000000D00060000
      0050616C6C6574020000000E00040000005361636B0200000012000900000043
      6F6E7461696E6572}
    object vtTypeOfGoodsid: TSmallintField
      FieldName = 'id'
    end
    object vtTypeOfGoodsdescription: TStringField
      FieldName = 'description'
      Size = 60
    end
  end
  object dsTypeOfGoods: TUniDataSource
    DataSet = vtTypeOfGoods
    Left = 1128
    Top = 176
  end
  object vtDepartments: TVirtualTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftSmallint
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 30
      end>
    Left = 1128
    Top = 120
    Data = {
      0400020002006964020000000000000004006E616D6501001E00000000000000
      03000000020000000100040000004465636B02000000020006000000456E6769
      6E6502000000030005000000486F74656C}
    object vtDepartmentsid: TSmallintField
      FieldName = 'id'
    end
    object vtDepartmentsname: TStringField
      FieldName = 'name'
      Size = 30
    end
  end
  object dsDepartments: TUniDataSource
    DataSet = vtDepartments
    Left = 1128
    Top = 64
  end
  object jscWarehouseName: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edWarehouseName
    SearchButton = btnWarehouseName
    Left = 1224
    Top = 112
  end
  object jscVesselLocation: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edVesselName
    SearchButton = btnVesselLocation
    Left = 1224
    Top = 56
  end
  object jscSupplier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edSupplier
    SearchButton = btnSupplier
    Left = 1224
  end
  object jscCarrier: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edCarrier
    SearchButton = btnCarrier
    Left = 1224
    Top = 168
  end
end
