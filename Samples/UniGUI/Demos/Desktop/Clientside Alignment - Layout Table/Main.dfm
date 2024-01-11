object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 798
  Height = 638
  Caption = 'MainForm'
  WindowState = wsMaximized
  OldCreateOrder = False
  Visible = True
  AutoScroll = True
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  Layout = 'fit'
  LayoutConfig.BodyPadding = '30'
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 574
    Hint = ''
    ParentColor = False
    Color = clSilver
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Layout = 'table'
    LayoutAttribs.Columns = 3
    ExplicitWidth = 120
    ExplicitHeight = 0
  end
  object UniButton1: TUniButton
    Left = 0
    Top = 574
    Width = 782
    Height = 25
    Hint = ''
    Caption = 'Add Cell Into Table'
    Anchors = [akLeft, akRight, akBottom]
    Align = alBottom
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 1
    OnClick = UniButton1Click
    ExplicitTop = 0
    ExplicitWidth = 120
  end
end
