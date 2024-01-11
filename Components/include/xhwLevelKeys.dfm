object wLevelKeys: TwLevelKeys
  Left = 414
  Top = 283
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wLevelKeys'
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
    Width = 315
    Height = 13
    Caption = 
      'Specify the depth of the selected level of the composite dimensi' +
      'on:'
  end
  object cbHasDimensionTable: TxhCheckBox
    Left = 8
    Top = 56
    Width = 401
    Height = 17
    Caption = 
      'Does the selected level of the composite dimension have the dime' +
      'nsion table?'
    TabOrder = 0
    OnClick = cbHasDimensionTableClick
  end
  object pnDimensionTable: TxhPanel
    Left = 0
    Top = 80
    Width = 609
    Height = 141
    BevelOuter = bvNone
    XPStyle = False
    TabOrder = 1
    object Label2: TxhLabel
      Left = 8
      Top = 0
      Width = 190
      Height = 13
      Caption = 'The data source for the dimension table:'
    end
    object Label3: TxhLabel
      Left = 8
      Top = 48
      Width = 167
      Height = 13
      Caption = 'Primary key field of dimension table:'
    end
    object Label4: TxhLabel
      Left = 8
      Top = 96
      Width = 362
      Height = 13
      Caption = 
        'The field of the dimension table which stores captions of dimens' +
        'ion members:'
    end
    object cbDimensionTable: TComboBox
      Left = 16
      Top = 16
      Width = 257
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      OnChange = cbDimensionTableCloseUp
    end
    object cbId_Field: TComboBox
      Left = 16
      Top = 64
      Width = 257
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 1
    end
    object cbName_Field: TComboBox
      Left = 16
      Top = 112
      Width = 257
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
    end
  end
  object LevelDepthEdit: TxhEdit
    Left = 8
    Top = 28
    Width = 249
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    Text = '1'
    OnChange = LevelDepthEditChange
    OnExit = LevelDepthEditExit
  end
  object UpDown1: TUpDown
    Left = 257
    Top = 28
    Width = 16
    Height = 21
    Anchors = [akTop, akRight]
    Associate = LevelDepthEdit
    Min = 1
    Position = 1
    TabOrder = 3
  end
end
