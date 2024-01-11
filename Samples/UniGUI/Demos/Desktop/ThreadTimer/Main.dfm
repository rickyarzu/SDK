object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 104
    Top = 40
    Width = 185
    Height = 25
    Hint = ''
    Caption = 'Show Counter Value'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 104
    Top = 71
    Width = 185
    Height = 25
    Hint = ''
    Caption = 'Reset Counter'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniThreadTimer1: TUniThreadTimer
    OnTimer = UniThreadTimer1Timer
    Enabled = True
    Interval = 10
    Left = 424
    Top = 72
  end
end
