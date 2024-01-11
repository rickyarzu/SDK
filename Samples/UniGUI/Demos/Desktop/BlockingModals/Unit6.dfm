object UniForm6: TUniForm6
  Left = 0
  Top = 0
  ClientHeight = 279
  ClientWidth = 605
  Caption = 'UniForm6'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 256
    Top = 80
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Next Form'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 256
    Top = 152
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Close'
    ModalResult = 1
    TabOrder = 1
  end
end
