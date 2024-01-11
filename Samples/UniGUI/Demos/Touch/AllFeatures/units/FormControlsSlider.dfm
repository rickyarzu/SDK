object UniFormControlsSlider: TUniFormControlsSlider
  Left = 0
  Top = 0
  Width = 320
  Height = 454
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 454
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimSlider1: TUnimSlider
      Left = 0
      Top = 16
      Width = 320
      Height = 45
      Hint = ''
      OnChange = UnimSlider1Change
    end
    object UnimMemo1: TUnimMemo
      Left = 3
      Top = 67
      Width = 314
      Height = 384
      Hint = ''
    end
  end
end
