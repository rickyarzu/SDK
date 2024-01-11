object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 372
  Height = 401
  Caption = 'MainForm'
  ClientHeight = 367
  ClientWidth = 364
  Color = clBtnFace
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 32
    Top = 24
    Width = 46
    Height = 13
    TextConversion = txtHTML
    Caption = 'UniLabel1'
  end
  object UniButton1: TUniButton
    Left = 32
    Top = 43
    Width = 297
    Height = 25
    Caption = 'File in Temp Folder'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 32
    Top = 136
    Width = 297
    Height = 209
    Lines.Strings = (
      'Sample Text!'
      'Sample Text!'
      'Sample Text!'
      'Sample Text!'
      'Sample Text!'
      'Sample Text!'
      'Sample Text!')
    Color = clWindow
    TabOrder = 1
  end
  object UniButton2: TUniButton
    Left = 32
    Top = 74
    Width = 297
    Height = 25
    Caption = 'File in Local Cache Folder'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 32
    Top = 105
    Width = 297
    Height = 25
    Caption = 'File in Global Cache Folder'
    TabOrder = 3
    OnClick = UniButton3Click
  end
end
