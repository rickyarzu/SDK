object uMemoFrame: TuMemoFrame
  Left = 0
  Top = 0
  Width = 453
  Height = 402
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentFont = True
  object UniMemo1: TUniMemo
    Left = 32
    Top = 32
    Width = 385
    Height = 165
    Lines.Strings = (
      'UniMemo1')
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    Color = clWindow
    TabOrder = 0
  end
  object UniMemo2: TUniMemo
    Left = 32
    Top = 199
    Width = 385
    Height = 165
    Lines.Strings = (
      'UniMemo2')
    ParentFont = False
    Readonly = True
    Color = clWindow
    TabOrder = 1
  end
  object UniButton1: TUniButton
    Left = 342
    Top = 370
    Width = 75
    Height = 25
    Caption = 'Copy'
    ParentFont = False
    TabOrder = 2
    OnClick = UniButton1Click
  end
end
