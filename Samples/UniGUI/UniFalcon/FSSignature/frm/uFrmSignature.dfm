object frmSignature: TfrmSignature
  Left = 0
  Top = 0
  Width = 1199
  Height = 600
  OnCreate = UniFrameCreate
  Color = 16749861
  TabOrder = 0
  ParentColor = False
  ParentBackground = False
  DesignSize = (
    1199
    600)
  object pnlCenter: TUniPanel
    Left = 56
    Top = 67
    Width = 1088
    Height = 462
    Hint = ''
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentFont = False
    Font.Color = clWhite
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = 'pnlCenter'
    Color = clWhite
    LayoutConfig.Cls = 'card card-radius'
    DesignSize = (
      1088
      462)
    object Signature: TUniFSSignature
      Left = 48
      Top = 68
      Width = 513
      Height = 322
      Hint = ''
      PenColor = 'black'
      BackgroundColor = 'rgb(255, 255, 255)'
      BorderDashed = 1
      ClientEvents.ExtEvents.Strings = (
        
          'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
          't, eOpts) {   if(typeof resizeCanvas == '#39'function'#39') {      resiz' +
          'eCanvas();   }    ajaxRequest(sender, "fs_signature_resize",    ' +
          '[    '#39'width='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + o' +
          'ldWidth,    '#39'oldHeight='#39' + oldHeight    ]); } ')
      OnGetImage = SignatureGetImage
    end
    object btnClear: TUniFSButton
      Left = 48
      Top = 402
      Width = 112
      Height = 32
      Hint = ''
      StyleButton = GoogleSilver
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Clear'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -13
      TabOrder = 5
      OnClick = btnClearClick
    end
    object btnSaveAsJpeg: TUniFSButton
      Left = 180
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Save as JPEG'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 6
      OnClick = btnSaveAsJpegClick
    end
    object lbl1: TUniLabel
      Left = 48
      Top = 22
      Width = 147
      Height = 38
      Hint = ''
      Caption = 'Signature:'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Roboto'
      TabOrder = 1
    end
    object btnSaveAsPng: TUniFSButton
      Left = 312
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Save as PNG'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 7
      OnClick = btnSaveAsPngClick
    end
    object btnSaveAsSvg: TUniFSButton
      Left = 444
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Save as SVG'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 8
      OnClick = btnSaveAsSvgClick
    end
    object ScrollBox: TUniScrollBox
      Left = 584
      Top = 68
      Width = 456
      Height = 141
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 3
      ScrollWidth = 201
      object img1: TUniImage
        Left = 0
        Top = 0
        Width = 201
        Height = 139
        Hint = ''
        Center = True
        Align = alLeft
      end
    end
    object btnOtherSignature: TUniFSButton
      Left = 585
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleSilver
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Other Signature'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -13
      TabOrder = 9
      OnClick = btnOtherSignatureClick
    end
    object btnIsEmpty: TUniFSButton
      Left = 585
      Top = 358
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleSilver
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Get IsEmpty'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -13
      TabOrder = 4
      OnClick = btnIsEmptyClick
    end
  end
  object imgFalconSistemas: TUniImage
    Left = 56
    Top = 535
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
  object lblVersion: TUniLabel
    Left = 215
    Top = 555
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
end
