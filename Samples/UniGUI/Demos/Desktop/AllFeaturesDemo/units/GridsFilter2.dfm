object UniGridsFilter2: TUniGridsFilter2
  Left = 0
  Top = 0
  Width = 905
  Height = 594
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 594
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitTop = 23
    ExplicitWidth = 1055
    ExplicitHeight = 626
    DesignSize = (
      905
      594)
    object UniPanel2: TUniPanel
      Left = 0
      Top = 0
      Width = 905
      Height = 32
      Hint = ''
      Align = alTop
      TabOrder = 0
      Caption = ''
      object UniLabel1: TUniLabel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 897
        Height = 25
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Hint: Type in a filter editors then press "Enter"'
        Align = alTop
        ParentFont = False
        Font.Color = clNavy
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
    end
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 35
      Width = 899
      Height = 521
      Hint = ''
      HeaderTitle = 'Grid Filter 2'
      DataSource = UniMainModule.DataSource2
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgFilterClearButton]
      ReadOnly = True
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      LoadMask.Opacity = 0.400000005960464500
      TrackOver = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      TabStop = False
      OnClearFilters = UniDBGrid1ClearFilters
      OnColumnFilter = UniDBGrid1ColumnFilter
      Columns = <
        item
          FieldName = 'CompanyName'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit1
          Title.Caption = 'Company Name'
          Width = 244
        end
        item
          FieldName = 'ContactName'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit2
          Title.Caption = 'Contact Name'
          Width = 115
        end
        item
          FieldName = 'ContactTitle'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit3
          Title.Caption = 'Contact Title'
          Width = 140
        end
        item
          FieldName = 'Address'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit4
          Title.Caption = 'Address'
          Width = 178
        end
        item
          FieldName = 'City'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit5
          Title.Caption = 'City'
          Width = 94
        end
        item
          FieldName = 'PostalCode'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit6
          Title.Caption = 'Postal Code'
          Width = 71
        end
        item
          FieldName = 'Country'
          Filtering.Enabled = True
          Filtering.Editor = UniDBLookupComboBox1
          Title.Caption = 'Country'
          Width = 109
        end
        item
          FieldName = 'Phone'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit7
          Title.Caption = 'Phone'
          Width = 110
        end>
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 368
      Top = 152
      Width = 209
      Height = 321
      Hint = ''
      Visible = True
      DesignSize = (
        209
        321)
      object UniEdit1: TUniEdit
        Left = 16
        Top = 24
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit1'
        Anchors = []
        TabOrder = 0
        EmptyText = 'Company...'
        ClearButton = True
      end
      object UniEdit2: TUniEdit
        Left = 16
        Top = 52
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit2'
        Anchors = []
        TabOrder = 1
        EmptyText = 'Contact...'
        ClearButton = True
      end
      object UniEdit3: TUniEdit
        Left = 16
        Top = 80
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit3'
        Anchors = []
        TabOrder = 2
        EmptyText = 'Title...'
        ClearButton = True
      end
      object UniEdit4: TUniEdit
        Left = 16
        Top = 108
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit4'
        Anchors = []
        TabOrder = 3
        EmptyText = 'Address...'
        ClearButton = True
      end
      object UniEdit5: TUniEdit
        Left = 16
        Top = 136
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit5'
        Anchors = []
        TabOrder = 4
        EmptyText = 'City...'
        ClearButton = True
      end
      object UniEdit6: TUniEdit
        Left = 16
        Top = 164
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit6'
        Anchors = []
        TabOrder = 5
        EmptyText = 'Postal Code...'
        ClearButton = True
      end
      object UniEdit7: TUniEdit
        Left = 16
        Top = 220
        Width = 121
        Hint = ''
        CharEOL = #13
        Text = 'UniEdit7'
        Anchors = []
        TabOrder = 7
        EmptyText = 'Phone...'
        ClearButton = True
      end
      object UniDBLookupComboBox1: TUniDBLookupComboBox
        Left = 16
        Top = 192
        Width = 145
        Hint = ''
        ListField = 'Country'
        ListSource = UniMainModule.DataSource3
        KeyField = 'Country'
        ListFieldIndex = 0
        Anchors = []
        EmptyText = 'Country...'
        TabOrder = 6
        Color = clWindow
      end
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 662
      Top = 562
      Width = 240
      Height = 26
      Hint = ''
      DataSource = UniMainModule.DataSource2
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabOrder = 3
    end
  end
end
