object frmVCLViewModelNavigator: TfrmVCLViewModelNavigator
  Left = 0
  Top = 0
  Caption = 'View Model Navigator'
  ClientHeight = 592
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TAdvSplitter
    Left = 0
    Top = 243
    Width = 1130
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 1
    ExplicitTop = 199
    ExplicitWidth = 1014
  end
  object pnlCommands: TPanel
    Left = 0
    Top = 0
    Width = 1130
    Height = 49
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object tlbMaster: TToolBar
      Left = 0
      Top = 0
      Width = 659
      Height = 49
      Align = alLeft
      ButtonHeight = 21
      ButtonWidth = 31
      Caption = 'tlbMaster'
      ShowCaptions = True
      TabOrder = 0
    end
    object pnlSearchText: TPanel
      Left = 659
      Top = 0
      Width = 471
      Height = 49
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object lbSearchText: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 57
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Search Text'
      end
      object edSearchText: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 465
        Height = 21
        Margins.Bottom = 1
        Align = alTop
        TabOrder = 0
      end
    end
  end
  object pnlSearch: TPanel
    Left = 0
    Top = 49
    Width = 1130
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnStartSearch: TButton
      AlignWithMargins = True
      Left = 1072
      Top = 1
      Width = 50
      Height = 48
      Margins.Left = 8
      Margins.Top = 1
      Margins.Right = 8
      Margins.Bottom = 1
      Align = alRight
      ImageIndex = 7
      ImageName = 'search-white-24dp'
      TabOrder = 0
      OnClick = btnStartSearchClick
    end
    object pnlSearchParams: TPanel
      Left = 0
      Top = 0
      Width = 1064
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
    end
  end
  object grdMaster: TwwDBGrid
    Left = 0
    Top = 99
    Width = 1130
    Height = 144
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    LineColors.ShadowColor = clTeal
    OnDblClick = grdMasterDblClick
    PaintOptions.AlternatingRowColor = 7500402
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
  object pnlDetailBottom: TPanel
    Left = 0
    Top = 248
    Width = 1130
    Height = 142
    Align = alBottom
    TabOrder = 3
    object pnlDetail: TPanel
      Left = 1
      Top = 42
      Width = 1128
      Height = 99
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object grdDetail: TwwDBGrid
        Left = 0
        Top = 0
        Width = 1128
        Height = 99
        IniAttributes.Delimiter = ';;'
        IniAttributes.UnicodeIniFile = False
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        TabOrder = 0
        TitleAlignment = taLeftJustify
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
    end
    object pnlDetailBottomToolBar: TPanel
      Left = 1
      Top = 1
      Width = 1128
      Height = 41
      Align = alTop
      Caption = 'pnlDetailBottomToolBar'
      TabOrder = 1
      object lbDetailRecordCount: TLabel
        AlignWithMargins = True
        Left = 1116
        Top = 13
        Width = 8
        Height = 16
        Margins.Top = 12
        Align = alRight
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object tlbDetail: TToolBar
        Left = 1
        Top = 1
        Width = 1112
        Height = 39
        Align = alClient
        ButtonHeight = 21
        ButtonWidth = 31
        ShowCaptions = True
        TabOrder = 0
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 390
    Width = 1130
    Height = 202
    Align = alBottom
    TabOrder = 4
    Visible = False
  end
  object JanuaMasterActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbMaster
    ButtonSize = jbs24
    Left = 248
    Top = 368
  end
  object JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    SearchContainer = pnlSearchParams
    Left = 248
    Top = 528
  end
  object JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    SearchContainer = pnlSearchParams
    SearchInput = edSearchText
    SearchLabel = lbSearchText
    SearchButton = btnStartSearch
    Left = 248
    Top = 472
  end
  object ActionList1: TActionList
    Left = 552
    Top = 128
    object Action1: TAction
      GroupIndex = 1
      ImageIndex = 2
      ImageName = 'calendar_today-white-24dp'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Checked = True
      GroupIndex = 1
      ImageIndex = 3
      ImageName = 'date_range-white-24dp'
      OnExecute = Action2Execute
    end
  end
  object DataSource1: TDataSource
    Left = 496
    Top = 144
  end
  object JanuaDetailActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbDetail
    ButtonSize = jbs24
    Left = 424
    Top = 424
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
    DetailActions = JanuaDetailActionViewController
    DetailGridBuilder = DetailGridBuilder1
    Left = 88
    Top = 432
  end
  object MasterGridBuilder1: TJanuaMVVMGridBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Grid = grdMaster
    Left = 248
    Top = 424
  end
  object DetailGridBuilder1: TJanuaMVVMGridBuilder
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Grid = grdDetail
    Left = 424
    Top = 488
  end
  object tmrOpenAll: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmrOpenAllTimer
    Left = 616
    Top = 360
  end
end
