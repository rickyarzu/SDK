object frmDashboard: TfrmDashboard
  Left = 0
  Top = 0
  ClientHeight = 864
  ClientWidth = 1136
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object scrPrincipal: TUniScrollBox
    Left = 0
    Top = 0
    Width = 1136
    Height = 864
    Hint = ''
    Align = alClient
    TabOrder = 0
    ScrollDirection = sdVertical
    DesignSize = (
      1134
      862)
    ScrollHeight = 861
    object pnlPrincipal: TUniPanel
      Left = 68
      Top = 0
      Width = 1015
      Height = 861
      Hint = ''
      Anchors = [akTop]
      TabOrder = 0
      BorderStyle = ubsNone
      Caption = ''
      Color = clWhite
      object pnlGraficos2: TUniPanel
        Left = 0
        Top = 20
        Width = 1015
        Height = 301
        Hint = ''
        Align = alTop
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'   sender.' +
            'setBodyStyle("background","transparent");'#13#10'}')
        BorderStyle = ubsNone
        Caption = ''
        object pnlReceitaDespesa: TUniPanel
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1009
          Height = 279
          Hint = ''
          Align = alClient
          ParentFont = False
          TabOrder = 1
          ShowCaption = False
          TitleAlign = taCenter
          Title = 'Gr'#225'fico de Receita e Despesa Ano - <b>[ANO]</b>'
          Caption = ''
          LayoutConfig.Cls = 'card card-radius'
          object pnlGrf1: TUniPanel
            Left = 1
            Top = 1
            Width = 1007
            Height = 277
            Hint = ''
            Align = alClient
            TabOrder = 1
            Caption = ''
            object HighCharts1: TUniFSHighCharts
              Left = 1
              Top = 36
              Width = 1005
              Height = 240
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
            end
            object UniPanel1: TUniPanel
              Left = 1
              Top = 1
              Width = 1005
              Height = 35
              Hint = ''
              Align = alTop
              TabOrder = 1
              BorderStyle = ubsNone
              Caption = ''
              Color = clWhite
              DesignSize = (
                1005
                35)
              object UniLabel1: TUniLabel
                Left = 10
                Top = 8
                Width = 251
                Height = 19
                Hint = ''
                Caption = 'Gr'#225'fico de Conv'#234'nios e Operadoras'
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -16
                Font.Name = 'Roboto'
                TabOrder = 2
              end
              object UniFSButton3: TUniFSButton
                Left = 976
                Top = 3
                Width = 25
                Height = 25
                Cursor = crHandPoint
                Hint = 'Atualizar'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fas fa-sync-alt"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ''
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                TabOrder = 1
                ScreenMask.Enabled = True
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Atualizando'
                ScreenMask.Target = pnlGrf6
              end
            end
          end
        end
        object pnl1: TUniPanel
          Left = 0
          Top = 285
          Width = 1015
          Height = 16
          Hint = ''
          Align = alBottom
          TabOrder = 2
          ClientEvents.ExtEvents.Strings = (
            
              'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'  sender.s' +
              'etBodyStyle("background","transparent");'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          Color = clWhite
        end
      end
      object pnlGraficos1: TUniPanel
        Left = 0
        Top = 321
        Width = 1015
        Height = 376
        Hint = ''
        Align = alTop
        TabOrder = 4
        BorderStyle = ubsNone
        Caption = ''
        object pnlReceitaDetalhada: TUniPanel
          Tag = 1
          AlignWithMargins = True
          Left = 510
          Top = 3
          Width = 502
          Height = 354
          Hint = ''
          Align = alRight
          ParentFont = False
          TabOrder = 2
          BorderStyle = ubsNone
          ShowCaption = False
          TitleAlign = taCenter
          Caption = ''
          LayoutConfig.Cls = 'card card-radius'
          LayoutConfig.Flex = 2
          object pnlGrf7: TUniPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 354
            Hint = ''
            Align = alClient
            TabOrder = 1
            Caption = ''
            object dbgReceita: TUniDBGrid
              Left = 1
              Top = 36
              Width = 500
              Height = 317
              Hint = ''
              Visible = False
              Options = []
              WebOptions.Paged = False
              LoadMask.WaitData = True
              LoadMask.Message = 'Carregando'
              LoadMask.Target = pnlGrf7
              RowHeight = 40
              EmptyText = 'Nenhum lan'#231'amento localizado para este m'#234's'
              ForceFit = True
              LayoutConfig.Cls = 'no-border'
              LayoutConfig.BodyCls = 'no-border'
              LayoutConfig.Margin = '0px 0px 0px 2px'
              StripeRows = False
              Align = alClient
              TabOrder = 3
              Columns = <
                item
                  FieldName = 'IMG_DETALHE'
                  Title.Caption = 'IMG_DETALHE'
                  Width = 25
                end
                item
                  FieldName = 'DESCRICAO_RECEITA'
                  Title.Caption = 'DESCRICAO_DESPESA'
                  Width = 200
                end
                item
                  FieldName = 'PROGRESS'
                  Title.Caption = 'PROGRESS'
                  Width = 150
                end>
            end
            object pnlTopDetailReceita: TUniPanel
              Left = 1
              Top = 1
              Width = 500
              Height = 35
              Hint = ''
              Align = alTop
              TabOrder = 1
              BorderStyle = ubsNone
              Caption = ''
              Color = clWhite
              DesignSize = (
                500
                35)
              object lblGrfDetalheRecMes: TUniLabel
                Left = 10
                Top = 8
                Width = 38
                Height = 19
                Hint = ''
                Caption = 'Setor'
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -16
                Font.Name = 'Roboto'
                TabOrder = 4
              end
              object btnAtl7: TUniFSButton
                Left = 470
                Top = 6
                Width = 25
                Height = 25
                Cursor = crHandPoint
                Hint = 'Atualizar'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fas fa-sync-alt"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ''
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                TabOrder = 3
                ScreenMask.Enabled = True
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Atualizando'
                ScreenMask.Target = pnlGrf7
              end
              object btnRecDetail: TUniFSButton
                Left = 326
                Top = 6
                Width = 68
                Height = 25
                Cursor = crHandPoint
                Hint = 'Despesas em detalhe'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fa fa-list" aria-hidden="true"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ' Detalhe'
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Roboto'
                TabOrder = 1
              end
              object btnRecGraf: TUniFSButton
                Left = 397
                Top = 6
                Width = 65
                Height = 25
                Cursor = crHandPoint
                Hint = 'Despesas em gr'#225'fico'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fas fa-chart-pie"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ' Gr'#225'fico'
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Roboto'
                TabOrder = 2
              end
            end
            object HighCharts3: TUniFSHighCharts
              Left = 1
              Top = 36
              Width = 500
              Height = 317
              Hint = ''
              ChartOptions.Enabled = False
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
            end
          end
        end
        object pnlDespesaDetalhada: TUniPanel
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 502
          Height = 354
          Hint = ''
          Align = alLeft
          ParentFont = False
          TabOrder = 1
          BorderStyle = ubsNone
          TitleAlign = taCenter
          Caption = ''
          LayoutConfig.Cls = 'card card-radius'
          LayoutConfig.Flex = 2
          object pnlGrf6: TUniPanel
            Left = 0
            Top = 0
            Width = 502
            Height = 354
            Hint = ''
            Align = alClient
            TabOrder = 1
            Caption = ''
            object dbgDespesa: TUniDBGrid
              Left = 1
              Top = 36
              Width = 500
              Height = 317
              Hint = ''
              Visible = False
              Options = []
              WebOptions.Paged = False
              LoadMask.WaitData = True
              LoadMask.Message = 'Carregando'
              LoadMask.Target = pnlGrf6
              RowHeight = 40
              EmptyText = 'Nenhum lan'#231'amento localizado para este m'#234's'
              ForceFit = True
              LayoutConfig.Cls = 'no-border disable-scroll-all'
              LayoutConfig.BodyCls = 'no-border disable-scroll-all'
              LayoutConfig.ComponentCls = 'disable-scroll-all'
              LayoutConfig.Margin = '0px 0px 0px 2px'
              StripeRows = False
              Align = alClient
              TabOrder = 3
              Columns = <
                item
                  FieldName = 'IMG_DETALHE'
                  Title.Caption = 'IMG_DETALHE'
                  Width = 25
                end
                item
                  FieldName = 'DESCRICAO_DESPESA'
                  Title.Caption = 'DESCRICAO_DESPESA'
                  Width = 200
                end
                item
                  FieldName = 'PROGRESS'
                  Title.Caption = 'PROGRESS'
                  Width = 150
                end>
            end
            object pnlTopDetailDespesa: TUniPanel
              Left = 1
              Top = 1
              Width = 500
              Height = 35
              Hint = ''
              Align = alTop
              TabOrder = 1
              BorderStyle = ubsNone
              Caption = ''
              Color = clWhite
              DesignSize = (
                500
                35)
              object lblGrfDetalheCapMes: TUniLabel
                Left = 10
                Top = 8
                Width = 84
                Height = 19
                Hint = ''
                Caption = 'Operadoras'
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -16
                Font.Name = 'Roboto'
                TabOrder = 4
              end
              object btnDespDetail: TUniFSButton
                Left = 326
                Top = 6
                Width = 68
                Height = 25
                Cursor = crHandPoint
                Hint = 'Despesas em detalhe'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fa fa-list" aria-hidden="true"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ' Detalhe'
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Roboto'
                TabOrder = 1
              end
              object btnDespGraf: TUniFSButton
                Left = 398
                Top = 6
                Width = 65
                Height = 25
                Cursor = crHandPoint
                Hint = 'Despesas em gr'#225'fico'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fas fa-chart-pie"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ' Gr'#225'fico'
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Roboto'
                TabOrder = 2
              end
              object btnAtl6: TUniFSButton
                Left = 469
                Top = 6
                Width = 25
                Height = 25
                Cursor = crHandPoint
                Hint = 'Atualizar'
                ShowHint = True
                ParentShowHint = False
                StyleButton = Transparent
                CaptionIconFont = '<i class="fas fa-sync-alt"></i>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ''
                Anchors = [akTop, akRight]
                ParentFont = False
                Font.Color = clWindowFrame
                Font.Height = -13
                TabOrder = 3
                ScreenMask.Enabled = True
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Atualizando'
                ScreenMask.Target = pnlGrf6
              end
            end
            object HighCharts2: TUniFSHighCharts
              Left = 1
              Top = 36
              Width = 500
              Height = 317
              Hint = ''
              ChartOptions.Enabled = False
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
            end
          end
        end
        object pnl3: TUniPanel
          Left = 0
          Top = 360
          Width = 1015
          Height = 16
          Hint = ''
          Align = alBottom
          TabOrder = 3
          ClientEvents.ExtEvents.Strings = (
            
              'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'  sender.s' +
              'etBodyStyle("background","transparent");'#13#10'}')
          BorderStyle = ubsNone
          Caption = ''
          Color = clWhite
        end
      end
      object pnlDiv3: TUniPanel
        Left = 0
        Top = 10
        Width = 1015
        Height = 10
        Hint = ''
        Align = alTop
        TabOrder = 2
        BorderStyle = ubsNone
        Caption = ''
        Color = clWhite
      end
      object pnlDiv4: TUniPanel
        Left = 0
        Top = 0
        Width = 1015
        Height = 10
        Hint = ''
        Align = alTop
        TabOrder = 1
        BorderStyle = ubsNone
        Caption = ''
        Color = clWhite
      end
    end
  end
end
