object Form6: TForm6
  Left = 0
  Top = 0
  Caption = 'TMS PayPal Demo'
  ClientHeight = 452
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 263
    Height = 13
    Caption = 'Products: (Select required products and enter quantiy)'
  end
  object Label8: TLabel
    Left = 8
    Top = 296
    Width = 48
    Height = 13
    Caption = 'Currency:'
  end
  object Label9: TLabel
    Left = 8
    Top = 323
    Width = 44
    Height = 13
    Caption = 'Shipping:'
  end
  object Button2: TButton
    Left = 71
    Top = 404
    Width = 100
    Height = 25
    Caption = 'Order'
    TabOrder = 0
    OnClick = Button2Click
  end
  object ListView1: TListView
    Left = 8
    Top = 27
    Width = 529
    Height = 257
    Checkboxes = True
    Columns = <
      item
        Caption = 'Quantity'
        Width = 75
      end
      item
        Caption = 'Name'
        Width = 100
      end
      item
        Caption = 'Description'
        Width = 250
      end
      item
        Alignment = taRightJustify
        Caption = 'Unit Price'
        Width = 80
      end>
    Items.ItemData = {
      051D0300000700000000000000FFFFFFFFFFFFFFFF03000000FFFFFFFF000000
      000131000B45006D00620061007200630061006400650072006F000069C42117
      440065006C0070006800690020005800450038002000500072006F0066006500
      7300730069006F006E0061006C006066C421043100320030003000F863C42100
      000000FFFFFFFFFFFFFFFF03000000FFFFFFFF00000000013100094D00690063
      0072006F0073006F0066007400486CC4210B570069006E0064006F0077007300
      200038002E003100D864C42103310031003900686BC42100000000FFFFFFFFFF
      FFFFFF03000000FFFFFFFF00000000013100094D006900630072006F0073006F
      0066007400C06AC421184F00660066006900630065002000500072006F006600
      65007300730069006F006E0061006C00200032003000310033000867C4210333
      0039003900506AC42100000000FFFFFFFFFFFFFFFF03000000FFFFFFFF000000
      00013100094D006900630072006F0073006F00660074002068C4211A56006900
      7300750061006C002000530074007500640069006F002000500072006F006600
      65007300730069006F006E0061006C00E867C4210431003100390039007069C4
      2100000000FFFFFFFFFFFFFFFF03000000FFFFFFFF0000000001310005410070
      0070006C006500C868C4210A4D006100630020004F0053005800200031003000
      5868C4210231003900E069C42100000000FFFFFFFFFFFFFFFF03000000FFFFFF
      FF000000000131000B45006D00620061007200630061006400650072006F00F0
      65C4211449006E00740065007200420061007300650020005800450037002000
      530065007200760065007200106CC42103330030003000806CC42100000000FF
      FFFFFFFFFFFFFF03000000FFFFFFFF000000000131000B45006D006200610072
      00630061006400650072006F00606DC4211A4600690072006500440041004300
      200043006C00690065006E0074002F0053006500720076006500720020005000
      610063006B00986DC42103360037003600086EC421FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 1
    ViewStyle = vsReport
    OnEdited = ListView1Edited
  end
  object cbCurrency: TComboBox
    Left = 71
    Top = 293
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 2
    Text = 'EUR'
    OnChange = cbCurrencyChange
    Items.Strings = (
      'EUR'
      'USD'
      'NOK'
      'HKD')
  end
  object cbShipping: TComboBox
    Left = 71
    Top = 320
    Width = 145
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 3
    Text = 'Europe (5 EUR)'
    Items.Strings = (
      'Europe (5 EUR)'
      'USA (5 USD)'
      'Asia (5 HKD)')
  end
  object cbInsurance: TCheckBox
    Left = 74
    Top = 347
    Width = 142
    Height = 17
    Caption = 'Insurance (5 EUR)'
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 240
    Top = 290
    Width = 297
    Height = 142
    Caption = 'Last order customer details'
    TabOrder = 5
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 35
      Height = 13
      Caption = 'Status:'
    end
    object Label4: TLabel
      Left = 16
      Top = 43
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object Label5: TLabel
      Left = 16
      Top = 62
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object Label6: TLabel
      Left = 16
      Top = 81
      Width = 43
      Height = 13
      Caption = 'Address:'
    end
    object Label7: TLabel
      Left = 16
      Top = 100
      Width = 43
      Height = 13
      Caption = 'Country:'
    end
    object Label2: TLabel
      Left = 16
      Top = 119
      Width = 31
      Height = 13
      Caption = 'Total: '
    end
    object lbStatus: TLabel
      Left = 88
      Top = 24
      Width = 39
      Height = 13
      Caption = 'lbStatus'
    end
    object lbID: TLabel
      Left = 88
      Top = 43
      Width = 19
      Height = 13
      Caption = 'lbID'
    end
    object lbName: TLabel
      Left = 88
      Top = 62
      Width = 35
      Height = 13
      Caption = 'lbName'
    end
    object lbAddress: TLabel
      Left = 88
      Top = 81
      Width = 47
      Height = 13
      Caption = 'lbAddress'
    end
    object lbCountry: TLabel
      Left = 88
      Top = 100
      Width = 47
      Height = 13
      Caption = 'lbCountry'
    end
    object lbTotal: TLabel
      Left = 88
      Top = 119
      Width = 32
      Height = 13
      Caption = 'lbTotal'
    end
  end
  object AdvPayPal1: TAdvPayPal
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888/'
    App.CallBackPort = 8888
    PersistTokens.Location = plIniFile
    Logging = False
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 1000
    AuthFormSettings.Height = 900
    OnAuthFormClose = AdvPayPal1AuthFormClose
    APIEnvironment = peLive
    OnPaymentCancelled = AdvPayPal1PaymentCancelled
    OnPaymentFailed = AdvPayPal1PaymentFailed
    OnPaymentAccepted = AdvPayPal1PaymentAccepted
    Left = 24
    Top = 376
  end
end
