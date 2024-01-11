object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  Menu = UniMainMenu1
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 292
    Width = 643
    Height = 19
    Hint = ''
    Panels = <>
    SizeGrip = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clWindow
    ExplicitLeft = 120
    ExplicitTop = 304
    ExplicitWidth = 0
  end
  object UniMainMenu1: TUniMainMenu
    Left = 264
    Top = 104
    object Menu1: TUniMenuItem
      Caption = 'Menu'
      object MenuItem11: TUniMenuItem
        Caption = 'Menu Item-1'
      end
      object Exit1: TUniMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
end
