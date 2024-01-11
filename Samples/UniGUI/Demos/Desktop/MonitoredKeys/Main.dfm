object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 506
  ClientWidth = 616
  Color = clBtnFace
  KeyPreview = True
  OldCreateOrder = False
  OnKeyDown = UniFormKeyDown
  MonitoredKeys.Enabled = True
  MonitoredKeys.KeyHandleAll = False
  MonitoredKeys.Keys = <
    item
      KeyStart = 112
      KeyEnd = 123
      HandleBrowser = False
    end
    item
      KeyStart = 88
      KeyEnd = 88
    end>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 80
    Top = 40
    Width = 354
    Height = 13
    Caption = 'Function Keys (F1 .. F12), ALT and X are monitored by this Form'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 0
  end
  object UniMemo1: TUniMemo
    Left = 80
    Top = 59
    Width = 393
    Height = 386
    ReadOnly = True
    Color = clWindow
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 80
    Top = 451
    Width = 110
    Height = 13
    Caption = 'Press ALT+X to Exit'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 2
  end
end
