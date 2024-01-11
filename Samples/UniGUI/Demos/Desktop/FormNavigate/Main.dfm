object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 244
  ClientWidth = 256
  Color = clBtnFace
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 48
    Top = 32
    Width = 150
    Height = 25
    Caption = 'Tab / Shift Tab Navigate'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 48
    Top = 88
    Width = 150
    Height = 25
    Caption = 'Enter / Shift Enter Navigate'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 48
    Top = 144
    Width = 150
    Height = 25
    Caption = 'Up / Down Navigate'
    TabOrder = 2
    OnClick = UniButton3Click
  end
end
