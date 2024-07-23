object frmLoginNew: TfrmLoginNew
  Left = 0
  Top = 0
  Width = 1252
  Height = 753
  OnCreate = UniFrameCreate
  Visible = False
  Font.Name = 'Roboto'
  TabOrder = 0
  ParentFont = False
  object pnlBackground: TUniPanel
    Left = 0
    Top = 0
    Width = 1252
    Height = 753
    Hint = ''
    Align = alClient
    TabOrder = 0
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.base' +
        'Cls='#39'backgroundFalcon'#39';'#13#10'}')
    BorderStyle = ubsNone
    Caption = ''
    OnAjaxEvent = pnlBackgroundAjaxEvent
    OnResize = pnlBackgroundResize
    object pnlBottom: TUniPanel
      Left = 0
      Top = 721
      Width = 1252
      Height = 32
      Hint = ''
      Align = alBottom
      TabOrder = 2
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.base' +
          'Cls='#39'backgroundBottom'#39';'#13#10'}')
      BorderStyle = ubsNone
      Caption = ''
      Color = clGray
      DesignSize = (
        1252
        32)
      object lbllLinkTermos: TUniLabel
        Left = 829
        Top = 8
        Width = 76
        Height = 13
        Cursor = crHandPoint
        Hint = ''
        Caption = 'Termos de Uso'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Name = 'Roboto'
        Font.Style = [fsUnderline]
        Font.Quality = fqAntialiased
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("/files/co' +
            'ntrato.html");'#13#10'}')
        TabOrder = 3
      end
      object lblVersao: TUniLabel
        Left = 1136
        Top = 8
        Width = 104
        Height = 13
        Cursor = crHandPoint
        Hint = 'Vers'#227'o do aplicativo e informa'#231#227'o do desenvolvedor'
        ShowHint = True
        ParentShowHint = False
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vers'#227'o'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Name = 'Roboto'
        Font.Quality = fqAntialiased
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("http://ww' +
            'w.falconsistemas.com.br");'#13#10'}')
        TabOrder = 5
      end
      object lblDireitos: TUniLabel
        Left = 606
        Top = 8
        Width = 143
        Height = 13
        Hint = ''
        Caption = 'Mensagem Direitos Autorais'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Name = 'Roboto'
        Font.Quality = fqAntialiased
        TabOrder = 2
      end
      object lblSuporte: TUniLabel
        Left = 942
        Top = 8
        Width = 164
        Height = 13
        Hint = ''
        Caption = 'suporte@falconsistemas.com.br'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Name = 'Roboto'
        Font.Quality = fqAntialiased
        TabOrder = 4
      end
      object lbllLinkSite: TUniLabel
        Left = 463
        Top = 8
        Width = 492
        Height = 13
        Cursor = crHandPoint
        Hint = ''
        TextConversion = txtHTML
        Caption = 
          '<a href="https://www.financeiro.app" target="_blank" style="colo' +
          'r: white">www.financeiro.app</a>'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Name = 'Roboto'
        Font.Style = [fsUnderline]
        Font.Quality = fqAntialiased
        TabOrder = 1
      end
    end
    object pnlLoginTransparent: TUniPanel
      Left = 27
      Top = 176
      Width = 1206
      Height = 517
      Hint = ''
      Visible = False
      ParentFont = False
      Font.Name = 'Roboto'
      TabOrder = 1
      ClientEvents.ExtEvents.Strings = (
        
          'beforerender=function beforerender(sender, eOpts)'#13#10'{'#13#10'  sender.s' +
          'etBodyStyle("background","transparent");'#13#10'}')
      BorderStyle = ubsNone
      Caption = ''
      Color = clSilver
      DesignSize = (
        1206
        517)
      object pnlLogin: TUniPanel
        Left = 253
        Top = 16
        Width = 702
        Height = 402
        Hint = ''
        Anchors = [akLeft, akTop, akBottom]
        ParentFont = False
        Font.Name = 'Roboto'
        TabOrder = 2
        BorderStyle = ubsNone
        Caption = ''
        Color = clWhite
        LayoutConfig.Cls = 'fs-border-box fs-box-shadow'
        object pgcLogin: TUniPageControl
          Left = 0
          Top = 0
          Width = 702
          Height = 402
          Hint = ''
          ActivePage = TabLogin
          TabBarVisible = False
          Align = alClient
          ClientEvents.UniEvents.Strings = (
            
              'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.base' +
              'Cls='#39'pnlRadius'#39';'#13#10'}'
            
              'tabPanel.beforeInit=function tabPanel.beforeInit(sender, config)' +
              #13#10'{'#13#10'  config.baseCls='#39'pnlRadius'#39';'#13#10'}')
          TabOrder = 1
          object TabLogin: TUniTabSheet
            Hint = ''
            Caption = 'TabLogin'
            object lblTituloSistema: TUniLabel
              Left = 54
              Top = 211
              Width = 181
              Height = 35
              Hint = ''
              Caption = 'Falcon Theme'
              ParentFont = False
              Font.Charset = ANSI_CHARSET
              Font.Color = 15563820
              Font.Height = -29
              Font.Name = 'Roboto'
              TabOrder = 4
            end
            object lblSubTitulo: TUniLabel
              Left = 69
              Top = 250
              Width = 103
              Height = 19
              Hint = ''
              Caption = 'Theme Crystal'
              ParentFont = False
              Font.Color = 15563820
              Font.Height = -16
              Font.Name = 'Roboto'
              TabOrder = 5
            end
            object imgLogo: TUniImage
              Left = 54
              Top = 14
              Width = 200
              Height = 200
              Cursor = crHandPoint
              Hint = ''
              Center = True
              Url = 
                'https://falcon.financeiro.app/imagens/falcon_financas_200_blue.p' +
                'ng'
              ClientEvents.ExtEvents.Strings = (
                
                  'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://w' +
                  'ww.financeiro.app");'#13#10'}')
              LayoutConfig.Cls = 'otimize-image'
            end
            object pnlSep: TUniPanel
              Left = 315
              Top = 27
              Width = 1
              Height = 256
              Hint = ''
              TabOrder = 1
              Caption = 'pnlSep'
              Color = clGrayText
            end
            object pnlControl2: TUniPanel
              Left = 328
              Top = 27
              Width = 345
              Height = 236
              Hint = ''
              Visible = False
              TabOrder = 3
              BorderStyle = ubsNone
              Caption = ''
              Color = clWhite
              object lbl1: TUniLabel
                Left = 24
                Top = 38
                Width = 230
                Height = 23
                Hint = ''
                AutoSize = False
                Caption = 'Selecione a Empresa'
                ParentFont = False
                Font.Color = 7697781
                Font.Height = -16
                Font.Name = 'Roboto'
                ParentColor = False
                Color = 13621459
                TabOrder = 1
              end
              object cmbEmpresa: TUniFSComboBox
                Left = 24
                Top = 64
                Width = 297
                Height = 30
                Hint = ''
                Text = ''
                ParentFont = False
                Font.Height = -16
                Font.Name = 'Roboto'
                TabOrder = 2
                EmptyText = 'Selecione a empresa'
                AnyMatch = True
                IconItems = <>
                Value = '-1'
              end
              object btnContinuarEmpresa: TUniFSButton
                Left = 24
                Top = 144
                Width = 297
                Height = 34
                Hint = ''
                StyleButton = GoogleGreen
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = 'Continuar'
                ParentFont = False
                Font.Color = clWhite
                Font.Height = -15
                Font.Name = 'Roboto'
                TabOrder = 3
                ScreenMask.Enabled = True
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Processando...'
              end
            end
            object pnlControl1: TUniPanel
              Left = 328
              Top = 27
              Width = 345
              Height = 253
              Hint = ''
              TabOrder = 2
              BorderStyle = ubsNone
              Caption = ''
              Color = clWhite
              object cmbUsuario: TUniComboBox
                Left = 24
                Top = 17
                Width = 297
                Height = 31
                Hint = ''
                Text = ''
                ParentFont = False
                Font.Height = -15
                Font.Name = 'Roboto'
                TabOrder = 1
                ClientEvents.ExtEvents.Strings = (
                  
                    'beforerender=function beforerender(sender, eOpts)'#13#10'{ '#13#10'  event: ' +
                    'sender.allowBlank=false;'#13#10'  event: sender.emptyText='#39'Usu'#225'rio (E-' +
                    'mail)'#39';'#13#10'}')
                IconItems = <>
              end
              object edtSenha: TUniEdit
                Left = 24
                Top = 64
                Width = 297
                Height = 31
                Hint = ''
                PasswordChar = '*'
                Text = ''
                ParentFont = False
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Roboto'
                TabOrder = 2
                ClientEvents.ExtEvents.Strings = (
                  
                    'OnBeforerender=function OnBeforerender(sender)'#13#10'{'#13#10'  event: send' +
                    'er.allowBlank=false;'#13#10'  '#13#10'  event: sender.emptyText='#39'Senha'#39';'#13#10'}')
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Aplicando as Configura'#231#245'es de Acesso, Aguarde...'
                ScreenMask.Target = Owner
              end
              object lblEsqueciMinhaSenha: TUniLabel
                Left = 206
                Top = 107
                Width = 106
                Height = 13
                Cursor = crHandPoint
                Hint = ''
                Caption = 'Esqueci minha senha'
                ParentFont = False
                Font.Height = -12
                Font.Name = 'Roboto'
                Font.Style = [fsUnderline]
                TabOrder = 4
              end
              object chkLembrar: TUniCheckBox
                Left = 24
                Top = 107
                Width = 124
                Height = 17
                Hint = 'Lembrar usu'#225'rio e senha'
                ShowHint = True
                ParentShowHint = False
                Caption = 'Lembrar-me'
                ParentFont = False
                Font.Height = -12
                Font.Name = 'Roboto'
                TabOrder = 3
              end
              object btnConectar: TUniFSButton
                Left = 24
                Top = 144
                Width = 297
                Height = 39
                Hint = ''
                StyleButton = GoogleGreenRound
                CaptionIconFont = '<span class="fa fa-check"></span>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ' Conectar'
                ParentFont = False
                Font.Height = -15
                Font.Name = 'Roboto'
                TabOrder = 5
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Autenticando...'
                OnClick = btnConectarClick
              end
              object btnCadastrar: TUniFSButton
                Left = 24
                Top = 197
                Width = 297
                Height = 39
                Hint = 'Realize seu cadastro aqui'
                ShowHint = True
                ParentShowHint = False
                StyleButton = GoogleBlue1Round
                CaptionIconFont = '<span class="fa fa-user"></span>'
                BadgeText.Text = '0'
                BadgeText.TextColor = '#FFFFFF'
                BadgeText.TextSize = 10
                BadgeText.TextStyle = 'bold'
                BadgeText.BackgroundColor = '#D50000'
                Caption = ' Cadastre-se'
                ParentFont = False
                Font.Height = -15
                Font.Name = 'Roboto'
                TabOrder = 6
                ScreenMask.Enabled = True
                ScreenMask.WaitData = True
                ScreenMask.Message = 'Processando, por favor aguarde...'
              end
            end
            object lblFacebook: TUniLabel
              Left = 54
              Top = 304
              Width = 262
              Height = 55
              Hint = ''
              TextConversion = txtHTML
              AutoSize = False
              Caption = 
                '<iframe src="https://www.facebook.com/plugins/like.php?href=http' +
                's%3A%2F%2Ffinanceiro.app&width=619&layout=button_count&action=li' +
                'ke&size=small&show_faces=true&share=true&height=55&appId=1607358' +
                '336177407" width="619" height="55" style="border:none;overflow:h' +
                'idden" scrolling="no" frameborder="0" allowTransparency="true"><' +
                '/iframe>'
              TabOrder = 6
            end
          end
        end
      end
      object lblImg: TUniLabel
        Left = 990
        Top = 104
        Width = 168
        Height = 250
        Hint = ''
        TextConversion = txtHTML
        AutoSize = False
        Caption = 
          '<img src="https://www.financeiro.app/wp-content/uploads/2023/07/' +
          'mockup-app.webp" width="168" height="250" hspace="0" vspace="0" ' +
          'style="border-radius: 8px;image-rendering: -webkit-optimize-cont' +
          'rast;">'
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://w' +
            'ww.financeiro.app");'#13#10'}')
        TabOrder = 5
      end
      object lblSobreMobile: TUniLabel
        Left = 970
        Top = 16
        Width = 205
        Height = 46
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Nova vers'#227'o do aplicativo dispon'#237'vel para IOS'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        TabOrder = 3
      end
      object imgGoogle: TUniImage
        Left = 39
        Top = 353
        Width = 180
        Height = 65
        Cursor = crHandPoint
        Hint = ''
        Center = True
        Url = 
          'https://falcon.capelaniasolacc.com.br/images/google-play-badge.p' +
          'ng'
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open(" https://' +
            'play.google.com/store/apps/details?id=br.com.falconsistemas.fina' +
            'ncas");'#13#10'}')
        LayoutConfig.Cls = 'otimize-image'
      end
      object imgApple: TUniImage
        Left = 39
        Top = 264
        Width = 180
        Height = 60
        Cursor = crHandPoint
        Hint = ''
        Center = True
        Url = 
          'https://falcon.capelaniasolacc.com.br/images/svg/app-store-badge' +
          '.svg'
        ClientEvents.ExtEvents.Strings = (
          
            'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://a' +
            'pps.apple.com/us/app/falcon-finan%C3%A7as/id1474465261#?platform' +
            '=iphone");'#13#10'}')
        LayoutConfig.Cls = 'otimize-image'
      end
      object lblSubTitulo1: TUniLabel
        Left = 477
        Top = 446
        Width = 742
        Height = 17
        Cursor = crHandPoint
        Hint = ''
        TextConversion = txtHTML
        Caption = 
          '<a href="https://www.financeiro.app" target="_blank" style="colo' +
          'r: white">Acesse nosso site www.financeiro.app</a>'
        Anchors = []
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -14
        Font.Name = 'Roboto'
        TabOrder = 8
      end
      object lblSobreMobile1: TUniLabel
        Left = 26
        Top = 16
        Width = 205
        Height = 46
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Aponte a c'#226'mera do celular'
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        TabOrder = 1
      end
      object lblQrCode: TUniLabel
        Left = 39
        Top = 54
        Width = 180
        Height = 180
        Cursor = crHandPoint
        Hint = 'Aponte a c'#226'mera do celular.'
        ShowHint = True
        ParentShowHint = False
        TextConversion = txtHTML
        AutoSize = False
        Caption = 
          '  <img src="https://falcon.capelaniasolacc.com.br/images/svg/qr-' +
          'code.svg" width="180" height="180" hspace="0" vspace="0" style="' +
          'border-radius: 8px;">'
        TabOrder = 4
        OnClick = lblQrCodeClick
      end
    end
  end
  object Confirm: TUniFSConfirm
    Theme = modern
    TypeColor = blue
    TypeAnimated = False
    Draggable = False
    EscapeKey = False
    CloseIcon = False
    Icon = 'fa fa-smile-o'
    RTL = False
    boxWidth = '480px'
    BackgroundDismiss = False
    ButtonTextConfirm = 'Confirma'
    ButtonTextCancel = 'Cancela'
    ButtonTextOther = 'Outro'
    ButtonTextOK = 'Ok'
    ButtonEnterConfirm = True
    ScreenMask.Enabled = False
    ScreenMask.Text = 'Processing'
    PromptType.TypePrompt = text
    PromptType.RequiredField = False
    PromptType.TextRequiredField = 'Field riquired'
    PromptType.CharCase = Normal_
    Left = 198
    Top = 276
  end
  object tmrLogin: TUniTimer
    Interval = 50
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = tmrLoginTimer
    Left = 272
    Top = 276
  end
end
