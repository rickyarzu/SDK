object UniLayoutManagementAccordionLayout: TUniLayoutManagementAccordionLayout
  Left = 0
  Top = 0
  Width = 786
  Height = 595
  Layout = 'fit'
  LayoutConfig.BodyPadding = '50'
  LayoutAttribs.Padding = '50'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
  TabOrder = 0
  ParentColor = False
  ParentBackground = False
  DesignSize = (
    786
    595)
  object UniContainerPanel1: TUniContainerPanel
    Left = 16
    Top = 16
    Width = 753
    Height = 561
    Hint = ''
    ParentColor = False
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Anchors = []
    TabOrder = 0
    Layout = 'fit'
    DesignSize = (
      753
      561)
    object UniPanelA: TUniPanel
      Left = 40
      Top = 52
      Width = 657
      Height = 456
      Hint = ''
      Anchors = []
      TabOrder = 1
      TitleVisible = True
      TitleAlign = taCenter
      Title = 'Accordion Layout'
      Caption = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'accordion'
      object UniPanel1: TUniPanel
        Left = 18
        Top = 3
        Width = 295
        Height = 182
        Hint = ''
        TabOrder = 1
        TitleVisible = True
        Title = 'UniPanel1'
        Caption = 'UniPanel1'
        Layout = 'fit'
        LayoutConfig.BodyPadding = '15'
        object UniPageControl1: TUniPageControl
          Left = 4
          Top = 29
          Width = 252
          Height = 124
          Hint = ''
          ActivePage = UniTabSheet2
          TabOrder = 1
          object UniTabSheet1: TUniTabSheet
            Hint = ''
            Caption = 'UniTabSheet1'
          end
          object UniTabSheet2: TUniTabSheet
            Hint = ''
            Closable = True
            Caption = 'UniTabSheet2'
          end
        end
      end
      object UniPanel2: TUniPanel
        Left = 280
        Top = 104
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 2
        TitleVisible = True
        Title = 'UniPanel2'
        Caption = 'UniPanel2'
        Layout = 'fit'
        object UniRadioGroup1: TUniRadioGroup
          Left = 32
          Top = 3
          Width = 185
          Height = 105
          Hint = ''
          Items.Strings = (
            'Yes'
            'No')
          ItemIndex = 0
          LayoutConfig.Height = '100%'
          Caption = 'UniRadioGroup1'
          TabOrder = 1
          Columns = 1
        end
      end
      object UniPanel3: TUniPanel
        Left = 368
        Top = 192
        Width = 256
        Height = 128
        Hint = ''
        TabOrder = 3
        TitleVisible = True
        Title = 'UniPanel3'
        Caption = 'UniPanel3'
        Layout = 'fit'
        LayoutAttribs.Padding = '5'
        object UniTreeView1: TUniTreeView
          Left = 64
          Top = 16
          Width = 121
          Height = 97
          Hint = ''
          Items.FontData = {0100000000}
          TabOrder = 1
          Color = clWindow
          LayoutConfig.Height = '100%'
          LayoutConfig.Width = '80%'
        end
      end
    end
  end
end
