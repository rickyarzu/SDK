object UniFrame2: TUniFrame2
  Left = 0
  Top = 0
  Width = 744
  Height = 296
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ExplicitWidth = 443
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 393
    Height = 296
    Hint = ''
    ParentColor = False
    Align = alLeft
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 33
      Width = 393
      Height = 233
      Hint = ''
      DataSource = UniMainModule.DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
    end
    object UniDBGrid2: TUniDBGrid
      Left = 0
      Top = 4
      Width = 393
      Height = 292
      Hint = ''
      DataSource = UniMainModule.DataSource2
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      LoadMask.Opacity = 0.300000011920929000
      Align = alBottom
      TabOrder = 2
    end
    object UniSplitter1: TUniSplitter
      Left = 0
      Top = -4
      Width = 393
      Height = 8
      Cursor = crVSplit
      Hint = ''
      Align = alBottom
      ParentColor = False
      Color = clBtnFace
    end
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 393
      Height = 33
      Hint = ''
      Align = alTop
      TabOrder = 4
      ShowCaption = False
      Caption = 'UniPanel1'
      object UniDBNavigator1: TUniDBNavigator
        Left = 7
        Top = 4
        Width = 241
        Height = 25
        Hint = ''
        DataSource = UniMainModule.DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 401
    Top = 0
    Width = 343
    Height = 296
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 42
    object UniDBGrid3: TUniDBGrid
      Left = 0
      Top = 33
      Width = 343
      Height = 233
      Hint = ''
      DataSource = UniMainModule.DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      Align = alClient
      TabOrder = 1
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 0
      Width = 343
      Height = 33
      Hint = ''
      Align = alTop
      TabOrder = 2
      ShowCaption = False
      Caption = 'UniPanel1'
      ExplicitWidth = 42
      object UniDBNavigator2: TUniDBNavigator
        Left = 7
        Top = 4
        Width = 241
        Height = 25
        Hint = ''
        DataSource = UniMainModule.DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 1
      end
    end
    object UniDBGrid4: TUniDBGrid
      Left = 0
      Top = 4
      Width = 343
      Height = 292
      Hint = ''
      DataSource = UniMainModule.DataSource2
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      LoadMask.Opacity = 0.300000011920929000
      Align = alBottom
      TabOrder = 3
    end
    object UniSplitter2: TUniSplitter
      Left = 0
      Top = -4
      Width = 343
      Height = 8
      Cursor = crVSplit
      Hint = ''
      Align = alBottom
      ParentColor = False
      Color = clBtnFace
      ExplicitWidth = 42
    end
  end
  object UniSplitter3: TUniSplitter
    Left = 393
    Top = 0
    Width = 8
    Height = 296
    Hint = ''
    Align = alLeft
    ParentColor = False
    Color = clBtnFace
  end
end
