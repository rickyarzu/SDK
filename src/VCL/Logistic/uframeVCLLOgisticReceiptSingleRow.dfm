inherited frameVCLLogisticReceiptSingleRow: TframeVCLLogisticReceiptSingleRow
  Width = 1221
  Height = 369
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 1221
  ExplicitHeight = 369
  object grpItemRow: TGroupBox
    AlignWithMargins = True
    Left = 6
    Top = 60
    Width = 1209
    Height = 191
    Margins.Left = 6
    Margins.Top = 10
    Margins.Right = 6
    Align = alTop
    Caption = 'Goods Receipt Item Line'
    TabOrder = 0
    object lbItemsDescription: TLabel
      Left = 112
      Top = 20
      Width = 64
      Height = 17
      Caption = 'Item Name'
    end
    object lblinkItemPackage: TLabel
      Left = 539
      Top = 22
      Width = 48
      Height = 17
      Caption = 'Package'
    end
    object JvLinkLabel1: TLabel
      Left = 757
      Top = 22
      Width = 37
      Height = 17
      Caption = 'Pallets'
    end
    object lbQtyUnits: TLabel
      Left = 830
      Top = 22
      Width = 56
      Height = 17
      Caption = 'Qty. Units'
    end
    object JvLinkLabel2: TLabel
      Left = 974
      Top = 22
      Width = 40
      Height = 17
      Caption = 'Weight'
    end
    object lbConfirmedWeight: TLabel
      Left = 1069
      Top = 22
      Width = 105
      Height = 17
      Caption = 'Confirmed Weight'
    end
    object lbItemID: TLabel
      Left = 430
      Top = 22
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
    object lbPosition: TLabel
      Left = 18
      Top = 41
      Width = 80
      Height = 16
      Alignment = taRightJustify
      Caption = 'lbPosition'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object lbInvUnits: TLabel
      Left = 901
      Top = 22
      Width = 52
      Height = 17
      Caption = 'Inv. Units'
    end
    object edItemsModel: TEdit
      Left = 112
      Top = 40
      Width = 390
      Height = 25
      TabOrder = 0
    end
    object btnItemSearch: TButton
      Left = 508
      Top = 41
      Width = 25
      Height = 25
      TabOrder = 1
    end
    object cboTypeOfGoods: TJvDBLookupCombo
      Left = 539
      Top = 41
      Width = 212
      Height = 25
      LookupField = 'id'
      LookupDisplay = 'description'
      TabOrder = 2
    end
    object sedPallets: TSpinEdit
      Left = 757
      Top = 41
      Width = 67
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 0
    end
    object sedQuantyEntrance: TSpinEdit
      Left = 830
      Top = 41
      Width = 67
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 4
      Value = 0
    end
    object GroupBox1: TGroupBox
      Left = 1010
      Top = 68
      Width = 180
      Height = 109
      Caption = 'Warehouse Reminders'
      TabOrder = 5
      object JvLinkLabel4: TLabel
        Left = 14
        Top = 28
        Width = 56
        Height = 17
        Caption = 'Qty. Units'
      end
      object JvLinkLabel5: TLabel
        Left = 87
        Top = 28
        Width = 40
        Height = 17
        Caption = 'Weight'
      end
      object SpinEdit5: TSpinEdit
        Left = 14
        Top = 52
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 0
      end
      object SpinEdit6: TSpinEdit
        Left = 87
        Top = 52
        Width = 89
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 36
      Top = 72
      Width = 982
      Height = 109
      Caption = 'Items Details'
      TabOrder = 6
      object JvLinkLabel6: TLabel
        Left = 779
        Top = 21
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
        Left = 779
        Top = 47
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
        Left = 779
        Top = 78
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
      object JvLinkLabel9: TLabel
        Left = 16
        Top = 20
        Width = 43
        Height = 17
        Caption = 'Volume'
      end
      object Label1: TLabel
        Left = 16
        Top = 74
        Width = 23
        Height = 17
        Caption = 'P.O.'
      end
      object lbPriceValue: TLabel
        Left = 118
        Top = 20
        Width = 64
        Height = 17
        Caption = 'Price/Value'
      end
      object JvLinkLabel11: TLabel
        Left = 205
        Top = 20
        Width = 36
        Height = 17
        Caption = 'Rights'
      end
      object JvLinkLabel12: TLabel
        Left = 287
        Top = 20
        Width = 26
        Height = 17
        Caption = 'Fees'
      end
      object JvLinkLabel13: TLabel
        Left = 315
        Top = 71
        Width = 48
        Height = 17
        Caption = 'Supplier'
      end
      object lbCurrency: TLabel
        Left = 369
        Top = 20
        Width = 51
        Height = 17
        Caption = 'Currency'
      end
      object JvLinkLabel10: TLabel
        Left = 453
        Top = 20
        Width = 46
        Height = 17
        Caption = 'Ex. Rate'
      end
      object JvLinkLabel14: TLabel
        Left = 525
        Top = 20
        Width = 64
        Height = 17
        Caption = 'Price/Value'
      end
      object edCalcVolume: TLabel
        Left = 877
        Top = 25
        Width = 74
        Height = 17
        Caption = 'Calc. Volume'
      end
      object SpinEdit7: TSpinEdit
        Left = 804
        Top = 16
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 0
      end
      object SpinEdit8: TSpinEdit
        Left = 804
        Top = 47
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 1
        Value = 0
      end
      object SpinEdit9: TSpinEdit
        Left = 804
        Top = 78
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 2
        Value = 0
      end
      object Edit1: TEdit
        Left = 45
        Top = 73
        Width = 254
        Height = 25
        TabOrder = 3
      end
      object MoneyEdit1: TMoneyEdit
        Left = 118
        Top = 40
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
        TabOrder = 4
        Version = '1.1.2.2'
      end
      object MoneyEdit2: TMoneyEdit
        Left = 205
        Top = 40
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
        TabOrder = 5
        Version = '1.1.2.2'
      end
      object MoneyEdit3: TMoneyEdit
        Left = 287
        Top = 40
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
        TabOrder = 6
        Version = '1.1.2.2'
      end
      object Edit2: TEdit
        Left = 369
        Top = 71
        Width = 357
        Height = 25
        TabOrder = 7
      end
      object Button2: TButton
        Left = 732
        Top = 71
        Width = 25
        Height = 25
        TabOrder = 8
      end
      object JvDBLookupCombo1: TJvDBLookupCombo
        Left = 369
        Top = 40
        Width = 78
        Height = 25
        LookupField = 'id'
        LookupDisplay = 'description'
        TabOrder = 9
      end
      object MoneyEdit4: TMoneyEdit
        Left = 453
        Top = 40
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
        TabOrder = 10
        Version = '1.1.2.2'
      end
      object MoneyEdit5: TMoneyEdit
        Left = 525
        Top = 40
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
        TabOrder = 11
        Version = '1.1.2.2'
      end
      object sedCalcVolume: TMoneyEdit
        Left = 877
        Top = 48
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
        TabOrder = 12
        Version = '1.1.2.2'
      end
      object sedVolume: TMoneyEdit
        Left = 16
        Top = 40
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
        TabOrder = 13
        Version = '1.1.2.2'
      end
    end
    object sedQtyInventory: TSpinEdit
      Left = 901
      Top = 41
      Width = 67
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 7
      Value = 0
    end
    object edConfirmedWeight: TMoneyEdit
      Left = 1069
      Top = 42
      Width = 117
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
      TabOrder = 8
      Version = '1.1.2.2'
    end
    object sedWeightOnDelivery: TMoneyEdit
      Left = 974
      Top = 41
      Width = 89
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
      TabOrder = 9
      Version = '1.1.2.2'
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 1221
    Height = 50
    Caption = 'ToolBar1'
    TabOrder = 1
  end
  object grpCustomsReference: TGroupBox
    Left = 3
    Top = 257
    Width = 987
    Height = 90
    Caption = 'Customs Reference'
    TabOrder = 2
    object JvLinkLabel15: TLabel
      Left = 13
      Top = 34
      Width = 90
      Height = 17
      Caption = 'Document Type'
    end
    object edCustomsNumber: TLabel
      Left = 199
      Top = 34
      Width = 48
      Height = 17
      Caption = 'Number'
    end
    object edCustomsCin: TLabel
      Left = 399
      Top = 34
      Width = 18
      Height = 17
      Caption = 'Cin'
    end
    object edCustomsDocDate: TLabel
      Left = 437
      Top = 34
      Width = 79
      Height = 17
      Caption = 'Cst. Doc Date'
    end
    object lbCustomsExpirationDate: TLabel
      Left = 551
      Top = 34
      Width = 89
      Height = 17
      Caption = 'Expiration Date'
    end
    object edCustomsMRN: TLabel
      Left = 661
      Top = 34
      Width = 30
      Height = 17
      Caption = 'MRN'
    end
    object cboCustomsDocumentType: TJvDBLookupCombo
      Left = 13
      Top = 52
      Width = 180
      Height = 25
      LookupField = 'id'
      LookupDisplay = 'description'
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 199
      Top = 52
      Width = 194
      Height = 25
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 399
      Top = 52
      Width = 32
      Height = 25
      TabOrder = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 437
      Top = 52
      Width = 104
      Height = 25
      Date = 44102.000000000000000000
      Time = 0.698144178240909200
      TabOrder = 3
    end
    object DateTimePicker2: TDateTimePicker
      Left = 551
      Top = 52
      Width = 104
      Height = 25
      Date = 44102.000000000000000000
      Time = 0.698144178240909200
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 661
      Top = 52
      Width = 310
      Height = 25
      TabOrder = 5
    end
  end
  object grpWarehouseCoordinates: TGroupBox
    Left = 996
    Top = 257
    Width = 201
    Height = 90
    Caption = 'Warehouse Location'
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 30
      Width = 65
      Height = 17
      Caption = 'Warehouse'
    end
    object Label3: TLabel
      Left = 8
      Top = 59
      Width = 29
      Height = 17
      Caption = 'Span'
    end
    object JvDBLookupCombo2: TJvDBLookupCombo
      Left = 88
      Top = 28
      Width = 97
      Height = 25
      LookupField = 'id'
      LookupDisplay = 'description'
      TabOrder = 0
    end
    object JvDBLookupCombo3: TJvDBLookupCombo
      Left = 88
      Top = 59
      Width = 97
      Height = 25
      LookupField = 'id'
      LookupDisplay = 'description'
      TabOrder = 1
    end
  end
  object JanuaVCLSearchItemController: TJanuaVCLSearchController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    SearchInput = edItemsModel
    SearchButton = btnItemSearch
    Left = 328
    Top = 8
  end
  object JanuaActionViewRowsDetailController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    ToolBar = ToolBar1
    ButtonSize = jbs24
    Left = 600
    Top = 24
  end
end
