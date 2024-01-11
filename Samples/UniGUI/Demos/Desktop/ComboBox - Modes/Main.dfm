object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniComboBox1: TUniComboBox
    Left = 40
    Top = 56
    Width = 145
    Hint = ''
    Text = 'UniComboBox1'
    TabOrder = 0
    IconItems = <>
    OnChange = UniComboBox1Change
  end
  object UniComboBox2: TUniComboBox
    Left = 40
    Top = 168
    Width = 145
    Hint = ''
    Text = 'UniComboBox2'
    TabOrder = 1
    IconItems = <>
    Mode = umNameValue
    OnChange = UniComboBox1Change
  end
  object UniLabel1: TUniLabel
    Left = 40
    Top = 37
    Width = 103
    Height = 13
    Hint = ''
    Caption = 'Mode = umNameOnly'
    TabOrder = 2
  end
  object UniLabel2: TUniLabel
    Left = 40
    Top = 149
    Width = 107
    Height = 13
    Hint = ''
    Caption = 'Mode = umNameValue'
    TabOrder = 3
  end
  object UniMemo1: TUniMemo
    Left = 272
    Top = 56
    Width = 273
    Height = 134
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 4
  end
end
