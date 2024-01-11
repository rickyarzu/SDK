object frmRVCustomSpell: TfrmRVCustomSpell
  Left = 379
  Top = 273
  BorderStyle = bsDialog
  Caption = 'Spelling'
  ClientHeight = 228
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTxt: TLabel
    Left = 7
    Top = 12
    Width = 82
    Height = 13
    Caption = 'Not in dictionary:'
  end
  object lblCmb: TLabel
    Left = 6
    Top = 53
    Width = 54
    Height = 13
    Caption = 'Change &to:'
  end
  object btnIgnore: TButton
    Left = 234
    Top = 6
    Width = 120
    Height = 25
    Caption = '&Ignore'
    Default = True
    ModalResult = 7
    TabOrder = 0
  end
  object btnIgnoreAll: TButton
    Left = 234
    Top = 33
    Width = 120
    Height = 25
    Caption = 'I&gnore All'
    ModalResult = 9
    TabOrder = 1
  end
  object btnChange: TButton
    Left = 234
    Top = 86
    Width = 120
    Height = 25
    Caption = '&Change'
    ModalResult = 6
    TabOrder = 2
  end
  object btnChangeAll: TButton
    Left = 234
    Top = 115
    Width = 120
    Height = 25
    Caption = 'C&hange All'
    ModalResult = 10
    TabOrder = 3
  end
  object btnCancel: TButton
    Left = 234
    Top = 190
    Width = 120
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object btnAdd: TButton
    Left = 234
    Top = 143
    Width = 120
    Height = 25
    Caption = '&Add'
    ModalResult = 1
    TabOrder = 4
  end
end
