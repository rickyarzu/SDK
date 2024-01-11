object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 65
  ClientWidth = 688
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniComboBox1: TUniComboBox
    Left = 24
    Top = 11
    Width = 281
    Hint = ''
    Text = ''
    Items.Strings = (
      'Customer Information'
      'Employee Information'
      'Products'
      'Suppliers'
      'Orders')
    TabOrder = 0
    FieldLabel = 'Select Report:'
    OnChange = UniComboBox1Change
  end
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 328
    Top = 11
    Width = 201
    Hint = ''
    ListSource = DataSource1
    ListFieldIndex = 0
    TabOrder = 1
    Color = clWindow
    FieldLabel = 'Report ID:'
  end
  object UniButton1: TUniButton
    Left = 552
    Top = 8
    Width = 105
    Height = 25
    Hint = ''
    Caption = 'Show Report'
    TabOrder = 2
    OnClick = UniButton1Click
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ADOQuery1
    Left = 376
    Top = 16
  end
end
