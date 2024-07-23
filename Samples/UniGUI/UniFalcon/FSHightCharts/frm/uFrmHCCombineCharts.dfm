object frmHCCombineCharts: TfrmHCCombineCharts
  Left = 0
  Top = 0
  Width = 1143
  Height = 891
  OnCreate = UniFrameCreate
  Align = alClient
  Anchors = [akLeft, akTop, akRight, akBottom]
  TabOrder = 0
  object pnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 1143
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
  end
  object pgcMaster: TUniPageControl
    Left = 0
    Top = 73
    Width = 1143
    Height = 818
    Hint = ''
    ActivePage = tabChart
    Align = alClient
    TabOrder = 1
    object tabChart: TUniTabSheet
      Hint = ''
      Caption = 'Chart'
      object HighCharts: TUniFSHighCharts
        Left = 0
        Top = 0
        Width = 1135
        Height = 790
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
        ChartJavascriptConst.Strings = (
          'const listProducts = ['
          '  {'
          '    name: "produto 1",'
          '    qntd: 5,'
          '    valor: 50.55'
          '  },'
          '  {'
          '    name: "produto 2",'
          '    qntd: 2,'
          '    valor: 26.2'
          '  },'
          '  {'
          '    name: "produto 2",'
          '    qntd: 3,'
          '    valor: 22.1'
          '  },'
          '  {'
          '    name: "produto 5",'
          '    qntd: 3,'
          '    valor: 22.0'
          '  },'
          '  {'
          '    name: "produto 6",'
          '    qntd: 5,'
          '    valor: 25.65'
          '  },'
          '];')
        ChartJavascriptContent.Strings = (
          'chart: {'
          '                type: "bar",'
          '                marginTop: 80,'
          '                height: listProducts.length * 55 + 80'
          '            },'
          '            title: {'
          '                text: "10 produtos mais vendidos",'
          '                align: "left"'
          '            },'
          '            xAxis: {'
          
            '                categories: listProducts.map((obj) => obj.name +' +
            ' `(${obj.qntd})`),'
          '                labels: {'
          '                    x: 0,'
          '                    align: "left",'
          '                    reserveSpace: false,'
          '                    y: -18'
          '                },'
          '                gridLineWidth: 0.0,'
          '                lineWidth: 0'
          '            },'
          '            yAxis: [{'
          '                title: {'
          '                    enabled: true,'
          '                    align: "low",'
          
            '                    text: "<p>Quant.:" + getNumberItens(listProd' +
            'ucts) + "</p>",'
          '                    style: {'
          '                        color: "#656565",'
          '                        fontSize: "0.9em"'
          '                    },'
          '                    useHTML: true'
          '                },'
          '                labels: {'
          '                    enabled: false'
          '                },'
          '                gridLineWidth: 0,'
          '                endOnTick: false,'
          '                min: 0,'
          '                max: 100,'
          '                lineWidth: 3,'
          '                lineColor: "orange"'
          '            }, {'
          '                title: {'
          '                    enabled: true,'
          '                    align: "high",'
          
            '                    text: '#39'<p>Total: '#39' + valueToMoney(getTotal(l' +
            'istProducts)) + '#39'</p>'#39','
          '                    margin: -60,'
          '                    style: {'
          '                        color: "#656565",'
          '                        fontSize: "0.9em",'
          '                    },'
          '                    useHTML: true'
          '                },'
          '                labels: {'
          '                    enabled: false'
          '                },'
          '                gridLineWidth: 0,'
          '                endOnTick: false,'
          '                min: 0,'
          '                max: 100,'
          '                lineWidth: 3,'
          '                lineColor: "none"'
          '            }],'
          '            credits: {'
          '                enabled: false'
          '            },'
          '            series: [{'
          '                animation: false,'
          '                enableMouseTracking: false,'
          '                color: "lightgray",'
          '                dataLabels: [{'
          '                    y: -20,'
          '                    align: "right",'
          '                    format: "{point.value} ({point.percent}%)",'
          '                    color: "#8D8D8D",'
          '                    style: {'
          '                        fontWeight: "300",'
          '                        textOutline: "none"'
          '                    }'
          '                }],'
          '                data: listProducts.map((obj) => {'
          '                    return {'
          
            '                        value: valueToMoney(obj.valor * obj.qntd' +
            '),'
          
            '                        percent: getPercent(obj.valor, obj.qntd)' +
            '.toFixed(2),'
          '                        y: 100'
          '                    };'
          '                })'
          '            }, {'
          '                enableMouseTracking: false,'
          '                animation: false,'
          '                dataLabels: [{'
          '                    enabled: false'
          '                }],'
          '                color: "orange",'
          
            '                data: listProducts.map((obj) => getPercent(obj.v' +
            'alor, obj.qntd))'
          '            }],'
          '            legend: {'
          '                enabled: false'
          '            },'
          '            plotOptions: {'
          '                bar: {'
          '                    pointWidth: 14,'
          '                    shadow: false'
          '                },'
          '                series: {'
          '                    stacking: "overlap",'
          '                    groupPadding: 0,'
          '                    borderWidth: 0,'
          '                    dataLabels: {'
          '                        verticalAlign: "top",'
          '                        align: "right",'
          '                        inside: true,'
          '                        enabled: true'
          '                    },'
          '                    label: {'
          '                        enabled: true'
          '                    }'
          '                }'
          '            }')
        ChartJavascriptFunction.Strings = (
          'function getTotal(listProducts) {'
          '  var initialValue = 0;'
          '  const total = listProducts.reduce('
          
            '    (total, currentValue) => total + currentValue.qntd * current' +
            'Value.valor,'
          '    initialValue'
          '  );'
          '  return total;'
          '}'
          ''
          'function getNumberItens(listProducts) {'
          '  var initialValue = 0;'
          '  const totalItens = listProducts.reduce('
          '    (total, currentValue) => total + currentValue.qntd,'
          '    initialValue'
          '  );'
          '  return totalItens;'
          '}'
          ''
          'function getPercent(value, qntd) {'
          '  return ((qntd * value) / getTotal(listProducts)) * 100;'
          '}'
          ''
          'function valueToMoney(value) {'
          '  return value.toLocaleString("pt-BR", {'
          '    style: "currency",'
          '    currency: "BRL"'
          '  });'
          '}')
        Align = alClient
        ClientEvents.ExtEvents.Strings = (
          
            'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
            't, eOpts) {   ajaxRequest(sender, "fs_chart_resize",    [    '#39'wi' +
            'dth='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldWidth,' +
            '    '#39'oldHeight='#39' + oldHeight    ]); } ')
      end
    end
  end
end
