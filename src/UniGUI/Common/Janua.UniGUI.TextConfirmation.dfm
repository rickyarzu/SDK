object frameUniGUITextConfirmation: TframeUniGUITextConfirmation
  Left = 0
  Top = 0
  Width = 296
  Height = 24
  TabOrder = 0
  DesignSize = (
    296
    24)
  object tgSelected: TUniFSToggle
    Left = 245
    Top = 0
    Width = 51
    Height = 24
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Anchors = [akTop, akRight]
  end
  object ulbTime: TUniLabel
    Left = 3
    Top = 3
    Width = 236
    Height = 16
    Hint = ''
    AutoSize = False
    Caption = 'ulbTime'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    ParentColor = False
    Color = clBtnFace
    TabOrder = 1
  end
end
