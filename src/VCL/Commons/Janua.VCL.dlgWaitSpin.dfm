object dlgVCLWaitSpin: TdlgVCLWaitSpin
  Left = 0
  Top = 0
  AlphaBlend = True
  AlphaBlendValue = 200
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 318
  ClientWidth = 456
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  StyleElements = [seFont]
  OnShow = FormShow
  DesignSize = (
    456
    318)
  TextHeight = 13
  object scActivityIndicator1: TscActivityIndicator
    Left = 168
    Top = 81
    Width = 120
    Height = 120
    Anchors = []
    FluentUIOpaque = False
    TabOrder = 0
    IndicatorColor = clHighlight
    Active = False
    Kind = scaikPoints
    Scaled = True
  end
  object scGPProgressBar1: TscGPProgressBar
    Left = 76
    Top = 247
    Width = 300
    Height = 5
    Anchors = []
    FluentUIOpaque = False
    TabOrder = 1
    Vertical = False
    AnimationMode = False
    Active = False
    TransparentBackground = True
    FrameAlpha = 125
    ProgressAlpha = 255
    FrameColor = clBtnShadow
    ProgressColor = clHighlight
    MinValue = 0
    MaxValue = 30
    Value = 0
  end
  object tmrTimer: TTimer
    OnTimer = tmrTimerTimer
    Left = 368
    Top = 120
  end
end
