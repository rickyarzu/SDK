object frmHCBubbleChart: TfrmHCBubbleChart
  Left = 0
  Top = 0
  Width = 1095
  Height = 544
  OnCreate = UniFrameCreate
  TabOrder = 0
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
      Width = 221
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/bubble'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 73
    Width = 1095
    Height = 471
    Hint = ''
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 475
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'tabChart'
      ExplicitHeight = 447
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 1087
        Height = 443
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
          '        type: '#39'bubble'#39','
          '        plotBorderWidth: 1,'
          '        zoomType: '#39'xy'#39
          '    },'
          ''
          '    legend: {'
          '        enabled: false'
          '    },'
          ''
          '    title: {'
          '        text: '#39'Sugar and fat intake per country'#39
          '    },'
          ''
          '    subtitle: {'
          
            '        text: '#39'Source: <a href="http://www.euromonitor.com/">Eur' +
            'omonitor</a> and <a href="https://data.oecd.org/">OECD</a>'#39
          '    },'
          ''
          '    accessibility: {'
          '        point: {'
          
            '            valueDescriptionFormat: '#39'{index}. {point.name}, fat:' +
            ' {point.x}g, sugar: {point.y}g, obesity: {point.z}%.'#39
          '        }'
          '    },'
          ''
          '    xAxis: {'
          '        gridLineWidth: 1,'
          '        title: {'
          '            text: '#39'Daily fat intake'#39
          '        },'
          '        labels: {'
          '            format: '#39'{value} gr'#39
          '        },'
          '        plotLines: [{'
          '            color: '#39'black'#39','
          '            dashStyle: '#39'dot'#39','
          '            width: 2,'
          '            value: 65,'
          '            label: {'
          '                rotation: 0,'
          '                y: 15,'
          '                style: {'
          '                    fontStyle: '#39'italic'#39
          '                },'
          '                text: '#39'Safe fat intake 65g/day'#39
          '            },'
          '            zIndex: 3'
          '        }],'
          '        accessibility: {'
          '            rangeDescription: '#39'Range: 60 to 100 grams.'#39
          '        }'
          '    },'
          ''
          '    yAxis: {'
          '        startOnTick: false,'
          '        endOnTick: false,'
          '        title: {'
          '            text: '#39'Daily sugar intake'#39
          '        },'
          '        labels: {'
          '            format: '#39'{value} gr'#39
          '        },'
          '        maxPadding: 0.2,'
          '        plotLines: [{'
          '            color: '#39'black'#39','
          '            dashStyle: '#39'dot'#39','
          '            width: 2,'
          '            value: 50,'
          '            label: {'
          '                align: '#39'right'#39','
          '                style: {'
          '                    fontStyle: '#39'italic'#39
          '                },'
          '                text: '#39'Safe sugar intake 50g/day'#39','
          '                x: -10'
          '            },'
          '            zIndex: 3'
          '        }],'
          '        accessibility: {'
          '            rangeDescription: '#39'Range: 0 to 160 grams.'#39
          '        }'
          '    },'
          ''
          '    tooltip: {'
          '        useHTML: true,'
          '        headerFormat: '#39'<table>'#39','
          
            '        pointFormat: '#39'<tr><th colspan="2"><h3>{point.country}</h' +
            '3></th></tr>'#39' +'
          '            '#39'<tr><th>Fat intake:</th><td>{point.x}g</td></tr>'#39' +'
          
            '            '#39'<tr><th>Sugar intake:</th><td>{point.y}g</td></tr>'#39 +
            ' +'
          
            '            '#39'<tr><th>Obesity (adults):</th><td>{point.z}%</td></' +
            'tr>'#39','
          '        footerFormat: '#39'</table>'#39','
          '        followPointer: true'
          '    },'
          ''
          '    plotOptions: {'
          '        series: {'
          '            dataLabels: {'
          '                enabled: true,'
          '                format: '#39'{point.name}'#39
          '            }'
          '        }'
          '    },'
          ''
          '    series: [{'
          '        data: ['
          
            '            { x: 95, y: 95, z: 13.8, name: '#39'BE'#39', country: '#39'Belgi' +
            'um'#39' },'
          
            '            { x: 86.5, y: 102.9, z: 14.7, name: '#39'DE'#39', country: '#39 +
            'Germany'#39' },'
          
            '            { x: 80.8, y: 91.5, z: 15.8, name: '#39'FI'#39', country: '#39'F' +
            'inland'#39' },'
          
            '            { x: 80.4, y: 102.5, z: 12, name: '#39'NL'#39', country: '#39'Ne' +
            'therlands'#39' },'
          
            '            { x: 80.3, y: 86.1, z: 11.8, name: '#39'SE'#39', country: '#39'S' +
            'weden'#39' },'
          
            '            { x: 78.4, y: 70.1, z: 16.6, name: '#39'ES'#39', country: '#39'S' +
            'pain'#39' },'
          
            '            { x: 74.2, y: 68.5, z: 14.5, name: '#39'FR'#39', country: '#39'F' +
            'rance'#39' },'
          
            '            { x: 73.5, y: 83.1, z: 10, name: '#39'NO'#39', country: '#39'Nor' +
            'way'#39' },'
          
            '            { x: 71, y: 93.2, z: 24.7, name: '#39'UK'#39', country: '#39'Uni' +
            'ted Kingdom'#39' },'
          
            '            { x: 69.2, y: 57.6, z: 10.4, name: '#39'IT'#39', country: '#39'I' +
            'taly'#39' },'
          
            '            { x: 68.6, y: 20, z: 16, name: '#39'RU'#39', country: '#39'Russi' +
            'a'#39' },'
          
            '            { x: 65.5, y: 126.4, z: 35.3, name: '#39'US'#39', country: '#39 +
            'United States'#39' },'
          
            '            { x: 65.4, y: 50.8, z: 28.5, name: '#39'HU'#39', country: '#39'H' +
            'ungary'#39' },'
          
            '            { x: 63.4, y: 51.8, z: 15.4, name: '#39'PT'#39', country: '#39'P' +
            'ortugal'#39' },'
          
            '            { x: 64, y: 82.9, z: 31.3, name: '#39'NZ'#39', country: '#39'New' +
            ' Zealand'#39' }'
          '        ]'
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
      Caption = 'tabData'
      ExplicitHeight = 447
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 1087
        Height = 418
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
        Top = 418
        Width = 1087
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
