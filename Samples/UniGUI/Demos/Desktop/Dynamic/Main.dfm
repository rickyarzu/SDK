object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 208
  ClientWidth = 339
  Caption = 'MainForm'
  Position = poDesktopCenter
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 10
    Top = 8
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Start'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 189
    Width = 339
    Height = 19
    Hint = ''
    Panels = <>
    SizeGrip = True
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clBtnFace
  end
end
