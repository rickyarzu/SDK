object UniFormControlsStatusBar: TUniFormControlsStatusBar
  Left = 0
  Top = 0
  Width = 771
  Height = 623
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    771
    623)
  object UniPanel1: TUniPanel
    Left = 176
    Top = 152
    Width = 393
    Height = 321
    Hint = ''
    Anchors = []
    TabOrder = 0
    ShowCaption = False
    Caption = 'UniPanel1'
    object UniStatusBar1: TUniStatusBar
      Left = 1
      Top = 298
      Width = 391
      Hint = ''
      Panels = <
        item
          Text = 'Panel1'
          Width = 100
        end
        item
          Text = 'Panel2'
          Width = 100
        end
        item
          Text = 'Panel3'
          Width = 100
        end>
      SizeGrip = False
      Align = alBottom
      ParentColor = False
      Color = clBtnFace
      ExplicitTop = 105
      ExplicitWidth = 254
    end
  end
  object UniTimer1: TUniTimer
    Interval = 5000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 200
    Top = 88
  end
end
