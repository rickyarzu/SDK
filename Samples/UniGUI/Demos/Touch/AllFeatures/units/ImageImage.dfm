object UniImageImage: TUniImageImage
  Left = 0
  Top = 0
  Width = 349
  Height = 452
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 452
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    object UnimImage1: TUnimImage
      Left = 0
      Top = 0
      Width = 349
      Height = 452
      Hint = ''
      Align = alClient
      Center = True
      AutoSize = True
      Stretch = True
      Anchors = [akLeft, akTop, akRight, akBottom]
    end
  end
  object UnimTimer1: TUnimTimer
    Interval = 2000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UnimTimer1Timer
    Left = 200
    Top = 56
  end
end
