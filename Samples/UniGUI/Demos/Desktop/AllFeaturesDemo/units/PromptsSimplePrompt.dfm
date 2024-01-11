object UniPromptsSimplePrompt: TUniPromptsSimplePrompt
  Left = 0
  Top = 0
  Width = 303
  Height = 358
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    303
    358)
  object UniContainerPanel1: TUniContainerPanel
    Left = -8
    Top = 3
    Width = 305
    Height = 350
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      305
      350)
    object UniButton1: TUniButton
      Left = 56
      Top = 24
      Width = 185
      Height = 25
      Hint = ''
      Caption = 'Prompt'
      Anchors = []
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniMemo1: TUniMemo
      Left = 56
      Top = 148
      Width = 185
      Height = 169
      Hint = ''
      Anchors = []
      TabOrder = 1
    end
    object UniButton2: TUniButton
      Left = 56
      Top = 55
      Width = 185
      Height = 25
      Hint = ''
      Caption = 'Prompt Multiline'
      Anchors = []
      TabOrder = 2
      OnClick = UniButton2Click
    end
    object UniButton3: TUniButton
      Left = 56
      Top = 86
      Width = 185
      Height = 25
      Hint = ''
      Caption = 'Prompt Password'
      Anchors = []
      TabOrder = 3
      OnClick = UniButton3Click
    end
    object UniButton4: TUniButton
      Left = 56
      Top = 117
      Width = 185
      Height = 25
      Hint = ''
      Caption = 'Prompt With Screen Mask'
      Anchors = []
      TabOrder = 4
      OnClick = UniButton4Click
    end
  end
end
