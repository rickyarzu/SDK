object UniForm5: TUniForm5
  Left = 0
  Top = 0
  ClientHeight = 391
  ClientWidth = 655
  Caption = 'UniForm5'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 280
    Top = 168
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Next Form'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 280
    Top = 256
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 1
  end
end
