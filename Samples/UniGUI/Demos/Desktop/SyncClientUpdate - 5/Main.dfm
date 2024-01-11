object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 566
  ClientWidth = 613
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 528
    Top = 10
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Start'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 528
    Top = 41
    Width = 75
    Height = 25
    Hint = ''
    Enabled = False
    Caption = 'Press!'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniPanel1: TUniPanel
    Left = 5
    Top = 5
    Width = 96
    Height = 87
    Hint = ''
    TabOrder = 2
    Caption = 'UniPanel1'
    Color = 16744576
  end
  object UniButton3: TUniButton
    Left = 528
    Top = 72
    Width = 75
    Height = 25
    Hint = ''
    Enabled = False
    Caption = 'Stop'
    TabOrder = 3
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 528
    Top = 144
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Start No Wait'
    TabOrder = 4
    OnClick = UniButton4Click
  end
end
