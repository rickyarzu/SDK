object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 186
  ClientWidth = 375
  Caption = 'UniForm1'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 144
    Top = 80
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'OK'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 144
    Top = 111
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = UniButton2Click
  end
end
