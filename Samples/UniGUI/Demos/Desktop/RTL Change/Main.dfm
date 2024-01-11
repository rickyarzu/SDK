object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 311
  ClientWidth = 643
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniRadioGroup1: TUniRadioGroup
    Left = 192
    Top = 64
    Width = 185
    Height = 121
    Hint = ''
    Items.Strings = (
      'Left to Right'
      'Right to Left')
    Caption = 'UniRadioGroup1'
    TabOrder = 0
    Columns = 1
    OnClick = UniRadioGroup1Click
  end
end
