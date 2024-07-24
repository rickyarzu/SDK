object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 360
  Caption = 'Camera'
  CloseButton.IconCls = 'arrow_left'
  CloseButton.Visible = False
  CloseButton.DefaultIcon = False
  TitleButtons = <
    item
      ButtonId = 0
      IconCls = 'play'
      UI = 'normal'
    end
    item
      ButtonId = 1
      IconCls = 'stop'
    end
    item
      ButtonId = 10
      Separator = True
    end
    item
      Caption = 'Front'
      ButtonId = 2
      UI = 'normal'
    end
    item
      Caption = 'Back'
      ButtonId = 3
      UI = 'normal'
    end
    item
      ButtonId = 4
      IconCls = 'action'
      ScreenMask.Enabled = True
      ScreenMask.WaitData = True
      ScreenMask.Message = 'Processando'
    end>
  OnTitleButtonClick = UnimFormTitleButtonClick
  TextHeight = 15
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object Camera: TUnimFSCamera
    Left = 0
    Top = 0
    Width = 360
    Height = 344
    Hint = ''
    CameraBorderDashed = 1
    CameraGetImageOnClick = True
    CameraDefault = Back
    Align = alClient
    ClientEvents.ExtEvents.Strings = (
      
        'resize=function resize(sender, info, eOpts) {   if(typeof resize' +
        'Canvas == '#39'function'#39') {      resizeCanvas();   }    ajaxRequest(' +
        'sender, "fs_camera_resize", []); } ')
    OnCameraOnGetImage = CameraCameraOnGetImage
    OnCameraError = CameraCameraError
  end
  object memLog: TUnimMemo
    Left = 0
    Top = 344
    Width = 360
    Height = 249
    Hint = ''
    Align = alBottom
    TabOrder = 1
  end
end
