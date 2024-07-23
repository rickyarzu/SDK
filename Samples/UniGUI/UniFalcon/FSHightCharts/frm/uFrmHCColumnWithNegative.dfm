object frmHCColumnWithNegative: TfrmHCColumnWithNegative
  Left = 0
  Top = 0
  Width = 1004
  Height = 653
  OnCreate = UniFrameCreate
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
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
    object lblInfo: TUniLabel
      Left = 249
      Top = 27
      Width = 267
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/column-negative'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 66
    Width = 1004
    Height = 587
    Hint = ''
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 585
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'Chart'
      ExplicitHeight = 557
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 996
        Height = 559
        Hint = ''
        ChartOptions.Enabled = True
        ChartOptions.ChartLang.Enabled = True
        ChartOptions.ChartLang.DecimaPoint = ','
        ChartOptions.ChartLang.DownloadJPEG = 'Download da Imagem JPEG'
        ChartOptions.ChartLang.DownloadPDF = 'Download do Arquivo PDF'
        ChartOptions.ChartLang.DownloadPNG = 'Download da Imagem PNG'
        ChartOptions.ChartLang.DownloadSVG = 'Download do Vetor SVG'
        ChartOptions.ChartLang.DrillUpText = 'Voltar para {series.name}'
        ChartOptions.ChartLang.Loading = 'Carregando...'
        ChartOptions.ChartLang.Months = 
          '"Janeiro" , "Fevereiro" , "Mar'#231'o" , "Abril" , "Maio" , "Junho" ,' +
          ' "Julho" , "Agosto" , "Setembro" , "Outubro" , "Novembro" , "Dez' +
          'embro"'
        ChartOptions.ChartLang.NoData = 'N'#227'o h'#225' informa'#231#245'es para mostrar'
        ChartOptions.ChartLang.NumericSymbolMagnitude = 1000
        ChartOptions.ChartLang.NumericSymbols = '"k" , "M" , "G" , "T" , "P" , "E"'
        ChartOptions.ChartLang.PrintChart = 'Imprimir Gr'#225'fico'
        ChartOptions.ChartLang.ResetZoom = 'Resetar Zoom'
        ChartOptions.ChartLang.ResetZoomTitle = 'Resetar para nivel 1:1'
        ChartOptions.ChartLang.ShortMonths = 
          '"Jan" , "Fev" , "Mar" , "Abr" , "Mai" , "Jun" , "Jul" , "Ago" , ' +
          '"Set" , "Out" , "Nov" , "Dez"'
        ChartOptions.ChartLang.ThousandsSep = ' '
        ChartOptions.ChartLang.WeekDays = 
          '"Domingo", "Segunda", "Ter'#231'a", "Quarta", "Quinta", "Sexta", "Sab' +
          'ado"'
        ChartOptions.ChartCredits.Enabled = False
        ChartOptions.ChartCredits.Href = 'store.falconsistemas.com.br'
        ChartOptions.ChartCredits.Text = 'Falcon Store'
        ChartOptions.ChartColors = 
          '"#00DF8F", "#0083F5", "#FEB019", "#FF4560", "#775DD0", "#41DBD2"' +
          ', "#F05FC7", "#F9E213", "#45B1FF", "#98DF00"'
        ChartJavascriptContent.Strings = (
          'chart: {'
          '        type: '#39'column'#39
          '    },'
          '    title: {'
          '        text: '#39'Column chart with negative values'#39
          '    },'
          '    xAxis: {'
          
            '        categories: ['#39'Apples'#39', '#39'Oranges'#39', '#39'Pears'#39', '#39'Grapes'#39', '#39'Ba' +
            'nanas'#39']'
          '    },'
          '    series: [{'
          '        name: '#39'John'#39','
          '        data: [5, 3, 4, 7, 2]'
          '    }, {'
          '        name: '#39'Jane'#39','
          '        data: [2, -2, -3, 2, 1]'
          '    }, {'
          '        name: '#39'Joe'#39','
          '        data: [3, 4, 4, -2, 5]'
          '    }]')
        Align = alClient
        ClientEvents.ExtEvents.Strings = (
          
            'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
            't, eOpts) {   ajaxRequest(sender, "fs_chart_resize",    [    '#39'wi' +
            'dth='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,' +
            '    '#39'oldHeight='#39' + oldHeight    ]); } ')
        ExplicitHeight = 557
      end
    end
    object tabData: TUniTabSheet
      Hint = ''
      Caption = 'Data'
      ExplicitHeight = 557
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 996
        Height = 534
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
        Top = 534
        Width = 996
        Height = 25
        Hint = ''
        DataSource = DS
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 532
      end
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
