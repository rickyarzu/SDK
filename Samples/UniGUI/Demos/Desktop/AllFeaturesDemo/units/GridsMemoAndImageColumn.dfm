object UniGridsMemoAndImageColumn: TUniGridsMemoAndImageColumn
  Left = 0
  Top = 0
  Width = 921
  Height = 509
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 509
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 915
      Height = 503
      Hint = ''
      HeaderTitle = 'Grid Memo & Image Column'
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      LoadMask.Message = 'Loading data...'
      ForceFit = True
      Align = alClient
      TabOrder = 0
      Columns = <
        item
          FieldName = 'Species No'
          Title.Caption = 'Species No'
          Width = 67
          Alignment = taRightJustify
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Category'
          Title.Caption = 'Category'
          Width = 94
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Common_Name'
          Title.Caption = 'Common_Name'
          Width = 133
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Species Name'
          Title.Caption = 'Species Name'
          Width = 162
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Length (cm)'
          Title.Caption = 'Length (cm)'
          Width = 64
          Alignment = taRightJustify
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Length_In'
          Title.Caption = 'Length_In'
          Width = 64
          Alignment = taRightJustify
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Notes'
          Title.Caption = 'Notes'
          Width = 261
          DisplayMemo = True
          Menu.MenuEnabled = False
        end
        item
          FieldName = 'Graphic'
          Title.Caption = 'Graphic'
          Width = 173
          ImageOptions.Visible = True
          ImageOptions.Width = 120
          Menu.MenuEnabled = False
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 400
    Top = 96
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 251
    Top = 72
  end
end
