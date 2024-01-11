object UniGridsGroupingSorting: TUniGridsGroupingSorting
  Left = 0
  Top = 0
  Width = 877
  Height = 659
  OnCreate = UniFrameCreate
  Anchors = []
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 877
    Height = 659
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    ExplicitTop = 3
    ExplicitWidth = 745
    ExplicitHeight = 542
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 34
      Width = 871
      Height = 622
      Hint = ''
      HeaderTitle = 'Grid Grouping Demo'
      HeaderTitleAlign = taCenter
      DataSource = UniMainModule.DataSource4
      Grouping.FieldName = 'Country'
      Grouping.FieldCaption = 'Country Group'
      Grouping.Enabled = True
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      OnMultiColumnSort = UniDBGrid1MultiColumnSort
      Columns = <
        item
          FieldName = 'CustomerID'
          Title.Caption = 'CustomerID'
          Width = 71
          Sortable = True
        end
        item
          FieldName = 'CompanyName'
          Title.Caption = 'CompanyName'
          Width = 207
          Sortable = True
        end
        item
          FieldName = 'ContactName'
          Title.Caption = 'ContactName'
          Width = 184
          Sortable = True
        end
        item
          FieldName = 'ContactTitle'
          Title.Caption = 'ContactTitle'
          Width = 184
          Sortable = True
        end
        item
          FieldName = 'Address'
          Title.Caption = 'Address'
          Width = 364
          Sortable = True
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 94
          Sortable = True
        end
        item
          FieldName = 'PostalCode'
          Title.Caption = 'PostalCode'
          Width = 64
          Sortable = True
        end
        item
          FieldName = 'Country'
          Title.Caption = 'Country'
          Width = 94
        end>
    end
    object UniDBEdit2: TUniDBEdit
      Left = 186
      Top = 8
      Width = 202
      Height = 22
      Hint = ''
      DataField = 'ContactName'
      DataSource = UniMainModule.DataSource4
      TabOrder = 1
      ReadOnly = True
    end
    object UniDBEdit1: TUniDBEdit
      Left = 3
      Top = 8
      Width = 177
      Height = 22
      Hint = ''
      DataField = 'CompanyName'
      DataSource = UniMainModule.DataSource4
      TabOrder = 2
      ReadOnly = True
    end
  end
end
