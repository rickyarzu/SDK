object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 609
  ClientWidth = 813
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 56
    Top = 48
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Start'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniProgressBar1: TUniProgressBar
    Left = 56
    Top = 448
    Width = 401
    Hint = ''
    Max = 4
    Text = ''
    TabOrder = 1
  end
  object UniLabel1: TUniLabel
    Left = 56
    Top = 152
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'UniLabel1'
    TabOrder = 2
  end
  object UniLabel2: TUniLabel
    Left = 56
    Top = 264
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'UniLabel2'
    TabOrder = 3
  end
  object UniLabel3: TUniLabel
    Left = 56
    Top = 376
    Width = 46
    Height = 13
    Hint = ''
    Caption = 'UniLabel3'
    TabOrder = 4
  end
  object UniImage1: TUniImage
    Left = 208
    Top = 192
    Width = 265
    Height = 153
    Hint = ''
    Visible = False
    Center = True
    Proportional = True
  end
end
