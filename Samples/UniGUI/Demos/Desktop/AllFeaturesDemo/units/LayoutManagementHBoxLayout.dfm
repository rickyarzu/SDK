object UniLayoutManagementHBoxLayout: TUniLayoutManagementHBoxLayout
  Left = 0
  Top = 0
  Width = 583
  Height = 422
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    583
    422)
  object UniPanelParent: TUniPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 419
    Hint = ''
    Anchors = []
    TabOrder = 0
    TitleVisible = True
    Title = 'HBox Layout'
    Caption = 'UniPanelParent'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    object UniContainerPanel1: TUniContainerPanel
      Left = 1
      Top = 1
      Width = 581
      Height = 417
      Hint = ''
      ParentColor = False
      Align = alClient
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = []
      TabOrder = 1
      Layout = 'hbox'
      LayoutAttribs.Padding = '25'
      LayoutConfig.BodyPadding = '25'
      object UniPanel1: TUniPanel
        Left = 3
        Top = 16
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 1
        TitleVisible = True
        Title = 'Inner Panel One'
        Caption = 'Flex: 2, Height: 100%'
        LayoutConfig.Flex = 2
        LayoutConfig.Height = '100%'
      end
      object UniPanel2: TUniPanel
        Left = 24
        Top = 128
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 2
        TitleVisible = True
        Title = 'Inner Panel Two'
        Caption = 'Flex: 1, Height: 60%'
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '60%'
      end
      object UniPanel3: TUniPanel
        Left = 262
        Top = 32
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 3
        TitleVisible = True
        Title = 'Inner Panel Three'
        Caption = 'Flex: 1, Height: 35%'
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '35%'
      end
    end
  end
end
