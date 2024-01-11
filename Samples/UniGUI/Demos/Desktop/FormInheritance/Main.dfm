object MainForm: TMainForm
  Left = 5
  Top = 5
  ClientHeight = 245
  ClientWidth = 415
  Caption = 'MainForm'
  OnShow = UniFormShow
  Position = poDesigned
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 40
    Top = 8
    Width = 101
    Height = 23
    Caption = 'Main Form'
    ParentFont = False
    Font.Height = -19
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniMemo1: TUniMemo
    Left = 40
    Top = 37
    Width = 185
    Height = 193
    Lines.Strings = (
      'Main Form Control')
    Color = clWindow
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 231
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Open Level1 '
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 231
    Top = 68
    Width = 75
    Height = 25
    Caption = 'Open Level 2'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 231
    Top = 99
    Width = 75
    Height = 25
    Caption = 'Open Level 3'
    TabOrder = 4
    OnClick = UniButton3Click
  end
end
