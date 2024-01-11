object wDimLevelKeys: TwDimLevelKeys
  Left = 340
  Top = 130
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wDimLevelKeys'
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
  object Panel1: TxhPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    XPStyle = False
    TabOrder = 0
    object Label1: TxhLabel
      Left = 8
      Top = 8
      Width = 190
      Height = 13
      Caption = 'The data source for the dimension table:'
    end
    object cbDimensionTable: TComboBox
      Left = 16
      Top = 24
      Width = 265
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      OnChange = cbDimensionTableCloseUp
    end
    object cbHasParentChild: TxhCheckBox
      Left = 285
      Top = 26
      Width = 329
      Height = 17
      Caption = 'The dimension table has a Parent-Child hierarchical relation'
      TabOrder = 1
      OnClick = cbHasParentChildClick
    end
  end
  object pnPrimary: TxhPanel
    Left = 0
    Top = 50
    Width = 609
    Height = 100
    Align = alTop
    BevelOuter = bvNone
    XPStyle = False
    TabOrder = 1
    Visible = False
    object Label2: TxhLabel
      Left = 8
      Top = 4
      Width = 185
      Height = 13
      Caption = 'Primary key field of the dimension table:'
    end
    object Label3: TxhLabel
      Left = 8
      Top = 56
      Width = 362
      Height = 13
      Caption = 
        'The field of the dimension table which stores captions of dimens' +
        'ion members:'
    end
    object cbID_Field: TComboBox
      Left = 16
      Top = 24
      Width = 265
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
    end
    object cbName_Field: TComboBox
      Left = 16
      Top = 72
      Width = 265
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
    end
  end
  object pnParentId: TxhPanel
    Left = 0
    Top = 150
    Width = 609
    Height = 48
    Align = alTop
    BevelOuter = bvNone
    XPStyle = False
    TabOrder = 2
    Visible = False
    object Label4: TxhLabel
      Left = 8
      Top = 4
      Width = 189
      Height = 13
      Caption = '"Parent ID" field for the dimension table:'
    end
    object cbParentId_Field: TComboBox
      Left = 16
      Top = 20
      Width = 265
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
    end
  end
  object pnAttributes: TxhPanel
    Left = 0
    Top = 198
    Width = 609
    Height = 125
    Align = alTop
    BevelOuter = bvNone
    XPStyle = False
    TabOrder = 3
    Visible = False
    object Label5: TxhLabel
      Left = 8
      Top = 4
      Width = 306
      Height = 13
      Caption = 
        'The fields of the dimension table which store additional attribu' +
        'tes:'
    end
    object clAttributes: TCheckListBox
      Left = 16
      Top = 24
      Width = 265
      Height = 101
      ItemHeight = 13
      TabOrder = 0
    end
  end
end
