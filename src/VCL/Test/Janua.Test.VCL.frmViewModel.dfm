object frmVCLTestViewModel: TfrmVCLTestViewModel
  Left = 0
  Top = 0
  Caption = 'Test View Model'
  ClientHeight = 572
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  TextHeight = 13
  object pnlCommands: TPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object navMaster: TDBNavigator
      Left = 0
      Top = 0
      Width = 200
      Height = 44
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
    object ToolBar1: TToolBar
      Left = 200
      Top = 0
      Width = 814
      Height = 44
      Align = alClient
      ButtonHeight = 21
      ButtonWidth = 31
      Caption = 'ToolBar1'
      ShowCaptions = True
      TabOrder = 1
    end
  end
  object pnlSearch: TPanel
    Left = 0
    Top = 44
    Width = 1014
    Height = 45
    Align = alTop
    TabOrder = 1
    object btnAction1: TButton
      AlignWithMargins = True
      Left = 243
      Top = 3
      Width = 32
      Height = 39
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 2
      Action = Action1
      Align = alLeft
      Images = SVGIconImageList1
      SelectedImageIndex = 3
      SelectedImageName = 'date_range-white-24dp'
      TabOrder = 0
    end
    object btnAction2: TButton
      AlignWithMargins = True
      Left = 275
      Top = 3
      Width = 32
      Height = 39
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 2
      Action = Action2
      Align = alLeft
      Images = SVGIconImageList1
      SelectedImageIndex = 9
      SelectedImageName = 'alarm_on-24px'
      TabOrder = 1
    end
    object btnStartSearch: TButton
      AlignWithMargins = True
      Left = 626
      Top = 3
      Width = 32
      Height = 39
      Margins.Left = 0
      Margins.Top = 2
      Margins.Right = 0
      Margins.Bottom = 2
      Align = alLeft
      ImageIndex = 7
      ImageName = 'search-white-24dp'
      Images = SVGIconImageList1
      TabOrder = 2
      OnClick = btnStartSearchClick
    end
    object pnlSearchText: TPanel
      Left = 460
      Top = 1
      Width = 166
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 3
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 160
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Search Text'
        ExplicitWidth = 56
      end
      object LUEdit1: TLUEdit
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 160
        Height = 23
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        AutoHistory = False
        AutoHistoryLimit = 0
        AutoHistoryDirection = ahdFirst
        AutoSynchronize = False
        ReturnIsTab = False
        FileLookup = False
        Persist.Enable = False
        Persist.Storage = stInifile
        Persist.Count = 0
        Persist.MaxCount = False
        MatchCase = False
        ModifiedColor = clHighlight
        ShowModified = False
        Version = '2.3.1.6'
        ExplicitHeight = 21
      end
    end
    object pnlDateFrom: TPanel
      Left = 1
      Top = 1
      Width = 121
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 4
      object lbDateFrom: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 115
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Date From'
        ExplicitWidth = 53
      end
      object edDateFrom: TDateTimePicker
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 115
        Height = 23
        Align = alTop
        Date = 44067.000000000000000000
        Time = 44067.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 307
      Top = 1
      Width = 153
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 5
      object lbSearchText: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 147
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Search Index'
        ExplicitWidth = 65
      end
      object ComboBox2: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 147
        Height = 23
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'ComboBox1'
      end
    end
    object pnlDateTo: TPanel
      Left = 122
      Top = 1
      Width = 121
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 6
      object lbDateTo: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 115
        Height = 13
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Date To'
        ExplicitWidth = 38
      end
      object edDateTo: TDateTimePicker
        AlignWithMargins = True
        Left = 3
        Top = 19
        Width = 115
        Height = 23
        Align = alTop
        Date = 44067.000000000000000000
        Time = 0.702150740740762600
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object pnlSearchParams: TPanel
      Left = 658
      Top = 1
      Width = 355
      Height = 43
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 7
    end
  end
  object grdMaster: TEnhCRDBGrid
    Left = 0
    Top = 89
    Width = 1014
    Height = 96
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 370
    Width = 1014
    Height = 202
    Align = alBottom
    TabOrder = 3
    inline frameTestRecord1: TframeVCLTest
      Left = 1
      Top = 1
      Width = 1012
      Height = 200
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 1012
      ExplicitHeight = 200
      inherited lbStringField: TLabel
        Height = 13
        ExplicitHeight = 13
      end
      inherited lbIntField: TLabel
        Height = 13
        ExplicitHeight = 13
      end
      inherited lbFloatField: TLabel
        Height = 13
        ExplicitHeight = 13
      end
      inherited lbDateTime: TLabel
        Width = 50
        Height = 13
        ExplicitWidth = 50
        ExplicitHeight = 13
      end
      inherited lbDate: TLabel
        Height = 13
        ExplicitHeight = 13
      end
      inherited lbMemo: TLabel
        Left = 504
        Top = 21
        Width = 60
        Height = 13
        ExplicitLeft = 504
        ExplicitTop = 21
        ExplicitWidth = 60
        ExplicitHeight = 13
      end
      inherited memMemoField: TMemo
        Left = 504
        Top = 40
        Height = 121
        ExplicitLeft = 504
        ExplicitTop = 40
        ExplicitHeight = 121
      end
    end
  end
  object grdDetail: TEnhCRDBGrid
    Left = 0
    Top = 226
    Width = 1014
    Height = 144
    Align = alBottom
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -11
    HighlightFont.Name = 'Tahoma'
    HighlightFont.Style = []
  end
  object pnlDetail: TPanel
    Left = 0
    Top = 185
    Width = 1014
    Height = 41
    Align = alBottom
    TabOrder = 5
    object navDetail: TDBNavigator
      Left = 1
      Top = 1
      Width = 200
      Height = 39
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      TabOrder = 0
    end
  end
  object JanuaActionViewController1: TJanuaActionViewController
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = ToolBar1
    ButtonSize = jbs24
    DBNavigator = navMaster
    Left = 168
    Top = 120
  end
  object JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder
    Enabled = False
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    Left = 384
    Top = 120
  end
  object JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    SearchContainer = pnlSearchParams
    SearchInput = LUEdit1
    SearchLabel = lbSearchText
    Left = 264
    Top = 144
  end
  object SVGIconImageList1: TSVGIconImageList
    Size = 24
    SVGIconItems = <
      item
        IconName = 'date_range-24px'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0' +
          ' 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path d=' +
          '"M9 11H7v2h2v-2zm4 0h-2v2h2v-2zm4 0h-2v2h2v-2zm2-7h-1V2h-2v2H8V2' +
          'H6v2H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2' +
          '-2V6c0-1.1-.9-2-2-2zm0 16H5V9h14v11z"/></svg>'
      end
      item
        IconName = 'calendar_today-24px'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0' +
          ' 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path d=' +
          '"M20 3h-1V1h-2v2H7V1H5v2H4c-1.1 0-2 .9-2 2v16c0 1.1.9 2 2 2h16c1' +
          '.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 18H4V8h16v13z"/></svg>'
      end
      item
        IconName = 'calendar_today-white-24dp'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill' +
          '="white" width="24px" height="24px"><path d="M0 0h24v24H0V0z" fi' +
          'll="none"/><path d="M20 3h-1V1h-2v2H7V1H5v2H4c-1.1 0-2 .9-2 2v16' +
          'c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm0 18H4V10h16v' +
          '11zm0-13H4V5h16v3z"/></svg>'
      end
      item
        IconName = 'date_range-white-24dp'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill' +
          '="white" width="24px" height="24px"><path d="M0 0h24v24H0V0z" fi' +
          'll="none"/><path d="M7 11h2v2H7v-2zm14-5v14c0 1.1-.9 2-2 2H5c-1.' +
          '11 0-2-.9-2-2l.01-14c0-1.1.88-2 1.99-2h1V2h2v2h8V2h2v2h1c1.1 0 2' +
          ' .9 2 2zM5 8h14V6H5v2zm14 12V10H5v10h14zm-4-7h2v-2h-2v2zm-4 0h2v' +
          '-2h-2v2z"/></svg>'
      end
      item
        IconName = 'alarm_off-white-24dp'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill' +
          '="white" width="24px" height="24px"><path d="M0 0h24v24H0V0z" fi' +
          'll="none"/><path d="M10.04 6.29C10.66 6.11 11.32 6 12 6c3.86 0 7' +
          ' 3.14 7 7 0 .68-.11 1.34-.29 1.96l1.56 1.56c.47-1.08.73-2.27.73-' +
          '3.52 0-4.97-4.03-9-9-9-1.25 0-2.44.26-3.53.72l1.57 1.57zm7.297-4' +
          '.48l4.607 3.845-1.28 1.535-4.61-3.843zM3.02 2.1L1.61 3.51l1.37 1' +
          '.37-.92.77 1.28 1.54 1.06-.88.8.8C3.83 8.69 3 10.75 3 13c0 4.97 ' +
          '4.03 9 9 9 2.25 0 4.31-.83 5.89-2.2l2.1 2.1 1.41-1.41L3.02 2.1zM' +
          '12 20c-3.86 0-7-3.14-7-7 0-1.7.61-3.26 1.62-4.47l9.85 9.85C15.26' +
          ' 19.39 13.7 20 12 20zM7.48 3.73l.46-.38-1.28-1.54-.6.5z"/></svg>'
      end
      item
        IconName = 'alarm-white-24dp'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill' +
          '="white" width="24px" height="24px"><path d="M0 0h24v24H0V0z" fi' +
          'll="none"/><path d="M12.5 8H11v6l4.75 2.85.75-1.23-4-2.37zm4.837' +
          '-6.19l4.607 3.845-1.28 1.535-4.61-3.843zm-10.674 0l1.282 1.536L3' +
          '.337 7.19l-1.28-1.536zM12 4c-4.97 0-9 4.03-9 9s4.03 9 9 9 9-4.03' +
          ' 9-9-4.03-9-9-9zm0 16c-3.86 0-7-3.14-7-7s3.14-7 7-7 7 3.14 7 7-3' +
          '.14 7-7 7z"/></svg>'
      end
      item
        IconName = 'event-24px'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0' +
          ' 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path d=' +
          '"M17 12h-5v5h5v-5zM16 1v2H8V1H6v2H5c-1.11 0-1.99.9-1.99 2L3 19c0' +
          ' 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2h-1V1h-2zm3 18H5' +
          'V8h14v11z"/></svg>'
      end
      item
        IconName = 'search-white-24dp'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill' +
          '="white" width="24px" height="24px"><path d="M0 0h24v24H0V0z" fi' +
          'll="none"/><path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 ' +
          '16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 ' +
          '3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01' +
          ' 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/' +
          '></svg>'
      end
      item
        IconName = 'alarm_off-24px'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0' +
          ' 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path d=' +
          '"M12 6c3.87 0 7 3.13 7 7 0 .84-.16 1.65-.43 2.4l1.52 1.52c.58-1.' +
          '19.91-2.51.91-3.92 0-4.97-4.03-9-9-9-1.41 0-2.73.33-3.92.91L9.6 ' +
          '6.43C10.35 6.16 11.16 6 12 6zm10-.28l-4.6-3.86-1.29 1.53 4.6 3.8' +
          '6L22 5.72zM2.92 2.29L1.65 3.57 2.98 4.9l-1.11.93 1.42 1.42 1.11-' +
          '.94.8.8C3.83 8.69 3 10.75 3 13c0 4.97 4.02 9 9 9 2.25 0 4.31-.83' +
          ' 5.89-2.2l2.2 2.2 1.27-1.27L3.89 3.27l-.97-.98zm13.55 16.1C15.26' +
          ' 19.39 13.7 20 12 20c-3.87 0-7-3.13-7-7 0-1.7.61-3.26 1.61-4.47l' +
          '9.86 9.86zM8.02 3.28L6.6 1.86l-.86.71 1.42 1.42.86-.71z"/></svg>'
      end
      item
        IconName = 'alarm_on-24px'
        SVGText = 
          '<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0' +
          ' 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path d=' +
          '"M22 5.72l-4.6-3.86-1.29 1.53 4.6 3.86L22 5.72zM7.88 3.39L6.6 1.' +
          '86 2 5.71l1.29 1.53 4.59-3.85zM12 4c-4.97 0-9 4.03-9 9s4.02 9 9 ' +
          '9c4.97 0 9-4.03 9-9s-4.03-9-9-9zm0 16c-3.87 0-7-3.13-7-7s3.13-7 ' +
          '7-7 7 3.13 7 7-3.13 7-7 7zm-1.46-5.47L8.41 12.4l-1.06 1.06 3.18 ' +
          '3.18 6-6-1.06-1.06-4.93 4.95z"/></svg>'
      end>
    FixedColor = clSilver
    Scaled = True
    Left = 680
    Top = 112
  end
  object ActionList1: TActionList
    Images = SVGIconImageList1
    Left = 568
    Top = 136
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
  object MainMenu1: TMainMenu
    Left = 656
    Top = 184
    object File1: TMenuItem
      Caption = 'File'
      object estViewModel1: TMenuItem
        Caption = 'Test ViewModel'
        OnClick = estViewModel1Click
      end
      object estMenuBar1: TMenuItem
        Caption = 'Test MenuBar'
        OnClick = estMenuBar1Click
      end
      object estSearchBar1: TMenuItem
        Caption = 'Test Search Bar'
        OnClick = estSearchBar1Click
      end
      object estGrids1: TMenuItem
        Caption = 'Test Grids'
        OnClick = estGrids1Click
      end
      object estFrame1: TMenuItem
        Caption = 'Test Frame'
        OnClick = estFrame1Click
      end
    end
  end
  object DataSource1: TDataSource
    Left = 392
    Top = 184
  end
end
