object UniFormControlsRadio: TUniFormControlsRadio
  Left = 0
  Top = 0
  Width = 320
  Height = 410
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 410
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimRadio1: TUnimRadio
      Left = 64
      Top = 3
      Width = 225
      Height = 47
      Hint = ''
      FieldLabel = 'UnimRadio1'
      OnCheck = UnimRadio1Check
    end
    object UnimRadio2: TUnimRadio
      Left = 64
      Top = 56
      Width = 225
      Height = 47
      Hint = ''
      FieldLabel = 'UnimRadio2'
      OnCheck = UnimRadio2Check
    end
    object UnimMemo1: TUnimMemo
      Left = 3
      Top = 128
      Width = 314
      Height = 279
      Hint = ''
    end
  end
end
