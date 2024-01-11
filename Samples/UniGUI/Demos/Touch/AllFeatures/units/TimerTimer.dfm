object UniTimerTimer: TUniTimerTimer
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 320
    Height = 240
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    object UnimButton1: TUnimButton
      Left = 48
      Top = 3
      Width = 225
      Height = 47
      Hint = ''
      Caption = 'Stop'
      OnClick = UnimButton1Click
    end
    object UnimLabel1: TUnimLabel
      Left = 48
      Top = 168
      Width = 225
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = '0'
    end
  end
  object UnimTimer1: TUnimTimer
    OnTimer = UnimTimer1Timer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 192
    Top = 56
  end
end
