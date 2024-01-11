object SFieldMappingEdit: TSFieldMappingEdit
  Left = 0
  Top = 0
  ActiveControl = DSC
  BorderStyle = bsDialog
  Caption = 'Database Storage Mapping'
  ClientHeight = 368
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = -1
    Top = 127
    Width = 473
    Height = 192
    Caption = 'Items '
    TabOrder = 0
    object Label6: TLabel
      Left = 16
      Top = 55
      Width = 48
      Height = 13
      Caption = 'Data Field'
    end
    object Label7: TLabel
      Left = 237
      Top = 55
      Width = 91
      Height = 13
      Caption = 'Content Type Field'
    end
    object Label8: TLabel
      Left = 16
      Top = 82
      Width = 76
      Height = 13
      Caption = 'Item State Field'
    end
    object Label9: TLabel
      Left = 16
      Top = 136
      Width = 49
      Height = 13
      Caption = 'ETag Field'
    end
    object Label10: TLabel
      Left = 237
      Top = 82
      Width = 44
      Height = 13
      Caption = 'PathField'
    end
    object Label12: TLabel
      Left = 16
      Top = 109
      Width = 91
      Height = 13
      Caption = 'Modified Date Field'
    end
    object Label13: TLabel
      Left = 237
      Top = 109
      Width = 92
      Height = 13
      Caption = 'Creation Date Field'
    end
    object Label14: TLabel
      Left = 16
      Top = 27
      Width = 56
      Height = 13
      Caption = 'DataSource'
    end
    object Label11: TLabel
      Left = 16
      Top = 165
      Width = 82
      Height = 13
      Caption = 'Foreign Key Alias'
    end
    object Label15: TLabel
      Left = 237
      Top = 165
      Width = 8
      Height = 13
      Caption = '='
    end
    object IDataField: TComboBox
      Left = 118
      Top = 51
      Width = 94
      Height = 21
      TabOrder = 1
      OnChange = CListTypeChange
    end
    object IContentType: TComboBox
      Left = 352
      Top = 51
      Width = 94
      Height = 21
      TabOrder = 2
      OnChange = CListTypeChange
    end
    object IItemState: TComboBox
      Left = 118
      Top = 78
      Width = 94
      Height = 21
      TabOrder = 3
      OnChange = CListTypeChange
    end
    object IETagField: TComboBox
      Left = 118
      Top = 132
      Width = 94
      Height = 21
      TabOrder = 7
      OnChange = CListTypeChange
    end
    object IPathField: TComboBox
      Left = 352
      Top = 78
      Width = 94
      Height = 21
      TabOrder = 4
      OnChange = CListTypeChange
    end
    object IModifiedDateTime: TComboBox
      Left = 118
      Top = 105
      Width = 94
      Height = 21
      TabOrder = 5
      OnChange = CListTypeChange
    end
    object ICreationDateField: TComboBox
      Left = 353
      Top = 105
      Width = 94
      Height = 21
      TabOrder = 6
      OnChange = CListTypeChange
    end
    object DSI: TComboBox
      Left = 118
      Top = 24
      Width = 94
      Height = 21
      TabOrder = 0
      OnChange = DSIChange
    end
    object IForeignKey1: TComboBox
      Left = 118
      Top = 161
      Width = 94
      Height = 21
      TabOrder = 8
      OnChange = CListTypeChange
    end
    object IForeignKey2: TComboBox
      Left = 265
      Top = 161
      Width = 94
      Height = 21
      TabOrder = 9
      OnChange = CListTypeChange
    end
  end
  object Button1: TButton
    Left = 397
    Top = 335
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 316
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 235
    Top = 335
    Width = 75
    Height = 25
    Caption = 'Validate'
    TabOrder = 3
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 473
    Height = 121
    Caption = 'Categories'
    TabOrder = 4
    object Label1: TLabel
      Left = 16
      Top = 27
      Width = 56
      Height = 13
      Caption = 'DataSource'
    end
    object Label2: TLabel
      Left = 16
      Top = 59
      Width = 68
      Height = 13
      Caption = 'List Type Field'
    end
    object Label3: TLabel
      Left = 237
      Top = 59
      Width = 60
      Height = 13
      Caption = 'Service Field'
    end
    object Label4: TLabel
      Left = 16
      Top = 86
      Width = 74
      Height = 13
      Caption = 'SyncTokenField'
    end
    object Label5: TLabel
      Left = 237
      Top = 86
      Width = 73
      Height = 13
      Caption = 'Username Field'
    end
    object Label16: TLabel
      Left = 237
      Top = 27
      Width = 48
      Height = 13
      Caption = 'Data Field'
    end
    object DSC: TComboBox
      Left = 102
      Top = 24
      Width = 94
      Height = 21
      TabOrder = 0
      OnChange = DSCChange
    end
    object CListType: TComboBox
      Left = 102
      Top = 56
      Width = 94
      Height = 21
      TabOrder = 2
      OnChange = CListTypeChange
    end
    object CService: TComboBox
      Left = 341
      Top = 56
      Width = 94
      Height = 21
      TabOrder = 3
      OnChange = CListTypeChange
    end
    object CSyncToken: TComboBox
      Left = 102
      Top = 83
      Width = 94
      Height = 21
      TabOrder = 4
      OnChange = CListTypeChange
    end
    object CUsername: TComboBox
      Left = 341
      Top = 83
      Width = 94
      Height = 21
      TabOrder = 5
      OnChange = CListTypeChange
    end
    object CDataField: TComboBox
      Left = 341
      Top = 24
      Width = 94
      Height = 21
      TabOrder = 1
      OnChange = CListTypeChange
    end
  end
end
