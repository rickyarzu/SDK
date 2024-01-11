object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 639
  ClientWidth = 829
  Caption = 'MainForm'
  ActiveControl = UniDBLookupComboBox1
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UniMemo2: TUnimMemo
    Left = 8
    Top = 4
    Width = 809
    Height = 147
    Hint = ''
    Lines.Strings = (
      
        'In this demo UniDBLookupComobox uses a large CDS table loaded fr' +
        'om a local file.'
      ''
      
        'This table contains more than 300.000 rows. By typing '#39'Name'#39' or ' +
        #39'Name + Surname'#39' in combobox you can initiate a filter. (Example' +
        ': you can type '#39'geor'#39' or  '#39'geor dred'#39' )'
      ''
      
        'Query is handled inside '#39'OnRemoteQuery'#39' event of UniDBLookupComo' +
        'box.  Selecting an item from combo will also call '#39'OnGetKeyValue' +
        #39' event which assigns a correct value to KeyValue of UniDBLookup' +
        'Comobox. ')
    ReadOnly = True
    Font.Color = clNavy
    TabOrder = 2
  end
  object UniLabel2: TUnimLabel
    Left = 8
    Top = 157
    Width = 497
    Height = 23
    Hint = ''
    AutoSize = False
    Caption = 'Custom Remote Query (Large CDS)'
    ParentFont = False
    Font.Style = [fsBold]
  end
  object UniDBLookupComboBox1: TUnimDBLookupComboBox
    Left = 8
    Top = 186
    Width = 497
    Hint = ''
    ClearButton = True
    Text = ''
    TabOrder = 0
    ListFieldIndex = 0
    RemoteQuery = True
    RemoteQueryRetainResult = True
    Style = csDropDown
    OnGetKeyValue = UniDBLookupComboBox1GetKeyValue
    OnSelect = UniDBLookupComboBox1Select
    OnRemoteQuery = UniDBLookupComboBox1RemoteQuery
  end
  object UniMemo1: TUnimMemo
    Left = 8
    Top = 248
    Width = 497
    Height = 321
    Hint = ''
    ReadOnly = True
    TabOrder = 1
  end
end
