object UniDatabaseFishFactDBGrid: TUniDatabaseFishFactDBGrid
  Left = 0
  Top = 0
  Width = 795
  Height = 602
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 795
    Height = 602
    Hint = ''
    Align = alClient
    object UnimDBNavigator1: TUnimDBNavigator
      Left = 0
      Top = 555
      Width = 795
      Height = 47
      Hint = ''
      DataSource = DataSourceFishFact
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      IconSet = icsFontAwesome
      Align = alBottom
      TabOrder = 1
    end
    object UnimDBGrid1: TUnimDBGrid
      Left = 0
      Top = 145
      Width = 795
      Height = 410
      Hint = ''
      Align = alClient
      DataSource = DataSourceFishFact
      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
      Columns = <
        item
          Title.Caption = 'Species No'
          FieldName = 'Species No'
          Width = 114
        end
        item
          Title.Caption = 'Category'
          FieldName = 'Category'
          Width = 146
          ReadOnly = True
          GroupHeader = 'Group Header'
        end
        item
          ImageOptions.Visible = True
          Title.Caption = 'Image'
          FieldName = 'Graphic'
          Width = 114
          GroupHeader = 'Group Header'
        end
        item
          Title.Caption = 'Common Name'
          FieldName = 'Common_Name'
          Width = 220
          GroupHeader = 'Group Header'
        end
        item
          Title.Caption = 'Species Name'
          FieldName = 'Species Name'
          Width = 176
        end
        item
          Title.Caption = 'Len-cm'
          FieldName = 'Length (cm)'
          Width = 96
        end
        item
          Title.Caption = 'Length Inch'
          FieldName = 'Length_In'
          Width = 96
        end>
    end
    object UnimDBImage1: TUnimDBImage
      Left = 0
      Top = 0
      Width = 795
      Height = 145
      Hint = ''
      DataField = 'Graphic'
      DataSource = DataSourceFishFact
      Align = alTop
      Stretch = True
      Proportional = True
    end
  end
  object ClientDataSetFishFact: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Species No'
        DataType = ftFloat
      end
      item
        Name = 'Category'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Common_Name'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Species Name'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Length (cm)'
        DataType = ftFloat
      end
      item
        Name = 'Length_In'
        DataType = ftFloat
      end
      item
        Name = 'Notes'
        DataType = ftMemo
        Size = 50
      end
      item
        Name = 'Graphic'
        DataType = ftGraphic
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 64
    Top = 40
    object ClientDataSetFishFactSpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object ClientDataSetFishFactCategory: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object ClientDataSetFishFactCommon_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object ClientDataSetFishFactSpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object ClientDataSetFishFactLengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object ClientDataSetFishFactLength_In: TFloatField
      FieldName = 'Length_In'
      DisplayFormat = '0.000'
    end
    object ClientDataSetFishFactNotes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object ClientDataSetFishFactGraphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
  object DataSourceFishFact: TDataSource
    DataSet = ClientDataSetFishFact
    Left = 64
    Top = 96
  end
end
