object wSelectAction: TwSelectAction
  Left = 343
  Top = 133
  Align = alClient
  BorderStyle = bsNone
  Caption = 'wSelectAction'
  ClientHeight = 324
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnMouseMove = FormMouseMove
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TxhLabel
    Left = 8
    Top = 8
    Width = 172
    Height = 13
    Caption = 'Please choose what you want to do:'
  end
  object Label2: TxhLabel
    Left = 40
    Top = 48
    Width = 118
    Height = 13
    Caption = 'select the fact table field:'
  end
  object Label3: TxhLabel
    Left = 40
    Top = 164
    Width = 159
    Height = 13
    Caption = 'define the name of the dimension:'
  end
  object Label4: TxhLabel
    Left = 40
    Top = 208
    Width = 118
    Height = 13
    Caption = 'select the fact table field:'
  end
  object Label5: TxhLabel
    Left = 40
    Top = 252
    Width = 145
    Height = 13
    Caption = 'select the dimension/summary:'
  end
  object Label6: TxhLabel
    Left = 40
    Top = 296
    Width = 145
    Height = 13
    Caption = 'select the dimension/summary:'
  end
  object Label7: TxhLabel
    Left = 40
    Top = 92
    Width = 115
    Height = 13
    Caption = 'select the fact table field'
  end
  object Label8: TxhLabel
    Left = 40
    Top = 120
    Width = 150
    Height = 13
    Caption = 'select the composite dimension:'
  end
  object rbDimension: TxhRadioButton
    Left = 20
    Top = 28
    Width = 189
    Height = 17
    Caption = 'Create new regular dimension'
    Checked = True
    TabOrder = 0
    TabStop = True
    OnMouseMove = rbDimensionMouseMove
  end
  object rbSummary: TxhRadioButton
    Left = 20
    Top = 188
    Width = 229
    Height = 17
    Caption = 'Create new summary (measure)'
    TabOrder = 1
    OnMouseMove = rbSummaryMouseMove
  end
  object cbDimension: TComboBox
    Left = 204
    Top = 44
    Width = 377
    Height = 22
    Hint = 
      'Select the field of the fact table which contains information ab' +
      'out the dimension or composite dimension level'
    Style = csOwnerDrawFixed
    ItemHeight = 16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnEnter = cbDimensionEnter
  end
  object rbComposite: TxhRadioButton
    Left = 20
    Top = 144
    Width = 213
    Height = 17
    Caption = 'Create new composite dimension'
    TabOrder = 3
    OnMouseMove = rbCompositeMouseMove
  end
  object edComposite: TxhEdit
    Left = 204
    Top = 160
    Width = 377
    Height = 21
    Hint = 'Enter the name of the composite dimension'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnEnter = edCompositeEnter
  end
  object cbSummary: TComboBox
    Left = 204
    Top = 204
    Width = 377
    Height = 22
    Hint = 
      'Select the field of the fact table which contains information ab' +
      'out the summary'
    Style = csOwnerDrawFixed
    ItemHeight = 16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnEnter = cbSummaryEnter
  end
  object rbModify: TxhRadioButton
    Left = 20
    Top = 232
    Width = 305
    Height = 17
    Caption = 'Modify existing dimension, dimension level or summary'
    TabOrder = 6
  end
  object cbModify: TComboBox
    Left = 204
    Top = 248
    Width = 377
    Height = 22
    Hint = 'Select the dimension or summary to change the properties of'
    Style = csOwnerDrawFixed
    ItemHeight = 16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnEnter = cbModifyEnter
  end
  object rbDelete: TxhRadioButton
    Left = 20
    Top = 276
    Width = 289
    Height = 17
    Caption = 'Delete existing dimension, dimension level or summary'
    TabOrder = 8
  end
  object cbDelete: TComboBox
    Left = 204
    Top = 292
    Width = 377
    Height = 22
    Hint = 'Select the dimension or summary to delete it'
    Style = csOwnerDrawFixed
    ItemHeight = 16
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnEnter = cbDeleteEnter
  end
  object rbCompositeLevel: TxhRadioButton
    Left = 20
    Top = 72
    Width = 277
    Height = 17
    Caption = 'Create new level of a composite dimension'
    TabOrder = 10
  end
  object cbCompositeLevel: TxhComboBox
    Left = 204
    Top = 88
    Width = 377
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 11
    OnEnter = cbCompositeLevelEnter
  end
  object cbExistsComposite: TxhComboBox
    Left = 204
    Top = 116
    Width = 377
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    TabOrder = 12
    OnEnter = cbCompositeLevelEnter
  end
end
