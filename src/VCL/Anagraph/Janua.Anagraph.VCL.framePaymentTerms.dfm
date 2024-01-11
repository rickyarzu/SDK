object frameAnagraphVCLPaymentTerms: TframeAnagraphVCLPaymentTerms
  Left = 0
  Top = 0
  Width = 819
  Height = 118
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object grpPaymentTerms: TJvGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 813
    Height = 112
    Align = alClient
    Caption = 'Payments'
    TabOrder = 0
    DesignSize = (
      813
      112)
    object lbCurrency: TLabel
      Left = 3
      Top = 36
      Width = 51
      Height = 17
      Caption = 'Currency'
    end
    object lbDiscountRate: TLabel
      Left = 143
      Top = 36
      Width = 144
      Height = 17
      Caption = 'Customer Discount Rate '
    end
    object lbPaymentTerms: TLabel
      Left = 3
      Top = 75
      Width = 88
      Height = 17
      Caption = 'Payment Terms'
    end
    object cboCurrency: TComboBox
      Left = 73
      Top = 32
      Width = 56
      Height = 25
      TabOrder = 0
      Text = 'cboCurrency'
    end
    object AdvMoneyEdit1: TAdvMoneyEdit
      Left = 357
      Top = 32
      Width = 121
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
    object cboPaymentTerms: TComboBox
      Left = 143
      Top = 72
      Width = 335
      Height = 25
      TabOrder = 2
      Text = 'cboPaymentTerms'
    end
    object lvPaymentTerms: TListView
      Left = 488
      Top = 21
      Width = 309
      Height = 76
      Anchors = [akLeft, akTop, akRight]
      Columns = <>
      TabOrder = 3
      ExplicitWidth = 243
    end
  end
end
