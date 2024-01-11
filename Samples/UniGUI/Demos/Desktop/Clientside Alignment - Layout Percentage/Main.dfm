object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 538
  ClientWidth = 792
  Caption = 'MainForm - Layout hbox'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'hbox'
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 256
    Height = 538
    Hint = ''
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 0
    Caption = 'UniPanel1 - Width 25%'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '25%'
    LayoutConfig.DockWhenAligned = False
    ExplicitLeft = -88
  end
  object UniPanel3: TUniPanel
    Left = 256
    Top = 0
    Width = 280
    Height = 538
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    Caption = 'UniPanel3 - Width 50% - Layout border'
    Layout = 'border'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '50%'
    LayoutConfig.DockWhenAligned = False
    ExplicitLeft = 200
    ExplicitTop = 336
    ExplicitWidth = 256
    ExplicitHeight = 128
    object UniPanel4: TUniPanel
      Left = 1
      Top = 1
      Width = 278
      Height = 128
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      Caption = 'UniPanel4 - Region north - Height 25%'
      LayoutConfig.Height = '25%'
      LayoutConfig.Region = 'north'
      ExplicitLeft = 18
      ExplicitTop = 40
      ExplicitWidth = 256
    end
    object UniPanel5: TUniPanel
      Left = 1
      Top = 410
      Width = 278
      Height = 128
      Hint = ''
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 2
      Caption = 'UniPanel5 - Region south - Height 25%'
      LayoutConfig.Height = '25%'
      LayoutConfig.Region = 'south'
      ExplicitLeft = 6
      ExplicitTop = 352
      ExplicitWidth = 256
    end
  end
  object UniPanel2: TUniPanel
    Left = 536
    Top = 0
    Width = 256
    Height = 538
    Hint = ''
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    TabOrder = 1
    Caption = 'UniPanel2 - Width 25%'
    LayoutConfig.Height = '100%'
    LayoutConfig.Width = '25%'
    LayoutConfig.DockWhenAligned = False
    ExplicitLeft = 192
    ExplicitTop = 136
    ExplicitHeight = 128
  end
end
