object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  ClientHeight = 419
  ClientWidth = 711
  Caption = 'frmLogin'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object pgcLogin: TUniPageControl
    Left = 0
    Top = 0
    Width = 711
    Height = 419
    Hint = ''
    ActivePage = TabLogin
    TabBarVisible = False
    Align = alClient
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'  config.base' +
        'Cls='#39'pnlRadius'#39';'#13#10'}'
      
        'tabPanel.beforeInit=function tabPanel.beforeInit(sender, config)' +
        #13#10'{'#13#10'  config.baseCls='#39'pnlRadius'#39';'#13#10'}')
    TabOrder = 0
    object TabLogin: TUniTabSheet
      Hint = ''
      Caption = 'TabLogin'
      object lblTituloSistema: TUniLabel
        Left = 54
        Top = 265
        Width = 218
        Height = 35
        Hint = ''
        Caption = 'Falcon Exemplos'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = 13075991
        Font.Height = -29
        Font.Name = 'Roboto'
        TabOrder = 0
      end
      object lblSubTitulo: TUniLabel
        Left = 90
        Top = 304
        Width = 137
        Height = 19
        Hint = ''
        Caption = 'Projeto de Exemplo'
        ParentFont = False
        Font.Color = 13075991
        Font.Height = -16
        Font.Name = 'Roboto'
        TabOrder = 1
      end
      object imgLogo: TUniImage
        Left = 72
        Top = 73
        Width = 180
        Height = 180
        Hint = ''
        Center = True
        Url = '/imagens/Falcon_Sistemas_Logo.png'
      end
      object pnlSep: TUniPanel
        Left = 315
        Top = 75
        Width = 1
        Height = 256
        Hint = ''
        TabOrder = 3
        Caption = 'pnlSep'
        Color = clGrayText
      end
      object pnlControl2: TUniPanel
        Left = 328
        Top = 75
        Width = 345
        Height = 236
        Hint = ''
        Visible = False
        TabOrder = 5
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
          MatchFieldWidth = False
          IconItems = <>
          Value = '0'
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
        Top = 75
        Width = 345
        Height = 236
        Hint = ''
        TabOrder = 4
        BorderStyle = ubsNone
        Caption = ''
        Color = clWhite
        object cmbUsuario: TUniComboBox
          Left = 24
          Top = 17
          Width = 297
          Height = 30
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
          Height = 30
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
          Width = 115
          Height = 14
          Cursor = crHandPoint
          Hint = ''
          Caption = 'Esqueci minha senha'
          ParentFont = False
          Font.Height = -12
          Font.Name = 'Roboto'
          Font.Style = [fsUnderline]
          TabOrder = 3
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
          TabOrder = 4
        end
        object btnConectar: TUniFSButton
          Left = 24
          Top = 144
          Width = 297
          Height = 34
          Hint = ''
          StyleButton = GoogleGreen
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
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Autenticando...'
          OnClick = btnConectarClick
        end
        object btnCadastrar: TUniFSButton
          Left = 24
          Top = 186
          Width = 297
          Height = 34
          Hint = 'Realize seu cadastro aqui'
          ShowHint = True
          ParentShowHint = False
          StyleButton = GoogleBlue3
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
    end
  end
end
