object UniFormControlsSelect: TUniFormControlsSelect
  Left = 0
  Top = 0
  Width = 427
  Height = 395
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 395
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimLabel1: TUnimLabel
      Left = 21
      Top = 16
      Width = 296
      Height = 23
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = 'Select'
    end
    object UnimSelect1: TUnimSelect
      Left = 48
      Top = 64
      Width = 350
      Height = 47
      Hint = ''
      Items.Strings = (
        'Second'
        'First'
        'Third')
      FieldLabel = 'Default:'
      FieldLabelWidth = 50
    end
    object UnimPanel1: TUnimPanel
      Left = 40
      Top = 117
      Width = 256
      Height = 21
      Hint = ''
    end
    object UnimSelect2: TUnimSelect
      Left = 48
      Top = 144
      Width = 350
      Height = 47
      Hint = ''
      Items.Strings = (
        'First'
        'Second'
        'Third')
      FieldLabel = 'Sorted:'
      FieldLabelWidth = 50
      Sorted = True
    end
    object UnimPanel2: TUnimPanel
      Left = 24
      Top = 197
      Width = 256
      Height = 21
      Hint = ''
    end
    object UnimSelect3: TUnimSelect
      Left = 48
      Top = 224
      Width = 350
      Height = 47
      Hint = ''
      Enabled = False
      FieldLabel = 'Disable:'
      FieldLabelWidth = 50
    end
  end
end
