object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  OnShow = UniFormShow
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 272
    Top = 72
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'UniLabel1'
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 264
    Top = 128
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Logout'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 264
    Top = 176
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Exit'
    TabOrder = 2
    OnClick = UniButton2Click
  end
end
