object UniDatabaseDelayedSearch: TUniDatabaseDelayedSearch
  Left = 0
  Top = 0
  Width = 638
  Height = 637
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    638
    637)
  object UniContainerPanel1: TUniContainerPanel
    Left = 61
    Top = 100
    Width = 517
    Height = 502
    Hint = ''
    ParentColor = False
    Anchors = []
    TabOrder = 0
    DesignSize = (
      517
      502)
    object UniLabel1: TUniLabel
      Left = 56
      Top = 9
      Width = 348
      Height = 13
      Hint = ''
      Caption = 'Type and wait for 500 ms ( UniEdit1.CheckChangeDelay=500 )'
      Anchors = []
      ParentFont = False
      Font.Style = [fsBold]
      TabOrder = 0
    end
    object UniEdit1: TUniEdit
      Left = 56
      Top = 28
      Width = 200
      Hint = ''
      Text = ''
      Anchors = []
      TabOrder = 1
      EmptyText = 'Search...'
      CheckChangeDelay = 500
      ClearButton = True
      OnChange = UniEdit1Change
    end
    object UniDBGrid1: TUniDBGrid
      Left = 56
      Top = 56
      Width = 409
      Height = 361
      Hint = ''
      DataSource = DataSource1
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
      WebOptions.Paged = False
      LoadMask.ShowMessage = False
      LoadMask.Message = 'Loading data...'
      Anchors = []
      TabOrder = 2
      Columns = <
        item
          FieldName = 'CustNo'
          Title.Caption = 'CustNo'
          Width = 64
          Alignment = taRightJustify
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'Company'
          Title.Caption = 'Company'
          Width = 184
          CheckBoxField.FieldValues = 'true;false'
        end
        item
          FieldName = 'City'
          Title.Caption = 'City'
          Width = 94
          CheckBoxField.FieldValues = 'true;false'
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 312
    Top = 312
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 230
    Top = 312
  end
end
