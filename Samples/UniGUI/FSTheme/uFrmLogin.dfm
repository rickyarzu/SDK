object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 409
  ClientWidth = 378
  Caption = 'Controle de Acesso'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ClientEvents.ExtEvents.Strings = (
    
      'window.afterrender=function window.afterrender(sender, eOpts)'#13#10'{' +
      #13#10'  Ext.get(sender.id).el.setStyle("padding", 0);'#13#10'  Ext.get(sen' +
      'der.id).el.setStyle("border-width", 0);'#13#10'  Ext.get(sender.id).el' +
      '.setStyle("-webkit-border-radius", 1);'#13#10'  Ext.get(sender.id).el.' +
      'setStyle("-moz-border-radius", 1);'#13#10'  Ext.get(sender.id).el.setS' +
      'tyle("border-radius", 1);'#13#10'}'
    
      'window.beforerender=function window.beforerender(sender, eOpts)'#13 +
      #10'{'#13#10'   var width = screen.width;'#13#10'   var height = screen.height;' +
      #13#10'   ajaxRequest(sender, "_get_param", ['#39'width='#39' + width, '#39'heigh' +
      't='#39' + height]);'#13#10#13#10'}')
  TextHeight = 15
  object cmbUsuario: TUniComboBox
    Left = 20
    Top = 109
    Width = 344
    Height = 30
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -16
    TabOrder = 0
    ClientEvents.ExtEvents.Strings = (
      
        'beforerender=function beforerender(sender, eOpts)'#13#10'{ '#13#10'  event: ' +
        'sender.allowBlank=false;'#13#10'  event: sender.emptyText='#39'Usu'#225'rio (E-' +
        'mail)'#39';'#13#10'}')
    IconItems = <>
  end
  object edtSenha: TUniEdit
    Left = 20
    Top = 151
    Width = 344
    Height = 30
    Hint = ''
    PasswordChar = '*'
    Text = ''
    ParentFont = False
    Font.Color = clBlack
    Font.Height = -16
    TabOrder = 1
    ClientEvents.ExtEvents.Strings = (
      
        'OnBeforerender=function OnBeforerender(sender)'#13#10'{'#13#10'  event: send' +
        'er.allowBlank=false;'#13#10'  '#13#10'  event: sender.emptyText='#39'Senha'#39';'#13#10'}')
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Aplicando as Configura'#231#245'es de Acesso, Aguarde...'
    ScreenMask.Target = Owner
  end
  object lblEsqueciMinhaSenha: TUniLabel
    Left = 249
    Top = 189
    Width = 108
    Height = 13
    Cursor = crHandPoint
    Hint = ''
    Caption = 'Esqueci minha senha'
    ParentFont = False
    Font.Height = -12
    Font.Style = [fsUnderline]
    TabOrder = 2
  end
  object lblTituloSistema: TUniLabel
    Left = 96
    Top = 24
    Width = 175
    Height = 40
    Hint = ''
    Caption = 'Falcon Theme'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 13075991
    Font.Height = -29
    TabOrder = 3
  end
  object lblDireitos: TUniLabel
    Left = 20
    Top = 385
    Width = 112
    Height = 12
    Hint = ''
    Caption = 'Mensagem Direitos Autorais'
    ParentFont = False
    Font.Color = clWindowFrame
    Font.Height = -9
    TabOrder = 4
  end
  object lbllLinkTermos: TUniLabel
    Left = 20
    Top = 366
    Width = 75
    Height = 13
    Cursor = crHandPoint
    Hint = ''
    Caption = 'Termos de Uso'
    ParentFont = False
    Font.Color = clWindowFrame
    Font.Style = [fsUnderline]
    TabOrder = 5
  end
  object chkSalvarUsuarioSenha: TUniCheckBox
    Left = 20
    Top = 189
    Width = 97
    Height = 17
    Hint = 'Lembrar usu'#225'rio e senha'
    ShowHint = True
    ParentShowHint = False
    Caption = 'Lembrar-me'
    ParentFont = False
    Font.Height = -12
    TabOrder = 6
  end
  object lblSubTitulo: TUniLabel
    Left = 96
    Top = 58
    Width = 119
    Height = 21
    Hint = ''
    Caption = 'Projeto prot'#243'tipo'
    ParentFont = False
    Font.Color = 13075991
    Font.Height = -16
    TabOrder = 7
  end
  object btnConectar: TUniFSButton
    Left = 20
    Top = 227
    Width = 344
    Height = 34
    Hint = ''
    StyleButton = Success
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Conectar'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 8
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Autenticando...'
    OnClick = btnConectarClick
  end
  object btnCadastrar: TUniFSButton
    Left = 20
    Top = 274
    Width = 344
    Height = 34
    Hint = 'Realize seu cadastro aqui'
    ShowHint = True
    ParentShowHint = False
    StyleButton = Warning
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Cadastre-se'
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -15
    TabOrder = 9
    ScreenMask.Enabled = True
    ScreenMask.WaitData = True
    ScreenMask.Message = 'Processando, por favor aguarde...'
  end
  object imgLogo: TUniImage
    Left = 20
    Top = 20
    Width = 75
    Height = 69
    Hint = ''
    Center = True
    Url = 'imagens/falconsistemas.png'
  end
  object lblVersao: TUniLabel
    Left = 291
    Top = 385
    Width = 73
    Height = 13
    Cursor = crHandPoint
    Hint = 'Vers'#227'o do aplicativo e informa'#231#227'o do desenvolvedor'
    ShowHint = True
    ParentShowHint = False
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Vers'#227'o'
    ParentFont = False
    Font.Color = clWindowFrame
    Font.Height = -9
    TabOrder = 11
  end
end
