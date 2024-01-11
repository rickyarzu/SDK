object UniFormControlsCheckBox: TUniFormControlsCheckBox
  Left = 0
  Top = 0
  Width = 320
  Height = 419
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 419
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimCheckBox1: TUnimCheckBox
      Left = 40
      Top = 67
      Width = 225
      Height = 47
      Hint = ''
      FieldLabel = 'Unchecked'
      FieldLabelWidth = 60
      Caption = 'Unchecked'
      OnClick = UnimCheckBox1Click
    end
    object UnimMemo1: TUnimMemo
      Left = 3
      Top = 159
      Width = 314
      Height = 226
      Hint = ''
    end
  end
end
