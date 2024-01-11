object UniFormsFormCallBack: TUniFormsFormCallBack
  Left = 0
  Top = 0
  Width = 534
  Height = 344
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    534
    344)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 534
    Height = 338
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      534
      338)
    object UniMemo1: TUniMemo
      Left = 0
      Top = 83
      Width = 534
      Height = 255
      Hint = ''
      Align = alBottom
      Anchors = []
      ReadOnly = True
      TabOrder = 0
    end
    object UniButton2: TUniButton
      Left = 132
      Top = 24
      Width = 110
      Height = 25
      Hint = ''
      Caption = 'Show Modal'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniButton1: TUniButton
      Left = 16
      Top = 24
      Width = 110
      Height = 25
      Hint = ''
      Caption = 'Show'
      Anchors = []
      TabOrder = 2
      OnClick = UniButton1Click
    end
  end
end
