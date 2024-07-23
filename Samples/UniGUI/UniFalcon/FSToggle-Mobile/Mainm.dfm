object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'MainmForm'
  TitleButtons = <>
  DesignSize = (
    320
    480)
  
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btn1: TUnimBitBtn
    Left = 143
    Top = 21
    Width = 138
    Height = 32
    Hint = ''
    Caption = 'Set True'
    OnClick = btn1Click
  end
  object tgl1: TUnimFSToggle
    Left = 32
    Top = 24
    Width = 100
    Height = 25
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
  end
  object tgl2: TUnimFSToggle
    Left = 32
    Top = 64
    Width = 100
    Height = 25
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Toggled = True
  end
  object tgl3: TUnimFSToggle
    Left = 32
    Top = 104
    Width = 100
    Height = 25
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
  end
  object tgl4: TUnimFSToggle
    Left = 32
    Top = 145
    Width = 100
    Height = 25
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
  end
  object tgl5: TUnimFSToggle
    Left = 32
    Top = 201
    Width = 257
    Height = 25
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Toggled = True
    Anchors = [akLeft, akTop, akRight]
  end
  object tgl6: TUnimFSToggle
    Left = 32
    Top = 249
    Width = 257
    Height = 25
    Hint = ''
    ThemeOn = Success
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Anchors = [akLeft, akTop, akRight]
  end
  object tgl7: TUnimFSToggle
    Left = 32
    Top = 302
    Width = 73
    Height = 25
    Hint = ''
    ThemeOn = Violet
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Toggled = True
  end
  object tgl8: TUnimFSToggle
    Left = 32
    Top = 342
    Width = 73
    Height = 25
    Hint = ''
    ThemeOn = Warning
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Toggled = True
  end
  object tgl9: TUnimFSToggle
    Left = 32
    Top = 382
    Width = 73
    Height = 25
    Hint = ''
    ThemeOn = Pinck
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Toggled = True
  end
  object tgl10: TUnimFSToggle
    Left = 32
    Top = 422
    Width = 73
    Height = 25
    Hint = ''
    ThemeOn = Black
    ThemeOff = Gray
    TitleOn = 'ON'
    TitleOff = 'OFF'
    Toggled = True
  end
end
