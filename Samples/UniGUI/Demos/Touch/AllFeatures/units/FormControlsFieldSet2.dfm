object UniFormControlsFieldSet2: TUniFormControlsFieldSet2
  Left = 0
  Top = 0
  Width = 413
  Height = 389
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 389
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimButton1: TUnimButton
      Left = 0
      Top = 3
      Width = 413
      Height = 47
      Hint = ''
      Caption = 'Tap for the show Fieldset Form'
      ScreenMask.Enabled = True
      OnClick = UnimButton1Click
    end
    object UnimMemo1: TUnimMemo
      Left = 3
      Top = 73
      Width = 410
      Height = 313
      Hint = ''
      Lines.Strings = (
        'UnimMemo1')
      ReadOnly = True
    end
  end
end
