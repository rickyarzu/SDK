object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 292
  ClientWidth = 235
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 56
    Top = 48
    Width = 125
    Height = 25
    Caption = 'Download A File'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 56
    Top = 96
    Width = 125
    Height = 25
    Caption = 'Download Another File'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 56
    Top = 192
    Width = 125
    Height = 25
    Caption = 'Download From Stream'
    TabOrder = 2
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 56
    Top = 144
    Width = 125
    Height = 25
    Caption = 'Download File As...'
    TabOrder = 3
    OnClick = UniButton4Click
  end
end
