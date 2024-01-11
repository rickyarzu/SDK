object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 485
  ClientWidth = 808
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniSegmentedButton1: TUniSegmentedButton
    Left = 152
    Top = 59
    Width = 281
    Height = 57
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
    OnClick = UniSegmentedButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 488
    Top = 32
    Width = 273
    Height = 353
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 1
  end
  object UniSegmentedButton2: TUniSegmentedButton
    Left = 152
    Top = 147
    Width = 281
    Height = 57
    Hint = ''
    Items = <
      item
        Caption = 'Button1'
        ButtonId = 0
      end
      item
        Caption = 'Button2'
        ButtonId = 1
      end>
    AllowMultiple = True
    OnPressed = UniSegmentedButton2Pressed
  end
  object UniSegmentedButton3: TUniSegmentedButton
    Left = 152
    Top = 233
    Width = 281
    Height = 57
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
    OnClick = UniSegmentedButton1Click
  end
  object UniSegmentedButton4: TUniSegmentedButton
    Left = 152
    Top = 313
    Width = 281
    Height = 57
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
    OnPressed = UniSegmentedButton2Pressed
  end
  object UniLabel1: TUniLabel
    Left = 32
    Top = 103
    Width = 93
    Height = 13
    Hint = ''
    Caption = 'AllowToggle = True'
    TabOrder = 5
  end
  object UniLabel2: TUniLabel
    Left = 32
    Top = 191
    Width = 97
    Height = 13
    Hint = ''
    Caption = 'AllowMultiple = True'
    TabOrder = 6
  end
  object UniLabel3: TUniLabel
    Left = 32
    Top = 277
    Width = 96
    Height = 13
    Hint = ''
    Caption = 'AllowToggle = False'
    TabOrder = 7
  end
  object UniLabel4: TUniLabel
    Left = 32
    Top = 357
    Width = 100
    Height = 13
    Hint = ''
    Caption = 'AllowDepress = True'
    TabOrder = 8
  end
end
