inherited frameVCLMVVMNavigator: TframeVCLMVVMNavigator
  Width = 838
  Height = 580
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 838
  ExplicitHeight = 580
  object pnlCommands: TPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object tlbMaster: TToolBar
      Left = 0
      Top = 0
      Width = 561
      Height = 49
      Align = alLeft
      ButtonHeight = 21
      ButtonWidth = 31
      Caption = 'tlbMaster'
      ShowCaptions = True
      TabOrder = 0
    end
    object pnlSearchText: TPanel
      Left = 561
      Top = 0
      Width = 277
      Height = 49
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object lbSearchText: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 66
        Height = 17
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Search Text'
      end
      object edSearchText: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 23
        Width = 271
        Height = 25
        Margins.Bottom = 1
        Align = alTop
        TabOrder = 0
      end
    end
  end
  object grdMaster: TwwDBGrid
    Left = 0
    Top = 49
    Width = 838
    Height = 531
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    LineColors.ShadowColor = clTeal
    OnCalcCellColors = grdMasterCalcCellColors
    OnDblClick = grdMasterDblClick
    PaintOptions.AlternatingRowColor = 7500402
    StyleElements = [seClient, seBorder]
    object grdMasterIButton: TwwIButton
      Left = 0
      Top = 0
      Width = 13
      Height = 22
      AllowAllUp = True
      Flat = False
      ImageIndex = -1
    end
  end
  object JanuaMasterActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbMaster
    ButtonSize = jbs24
    Left = 336
    Top = 144
  end
  object JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    Left = 336
    Top = 304
  end
  object JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    SearchInput = edSearchText
    SearchLabel = lbSearchText
    Left = 336
    Top = 248
  end
  object MasterGridBuilder1: TJanuaMVVMGridBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Grid = grdMaster
    Left = 336
    Top = 200
  end
  object JanuaMVVMFormController1: TJanuaMVVMFormController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    GridType = jgtDBGrid
    MasterGridBuilder = MasterGridBuilder1
    MasterActions = JanuaMasterActionViewController
    FilterParamsBuilder = JanuaVCLMVVMSearchParamsBuilder1
    SearchTextBuilder = JanuaVCLMVVMSearchTextBuilder1
    Left = 176
    Top = 208
  end
end
