object uStringGridFrame: TuStringGridFrame
  Left = 0
  Top = 0
  Width = 411
  Height = 350
  OnCreate = UniFrameCreate
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentFont = False
  object UniStringGrid1: TUniStringGrid
    Left = 32
    Top = 32
    Width = 334
    Height = 137
    FixedColor = clBtnFace
    FixedCols = 1
    FixedRows = 1
    RowCount = 5
    ColCount = 5
    DefaultColWidth = 64
    DefaultRowHeight = 24
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
    ParentFont = False
  end
  object UniMemo1: TUniMemo
    Left = 32
    Top = 175
    Width = 334
    Height = 130
    ParentFont = False
    Color = clWindow
    TabOrder = 1
  end
  object UniButton1: TUniButton
    Left = 32
    Top = 311
    Width = 75
    Height = 25
    Caption = 'Values'
    ParentFont = False
    TabOrder = 2
    OnClick = UniButton1Click
  end
end
