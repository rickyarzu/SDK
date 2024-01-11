inherited FrameVCLLogisticWarehouseReceiptRow: TFrameVCLLogisticWarehouseReceiptRow
  Width = 679
  Height = 439
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 679
  ExplicitHeight = 439
  PixelsPerInch = 96
  object lbPosition: TLabel
    Left = 18
    Top = 41
    Width = 23
    Height = 16
    Caption = 'lbPosition'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lbItemsDescription: TLabel
    Left = 131
    Top = 18
    Width = 64
    Height = 17
    Caption = 'Item Name'
  end
  object lbItemID: TLabel
    Left = 582
    Top = 14
    Width = 64
    Height = 16
    Alignment = taRightJustify
    Caption = 'lbItemID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object JvLinkLabel1: TLabel
    Left = 239
    Top = 142
    Width = 37
    Height = 17
    Caption = 'Pallets'
  end
  object lblinkItemPackage: TLabel
    Left = 18
    Top = 142
    Width = 48
    Height = 17
    Caption = 'Package'
  end
  object lbQtyUnits: TLabel
    Left = 315
    Top = 142
    Width = 56
    Height = 17
    Caption = 'Qty. Units'
  end
  object lbInvUnits: TLabel
    Left = 386
    Top = 142
    Width = 52
    Height = 17
    Caption = 'Inv. Units'
  end
  object JvLinkLabel2: TLabel
    Left = 502
    Top = 142
    Width = 40
    Height = 17
    Caption = 'Weight'
  end
  object lbConfirmedWeight: TLabel
    Left = 554
    Top = 142
    Width = 105
    Height = 17
    Caption = 'Confirmed Weight'
  end
  object JvLinkLabel13: TLabel
    Left = 18
    Top = 196
    Width = 48
    Height = 17
    Caption = 'Supplier'
  end
  object Label1: TLabel
    Left = 423
    Top = 198
    Width = 23
    Height = 17
    Caption = 'P.O.'
  end
  object lbSupplierID: TLabel
    Left = 278
    Top = 200
    Width = 96
    Height = 16
    Alignment = taRightJustify
    Caption = 'lbSupplierID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lbPos: TLabel
    Left = 18
    Top = 18
    Width = 21
    Height = 17
    Caption = 'Pos'
  end
  object lbHazmatCode: TLabel
    Left = 47
    Top = 18
    Width = 44
    Height = 17
    Caption = 'Hazmat'
  end
  object edItemsModel: TEdit
    Left = 131
    Top = 36
    Width = 507
    Height = 25
    TabOrder = 1
  end
  object btnItemSearch: TButton
    Left = 644
    Top = 36
    Width = 25
    Height = 25
    TabOrder = 2
    TabStop = False
  end
  object memItemDescription: TMemo
    Left = 18
    Top = 71
    Width = 651
    Height = 65
    Lines.Strings = (
      'memItemDescription')
    TabOrder = 3
  end
  object sedPallets: TJvValidateEdit
    Left = 239
    Top = 165
    Width = 67
    Height = 23
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    EditText = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object cboPackageType: TJvDBLookupCombo
    Left = 18
    Top = 165
    Width = 215
    Height = 24
    LookupField = 'id'
    LookupDisplay = 'description'
    LookupSource = dsPackages
    TabOrder = 4
  end
  object sedQuantyEntrance: TJvValidateEdit
    Left = 315
    Top = 165
    Width = 67
    Height = 23
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    EditText = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object sedQtyInventory: TJvValidateEdit
    Left = 386
    Top = 165
    Width = 67
    Height = 23
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    EditText = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edSupplierName: TEdit
    Left = 18
    Top = 219
    Width = 356
    Height = 25
    TabOrder = 10
  end
  object btnSearchSupplier: TButton
    Left = 380
    Top = 219
    Width = 27
    Height = 25
    TabOrder = 11
    TabStop = False
  end
  object Edit1: TEdit
    Left = 423
    Top = 219
    Width = 246
    Height = 25
    TabOrder = 12
  end
  object grpWarehouseReminders: TGroupBox
    Left = 472
    Top = 254
    Width = 197
    Height = 89
    Caption = 'Warehouse Reminders'
    TabOrder = 14
    object JvLinkLabel4: TLabel
      Left = 14
      Top = 20
      Width = 56
      Height = 17
      Caption = 'Qty. Units'
    end
    object JvLinkLabel5: TLabel
      Left = 87
      Top = 20
      Width = 40
      Height = 17
      Caption = 'Weight'
    end
    object edQtyWharehouseReminder: TJvValidateEdit
      Left = 14
      Top = 44
      Width = 67
      Height = 23
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object SpinEdit6: TJvValidateEdit
      Left = 87
      Top = 44
      Width = 89
      Height = 23
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object grpDimensions: TGroupBox
    Left = 3
    Top = 254
    Width = 463
    Height = 89
    Caption = 'Dimensions (LxWxH)'
    TabOrder = 13
    object JvLinkLabel6: TLabel
      Left = 15
      Top = 25
      Width = 8
      Height = 21
      Caption = 'L'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLinkLabel7: TLabel
      Left = 102
      Top = 25
      Width = 16
      Height = 21
      Caption = 'W'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object JvLinkLabel8: TLabel
      Left = 190
      Top = 25
      Width = 12
      Height = 21
      Caption = 'H'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edCalcVolume: TLabel
      Left = 368
      Top = 25
      Width = 46
      Height = 17
      Caption = 'Volume:'
    end
    object SpinEdit7: TJvValidateEdit
      Left = 15
      Top = 44
      Width = 67
      Height = 25
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object SpinEdit8: TJvValidateEdit
      Left = 102
      Top = 44
      Width = 67
      Height = 25
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object SpinEdit9: TJvValidateEdit
      Left = 190
      Top = 44
      Width = 67
      Height = 25
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object sedCalcVolume: TMoneyEdit
      Left = 368
      Top = 44
      Width = 91
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
      TabOrder = 3
      Version = '1.1.2.0'
    end
    object grpMeasurementUnit: TRadioGroup
      Left = 263
      Top = 23
      Width = 99
      Height = 58
      Caption = 'Measure'
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'In'
        'Cm')
      TabOrder = 4
    end
  end
  object edWeightOnDelivery: TJvValidateEdit
    Left = 459
    Top = 165
    Width = 83
    Height = 23
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloatFixed
    DecimalPlaces = 2
    EditText = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object edConfirmedWeight: TJvValidateEdit
    Left = 554
    Top = 165
    Width = 115
    Height = 23
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    DisplayFormat = dfFloatFixed
    DecimalPlaces = 2
    EditText = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    HasMinValue = True
    ParentFont = False
    TabOrder = 9
  end
  object grpCustomsInformations: TGroupBox
    Left = 3
    Top = 349
    Width = 666
    Height = 84
    Caption = 'Customs Informations'
    TabOrder = 15
    object Label2: TLabel
      Left = 111
      Top = 27
      Width = 56
      Height = 17
      Caption = 'Qty. Units'
    end
    object JvLinkLabel14: TLabel
      Left = 591
      Top = 27
      Width = 64
      Height = 17
      Caption = 'Price/Value'
    end
    object JvLinkLabel10: TLabel
      Left = 519
      Top = 27
      Width = 46
      Height = 17
      Caption = 'Ex. Rate'
    end
    object lbCurrency: TLabel
      Left = 435
      Top = 27
      Width = 51
      Height = 17
      Caption = 'Currency'
    end
    object JvLinkLabel12: TLabel
      Left = 353
      Top = 27
      Width = 26
      Height = 17
      Caption = 'Fees'
    end
    object JvLinkLabel11: TLabel
      Left = 271
      Top = 27
      Width = 36
      Height = 17
      Caption = 'Rights'
    end
    object lbPriceValue: TLabel
      Left = 184
      Top = 27
      Width = 64
      Height = 17
      Caption = 'Price/Value'
    end
    object JvLinkLabel9: TLabel
      Left = 15
      Top = 27
      Width = 43
      Height = 17
      Caption = 'Volume'
    end
    object JvDBLookupCombo1: TJvDBLookupCombo
      Left = 433
      Top = 48
      Width = 78
      Height = 25
      LookupField = 'currency_id'
      LookupDisplay = 'currency_code'
      LookupSource = dsCurrencies
      TabOrder = 5
    end
    object SpinEdit1: TJvValidateEdit
      Left = 109
      Top = 48
      Width = 67
      Height = 23
      CriticalPoints.MaxValueIncluded = False
      CriticalPoints.MinValueIncluded = False
      EditText = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object MoneyEdit5: TMoneyEdit
      Left = 585
      Top = 48
      Width = 76
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
      TabOrder = 7
      Version = '1.1.2.0'
    end
    object MoneyEdit4: TMoneyEdit
      Left = 517
      Top = 48
      Width = 66
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
      TabOrder = 6
      Version = '1.1.2.0'
    end
    object MoneyEdit3: TMoneyEdit
      Left = 351
      Top = 48
      Width = 76
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
      TabOrder = 3
      Version = '1.1.2.0'
    end
    object MoneyEdit2: TMoneyEdit
      Left = 269
      Top = 48
      Width = 76
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
      TabOrder = 2
      Version = '1.1.2.0'
    end
    object MoneyEdit1: TMoneyEdit
      Left = 182
      Top = 48
      Width = 75
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
    object sedVolume: TMoneyEdit
      Left = 13
      Top = 48
      Width = 84
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
      TabOrder = 0
      Version = '1.1.2.0'
    end
  end
  object cboHazMatCode: TJvDBLookupCombo
    Left = 47
    Top = 36
    Width = 78
    Height = 25
    LookupField = 'code'
    LookupDisplay = 'code'
    LookupSource = dsHazmat
    TabOrder = 0
  end
  object JanuaVCLSearchItemController: TJanuaVCLSearchController
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edItemsModel
    SearchButton = btnItemSearch
    Left = 224
    Top = 56
  end
  object JanuaVCLSearchSupplierController1: TJanuaVCLSearchController
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edSupplierName
    SearchButton = btnSearchSupplier
    Left = 376
    Top = 88
  end
  object fdmPackages: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end
      item
        Name = 'description'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 128
      end
      item
        Name = 'jguid'
        Attributes = [faRequired]
        DataType = ftGuid
        Size = 38
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 472
    Top = 56
    Content = {
      414442530F000000CB090000FF00010001FF02FF03040016000000660064006D
      005000610063006B006100670065007300050016000000660064006D00500061
      0063006B006100670065007300060000000000070000080032000000090000FF
      0AFF0B04000400000069006400050004000000690064000C00010000000E000D
      000F000110000111000112000113000400000069006400FEFF0B040008000000
      63006F006400650005000800000063006F00640065000C00020000000E001400
      15000A0000000F000110000111000112000113000800000063006F0064006500
      16000A000000FEFF0B0400160000006400650073006300720069007000740069
      006F006E000500160000006400650073006300720069007000740069006F006E
      000C00030000000E0014001500800000000F0001100001110001120001130016
      0000006400650073006300720069007000740069006F006E00160080000000FE
      FF0B04000A0000006A00670075006900640005000A0000006A00670075006900
      64000C00040000000E0017000F000110000111000112000113000A0000006A00
      6700750069006400FEFEFF18FEFF19FEFF1AFF1B1C0000000000FF1D00000100
      010006000000420041004C0002000A000000420041004C004C0045000300BEC4
      02AED4A1EA11B52B9765BA743278FEFEFF1B1C0001000000FF1D000002000100
      0600000042004100520002000A000000420041005200520045000300BA85CCAE
      D4A1EA1188C96F4B057EB0EEFEFEFF1B1C0002000000FF1D0000040001000600
      000042004F00420002000C00000042004F00420049004E004500030024A640B0
      D4A1EA118576F7DDCAE23587FEFEFF1B1C0003000000FF1D0000050001000600
      000042004F00520002000A00000042004F005200530045000300FE9AFDB0D4A1
      EA118E267B719387BEE2FEFEFF1B1C0004000000FF1D00000600010006000000
      42004F00580002000600000042004F00580003001E7AA8B1D4A1EA1189098BCE
      BAB229A5FEFEFF1B1C0005000000FF1D00000700010006000000420055005300
      02000A00000042005500530054004500030014E465B2D4A1EA11ACEF93372881
      72ECFEFEFF1B1C0006000000FF1D000008000100060000004300410052000200
      0E00000043004100520054004F004E00530003006CDF0CB3D4A1EA119220C3EB
      6D0894EFFEFEFF1B1C0007000000FF1D00000D00010006000000430053005400
      0200160000004300410053005300410020002B00200043005200540003009E6F
      FBB6D4A1EA11BC8D4F1B82513D65FEFEFF1B1C0008000000FF1D000009000100
      0600000043004100530002000A00000043004100530053004500030050E1BCB3
      D4A1EA11B77B431A0A5A491AFEFEFF1B1C0009000000FF1D00000A0001000600
      0000430049004C00020010000000430049004C0049004E004400520049000300
      FE02B0B4D4A1EA11A78EE324A70A3A8AFEFEFF1B1C000A000000FF1D00000B00
      01000600000043004F004C0002000A00000043004F004C004C0049000300E83A
      79B5D4A1EA11B51C839B34918AAEFEFEFF1B1C000B000000FF1D00000C000100
      060000004300520054000200060000004300520054000300D6D242B6D4A1EA11
      85DF4358A2DBD720FEFEFF1B1C000C000000FF1D00000E000100040000004600
      530002000A0000004600550053005400490003007003BDB7D4A1EA118371037F
      0C3FDABEFEFEFF1B1C000D000000FF1D00000F00010006000000470041004200
      02000C000000470041004200420049004500030064C682B8D4A1EA118A10C753
      96DC1D78FEFEFF1B1C000E000000FF1D000011000100060000004C0045004700
      02000E0000004C004500470041004300430049000300A6E90CBAD4A1EA119D1D
      6F20BE226F18FEFEFF1B1C000F000000FF1D0000130001000600000050004100
      430002000C0000005000410043004300480049000300CC4C87BBD4A1EA1197E8
      07682B743F4BFEFEFF1B1C0010000000FF1D0000140001000600000050004300
      520002001C000000500041004C00450045005400530020002B00200043005200
      540053000300E4F556BCD4A1EA11A47153710E732624FEFEFF1B1C0011000000
      FF1D0000160001000600000050004C004200020020000000500041004C004C00
      45005400530020002B00200042004F00420049004E004500030008F2E9BDD4A1
      EA118BD18F82019613A6FEFEFF1B1C0012000000FF1D00001200010006000000
      50002F004300020022000000500041004C004C00450054005300200045002000
      43004100520054004F004E0049000300B458DABAD4A1EA11AB8EE3AF3FFF215C
      FEFEFF1B1C0013000000FF1D00001500010006000000500045005A0002000A00
      0000500045005A005A004900030078E207BDD4A1EA11B82AA7202169739AFEFE
      FF1B1C0014000000FF1D0000180001000600000050004C005400020008000000
      50004C005400530003007A539CBFD4A1EA11B7F0C7F97787F391FEFEFF1B1C00
      15000000FF1D0000170001000600000050004C00460002001800000050004C00
      5400530020002B0020004600410053004300490003002CD7CBBED4A1EA11BAE4
      133F43E025EBFEFEFF1B1C0016000000FF1D000010000100040000004A004A00
      02001000000050004C00540053002F0052004F005400030028923DB9D4A1EA11
      B24783DCCD27F33BFEFEFF1B1C0017000000FF1D000019000100060000005200
      49004E0002000E000000520049004E0046005500530041000300206D9FC0D4A1
      EA119613E70B5A1CC911FEFEFF1B1C0018000000FF1D00001A00010006000000
      52004F00540002000C00000052004F0054004F004C0049000300724961C1D4A1
      EA119AEA472BC59F880AFEFEFF1B1C0019000000FF1D00001B00010006000000
      53004100430002000C000000530041004300430048004900030032E752C2D4A1
      EA1180565B1EE58A190AFEFEFF1B1C001A000000FF1D00000300010006000000
      42004200470002000E00000053004100430043004F004E00490003007A8E8AAF
      D4A1EA11BC0B9700037B2E47FEFEFF1B1C001B000000FF1D00001C0001000600
      000053004300410002000E00000053004300410054004F004C00450003008279
      10C3D4A1EA1184E8FBF9013916CCFEFEFF1B1C001C000000FF1D00001D000100
      0600000054004E004B00020016000000540041004E004B004100200032003000
      2000420058000300AEF8EBC3D4A1EA118D1047BDF6200D3BFEFEFF1B1C001D00
      0000FF1D00001E00010006000000540052004F0002000E000000540052004F00
      4E0043004800490003005001C8C4D4A1EA11841117B3DCDBAD50FEFEFF1B1C00
      1E000000FF1D00001F0001000600000054005500420002000800000054005500
      420049000300E8C399C5D4A1EA11BB7307143226F60FFEFEFEFEFEFF1EFEFF1F
      20005D000000FF21FEFEFE0E004D0061006E0061006700650072001E00550070
      0064006100740065007300520065006700690073007400720079001200540061
      0062006C0065004C006900730074000A005400610062006C00650008004E0061
      006D006500140053006F0075007200630065004E0061006D0065000A00540061
      00620049004400240045006E0066006F0072006300650043006F006E00730074
      007200610069006E00740073001E004D0069006E0069006D0075006D00430061
      00700061006300690074007900180043006800650063006B004E006F0074004E
      0075006C006C00140043006F006C0075006D006E004C006900730074000C0043
      006F006C0075006D006E00100053006F007500720063006500490044000E0064
      00740049006E0074003100360010004400610074006100540079007000650014
      00530065006100720063006800610062006C0065000800420061007300650012
      004F0049006E0055007000640061007400650010004F0049006E005700680065
      00720065001A004F0072006900670069006E0043006F006C004E0061006D0065
      00180064007400570069006400650053007400720069006E0067000800530069
      007A006500140053006F007500720063006500530069007A0065000C00640074
      0047005500490044001C0043006F006E00730074007200610069006E0074004C
      00690073007400100056006900650077004C006900730074000E0052006F0077
      004C00690073007400060052006F0077000A0052006F0077004900440010004F
      0072006900670069006E0061006C001800520065006C006100740069006F006E
      004C006900730074001C0055007000640061007400650073004A006F00750072
      006E0061006C001200530061007600650050006F0069006E0074000E00430068
      0061006E00670065007300}
    object fdmPackagesid: TSmallintField
      DisplayWidth = 10
      FieldName = 'id'
      Required = True
    end
    object fdmPackagescode: TWideStringField
      DisplayWidth = 10
      FieldName = 'code'
      Required = True
      Size = 10
    end
    object fdmPackagesdescription: TWideStringField
      DisplayWidth = 128
      FieldName = 'description'
      Required = True
      Size = 128
    end
    object fdmPackagesjguid: TGuidField
      DisplayWidth = 38
      FieldName = 'jguid'
      Required = True
      Size = 38
    end
  end
  object dsPackages: TDataSource
    DataSet = fdmPackages
    Left = 536
    Top = 80
  end
  object dsCurrencies: TDataSource
    DataSet = fdmCurrencies
    Left = 152
    Top = 224
  end
  object fdmCurrencies: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'currency_id'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'currency_code'
        DataType = ftWideString
        Size = 3
      end
      item
        Name = 'currency_name'
        DataType = ftWideString
        Size = 60
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 232
    Top = 248
    Content = {
      414442530F00000002040000FF00010001FF02FF0304001A000000660064006D
      00430075007200720065006E00630069006500730005000A0000005400610062
      006C006500060000000000070000080032000000090000FF0AFF0B0400160000
      00630075007200720065006E00630079005F0069006400050016000000630075
      007200720065006E00630079005F00690064000C00010000000E000D000F0001
      100001110001120001130016000000630075007200720065006E00630079005F
      0069006400FEFF0B04001A000000630075007200720065006E00630079005F00
      63006F006400650005001A000000630075007200720065006E00630079005F00
      63006F00640065000C00020000000E0014001500030000000F00011600011000
      0117000111000112000113001A000000630075007200720065006E0063007900
      5F0063006F0064006500180003000000FEFF0B04001A00000063007500720072
      0065006E00630079005F006E0061006D00650005001A00000063007500720072
      0065006E00630079005F006E0061006D0065000C00030000000E00140015003C
      0000000F000116000110000117000111000112000113001A0000006300750072
      00720065006E00630079005F006E0061006D00650018003C000000FEFEFF19FE
      FF1AFEFF1BFF1C1D0000000000FF1E0000080001000600000041005500240002
      002200000044006F006C006C00610072006F0020004100750073007400720061
      006C0069006100FEFEFF1C1D0001000000FF1E00000900010006000000430048
      00460002001E0000004600720061006E0063006F0020005300760069007A007A
      00650072006F00FEFEFF1C1D0002000000FF1E0000060001000600000044004B
      004B0002001A00000043004F0052004F004E0045002000440041004E00450053
      004900FEFEFF1C1D0003000000FF1E0000010001000600000045005500520002
      00080000004500750072006F00FEFEFF1C1D0004000000FF1E00000300010006
      00000047004200500002001000000047004200200050006F0075006E006400FE
      FEFF1C1D0005000000FF1E0000070001000600000048004B0024000200220000
      0044006F006C006C00610072006F00200048006F006E00670020004B006F006E
      006700FEFEFF1C1D0006000000FF1E000004000100060000004A005000590002
      00120000004A004100500041004E002000590045004E00FEFEFF1C1D00070000
      00FF1E000005000100060000004E004F004B0002002000000043004F0052004F
      004E00450020004E004F005200560045004700450053004900FEFEFF1C1D0008
      000000FF1E000002000100060000005500530044000200120000005500530020
      0044006F006C006C0061007200FEFEFEFEFEFF1FFEFF20210012000000FF22FE
      FEFE0E004D0061006E0061006700650072001E00550070006400610074006500
      73005200650067006900730074007200790012005400610062006C0065004C00
      6900730074000A005400610062006C00650008004E0061006D00650014005300
      6F0075007200630065004E0061006D0065000A00540061006200490044002400
      45006E0066006F0072006300650043006F006E00730074007200610069006E00
      740073001E004D0069006E0069006D0075006D00430061007000610063006900
      74007900180043006800650063006B004E006F0074004E0075006C006C001400
      43006F006C0075006D006E004C006900730074000C0043006F006C0075006D00
      6E00100053006F007500720063006500490044000E006400740049006E007400
      3100360010004400610074006100540079007000650014005300650061007200
      63006800610062006C0065000800420061007300650012004F0049006E005500
      7000640061007400650010004F0049006E00570068006500720065001A004F00
      72006900670069006E0043006F006C004E0061006D0065001800640074005700
      69006400650053007400720069006E0067000800530069007A00650012004100
      6C006C006F0077004E0075006C006C0014004F0041006C006C006F0077004E00
      75006C006C00140053006F007500720063006500530069007A0065001C004300
      6F006E00730074007200610069006E0074004C00690073007400100056006900
      650077004C006900730074000E0052006F0077004C0069007300740006005200
      6F0077000A0052006F0077004900440010004F0072006900670069006E006100
      6C001800520065006C006100740069006F006E004C006900730074001C005500
      7000640061007400650073004A006F00750072006E0061006C00120053006100
      7600650050006F0069006E0074000E004300680061006E00670065007300}
    object fdmCurrenciescurrency_id: TSmallintField
      DisplayWidth = 10
      FieldName = 'currency_id'
      Required = True
    end
    object fdmCurrenciescurrency_code: TWideStringField
      DisplayWidth = 3
      FieldName = 'currency_code'
      Size = 3
    end
    object fdmCurrenciescurrency_name: TWideStringField
      DisplayWidth = 60
      FieldName = 'currency_name'
      Size = 60
    end
  end
  object fdmHazmatD: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'code'
        Attributes = [faRequired]
        DataType = ftWideString
        Size = 10
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMaxBcdPrecision, fvMaxBcdScale]
    FormatOptions.MaxBcdPrecision = 2147483647
    FormatOptions.MaxBcdScale = 1073741823
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 32
    Top = 56
    Content = {
      414442530F000000F2050000FF00010001FF02FF03040014000000660064006D
      00480061007A006D00610074004400050014000000660064006D00480061007A
      006D00610074004400060000000000070000080032000000090000FF0AFF0B04
      000800000063006F006400650005000800000063006F00640065000C00010000
      000E000D000F000A00000010000111000112000113000114000800000063006F
      006400650015000A000000FEFEFF16FEFF17FEFF18FF191A0000000000FF1B00
      000800000031002E0031004100FEFEFF191A0001000000FF1B00000800000031
      002E0031004200FEFEFF191A0002000000FF1B00000800000031002E00310043
      00FEFEFF191A0003000000FF1B00000800000031002E0031004400FEFEFF191A
      0004000000FF1B00000800000031002E0031004500FEFEFF191A0005000000FF
      1B00000800000031002E0031004600FEFEFF191A0006000000FF1B0000080000
      0031002E0031004700FEFEFF191A0007000000FF1B00000800000031002E0031
      004A00FEFEFF191A0008000000FF1B00000800000031002E0031004C00FEFEFF
      191A0009000000FF1B00000800000031002E0032004200FEFEFF191A000A0000
      00FF1B00000800000031002E0032004300FEFEFF191A000B000000FF1B000008
      00000031002E0032004400FEFEFF191A000C000000FF1B00000800000031002E
      0032004500FEFEFF191A000D000000FF1B00000800000031002E0032004600FE
      FEFF191A000E000000FF1B00000800000031002E0032004700FEFEFF191A000F
      000000FF1B00000800000031002E0032004800FEFEFF191A0010000000FF1B00
      000800000031002E0032004A00FEFEFF191A0011000000FF1B00000800000031
      002E0032004B00FEFEFF191A0012000000FF1B00000800000031002E0032004C
      00FEFEFF191A0013000000FF1B00000800000031002E0033004300FEFEFF191A
      0014000000FF1B00000800000031002E0033004700FEFEFF191A0015000000FF
      1B00000800000031002E0033004800FEFEFF191A0016000000FF1B0000080000
      0031002E0033004A00FEFEFF191A0017000000FF1B00000800000031002E0033
      004B00FEFEFF191A0018000000FF1B00000800000031002E0033004C00FEFEFF
      191A0019000000FF1B00000800000031002E0034004200FEFEFF191A001A0000
      00FF1B00000800000031002E0034004300FEFEFF191A001B000000FF1B000008
      00000031002E0034004400FEFEFF191A001C000000FF1B00000800000031002E
      0034004500FEFEFF191A001D000000FF1B00000800000031002E0034004600FE
      FEFF191A001E000000FF1B00000800000031002E0034004700FEFEFF191A001F
      000000FF1B00000800000031002E0034005300FEFEFF191A0020000000FF1B00
      000800000031002E0035004400FEFEFF191A0021000000FF1B00000800000031
      002E0036004E00FEFEFF191A0022000000FF1B00000600000032002E003100FE
      FEFF191A0023000000FF1B00000600000032002E003200FEFEFF191A00240000
      00FF1B00000A00000032002E0032000A000A00FEFEFF191A0025000000FF1B00
      000600000032002E003300FEFEFF191A0026000000FF1B0000020000003300FE
      FEFF191A0027000000FF1B00000600000034002E003100FEFEFF191A00280000
      00FF1B00000600000034002E003200FEFEFF191A0029000000FF1B0000060000
      0034002E003300FEFEFF191A002A000000FF1B00000600000035002E003100FE
      FEFF191A002B000000FF1B00000600000035002E003200FEFEFF191A002C0000
      00FF1B00000600000036002E003100FEFEFF191A002D000000FF1B0000080000
      0036002E0031002000FEFEFF191A002E000000FF1B00000600000036002E0032
      00FEFEFF191A002F000000FF1B0000020000003700FEFEFF191A0030000000FF
      1B0000020000003800FEFEFF191A0031000000FF1B0000020000003900FEFEFF
      191A0032000000FF1B00001200000046006F007200620069006400640065006E
      00FEFEFF191A0033000000FF1B00000A0000004F0052004D002D004400FEFEFE
      FEFEFF1CFEFF1D1E0068000000FF1FFEFEFE0E004D0061006E00610067006500
      72001E0055007000640061007400650073005200650067006900730074007200
      790012005400610062006C0065004C006900730074000A005400610062006C00
      650008004E0061006D006500140053006F0075007200630065004E0061006D00
      65000A0054006100620049004400240045006E0066006F007200630065004300
      6F006E00730074007200610069006E00740073001E004D0069006E0069006D00
      75006D0043006100700061006300690074007900180043006800650063006B00
      4E006F0074004E0075006C006C00140043006F006C0075006D006E004C006900
      730074000C0043006F006C0075006D006E00100053006F007500720063006500
      49004400180064007400570069006400650053007400720069006E0067001000
      440061007400610054007900700065000800530069007A006500140053006500
      6100720063006800610062006C0065000800420061007300650012004F004900
      6E0055007000640061007400650010004F0049006E0057006800650072006500
      1A004F0072006900670069006E0043006F006C004E0061006D00650014005300
      6F007500720063006500530069007A0065001C0043006F006E00730074007200
      610069006E0074004C00690073007400100056006900650077004C0069007300
      74000E0052006F0077004C00690073007400060052006F0077000A0052006F00
      77004900440010004F0072006900670069006E0061006C001800520065006C00
      6100740069006F006E004C006900730074001C00550070006400610074006500
      73004A006F00750072006E0061006C001200530061007600650050006F006900
      6E0074000E004300680061006E00670065007300}
    object fdmHazmatDcode: TWideStringField
      DisplayWidth = 10
      FieldName = 'code'
      Required = True
      Size = 10
    end
  end
  object dsHazmat: TDataSource
    DataSet = fdmHazmatD
    Left = 104
    Top = 88
  end
end
