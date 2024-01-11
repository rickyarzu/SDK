object UniThreadTimerThreadTimer: TUniThreadTimerThreadTimer
  Left = 0
  Top = 0
  Width = 463
  Height = 364
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    463
    364)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 0
    Width = 457
    Height = 361
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      457
      361)
    object UniButton1: TUniButton
      Left = 64
      Top = 88
      Width = 185
      Height = 25
      Hint = ''
      Caption = 'Show Counter Value'
      Anchors = []
      TabOrder = 0
      OnClick = UniButton1Click
    end
    object UniButton2: TUniButton
      Left = 64
      Top = 119
      Width = 185
      Height = 25
      Hint = ''
      Caption = 'Reset Counter'
      Anchors = []
      TabOrder = 1
      OnClick = UniButton2Click
    end
  end
  object UniThreadTimer1: TUniThreadTimer
    OnTimer = UniThreadTimer1Timer
    Enabled = True
    Interval = 10
    Left = 336
    Top = 104
  end
end
