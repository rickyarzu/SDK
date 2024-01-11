object UnimForm1: TUnimForm1
  Left = 0
  Top = 0
  ClientHeight = 573
  ClientWidth = 303
  Caption = 'UnimForm1'
  AutoHeight = False
  Scrollable = True
  ShowTitle = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 849
  PlatformData = {}
  object UnimToolBar1: TUnimToolBar
    Left = 0
    Top = 0
    Width = 303
    Height = 48
    Hint = ''
    ShowCaptions = True
    Caption = 'UnimToolBar1'
    object UnimToolButton1: TUnimToolButton
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      Hint = ''
      Caption = 'Back'
      UI = 'back'
      OnClick = UnimToolButton1Click
    end
  end
  object UnimImage1: TUnimImage
    Left = 0
    Top = 48
    Width = 303
    Height = 225
    Hint = ''
    Align = alTop
    Stretch = True
    Proportional = True
  end
  object UnimMemo1: TUnimMemo
    Left = 0
    Top = 273
    Width = 303
    Height = 384
    Hint = ''
    Align = alTop
    FieldLabel = 'Notes'
    ReadOnly = True
    TabOrder = 2
  end
  object UnimEdit1: TUnimEdit
    Left = 0
    Top = 657
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Text = ''
    FieldLabel = 'Species No'
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object UnimEdit2: TUnimEdit
    Left = 0
    Top = 689
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Text = ''
    FieldLabel = 'Category'
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object UnimEdit3: TUnimEdit
    Left = 0
    Top = 721
    Width = 303
    Height = 32
    Hint = ''
    ParentRTL = False
    Align = alTop
    Text = ''
    FieldLabel = 'Common Name'
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
  end
  object UnimEdit4: TUnimEdit
    Left = 0
    Top = 753
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Text = ''
    FieldLabel = 'Species Name'
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object UnimEdit5: TUnimEdit
    Left = 0
    Top = 785
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Text = ''
    FieldLabel = 'Length (cm)'
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object UnimEdit6: TUnimEdit
    Left = 0
    Top = 817
    Width = 303
    Height = 32
    Hint = ''
    Align = alTop
    Text = ''
    FieldLabel = 'Length In'
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 849
    Width = 303
    Height = 0
    Hint = ''
    Align = alClient
    AlignmentControl = uniAlignmentClient
    object UnimDBImage1: TUnimDBImage
      Left = 0
      Top = 0
      Width = 303
      Height = 161
      Hint = ''
      DataField = 'Graphic'
      Align = alTop
      Picture.Data = {07544269746D617000000000}
    end
    object UnimDBNavigator1: TUnimDBNavigator
      Left = 0
      Top = -51
      Width = 303
      Height = 51
      Hint = ''
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      IconSet = icsFontAwesome
      Align = alBottom
      TabOrder = 0
    end
    object UnimDBEdit1: TUnimDBEdit
      Left = 0
      Top = 161
      Width = 303
      Height = 47
      Hint = ''
      DataField = 'Species Name'
      Align = alTop
      FieldLabel = 'Species Name'
      EmptyText = 'Species Name'
      TabOrder = 3
    end
    object UnimDBEdit2: TUnimDBEdit
      Left = 0
      Top = 208
      Width = 303
      Height = 47
      Hint = ''
      DataField = 'Common_Name'
      Align = alTop
      FieldLabel = 'Name'
      EmptyText = 'Common Name'
      TabOrder = 4
    end
    object UnimDBSelect1: TUnimDBSelect
      Left = 0
      Top = 255
      Width = 303
      Height = 47
      Hint = ''
      Align = alTop
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
      TabOrder = 5
      DataField = 'Category'
    end
    object UnimDBMemo1: TUnimDBMemo
      Left = 0
      Top = 302
      Width = 303
      Height = 221
      Hint = ''
      DataField = 'Notes'
      Align = alClient
      FieldLabel = 'Notes'
      EmptyText = 'Notes'
      TabOrder = 6
    end
  end
  object DataSourceFishFact: TDataSource
    DataSet = ClientDataSetFishFact
    Left = 32
    Top = 72
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
end
