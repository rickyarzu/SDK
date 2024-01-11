object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 564
  ClientWidth = 724
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBGrid1
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 724
    Height = 234
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
  end
  object UniDBGrid2: TUniDBGrid
    Left = 0
    Top = 272
    Width = 724
    Height = 292
    Hint = ''
    DataSource = UniMainModule.DataSource2
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    LoadMask.Opacity = 0.300000011920929000
    Align = alBottom
    TabOrder = 1
  end
  object UniSplitter1: TUniSplitter
    Left = 0
    Top = 267
    Width = 724
    Height = 5
    Cursor = crVSplit
    Hint = ''
    Align = alBottom
    ParentColor = False
    Color = clBtnFace
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 3
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
