object UniLayoutManagementTable: TUniLayoutManagementTable
  Left = 0
  Top = 0
  Width = 840
  Height = 587
  Layout = 'fit'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  AutoScroll = True
  DesignSize = (
    840
    587)
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 840
    Height = 587
    Hint = ''
    Anchors = []
    TabOrder = 0
    TitleVisible = True
    Title = 'Table Layout'
    Caption = 'UniPanel1'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'fit'
    LayoutAttribs.Padding = '25'
    LayoutConfig.BodyPadding = '25'
    object UniSimplePanel1: TUniSimplePanel
      Left = 1
      Top = 1
      Width = 838
      Height = 585
      Hint = ''
      ParentColor = False
      Align = alClient
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoScroll = True
      TabOrder = 1
      Layout = 'fit'
      LayoutConfig.BodyPadding = '50'
      ScrollHeight = 585
      ScrollWidth = 838
      object UniButton1: TUniButton
        Left = 0
        Top = 0
        Width = 838
        Height = 25
        Hint = ''
        Caption = 'Add Cell Into Table'
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        ParentFont = False
        Font.Style = [fsBold]
        TabOrder = 1
        OnClick = UniButton1Click
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 0
        Top = 25
        Width = 838
        Height = 560
        Hint = ''
        ParentColor = False
        Color = clSilver
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 2
        Layout = 'table'
        LayoutAttribs.Columns = 3
      end
    end
  end
end
