object fmQBOptions: TfmQBOptions
  Left = 299
  Top = 94
  BorderStyle = bsDialog
  Caption = 'QueryBuilder Options'
  ClientHeight = 553
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  TextHeight = 13
  object gbGeneral: TGroupBox
    Left = 4
    Top = 4
    Width = 185
    Height = 117
    Caption = ' General Options '
    TabOrder = 0
    object chRowSelect: TCheckBox
      Left = 8
      Top = 15
      Width = 170
      Height = 17
      Caption = 'Select condition row'
      TabOrder = 0
    end
    object chDragFieldName: TCheckBox
      Left = 8
      Top = 35
      Width = 170
      Height = 17
      Caption = 'Drag field name'
      TabOrder = 1
    end
    object chHideSelection: TCheckBox
      Left = 8
      Top = 55
      Width = 170
      Height = 17
      Caption = 'Hide selection when inactive'
      TabOrder = 2
    end
    object chShowFieldTypes: TCheckBox
      Left = 8
      Top = 75
      Width = 170
      Height = 17
      Caption = 'Show field types in hints'
      TabOrder = 3
    end
    object cbCaseSensitiveIdents: TCheckBox
      Left = 8
      Top = 95
      Width = 170
      Height = 17
      Caption = 'Case sensitive identifiers'
      TabOrder = 4
    end
  end
  object gbPalette: TGroupBox
    Left = 196
    Top = 4
    Width = 185
    Height = 409
    Caption = ' Color Palette'
    TabOrder = 1
    object laActiveConditionRow: TLabel
      Left = 8
      Top = 19
      Width = 96
      Height = 13
      Caption = 'Active condition row'
    end
    object laTableClient: TLabel
      Left = 8
      Top = 104
      Width = 79
      Height = 13
      Caption = 'Table client area'
    end
    object pbActiveCondition: TPaintBox
      Left = 112
      Top = 16
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object pbTableClient: TPaintBox
      Left = 112
      Top = 100
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laActiveCaption: TLabel
      Left = 8
      Top = 132
      Width = 94
      Height = 13
      Caption = 'Active table caption'
    end
    object pbActiveCaption: TPaintBox
      Left = 112
      Top = 128
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laInactiveCaption: TLabel
      Left = 8
      Top = 160
      Width = 102
      Height = 13
      Caption = 'Inactive table caption'
    end
    object pbInactiveCaption: TPaintBox
      Left = 112
      Top = 156
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object pbConditionText: TPaintBox
      Left = 112
      Top = 44
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laConditionText: TLabel
      Left = 8
      Top = 48
      Width = 64
      Height = 13
      Caption = 'Condition text'
    end
    object Label1: TLabel
      Left = 8
      Top = 76
      Width = 86
      Height = 13
      Caption = 'Condition item text'
    end
    object pbConditionItemText: TPaintBox
      Left = 112
      Top = 72
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laFieldText: TLabel
      Left = 8
      Top = 188
      Width = 42
      Height = 13
      Caption = 'Field text'
    end
    object pbFieldText: TPaintBox
      Left = 112
      Top = 184
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laSelectedFieldText: TLabel
      Left = 8
      Top = 216
      Width = 84
      Height = 13
      Caption = 'Selected field text'
    end
    object pbSelectedFieldText: TPaintBox
      Left = 112
      Top = 212
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object Label2: TLabel
      Left = 8
      Top = 243
      Width = 58
      Height = 13
      Caption = 'Work space'
    end
    object pbWorkSpace: TPaintBox
      Left = 112
      Top = 239
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object Label3: TLabel
      Left = 8
      Top = 271
      Width = 22
      Height = 13
      Caption = 'Field'
    end
    object pbField: TPaintBox
      Left = 112
      Top = 267
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object Label4: TLabel
      Left = 8
      Top = 299
      Width = 46
      Height = 13
      Caption = 'Operation'
    end
    object pbOperation: TPaintBox
      Left = 112
      Top = 295
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object Label5: TLabel
      Left = 8
      Top = 327
      Width = 29
      Height = 13
      Caption = 'Group'
    end
    object pbGroup: TPaintBox
      Left = 112
      Top = 323
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object Label6: TLabel
      Left = 8
      Top = 355
      Width = 45
      Height = 13
      Caption = 'Predicate'
    end
    object pbPredicate: TPaintBox
      Left = 112
      Top = 351
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object Label7: TLabel
      Left = 8
      Top = 383
      Width = 47
      Height = 13
      Caption = 'SubQuery'
    end
    object pbSubQuery: TPaintBox
      Left = 112
      Top = 379
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
  end
  object gbStyle: TGroupBox
    Left = 4
    Top = 123
    Width = 185
    Height = 152
    Caption = ' Style '
    TabOrder = 2
    object laConditionButton: TLabel
      Left = 8
      Top = 17
      Width = 101
      Height = 13
      Caption = 'Condition button style'
    end
    object laObjectBorderKind: TLabel
      Left = 8
      Top = 62
      Width = 87
      Height = 13
      Caption = 'Object border kind'
    end
    object cbConditionButton: TComboBox
      Left = 8
      Top = 34
      Width = 165
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'Ultra Flat'
        '3d-look'
        'Flat')
    end
    object cbObjectBorderKind: TComboBox
      Left = 8
      Top = 79
      Width = 165
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'Bump'
        'Etched'
        'Raised'
        'Sunken')
    end
    object chFlatObjects: TCheckBox
      Left = 8
      Top = 108
      Width = 165
      Height = 17
      Caption = 'Flat objects'
      TabOrder = 2
    end
    object chFlatObjectButtons: TCheckBox
      Left = 8
      Top = 127
      Width = 165
      Height = 17
      Caption = 'Flat object'#39's buttons'
      TabOrder = 3
    end
  end
  object paButtons: TPanel
    Left = 0
    Top = 509
    Width = 386
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    object buOk: TButton
      Left = 95
      Top = 10
      Width = 75
      Height = 25
      Caption = '&OK'
      ModalResult = 1
      TabOrder = 0
    end
    object buCancel: TButton
      Left = 211
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object gbVisibleTabs: TGroupBox
    Left = 4
    Top = 279
    Width = 185
    Height = 134
    Caption = ' Visible Tabs '
    TabOrder = 4
    object chCriterions: TCheckBox
      Left = 8
      Top = 15
      Width = 97
      Height = 17
      Caption = 'Criterions'
      TabOrder = 0
    end
    object chSelection: TCheckBox
      Left = 8
      Top = 35
      Width = 97
      Height = 17
      Caption = 'Selection'
      TabOrder = 1
    end
    object chGroupCriterions: TCheckBox
      Left = 8
      Top = 55
      Width = 97
      Height = 17
      Caption = 'Group Criterions'
      TabOrder = 2
    end
    object chSorting: TCheckBox
      Left = 8
      Top = 75
      Width = 97
      Height = 17
      Caption = 'Sorting'
      TabOrder = 3
    end
    object chData: TCheckBox
      Left = 8
      Top = 95
      Width = 97
      Height = 17
      Caption = 'Data'
      TabOrder = 4
    end
  end
  object gbScriptFormat: TGroupBox
    Left = 196
    Top = 415
    Width = 185
    Height = 98
    Caption = ' Script Format '
    TabOrder = 5
    object laKeywordsFormat: TLabel
      Left = 8
      Top = 20
      Width = 78
      Height = 13
      Caption = 'Keywords format'
    end
    object laFunctionsFormat: TLabel
      Left = 8
      Top = 46
      Width = 78
      Height = 13
      Caption = 'Functions format'
    end
    object cbKeywordsFormat: TComboBox
      Left = 96
      Top = 16
      Width = 81
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'As is'
        'Uppercase'
        'Lowercase'
        'First upper')
    end
    object cbFunctionsFormat: TComboBox
      Left = 96
      Top = 42
      Width = 81
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        'As is'
        'Uppercase'
        'Lowercase'
        'First upper')
    end
    object cbBracketAllConditions: TCheckBox
      Left = 8
      Top = 71
      Width = 169
      Height = 17
      Caption = 'Bracket all conditions'
      TabOrder = 2
    end
  end
  object gbAdditional: TGroupBox
    Left = 4
    Top = 415
    Width = 185
    Height = 98
    Caption = ' Additional '
    TabOrder = 6
    object chOnlySelect: TCheckBox
      Left = 8
      Top = 48
      Width = 97
      Height = 17
      Caption = 'OnlySelect'
      TabOrder = 0
    end
    object chUnionAllByDefault: TCheckBox
      Left = 8
      Top = 32
      Width = 165
      Height = 17
      Caption = 'Union All By Default'
      TabOrder = 1
    end
    object chXPTablesStyle: TCheckBox
      Left = 8
      Top = 16
      Width = 117
      Height = 17
      Caption = 'XP Tables Style'
      TabOrder = 2
    end
    object chUseIcons: TCheckBox
      Left = 8
      Top = 64
      Width = 97
      Height = 17
      Caption = 'Use Icons'
      TabOrder = 3
    end
  end
  object dlgColors: TColorDialog
    Left = 12
    Top = 525
  end
end
