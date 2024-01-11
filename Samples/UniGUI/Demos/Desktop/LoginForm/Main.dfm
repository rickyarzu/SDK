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
  object UniButton1: TUniButton
    Left = 208
    Top = 104
    Width = 150
    Height = 25
    Hint = ''
    Caption = 'Display Login Form'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 208
    Top = 144
    Width = 150
    Height = 25
    Hint = ''
    Caption = 'Exit Application'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniLabel1: TUniLabel
    Left = 208
    Top = 64
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'UniLabel1'
    TabOrder = 2
  end
end
