object frmHCBar: TfrmHCBar
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Bar'
  TitleButtons = <
    item
      ButtonId = 0
      Separator = True
    end
    item
      ButtonId = 1
      IconCls = 'refresh'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  OnCreate = UnimFormCreate
  
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object HighCharts: TUnimFSHighCharts
    Left = 0
    Top = 0
    Width = 320
    Height = 480
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
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, eOpts) {   ajaxRequest(sender, "f' +
        's_chart_resize", []); } ')
  end
  object CDS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 152
  end
end
