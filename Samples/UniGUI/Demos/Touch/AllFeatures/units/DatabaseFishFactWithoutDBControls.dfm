object UniDatabaseFishFactWithoutDBControls: TUniDatabaseFishFactWithoutDBControls
  Left = 0
  Top = 0
  Width = 336
  Height = 446
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 336
    Height = 446
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    object UnimList1: TUnimList
      Left = 0
      Top = 0
      Width = 336
      Height = 446
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      DisclosureIcon = True
      OnDisclose = UnimList1Disclose
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 24
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
  object DataSourceFishFact: TDataSource
    DataSet = ClientDataSet1
    Left = 104
    Top = 104
  end
end
