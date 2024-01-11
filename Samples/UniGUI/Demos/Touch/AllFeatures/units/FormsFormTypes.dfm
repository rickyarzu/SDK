object UniFormsFormTypes: TUniFormsFormTypes
  Left = 0
  Top = 0
  Width = 320
  Height = 406
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 406
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DesignSize = (
      320
      406)
    object UnimButton1: TUnimButton
      Left = 48
      Top = 24
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Open FullScreen Form'
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 48
      Top = 96
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Open Modal Form'
      OnClick = UnimButton2Click
    end
    object UnimButton3: TUnimButton
      Left = 48
      Top = 168
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Open Form'
      OnClick = UnimButton3Click
    end
    object UnimButton4: TUnimButton
      Left = 48
      Top = 248
      Width = 225
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Open Scrollable Form'
      OnClick = UnimButton4Click
    end
  end
end
