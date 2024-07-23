object frmPIX: TfrmPIX
  Left = 0
  Top = 0
  Width = 1200
  Height = 567
  OnCreate = UniFrameCreate
  OnReady = UniFrameReady
  Color = 16749861
  Font.Color = clWhite
  TabOrder = 0
  ParentColor = False
  ParentFont = False
  ParentBackground = False
  DesignSize = (
    1200
    567)
  object pnlQrCode: TUniPanel
    Left = 56
    Top = 46
    Width = 1089
    Height = 450
    Hint = ''
    AutoScroll = True
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    Font.Color = clBlack
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = clWhite
    LayoutConfig.Cls = 'card card-radius'
    DesignSize = (
      1089
      450)
    ScrollHeight = 450
    ScrollWidth = 1089
    object pnlCenter: TUniPanel
      Left = 14
      Top = 3
      Width = 1072
      Height = 444
      Hint = ''
      Anchors = []
      ParentFont = False
      Font.Color = clBlack
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = clWhite
      DesignSize = (
        1072
        444)
      object lbl12: TUniLabel
        Left = 2
        Top = 67
        Width = 58
        Height = 16
        Hint = ''
        Caption = 'Chave PIX'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 7
      end
      object btnGenerate: TUniFSButton
        Left = 2
        Top = 394
        Width = 189
        Height = 32
        Hint = ''
        StyleButton = GoogleGreen
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Gerar PIX'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        TabOrder = 21
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnGenerateClick
        OnAjaxEvent = btnGenerateAjaxEvent
      end
      object cmbTipo: TUniComboBox
        Left = 2
        Top = 31
        Width = 320
        Height = 28
        Hint = ''
        Text = ''
        Items.Strings = (
          'Telefone'
          'Email'
          'CPF'
          'CNPJ'
          'Outro')
        ItemIndex = 4
        ParentFont = False
        Font.Color = clBlack
        TabOrder = 5
        AnyMatch = True
        IconItems = <>
        OnCloseUp = cmbTipoCloseUp
      end
      object lbl1: TUniLabel
        Left = 2
        Top = 11
        Width = 25
        Height = 16
        Hint = ''
        Caption = 'Tipo'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 2
      end
      object lblImg: TUniLabel
        Left = 352
        Top = 11
        Width = 283
        Height = 96
        Hint = ''
        TextConversion = txtHTML
        AutoSize = False
        Caption = 
          '<img src="https://cdn.falconsistemas.com.br/imagens/svg/pix.svg"' +
          ' width="283" height="96" hspace="0" vspace="0" style="border-rad' +
          'ius: 8px;image-rendering: -webkit-optimize-contrast;">'
        ParentFont = False
        Font.Color = clBlack
        TabOrder = 3
      end
      object btnBaixar: TUniFSButton
        Left = 199
        Top = 394
        Width = 123
        Height = 32
        Hint = ''
        StyleButton = GoogleGreen
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Baixar Imagem'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        TabOrder = 22
        ScreenMask.WaitData = True
        OnClick = btnBaixarClick
      end
      object lbl2: TUniLabel
        Left = 2
        Top = 132
        Width = 235
        Height = 16
        Hint = ''
        Caption = 'Nome do benefici'#225'rio (at'#233' 25 caracteres)'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 10
      end
      object edtBeneficiario: TUniEdit
        Left = 2
        Top = 151
        Width = 320
        Height = 28
        Hint = ''
        MaxLength = 25
        Text = 'Marlon Nardi'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 11
        EmptyText = 'Fulano da Silva'
      end
      object edtValor: TUniNumberEdit
        Left = 2
        Top = 281
        Width = 320
        Height = 28
        Hint = ''
        TabOrder = 18
        BlankValue = 0
        DecimalSeparator = ','
      end
      object lbl3: TUniLabel
        Left = 2
        Top = 261
        Width = 91
        Height = 16
        Hint = ''
        Caption = 'Valor (opcional)'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 17
      end
      object lbl4: TUniLabel
        Left = 2
        Top = 327
        Width = 310
        Height = 16
        Hint = ''
        Caption = 'C'#243'digo da transfer'#234'ncia (opcional - at'#233' 20 caracteres)'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 19
      end
      object edtIdentificador: TUniEdit
        Left = 2
        Top = 347
        Width = 320
        Height = 28
        Hint = ''
        MaxLength = 20
        Text = 'PIX0123'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 20
        EmptyText = 'PAGAMENTO1234'
      end
      object edtChave: TUniFSMaskEdit
        Left = 2
        Top = 87
        Width = 320
        Height = 28
        Hint = ''
        MaskUnMask = False
        Text = '42d6ff15-3391-4c6c-aff1-600c4612ce48'
        TabOrder = 8
      end
      object lbl5: TUniLabel
        Left = 2
        Top = 195
        Width = 241
        Height = 16
        Hint = ''
        Caption = 'Cidade do benefici'#225'rio (at'#233' 15 caracteres)'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 12
      end
      object edtCidade: TUniEdit
        Left = 2
        Top = 215
        Width = 320
        Height = 28
        Hint = ''
        MaxLength = 15
        Text = 'Nova Mutum'
        ParentFont = False
        Font.Color = clBlack
        Font.Height = -13
        TabOrder = 14
        EmptyText = 'S'#227'o Paulo'
      end
      object QrPix: TUniFSPix
        Left = 352
        Top = 113
        Width = 283
        Height = 283
        Hint = ''
        QrOptions.Render = canvas
        QrOptions.MinVersion = 6
        QrOptions.Level = H
        QrOptions.Mode = normal
        QrOptions.Fill = 'black'
        QrOptions.Radius = 5
        QrOptions.BackGroundColor = 'null'
        QrOptions.Content = 'https://store.falconsistemas.com.br'
        QrOptions.LabelQr = 'Falcon Store'
        QrOptions.SizeLabelQr = 1
        QrOptions.PositionLabelQrX = 5
        QrOptions.PositionLabelQrY = 5
        QrOptions.FontName = 'Roboto'
        QrOptions.FontColor = '#2594FE'
        QrOptions.ImageUrl = 'null'
        QrOptions.QuietZone = 1
        OnGetImage = QrPixGetImage
        Pix.TipoChave = Telefone
      end
      object memPayLoad: TUniMemo
        Left = 666
        Top = 35
        Width = 405
        Height = 171
        Hint = ''
        TabOrder = 6
      end
      object lbl6: TUniLabel
        Left = 666
        Top = 11
        Width = 47
        Height = 16
        Hint = ''
        Caption = 'PayLoad'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 4
      end
      object lbl7: TUniLabel
        Left = 666
        Top = 218
        Width = 81
        Height = 16
        Hint = ''
        Caption = 'Image Base64'
        ParentFont = False
        Font.Color = clBackground
        Font.Height = -13
        TabOrder = 15
      end
      object memImageBase64: TUniMemo
        Left = 666
        Top = 242
        Width = 405
        Height = 184
        Hint = ''
        TabOrder = 16
      end
      object btnPayLoad: TUniFSButton
        Left = 949
        Top = 6
        Width = 123
        Height = 27
        Hint = ''
        StyleButton = GoogleGreen
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Obter Payload'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        TabOrder = 1
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        OnClick = btnPayLoadClick
      end
      object btn1: TUniFSButton
        Left = 949
        Top = 213
        Width = 123
        Height = 27
        Hint = ''
        StyleButton = GoogleGreen
        BadgeText.Text = '0'
        BadgeText.TextColor = '#FFFFFF'
        BadgeText.TextSize = 10
        BadgeText.TextStyle = 'bold'
        BadgeText.BackgroundColor = '#D50000'
        Caption = 'Obter Base64'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -13
        TabOrder = 13
        ScreenMask.Enabled = True
        ScreenMask.WaitData = True
        ScreenMask.Message = 'Gerando Base64'
        OnClick = btn1Click
      end
    end
  end
  object lblVersion: TUniLabel
    Left = 215
    Top = 522
    Width = 71
    Height = 19
    Hint = ''
    Caption = 'lblVersion'
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Roboto'
    ParentColor = False
    Color = 328965
    TabOrder = 2
  end
  object imgFalconSistemas: TUniImage
    Left = 56
    Top = 502
    Width = 150
    Height = 39
    Cursor = crHandPoint
    Hint = 'https://store.falconsistemas.com.br'
    ShowHint = True
    ParentShowHint = False
    AutoSize = True
    Url = 
      'https://store.falconsistemas.com.br/imagens/sistema/falcon_siste' +
      'mas.png'
    Anchors = [akLeft, akBottom]
    ClientEvents.ExtEvents.Strings = (
      
        'click=function click(sender, eOpts)'#13#10'{'#13#10'  window.open("https://s' +
        'tore.falconsistemas.com.br");'#13#10'}')
  end
end
