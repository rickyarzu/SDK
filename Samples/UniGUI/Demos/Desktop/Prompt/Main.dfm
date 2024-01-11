object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ScreenMask.Enabled = True
  ScreenMask.Message = 'Please Wait...'
  ScreenMask.Color = 8453888
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 224
    Top = 8
    Width = 185
    Height = 25
    Hint = ''
    Caption = 'Prompt'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniMemo1: TUniMemo
    Left = 224
    Top = 132
    Width = 185
    Height = 169
    Hint = ''
    TabOrder = 1
  end
  object UniButton2: TUniButton
    Left = 224
    Top = 39
    Width = 185
    Height = 25
    Hint = ''
    Caption = 'Prompt Multiline'
    TabOrder = 2
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 224
    Top = 70
    Width = 185
    Height = 25
    Hint = ''
    Caption = 'Prompt Password'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 224
    Top = 101
    Width = 185
    Height = 25
    Hint = ''
    Caption = 'Prompt With Screen Mask'
    TabOrder = 4
    OnClick = UniButton4Click
  end
end
