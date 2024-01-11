object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 639
  ClientWidth = 829
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  ActiveControl = UniDBLookupComboBox1
  PixelsPerInch = 96
  TextHeight = 13
  object UniDBLookupComboBox1: TUniDBLookupComboBox
    Left = 8
    Top = 176
    Width = 337
    Hint = ''
    ListFieldIndex = 0
    ClearButton = True
    TabOrder = 0
    Color = clWindow
    RemoteQuery = True
    RemoteQueryRetainResult = True
    Style = csDropDown
    OnGetKeyValue = UniDBLookupComboBox1GetKeyValue
    OnRemoteQuery = UniDBLookupComboBox1RemoteQuery
    OnSelect = UniDBLookupComboBox1Select
  end
  object UniMemo1: TUniMemo
    Left = 8
    Top = 204
    Width = 337
    Height = 428
    Hint = ''
    ReadOnly = True
    TabOrder = 1
  end
  object UniDBGrid1: TUniDBGrid
    Left = 364
    Top = 176
    Width = 447
    Height = 425
    Hint = ''
    DataSource = UniMainModule.DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    WebOptions.Paged = False
    LoadMask.ShowMessage = False
    LoadMask.Message = 'Loading data...'
    TabOrder = 2
    Columns = <
      item
        FieldName = 'OrderNo'
        Title.Caption = 'OrderNo'
        Width = 64
      end
      item
        FieldName = 'CustNo'
        Title.Caption = 'CustNo'
        Title.Font.Style = [fsBold]
        Width = 113
        Color = 14803425
        Editor = UniDBLookupComboBox2
      end
      item
        FieldName = 'SaleDate'
        Title.Caption = 'SaleDate'
        Width = 112
      end
      item
        FieldName = 'ShipDate'
        Title.Caption = 'ShipDate'
        Width = 112
      end>
  end
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 492
    Top = 243
    Width = 193
    Height = 110
    Hint = ''
    Visible = True
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Left = 24
      Top = 16
      Width = 137
      Height = 21
      Hint = ''
      ListFieldIndex = 0
      ClearButton = True
      TabOrder = 1
      Color = clWindow
      MatchFieldWidth = False
      RemoteQuery = True
      RemoteQueryRetainResult = True
      Style = csDropDown
      Mode = umNameValue
      OnGetKeyValue = UniDBLookupComboBox1GetKeyValue
      OnRemoteQuery = UniDBLookupComboBox1RemoteQuery
    end
  end
  object UniLabel1: TUniLabel
    Left = 364
    Top = 157
    Width = 77
    Height = 13
    Hint = ''
    Caption = 'In Grid Editor '
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 570
    Top = 607
    Width = 241
    Height = 25
    Hint = ''
    DataSource = UniMainModule.DataSource1
    TabOrder = 5
  end
  object UniMemo2: TUniMemo
    Left = 8
    Top = 4
    Width = 803
    Height = 147
    Hint = ''
    BorderStyle = ubsNone
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
        'Comobox. '
      ''
      
        'Same principle is used for CustNo column of DBGrid which uses a ' +
        'UniDBLookupComobox as editor.')
    ParentFont = False
    Font.Color = clNavy
    ReadOnly = True
    TabOrder = 6
  end
  object UniLabel2: TUniLabel
    Left = 8
    Top = 157
    Width = 198
    Height = 13
    Hint = ''
    Caption = 'Custom Remote Query (Large CDS)'
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 7
  end
end
