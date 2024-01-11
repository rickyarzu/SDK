object frmBindTestOrm: TfrmBindTestOrm
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 568
  ClientWidth = 829
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbString: TLabel
    Left = 680
    Top = 21
    Width = 25
    Height = 13
    Caption = 'GUID'
  end
  object lbInt: TLabel
    Left = 680
    Top = 53
    Width = 25
    Height = 13
    Caption = 'GUID'
  end
  object lbDate: TLabel
    Left = 680
    Top = 85
    Width = 25
    Height = 13
    Caption = 'GUID'
  end
  object grpMaster: TGroupBox
    Left = 23
    Top = 5
    Width = 638
    Height = 174
    Caption = 'Master'
    TabOrder = 0
    object lbJguid: TLabel
      Left = 56
      Top = 16
      Width = 25
      Height = 13
      Caption = 'GUID'
    end
    object edStringField: TEdit
      Left = 457
      Top = 45
      Width = 168
      Height = 21
      TabOrder = 0
      Text = 'edStringField'
    end
    object edBoolean: TCheckBox
      Left = 175
      Top = 79
      Width = 74
      Height = 17
      Caption = 'Boolean'
      TabOrder = 1
    end
    object edDateTime: TDateTimePicker
      Left = 457
      Top = 77
      Width = 168
      Height = 21
      Date = 44181.000000000000000000
      Time = 0.714573217592260400
      TabOrder = 2
    end
    object edMemo: TMemo
      Left = 24
      Top = 104
      Width = 601
      Height = 55
      Lines.Strings = (
        'edMemo')
      TabOrder = 3
    end
    object Button1: TButton
      Left = 335
      Top = 43
      Width = 50
      Height = 25
      Caption = 'Save'
      TabOrder = 4
    end
    object btnUndo: TButton
      Left = 396
      Top = 43
      Width = 49
      Height = 25
      Caption = 'Undo'
      TabOrder = 5
    end
    object edIntFiled: TJvCalcEdit
      Left = 24
      Top = 77
      Width = 70
      Height = 21
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 6
      DecimalPlacesAlwaysShown = False
    end
    object edExtended: TAdvMoneyEdit
      Left = 99
      Top = 77
      Width = 70
      Height = 21
      EditAlign = eaRight
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 7
      Text = '0,00'
      Visible = True
      Version = '1.1.2.9'
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
    end
    object MoneyEdit1: TMoneyEdit
      Left = 256
      Top = 80
      Width = 121
      Height = 21
      CalculatorLook.ButtonWidth = 24
      CalculatorLook.ButtonHeight = 24
      CalculatorLook.ButtonColor = clSilver
      CalculatorLook.Color = clWhite
      CalculatorLook.Flat = False
      CalculatorLook.Font.Charset = DEFAULT_CHARSET
      CalculatorLook.Font.Color = clWindowText
      CalculatorLook.Font.Height = -11
      CalculatorLook.Font.Name = 'Tahoma'
      CalculatorLook.Font.Style = []
      TabOrder = 8
      Version = '1.1.2.0'
    end
  end
  object grpDetail: TGroupBox
    Left = 23
    Top = 364
    Width = 626
    Height = 150
    Caption = 'Detail'
    TabOrder = 1
    object lbDetailGUID: TLabel
      Left = 17
      Top = 105
      Width = 25
      Height = 13
      Caption = 'GUID'
    end
    object edDetailString: TEdit
      Left = 198
      Top = 62
      Width = 151
      Height = 21
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
      Height = 22
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
      Caption = 'Prev'
      TabOrder = 8
    end
    object Button3: TButton
      Left = 104
      Top = 19
      Width = 50
      Height = 25
      Caption = 'Next'
      TabOrder = 9
      OnClick = Button3Click
    end
  end
  object EnhCRDBGrid1: TEnhCRDBGrid
    Left = 23
    Top = 229
    Width = 626
    Height = 129
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
