object frmSignatureOther: TfrmSignatureOther
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 898
  Caption = 'Other Signature'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    898
    480)
  TextHeight = 15
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
    TabOrder = 0
  end
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
    TabOrder = 3
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
    TabOrder = 4
    OnClick = btnSaveAsJpegClick
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
    TabOrder = 5
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
    TabOrder = 6
    OnClick = btnSaveAsSvgClick
  end
  object ScrollBox: TUniScrollBox
    Left = 584
    Top = 68
    Width = 265
    Height = 141
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
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
end
