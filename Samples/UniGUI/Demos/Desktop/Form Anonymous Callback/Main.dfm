object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 0
    Top = 40
    Width = 643
    Height = 271
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ReadOnly = True
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Show'
    TabOrder = 1
    OnClick = UniButton1Click
  end
end
