object frmPieChart: TfrmPieChart
  Left = 0
  Top = 0
  Width = 1046
  Height = 618
  OnCreate = UniFrameCreate
  TabOrder = 0
  object GoogleChart: TUniFSGoogleChart
    Left = 306
    Top = 73
    Width = 514
    Height = 545
    Hint = ''
    APIKeys = UniServerModule.UniFSKeys
    ChartType = PieChart
    ChartDataSet = CDS
    ChartFormat.Active = False
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
    OnAjaxEvent = GoogleChartAjaxEvent
    ExplicitLeft = 300
    ExplicitWidth = 543
  end
  object pnlLeft: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 300
    Height = 539
    Hint = ''
    Align = alLeft
    TabOrder = 2
    BorderStyle = ubsNone
    Caption = 'pnlLeft'
    ExplicitLeft = 0
    ExplicitTop = 73
    ExplicitHeight = 545
    object dbg1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 300
      Height = 362
      Hint = ''
      DataSource = DS
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
    end
    object dbnMaster: TUniDBNavigator
      Left = 0
      Top = 514
      Width = 300
      Height = 25
      Hint = ''
      DataSource = DS
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 520
    end
    object memEvent: TUniMemo
      Left = 0
      Top = 362
      Width = 300
      Height = 152
      Hint = ''
      Align = alBottom
      TabOrder = 2
      EmptyText = 'Event Ajax'
      ExplicitTop = 368
    end
  end
  object pnlRight: TUniPanel
    AlignWithMargins = True
    Left = 823
    Top = 76
    Width = 220
    Height = 539
    Hint = ''
    Visible = False
    Align = alRight
    TabOrder = 3
    BorderStyle = ubsNone
    Caption = 'pnlRight'
    object memOptions: TUniMemo
      Left = 0
      Top = 225
      Width = 220
      Height = 314
      Hint = ''
      BorderStyle = ubsFrameLowered
      Align = alClient
      TabOrder = 2
      WordWrap = False
      OnChange = memOptionsChange
      ExplicitWidth = 203
      ExplicitHeight = 320
    end
    object rdgExample: TUniRadioGroup
      Left = 0
      Top = 0
      Width = 220
      Height = 225
      Hint = ''
      Items.Strings = (
        'Example 01'
        'Example 02'
        'Example 03'
        'Example 04'
        'Example 05'
        'Example 06'
        'Example 07')
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      Align = alTop
      Caption = 'Examples'
      TabOrder = 1
      OnClick = rdgExampleClick
      ExplicitWidth = 203
    end
  end
  object pnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 73
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = cl3DLight
    DesignSize = (
      1046
      73)
    object btnLoad: TUniFSButton
      Left = 15
      Top = 22
      Width = 218
      Height = 25
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Load Chart'
      ParentFont = False
      Font.Color = clWhite
      TabOrder = 1
      ScreenMask.ShowMessage = False
      OnClick = btnLoadClick
    end
    object btnOptions: TUniFSButton
      Left = 974
      Top = 22
      Width = 59
      Height = 25
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Options'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      TabOrder = 2
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      OnClick = btnOptionsClick
    end
    object lblInfo: TUniLabel
      Left = 249
      Top = 27
      Width = 357
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 
        'https://developers.google.com/chart/interactive/docs/gallery/pie' +
        'chart'
      TabOrder = 3
      OnClick = lblInfoClick
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 280
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 104
    Top = 344
  end
end
