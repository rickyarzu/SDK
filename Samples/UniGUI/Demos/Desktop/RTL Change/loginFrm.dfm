object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 166
  ClientWidth = 580
  Caption = 'UniLoginForm1'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniLoginFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniEdit1: TUniEdit
    Left = 200
    Top = 32
    Width = 121
    Hint = ''
    Text = 'UniEdit1'
    TabOrder = 0
  end
  object UniEdit2: TUniEdit
    Left = 200
    Top = 72
    Width = 121
    Hint = ''
    Text = 'UniEdit2'
    TabOrder = 1
  end
  object UniButton1: TUniButton
    Left = 464
    Top = 128
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'OK'
    TabOrder = 2
    OnClick = UniButton1Click
  end
end
