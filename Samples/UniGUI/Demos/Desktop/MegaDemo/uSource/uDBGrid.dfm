object uDBGridFrame: TuDBGridFrame
  Left = 0
  Top = 0
  Width = 583
  Height = 453
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    583
    453)
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 583
    Height = 413
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 16
    Top = 419
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Open'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 328
    Top = 419
    Width = 240
    Height = 25
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    DataSource = DataSource1
    Anchors = [akRight, akBottom]
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet
    Left = 160
    Top = 152
  end
end
