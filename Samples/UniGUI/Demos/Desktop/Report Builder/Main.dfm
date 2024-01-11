object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 181
  ClientWidth = 533
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniButton1: TUniButton
    Left = 136
    Top = 40
    Width = 116
    Height = 28
    Hint = ''
    Caption = 'Show The Invoice'
    TabOrder = 0
    OnClick = UniButton1Click
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 136
    Top = 13
    Width = 193
    Hint = ''
    ListField = 'InvNum'
    ListSource = UniMainModule.DataSource2
    KeyField = 'InvNum'
    ListFieldIndex = 0
    TabOrder = 1
    ParentColor = False
    Color = clWindow
    Triggers = <>
  end
  object UniLabel1: TUniLabel
    Left = 25
    Top = 13
    Width = 105
    Height = 16
    Hint = ''
    Caption = 'Invoice Number:'
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
    TabOrder = 2
  end
end
