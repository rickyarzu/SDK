inherited frameAnagraphCompanyPayments: TframeAnagraphCompanyPayments
  Width = 732
  Height = 168
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 732
  ExplicitHeight = 168
  DesignSize = (
    732
    168)
  object JvGroupBox1: TJvGroupBox
    Left = 16
    Top = 16
    Width = 694
    Height = 149
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Payments'
    TabOrder = 0
    DesignSize = (
      694
      149)
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 51
      Height = 17
      Caption = 'Currency'
    end
    object lblDiscountRate: TLabel
      Left = 127
      Top = 32
      Width = 144
      Height = 17
      Caption = 'Customer Discount Rate '
    end
    object Label3: TLabel
      Left = 16
      Top = 89
      Width = 88
      Height = 17
      Caption = 'Payment Terms'
    end
    object lblTrustAmount: TLabel
      Left = 293
      Top = 32
      Width = 77
      Height = 17
      Caption = 'Trust Amount'
    end
    object lblInstalments: TLabel
      Left = 501
      Top = 32
      Width = 77
      Height = 17
      Caption = 'Trust Amount'
    end
    object cboCurrency: TComboBox
      Left = 16
      Top = 55
      Width = 97
      Height = 25
      TabOrder = 0
      Text = 'cboCurrency'
    end
    object edtCustomerDiscountRate: TAdvMoneyEdit
      Left = 127
      Top = 55
      Width = 144
      Height = 25
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
    object cbbPaymentTerms: TComboBox
      Left = 16
      Top = 112
      Width = 465
      Height = 25
      TabOrder = 2
      Text = 'Payment Terms'
    end
    object lviewInstalments: TListView
      Left = 501
      Top = 55
      Width = 190
      Height = 82
      Anchors = [akLeft, akTop, akRight]
      Columns = <>
      TabOrder = 3
    end
    object edtTrustAmount: TAdvMoneyEdit
      Left = 293
      Top = 55
      Width = 144
      Height = 25
      EditType = etFloat
      EmptyTextStyle = []
      FlatLineColor = 11250603
      FocusColor = clWindow
      FocusFontColor = 3881787
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 4
      Text = '0,00'
      Visible = True
      Version = '1.1.3.0'
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
    end
  end
end
