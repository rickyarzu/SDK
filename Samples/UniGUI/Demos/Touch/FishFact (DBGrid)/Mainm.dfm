object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 712
  Caption = 'MainmForm'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 712
    Height = 250
    Hint = ''
    Align = alTop
    AlignmentControl = uniAlignmentClient
    object UnimContainerPanel3: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 165
      Height = 250
      Hint = ''
      Align = alLeft
      object UnimButton1: TUnimButton
        Left = 0
        Top = 0
        Width = 165
        Height = 47
        Hint = ''
        Align = alTop
        Caption = 'Photo'
        OnClick = UnimButton1Click
      end
      object UnimDBImage1: TUnimDBImage
        Left = 0
        Top = 47
        Width = 165
        Height = 203
        Hint = ''
        DataField = 'Graphic'
        DataSource = DataSource1
        Align = alClient
        Stretch = True
        Proportional = True
        FitWidth = True
      end
    end
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 165
      Top = 0
      Width = 547
      Height = 250
      Hint = ''
      Align = alClient
      LayoutAttribs.Align = 'stretch'
      object UnimDBEdit3: TUnimDBEdit
        Left = 0
        Top = 0
        Width = 547
        Height = 47
        Hint = ''
        DataField = 'Species No'
        DataSource = DataSource1
        Align = alTop
        FieldLabel = 'Species No'
        FieldLabelAlign = laTop
        EmptyText = 'Species No'
        TabOrder = 1
      end
      object UnimDBSelect1: TUnimDBSelect
        Left = 0
        Top = 47
        Width = 547
        Height = 47
        Hint = ''
        Align = alTop
        Items.Strings = (
          'Angelfish'
          'Triggerfish'
          'Snapper'
          'Wrasse'
          'Cod'
          'ScorpionFish'
          'Butterflyfish'
          'Shark'
          'Ray'
          'Eel'
          'Sculpin'
          'Spadefish'
          'Parrotfish'
          'Barracuda'
          'Grunt'
          'Grouper'
          'Jack'
          'Surfperch'
          'Croaker'
          'Greenlig'
          'Smelt')
        FieldLabel = 'Category'
        FieldLabelAlign = laTop
        TabOrder = 2
        DataField = 'Category'
        DataSource = DataSource1
      end
      object UnimDBEdit2: TUnimDBEdit
        Left = 0
        Top = 94
        Width = 547
        Height = 47
        Hint = ''
        DataField = 'Common_Name'
        DataSource = DataSource1
        Align = alTop
        FieldLabel = 'Common Name'
        FieldLabelAlign = laTop
        EmptyText = 'Common Name'
        TabOrder = 3
      end
    end
  end
  object UnimDBGrid1: TUnimDBGrid
    Left = 0
    Top = 250
    Width = 712
    Height = 296
    Hint = ''
    Align = alClient
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
    EditorConfig.FieldLabelWidth = 45
    CellEditor = True
    Columns = <
      item
        Title.Caption = 'Species No'
        FieldName = 'Species No'
        Width = 114
      end
      item
        Title.Caption = 'Category'
        FieldName = 'Category'
        Width = 169
      end
      item
        Title.Caption = 'Common_Name'
        FieldName = 'Common_Name'
        Width = 221
      end
      item
        Title.Caption = 'Species Name'
        FieldName = 'Species Name'
        Width = 298
      end
      item
        Title.Caption = 'Length (cm)'
        FieldName = 'Length (cm)'
        Width = 119
      end
      item
        Title.Caption = 'Length_In'
        FieldName = 'Length_In'
        Width = 114
      end
      item
        MemoOptions.MaxHeight = 60
        DisplayMemo = True
        Title.Caption = 'Notes'
        FieldName = 'Notes'
        Width = 331
      end>
  end
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 546
    Width = 712
    Height = 47
    Hint = ''
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet
    Left = 128
    Top = 288
  end
  object UnimFileUpload1: TUnimFileUpload
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Messages.BrowseText = 'Browse...'
    Messages.UploadTimeout = 'Timeout occurred...'
    Messages.MaxSizeError = 'File is bigger than maximum allowed size'
    Messages.MaxFilesError = 'You can upload maximum %d files.'
    Accept = 'image'
    OnCompleted = UnimFileUpload1Completed
    Left = 177
    Top = 176
  end
end
