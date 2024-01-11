object UniFormControlsToggle: TUniFormControlsToggle
  Left = 0
  Top = 0
  Width = 320
  Height = 558
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 558
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimLabel1: TUnimLabel
      Left = 3
      Top = 24
      Width = 297
      Height = 65
      AutoSize = False
      Caption = 'Change Toggle to Add  Memo'
    end
    object UnimToggle1: TUnimToggle
      Left = 43
      Top = 147
      Width = 225
      Height = 64
      OnChange = UnimToggle1Change
    end
    object UnimPanel1: TUnimPanel
      Left = 32
      Top = 232
      Width = 256
      Height = 17
    end
    object UnimMemo1: TUnimMemo
      Left = 43
      Top = 265
      Width = 225
      Height = 264
    end
  end
end
