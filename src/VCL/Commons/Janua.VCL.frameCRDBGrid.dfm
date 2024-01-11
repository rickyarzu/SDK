inherited frameVCLCRDBGrid: TframeVCLCRDBGrid
  Width = 972
  Height = 431
  ExplicitWidth = 972
  ExplicitHeight = 431
  object CRDBGrid: TEnhCRDBGrid
    Left = 0
    Top = 25
    Width = 972
    Height = 406
    OptionsEx = [dgeLocalFilter, dgeLocalSorting]
    Align = alClient
    DataSource = UniDataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    HighlightBGColor = clBlack
    HighlightFont.Charset = DEFAULT_CHARSET
    HighlightFont.Color = clWindowText
    HighlightFont.Height = -12
    HighlightFont.Name = 'Segoe UI'
    HighlightFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Title.Caption = 'PERSON|NAME'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COUNTRY'
        Title.Caption = 'PERSON|ADDRESS|COUNTRY'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CITY'
        Title.Caption = 'PERSON|ADDRESS|CITY'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STREET'
        Title.Caption = 'PERSON|ADDRESS|STREET'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIRTHDATE'
        Title.Caption = 'PERSON|BIRTHDATE'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JOB'
        Title.Caption = 'JOB|JOB NAME'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HIREDATE'
        Title.Caption = 'JOB|HIREDATE'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SAL'
        Title.Caption = 'JOB|SAL'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REMARKS'
        Width = 63
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 972
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 414
      Height = 25
      Align = alLeft
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 0
      object btClose: TSpeedButton
        Left = 85
        Top = 0
        Width = 85
        Height = 25
        Align = alLeft
        Caption = 'Close'
        Flat = True
        Transparent = False
        OnClick = btCloseClick
        ExplicitLeft = 87
        ExplicitTop = 1
        ExplicitHeight = 24
      end
      object btOpen: TSpeedButton
        Left = 0
        Top = 0
        Width = 85
        Height = 25
        Align = alLeft
        Caption = 'Open'
        Flat = True
        Transparent = False
        OnClick = btOpenClick
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitHeight = 24
      end
      object DBNavigator1: TDBNavigator
        Left = 170
        Top = 0
        Width = 240
        Height = 25
        DataSource = UniDataSource
        Align = alLeft
        Flat = True
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 414
      Top = 0
      Width = 558
      Height = 25
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object chkFiltered: TCheckBox
        Left = 0
        Top = 0
        Width = 81
        Height = 25
        Align = alLeft
        Caption = 'Filtered'
        TabOrder = 0
        OnClick = chkFilteredClick
      end
      object chkFilterBar: TCheckBox
        Left = 81
        Top = 0
        Width = 88
        Height = 25
        Action = actFilterBar
        Align = alLeft
        TabOrder = 1
      end
      object chkSearchBar: TCheckBox
        Left = 169
        Top = 0
        Width = 104
        Height = 25
        Action = actSearchBar
        Align = alLeft
        TabOrder = 2
      end
      object chkRecCount: TCheckBox
        Left = 273
        Top = 0
        Width = 116
        Height = 25
        Align = alLeft
        Caption = 'Record Count'
        TabOrder = 3
        OnClick = chkRecCountClick
      end
      object chkStretch: TCheckBox
        Left = 389
        Top = 0
        Width = 74
        Height = 25
        Align = alLeft
        Caption = 'Stretch'
        TabOrder = 4
        OnClick = chkStretchClick
      end
    end
  end
  object UniDataSource: TUniDataSource
    Left = 328
    Top = 152
  end
  object ActionList1: TActionList
    Left = 240
    Top = 201
    object actSearchBar: TAction
      Caption = 'Search Bar'
      OnExecute = actSearchBarExecute
      OnUpdate = actSearchBarUpdate
    end
    object actFilterBar: TAction
      Caption = 'Filter Bar'
      OnExecute = actFilterBarExecute
      OnUpdate = actFilterBarUpdate
    end
  end
end
