object UniFormControlsMemo: TUniFormControlsMemo
  Left = 0
  Top = 0
  Width = 312
  Height = 426
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    312
    426)
  object UniContainerPanel1: TUniContainerPanel
    Left = 7
    Top = 3
    Width = 294
    Height = 414
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniMemo1: TUniMemo
      Left = 40
      Top = 16
      Width = 225
      Height = 161
      Hint = ''
      Lines.Strings = (
        'UniMemo1')
      TabOrder = 0
    end
    object UniMemo2: TUniMemo
      Left = 40
      Top = 240
      Width = 225
      Height = 161
      Hint = ''
      ReadOnly = True
      TabOrder = 1
    end
    object UniButton1: TUniButton
      Left = 88
      Top = 192
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Get Values'
      TabOrder = 2
      OnClick = UniButton1Click
    end
  end
end
