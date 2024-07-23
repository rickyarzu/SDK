object frmComboNumbers: TfrmComboNumbers
  Left = 0
  Top = 0
  ClientHeight = 320
  ClientWidth = 352
  Caption = 'frmComboNumbers'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object cmb1: TUniFSComboBox
    Left = 40
    Top = 104
    Width = 273
    Height = 29
    Hint = ''
    Text = ''
    ParentFont = False
    Font.Height = -16
    TabOrder = 1
    AnyMatch = True
    IconItems = <>
    Value = '-1'
  end
  object btnGetValue: TUniBitBtn
    Left = 40
    Top = 152
    Width = 273
    Height = 41
    Hint = ''
    Caption = 'Get Value'
    ParentFont = False
    Font.Height = -16
    TabOrder = 2
    OnClick = btnGetValueClick
  end
  object btnSetValue: TUniBitBtn
    Left = 40
    Top = 216
    Width = 273
    Height = 41
    Hint = ''
    Caption = 'SetValue - Teste 12'
    ParentFont = False
    Font.Height = -16
    TabOrder = 3
    OnClick = btnSetValueClick
  end
  object btnLoadCombo: TUniBitBtn
    Left = 40
    Top = 48
    Width = 273
    Height = 41
    Hint = ''
    Caption = 'Load Combo'
    ParentFont = False
    Font.Height = -16
    TabOrder = 0
    OnClick = btnLoadComboClick
  end
end
