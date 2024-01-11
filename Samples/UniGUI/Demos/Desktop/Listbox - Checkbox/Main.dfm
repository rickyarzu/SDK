object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 418
  ClientWidth = 827
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniListBox1: TUniListBox
    Left = 80
    Top = 32
    Width = 233
    Height = 337
    Hint = ''
    TabOrder = 0
    MultiSelect = True
    ShowCheckBoxes = True
  end
  object UniButton1: TUniButton
    Left = 344
    Top = 32
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Get Selected'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 344
    Top = 160
    Width = 385
    Height = 209
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 2
  end
  object UniButton2: TUniButton
    Left = 344
    Top = 63
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Set Selected'
    TabOrder = 3
    OnClick = UniButton2Click
  end
  object UniCheckBox1: TUniCheckBox
    Left = 80
    Top = 376
    Width = 233
    Height = 17
    Hint = ''
    Caption = 'Check Boxes Only'
    TabOrder = 4
    OnChange = UniCheckBox1Change
  end
end
