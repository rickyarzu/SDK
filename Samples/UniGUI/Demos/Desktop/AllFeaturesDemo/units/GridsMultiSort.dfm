object UniGridsMultiSort: TUniGridsMultiSort
  Left = 0
  Top = 0
  Width = 909
  Height = 640
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 909
    Height = 640
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 885
    ExplicitHeight = 618
    DesignSize = (
      909
      640)
    object UniDBGrid1: TUniDBGrid
      Left = 8
      Top = 36
      Width = 889
      Height = 484
      Hint = ''
      HeaderTitle = 'Grid Grouping Demo'
      HeaderTitleAlign = taCenter
      DataSource = DataSource
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      Grouping.FieldName = 'Country'
      Grouping.Enabled = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 1
      MultiColumnSort = True
      OnMultiColumnSort = UniDBGrid1MultiColumnSort
      Columns = <
        item
          FieldName = 'Country'
          Title.Caption = 'Country'
          Width = 94
          Sortable = True
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 107
          Sortable = True
        end
        item
          FieldName = 'Region'
          Title.Caption = 'Region'
          Width = 106
          Sortable = True
        end
        item
          FieldName = 'CompanyName'
          Title.Caption = 'CompanyName'
          Width = 244
        end
        item
          FieldName = 'ContactName'
          Title.Caption = 'ContactName'
          Width = 184
        end
        item
          FieldName = 'ContactTitle'
          Title.Caption = 'ContactTitle'
          Width = 184
        end
        item
          FieldName = 'Address'
          Title.Caption = 'Address'
          Width = 364
        end
        item
          FieldName = 'PostalCode'
          Title.Caption = 'PostalCode'
          Width = 64
        end
        item
          FieldName = 'Phone'
          Title.Caption = 'Phone'
          Width = 148
        end
        item
          FieldName = 'Fax'
          Title.Caption = 'Fax'
          Width = 148
        end>
    end
    object UniDBEdit1: TUniDBEdit
      Left = 88
      Top = 8
      Width = 177
      Height = 22
      Hint = ''
      DataField = 'CompanyName'
      DataSource = DataSource
      TabOrder = 2
      ReadOnly = True
    end
    object UniDBEdit2: TUniDBEdit
      Left = 271
      Top = 8
      Width = 202
      Height = 22
      Hint = ''
      DataField = 'ContactName'
      DataSource = DataSource
      TabOrder = 3
      ReadOnly = True
    end
    object UniMemo1: TUniMemo
      Left = 8
      Top = 526
      Width = 889
      Height = 106
      Hint = ''
      Lines.Strings = (
        'UniMemo1')
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 4
      ExplicitTop = 504
      ExplicitWidth = 865
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 479
      Top = 6
      Width = 121
      Height = 25
      Hint = ''
      GroupIndex = 1
      AllowAllUp = True
      Down = True
      Caption = 'Toggle Grouping'
      ParentColor = False
      Color = clWindow
      TabOrder = 5
      OnClick = UniSpeedButton1Click
    end
  end
  object DataSource: TDataSource
    DataSet = UniMainModule.ADOQuery1
    Left = 168
    Top = 118
  end
end
