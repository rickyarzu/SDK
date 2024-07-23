object frmHCBarChartCustom: TfrmHCBarChartCustom
  Left = 0
  Top = 0
  Width = 929
  Height = 546
  OnCreate = UniFrameCreate
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
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
      Width = 252
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/column-basic'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 73
    Width = 929
    Height = 473
    Hint = ''
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 475
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'Chart'
      ExplicitHeight = 447
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 921
        Height = 445
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
          '        text: '#39'Monthly Average Rainfall'#39
          '    },'
          '    subtitle: {'
          '        text: '#39'Source: WorldClimate.com'#39
          '    },'
          '    xAxis: {'
          '        categories: ['
          '            '#39'Jan'#39','
          '            '#39'Feb'#39','
          '            '#39'Mar'#39','
          '            '#39'Apr'#39','
          '            '#39'May'#39','
          '            '#39'Jun'#39','
          '            '#39'Jul'#39','
          '            '#39'Aug'#39','
          '            '#39'Sep'#39','
          '            '#39'Oct'#39','
          '            '#39'Nov'#39','
          '            '#39'Dec'#39
          '        ],'
          '        crosshair: true'
          '    },'
          '    yAxis: {'
          '        min: 0,'
          '        title: {'
          '            text: '#39'Rainfall (mm)'#39
          '        }'
          '    },'
          '    plotOptions: {'
          '        column: {'
          '            pointPadding: 0.2,'
          '            borderWidth: 0'
          '        }'
          '    },'
          '    series: [{'
          '        name: '#39'Tokyo'#39','
          
            '        data: [49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 14' +
            '8.5, 216.4, 194.1, 95.6, 54.4]'
          ''
          '    }, {'
          '        name: '#39'New York'#39','
          
            '        data: [83.6, 78.8, 98.5, 93.4, 106.0, 84.5, 105.0, 104.3' +
            ', 91.2, 83.5, 106.6, 92.3]'
          ''
          '    }, {'
          '        name: '#39'London'#39','
          
            '        data: [48.9, 38.8, 39.3, 41.4, 47.0, 48.3, 59.0, 59.6, 5' +
            '2.4, 65.2, 59.3, 51.2]'
          ''
          '    }, {'
          '        name: '#39'Berlin'#39','
          
            '        data: [42.4, 33.2, 34.5, 39.7, 52.6, 75.5, 57.4, 60.4, 4' +
            '7.6, 39.1, 46.8, 51.1]'
          ''
          '    }]')
        Align = alClient
        ClientEvents.ExtEvents.Strings = (
          
            'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
            't, eOpts) {   ajaxRequest(sender, "fs_chart_resize",    [    '#39'wi' +
            'dth='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,' +
            '    '#39'oldHeight='#39' + oldHeight    ]); } ')
        ExplicitHeight = 447
      end
    end
    object tabData: TUniTabSheet
      Hint = ''
      Caption = 'Data'
      ExplicitHeight = 447
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 420
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
        Top = 420
        Width = 921
        Height = 25
        Hint = ''
        DataSource = DS
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 422
      end
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
end
