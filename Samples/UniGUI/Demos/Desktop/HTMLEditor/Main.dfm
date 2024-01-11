object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 544
  ClientWidth = 603
  Color = clBtnFace
  OldCreateOrder = False
  OnCreate = UniFormCreate
  MonitoredKeys.Keys = <>
  DesignSize = (
    603
    544)
  PixelsPerInch = 96
  TextHeight = 13
  object UniMemo1: TUniMemo
    Left = 24
    Top = 285
    Width = 563
    Height = 246
    Anchors = [akLeft, akRight, akBottom]
    Color = clWindow
    TabOrder = 0
    ExplicitTop = 282
    ExplicitWidth = 559
  end
  object UniButton1: TUniButton
    Left = 24
    Top = 10
    Width = 125
    Height = 25
    Caption = 'Show/Hide Toolbar'
    TabOrder = 1
    OnClick = UniButton1Click
  end
  object UniButton2: TUniButton
    Left = 204
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Get HTML'
    Anchors = [akBottom]
    TabOrder = 2
    OnClick = UniButton2Click
    ExplicitLeft = 202
    ExplicitTop = 251
  end
  object UniButton3: TUniButton
    Left = 299
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Set HTML'
    Anchors = [akBottom]
    TabOrder = 3
    OnClick = UniButton3Click
    ExplicitLeft = 297
    ExplicitTop = 251
  end
  object UniHTMLMemo1: TUniHTMLMemo
    Left = 24
    Top = 41
    Width = 563
    Height = 207
    Lines.Strings = (
      'UniHTMLMemo1')
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clWindow
    TabOrder = 4
    ExplicitWidth = 559
    ExplicitHeight = 204
  end
end
