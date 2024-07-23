object FrmHCFunnelChart: TFrmHCFunnelChart
  Left = 0
  Top = 0
  Width = 929
  Height = 553
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
      Width = 218
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/funnel'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 73
    Width = 929
    Height = 480
    Hint = ''
    BodyRTL = True
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
        Height = 452
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
          '        type: '#39'funnel'#39
          '    },'
          '    title: {'
          '        text: '#39'Sales funnel'#39
          '    },'
          '    plotOptions: {'
          '        series: {'
          '            dataLabels: {'
          '                enabled: true,'
          '                format: '#39'<b>{point.name}</b> ({point.y:,.0f})'#39','
          '                softConnector: true'
          '            },'
          '            center: ['#39'40%'#39', '#39'50%'#39'],'
          '            neckWidth: '#39'30%'#39','
          '            neckHeight: '#39'25%'#39','
          '            width: '#39'80%'#39
          '        }'
          '    },'
          '    legend: {'
          '        enabled: false'
          '    },'
          '    series: [{'
          '        name: '#39'Unique users'#39','
          '        data: ['
          '            ['#39'Website visits'#39', 15654],'
          '            ['#39'Downloads'#39', 4064],'
          '            ['#39'Requested price list'#39', 1987],'
          '            ['#39'Invoice sent'#39', 976],'
          '            ['#39'Finalized'#39', 846]'
          '        ]'
          '    }],'
          ''
          '    responsive: {'
          '        rules: [{'
          '            condition: {'
          '                maxWidth: 500'
          '            },'
          '            chartOptions: {'
          '                plotOptions: {'
          '                    series: {'
          '                        dataLabels: {'
          '                            inside: true'
          '                        },'
          '                        center: ['#39'50%'#39', '#39'50%'#39'],'
          '                        width: '#39'100%'#39
          '                    }'
          '                }'
          '            }'
          '        }]'
          '    }')
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
        Height = 427
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
        Top = 427
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
