object wSelectFT: TwSelectFT
  Left = 653
  Top = 233
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wSelectFT'
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
    Left = 12
    Top = 8
    Width = 223
    Height = 13
    Caption = 'Please select the data source for the fact table:'
  end
  object cbFactTable: TComboBox
    Left = 24
    Top = 24
    Width = 189
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 0
    OnChange = cbFactTableCloseUp
  end
end
