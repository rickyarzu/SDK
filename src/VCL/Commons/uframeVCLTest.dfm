object frameVCLTest: TframeVCLTest
  Left = 0
  Top = 0
  Width = 500
  Height = 267
  TabOrder = 0
  object lbStringField: TLabel
    Left = 40
    Top = 21
    Width = 53
    Height = 13
    Caption = 'String Field'
  end
  object lbIntField: TLabel
    Left = 40
    Top = 69
    Width = 39
    Height = 13
    Caption = 'Int Field'
  end
  object lbFloatField: TLabel
    Left = 184
    Top = 69
    Width = 49
    Height = 13
    Caption = 'Float Field'
  end
  object lbDateTime: TLabel
    Left = 40
    Top = 117
    Width = 48
    Height = 13
    Caption = 'Date Time'
  end
  object lbDate: TLabel
    Left = 280
    Top = 117
    Width = 23
    Height = 13
    Caption = 'Date'
  end
  object lbMemo: TLabel
    Left = 40
    Top = 165
    Width = 53
    Height = 13
    Caption = 'Memo Field'
  end
  object edStringField: TEdit
    Left = 40
    Top = 40
    Width = 425
    Height = 21
    TabOrder = 0
    Text = 'String Field'
  end
  object edIntField: TSpinEdit
    Left = 40
    Top = 88
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object edFloatField: TMoneyEdit
    Left = 184
    Top = 88
    Width = 121
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
  object ckbBoolField: TCheckBox
    Left = 368
    Top = 90
    Width = 97
    Height = 17
    Caption = 'Bool Field'
    TabOrder = 3
  end
  object edDateTime: TDateTimePicker
    Left = 40
    Top = 136
    Width = 186
    Height = 21
    Date = 44070.000000000000000000
    Time = 0.601761944446479900
    TabOrder = 4
  end
  object edDate: TDateTimePicker
    Left = 280
    Top = 136
    Width = 97
    Height = 21
    Date = 44070.000000000000000000
    Time = 0.601761944446479900
    TabOrder = 5
  end
  object memMemoField: TMemo
    Left = 40
    Top = 184
    Width = 425
    Height = 65
    Lines.Strings = (
      'memMemoField')
    TabOrder = 6
  end
end
