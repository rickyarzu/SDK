object UniLayoutManagementTableSpan: TUniLayoutManagementTableSpan
  Left = 0
  Top = 0
  Width = 817
  Height = 507
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  DesignSize = (
    817
    507)
  object UniPanelParent: TUniPanel
    Left = 0
    Top = 0
    Width = 817
    Height = 507
    Hint = ''
    Anchors = []
    TabOrder = 0
    TitleVisible = True
    Title = 'Table RowSpan & ColSpan'
    Caption = 'UniPanelParent'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    DesignSize = (
      817
      507)
    object UniContainerPanel1: TUniContainerPanel
      Left = -25
      Top = 3
      Width = 842
      Height = 497
      Hint = ''
      ParentColor = False
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = []
      TabOrder = 1
      Layout = 'table'
      LayoutAttribs.Columns = 3
      object UniPanel1: TUniPanel
        Left = 27
        Top = 16
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 1
        Caption = 'RowSpan = 2'
        LayoutConfig.Width = '100%'
        LayoutConfig.RowSpan = 2
      end
      object UniPanel2: TUniPanel
        Left = 178
        Top = 74
        Width = 254
        Height = 126
        Hint = ''
        TabOrder = 2
        Caption = 'ColSpan = 2'
        LayoutConfig.Width = '100%'
        LayoutConfig.ColSpan = 2
      end
      object UniPanel3: TUniPanel
        Left = 293
        Top = 150
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 3
        Caption = 'No ColSpan or RowSpan'
        LayoutConfig.Width = '100%'
      end
      object UniPanel4: TUniPanel
        Left = 493
        Top = 208
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 4
        Caption = 'No ColSpan or RowSpan'
        LayoutConfig.Width = '100%'
      end
    end
  end
end
