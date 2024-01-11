object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 447
  ClientWidth = 779
  Caption = 'MainForm'
  OldCreateOrder = False
  Script.Strings = (
    '')
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniRoundPanel1: TUniRoundPanel
    Left = 136
    Top = 88
    Width = 273
    Height = 217
    Hint = ''
    OnChangeRadius = UniRoundPanel1ChangeRadius
  end
  object UniButton1: TUniButton
    Left = 208
    Top = 344
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Increase Radius'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 456
    Top = 88
    Width = 257
    Height = 217
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 2
  end
  object UniButton2: TUniButton
    Left = 208
    Top = 375
    Width = 145
    Height = 25
    Hint = ''
    Caption = 'Decrease Radius'
    TabOrder = 3
    OnClick = UniButton2Click
  end
end
