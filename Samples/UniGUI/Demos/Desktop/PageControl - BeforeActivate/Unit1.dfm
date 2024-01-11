object UniFrame1: TUniFrame1
  Left = 0
  Top = 0
  Width = 745
  Height = 514
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 745
    Height = 184
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object UniDBGrid2: TUniDBGrid
    Left = 0
    Top = 222
    Width = 745
    Height = 292
    Hint = ''
    DataSource = UniMainModule.DataSource2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    LoadMask.Opacity = 0.300000011920929000
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
  end
  object UniSplitter1: TUniSplitter
    Left = 0
    Top = 217
    Width = 745
    Height = 5
    Cursor = crVSplit
    Hint = ''
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
    ExplicitTop = 267
    ExplicitWidth = 724
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 33
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 3
    ShowCaption = False
    Caption = 'UniPanel1'
    ExplicitWidth = 724
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
