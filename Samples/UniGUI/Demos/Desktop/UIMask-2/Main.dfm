object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 290
  ClientWidth = 634
  Caption = 'MainForm'
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ScreenMask.Opacity = 0.500000000000000000
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 88
    Top = 41
    Width = 120
    Height = 25
    Hint = ''
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Please Wait...'
    ScreenMask.Target = Owner
    ScreenMask.Opacity = 0.500000000000000000
    Caption = 'Form'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 88
    Top = 97
    Width = 120
    Height = 25
    Hint = ''
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Please Wait...'
    ScreenMask.Color = 16744448
    ScreenMask.Opacity = 0.500000000000000000
    Caption = 'Different Color'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniPanel1: TUniPanel
    Left = 256
    Top = 24
    Width = 305
    Height = 233
    Hint = ''
    ScreenMask.Target = UniPanel1
    ScreenMask.Opacity = 0.500000000000000000
    Caption = 'UniPanel1'
    TabOrder = 2
  end
  object UniButton4: TUniButton
    Left = 88
    Top = 153
    Width = 120
    Height = 25
    Hint = ''
    ScreenMask.Enabled = True
    ScreenMask.Message = 'Loading...'
    ScreenMask.Target = UniPanel1
    ScreenMask.Color = clLime
    ScreenMask.Opacity = 0.500000000000000000
    Caption = 'Panel'
    TabOrder = 3
    OnClick = UniButton1Click
  end
  object UniButton3: TUniButton
    Left = 88
    Top = 209
    Width = 120
    Height = 25
    Hint = ''
    ScreenMask.Enabled = True
    ScreenMask.ShowMessage = False
    ScreenMask.Color = 16744576
    ScreenMask.Opacity = 0.500000000000000000
    Caption = 'No Message'
    TabOrder = 4
    OnClick = UniButton1Click
  end
end
