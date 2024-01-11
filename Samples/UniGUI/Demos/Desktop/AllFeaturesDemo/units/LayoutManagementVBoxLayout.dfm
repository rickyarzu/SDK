object UniLayoutManagementVBoxLayout: TUniLayoutManagementVBoxLayout
  Left = 0
  Top = 0
  Width = 585
  Height = 296
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    585
    296)
  object UniPanelParent: TUniPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 296
    Hint = ''
    Anchors = []
    TabOrder = 0
    TitleVisible = True
    Title = 'VBox Layout'
    Caption = 'UniPanelParent'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    object UniContainerPanel1: TUniContainerPanel
      Left = 1
      Top = 1
      Width = 583
      Height = 294
      Hint = ''
      ParentColor = False
      Align = alClient
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = []
      TabOrder = 1
      Layout = 'vbox'
      object UniPanel2: TUniPanel
        Left = 290
        Top = 3
        Width = 254
        Height = 126
        Hint = ''
        TabOrder = 2
        TitleVisible = True
        Title = 'UniPanel2'
        Caption = 'Flex: 2 , Width: 50%;'
        LayoutConfig.Flex = 2
        LayoutConfig.Width = '50%'
      end
      object UniButton1: TUniButton
        Left = 158
        Top = 101
        Width = 96
        Height = 25
        Hint = ''
        Caption = ' Flex: 1, Width: 25%;'
        TabOrder = 4
        LayoutConfig.Flex = 1
        LayoutConfig.Width = '25%'
      end
      object UniPanel1: TUniPanel
        Left = 17
        Top = 134
        Width = 254
        Height = 126
        Hint = ''
        TabOrder = 1
        TitleVisible = True
        Title = 'UniPanel1'
        Caption = 'Flex: 3, Width: 100%;'
        LayoutConfig.Flex = 3
        LayoutConfig.Width = '100%'
      end
      object UniPanel3: TUniPanel
        Left = 320
        Top = 135
        Width = 254
        Height = 126
        Hint = ''
        TabOrder = 3
        TitleVisible = True
        Title = 'UniPanel3'
        Caption = 'Flex: 4, Width: 30%;'
        LayoutConfig.Flex = 4
        LayoutConfig.Width = '30%'
      end
    end
  end
end
