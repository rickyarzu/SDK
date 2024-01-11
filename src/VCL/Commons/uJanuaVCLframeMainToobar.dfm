inherited FrameVCLMainToolBar: TFrameVCLMainToolBar
  Width = 892
  Height = 104
  ExplicitWidth = 892
  ExplicitHeight = 104
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 892
    Height = 104
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Home'
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 193
        Height = 46
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alLeft
        TabOrder = 0
      end
      object Panel3: TPanel
        Left = 0
        Top = 46
        Width = 884
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
      end
      object ActionToolBar1: TActionToolBar
        Left = 193
        Top = 0
        Width = 691
        Height = 46
        Align = alClient
        Caption = 'ActionToolBar1'
        Color = clMenuBar
        ColorMap.DisabledFontColor = 7171437
        ColorMap.HighlightColor = clWhite
        ColorMap.BtnSelectedFont = clBlack
        ColorMap.UnusedColor = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Spacing = 0
      end
    end
  end
end
