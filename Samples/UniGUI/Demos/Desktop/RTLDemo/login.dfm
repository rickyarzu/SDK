object UniLoginForm1: TUniLoginForm1
  Left = 0
  Top = 0
  ClientHeight = 203
  ClientWidth = 395
  Caption = #1608#1585#1608#1583' '#1576#1607' '#1587#1575#1740#1578
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniEdit1
  RTL = True
  OnCreate = UniLoginFormCreate
  DesignSize = (
    395
    203)
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 8
    Top = 170
    Width = 75
    Height = 25
    Hint = ''
    Caption = #1608#1585#1608#1583
    Anchors = [akLeft, akBottom]
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 0
    ScreenMask.Enabled = True
    ScreenMask.ShowMessage = False
    OnClick = UniButton1Click
    ExplicitTop = 168
  end
  object UniButton2: TUniButton
    Left = 312
    Top = 170
    Width = 75
    Height = 25
    Hint = ''
    Caption = #1582#1585#1608#1580
    Anchors = [akRight, akBottom]
    TabOrder = 1
    OnClick = UniButton2Click
    ExplicitLeft = 441
    ExplicitTop = 168
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 395
    Height = 164
    Hint = ''
    ShowCaption = False
    Caption = 'UniPanel1'
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    ExplicitWidth = 526
    ExplicitHeight = 162
    object UniEdit1: TUniEdit
      Left = 128
      Top = 24
      Width = 160
      Hint = ''
      Text = 'UniEdit1'
      TabOrder = 1
      Color = clWindow
    end
    object UniEdit2: TUniEdit
      Left = 128
      Top = 74
      Width = 160
      Hint = ''
      Text = 'UniEdit2'
      TabOrder = 2
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 56
      Top = 33
      Width = 60
      Height = 13
      Hint = ''
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1583#1740
      ParentFont = False
      Font.Color = clNavy
      Font.Style = [fsBold]
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 56
      Top = 83
      Width = 43
      Height = 13
      Hint = ''
      Caption = #1585#1605#1586' '#1593#1576#1608#1585
      ParentFont = False
      Font.Color = clNavy
      Font.Style = [fsBold]
      TabOrder = 4
    end
  end
end
