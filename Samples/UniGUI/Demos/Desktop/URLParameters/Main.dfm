object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 314
  ClientWidth = 523
  Caption = 'MainForm'
  OnShow = UniFormShow
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 48
    Top = 40
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 0
  end
  object UniEdit1: TUniEdit
    Left = 48
    Top = 88
    Width = 121
    Height = 21
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 1
  end
  object UniMemo1: TUniMemo
    Left = 48
    Top = 128
    Width = 345
    Height = 89
    Hint = ''
    Lines.Strings = (
      'To test this project browse to the following URL:'
      ''
      'http://localhost:8077/?button=BB&edit=AA&spin=100'
      '')
    TabOrder = 2
  end
  object UniSpinEdit1: TUniSpinEdit
    Left = 192
    Top = 87
    Width = 121
    Hint = ''
    TabOrder = 3
  end
end
