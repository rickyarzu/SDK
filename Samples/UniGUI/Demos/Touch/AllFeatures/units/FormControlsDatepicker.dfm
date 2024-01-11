object UniFormControlsDatepicker: TUniFormControlsDatepicker
  Left = 0
  Top = 0
  Width = 322
  Height = 375
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 375
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimDatePicker1: TUnimDatePicker
      Left = 48
      Top = 16
      Width = 225
      Height = 47
      Hint = ''
      DateFormat = 'dd/MM/yyyy'
      Date = 42138.000000000000000000
    end
    object UnimButton1: TUnimButton
      Left = 48
      Top = 79
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Get Value:'
      OnClick = UnimButton1Click
    end
    object UnimMemo1: TUnimMemo
      Left = 0
      Top = 144
      Width = 322
      Height = 231
      Hint = ''
      Lines.Strings = (
        '')
    end
  end
end
