object UniDataBaseMasterDetail: TUniDataBaseMasterDetail
  Left = 0
  Top = 0
  Width = 658
  Height = 490
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    658
    490)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 0
    Width = 652
    Height = 487
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 652
      Height = 215
      Hint = ''
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
    end
    object UniDBGrid2: TUniDBGrid
      Left = 0
      Top = 232
      Width = 652
      Height = 255
      Hint = ''
      DataSource = DataSource2
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgTabs, dgCancelOnExit]
      ReadOnly = True
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
      Top = 215
      Width = 652
      Height = 17
      Cursor = crVSplit
      Hint = ''
      Align = alBottom
      ParentColor = False
      Color = clBtnFace
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 136
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 312
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 312
    Top = 240
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CustNo'
    MasterFields = 'CustNo'
    MasterSource = DataSource1
    PacketRecords = 0
    Params = <>
    Left = 176
    Top = 288
  end
end
