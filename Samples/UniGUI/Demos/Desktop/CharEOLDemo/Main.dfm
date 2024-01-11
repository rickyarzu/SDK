object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 396
  Height = 419
  Caption = 'MainForm'
  ClientHeight = 385
  ClientWidth = 388
  Color = clBtnFace
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 32
    Top = 16
    Width = 155
    Height = 13
    Caption = 'Type something and press Enter'
  end
  object UniEdit1: TUniEdit
    Left = 32
    Top = 32
    Width = 321
    Height = 21
    PasswordChar = #0
    CharCase = ecNormal
    MaxLength = 0
    CharEOL = #13
    Text = 'UniEdit1'
    TabOrder = 0
    Color = clWindow
    OnKeyPress = UniEdit1KeyPress
  end
  object UniMemo1: TUniMemo
    Left = 32
    Top = 59
    Width = 321
    Height = 246
    Lines.Strings = (
      'UniMemo1')
    Color = clWindow
    TabOrder = 1
  end
end
