object frmModFinanceiro: TfrmModFinanceiro
  Left = 0
  Top = 0
  Width = 1229
  Height = 794
  OnCreate = UniFrameCreate
  OnAjaxEvent = UniFrameAjaxEvent
  OnBeforeReady = UniFrameBeforeReady
  TabOrder = 0
  object ContainerPanel: TUniContainerPanel
    Left = 0
    Top = 44
    Width = 250
    Height = 750
    Hint = ''
    ParentColor = False
    Align = alLeft
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    TabOrder = 1
    Layout = 'fit'
    LayoutAttribs.Padding = '5'
    LayoutConfig.BodyPadding = '5'
    object pnlBorder: TUniPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 750
      Hint = ''
      Align = alClient
      TabOrder = 1
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando...'
      BorderStyle = ubsNone
      Title = 'Border Layout'
      Caption = 'pnlBorder'
      Color = clWhite
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Layout = 'border'
      object menAcesso: TUniTreeMenu
        Left = 0
        Top = 56
        Width = 250
        Height = 694
        Hint = ''
        Align = alClient
        ClientEvents.UniEvents.Strings = (
          
            'treeMenu.afterCreate=function treeMenu.afterCreate(sender)'#13#10'{'#13#10' ' +
            ' sender.el.setStyle('#39'overflow-y'#39', '#39'auto'#39');'#13#10'}')
        Items.FontData = {0100000000}
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Processando...'
        Images = dmImagens.imglFA
        SourceMenu = dmAcessos.MenAcesso
        MicroWidth = 85
        ExpanderFirst = True
        ExpanderOnly = False
        OnClick = menAcessoClick
      end
      object pnlMenuTop: TUniPanel
        Left = 0
        Top = 0
        Width = 250
        Height = 56
        Hint = ''
        Align = alTop
        TabOrder = 1
        BorderStyle = ubsNone
        Caption = ''
        object btnResumoFinanceiro: TUniFSButton
          Left = 3
          Top = 11
          Width = 195
          Height = 39
          Hint = ''
          StyleButton = GoogleNarrowRound
          BadgeText.Text = '0'
          BadgeText.TextColor = '#FFFFFF'
          BadgeText.TextSize = 10
          BadgeText.TextStyle = 'bold'
          BadgeText.BackgroundColor = '#D50000'
          Caption = 'Dashboards'
          ParentFont = False
          Font.Color = 7763057
          Font.Height = -15
          Font.Name = 'Roboto'
          TabOrder = 1
          Scale = bbsMedium
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Processando...'
          Images = dmImagens.imgl20
          ImageIndex = 119
          OnClick = btnResumoFinanceiroClick
        end
      end
    end
  end
  object pgcControl: TUniPageControl
    Left = 250
    Top = 44
    Width = 979
    Height = 750
    Hint = ''
    TabBarVisible = False
    Align = alClient
    TabOrder = 2
  end
  object pnlMenuPrincipal: TUniPanel
    Left = 0
    Top = 0
    Width = 1229
    Height = 44
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Height = -24
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 15563820
    DesignSize = (
      1229
      44)
    object btnSair: TUniFSButton
      AlignWithMargins = True
      Left = 1183
      Top = 6
      Width = 43
      Height = 32
      Hint = ''
      ParentShowHint = False
      StyleButton = Transparent
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = '<span class="fas fa-power-off"></span>'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -26
      TabOrder = 7
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay:50,'#13#10'   html: "Sair do sistema"'#13#10'  });'#13#10'}')
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Encerrando sistema...'
      LayoutConfig.Margin = '0 0 0 0'
      OnClick = btnSairClick
    end
    object lblFalconFinancas: TUniLabel
      AlignWithMargins = True
      Left = 57
      Top = 9
      Width = 144
      Height = 28
      Cursor = crHandPoint
      Hint = ''
      Caption = 'Falcon Exemplos'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -20
      TabOrder = 8
    end
    object btnAlertas: TUniFSButton
      AlignWithMargins = True
      Left = 1037
      Top = 6
      Width = 43
      Height = 32
      Hint = ''
      ParentShowHint = False
      StyleButton = Transparent
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = '<span class="far fa-bell"></span>'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -26
      TabOrder = 4
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Alertas da minha conta"'#13#10'  });' +
          #13#10'}')
      LayoutConfig.Margin = '0 0 0 0'
    end
    object btnAtualizacoes: TUniFSButton
      AlignWithMargins = True
      Left = 988
      Top = 6
      Width = 43
      Height = 32
      Hint = ''
      ParentShowHint = False
      StyleButton = Transparent
      BadgeText.Text = '10'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      BadgeText.Visible = True
      Caption = '<span class="fas fa-globe-americas"></span>'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -26
      TabOrder = 3
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay:50,'#13#10'   html: "Novidades e atualiza'#231#245'es"'#13#10'  })' +
          ';'#13#10'}')
      LayoutConfig.Margin = '-1px 0px 0px 0px'
    end
    object btnMenu: TUniFSButton
      Left = 3
      Top = 4
      Width = 44
      Height = 35
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      StyleButton = Transparent
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = '<span class="fa fa-bars"></span>'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -24
      TabOrder = 2
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay:50,'#13#10'   html: "Menu de acesso"'#13#10'  });'#13#10'}')
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando...'
      LayoutConfig.Margin = '-1px 0px 0px 0px'
      OnClick = btnMenuClick
    end
    object lblUsuarioConectado: TUniLabel
      Left = 573
      Top = 3
      Width = 405
      Height = 19
      Cursor = crHandPoint
      Hint = ''
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Fulano da Silva Oliveira'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -16
      TabOrder = 1
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando...'
    end
    object lblEmpresa: TUniLabel
      Left = 573
      Top = 23
      Width = 405
      Height = 19
      Cursor = crHandPoint
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Empresa XYZTT'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   html: "Cli' +
          'que para alternar entre empresas."'#13#10'  });'#13#10'}')
      TabOrder = 9
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando...'
    end
    object btnMinhaConta: TUniFSButton
      AlignWithMargins = True
      Left = 1086
      Top = 6
      Width = 43
      Height = 32
      Hint = ''
      ParentShowHint = False
      StyleButton = Transparent
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = '<span class="fas fa-gift"></span>'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -26
      TabOrder = 5
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Minha Conta"'#13#10'  });'#13#10'}')
      LayoutConfig.Margin = '-1px 0px 0px 0px'
    end
    object btnSugestoes: TUniFSButton
      AlignWithMargins = True
      Left = 1134
      Top = 6
      Width = 43
      Height = 32
      Hint = ''
      ParentShowHint = False
      StyleButton = Transparent
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = '<span class="far fa-comments"></span>'
      Anchors = [akTop, akRight]
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -26
      TabOrder = 6
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
          '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
          '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Sugest'#245'es"'#13#10'  });'#13#10'}')
      Scale = bbsLarge
      LayoutConfig.Margin = '-1px 0px 0px 0px'
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
    boxWidth = '420px'
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
    Left = 1026
    Top = 64
  end
  object PopupAtualizacoes: TUniFSPopup
    Target = btnAtualizacoes
    Width = 320
    ArrowLocation = top
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 10
    RelativeX = 0
    RelativePosition = t_b
    Left = 863
    Top = 64
  end
  object tmrLoad: TUniTimer
    Enabled = False
    RunOnce = True
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = tmrLoadTimer
    Left = 954
    Top = 62
  end
end
