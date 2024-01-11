object UniGridsInfiniteScroll: TUniGridsInfiniteScroll
  Left = 0
  Top = 0
  Width = 845
  Height = 564
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 845
    Height = 564
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitTop = 11
    ExplicitWidth = 825
    ExplicitHeight = 550
    DesignSize = (
      845
      564)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 534
      Height = 558
      Hint = ''
      DataSource = DataSource1
      LoadMask.Message = 'Loading data...'
      LoadMask.Color = clSilver
      BufferedStore.Enabled = True
      Align = alLeft
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
    end
    object UniLabel1: TUniLabel
      Left = 655
      Top = 3
      Width = 46
      Height = 13
      Hint = ''
      Caption = 'UniLabel1'
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 664
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 488
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 496
    Top = 208
  end
end
