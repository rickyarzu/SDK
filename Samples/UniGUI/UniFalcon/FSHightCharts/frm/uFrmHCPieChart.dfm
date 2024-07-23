object frmHCPieChart: TfrmHCPieChart
  Left = 0
  Top = 0
  Width = 1046
  Height = 615
  OnCreate = UniFrameCreate
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
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
    object lblInfo: TUniLabel
      Left = 249
      Top = 27
      Width = 230
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/pie-basic'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 73
    Width = 1046
    Height = 542
    Hint = ''
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 545
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'Chart'
      ExplicitHeight = 517
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 1038
        Height = 514
        Hint = ''
        ChartOptions.Enabled = True
        ChartOptions.ChartLang.Enabled = False
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
          '        plotBackgroundColor: null,'
          '        plotBorderWidth: null,'
          '        plotShadow: false,'
          '        type: '#39'pie'#39
          '    },'
          '    title: {'
          '        text: '#39'Browser market shares in January, 2018'#39
          '    },'
          '    tooltip: {'
          
            '        pointFormat: '#39'{series.name}: <b>{point.percentage:.1f}%<' +
            '/b>'#39
          '    },'
          '    accessibility: {'
          '        point: {'
          '            valueSuffix: '#39'%'#39
          '        }'
          '    },'
          '    plotOptions: {'
          '        pie: {'
          '            allowPointSelect: true,'
          '            cursor: '#39'pointer'#39','
          '            dataLabels: {'
          '                enabled: true,'
          
            '                format: '#39'<b>{point.name}</b>: {point.percentage:' +
            '.1f} %'#39
          '            }'
          '        }'
          '    },'
          '    series: [{'
          '        name: '#39'Brands'#39','
          '        colorByPoint: true,'
          '        data: [{'
          '            name: '#39'Chrome'#39','
          '            y: 61.41,'
          '            sliced: true,'
          '            selected: true'
          '        }, {'
          '            name: '#39'Internet Explorer'#39','
          '            y: 11.84'
          '        }, {'
          '            name: '#39'Firefox'#39','
          '            y: 10.85'
          '        }, {'
          '            name: '#39'Edge'#39','
          '            y: 4.67'
          '        }, {'
          '            name: '#39'Safari'#39','
          '            y: 4.18'
          '        }, {'
          '            name: '#39'Sogou Explorer'#39','
          '            y: 1.64'
          '        }, {'
          '            name: '#39'Opera'#39','
          '            y: 1.6'
          '        }, {'
          '            name: '#39'QQ'#39','
          '            y: 1.2'
          '        }, {'
          '            name: '#39'Other'#39','
          '            y: 2.61'
          '        }]'
          '    }]')
        Align = alClient
        ClientEvents.ExtEvents.Strings = (
          
            'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
            't, eOpts) {   ajaxRequest(sender, "fs_chart_resize",    [    '#39'wi' +
            'dth='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,' +
            '    '#39'oldHeight='#39' + oldHeight    ]); } ')
        ExplicitHeight = 517
      end
    end
    object tabData: TUniTabSheet
      Hint = ''
      Caption = 'Data'
      ExplicitHeight = 517
      object dbg1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1038
        Height = 489
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
        Top = 489
        Width = 1038
        Height = 25
        Hint = ''
        DataSource = DS
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 492
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
