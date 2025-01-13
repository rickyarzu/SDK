inherited frameVclTestOrmDatasetSync: TframeVclTestOrmDatasetSync
  Width = 1160
  Height = 582
  Font.Height = -13
  ParentFont = False
  ExplicitWidth = 1160
  ExplicitHeight = 582
  DesignSize = (
    1160
    582)
  object lbMasterGUID: TLabel
    Left = 752
    Top = 246
    Width = 96
    Height = 16
    Caption = 'lbMasterGUID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object lbDetailGUID: TLabel
    Left = 568
    Top = 523
    Width = 96
    Height = 16
    Caption = 'lbDetailGUID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
  end
  object btnStartTest: TButton
    Left = 24
    Top = 70
    Width = 105
    Height = 24
    Caption = 'Start Testing'
    TabOrder = 10
    OnClick = btnStartTestClick
  end
  object grdMaster: TwwDBGrid
    Left = 24
    Top = 128
    Width = 500
    Height = 130
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    TabOrder = 9
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object grdDetail: TwwDBGrid
    Left = 24
    Top = 264
    Width = 500
    Height = 137
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    TabOrder = 13
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object tlbMaster: TToolBar
    Left = 24
    Top = 40
    Width = 273
    Height = 29
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    ButtonHeight = 21
    ButtonWidth = 31
    Caption = 'tlbMaster'
    ShowCaptions = True
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 135
    Top = 70
    Width = 394
    Height = 25
    TabOrder = 1
    Text = 'Edit1'
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 97
    Width = 500
    Height = 25
    TabOrder = 2
  end
  object grdDetail2: TwwDBGrid
    Left = 24
    Top = 407
    Width = 500
    Height = 143
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object tlbSubModel: TToolBar
    Left = 568
    Top = 40
    Width = 410
    Height = 29
    Align = alNone
    Anchors = [akLeft, akTop, akRight]
    ButtonHeight = 21
    ButtonWidth = 31
    Caption = 'tlbMaster'
    ShowCaptions = True
    TabOrder = 4
  end
  object btnTestSubModel: TButton
    Left = 560
    Top = 75
    Width = 105
    Height = 24
    Caption = 'Start SubModel'
    Enabled = False
    TabOrder = 5
    OnClick = btnTestSubModelClick
  end
  object edTextSubModel: TEdit
    Left = 936
    Top = 75
    Width = 193
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 6
    Text = 'Sub Model Search'
  end
  object dbnavDetail: TDBNavigator
    Left = 560
    Top = 105
    Width = 560
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 7
  end
  object grdDetailWW: TwwDBGrid
    Left = 560
    Top = 136
    Width = 569
    Height = 105
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 8
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    LineColors.ShadowColor = clTeal
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
  object edtMasterStringField: TLabeledEdit
    Left = 569
    Top = 264
    Width = 119
    Height = 24
    EditLabel.Width = 101
    EditLabel.Height = 17
    EditLabel.Caption = 'Master Grid Field'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    Text = ''
  end
  object dtpMasterDate: TDateTimePicker
    Left = 704
    Top = 264
    Width = 106
    Height = 24
    Date = 44461.000000000000000000
    Time = 0.746991944441106200
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object MoneyEdit1: TMoneyEdit
    Left = 1023
    Top = 264
    Width = 106
    Height = 24
    CalculatorLook.ButtonWidth = 24
    CalculatorLook.ButtonHeight = 24
    CalculatorLook.ButtonColor = clSilver
    CalculatorLook.Color = clWhite
    CalculatorLook.Flat = False
    CalculatorLook.Font.Charset = DEFAULT_CHARSET
    CalculatorLook.Font.Color = clWindowText
    CalculatorLook.Font.Height = -11
    CalculatorLook.Font.Name = 'Tahoma'
    CalculatorLook.Font.Style = []
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    Version = '1.1.2.2'
  end
  object btnDeleteSubModels: TButton
    Left = 671
    Top = 75
    Width = 139
    Height = 24
    Caption = 'Delete SubModels'
    Enabled = False
    TabOrder = 14
    OnClick = btnDeleteSubModelsClick
  end
  object pnlNavigatorTest: TPanel
    Left = 560
    Top = 291
    Width = 569
    Height = 206
    Caption = 'pnlNavigatorTest'
    TabOrder = 16
  end
  object seDetailIntField: TSpinEdit
    Left = 920
    Top = 520
    Width = 82
    Height = 27
    MaxValue = 0
    MinValue = 0
    TabOrder = 17
    Value = 0
  end
  object edtDetailString: TLabeledEdit
    Left = 1008
    Top = 520
    Width = 112
    Height = 25
    EditLabel.Width = 102
    EditLabel.Height = 17
    EditLabel.Caption = 'Detail String Field'
    TabOrder = 18
    Text = ''
  end
  object btnSaveAll: TButton
    Left = 816
    Top = 75
    Width = 105
    Height = 24
    Caption = 'Save All To DB'
    Enabled = False
    TabOrder = 19
    OnClick = btnSaveAllClick
  end
  object chkMasterBoolean: TCheckBox
    Left = 848
    Top = 268
    Width = 65
    Height = 17
    Caption = 'Boolean'
    TabOrder = 20
  end
  object seIntegerEdit: TJvValidateEdit
    Left = 929
    Top = 264
    Width = 88
    Height = 25
    CriticalPoints.MaxValueIncluded = False
    CriticalPoints.MinValueIncluded = False
    EditText = '0'
    TabOrder = 21
  end
  object JanuaMasterActionViewController: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbMaster
    ButtonSize = jbs24
    DBNavigator = DBNavigator1
    Left = 160
    Top = 104
  end
  object JanuaVCLMVVMSearchTextBuilder1: TJanuaVCLMVVMSearchTextBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    SearchInput = Edit1
    Left = 160
    Top = 168
  end
  object JanuaVCLMVVMSearchParamsBuilder1: TJanuaVCLMVVMSearchParamsBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    Left = 304
    Top = 136
  end
  object DataSource1: TDataSource
    Left = 264
    Top = 312
  end
  object ActionList1: TActionList
    Images = SVGIconImageList1
    Left = 360
    Top = 344
    object Action1: TAction
      Caption = 'Action1'
      GroupIndex = 1
      ImageIndex = 2
      ImageName = 'calendar_today-white-24dp'
    end
    object Action2: TAction
      Caption = 'Action2'
      Checked = True
      GroupIndex = 1
      ImageIndex = 3
      ImageName = 'date_range-white-24dp'
    end
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
    Left = 368
    Top = 288
  end
  object DetailActionViewController1: TJanuaActionViewController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    ToolBar = tlbSubModel
    ButtonSize = jbs24
    DBNavigator = dbnavDetail
    Left = 632
    Top = 152
  end
  object JanuaDetailVCLMVVMSearchTextBuilder: TJanuaVCLMVVMSearchTextBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    SearchInput = edTextSubModel
    Left = 912
    Top = 152
  end
  object JanuaMVVMMasterController: TJanuaMVVMFormController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    GridType = jgtDBGrid
    MasterActions = JanuaMasterActionViewController
    FilterParamsBuilder = JanuaVCLMVVMSearchParamsBuilder1
    SearchTextBuilder = JanuaVCLMVVMSearchTextBuilder1
    Left = 304
    Top = 192
  end
  object DetailFormController: TJanuaMVVMFormController
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    GridType = jgtDBGrid
    MasterGridBuilder = DetailGridBuilder1
    MasterActions = DetailActionViewController1
    SearchTextBuilder = JanuaDetailVCLMVVMSearchTextBuilder
    Left = 752
    Top = 176
  end
  object MasterGridBuilder1: TJanuaMVVMGridBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaNone
    TestMode = False
    Grid = grdMaster
    Left = 160
    Top = 240
  end
  object DetailGridBuilder1: TJanuaMVVMGridBuilder
    Enabled = True
    Verbose = False
    LogToFile = False
    Language = jlaEnglish
    TestMode = False
    Grid = grdDetailWW
    Left = 1040
    Top = 184
  end
end
