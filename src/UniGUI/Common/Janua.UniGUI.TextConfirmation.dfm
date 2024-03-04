object frameUniGUITextConfirmation: TframeUniGUITextConfirmation
  Left = 0
  Top = 0
  ClientHeight = 0
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    280
    0)
  TextHeight = 15
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
