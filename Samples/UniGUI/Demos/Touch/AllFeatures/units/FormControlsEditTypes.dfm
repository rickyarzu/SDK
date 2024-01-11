object UniFormControlsEditTypes: TUniFormControlsEditTypes
  Left = 0
  Top = 0
  Width = 320
  Height = 472
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 472
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 468
    object UnimEdit1: TUnimEdit
      Left = 11
      Top = 16
      Width = 294
      Height = 47
      Hint = ''
      Text = ''
      FieldLabel = 'Edit'
      FieldLabelWidth = 50
    end
    object UnimPanel1: TUnimContainerPanel
      Left = 26
      Top = 69
      Width = 256
      Height = 20
      Hint = ''
    end
    object UnimNumberEdit1: TUnimNumberEdit
      Left = 11
      Top = 95
      Width = 294
      Height = 47
      Hint = ''
      FieldLabel = 'Number Edit:'
      FieldLabelWidth = 50
    end
    object UnimPanel2: TUnimContainerPanel
      Left = 26
      Top = 148
      Width = 256
      Height = 20
      Hint = ''
    end
    object UnimSpinner1: TUnimSpinner
      Left = 3
      Top = 174
      Width = 294
      Height = 47
      Hint = ''
      Step = 1.000000000000000000
      FieldLabel = 'Spinner:'
      FieldLabelWidth = 50
    end
    object UnimPanel3: TUnimContainerPanel
      Left = 26
      Top = 227
      Width = 256
      Height = 20
      Hint = ''
    end
    object UnimButton1: TUnimButton
      Left = 39
      Top = 259
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Get Values'
      OnClick = UnimButton1Click
    end
    object UnimMemo1: TUnimMemo
      Left = 3
      Top = 312
      Width = 314
      Height = 133
      Hint = ''
    end
  end
end
