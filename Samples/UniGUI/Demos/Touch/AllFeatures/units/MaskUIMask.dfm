object UniMaskUIMask: TUniMaskUIMask
  Left = 0
  Top = 0
  Width = 460
  Height = 590
  TabOrder = 0
  DesignSize = (
    460
    590)
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 47
    Width = 460
    Height = 496
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object UnimButton1: TUnimButton
    Left = 0
    Top = 543
    Width = 460
    Height = 47
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'UnimButton1'
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Panel Only'
    ScreenMask.Target = UnimPanel1
    OnClick = UnimButton2Click
  end
  object UnimButton2: TUnimButton
    Left = 0
    Top = 0
    Width = 460
    Height = 47
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Caption = 'UnimButton2'
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Whole Form'
    ScreenMask.Target = Owner
    OnClick = UnimButton2Click
  end
  object UnimPanel1: TUnimPanel
    Left = 3
    Top = 80
    Width = 454
    Height = 364
    Hint = ''
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWhite
  end
end
