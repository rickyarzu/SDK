object uSplitterFrame: TuSplitterFrame
  Left = 0
  Top = 0
  Width = 622
  Height = 463
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  object UniSplitter1: TUniSplitter
    Left = 185
    Top = 68
    Width = 4
    Height = 312
    MinSize = 30
    Align = alLeft
    ParentColor = False
    Color = clBtnFace
  end
  object UniSplitter2: TUniSplitter
    Left = 0
    Top = 65
    Width = 622
    Height = 3
    Cursor = crVSplit
    MinSize = 30
    Align = alTop
    ParentColor = False
    Color = clBtnFace
  end
  object UniSplitter3: TUniSplitter
    Left = 0
    Top = 380
    Width = 622
    Height = 3
    Cursor = crVSplit
    MinSize = 30
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
  end
  object UniSplitter4: TUniSplitter
    Left = 433
    Top = 68
    Width = 4
    Height = 312
    MinSize = 30
    Align = alRight
    ParentColor = False
    Color = clBtnFace
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 65
    Caption = 'UniPanel1'
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = 8421631
    TabOrder = 0
  end
  object UniPanel2: TUniPanel
    Left = 0
    Top = 68
    Width = 185
    Height = 312
    Caption = 'UniPanel2'
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    Color = 12615808
    TabOrder = 1
    ExplicitLeft = -2
    ExplicitTop = 65
  end
  object UniPanel3: TUniPanel
    Left = 0
    Top = 383
    Width = 622
    Height = 80
    Caption = 'UniPanel3'
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = 8421440
    TabOrder = 2
  end
  object UniPanel4: TUniPanel
    Left = 437
    Top = 68
    Width = 185
    Height = 312
    Caption = 'UniPanel4'
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    Color = 8454016
    TabOrder = 3
  end
  object UniPanel5: TUniPanel
    Left = 189
    Top = 68
    Width = 244
    Height = 312
    Caption = 'UniPanel5'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clSilver
    TabOrder = 4
  end
end
