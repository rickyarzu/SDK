object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 379
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 152
    Top = 338
    Width = 401
    Height = 13
    Hint = ''
    Caption = 
      'In MainModule "EnableSynchronousOperations" property must be Tru' +
      'e'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object UniProgressBar1: TUniProgressBar
    Left = 64
    Top = 40
    Width = 529
    Hint = ''
    Text = ''
    TabOrder = 1
  end
  object UniButton1: TUniButton
    Left = 64
    Top = 67
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Start'
    TabOrder = 2
    OnClick = UniButton1Click
  end
  object UniLabel2: TUniLabel
    Left = 64
    Top = 21
    Width = 529
    Height = 13
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 'UniLabel2'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 3
  end
  object UniButton2: TUniButton
    Left = 145
    Top = 67
    Width = 75
    Height = 25
    Hint = ''
    Enabled = False
    Caption = 'Cancel'
    TabOrder = 4
    OnClick = UniButton2Click
  end
end
