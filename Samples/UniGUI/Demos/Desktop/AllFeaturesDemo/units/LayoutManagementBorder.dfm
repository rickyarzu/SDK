object UniLayoutManagementBorder: TUniLayoutManagementBorder
  Left = 0
  Top = 0
  Width = 802
  Height = 543
  Layout = 'fit'
  LayoutConfig.BodyPadding = '50'
  LayoutAttribs.Padding = '50'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 802
    Height = 543
    Hint = ''
    ParentColor = False
    Align = alClient
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = []
    TabOrder = 0
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    object UniPanelParent: TUniPanel
      Left = 0
      Top = 0
      Width = 799
      Height = 540
      Hint = ''
      TabOrder = 1
      TitleVisible = True
      Title = 'Border Layout'
      Caption = 'UniPanelParent'
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'border'
      object UniPanel1: TUniPanel
        Left = 22
        Top = 16
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 1
        TitleVisible = True
        Title = 'UniPanel1'
        Caption = 'Region: West; Split: True'
        Collapsible = True
        LayoutConfig.Split = True
        LayoutConfig.Region = 'west'
      end
      object UniPanel2: TUniPanel
        Left = 200
        Top = 88
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 2
        TitleVisible = True
        Title = 'UniPanel2'
        Caption = 'Region: Center; Split: False'
        LayoutConfig.Region = 'center'
      end
      object UniPanel3: TUniPanel
        Left = 416
        Top = 190
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 3
        TitleVisible = True
        Title = 'UniPanel3'
        Caption = 'Region: South; Split: True'
        LayoutConfig.Split = True
        LayoutConfig.Region = 'south'
      end
    end
  end
end
