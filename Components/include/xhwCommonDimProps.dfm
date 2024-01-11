object wCommonDimProps: TwCommonDimProps
  Left = 445
  Top = 169
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wCommonDimProps'
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
    Width = 146
    Height = 13
    Caption = 'Display name of the dimension:'
  end
  object Label2: TxhLabel
    Left = 8
    Top = 136
    Width = 257
    Height = 13
    Caption = 'The position of the dimension in the selected grid area:'
  end
  object Label3: TxhLabel
    Left = 8
    Top = 184
    Width = 271
    Height = 13
    Caption = 'The dimension sorting method when displaying in the grid:'
  end
  object Label4: TxhLabel
    Left = 8
    Top = 232
    Width = 209
    Height = 13
    Caption = 'How "Total" line will be displayed by default:'
  end
  object edDisplayName: TxhEdit
    Left = 16
    Top = 24
    Width = 281
    Height = 21
    Hint = 'This is the text label that will always be displayed in the grid'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object rgArea: TRadioGroup
    Left = 8
    Top = 56
    Width = 289
    Height = 73
    Hint = 'Defines a grid area where the dimension should appear by default'
    Caption = 'The grid area where dimension is located:'
    Items.Strings = (
      'Row area'
      'Column area'
      'Page area')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object cbSortType: TxhComboBox
    Left = 16
    Top = 200
    Width = 281
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 2
    Items.Strings = (
      'By database order'
      'By name ascending'
      'By name descending'
      'Custom (see THierCubeGrid.OnCompareDimensionMember)')
  end
  object cbTotalAppearance: TxhComboBox
    Left = 16
    Top = 248
    Width = 281
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 3
    Items.Strings = (
      'By the first order'
      'By the last order'
      'Don'#39't display ')
  end
  object PositionEdit: TxhEdit
    Left = 16
    Top = 156
    Width = 265
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    Text = '1'
    OnChange = PositionEditChange
    OnExit = PositionEditExit
  end
  object UpDown1: TUpDown
    Left = 281
    Top = 156
    Width = 16
    Height = 21
    Anchors = [akTop, akRight]
    Associate = PositionEdit
    Min = 1
    Position = 1
    TabOrder = 5
  end
end
