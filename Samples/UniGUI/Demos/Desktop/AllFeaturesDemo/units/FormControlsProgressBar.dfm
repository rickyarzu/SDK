object UniFormControlsProgressBar: TUniFormControlsProgressBar
  Left = 0
  Top = 0
  Width = 527
  Height = 182
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    527
    182)
  object UniContainerPanel1: TUniContainerPanel
    Left = 3
    Top = 3
    Width = 521
    Height = 174
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    object UniProgressBar1: TUniProgressBar
      Left = 104
      Top = 64
      Width = 329
      Hint = ''
      Text = ''
      TabOrder = 0
    end
    object UniButton1: TUniButton
      Left = 209
      Top = 112
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Start Loading'
      TabOrder = 1
      OnClick = UniButton1Click
    end
    object UniLabel1: TUniLabel
      Left = 248
      Top = 32
      Width = 20
      Height = 13
      Hint = ''
      Caption = '% 0'
      TabOrder = 3
    end
  end
  object UniTimer1: TUniTimer
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 451
    Top = 115
  end
end
