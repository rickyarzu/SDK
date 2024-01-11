object frmRVTntCustomSpell: TfrmRVTntCustomSpell
  Left = 379
  Top = 273
  BorderStyle = bsDialog
  Caption = 'Spelling'
  ClientHeight = 228
  ClientWidth = 362
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = TntFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblTxt: TTntLabel
    Left = 7
    Top = 12
    Width = 82
    Height = 13
    Caption = 'Not in dictionary:'
  end
  object lblCmb: TTntLabel
    Left = 6
    Top = 53
    Width = 54
    Height = 13
    Caption = 'Change &to:'
  end
  object btnIgnore: TTntButton
    Left = 232
    Top = 8
    Width = 120
    Height = 25
    Caption = '&Ignore'
    Default = True
    ModalResult = 7
    TabOrder = 0
  end
  object btnIgnoreAll: TTntButton
    Left = 232
    Top = 34
    Width = 120
    Height = 25
    Caption = 'I&gnore All'
    ModalResult = 9
    TabOrder = 1
  end
  object btnChange: TTntButton
    Left = 232
    Top = 72
    Width = 120
    Height = 25
    Caption = '&Change'
    ModalResult = 6
    TabOrder = 2
  end
  object btnChangeAll: TTntButton
    Left = 232
    Top = 100
    Width = 120
    Height = 25
    Caption = 'C&hange All'
    ModalResult = 10
    TabOrder = 3
  end
  object btnCancel: TTntButton
    Left = 232
    Top = 192
    Width = 120
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object btnAdd: TTntButton
    Left = 231
    Top = 128
    Width = 120
    Height = 25
    Caption = '&Add'
    ModalResult = 1
    TabOrder = 4
  end
end
