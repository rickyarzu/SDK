object frmGeoChart: TfrmGeoChart
  Left = 0
  Top = 0
  Width = 1004
  Height = 651
  OnCreate = UniFrameCreate
  Font.Name = 'Roboto'
  TabOrder = 0
  ParentFont = False
  object pnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 66
    Hint = ''
    Align = alTop
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = cl3DLight
    DesignSize = (
      1004
      66)
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
      Font.Name = 'Roboto'
      TabOrder = 1
      ScreenMask.WaitData = True
      ScreenMask.ShowMessage = False
      OnClick = btnLoadClick
    end
    object btnOptions: TUniFSButton
      Left = 929
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
      Font.Name = 'Roboto'
      TabOrder = 2
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      OnClick = btnOptionsClick
    end
    object lblInfo: TUniLabel
      Left = 249
      Top = 27
      Width = 362
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 
        'https://developers.google.com/chart/interactive/docs/gallery/geo' +
        'chart'
      TabOrder = 3
      OnClick = lblInfoClick
    end
  end
  object GoogleChart: TUniFSGoogleChart
    Left = 239
    Top = 66
    Width = 539
    Height = 585
    Hint = ''
    APIKeys = UniServerModule.UniFSKeys
    ChartType = GeoChart
    ChartDataSet = CDS
    ChartFormat.Active = False
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
    OnAjaxEvent = GoogleChartAjaxEvent
  end
  object pnlRight: TUniPanel
    AlignWithMargins = True
    Left = 781
    Top = 69
    Width = 220
    Height = 579
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
      Height = 419
      Hint = ''
      BorderStyle = ubsFrameLowered
      Align = alClient
      TabOrder = 2
      WordWrap = False
      OnChange = memOptionsChange
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
    end
  end
  object pnlLeft: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 69
    Width = 233
    Height = 579
    Hint = ''
    Align = alLeft
    TabOrder = 2
    BorderStyle = ubsNone
    Caption = 'pnlLeft'
    object dbg1: TUniDBGrid
      Left = 0
      Top = 0
      Width = 233
      Height = 402
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
      Top = 554
      Width = 233
      Height = 25
      Hint = ''
      DataSource = DS
      Align = alBottom
      TabOrder = 3
    end
    object memEvent: TUniMemo
      Left = 0
      Top = 402
      Width = 233
      Height = 152
      Hint = ''
      Align = alBottom
      TabOrder = 2
      EmptyText = 'Event Ajax'
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
  object tmrRandom: TUniTimer
    Interval = 2000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 104
    Top = 224
  end
end
