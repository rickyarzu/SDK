object UniGridsFilter: TUniGridsFilter
  Left = 0
  Top = 0
  Width = 947
  Height = 679
  OnCreate = UniFrameCreate
  OnDestroy = UniFrameDestroy
  Anchors = []
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 947
    Height = 679
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 29
    ExplicitTop = 16
    ExplicitWidth = 886
    ExplicitHeight = 628
    DesignSize = (
      947
      679)
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 941
      Height = 637
      Hint = ''
      HeaderTitle = 'Grid Filter 1'
      TitleFont.Style = [fsBold]
      DataSource = UniMainModule.DataSource
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgFilterClearButton]
      ReadOnly = True
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      LoadMask.Target = UniContainerPanel1
      LoadMask.Opacity = 0.400000005960464500
      ForceFit = True
      TrackOver = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      TabStop = False
      OnClearFilters = UniDBGrid1ClearFilters
      OnColumnFilter = UniDBGrid1ColumnFilter
      Columns = <
        item
          FieldName = 'CompanyName'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit1
          Title.Caption = 'Company Name'
          Title.Font.Style = [fsBold]
          Width = 244
        end
        item
          FieldName = 'ContactName'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit2
          Title.Caption = 'Contact Name'
          Title.Font.Style = [fsBold]
          Width = 115
        end
        item
          FieldName = 'ContactTitle'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit3
          Title.Caption = 'Contact Title'
          Title.Font.Style = [fsBold]
          Width = 140
        end
        item
          FieldName = 'Address'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit4
          Title.Caption = 'Address'
          Title.Font.Style = [fsBold]
          Width = 178
        end
        item
          FieldName = 'City'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit5
          Title.Caption = 'City'
          Title.Font.Style = [fsBold]
          Width = 94
        end
        item
          FieldName = 'PostalCode'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit6
          Title.Caption = 'Postal Code'
          Title.Font.Style = [fsBold]
          Width = 71
        end
        item
          FieldName = 'Country'
          Filtering.Enabled = True
          Filtering.Editor = UniDBLookupComboBox1
          Title.Caption = 'Country'
          Title.Font.Style = [fsBold]
          Width = 109
        end
        item
          FieldName = 'Phone'
          Filtering.Enabled = True
          Filtering.Editor = UniEdit7
          Title.Caption = 'Phone'
          Title.Font.Style = [fsBold]
          Width = 110
        end>
    end
    object UniHiddenPanel1: TUniHiddenPanel
      Left = 107
      Top = 59
      Width = 209
      Height = 321
      Hint = ''
      Visible = True
      object UniEdit1: TUniEdit
        Left = 16
        Top = 24
        Width = 121
        Hint = ''
        Text = 'UniEdit1'
        TabOrder = 0
        EmptyText = 'Company...'
        ClearButton = True
      end
      object UniEdit2: TUniEdit
        Left = 16
        Top = 52
        Width = 121
        Hint = ''
        Text = 'UniEdit2'
        TabOrder = 1
        EmptyText = 'Contact...'
        ClearButton = True
      end
      object UniEdit3: TUniEdit
        Left = 16
        Top = 80
        Width = 121
        Hint = ''
        Text = 'UniEdit3'
        TabOrder = 2
        EmptyText = 'Title...'
        ClearButton = True
      end
      object UniEdit4: TUniEdit
        Left = 16
        Top = 108
        Width = 121
        Hint = ''
        Text = 'UniEdit4'
        TabOrder = 3
        EmptyText = 'Address...'
        ClearButton = True
      end
      object UniEdit5: TUniEdit
        Left = 16
        Top = 136
        Width = 121
        Hint = ''
        Text = 'UniEdit5'
        TabOrder = 4
        EmptyText = 'City...'
        ClearButton = True
      end
      object UniEdit6: TUniEdit
        Left = 16
        Top = 164
        Width = 121
        Hint = ''
        Text = 'UniEdit6'
        TabOrder = 5
        EmptyText = 'Postal Code...'
        ClearButton = True
      end
      object UniEdit7: TUniEdit
        Left = 16
        Top = 220
        Width = 121
        Hint = ''
        Text = 'UniEdit7'
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
        ListSource = UniMainModule.DataSource1
        KeyField = 'Country'
        ListFieldIndex = 0
        EmptyText = 'Country...'
        TabOrder = 6
        Color = clWindow
      end
    end
    object UniButton1: TUniButton
      Left = 3
      Top = 646
      Width = 100
      Height = 25
      Hint = ''
      Caption = 'Open/Close'
      Anchors = [akLeft, akBottom]
      TabOrder = 2
      ScreenMask.ShowMessage = False
      ScreenMask.Target = Owner
      OnClick = UniButton1Click
    end
    object UniDBNavigator1: TUniDBNavigator
      Left = 703
      Top = 646
      Width = 241
      Height = 25
      Hint = ''
      DataSource = UniMainModule.DataSource
      IconSet = icsFontAwesome
      Anchors = [akRight, akBottom]
      TabOrder = 3
    end
  end
end
