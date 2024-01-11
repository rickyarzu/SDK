object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 672
  ClientWidth = 561
  Caption = 'MainmForm'
  TitleButtons = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UniDBLookupComboBox2: TUnimDBLookupComboBox
    Left = 16
    Top = 8
    Width = 516
    Hint = ''
    Text = ''
    FieldLabel = 'ListSource only'
    FieldLabelWidth = 40
    TabOrder = 1
    ListField = 'CustNo;City;Company'
    ListSource = UniMainModule.ListSource
    KeyField = 'CustNo'
    ListFieldIndex = 0
    Style = csDropDown
    OnSelect = UniDBLookupComboBox2Select
  end
  object UniDBLookupComboBox3: TUnimDBLookupComboBox
    Left = 16
    Top = 66
    Width = 516
    Hint = ''
    Text = ''
    FieldLabel = 'Style = csDropDown'
    FieldLabelWidth = 40
    TabOrder = 3
    ListField = 'CustNo;City;Company'
    ListSource = UniMainModule.ListSource
    KeyField = 'CustNo'
    ListFieldIndex = 0
    Style = csDropDown
    OnSelect = UniDBLookupComboBox2Select
  end
  object UniDBLookupComboBox4: TUnimDBLookupComboBox
    Left = 16
    Top = 125
    Width = 516
    Hint = ''
    Text = ''
    FieldLabel = 'RemoteQuery = True'
    FieldLabelWidth = 40
    TabOrder = 4
    ListField = 'CustNo;City;Company'
    ListSource = UniMainModule.ListSource
    KeyField = 'CustNo'
    ListFieldIndex = 0
    RemoteQuery = True
    Style = csDropDown
    OnSelect = UniDBLookupComboBox2Select
  end
  object UniDBLookupComboBox5: TUnimDBLookupComboBox
    Left = 16
    Top = 184
    Width = 516
    Hint = ''
    Text = ''
    FieldLabel = 'AnyMatch = True'
    FieldLabelWidth = 40
    TabOrder = 5
    ListField = 'CustNo;City;Company'
    ListSource = UniMainModule.ListSource
    KeyField = 'CustNo'
    ListFieldIndex = 0
    RemoteQuery = True
    AnyMatch = True
    Style = csDropDown
    OnSelect = UniDBLookupComboBox2Select
  end
  object UniDBLookupComboBox6: TUnimDBLookupComboBox
    Left = 16
    Top = 243
    Width = 516
    Hint = ''
    ClearButton = True
    Text = ''
    FieldLabel = 'DataSource/DataField Assigned'
    FieldLabelWidth = 40
    TabOrder = 6
    ListField = 'CustNo;City;Company'
    ListSource = UniMainModule.ListSource
    KeyField = 'CustNo'
    ListFieldIndex = 0
    DataField = 'CustNo'
    DataSource = UniMainModule.DataSource1
    RemoteQuery = True
    AnyMatch = True
    Style = csDropDown
    OnSelect = UniDBLookupComboBox2Select
  end
  object UniMemo1: TUnimMemo
    Left = 16
    Top = 296
    Width = 516
    Height = 289
    Hint = ''
    Lines.Strings = (
      'UniMemo1')
    TabOrder = 2
  end
  object UniDBNavigator1: TUnimDBNavigator
    Left = 16
    Top = 591
    Width = 516
    Height = 47
    Hint = ''
    DataSource = UniMainModule.DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    IconSet = icsFontAwesome
    TabOrder = 0
  end
end
