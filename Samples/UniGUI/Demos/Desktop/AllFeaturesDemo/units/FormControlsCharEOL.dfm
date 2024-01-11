object UniFormControlsCharEOL: TUniFormControlsCharEOL
  Left = 0
  Top = 0
  Width = 390
  Height = 438
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    390
    438)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 384
    Height = 432
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 32
      Top = 53
      Width = 155
      Height = 13
      Hint = ''
      Caption = 'Type something and press Enter'
      TabOrder = 0
    end
    object UniEdit1: TUniEdit
      Left = 32
      Top = 71
      Width = 321
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit1'
      TabOrder = 1
      OnKeyPress = UniEdit1KeyPress
    end
    object UniMemo1: TUniMemo
      Left = 32
      Top = 99
      Width = 321
      Height = 246
      Hint = ''
      Lines.Strings = (
        'UniMemo1')
      TabOrder = 2
    end
  end
end
