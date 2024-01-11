object UniFormControlsLabel: TUniFormControlsLabel
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
    object UnimLabel1: TUnimLabel
      Left = 60
      Top = 16
      Width = 225
      Height = 23
      Hint = ''
      ParentRTL = False
      AutoSize = False
      Caption = 'Default'
    end
    object UnimLabel3: TUnimLabel
      Left = 60
      Top = 74
      Width = 225
      Height = 32
      Hint = ''
      AutoSize = False
      Caption = 
        '<a href="http://forums.unigui.com/" target="_blank">UniGui Forum' +
        '</a>'
      ParentColor = False
      Color = clAqua
    end
  end
end
