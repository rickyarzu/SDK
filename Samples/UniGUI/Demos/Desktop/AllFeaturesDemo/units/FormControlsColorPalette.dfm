object UniFormControlsColorPalette: TUniFormControlsColorPalette
  Left = 0
  Top = 0
  Width = 552
  Height = 510
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentColor = False
  ParentBackground = False
  DesignSize = (
    552
    510)
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 3
    Width = 549
    Height = 507
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniColorPalette1: TUniColorPalette
      Left = 0
      Top = 0
      Width = 169
      Height = 488
      Hint = ''
      Color = clGreen
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      LayoutConfig.Split = True
      LayoutConfig.Region = 'west'
      OnSelect = UniColorPalette1Select
    end
    object UniPanel1: TUniPanel
      Left = 169
      Top = 0
      Width = 380
      Height = 488
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Caption = 'UniPanel1'
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'anchor'
      LayoutConfig.Region = 'center'
    end
    object UniStatusBar1: TUniStatusBar
      Left = 0
      Top = 488
      Width = 549
      Height = 19
      Hint = ''
      Panels = <
        item
          Width = 50
        end>
      SizeGrip = False
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      ParentColor = False
      Color = clWindow
    end
  end
end
