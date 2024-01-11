object wSelectDimRole: TwSelectDimRole
  Left = 462
  Top = 139
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wSelectDimRole'
  ClientHeight = 324
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TxhLabel
    Left = 8
    Top = 8
    Width = 203
    Height = 13
    Caption = 'Please select the role of the fact table field:'
  end
  object rbTextCaptions: TxhRadioButton
    Left = 12
    Top = 28
    Width = 413
    Height = 17
    Caption = 'The field contains text captions of dimension members'
    TabOrder = 0
  end
  object rbKeys: TxhRadioButton
    Left = 12
    Top = 48
    Width = 417
    Height = 17
    Caption = 
      'The field contains foreign keys which reference the dimension ta' +
      'ble'
    TabOrder = 1
  end
  object rbRangeBased: TxhRadioButton
    Left = 12
    Top = 68
    Width = 417
    Height = 17
    Caption = 'The field represents a range-based dimension'
    TabOrder = 2
  end
end
