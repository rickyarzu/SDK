object frmLineChartValuesCurrency: TfrmLineChartValuesCurrency
  Left = 0
  Top = 0
  Width = 929
  Height = 548
  OnCreate = UniFrameCreate
  TabOrder = 0
  object GoogleChart: TUniFSGoogleChart
    AlignWithMargins = True
    Left = 269
    Top = 76
    Width = 657
    Height = 469
    Hint = ''
    APIKeys = UniServerModule.UniFSKeys
    ChartType = LineChart
    ChartDataSet = CDS
    ChartOptions.Strings = (
      'title: '#39'Company Performance'#39','
      'curveType: '#39'function'#39','
      'legend: { position: '#39'bottom'#39' }')
    ChartFormat.Active = True
    ChartFormat.DecimalSymbol = ','
    ChartFormat.GroupingSymbom = '.'
    ChartFormat.NegativeColor = 'red'
    ChartFormat.NegativeParens = True
    ChartFormat.Prefix = 'R$'
    Align = alClient
    OnAjaxEvent = GoogleChartAjaxEvent
    ExplicitLeft = 260
    ExplicitTop = 73
    ExplicitWidth = 669
    ExplicitHeight = 475
  end
  object pnlLeft: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 76
    Width = 260
    Height = 469
    Hint = ''
    Align = alLeft
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = 'pnlLeft'
    ExplicitLeft = 0
    ExplicitTop = 73
    ExplicitHeight = 475
    object DBNMaster1: TUniDBNavigator
      Left = 0
      Top = 444
      Width = 260
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
      Width = 260
      Height = 152
      Hint = ''
      Align = alBottom
      TabOrder = 2
      EmptyText = 'Event Ajax'
      ExplicitTop = 298
    end
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 260
      Height = 292
      Hint = ''
      Align = alClient
      TabOrder = 0
      BorderStyle = ubsNone
      Caption = 'pnlLeft'
      ExplicitHeight = 298
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 260
        Height = 292
        Hint = ''
        DataSource = DS
        WebOptions.Paged = False
        LoadMask.Message = 'Loading data...'
        ForceFit = True
        Align = alClient
        TabOrder = 1
      end
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
    object lblInfo: TUniLabel
      Left = 249
      Top = 27
      Width = 360
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 
        'https://developers.google.com/chart/interactive/docs/gallery/lin' +
        'echart'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 120
    Top = 272
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 120
    Top = 208
  end
end
