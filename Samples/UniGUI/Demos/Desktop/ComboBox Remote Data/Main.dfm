object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 466
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniComboBox1: TUniComboBox
    Left = 128
    Top = 48
    Width = 225
    Hint = ''
    Text = 'UniComboBox1'
    TabOrder = 0
    RemoteQuery = True
  end
  object UniButton1: TUniButton
    Left = 128
    Top = 112
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Change data'
    TabOrder = 1
    OnClick = UniButton1Click
  end
end
