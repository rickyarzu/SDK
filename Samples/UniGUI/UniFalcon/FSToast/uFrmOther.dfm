object frmOther: TfrmOther
  Left = 0
  Top = 0
  ClientHeight = 262
  ClientWidth = 418
  Caption = 'frmOther'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    418
    262)
  
  TextHeight = 13
  object btnToast: TUniBitBtn
    Left = 152
    Top = 200
    Width = 113
    Height = 25
    Hint = ''
    Caption = 'Toast'
    Anchors = []
    TabOrder = 0
    OnClick = btnToastClick
  end
  object Toast: TUniFSToast
    TitleSize = 13
    TitleLineHeight = 0
    MsgSize = 12
    MsgLineHeight = 0
    Theme = Dark
    ImageWidth = 0
    MaxWidth = 0
    zIndex = 99999
    Layout = SmallInt
    Balloon = False
    Close = True
    CloseOnEscape = False
    RTL = False
    Position = bottomRight
    TimeOut = 5000
    Drag = True
    Overlay = False
    ToastOnce = False
    PauseOnHover = True
    ResetOnHover = False
    ProgressBar = True
    ProgressBarColor = 'rgb(0, 255, 184)'
    ScreenMask.Enabled = False
    Animateinside = True
    TransitionIn = fadeInUp
    TransitionOut = fadeOut
    TransitionInMobile = fadeInUp
    TransitionOutMobile = fadeOutDown
    ButtonTextYes = 'Confirma'
    ButtonTextNo = 'Cancela'
    Left = 32
    Top = 8
  end
end
