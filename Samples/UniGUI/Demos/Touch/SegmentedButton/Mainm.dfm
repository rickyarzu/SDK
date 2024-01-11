object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 688
  Caption = 'MainmForm'
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimMemo1: TUnimMemo
    Left = 439
    Top = 8
    Width = 218
    Height = 457
    Hint = ''
    Lines.Strings = (
      'UnimMemo1')
    TabOrder = 4
  end
  object UnimLabel1: TUnimLabel
    Left = 8
    Top = 11
    Width = 185
    Height = 25
    Hint = ''
    AutoSize = False
    Caption = 'AllowToggle = True'
    ParentFont = False
  end
  object UnimSegmentedButton1: TUnimSegmentedButton
    Left = 8
    Top = 40
    Width = 425
    Height = 73
    Hint = ''
    Items = <
      item
        Caption = 'Button1'
        ButtonId = 0
      end
      item
        Caption = 'Button2'
        ButtonId = 1
      end
      item
        Caption = 'Button3'
        ButtonId = 2
      end>
    OnClick = UnimSegmentedButton1Click
  end
  object UnimLabel2: TUnimLabel
    Left = 8
    Top = 130
    Width = 195
    Height = 25
    Hint = ''
    AutoSize = False
    Caption = 'AllowMultiple = True'
    ParentFont = False
  end
  object UnimSegmentedButton2: TUnimSegmentedButton
    Left = 8
    Top = 159
    Width = 425
    Height = 73
    Hint = ''
    Items = <
      item
        Caption = 'Button1'
        ButtonId = 0
      end
      item
        Caption = 'Button2'
        ButtonId = 1
      end
      item
        Caption = 'Button3'
        ButtonId = 2
      end>
    AllowMultiple = True
    OnPressed = UnimSegmentedButton2Pressed
  end
  object UnimLabel3: TUnimLabel
    Left = 8
    Top = 249
    Width = 189
    Height = 25
    Hint = ''
    AutoSize = False
    Caption = 'AllowToggle = False'
    ParentFont = False
  end
  object UnimSegmentedButton3: TUnimSegmentedButton
    Left = 8
    Top = 278
    Width = 425
    Height = 73
    Hint = ''
    Items = <
      item
        Caption = 'Button1'
        ButtonId = 0
      end
      item
        Caption = 'Button2'
        ButtonId = 1
      end
      item
        Caption = 'Button3'
        ButtonId = 2
      end>
    AllowToggle = False
    OnClick = UnimSegmentedButton1Click
  end
  object UnimLabel4: TUnimLabel
    Left = 8
    Top = 363
    Width = 196
    Height = 25
    Hint = ''
    AutoSize = False
    Caption = 'AllowDepress = True'
    ParentFont = False
  end
  object UnimSegmentedButton4: TUnimSegmentedButton
    Left = 8
    Top = 392
    Width = 425
    Height = 73
    Hint = ''
    Items = <
      item
        Caption = 'Button1'
        ButtonId = 0
      end
      item
        Caption = 'Button2'
        ButtonId = 1
      end
      item
        Caption = 'Button3'
        ButtonId = 2
      end>
    AllowDepress = True
    OnPressed = UnimSegmentedButton2Pressed
  end
end
