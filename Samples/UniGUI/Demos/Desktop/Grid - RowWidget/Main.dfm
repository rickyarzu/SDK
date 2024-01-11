object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 564
  ClientWidth = 844
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBGrid1
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 33
    Width = 844
    Height = 531
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.Message = 'Loading data...'
    Align = alClient
    TabOrder = 0
    RowWidget.AlignmentControl = uniAlignmentClient
    RowWidget.Layout = 'fit'
    RowWidget.Enabled = True
    OnRowExpand = UniDBGrid1RowExpand
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 844
    Height = 33
    Hint = ''
    Align = alTop
    TabOrder = 1
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
      IconSet = icsFontAwesome
      TabOrder = 1
    end
  end
end
