object UniFormControlsList: TUniFormControlsList
  Left = 0
  Top = 0
  Width = 460
  Height = 394
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 460
    Height = 394
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      460
      394)
    object UnimButton1: TUnimButton
      Left = 84
      Top = 13
      Width = 261
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Show DisclosureIcon List'
      OnClick = UnimButton1Click
    end
    object UnimButton2: TUnimButton
      Left = 84
      Top = 84
      Width = 261
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Show Grouped List'
      OnClick = UnimButton2Click
    end
    object UnimButton3: TUnimButton
      Left = 84
      Top = 167
      Width = 261
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Show Sorted List'
      OnClick = UnimButton3Click
    end
    object UnimButton4: TUnimButton
      Left = 84
      Top = 259
      Width = 261
      Height = 47
      Hint = ''
      Anchors = []
      Caption = 'Show Striped List'
      OnClick = UnimButton4Click
    end
  end
end
