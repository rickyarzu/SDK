object frmOtherCamera: TfrmOtherCamera
  Left = 0
  Top = 0
  ClientHeight = 416
  ClientWidth = 829
  Caption = 'Other Camera'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    829
    416)
  TextHeight = 15
  object Camera: TUniFSCamera
    Left = 40
    Top = 40
    Width = 345
    Height = 265
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
  end
  object btnStart: TUniFSButton
    Left = 40
    Top = 317
    Width = 100
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
    TabOrder = 5
    OnClick = btnStartClick
  end
  object btnStop: TUniFSButton
    Left = 155
    Top = 317
    Width = 100
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
    TabOrder = 6
    OnClick = btnStopClick
  end
  object ScrollBox: TUniScrollBox
    Left = 399
    Top = 40
    Width = 420
    Height = 141
    Hint = ''
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
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
  object btnGetImage: TUniFSButton
    Left = 612
    Top = 223
    Width = 100
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
    TabOrder = 4
    OnClick = btnGetImageClick
  end
  object imgFolder: TUniImage
    Left = 400
    Top = 223
    Width = 201
    Height = 139
    Hint = ''
    Center = True
  end
  object lblImage: TUniLabel
    Left = 400
    Top = 186
    Width = 172
    Height = 13
    Hint = ''
    Caption = 'Image saved in ther folder (cache)'
    TabOrder = 2
  end
  object lblPath: TUniLabel
    Left = 400
    Top = 368
    Width = 183
    Height = 13
    Hint = ''
    Caption = 'Path de image folder (imagecamera)'
    TabOrder = 7
  end
end
