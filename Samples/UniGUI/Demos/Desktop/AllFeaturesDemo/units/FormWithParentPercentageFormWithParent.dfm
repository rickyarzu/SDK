object UniFormWithParentPercentageFormWithParent: TUniFormWithParentPercentageFormWithParent
  Left = 0
  Top = 0
  Width = 546
  Height = 449
  OnCreate = UniFrameCreate
  Layout = 'hbox'
  LayoutConfig.Padding = '15'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 177
    Height = 430
    Hint = ''
    ParentColor = False
    Align = alLeft
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    Layout = 'fit'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '25%'
    LayoutConfig.DockWhenAligned = False
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 430
    Width = 546
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
  object UniPanel2: TUniContainerPanel
    Left = 177
    Top = 0
    Width = 215
    Height = 430
    Hint = ''
    ParentColor = False
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    Layout = 'border'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '50%'
    LayoutConfig.DockWhenAligned = False
    object UniPanel4: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 215
      Height = 128
      Hint = ''
      ParentColor = False
      Align = alTop
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Layout = 'fit'
      LayoutConfig.Height = '25%'
      LayoutConfig.Region = 'north'
    end
    object UniPanel5: TUniContainerPanel
      Left = 0
      Top = 128
      Width = 215
      Height = 174
      Hint = ''
      ParentColor = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      Layout = 'fit'
      LayoutConfig.Region = 'center'
    end
    object UniPanel6: TUniContainerPanel
      Left = 0
      Top = 302
      Width = 215
      Height = 128
      Hint = ''
      ParentColor = False
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 3
      Layout = 'fit'
      LayoutConfig.Height = '25%'
      LayoutConfig.Region = 'south'
    end
  end
  object UniPanel3: TUniContainerPanel
    Left = 392
    Top = 0
    Width = 154
    Height = 430
    Hint = ''
    ParentColor = False
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 2
    Layout = 'fit'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '25%'
    LayoutConfig.DockWhenAligned = False
  end
  object UniMainMenu1: TUniMainMenu
    Left = 106
    Top = 25
    object ChangeColor1: TUniMenuItem
      Caption = 'ChangeColor'
      object UniForm11: TUniMenuItem
        Caption = 'UniForm1'
        OnClick = UniForm11Click
      end
      object UniForm21: TUniMenuItem
        Caption = 'UniForm2'
        OnClick = UniForm21Click
      end
      object UniForm31: TUniMenuItem
        Caption = 'UniForm3'
        OnClick = UniForm31Click
      end
      object UniForm41: TUniMenuItem
        Caption = 'UniForm4'
        OnClick = UniForm41Click
      end
      object UniForm51: TUniMenuItem
        Caption = 'UniForm5'
        OnClick = UniForm51Click
      end
    end
  end
end
