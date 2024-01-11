object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniTagField1: TUniTagField
    Left = 32
    Top = 32
    Width = 425
    Hint = ''
    Items.Strings = (
      'Orange'
      'Apple'
      'Banana'
      'Coconat'
      'Cherry'
      'Strawberry'
      'Kiwi')
    TabOrder = 0
    FlexWidth = True
    ClearButton = True
    OnChange = UniTagField1Change
  end
  object UniMemo1: TUniMemo
    Left = 32
    Top = 60
    Width = 425
    Height = 181
    Hint = ''
    TabOrder = 1
  end
  object UniButton1: TUniButton
    Left = 32
    Top = 247
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Set'
    TabOrder = 2
    OnClick = UniButton1Click
  end
end
