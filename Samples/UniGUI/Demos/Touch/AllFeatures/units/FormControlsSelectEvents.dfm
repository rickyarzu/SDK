object UniFormControlsSelectEvents: TUniFormControlsSelectEvents
  Left = 0
  Top = 0
  Width = 551
  Height = 457
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 457
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      551
      457)
    object UnimLabel1: TUnimLabel
      Left = 104
      Top = 3
      Width = 304
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'Select item to add Other Select'
    end
    object UnimSelect1: TUnimSelect
      Left = 88
      Top = 43
      Width = 314
      Height = 47
      Hint = ''
      Anchors = []
      Items.Strings = (
        'First'
        'Second'
        'Third')
      FieldLabel = 'Select'
      FieldLabelWidth = 50
      OnChange = UnimSelect1Change
    end
    object UnimPanel1: TUnimPanel
      Left = 104
      Top = 108
      Width = 248
      Height = 16
      Hint = ''
      Anchors = []
    end
    object UnimMemo1: TUnimMemo
      Left = 88
      Top = 130
      Width = 314
      Height = 235
      Hint = ''
      Anchors = []
    end
  end
end
