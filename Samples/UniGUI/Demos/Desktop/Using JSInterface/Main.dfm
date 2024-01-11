object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 536
  ClientWidth = 867
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 48
    Top = 32
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton1'
    TabOrder = 0
  end
  object UniButton2: TUniButton
    Left = 48
    Top = 72
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton2'
    TabOrder = 1
  end
  object UniPanel1: TUniPanel
    Left = 48
    Top = 184
    Width = 256
    Height = 128
    Hint = ''
    TabOrder = 2
    Caption = 'UniPanel1'
    object UniButton3: TUniButton
      Left = 72
      Top = 100
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'UniButton3'
      TabOrder = 1
    end
  end
  object UniPanel2: TUniPanel
    Left = 48
    Top = 360
    Width = 537
    Height = 128
    Hint = ''
    TabOrder = 3
    ShowCaption = False
    Caption = 'UniPanel2'
  end
  object UniButton4: TUniButton
    Left = 400
    Top = 64
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'JSCall'
    TabOrder = 4
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 400
    Top = 104
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'JSCallGlobal'
    TabOrder = 5
    OnClick = UniButton5Click
  end
  object UniButton6: TUniButton
    Left = 48
    Top = 111
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'UniButton6'
    TabOrder = 6
  end
end
