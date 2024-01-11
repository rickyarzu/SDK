object UniMainModule: TUniMainModule
  OnCreate = UniGUIMainModuleCreate
  RecallLastTheme = True
  Theme = 'triton'
  MonitoredKeys.Keys = <>
  Height = 218
  Width = 304
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
    Left = 88
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
    Left = 88
    Top = 80
  end
  object FSTheme: TUniFSTheme
    Style = Future
    Enabled = True
    Left = 176
    Top = 54
  end
end
