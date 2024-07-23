object frmBubbleChart: TfrmBubbleChart
  Left = 0
  Top = 0
  Width = 1095
  Height = 548
  OnCreate = UniFrameCreate
  TabOrder = 0
  object GoogleChart: TUniFSGoogleChart
    Left = 406
    Top = 73
    Width = 463
    Height = 475
    Hint = ''
    APIKeys = UniServerModule.UniFSKeys
    ChartType = BubbleChart
    ChartDataSet = CDS
    ChartOptions.Strings = (
      'title: '#39'Correlation between life expectancy'#39','
      '        hAxis: {title: '#39'Life Expectancy'#39'},'
      '        vAxis: {title: '#39'Fertility Rate'#39'},'
      '        bubble: {textStyle: {fontSize: 11}}')
    ChartFormat.Active = False
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
    OnAjaxEvent = GoogleChartAjaxEvent
    ExplicitLeft = 400
    ExplicitWidth = 492
  end
  object pnlLeft: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 400
    Height = 469
    Hint = ''
    Align = alLeft
    TabOrder = 2
    BorderStyle = ubsNone
    Caption = 'pnlLeft'
    ExplicitLeft = 0
    ExplicitTop = 73
    ExplicitHeight = 475
    object DBNMaster1: TUniDBNavigator
      Left = 0
      Top = 444
      Width = 400
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
      Width = 400
      Height = 152
      Hint = ''
      Align = alBottom
      TabOrder = 2
      EmptyText = 'Event Ajax'
      ExplicitTop = 298
    end
    object UniDBGrid1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 400
      Height = 292
      Hint = ''
      DataSource = DS
      WebOptions.Paged = False
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
    end
  end
  object pnlRight: TUniPanel
    AlignWithMargins = True
    Left = 872
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
        'title: '#39'Correlation between life expectancy'#39','
        '        hAxis: {title: '#39'Life Expectancy'#39'},'
        '        vAxis: {title: '#39'Fertility Rate'#39'},'
        '        bubble: {textStyle: {fontSize: 11}}')
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
    Width = 1095
    Height = 73
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = cl3DLight
    DesignSize = (
      1095
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
      Left = 1020
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
      Width = 378
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 
        'https://developers.google.com/chart/interactive/docs/gallery/bub' +
        'blechart'
      TabOrder = 3
      OnClick = lblInfoClick
    end
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 280
  end
  object tmrRandom: TUniTimer
    Interval = 2000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 99
    Top = 223
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 96
    Top = 344
  end
end
