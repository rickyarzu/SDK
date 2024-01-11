object uRadioButtonFrame: TuRadioButtonFrame
  Left = 0
  Top = 0
  Width = 320
  Height = 240
  Align = alNone
  Anchors = [akLeft, akTop]
  ShowHint = False
  Visible = True
  TabOrder = 0
  ParentRTL = False
  RTL = False
  object UniRadioButton1: TUniRadioButton
    Left = 24
    Top = 24
    Width = 121
    Height = 17
    Hint = ''
    Caption = 'UniRadioButton1'
    TabOrder = 0
    ParentFont = False
    Font.Color = clNavy
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
  end
  object UniRadioButton2: TUniRadioButton
    Left = 168
    Top = 24
    Width = 113
    Height = 17
    Hint = ''
    Caption = 'UniRadioButton2'
    TabOrder = 1
    ParentFont = False
    Font.Color = clBlue
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
  end
  object UniRadioGroup1: TUniRadioGroup
    Left = 24
    Top = 64
    Width = 241
    Height = 153
    Hint = ''
    Items.Strings = (
      'A'
      'B'
      'C'
      'D')
    Caption = 'UniRadioGroup1'
    TabOrder = 2
    ParentFont = False
    Font.Color = clBlue
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
  end
end
