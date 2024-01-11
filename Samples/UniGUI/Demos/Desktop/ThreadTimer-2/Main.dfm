object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 581
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    581
    311)
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 0
    Width = 441
    Height = 305
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    LoadMask.Message = 'Loading data...'
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
  end
  object UniButton1: TUniButton
    Left = 448
    Top = 8
    Width = 126
    Height = 25
    Caption = 'Refresh'
    Anchors = [akTop, akRight]
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniDBEdit1: TUniDBEdit
    Left = 447
    Top = 283
    Width = 121
    Height = 22
    DataField = 'F2'
    DataSource = DataSource1
    Anchors = [akRight, akBottom]
    TabOrder = 2
    Color = clWindow
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet1
    Left = 512
    Top = 72
  end
end
