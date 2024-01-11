object UniFormControlsMemo: TUniFormControlsMemo
  Left = 0
  Top = 0
  Width = 320
  Height = 434
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 434
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimMemo1: TUnimMemo
      Left = 16
      Top = 3
      Width = 289
      Height = 174
      Hint = ''
      Lines.Strings = (
        'UnimMemo1')
    end
    object UnimButton1: TUnimButton
      Left = 56
      Top = 183
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Get Values'
      OnClick = UnimButton1Click
    end
    object UnimMemo2: TUnimMemo
      Left = 16
      Top = 236
      Width = 289
      Height = 174
      Hint = ''
    end
  end
end
