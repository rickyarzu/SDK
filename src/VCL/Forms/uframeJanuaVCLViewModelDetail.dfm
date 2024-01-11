object frameJanuaVCLViewModelDetail: TframeJanuaVCLViewModelDetail
  Left = 0
  Top = 0
  Width = 730
  Height = 423
  TabOrder = 0
  object pnlCommands: TPanel
    Left = 0
    Top = 0
    Width = 730
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -312
    ExplicitWidth = 1042
    object tlbMaster: TToolBar
      Left = 0
      Top = 0
      Width = 730
      Height = 44
      Align = alClient
      ButtonHeight = 21
      ButtonWidth = 31
      Caption = 'tlbMaster'
      ShowCaptions = True
      TabOrder = 0
      ExplicitWidth = 1042
    end
  end
  object grdMaster: TEnhDBGrid
    Left = 0
    Top = 44
    Width = 730
    Height = 379
    Align = alClient
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ActionList1: TActionList
    Left = 552
    Top = 128
    object Action1: TAction
      Caption = 'Action1'
      GroupIndex = 1
      ImageIndex = 2
    end
    object Action2: TAction
      Caption = 'Action2'
      Checked = True
      GroupIndex = 1
      ImageIndex = 3
    end
  end
  object DataSource1: TDataSource
    Left = 448
    Top = 152
  end
  object JanuaDetailActionViewController: TJanuaActionViewController
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbMaster
    ButtonSize = jbs24
    Left = 160
    Top = 296
  end
end
