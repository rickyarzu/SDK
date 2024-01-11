object UniFormsFormNavigation: TUniFormsFormNavigation
  Left = 0
  Top = 0
  Width = 270
  Height = 264
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    270
    264)
  object UniContainerPanel1: TUniContainerPanel
    Left = 8
    Top = 3
    Width = 262
    Height = 254
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniButton1: TUniButton
      Left = 53
      Top = 48
      Width = 160
      Height = 25
      Hint = ''
      Caption = 'Tab / Shift Tab Navigate'
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 53
      Top = 104
      Width = 160
      Height = 25
      Hint = ''
      Caption = 'Enter / Shift Enter Navigate'
      TabOrder = 1
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 53
      Top = 160
      Width = 160
      Height = 25
      Hint = ''
      Caption = 'Up / Down Navigate'
      TabOrder = 2
      OnClick = UniButton3Click
    end
  end
end
