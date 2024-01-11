object wRangeBased: TwRangeBased
  Left = 370
  Top = 313
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wRangeBased'
  ClientHeight = 324
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    609
    324)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TxhLabel
    Left = 8
    Top = 8
    Width = 433
    Height = 13
    Caption = 
      'The method of transformation of the numeric field values to the ' +
      'ranges (dimension members):'
  end
  object Label2: TxhLabel
    Left = 8
    Top = 68
    Width = 418
    Height = 13
    Caption = 
      'The amount of dimension members (intervals) that the range-based' +
      ' dimension must have:'
  end
  object rbDensity: TxhRadioButton
    Left = 16
    Top = 24
    Width = 329
    Height = 17
    Caption = 'Every range has approximately equal amount of values (hits)'
    TabOrder = 0
  end
  object rbRange: TxhRadioButton
    Left = 16
    Top = 44
    Width = 369
    Height = 17
    Caption = 
      'Every range has approximately equal value (the length of the int' +
      'erval)'
    TabOrder = 1
  end
  object RangesEdit: TxhEdit
    Left = 8
    Top = 84
    Width = 165
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Text = '2'
    OnChange = RangesEditChange
    OnExit = RangesEditExit
  end
  object UpDown1: TUpDown
    Left = 173
    Top = 84
    Width = 15
    Height = 21
    Anchors = [akTop, akRight]
    Associate = RangesEdit
    Min = 1
    Position = 2
    TabOrder = 3
  end
end
