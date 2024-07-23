object frmHCAreaChart: TfrmHCAreaChart
  Left = 0
  Top = 0
  Width = 929
  Height = 547
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
      Width = 249
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/area-stacked'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 73
    Width = 929
    Height = 474
    Hint = ''
    BodyRTL = True
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'Chart'
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 921
        Height = 446
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
          '        type: '#39'area'#39
          '    },'
          '    title: {'
          
            '        text: '#39'Historic and Estimated Worldwide Population Growt' +
            'h by Region'#39
          '    },'
          '    subtitle: {'
          '        text: '#39'Source: Wikipedia.org'#39
          '    },'
          '    xAxis: {'
          
            '        categories: ['#39'1750'#39', '#39'1800'#39', '#39'1850'#39', '#39'1900'#39', '#39'1950'#39', '#39'19' +
            '99'#39', '#39'2050'#39'],'
          '        tickmarkPlacement: '#39'on'#39','
          '        title: {'
          '            enabled: false'
          '        }'
          '    },'
          '    yAxis: {'
          '        title: {'
          '            text: '#39'Billions'#39
          '        },'
          '        labels: {'
          '            formatter: function () {'
          '                return this.value / 1000;'
          '            }'
          '        }'
          '    },'
          '    tooltip: {'
          '        split: true,'
          '        valueSuffix: '#39' millions'#39
          '    },'
          '    plotOptions: {'
          '        area: {'
          '            stacking: '#39'normal'#39','
          '            lineColor: '#39'#666666'#39','
          '            lineWidth: 1,'
          '            marker: {'
          '                lineWidth: 1,'
          '                lineColor: '#39'#666666'#39
          '            }'
          '        }'
          '    },'
          '    series: [{'
          '        name: '#39'Asia'#39','
          '        data: [502, 635, 809, 947, 1402, 3634, 5268]'
          '    }, {'
          '        name: '#39'Africa'#39','
          '        data: [106, 107, 111, 133, 221, 767, 1766]'
          '    }, {'
          '        name: '#39'Europe'#39','
          '        data: [163, 203, 276, 408, 547, 729, 628]'
          '    }, {'
          '        name: '#39'America'#39','
          '        data: [18, 31, 54, 156, 339, 818, 1201]'
          '    }, {'
          '        name: '#39'Oceania'#39','
          '        data: [2, 2, 2, 6, 13, 30, 46]'
          '    }]')
        Align = alClient
        ClientEvents.ExtEvents.Strings = (
          
            'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
            't, eOpts) {   ajaxRequest(sender, "fs_chart_resize",    [    '#39'wi' +
            'dth='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,' +
            '    '#39'oldHeight='#39' + oldHeight    ]); } ')
      end
    end
    object tabData: TUniTabSheet
      Hint = ''
      Caption = 'Data'
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 421
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
        Top = 421
        Width = 921
        Height = 25
        Hint = ''
        DataSource = DS
        Align = alBottom
        TabOrder = 1
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
