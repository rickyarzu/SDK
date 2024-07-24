object frmCamera: TfrmCamera
  Left = 0
  Top = 0
  Width = 1199
  Height = 647
  OnCreate = UniFrameCreate
  Color = 16749861
  TabOrder = 0
  ParentColor = False
  ParentBackground = False
  DesignSize = (
    1199
    647)
  object pnlCenter: TUniPanel
    Left = 56
    Top = 67
    Width = 1088
    Height = 509
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
      509)
    object btnStart: TUniFSButton
      Left = 48
      Top = 402
      Width = 112
      Height = 32
      Hint = ''
      StyleButton = GoogleGreen
      CaptionIconFont = '<i class="fas fa-play"></i>'
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ' Start'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 6
      OnClick = btnStartClick
    end
    object btnStop: TUniFSButton
      Left = 180
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleDanger
      CaptionIconFont = '<i class="fas fa-stop-circle"></i>'
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ' Stop'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 7
      OnClick = btnStopClick
    end
    object lbl1: TUniLabel
      Left = 48
      Top = 22
      Width = 112
      Height = 38
      Hint = ''
      Caption = 'Camera'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -32
      Font.Name = 'Roboto'
      TabOrder = 1
    end
    object btnGetImage: TUniFSButton
      Left = 312
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleBlue
      CaptionIconFont = '<i class="far fa-image"></i>'
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ' Get Image'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 8
      OnClick = btnGetImageClick
    end
    object btnViewLog: TUniFSButton
      Left = 444
      Top = 402
      Width = 117
      Height = 32
      Hint = ''
      StyleButton = GoogleSilver
      CaptionIconFont = '<i class="far fa-list-alt"></i>'
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = ' View Logs'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -13
      TabOrder = 9
    end
    object ScrollBox: TUniScrollBox
      Left = 577
      Top = 246
      Width = 456
      Height = 141
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      ScrollDirection = sdHorizontal
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
    object Camera: TUniFSCamera
      Left = 48
      Top = 66
      Width = 513
      Height = 321
      Hint = ''
      CameraBorderDashed = 1
      CameraGetImageOnClick = True
      ClientEvents.ExtEvents.Strings = (
        
          'resize=function resize(sender, width, height, oldWidth, oldHeigh' +
          't, eOpts) {   if(typeof resizeCanvas == '#39'function'#39') {      resiz' +
          'eCanvas();   }    ajaxRequest(sender, "fs_camera_resize",    [  ' +
          '  '#39'width='#39' + width,    '#39'height='#39' + height,    '#39'oldWidth='#39' + oldW' +
          'idth,    '#39'oldHeight='#39' + oldHeight    ]); } ')
      OnCameraOnGetImage = CameraCameraOnGetImage
      OnCameraError = CameraCameraError
      OnCameraStart = CameraCameraStart
      OnCameraStop = CameraCameraStop
    end
    object memLog: TUniMemo
      Left = 577
      Top = 97
      Width = 455
      Height = 131
      Hint = ''
      ParentFont = False
      Font.Color = clBlack
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      ClearButton = True
    end
    object UniLabel1: TUniLabel
      Left = 578
      Top = 66
      Width = 42
      Height = 23
      Hint = ''
      Caption = 'Logs'
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Roboto'
      TabOrder = 3
    end
    object btnOtherCamera: TUniFSButton
      Left = 578
      Top = 402
      Width = 112
      Height = 32
      Hint = ''
      StyleButton = GoogleGreen
      BadgeText.Text = '0'
      BadgeText.TextColor = '#FFFFFF'
      BadgeText.TextSize = 10
      BadgeText.TextStyle = 'bold'
      BadgeText.BackgroundColor = '#D50000'
      Caption = 'Other Camera'
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
      TabOrder = 10
      OnClick = btnOtherCameraClick
    end
  end
  object imgFalconSistemas: TUniImage
    Left = 56
    Top = 582
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
    Top = 602
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
