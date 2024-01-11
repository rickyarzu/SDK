object UniLayoutManagementHBoxLayoutPercentage: TUniLayoutManagementHBoxLayoutPercentage
  Left = 0
  Top = 0
  Width = 713
  Height = 578
  Layout = 'fit'
  LayoutAttribs.Padding = '50'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniSimplePanel1: TUniSimplePanel
    Left = 0
    Top = 3
    Width = 713
    Height = 572
    Hint = ''
    ParentColor = False
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 0
    Layout = 'hbox'
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 256
      Height = 572
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      Caption = 'UniPanel1 - Width 25%'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '25%'
      LayoutConfig.DockWhenAligned = False
    end
    object UniPanel3: TUniPanel
      Left = 256
      Top = 0
      Width = 201
      Height = 572
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      Caption = 'UniPanel3 - Width 50% - Layout border'
      Layout = 'border'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '50%'
      LayoutConfig.DockWhenAligned = False
      object UniPanel4: TUniPanel
        Left = 1
        Top = 1
        Width = 199
        Height = 128
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        Caption = 'UniPanel4 - Region north - Height 25%'
        LayoutConfig.Height = '25%'
        LayoutConfig.Region = 'north'
      end
      object UniPanel5: TUniPanel
        Left = 1
        Top = 444
        Width = 199
        Height = 128
        Hint = ''
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 2
        Caption = 'UniPanel5 - Region south - Height 25%'
        LayoutConfig.Height = '25%'
        LayoutConfig.Region = 'south'
      end
    end
    object UniPanel2: TUniPanel
      Left = 457
      Top = 0
      Width = 256
      Height = 572
      Hint = ''
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      TabOrder = 2
      Caption = 'UniPanel2 - Width 25%'
      LayoutConfig.Height = '100%'
      LayoutConfig.Width = '25%'
      LayoutConfig.DockWhenAligned = False
    end
  end
end
