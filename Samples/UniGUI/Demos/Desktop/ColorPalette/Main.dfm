object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 471
  ClientWidth = 635
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'border'
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 169
    Top = 0
    Width = 466
    Height = 452
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Caption = 'UniPanel1'
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    Layout = 'anchor'
    LayoutConfig.Region = 'center'
    ExplicitHeight = 280
  end
  object UniColorPalette1: TUniColorPalette
    Left = 0
    Top = 0
    Width = 169
    Height = 452
    Hint = ''
    Color = clGreen
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    LayoutConfig.Split = True
    LayoutConfig.Region = 'west'
    OnSelect = UniColorPalette1Select
    ExplicitHeight = 280
  end
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 452
    Width = 635
    Height = 19
    Hint = ''
    Panels = <
      item
        Width = 50
      end>
    SizeGrip = False
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    ParentColor = False
    Color = clWindow
    ExplicitTop = 280
  end
end
