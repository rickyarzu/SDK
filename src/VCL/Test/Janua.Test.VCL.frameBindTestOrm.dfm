object frameBindTestOrm: TframeBindTestOrm
  Left = 0
  Top = 0
  Width = 982
  Height = 551
  TabOrder = 0
  DesignSize = (
    982
    551)
  object lbString: TLabel
    Left = 806
    Top = 21
    Width = 140
    Height = 15
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'GUID'
  end
  object lbInt: TLabel
    Left = 806
    Top = 52
    Width = 140
    Height = 15
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'GUID'
  end
  object lbDate: TLabel
    Left = 806
    Top = 84
    Width = 140
    Height = 15
    Anchors = [akTop, akRight]
    AutoSize = False
    Caption = 'GUID'
  end
  object grpMaster: TGroupBox
    Left = 23
    Top = 5
    Width = 746
    Height = 174
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Master'
    TabOrder = 0
    object lbJguid: TLabel
      Left = 24
      Top = 48
      Width = 27
      Height = 15
      Caption = 'GUID'
    end
    object edStringField: TEdit
      Left = 457
      Top = 45
      Width = 168
      Height = 23
      TabOrder = 0
      Text = 'edStringField'
    end
    object edExtended: TJvCalcEdit
      Left = 100
      Top = 77
      Width = 69
      Height = 23
      TabOrder = 1
      DecimalPlacesAlwaysShown = False
    end
    object edBoolean: TCheckBox
      Left = 175
      Top = 79
      Width = 74
      Height = 17
      Caption = 'Boolean'
      TabOrder = 2
    end
    object edDateTime: TDateTimePicker
      Left = 457
      Top = 77
      Width = 168
      Height = 21
      Date = 44181.000000000000000000
      Time = 0.714573217592260300
      TabOrder = 3
    end
    object edMemo: TMemo
      Left = 24
      Top = 104
      Width = 601
      Height = 55
      Lines.Strings = (
        'edMemo')
      TabOrder = 4
    end
    object Button1: TButton
      Left = 335
      Top = 43
      Width = 50
      Height = 25
      Caption = 'Save'
      TabOrder = 5
      OnClick = Button1Click
    end
    object btnUndo: TButton
      Left = 396
      Top = 43
      Width = 49
      Height = 25
      Caption = 'Undo'
      TabOrder = 6
      OnClick = btnUndoClick
    end
    object edIntFiled: TJvCalcEdit
      Left = 24
      Top = 77
      Width = 70
      Height = 23
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 7
      DecimalPlacesAlwaysShown = False
    end
  end
  object grpDetail: TGroupBox
    Left = 23
    Top = 364
    Width = 746
    Height = 150
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Detail'
    TabOrder = 1
    object lbDetailGUID: TLabel
      Left = 17
      Top = 105
      Width = 27
      Height = 15
      Caption = 'GUID'
    end
    object edDetailString: TEdit
      Left = 198
      Top = 62
      Width = 151
      Height = 23
      TabOrder = 0
      Text = 'edStringField'
    end
    object btnPrev: TButton
      Left = 160
      Top = 19
      Width = 49
      Height = 25
      Caption = 'Prev'
      TabOrder = 1
      OnClick = btnPrevClick
    end
    object btnNext: TButton
      Left = 215
      Top = 19
      Width = 50
      Height = 25
      Caption = 'Next'
      TabOrder = 2
      OnClick = btnNextClick
    end
    object btnDel: TButton
      Left = 332
      Top = 19
      Width = 49
      Height = 25
      Caption = 'Del'
      TabOrder = 3
      OnClick = btnDelClick
    end
    object btnAdd: TButton
      Left = 387
      Top = 19
      Width = 50
      Height = 25
      Caption = 'Add'
      TabOrder = 4
      OnClick = btnAddClick
    end
    object btnSave: TButton
      Left = 271
      Top = 19
      Width = 50
      Height = 25
      Caption = 'Save'
      TabOrder = 5
    end
    object btnPost: TButton
      Left = 443
      Top = 19
      Width = 50
      Height = 25
      Caption = 'Post'
      TabOrder = 6
      OnClick = btnPostClick
    end
    object edDetailInt: TSpinEdit
      Left = 17
      Top = 62
      Width = 144
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Value = 0
    end
    object btnFirst: TButton
      Left = 49
      Top = 19
      Width = 49
      Height = 25
      Caption = 'First'
      TabOrder = 8
      OnClick = btnFirstClick
    end
    object btnLast: TButton
      Left = 104
      Top = 19
      Width = 50
      Height = 25
      Caption = 'Last'
      TabOrder = 9
      OnClick = btnLastClick
    end
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 23
    Top = 229
    Width = 746
    Height = 129
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 23
    Top = 185
    Width = 270
    Height = 38
    TabOrder = 3
  end
end
