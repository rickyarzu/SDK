object UniGridsContextMenu: TUniGridsContextMenu
  Left = 0
  Top = 0
  Width = 875
  Height = 681
  OnCreate = UniFrameCreate
  TabOrder = 0
  DesignSize = (
    875
    681)
  object UniDBGrid1: TUniDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 869
    Height = 637
    Hint = ''
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgFilterClearButton]
    Grouping.Enabled = True
    LoadMask.Message = 'Loading data...'
    LoadMask.Opacity = 0.100000001490116100
    ForceFit = True
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnCellContextClick = UniDBGrid1CellContextClick
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Width = 64
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
        Width = 184
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'Species Name'
        Title.Caption = 'Species Name'
        Width = 244
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'Length (cm)'
        Title.Caption = 'Length (cm)'
        Width = 64
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'Length_In'
        Title.Caption = 'Length_In'
        Width = 64
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'Notes'
        Title.Caption = 'Notes'
        Width = 64
        Menu.MenuEnabled = False
      end
      item
        FieldName = 'Graphic'
        Title.Caption = 'Graphic'
        Width = 64
        Menu.MenuEnabled = False
      end>
  end
  object UniDBEdit1: TUniDBEdit
    Left = 24
    Top = 652
    Width = 121
    Height = 22
    Hint = ''
    DataField = 'Species No'
    DataSource = DataSource1
    Anchors = [akLeft, akBottom]
    TabOrder = 1
  end
  object UniLabel1: TUniLabel
    Left = 664
    Top = 652
    Width = 123
    Height = 13
    Hint = ''
    Caption = 'Right Click in the Grid!'
    Anchors = [akRight, akBottom]
    ParentFont = False
    Font.Style = [fsBold]
    TabOrder = 2
  end
  object UniDBNavigator1: TUniDBNavigator
    Left = 160
    Top = 649
    Width = 241
    Height = 25
    Hint = ''
    DataSource = DataSource1
    IconSet = icsFontAwesome
    Anchors = [akLeft, akBottom]
    TabOrder = 3
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 240
    object ClientDataSet1SpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object ClientDataSet1Category: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object ClientDataSet1Common_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object ClientDataSet1SpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object ClientDataSet1Lengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object ClientDataSet1Length_In: TFloatField
      FieldName = 'Length_In'
    end
    object ClientDataSet1Notes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object ClientDataSet1Graphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 288
    Top = 176
  end
  object UniPopupMenu1: TUniPopupMenu
    Left = 304
    Top = 328
    object DeleteRow1: TUniMenuItem
      Caption = 'Delete Row'
      OnClick = DeleteRow1Click
    end
    object InsertRow1: TUniMenuItem
      Caption = 'Insert Row'
      OnClick = InsertRow1Click
    end
    object Edit1: TUniMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
    end
  end
  object UniPopupMenu2: TUniPopupMenu
    Left = 392
    Top = 360
    object Post1: TUniMenuItem
      Caption = 'Post'
      OnClick = Post1Click
    end
    object Cancel1: TUniMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
  end
end
