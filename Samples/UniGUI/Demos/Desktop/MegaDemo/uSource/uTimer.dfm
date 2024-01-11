object uTimerFrame: TuTimerFrame
  Left = 0
  Top = 0
  Width = 437
  Height = 288
  Color = clBtnFace
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  Font.Charset = DEFAULT_CHARSET
  Font.Height = -11
  Font.Name = 'Tahoma'
  TabOrder = 0
  DesignSize = (
    437
    288)
  object UniPanel1: TUniPanel
    Left = 10
    Top = 10
    Width = 418
    Height = 267
    BorderStyle = ubsFrameLowered
    Alignment = taCenter
    ShowCaption = True
    Anchors = []
    Color = clWhite
    TabOrder = 0
    DesignSize = (
      418
      267)
    object UniLabel1: TUniLabel
      Left = 200
      Top = 109
      Width = 18
      Height = 35
      Caption = '0'
      Anchors = []
      ParentFont = False
      Font.Charset = TURKISH_CHARSET
      Font.Color = clNavy
      Font.Height = -29
      Font.Name = 'Verdana'
      Color = clBtnFace
    end
  end
  object UniTimer1: TUniTimer
    OnTimer = UniTimer1Timer
    Interval = 1000
    Enabled = True
    RunOnce = False
    Left = 40
    Top = 48
  end
end
