object UniFormsFormAnonymousCallBack: TUniFormsFormAnonymousCallBack
  Left = 0
  Top = 0
  Width = 656
  Height = 531
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    656
    531)
  object UniContainerPanel1: TUniContainerPanel
    Left = 48
    Top = 55
    Width = 556
    Height = 421
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    ExplicitLeft = 0
    ExplicitTop = 3
    DesignSize = (
      556
      421)
    object UniMemo1: TUniMemo
      Left = 0
      Top = 154
      Width = 556
      Height = 267
      Hint = ''
      Align = alBottom
      Anchors = []
      ReadOnly = True
      TabOrder = 0
      ExplicitTop = 153
    end
    object UniButton1: TUniButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Show'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
end
