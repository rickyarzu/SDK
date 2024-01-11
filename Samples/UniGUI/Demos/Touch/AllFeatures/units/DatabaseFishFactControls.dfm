object UniDatabaseFishFactControls: TUniDatabaseFishFactControls
  Left = 0
  Top = 0
  Width = 381
  Height = 574
  OnCreate = UniFrameCreate
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 381
    Height = 574
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    object UnimDBImage1: TUnimDBImage
      Left = 0
      Top = 0
      Width = 381
      Height = 161
      Hint = ''
      DataField = 'Graphic'
      DataSource = DataSourceFishFact
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Center = False
      Picture.Data = {07544269746D617000000000}
    end
    object UnimDBEdit1: TUnimDBEdit
      Left = 0
      Top = 161
      Width = 381
      Height = 47
      Hint = ''
      DataField = 'Species Name'
      DataSource = DataSourceFishFact
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      FieldLabel = 'Species Name'
      EmptyText = 'Species Name'
    end
    object UnimDBEdit2: TUnimDBEdit
      Left = 0
      Top = 208
      Width = 381
      Height = 47
      Hint = ''
      DataField = 'Common_Name'
      DataSource = DataSourceFishFact
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      FieldLabel = 'Name'
      EmptyText = 'Common Name'
    end
    object UnimDBSelect1: TUnimDBSelect
      Left = 0
      Top = 255
      Width = 381
      Height = 47
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Items.Strings = (
        'Angelfish'
        'Barracuda'
        'Butterflyfish'
        'Cod'
        'Croaker'
        'Eel'
        'Greenling'
        'Grouper'
        'Grunt'
        'Jack'
        'Parrotfish'
        'Ray'
        'Scorpionfish'
        'Sculpin'
        'Shark'
        'Smelt'
        'Snapper'
        'Spadefish'
        'Surfperch'
        'Triggerfish'
        'Wrasse')
      FieldLabel = 'Category'
      Sorted = True
      DataField = 'Category'
      DataSource = DataSourceFishFact
    end
    object UnimDBMemo1: TUnimDBMemo
      Left = 0
      Top = 302
      Width = 381
      Height = 221
      Hint = ''
      DataField = 'Notes'
      DataSource = DataSourceFishFact
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      FieldLabel = 'Notes'
      FieldLabelFont.Color = clGreen
      FieldLabelFont.Style = [fsBold]
      EmptyText = 'Notes'
    end
    object UnimDBNavigator1: TUnimDBNavigator
      Left = 0
      Top = 523
      Width = 381
      Height = 51
      Hint = ''
      DataSource = DataSourceFishFact
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      IconSet = icsFontAwesome
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 0
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
