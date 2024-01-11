object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 593
  ClientWidth = 400
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
    Width = 400
    Height = 257
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    AlignmentControl = uniAlignmentClient
    object UnimContainerPanel2: TUnimContainerPanel
      Left = 200
      Top = 0
      Width = 200
      Height = 257
      Hint = ''
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      LayoutAttribs.Align = 'stretch'
      object UnimDBEdit3: TUnimDBEdit
        Left = 0
        Top = 0
        Width = 200
        Height = 47
        Hint = ''
        DataField = 'Species No'
        DataSource = DataSource1
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        FieldLabel = 'Species No'
        FieldLabelAlign = laTop
        EmptyText = 'Species No'
      end
      object UnimDBSelect1: TUnimDBSelect
        Left = 0
        Top = 47
        Width = 200
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
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
        DataField = 'Category'
        DataSource = DataSource1
      end
      object UnimDBEdit2: TUnimDBEdit
        Left = 0
        Top = 94
        Width = 200
        Height = 47
        Hint = ''
        DataField = 'Common_Name'
        DataSource = DataSource1
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        FieldLabel = 'Common Name'
        FieldLabelAlign = laTop
        EmptyText = 'Common Name'
      end
    end
    object UnimContainerPanel3: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 200
      Height = 257
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      object UnimButton1: TUnimButton
        Left = 0
        Top = 0
        Width = 200
        Height = 47
        Hint = ''
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Photo'
        OnClick = UnimButton1Click
      end
      object UnimDBImage1: TUnimDBImage
        Left = 0
        Top = 40
        Width = 200
        Height = 217
        Hint = ''
        DataField = 'Graphic'
        DataSource = DataSource1
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        Stretch = True
        Picture.Data = {07544269746D617000000000}
        Proportional = True
      end
    end
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 257
    Width = 400
    Height = 289
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    WebOptions.PageSize = 5
    Columns = <
      item
        Title.Caption = 'S. No'
        Title.Font.Height = -21
        FieldName = 'Species No'
        Visible = True
        Width = 74
      end
      item
        Title.Caption = 'Category'
        Title.Font.Height = -21
        FieldName = 'Category'
        Visible = True
        Width = 124
      end
      item
        Title.Caption = 'Common_Name'
        Title.Font.Height = -21
        FieldName = 'Common_Name'
        Visible = True
        Width = 334
      end>
  end
  object UnimDBNavigator1: TUnimDBNavigator
    Left = 0
    Top = 546
    Width = 400
    Height = 47
    Hint = ''
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 2
  end
  object DataSource1: TDataSource
    DataSet = UniMainModule.ClientDataSet
    Left = 136
    Top = 344
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
    Accept = 'image'
    OnCompleted = UnimFileUpload1Completed
    Left = 177
    Top = 176
  end
end
