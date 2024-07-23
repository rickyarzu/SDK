object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btnSucess: TUnimButton
    Left = 0
    Top = 0
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Success'
    OnClick = btnSucessClick
  end
  object btnInfo: TUnimButton
    Left = 0
    Top = 47
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Info'
    OnClick = btnInfoClick
  end
  object btnCustom: TUnimButton
    Left = 0
    Top = 94
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Custom'
    OnClick = btnCustomClick
  end
  object btnQuestion: TUnimButton
    Left = 0
    Top = 141
    Width = 320
    Height = 47
    Hint = ''
    Align = alTop
    Caption = 'Question'
    OnClick = btnQuestionClick
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
    Left = 144
    Top = 368
  end
end
