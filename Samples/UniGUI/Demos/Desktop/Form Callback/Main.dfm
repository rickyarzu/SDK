object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 8
    Top = 16
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Show'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 89
    Top = 16
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Show Modal'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniMemo1: TUniMemo
    Left = 0
    Top = 56
    Width = 643
    Height = 255
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ReadOnly = True
    Color = clWindow
    TabOrder = 2
  end
end
