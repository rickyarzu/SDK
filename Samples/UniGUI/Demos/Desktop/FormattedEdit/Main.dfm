object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 453
  ClientWidth = 565
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 48
    Top = 32
    Width = 29
    Height = 13
    Hint = ''
    Caption = 'Dolar:'
    TabOrder = 0
  end
  object UniFormattedNumberEdit1: TUniFormattedNumberEdit
    Left = 128
    Top = 23
    Width = 121
    Hint = ''
    FormattedInput.ShowCurrencySign = True
    FormattedInput.CurrencySignPos = cpsRight
    FormattedInput.DefaultCurrencySign = False
    FormattedInput.CurrencySign = '$'
    FormattedInput.CurrencySignSpace = crsAvailable
    TabOrder = 1
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniFormattedNumberEdit2: TUniFormattedNumberEdit
    Left = 128
    Top = 63
    Width = 121
    Hint = ''
    FormattedInput.ShowCurrencySign = True
    FormattedInput.CurrencySignPos = cpsRight
    FormattedInput.DefaultCurrencySign = False
    FormattedInput.CurrencySign = #8364
    FormattedInput.CurrencySignSpace = crsAvailable
    TabOrder = 2
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniLabel2: TUniLabel
    Left = 48
    Top = 72
    Width = 26
    Height = 13
    Hint = ''
    Caption = 'Euro:'
    TabOrder = 3
  end
  object UniFormattedNumberEdit3: TUniFormattedNumberEdit
    Left = 128
    Top = 111
    Width = 121
    Hint = ''
    FormattedInput.ShowCurrencySign = True
    FormattedInput.CurrencySignPos = cpsRight
    FormattedInput.DefaultCurrencySign = False
    FormattedInput.CurrencySign = #163
    FormattedInput.CurrencySignSpace = crsAvailable
    TabOrder = 4
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniLabel3: TUniLabel
    Left = 48
    Top = 120
    Width = 34
    Height = 13
    Hint = ''
    Caption = 'Sterlin:'
    TabOrder = 5
  end
  object UniFormattedNumberEdit4: TUniFormattedNumberEdit
    Left = 128
    Top = 151
    Width = 121
    Hint = ''
    FormattedInput.ShowCurrencySign = True
    FormattedInput.CurrencySignPos = cpsRight
    FormattedInput.DefaultCurrencySign = False
    FormattedInput.CurrencySign = 'TL'
    FormattedInput.CurrencySignSpace = crsAvailable
    TabOrder = 6
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniLabel4: TUniLabel
    Left = 48
    Top = 160
    Width = 58
    Height = 13
    Hint = ''
    Caption = 'Turkish Lira:'
    TabOrder = 7
  end
  object UniFormattedNumberEdit5: TUniFormattedNumberEdit
    Left = 128
    Top = 199
    Width = 121
    Hint = ''
    FormattedInput.ShowCurrencySign = True
    FormattedInput.CurrencySignPos = cpsRight
    FormattedInput.DefaultCurrencySign = False
    FormattedInput.CurrencySign = #165
    FormattedInput.CurrencySignSpace = crsAvailable
    TabOrder = 8
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniLabel5: TUniLabel
    Left = 48
    Top = 208
    Width = 22
    Height = 13
    Hint = ''
    Caption = 'Yen:'
    TabOrder = 9
  end
  object UniFormattedNumberEdit6: TUniFormattedNumberEdit
    Left = 128
    Top = 247
    Width = 121
    Hint = ''
    FormattedInput.ShowCurrencySign = True
    TabOrder = 10
    DecimalSeparator = ','
    ThousandSeparator = '.'
  end
  object UniLabel6: TUniLabel
    Left = 48
    Top = 256
    Width = 39
    Height = 13
    Hint = ''
    Caption = 'Default:'
    TabOrder = 11
  end
  object UniMemo1: TUniMemo
    Left = 336
    Top = 24
    Width = 185
    Height = 245
    Hint = ''
    TabOrder = 12
  end
  object UniButton1: TUniButton
    Left = 240
    Top = 312
    Width = 105
    Height = 25
    Hint = ''
    Caption = 'Show in Memo'
    TabOrder = 13
    OnClick = UniButton1Click
  end
end
