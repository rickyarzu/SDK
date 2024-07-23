object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 325
  ClientWidth = 641
  Caption = 'MainForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  DesignSize = (
    641
    325)
  TextHeight = 13
  object btn1: TUniFSButton
    Left = 216
    Top = 96
    Width = 225
    Height = 32
    Hint = ''
    StyleButton = GoogleGreen
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Marker Change Position'
    Anchors = []
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    TabOrder = 0
    OnClick = btn1Click
  end
  object btn2: TUniFSButton
    Left = 216
    Top = 149
    Width = 225
    Height = 32
    Hint = ''
    StyleButton = GoogleGreen
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Marker Change Position'
    Anchors = []
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    TabOrder = 1
  end
  object btn3: TUniFSButton
    Left = 216
    Top = 200
    Width = 225
    Height = 32
    Hint = ''
    StyleButton = GoogleGreen
    BadgeText.Text = '0'
    BadgeText.TextColor = '#FFFFFF'
    BadgeText.TextSize = 10
    BadgeText.TextStyle = 'bold'
    BadgeText.BackgroundColor = '#D50000'
    Caption = 'Marker Image Icons'
    Anchors = []
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -13
    TabOrder = 2
    OnClick = btn3Click
  end
end
