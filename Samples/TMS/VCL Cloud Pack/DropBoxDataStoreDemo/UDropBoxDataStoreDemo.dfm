object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'TMS Cloud Pack: DropBox DataStore Demo'
  ClientHeight = 469
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 681
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object btConnect: TButton
      Left = 16
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Connect'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btConnectClick
    end
    object btRemove: TButton
      Left = 143
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Remove Access'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btRemoveClick
    end
    object btSample: TButton
      Left = 421
      Top = 8
      Width = 121
      Height = 25
      Caption = 'Create sample'
      Enabled = False
      TabOrder = 2
      OnClick = btSampleClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 41
    Width = 681
    Height = 192
    Align = alTop
    Caption = 'DataStores'
    TabOrder = 1
    object btCreate: TButton
      Left = 421
      Top = 23
      Width = 121
      Height = 25
      Caption = 'Create datastore'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btCreateClick
    end
    object edDataStore: TEdit
      Left = 548
      Top = 23
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btDeleteDataStore: TButton
      Left = 421
      Top = 85
      Width = 121
      Height = 25
      Caption = 'Delete datastore'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = btDeleteDataStoreClick
    end
    object btGetByName: TButton
      Left = 421
      Top = 155
      Width = 121
      Height = 25
      Caption = 'Datastore by name'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = btGetByNameClick
    end
    object btSetMetaData: TButton
      Left = 421
      Top = 54
      Width = 121
      Height = 25
      Caption = 'Set meta data'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btSetMetaDataClick
    end
    object lvDataStores: TListView
      Left = 16
      Top = 23
      Width = 399
      Height = 154
      Columns = <
        item
          Caption = 'Name'
          Width = 100
        end
        item
          Caption = 'Revision'
          Width = 60
        end
        item
          Caption = 'Description'
          Width = 100
        end
        item
          Caption = 'Timestamp'
          Width = 125
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 5
      ViewStyle = vsReport
      OnSelectItem = lvDataStoresSelectItem
    end
    object edTitle: TEdit
      Left = 548
      Top = 54
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object dsName: TEdit
      Left = 548
      Top = 157
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'default'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 233
    Width = 681
    Height = 236
    Align = alClient
    Caption = 'Data'
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 21
      Width = 25
      Height = 13
      Caption = 'Row:'
    end
    object Label3: TLabel
      Left = 56
      Top = 58
      Width = 31
      Height = 13
      Caption = 'Fields:'
    end
    object Label4: TLabel
      Left = 183
      Top = 58
      Width = 35
      Height = 13
      Caption = 'Values:'
    end
    object Label5: TLabel
      Left = 120
      Top = 21
      Width = 30
      Height = 13
      Caption = 'Table:'
    end
    object Label6: TLabel
      Left = 297
      Top = 21
      Width = 36
      Height = 13
      Caption = 'RowID:'
      Visible = False
    end
    object btInsertRow: TButton
      Left = 397
      Top = 106
      Width = 121
      Height = 25
      Caption = 'Insert as new record'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = btInsertRowClick
    end
    object cbRow: TComboBox
      Left = 55
      Top = 18
      Width = 53
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = cbRowChange
    end
    object edField1: TEdit
      Left = 56
      Top = 77
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edValue1: TEdit
      Left = 183
      Top = 77
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edValue2: TEdit
      Left = 183
      Top = 107
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edField2: TEdit
      Left = 56
      Top = 107
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edField3: TEdit
      Left = 56
      Top = 137
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object edField4: TEdit
      Left = 56
      Top = 167
      Width = 121
      Height = 21
      TabOrder = 9
    end
    object edTableName: TEdit
      Left = 159
      Top = 18
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btDeleteRow: TButton
      Left = 397
      Top = 75
      Width = 121
      Height = 25
      Caption = 'Delete current record'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = btDeleteRowClick
    end
    object btUpdateRow: TButton
      Left = 397
      Top = 137
      Width = 121
      Height = 25
      Caption = 'Update current record'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = btUpdateRowClick
    end
    object edValue3: TEdit
      Left = 183
      Top = 137
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object edValue4: TEdit
      Left = 183
      Top = 167
      Width = 121
      Height = 21
      TabOrder = 10
    end
    object edID: TEdit
      Left = 336
      Top = 18
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
    end
    object btDeleteFields: TButton
      Left = 397
      Top = 168
      Width = 121
      Height = 25
      Caption = 'Delete selected fields'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      OnClick = btDeleteFieldsClick
    end
    object btClear: TButton
      Left = 397
      Top = 199
      Width = 121
      Height = 25
      Caption = 'Clear values'
      TabOrder = 15
      OnClick = btClearClick
    end
  end
  object cb1: TCheckBox
    Left = 314
    Top = 312
    Width = 19
    Height = 17
    TabOrder = 3
  end
  object cb2: TCheckBox
    Left = 314
    Top = 342
    Width = 19
    Height = 17
    TabOrder = 4
  end
  object cb3: TCheckBox
    Left = 314
    Top = 372
    Width = 19
    Height = 17
    TabOrder = 5
  end
  object cb4: TCheckBox
    Left = 314
    Top = 402
    Width = 19
    Height = 17
    TabOrder = 6
  end
  object AdvDropBoxDataStore1: TAdvDropBoxDataStore
    Agent = 'Mozilla/5.001 (windows; U; NT4.0; en-US; rv:1.0) Gecko/25250101'
    App.CallBackURL = 'http://127.0.0.1:8888'
    App.CallBackPort = 80
    PersistTokens.Location = plIniFile
    PersistTokens.Section = 'DATASTORE'
    PersistTokens.Key = '.\DSTOKENS.INI'
    OnReceivedAccessToken = AdvDropBoxDataStore1ReceivedAccessToken
    AuthFormSettings.Caption = 'Authorize'
    AuthFormSettings.Width = 900
    AuthFormSettings.Height = 600
    Left = 616
    Top = 8
  end
end
