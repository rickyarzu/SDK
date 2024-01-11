object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 294
  ClientWidth = 234
  Caption = 'MainForm'
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu, biMinimize]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 18
    Top = 48
    Width = 200
    Height = 25
    Hint = ''
    Caption = 'Send a file'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 18
    Top = 91
    Width = 200
    Height = 25
    Hint = ''
    Caption = 'Send multiple files'
    TabOrder = 1
    OnClick = UniButton2Click
  end
  object UniButton3: TUniButton
    Left = 18
    Top = 134
    Width = 200
    Height = 25
    Hint = ''
    Caption = 'Send Stream'
    TabOrder = 2
    OnClick = UniButton3Click
  end
  object UniButton4: TUniButton
    Left = 18
    Top = 177
    Width = 200
    Height = 25
    Hint = ''
    Caption = 'File with non-standard extension'
    TabOrder = 3
    OnClick = UniButton4Click
  end
  object UniButton5: TUniButton
    Left = 18
    Top = 220
    Width = 200
    Height = 25
    Hint = ''
    Caption = 'Send file as...'
    TabOrder = 4
    OnClick = UniButton5Click
  end
end
