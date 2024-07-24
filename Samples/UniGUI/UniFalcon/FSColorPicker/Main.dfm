object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 385
  ClientWidth = 778
  Caption = 'Componente Ext.Color.Picker'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object cmbc: TUniFSColorPicker
    Left = 86
    Top = 48
    Width = 195
    Height = 25
    Hint = ''
    OnChangeColor = cmbcChangeColor
    ColorValue = clWhite
    PickerHeight = 265
    PickerWidth = 205
    PickerEditable = True
    PickerTextColor = clBlack
    PickerBackgroundColor = clWhite
  end
  object pnlColor: TUniPanel
    Left = 304
    Top = 48
    Width = 177
    Height = 89
    Hint = ''
    ParentFont = False
    Font.Color = clWhite
    TabOrder = 3
    Caption = 'TUniPanel'
  end
  object btnc: TUniColorButton
    Left = 502
    Top = 48
    Width = 196
    Height = 25
    Hint = ''
    Color = clBlack
    Caption = ''
  end
  object lbl1: TUniLabel
    Left = 502
    Top = 29
    Width = 166
    Height = 13
    Hint = ''
    Caption = 'TUniColorButton (Unigui Native)'
    TabOrder = 1
  end
  object lbl2: TUniLabel
    Left = 86
    Top = 29
    Width = 137
    Height = 13
    Hint = ''
    Caption = 'TUniFSColorPicker (Falcon)'
    TabOrder = 0
  end
  object btnSetColorWeb: TUniBitBtn
    Left = 86
    Top = 88
    Width = 137
    Height = 25
    Hint = ''
    Caption = 'SetColorWeb #FF9800'
    TabOrder = 5
    OnClick = btnSetColorWebClick
  end
end
