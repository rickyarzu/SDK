object UniUploadDownloadFileUpload: TUniUploadDownloadFileUpload
  Left = 0
  Top = 0
  Width = 390
  Height = 597
  OnCreate = UniFrameCreate
  ParentAlignmentControl = False
  TabOrder = 0
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 597
    Hint = ''
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    ParentAlignmentControl = False
    AlignmentControl = uniAlignmentClient
    LayoutAttribs.Align = 'center'
    LayoutAttribs.Pack = 'center'
    DesignSize = (
      390
      597)
    object UnimButton1: TUnimButton
      Left = 0
      Top = 0
      Width = 390
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Upload Photo'
      UI = 'confirm'
      OnClick = UnimButton1Click
    end
    object UnimPanel3: TUnimPanel
      Left = 65
      Top = 49
      Width = 256
      Height = 33
      Hint = ''
    end
    object UnimPanel1: TUnimPanel
      Left = 40
      Top = 88
      Width = 285
      Height = 274
      Hint = ''
      Anchors = []
      BorderStyle = ubsSolid
      object UnimLabel2: TUnimLabel
        Left = 0
        Top = 0
        Width = 285
        Height = 23
        Hint = ''
        Alignment = taCenter
        AutoSize = False
        Caption = 'Photo'
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
      end
      object UnimImage1: TUnimImage
        Left = 0
        Top = 23
        Width = 285
        Height = 251
        Hint = ''
        Align = alClient
        Center = True
        Stretch = True
        Anchors = []
      end
    end
    object UnimPanel2: TUnimPanel
      Left = 40
      Top = 368
      Width = 256
      Height = 33
      Hint = ''
    end
    object UnimButton2: TUnimButton
      Left = -3
      Top = 407
      Width = 390
      Height = 47
      Hint = ''
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Upload'
      UI = 'confirm'
      OnClick = UnimButton2Click
    end
    object UnimLabel1: TUnimLabel
      Left = 120
      Top = 488
      Width = 229
      Height = 23
      Hint = ''
      AutoSize = False
      Caption = 'File:'
      Anchors = [akLeft, akTop, akRight]
    end
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
    Timeout = 120000
    OnCompleted = UnimFileUpload1Completed
    Left = 288
    Top = 328
  end
end
