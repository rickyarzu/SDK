object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 457
  ClientWidth = 643
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 16
    Top = 40
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'ShowMessage'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 16
    Top = 71
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
    Height = 441
    Hint = ''
    Color = clWindow
    TabOrder = 2
  end
  object UniButton3: TUniButton
    Left = 16
    Top = 102
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Nested ShowMessages'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 16
    Top = 169
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Dialog'
    TabOrder = 4
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 16
    Top = 200
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Confirm'
    TabOrder = 5
    OnClick = UniButton5Click
  end
  object UniButton6: TUniButton
    Left = 16
    Top = 231
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Nested Dialogs'
    TabOrder = 6
    OnClick = UniButton6Click
  end
  object UniButton7: TUniButton
    Left = 16
    Top = 320
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbYesNo'
    TabOrder = 7
    OnClick = UniButton7Click
  end
  object UniButton8: TUniButton
    Left = 16
    Top = 351
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbYesNoCancel'
    TabOrder = 8
    OnClick = UniButton8Click
  end
  object UniButton9: TUniButton
    Left = 16
    Top = 382
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'mbOKCancel'
    TabOrder = 9
    OnClick = UniButton9Click
  end
end
