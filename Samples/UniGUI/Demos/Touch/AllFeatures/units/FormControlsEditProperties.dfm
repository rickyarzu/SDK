object UniFormControlsEditProperties: TUniFormControlsEditProperties
  Left = 0
  Top = 0
  Width = 312
  Height = 420
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 312
    Height = 420
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 414
    object UnimEdit1: TUnimEdit
      Left = 16
      Top = 10
      Width = 281
      Height = 47
      Hint = ''
      Text = ''
      FieldLabel = 'Default:'
      FieldLabelWidth = 45
    end
    object UnimPanel1: TUnimContainerPanel
      Left = 28
      Top = 63
      Width = 256
      Height = 17
      Hint = ''
    end
    object UnimEdit2: TUnimEdit
      Left = 16
      Top = 95
      Width = 281
      Height = 47
      Hint = ''
      Text = ''
      PasswordChar = #1
      FieldLabel = 'Password:'
      FieldLabelWidth = 45
    end
    object UnimPanel2: TUnimContainerPanel
      Left = 28
      Top = 148
      Width = 254
      Height = 15
      Hint = ''
    end
    object UnimEdit3: TUnimEdit
      Left = 16
      Top = 169
      Width = 281
      Height = 47
      Hint = ''
      Text = 'Can'#39't Change'
      FieldLabel = 'Read Only:'
      FieldLabelWidth = 45
      ReadOnly = True
    end
    object UnimPanel3: TUnimContainerPanel
      Left = 26
      Top = 231
      Width = 256
      Height = 17
      Hint = ''
    end
    object UnimEdit4: TUnimEdit
      Left = 16
      Top = 273
      Width = 281
      Height = 47
      Hint = ''
      Enabled = False
      Text = ''
      FieldLabel = 'Disable:'
      FieldLabelWidth = 45
    end
    object UnimPanel4: TUnimContainerPanel
      Left = 28
      Top = 325
      Width = 256
      Height = 17
      Hint = ''
    end
    object UnimEdit5: TUnimEdit
      Left = 16
      Top = 348
      Width = 281
      Height = 47
      Hint = ''
      Text = ''
      EmptyText = 'Empty'
      FieldLabel = 'Empty Text:'
      FieldLabelWidth = 45
    end
  end
end
