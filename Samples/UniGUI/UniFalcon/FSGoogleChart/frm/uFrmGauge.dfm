object frmGauge: TfrmGauge
  Left = 0
  Top = 0
  Width = 929
  Height = 548
  OnCreate = UniFrameCreate
  TabOrder = 0
  object GoogleChart: TUniFSGoogleChart
    Left = 239
    Top = 73
    Width = 464
    Height = 475
    Hint = ''
    APIKeys = UniServerModule.UniFSKeys
    ChartType = Gauge
    ChartDataSet = CDS
    ChartOptions.Strings = (
      'redFrom: 90, redTo: 100,'
      'yellowFrom:75, yellowTo: 90,'
      'minorTicks: 5')
    ChartFormat.Active = False
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
    OnAjaxEvent = GoogleChartAjaxEvent
    ExplicitLeft = 233
    ExplicitWidth = 493
  end
  object pnlLeft: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 233
    Height = 469
    Hint = ''
    Align = alLeft
    TabOrder = 2
    BorderStyle = ubsNone
    Caption = 'pnlLeft'
    ExplicitLeft = 0
    ExplicitTop = 73
    ExplicitHeight = 475
    object dbg1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 233
      Height = 292
      Hint = ''
      DataSource = DS
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
    end
    object DBNMaster1: TUniDBNavigator
      Left = 0
      Top = 444
      Width = 233
      Height = 25
      Hint = ''
      DataSource = DS
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 450
    end
    object memEvent: TUniMemo
      Left = 0
      Top = 292
      Width = 233
      Height = 152
      Hint = ''
      Align = alBottom
      TabOrder = 2
      EmptyText = 'Event Ajax'
      ExplicitTop = 298
    end
  end
  object pnlRight: TUniPanel
    AlignWithMargins = True
    Left = 706
    Top = 76
    Width = 220
    Height = 469
    Hint = ''
    Visible = False
    Align = alRight
    TabOrder = 3
    BorderStyle = ubsNone
    Caption = 'pnlRight'
    object memOptions: TUniMemo
      Left = 0
      Top = 160
      Width = 220
      Height = 309
      Hint = ''
      BorderStyle = ubsFrameLowered
      Lines.Strings = (
        'redFrom: 90, redTo: 100,'
        'yellowFrom:75, yellowTo: 90,'
        'minorTicks: 5')
      Align = alClient
      TabOrder = 2
      WordWrap = False
      OnChange = memOptionsChange
      ExplicitWidth = 203
      ExplicitHeight = 315
    end
    object rdgExample: TUniRadioGroup
      Left = 0
      Top = 0
      Width = 220
      Height = 160
      Hint = ''
      Items.Strings = (
        'Example 01'
        'Example 02'
        'Example 03'
        'Example 04'
        'Example 05')
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
    Width = 929
    Height = 73
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = cl3DLight
    DesignSize = (
      929
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
      ScreenMask.WaitData = True
      ScreenMask.ShowMessage = False
      OnClick = btnLoadClick
    end
    object btnOptions: TUniFSButton
      Left = 854
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
      Width = 348
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 
        'https://developers.google.com/chart/interactive/docs/gallery/gau' +
        'ge'
      TabOrder = 3
      OnClick = lblInfoClick
    end
    object chkEnableRandom: TUniCheckBox
      Left = 15
      Top = 53
      Width = 170
      Height = 17
      Hint = ''
      Caption = 'Enable Automatic Random'
      TabOrder = 4
      OnClick = chkEnableRandomClick
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 280
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 96
    Top = 344
  end
  object tmrRandom: TUniTimer
    Interval = 2000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = tmrRandomTimer
    Left = 99
    Top = 223
  end
end
