object UniLayoutManagementAnchor: TUniLayoutManagementAnchor
  Left = 0
  Top = 0
  Width = 729
  Height = 453
  Layout = 'fit'
  LayoutConfig.BodyPadding = '25'
  LayoutAttribs.Padding = '25'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    729
    453)
  object UniContainerPanel2: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 726
    Height = 450
    Hint = ''
    ParentColor = False
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = []
    TabOrder = 0
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    DesignSize = (
      726
      450)
    object UniPanelA: TUniPanel
      Left = 3
      Top = 3
      Width = 726
      Height = 444
      Hint = ''
      Anchors = []
      TabOrder = 1
      TitleVisible = True
      Title = 'Anchor Layout'
      Caption = 'UniPanelA'
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'anchor'
      object UniPanel1: TUniPanel
        Left = 32
        Top = 48
        Width = 254
        Height = 100
        Hint = ''
        CreateOrder = 1
        TabOrder = 1
        TitleVisible = True
        Title = 'UniPanel1'
        Caption = '50% Width '
        LayoutConfig.Anchor = '50%'
        LayoutConfig.Margin = '0 0 10 0'
      end
      object UniPanel3: TUniPanel
        Left = 336
        Top = 76
        Width = 254
        Height = 100
        Hint = ''
        CreateOrder = 2
        TabOrder = 3
        TitleVisible = True
        Title = 'UniPanel2'
        Caption = 'Offset -100 Width'
        LayoutConfig.Anchor = '-100'
        LayoutConfig.Margin = '0 0 10 0'
      end
      object UniPanel2: TUniPanel
        Left = 417
        Top = 217
        Width = 254
        Height = 126
        Hint = ''
        CreateOrder = 3
        TabOrder = 2
        TitleVisible = True
        Title = 'UniPanel3'
        Caption = 'Offset -20 Width , -250 Height'
        LayoutConfig.Anchor = '-20 -250'
      end
    end
  end
end
