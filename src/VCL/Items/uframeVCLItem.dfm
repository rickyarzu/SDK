object frameVCLItem: TframeVCLItem
  Left = 0
  Top = 0
  Width = 785
  Height = 117
  TabOrder = 0
  PixelsPerInch = 96
  object lbItemModel: TLabel
    Left = 160
    Top = 9
    Width = 61
    Height = 15
    Caption = 'Item Model'
  end
  object SKU: TLabel
    Left = 16
    Top = 9
    Width = 21
    Height = 15
    Caption = 'SKU'
  end
  object lbPrice: TLabel
    Left = 16
    Top = 61
    Width = 26
    Height = 15
    Caption = 'Price'
  end
  object edItemModel: TEdit
    Left = 160
    Top = 28
    Width = 585
    Height = 21
    TabOrder = 1
    TextHint = 'Item Model'
  end
  object edSKUItemCode: TEdit
    Left = 16
    Top = 28
    Width = 129
    Height = 21
    TabOrder = 0
    TextHint = 'SKU'
  end
  object MoneyEdit1: TMoneyEdit
    Left = 16
    Top = 80
    Width = 129
    Height = 21
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
end
