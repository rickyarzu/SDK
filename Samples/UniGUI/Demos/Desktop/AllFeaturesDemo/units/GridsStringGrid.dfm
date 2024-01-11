object UniGridsStringGrid: TUniGridsStringGrid
  Left = 0
  Top = 0
  Width = 1026
  Height = 751
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 751
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 59
    ExplicitTop = 43
    ExplicitWidth = 854
    ExplicitHeight = 630
    DesignSize = (
      1026
      751)
    object UniStringGrid1: TUniStringGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1020
      Height = 453
      Hint = ''
      RowCount = 8
      ColCount = 10
      Options = [goVertLine, goHorzLine, goDrawFocusSelected, goRowMoving, goColMoving, goEditing]
      Columns = <>
      HeaderTitle = 'StringGrid'
      OnDrawCell = UniStringGrid1DrawCell
      ForceFit = True
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      ExplicitWidth = 848
      ExplicitHeight = 332
    end
    object UniMemo1: TUniMemo
      AlignWithMargins = True
      Left = 3
      Top = 462
      Width = 1020
      Height = 252
      Hint = ''
      Lines.Strings = (
        'UniMemo1')
      Align = alTop
      TabOrder = 1
      ExplicitTop = 341
      ExplicitWidth = 848
    end
    object UniButton1: TUniButton
      Left = 936
      Top = 720
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Get Values'
      Anchors = [akRight, akBottom]
      TabOrder = 2
      OnClick = UniButton1Click
    end
  end
end
