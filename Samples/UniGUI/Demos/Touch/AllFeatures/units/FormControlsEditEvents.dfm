object UniFormControlsEditEvents: TUniFormControlsEditEvents
  Left = 0
  Top = 0
  Width = 320
  Height = 661
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 661
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 657
    DesignSize = (
      320
      661)
    object UnimEdit1: TUnimEdit
      Left = 11
      Top = 26
      Width = 294
      Height = 47
      Hint = ''
      Anchors = []
      Text = ''
      FieldLabel = 'Change:'
      FieldLabelWidth = 45
      OnChange = UnimEdit1Change
    end
    object UnimPanel1: TUnimPanel
      Left = 33
      Top = 81
      Width = 256
      Height = 16
      Hint = ''
      Anchors = []
      ExplicitTop = 80
    end
    object UnimEdit2: TUnimEdit
      Left = 11
      Top = 103
      Width = 294
      Height = 47
      Hint = ''
      Anchors = []
      Text = 'Enter This Edit'
      FieldLabel = 'Enter:'
      FieldLabelWidth = 45
      OnEnter = UnimEdit2Enter
      ExplicitTop = 102
    end
    object UnimPanel2: TUnimContainerPanel
      Left = 33
      Top = 162
      Width = 256
      Height = 16
      Hint = ''
      Anchors = []
      ExplicitTop = 161
    end
    object UnimEdit3: TUnimEdit
      Left = 11
      Top = 184
      Width = 294
      Height = 47
      Hint = ''
      Anchors = []
      Text = 'Exit This Edit'
      FieldLabel = 'Exit'
      FieldLabelWidth = 45
      OnExit = UnimEdit3Exit
      ExplicitTop = 183
    end
    object UnimPanel3: TUnimContainerPanel
      Left = 26
      Top = 249
      Width = 254
      Height = 14
      Hint = ''
      Anchors = []
      ExplicitTop = 247
    end
    object UnimEdit4: TUnimEdit
      Left = 11
      Top = 269
      Width = 294
      Height = 47
      Hint = ''
      Anchors = []
      Text = ''
      FieldLabel = 'Up Key:'
      FieldLabelWidth = 45
      OnKeyUp = UnimEdit4KeyUp
      ExplicitTop = 267
    end
    object UnimPanel4: TUnimContainerPanel
      Left = 24
      Top = 322
      Width = 256
      Height = 16
      Hint = ''
      Anchors = []
      ExplicitTop = 320
    end
    object UnimMemo1: TUnimMemo
      Left = 11
      Top = 363
      Width = 294
      Height = 235
      Hint = ''
      Anchors = []
      ExplicitTop = 360
    end
  end
end
