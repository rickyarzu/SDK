object UniLayoutManagementFit: TUniLayoutManagementFit
  Left = 0
  Top = 0
  Width = 875
  Height = 469
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    875
    469)
  object UniPanelParent: TUniPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 469
    Hint = ''
    Anchors = []
    TabOrder = 0
    TitleVisible = True
    Title = 'Fit Layout'
    Caption = 'UniPanelParent'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    object UniContainerPanel1: TUniContainerPanel
      Left = 1
      Top = 1
      Width = 873
      Height = 467
      Hint = ''
      ParentColor = False
      Align = alClient
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = []
      TabOrder = 1
      Layout = 'hbox'
      LayoutAttribs.Padding = '50'
      LayoutConfig.BodyPadding = '50'
      object UniPanelB: TUniPanel
        Left = 80
        Top = 24
        Width = 408
        Height = 208
        Hint = ''
        TabOrder = 2
        TitleVisible = True
        Title = 'Non-Padding Panel'
        Caption = ''
        Layout = 'fit'
        LayoutConfig.Flex = 1
        LayoutConfig.Height = '100%'
        object UniPanel2: TUniPanel
          Left = 62
          Top = 38
          Width = 256
          Height = 128
          Hint = ''
          TabOrder = 1
          TitleVisible = True
          Title = 'Inner Panel'
          Caption = 'This is the inner panel content without padding'
        end
      end
      object UniPanelA: TUniPanel
        Left = 368
        Top = 216
        Width = 408
        Height = 208
        Hint = ''
        TabOrder = 1
        TitleVisible = True
        Title = 'Padding Panel'
        Caption = ''
        Layout = 'fit'
        LayoutConfig.Flex = 1
        LayoutConfig.BodyPadding = '15'
        LayoutConfig.Height = '100%'
        object UniPanel1: TUniPanel
          Left = 62
          Top = 38
          Width = 256
          Height = 128
          Hint = ''
          TabOrder = 1
          TitleVisible = True
          Title = 'Inner Panel'
          Caption = 'This is the inner panel content'
        end
      end
    end
  end
end
