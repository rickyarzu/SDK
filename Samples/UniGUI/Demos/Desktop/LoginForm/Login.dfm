object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 170
  ClientWidth = 491
  Caption = 'UniLoginForm1'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 32
    Top = 120
    Width = 150
    Height = 25
    Hint = ''
    Caption = 'Show MainForm'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 296
    Top = 120
    Width = 150
    Height = 25
    Hint = ''
    Caption = 'Exit Application'
    TabOrder = 1
    OnClick = UniButton2Click
  end
end
