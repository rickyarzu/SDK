object frameTimeSelect: TframeTimeSelect
  Left = 0
  Top = 0
  Width = 640
  Height = 28
  Font.Height = -12
  TabOrder = 0
  object tgSelected: TUniFSToggle
    Left = 256
    Top = 3
    Width = 51
    Height = 24
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    OnToggled = tgSelectedToggled
  end
  object ulbTime: TUniLabel
    Left = 128
    Top = 8
    Width = 27
    Height = 13
    Hint = ''
    Caption = '10:30'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 1
  end
  object ulbDate: TUniLabel
    Left = 3
    Top = 8
    Width = 86
    Height = 15
    Hint = ''
    AutoSize = False
    Caption = '18/11/2023'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 2
  end
  object imgBooked: TUniImage
    Left = 256
    Top = 1
    Width = 51
    Height = 25
    Hint = ''
    Visible = False
    Stretch = True
    ImageIndex = 0
  end
  object ulbDeliveryTime: TUniLabel
    Left = 184
    Top = 8
    Width = 27
    Height = 13
    Hint = ''
    Caption = '11:00'
    ParentColor = False
    Color = clBtnFace
    TabOrder = 4
  end
end
