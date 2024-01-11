object UniPanelsCollapsiblePanels: TUniPanelsCollapsiblePanels
  Left = 0
  Top = 0
  Width = 775
  Height = 481
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    775
    481)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 15
    Width = 761
    Height = 441
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniContainerPanel2: TUniContainerPanel
      Left = 5
      Top = 4
      Width = 481
      Height = 425
      Hint = ''
      ParentColor = False
      TabOrder = 0
      object UniSplitter1: TUniSplitter
        Left = 185
        Top = 83
        Width = 4
        Height = 259
        Hint = ''
        Align = alLeft
        ParentColor = False
        Color = clBtnFace
      end
      object UniSplitter2: TUniSplitter
        Left = 0
        Top = 80
        Width = 481
        Height = 3
        Cursor = crVSplit
        Hint = ''
        Align = alTop
        ParentColor = False
        Color = clBtnFace
      end
      object UniSplitter3: TUniSplitter
        Left = 0
        Top = 342
        Width = 481
        Height = 3
        Cursor = crVSplit
        Hint = ''
        Align = alBottom
        ParentColor = False
        Color = clBtnFace
      end
      object UniSplitter4: TUniSplitter
        Left = 292
        Top = 83
        Width = 4
        Height = 259
        Hint = ''
        Align = alRight
        ParentColor = False
        Color = clBtnFace
      end
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 481
        Height = 80
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
        TitleAlign = taCenter
        TitlePosition = tpBottom
        Title = 'Top'
        Caption = 'UniPanel1'
        Collapsible = True
      end
      object UniPanel2: TUniPanel
        Left = 0
        Top = 83
        Width = 185
        Height = 259
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 5
        TitleAlign = taCenter
        TitlePosition = tpRight
        Title = 'Left'
        Caption = 'UniPanel2'
        Collapsible = True
      end
      object UniPanel3: TUniPanel
        Left = 0
        Top = 345
        Width = 481
        Height = 80
        Hint = ''
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 6
        TitleAlign = taCenter
        Title = 'Bottom'
        Caption = 'UniPanel3'
        Collapsible = True
      end
      object UniPanel4: TUniPanel
        Left = 296
        Top = 83
        Width = 185
        Height = 259
        Hint = ''
        Align = alRight
        Anchors = [akTop, akRight, akBottom]
        TabOrder = 7
        TitleAlign = taCenter
        TitlePosition = tpLeft
        Title = 'Right'
        Caption = 'UniPanel4'
        Collapsible = True
      end
      object UniPanel5: TUniPanel
        Left = 189
        Top = 83
        Width = 103
        Height = 259
        Hint = ''
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 8
        Caption = 'UniPanel5'
      end
    end
    object UniContainerPanel3: TUniContainerPanel
      Left = 492
      Top = 3
      Width = 256
      Height = 425
      Hint = ''
      ParentColor = False
      TabOrder = 1
      object UniPanel6: TUniPanel
        Left = 0
        Top = 0
        Width = 121
        Height = 425
        Hint = ''
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 0
        TitleVisible = True
        Title = 'Left'
        Caption = 'UniPanel6'
        Collapsible = True
        CollapseDirection = cdLeft
      end
      object UniPanel7: TUniPanel
        Left = 127
        Top = 0
        Width = 129
        Height = 425
        Hint = ''
        Align = alRight
        Anchors = [akTop, akRight, akBottom]
        TabOrder = 1
        TitleVisible = True
        TitleAlign = taRightJustify
        TitlePosition = tpLeft
        Title = 'Right'
        Caption = 'UniPanel7'
        Collapsible = True
        CollapseDirection = cdRight
      end
    end
  end
end
