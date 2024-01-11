object UniPanelsContainerPanel: TUniPanelsContainerPanel
  Left = 0
  Top = 0
  Width = 697
  Height = 539
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    697
    539)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 691
    Height = 533
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      691
      533)
    object UniContainerPanel2: TUniContainerPanel
      Left = 88
      Top = 40
      Width = 265
      Height = 266
      Hint = ''
      ParentColor = False
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 0
      object UniContainerPanel5: TUniContainerPanel
        Left = 0
        Top = 138
        Width = 265
        Height = 128
        Hint = ''
        ParentColor = False
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 0
        object UniDBGrid1: TUniDBGrid
          Left = 0
          Top = 0
          Width = 265
          Height = 128
          Hint = ''
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
          LoadMask.Message = 'Loading data...'
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
      end
      object UniMemo1: TUniMemo
        Left = 0
        Top = 0
        Width = 265
        Height = 138
        Hint = ''
        Lines.Strings = (
          '_UniMemo1')
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
      end
    end
    object UniContainerPanel3: TUniContainerPanel
      Left = 359
      Top = 40
      Width = 238
      Height = 266
      Hint = ''
      ParentColor = False
      Color = 8454143
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      DesignSize = (
        238
        266)
      object UniContainerPanel4: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 238
        Height = 128
        Hint = ''
        ParentColor = False
        Color = 8454016
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        DesignSize = (
          238
          128)
        object UniPanel2: TUniPanel
          Left = 14
          Top = 12
          Width = 213
          Height = 113
          Hint = ''
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          Caption = 'UniPanel2'
          Color = clGray
        end
      end
      object UniPanel1: TUniPanel
        Left = 15
        Top = 139
        Width = 210
        Height = 111
        Hint = ''
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        Caption = 'UniPanel1'
      end
    end
    object UniContainerPanel6: TUniContainerPanel
      Left = 88
      Top = 321
      Width = 265
      Height = 153
      Hint = ''
      ParentColor = False
      Color = 16744448
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      DesignSize = (
        265
        153)
      object UniContainerPanel7: TUniContainerPanel
        Left = 32
        Top = 32
        Width = 193
        Height = 81
        Hint = ''
        ParentColor = False
        Anchors = []
        TabOrder = 0
        object UniMemo2: TUniMemo
          Left = 0
          Top = 0
          Width = 193
          Height = 81
          Hint = ''
          Lines.Strings = (
            '_UniMemo2')
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
      end
    end
  end
end
