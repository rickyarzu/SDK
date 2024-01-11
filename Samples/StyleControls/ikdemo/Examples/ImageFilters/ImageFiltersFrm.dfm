object ImageFiltersForm: TImageFiltersForm
  Left = 346
  Top = 224
  Caption = 'Image Filters'
  ClientHeight = 561
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter
    Left = 776
    Top = 0
    Height = 561
    Align = alRight
    ExplicitLeft = 747
    ExplicitHeight = 639
  end
  object Panel1: TPanel
    Left = 779
    Top = 0
    Width = 185
    Height = 561
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 0
      Top = 172
      Width = 185
      Height = 17
      Align = alTop
      AutoSize = False
      Caption = 'Filters'
    end
    object Splitter1: TSplitter
      Left = 0
      Top = 169
      Width = 185
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Label2: TLabel
      Left = 0
      Top = 0
      Width = 185
      Height = 17
      Align = alTop
      AutoSize = False
      Caption = 'Categories'
    end
    object Splitter3: TSplitter
      Left = 0
      Top = 337
      Width = 185
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Label3: TLabel
      Left = 0
      Top = 340
      Width = 185
      Height = 17
      Align = alTop
      AutoSize = False
      Caption = 'Properties'
    end
    object Categories: TListBox
      Left = 0
      Top = 17
      Width = 185
      Height = 152
      Align = alTop
      BorderStyle = bsNone
      ItemHeight = 13
      TabOrder = 0
      OnClick = CategoriesClick
    end
    object Filters: TListBox
      Left = 0
      Top = 189
      Width = 185
      Height = 148
      Align = alTop
      BorderStyle = bsNone
      ItemHeight = 13
      TabOrder = 1
      OnClick = FiltersClick
    end
    object Properties: TListBox
      Left = 0
      Top = 357
      Width = 185
      Height = 81
      Align = alTop
      BorderStyle = bsNone
      ItemHeight = 13
      TabOrder = 2
      OnClick = PropertiesClick
    end
    object FloatValue: TTrackBar
      Left = 0
      Top = 438
      Width = 185
      Height = 23
      Align = alTop
      Max = 400
      Min = 25
      Position = 75
      TabOrder = 3
      ThumbLength = 18
      TickMarks = tmBoth
      TickStyle = tsNone
      Visible = False
      OnChange = FloatValueChange
    end
    object ColorValue: TColorBox
      Left = 2
      Top = 440
      Width = 181
      Height = 22
      TabOrder = 4
      Visible = False
      OnChange = ColorValueChange
    end
    object MatrixValue: TStringGrid
      Left = 2
      Top = 442
      Width = 179
      Height = 101
      ColCount = 3
      DefaultColWidth = 50
      DefaultRowHeight = 22
      FixedCols = 0
      RowCount = 3
      FixedRows = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
      TabOrder = 5
      Visible = False
      OnSetEditText = MatrixValueSetEditText
      ColWidths = (
        50
        50
        50)
      RowHeights = (
        22
        22
        22)
    end
  end
  object DXView1: TIKDXView
    Left = 0
    Top = 0
    Width = 776
    Height = 561
    Align = alClient
    FillColor = clBtnFace
    UseDockManager = False
    ParentBackground = False
    OnRender = DXView1Render
  end
end
