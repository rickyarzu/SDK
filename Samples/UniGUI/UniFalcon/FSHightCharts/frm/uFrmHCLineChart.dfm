object frmHCLineChart: TfrmHCLineChart
  Left = 0
  Top = 0
  Width = 929
  Height = 549
  OnCreate = UniFrameCreate
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  object pnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 929
    Height = 71
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
      Width = 233
      Height = 13
      Cursor = crHandPoint
      Hint = ''
      Caption = 'https://www.highcharts.com/demo/line-basic'
      TabOrder = 2
      OnClick = lblInfoClick
    end
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 71
    Width = 929
    Height = 478
    Hint = ''
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 477
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'Chart'
      ExplicitHeight = 449
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 921
        Height = 450
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
          'title: {'
          '        text: '#39'Solar Employment Growth by Sector, 2010-2016'#39
          '    },'
          ''
          '    subtitle: {'
          '        text: '#39'Source: thesolarfoundation.com'#39
          '    },'
          ''
          '    yAxis: {'
          '        title: {'
          '            text: '#39'Number of Employees'#39
          '        }'
          '    },'
          ''
          '    xAxis: {'
          '        accessibility: {'
          '            rangeDescription: '#39'Range: 2010 to 2017'#39
          '        }'
          '    },'
          ''
          '    legend: {'
          '        layout: '#39'vertical'#39','
          '        align: '#39'right'#39','
          '        verticalAlign: '#39'middle'#39
          '    },'
          ''
          '    plotOptions: {'
          '        series: {'
          '            label: {'
          '                connectorAllowed: false'
          '            },'
          '            pointStart: 2010'
          '        }'
          '    },'
          ''
          '    series: [{'
          '        name: '#39'Installation'#39','
          
            '        data: [43934, 52503, 57177, 69658, 97031, 119931, 137133' +
            ', 154175]'
          '    }, {'
          '        name: '#39'Manufacturing'#39','
          
            '        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, ' +
            '40434]'
          '    }, {'
          '        name: '#39'Sales & Distribution'#39','
          
            '        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, ' +
            '39387]'
          '    }, {'
          '        name: '#39'Project Development'#39','
          
            '        data: [null, null, 7988, 12169, 15112, 22452, 34400, 342' +
            '27]'
          '    }, {'
          '        name: '#39'Other'#39','
          
            '        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 181' +
            '11]'
          '    }],'
          ''
          '    responsive: {'
          '        rules: [{'
          '            condition: {'
          '                maxWidth: 500'
          '            },'
          '            chartOptions: {'
          '                legend: {'
          '                    layout: '#39'horizontal'#39','
          '                    align: '#39'center'#39','
          '                    verticalAlign: '#39'bottom'#39
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
        ExplicitHeight = 449
      end
    end
    object tabData: TUniTabSheet
      Hint = ''
      Caption = 'Data'
      ExplicitHeight = 449
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 0
        Width = 921
        Height = 425
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
        Top = 425
        Width = 921
        Height = 25
        Hint = ''
        DataSource = DS
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 424
      end
    end
  end
  object DS: TDataSource
    DataSet = CDS
    Left = 104
    Top = 288
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 224
  end
end
