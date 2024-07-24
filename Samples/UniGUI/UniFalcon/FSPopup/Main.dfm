object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 622
  ClientWidth = 1063
  Caption = 'MainForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  LayoutConfig.Width = '100%'
  OnCreate = UniFormCreate
  TextHeight = 15
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 1063
    Height = 622
    Hint = ''
    Align = alClient
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = 'UniPanel1'
    LayoutConfig.Width = '100%'
    ExplicitLeft = 208
    ExplicitTop = 136
    ExplicitWidth = 256
    ExplicitHeight = 128
    DesignSize = (
      1063
      622)
    object pnlMenuPrincipal: TUniPanel
      Left = 0
      Top = 0
      Width = 1063
      Height = 44
      Hint = ''
      Align = alTop
      ParentFont = False
      Font.Height = -24
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = 15563820
      LayoutConfig.Width = '100%'
      ExplicitTop = 8
      ExplicitWidth = 840
      object btnSair: TUniFSButton
        AlignWithMargins = True
        Left = 1012
        Top = 6
        Width = 43
        Height = 32
        Hint = ''
        Margins.Left = 4
        Margins.Top = 6
        Margins.Right = 8
        Margins.Bottom = 6
        ParentShowHint = False
        StyleButton = Transparent
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = '<span class="fas fa-power-off"></span>'
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -26
        TabOrder = 5
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
            '50,'#13#10'   hideDelay:50,'#13#10'   html: "Sair do sistema"'#13#10'  });'#13#10'}')
        ScreenMask.ShowMessage = False
        LayoutConfig.Margin = '0 0 0 0'
        ExplicitLeft = 789
      end
      object btnAlertas: TUniFSButton
        AlignWithMargins = True
        Left = 859
        Top = 6
        Width = 43
        Height = 32
        Hint = ''
        Margins.Left = 4
        Margins.Top = 6
        Margins.Right = 4
        Margins.Bottom = 6
        ParentShowHint = False
        StyleButton = Transparent
        BadgeText.Text = '2'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        BadgeText.Visible = True
        Caption = '<span class="far fa-bell"></span>'
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -26
        TabOrder = 2
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
            '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Alertas da minha conta"'#13#10'  });' +
            #13#10'}')
        LayoutConfig.Margin = '0 0 0 0'
        ExplicitLeft = 636
      end
      object btnAtualizacoes: TUniFSButton
        AlignWithMargins = True
        Left = 808
        Top = 6
        Width = 43
        Height = 32
        Hint = ''
        Margins.Left = 4
        Margins.Top = 6
        Margins.Right = 4
        Margins.Bottom = 6
        ParentShowHint = False
        StyleButton = Transparent
        BadgeText.Text = '10'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        BadgeText.Visible = True
        Caption = '<span class="fas fa-globe-americas"></span>'
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -26
        TabOrder = 1
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
            '50,'#13#10'   hideDelay:50,'#13#10'   html: "Novidades e atualiza'#231#245'es"'#13#10'  })' +
            ';'#13#10'}')
        LayoutConfig.Margin = '-1px 0px 0px 0px'
        ExplicitLeft = 643
      end
      object btnMinhaConta: TUniFSButton
        AlignWithMargins = True
        Left = 910
        Top = 6
        Width = 43
        Height = 32
        Hint = ''
        Margins.Left = 4
        Margins.Top = 6
        Margins.Right = 4
        Margins.Bottom = 6
        ParentShowHint = False
        StyleButton = Transparent
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = '<span class="fas fa-gift"></span>'
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -26
        TabOrder = 3
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
            '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Minha Conta"'#13#10'  });'#13#10'}')
        LayoutConfig.Margin = '-1px 0px 0px 0px'
        ExplicitLeft = 687
      end
      object btnSugestoes: TUniFSButton
        AlignWithMargins = True
        Left = 961
        Top = 6
        Width = 43
        Height = 32
        Hint = ''
        Margins.Left = 4
        Margins.Top = 6
        Margins.Right = 4
        Margins.Bottom = 6
        ParentShowHint = False
        StyleButton = Transparent
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = '<span class="far fa-comments"></span>'
        Align = alRight
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -26
        TabOrder = 4
        ClientEvents.ExtEvents.Strings = (
          
            'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
            '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   showDelay:' +
            '50,'#13#10'   hideDelay: 50,'#13#10'   html: "Sugest'#245'es"'#13#10'  });'#13#10'}')
        Scale = bbsLarge
        LayoutConfig.Margin = '-1px 0px 0px 0px'
        ExplicitLeft = 738
      end
      object UniContainerPanel1: TUniContainerPanel
        Left = 548
        Top = 0
        Width = 256
        Height = 44
        Hint = ''
        ParentColor = False
        Align = alRight
        TabOrder = 6
        ExplicitLeft = 384
        ExplicitTop = 8
        ExplicitHeight = 128
        DesignSize = (
          256
          44)
        object lblProjeto: TUniLabel
          Left = 24
          Top = 3
          Width = 232
          Height = 19
          Cursor = crHandPoint
          Hint = ''
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Projeto de Exemplo FSPopup'
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
          Left = 24
          Top = 25
          Width = 232
          Height = 19
          Cursor = crHandPoint
          Hint = ''
          ShowHint = True
          ParentShowHint = False
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Clique nos bot'#245'es de exemplo'
          Anchors = [akTop, akRight]
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -13
          ClientEvents.ExtEvents.Strings = (
            
              'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10'  Ext.create' +
              '('#39'Ext.tip.ToolTip'#39', {'#13#10'   target: sender.getEl(),'#13#10'   html: "Cli' +
              'que para alternar entre empresas."'#13#10'  });'#13#10'}')
          TabOrder = 2
          ScreenMask.Enabled = True
          ScreenMask.WaitData = True
          ScreenMask.Message = 'Processando...'
        end
      end
    end
    object Spb1: TUniSpeedButton
      Left = 23
      Top = 69
      Width = 23
      Height = 22
      Hint = ''
      Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
      ParentFont = False
      Font.Color = clBlack
      ParentColor = False
      Color = clWhite
      TabOrder = 2
    end
    object Spb2: TUniSpeedButton
      Left = 1040
      Top = 600
      Width = 23
      Height = 22
      Hint = ''
      Caption = '<i class='#39'far fa-id-badge'#39'></i>'
      Anchors = [akRight, akBottom]
      ParentFont = False
      Font.Color = clBlack
      ParentColor = False
      Color = clWhite
      TabOrder = 3
      ExplicitLeft = 817
      ExplicitTop = 533
    end
    object pnl1: TUniPanel
      Left = 384
      Top = 278
      Width = 585
      Height = 273
      Hint = ''
      Anchors = []
      TabOrder = 4
      Caption = ''
      ExplicitLeft = 216
      ExplicitTop = 136
      object Spb3: TUniSpeedButton
        Left = 71
        Top = 69
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-hand-point-up'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 1
      end
      object Spb4: TUniSpeedButton
        Left = 175
        Top = 69
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-hand-point-left'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 2
      end
      object Spb5: TUniSpeedButton
        Left = 279
        Top = 69
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-hand-point-down'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 3
      end
      object Spb6: TUniSpeedButton
        Left = 379
        Top = 69
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-hand-point-right'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 4
      end
      object Spb7: TUniSpeedButton
        Left = 475
        Top = 69
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 5
      end
      object UniSpeedButton1: TUniSpeedButton
        Left = 71
        Top = 173
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 6
      end
      object UniSpeedButton2: TUniSpeedButton
        Left = 175
        Top = 173
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 7
      end
      object UniSpeedButton3: TUniSpeedButton
        Left = 279
        Top = 173
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 8
      end
      object UniSpeedButton4: TUniSpeedButton
        Left = 379
        Top = 173
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 9
      end
      object UniSpeedButton5: TUniSpeedButton
        Left = 475
        Top = 173
        Width = 23
        Height = 22
        Hint = ''
        Caption = '<i class='#39'far fa-smile-wink'#39'></i>'
        ParentFont = False
        Font.Color = clBlack
        ParentColor = False
        Color = clWhite
        TabOrder = 10
      end
    end
    object imgFalconSistemas: TUniImage
      Left = 28
      Top = 583
      Width = 150
      Height = 39
      Cursor = crHandPoint
      Hint = 'https://store.falconsistemas.com.br'
      ShowHint = True
      ParentShowHint = False
      AutoSize = True
      Url = 
        'https://store.falconsistemas.com.br/imagens/sistema/falcon_siste' +
        'mas_store.png'
      Anchors = [akLeft, akBottom]
      ClientEvents.ExtEvents.Strings = (
        
          'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://s' +
          'tore.falconsistemas.com.br");'#13#10'}')
    end
    object lblVersion: TUniLabel
      Left = 184
      Top = 603
      Width = 71
      Height = 19
      Hint = ''
      Caption = 'lblVersion'
      Anchors = [akLeft, akBottom]
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Roboto'
      ParentColor = False
      Color = 328965
      TabOrder = 6
      ExplicitTop = 536
    end
  end
  object PopupAlerta: TUniFSPopup
    Target = btnAlertas
    Width = 280
    ArrowLocation = top
    Html = 'Alertas.'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 10
    RelativeX = 0
    RelativePosition = t_b
    CloseOnClick = True
    OnEvents = PopupAlertaEvents
    Left = 884
    Top = 56
  end
  object PopupAtualizacoes: TUniFSPopup
    Target = btnAtualizacoes
    Width = 320
    ArrowLocation = top
    Html = 'Minha Conta'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 10
    RelativeX = 0
    RelativePosition = t_b
    CloseOnClick = True
    Left = 759
    Top = 56
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
    Left = 868
    Top = 138
  end
  object Popup: TUniFSPopup
    Target = Spb1
    Width = 250
    ArrowLocation = left
    Html = 
      'Powered by <b>Falcon Sistemas </b> <i class='#39'far fa-lg fa-smile-' +
      'wink'#39'></i>'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 0
    RelativeX = 10
    RelativePosition = l_r
    CloseOnClick = False
    Left = 72
    Top = 62
  end
  object PopupBottom: TUniFSPopup
    Target = Spb2
    Width = 50
    ArrowLocation = bottom
    Html = '<i class='#39'fas fa-lg fa-qrcode'#39' style='#39'font-size:20px'#39'></i>'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = -10
    RelativeX = 0
    RelativePosition = b_t
    CloseOnClick = False
    Left = 812
    Top = 427
  end
  object Popup3: TUniFSPopup
    Target = Spb3
    Width = 50
    ArrowLocation = bottom
    Html = '<i class='#39'far fa-lg fa-smile-wink'#39'></i>'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = -12
    RelativeX = 0
    RelativePosition = b_t
    CloseOnClick = False
    Left = 283
    Top = 102
  end
  object Popup4: TUniFSPopup
    Target = Spb4
    Width = 50
    ArrowLocation = right
    Html = '<i class='#39'far fa-lg fa-smile-wink'#39'></i>'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 0
    RelativeX = -12
    RelativePosition = r_l
    CloseOnClick = False
    Left = 387
    Top = 102
  end
  object Popup5: TUniFSPopup
    Target = Spb5
    Width = 50
    ArrowLocation = top
    Html = '<i class='#39'far fa-lg fa-smile-wink'#39'></i>'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 12
    RelativeX = 0
    RelativePosition = t_b
    CloseOnClick = False
    Left = 489
    Top = 102
  end
  object Popup6: TUniFSPopup
    Target = Spb6
    Width = 50
    ArrowLocation = left
    Html = '<i class='#39'far fa-lg fa-smile-wink'#39'></i>'
    FadeInDuration = 200
    FadeOutDuration = 200
    DimissDelay = 0
    PopupEvent = click
    RelativeY = 0
    RelativeX = 12
    RelativePosition = l_r
    CloseOnClick = False
    Left = 593
    Top = 102
  end
end
