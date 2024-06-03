object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FourSquare Categories'
  ClientHeight = 343
  ClientWidth = 255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TreeView1: TTreeView
    Left = 8
    Top = 8
    Width = 238
    Height = 292
    Indent = 19
    TabOrder = 0
  end
  object btAddCat: TButton
    Left = 93
    Top = 306
    Width = 74
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 1
  end
  object Button1: TButton
    Left = 173
    Top = 306
    Width = 74
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 2
    OnClick = Button1Click
  end
end
