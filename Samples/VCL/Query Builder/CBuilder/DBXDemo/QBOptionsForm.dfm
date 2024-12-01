object fmQBOptions: TfmQBOptions
  Left = 192
  Top = 107
  BorderStyle = bsDialog
  Caption = 'QueryBuilder Options'
  ClientHeight = 408
  ClientWidth = 388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gbGeneral: TGroupBox
    Left = 4
    Top = 4
    Width = 185
    Height = 100
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
  end
  object gbPalette: TGroupBox
    Left = 196
    Top = 4
    Width = 185
    Height = 255
    Caption = ' Color Palette'
    TabOrder = 1
    object laActiveConditionRow: TLabel
      Left = 8
      Top = 18
      Width = 96
      Height = 13
      Caption = 'Active condition row'
    end
    object laTableClient: TLabel
      Left = 8
      Top = 109
      Width = 79
      Height = 13
      Caption = 'Table client area'
    end
    object pbActiveCondition: TPaintBox
      Left = 112
      Top = 15
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object pbTableClient: TPaintBox
      Left = 112
      Top = 105
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laActiveCaption: TLabel
      Left = 8
      Top = 139
      Width = 94
      Height = 13
      Caption = 'Active table caption'
    end
    object pbActiveCaption: TPaintBox
      Left = 112
      Top = 135
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laInactiveCaption: TLabel
      Left = 8
      Top = 169
      Width = 102
      Height = 13
      Caption = 'Inactive table caption'
    end
    object pbInactiveCaption: TPaintBox
      Left = 112
      Top = 165
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object pbConditionText: TPaintBox
      Left = 112
      Top = 45
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laConditionText: TLabel
      Left = 8
      Top = 49
      Width = 64
      Height = 13
      Caption = 'Condition text'
    end
    object Label1: TLabel
      Left = 8
      Top = 79
      Width = 86
      Height = 13
      Caption = 'Condition item text'
    end
    object pbConditionItemText: TPaintBox
      Left = 112
      Top = 75
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laFieldText: TLabel
      Left = 8
      Top = 199
      Width = 42
      Height = 13
      Caption = 'Field text'
    end
    object pbFieldText: TPaintBox
      Left = 112
      Top = 195
      Width = 65
      Height = 21
      Color = clBtnFace
      ParentColor = False
      OnClick = ColorClick
      OnPaint = ColorPaint
    end
    object laSelectedFieldText: TLabel
      Left = 8
      Top = 229
      Width = 84
      Height = 13
      Caption = 'Selected field text'
    end
    object pbSelectedFieldText: TPaintBox
      Left = 112
      Top = 225
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
    Top = 107
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
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        '3D-look'
        'Flat'
        'Raised')
    end
    object cbObjectBorderKind: TComboBox
      Left = 8
      Top = 79
      Width = 165
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
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
    Top = 364
    Width = 388
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
    Top = 263
    Width = 185
    Height = 100
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
  end
  object gbScriptFormat: TGroupBox
    Left = 196
    Top = 263
    Width = 185
    Height = 100
    Caption = ' Script Format '
    TabOrder = 5
    object laKeywordsFormat: TLabel
      Left = 8
      Top = 15
      Width = 78
      Height = 13
      Caption = 'Keywords format'
    end
    object laFunctionsFormat: TLabel
      Left = 8
      Top = 57
      Width = 78
      Height = 13
      Caption = 'Functions format'
    end
    object cbKeywordsFormat: TComboBox
      Left = 8
      Top = 32
      Width = 165
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'As is'
        'Uppercase'
        'Lowercase'
        'First upper')
    end
    object cbFunctionsFormat: TComboBox
      Left = 8
      Top = 74
      Width = 165
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'As is'
        'Uppercase'
        'Lowercase'
        'First upper')
    end
  end
  object dlgColors: TColorDialog
    Left = 4
    Top = 373
  end
end
