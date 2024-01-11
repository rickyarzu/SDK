object UniFormControlsFormattedEdit: TUniFormControlsFormattedEdit
  Left = 0
  Top = 0
  Width = 493
  Height = 369
  TabOrder = 0
  DesignSize = (
    493
    369)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 493
    Height = 366
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniFormattedNumberEdit1: TUniFormattedNumberEdit
      Left = 104
      Top = 23
      Width = 121
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      FormattedInput.CurrencySignPos = cpsLeft
      FormattedInput.DefaultCurrencySign = False
      FormattedInput.CurrencySign = '$'
      FormattedInput.CurrencySignSpace = crsNone
      TabOrder = 1
      Value = 100.000000000000000000
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniFormattedNumberEdit2: TUniFormattedNumberEdit
      Left = 104
      Top = 67
      Width = 121
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      FormattedInput.CurrencySignPos = cpsLeft
      FormattedInput.DefaultCurrencySign = False
      FormattedInput.CurrencySign = #8364
      FormattedInput.CurrencySignSpace = crsAvailable
      TabOrder = 2
      Value = 100.000000000000000000
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniFormattedNumberEdit3: TUniFormattedNumberEdit
      Left = 104
      Top = 112
      Width = 121
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      FormattedInput.CurrencySignPos = cpsLeft
      FormattedInput.DefaultCurrencySign = False
      FormattedInput.CurrencySign = #163
      FormattedInput.CurrencySignSpace = crsAvailable
      TabOrder = 3
      Value = 100.000000000000000000
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniFormattedNumberEdit4: TUniFormattedNumberEdit
      Left = 104
      Top = 157
      Width = 121
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      FormattedInput.CurrencySignPos = cpsRight
      FormattedInput.DefaultCurrencySign = False
      FormattedInput.CurrencySign = 'TL'
      FormattedInput.CurrencySignSpace = crsAvailable
      TabOrder = 4
      Value = 100.000000000000000000
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniFormattedNumberEdit5: TUniFormattedNumberEdit
      Left = 104
      Top = 202
      Width = 121
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      FormattedInput.CurrencySignPos = cpsRight
      FormattedInput.DefaultCurrencySign = False
      FormattedInput.CurrencySign = #165
      FormattedInput.CurrencySignSpace = crsAvailable
      TabOrder = 5
      Value = 100.000000000000000000
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniFormattedNumberEdit6: TUniFormattedNumberEdit
      Left = 104
      Top = 247
      Width = 121
      Hint = ''
      FormattedInput.ShowCurrencySign = True
      TabOrder = 6
      Value = 100.000000000000000000
      DecimalSeparator = ','
      ThousandSeparator = '.'
    end
    object UniLabel1: TUniLabel
      Left = 24
      Top = 32
      Width = 20
      Height = 13
      Hint = ''
      Caption = 'USD'
      TabOrder = 7
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 76
      Width = 22
      Height = 13
      Hint = ''
      Caption = 'Euro'
      TabOrder = 8
    end
    object UniLabel3: TUniLabel
      Left = 24
      Top = 121
      Width = 19
      Height = 13
      Hint = ''
      Caption = 'GBP'
      TabOrder = 9
    end
    object UniLabel4: TUniLabel
      Left = 24
      Top = 166
      Width = 54
      Height = 13
      Hint = ''
      Caption = 'Turkish Lira'
      TabOrder = 10
    end
    object UniLabel5: TUniLabel
      Left = 24
      Top = 211
      Width = 18
      Height = 13
      Hint = ''
      Caption = 'Yen'
      TabOrder = 11
    end
    object UniLabel6: TUniLabel
      Left = 24
      Top = 256
      Width = 52
      Height = 13
      Hint = ''
      Caption = 'OS Default'
      TabOrder = 12
    end
    object UniMemo1: TUniMemo
      Left = 284
      Top = 23
      Width = 185
      Height = 246
      Hint = ''
      TabOrder = 13
    end
    object UniShowMemoButton: TUniButton
      Left = 192
      Top = 312
      Width = 105
      Height = 25
      Hint = ''
      Caption = 'Show in Memo'
      TabOrder = 14
      OnClick = UniShowMemoButtonClick
    end
  end
end
