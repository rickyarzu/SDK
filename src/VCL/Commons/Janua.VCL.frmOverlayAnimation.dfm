object frmVCLOverlayAnimation: TfrmVCLOverlayAnimation
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 124
  ClientWidth = 776
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  DesignSize = (
    776
    124)
  TextHeight = 13
  object pbAnimation: TProgressBar
    Left = 32
    Top = 32
    Width = 713
    Height = 57
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object tmrAnimations: TTimer
    Interval = 200
    OnTimer = tmrAnimationsTimer
    Left = 248
    Top = 80
  end
end
