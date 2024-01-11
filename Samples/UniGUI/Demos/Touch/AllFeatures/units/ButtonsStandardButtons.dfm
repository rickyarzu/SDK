object UniButtonsStandardButtons: TUniButtonsStandardButtons
  Left = 0
  Top = 0
  Width = 402
  Height = 350
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 350
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    ExplicitHeight = 346
    object UnimButton1: TUnimButton
      Left = 88
      Top = 40
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Badge '
      OnClick = UnimButton1Click
    end
    object UnimPanel1: TUnimContainerPanel
      Left = 80
      Top = 106
      Width = 256
      Height = 16
      Hint = ''
    end
    object UnimButton2: TUnimButton
      Left = 88
      Top = 128
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Enable Button'
      OnClick = UnimButton2Click
    end
    object UnimPanel2: TUnimContainerPanel
      Left = 80
      Top = 194
      Width = 256
      Height = 16
      Hint = ''
    end
    object UnimButton3: TUnimButton
      Left = 88
      Top = 216
      Width = 225
      Height = 47
      Hint = ''
      Enabled = False
      Caption = 'Disable Button'
      OnClick = UnimButton3Click
    end
  end
end
