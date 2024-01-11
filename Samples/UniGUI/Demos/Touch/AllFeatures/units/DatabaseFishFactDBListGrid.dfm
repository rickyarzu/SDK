object UniDatabaseFishFactDBListGrid: TUniDatabaseFishFactDBListGrid
  Left = 0
  Top = 0
  Width = 419
  Height = 554
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 554
    Hint = ''
    Align = alClient
    object UnimDBListGrid1: TUnimDBListGrid
      Left = 0
      Top = 128
      Width = 419
      Height = 379
      Hint = ''
      Align = alClient
      DataSource = DataSourceFishFact
      WebOptions.PageSize = 5
      Columns = <
        item
          Title.Caption = 'S. No'
          FieldName = 'Species No'
          Width = 74
        end
        item
          Title.Caption = 'Category'
          FieldName = 'Category'
          Width = 124
        end
        item
          Title.Caption = 'Common_Name'
          FieldName = 'Common_Name'
          Width = 334
        end>
    end
    object UnimDBNavigator1: TUnimDBNavigator
      Left = 0
      Top = 507
      Width = 419
      Height = 47
      Hint = ''
      DataSource = DataSourceFishFact
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      IconSet = icsFontAwesome
      Align = alBottom
      TabOrder = 2
    end
    object UnimDBImage1: TUnimDBImage
      Left = 0
      Top = 0
      Width = 419
      Height = 128
      Hint = ''
      DataField = 'Graphic'
      DataSource = DataSourceFishFact
      Align = alTop
      Stretch = True
      Picture.Data = {07544269746D617000000000}
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
    Left = 32
    Top = 16
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
    Left = 32
    Top = 72
  end
end
