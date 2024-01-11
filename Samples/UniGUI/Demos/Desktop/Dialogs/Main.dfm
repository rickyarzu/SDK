object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 479
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ScreenMask.Message = 'Please Wait...'
  ScreenMask.Color = 8454016
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 24
    Top = 8
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'ShowMessage'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 24
    Top = 39
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'ShowMessage Callback'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniMemo1: TUniMemo
    Left = 183
    Top = 8
    Width = 452
    Height = 457
    Hint = ''
    Color = clWindow
    TabOrder = 2
  end
  object UniButton3: TUniButton
    Left = 24
    Top = 70
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Nested ShowMessages'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 24
    Top = 137
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Dialog'
    TabOrder = 4
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 24
    Top = 168
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Confirm'
    TabOrder = 5
    OnClick = UniButton5Click
  end
  object UniButton6: TUniButton
    Left = 24
    Top = 199
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Nested Dialogs'
    TabOrder = 6
    OnClick = UniButton6Click
  end
  object UniButton7: TUniButton
    Left = 24
    Top = 288
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbYesNo'
    TabOrder = 7
    OnClick = UniButton7Click
  end
  object UniButton8: TUniButton
    Left = 24
    Top = 319
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbYesNoCancel'
    TabOrder = 8
    OnClick = UniButton8Click
  end
  object UniButton9: TUniButton
    Left = 24
    Top = 350
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbOKCancel'
    TabOrder = 9
    OnClick = UniButton9Click
  end
  object UniButton11: TUniButton
    Left = 24
    Top = 230
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Error'
    TabOrder = 10
    OnClick = UniButton11Click
  end
  object UniButton10: TUniButton
    Left = 24
    Top = 400
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Dialog - Mask'
    TabOrder = 11
    OnClick = UniButton10Click
  end
  object UniButton12: TUniButton
    Left = 24
    Top = 431
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbYesNo - Mask'
    TabOrder = 12
    OnClick = UniButton12Click
  end
end
