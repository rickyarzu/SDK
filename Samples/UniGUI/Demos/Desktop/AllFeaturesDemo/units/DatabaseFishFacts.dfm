object UniDatabaseFishFacts: TUniDatabaseFishFacts
  Left = 0
  Top = 0
  Width = 955
  Height = 627
  OnCreate = UniFrameCreate
  TabOrder = 0
  ParentRTL = False
  DesignSize = (
    955
    627)
  object UniLabel6: TUniLabel
    Left = 632
    Top = 3
    Width = 28
    Height = 13
    Hint = ''
    Caption = 'Notes'
    TabOrder = 0
  end
  object UniDBImage1: TUniDBImage
    Left = 224
    Top = 3
    Width = 244
    Height = 249
    Hint = ''
    DataField = 'Graphic'
    DataSource = DataSource1
    Stretch = True
    Proportional = True
    Transparent = True
  end
  object UniDBGrid1: TUniDBGrid
    Left = 0
    Top = 280
    Width = 955
    Height = 347
    Hint = ''
    PagingBarAuxControl = UniContainerPanel1
    TitleFont.Color = clGreen
    TitleFont.Style = [fsBold]
    DataSource = DataSource1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTabs, dgCancelOnExit]
    LoadMask.Message = 'Loading data...'
    ForceFit = True
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    TabStop = False
    OnAfterLoad = UniDBGrid1AfterLoad
    Columns = <
      item
        FieldName = 'Species No'
        Title.Caption = 'Species No'
        Width = 88
        Alignment = taRightJustify
      end
      item
        FieldName = 'Category'
        Title.Caption = 'Category'
        Width = 94
      end
      item
        FieldName = 'Common_Name'
        Title.Caption = 'Common Name'
        Width = 184
      end
      item
        FieldName = 'Species Name'
        Title.Caption = 'Species Name'
        Width = 163
      end
      item
        FieldName = 'Length (cm)'
        Title.Caption = 'Length (cm)'
        Width = 94
        Alignment = taRightJustify
      end
      item
        FieldName = 'Length_In'
        Title.Caption = 'Length (In)'
        Width = 82
        Alignment = taRightJustify
      end
      item
        FieldName = 'Graphic'
        Title.Caption = 'Picture'
        Width = 150
        ImageOptions.Visible = True
        ImageOptions.Width = 80
      end>
  end
  object UniDBText1: TUniDBText
    Left = 235
    Top = 256
    Width = 226
    Height = 16
    Hint = ''
    DataField = 'Common_Name'
    DataSource = DataSource1
    Alignment = taCenter
    AutoSize = False
    ParentFont = False
    Font.Height = -13
    Font.Style = [fsBold]
  end
  object UniDBMemo1: TUniDBHTMLMemo
    Left = 632
    Top = 22
    Width = 314
    Height = 252
    Hint = ''
    DataField = 'Notes'
    DataSource = DataSource1
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 4
    Color = clWindow
  end
  object UniDBRadioGroup1: TUniDBRadioGroup
    Left = 474
    Top = 3
    Width = 152
    Height = 271
    Hint = ''
    DataField = 'Category'
    DataSource = DataSource1
    Caption = 'Category'
    TabOrder = 5
    Items.Strings = (
      '1) Triggerfish'
      '2) Snapper'
      '3) Wrasse'
      '4) Angelfish'
      '5) Cod'
      '6) Scorpionfish'
      '7) Shark'
      '8) Ray'
      '9) Grouper'
      '10) Cyprinidae')
    Values.Strings = (
      'Triggerfish'
      'Snapper'
      'Wrasse'
      'Angelfish'
      'Cod'
      'Scorpionfish'
      'Shark'
      'Ray'
      'Grouper'
      'Cyprinidae')
  end
  object UniContainerPanel1: TUniContainerPanel
    Left = 120
    Top = 538
    Width = 489
    Height = 29
    Hint = ''
    ParentColor = False
    TabOrder = 6
    object UniDBNavigator1: TUniDBNavigator
      Left = 213
      Top = 1
      Width = 270
      Height = 25
      Hint = ''
      ShowHint = True
      ParentShowHint = False
      DataSource = DataSource1
      IconSet = icsFontAwesome
      TabOrder = 1
    end
    object UniBitBtn1: TUniBitBtn
      Left = 1
      Top = 1
      Width = 75
      Height = 25
      Hint = ''
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000012170000121700000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFB59E8C94796373614A73614A73614A73
        614A73614A73614A73614A73614A73614A73614A73614A73614AFF00FFFF00FF
        B59E8CFEFDFDFEFCFBCDBDB0FCF8F6FBF7F4FBF5F2FAF3EFCDBDB0F9F0EBF8EE
        E9F7ECE6F7ECE673614AFF00FFFF00FFB59E8CFFFFFFFEFDFDCDBDB0FDFAF8FC
        F8F6FBF7F4FBF5F2CDBDB0F9F1EDF9F0EBF8EEE9F7ECE673614AFF00FFFF00FF
        B59E8CCDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBD
        B0CDBDB0CDBDB073614AFF00FFFF00FFB59E8CFFFFFFFFFFFFCDBDB0FEFDFDFE
        FCFBFDFAF8FCF8F6CDBDB0FBF5F2FAF3EFF9F1EDF9F0EB73614AFF00FFFF00FF
        B59E8CFFFFFFFFFFFFCDBDB0FFFFFFFEFDFDFEFCFBFDFAF8CDBDB0FBF7F4FBF5
        F2FAF3EFF9F1ED73614AFF00FFFF00FFB59E8CCDBDB0CDBDB0CDBDB0CDBDB0CD
        BDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB0CDBDB073614AFF00FFFF00FF
        B59E8CFFFFFFFFFFFFCDBDB0FFFFFFFFFFFFFFFFFFFEFDFDCDBDB0FDFAF8FCF8
        F6FBF7F4FBF5F273614AFF00FFFF00FFB59E8CFFFFFFFFFFFFCDBDB0FFFFFFFF
        FFFFFFFFFFFFFFFFCDBDB0FEFCFBFDFAF8FCF8F6FBF7F473614AFF00FFFF00FF
        B6846CB27C61B27C61B27C61B1795EAF765AAE7356AC7053AA6D4FA96A4BA767
        47A66444A46140A4603F0046F89BF3F90046F89BF3F90046F8B27C61D7BAABD4
        B6A6D2B2A1CFAD9CAA6D4FCAA492C7A08DC49C88C39A869E5E3E9BF3F9488AF8
        00FFFF488AF89BF3F9B27C61D7BAABD7BAABD4B6A6D2B2A1AA6D4FCCA997CAA4
        92C7A08DC39A869E5E3E0046F800FFFFFBFFFF00FFFF0046F8B6836BB48168B3
        7F64B27D61AF7A5BAE7756AE7756AE7756AE7756AE7756AE77569BF3F9488AF8
        00FFFF488AF89BF3F9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF0046F89BF3F90046F89BF3F90046F8FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      Caption = 'Append'
      TabOrder = 2
      OnClick = UniBitBtn1Click
    end
    object UniBitBtn2: TUniBitBtn
      Left = 82
      Top = 1
      Width = 125
      Height = 25
      Hint = ''
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000012170000121700000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF826F5B826F5B826F5B826F5B826F5B826F5B826F5B82
        6F5B826F5B826F5B826F5B826F5B826F5B826F5B826F5B826F5B84715DF8E8D5
        F8E8D5F8E8D5F8E8D5F8E8D5F8E8D5F8E8D5F8E8D5F8E8D5F8E8D5F8E8D5F8E8
        D5F8E8D5F8E8D584715D8B7864F8E9D6F8DAC6F8DED0F9E1D6E9BBA3DFB099DF
        B099D6A488C49771EA9E74E4956ADF8D61DC885CF8E9D68B7864917E6CF9EBDA
        F3E8DEFEFAF4F7E2D3E9BFAADFB099D6A488C49771FCEEDEF3B99AE89E75E292
        66DA8459F9EBDA917E6C988573FAEDDDD2A583F3E8DEFEFAF4EAC7B3D9A288C4
        9771EEBF88D2A583FCEEDEEEB796E6A782C49771FAEDDD9885739F8B7AFAEEE1
        F8CA8ED2A583F3E8DEEFDECCC49771F8CD95FED79DF1C692D2A583FAE2CEC497
        71FCD196FAEEE19F8B7AA59281FBF0E4FFD396F7CA92D2A583C49771F6CC96FE
        D9A4FFDAA9FEDCABF7D2A4D2A583FAD4A4FFDAA6FBF0E4A59281AC9889FCF2E7
        FFD69DFFD69EFFD89FFFD9A3FFDCA7FFDEAEFEDFB4FDE1B8FCE1B9FCE1B9FDDF
        B5FEDFB1FCF2E7AC9889B39F90FCF4EBFFD9A3FFD9A4FFDAA6FFDDABFFDFB1FE
        E1B7F3DDC1B2C6F098B1FFB2C6F0F3DDC1FDE2BAFCF4EBB39F90B9A597FDF6EE
        FFDCA9FFDDABFFDEADFFE1B2FFE2B8FDE4BEB2C6F0BBDCFDBCE7FFACD8FFB2C6
        F0FCE4C1FDF6EEB9A597BBA799FDF6EEFFDEAEFFDFB0FFE1B2FFE3B8FFE4BEFD
        E5C498B1FFD1E9FED8F3FFC0E7FF98B1FFFCE7C6FDF6EEBBA799BBA799FDF6EE
        FFE1B3FFE2B4FFE3B7FFE4BBFFE5C1FEE8C7B2C6F0C2DAF7D0E8FEBFDCFDB2C6
        F0FDE8CAFDF6EEBBA799BBA799FDF6EEFFE2B7FFE3B7FFE4B9FFE5BCFFE7C1FE
        E8C7F4E3CCB2C6F098B1FFB2C6F0F4E3CCFEE9C8FDF6EEBBA799BBA799FDF6EE
        FDF6EEFDF6EEFDF6EEFDF6EEFDF6EEFDF6EEFDF6EEFDF6EEFDF6EEFDF6EEFDF6
        EEFDF6EEFDF6EEBBA799BBA799BBA799BBA799BBA799BBA799BBA799BBA799BB
        A799BBA799BBA799BBA799BBA799BBA799BBA799BBA799BBA799}
      Caption = 'Change Picture'
      TabOrder = 3
      OnClick = UniBitBtn2Click
    end
  end
  object UniFieldSet1: TUniFieldSet
    Left = 3
    Top = 3
    Width = 215
    Height = 271
    Hint = ''
    Title = 'Fields'
    TabOrder = 7
    object UniDBEdit1: TUniDBEdit
      Left = 8
      Top = 20
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'Category'
      DataSource = DataSource1
      TabOrder = 1
      FieldLabel = 'Category'
      FieldLabelAlign = laTop
    end
    object UniDBEdit2: TUniDBEdit
      Left = 8
      Top = 62
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'Common_Name'
      DataSource = DataSource1
      TabOrder = 2
      FieldLabel = 'Common Name'
      FieldLabelAlign = laTop
    end
    object UniDBNumberEdit1: TUniDBNumberEdit
      Left = 8
      Top = 105
      Width = 159
      Height = 22
      Hint = ''
      DataField = 'Length (cm)'
      DataSource = DataSource1
      TabOrder = 4
      ShowTrigger = True
      FieldLabel = 'Length (Cm)'
      FieldLabelAlign = laTop
      DecimalSeparator = ','
    end
    object UniDBEdit4: TUniDBEdit
      Left = 8
      Top = 146
      Width = 159
      Height = 21
      Hint = ''
      DataField = 'Length_In'
      DataSource = DataSource1
      TabOrder = 3
      FieldLabel = 'Length (In)'
      FieldLabelAlign = laTop
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 336
    Top = 360
  end
  object UniFileUpload1: TUniFileUpload
    MaxAllowedSize = 4096000
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
    OnCompleted = UniFileUpload1Completed
    Left = 432
    Top = 360
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 344
  end
end
